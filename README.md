# FPGA_OpenCL_Convolutional_Processor LINA

## Sobre el Proyecto

Este proyecto presenta el diseño, desarrollo e implementación de un **computador empotrado ligero de altas prestaciones y alta eficiencia energética**, de nombre Lina, basado en una arquitectura System on Chip (SoC) reconfigurable. Desarrollado sobre la placa **Terasic DE1-SoC** (que integra un chip Intel Cyclone V SoC), el sistema está especializado en la ejecución en tiempo real de una red neuronal convolucional (CNN) optimizada para la **detección de caras humanas** a través de una cámara web estándar.

Para superar el severo cuello de botella de acceso a memoria externa y las limitaciones características de los dispositivos en el extremo (*Edge AI*), este trabajo propone un **co-diseño hardware-software a medida** que trasciende las soluciones convencionales de propósito general:

* **Acelerador Hardware en FPGA:** El núcleo del procesamiento convolucional pesado se ejecuta en la matriz lógica de la FPGA a través de un kernel monolítico OpenCL (*Single Work-Item*). Este procesador paramétrico cuenta con un camino de datos paralelo que despacha hasta **64 operaciones MAC (Multiplicación y Acumulación) por ciclo de reloj** en punto fijo de 8 bits (`INT8`). Implementa técnicas avanzadas de reutilización de datos como un búfer de pesos y un búfer circular (*Ring Buffer*) de píxeles mediante bloques de memoria local M10K.
* **Pipeline Multihilo Asíncrono (CPU-FPGA):** En lugar de una ejecución síncrona y bloqueante, el sistema de software corre en el procesador ARM Cortex-A9 del SoC gestionando tres hilos de ejecución paralelos de Linux (`pthreads`). Mediante una estrategia de **doble búfer (*Ping-Pong Buffer*) en la RAM DDR3 compartida**, la FPGA calcula las capas de la red sobre el fotograma actual mientras la CPU realiza simultáneamente la captura del siguiente frame y el postprocesado del anterior.
* **Script para generar los ficheros de ejecución de la red (Python):** Se incluye un script de automatización (`export_c.py`) que actúa como compilador cruzado para ejecutar cualquier red convolucional cuantizada a INT8. Este script analiza el grafo ONNX de la red neuronal, cuantifica linealmente los pesos y factores de escala flotantes al dominio de punto fijo, alinea las dimensiones a múltiplos de 16 para optimizar ráfagas DMA y genera una agenda estática de ejecución(`network_schedule.h, weights.bin y bias.bin`).

El resultado es un sistema embebido autónomo y ligero que logra un excelente balance entre tasa de fotogramas por segundo (FPS), latencia de inferencia y consumo de potencia eléctrica frente a ejecuciones basadas puramente en software.

---

## Estructura del Repositorio

```
.
├── BenchmarkSoloARM
│   └── mainONNXCPUBenchmark.cpp
├── Modelos
│   ├── modelo_cola_cpu.onnx
│   └── modelo_int8_cut.onnx
├── Scripts
│   ├── cutgraph.py
│   └── generate_schedule_export_weight_biases.py
├── V1
│   ├── FPGA
│   │   ├── ProcessorCNN.aoco
│   │   ├── ProcessorCNN.aocx
│   │   └── ProcessorCNN.cl
│   └── Host
│       └── mainV2.cpp
├── V2
│   ├── FPGA
│   │   ├── ProcessorCNNV2.aoco
│   │   ├── ProcessorCNNV2.aocx
│   │   └── ProcessorCNNV2.cl
│   └── Host
│       └── mainV2.cpp
├── V3
│   ├── FPGA
│   │   ├── ProcessorCNNV3.aoco
│   │   ├── ProcessorCNNV3.aocx
│   │   └── ProcessorCNNV3.cl
│   └── Host
│       └── mainV3Cam.cpp
├── V4
│   ├── FPGA
│   │   ├── ProcessorCNNV4.aoco
│   │   ├── ProcessorCNNV4.aocx
│   │   └── ProcessorCNNV4.cl
│   └── Host
│       └── mainV4Cam.cpp
├── V5
│   ├── FPGA
│   │   ├── ProcessorCNNV5.aoco
│   │   ├── ProcessorCNNV5.aocx
│   │   └── ProcessorCNNV5.cl
│   └── Host
│       └── mainV5cam.cpp
├── V6
│   ├── FPGA
│   │   ├── ProcessorCNNV6.aoco
│   │   ├── ProcessorCNNV6.aocx
│   │   └── ProcessorCNNV6.cl
│   └── Host
│       └── mainV6cam.cpp
├── V7
│   ├── FPGA
│   │   ├── ProcessorCNNV7.aoco
│   │   ├── ProcessorCNNV7.aocx
│   │   └── ProcessorCNNV7.cl
│   └── Host
│       └── mainV7cam.cpp
├── V8
│   ├── FPGA
│   │   ├── ProcessorCNNV8.aoco
│   │   ├── ProcessorCNNV8.aocx
│   │   └── ProcessorCNNV8.cl
│   └── Host
│       └── mainV8cam.cpp
├── bias.bin
├── build.sh
├── build_emu.sh
├── build_onnx.sh
├── mainDefinitivo.cpp
├── modelo_cola_cpu.onnx
├── network_schedule.h
└── weights.bin
```


