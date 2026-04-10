// sobel_fpga.cl

// Definimos un ancho máximo para la imagen (ej. 1920 para 1080p).
// Las FPGA necesitan tamaños estáticos para instanciar la memoria en hardware.
#define MAX_COLS 1280

// El atributo max_global_work_dim(0) le dice al compilador de Intel 
// que este es un kernel de una sola tarea (Single Work-Item).
__attribute__((max_global_work_dim(0)))
__kernel void sobel_fpga(
    __global const unsigned char* restrict in_image,
    __global unsigned char* restrict out_image,
    int cols, 
    int rows) 
{
    // Búferes de línea almacenados en la memoria on-chip de la FPGA
    unsigned char line_buf0[MAX_COLS];
    unsigned char line_buf1[MAX_COLS];

    // Ventana de registro de desplazamiento de 3x3
    unsigned char window[3][3];

    // Bucle principal: recorremos todos los píxeles uno por uno.
    for (int y = 0; y < rows; ++y) {
        for (int x = 0; x < cols; ++x) {
            
            // 1. Desplazar la ventana 3x3 a la izquierda
            window[0][0] = window[0][1]; window[0][1] = window[0][2];
            window[1][0] = window[1][1]; window[1][1] = window[1][2];
            window[2][0] = window[2][1]; window[2][1] = window[2][2];

            // 2. Leer un nuevo píxel de la memoria global
            unsigned char new_pixel = in_image[y * cols + x];

            // 3. Alimentar la nueva columna de la ventana usando los búferes de línea
            window[0][2] = line_buf1[x]; // Píxel de hace 2 filas
            window[1][2] = line_buf0[x]; // Píxel de hace 1 fila
            window[2][2] = new_pixel;    // Píxel actual

            // 4. Actualizar los búferes de línea
            line_buf1[x] = line_buf0[x];
            line_buf0[x] = new_pixel;

            // 5. Calcular Sobel (solo si la ventana está completamente llena, es decir, x>=2 y y>=2)
            if (y >= 2 && x >= 2) {
                int Gx = (window[0][2] - window[0][0]) + 
                         2 * (window[1][2] - window[1][0]) + 
                         (window[2][2] - window[2][0]);
                
                int Gy = (window[2][0] - window[0][0]) + 
                         2 * (window[2][1] - window[0][1]) + 
                         (window[2][2] - window[0][2]);

                // Cálculo de magnitud
                // En hardware, usar el valor absoluto (|Gx| + |Gy|) es mucho más barato en 
                // área lógica que calcular la raíz cuadrada (sqrt).
                int magnitude = abs(Gx) + abs(Gy);

                if (magnitude > 255) magnitude = 255;

                // Escribimos el píxel en la salida desplazado por la ventana
                out_image[(y - 1) * cols + (x - 1)] = (unsigned char)magnitude;
            }
        }
    }
}