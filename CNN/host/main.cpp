#include <opencv2/opencv.hpp>
#include <onnxruntime_cxx_api.h>
#include <vector>
#include <iostream>
#include <fstream>
#include <cmath>
#include <chrono>
#include <CL/cl.h>

#include "model_params.h"

// ─────────────────────────────────────────────────────────────────────────────
// Solución para DE10-Nano (no soporta CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE)
//
// En lugar de una cola out-of-order usamos COLAS IN-ORDER SEPARADAS POR SLOT.
// Cada slot tiene su propio queue_read[i] y queue_write[i], por lo que los
// Unmap/Map de slot 0 y slot 1 no se bloquean entre sí.
//
// La serialización de la FPGA (que solo puede procesar un frame a la vez) se
// garantiza con un evento cross-cola: kernel_mem_read[next] espera al evento
// pipeline_done del frame anterior (= fin de mem_write[current]).
//
// Diagrama de solapamiento buscado:
//
//  Iter N:   CPU[preprocesa N+1] ─────────────────────┐
//            FPGA[procesa N    ] ─────────────────────┘
//                                                      ↓
//  Iter N+1: CPU[preprocesa N+2] ...
//            FPGA[procesa N+1  ] ...
// ─────────────────────────────────────────────────────────────────────────────

struct FrameSlot {
    uint8_t* host_input_buffer;
    uint8_t* host_output_buffer;
    cl_mem   cl_buffer_input;
    cl_mem   cl_buffer_output;
    cv::Mat  display_frame;
    // Eventos del último Map de este slot → dependencia del próximo Unmap
    cl_event prev_map_in_event;
    cl_event prev_map_out_event;
    // Evento de fin de pipeline de este slot → dependencia del mem_read del SIGUIENTE frame
    // Evita que dos frames entren a la vez en la FPGA (que es single-instance)
    cl_event pipeline_done_event;
};

const int CONV1_WIDTH        = 320;
const int CONV1_HEIGHT       = 240;
const int CONV1_CHANNELS_IN  = 3;
const int CONV1_X_ZERO_POINT = 127;
const int CONV1_OUT_WIDTH    = 160;
const int CONV1_OUT_HEIGHT   = 120;
const int CONV1_CHANNELS_OUT = 16;
const int CONV3_CHANNELS_OUT = 32;
const int PAD_SIZE           = 1;
const int ALPHA_ZERO_POINT   = 0;

// ── Colas POR SLOT para map/unmap (evitan la serialización entre slots) ───────
cl_command_queue queue_read[2];
cl_command_queue queue_write[2];
// ── Colas compartidas para los kernels (in-order garantiza orden entre frames) ─
cl_command_queue queue_conv;
cl_command_queue queue_conv2;
cl_command_queue queue_conv3;

cl_kernel kernel_mem_read;
cl_kernel kernel_conv;
cl_kernel kernel_conv2;
cl_kernel kernel_conv3;
cl_kernel kernel_mem_write;
cl_mem buffer_weights;
cl_mem buffer_bias;
cl_mem buffer_weights_2;
cl_mem buffer_bias_2;
cl_mem buffer_weights_3;
cl_mem buffer_bias_3;
cl_int status;

struct Box {
    float xmin, ymin, xmax, ymax;
};

// Eventos que devuelve opencl_execution por slot
struct MapEvents {
    cl_event map_in;        // Re-Map del buffer de entrada  → guardar en slot.prev_map_in_event
    cl_event map_out;       // Re-Map del buffer de salida   → guardar en slot.prev_map_out_event
    cl_event pipeline_done; // Fin de mem_write              → guardar en slot.pipeline_done_event
};

void check_error(cl_int err, const char* operation) {
    if (err != CL_SUCCESS) {
        std::cerr << "Error durante la operacion: " << operation
                  << " (Codigo de error: " << err << ")" << std::endl;
        exit(1);
    }
}

std::vector<unsigned char> read_binary_file(const std::string& filename) {
    std::ifstream file(filename, std::ios::binary | std::ios::ate);
    if (!file)
        throw std::runtime_error("Error: No se pudo abrir el archivo .aocx: " + filename);
    std::streamsize size = file.tellg();
    file.seekg(0, std::ios::beg);
    std::vector<unsigned char> buffer(size);
    if (!file.read(reinterpret_cast<char*>(buffer.data()), size))
        throw std::runtime_error("Error al leer el archivo .aocx.");
    return buffer;
}

