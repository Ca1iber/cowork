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
  half_t probability_pair[8];
  float pair_rescale[1];
  float pair_sum_local[1];
  float scores[4];
  float block_sum[1];
  half_t k_local[4];
  float block_max[1];
  float rescale[1];
  half_t v_tile_local[16];
  half_t v_column_local[4];
  half_t scores_half[4];
  half_t output_shared_local_cast[4];
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
    int start0 = (BlockIndices[(((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8)) + (selected * 2))] * 16);
    int start1 = (BlockIndices[((((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8)) + (selected * 2)) + 1)] * 16);
    if (((0 <= start0) && (start0 <= ((int)blockIdx.x))) || ((0 <= start1) && (start1 <= ((int)blockIdx.x)))) {
      #pragma unroll
      for (int i_2 = 0; i_2 < 2; ++i_2) {
        half_t broadcast_var_1 = half_t(0x0p+0f/*0.000000e+00*/);
        *(uint2*)(probability_pair + (i_2 * 4)) = make_uint2(__pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1));
      }
      pair_rescale[0] = 0x1p+0f/*1.000000e+00*/;
      pair_sum_local[0] = 0x0p+0f/*0.000000e+00*/;
      #pragma unroll
      for (int which = 0; which < 2; ++which) {
        int condval;
        if ((which == 0)) {
          condval = start0;
        } else {
          condval = start1;
        }
        int condval_1;
        if ((which == 0)) {
          condval_1 = start0;
        } else {
          condval_1 = start1;
        }
        if ((0 <= condval) && (condval_1 <= ((int)blockIdx.x))) {
          __syncwarp();
          #pragma unroll
          for (int i_3 = 0; i_3 < 2; ++i_3) {
            half_t broadcast_var_2 = half_t(0x0p+0f/*0.000000e+00*/);
            int condval_3;
            if ((which == 0)) {
              condval_3 = start0;
            } else {
              condval_3 = start1;
            }
            uint4 condval_2;
            if ((((((((int)threadIdx.x) >> 3) + condval_3) >> 3) + i_3) < 128)) {
              int64_t condval_4;
              if ((((int64_t)which) == (int64_t)0)) {
                condval_4 = ((int64_t)start0);
              } else {
                condval_4 = ((int64_t)start1);
              }
              int64_t condval_5;
              if ((((int64_t)which) == (int64_t)0)) {
                condval_5 = ((int64_t)start0);
              } else {
                condval_5 = ((int64_t)start1);
              }
              condval_2 = *(uint4*)(K + ((((((int64_t)((int)blockIdx.y)) * (int64_t)65536) + (((int64_t)i_3) * (int64_t)512)) + (condval_5 * (int64_t)64)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)));
            } else {
              condval_2 = make_uint4(__pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2));
            }
            *(uint4*)(((half_t*)buf_dyn_shmem) + (((((i_3 * 512) + ((((int)threadIdx.x) >> 3) * 64)) + ((((((int)threadIdx.x) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = condval_2;
          }
          __syncwarp();
          float broadcast_var_3 = 0x0p+0f/*0.000000e+00*/;
          *(float4*)(scores + 0) = make_float4(broadcast_var_3, broadcast_var_3, broadcast_var_3, broadcast_var_3);
          for (int chunk_1 = 0; chunk_1 < 4; ++chunk_1) {
            *(uint2*)(k_local + 0) = *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((((int)threadIdx.x) & 15) * 64) + (((((((int)threadIdx.x) & 7) >> 2) + (chunk_1 >> 1)) & 1) * 32)) + (((((((int)threadIdx.x) & 3) >> 1) + (chunk_1 & 1)) & 1) * 16)) + ((((((int)threadIdx.x) >> 5) + (((int)threadIdx.x) & 1)) & 1) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4)));
            {
      *(((float32x4*)scores) + 0) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)k_local) + 0),
                    *(((float16x4*)q_local) + chunk_1),
                    *(((float32x4*)scores) + 0));
    };
          }
          #pragma unroll
          for (int i_4 = 0; i_4 < 4; ++i_4) {
            int condval_7;
            if ((which == 0)) {
              condval_7 = start0;
            } else {
              condval_7 = start1;
            }
            float condval_6;
            if ((((((((int)threadIdx.x) >> 4) * 4) + condval_7) + i_4) <= ((int)blockIdx.x))) {
              condval_6 = scores[i_4];
            } else {
              condval_6 = -MACART_INF_F;
            }
            scores[i_4] = condval_6;
          }
          block_max[0] = -MACART_INF_F;
          block_max[0] = -MACART_INF_F;
          #pragma unroll
          for (int rv = 0; rv < 4; ++rv) {
            block_max[0] = max(block_max[0], scores[rv]);
          }
          block_max[0] = tl::AllReduce<tl::MaxOp, 64, 16, 0>::run(block_max[0], (&(((float*)buf_dyn_shmem)[1088])));
          if (0x1.cp+2f/*7.000000e+00*/ < ((block_max[0] - normalizer[0]) * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/)) {
            rescale[0] = exp2f(((normalizer[0] - block_max[0]) * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/));
            normalizer[0] = block_max[0];
          } else {
            rescale[0] = 0x1p+0f/*1.000000e+00*/;
          }
          #pragma unroll
          for (int i_5 = 0; i_5 < 4; ++i_5) {
            scores[i_5] = exp2f((((scores[i_5] - normalizer[0]) * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/) + 0x1p+3f/*8.000000e+00*/));
          }
          pair_rescale[0] = (pair_rescale[0] * rescale[0]);
          if (which == 1) {
            if (rescale[0] != 0x1p+0f/*1.000000e+00*/) {
              #pragma unroll
              for (int i_6 = 0; i_6 < 2; ++i_6) {
                if (i_6 < 1) {
                  uint2 __1;
                  float4 __2;
                    float4 __3;
                    uint2 v_ = *(uint2*)(probability_pair + (i_6 * 4));
                    ((float2*)(&__3))[0] = __half22float2(((half2*)(&v_))[0]);
                    ((float2*)(&__3))[1] = __half22float2(((half2*)(&v_))[1]);
                    float4 v__1 = make_float4(rescale[0], rescale[0], rescale[0], rescale[0]);
                    __2.x = (__3.x*v__1.x);
                    __2.y = (__3.y*v__1.y);
                    __2.z = (__3.z*v__1.z);
                    __2.w = (__3.w*v__1.w);
                  ((half2*)(&__1))[0] = __float22half2_rn(((float2*)(&__2))[0]);
                  ((half2*)(&__1))[1] = __float22half2_rn(((float2*)(&__2))[1]);
                  *(uint2*)(probability_pair + (i_6 * 4)) = __1;
                }
              }
            }
          }
          if (rescale[0] != 0x1p+0f/*1.000000e+00*/) {
            pair_sum_local[0] = (pair_sum_local[0] * rescale[0]);
          }
          #pragma unroll
          for (int element = 0; element < 4; ++element) {
            pair_sum_local[0] = (pair_sum_local[0] + scores[element]);
          }
          uint2 __4;
          float4 v__2 = *(float4*)(scores + 0);
          ((half2*)(&__4))[0] = __float22half2_rn(((float2*)(&v__2))[0]);
          ((half2*)(&__4))[1] = __float22half2_rn(((float2*)(&v__2))[1]);
          *(uint2*)(probability_pair + (which * 4)) = __4;
        }
      }
      float broadcast_var_4 = 0x0p+0f/*0.000000e+00*/;
      *(float4*)(scores + 0) = make_float4(broadcast_var_4, broadcast_var_4, broadcast_var_4, broadcast_var_4);
      scores[0] = pair_sum_local[0];
      block_sum[0] = 0x0p+0f/*0.000000e+00*/;
      #pragma unroll
      for (int rv_1 = 0; rv_1 < 4; ++rv_1) {
        block_sum[0] = (block_sum[0] + scores[rv_1]);
      }
      block_sum[0] = tl::AllReduce<tl::SumOp, 64, 16, 0>::run(block_sum[0], (&(((float*)buf_dyn_shmem)[1024])));
      if (pair_rescale[0] != 0x1p+0f/*1.000000e+00*/) {
        denominator[0] = (denominator[0] * pair_rescale[0]);
      }
      denominator[0] = (denominator[0] + block_sum[0]);
      if (pair_rescale[0] != 0x1p+0f/*1.000000e+00*/) {
        #pragma unroll
        for (int i_7 = 0; i_7 < 16; ++i_7) {
          output_acc[i_7] = (output_acc[i_7] * pair_rescale[0]);
        }
      }
      #pragma unroll
      for (int which_1 = 0; which_1 < 2; ++which_1) {
        int condval_8;
        if ((which_1 == 0)) {
          condval_8 = start0;
        } else {
          condval_8 = start1;
        }
        int condval_9;
        if ((which_1 == 0)) {
          condval_9 = start0;
        } else {
          condval_9 = start1;
        }
        if ((0 <= condval_8) && (condval_9 <= ((int)blockIdx.x))) {
          if (which_1 == 1) {
            __syncwarp();
          }
          #pragma unroll
          for (int tile_row = 0; tile_row < 4; ++tile_row) {
            half_t broadcast_var_5 = half_t(0x0p+0f/*0.000000e+00*/);
            int condval_11;
            if ((which_1 == 0)) {
              condval_11 = start0;
            } else {
              condval_11 = start1;
            }
            uint2 condval_10;
            if ((((((int)threadIdx.x) >> 4) + ((condval_11 + tile_row) >> 2)) < 256)) {
              int64_t condval_12;
              if ((((int64_t)which_1) == (int64_t)0)) {
                condval_12 = ((int64_t)start0);
              } else {
                condval_12 = ((int64_t)start1);
              }
              int64_t condval_13;
              if ((((int64_t)which_1) == (int64_t)0)) {
                condval_13 = ((int64_t)start0);
              } else {
                condval_13 = ((int64_t)start1);
              }
              condval_10 = *(uint2*)(V + (((((((int64_t)((int)blockIdx.y)) * (int64_t)65536) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)4) * (int64_t)256)) + (condval_13 * (int64_t)64)) + (((int64_t)tile_row) * (int64_t)64)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)4)));
            } else {
              condval_10 = make_uint2(__pack_half2(broadcast_var_5, broadcast_var_5), __pack_half2(broadcast_var_5, broadcast_var_5));
            }
            *(uint2*)(v_tile_local + (tile_row * 4)) = condval_10;
          }
          #pragma unroll
          for (int tile_col = 0; tile_col < 4; ++tile_col) {
            #pragma unroll
            for (int tile_row_1 = 0; tile_row_1 < 4; ++tile_row_1) {
              v_column_local[tile_row_1] = v_tile_local[((tile_row_1 * 4) + tile_col)];
            }
            *(uint2*)(((half_t*)buf_dyn_shmem) + ((((tile_col * 256) + ((((int)threadIdx.x) & 15) * 16)) + ((((((int)threadIdx.x) >> 4) ^ ((((int)threadIdx.x) & 15) >> 2)) ^ tile_col) * 4)) + 1024)) = *(uint2*)(v_column_local + 0);
          }
          __syncwarp();
          *(uint2*)(scores_half + 0) = *(uint2*)(probability_pair + (which_1 * 4));
          half_t B_local[16];
          for (int j = 0; j < 4; ++j) {
            *(uint2*)(B_local + (j * 4)) = *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((((int)threadIdx.x) & 3) * 256) + (j * 64)) + (((((int)threadIdx.x) & 15) >> 2) * 16)) + ((((((int)threadIdx.x) >> 4) ^ j) ^ (((int)threadIdx.x) & 3)) * 4)) + 1024));
          }
          for (int j_1 = 0; j_1 < 4; ++j_1) {
            {
      *(((float32x4*)output_acc) + j_1) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)B_local) + j_1),
                    *(((float16x4*)scores_half) + 0),
                    *(((float32x4*)output_acc) + j_1));
    };
          }
        }
      }
    }
  }
  __syncwarp();
  #pragma unroll
  for (int i_8 = 0; i_8 < 16; ++i_8) {
    output_acc[i_8] = (output_acc[i_8] / denominator[0]);
  }
  #pragma unroll
  for (int i_9 = 0; i_9 < 4; ++i_9) {
    uint2 __5;
    float4 v__3 = *(float4*)(output_acc + (i_9 * 4));
    ((half2*)(&__5))[0] = __float22half2_rn(((float2*)(&v__3))[0]);
    ((half2*)(&__5))[1] = __float22half2_rn(((float2*)(&v__3))[1]);
    *(uint2*)(output_shared_local_cast + 0) = __5;
    *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((int)threadIdx.x) & 15) * 64) + ((((i_9 * 2) + (((int)threadIdx.x) >> 5)) ^ (((int)threadIdx.x) & 7)) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4))) = *(uint2*)(output_shared_local_cast + 0);
  }
  __syncwarp();
  #pragma unroll
  for (int i_10 = 0; i_10 < 2; ++i_10) {
    *(uint4*)(Output + ((((((int)blockIdx.y) * 1048576) + (((int)blockIdx.x) * 1024)) + (i_10 * 512)) + (((int)threadIdx.x) * 8))) = *(uint4*)(((half_t*)buf_dyn_shmem) + (((i_10 * 512) + ((((int)threadIdx.x) >> 3) * 64)) + (((((int)threadIdx.x) & 7) ^ (((int)threadIdx.x) >> 3)) * 8)));
  }
}

