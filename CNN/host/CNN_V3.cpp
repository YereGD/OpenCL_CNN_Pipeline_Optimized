#include <opencv2/opencv.hpp>
#include <onnxruntime_cxx_api.h>
#include <vector>
#include <iostream>
#include <fstream>
#include <cmath>
#include <chrono>
#include <CL/cl.h>
 
#include "model_params.h"
 
// Guardamos los eventos del último Map de cada slot para usarlos como
// dependencia explícita en el Unmap del siguiente uso del mismo slot.
// Con colas out-of-order ya no existe orden implícito, así que estas
// dependencias son las que evitan que la CPU y la FPGA accedan a la
// misma región de memoria a la vez.
struct FrameSlot {
    uint8_t* host_input_buffer;
    uint8_t* host_output_buffer;
    cl_mem cl_buffer_input;
    cl_mem cl_buffer_output;
    cv::Mat display_frame;
    cl_event prev_map_in_event;   // evento del último Map del buffer de entrada
    cl_event prev_map_out_event;  // evento del último Map del buffer de salida
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
 
cl_command_queue queue_read;
cl_command_queue queue_conv;
cl_command_queue queue_conv2;
cl_command_queue queue_conv3;
cl_command_queue queue_write;
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
 
// Par de eventos que devuelve opencl_execution: el Map del input y el del output.
// El caller los guarda en el slot y los pasa como dependencia al próximo Unmap.
struct MapEvents {
    cl_event map_in;
    cl_event map_out;
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
    std::vector<std::pair<int, int>> feature_maps = {{30,40},{15,20},{8,10},{4,5}};
    std::vector<std::vector<int>> min_sizes = {
        {10,16,24}, {32,48}, {64,96}, {128,192,256}
    };
    std::vector<int> steps = {8,16,32,64};
 
