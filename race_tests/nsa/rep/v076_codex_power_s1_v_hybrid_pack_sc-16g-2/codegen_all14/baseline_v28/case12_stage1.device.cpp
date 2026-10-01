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
  half_t q_shared[16];
  float output_acc[16];
  float denominator[1];
  float block_max[1];
  float scores[4];
  float previous_max[1];
  float rescale[1];
  float block_sum[1];
  half_t scores_half[4];
  half_t k_local[8];
  half_t output_shared_local_cast[4];
  #pragma unroll
  for (int i = 0; i < 2; ++i) {
    *(uint4*)(q_shared + (i * 8)) = *(uint4*)(Q + (((((((int)blockIdx.z) * 1048576) + (((int)blockIdx.x) * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (i * 32)) + ((((int)threadIdx.x) >> 4) * 8)));
  }
  #pragma unroll
  for (int i_1 = 0; i_1 < 4; ++i_1) {
    float broadcast_var = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(output_acc + (i_1 * 4)) = make_float4(broadcast_var, broadcast_var, broadcast_var, broadcast_var);
  }
  denominator[0] = 0x0p+0f/*0.000000e+00*/;
  block_max[0] = -MACART_INF_F;
  for (int selected = 0; selected < 8; ++selected) {
    int block_start = (BlockIndices[(((((int)blockIdx.z) * 8192) + (((int)blockIdx.x) * 8)) + selected)] * 16);
    if ((0 <= block_start) && (block_start <= ((int)blockIdx.x))) {
      float broadcast_var_1 = 0x0p+0f/*0.000000e+00*/;
      *(float4*)(scores + 0) = make_float4(broadcast_var_1, broadcast_var_1, broadcast_var_1, broadcast_var_1);
      for (int ki = 0; ki < 2; ++ki) {
        half_t broadcast_var_2 = half_t(0x0p+0f/*0.000000e+00*/);
        uint4 condval;
        if (((block_start + (((int)threadIdx.x) & 15)) < 1024)) {
          condval = *(uint4*)(K + (((((((int64_t)((int)blockIdx.z)) * (int64_t)65536) + (((int64_t)block_start) * (int64_t)64)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)64)) + (((int64_t)ki) * (int64_t)32)) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)4) * (int64_t)8)));
        } else {
          condval = make_uint4(__pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2));
        }
        *(uint4*)(k_local + 0) = condval;
        for (int kp = 0; kp < 2; ++kp) {
          {
      *(((float32x4*)scores) + 0) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)k_local) + kp),
                    *(((float16x4*)q_shared) + ((ki * 2) + kp)),
                    *(((float32x4*)scores) + 0));
    };
        }
      }
      if (((int)blockIdx.x) < (block_start + 16)) {
        #pragma unroll
        for (int i_2 = 0; i_2 < 4; ++i_2) {
          float condval_1;
          if ((((((((int)threadIdx.x) >> 4) * 4) + block_start) + i_2) <= ((int)blockIdx.x))) {
            condval_1 = scores[i_2];
          } else {
            condval_1 = -MACART_INF_F;
          }
          scores[i_2] = condval_1;
        }
      }
      previous_max[0] = block_max[0];
      block_max[0] = -MACART_INF_F;
    }
    __syncthreads();
    if ((0 <= block_start) && (block_start <= ((int)blockIdx.x))) {
      block_max[0] = -MACART_INF_F;
      #pragma unroll
      for (int rv = 0; rv < 4; ++rv) {
        block_max[0] = max(block_max[0], scores[rv]);
      }
      block_max[0] = tl::AllReduce<tl::MaxOp, 64, 16, 0>::run(block_max[0], (&(((float*)buf_dyn_shmem)[576])));
      rescale[0] = exp2f(((previous_max[0] * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/) - (block_max[0] * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/)));
      #pragma unroll
      for (int i_3 = 0; i_3 < 4; ++i_3) {
        scores[i_3] = exp2f(((scores[i_3] * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/) - (block_max[0] * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/)));
      }
      block_sum[0] = 0x0p+0f/*0.000000e+00*/;
      #pragma unroll
      for (int rv_1 = 0; rv_1 < 4; ++rv_1) {
        block_sum[0] = (block_sum[0] + scores[rv_1]);
      }
      block_sum[0] = tl::AllReduce<tl::SumOp, 64, 16, 0>::run(block_sum[0], (&(((float*)buf_dyn_shmem)[512])));
      denominator[0] = ((denominator[0] * rescale[0]) + block_sum[0]);
      uint2 __1;
      float4 v_ = *(float4*)(scores + 0);
      ((half2*)(&__1))[0] = __float22half2_rn(((float2*)(&v_))[0]);
      ((half2*)(&__1))[1] = __float22half2_rn(((float2*)(&v_))[1]);
      *(uint2*)(scores_half + 0) = __1;
      #pragma unroll
      for (int i_4 = 0; i_4 < 16; ++i_4) {
        output_acc[i_4] = (output_acc[i_4] * rescale[0]);
      }
    }
    __syncthreads();
    if ((0 <= block_start) && (block_start <= ((int)blockIdx.x))) {
      #pragma unroll
      for (int i_5 = 0; i_5 < 2; ++i_5) {
        half_t broadcast_var_3 = half_t(0x0p+0f/*0.000000e+00*/);
        uint4 condval_2;
        if ((((((((int)threadIdx.x) >> 3) + block_start) >> 3) + i_5) < 128)) {
          condval_2 = *(uint4*)(V + ((((((int64_t)((int)blockIdx.z)) * (int64_t)65536) + (((int64_t)i_5) * (int64_t)512)) + (((int64_t)block_start) * (int64_t)64)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)));
        } else {
          condval_2 = make_uint4(__pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3));
        }
        *(uint4*)(((half_t*)buf_dyn_shmem) + ((i_5 * 512) + (((int)threadIdx.x) * 8))) = condval_2;
      }
    }
    __syncthreads();
    if ((0 <= block_start) && (block_start <= ((int)blockIdx.x))) {
      half_t B_local[16];
      for (int j = 0; j < 4; ++j) {
        for (int local_id = 0; local_id < 4; ++local_id) {
          B_local[((j * 4) + local_id)] = ((half_t*)buf_dyn_shmem)[(((((((int)threadIdx.x) >> 4) * 256) + (local_id * 64)) + (j * 16)) + (((int)threadIdx.x) & 15))];
        }
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
  #pragma unroll
  for (int i_6 = 0; i_6 < 16; ++i_6) {
    output_acc[i_6] = (output_acc[i_6] / denominator[0]);
  }
  __syncthreads();
  #pragma unroll
  for (int i_7 = 0; i_7 < 4; ++i_7) {
    uint2 __2;
    float4 v__1 = *(float4*)(output_acc + (i_7 * 4));
    ((half2*)(&__2))[0] = __float22half2_rn(((float2*)(&v__1))[0]);
    ((half2*)(&__2))[1] = __float22half2_rn(((float2*)(&v__1))[1]);
    *(uint2*)(output_shared_local_cast + 0) = __2;
    *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((int)threadIdx.x) & 15) * 64) + (i_7 * 16)) + ((((int)threadIdx.x) >> 4) * 4))) = *(uint2*)(output_shared_local_cast + 0);
  }
  __syncthreads();
  #pragma unroll
  for (int i_8 = 0; i_8 < 2; ++i_8) {
    *(uint4*)(Output + ((((((int)blockIdx.z) * 1048576) + (((int)blockIdx.x) * 1024)) + (i_8 * 512)) + (((int)threadIdx.x) * 8))) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((i_8 * 512) + (((int)threadIdx.x) * 8)));
  }
}

