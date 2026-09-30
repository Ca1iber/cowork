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
  float scores[32];
  float row_max[1];
  float denominator[1];
  half_t scores_half[32];
  float output_acc[16];
  half_t output_shared_local_cast[4];
  #pragma unroll
  for (int i = 0; i < 2; ++i) {
    *(uint4*)(((half_t*)buf_dyn_shmem) + (((((i * 512) + ((((int)threadIdx.x) >> 3) * 64)) + ((((((int)threadIdx.x) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(Q + ((((((int)blockIdx.y) * 1048576) + (((int)blockIdx.x) * 1024)) + (i * 512)) + (((int)threadIdx.x) * 8)));
  }
  for (int selected = 0; selected < 8; ++selected) {
    int block_start = (BlockIndices[(((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8)) + selected)] * 16);
    if ((0 <= block_start) && (block_start <= ((int)blockIdx.x))) {
      #pragma unroll
      for (int i_1 = 0; i_1 < 2; ++i_1) {
        half_t broadcast_var = half_t(0x0p+0f/*0.000000e+00*/);
        uint4 condval;
        if ((((((((int)threadIdx.x) >> 3) + block_start) >> 3) + i_1) < 128)) {
          condval = *(uint4*)(K + ((((((int64_t)((int)blockIdx.y)) * (int64_t)65536) + (((int64_t)i_1) * (int64_t)512)) + (((int64_t)block_start) * (int64_t)64)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)));
        } else {
          condval = make_uint4(__pack_half2(broadcast_var, broadcast_var), __pack_half2(broadcast_var, broadcast_var), __pack_half2(broadcast_var, broadcast_var), __pack_half2(broadcast_var, broadcast_var));
        }
        *(uint4*)(((half_t*)buf_dyn_shmem) + (((((((selected * 1024) + (i_1 * 512)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((((int)threadIdx.x) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 1024)) = condval;
      }
      #pragma unroll
      for (int i_2 = 0; i_2 < 2; ++i_2) {
        half_t broadcast_var_1 = half_t(0x0p+0f/*0.000000e+00*/);
        uint4 condval_1;
        if ((((((((int)threadIdx.x) >> 3) + block_start) >> 3) + i_2) < 128)) {
          condval_1 = *(uint4*)(V + ((((((int64_t)((int)blockIdx.y)) * (int64_t)65536) + (((int64_t)i_2) * (int64_t)512)) + (((int64_t)block_start) * (int64_t)64)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)));
        } else {
          condval_1 = make_uint4(__pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1));
        }
        *(uint4*)(((half_t*)buf_dyn_shmem) + (((((((selected * 1024) + (i_2 * 512)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((((int)threadIdx.x) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 9216)) = condval_1;
      }
    } else {
      #pragma unroll
      for (int i_3 = 0; i_3 < 2; ++i_3) {
        half_t broadcast_var_2 = half_t(0x0p+0f/*0.000000e+00*/);
        *(uint4*)(((half_t*)buf_dyn_shmem) + (((((((selected * 1024) + (i_3 * 512)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((((int)threadIdx.x) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 1024)) = make_uint4(__pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2));
        half_t broadcast_var_3 = half_t(0x0p+0f/*0.000000e+00*/);
        *(uint4*)(((half_t*)buf_dyn_shmem) + (((((((selected * 1024) + (i_3 * 512)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((((int)threadIdx.x) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 9216)) = make_uint4(__pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3));
      }
    }
  }
  #pragma unroll
  for (int i_4 = 0; i_4 < 8; ++i_4) {
    float broadcast_var_4 = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(scores + (i_4 * 4)) = make_float4(broadcast_var_4, broadcast_var_4, broadcast_var_4, broadcast_var_4);
  }
  half_t A_local[4];
  half_t B_local[32];
  __syncthreads();
  for (int ki = 0; ki < 4; ++ki) {
    *(uint2*)(A_local + 0) = *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((((int)threadIdx.x) & 15) * 64) + (((((((int)threadIdx.x) & 7) >> 2) + (ki >> 1)) & 1) * 32)) + (((((((int)threadIdx.x) & 3) >> 1) + (ki & 1)) & 1) * 16)) + ((((((int)threadIdx.x) >> 5) + (((int)threadIdx.x) & 1)) & 1) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4)));
    for (int j = 0; j < 8; ++j) {
      *(uint2*)(B_local + (j * 4)) = *(uint2*)(((half_t*)buf_dyn_shmem) + (((((((j * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + (ki >> 1)) & 1) * 32)) + (((((((int)threadIdx.x) & 3) >> 1) + (ki & 1)) & 1) * 16)) + ((((((int)threadIdx.x) >> 5) + (((int)threadIdx.x) & 1)) & 1) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4)) + 1024));
    }
    for (int j_1 = 0; j_1 < 8; ++j_1) {
      {
      *(((float32x4*)scores) + j_1) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)B_local) + j_1),
                    *(((float16x4*)A_local) + 0),
                    *(((float32x4*)scores) + j_1));
    };
    }
  }
  #pragma unroll
  for (int i_5 = 0; i_5 < 8; ++i_5) {
    for (int vec_s = 0; vec_s < 4; ++vec_s) {
      int block_start_1 = (BlockIndices[(((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8)) + i_5)] * 16);
      float condval_2;
      if ((((0 <= block_start_1) && (block_start_1 <= ((int)blockIdx.x))) && (((((((int)threadIdx.x) >> 4) * 4) + block_start_1) + vec_s) <= ((int)blockIdx.x)))) {
        condval_2 = scores[((i_5 * 4) + vec_s)];
      } else {
        condval_2 = -MACART_INF_F;
      }
      scores[((i_5 * 4) + vec_s)] = condval_2;
    }
  }
  row_max[0] = -MACART_INF_F;
  #pragma unroll
  for (int rv = 0; rv < 32; ++rv) {
    row_max[0] = max(row_max[0], scores[(((rv & 7) * 4) + (rv >> 3))]);
  }
  __syncthreads();
  row_max[0] = tl::AllReduce<tl::MaxOp, 64, 16, 0>::run(row_max[0], (&(((float*)buf_dyn_shmem)[0])));
  #pragma unroll
  for (int i_6 = 0; i_6 < 32; ++i_6) {
    scores[i_6] = exp2f(((scores[i_6] * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/) - (row_max[0] * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/)));
  }
  denominator[0] = 0x0p+0f/*0.000000e+00*/;
  #pragma unroll
  for (int rv_1 = 0; rv_1 < 32; ++rv_1) {
    denominator[0] = (denominator[0] + scores[(((rv_1 & 7) * 4) + (rv_1 >> 3))]);
  }
  __syncthreads();
  denominator[0] = tl::AllReduce<tl::SumOp, 64, 16, 0>::run(denominator[0], (&(((float*)buf_dyn_shmem)[0])));
  #pragma unroll
  for (int i_7 = 0; i_7 < 8; ++i_7) {
    uint2 __1;
    float4 v_ = *(float4*)(scores + (i_7 * 4));
    ((half2*)(&__1))[0] = __float22half2_rn(((float2*)(&v_))[0]);
    ((half2*)(&__1))[1] = __float22half2_rn(((float2*)(&v_))[1]);
    *(uint2*)(scores_half + (i_7 * 4)) = __1;
  }
  #pragma unroll
  for (int i_8 = 0; i_8 < 4; ++i_8) {
    float broadcast_var_5 = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(output_acc + (i_8 * 4)) = make_float4(broadcast_var_5, broadcast_var_5, broadcast_var_5, broadcast_var_5);
  }
  half_t B_local_1[16];
  __syncthreads();
  for (int ki_1 = 0; ki_1 < 8; ++ki_1) {
    for (int j_2 = 0; j_2 < 4; ++j_2) {
      for (int local_id = 0; local_id < 4; ++local_id) {
        B_local_1[((j_2 * 4) + local_id)] = ((half_t*)buf_dyn_shmem)[((((((((ki_1 * 1024) + ((((int)threadIdx.x) >> 4) * 256)) + (local_id * 64)) + (((((((int)threadIdx.x) & 31) >> 4) + (j_2 >> 1)) & 1) * 32)) + ((((local_id >> 1) + (j_2 & 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (local_id & 1)) & 1) * 8)) + (((int)threadIdx.x) & 7)) + 9216)];
      }
    }
    for (int j_3 = 0; j_3 < 4; ++j_3) {
      {
      *(((float32x4*)output_acc) + j_3) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)B_local_1) + j_3),
                    *(((float16x4*)scores_half) + ki_1),
                    *(((float32x4*)output_acc) + j_3));
    };
    }
  }
  #pragma unroll
  for (int i_9 = 0; i_9 < 16; ++i_9) {
    output_acc[i_9] = (output_acc[i_9] / denominator[0]);
  }
  #pragma unroll
  for (int i_10 = 0; i_10 < 4; ++i_10) {
    uint2 __2;
    float4 v__1 = *(float4*)(output_acc + (i_10 * 4));
    ((half2*)(&__2))[0] = __float22half2_rn(((float2*)(&v__1))[0]);
    ((half2*)(&__2))[1] = __float22half2_rn(((float2*)(&v__1))[1]);
    *(uint2*)(output_shared_local_cast + 0) = __2;
    *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((int)threadIdx.x) & 15) * 64) + (i_10 * 16)) + ((((int)threadIdx.x) >> 4) * 4))) = *(uint2*)(output_shared_local_cast + 0);
  }
  __syncthreads();
  #pragma unroll
  for (int i_11 = 0; i_11 < 2; ++i_11) {
    *(uint4*)(Output + ((((((int)blockIdx.y) * 1048576) + (((int)blockIdx.x) * 1024)) + (i_11 * 512)) + (((int)threadIdx.x) * 8))) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((i_11 * 512) + (((int)threadIdx.x) * 8)));
  }
}