    for (size_t k = 0; k < feature_maps.size(); ++k) {
        int fm_h = feature_maps[k].first;
        int fm_w = feature_maps[k].second;
        int step = steps[k];
        for (int i = 0; i < fm_h; ++i) {
            for (int j = 0; j < fm_w; ++j) {
                for (int min_size : min_sizes[k]) {
                    float cx    = (j + 0.5f) * step / input_width;
                    float cy    = (i + 0.5f) * step / input_height;
                    float box_w = (float)min_size / input_width;
                    float box_h = (float)min_size / input_height;
                    prior_boxes.push_back({cx, cy, box_w, box_h});
                }
            }
        }
    }
    return prior_boxes;
}
 
std::vector<Box> decode_boxes(const std::vector<std::array<float, 4>>& loc,
                               const std::vector<std::array<float, 4>>& priors,
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
            float w    = std::max(0.0f, xx2 - xx1);
            float h    = std::max(0.0f, yy2 - yy1);
            float inter = w * h;
            float area1 = (boxes[current].xmax - boxes[current].xmin) *
                          (boxes[current].ymax - boxes[current].ymin);
            float area2 = (boxes[idx].xmax - boxes[idx].xmin) *
                          (boxes[idx].ymax - boxes[idx].ymin);
            float ovr   = inter / (area1 + area2 - inter);
            if (ovr <= iou_threshold) rest.push_back(idx);
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
    // Escribe directamente en la RAM mapeada (zero-copy)
    for (int c = 0; c < 3; ++c)
        for (int h = 0; h < input_height; ++h)
            for (int w = 0; w < input_width; ++w)
                input_data[c * channel_size + h * input_width + w] =
                    resized.at<cv::Vec3b>(h, w)[c];
}
 
// ─────────────────────────────────────────────────────────────────────────────
// opencl_execution
//
// Encola toda la pipeline FPGA para un slot y devuelve los eventos de los
// re-Maps asíncronos (map_in y map_out).  El caller debe guardarlos en el
// slot y pasarlos como dependencia al próximo Unmap del mismo slot.
//
// Dependencias que se respetan:
//   unmap_in_ev  → kernel_mem_read  → re-Map input  (map_in)
//   unmap_out_ev → kernel_mem_write → re-Map output (map_out)
//   Los canales FPGA internos (pipes) sincronizan conv/conv2/conv3 sin
//   necesidad de eventos adicionales en el host.
// ─────────────────────────────────────────────────────────────────────────────
MapEvents opencl_execution(cl_mem   slot_buffer_input,
                            cl_mem   slot_buffer_output,
                            cl_event unmap_in_ev,
                            cl_event unmap_out_ev,
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
 
    // mem_read no puede arrancar hasta que la CPU haya hecho Unmap del input
    status = clEnqueueTask(queue_read, kernel_mem_read,
                           1, &unmap_in_ev, &kernel_read_event);
    check_error(status, "clEnqueueTask(mem_read)");
 
    // conv/conv2/conv3: sin dependencias de host; los pipes FPGA los sincronizan
    status = clEnqueueTask(queue_conv,  kernel_conv,  0, NULL, NULL);
    check_error(status, "clEnqueueTask(conv)");
    status = clEnqueueTask(queue_conv2, kernel_conv2, 0, NULL, NULL);
    check_error(status, "clEnqueueTask(conv2)");
    status = clEnqueueTask(queue_conv3, kernel_conv3, 0, NULL, NULL);
    check_error(status, "clEnqueueTask(conv3)");
 
    // mem_write no puede arrancar hasta que la CPU haya hecho Unmap del output
    status = clEnqueueTask(queue_write, kernel_mem_write,
                           1, &unmap_out_ev, &kernel_write_event);
    check_error(status, "clEnqueueTask(mem_write)");
 
    MapEvents evs;
 
    // Re-Map asíncrono del INPUT: espera a que mem_read termine.
    // Capturamos el evento (map_in) para que el caller lo use en el próximo Unmap.
    *host_input_ptr = (uint8_t*)clEnqueueMapBuffer(
        queue_read, slot_buffer_input, CL_FALSE, CL_MAP_WRITE,
        0, input_size_bytes,
        1, &kernel_read_event,
        &evs.map_in,   // ← evento que el caller debe guardar en el slot
        &status);
    check_error(status, "clEnqueueMapBuffer(async input)");
 
    // Re-Map asíncrono del OUTPUT: espera a que mem_write termine.
    *host_output_ptr = (uint8_t*)clEnqueueMapBuffer(
        queue_write, slot_buffer_output, CL_FALSE, CL_MAP_READ,
        0, output_size_bytes,
        1, &kernel_write_event,
        &evs.map_out,  // ← evento que el caller debe guardar en el slot
        &status);
    check_error(status, "clEnqueueMapBuffer(async output)");
 
    clReleaseEvent(kernel_read_event);
    clReleaseEvent(kernel_write_event);
 
    // Forzar el envío a la FPGA: sin esto los comandos permanecen en la cola
    // del host y nunca arrancan mientras la CPU está ocupada en otro trabajo.
    clFlush(queue_read);
    clFlush(queue_conv);
    clFlush(queue_conv2);
    clFlush(queue_conv3);
    clFlush(queue_write);
 
    return evs;  // map_in y map_out, ambos pendientes de completarse
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
 
    std::cout << "Iniciamos onnx" << std::endl;
    Ort::CustomOpDomain custom_domain("com.mycompany.fpga");
    std::cout << "Cargamos modelo" << std::endl;
    Ort::Session session(*env, model_path.c_str(), session_options);
    std::cout << "Creada session" << std::endl;
 
    const char* input_name          = "191_quantized";
    const char* output_names[]      = {"scores", "boxes"};
 
    std::vector<std::array<float, 4>> priors = generate_priors(input_width, input_height);
    std::cout << "Generadas prior box" << std::endl;
 
    cv::VideoCapture cap(0);
    if (!cap.isOpened()) {
        std::cerr << "No se pudo abrir la cámara\n";
        return -1;
    }
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
        status = clGetPlatformIDs(num_platforms, platforms, NULL);
        check_error(status, "clGetPlatformIDs (platforms)");
        for (cl_uint i = 0; i < num_platforms; ++i) {
            char pbuf[100];
            status = clGetPlatformInfo(platforms[i], CL_PLATFORM_NAME,
                                       sizeof(pbuf), pbuf, NULL);
            check_error(status, "clGetPlatformInfo");
            if (strstr(pbuf, "Intel") != NULL) {
                platform = platforms[i];
                std::cout << "Plataforma encontrada: " << pbuf << std::endl;
                break;
            }
        }
        delete[] platforms;
    }
 
    if (platform == NULL) {
        std::cerr << "No se encontró la plataforma de Intel FPGA." << std::endl;
        return -1;
    }
 
    cl_device_id device;
    status = clGetDeviceIDs(platform, CL_DEVICE_TYPE_ACCELERATOR, 1, &device, NULL);
    check_error(status, "clGetDeviceIDs");
 
    cl_context context = clCreateContext(NULL, 1, &device, NULL, NULL, &status);
    check_error(status, "clCreateContext");
 