std::vector<std::array<float, 4>> generate_priors(int input_width = 320, int input_height = 240) {
    std::vector<std::array<float, 4>> prior_boxes;
    std::vector<std::pair<int,int>> feature_maps = {{30,40},{15,20},{8,10},{4,5}};
    std::vector<std::vector<int>> min_sizes = {
        {10,16,24}, {32,48}, {64,96}, {128,192,256}
    };
    std::vector<int> steps = {8,16,32,64};
    for (size_t k = 0; k < feature_maps.size(); ++k) {
        int fm_h = feature_maps[k].first;
        int fm_w = feature_maps[k].second;
        int step = steps[k];
        for (int i = 0; i < fm_h; ++i)
            for (int j = 0; j < fm_w; ++j)
                for (int min_size : min_sizes[k]) {
                    float cx    = (j + 0.5f) * step / input_width;
                    float cy    = (i + 0.5f) * step / input_height;
                    float box_w = (float)min_size / input_width;
                    float box_h = (float)min_size / input_height;
                    prior_boxes.push_back({cx, cy, box_w, box_h});
                }
    }
    return prior_boxes;
}

std::vector<Box> decode_boxes(const std::vector<std::array<float,4>>& loc,
                               const std::vector<std::array<float,4>>& priors,
                               float variance_center = 0.1f, float variance_size = 0.2f) {
    std::vector<Box> boxes(loc.size());
    for (size_t i = 0; i < loc.size(); ++i) {
        float cx = priors[i][0] + loc[i][0] * variance_center * priors[i][2];
        float cy = priors[i][1] + loc[i][1] * variance_center * priors[i][3];
        float w  = priors[i][2] * std::exp(loc[i][2] * variance_size);
        float h  = priors[i][3] * std::exp(loc[i][3] * variance_size);
        boxes[i].xmin = cx - w / 2.0f;
        boxes[i].ymin = cy - h / 2.0f;
        boxes[i].xmax = cx + w / 2.0f;
        boxes[i].ymax = cy + h / 2.0f;
    }
    return boxes;
}

std::vector<int> non_max_suppression(const std::vector<Box>& boxes,
                                      const std::vector<float>& scores,
                                      float iou_threshold   = 0.3f,
                                      float score_threshold = 0.6f) {
    std::vector<int> indices, keep;
    for (size_t i = 0; i < scores.size(); ++i)
        if (scores[i] >= score_threshold) indices.push_back((int)i);
    std::sort(indices.begin(), indices.end(),
              [&scores](int a, int b) { return scores[a] > scores[b]; });
    while (!indices.empty()) {
        int current = indices[0];
        keep.push_back(current);
        std::vector<int> rest;
        for (size_t i = 1; i < indices.size(); ++i) {
            int   idx  = indices[i];
            float xx1  = std::max(boxes[current].xmin, boxes[idx].xmin);
            float yy1  = std::max(boxes[current].ymin, boxes[idx].ymin);
            float xx2  = std::min(boxes[current].xmax, boxes[idx].xmax);
            float yy2  = std::min(boxes[current].ymax, boxes[idx].ymax);
            float inter = std::max(0.0f, xx2 - xx1) * std::max(0.0f, yy2 - yy1);
            float area1 = (boxes[current].xmax - boxes[current].xmin) *
                          (boxes[current].ymax - boxes[current].ymin);
            float area2 = (boxes[idx].xmax - boxes[idx].xmin) *
                          (boxes[idx].ymax - boxes[idx].ymin);
            if (inter / (area1 + area2 - inter) <= iou_threshold) rest.push_back(idx);
        }
        indices = rest;
    }
    return keep;
}

void preprocess(const cv::Mat& img, uint8_t* input_data,
                int input_width = 320, int input_height = 240) {
    cv::Mat resized;
    cv::resize(img, resized, cv::Size(input_width, input_height));
    cv::cvtColor(resized, resized, cv::COLOR_BGR2RGB);
    int channel_size = input_width * input_height;
    for (int c = 0; c < 3; ++c)
        for (int h = 0; h < input_height; ++h)
            for (int w = 0; w < input_width; ++w)
                input_data[c * channel_size + h * input_width + w] =
                    resized.at<cv::Vec3b>(h, w)[c];
}

