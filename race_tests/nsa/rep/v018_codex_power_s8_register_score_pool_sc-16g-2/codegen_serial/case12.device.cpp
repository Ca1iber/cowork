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
  float scores[32];
  half_t k_local[4];
  float maximum[1];
  float denominator[1];
  half_t scores_half[32];
  float output_acc[16];
  half_t v_local[16];
  half_t output_shared_local_cast[4];
  for (int chunk = 0; chunk < 4; ++chunk) {
    *(uint2*)(q_local + (chunk * 4)) = *(uint2*)(Q + (((((((int)blockIdx.y) * 1048576) + (((int)blockIdx.x) * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (chunk * 16)) + ((((int)threadIdx.x) >> 4) * 4)));
  }
  #pragma unroll
  for (int i = 0; i < 8; ++i) {
    float broadcast_var = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(scores + (i * 4)) = make_float4(broadcast_var, broadcast_var, broadcast_var, broadcast_var);
  }
  for (int selected = 0; selected < 8; ++selected) {
    int block_start = (BlockIndices[(((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8)) + selected)] * 16);
    if ((0 <= block_start) && (block_start <= ((int)blockIdx.x))) {
      for (int chunk_1 = 0; chunk_1 < 4; ++chunk_1) {
        half_t broadcast_var_1 = half_t(0x0p+0f/*0.000000e+00*/);
        uint2 condval;
        if (((block_start + (((int)threadIdx.x) & 15)) < 1024)) {
          condval = *(uint2*)(K + (((((((int64_t)((int)blockIdx.y)) * (int64_t)65536) + (((int64_t)block_start) * (int64_t)64)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)64)) + (((int64_t)chunk_1) * (int64_t)16)) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)4) * (int64_t)4)));
        } else {
          condval = make_uint2(__pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1));
        }
        *(uint2*)(k_local + 0) = condval;
        {
      *(((float32x4*)scores) + selected) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)k_local) + 0),
                    *(((float16x4*)q_local) + chunk_1),
                    *(((float32x4*)scores) + selected));
    };
      }
    }
  }
  #pragma unroll
  for (int i_1 = 0; i_1 < 8; ++i_1) {
    for (int vec_s = 0; vec_s < 4; ++vec_s) {
      int block_start_1 = (BlockIndices[(((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8)) + i_1)] * 16);
      float condval_1;
      if (((0 <= block_start_1) && (((((((int)threadIdx.x) >> 4) * 4) + block_start_1) + vec_s) <= ((int)blockIdx.x)))) {
        condval_1 = scores[((i_1 * 4) + vec_s)];
      } else {
        condval_1 = -MACART_INF_F;
      }
      scores[((i_1 * 4) + vec_s)] = condval_1;
    }
  }
  maximum[0] = -MACART_INF_F;
  maximum[0] = -MACART_INF_F;
  #pragma unroll
  for (int rv = 0; rv < 32; ++rv) {
    maximum[0] = max(maximum[0], scores[(((rv & 7) * 4) + (rv >> 3))]);
  }
  maximum[0] = tl::AllReduce<tl::MaxOp, 64, 16, 0>::run(maximum[0], (&(((float*)buf_dyn_shmem)[0])));
  #pragma unroll
  for (int i_2 = 0; i_2 < 32; ++i_2) {
    scores[i_2] = exp2f(((scores[i_2] * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/) - (maximum[0] * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/)));
  }
  denominator[0] = 0x0p+0f/*0.000000e+00*/;
  #pragma unroll
  for (int rv_1 = 0; rv_1 < 32; ++rv_1) {
    denominator[0] = (denominator[0] + scores[(((rv_1 & 7) * 4) + (rv_1 >> 3))]);
  }
  __syncthreads();
  denominator[0] = tl::AllReduce<tl::SumOp, 64, 16, 0>::run(denominator[0], (&(((float*)buf_dyn_shmem)[0])));
  #pragma unroll
  for (int i_3 = 0; i_3 < 8; ++i_3) {
    uint2 __1;
    float4 v_ = *(float4*)(scores + (i_3 * 4));
    ((half2*)(&__1))[0] = __float22half2_rn(((float2*)(&v_))[0]);
    ((half2*)(&__1))[1] = __float22half2_rn(((float2*)(&v_))[1]);
    *(uint2*)(scores_half + (i_3 * 4)) = __1;
  }
  #pragma unroll
  for (int i_4 = 0; i_4 < 4; ++i_4) {
    float broadcast_var_2 = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(output_acc + (i_4 * 4)) = make_float4(broadcast_var_2, broadcast_var_2, broadcast_var_2, broadcast_var_2);
  }
  for (int selected_1 = 0; selected_1 < 8; ++selected_1) {
    int block_start_2 = (BlockIndices[(((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8)) + selected_1)] * 16);
    __syncthreads();
    if ((0 <= block_start_2) && (block_start_2 <= ((int)blockIdx.x))) {
      #pragma unroll
      for (int i_5 = 0; i_5 < 2; ++i_5) {
        half_t broadcast_var_3 = half_t(0x0p+0f/*0.000000e+00*/);
        uint4 condval_2;
        if ((((((((int)threadIdx.x) >> 3) + block_start_2) >> 3) + i_5) < 128)) {
          condval_2 = *(uint4*)(V + ((((((int64_t)((int)blockIdx.y)) * (int64_t)65536) + (((int64_t)i_5) * (int64_t)512)) + (((int64_t)block_start_2) * (int64_t)64)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)));
        } else {
          condval_2 = make_uint4(__pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3));
        }
        *(uint4*)(((half_t*)buf_dyn_shmem) + ((((i_5 * 512) + ((((int)threadIdx.x) >> 3) * 64)) + (((((int)threadIdx.x) & 7) ^ ((i_5 * 4) + ((((int)threadIdx.x) >> 5) * 2))) * 8)) + 128)) = condval_2;
      }
    }
    __syncthreads();
    if ((0 <= block_start_2) && (block_start_2 <= ((int)blockIdx.x))) {
      for (int tile = 0; tile < 4; ++tile) {
        for (int element = 0; element < 4; ++element) {
          v_local[((tile * 4) + element)] = ((half_t*)buf_dyn_shmem)[((((((((int)threadIdx.x) >> 4) * 256) + (element * 64)) + ((((tile * 2) + ((((int)threadIdx.x) & 15) >> 3)) ^ ((((int)threadIdx.x) >> 4) * 2)) * 8)) + (((int)threadIdx.x) & 7)) + 128)];
        }
      }
      for (int tile_1 = 0; tile_1 < 4; ++tile_1) {
        {
      *(((float32x4*)output_acc) + tile_1) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)v_local) + tile_1),
                    *(((float16x4*)scores_half) + selected_1),
                    *(((float32x4*)output_acc) + tile_1));
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
    *(uint4*)(Output + ((((((int)blockIdx.y) * 1048576) + (((int)blockIdx.x) * 1024)) + (i_8 * 512)) + (((int)threadIdx.x) * 8))) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((i_8 * 512) + (((int)threadIdx.x) * 8)));
  }
}

