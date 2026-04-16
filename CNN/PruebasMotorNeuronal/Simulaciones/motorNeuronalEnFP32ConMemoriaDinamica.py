import os
import numpy as np
import onnx
from onnx import numpy_helper
import cv2

# ──────────────────────────────────────────────────────────────
# 1. BRAM 
# ──────────────────────────────────────────────────────────────
class DE10Nano_BRAM:
    def __init__(self):
        self.WEIGHTS = np.zeros(2 * 1024 * 1024, dtype=np.float32) 
        self.BIAS    = np.zeros(128 * 1024, dtype=np.float32)

# ──────────────────────────────────────────────────────────────
# 2. INSTRUCCIÓN (Añadido input_name y output_name)
# ──────────────────────────────────────────────────────────────
class ConvLayerDesc:
    def __init__(self, name, input_name, output_name, in_c, out_c, h, w, k_size, stride, pad, 
                 weight_offset, bias_offset, is_depthwise, save_to_cpu=False, has_relu=False):
        self.name = name
        self.input_name = input_name     # ¡NUEVO! De qué capa lee
        self.output_name = output_name   # ¡NUEVO! Dónde escribe
        self.in_c = in_c
        self.out_c = out_c
        self.h = h
        self.w = w
        self.k_size = k_size
        self.stride = stride
        self.pad = pad
        self.weight_offset = weight_offset
        self.bias_offset = bias_offset
        self.is_depthwise = is_depthwise
        self.save_to_cpu = save_to_cpu  
        self.has_relu = has_relu  

        self.out_h = (h + 2 * pad - k_size) // stride + 1
        self.out_w = (w + 2 * pad - k_size) // stride + 1

# ──────────────────────────────────────────────────────────────
# 3. EL MOTOR GENÉRICO 
# ──────────────────────────────────────────────────────────────
def fpga_conv_engine(bram, layer: ConvLayerDesc, ptr_in, ptr_out):
    out_h = layer.out_h
    out_w = layer.out_w
    ptr_out.fill(0)

    if not layer.is_depthwise:
        for oc in range(layer.out_c):
            bias_val = bram.BIAS[layer.bias_offset + oc]
            for oh in range(out_h):
                for ow in range(out_w):
                    out_idx = oc * (out_h * out_w) + oh * out_w + ow
                    acc = bias_val
                    for ic in range(layer.in_c):
                        for kh in range(layer.k_size):
                            for kw in range(layer.k_size):
                                ih = oh * layer.stride - layer.pad + kh
                                iw = ow * layer.stride - layer.pad + kw
                                if 0 <= ih < layer.h and 0 <= iw < layer.w:
                                    in_idx = ic * (layer.h * layer.w) + ih * layer.w + iw
                                    w_idx = layer.weight_offset + oc * (layer.in_c * layer.k_size * layer.k_size) + ic * (layer.k_size * layer.k_size) + kh * layer.k_size + kw
                                    acc += ptr_in[in_idx] * bram.WEIGHTS[w_idx]
                    
                    if layer.has_relu: ptr_out[out_idx] = max(0.0, acc) 
                    else: ptr_out[out_idx] = acc 
    else:
        for c in range(layer.in_c):
            bias_val = bram.BIAS[layer.bias_offset + c]
            for oh in range(out_h):
                for ow in range(out_w):
                    out_idx = c * (out_h * out_w) + oh * out_w + ow
                    acc = bias_val
                    for kh in range(layer.k_size):
                        for kw in range(layer.k_size):
                            ih = oh * layer.stride - layer.pad + kh
                            iw = ow * layer.stride - layer.pad + kw
                            if 0 <= ih < layer.h and 0 <= iw < layer.w:
                                in_idx = c * (layer.h * layer.w) + ih * layer.w + iw
                                w_idx = layer.weight_offset + c * (layer.k_size * layer.k_size) + kh * layer.k_size + kw
                                acc += ptr_in[in_idx] * bram.WEIGHTS[w_idx]
                    
                    if layer.has_relu: ptr_out[out_idx] = max(0.0, acc) 
                    else: ptr_out[out_idx] = acc 