// ─────────────────────────────────────────────────────────────────────────────
// opencl_execution
//
// Parámetros clave:
//   slot_idx           → índice del slot (0 o 1), para seleccionar queue_read[i]/queue_write[i]
//   unmap_in_ev        → evento del Unmap del input  (ya encolado por el caller)
//   unmap_out_ev       → evento del Unmap del output (ya encolado por el caller)
//   prev_pipeline_done → evento del fin de mem_write del frame ANTERIOR (NULL si es el primero)
//                        Impide que mem_read[next] arranque antes de que la FPGA
//                        haya terminado el frame current. La DE10-Nano tiene kernels
//                        single-instance: no pueden ejecutarse dos a la vez.
//
// Devuelve MapEvents con:
//   map_in        → guardar en slot.prev_map_in_event
//   map_out       → guardar en slot.prev_map_out_event
//   pipeline_done → guardar en slot.pipeline_done_event (= mem_write completado)
// ─────────────────────────────────────────────────────────────────────────────
MapEvents opencl_execution(int      slot_idx,
                            cl_mem   slot_buffer_input,
                            cl_mem   slot_buffer_output,
                            cl_event unmap_in_ev,
                            cl_event unmap_out_ev,
                            cl_event prev_pipeline_done,   // NULL en el primer frame
                            size_t   input_size_bytes,
                            size_t   output_size_bytes,
                            uint8_t** host_input_ptr,
                            uint8_t** host_output_ptr)
{
    status = clSetKernelArg(kernel_mem_read,  0, sizeof(cl_mem), &slot_buffer_input);
    check_error(status, "clSetKernelArg(mem_read)");
    status = clSetKernelArg(kernel_mem_write, 0, sizeof(cl_mem), &slot_buffer_output);
    check_error(status, "clSetKernelArg(mem_write)");

    cl_event kernel_read_event, kernel_write_event;

    // ── mem_read ──────────────────────────────────────────────────────────────
    // Depende de:
    //   1. unmap_in_ev:        la CPU terminó de escribir y cedió el buffer
    //   2. prev_pipeline_done: la FPGA terminó el frame anterior (single-instance)
    // Si prev_pipeline_done es NULL (primer frame), solo esperamos al Unmap.
    if (prev_pipeline_done != NULL) {
        cl_event deps[2] = { unmap_in_ev, prev_pipeline_done };
        status = clEnqueueTask(queue_read[slot_idx], kernel_mem_read,
                               2, deps, &kernel_read_event);
    } else {
        status = clEnqueueTask(queue_read[slot_idx], kernel_mem_read,
                               1, &unmap_in_ev, &kernel_read_event);
    }
    check_error(status, "clEnqueueTask(mem_read)");

    // ── conv / conv2 / conv3 ──────────────────────────────────────────────────
    // Colas compartidas in-order: el orden de encolado garantiza que el frame
    // current se procesa antes que el next en los kernels de convolución.
    // No necesitamos eventos adicionales aquí; los canales FPGA (pipes) sincronizan
    // mem_read → conv → conv2 → conv3 → mem_write dentro de cada frame.
    status = clEnqueueTask(queue_conv,  kernel_conv,  0, NULL, NULL);
    check_error(status, "clEnqueueTask(conv)");
    status = clEnqueueTask(queue_conv2, kernel_conv2, 0, NULL, NULL);
    check_error(status, "clEnqueueTask(conv2)");
    status = clEnqueueTask(queue_conv3, kernel_conv3, 0, NULL, NULL);
    check_error(status, "clEnqueueTask(conv3)");

    // ── mem_write ─────────────────────────────────────────────────────────────
    // Depende de unmap_out_ev (la CPU cedió el buffer de salida).
    // La sincronización con el fin de conv3 la gestionan los pipes FPGA internos.
    status = clEnqueueTask(queue_write[slot_idx], kernel_mem_write,
                           1, &unmap_out_ev, &kernel_write_event);
    check_error(status, "clEnqueueTask(mem_write)");

    MapEvents evs;

    // ── Re-Map asíncrono del INPUT ────────────────────────────────────────────
    // Espera a que mem_read termine → el buffer vuelve a ser accesible para la CPU.
    // queue_read[slot_idx] es in-order: este Map se encola tras el Task de arriba.
    *host_input_ptr = (uint8_t*)clEnqueueMapBuffer(
        queue_read[slot_idx], slot_buffer_input, CL_FALSE, CL_MAP_WRITE,
        0, input_size_bytes,
        1, &kernel_read_event,
        &evs.map_in,   // ← guardar en slot.prev_map_in_event
        &status);
    check_error(status, "clEnqueueMapBuffer(async input)");

    // ── Re-Map asíncrono del OUTPUT ───────────────────────────────────────────
    // Espera a que mem_write termine → los resultados están listos para ONNX.
    *host_output_ptr = (uint8_t*)clEnqueueMapBuffer(
        queue_write[slot_idx], slot_buffer_output, CL_FALSE, CL_MAP_READ,
        0, output_size_bytes,
        1, &kernel_write_event,
        &evs.map_out,  // ← guardar en slot.prev_map_out_event
        &status);
    check_error(status, "clEnqueueMapBuffer(async output)");

    // pipeline_done = fin de mem_write = FPGA terminó este frame.
    // El caller lo guardará en slot.pipeline_done_event y lo pasará al
    // siguiente frame como prev_pipeline_done.
    evs.pipeline_done = kernel_write_event;

    clReleaseEvent(kernel_read_event);
    // NO liberamos kernel_write_event aquí: lo devolvemos como pipeline_done.

    // Forzar el envío a la FPGA. Sin clFlush los comandos quedan en el buffer
    // del host y no arrancan mientras la CPU está ocupada.
    clFlush(queue_read[slot_idx]);
    clFlush(queue_conv);
    clFlush(queue_conv2);
    clFlush(queue_conv3);
    clFlush(queue_write[slot_idx]);

    return evs;
}

