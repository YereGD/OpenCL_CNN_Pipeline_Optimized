#pragma OPENCL EXTENSION cl_intel_channels : enable

// EL PUNTO DULCE: TILING 8
#define TILE_OUT_C 8
#define MAX_WEIGHT_ITERS 1152 

channel uchar4 ch_in __attribute__((depth(32)));
// ¡EL MISIL! Canal ensanchado a 8 bytes (64 bits) por ciclo
channel uchar8 ch_out __attribute__((depth(32))); 

// Función de cuantización
inline uchar quantize(int acc, int b, int M_mult, int M_shift, int y_zero) {
    long long res_q = (long long)(acc + b) * M_mult;
    int res_shifted = (int)(res_q >> M_shift) + y_zero;
    if (res_shifted < 0) return 0;
    if (res_shifted > 255) return 255;
    return (uchar)res_shifted;
}

// =========================================================================
// KERNEL 1: GENERADOR DE VENTANAS
// =========================================================================
__kernel void mem_read_generic(
    __global const uchar4* restrict mem_in __attribute__((aligned(64))),
    int in_offset_bytes, int w, int h, int in_c, int stride, int pad, uchar x_zero) 
{
    int in_offset_vec = in_offset_bytes / 4; 
    int vec_c = in_c / 4; 
    int w_vec_c = w * vec_c; 
    int out_w = (w + 2 * pad - 3) / stride + 1;
    int out_h = (h + 2 * pad - 3) / stride + 1;
    int total_inner_iters = 9 * vec_c;

    for (int y = 0; y < out_h; y++) {
        for (int x = 0; x < out_w; x++) {
            int c = 0, kx = 0, ky = 0;

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
                
                c++;
                if (c == vec_c) {
                    c = 0; kx++;
                    if (kx == 3) { kx = 0; ky++; }
                }
            }
        }
    }
}