# ──────────────────────────────────────────────────────────────
# 4. ORQUESTADOR (Gestión de Memoria en Grafo)
# ──────────────────────────────────────────────────────────────
def run_network(bram, network_schedule, input_image_1D, initial_input_name):
    # En lugar de un solo Buffer Ping-Pong, guardamos el output de cada capa por su nombre real
    feature_maps = {initial_input_name: input_image_1D}
    outputs_para_cpu = {}
    
    for i, layer in enumerate(network_schedule):
        tipo = "DW" if layer.is_depthwise else "Conv"
        relu_tag = "+ReLU" if layer.has_relu else "(Lineal)"
        print(f"[{i:02d}] {layer.name} ({tipo} {layer.k_size}x{layer.k_size}) {relu_tag} -> Out: {layer.out_c}x{layer.out_h}x{layer.out_w}")
        
        # Leemos del buffer exacto que necesita esta capa
        ptr_in = feature_maps[layer.input_name]
        
        # Creamos un buffer nuevo para la salida
        elementos_salida = layer.out_c * layer.out_h * layer.out_w
        ptr_out = np.zeros(elementos_salida, dtype=np.float32)
        
        # ¡Magia!
        fpga_conv_engine(bram, layer, ptr_in, ptr_out)
        
        # Guardamos el resultado en el "mapa de tensores"
        feature_maps[layer.output_name] = ptr_out
        
        # Si es una salida final, la copiamos a la CPU
        if layer.save_to_cpu:
            outputs_para_cpu[layer.output_name] = np.copy(ptr_out)
            
    return outputs_para_cpu

# ──────────────────────────────────────────────────────────────
# 5. EL COMPILADOR (Ahora fusiona los nombres del ReLU)
# ──────────────────────────────────────────────────────────────
def parse_onnx_to_fpga(onnx_path, fpga_bram):
    model = onnx.load(onnx_path)
    graph = model.graph
    
    input_tensor = graph.input[0]
    initial_input_name = input_tensor.name
    dims = input_tensor.type.tensor_type.shape.dim
    in_channels = dims[1].dim_value if dims[1].dim_value > 0 else 3
    in_h = dims[2].dim_value if dims[2].dim_value > 0 else 240
    in_w = dims[3].dim_value if dims[3].dim_value > 0 else 320

    nodos_ignorados = ['Transpose', 'Reshape', 'Concat', 'Softmax']
    inputs_de_nodos_ignorados = set()
    
    # CAMBIO: Ahora guardamos qué entra y qué sale del ReLU
    entradas_con_relu = {}
    
    for node in graph.node:
        if node.op_type in nodos_ignorados:
            for input_name in node.input:
                inputs_de_nodos_ignorados.add(input_name)
        elif node.op_type in ['Relu', 'Clip', 'LeakyRelu']:
            # Guardamos: entradas_con_relu['186'] = '187'
            entradas_con_relu[node.input[0]] = node.output[0]

    weights_dict = {init.name: numpy_helper.to_array(init) for init in graph.initializer}

    schedule = []
    current_w_offset = 0
    current_b_offset = 0
    
    tensor_shapes = {initial_input_name: (in_channels, in_h, in_w)}
    
    for node in graph.node:
        if node.op_type == 'Conv':
            attrs = {attr.name: attr for attr in node.attribute}
            pads = attrs['pads'].ints[0] if 'pads' in attrs else 0
            strides = attrs['strides'].ints[0] if 'strides' in attrs else 1
            group = attrs['group'].i if 'group' in attrs else 1
            
            input_name = node.input[0]
            w_name = node.input[1]
            b_name = node.input[2] if len(node.input) > 2 else None
            
            # Nombre de salida original de la convolución ('186')
            raw_output_name = node.output[0]
            
            w_tensor = weights_dict[w_name]
            out_c = w_tensor.shape[0]
            in_c = w_tensor.shape[1] * group
            k_size = w_tensor.shape[2]
            
            is_depthwise = (group == in_c and in_c == out_c)
            
            w_flat = w_tensor.flatten()
            w_len = len(w_flat)
            fpga_bram.WEIGHTS[current_w_offset : current_w_offset + w_len] = w_flat
            
            b_flat = weights_dict[b_name].flatten() if b_name and b_name in weights_dict else np.zeros(out_c, dtype=np.float32)
            b_len = len(b_flat)
            fpga_bram.BIAS[current_b_offset : current_b_offset + b_len] = b_flat
            
            # Recuperar dimensiones de entrada
            curr_c, curr_h, curr_w = tensor_shapes[input_name]

            # --- LA MAGIA DE FUSIÓN ---
            aplica_relu = raw_output_name in entradas_con_relu
            
            # Si tiene ReLU, el nombre real de salida es el del ReLU ('187'). Si no, se queda el de la Conv ('186')
            final_output_name = entradas_con_relu[raw_output_name] if aplica_relu else raw_output_name
            
            # Comprobamos si esta salida (o la cruda) va a la CPU
            save_this_layer = (final_output_name in inputs_de_nodos_ignorados) or (raw_output_name in inputs_de_nodos_ignorados)

            layer_desc = ConvLayerDesc(
                name=node.name if node.name else final_output_name,
                input_name=input_name,
                output_name=final_output_name,
                in_c=in_c, out_c=out_c, h=curr_h, w=curr_w, 
                k_size=k_size, stride=strides, pad=pads, 
                weight_offset=current_w_offset, bias_offset=current_b_offset, 
                is_depthwise=is_depthwise, save_to_cpu=save_this_layer, has_relu=aplica_relu
            )
            schedule.append(layer_desc)
            
            # Guardamos la forma usando el nombre final para que la siguiente capa la encuentre
            tensor_shapes[final_output_name] = (out_c, layer_desc.out_h, layer_desc.out_w)
            
            current_w_offset += w_len
            current_b_offset += b_len

    return schedule, (in_channels, in_h, in_w), initial_input_name