    // ── Colas OUT-OF-ORDER ────────────────────────────────────────────────────
    // Con CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE los comandos de distintos slots
    // pueden ejecutarse en paralelo. La serialización ahora la gestionamos
    // explícitamente mediante los eventos prev_map_in/out guardados en cada slot.
    const cl_queue_properties props[] = {CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE, 0};
    queue_read  = clCreateCommandQueueWithProperties(context, device, props, &status);
    queue_conv  = clCreateCommandQueueWithProperties(context, device, props, &status);
    queue_conv2 = clCreateCommandQueueWithProperties(context, device, props, &status);
    queue_conv3 = clCreateCommandQueueWithProperties(context, device, props, &status);
    queue_write = clCreateCommandQueueWithProperties(context, device, props, &status);
    check_error(status, "clCreateCommandQueue");
 
    std::cout << "Cargando archivo binario .aocx..." << std::endl;
    std::vector<unsigned char> program_buffer = read_binary_file(AOCX_PATH);
    size_t          program_size       = program_buffer.size();
    const unsigned char* program_ptr   = program_buffer.data();
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
 
    // ── Buffers de pesos (sin cambios) ────────────────────────────────────────
    buffer_weights   = clCreateBuffer(context, CL_MEM_READ_ONLY, sizeof(conv1_weights), NULL, &status); check_error(status, "clCreateBuffer(buffer_weights)");
    buffer_bias      = clCreateBuffer(context, CL_MEM_READ_ONLY, sizeof(conv1_bias),    NULL, &status); check_error(status, "clCreateBuffer(buffer_bias)");
    buffer_weights_2 = clCreateBuffer(context, CL_MEM_READ_ONLY, sizeof(conv2_weights), NULL, &status); check_error(status, "clCreateBuffer(buffer_weights_2)");
    buffer_bias_2    = clCreateBuffer(context, CL_MEM_READ_ONLY, sizeof(conv2_bias),    NULL, &status); check_error(status, "clCreateBuffer(buffer_bias_2)");
    buffer_weights_3 = clCreateBuffer(context, CL_MEM_READ_ONLY, sizeof(conv3_weights), NULL, &status); check_error(status, "clCreateBuffer(buffer_weights_3)");
    buffer_bias_3    = clCreateBuffer(context, CL_MEM_READ_ONLY, sizeof(conv3_bias),    NULL, &status); check_error(status, "clCreateBuffer(buffer_bias_3)");
 
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
 
        // Map síncrono inicial para obtener punteros válidos para la CPU.
        // Capturamos los eventos aunque la operación ya esté completa: los
        // usaremos como dependencia del primer Unmap de cada slot.
        slots[i].host_input_buffer = (uint8_t*)clEnqueueMapBuffer(
            queue_read, slots[i].cl_buffer_input, CL_TRUE, CL_MAP_WRITE,
            0, input_bytes, 0, NULL, &slots[i].prev_map_in_event, &status);
        check_error(status, "clEnqueueMapBuffer(init input)");
 
