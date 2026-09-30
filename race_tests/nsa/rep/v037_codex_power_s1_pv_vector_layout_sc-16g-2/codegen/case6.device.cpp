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
  float denominator[1];
  half_t q_local[32];
  float scores[8];
  float block_max[1];
  half_t scores_half[8];
  float output_acc[32];
  half_t k_local[4];
  half_t v_tile_local[16];
  half_t v_column_local[4];
  half_t v_operand[4];
  half_t Output_local_cast[4];
  int block_start = (BlockIndices[((((int)blockIdx.y) * 1024) + ((int)blockIdx.x))] * 32);
  denominator[0] = 0x0p+0f/*0.000000e+00*/;
  if ((0 <= block_start) && (block_start <= ((int)blockIdx.x))) {
    #pragma unroll
    for (int part = 0; part < 4; ++part) {
      for (int element = 0; element < 8; ++element) {
        ((half_t*)buf_dyn_shmem)[(((((((((int)threadIdx.x) & 15) >> 3) * 2048) + (part * 256)) + ((((int)threadIdx.x) >> 4) * 64)) + (((((int)threadIdx.x) & 7) * 8) ^ (((part & 1) * 32) + ((((int)threadIdx.x) >> 4) * 8)))) + element)] = Q[(((((((int)blockIdx.y) * 2097152) + (((int)blockIdx.x) * 2048)) + (part * 512)) + (((int)threadIdx.x) * 8)) + element)];
      }
    }
    __syncwarp();
    #pragma unroll
    for (int chunk = 0; chunk < 8; ++chunk) {
      for (int element_1 = 0; element_1 < 4; ++element_1) {
        q_local[((chunk * 4) + element_1)] = ((half_t*)buf_dyn_shmem)[(((((chunk >> 2) * 2048) + ((((int)threadIdx.x) & 15) * 64)) + ((((chunk & 3) * 16) + ((((int)threadIdx.x) >> 4) * 4)) ^ ((((int)threadIdx.x) & 7) * 8))) + element_1)];
      }
    }
    __syncwarp();
    #pragma unroll
    for (int part_1 = 0; part_1 < 8; ++part_1) {
      for (int element_2 = 0; element_2 < 8; ++element_2) {
        half_t condval;
        if ((((((((int)threadIdx.x) >> 4) + block_start) >> 2) + part_1) < 256)) {
          condval = K[(((((((int64_t)((int)blockIdx.y)) * (int64_t)131072) + (((int64_t)part_1) * (int64_t)512)) + (((int64_t)block_start) * (int64_t)128)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)) + ((int64_t)element_2))];
        } else {
          condval = half_t(0x0p+0f/*0.000000e+00*/);
        }
        ((half_t*)buf_dyn_shmem)[(((((((((int)threadIdx.x) & 15) >> 3) * 2048) + (part_1 * 256)) + ((((int)threadIdx.x) >> 4) * 64)) + (((((int)threadIdx.x) & 7) * 8) ^ (((part_1 & 1) * 32) + ((((int)threadIdx.x) >> 4) * 8)))) + element_2)] = condval;
      }
    }
    __syncwarp();
    #pragma unroll
    for (int i = 0; i < 2; ++i) {
      float broadcast_var = 0x0p+0f/*0.000000e+00*/;
      *(float4*)(scores + (i * 4)) = make_float4(broadcast_var, broadcast_var, broadcast_var, broadcast_var);
    }
    #pragma unroll
    for (int chunk_1 = 0; chunk_1 < 8; ++chunk_1) {
      #pragma unroll
      for (int key_tile = 0; key_tile < 2; ++key_tile) {
        for (int element_3 = 0; element_3 < 4; ++element_3) {
          k_local[element_3] = ((half_t*)buf_dyn_shmem)[((((((chunk_1 >> 2) * 2048) + (key_tile * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + ((((chunk_1 & 3) * 16) + ((((int)threadIdx.x) >> 4) * 4)) ^ ((((int)threadIdx.x) & 7) * 8))) + element_3)];
        }
        {
      *(((float32x4*)scores) + key_tile) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)k_local) + 0),
                    *(((float16x4*)q_local) + chunk_1),
                    *(((float32x4*)scores) + key_tile));
    };
      }
    }
    #pragma unroll
    for (int i_1 = 0; i_1 < 8; ++i_1) {
      float condval_1;
      if (((((((i_1 >> 2) * 16) + ((((int)threadIdx.x) >> 4) * 4)) + block_start) + (i_1 & 3)) <= ((int)blockIdx.x))) {
        condval_1 = scores[i_1];
      } else {
        condval_1 = -MACART_INF_F;
      }
      scores[i_1] = condval_1;
    }
    block_max[0] = -MACART_INF_F;
    block_max[0] = -MACART_INF_F;
    #pragma unroll
    for (int rv = 0; rv < 8; ++rv) {
      block_max[0] = max(block_max[0], scores[(((rv & 1) * 4) + (rv >> 1))]);
    }
    block_max[0] = tl::AllReduce<tl::MaxOp, 64, 16, 0>::run(block_max[0], (&(((float*)buf_dyn_shmem)[2048])));
    #pragma unroll
    for (int i_2 = 0; i_2 < 8; ++i_2) {
      scores[i_2] = exp2f(((scores[i_2] - block_max[0]) * 0x1.0527dbd5cafffp-3f/*1.275174e-01*/));
    }
    denominator[0] = 0x0p+0f/*0.000000e+00*/;
    #pragma unroll
    for (int rv_1 = 0; rv_1 < 8; ++rv_1) {
      denominator[0] = (denominator[0] + scores[(((rv_1 & 1) * 4) + (rv_1 >> 1))]);
    }
    denominator[0] = tl::AllReduce<tl::SumOp, 64, 16, 0>::run(denominator[0], (&(((float*)buf_dyn_shmem)[2048])));
    #pragma unroll
    for (int i_3 = 0; i_3 < 8; ++i_3) {
      scores[i_3] = (scores[i_3] / denominator[0]);
    }
    #pragma unroll
    for (int i_4 = 0; i_4 < 2; ++i_4) {
      uint2 __1;
      float4 v_ = *(float4*)(scores + (i_4 * 4));
      ((half2*)(&__1))[0] = __float22half2_rn(((float2*)(&v_))[0]);
      ((half2*)(&__1))[1] = __float22half2_rn(((float2*)(&v_))[1]);
      *(uint2*)(scores_half + (i_4 * 4)) = __1;
    }
    __syncwarp();
    #pragma unroll
    for (int key_tile_1 = 0; key_tile_1 < 2; ++key_tile_1) {
      #pragma unroll
      for (int feature_tile = 0; feature_tile < 2; ++feature_tile) {
        #pragma unroll
        for (int row_element = 0; row_element < 4; ++row_element) {
          half_t broadcast_var_1 = half_t(0x0p+0f/*0.000000e+00*/);
          uint2 condval_2;
          if ((((((key_tile_1 * 16) + ((((int)threadIdx.x) >> 4) * 4)) + block_start) + row_element) < 1024)) {
            condval_2 = *(uint2*)(V + (((((((((int64_t)((int)blockIdx.y)) * (int64_t)131072) + (((int64_t)key_tile_1) * (int64_t)2048)) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)4) * (int64_t)512)) + (((int64_t)block_start) * (int64_t)128)) + (((int64_t)row_element) * (int64_t)128)) + (((int64_t)feature_tile) * (int64_t)64)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)4)));
          } else {
            condval_2 = make_uint2(__pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1));
          }
          *(uint2*)(v_tile_local + (row_element * 4)) = condval_2;
        }
        #pragma unroll
        for (int column = 0; column < 4; ++column) {
          for (int row_element_1 = 0; row_element_1 < 4; ++row_element_1) {
            v_column_local[row_element_1] = v_tile_local[((row_element_1 * 4) + column)];
          }
          *(uint2*)(((half_t*)buf_dyn_shmem) + (((((key_tile_1 * 2048) + (column * 512)) + (feature_tile * 256)) + ((((int)threadIdx.x) & 15) * 16)) + ((((((int)threadIdx.x) >> 4) ^ ((((int)threadIdx.x) & 15) >> 2)) ^ column) * 4))) = *(uint2*)(v_column_local + 0);
        }
      }
    }
    __syncwarp();
  }
  #pragma unroll
  for (int i_5 = 0; i_5 < 8; ++i_5) {
    float broadcast_var_2 = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(output_acc + (i_5 * 4)) = make_float4(broadcast_var_2, broadcast_var_2, broadcast_var_2, broadcast_var_2);
  }
  if ((0 <= block_start) && (block_start <= ((int)blockIdx.x))) {
    #pragma unroll
    for (int key_tile_2 = 0; key_tile_2 < 2; ++key_tile_2) {
      #pragma unroll
      for (int feature_chunk = 0; feature_chunk < 8; ++feature_chunk) {
        *(uint2*)(v_operand + 0) = *(uint2*)(((half_t*)buf_dyn_shmem) + (((((key_tile_2 * 2048) + ((((int)threadIdx.x) & 3) * 512)) + (feature_chunk * 64)) + (((((int)threadIdx.x) & 15) >> 2) * 16)) + ((((((int)threadIdx.x) >> 4) ^ (feature_chunk & 3)) ^ (((int)threadIdx.x) & 3)) * 4)));
        {
      *(((float32x4*)output_acc) + feature_chunk) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)v_operand) + 0),
                    *(((float16x4*)scores_half) + key_tile_2),
                    *(((float32x4*)output_acc) + feature_chunk));
    };
      }
    }
  } else {
    #pragma unroll
    for (int i_6 = 0; i_6 < 32; ++i_6) {
      output_acc[i_6] = (output_acc[i_6] / denominator[0]);
    }
  }
  #pragma unroll
  for (int i_7 = 0; i_7 < 8; ++i_7) {
    uint2 __2;
    float4 v__1 = *(float4*)(output_acc + (i_7 * 4));
    ((half2*)(&__2))[0] = __float22half2_rn(((float2*)(&v__1))[0]);
    ((half2*)(&__2))[1] = __float22half2_rn(((float2*)(&v__1))[1]);
    *(uint2*)(Output_local_cast + 0) = __2;
    *(uint2*)(Output + (((((((int)blockIdx.y) * 2097152) + (((int)blockIdx.x) * 2048)) + ((((int)threadIdx.x) & 15) * 128)) + (i_7 * 16)) + ((((int)threadIdx.x) >> 4) * 4))) = *(uint2*)(Output_local_cast + 0);
  }
}

