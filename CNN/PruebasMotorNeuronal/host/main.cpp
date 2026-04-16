#include <iostream>
#include <vector>
#include <fstream>
#include <cmath>
#include <algorithm>
#include <CL/cl.h>
#include <opencv2/opencv.hpp>
#include <opencv2/dnn.hpp>
#include "network_schedule.h"

// ========================================================================
// CONSTANTES Y ESTRUCTURAS
// ========================================================================
#define MAX_DDR_BUFFER_SIZE (32 * 1024 * 1024) // 32MB para Ping-Pong 
#define CPU_OUT_SIZE (600 * 1024)              // Tamaño para salidas finales
#define TILE_OUT_C 16                          // Tamaño de Tiling hardware

struct FpgaOutput {
    int w, h, valid_channels;
    int y_zero;
    float y_scale;
    std::vector<float> data_float;
};

// ========================================================================
// VARIABLES GLOBALES DE OPENCL
// ========================================================================
cl_platform_id platform;
cl_device_id device;
cl_context context;
cl_command_queue queue_read, queue_conv, queue_write;
cl_program program;
cl_kernel kernel_read, kernel_conv, kernel_write;

cl_mem d_weights, d_bias;
cl_mem d_buf_0, d_buf_1, d_buf_out;

// ========================================================================
// FUNCIONES AUXILIARES
// ========================================================================
std::vector<unsigned char> load_binary_file(const std::string& filename) {
    std::ifstream file(filename, std::ios::binary | std::ios::ate);
    if (!file.is_open()) throw std::runtime_error("❌ No se pudo abrir " + filename);
    size_t size = file.tellg();
    file.seekg(0, std::ios::beg);
    std::vector<unsigned char> buffer(size);
    file.read((char*)buffer.data(), size);
    return buffer;
}

// ========================================================================
// INICIALIZACIÓN DE OPENCL (FPGA)
// ========================================================================
void init_opencl_and_engine(unsigned char* w_data, int* b_data, size_t w_size, size_t b_size) {
    cl_int err;

    clGetPlatformIDs(1, &platform, NULL);
    clGetDeviceIDs(platform, CL_DEVICE_TYPE_ALL, 1, &device, NULL);
    context = clCreateContext(NULL, 1, &device, NULL, NULL, &err);

    queue_read  = clCreateCommandQueue(context, device, 0, &err);
    queue_conv  = clCreateCommandQueue(context, device, 0, &err);
    queue_write = clCreateCommandQueue(context, device, 0, &err);

    std::vector<unsigned char> binary = load_binary_file("engineCNN.aocx");
    size_t binary_size = binary.size();
    const unsigned char* binary_data = binary.data();
    
    program = clCreateProgramWithBinary(context, 1, &device, &binary_size, &binary_data, NULL, &err);
    clBuildProgram(program, 0, NULL, NULL, NULL, NULL);

    kernel_read  = clCreateKernel(program, "mem_read_generic", &err);
    kernel_conv  = clCreateKernel(program, "conv_generic", &err);
    kernel_write = clCreateKernel(program, "mem_write_generic", &err);

    d_weights = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, w_size, w_data, &err);
    d_bias    = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, b_size, b_data, &err);
    
    d_buf_0   = clCreateBuffer(context, CL_MEM_READ_WRITE, MAX_DDR_BUFFER_SIZE, NULL, &err);
    d_buf_1   = clCreateBuffer(context, CL_MEM_READ_WRITE, MAX_DDR_BUFFER_SIZE, NULL, &err);
    d_buf_out = clCreateBuffer(context, CL_MEM_WRITE_ONLY, CPU_OUT_SIZE, NULL, &err);

    std::cout << "[HOST] Motor OpenCL y Tiling (" << TILE_OUT_C << ") Inicializados." << std::endl;
}