        slots[i].host_output_buffer = (uint8_t*)clEnqueueMapBuffer(
            queue_write, slots[i].cl_buffer_output, CL_TRUE, CL_MAP_READ,
            0, output_bytes, 0, NULL, &slots[i].prev_map_out_event, &status);
        check_error(status, "clEnqueueMapBuffer(init output)");
    }
 
    // ── Fotograma inicial: pre-procesar slot 0 y lanzar la FPGA ──────────────
    int current = 0;
    int next    = 1;
 
    cap >> slots[current].display_frame;
    preprocess(slots[current].display_frame, slots[current].host_input_buffer,
               input_width, input_height);
 
    // Unmap: cedemos el control al DMA de la FPGA.
    // Dependemos del Map inicial para no correr antes de que sea válido.
    cl_event unmap_in_init, unmap_out_init;
    clEnqueueUnmapMemObject(queue_read,  slots[current].cl_buffer_input,
                             slots[current].host_input_buffer,
                             1, &slots[current].prev_map_in_event,  &unmap_in_init);
    clEnqueueUnmapMemObject(queue_write, slots[current].cl_buffer_output,
                             slots[current].host_output_buffer,
                             1, &slots[current].prev_map_out_event, &unmap_out_init);
 
    clReleaseEvent(slots[current].prev_map_in_event);
    clReleaseEvent(slots[current].prev_map_out_event);
 
    MapEvents init_evs = opencl_execution(
        slots[current].cl_buffer_input,  slots[current].cl_buffer_output,
        unmap_in_init, unmap_out_init,
        input_bytes, output_bytes,
        &slots[current].host_input_buffer,
        &slots[current].host_output_buffer);
 
    // Guardamos los nuevos eventos de Map en el slot
    slots[current].prev_map_in_event  = init_evs.map_in;
    slots[current].prev_map_out_event = init_evs.map_out;
 
    clReleaseEvent(unmap_in_init);
    clReleaseEvent(unmap_out_init);
 
    // ── Bucle principal PING-PONG ─────────────────────────────────────────────
    //
    // En cada iteración:
    //   1. Capturamos y pre-procesamos el slot 'next'  → CPU activa
    //   2. Lanzamos la FPGA para 'next'               → FPGA activa sobre next
    //   3. Esperamos a que la FPGA termine 'current'  → solapamiento (1+2) ∥ FPGA[current]
    //   4. ONNX + postprocess sobre 'current'
    //   5. Swap current ↔ next
    //
    auto start = std::chrono::high_resolution_clock::now();
    int  frame_count = 0;
    std::cout << "Iniciando bucle PING-PONG out-of-order..." << std::endl;
 
    while (true) {
 
        // ── 1. Captura y pre-proceso del slot 'next' ─────────────────────────
        cap >> slots[next].display_frame;
        if (slots[next].display_frame.empty()) break;
 
        // Zero-copy: escribe directo en la RAM mapeada de 'next'
        preprocess(slots[next].display_frame, slots[next].host_input_buffer,
                   input_width, input_height);
 
        // ── 2. Unmap de 'next': ceder el control a la FPGA ───────────────────
        // La dependencia sobre prev_map_in/out garantiza que la CPU ya terminó
        // de escribir y que el Map anterior del mismo slot está completo.
        cl_event unmap_in_next, unmap_out_next;
        clEnqueueUnmapMemObject(queue_read,  slots[next].cl_buffer_input,
                                 slots[next].host_input_buffer,
                                 1, &slots[next].prev_map_in_event,  &unmap_in_next);
        clEnqueueUnmapMemObject(queue_write, slots[next].cl_buffer_output,
                                 slots[next].host_output_buffer,
                                 1, &slots[next].prev_map_out_event, &unmap_out_next);
 
        clReleaseEvent(slots[next].prev_map_in_event);
        clReleaseEvent(slots[next].prev_map_out_event);
 
        // ── 3. Lanzar pipeline FPGA para 'next' ──────────────────────────────
        // Esto retorna inmediatamente (asíncrono). La FPGA trabaja en 'next'
        // mientras la CPU espera/procesa 'current' → solapamiento real.
        MapEvents next_evs = opencl_execution(
            slots[next].cl_buffer_input,  slots[next].cl_buffer_output,
            unmap_in_next, unmap_out_next,
            input_bytes, output_bytes,
            &slots[next].host_input_buffer,
            &slots[next].host_output_buffer);
 
        slots[next].prev_map_in_event  = next_evs.map_in;
        slots[next].prev_map_out_event = next_evs.map_out;
 
        clReleaseEvent(unmap_in_next);
        clReleaseEvent(unmap_out_next);
 
        // ── 4. Esperar a que la FPGA termine 'current' ───────────────────────
        // Esperamos al Map del output de 'current': cuando esté completo,
        // host_output_buffer apunta a datos válidos y listos para ONNX.
        auto t_fpga_start = std::chrono::high_resolution_clock::now();
        status = clWaitForEvents(1, &slots[current].prev_map_out_event);
        check_error(status, "clWaitForEvents(map_out current)");
        auto t_fpga_end = std::chrono::high_resolution_clock::now();
 
        frame_count++;
 
        // ── 5. ONNX sobre los datos de 'current' ─────────────────────────────
        auto t_onnx_start = std::chrono::high_resolution_clock::now();
 
        Ort::Value input_tensor = Ort::Value::CreateTensor<uint8_t>(
            memory_info,
            slots[current].host_output_buffer,  // puntero a RAM compartida (zero-copy)
            output_bytes,
            std::vector<int64_t>{1, 32, 120, 160}.data(),
            4);
 
        auto output_tensors = session.Run(Ort::RunOptions{nullptr},
                                          &input_name, &input_tensor, 1,
                                          output_names, 2);
 
        auto t_onnx_end = std::chrono::high_resolution_clock::now();
 
        // ── 6. Post-proceso ───────────────────────────────────────────────────
        auto t_post_start = std::chrono::high_resolution_clock::now();
 
        float* conf_ptr = output_tensors[0].GetTensorMutableData<float>();
        float* loc_ptr  = output_tensors[1].GetTensorMutableData<float>();
 
        size_t num_boxes = priors.size();
        std::vector<std::array<float, 2>> conf(num_boxes);
        std::vector<std::array<float, 4>> loc(num_boxes);
        for (size_t i = 0; i < num_boxes; ++i) {
            conf[i][0] = conf_ptr[i * 2 + 0]; conf[i][1] = conf_ptr[i * 2 + 1];
            loc[i][0]  = loc_ptr[i * 4 + 0];  loc[i][1]  = loc_ptr[i * 4 + 1];
            loc[i][2]  = loc_ptr[i * 4 + 2];  loc[i][3]  = loc_ptr[i * 4 + 3];
        }
 
        std::vector<Box>   boxes = decode_boxes(loc, priors);
        std::vector<float> scores(num_boxes);
        for (size_t i = 0; i < num_boxes; ++i) scores[i] = conf[i][1];
        std::vector<int>   keep  = non_max_suppression(boxes, scores, 0.3f, 0.6f);
 
        auto t_post_end = std::chrono::high_resolution_clock::now();
 
        // ── Profiling cada 100 frames ─────────────────────────────────────────
        if (frame_count % 100 == 99) {
            std::chrono::duration<double, std::milli> T_fpga = t_fpga_end - t_fpga_start;
            std::chrono::duration<double, std::milli> T_onnx = t_onnx_end - t_onnx_start;
            std::chrono::duration<double, std::milli> T_post = t_post_end - t_post_start;
            std::cout << "\n--- PROFILING (ms) ---" << std::endl;
            std::cout << "Espera FPGA (map_out):  " << T_fpga.count() << " ms" << std::endl;
            std::cout << "ONNX (session.Run):     " << T_onnx.count() << " ms" << std::endl;
            std::cout << "POST (Decode+NMS):      " << T_post.count() << " ms" << std::endl;
            std::cout << "Si 'Espera FPGA' >> ONNX+POST el cuello de botella sigue siendo la FPGA." << std::endl;
            std::cout << "------------------------\n" << std::endl;
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
                          cv::Scalar(0, 255, 0), 2);
            cv::putText(frame_to_display, cv::format("%.2f", scores[idx]),
                        cv::Point(xmin, ymin - 5),
                        cv::FONT_HERSHEY_SIMPLEX, 0.5, cv::Scalar(0, 255, 0), 1);
        }
 
        auto end = std::chrono::high_resolution_clock::now();
        std::chrono::duration<double> diff = end - start;
        double fps = (diff.count() > 0) ? (1.0 / diff.count()) : 0.0;
        start = std::chrono::high_resolution_clock::now();
 
        cv::putText(frame_to_display, cv::format("FPS: %.2f", fps),
                    cv::Point(10, 20), cv::FONT_HERSHEY_SIMPLEX, 0.5,
                    cv::Scalar(0, 0, 255), 2);
 
        cv::imshow("Ultra Light Face Detector", frame_to_display);
        if (cv::waitKey(1) == 27) break;
 
        // ── Swap ping-pong ────────────────────────────────────────────────────
        current = 1 - current;
        next    = 1 - next;
    }
 
    // ── Cleanup ───────────────────────────────────────────────────────────────
    std::cout << "Deteniendo y liberando memoria compartida..." << std::endl;
 
    cap.release();
    cv::destroyAllWindows();
 
    clFinish(queue_read);
    clFinish(queue_conv);
    clFinish(queue_conv2);
    clFinish(queue_conv3);
    clFinish(queue_write);
 
    for (int i = 0; i < 2; ++i) {
        // Liberamos los eventos pendientes antes de hacer Unmap
        clReleaseEvent(slots[i].prev_map_in_event);
        clReleaseEvent(slots[i].prev_map_out_event);
 
        clEnqueueUnmapMemObject(queue_read,  slots[i].cl_buffer_input,
                                 slots[i].host_input_buffer,  0, NULL, NULL);
        clEnqueueUnmapMemObject(queue_write, slots[i].cl_buffer_output,
                                 slots[i].host_output_buffer, 0, NULL, NULL);
 
        clFinish(queue_read);
        clFinish(queue_write);
 
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
 
    clReleaseCommandQueue(queue_read);  clReleaseCommandQueue(queue_conv);
    clReleaseCommandQueue(queue_conv2); clReleaseCommandQueue(queue_conv3);
    clReleaseCommandQueue(queue_write);
 
    clReleaseContext(context);
    delete env;
 
    return 0;
}