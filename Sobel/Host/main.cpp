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
    
    // Cola out-of-order para permitir el asincronismo entre host y FPGA
        cl_command_queue_properties props = /*   |*/ CL_QUEUE_PROFILING_ENABLE; // Habilitar profiling para medir tiempos
    cl_command_queue queue = clCreateCommandQueue(context, device, props, &err);

    // Cargar del  binario .aocx
    std::vector<unsigned char> binary_data = load_aocx_file("sobel_filter.aocx");
    const unsigned char* binary_ptr = binary_data.data();
    size_t binary_length = binary_data.size();

    cl_program program = clCreateProgramWithBinary(context, 1, &device, &binary_length, &binary_ptr, NULL, &err);
    clBuildProgram(program, 1, &device, NULL, NULL, NULL);
    cl_kernel kernel = clCreateKernel(program, "sobel_fpga", &err);

    // Creacion de memoria compartida y Ping Pong buffers
    cl_mem d_in[2], d_out[2];
    unsigned char *h_in[2], *h_out[2];
    cv::Mat mat_in[2], mat_out[2];
    cl_event kernel_ev[2], map_out_ev[2], map_in_ev[2];

    for (int i = 0; i < 2; ++i) {
        // Se reservar memoria física compartida en RAM (CL_MEM_ALLOC_HOST_PTR)
        d_in[i]  = clCreateBuffer(context, CL_MEM_ALLOC_HOST_PTR, image_size_bytes, NULL, &err);
        d_out[i] = clCreateBuffer(context, CL_MEM_ALLOC_HOST_PTR, image_size_bytes, NULL, &err);

        // Mapeo inicial para obtener los punteros de la CPU (Bloqueante CL_TRUE)
        h_in[i]  = (unsigned char*)clEnqueueMapBuffer(queue, d_in[i], CL_TRUE, CL_MAP_WRITE | CL_MAP_READ, 0, image_size_bytes, 0, NULL, NULL, &err);
        h_out[i] = (unsigned char*)clEnqueueMapBuffer(queue, d_out[i], CL_TRUE, CL_MAP_READ | CL_MAP_WRITE, 0, image_size_bytes, 0, NULL, NULL, &err);

        //  Se inicializa los frames con los punteros a los datos con OpenCV
        mat_in[i]  = cv::Mat(height, width, CV_8UC1, h_in[i]);
        mat_out[i] = cv::Mat(height, width, CV_8UC1, h_out[i]);
    }

    int current = 0;
    int next = 1;

    cv::Mat frame;
    
    // Pre-carga del primer fotograma (current)
    cap >> frame;
    cv::cvtColor(frame, mat_in[current], cv::COLOR_BGR2GRAY); // CPU escribe directo en la RAM compartida

    // Soltar control de la CPU (Vacía la caché)
    clEnqueueUnmapMemObject(queue, d_in[current], h_in[current], 0, NULL, NULL);
    clEnqueueUnmapMemObject(queue, d_out[current], h_out[current], 0, NULL, NULL);

    // Asignar argumentos estáticos (los búferes y dimensiones no cambian en el bucle)
    clSetKernelArg(kernel, 0, sizeof(cl_mem), &d_in[current]);
    clSetKernelArg(kernel, 1, sizeof(cl_mem), &d_out[current]);
    clSetKernelArg(kernel, 2, sizeof(int), &width);
    clSetKernelArg(kernel, 3, sizeof(int), &height);

    // Lanzar Kernel para el primer fotograma (current)
    clEnqueueTask(queue, kernel, 0, NULL, &kernel_ev[current]);;

    // Solicitar recuperar el control (Asíncrono CL_FALSE) esperando a que acabe el kernel
    clEnqueueMapBuffer(queue, d_out[current], CL_FALSE, CL_MAP_READ, 0, image_size_bytes, 1, &kernel_ev[current], &map_out_ev[current], &err);
    clEnqueueMapBuffer(queue, d_in[current], CL_FALSE, CL_MAP_WRITE, 0, image_size_bytes, 1, &kernel_ev[current], &map_in_ev[current], &err);


    std::cout << "Iniciando bucle Ping-Pong" << std::endl;

    // Configuramos un temporizador para medir el rendimiento   
    auto start = std::chrono::high_resolution_clock::now();

    // Bucle principal de captura y procesamiento
    while (true)
    {
        // A. Capturar el fotograma 'next'
        cap >> frame;
        if (frame.empty()) {
            std::cout << "Error: Frame is empty" << std::endl;
            return -1;
        } 
        cv::cvtColor(frame, mat_in[next], cv::COLOR_BGR2GRAY); // CPU escribe directo en la RAM compartida

        // B. Soltar control de 'next' (Unmap asíncrono)
        cl_event unmap_in_ev, unmap_out_ev;
        clEnqueueUnmapMemObject(queue, d_in[next], h_in[next], 0, NULL, &unmap_in_ev);
        clEnqueueUnmapMemObject(queue, d_out[next], h_out[next], 0, NULL, &unmap_out_ev);

        // C. Ejecutar Kernel 'next' (Esperando a que los Unmaps terminen)

        // Reasignar argumentos del kernel para el nuevo fotograma 'next'
        cl_event unmap_events[2] = {unmap_in_ev, unmap_out_ev};
        clSetKernelArg(kernel, 0, sizeof(cl_mem), &d_in[next]);
        clSetKernelArg(kernel, 1, sizeof(cl_mem), &d_out[next]);
        clSetKernelArg(kernel, 2, sizeof(int), &width);
        clSetKernelArg(kernel, 3, sizeof(int), &height);

        // Lanzar kernel
        clEnqueueTask(queue, kernel, 2, unmap_events, &kernel_ev[next]);

        // D. Solicitar recuperar el control de 'next' (Map asíncrono)
        clEnqueueMapBuffer(queue, d_out[next], CL_FALSE, CL_MAP_READ, 0, image_size_bytes, 1, &kernel_ev[next], &map_out_ev[next], &err);
        clEnqueueMapBuffer(queue, d_in[next], CL_FALSE, CL_MAP_WRITE, 0, image_size_bytes, 1, &kernel_ev[next], &map_in_ev[next], &err);

        // E. EL ÚNICO BLOQUEO: Esperar a que la CPU recupere el control de 'current'
        clWaitForEvents(1, &map_out_ev[current]);

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
        std::cout << "Fotograma listo! FPS: " << fps << std::endl;

        // F. Mostrar el resultado (Cero copias, imshow lee la memoria compartida)
        cv::imshow("Sobel Compartido FPGA", mat_out[current]);

        // G. Liberar eventos para no llenar la memoria RAM
        clReleaseEvent(unmap_in_ev);
        clReleaseEvent(unmap_out_ev);
        clReleaseEvent(kernel_ev[current]);
        clReleaseEvent(map_out_ev[current]);
        clReleaseEvent(map_in_ev[current]);

        // H. Ping-Pong: Intercambiar índices
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
    
    clFinish(queue);

    for (int i = 0; i < 2; ++i) {
        // Antes de liberar la memoria, debemos soltar el mapeo
        clEnqueueUnmapMemObject(queue, d_in[i], h_in[i], 0, NULL, NULL);
        clEnqueueUnmapMemObject(queue, d_out[i], h_out[i], 0, NULL, NULL);
        clReleaseMemObject(d_in[i]);
        clReleaseMemObject(d_out[i]);
    }
    
    clReleaseKernel(kernel);
    clReleaseProgram(program);
    clReleaseCommandQueue(queue);
    clReleaseContext(context);

    std::cout << "¡Limpieza completada con éxito. Programa terminado!" << std::endl;
    return 0;
}
