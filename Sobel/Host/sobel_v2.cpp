#include <CL/cl.h>
#include <iostream>
#include <fstream>
#include <vector>
#include <chrono>
#include <opencv2/opencv.hpp>



const char* kernel_file = "sobel_filter.aocx";

std::vector<unsigned char> load_aocx_file(const char* filename) {
    {
        std::ifstream file(filename, std::ios::binary | std::ios::ate); 
        if (!file.is_open()) {
            throw std::runtime_error("Error al abrir el fichero: " + std::string(filename));
        }
        std::streamsize size = file.tellg();
        file.seekg(0, std::ios::beg);
        std::vector<unsigned char> buffer(size);
        if (!file.read((char*)buffer.data(),size))
        {
            throw std::runtime_error("Error al leer el fichero: " + std::string(filename));
        }
        return buffer;
    }
}

// Función auxiliar para calcular el tiempo en milisegundos usando eventos
double get_execution_time(cl_event event) {
    cl_ulong start, end;
    clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_START, sizeof(cl_ulong), &start, NULL);
    clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_END, sizeof(cl_ulong), &end, NULL);
    // OpenCL devuelve nanosegundos, lo dividimos por 1,000,000 para obtener milisegundos
    return (double)(end - start) / 1000000.0;
}


int main(int argc, char const *argv[])
{
    cl_int err;

    // Dimensiones de la imagen 
    int width = 1280;
    int height = 720;
    size_t image_size_bytes = width * height * sizeof(unsigned char);

    // Cargar la imagen de entrada
    cv::VideoCapture cap(0); // Abrir la cámara 
    if (!cap.isOpened()) {
        std::cerr << "Error al abrir la cámara" << std::endl;
        return -1;
    }

    // Setear las dimensiones de la imagen
    cap.set(cv::CAP_PROP_FRAME_WIDTH, width);
    cap.set(cv::CAP_PROP_FRAME_HEIGHT, height);
    
    std::cout << "Cámara iniciada a " << width << "x" << height << std::endl;

    // Inicializar OpenCL y la FPGA 
    cl_platform_id platform; cl_device_id device;
    clGetPlatformIDs(1, &platform, NULL); 
    clGetDeviceIDs(platform, CL_DEVICE_TYPE_ACCELERATOR, 1, &device, NULL);
    cl_context context = clCreateContext(NULL, 1, &device, NULL, NULL, &err);
    // Se ha agregado CL_QUEUE_PROFILING_ENABLE para habilitar la medición de tiempo con eventos
    cl_command_queue queue = clCreateCommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE, &err);

    // Cargar del  binario .aocx
    std::vector<unsigned char> binary_data = load_aocx_file("sobel_filter.aocx");
    const unsigned char* binary_ptr = binary_data.data();
    size_t binary_length = binary_data.size();

    cl_program program = clCreateProgramWithBinary(context, 1, &device, &binary_length, &binary_ptr, NULL, &err);
    clBuildProgram(program, 1, &device, NULL, NULL, NULL);
    cl_kernel kernel = clCreateKernel(program, "sobel_fpga", &err);

    // Configurar el Double Buffering (Ping-Pong)
    unsigned char* h_in[2];
    unsigned char* h_out[2];
    cl_mem d_in[2], d_out[2];
    cl_event write_ev[2], kernel_ev[2], read_ev[2];

    for (int i = 0; i < 2; ++i) {
        h_in[i]  = new unsigned char[image_size_bytes];
        h_out[i] = new unsigned char[image_size_bytes];
        d_in[i]  = clCreateBuffer(context, CL_MEM_READ_ONLY, image_size_bytes, NULL, &err);
        d_out[i] = clCreateBuffer(context, CL_MEM_WRITE_ONLY, image_size_bytes, NULL, &err);
    }

    int current = 0;
    int next = 1;

    // Matrices de OpenCV para procesar los fotogramas
    cv::Mat frame, gray_frame;
    
    // Pre-carga del primer fotograma (current)
    cap >> frame;
    cv::cvtColor(frame, gray_frame, cv::COLOR_BGR2GRAY);
    memcpy(h_in[current], gray_frame.data, image_size_bytes);

    // Asignar argumentos estáticos (los búferes y dimensiones no cambian en el bucle)
    clEnqueueWriteBuffer(queue, d_in[current], CL_FALSE, 0, image_size_bytes, h_in[current], 0, NULL, &write_ev[current]);
    clSetKernelArg(kernel, 0, sizeof(cl_mem), &d_in[current]);
    clSetKernelArg(kernel, 1, sizeof(cl_mem), &d_out[current]);
    clSetKernelArg(kernel, 2, sizeof(int), &width);
    clSetKernelArg(kernel, 3, sizeof(int), &height);

    // Lanzar Kernel esperando a que termine la escritura
    clEnqueueTask(queue, kernel, 1, &write_ev[current], &kernel_ev[current]);

    // Leer resultado esperando a que termine el Kernel
    clEnqueueReadBuffer(queue, d_out[current], CL_FALSE, 0, image_size_bytes, h_out[current], 1, &kernel_ev[current], &read_ev[current]);


    std::cout << "Presiona 'q' en la ventana de video para salir." << std::endl;

    // Configuramos un temporizador para medir el rendimiento   
    auto start = std::chrono::high_resolution_clock::now();

    // Bucle principal de captura y procesamiento
    while (true)
    {
        // A. Capturar un  fotograma
        cap >> frame;
        if (frame.empty()) {
            std::cout << "Error: Frame is empty" << std::endl;
            return -1;
        } 
        // Convertir a escala de grises (1 solo canal, 8 bits por píxel)
        cv::cvtColor(frame, gray_frame, cv::COLOR_BGR2GRAY);
        memcpy(h_in[next], gray_frame.data, image_size_bytes);

        // B. Encolar el trabajo para 'next' (Asíncrono)
        clEnqueueWriteBuffer(queue, d_in[next], CL_FALSE, 0, image_size_bytes, h_in[next], 0, NULL, &write_ev[next]);

        clSetKernelArg(kernel, 0, sizeof(cl_mem), &d_in[next]);
        clSetKernelArg(kernel, 1, sizeof(cl_mem), &d_out[next]);
       

        clEnqueueTask(queue, kernel, 1, &write_ev[next], &kernel_ev[next]);
        clEnqueueReadBuffer(queue, d_out[next], CL_FALSE, 0, image_size_bytes, h_out[next], 1, &kernel_ev[next], &read_ev[next]);

        // C. Esperar a que el fotograma 'current' ESTÉ LISTO
        clWaitForEvents(1, &read_ev[current]);

        /*
        // D. Medir e imprimir los tiempos exactos
        double write_time = get_execution_time(write_ev[current]);
        double kernel_time = get_execution_time(kernel_ev[current]);
        double read_time = get_execution_time(read_ev[current]);
        double total_fpga_time = write_time + kernel_time + read_time;

        std::cout << "Fotograma listo! Tiempos (ms): " 
                  << "PCIe Tx: " << write_time 
                  << " | FPGA Sobel: " << kernel_time 
                  << " | PCIe Rx: " << read_time 
                  << " | Total: " << total_fpga_time << " ms" << std::endl;
        */

        // Detener el temporizador y calcular el tiempo transcurrido
        // FPS
        auto end = std::chrono::high_resolution_clock::now();
        std::chrono::duration<double> diff = end - start;
        double fps = 0.0;
        if (diff.count() > 0) {
             fps = 1 / diff.count();
        }
		
		start = std::chrono::high_resolution_clock::now();
        
        // E. Mostrar en pantalla
        cv::Mat output_frame(height, width, CV_8UC1, h_out[current]);
        cv::putText(output_frame, 
            cv::format("FPS: %.2f", fps), 
            cv::Point(20, 30),           // Un poco más de margen para que no choque con el borde
            cv::FONT_HERSHEY_SIMPLEX, 
            0.7,                         // Escala 0.7 es el "punto dulce" de legibilidad
            cv::Scalar(255, 255, 255),       // Blanco
            1);                          // Grosor 1 (con 0.7 de escala, 2 es demasiado grueso)
        cv::imshow("Sobel Filter - Intel FPGA", output_frame);
        
        // F. Liberar eventos antiguos para evitar fugas de memoria
        clReleaseEvent(write_ev[current]);
        clReleaseEvent(kernel_ev[current]);
        clReleaseEvent(read_ev[current]);

        // G. Ping-Pong: Intercambiar índices
        current = 1 - current;
        next = 1 - next;

        // Salir si se presiona 'q'
        if (cv::waitKey(1) == 'q') break;
    }   

    // LIMPIEZA FINAL DE RECURSOS

    std::cout << "Cerrando aplicación y liberando memoria..." << std::endl;

    // Liberar la cámara y ventanas de OpenCV
    cap.release();
    cv::destroyAllWindows();

    // Asegurarnos de que la FPGA haya terminado cualquier trabajo pendiente
    // Esto es muy importante en código asíncrono antes de borrar la memoria
    clFinish(queue); 

    // Liberar los búferes dobles (Ping-Pong) usando un bucle
    for (int i = 0; i < 2; ++i) {
        // Liberar memoria en la DDR de la FPGA (Device)
        if (d_in[i])  clReleaseMemObject(d_in[i]);
        if (d_out[i]) clReleaseMemObject(d_out[i]);

        // Liberar memoria en la RAM del PC (Host)
        if (h_in[i])  delete[] h_in[i];
        if (h_out[i]) delete[] h_out[i];
    }

    // Liberar los objetos principales de OpenCL en orden inverso a su creación
    if (kernel)  clReleaseKernel(kernel);
    if (program) clReleaseProgram(program);
    if (queue)   clReleaseCommandQueue(queue);
    if (context) clReleaseContext(context);

    std::cout << "¡Limpieza completada con éxito. Programa terminado!" << std::endl;
    return 0;
}