// ========================================================================
// BUCLE DE INFERENCIA EN HARDWARE
// ========================================================================
void run_inference(unsigned char* input_data, size_t input_size, unsigned char* output_data) {
    clEnqueueWriteBuffer(queue_read, d_buf_0, CL_TRUE, 0, input_size, input_data, 0, NULL, NULL);

    for (int i = 0; i < TOTAL_LAYERS; i++) {
        ConvLayerDesc layer = network_schedule[i];

        cl_mem mem_in  = (layer.buf_in == 0) ? d_buf_0 : d_buf_1;
        cl_mem mem_out = (layer.buf_out == 0) ? d_buf_0 : ((layer.buf_out == 1) ? d_buf_1 : d_buf_out);

        for (int t = 0; t < layer.out_c; t += TILE_OUT_C) {
            int tile_channels = std::min(TILE_OUT_C, layer.out_c - t);

            // A. Argumentos Lectura
            clSetKernelArg(kernel_read, 0, sizeof(cl_mem), &mem_in);
            clSetKernelArg(kernel_read, 1, sizeof(int), &layer.in_offset);
            clSetKernelArg(kernel_read, 2, sizeof(int), &layer.w);
            clSetKernelArg(kernel_read, 3, sizeof(int), &layer.h);
            clSetKernelArg(kernel_read, 4, sizeof(int), &layer.in_c);
            clSetKernelArg(kernel_read, 5, sizeof(int), &layer.stride);
            clSetKernelArg(kernel_read, 6, sizeof(int), &layer.pad);
            clSetKernelArg(kernel_read, 7, sizeof(unsigned char), &layer.x_zero);

            // B. Argumentos Convolución
            int w_off_bytes = layer.w_offset + (t * 3 * 3 * layer.in_c);
            int b_off_bytes = layer.b_offset + (t * 4);
            int y_zero_int  = layer.y_zero;

            clSetKernelArg(kernel_conv, 0, sizeof(cl_mem), &d_weights);
            clSetKernelArg(kernel_conv, 1, sizeof(cl_mem), &d_bias);
            clSetKernelArg(kernel_conv, 2, sizeof(int), &w_off_bytes);
            clSetKernelArg(kernel_conv, 3, sizeof(int), &b_off_bytes);
            clSetKernelArg(kernel_conv, 4, sizeof(int), &layer.w);
            clSetKernelArg(kernel_conv, 5, sizeof(int), &layer.h);
            clSetKernelArg(kernel_conv, 6, sizeof(int), &layer.in_c);
            clSetKernelArg(kernel_conv, 7, sizeof(int), &tile_channels);
            clSetKernelArg(kernel_conv, 8, sizeof(int), &layer.stride);
            clSetKernelArg(kernel_conv, 9, sizeof(int), &layer.pad);
            clSetKernelArg(kernel_conv, 10, sizeof(unsigned char), &layer.x_zero);
            clSetKernelArg(kernel_conv, 11, sizeof(unsigned char), &layer.w_zero);
            clSetKernelArg(kernel_conv, 12, sizeof(int), &y_zero_int);
            clSetKernelArg(kernel_conv, 13, sizeof(int), &layer.M_multiplier);
            clSetKernelArg(kernel_conv, 14, sizeof(int), &layer.M_shift);

            // C. Argumentos Escritura
            clSetKernelArg(kernel_write, 0, sizeof(cl_mem), &mem_out);
            clSetKernelArg(kernel_write, 1, sizeof(int), &layer.out_offset);
            clSetKernelArg(kernel_write, 2, sizeof(int), &layer.w);
            clSetKernelArg(kernel_write, 3, sizeof(int), &layer.h);
            clSetKernelArg(kernel_write, 4, sizeof(int), &layer.out_c); 
            clSetKernelArg(kernel_write, 5, sizeof(int), &tile_channels);
            clSetKernelArg(kernel_write, 6, sizeof(int), &t); 
            clSetKernelArg(kernel_write, 7, sizeof(int), &layer.stride);
            clSetKernelArg(kernel_write, 8, sizeof(int), &layer.pad);

            clEnqueueTask(queue_read, kernel_read, 0, NULL, NULL);
            clEnqueueTask(queue_conv, kernel_conv, 0, NULL, NULL);
            clEnqueueTask(queue_write, kernel_write, 0, NULL, NULL);
            clFinish(queue_write);
        }
        std::cout << "\r[HOST] Procesando capa " << i+1 << "/" << TOTAL_LAYERS << std::flush;
    }
    std::cout << std::endl;

    clEnqueueReadBuffer(queue_write, d_buf_out, CL_TRUE, 0, CPU_OUT_SIZE, output_data, 0, NULL, NULL);
}