---

## Tecnologías Utilizadas

* **Lenguajes**: C, C++, OpenCL
* **Framework**: OpenCL, onnx
* **Hardware (Target)**: SoC DE10-Nano
* **Herramientas**: aoc y aocl linux, onnxruntime, opencv

---

## Ejecución

Para compilar y ejecutar este proyecto, necesitarás tener el SDK OpenCL para FPGA del fabricante.

### Prerrequisitos

* SDK de OpenCL del fabricante (En este proyecto con la version 18.1 de intel)
* Drivers de la FPGA
* Onnxrutime
* Opencv

### Compilación y Ejecución

1.  **Compilar el Host:**
    ```bash
    ./build.sh
    ```
    Para emular la ejecución y comprobar que es correcta la arítmetica.
    ```bash
    ./build_emu.sh
    ```

2.  **Compilar el Kernel (FPGA):**


    ```bash
    aoc ProcessorCNNV8.cl
    ```

3.  **Ejecutar el Pipeline (Se ha de tener en el mismo directorio los ficheros weights.bin, bias.bin, network_schedule.h y modelo_cola_cpu.onnx):**
    ```bash
    ./aplicacion
    ```

---

## Resultados

### Análisis comparativo del rendimiento 


<img width="1038" height="371" alt="{A4C4110B-250C-482D-80C3-71F51B2D2AFE}" src="https://github.com/user-attachments/assets/d57edc32-83cc-4e5f-a052-fe0e9a4989d9" />



<img width="700" height="568" alt="{1DB68EBE-2642-409C-BEBA-3A974FC27E13}" src="https://github.com/user-attachments/assets/b77a9421-7843-44bf-9686-93ad4b909602" />


### Análisis energético comparativo

<img width="1048" height="368" alt="{4100F35D-5FC7-4D80-A253-7959070F95A2}" src="https://github.com/user-attachments/assets/2ce6f552-8377-4eb1-acc8-ca1192461e15" />

<img width="1028" height="604" alt="{CEB4D790-9C4E-4C4F-98A8-5F140DA044C7}" src="https://github.com/user-attachments/assets/95a6834b-971f-4872-8ae8-bb3fb2910784" />



### Gifts de ejecución de diferentes arquitecturas. 

Este proyecto

<img width="640" height="480" alt="TFT2026" src="https://github.com/user-attachments/assets/5ddc81b2-4781-4dbe-99b7-b7665a05d318" />


TFT 2025

<img width="640" height="480" alt="tft2025" src="https://github.com/user-attachments/assets/3bfb5dc3-6457-4cbe-8c6b-2f3f27fd1e89" />


CPU ARM ONNX Runtime

<img width="640" height="480" alt="SoloCPU" src="https://github.com/user-attachments/assets/30fcad4b-8617-4c5e-9af6-d1acc74db8b0" />

