#include <tl_templates/maca/gemm.h>
#include <tl_templates/maca/copy.h>
#include <tl_templates/maca/reduce.h>
#include <tl_templates/maca/intrin.h>
#include <tl_templates/maca/atomic.h>
#include <tl_templates/maca/threadblock_swizzle.h>
#include <tl_templates/maca/debug.h>

extern "C" __global__ void native_sparse_attention_kernel(const int* __restrict__ Indices, const half_t* __restrict__ K, half_t* __restrict__ Output, const half_t* __restrict__ Q, const half_t* __restrict__ V);
extern "C" __global__ void __launch_bounds__(64, 1) native_sparse_attention_kernel(const int* __restrict__ Indices, const half_t* __restrict__ K, half_t* __restrict__ Output, const half_t* __restrict__ Q, const half_t* __restrict__ V) {
  float numerator[8];
  float denominator[1];
  half_t q_local[8];
  float scores[4];
  float maximum[1];
  half_t probabilities[4];
  float partial_sum[1];
  half_t v_operand[8];
  half_t k_local[4];
  half_t Output_local_cast[4];
  #pragma unroll
  for (int i = 0; i < 2; ++i) {
    float broadcast_var = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(numerator + (i * 4)) = make_float4(broadcast_var, broadcast_var, broadcast_var, broadcast_var);
  }
  denominator[0] = 0x0p+0f/*0.000000e+00*/;
  int block_start = (Indices[((int)blockIdx.x)] * 16);
  if ((0 <= block_start) && (block_start <= ((int)blockIdx.x))) {
    #pragma unroll
    for (int chunk = 0; chunk < 2; ++chunk) {
      *(uint2*)(q_local + (chunk * 4)) = *(uint2*)(Q + ((((((int64_t)((int)blockIdx.x)) * (int64_t)512) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)32)) + (((int64_t)chunk) * (int64_t)16)) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)4) * (int64_t)4)));
    }
    float broadcast_var_1 = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(scores + 0) = make_float4(broadcast_var_1, broadcast_var_1, broadcast_var_1, broadcast_var_1);
    #pragma unroll
    for (int chunk_1 = 0; chunk_1 < 2; ++chunk_1) {
      *(uint2*)(k_local + 0) = *(uint2*)(K + ((((((int64_t)block_start) * (int64_t)32) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)32)) + (((int64_t)chunk_1) * (int64_t)16)) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)4) * (int64_t)4)));
      {
      *(((float32x4*)scores) + 0) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)k_local) + 0),
                    *(((float16x4*)q_local) + chunk_1),
                    *(((float32x4*)scores) + 0));
    };
    }
    #pragma unroll
    for (int element = 0; element < 4; ++element) {
      float condval;
      if ((((((((int)threadIdx.x) >> 4) * 4) + block_start) + element) <= ((int)blockIdx.x))) {
        condval = scores[element];
      } else {
        condval = -MACART_INF_F;
      }
      scores[element] = condval;
    }
    maximum[0] = -MACART_INF_F;
    #pragma unroll
    for (int element_1 = 0; element_1 < 4; ++element_1) {
      maximum[0] = max(maximum[0], scores[element_1]);
    }
    maximum[0] = max(maximum[0], __shfl_xor_sync((uint64_t)18446744073709551615, maximum[0], 32, 64));
    maximum[0] = max(maximum[0], __shfl_xor_sync((uint64_t)18446744073709551615, maximum[0], 16, 64));
    float broadcast_var_2 = 0x1.0527dbd5cafffp-2f/*2.550349e-01*/;
    float broadcast_var_3 = 0x1p+3f/*8.000000e+00*/;
    uint2 __1;
    float4 __2;
    float4 __3;
      float4 __4;
        float4 __5;
          float4 v_ = *(float4*)(scores + 0);
          float4 v__1 = make_float4(maximum[0], maximum[0], maximum[0], maximum[0]);
          __5.x = (v_.x-v__1.x);
          __5.y = (v_.y-v__1.y);
          __5.z = (v_.z-v__1.z);
          __5.w = (v_.w-v__1.w);
        float4 v__2 = make_float4(broadcast_var_2, broadcast_var_2, broadcast_var_2, broadcast_var_2);
        __4.x = (__5.x*v__2.x);
        __4.y = (__5.y*v__2.y);
        __4.z = (__5.z*v__2.z);
        __4.w = (__5.w*v__2.w);
      float4 v__3 = make_float4(broadcast_var_3, broadcast_var_3, broadcast_var_3, broadcast_var_3);
      __3.x = (__4.x+v__3.x);
      __3.y = (__4.y+v__3.y);
      __3.z = (__4.z+v__3.z);
      __3.w = (__4.w+v__3.w);
    __2.x = exp2f(__3.x);
    __2.y = exp2f(__3.y);
    __2.z = exp2f(__3.z);
    __2.w = exp2f(__3.w);
    ((half2*)(&__1))[0] = __float22half2_rn(((float2*)(&__2))[0]);
    ((half2*)(&__1))[1] = __float22half2_rn(((float2*)(&__2))[1]);
    *(uint2*)(probabilities + 0) = __1;
    partial_sum[0] = 0x0p+0f/*0.000000e+00*/;
    #pragma unroll
    for (int element_2 = 0; element_2 < 4; ++element_2) {
      partial_sum[0] = (partial_sum[0] + ((float)probabilities[element_2]));
    }
    denominator[0] = partial_sum[0];
    #pragma unroll
    for (int chunk_2 = 0; chunk_2 < 2; ++chunk_2) {
      #pragma unroll
      for (int element_3 = 0; element_3 < 4; ++element_3) {
        v_operand[((chunk_2 * 4) + element_3)] = V[((((((((int64_t)((int)threadIdx.x)) >> (int64_t)4) * (int64_t)128) + (((int64_t)block_start) * (int64_t)32)) + (((int64_t)element_3) * (int64_t)32)) + (((int64_t)chunk_2) * (int64_t)16)) + (((int64_t)((int)threadIdx.x)) & (int64_t)15))];
      }
    }
    #pragma unroll
    for (int chunk_3 = 0; chunk_3 < 2; ++chunk_3) {
      {
      *(((float32x4*)numerator) + chunk_3) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)v_operand) + chunk_3),
                    *(((float16x4*)probabilities) + 0),
                    *(((float32x4*)numerator) + chunk_3));
    };
    }
  }
  denominator[0] = (denominator[0] + __shfl_xor_sync((uint64_t)18446744073709551615, denominator[0], 32, 64));
  denominator[0] = (denominator[0] + __shfl_xor_sync((uint64_t)18446744073709551615, denominator[0], 16, 64));
  #pragma unroll
  for (int chunk_4 = 0; chunk_4 < 2; ++chunk_4) {
    float4 __6;
      float4 v__4 = *(float4*)(numerator + (chunk_4 * 4));
      float4 v__5 = make_float4(denominator[0], denominator[0], denominator[0], denominator[0]);
      __6.x = (v__4.x/v__5.x);
      __6.y = (v__4.y/v__5.y);
      __6.z = (v__4.z/v__5.z);
      __6.w = (v__4.w/v__5.w);
    *(float4*)(numerator + (chunk_4 * 4)) = __6;
  }
  #pragma unroll
  for (int chunk_5 = 0; chunk_5 < 2; ++chunk_5) {
    uint2 __7;
    float4 v__6 = *(float4*)(numerator + (chunk_5 * 4));
    ((half2*)(&__7))[0] = __float22half2_rn(((float2*)(&v__6))[0]);
    ((half2*)(&__7))[1] = __float22half2_rn(((float2*)(&v__6))[1]);
    *(uint2*)(Output_local_cast + 0) = __7;
    *(uint2*)(Output + ((((((int)blockIdx.x) * 512) + ((((int)threadIdx.x) & 15) * 32)) + (chunk_5 * 16)) + ((((int)threadIdx.x) >> 4) * 4))) = *(uint2*)(Output_local_cast + 0);
  }
}