// ─────────────────────────────────────────────────────────────────────────────
// main
// ─────────────────────────────────────────────────────────────────────────────
int main(int argc, char* argv[]) {

    if (argc < 3) {
        std::cerr << "Uso: " << argv[0] << " modelo.onnx [cpu|opencl]" << std::endl;
        return 1;
    }

    std::string model_path = argv[1];
    std::string provider   = argv[2];
    std::cout << "Cargando modelo: " << model_path << std::endl;

    const int input_width  = 320;
    const int input_height = 240;

    Ort::Env* env = new Ort::Env(ORT_LOGGING_LEVEL_ERROR, "UltraLightFace");
    Ort::SessionOptions session_options;

    // 1. Activar todas las optimizaciones matemáticas posibles en el modelo
    session_options.SetGraphOptimizationLevel(GraphOptimizationLevel::ORT_ENABLE_ALL);

    // 2. Limitar los hilos al número de núcleos reales de la placa (2 núcleos)
    // Si pones más, el procesador pierde tiempo cambiando entre tareas (Context Switch)
    session_options.SetIntraOpNumThreads(2);

    // 3. Forzar ejecución secuencial interna para no saturar la caché del ARM
    //session_options.SetExecutionMode(ExecutionMode::ORT_SEQUENTIAL);

    std::cout << "Iniciamos onnx" << std::endl;
    Ort::CustomOpDomain custom_domain("com.mycompany.fpga");
    std::cout << "Cargamos modelo" << std::endl;
    Ort::Session session(*env, model_path.c_str(), session_options);
    std::cout << "Creada session" << std::endl;

    const char* input_name     = "191_quantized";
    const char* output_names[] = {"scores", "boxes"};

    std::vector<std::array<float,4>> priors = generate_priors(input_width, input_height);
    std::cout << "Generadas prior box" << std::endl;

    cv::VideoCapture cap(0);
    if (!cap.isOpened()) { std::cerr << "No se pudo abrir la cámara\n"; return -1; }
    cap.set(cv::CAP_PROP_FRAME_WIDTH,  320.0);
    cap.set(cv::CAP_PROP_FRAME_HEIGHT, 240.0);

    // ── OpenCL ────────────────────────────────────────────────────────────────
    const std::string AOCX_PATH = "pipeconv.aocx";
    std::cout << "Configurando OpenCL..." << std::endl;

    cl_platform_id platform = NULL;
    cl_uint num_platforms;
    status = clGetPlatformIDs(0, NULL, &num_platforms);
    check_error(status, "clGetPlatformIDs (num_platforms)");

    if (num_platforms > 0) {
        cl_platform_id* platforms = new cl_platform_id[num_platforms];
        clGetPlatformIDs(num_platforms, platforms, NULL);
        for (cl_uint i = 0; i < num_platforms; ++i) {
            char pbuf[100];
            clGetPlatformInfo(platforms[i], CL_PLATFORM_NAME, sizeof(pbuf), pbuf, NULL);
            if (strstr(pbuf, "Intel") != NULL) {
                platform = platforms[i];
                std::cout << "Plataforma encontrada: " << pbuf << std::endl;
                break;
            }
        }
        delete[] platforms;
    }
    if (platform == NULL) { std::cerr << "No se encontró la plataforma de Intel FPGA.\n"; return -1; }

    cl_device_id device;
    status = clGetDeviceIDs(platform, CL_DEVICE_TYPE_ACCELERATOR, 1, &device, NULL);
    check_error(status, "clGetDeviceIDs");

    cl_context context = clCreateContext(NULL, 1, &device, NULL, NULL, &status);
    check_error(status, "clCreateContext");

    // ── Colas IN-ORDER (flag = 0, compatible con DE10-Nano) ──────────────────
    //
    // queue_read[0] y queue_read[1] son independientes entre sí: los comandos
    // del slot 0 no bloquean los del slot 1 aunque sean la misma cola física.
    // Dentro de cada cola[i] el orden sigue siendo estrictamente secuencial.
    //
    // queue_conv/conv2/conv3 son compartidas: el orden de encolado garantiza
    // que los kernels de convolución ejecutan los frames en el orden correcto.
    for (int i = 0; i < 2; ++i) {
        queue_read[i]  = clCreateCommandQueue(context, device, 0, &status);
        check_error(status, "clCreateCommandQueue(queue_read[i])");
        queue_write[i] = clCreateCommandQueue(context, device, 0, &status);
        check_error(status, "clCreateCommandQueue(queue_write[i])");
    }
    queue_conv  = clCreateCommandQueue(context, device, 0, &status);
    queue_conv2 = clCreateCommandQueue(context, device, 0, &status);
    queue_conv3 = clCreateCommandQueue(context, device, 0, &status);
    check_error(status, "clCreateCommandQueue(conv)");

    std::cout << "Cargando archivo binario .aocx..." << std::endl;
    std::vector<unsigned char> program_buffer = read_binary_file(AOCX_PATH);
    size_t program_size = program_buffer.size();
    const unsigned char* program_ptr = program_buffer.data();
    cl_program program = clCreateProgramWithBinary(context, 1, &device,
                                                    &program_size, &program_ptr,
                                                    NULL, &status);
    check_error(status, "clCreateProgramWithBinary");
    status = clBuildProgram(program, 0, NULL, "", NULL, NULL);
    check_error(status, "clBuildProgram");

    std::cout << "Creando kernels..." << std::endl;
    kernel_mem_read  = clCreateKernel(program, "mem_read",  &status); check_error(status, "clCreateKernel(mem_read)");
    kernel_conv      = clCreateKernel(program, "conv",      &status); check_error(status, "clCreateKernel(conv)");
    kernel_conv2     = clCreateKernel(program, "conv2",     &status); check_error(status, "clCreateKernel(conv2)");
    kernel_conv3     = clCreateKernel(program, "conv3",     &status); check_error(status, "clCreateKernel(conv3)");
    kernel_mem_write = clCreateKernel(program, "mem_write", &status); check_error(status, "clCreateKernel(mem_write)");

    // ── Buffers de pesos ──────────────────────────────────────────────────────
    buffer_weights   = clCreateBuffer(context, CL_MEM_READ_ONLY, sizeof(conv1_weights), NULL, &status); check_error(status, "clCreateBuffer(weights)");
    buffer_bias      = clCreateBuffer(context, CL_MEM_READ_ONLY, sizeof(conv1_bias),    NULL, &status); check_error(status, "clCreateBuffer(bias)");
    buffer_weights_2 = clCreateBuffer(context, CL_MEM_READ_ONLY, sizeof(conv2_weights), NULL, &status); check_error(status, "clCreateBuffer(weights_2)");
    buffer_bias_2    = clCreateBuffer(context, CL_MEM_READ_ONLY, sizeof(conv2_bias),    NULL, &status); check_error(status, "clCreateBuffer(bias_2)");
    buffer_weights_3 = clCreateBuffer(context, CL_MEM_READ_ONLY, sizeof(conv3_weights), NULL, &status); check_error(status, "clCreateBuffer(weights_3)");
    buffer_bias_3    = clCreateBuffer(context, CL_MEM_READ_ONLY, sizeof(conv3_bias),    NULL, &status); check_error(status, "clCreateBuffer(bias_3)");

    clEnqueueWriteBuffer(queue_conv,  buffer_weights,   CL_TRUE, 0, sizeof(conv1_weights), conv1_weights, 0, NULL, NULL);
    clEnqueueWriteBuffer(queue_conv,  buffer_bias,      CL_TRUE, 0, sizeof(conv1_bias),    conv1_bias,    0, NULL, NULL);
    clEnqueueWriteBuffer(queue_conv2, buffer_weights_2, CL_TRUE, 0, sizeof(conv2_weights), conv2_weights, 0, NULL, NULL);
    clEnqueueWriteBuffer(queue_conv2, buffer_bias_2,    CL_TRUE, 0, sizeof(conv2_bias),    conv2_bias,    0, NULL, NULL);
    clEnqueueWriteBuffer(queue_conv3, buffer_weights_3, CL_TRUE, 0, sizeof(conv3_weights), conv3_weights, 0, NULL, NULL);
    clEnqueueWriteBuffer(queue_conv3, buffer_bias_3,    CL_TRUE, 0, sizeof(conv3_bias),    conv3_bias,    0, NULL, NULL);

    clSetKernelArg(kernel_conv,  0, sizeof(cl_mem), &buffer_weights);
    clSetKernelArg(kernel_conv,  1, sizeof(cl_mem), &buffer_bias);
    clSetKernelArg(kernel_conv2, 0, sizeof(cl_mem), &buffer_weights_2);
    clSetKernelArg(kernel_conv2, 1, sizeof(cl_mem), &buffer_bias_2);
    clSetKernelArg(kernel_conv3, 0, sizeof(cl_mem), &buffer_weights_3);
    clSetKernelArg(kernel_conv3, 1, sizeof(cl_mem), &buffer_bias_3);

    Ort::MemoryInfo memory_info = Ort::MemoryInfo::CreateCpu(OrtArenaAllocator, OrtMemTypeDefault);

    // ── Slots ping-pong con memoria compartida ────────────────────────────────
    std::cout << "Creando Memoria Compartida (double buffering)..." << std::endl;

    size_t input_bytes  = (size_t)input_height * input_width * 3;
    size_t output_bytes = (size_t)CONV1_OUT_WIDTH * CONV1_OUT_HEIGHT * CONV3_CHANNELS_OUT;

    FrameSlot slots[2];

    for (int i = 0; i < 2; ++i) {
        slots[i].cl_buffer_input  = clCreateBuffer(context,
            CL_MEM_READ_ONLY  | CL_MEM_ALLOC_HOST_PTR, input_bytes,  NULL, &status);
        check_error(status, "clCreateBuffer(slot input)");
        slots[i].cl_buffer_output = clCreateBuffer(context,
            CL_MEM_WRITE_ONLY | CL_MEM_ALLOC_HOST_PTR, output_bytes, NULL, &status);
        check_error(status, "clCreateBuffer(slot output)");

        // Map síncrono inicial. Capturamos el evento aunque ya esté completado:
        // lo necesitamos como dependencia del primer Unmap de este slot.
        slots[i].host_input_buffer = (uint8_t*)clEnqueueMapBuffer(
            queue_read[i], slots[i].cl_buffer_input, CL_TRUE, CL_MAP_WRITE,
            0, input_bytes, 0, NULL, &slots[i].prev_map_in_event, &status);
        check_error(status, "clEnqueueMapBuffer(init input)");

        slots[i].host_output_buffer = (uint8_t*)clEnqueueMapBuffer(
            queue_write[i], slots[i].cl_buffer_output, CL_TRUE, CL_MAP_READ,
            0, output_bytes, 0, NULL, &slots[i].prev_map_out_event, &status);
        check_error(status, "clEnqueueMapBuffer(init output)");

        slots[i].pipeline_done_event = NULL; // sin frame previo todavía
    }

    // ── Fotograma inicial: pre-procesar slot 0 y lanzar la FPGA ──────────────
    int current = 0;
    int next    = 1;

    cap >> slots[current].display_frame;
    preprocess(slots[current].display_frame, slots[current].host_input_buffer,
               input_width, input_height);

    cl_event unmap_in_init, unmap_out_init;
    clEnqueueUnmapMemObject(queue_read[current],  slots[current].cl_buffer_input,
                             slots[current].host_input_buffer,
                             1, &slots[current].prev_map_in_event,  &unmap_in_init);
    clEnqueueUnmapMemObject(queue_write[current], slots[current].cl_buffer_output,
                             slots[current].host_output_buffer,
                             1, &slots[current].prev_map_out_event, &unmap_out_init);

    clReleaseEvent(slots[current].prev_map_in_event);
    clReleaseEvent(slots[current].prev_map_out_event);

    MapEvents init_evs = opencl_execution(
        current,
        slots[current].cl_buffer_input,  slots[current].cl_buffer_output,
        unmap_in_init, unmap_out_init,
        NULL,          // primer frame: sin pipeline previo
        input_bytes, output_bytes,
        &slots[current].host_input_buffer,
        &slots[current].host_output_buffer);

    slots[current].prev_map_in_event    = init_evs.map_in;
    slots[current].prev_map_out_event   = init_evs.map_out;
    slots[current].pipeline_done_event  = init_evs.pipeline_done;

    clReleaseEvent(unmap_in_init);
    clReleaseEvent(unmap_out_init);

    // ── Bucle principal PING-PONG ─────────────────────────────────────────────
    auto start = std::chrono::high_resolution_clock::now();
    int  frame_count = 0;
    std::cout << "Iniciando bucle PING-PONG (colas por slot, DE10-Nano)..." << std::endl;

    while (true) {

        // ── 1. Captura y pre-proceso de 'next' (CPU activa) ───────────────────
        // La FPGA está procesando 'current' en paralelo mientras esto ocurre.
        cap >> slots[next].display_frame;
        if (slots[next].display_frame.empty()) break;

        preprocess(slots[next].display_frame, slots[next].host_input_buffer,
                   input_width, input_height);

        // ── 2. Unmap de 'next': ceder el control al DMA ───────────────────────
        // queue_read[next] y queue_write[next] son independientes de queue_read[current]
        // y queue_write[current], por lo que este Unmap no espera nada del slot current.
        cl_event unmap_in_next, unmap_out_next;
        clEnqueueUnmapMemObject(queue_read[next],  slots[next].cl_buffer_input,
                                 slots[next].host_input_buffer,
                                 1, &slots[next].prev_map_in_event,  &unmap_in_next);
        clEnqueueUnmapMemObject(queue_write[next], slots[next].cl_buffer_output,
                                 slots[next].host_output_buffer,
                                 1, &slots[next].prev_map_out_event, &unmap_out_next);

        clReleaseEvent(slots[next].prev_map_in_event);
        clReleaseEvent(slots[next].prev_map_out_event);

        // ── 3. Lanzar pipeline FPGA para 'next' (asíncrono) ──────────────────
        // mem_read[next] esperará internamente a que pipeline_done[current] se
        // complete antes de arrancar → la FPGA no recibe dos frames a la vez.
        MapEvents next_evs = opencl_execution(
            next,
            slots[next].cl_buffer_input,  slots[next].cl_buffer_output,
            unmap_in_next, unmap_out_next,
            slots[current].pipeline_done_event, // cross-cola: esperar fin de frame current
            input_bytes, output_bytes,
            &slots[next].host_input_buffer,
            &slots[next].host_output_buffer);

        slots[next].prev_map_in_event   = next_evs.map_in;
        slots[next].prev_map_out_event  = next_evs.map_out;
        // El pipeline_done del slot current ya no lo necesitamos: lo liberamos
        // después de pasarlo (abajo en el clRelease)
        clReleaseEvent(slots[current].pipeline_done_event);
        slots[next].pipeline_done_event = next_evs.pipeline_done;

        clReleaseEvent(unmap_in_next);
        clReleaseEvent(unmap_out_next);

        // ── 4. Esperar a que la FPGA termine 'current' ───────────────────────
        // map_out_event de 'current' se completa cuando mem_write termina y el
        // buffer de salida vuelve a ser válido para la CPU (ONNX puede leerlo).
        auto t_fpga_start = std::chrono::high_resolution_clock::now();
        status = clWaitForEvents(1, &slots[current].prev_map_out_event);
        check_error(status, "clWaitForEvents(map_out current)");
        auto t_fpga_end = std::chrono::high_resolution_clock::now();

        frame_count++;

        // ── 5. ONNX sobre los resultados de 'current' (zero-copy) ─────────────
        auto t_onnx_start = std::chrono::high_resolution_clock::now();

        Ort::Value input_tensor = Ort::Value::CreateTensor<uint8_t>(
            memory_info,
            slots[current].host_output_buffer,  // puntero directo a RAM compartida
            output_bytes,
            std::vector<int64_t>{1, 32, 120, 160}.data(), 4);

        auto output_tensors = session.Run(Ort::RunOptions{nullptr},
                                          &input_name, &input_tensor, 1,
                                          output_names, 2);

        auto t_onnx_end = std::chrono::high_resolution_clock::now();

        // ── 6. Post-proceso ───────────────────────────────────────────────────
        auto t_post_start = std::chrono::high_resolution_clock::now();

        float* conf_ptr = output_tensors[0].GetTensorMutableData<float>();
        float* loc_ptr  = output_tensors[1].GetTensorMutableData<float>();

        size_t num_boxes = priors.size();
        std::vector<std::array<float,2>> conf(num_boxes);
        std::vector<std::array<float,4>> loc(num_boxes);
        for (size_t i = 0; i < num_boxes; ++i) {
            conf[i][0] = conf_ptr[i*2+0]; conf[i][1] = conf_ptr[i*2+1];
            loc[i][0]  = loc_ptr[i*4+0];  loc[i][1]  = loc_ptr[i*4+1];
            loc[i][2]  = loc_ptr[i*4+2];  loc[i][3]  = loc_ptr[i*4+3];
        }

        std::vector<Box>   boxes = decode_boxes(loc, priors);
        std::vector<float> scores(num_boxes);
        for (size_t i = 0; i < num_boxes; ++i) scores[i] = conf[i][1];
        std::vector<int>   keep  = non_max_suppression(boxes, scores, 0.3f, 0.6f);

        auto t_post_end = std::chrono::high_resolution_clock::now();

        // ── Profiling cada 100 frames ─────────────────────────────────────────
        // Si "Espera FPGA" ≈ 0 ms → la FPGA terminó mientras la CPU preprocesaba
        // el siguiente frame → el solapamiento funciona.
        // Si "Espera FPGA" >> 0 ms → la FPGA sigue siendo el cuello de botella.
        if (frame_count % 100 == 99) {
            std::chrono::duration<double,std::milli> T_fpga = t_fpga_end - t_fpga_start;
            std::chrono::duration<double,std::milli> T_onnx = t_onnx_end - t_onnx_start;
            std::chrono::duration<double,std::milli> T_post = t_post_end - t_post_start;
            std::cout << "\n--- PROFILING (ms) ---\n";
            std::cout << "Espera FPGA (map_out):  " << T_fpga.count() << " ms\n";
            std::cout << "ONNX (session.Run):     " << T_onnx.count() << " ms\n";
            std::cout << "POST (Decode+NMS):      " << T_post.count() << " ms\n";
            std::cout << "Si 'Espera FPGA' ~ 0 ms -> solapamiento OK.\n";
            std::cout << "Si 'Espera FPGA' >> 0 ms -> cuello de botella en FPGA.\n";
            std::cout << "----------------------\n\n";
        }

        // ── Dibujar y mostrar ─────────────────────────────────────────────────
        cv::Mat& frame_to_display = slots[current].display_frame;
        float scale_w = (float)frame_to_display.cols / input_width;
        float scale_h = (float)frame_to_display.rows / input_height;

        for (int idx : keep) {
            int xmin = (int)(boxes[idx].xmin * input_width  * scale_w);
            int ymin = (int)(boxes[idx].ymin * input_height * scale_h);
            int xmax = (int)(boxes[idx].xmax * input_width  * scale_w);
            int ymax = (int)(boxes[idx].ymax * input_height * scale_h);
            cv::rectangle(frame_to_display,
                          cv::Point(xmin, ymin), cv::Point(xmax, ymax),
                          cv::Scalar(0,255,0), 2);
            cv::putText(frame_to_display, cv::format("%.2f", scores[idx]),
                        cv::Point(xmin, ymin - 5),
                        cv::FONT_HERSHEY_SIMPLEX, 0.5, cv::Scalar(0,255,0), 1);
        }

        auto end = std::chrono::high_resolution_clock::now();
        std::chrono::duration<double> diff = end - start;
        double fps = (diff.count() > 0) ? (1.0 / diff.count()) : 0.0;
        start = std::chrono::high_resolution_clock::now();

        cv::putText(frame_to_display, cv::format("FPS: %.2f", fps),
                    cv::Point(10, 20), cv::FONT_HERSHEY_SIMPLEX, 0.5,
                    cv::Scalar(0,0,255), 2);

        cv::imshow("Ultra Light Face Detector", frame_to_display);
        if (cv::waitKey(1) == 27) break;

        // ── Swap ping-pong ────────────────────────────────────────────────────
        current = 1 - current;
        next    = 1 - next;
    }

    // ── Cleanup ───────────────────────────────────────────────────────────────
    std::cout << "Deteniendo y liberando recursos..." << std::endl;

    cap.release();
    cv::destroyAllWindows();

    for (int i = 0; i < 2; ++i) {
        clFinish(queue_read[i]);
        clFinish(queue_write[i]);
    }
    clFinish(queue_conv);
    clFinish(queue_conv2);
    clFinish(queue_conv3);

    for (int i = 0; i < 2; ++i) {
        if (slots[i].prev_map_in_event)   clReleaseEvent(slots[i].prev_map_in_event);
        if (slots[i].prev_map_out_event)  clReleaseEvent(slots[i].prev_map_out_event);
        if (slots[i].pipeline_done_event) clReleaseEvent(slots[i].pipeline_done_event);

        clEnqueueUnmapMemObject(queue_read[i],  slots[i].cl_buffer_input,
                                 slots[i].host_input_buffer,  0, NULL, NULL);
        clEnqueueUnmapMemObject(queue_write[i], slots[i].cl_buffer_output,
                                 slots[i].host_output_buffer, 0, NULL, NULL);
        clFinish(queue_read[i]);
        clFinish(queue_write[i]);

        clReleaseMemObject(slots[i].cl_buffer_input);
        clReleaseMemObject(slots[i].cl_buffer_output);
    }

    clReleaseMemObject(buffer_weights);   clReleaseMemObject(buffer_bias);
    clReleaseMemObject(buffer_weights_2); clReleaseMemObject(buffer_bias_2);
    clReleaseMemObject(buffer_weights_3); clReleaseMemObject(buffer_bias_3);

    clReleaseKernel(kernel_mem_read);  clReleaseKernel(kernel_conv);
    clReleaseKernel(kernel_conv2);     clReleaseKernel(kernel_conv3);
    clReleaseKernel(kernel_mem_write);

    clReleaseProgram(program);

    for (int i = 0; i < 2; ++i) {
        clReleaseCommandQueue(queue_read[i]);
        clReleaseCommandQueue(queue_write[i]);
    }
    clReleaseCommandQueue(queue_conv);
    clReleaseCommandQueue(queue_conv2);
    clReleaseCommandQueue(queue_conv3);

    clReleaseContext(context);
    delete env;

    return 0;
}