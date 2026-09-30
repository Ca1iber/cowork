#include <tl_templates/maca/gemm.h>
#include <tl_templates/maca/copy.h>
#include <tl_templates/maca/reduce.h>
#include <tl_templates/maca/intrin.h>
#include <tl_templates/maca/atomic.h>
#include <tl_templates/maca/threadblock_swizzle.h>
#include <tl_templates/maca/debug.h>

extern "C" __global__ void native_sparse_attention_kernel(const int* __restrict__ BlockIndices, const half_t* __restrict__ K, half_t* __restrict__ Output, const half_t* __restrict__ Q, const half_t* __restrict__ V);
extern "C" __global__ void __launch_bounds__(256, 1) native_sparse_attention_kernel(const int* __restrict__ BlockIndices, const half_t* __restrict__ K, half_t* __restrict__ Output, const half_t* __restrict__ Q, const half_t* __restrict__ V) {
  extern __shared__ __align__(1024) uchar buf_dyn_shmem[];
  float scores[8];
  float row_max[1];
  float denominator[1];
  half_t scores_half_local_cast[4];
  float output_acc[4];
  half_t output_shared_local_cast_1[4];
  *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((((int)threadIdx.x) >> 4) * 64) + (((((((int)threadIdx.x) & 127) >> 6) + ((((int)threadIdx.x) & 15) >> 3)) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 8)) + ((((int)threadIdx.x) & 1) * 4))) = *(uint2*)(Q + (((((int)blockIdx.y) * 1048576) + (((int)blockIdx.x) * 1024)) + (((int)threadIdx.x) * 4)));
  for (int selected = 0; selected < 8; ++selected) {
    int block_start = (BlockIndices[(((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8)) + selected)] * 16);
    if ((0 <= block_start) && (block_start <= ((int)blockIdx.x))) {
      half_t broadcast_var = half_t(0x0p+0f/*0.000000e+00*/);
      uint2 condval;
      if ((((((int)threadIdx.x) >> 4) + block_start) < 1024)) {
        condval = *(uint2*)(K + (((((int64_t)((int)blockIdx.y)) * (int64_t)65536) + (((int64_t)block_start) * (int64_t)64)) + (((int64_t)((int)threadIdx.x)) * (int64_t)4)));
      } else {
        condval = make_uint2(__pack_half2(broadcast_var, broadcast_var), __pack_half2(broadcast_var, broadcast_var));
      }
      *(uint2*)(((half_t*)buf_dyn_shmem) + (((((((selected * 1024) + ((((int)threadIdx.x) >> 4) * 64)) + (((((((int)threadIdx.x) & 127) >> 6) + ((((int)threadIdx.x) & 15) >> 3)) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 1024)) = condval;
      half_t broadcast_var_1 = half_t(0x0p+0f/*0.000000e+00*/);
      uint2 condval_1;
      if ((((((int)threadIdx.x) >> 4) + block_start) < 1024)) {
        condval_1 = *(uint2*)(V + (((((int64_t)((int)blockIdx.y)) * (int64_t)65536) + (((int64_t)block_start) * (int64_t)64)) + (((int64_t)((int)threadIdx.x)) * (int64_t)4)));
      } else {
        condval_1 = make_uint2(__pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1));
      }
      *(uint2*)(((half_t*)buf_dyn_shmem) + (((((((selected * 1024) + ((((int)threadIdx.x) >> 4) * 64)) + (((((((int)threadIdx.x) & 127) >> 6) + ((((int)threadIdx.x) & 15) >> 3)) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 9216)) = condval_1;
    } else {
      half_t broadcast_var_2 = half_t(0x0p+0f/*0.000000e+00*/);
      *(uint2*)(((half_t*)buf_dyn_shmem) + (((((((selected * 1024) + ((((int)threadIdx.x) >> 4) * 64)) + (((((((int)threadIdx.x) & 127) >> 6) + ((((int)threadIdx.x) & 15) >> 3)) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 1024)) = make_uint2(__pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2));
      half_t broadcast_var_3 = half_t(0x0p+0f/*0.000000e+00*/);
      *(uint2*)(((half_t*)buf_dyn_shmem) + (((((((selected * 1024) + ((((int)threadIdx.x) >> 4) * 64)) + (((((((int)threadIdx.x) & 127) >> 6) + ((((int)threadIdx.x) & 15) >> 3)) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 9216)) = make_uint2(__pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3));
    }
  }
  #pragma unroll
  for (int i = 0; i < 2; ++i) {
    float broadcast_var_4 = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(scores + (i * 4)) = make_float4(broadcast_var_4, broadcast_var_4, broadcast_var_4, broadcast_var_4);
  }
  half_t A_local[4];
  half_t B_local[8];
  __syncthreads();
  for (int ki = 0; ki < 4; ++ki) {
    *(uint2*)(A_local + 0) = *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((((int)threadIdx.x) & 15) * 64) + (((((((int)threadIdx.x) & 7) >> 2) + (ki >> 1)) & 1) * 32)) + (((((((int)threadIdx.x) & 3) >> 1) + (ki & 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 63) >> 5) + (((int)threadIdx.x) & 1)) & 1) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4)));
    for (int j = 0; j < 2; ++j) {
      *(uint2*)(B_local + (j * 4)) = *(uint2*)(((half_t*)buf_dyn_shmem) + (((((((((((int)threadIdx.x) >> 6) * 2048) + (j * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + (ki >> 1)) & 1) * 32)) + (((((((int)threadIdx.x) & 3) >> 1) + (ki & 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 63) >> 5) + (((int)threadIdx.x) & 1)) & 1) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4)) + 1024));
    }
    for (int j_1 = 0; j_1 < 2; ++j_1) {
      {
      *(((float32x4*)scores) + j_1) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)B_local) + j_1),
                    *(((float16x4*)A_local) + 0),
                    *(((float32x4*)scores) + j_1));
    };
    }
  }
  #pragma unroll
  for (int i_1 = 0; i_1 < 2; ++i_1) {
    for (int vec_s = 0; vec_s < 4; ++vec_s) {
      int block_start_1 = (BlockIndices[((((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) >> 6) * 2)) + i_1)] * 16);
      float condval_2;
      if ((((0 <= block_start_1) && (block_start_1 <= ((int)blockIdx.x))) && ((((((((int)threadIdx.x) & 63) >> 4) * 4) + block_start_1) + vec_s) <= ((int)blockIdx.x)))) {
        condval_2 = scores[((i_1 * 4) + vec_s)];
      } else {
        condval_2 = -MACART_INF_F;
      }
      scores[((i_1 * 4) + vec_s)] = condval_2;
    }
  }
  row_max[0] = -MACART_INF_F;
  #pragma unroll
  for (int rv = 0; rv < 8; ++rv) {
    row_max[0] = max(row_max[0], scores[(((rv & 1) * 4) + (rv >> 1))]);
  }
  __syncthreads();
  row_max[0] = tl::AllReduce<tl::MaxOp, 256, 64, 0>::run(row_max[0], (&(((float*)buf_dyn_shmem)[0])));
  __syncthreads();
  row_max[0] = tl::AllReduce<tl::MaxOp, 64, 16, 0>::run(row_max[0], (&(((float*)buf_dyn_shmem)[0])));
  #pragma unroll
  for (int i_2 = 0; i_2 < 8; ++i_2) {
    scores[i_2] = exp2f(((scores[i_2] * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/) - (row_max[0] * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/)));
  }
  denominator[0] = 0x0p+0f/*0.000000e+00*/;
  #pragma unroll
  for (int rv_1 = 0; rv_1 < 8; ++rv_1) {
    denominator[0] = (denominator[0] + scores[(((rv_1 & 1) * 4) + (rv_1 >> 1))]);
  }
  __syncthreads();
  denominator[0] = tl::AllReduce<tl::SumOp, 256, 64, 0>::run(denominator[0], (&(((float*)buf_dyn_shmem)[0])));
  __syncthreads();
  denominator[0] = tl::AllReduce<tl::SumOp, 64, 16, 0>::run(denominator[0], (&(((float*)buf_dyn_shmem)[0])));
  __syncthreads();
  #pragma unroll
  for (int i_3 = 0; i_3 < 2; ++i_3) {
    uint2 __1;
    float4 v_ = *(float4*)(scores + (i_3 * 4));
    ((half2*)(&__1))[0] = __float22half2_rn(((float2*)(&v_))[0]);
    ((half2*)(&__1))[1] = __float22half2_rn(((float2*)(&v_))[1]);
    *(uint2*)(scores_half_local_cast + 0) = __1;
    *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((((((((int)threadIdx.x) >> 6) * 32) + (i_3 * 16)) >> 6) * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 127) >> 6) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 3) >> 1) + i_3) & 1) * 16)) + (((((((int)threadIdx.x) & 63) >> 5) + (((int)threadIdx.x) & 1)) & 1) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4))) = *(uint2*)(scores_half_local_cast + 0);
  }
  float broadcast_var_5 = 0x0p+0f/*0.000000e+00*/;
  *(float4*)(output_acc + 0) = make_float4(broadcast_var_5, broadcast_var_5, broadcast_var_5, broadcast_var_5);
  half_t A_local_1[4];
  half_t B_local_1[4];
  __syncthreads();
  for (int ki_1 = 0; ki_1 < 8; ++ki_1) {
    *(uint2*)(A_local_1 + 0) = *(uint2*)(((half_t*)buf_dyn_shmem) + (((((((ki_1 >> 2) * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ((ki_1 & 3) >> 1)) & 1) * 32)) + (((((((int)threadIdx.x) & 3) >> 1) + (ki_1 & 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 63) >> 5) + (((int)threadIdx.x) & 1)) & 1) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4)));
    for (int local_id = 0; local_id < 4; ++local_id) {
      B_local_1[local_id] = ((half_t*)buf_dyn_shmem)[((((((((ki_1 * 1024) + (((((int)threadIdx.x) & 63) >> 4) * 256)) + (local_id * 64)) + ((((((int)threadIdx.x) >> 7) + ((((int)threadIdx.x) & 31) >> 4)) & 1) * 32)) + (((((((int)threadIdx.x) & 127) >> 6) + (local_id >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (local_id & 1)) & 1) * 8)) + (((int)threadIdx.x) & 7)) + 9216)];
    }
    {
      *(((float32x4*)output_acc) + 0) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)B_local_1) + 0),
                    *(((float16x4*)A_local_1) + 0),
                    *(((float32x4*)output_acc) + 0));
    };
  }
  #pragma unroll
  for (int i_4 = 0; i_4 < 4; ++i_4) {
    output_acc[i_4] = (output_acc[i_4] / denominator[0]);
  }
  uint2 __2;
  float4 v__1 = *(float4*)(output_acc + 0);
  ((half2*)(&__2))[0] = __float22half2_rn(((float2*)(&v__1))[0]);
  ((half2*)(&__2))[1] = __float22half2_rn(((float2*)(&v__1))[1]);
  *(uint2*)(output_shared_local_cast_1 + 0) = __2;
  __syncthreads();
  *(uint2*)(((half_t*)buf_dyn_shmem) + (((((int)threadIdx.x) & 15) * 64) + ((((int)threadIdx.x) >> 4) * 4))) = *(uint2*)(output_shared_local_cast_1 + 0);
  __syncthreads();
  *(uint2*)(Output + (((((int)blockIdx.y) * 1048576) + (((int)blockIdx.x) * 1024)) + (((int)threadIdx.x) * 4))) = *(uint2*)(((half_t*)buf_dyn_shmem) + (((int)threadIdx.x) * 4));
}