// ========================================================================
// POST-PROCESADO: DECODIFICACIÓN Y NMS
// ========================================================================
void post_process_and_draw(cv::Mat& image, unsigned char* cpu_buffer) {
    std::vector<FpgaOutput> all_outputs;

    for (int i = 0; i < TOTAL_LAYERS; i++) {
        ConvLayerDesc layer = network_schedule[i];
        if (layer.buf_out == 2) {
            int out_w = (layer.w + 2 * layer.pad - 3) / layer.stride + 1;
            int out_h = (layer.h + 2 * layer.pad - 3) / layer.stride + 1;
            FpgaOutput f_out;
            f_out.w = out_w; f_out.h = out_h; f_out.valid_channels = layer.out_c_orig;
            f_out.y_zero = layer.y_zero; f_out.y_scale = layer.y_scale;
            
            for (int y = 0; y < out_h; ++y) {
                for (int x = 0; x < out_w; ++x) {
                    for (int c = 0; c < f_out.valid_channels; ++c) {
                        // 🚨 USAMOS EL OFFSET EXACTO ASIGNADO POR PYTHON 🚨
                        int index = layer.out_offset + (y * out_w * layer.out_c) + (x * layer.out_c) + c;
                        f_out.data_float.push_back(((int)cpu_buffer[index] - layer.y_zero) * layer.y_scale);
                    }
                }
            }
            all_outputs.push_back(f_out);
        }
    }

    std::sort(all_outputs.begin(), all_outputs.end(), [](const FpgaOutput& a, const FpgaOutput& b) {
        return a.w > b.w; 
    });

    std::vector<FpgaOutput> confs, locs;
    for(auto& o : all_outputs) {
        if (o.valid_channels <= 6) confs.push_back(o);
        else locs.push_back(o);
    }

    std::vector<cv::Rect> bboxes;
    std::vector<float> scores;
    float SCORE_THRESHOLD = 0.50f; 
    float NMS_THRESHOLD = 0.40f;
    float global_max = 0.0f;

    std::vector<std::vector<int>> sizes = {{10, 16, 24}, {32, 48}, {64, 96}, {128, 192, 256}};
    std::vector<int> steps = {8, 16, 32, 64};

    for (size_t i = 0; i < confs.size() && i < locs.size(); i++) {
        int f_w = confs[i].w; int f_h = confs[i].h;
        int n_anchors = sizes[i].size();
        
        for (int y = 0; y < f_h; ++y) {
            for (int x = 0; x < f_w; ++x) {
                for (int a = 0; a < n_anchors; ++a) {
                    int p_idx = y * f_w + x;
                    int c_idx = (p_idx * n_anchors * 2) + (a * 2);
                    
                    float c_bg = confs[i].data_float[c_idx];       
                    float c_face = confs[i].data_float[c_idx + 1]; 
                    
                    float max_c = std::max(c_bg, c_face);
                    float prob = std::exp(c_face - max_c) / (std::exp(c_bg - max_c) + std::exp(c_face - max_c));

                    if (prob > global_max) global_max = prob;

                    if (prob > SCORE_THRESHOLD) {
                        int l_idx = (p_idx * n_anchors * 4) + (a * 4);
                        float dx = locs[i].data_float[l_idx + 0];
                        float dy = locs[i].data_float[l_idx + 1];
                        float dw = locs[i].data_float[l_idx + 2];
                        float dh = locs[i].data_float[l_idx + 3];

                        float p_cx = (x + 0.5f) * steps[i] / 320.0f;
                        float p_cy = (y + 0.5f) * steps[i] / 240.0f;
                        float p_w  = (float)sizes[i][a] / 320.0f;
                        float p_h  = (float)sizes[i][a] / 240.0f;

                        float r_cx = p_cx + dx * 0.1f * p_w;
                        float r_cy = p_cy + dy * 0.1f * p_h;
                        float r_w  = p_w * std::exp(dw * 0.2f);
                        float r_h  = p_h * std::exp(dh * 0.2f);

                        int x_min = (int)((r_cx - r_w/2) * image.cols);
                        int y_min = (int)((r_cy - r_h/2) * image.rows);
                        int x_max = (int)((r_cx + r_w/2) * image.cols);
                        int y_max = (int)((r_cy + r_h/2) * image.rows);
                        
                        x_min = std::max(0, x_min);
                        y_min = std::max(0, y_min);
                        x_max = std::min(image.cols, x_max);
                        y_max = std::min(image.rows, y_max);

                        int final_w = x_max - x_min;
                        int final_h = y_max - y_min;

                        if (final_w > 0 && final_h > 0) {
                            bboxes.push_back(cv::Rect(x_min, y_min, final_w, final_h));
                            scores.push_back(prob);
                        }
                    }
                }
            }
        }
    }

    std::cout << "\n[DEBUG] Confianza Maxima pura detectada: " << global_max * 100 << "%" << std::endl;
    
    std::vector<int> indices;
    cv::dnn::NMSBoxes(bboxes, scores, SCORE_THRESHOLD, NMS_THRESHOLD, indices);
    
    for (int idx : indices) {
        cv::rectangle(image, bboxes[idx], cv::Scalar(0, 255, 0), 2);
        std::cout << "✅ Cara detectada en: [" << bboxes[idx].width << " x " << bboxes[idx].height 
                  << " desde (" << bboxes[idx].x << ", " << bboxes[idx].y << ")] -> " 
                  << scores[idx] * 100 << "%" << std::endl;
    }
    cv::imwrite("resultado_final.jpg", image);
    std::cout << "📸 Imagen guardada como 'resultado_final.jpg'" << std::endl;
}

