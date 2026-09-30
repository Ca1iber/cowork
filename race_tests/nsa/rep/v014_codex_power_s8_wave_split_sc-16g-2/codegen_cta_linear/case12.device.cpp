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
  half_t q_local[16];
  float output_acc[16];
  float denominator[1];
  float block_max[1];
  float scores[4];
  float previous_max[1];
  float rescale[1];
  float block_sum[1];
  half_t scores_half[4];
  half_t k_local[4];
  half_t v_local[4];
  float partial_output_local_cast_1[4];
  float weights_local_cast_2[4];
  float partial_output_local_cast_3[4];
  float weights_local_cast_4[4];
  half_t Output_local_cast[4];
  for (int chunk = 0; chunk < 4; ++chunk) {
    *(uint2*)(q_local + (chunk * 4)) = *(uint2*)(Q + (((((((int)blockIdx.y) * 1048576) + (((int)blockIdx.x) * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (chunk * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4)));
  }
  #pragma unroll
  for (int i = 0; i < 4; ++i) {
    float broadcast_var = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(output_acc + (i * 4)) = make_float4(broadcast_var, broadcast_var, broadcast_var, broadcast_var);
  }
  denominator[0] = 0x0p+0f/*0.000000e+00*/;
  block_max[0] = -MACART_INF_F;
  for (int selected_round = 0; selected_round < 4; ++selected_round) {
    int block_start = (BlockIndices[((((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8)) + (selected_round * 2)) + (((int)threadIdx.x) >> 6))] * 16);
    if ((0 <= block_start) && (block_start <= ((int)blockIdx.x))) {
      float broadcast_var_1 = 0x0p+0f/*0.000000e+00*/;
      *(float4*)(scores + 0) = make_float4(broadcast_var_1, broadcast_var_1, broadcast_var_1, broadcast_var_1);
      for (int chunk_1 = 0; chunk_1 < 4; ++chunk_1) {
        half_t broadcast_var_2 = half_t(0x0p+0f/*0.000000e+00*/);
        uint2 condval;
        if (((block_start + (((int)threadIdx.x) & 15)) < 1024)) {
          condval = *(uint2*)(K + (((((((int64_t)((int)blockIdx.y)) * (int64_t)65536) + (((int64_t)block_start) * (int64_t)64)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)64)) + (((int64_t)chunk_1) * (int64_t)16)) + (((((int64_t)((int)threadIdx.x)) & (int64_t)63) >> (int64_t)4) * (int64_t)4)));
        } else {
          condval = make_uint2(__pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2));
        }
        *(uint2*)(k_local + 0) = condval;
        {
      *(((float32x4*)scores) + 0) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)k_local) + 0),
                    *(((float16x4*)q_local) + chunk_1),
                    *(((float32x4*)scores) + 0));
    };
      }
      #pragma unroll
      for (int i_1 = 0; i_1 < 4; ++i_1) {
        float condval_1;
        if (((((((((int)threadIdx.x) & 63) >> 4) * 4) + block_start) + i_1) <= ((int)blockIdx.x))) {
          condval_1 = scores[i_1];
        } else {
          condval_1 = -MACART_INF_F;
        }
        scores[i_1] = condval_1;
      }
      previous_max[0] = block_max[0];
      block_max[0] = -MACART_INF_F;
      block_max[0] = -MACART_INF_F;
      #pragma unroll
      for (int rv = 0; rv < 4; ++rv) {
        block_max[0] = max(block_max[0], scores[rv]);
      }
      block_max[0] = tl::AllReduce<tl::MaxOp, 64, 16, 0>::run(block_max[0], (&(((float*)buf_dyn_shmem)[1152])));
      rescale[0] = exp2f(((previous_max[0] * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/) - (block_max[0] * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/)));
      #pragma unroll
      for (int i_2 = 0; i_2 < 4; ++i_2) {
        scores[i_2] = exp2f(((scores[i_2] * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/) - (block_max[0] * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/)));
      }
      block_sum[0] = 0x0p+0f/*0.000000e+00*/;
      #pragma unroll
      for (int rv_1 = 0; rv_1 < 4; ++rv_1) {
        block_sum[0] = (block_sum[0] + scores[rv_1]);
      }
      block_sum[0] = tl::AllReduce<tl::SumOp, 64, 16, 0>::run(block_sum[0], (&(((float*)buf_dyn_shmem)[1024])));
      denominator[0] = ((denominator[0] * rescale[0]) + block_sum[0]);
      uint2 __1;
      float4 v_ = *(float4*)(scores + 0);
      ((half2*)(&__1))[0] = __float22half2_rn(((float2*)(&v_))[0]);
      ((half2*)(&__1))[1] = __float22half2_rn(((float2*)(&v_))[1]);
      *(uint2*)(scores_half + 0) = __1;
      #pragma unroll
      for (int i_3 = 0; i_3 < 16; ++i_3) {
        output_acc[i_3] = (output_acc[i_3] * rescale[0]);
      }
    }
    __syncthreads();
    for (int iteration = 0; iteration < 2; ++iteration) {
      half_t broadcast_var_3 = half_t(0x0p+0f/*0.000000e+00*/);
      uint4 condval_2;
      if ((((0 <= block_start) && (block_start <= ((int)blockIdx.x))) && ((((((((int)threadIdx.x) & 63) >> 3) + block_start) >> 3) + iteration) < 128))) {
        condval_2 = *(uint4*)(V + ((((((int64_t)((int)blockIdx.y)) * (int64_t)65536) + (((int64_t)iteration) * (int64_t)512)) + (((int64_t)block_start) * (int64_t)64)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)63) * (int64_t)8)));
      } else {
        condval_2 = make_uint4(__pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3));
      }
      *(uint4*)(((half_t*)buf_dyn_shmem) + (((((((((int)threadIdx.x) >> 6) * 1024) + (iteration * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = condval_2;
    }
    __syncthreads();
    if ((0 <= block_start) && (block_start <= ((int)blockIdx.x))) {
      for (int tile = 0; tile < 4; ++tile) {
        for (int element = 0; element < 4; ++element) {
          v_local[element] = ((half_t*)buf_dyn_shmem)[(((((((((int)threadIdx.x) >> 4) * 256) + (element * 64)) + (((((((int)threadIdx.x) & 31) >> 4) + (tile >> 1)) & 1) * 32)) + ((((element >> 1) + (tile & 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (element & 1)) & 1) * 8)) + (((int)threadIdx.x) & 7))];
        }
        {
      *(((float32x4*)output_acc) + tile) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)v_local) + 0),
                    *(((float16x4*)scores_half) + 0),
                    *(((float32x4*)output_acc) + tile));
    };
      }
    }
    __syncthreads();
  }
  #pragma unroll
  for (int i_4 = 0; i_4 < 4; ++i_4) {
    *(float4*)(((float*)buf_dyn_shmem) + ((((((((int)threadIdx.x) >> 6) * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (i_4 * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4)) + 1280)) = *(float4*)(output_acc + (i_4 * 4));
  }
  if (((((int)threadIdx.x) & 63) >> 4) == 0) {
    ((float*)buf_dyn_shmem)[(((((int)threadIdx.x) >> 6) * 16) + (((int)threadIdx.x) & 15))] = block_max[0];
    ((float*)buf_dyn_shmem)[((((((int)threadIdx.x) >> 6) * 16) + (((int)threadIdx.x) & 15)) + 32)] = denominator[0];
  }
  __syncthreads();
  if (((int)threadIdx.x) < 16) {
    float maximum = max(((float*)buf_dyn_shmem)[((int)threadIdx.x)], ((float*)buf_dyn_shmem)[(((int)threadIdx.x) + 16)]);
    float condval_3;
    if ((0x0p+0f/*0.000000e+00*/ < ((float*)buf_dyn_shmem)[(((int)threadIdx.x) + 32)])) {
      condval_3 = exp2f(((((float*)buf_dyn_shmem)[((int)threadIdx.x)] - maximum) * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/));
    } else {
      condval_3 = 0x0p+0f/*0.000000e+00*/;
    }
    float scale0 = condval_3;
    float condval_4;
    if ((0x0p+0f/*0.000000e+00*/ < ((float*)buf_dyn_shmem)[(((int)threadIdx.x) + 48)])) {
      condval_4 = exp2f(((((float*)buf_dyn_shmem)[(((int)threadIdx.x) + 16)] - maximum) * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/));
    } else {
      condval_4 = 0x0p+0f/*0.000000e+00*/;
    }
    float scale1 = condval_4;
    float total = ((((float*)buf_dyn_shmem)[(((int)threadIdx.x) + 32)] * scale0) + (((float*)buf_dyn_shmem)[(((int)threadIdx.x) + 48)] * scale1));
    float condval_5;
    if ((0x0p+0f/*0.000000e+00*/ < total)) {
      condval_5 = (scale0 / total);
    } else {
      condval_5 = 0x0p+0f/*0.000000e+00*/;
    }
    ((float*)buf_dyn_shmem)[(((int)threadIdx.x) + 64)] = condval_5;
    float condval_6;
    if ((0x0p+0f/*0.000000e+00*/ < total)) {
      condval_6 = (scale1 / total);
    } else {
      condval_6 = 0x0p+0f/*0.000000e+00*/;
    }
    ((float*)buf_dyn_shmem)[(((int)threadIdx.x) + 80)] = condval_6;
  }
  __syncthreads();
  #pragma unroll
  for (int i_5 = 0; i_5 < 2; ++i_5) {
    *(float4*)(partial_output_local_cast_1 + 0) = *(float4*)(((float*)buf_dyn_shmem) + (((i_5 * 512) + (((int)threadIdx.x) * 4)) + 1280));
    *(float4*)(weights_local_cast_2 + 0) = make_float4(((float*)buf_dyn_shmem)[(((i_5 * 8) + (((int)threadIdx.x) >> 4)) + 64)], ((float*)buf_dyn_shmem)[(((i_5 * 8) + (((int)threadIdx.x) >> 4)) + 64)], ((float*)buf_dyn_shmem)[(((i_5 * 8) + (((int)threadIdx.x) >> 4)) + 64)], ((float*)buf_dyn_shmem)[(((i_5 * 8) + (((int)threadIdx.x) >> 4)) + 64)]);
    *(float4*)(partial_output_local_cast_3 + 0) = *(float4*)(((float*)buf_dyn_shmem) + (((i_5 * 512) + (((int)threadIdx.x) * 4)) + 2304));
    *(float4*)(weights_local_cast_4 + 0) = make_float4(((float*)buf_dyn_shmem)[(((i_5 * 8) + (((int)threadIdx.x) >> 4)) + 80)], ((float*)buf_dyn_shmem)[(((i_5 * 8) + (((int)threadIdx.x) >> 4)) + 80)], ((float*)buf_dyn_shmem)[(((i_5 * 8) + (((int)threadIdx.x) >> 4)) + 80)], ((float*)buf_dyn_shmem)[(((i_5 * 8) + (((int)threadIdx.x) >> 4)) + 80)]);
    uint2 __2;
    float4 __3;
      float4 __4;
        float4 v__1 = *(float4*)(partial_output_local_cast_1 + 0);
        float4 v__2 = *(float4*)(weights_local_cast_2 + 0);
        __4.x = (v__1.x*v__2.x);
        __4.y = (v__1.y*v__2.y);
        __4.z = (v__1.z*v__2.z);
        __4.w = (v__1.w*v__2.w);
      float4 __5;
        float4 v__3 = *(float4*)(partial_output_local_cast_3 + 0);
        float4 v__4 = *(float4*)(weights_local_cast_4 + 0);
        __5.x = (v__3.x*v__4.x);
        __5.y = (v__3.y*v__4.y);
        __5.z = (v__3.z*v__4.z);
        __5.w = (v__3.w*v__4.w);
      __3.x = (__4.x+__5.x);
      __3.y = (__4.y+__5.y);
      __3.z = (__4.z+__5.z);
      __3.w = (__4.w+__5.w);
    ((half2*)(&__2))[0] = __float22half2_rn(((float2*)(&__3))[0]);
    ((half2*)(&__2))[1] = __float22half2_rn(((float2*)(&__3))[1]);
    *(uint2*)(Output_local_cast + 0) = __2;
    *(uint2*)(Output + ((((((int)blockIdx.y) * 1048576) + (((int)blockIdx.x) * 1024)) + (i_5 * 512)) + (((int)threadIdx.x) * 4))) = *(uint2*)(Output_local_cast + 0);
  }
}

