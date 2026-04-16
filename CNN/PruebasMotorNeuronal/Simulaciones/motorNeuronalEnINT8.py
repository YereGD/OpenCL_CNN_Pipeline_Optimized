import os
import numpy as np
import onnx
from onnx import numpy_helper
import cv2

# ──────────────────────────────────────────────────────────────
# 1. BRAM PARA INT8
# ──────────────────────────────────────────────────────────────
class DE10Nano_BRAM:
    def __init__(self):
        self.WEIGHTS = np.zeros(2 * 1024 * 1024, dtype=np.uint8) 
        self.BIAS    = np.zeros(128 * 1024, dtype=np.int32)

# ──────────────────────────────────────────────────────────────
# 2. INSTRUCCIÓN INT8
# ──────────────────────────────────────────────────────────────
class ConvLayerDescINT8:
    def __init__(self, name, input_name, output_name, in_c, out_c, h, w, k_size, stride, pad, 
                 weight_offset, bias_offset, is_depthwise, save_to_cpu, 
                 x_zp, w_zp, y_zp, M, y_scale):
        self.name, self.input_name, self.output_name = name, input_name, output_name
        self.in_c, self.out_c = in_c, out_c
        self.h, self.w = h, w
        self.k_size, self.stride, self.pad = k_size, stride, pad
        self.weight_offset, self.bias_offset = weight_offset, bias_offset
        self.is_depthwise, self.save_to_cpu = is_depthwise, save_to_cpu
        
        self.x_zp, self.w_zp, self.y_zp = x_zp, w_zp, y_zp
        self.M = M              
        self.y_scale = y_scale  

        self.out_h = (h + 2 * pad - k_size) // stride + 1
        self.out_w = (w + 2 * pad - k_size) // stride + 1

# ──────────────────────────────────────────────────────────────
# 3. EL MOTOR MATEMÁTICO INT8 
# ──────────────────────────────────────────────────────────────
def fpga_conv_engine_int8(bram, layer: ConvLayerDescINT8, ptr_in, ptr_out):
    out_h, out_w = layer.out_h, layer.out_w
    ptr_out.fill(0)

    for oc in range(layer.out_c):
        bias_val = int(bram.BIAS[layer.bias_offset + oc])
        for oh in range(out_h):
            for ow in range(out_w):
                out_idx = oc * (out_h * out_w) + oh * out_w + ow
                acc = bias_val 
                
                c_start = oc if layer.is_depthwise else 0
                c_end = (oc + 1) if layer.is_depthwise else layer.in_c
                
                for ic in range(c_start, c_end):
                    for kh in range(layer.k_size):
                        for kw in range(layer.k_size):
                            ih = oh * layer.stride - layer.pad + kh
                            iw = ow * layer.stride - layer.pad + kw
                            
                            if 0 <= ih < layer.h and 0 <= iw < layer.w:
                                in_idx = ic * (layer.h * layer.w) + ih * layer.w + iw
                                
                                if layer.is_depthwise:
                                    w_idx = layer.weight_offset + oc * (layer.k_size * layer.k_size) + kh * layer.k_size + kw
                                else:
                                    w_idx = layer.weight_offset + oc * (layer.in_c * layer.k_size * layer.k_size) + ic * (layer.k_size * layer.k_size) + kh * layer.k_size + kw
                                
                                val_x = int(ptr_in[in_idx]) - layer.x_zp
                                val_w = int(bram.WEIGHTS[w_idx]) - layer.w_zp
                                
                                acc += (val_x * val_w)
                
                y_float = acc * layer.M
                y_int = round(y_float) + layer.y_zp
                
                y_clamped = max(0, min(255, y_int))
                ptr_out[out_idx] = np.uint8(y_clamped)

