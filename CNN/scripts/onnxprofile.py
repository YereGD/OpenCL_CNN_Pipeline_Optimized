import onnx_tool
from onnx_tool import create_ndarray_f32

# Carga tu modelo
modelpath = '/home/yere-tft/Escritorio/TFT2026/CNN/modelos/modelo_int8_cut.onnx'

# Perfilado básico: esto imprimirá la tabla directamente en la terminal
# onnx_tool.model_profile(modelpath)

# Perfila para ver quién consume más MACs (Operaciones) y Memoria
onnx_tool.model_profile(modelpath, dynamic_shapes=None, save_profile='modelo_perfilado_int8_cut.onnx')