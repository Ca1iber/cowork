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
  half_t qk_store[8];
  extern __shared__ __align__(1024) half_t shared[];
  half_t q_local[16];
  float numerator[16];
  float denominator[1];
  float maximum[1];
  float scores[4];
  half_t probabilities[4];
  float partial_sum[1];
  half_t v_fetch[16];
  half_t v_operand[16];
  half_t k_local[4];
  half_t v_column[2];
  half_t shared_local_cast[4];
  half_t output_fetch[8];
  #pragma unroll
  for (int part = 0; part < 2; ++part) {
    *(uint4*)(qk_fetch + 0) = *(uint4*)(Q + ((((((int)blockIdx.y) * 4194304) + (((int)blockIdx.x) * 1024)) + (part * 512)) + (((int)threadIdx.x) * 8)));
    half_t condval;
    if ((0 < (part ^ ((((int)threadIdx.x) & 15) >> 3)))) {
      condval = qk_fetch[4];
    } else {
      condval = qk_fetch[0];
    }
    qk_store[0] = condval;
    half_t condval_1;
    if ((0 < (part ^ ((((int)threadIdx.x) & 15) >> 3)))) {
      condval_1 = qk_fetch[5];
    } else {
      condval_1 = qk_fetch[1];
    }
    qk_store[1] = condval_1;
    half_t condval_2;
    if ((0 < (part ^ ((((int)threadIdx.x) & 15) >> 3)))) {
      condval_2 = qk_fetch[6];
    } else {
      condval_2 = qk_fetch[2];
    }
    qk_store[2] = condval_2;
    half_t condval_3;
    if ((0 < (part ^ ((((int)threadIdx.x) & 15) >> 3)))) {
      condval_3 = qk_fetch[7];
    } else {
      condval_3 = qk_fetch[3];
    }
    qk_store[3] = condval_3;
    half_t condval_4;
    if ((0 < (part ^ ((((int)threadIdx.x) & 15) >> 3)))) {
      condval_4 = qk_fetch[0];
    } else {
      condval_4 = qk_fetch[4];
    }
    qk_store[4] = condval_4;
    half_t condval_5;
    if ((0 < (part ^ ((((int)threadIdx.x) & 15) >> 3)))) {
      condval_5 = qk_fetch[1];
    } else {
      condval_5 = qk_fetch[5];
    }
    qk_store[5] = condval_5;
    half_t condval_6;
    if ((0 < (part ^ ((((int)threadIdx.x) & 15) >> 3)))) {
      condval_6 = qk_fetch[2];
    } else {
      condval_6 = qk_fetch[6];
    }
    qk_store[6] = condval_6;
    half_t condval_7;
    if ((0 < (part ^ ((((int)threadIdx.x) & 15) >> 3)))) {
      condval_7 = qk_fetch[3];
    } else {
      condval_7 = qk_fetch[7];
    }
    qk_store[7] = condval_7;
    *(uint4*)(shared + (((part * 512) + ((((int)threadIdx.x) >> 3) * 64)) + (((((int)threadIdx.x) & 7) ^ (((int)threadIdx.x) >> 3)) * 8))) = *(uint4*)(qk_store + 0);
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
  int block_start = (Indices[((((int)blockIdx.y) * 4096) + ((int)blockIdx.x))] * 16);
  if ((0 <= block_start) && (block_start <= ((int)blockIdx.x))) {
    __syncwarp();
    #pragma unroll
    for (int part_1 = 0; part_1 < 2; ++part_1) {
      *(uint4*)(qk_fetch + 0) = *(uint4*)(K + ((((((int64_t)((int)blockIdx.y)) * (int64_t)262144) + (((int64_t)part_1) * (int64_t)512)) + (((int64_t)block_start) * (int64_t)64)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)));
      half_t condval_8;
      if ((0 < (part_1 ^ ((((int)threadIdx.x) & 15) >> 3)))) {
        condval_8 = qk_fetch[4];
      } else {
        condval_8 = qk_fetch[0];
      }
      qk_store[0] = condval_8;
      half_t condval_9;
      if ((0 < (part_1 ^ ((((int)threadIdx.x) & 15) >> 3)))) {
        condval_9 = qk_fetch[5];
      } else {
        condval_9 = qk_fetch[1];
      }
      qk_store[1] = condval_9;
      half_t condval_10;
      if ((0 < (part_1 ^ ((((int)threadIdx.x) & 15) >> 3)))) {
        condval_10 = qk_fetch[6];
      } else {
        condval_10 = qk_fetch[2];
      }
      qk_store[2] = condval_10;
      half_t condval_11;
      if ((0 < (part_1 ^ ((((int)threadIdx.x) & 15) >> 3)))) {
        condval_11 = qk_fetch[7];
      } else {
        condval_11 = qk_fetch[3];
      }
      qk_store[3] = condval_11;
      half_t condval_12;
      if ((0 < (part_1 ^ ((((int)threadIdx.x) & 15) >> 3)))) {
        condval_12 = qk_fetch[0];
      } else {
        condval_12 = qk_fetch[4];
      }
      qk_store[4] = condval_12;
      half_t condval_13;
      if ((0 < (part_1 ^ ((((int)threadIdx.x) & 15) >> 3)))) {
        condval_13 = qk_fetch[1];
      } else {
        condval_13 = qk_fetch[5];
      }
      qk_store[5] = condval_13;
      half_t condval_14;
      if ((0 < (part_1 ^ ((((int)threadIdx.x) & 15) >> 3)))) {
        condval_14 = qk_fetch[2];
      } else {
        condval_14 = qk_fetch[6];
      }
      qk_store[6] = condval_14;
      half_t condval_15;
      if ((0 < (part_1 ^ ((((int)threadIdx.x) & 15) >> 3)))) {
        condval_15 = qk_fetch[3];
      } else {
        condval_15 = qk_fetch[7];
      }
      qk_store[7] = condval_15;
      *(uint4*)(shared + (((part_1 * 512) + ((((int)threadIdx.x) >> 3) * 64)) + (((((int)threadIdx.x) & 7) ^ (((int)threadIdx.x) >> 3)) * 8))) = *(uint4*)(qk_store + 0);
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
      float condval_16;
      if ((((((((int)threadIdx.x) >> 4) * 4) + block_start) + element) <= ((int)blockIdx.x))) {
        condval_16 = scores[element];
      } else {
        condval_16 = -MACART_INF_F;
      }
      scores[element] = condval_16;
    }
    maximum[0] = -MACART_INF_F;
    #pragma unroll
    for (int element_1 = 0; element_1 < 4; ++element_1) {
      maximum[0] = max(maximum[0], scores[element_1]);
    }
    maximum[0] = max(maximum[0], __shfl_xor_sync((uint64_t)18446744073709551615, maximum[0], 32, 64));
    maximum[0] = max(maximum[0], __shfl_xor_sync((uint64_t)18446744073709551615, maximum[0], 16, 64));
    float broadcast_var_2 = 0x1.7154764ee6c2fp-3f/*1.803369e-01*/;
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
    denominator[0] = (denominator[0] + partial_sum[0]);
    __syncwarp();
    #pragma unroll
    for (int row = 0; row < 2; ++row) {
      *(uint4*)(v_fetch + (row * 8)) = *(uint4*)(V + (((((((int64_t)((int)blockIdx.y)) * (int64_t)262144) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)3) * (int64_t)128)) + (((int64_t)block_start) * (int64_t)64)) + (((int64_t)row) * (int64_t)64)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)7) * (int64_t)8)));
    }
    #pragma unroll
    for (int col = 0; col < 8; ++col) {
      for (int row_1 = 0; row_1 < 2; ++row_1) {
        v_column[row_1] = v_fetch[((row_1 * 8) + col)];
      }
      *(uint1*)(shared + ((((((((col & 3) * 16) + ((((int)threadIdx.x) & 7) * 2)) + (col >> 2)) ^ ((((int)threadIdx.x) & 31) >> 4)) * 16) + ((((((int)threadIdx.x) >> 4) ^ ((((int)threadIdx.x) & 7) >> 1)) ^ (col & 3)) * 4)) + (((((int)threadIdx.x) & 15) >> 3) * 2))) = *(uint1*)(v_column + 0);
    }
    __syncwarp();
    #pragma unroll
    for (int chunk_2 = 0; chunk_2 < 4; ++chunk_2) {
      *(uint2*)(v_operand + (chunk_2 * 4)) = *(uint2*)(shared + (((((((((int)threadIdx.x) & 3) * 16) + (chunk_2 * 4)) + ((((int)threadIdx.x) & 15) >> 2)) ^ ((((int)threadIdx.x) & 31) >> 4)) * 16) + ((((((int)threadIdx.x) >> 4) ^ chunk_2) ^ (((int)threadIdx.x) & 3)) * 4)));
    }
    #pragma unroll
    for (int chunk_3 = 0; chunk_3 < 4; ++chunk_3) {
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
  for (int chunk_4 = 0; chunk_4 < 4; ++chunk_4) {
    float4 __6;
      float4 v__4 = *(float4*)(numerator + (chunk_4 * 4));
      float4 v__5 = make_float4(denominator[0], denominator[0], denominator[0], denominator[0]);
      __6.x = (v__4.x/v__5.x);
      __6.y = (v__4.y/v__5.y);
      __6.z = (v__4.z/v__5.z);
      __6.w = (v__4.w/v__5.w);
    *(float4*)(numerator + (chunk_4 * 4)) = __6;
  }
  __syncwarp();
  #pragma unroll
  for (int chunk_5 = 0; chunk_5 < 4; ++chunk_5) {
    uint2 __7;
    float4 v__6 = *(float4*)(numerator + (chunk_5 * 4));
    ((half2*)(&__7))[0] = __float22half2_rn(((float2*)(&v__6))[0]);
    ((half2*)(&__7))[1] = __float22half2_rn(((float2*)(&v__6))[1]);
    *(uint2*)(shared_local_cast + 0) = __7;
    *(uint2*)(shared + ((((((int)threadIdx.x) & 15) * 64) + ((((chunk_5 * 2) + (((int)threadIdx.x) >> 5)) ^ (((int)threadIdx.x) & 7)) * 8)) + ((((((int)threadIdx.x) & 31) >> 4) ^ ((((int)threadIdx.x) & 15) >> 3)) * 4))) = *(uint2*)(shared_local_cast + 0);
  }
  __syncwarp();
  #pragma unroll
  for (int part_2 = 0; part_2 < 2; ++part_2) {
    #pragma unroll
    for (int pack = 0; pack < 2; ++pack) {
      *(uint2*)(output_fetch + (pack * 4)) = *(uint2*)(shared + ((((part_2 * 512) + ((((int)threadIdx.x) >> 3) * 64)) + (((((int)threadIdx.x) & 7) ^ (((int)threadIdx.x) >> 3)) * 8)) + ((pack ^ part_2) * 4)));
    }
    *(uint4*)(Output + ((((((int)blockIdx.y) * 4194304) + (((int)blockIdx.x) * 1024)) + (part_2 * 512)) + (((int)threadIdx.x) * 8))) = *(uint4*)(output_fetch + 0);
  }
}