# ──────────────────────────────────────────────────────────────
# 4. ORQUESTADOR DINÁMICO (Corrige el bug del Ping-Pong)
# ──────────────────────────────────────────────────────────────
def run_network_int8(bram, schedule, input_image_1D, initial_input_name):
    feature_maps = {initial_input_name: input_image_1D.astype(np.uint8)}
    outputs_para_cpu = {}
    
    for i, layer in enumerate(schedule):
        tipo = "DW" if layer.is_depthwise else "Conv"
        print(f"[{i:02d}] {layer.name} ({tipo}) -> M: {layer.M:.5f} | ZP_Out: {layer.y_zp}")
        
        ptr_in = feature_maps[layer.input_name]
        
        elementos_salida = layer.out_c * layer.out_h * layer.out_w
        ptr_out = np.zeros(elementos_salida, dtype=np.uint8)
        
        fpga_conv_engine_int8(bram, layer, ptr_in, ptr_out)
        
        feature_maps[layer.output_name] = ptr_out
        
        # 🚨 VOLCADO MASIVO (TODAS LAS CAPAS)
        py_filename = f"debug_layer_{i}_python.bin"
        ptr_out.astype(np.uint8).tofile(py_filename)
        
        if layer.save_to_cpu:
            crudo_uint8 = np.copy(ptr_out).astype(np.int32)
            salida_float = (crudo_uint8 - layer.y_zp) * layer.y_scale
            outputs_para_cpu[layer.output_name] = salida_float
       
    return outputs_para_cpu

# ──────────────────────────────────────────────────────────────
# 5. EL COMPILADOR QLinearConv 
# ──────────────────────────────────────────────────────────────
def extract_scalar(tensor):
    return numpy_helper.to_array(tensor).item()

def parse_onnx_qlinear(onnx_path, fpga_bram):
    model = onnx.load(onnx_path)
    graph = model.graph
    
    input_tensor = graph.input[0]
    initial_input_name = input_tensor.name
    dims = input_tensor.type.tensor_type.shape.dim
    in_channels = dims[1].dim_value if dims[1].dim_value > 0 else 3
    in_h = dims[2].dim_value if dims[2].dim_value > 0 else 240
    in_w = dims[3].dim_value if dims[3].dim_value > 0 else 320

    nodos_ignorados = ['Transpose', 'Reshape', 'Concat', 'Softmax', 'DequantizeLinear']
    inputs_de_nodos_ignorados = set()
    for node in graph.node:
        if node.op_type in nodos_ignorados:
            for input_name in node.input:
                inputs_de_nodos_ignorados.add(input_name)

    weights_dict = {init.name: init for init in graph.initializer}

    schedule = []
    current_w_offset = 0
    current_b_offset = 0
    tensor_shapes = {initial_input_name: (in_channels, in_h, in_w)}
    
    for node in graph.node:
        if node.op_type == 'QLinearConv':
            attrs = {attr.name: attr for attr in node.attribute}
            pads = attrs['pads'].ints[0] if 'pads' in attrs else 0
            strides = attrs['strides'].ints[0] if 'strides' in attrs else 1
            group = attrs['group'].i if 'group' in attrs else 1
            
            input_name = node.input[0]
            x_scale = extract_scalar(weights_dict[node.input[1]])
            x_zp = extract_scalar(weights_dict[node.input[2]]) if len(node.input) > 2 else 0
            
            w_name = node.input[3]
            w_scale = extract_scalar(weights_dict[node.input[4]])
            w_zp = extract_scalar(weights_dict[node.input[5]]) if len(node.input) > 5 else 0
            
            y_scale = extract_scalar(weights_dict[node.input[6]])
            y_zp = extract_scalar(weights_dict[node.input[7]]) if len(node.input) > 7 else 0
            
            b_name = node.input[8] if len(node.input) > 8 else None
            output_name = node.output[0]
            
            w_tensor = numpy_helper.to_array(weights_dict[w_name])
            out_c = w_tensor.shape[0]
            in_c = w_tensor.shape[1] * group
            k_size = w_tensor.shape[2]
            
            is_depthwise = (group == in_c and in_c == out_c)
            
            w_flat = w_tensor.flatten()
            w_len = len(w_flat)
            fpga_bram.WEIGHTS[current_w_offset : current_w_offset + w_len] = w_flat
            
            if b_name and b_name in weights_dict:
                b_flat = numpy_helper.to_array(weights_dict[b_name]).flatten()
            else:
                b_flat = np.zeros(out_c, dtype=np.int32)
            b_len = len(b_flat)
            fpga_bram.BIAS[current_b_offset : current_b_offset + b_len] = b_flat
            
            M = (x_scale * w_scale) / y_scale
            
            curr_c, curr_h, curr_w = tensor_shapes[input_name]
            save_this_layer = output_name in inputs_de_nodos_ignorados

            layer_desc = ConvLayerDescINT8(
                name=node.name if node.name else output_name,
                input_name=input_name, output_name=output_name,
                in_c=in_c, out_c=out_c, h=curr_h, w=curr_w, 
                k_size=k_size, stride=strides, pad=pads, 
                weight_offset=current_w_offset, bias_offset=current_b_offset, 
                is_depthwise=is_depthwise, save_to_cpu=save_this_layer,
                x_zp=int(x_zp), w_zp=int(w_zp), y_zp=int(y_zp), M=float(M), y_scale=float(y_scale)
            )
            schedule.append(layer_desc)
            
            tensor_shapes[output_name] = (out_c, layer_desc.out_h, layer_desc.out_w)
            current_w_offset += w_len
            current_b_offset += b_len

    return schedule, (in_channels, in_h, in_w), initial_input_name

