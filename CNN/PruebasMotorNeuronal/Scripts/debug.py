import numpy as np
import os

print("=== 🕵️‍♂️ AUTOPSIA MASIVA DE LA RED NEURONAL (42 CAPAS) ===")

for i in range(42):
    fpga_file = f"debug_layer_{i}_fpga.bin"
    py_file = f"debug_layer_{i}_python.bin"
    
    if not os.path.exists(fpga_file) or not os.path.exists(py_file):
        print(f"⚠️ Faltan archivos para la capa {i}. Fin del escáner.")
        break
        
    # Como el simulador Python ya aplana en HWC al estilo FPGA, los comparamos directamente
    fpga_raw = np.fromfile(fpga_file, dtype=np.uint8)
    py_raw = np.fromfile(py_file, dtype=np.uint8)
    
    if fpga_raw.size != py_raw.size:
        print(f"❌ Capa {i:02d}: ERROR CRÍTICO DE TAMAÑO (FPGA={fpga_raw.size} vs Py={py_raw.size})")
        break
        
    diff = np.abs(fpga_raw.astype(np.int32) - py_raw.astype(np.int32))
    err_max = np.max(diff)
    
    if err_max == 0:
        print(f"✅ Capa {i:02d}: PERFECTA (Error 0)")
    elif err_max <= 2:
        print(f"⚠️ Capa {i:02d}: DRIFT MENOR (Error Max: {err_max}). Continuamos...")
    else:
        print(f"\n❌ Capa {i:02d}: ROTURA DETECTADA (Error Max: {err_max})")
        print(f"   -> La FPGA falló por primera vez en esta capa.")
        print(f"   -> Revisa en tu terminal de Python qué tipo de capa es (Conv o DW, Stride, Canales).")
        break