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






int main(int argc, char const *argv[])
{
    cl_int err;

    // Dimensiones de la imagen 
    int width = 1280;
    int height = 720;
    int image_size_bytes = width * height * sizeof(unsigned char);

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
    cl_platform_id platform;
    cl_device_id device;
    clGetPlatformIDs(1, &platform, NULL); 
    clGetDeviceIDs(platform, CL_DEVICE_TYPE_ACCELERATOR, 1, &device, NULL);
    cl_context context = clCreateContext(NULL, 1, &device, NULL, NULL, &err);
    cl_command_queue queue = clCreateCommandQueue(context, device, 0, &err);

    // Cargar del  binario .aocx
    std::vector<unsigned char> binary_data = load_aocx_file("sobel_filter.aocx");
    const unsigned char* binary_ptr = binary_data.data();
    size_t binary_length = binary_data.size();

    cl_program program = clCreateProgramWithBinary(context, 1, &device, &binary_length, &binary_ptr, NULL, &err);
    clBuildProgram(program, 1, &device, NULL, NULL, NULL);
    cl_kernel kernel = clCreateKernel(program, "sobel_fpga", &err);

    // Crear Búferes en la memoria de la FPGA
    cl_mem d_input = clCreateBuffer(context, CL_MEM_READ_ONLY, image_size_bytes, NULL, &err);
    cl_mem d_output = clCreateBuffer(context, CL_MEM_WRITE_ONLY, image_size_bytes, NULL, &err);


    // Asignar argumentos estáticos (los búferes y dimensiones no cambian en el bucle)
    clSetKernelArg(kernel, 0, sizeof(cl_mem), &d_input);
    clSetKernelArg(kernel, 1, sizeof(cl_mem), &d_output);
    clSetKernelArg(kernel, 2, sizeof(int), &width);
    clSetKernelArg(kernel, 3, sizeof(int), &height);

    // Matrices de OpenCV para procesar los fotogramas
    cv::Mat frame, gray_frame;
    cv::Mat output_frame(height, width, CV_8UC1); // Matriz para recibir el resultado en escala de grises 8 bits

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


        // B. Convertir a escala de grises (1 solo canal, 8 bits por píxel)
        cv::cvtColor(frame, gray_frame, cv::COLOR_BGR2GRAY);

        // C. Enviar el fotograma a la memoria de la FPGA (PCIe Transfer)
        clEnqueueWriteBuffer(queue, d_input, CL_TRUE, 0, image_size_bytes, gray_frame.data, 0, NULL, NULL);

        // D. Ejecutar el Kernel en la FPGA
        clEnqueueTask(queue, kernel, 0, NULL, NULL);

        // E. Leer el fotograma procesado desde la FPGA a la RAM del Host
        clEnqueueReadBuffer(queue, d_output, CL_TRUE, 0, image_size_bytes   , output_frame.data, 0, NULL, NULL);

        // Detener el temporizador y calcular el tiempo transcurrido
        // FPS
        auto end = std::chrono::high_resolution_clock::now();
        std::chrono::duration<double> diff = end - start;
        double fps = 0.0;
        if (diff.count() > 0) {
             fps = 1 / diff.count();
        }
		
		start = std::chrono::high_resolution_clock::now();
        
        
        cv::putText(output_frame, 
            cv::format("FPS: %.2f", fps), 
            cv::Point(20, 30),           // Un poco más de margen para que no choque con el borde
            cv::FONT_HERSHEY_SIMPLEX, 
            0.7,                         // Escala 0.7 es el "punto dulce" de legibilidad
            cv::Scalar(255, 255, 255),       // Blanco
            1);                          // Grosor 1 (con 0.7 de escala, 2 es demasiado grueso)

        // F. Mostrar el resultado en pantalla
        cv::imshow("Sobel Filter - Intel FPGA", output_frame);

        // Salir si se presiona 'q'
        if (cv::waitKey(1) == 'q') {
            break;
        }
    }   
    return 0;
}