// ========================================================================
// MAIN: FLUJO PRINCIPAL
// ========================================================================
int main() {
    std::cout << "🚀 INICIANDO MOTOR FPGA INT8..." << std::endl;

    std::vector<unsigned char> rw = load_binary_file("weights.bin");
    std::vector<unsigned char> rb = load_binary_file("bias.bin");
    
    init_opencl_and_engine(rw.data(), (int*)rb.data(), rw.size(), rb.size());

    cv::Mat img = cv::imread("images.jpeg");
    if (img.empty()) {
        std::cerr << " Error: No se pudo cargar images.jpeg" << std::endl;
        return 1;
    }

    cv::Mat resized_img, rgb_img;
    cv::resize(img, resized_img, cv::Size(320, 240));
    cv::cvtColor(resized_img, rgb_img, cv::COLOR_BGR2RGB);

    unsigned char x_z = network_schedule[0].x_zero;
    std::vector<unsigned char> padded(320 * 240 * 16, x_z);

    // Empaquetado HWC de la imagen RGB pura
    for (int y = 0; y < 240; ++y) {
        for (int x = 0; x < 320; ++x) {
            cv::Vec3b p = rgb_img.at<cv::Vec3b>(y, x);
            int base = (y * 320 + x) * 16;
            padded[base + 0] = p[0]; 
            padded[base + 1] = p[1]; 
            padded[base + 2] = p[2]; 
        }
    }

    std::vector<unsigned char> out(CPU_OUT_SIZE, 0);
    run_inference(padded.data(), padded.size(), out.data());
    post_process_and_draw(img, out.data());

    std::cout << " Proceso Finalizado con Éxito." << std::endl;
    return 0;
}