# ──────────────────────────────────────────────────────────────
# MAIN
# ──────────────────────────────────────────────────────────────
if __name__ == "__main__":
    ONNX_FILE = "modelo_simplificado.onnx"   
    TEST_IMAGE = "images.jpeg"               
    
    fpga_mem = DE10Nano_BRAM()

    if not os.path.exists(ONNX_FILE) or not os.path.exists(TEST_IMAGE):
        print("❌ ERROR: Faltan archivos.")
        exit()

    mi_schedule, input_shape, initial_input_name = parse_onnx_to_fpga(ONNX_FILE, fpga_mem)
    expected_c, expected_h, expected_w = input_shape
    
    print(f"\n📸 Cargando imagen {TEST_IMAGE} ({expected_w}x{expected_h})...")
    img_original = cv2.imread(TEST_IMAGE)
    img_resized = cv2.resize(img_original, (expected_w, expected_h))
    img_rgb = cv2.cvtColor(img_resized, cv2.COLOR_BGR2RGB)
    
    # Normalización RGB
    img_norm = (img_rgb.astype(np.float32) - 127.0) / 128.0 
    tensor_entrada = img_norm.transpose(2, 0, 1).flatten() 
    
    print("\n🚀 INICIANDO MOTOR FPGA SIMULADO...\n")
    resultados_finales = run_network(fpga_mem, mi_schedule, tensor_entrada, initial_input_name)

    print("\n🖥️  Iniciando Post-Procesado en CPU...")
    confs = []
    locs = []

    for name, data in resultados_finales.items():
        size = len(data)
        if size == 1200:   confs.append((0, data.reshape(4, 15, 20).transpose(1, 2, 0).reshape(-1, 2)))
        elif size == 2400: locs.append((0, data.reshape(8, 15, 20).transpose(1, 2, 0).reshape(-1, 4)))
        elif size == 320:  confs.append((1, data.reshape(4, 8, 10).transpose(1, 2, 0).reshape(-1, 2)))
        elif size == 640:  locs.append((1, data.reshape(8, 8, 10).transpose(1, 2, 0).reshape(-1, 4)))
        elif size == 120:  confs.append((2, data.reshape(6, 4, 5).transpose(1, 2, 0).reshape(-1, 2)))
        elif size == 240:  locs.append((2, data.reshape(12, 4, 5).transpose(1, 2, 0).reshape(-1, 4)))

    confs.sort(key=lambda x: x[0])
    locs.sort(key=lambda x: x[0])
    
    conf_concat = np.vstack([c[1] for c in confs]) 
    loc_concat = np.vstack([l[1] for l in locs])   

    max_conf = np.max(conf_concat, axis=1, keepdims=True)
    exp_conf = np.exp(conf_concat - max_conf)
    probs = exp_conf / np.sum(exp_conf, axis=1, keepdims=True)
    scores = probs[:, 1] 
    
    print(f"🔍 DEBUG: La probabilidad MÁXIMA de cara es: {np.max(scores):.4f}")
    
    priors = []
    fmaps = [(15, 20), (8, 10), (4, 5)]
    sizes = [[32, 48], [64, 96], [128, 192, 256]]
    steps = [16, 32, 64]
    
    for k in range(len(fmaps)):
        for i in range(fmaps[k][0]):
            for j in range(fmaps[k][1]):
                for s in sizes[k]:
                    cx = (j + 0.5) * steps[k] / expected_w
                    cy = (i + 0.5) * steps[k] / expected_h
                    bw = s / expected_w
                    bh = s / expected_h
                    priors.append([cx, cy, bw, bh])
    priors = np.array(priors, dtype=np.float32)

    boxes = np.zeros_like(loc_concat)
    boxes[:, 0] = priors[:, 0] + loc_concat[:, 0] * 0.1 * priors[:, 2] 
    boxes[:, 1] = priors[:, 1] + loc_concat[:, 1] * 0.1 * priors[:, 3] 
    boxes[:, 2] = priors[:, 2] * np.exp(loc_concat[:, 2] * 0.2)        
    boxes[:, 3] = priors[:, 3] * np.exp(loc_concat[:, 3] * 0.2)        
    
    boxes[:, 0] -= boxes[:, 2] / 2
    boxes[:, 1] -= boxes[:, 3] / 2
    boxes[:, 2] += boxes[:, 0]
    boxes[:, 3] += boxes[:, 1]

    SCORE_THRESHOLD = 0.5 # Volvemos a un umbral normal
    IOU_THRESHOLD = 0.3
    
    valid_indices = np.where(scores > SCORE_THRESHOLD)[0]
    valid_boxes = boxes[valid_indices]
    valid_scores = scores[valid_indices]
    
    final_indices = cv2.dnn.NMSBoxes(
        bboxes=valid_boxes.tolist(), 
        scores=valid_scores.tolist(), 
        score_threshold=SCORE_THRESHOLD, 
        nms_threshold=IOU_THRESHOLD
    )

    if len(final_indices) > 0:
        print(f"🎉 ¡ÉXITO! Se han detectado {len(final_indices)} cara(s).")
        for i in final_indices:
            idx = i[0] if isinstance(i, (list, np.ndarray)) else i
            box = valid_boxes[idx]
            score = valid_scores[idx]
            
            h_orig, w_orig = img_original.shape[:2]
            x1 = int(box[0] * w_orig)
            y1 = int(box[1] * h_orig)
            x2 = int(box[2] * w_orig)
            y2 = int(box[3] * h_orig)
            
            cv2.rectangle(img_original, (x1, y1), (x2, y2), (0, 255, 0), 2)
            cv2.putText(img_original, f"{score:.2f}", (x1, y1 - 5), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 2)
    else:
        print(f"😕 Sin detecciones. Verifica si el pre-procesamiento es el correcto.")

    cv2.imshow("Salida Simulador FPGA", img_original)
    cv2.waitKey(0)
    cv2.destroyAllWindows()