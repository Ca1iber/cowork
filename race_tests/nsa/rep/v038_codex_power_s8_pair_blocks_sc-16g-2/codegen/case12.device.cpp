#include <tl_templates/maca/gemm.h>
#include <tl_templates/maca/copy.h>
#include <tl_templates/maca/reduce.h>
#include <tl_templates/maca/intrin.h>
#include <tl_templates/maca/atomic.h>
#include <tl_templates/maca/threadblock_swizzle.h>
#include <tl_templates/maca/debug.h>

extern "C" __global__ void native_sparse_attention_kernel(const int* __restrict__ BlockIndices, const half_t* __restrict__ K, half_t* __restrict__ Output, const half_t* __restrict__ Q, const half_t* __restrict__ V);
extern "C" __global__ void __launch_bounds__(64, 1) native_sparse_attention_kernel(const int* __restrict__ BlockIndices, const half_t* __restrict__ K, half_t* __restrict__ Output, const half_t* __restrict__ Q, const half_t* __restrict__ V) {
  extern __shared__ __align__(1024) uchar buf_dyn_shmem[];
  half_t q_local[16];
  float output_acc[16];
  float denominator[1];
  float normalizer[1];
  int block_starts[2];
  half_t k_shared_local_cast[8];
  float scores[8];
  half_t k_local[4];
  float block_max[1];
  float rescale[1];
  float block_sum[1];
  half_t scores_half[8];
  half_t v_tile_local[16];
  half_t v_column_local[4];
  half_t output_shared_local_cast_1[4];
  #pragma unroll
  for (int i = 0; i < 2; ++i) {
    *(uint4*)(((half_t*)buf_dyn_shmem) + (((((i * 512) + ((((int)threadIdx.x) >> 3) * 64)) + ((((((int)threadIdx.x) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(Q + ((((((int)blockIdx.y) * 1048576) + (((int)blockIdx.x) * 1024)) + (i * 512)) + (((int)threadIdx.x) * 8)));
  }
  __syncwarp();
  for (int chunk = 0; chunk < 4; ++chunk) {
    *(uint2*)(q_local + (chunk * 4)) = *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((((int)threadIdx.x) & 15) * 64) + (((((((int)threadIdx.x) & 7) >> 2) + (chunk >> 1)) & 1) * 32)) + (((((((int)threadIdx.x) & 3) >> 1) + (chunk & 1)) & 1) * 16)) + ((((((int)threadIdx.x) >> 5) + (((int)threadIdx.x) & 1)) & 1) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4)));
  }
  #pragma unroll
  for (int i_1 = 0; i_1 < 4; ++i_1) {
    float broadcast_var = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(output_acc + (i_1 * 4)) = make_float4(broadcast_var, broadcast_var, broadcast_var, broadcast_var);
  }
  denominator[0] = 0x0p+0f/*0.000000e+00*/;
  normalizer[0] = -MACART_INF_F;
  for (int selected = 0; selected < 4; ++selected) {
    #pragma unroll
    for (int which = 0; which < 2; ++which) {
      block_starts[which] = (BlockIndices[((((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8)) + (selected * 2)) + which)] * 16);
    }
    if (((0 <= block_starts[0]) && (block_starts[0] <= ((int)blockIdx.x))) || ((0 <= block_starts[1]) && (block_starts[1] <= ((int)blockIdx.x)))) {
      __syncwarp();
      #pragma unroll
      for (int which_1 = 0; which_1 < 2; ++which_1) {
        if ((0 <= block_starts[which_1]) && (block_starts[which_1] <= ((int)blockIdx.x))) {
          #pragma unroll
          for (int i_2 = 0; i_2 < 2; ++i_2) {
            half_t broadcast_var_1 = half_t(0x0p+0f/*0.000000e+00*/);
            uint4 condval;
            if (((((((((((int)threadIdx.x) >> 3) + block_starts[which_1]) >> 3) + i_2) < 128) && (0 <= (((i_2 * 8) + (((int)threadIdx.x) >> 3)) + block_starts[which_1]))) && (0 <= (((i_2 * 8) + (((int)threadIdx.x) >> 3)) + block_starts[which_1]))) && (((((((int)threadIdx.x) >> 3) + block_starts[which_1]) >> 3) + i_2) < 128))) {
              condval = *(uint4*)(K + ((((((int64_t)((int)blockIdx.y)) * (int64_t)65536) + (((int64_t)i_2) * (int64_t)512)) + (((int64_t)block_starts[((int64_t)which_1)]) * (int64_t)64)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)));
            } else {
              condval = make_uint4(__pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1));
            }
            *(uint4*)(((half_t*)buf_dyn_shmem) + (((((((which_1 * 1024) + (i_2 * 512)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((((int)threadIdx.x) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 1024)) = condval;
          }
        } else {
          #pragma unroll
          for (int i_3 = 0; i_3 < 2; ++i_3) {
            for (int vec = 0; vec < 2; ++vec) {
              half_t broadcast_var_2 = half_t(0x0p+0f/*0.000000e+00*/);
              *(uint2*)(k_shared_local_cast + (vec * 4)) = make_uint2(__pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2));
            }
            *(uint4*)(((half_t*)buf_dyn_shmem) + (((((((which_1 * 1024) + (i_3 * 512)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((((int)threadIdx.x) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 1024)) = *(uint4*)(k_shared_local_cast + 0);
          }
        }
      }
      __syncwarp();
      #pragma unroll
      for (int i_4 = 0; i_4 < 2; ++i_4) {
        float broadcast_var_3 = 0x0p+0f/*0.000000e+00*/;
        *(float4*)(scores + (i_4 * 4)) = make_float4(broadcast_var_3, broadcast_var_3, broadcast_var_3, broadcast_var_3);
      }
      for (int chunk_1 = 0; chunk_1 < 4; ++chunk_1) {
        #pragma unroll
        for (int which_2 = 0; which_2 < 2; ++which_2) {
          *(uint2*)(k_local + 0) = *(uint2*)(((half_t*)buf_dyn_shmem) + (((((((which_2 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + (chunk_1 >> 1)) & 1) * 32)) + (((((((int)threadIdx.x) & 3) >> 1) + (chunk_1 & 1)) & 1) * 16)) + ((((((int)threadIdx.x) >> 5) + (((int)threadIdx.x) & 1)) & 1) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4)) + 1024));
          {
      *(((float32x4*)scores) + which_2) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)k_local) + 0),
                    *(((float16x4*)q_local) + chunk_1),
                    *(((float32x4*)scores) + which_2));
    };
        }
      }
      #pragma unroll
      for (int i_5 = 0; i_5 < 8; ++i_5) {
        float condval_1;
        if ((((0 <= block_starts[(i_5 >> 2)]) && (block_starts[(i_5 >> 2)] <= ((int)blockIdx.x))) && (((((((int)threadIdx.x) >> 4) * 4) + block_starts[(i_5 >> 2)]) + (i_5 & 3)) <= ((int)blockIdx.x)))) {
          condval_1 = scores[i_5];
        } else {
          condval_1 = -MACART_INF_F;
        }
        scores[i_5] = condval_1;
      }
      block_max[0] = -MACART_INF_F;
      block_max[0] = -MACART_INF_F;
      #pragma unroll
      for (int rv = 0; rv < 8; ++rv) {
        block_max[0] = max(block_max[0], scores[(((rv & 1) * 4) + (rv >> 1))]);
      }
      block_max[0] = tl::AllReduce<tl::MaxOp, 64, 16, 0>::run(block_max[0], (&(((float*)buf_dyn_shmem)[64])));
      if (0x1.cp+2f/*7.000000e+00*/ < ((block_max[0] - normalizer[0]) * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/)) {
        rescale[0] = exp2f(((normalizer[0] - block_max[0]) * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/));
        normalizer[0] = block_max[0];
      } else {
        rescale[0] = 0x1p+0f/*1.000000e+00*/;
      }
      #pragma unroll
      for (int i_6 = 0; i_6 < 8; ++i_6) {
        scores[i_6] = exp2f((((scores[i_6] - normalizer[0]) * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/) + 0x1p+3f/*8.000000e+00*/));
      }
      block_sum[0] = 0x0p+0f/*0.000000e+00*/;
      #pragma unroll
      for (int rv_1 = 0; rv_1 < 8; ++rv_1) {
        block_sum[0] = (block_sum[0] + scores[(((rv_1 & 1) * 4) + (rv_1 >> 1))]);
      }
      block_sum[0] = tl::AllReduce<tl::SumOp, 64, 16, 0>::run(block_sum[0], (&(((float*)buf_dyn_shmem)[0])));
      if (rescale[0] != 0x1p+0f/*1.000000e+00*/) {
        denominator[0] = (denominator[0] * rescale[0]);
      }
      denominator[0] = (denominator[0] + block_sum[0]);
      #pragma unroll
      for (int i_7 = 0; i_7 < 2; ++i_7) {
        uint2 __1;
        float4 v_ = *(float4*)(scores + (i_7 * 4));
        ((half2*)(&__1))[0] = __float22half2_rn(((float2*)(&v_))[0]);
        ((half2*)(&__1))[1] = __float22half2_rn(((float2*)(&v_))[1]);
        *(uint2*)(scores_half + (i_7 * 4)) = __1;
      }
      if (rescale[0] != 0x1p+0f/*1.000000e+00*/) {
        #pragma unroll
        for (int i_8 = 0; i_8 < 16; ++i_8) {
          output_acc[i_8] = (output_acc[i_8] * rescale[0]);
        }
      }
      #pragma unroll
      for (int which_3 = 0; which_3 < 2; ++which_3) {
        if ((0 <= block_starts[which_3]) && (block_starts[which_3] <= ((int)blockIdx.x))) {
          #pragma unroll
          for (int tile_row = 0; tile_row < 4; ++tile_row) {
            half_t broadcast_var_4 = half_t(0x0p+0f/*0.000000e+00*/);
            uint2 condval_2;
            if ((((((((int)threadIdx.x) >> 4) + ((block_starts[which_3] + tile_row) >> 2)) < 256) && (0 <= ((((((int)threadIdx.x) >> 4) * 4) + block_starts[which_3]) + tile_row))) && (((((int)threadIdx.x) >> 4) + ((block_starts[which_3] + tile_row) >> 2)) < 256))) {
              condval_2 = *(uint2*)(V + (((((((int64_t)((int)blockIdx.y)) * (int64_t)65536) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)4) * (int64_t)256)) + (((int64_t)block_starts[((int64_t)which_3)]) * (int64_t)64)) + (((int64_t)tile_row) * (int64_t)64)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)4)));
            } else {
              condval_2 = make_uint2(__pack_half2(broadcast_var_4, broadcast_var_4), __pack_half2(broadcast_var_4, broadcast_var_4));
            }
            *(uint2*)(v_tile_local + (tile_row * 4)) = condval_2;
          }
        } else {
          #pragma unroll
          for (int i_9 = 0; i_9 < 4; ++i_9) {
            half_t broadcast_var_5 = half_t(0x0p+0f/*0.000000e+00*/);
            *(uint2*)(v_tile_local + (i_9 * 4)) = make_uint2(__pack_half2(broadcast_var_5, broadcast_var_5), __pack_half2(broadcast_var_5, broadcast_var_5));
          }
        }
        #pragma unroll
        for (int tile_col = 0; tile_col < 4; ++tile_col) {
          #pragma unroll
          for (int tile_row_1 = 0; tile_row_1 < 4; ++tile_row_1) {
            v_column_local[tile_row_1] = v_tile_local[((tile_row_1 * 4) + tile_col)];
          }
          *(uint2*)(((half_t*)buf_dyn_shmem) + (((((which_3 * 1024) + (tile_col * 256)) + ((((int)threadIdx.x) & 15) * 16)) + ((((((int)threadIdx.x) >> 4) ^ ((((int)threadIdx.x) & 15) >> 2)) ^ tile_col) * 4)) + 3072)) = *(uint2*)(v_column_local + 0);
        }
      }
      __syncwarp();
      half_t B_local[16];
      for (int ki = 0; ki < 2; ++ki) {
        for (int j = 0; j < 4; ++j) {
          *(uint2*)(B_local + (j * 4)) = *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((ki * 1024) + ((((int)threadIdx.x) & 3) * 256)) + (j * 64)) + (((((int)threadIdx.x) & 15) >> 2) * 16)) + ((((((int)threadIdx.x) >> 4) ^ j) ^ (((int)threadIdx.x) & 3)) * 4)) + 3072));
        }
        for (int j_1 = 0; j_1 < 4; ++j_1) {
          {
      *(((float32x4*)output_acc) + j_1) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)B_local) + j_1),
                    *(((float16x4*)scores_half) + ki),
                    *(((float32x4*)output_acc) + j_1));
    };
        }
      }
    }
  }
  __syncwarp();
  #pragma unroll
  for (int i_10 = 0; i_10 < 16; ++i_10) {
    output_acc[i_10] = (output_acc[i_10] / denominator[0]);
  }
  #pragma unroll
  for (int i_11 = 0; i_11 < 4; ++i_11) {
    uint2 __2;
    float4 v__1 = *(float4*)(output_acc + (i_11 * 4));
    ((half2*)(&__2))[0] = __float22half2_rn(((float2*)(&v__1))[0]);
    ((half2*)(&__2))[1] = __float22half2_rn(((float2*)(&v__1))[1]);
    *(uint2*)(output_shared_local_cast_1 + 0) = __2;
    *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((int)threadIdx.x) & 15) * 64) + ((((i_11 * 2) + (((int)threadIdx.x) >> 5)) ^ (((int)threadIdx.x) & 7)) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4))) = *(uint2*)(output_shared_local_cast_1 + 0);
  }
  __syncwarp();
  #pragma unroll
  for (int i_12 = 0; i_12 < 2; ++i_12) {
    *(uint4*)(Output + ((((((int)blockIdx.y) * 1048576) + (((int)blockIdx.x) * 1024)) + (i_12 * 512)) + (((int)threadIdx.x) * 8))) = *(uint4*)(((half_t*)buf_dyn_shmem) + (((i_12 * 512) + ((((int)threadIdx.x) >> 3) * 64)) + (((((int)threadIdx.x) & 7) ^ (((int)threadIdx.x) >> 3)) * 8)));
  }
}

