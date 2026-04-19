#pragma OPENCL EXTENSION cl_intel_channels : enable

#define TILE_OUT_C 4

channel uchar4 ch_in __attribute__((depth(32)));
channel uchar4 ch_out __attribute__((depth(32))); 

// =========================================================================
// KERNEL 1: GENERADOR DE VENTANAS (Aplanado, sin divisiones)
// =========================================================================
__kernel void mem_read_generic(
    __global const uchar4* restrict mem_in __attribute__((aligned(64))),
    int in_offset_bytes, int w, int h, int in_c, int stride, int pad, uchar x_zero) 
{
    int in_offset_vec = in_offset_bytes / 4; 
    int vec_c = in_c / 4; 
    
    int w_vec_c = w * vec_c; // Calculado fuera para ahorrar lógica

    int out_w = (w + 2 * pad - 3) / stride + 1;
    int out_h = (h + 2 * pad - 3) / stride + 1;
    
    // Total de lecturas por píxel de salida (9 píxeles de ventana * canales)
    int total_inner_iters = 9 * vec_c;

    for (int y = 0; y < out_h; y++) {
        for (int x = 0; x < out_w; x++) {
            
            // Contadores manuales (¡Más baratos que usar divisiones / %)
            int c = 0;
            int kx = 0;
            int ky = 0;

            // BUCLE ÚNICO: Obliga a Quartus a usar Pipelining limpio sin desenrollar
            for (int i = 0; i < total_inner_iters; i++) {
                
                int in_y = y * stride + ky - pad;
                int in_x = x * stride + kx - pad;
                bool is_pad = (in_y < 0 || in_y >= h || in_x < 0 || in_x >= w);
                
                uchar4 val;
                if (is_pad) {
                    val = (uchar4)(x_zero, x_zero, x_zero, x_zero);
                } else {
                    int base_idx = in_offset_vec + in_y * w_vec_c + in_x * vec_c + c;
                    val = mem_in[base_idx]; 
                }
                
                write_channel_intel(ch_in, val); 
                
                // Actualizamos los contadores como un reloj mecánico
                c++;
                if (c == vec_c) {
                    c = 0;
                    kx++;
                    if (kx == 3) {
                        kx = 0;
                        ky++;
                    }
                }
            }
        }
    }
}

// =========================================================================
// KERNEL 2: MOTOR MATEMÁTICO (Bucle Aplanado y Punteros Automáticos)
// =========================================================================
__kernel void conv_generic(
    __global const uchar4* restrict weights_vec __attribute__((aligned(64))),
    __global const int* restrict bias __attribute__((aligned(64))),
    int w_off_bytes, int b_off_ints, int w, int h, int in_c, int tile_channels,
    int stride, int pad, uchar x_zero, uchar w_zero, int y_zero,
    int M_mult, int M_shift)
{
    int vec_c = in_c / 4; 
    int w_off_vec = w_off_bytes / 4; 

    int out_w = (w + 2 * pad - 3) / stride + 1;
    int out_h = (h + 2 * pad - 3) / stride + 1;

    int total_inner_iters = 9 * vec_c;

    for (int y = 0; y < out_h; y++) {
        for (int x = 0; x < out_w; x++) {
            
            int acc[TILE_OUT_C];
            int w_ptr[TILE_OUT_C]; 
            
            // Inicializamos el puntero de los pesos en la casilla de salida
            #pragma unroll
            for(int oc = 0; oc < TILE_OUT_C; oc++) {
                acc[oc] = 0;
                w_ptr[oc] = w_off_vec + oc * total_inner_iters; 
            }

            // BUCLE ÚNICO: Las advertencias rojas desaparecerán
            for (int i = 0; i < total_inner_iters; i++) { 
                
                uchar4 vector_in = read_channel_intel(ch_in);
                
                int p0 = vector_in.s0 - x_zero;
                int p1 = vector_in.s1 - x_zero;
                int p2 = vector_in.s2 - x_zero;
                int p3 = vector_in.s3 - x_zero;

                #pragma unroll
                for (int oc = 0; oc < TILE_OUT_C; oc++) {
                    
                    // Magia SIMD: Leemos 4 pesos sin multiplicar coordenadas
                    uchar4 w_vec = weights_vec[w_ptr[oc]];
                    w_ptr[oc]++; // Avanzamos al siguiente bloque de pesos
                    
                    int w0 = w_vec.s0 - w_zero;
                    int w1 = w_vec.s1 - w_zero;
                    int w2 = w_vec.s2 - w_zero;
                    int w3 = w_vec.s3 - w_zero;

                    acc[oc] += (p0 * w0) + (p1 * w1) + (p2 * w2) + (p3 * w3);
                }
            }

            uchar4 out_vec = (uchar4)(0, 0, 0, 0);
            uchar out_vals[4] = {0, 0, 0, 0};

            for (int oc = 0; oc < tile_channels; oc++) {
                int res = acc[oc] + bias[b_off_ints + oc];
                long long res_q = (long long)res * M_mult;
                int res_shifted = (int)(res_q >> M_shift) + y_zero;
                
                if (res_shifted < 0) out_vals[oc] = 0;
                else if (res_shifted > 255) out_vals[oc] = 255;
                else out_vals[oc] = (uchar)res_shifted;
            }

            out_vec.s0 = out_vals[0];
            out_vec.s1 = out_vals[1];
            out_vec.s2 = out_vals[2];
            out_vec.s3 = out_vals[3];

            write_channel_intel(ch_out, out_vec);
        }
    }
}

// =========================================================================
// KERNEL 3: ESCRITOR EN MEMORIA
// =========================================================================
__kernel void mem_write_generic(
    __global uchar* restrict mem_out __attribute__((aligned(64))),
    int out_offset, int w, int h, int out_c, int tile_channels, int t_offset,
    int stride, int pad)
{
    int out_w = (w + 2 * pad - 3) / stride + 1;
    int out_h = (h + 2 * pad - 3) / stride + 1;

    for (int y = 0; y < out_h; y++) {
        for (int x = 0; x < out_w; x++) {
            
            uchar4 val_vec = read_channel_intel(ch_out);
            int base_idx = out_offset + (y * out_w * out_c) + (x * out_c) + t_offset;

            if (tile_channels > 0) mem_out[base_idx + 0] = val_vec.s0;
            if (tile_channels > 1) mem_out[base_idx + 1] = val_vec.s1;
            if (tile_channels > 2) mem_out[base_idx + 2] = val_vec.s2;
            if (tile_channels > 3) mem_out[base_idx + 3] = val_vec.s3;
        }
    }
}