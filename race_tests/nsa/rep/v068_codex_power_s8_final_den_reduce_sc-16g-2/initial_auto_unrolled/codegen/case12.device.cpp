#include <tl_templates/maca/gemm.h>
#include <tl_templates/maca/copy.h>
#include <tl_templates/maca/reduce.h>
#include <tl_templates/maca/intrin.h>
#include <tl_templates/maca/atomic.h>
#include <tl_templates/maca/threadblock_swizzle.h>
#include <tl_templates/maca/debug.h>

extern "C" __global__ void native_sparse_attention_kernel(const int* __restrict__ Indices, const half_t* __restrict__ K, half_t* __restrict__ Output, const half_t* __restrict__ Q, const half_t* __restrict__ V);
extern "C" __global__ void __launch_bounds__(64, 1) native_sparse_attention_kernel(const int* __restrict__ Indices, const half_t* __restrict__ K, half_t* __restrict__ Output, const half_t* __restrict__ Q, const half_t* __restrict__ V) {
  half_t qk_fetch[8];
  extern __shared__ __align__(1024) half_t shared[];
  half_t q_local[16];
  float numerator[16];
  float denominator[1];
  float maximum[1];
  float scores[4];
  float block_maximum[1];
  float new_maximum[1];
  float rescale[1];
  half_t probabilities[4];
  float partial_sum[1];
  half_t v_fetch[16];
  half_t v_operand[16];
  half_t k_local[4];
  half_t v_column[4];
  half_t shared_local_cast[4];
  #pragma unroll
  for (int part = 0; part < 2; ++part) {
    *(uint4*)(qk_fetch + 0) = *(uint4*)(Q + ((((((int)blockIdx.y) * 1048576) + (((int)blockIdx.x) * 1024)) + (part * 512)) + (((int)threadIdx.x) * 8)));
    #pragma unroll
    for (int pack = 0; pack < 2; ++pack) {
      *(uint2*)(shared + ((((part * 512) + ((((int)threadIdx.x) >> 3) * 64)) + (((((int)threadIdx.x) & 7) ^ (((int)threadIdx.x) >> 3)) * 8)) + (((pack ^ part) ^ ((((int)threadIdx.x) & 15) >> 3)) * 4))) = *(uint2*)(qk_fetch + (pack * 4));
    }
  }
  __syncwarp();
  #pragma unroll
  for (int chunk = 0; chunk < 4; ++chunk) {
    *(uint2*)(q_local + (chunk * 4)) = *(uint2*)(shared + ((((((int)threadIdx.x) & 15) * 64) + ((((chunk * 2) + (((int)threadIdx.x) >> 5)) ^ (((int)threadIdx.x) & 7)) * 8)) + (((((((int)threadIdx.x) & 31) >> 4) ^ ((((int)threadIdx.x) & 15) >> 3)) ^ (((int)threadIdx.x) & 1)) * 4)));
  }
  #pragma unroll
  for (int i = 0; i < 4; ++i) {
    float broadcast_var = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(numerator + (i * 4)) = make_float4(broadcast_var, broadcast_var, broadcast_var, broadcast_var);
  }
  denominator[0] = 0x0p+0f/*0.000000e+00*/;
  maximum[0] = -MACART_INF_F;
  for (int selected = 0; selected < 8; ++selected) {
    int block_start = (Indices[(((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8)) + selected)] * 16);
    if ((0 <= block_start) && (block_start <= ((int)blockIdx.x))) {
      __syncwarp();
      #pragma unroll
      for (int part_1 = 0; part_1 < 2; ++part_1) {
        *(uint4*)(qk_fetch + 0) = *(uint4*)(K + ((((((int64_t)((int)blockIdx.y)) * (int64_t)65536) + (((int64_t)part_1) * (int64_t)512)) + (((int64_t)block_start) * (int64_t)64)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)));
        #pragma unroll
        for (int pack_1 = 0; pack_1 < 2; ++pack_1) {
          *(uint2*)(shared + ((((part_1 * 512) + ((((int)threadIdx.x) >> 3) * 64)) + (((((int)threadIdx.x) & 7) ^ (((int)threadIdx.x) >> 3)) * 8)) + (((pack_1 ^ part_1) ^ ((((int)threadIdx.x) & 15) >> 3)) * 4))) = *(uint2*)(qk_fetch + (pack_1 * 4));
        }
      }
      __syncwarp();
      float broadcast_var_1 = 0x0p+0f/*0.000000e+00*/;
      *(float4*)(scores + 0) = make_float4(broadcast_var_1, broadcast_var_1, broadcast_var_1, broadcast_var_1);
      #pragma unroll
      for (int chunk_1 = 0; chunk_1 < 4; ++chunk_1) {
        *(uint2*)(k_local + 0) = *(uint2*)(shared + ((((((int)threadIdx.x) & 15) * 64) + ((((chunk_1 * 2) + (((int)threadIdx.x) >> 5)) ^ (((int)threadIdx.x) & 7)) * 8)) + (((((((int)threadIdx.x) & 31) >> 4) ^ ((((int)threadIdx.x) & 15) >> 3)) ^ (((int)threadIdx.x) & 1)) * 4)));
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
      block_maximum[0] = -MACART_INF_F;
      #pragma unroll
      for (int element_1 = 0; element_1 < 4; ++element_1) {
        block_maximum[0] = max(block_maximum[0], scores[element_1]);
      }
      block_maximum[0] = max(block_maximum[0], __shfl_xor_sync((uint64_t)18446744073709551615, block_maximum[0], 32, 64));
      block_maximum[0] = max(block_maximum[0], __shfl_xor_sync((uint64_t)18446744073709551615, block_maximum[0], 16, 64));
      new_maximum[0] = max(maximum[0], block_maximum[0]);
      rescale[0] = exp2f(((maximum[0] - new_maximum[0]) * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/));
      #pragma unroll
      for (int chunk_2 = 0; chunk_2 < 4; ++chunk_2) {
        float4 __1;
          float4 v_ = *(float4*)(numerator + (chunk_2 * 4));
          float4 v__1 = make_float4(rescale[0], rescale[0], rescale[0], rescale[0]);
          __1.x = (v_.x*v__1.x);
          __1.y = (v_.y*v__1.y);
          __1.z = (v_.z*v__1.z);
          __1.w = (v_.w*v__1.w);
        *(float4*)(numerator + (chunk_2 * 4)) = __1;
      }
      denominator[0] = (denominator[0] * rescale[0]);
      maximum[0] = new_maximum[0];
      float broadcast_var_2 = 0x1.7154764ee6c2fp-3f/*1.803369e-01*/;
      float broadcast_var_3 = 0x1p+3f/*8.000000e+00*/;
      uint2 __2;
      float4 __3;
      float4 __4;
        float4 __5;
          float4 __6;
            float4 v__2 = *(float4*)(scores + 0);
            float4 v__3 = make_float4(maximum[0], maximum[0], maximum[0], maximum[0]);
            __6.x = (v__2.x-v__3.x);
            __6.y = (v__2.y-v__3.y);
            __6.z = (v__2.z-v__3.z);
            __6.w = (v__2.w-v__3.w);
          float4 v__4 = make_float4(broadcast_var_2, broadcast_var_2, broadcast_var_2, broadcast_var_2);
          __5.x = (__6.x*v__4.x);
          __5.y = (__6.y*v__4.y);
          __5.z = (__6.z*v__4.z);
          __5.w = (__6.w*v__4.w);
        float4 v__5 = make_float4(broadcast_var_3, broadcast_var_3, broadcast_var_3, broadcast_var_3);
        __4.x = (__5.x+v__5.x);
        __4.y = (__5.y+v__5.y);
        __4.z = (__5.z+v__5.z);
        __4.w = (__5.w+v__5.w);
      __3.x = exp2f(__4.x);
      __3.y = exp2f(__4.y);
      __3.z = exp2f(__4.z);
      __3.w = exp2f(__4.w);
      ((half2*)(&__2))[0] = __float22half2_rn(((float2*)(&__3))[0]);
      ((half2*)(&__2))[1] = __float22half2_rn(((float2*)(&__3))[1]);
      *(uint2*)(probabilities + 0) = __2;
      partial_sum[0] = 0x0p+0f/*0.000000e+00*/;
      #pragma unroll
      for (int element_2 = 0; element_2 < 4; ++element_2) {
        partial_sum[0] = (partial_sum[0] + ((float)probabilities[element_2]));
      }
      denominator[0] = (denominator[0] + partial_sum[0]);
      __syncwarp();
      #pragma unroll
      for (int row = 0; row < 4; ++row) {
        *(uint2*)(v_fetch + (row * 4)) = *(uint2*)(V + (((((((int64_t)((int)blockIdx.y)) * (int64_t)65536) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)4) * (int64_t)256)) + (((int64_t)block_start) * (int64_t)64)) + (((int64_t)row) * (int64_t)64)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)4)));
      }
      #pragma unroll
      for (int col = 0; col < 4; ++col) {
        for (int row_1 = 0; row_1 < 4; ++row_1) {
          v_column[row_1] = v_fetch[((row_1 * 4) + col)];
        }
        *(uint2*)(shared + (((col * 256) + ((((int)threadIdx.x) & 15) * 16)) + ((((((int)threadIdx.x) >> 4) ^ ((((int)threadIdx.x) & 15) >> 2)) ^ col) * 4))) = *(uint2*)(v_column + 0);
      }
      __syncwarp();
      #pragma unroll
      for (int chunk_3 = 0; chunk_3 < 4; ++chunk_3) {
        *(uint2*)(v_operand + (chunk_3 * 4)) = *(uint2*)(shared + (((((((int)threadIdx.x) & 3) * 256) + (chunk_3 * 64)) + (((((int)threadIdx.x) & 15) >> 2) * 16)) + ((((((int)threadIdx.x) >> 4) ^ chunk_3) ^ (((int)threadIdx.x) & 3)) * 4)));
      }
      #pragma unroll
      for (int chunk_4 = 0; chunk_4 < 4; ++chunk_4) {
        {
      *(((float32x4*)numerator) + chunk_4) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)v_operand) + chunk_4),
                    *(((float16x4*)probabilities) + 0),
                    *(((float32x4*)numerator) + chunk_4));
    };
      }
    }
  }
  denominator[0] = (denominator[0] + __shfl_xor_sync((uint64_t)18446744073709551615, denominator[0], 32, 64));
  denominator[0] = (denominator[0] + __shfl_xor_sync((uint64_t)18446744073709551615, denominator[0], 16, 64));
  #pragma unroll
  for (int chunk_5 = 0; chunk_5 < 4; ++chunk_5) {
    float4 __7;
      float4 v__6 = *(float4*)(numerator + (chunk_5 * 4));
      float4 v__7 = make_float4(denominator[0], denominator[0], denominator[0], denominator[0]);
      __7.x = (v__6.x/v__7.x);
      __7.y = (v__6.y/v__7.y);
      __7.z = (v__6.z/v__7.z);
      __7.w = (v__6.w/v__7.w);
    *(float4*)(numerator + (chunk_5 * 4)) = __7;
  }
  __syncwarp();
  #pragma unroll
  for (int chunk_6 = 0; chunk_6 < 4; ++chunk_6) {
    uint2 __8;
    float4 v__8 = *(float4*)(numerator + (chunk_6 * 4));
    ((half2*)(&__8))[0] = __float22half2_rn(((float2*)(&v__8))[0]);
    ((half2*)(&__8))[1] = __float22half2_rn(((float2*)(&v__8))[1]);
    *(uint2*)(shared_local_cast + 0) = __8;
    *(uint2*)(shared + ((((((int)threadIdx.x) & 15) * 64) + ((((chunk_6 * 2) + (((int)threadIdx.x) >> 5)) ^ (((int)threadIdx.x) & 7)) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4))) = *(uint2*)(shared_local_cast + 0);
  }
  __syncwarp();
  #pragma unroll
  for (int part_2 = 0; part_2 < 2; ++part_2) {
    *(uint4*)(Output + ((((((int)blockIdx.y) * 1048576) + (((int)blockIdx.x) * 1024)) + (part_2 * 512)) + (((int)threadIdx.x) * 8))) = *(uint4*)(shared + (((part_2 * 512) + ((((int)threadIdx.x) >> 3) * 64)) + (((((int)threadIdx.x) & 7) ^ (((int)threadIdx.x) >> 3)) * 8)));
  }
}