// =========================================================================
// KERNEL 2: MOTOR MATEMÁTICO (Un Solo Disparo)
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

    // 8 Memorias físicas 100% aisladas
    __local uchar4 local_w_0[MAX_WEIGHT_ITERS];
    __local uchar4 local_w_1[MAX_WEIGHT_ITERS];
    __local uchar4 local_w_2[MAX_WEIGHT_ITERS];
    __local uchar4 local_w_3[MAX_WEIGHT_ITERS];
    __local uchar4 local_w_4[MAX_WEIGHT_ITERS];
    __local uchar4 local_w_5[MAX_WEIGHT_ITERS];
    __local uchar4 local_w_6[MAX_WEIGHT_ITERS];
    __local uchar4 local_w_7[MAX_WEIGHT_ITERS];

    int local_b_0 = (0 < tile_channels) ? bias[b_off_ints + 0] : 0;
    int local_b_1 = (1 < tile_channels) ? bias[b_off_ints + 1] : 0;
    int local_b_2 = (2 < tile_channels) ? bias[b_off_ints + 2] : 0;
    int local_b_3 = (3 < tile_channels) ? bias[b_off_ints + 3] : 0;
    int local_b_4 = (4 < tile_channels) ? bias[b_off_ints + 4] : 0;
    int local_b_5 = (5 < tile_channels) ? bias[b_off_ints + 5] : 0;
    int local_b_6 = (6 < tile_channels) ? bias[b_off_ints + 6] : 0;
    int local_b_7 = (7 < tile_channels) ? bias[b_off_ints + 7] : 0;

    for (int oc = 0; oc < TILE_OUT_C; oc++) {
        int base = w_off_vec + (oc * total_inner_iters);
        for (int i = 0; i < total_inner_iters; i++) {
            uchar4 w_val = (oc < tile_channels) ? weights_vec[base + i] : (uchar4)(w_zero, w_zero, w_zero, w_zero);
            if (oc == 0) local_w_0[i] = w_val;
            else if (oc == 1) local_w_1[i] = w_val;
            else if (oc == 2) local_w_2[i] = w_val;
            else if (oc == 3) local_w_3[i] = w_val;
            else if (oc == 4) local_w_4[i] = w_val;
            else if (oc == 5) local_w_5[i] = w_val;
            else if (oc == 6) local_w_6[i] = w_val;
            else if (oc == 7) local_w_7[i] = w_val;
        }
    }

    short w_zero_s = (short)w_zero;

    for (int y = 0; y < out_h; y++) {
        for (int x = 0; x < out_w; x++) {
            
            int acc0 = 0, acc1 = 0, acc2 = 0, acc3 = 0;
            int acc4 = 0, acc5 = 0, acc6 = 0, acc7 = 0;

            for (int i = 0; i < total_inner_iters; i++) { 
                uchar4 vector_in = read_channel_intel(ch_in);
                
                short p0 = (short)vector_in.s0 - (short)x_zero;
                short p1 = (short)vector_in.s1 - (short)x_zero;
                short p2 = (short)vector_in.s2 - (short)x_zero;
                short p3 = (short)vector_in.s3 - (short)x_zero;

                uchar4 w_vec_0 = local_w_0[i];
                acc0 += (int)(p0 * ((short)w_vec_0.s0 - w_zero_s)) + (int)(p1 * ((short)w_vec_0.s1 - w_zero_s)) + (int)(p2 * ((short)w_vec_0.s2 - w_zero_s)) + (int)(p3 * ((short)w_vec_0.s3 - w_zero_s));

                uchar4 w_vec_1 = local_w_1[i];
                acc1 += (int)(p0 * ((short)w_vec_1.s0 - w_zero_s)) + (int)(p1 * ((short)w_vec_1.s1 - w_zero_s)) + (int)(p2 * ((short)w_vec_1.s2 - w_zero_s)) + (int)(p3 * ((short)w_vec_1.s3 - w_zero_s));

                uchar4 w_vec_2 = local_w_2[i];
                acc2 += (int)(p0 * ((short)w_vec_2.s0 - w_zero_s)) + (int)(p1 * ((short)w_vec_2.s1 - w_zero_s)) + (int)(p2 * ((short)w_vec_2.s2 - w_zero_s)) + (int)(p3 * ((short)w_vec_2.s3 - w_zero_s));

                uchar4 w_vec_3 = local_w_3[i];
                acc3 += (int)(p0 * ((short)w_vec_3.s0 - w_zero_s)) + (int)(p1 * ((short)w_vec_3.s1 - w_zero_s)) + (int)(p2 * ((short)w_vec_3.s2 - w_zero_s)) + (int)(p3 * ((short)w_vec_3.s3 - w_zero_s));

                uchar4 w_vec_4 = local_w_4[i];
                acc4 += (int)(p0 * ((short)w_vec_4.s0 - w_zero_s)) + (int)(p1 * ((short)w_vec_4.s1 - w_zero_s)) + (int)(p2 * ((short)w_vec_4.s2 - w_zero_s)) + (int)(p3 * ((short)w_vec_4.s3 - w_zero_s));

                uchar4 w_vec_5 = local_w_5[i];
                acc5 += (int)(p0 * ((short)w_vec_5.s0 - w_zero_s)) + (int)(p1 * ((short)w_vec_5.s1 - w_zero_s)) + (int)(p2 * ((short)w_vec_5.s2 - w_zero_s)) + (int)(p3 * ((short)w_vec_5.s3 - w_zero_s));

                uchar4 w_vec_6 = local_w_6[i];
                acc6 += (int)(p0 * ((short)w_vec_6.s0 - w_zero_s)) + (int)(p1 * ((short)w_vec_6.s1 - w_zero_s)) + (int)(p2 * ((short)w_vec_6.s2 - w_zero_s)) + (int)(p3 * ((short)w_vec_6.s3 - w_zero_s));

                uchar4 w_vec_7 = local_w_7[i];
                acc7 += (int)(p0 * ((short)w_vec_7.s0 - w_zero_s)) + (int)(p1 * ((short)w_vec_7.s1 - w_zero_s)) + (int)(p2 * ((short)w_vec_7.s2 - w_zero_s)) + (int)(p3 * ((short)w_vec_7.s3 - w_zero_s));
            }

            // UNA SOLA ESCRITURA: Empaquetamos todo en el uchar8 gigante
            uchar8 out_vec = (uchar8)(0, 0, 0, 0, 0, 0, 0, 0);
            
            out_vec.s0 = (0 < tile_channels) ? quantize(acc0, local_b_0, M_mult, M_shift, y_zero) : 0;
            out_vec.s1 = (1 < tile_channels) ? quantize(acc1, local_b_1, M_mult, M_shift, y_zero) : 0;
            out_vec.s2 = (2 < tile_channels) ? quantize(acc2, local_b_2, M_mult, M_shift, y_zero) : 0;
            out_vec.s3 = (3 < tile_channels) ? quantize(acc3, local_b_3, M_mult, M_shift, y_zero) : 0;
            out_vec.s4 = (4 < tile_channels) ? quantize(acc4, local_b_4, M_mult, M_shift, y_zero) : 0;
            out_vec.s5 = (5 < tile_channels) ? quantize(acc5, local_b_5, M_mult, M_shift, y_zero) : 0;
            out_vec.s6 = (6 < tile_channels) ? quantize(acc6, local_b_6, M_mult, M_shift, y_zero) : 0;
            out_vec.s7 = (7 < tile_channels) ? quantize(acc7, local_b_7, M_mult, M_shift, y_zero) : 0;
            
            // Disparo limpio, sin multiplexores
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
            
            // UNA SOLA LECTURA
            uchar8 val_vec = read_channel_intel(ch_out);
            int base_idx = out_offset + (y * out_w * out_c) + (x * out_c) + t_offset;

            // Escrituras seguras y directas
            if (tile_channels > 0) mem_out[base_idx + 0] = val_vec.s0;
            if (tile_channels > 1) mem_out[base_idx + 1] = val_vec.s1;
            if (tile_channels > 2) mem_out[base_idx + 2] = val_vec.s2;
            if (tile_channels > 3) mem_out[base_idx + 3] = val_vec.s3;
            if (tile_channels > 4) mem_out[base_idx + 4] = val_vec.s4;
            if (tile_channels > 5) mem_out[base_idx + 5] = val_vec.s5;
            if (tile_channels > 6) mem_out[base_idx + 6] = val_vec.s6;
            if (tile_channels > 7) mem_out[base_idx + 7] = val_vec.s7;
        }
    }
}