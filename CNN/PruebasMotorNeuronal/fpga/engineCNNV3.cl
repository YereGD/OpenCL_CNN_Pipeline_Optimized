#pragma OPENCL EXTENSION cl_intel_channels : enable

// ¡TU IDEA ERA LA CORRECTA! El tamaño perfecto para la DE10-Nano
#define TILE_OUT_C 4

#define MAX_WEIGHT_ITERS 1152 

channel uchar4 ch_in __attribute__((depth(32)));
channel uchar4 ch_out __attribute__((depth(32))); 

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
// KERNEL 2: MOTOR MATEMÁTICO (Caché BRAM y 16 MACs fluidos)
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

    __local uchar4 local_w[MAX_WEIGHT_ITERS][TILE_OUT_C];
    __local int local_b[TILE_OUT_C];

    for (int oc = 0; oc < TILE_OUT_C; oc++) {
        if (oc < tile_channels) local_b[oc] = bias[b_off_ints + oc];
        else local_b[oc] = 0;

        int base = w_off_vec + (oc * total_inner_iters);
        for (int i = 0; i < total_inner_iters; i++) {
            if (i < MAX_WEIGHT_ITERS) {
                local_w[i][oc] = (oc < tile_channels) ? weights_vec[base + i] : (uchar4)(w_zero, w_zero, w_zero, w_zero);
            }
        }
    }

    for (int y = 0; y < out_h; y++) {
        for (int x = 0; x < out_w; x++) {
            
            int acc[TILE_OUT_C];
            
            #pragma unroll
            for(int oc = 0; oc < TILE_OUT_C; oc++) acc[oc] = 0;

            for (int i = 0; i < total_inner_iters; i++) { 
                uchar4 vector_in = read_channel_intel(ch_in);
                
                short p0 = (short)vector_in.s0 - (short)x_zero;
                short p1 = (short)vector_in.s1 - (short)x_zero;
                short p2 = (short)vector_in.s2 - (short)x_zero;
                short p3 = (short)vector_in.s3 - (short)x_zero;

                #pragma unroll
                for (int oc = 0; oc < TILE_OUT_C; oc++) {
                    
                    uchar4 w_vec = local_w[i][oc];
                    
                    short w0 = (short)w_vec.s0 - (short)w_zero;
                    short w1 = (short)w_vec.s1 - (short)w_zero;
                    short w2 = (short)w_vec.s2 - (short)w_zero;
                    short w3 = (short)w_vec.s3 - (short)w_zero;

                    acc[oc] += (int)(p0 * w0) + (int)(p1 * w1) + (int)(p2 * w2) + (int)(p3 * w3);
                }
            }

            // Un solo disparo limpio a la tubería (sin bucles extra)
            uchar4 out_vec = (uchar4)(0, 0, 0, 0);
            
            #pragma unroll
            for (int oc = 0; oc < TILE_OUT_C; oc++) {
                int res = acc[oc] + local_b[oc];
                long long res_q = (long long)res * M_mult;
                int res_shifted = (int)(res_q >> M_shift) + y_zero;
                
                uchar final_val;
                if (res_shifted < 0) final_val = 0;
                else if (res_shifted > 255) final_val = 255;
                else final_val = (uchar)res_shifted;

                if (oc == 0) out_vec.s0 = final_val;
                if (oc == 1) out_vec.s1 = final_val;
                if (oc == 2) out_vec.s2 = final_val;
                if (oc == 3) out_vec.s3 = final_val;
            }
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
            
            // Una sola lectura limpia
            uchar4 val_vec = read_channel_intel(ch_out);
            int base_idx = out_offset + (y * out_w * out_c) + (x * out_c) + t_offset;

            // Escrituras seguras protegidas por tile_channels
            if (tile_channels > 0) mem_out[base_idx + 0] = val_vec.s0;
            if (tile_channels > 1) mem_out[base_idx + 1] = val_vec.s1;
            if (tile_channels > 2) mem_out[base_idx + 2] = val_vec.s2;
            if (tile_channels > 3) mem_out[base_idx + 3] = val_vec.s3;
        }
    }
}