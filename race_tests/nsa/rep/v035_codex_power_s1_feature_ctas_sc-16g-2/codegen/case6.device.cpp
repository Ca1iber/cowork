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
  float output_acc[16];
  half_t k_local[4];
  half_t Output_local_cast[4];
  int block_start = (BlockIndices[((((int)blockIdx.y) * 1024) + (((int)blockIdx.x) >> 1))] * 32);
  denominator[0] = 0x0p+0f/*0.000000e+00*/;
  if ((0 <= block_start) && (block_start <= (((int)blockIdx.x) >> 1))) {
    #pragma unroll
    for (int i = 0; i < 4; ++i) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((((((int)threadIdx.x) & 15) >> 3) * 1024) + (i * 256)) + ((((int)threadIdx.x) >> 4) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + (i & 1)) & 1) * 32)) + ((((((int)threadIdx.x) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(Q + ((((((int)blockIdx.y) * 2097152) + ((((int)blockIdx.x) >> 1) * 2048)) + (i * 512)) + (((int)threadIdx.x) * 8)));
    }
    __syncwarp();
    #pragma unroll
    for (int chunk = 0; chunk < 8; ++chunk) {
      *(uint2*)(q_local + (chunk * 4)) = *(uint2*)(((half_t*)buf_dyn_shmem) + (((((((chunk >> 2) * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ((chunk & 3) >> 1)) & 1) * 32)) + (((((((int)threadIdx.x) & 3) >> 1) + (chunk & 1)) & 1) * 16)) + ((((((int)threadIdx.x) >> 5) + (((int)threadIdx.x) & 1)) & 1) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4)));
    }
    __syncwarp();
    #pragma unroll
    for (int i_1 = 0; i_1 < 8; ++i_1) {
      half_t broadcast_var = half_t(0x0p+0f/*0.000000e+00*/);
      uint4 condval;
      if ((((((((int)threadIdx.x) >> 4) + block_start) >> 2) + i_1) < 256)) {
        condval = *(uint4*)(K + ((((((int64_t)((int)blockIdx.y)) * (int64_t)131072) + (((int64_t)i_1) * (int64_t)512)) + (((int64_t)block_start) * (int64_t)128)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)));
      } else {
        condval = make_uint4(__pack_half2(broadcast_var, broadcast_var), __pack_half2(broadcast_var, broadcast_var), __pack_half2(broadcast_var, broadcast_var), __pack_half2(broadcast_var, broadcast_var));
      }
      *(uint4*)(((half_t*)buf_dyn_shmem) + (((((((((((int)threadIdx.x) & 15) >> 3) * 2048) + (i_1 * 256)) + ((((int)threadIdx.x) >> 4) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + (i_1 & 1)) & 1) * 32)) + ((((((int)threadIdx.x) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 2048)) = condval;
    }
    __syncwarp();
    #pragma unroll
    for (int i_2 = 0; i_2 < 2; ++i_2) {
      float broadcast_var_1 = 0x0p+0f/*0.000000e+00*/;
      *(float4*)(scores + (i_2 * 4)) = make_float4(broadcast_var_1, broadcast_var_1, broadcast_var_1, broadcast_var_1);
    }
    #pragma unroll
    for (int chunk_1 = 0; chunk_1 < 8; ++chunk_1) {
      #pragma unroll
      for (int key_tile = 0; key_tile < 2; ++key_tile) {
        *(uint2*)(k_local + 0) = *(uint2*)(((half_t*)buf_dyn_shmem) + (((((((((chunk_1 >> 2) * 2048) + (key_tile * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ((chunk_1 & 3) >> 1)) & 1) * 32)) + (((((((int)threadIdx.x) & 3) >> 1) + (chunk_1 & 1)) & 1) * 16)) + ((((((int)threadIdx.x) >> 5) + (((int)threadIdx.x) & 1)) & 1) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4)) + 2048));
        {
      *(((float32x4*)scores) + key_tile) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)k_local) + 0),
                    *(((float16x4*)q_local) + chunk_1),
                    *(((float32x4*)scores) + key_tile));
    };
      }
    }
    #pragma unroll
    for (int i_3 = 0; i_3 < 8; ++i_3) {
      float condval_1;
      if (((((((i_3 >> 2) * 16) + ((((int)threadIdx.x) >> 4) * 4)) + block_start) + (i_3 & 3)) <= (((int)blockIdx.x) >> 1))) {
        condval_1 = scores[i_3];
      } else {
        condval_1 = -MACART_INF_F;
      }
      scores[i_3] = condval_1;
    }
    block_max[0] = -MACART_INF_F;
    block_max[0] = -MACART_INF_F;
    #pragma unroll
    for (int rv = 0; rv < 8; ++rv) {
      block_max[0] = max(block_max[0], scores[(((rv & 1) * 4) + (rv >> 1))]);
    }
    block_max[0] = tl::AllReduce<tl::MaxOp, 64, 16, 0>::run(block_max[0], (&(((float*)buf_dyn_shmem)[0])));
    #pragma unroll
    for (int i_4 = 0; i_4 < 8; ++i_4) {
      scores[i_4] = exp2f(((scores[i_4] - block_max[0]) * 0x1.0527dbd5cafffp-3f/*1.275174e-01*/));
    }
    denominator[0] = 0x0p+0f/*0.000000e+00*/;
    #pragma unroll
    for (int rv_1 = 0; rv_1 < 8; ++rv_1) {
      denominator[0] = (denominator[0] + scores[(((rv_1 & 1) * 4) + (rv_1 >> 1))]);
    }
    denominator[0] = tl::AllReduce<tl::SumOp, 64, 16, 0>::run(denominator[0], (&(((float*)buf_dyn_shmem)[0])));
    #pragma unroll
    for (int i_5 = 0; i_5 < 8; ++i_5) {
      scores[i_5] = (scores[i_5] / denominator[0]);
    }
    #pragma unroll
    for (int i_6 = 0; i_6 < 2; ++i_6) {
      uint2 __1;
      float4 v_ = *(float4*)(scores + (i_6 * 4));
      ((half2*)(&__1))[0] = __float22half2_rn(((float2*)(&v_))[0]);
      ((half2*)(&__1))[1] = __float22half2_rn(((float2*)(&v_))[1]);
      *(uint2*)(scores_half + (i_6 * 4)) = __1;
    }
    __syncwarp();
    #pragma unroll
    for (int i_7 = 0; i_7 < 4; ++i_7) {
      half_t broadcast_var_2 = half_t(0x0p+0f/*0.000000e+00*/);
      uint4 condval_2;
      if ((((((((int)threadIdx.x) >> 3) + block_start) >> 3) + i_7) < 128)) {
        condval_2 = *(uint4*)(V + ((((((((int64_t)((int)blockIdx.y)) * (int64_t)131072) + (((int64_t)i_7) * (int64_t)1024)) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)3) * (int64_t)128)) + (((int64_t)block_start) * (int64_t)128)) + ((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)64)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)7) * (int64_t)8)));
      } else {
        condval_2 = make_uint4(__pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2));
      }
      *(uint4*)(((half_t*)buf_dyn_shmem) + (((((i_7 * 512) + ((((int)threadIdx.x) >> 3) * 64)) + ((((((int)threadIdx.x) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = condval_2;
    }
    __syncwarp();
  }
  #pragma unroll
  for (int i_8 = 0; i_8 < 4; ++i_8) {
    float broadcast_var_3 = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(output_acc + (i_8 * 4)) = make_float4(broadcast_var_3, broadcast_var_3, broadcast_var_3, broadcast_var_3);
  }
  if ((0 <= block_start) && (block_start <= (((int)blockIdx.x) >> 1))) {
    half_t B_local[16];
    for (int ki = 0; ki < 2; ++ki) {
      for (int j = 0; j < 4; ++j) {
        for (int local_id = 0; local_id < 4; ++local_id) {
          B_local[((j * 4) + local_id)] = ((half_t*)buf_dyn_shmem)[(((((((ki * 1024) + ((((int)threadIdx.x) >> 4) * 256)) + (local_id * 64)) + (((((((int)threadIdx.x) & 31) >> 4) + (j >> 1)) & 1) * 32)) + ((((local_id >> 1) + (j & 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (local_id & 1)) & 1) * 8)) + (((int)threadIdx.x) & 7))];
        }
      }
      for (int j_1 = 0; j_1 < 4; ++j_1) {
        {
      *(((float32x4*)output_acc) + j_1) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)B_local) + j_1),
                    *(((float16x4*)scores_half) + ki),
                    *(((float32x4*)output_acc) + j_1));
    };
      }
    }
  } else {
    #pragma unroll
    for (int i_9 = 0; i_9 < 16; ++i_9) {
      output_acc[i_9] = (output_acc[i_9] / denominator[0]);
    }
  }
  #pragma unroll
  for (int i_10 = 0; i_10 < 4; ++i_10) {
    uint2 __2;
    float4 v__1 = *(float4*)(output_acc + (i_10 * 4));
    ((half2*)(&__2))[0] = __float22half2_rn(((float2*)(&v__1))[0]);
    ((half2*)(&__2))[1] = __float22half2_rn(((float2*)(&v__1))[1]);
    *(uint2*)(Output_local_cast + 0) = __2;
    *(uint2*)(Output + ((((((((int)blockIdx.y) * 2097152) + ((((int)blockIdx.x) >> 1) * 2048)) + ((((int)threadIdx.x) & 15) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (i_10 * 16)) + ((((int)threadIdx.x) >> 4) * 4))) = *(uint2*)(Output_local_cast + 0);
  }
}

