#include <tl_templates/maca/gemm.h>
#include <tl_templates/maca/copy.h>
#include <tl_templates/maca/reduce.h>
#include <tl_templates/maca/intrin.h>
#include <tl_templates/maca/atomic.h>
#include <tl_templates/maca/threadblock_swizzle.h>
#include <tl_templates/maca/debug.h>

extern "C" __global__ void native_sparse_attention_kernel(const int* __restrict__ BlockIndices, const half_t* __restrict__ K, half_t* __restrict__ Output, const half_t* __restrict__ Q, const half_t* __restrict__ V);
extern "C" __global__ void __launch_bounds__(128, 1) native_sparse_attention_kernel(const int* __restrict__ BlockIndices, const half_t* __restrict__ K, half_t* __restrict__ Output, const half_t* __restrict__ Q, const half_t* __restrict__ V) {
  extern __shared__ __align__(1024) uchar buf_dyn_shmem[];
  float output_acc[8];
  float denominator[1];
  float block_max[1];
  float scores[4];
  float previous_max[1];
  float rescale[1];
  float block_sum[1];
  half_t scores_half_local_cast[4];
  half_t output_shared_local_cast_1[4];
  *(uint4*)(((half_t*)buf_dyn_shmem) + (((((((int)threadIdx.x) >> 3) * 64) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(Q + (((((int)blockIdx.y) * 1048576) + (((int)blockIdx.x) * 1024)) + (((int)threadIdx.x) * 8)));
  #pragma unroll
  for (int i = 0; i < 2; ++i) {
    float broadcast_var = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(output_acc + (i * 4)) = make_float4(broadcast_var, broadcast_var, broadcast_var, broadcast_var);
  }
  denominator[0] = 0x0p+0f/*0.000000e+00*/;
  block_max[0] = -MACART_INF_F;
  for (int segment = 0; segment < 4; ++segment) {
    int first_start = (BlockIndices[(((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8)) + (segment * 2))] * 16);
    __syncthreads();
    if ((0 <= first_start) && (first_start <= ((int)blockIdx.x))) {
      for (int local_selected = 0; local_selected < 2; ++local_selected) {
        int block_start = (BlockIndices[((((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8)) + (segment * 2)) + local_selected)] * 16);
        if ((0 <= block_start) && (block_start <= ((int)blockIdx.x))) {
          half_t broadcast_var_1 = half_t(0x0p+0f/*0.000000e+00*/);
          uint4 condval;
          if ((((((int)threadIdx.x) >> 3) + block_start) < 1024)) {
            condval = *(uint4*)(K + (((((int64_t)((int)blockIdx.y)) * (int64_t)65536) + (((int64_t)block_start) * (int64_t)64)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)));
          } else {
            condval = make_uint4(__pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1));
          }
          *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((local_selected * 1024) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 1024)) = condval;
          half_t broadcast_var_2 = half_t(0x0p+0f/*0.000000e+00*/);
          uint4 condval_1;
          if ((((((int)threadIdx.x) >> 3) + block_start) < 1024)) {
            condval_1 = *(uint4*)(V + (((((int64_t)((int)blockIdx.y)) * (int64_t)65536) + (((int64_t)block_start) * (int64_t)64)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)));
          } else {
            condval_1 = make_uint4(__pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2));
          }
          *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((local_selected * 1024) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 3072)) = condval_1;
        } else {
          half_t broadcast_var_3 = half_t(0x0p+0f/*0.000000e+00*/);
          *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((local_selected * 1024) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 1024)) = make_uint4(__pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3));
          half_t broadcast_var_4 = half_t(0x0p+0f/*0.000000e+00*/);
          *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((local_selected * 1024) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 3072)) = make_uint4(__pack_half2(broadcast_var_4, broadcast_var_4), __pack_half2(broadcast_var_4, broadcast_var_4), __pack_half2(broadcast_var_4, broadcast_var_4), __pack_half2(broadcast_var_4, broadcast_var_4));
        }
      }
      float broadcast_var_5 = 0x0p+0f/*0.000000e+00*/;
      *(float4*)(scores + 0) = make_float4(broadcast_var_5, broadcast_var_5, broadcast_var_5, broadcast_var_5);
    }
    __syncthreads();
    if ((0 <= first_start) && (first_start <= ((int)blockIdx.x))) {
      half_t A_local[4];
      half_t B_local[4];
      for (int ki = 0; ki < 4; ++ki) {
        *(uint2*)(A_local + 0) = *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((((int)threadIdx.x) & 15) * 64) + (((((((int)threadIdx.x) & 7) >> 2) + (ki >> 1)) & 1) * 32)) + (((((((int)threadIdx.x) & 3) >> 1) + (ki & 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 63) >> 5) + (((int)threadIdx.x) & 1)) & 1) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4)));
        *(uint2*)(B_local + 0) = *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((((((int)threadIdx.x) >> 6) * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + (ki >> 1)) & 1) * 32)) + (((((((int)threadIdx.x) & 3) >> 1) + (ki & 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 63) >> 5) + (((int)threadIdx.x) & 1)) & 1) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4)) + 1024));
        {
      *(((float32x4*)scores) + 0) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)B_local) + 0),
                    *(((float16x4*)A_local) + 0),
                    *(((float32x4*)scores) + 0));
    };
      }
      for (int i_s = 0; i_s < 4; ++i_s) {
        int block_start_1 = (BlockIndices[((((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8)) + (segment * 2)) + (((int)threadIdx.x) >> 6))] * 16);
        float condval_2;
        if ((((0 <= block_start_1) && (block_start_1 <= ((int)blockIdx.x))) && ((((((((int)threadIdx.x) & 63) >> 4) * 4) + block_start_1) + i_s) <= ((int)blockIdx.x)))) {
          condval_2 = scores[i_s];
        } else {
          condval_2 = -MACART_INF_F;
        }
        scores[i_s] = condval_2;
      }
      previous_max[0] = block_max[0];
      block_max[0] = -MACART_INF_F;
    }
    __syncthreads();
    if ((0 <= first_start) && (first_start <= ((int)blockIdx.x))) {
      block_max[0] = -MACART_INF_F;
      #pragma unroll
      for (int rv = 0; rv < 4; ++rv) {
        block_max[0] = max(block_max[0], scores[rv]);
      }
      block_max[0] = tl::AllReduce<tl::MaxOp, 128, 16, 0>::run(block_max[0], (&(((float*)buf_dyn_shmem)[2816])));
      rescale[0] = exp2f(((previous_max[0] * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/) - (block_max[0] * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/)));
      #pragma unroll
      for (int i_1 = 0; i_1 < 4; ++i_1) {
        scores[i_1] = exp2f(((scores[i_1] * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/) - (block_max[0] * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/)));
      }
      block_sum[0] = 0x0p+0f/*0.000000e+00*/;
      #pragma unroll
      for (int rv_1 = 0; rv_1 < 4; ++rv_1) {
        block_sum[0] = (block_sum[0] + scores[rv_1]);
      }
      block_sum[0] = tl::AllReduce<tl::SumOp, 128, 16, 0>::run(block_sum[0], (&(((float*)buf_dyn_shmem)[2944])));
      denominator[0] = ((denominator[0] * rescale[0]) + block_sum[0]);
    }
    __syncthreads();
    if ((0 <= first_start) && (first_start <= ((int)blockIdx.x))) {
      uint2 __1;
      float4 v_ = *(float4*)(scores + 0);
      ((half2*)(&__1))[0] = __float22half2_rn(((float2*)(&v_))[0]);
      ((half2*)(&__1))[1] = __float22half2_rn(((float2*)(&v_))[1]);
      *(uint2*)(scores_half_local_cast + 0) = __1;
      *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((((int)threadIdx.x) & 15) * 32) + ((((((int)threadIdx.x) >> 6) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 16)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4)) + 5120)) = *(uint2*)(scores_half_local_cast + 0);
      #pragma unroll
      for (int i_2 = 0; i_2 < 8; ++i_2) {
        output_acc[i_2] = (output_acc[i_2] * rescale[0]);
      }
    }
    __syncthreads();
    if ((0 <= first_start) && (first_start <= ((int)blockIdx.x))) {
      half_t A_local_1[4];
      half_t B_local_1[8];
      for (int ki_1 = 0; ki_1 < 2; ++ki_1) {
        *(uint2*)(A_local_1 + 0) = *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((((int)threadIdx.x) & 15) * 32) + (((((((int)threadIdx.x) & 7) >> 2) + ki_1) & 1) * 16)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4)) + 5120));
        for (int j = 0; j < 2; ++j) {
          for (int local_id = 0; local_id < 4; ++local_id) {
            B_local_1[((j * 4) + local_id)] = ((half_t*)buf_dyn_shmem)[((((((((ki_1 * 1024) + (((((int)threadIdx.x) & 63) >> 4) * 256)) + (local_id * 64)) + ((((((int)threadIdx.x) >> 6) + ((((int)threadIdx.x) & 31) >> 4)) & 1) * 32)) + ((((local_id >> 1) + j) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (local_id & 1)) & 1) * 8)) + (((int)threadIdx.x) & 7)) + 3072)];
          }
        }
        for (int j_1 = 0; j_1 < 2; ++j_1) {
          {
      *(((float32x4*)output_acc) + j_1) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)B_local_1) + j_1),
                    *(((float16x4*)A_local_1) + 0),
                    *(((float32x4*)output_acc) + j_1));
    };
        }
      }
    }
  }
  #pragma unroll
  for (int i_3 = 0; i_3 < 8; ++i_3) {
    output_acc[i_3] = (output_acc[i_3] / denominator[0]);
  }
  #pragma unroll
  for (int i_4 = 0; i_4 < 2; ++i_4) {
    uint2 __2;
    float4 v__1 = *(float4*)(output_acc + (i_4 * 4));
    ((half2*)(&__2))[0] = __float22half2_rn(((float2*)(&v__1))[0]);
    ((half2*)(&__2))[1] = __float22half2_rn(((float2*)(&v__1))[1]);
    *(uint2*)(output_shared_local_cast_1 + 0) = __2;
    *(uint2*)(((half_t*)buf_dyn_shmem) + (((((((int)threadIdx.x) & 15) * 64) + ((((int)threadIdx.x) >> 6) * 32)) + (i_4 * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4))) = *(uint2*)(output_shared_local_cast_1 + 0);
  }
  __syncthreads();
  *(uint4*)(Output + (((((int)blockIdx.y) * 1048576) + (((int)blockIdx.x) * 1024)) + (((int)threadIdx.x) * 8))) = *(uint4*)(((half_t*)buf_dyn_shmem) + (((int)threadIdx.x) * 8));
}

