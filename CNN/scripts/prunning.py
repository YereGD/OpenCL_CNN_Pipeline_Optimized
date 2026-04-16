import onnx

# Carga tu modelo limpio
input_path = "/home/yere-tft/Escritorio/TFT2026/CNN/modelos/modelo_onnxsim_sin_3.onnx"
output_path = "modelo_podado_simplificado_sin_3.onnx"

# La entrada de la red se mantiene igual
input_names = ["191_quantized"] 

# Pega aquí los 6 nombres exactos que sacaste de las cajas Concat
output_names = [
    # Los 3 nombres del Concat de la izquierda (scores)
    "289",
    "329",
    "361",
    
    # Los 3 nombres del Concat de la derecha (boxes)
    "303",
    "343",
    "373"
]

print("Amputando rama de 30x40...")
onnx.utils.extract_model(input_path, output_path, input_names, output_names)
print(f"¡Cirugía completada! Modelo guardado como {output_path}")