# ──────────────────────────────────────────────────────────────
# MAIN
# ──────────────────────────────────────────────────────────────
if __name__ == "__main__":
    ONNX_FILE = "modelo_int8_cut.onnx"   
    TEST_IMAGE = "images.jpeg"               
    
    fpga_mem = DE10Nano_BRAM()

    if not os.path.exists(ONNX_FILE):
        print(f"❌ ERROR: No se encuentra {ONNX_FILE}")
        exit()

    mi_schedule, input_shape, initial_input_name = parse_onnx_qlinear(ONNX_FILE, fpga_mem)
    expected_c, expected_h, expected_w = input_shape
    
    print(f"\n📸 Cargando imagen {TEST_IMAGE} ({expected_w}x{expected_h})...")
    img_original = cv2.imread(TEST_IMAGE)
    img_resized = cv2.resize(img_original, (expected_w, expected_h))
    
    # Preprocesado: Pasamos la imagen de 0-255 cruda (como asume el cuantizador)
    img_rgb = cv2.cvtColor(img_resized, cv2.COLOR_BGR2RGB)
    tensor_entrada = img_rgb.transpose(2, 0, 1).flatten().astype(np.uint8)
    img_rgb = cv2.cvtColor(img_resized, cv2.COLOR_BGR2RGB)
    tensor_entrada = img_rgb.transpose(2, 0, 1).flatten().astype(np.uint8)
    
    # 👇 AÑADE ESTA LÍNEA PARA CREAR EL BYPASS 👇
    tensor_entrada.tofile("imagen_pura_python.bin")
    print("\n🚀 INICIANDO MOTOR FPGA INT8...\n")
    resultados_finales = run_network_int8(fpga_mem, mi_schedule, tensor_entrada, initial_input_name)

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
    
    if not confs or not locs:
        print("❌ Error: No se encontraron los buffers finales de salida.")
        exit()

    conf_concat = np.vstack([c[1] for c in confs]) 
    loc_concat = np.vstack([l[1] for l in locs])   

    max_conf = np.max(conf_concat, axis=1, keepdims=True)
    exp_conf = np.exp(conf_concat - max_conf)
    probs = exp_conf / np.sum(exp_conf, axis=1, keepdims=True)
    scores = probs[:, 1] 
    
    print(f"🔍 DEBUG INT8: Probabilidad MÁXIMA de cara es: {np.max(scores):.4f}")
    
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

    SCORE_THRESHOLD = 0.5 
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
        print(f"🎉 ¡ÉXITO INT8! Se han detectado {len(final_indices)} cara(s).")
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
        print(f"😕 Sin detecciones INT8.")

    cv2.imshow("Salida Simulador FPGA INT8", img_original)
    cv2.waitKey(0)
    cv2.destroyAllWindows()