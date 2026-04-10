#define MAX_COLS 1280

__attribute__((max_global_work_dim(0)))
__kernel void sobel_fpga(
    __global const unsigned char* restrict in_image,
    __global unsigned char* restrict out_image,
    int cols, 
    int rows) 
{
    // Búferes de línea
    unsigned char line_buf0[MAX_COLS];
    unsigned char line_buf1[MAX_COLS];

    // Variables de ventana (Flip-Flops)
    unsigned char w00=0, w01=0, w02=0;
    unsigned char w10=0, w11=0, w12=0;
    unsigned char w20=0, w21=0, w22=0;

    // APLANADO DE BUCLES: Calculamos el total de píxeles
    int total_pixels = cols * rows;
    int x = 0;
    int y = 0;

    // Al haber un solo bucle, ivdep safelen funciona a la perfección
    #pragma ivdep safelen(MAX_COLS)
    for (int i = 0; i < total_pixels; ++i) {
        
        //  Desplazar la ventana a la izquierda
        w00 = w01; w01 = w02;
        w10 = w11; w11 = w12;
        w20 = w21; w21 = w22;

        // Leer nuevo píxel
        unsigned char new_pixel = in_image[i];

        // Leer de los búferes de línea
        unsigned char top_pixel = line_buf1[x];
        unsigned char mid_pixel = line_buf0[x];

        // Alimentar la nueva columna derecha
        w02 = top_pixel;
        w12 = mid_pixel;
        w22 = new_pixel;

        // Actualizar los búferes de línea
        line_buf1[x] = mid_pixel;
        line_buf0[x] = new_pixel;

        // Cálculo de Sobel (solo si estamos en zona segura)
        if (y >= 2 && x >= 2) {
            int Gx = (w02 - w00) + 2*(w12 - w10) + (w22 - w20);
            int Gy = (w20 - w00) + 2*(w21 - w01) + (w22 - w02);

            int magnitude = abs(Gx) + abs(Gy);
            if (magnitude > 255) magnitude = 255;

            out_image[(y - 1) * cols + (x - 1)] = (unsigned char)magnitude;
        }

        // 7. Actualizar coordenadas manualmente (El truco del aplanado)
        x++;
        if (x == cols) {
            x = 0;
            y++;
        }
    }
}