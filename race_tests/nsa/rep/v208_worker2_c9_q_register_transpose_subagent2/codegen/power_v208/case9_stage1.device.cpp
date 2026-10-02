#include <tl_templates/maca/gemm.h>
#include <tl_templates/maca/copy.h>
#include <tl_templates/maca/reduce.h>
#include <tl_templates/maca/intrin.h>
#include <tl_templates/maca/atomic.h>
#include <tl_templates/maca/threadblock_swizzle.h>
#include <tl_templates/maca/debug.h>

extern "C" __global__ void native_sparse_attention_kernel(const int* __restrict__ Indices, const half_t* __restrict__ K, half_t* __restrict__ Output, const half_t* __restrict__ Q, const half_t* __restrict__ V);
extern "C" __global__ void __launch_bounds__(64, 1) native_sparse_attention_kernel(const int* __restrict__ Indices, const half_t* __restrict__ K, half_t* __restrict__ Output, const half_t* __restrict__ Q, const half_t* __restrict__ V) {
  half_t q_local[16];
  uint q_receive[4];
  float numerator[16];
  float denominator[1];
  float maximum[1];
  extern __shared__ __align__(1024) half_t shared[];
  float scores[4];
  half_t probabilities[4];
  float partial_sum[1];
  half_t v_fetch[16];
  half_t v_operand[16];
  half_t qk_fetch[8];
  half_t k_local[4];
  half_t v_column[2];
  half_t shared_local_cast[4];
  half_t output_fetch[8];
  #pragma unroll
  for (int part = 0; part < 2; ++part) {
    *(uint4*)(q_local + (part * 8)) = *(uint4*)(Q + ((((((int)blockIdx.x) * 1024) + ((((int)threadIdx.x) & 15) * 64)) + ((((int)threadIdx.x) >> 4) * 16)) + (part * 8)));
  }
  #pragma unroll
  for (int other = 0; other < 2; ++other) {
    #pragma unroll
    for (int pair = 0; pair < 2; ++pair) {
      half_t condval;
      if ((((((int)threadIdx.x) & 31) >> 4) == 0)) {
        condval = q_local[(((other * 8) + (pair * 2)) + 4)];
      } else {
        condval = q_local[((other * 8) + (pair * 2))];
      }
      half_t send_lo = condval;
      half_t condval_1;
      if ((((((int)threadIdx.x) & 31) >> 4) == 0)) {
        condval_1 = q_local[(((other * 8) + (pair * 2)) + 5)];
      } else {
        condval_1 = q_local[(((other * 8) + (pair * 2)) + 1)];
      }
      half_t send_hi = condval_1;
      uint send_word = (((uint)(*(ushort *)(&(send_lo)))) | (((uint)(*(ushort *)(&(send_hi)))) << (uint)16));
      q_receive[((other * 2) + pair)] = __shfl_xor_sync((uint64_t)18446744073709551615, send_word, 16, 64);
    }
  }
  #pragma unroll
  for (int cell = 0; cell < 4; ++cell) {
    for (int element = 0; element < 2; ++element) {
      uint received_word = q_receive[(((cell >> 1) * 2) + element)];
      ushort2 __1;
      uint2 __2;
        uint2 v_ = make_uint2(received_word, received_word);
        uint2 v__1 = make_uint2(((uint)0)+((uint)16*0), ((uint)0)+((uint)16*1));
        __2.x = (v_.x >> v__1.x);
        __2.y = (v_.y >> v__1.y);
      __1.x = (ushort)(__2.x);
      __1.y = (ushort)(__2.y);
      uint1 received_value = (*(uint1 *)(&(__1)));
      uint1 condval_2;
      if (((cell & 1) == ((((int)threadIdx.x) & 31) >> 4))) {
        condval_2 = *(uint1*)(q_local + ((cell * 4) + (element * 2)));
      } else {
        condval_2 = received_value;
      }
      *(uint1*)(q_local + ((cell * 4) + (element * 2))) = condval_2;
    }
  }
  #pragma unroll
  for (int other_1 = 0; other_1 < 2; ++other_1) {
    #pragma unroll
    for (int pair_1 = 0; pair_1 < 2; ++pair_1) {
      half_t condval_3;
      if (((((int)threadIdx.x) >> 5) == 0)) {
        condval_3 = q_local[(((other_1 * 4) + (pair_1 * 2)) + 8)];
      } else {
        condval_3 = q_local[((other_1 * 4) + (pair_1 * 2))];
      }
      half_t send_lo_1 = condval_3;
      half_t condval_4;
      if (((((int)threadIdx.x) >> 5) == 0)) {
        condval_4 = q_local[(((other_1 * 4) + (pair_1 * 2)) + 9)];
      } else {
        condval_4 = q_local[(((other_1 * 4) + (pair_1 * 2)) + 1)];
      }
      half_t send_hi_1 = condval_4;
      uint send_word_1 = (((uint)(*(ushort *)(&(send_lo_1)))) | (((uint)(*(ushort *)(&(send_hi_1)))) << (uint)16));
      q_receive[((other_1 * 2) + pair_1)] = __shfl_xor_sync((uint64_t)18446744073709551615, send_word_1, 32, 64);
    }
  }
  #pragma unroll
  for (int cell_1 = 0; cell_1 < 4; ++cell_1) {
    for (int element_1 = 0; element_1 < 2; ++element_1) {
      uint received_word_1 = q_receive[(((cell_1 & 1) * 2) + element_1)];
      ushort2 __3;
      uint2 __4;
        uint2 v__2 = make_uint2(received_word_1, received_word_1);
        uint2 v__3 = make_uint2(((uint)0)+((uint)16*0), ((uint)0)+((uint)16*1));
        __4.x = (v__2.x >> v__3.x);
        __4.y = (v__2.y >> v__3.y);
      __3.x = (ushort)(__4.x);
      __3.y = (ushort)(__4.y);
      uint1 received_value_1 = (*(uint1 *)(&(__3)));
      uint1 condval_5;
      if (((cell_1 >> 1) == (((int)threadIdx.x) >> 5))) {
        condval_5 = *(uint1*)(q_local + ((cell_1 * 4) + (element_1 * 2)));
      } else {
        condval_5 = received_value_1;
      }
      *(uint1*)(q_local + ((cell_1 * 4) + (element_1 * 2))) = condval_5;
    }
  }
  #pragma unroll
  for (int i = 0; i < 4; ++i) {
    float broadcast_var = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(numerator + (i * 4)) = make_float4(broadcast_var, broadcast_var, broadcast_var, broadcast_var);
  }
  denominator[0] = 0x0p+0f/*0.000000e+00*/;
  maximum[0] = -MACART_INF_F;
  int block_start = (Indices[((int)blockIdx.x)] * 16);
  if ((0 <= block_start) && (block_start <= ((int)blockIdx.x))) {
    __syncwarp();
    #pragma unroll
    for (int part_1 = 0; part_1 < 2; ++part_1) {
      *(uint4*)(qk_fetch + 0) = *(uint4*)(K + (((((int64_t)part_1) * (int64_t)512) + (((int64_t)block_start) * (int64_t)64)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)));
      #pragma unroll
      for (int pack = 0; pack < 2; ++pack) {
        *(uint2*)(shared + ((((part_1 * 512) + ((((int)threadIdx.x) >> 3) * 64)) + (((((int)threadIdx.x) & 7) ^ (((int)threadIdx.x) >> 3)) * 8)) + (((pack ^ part_1) ^ ((((int)threadIdx.x) & 15) >> 3)) * 4))) = *(uint2*)(qk_fetch + (pack * 4));
      }
    }
    __syncwarp();
    float broadcast_var_1 = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(scores + 0) = make_float4(broadcast_var_1, broadcast_var_1, broadcast_var_1, broadcast_var_1);
    #pragma unroll
    for (int chunk = 0; chunk < 4; ++chunk) {
      *(uint2*)(k_local + 0) = *(uint2*)(shared + ((((((int)threadIdx.x) & 15) * 64) + ((((chunk * 2) + (((int)threadIdx.x) >> 5)) ^ (((int)threadIdx.x) & 7)) * 8)) + (((((((int)threadIdx.x) & 31) >> 4) ^ ((((int)threadIdx.x) & 15) >> 3)) ^ (((int)threadIdx.x) & 1)) * 4)));
      {
      *(((float32x4*)scores) + 0) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)k_local) + 0),
                    *(((float16x4*)q_local) + chunk),
                    *(((float32x4*)scores) + 0));
    };
    }
    #pragma unroll
    for (int element_2 = 0; element_2 < 4; ++element_2) {
      float condval_6;
      if ((((((((int)threadIdx.x) >> 4) * 4) + block_start) + element_2) <= ((int)blockIdx.x))) {
        condval_6 = scores[element_2];
      } else {
        condval_6 = -MACART_INF_F;
      }
      scores[element_2] = condval_6;
    }
    maximum[0] = -MACART_INF_F;
    #pragma unroll
    for (int element_3 = 0; element_3 < 4; ++element_3) {
      maximum[0] = max(maximum[0], scores[element_3]);
    }
    maximum[0] = max(maximum[0], __shfl_xor_sync((uint64_t)18446744073709551615, maximum[0], 32, 64));
    maximum[0] = max(maximum[0], __shfl_xor_sync((uint64_t)18446744073709551615, maximum[0], 16, 64));
    float broadcast_var_2 = 0x1.7154764ee6c2fp-3f/*1.803369e-01*/;
    float broadcast_var_3 = 0x1p+3f/*8.000000e+00*/;
    uint2 __5;
    float4 __6;
    float4 __7;
      float4 __8;
        float4 __9;
          float4 v__4 = *(float4*)(scores + 0);
          float4 v__5 = make_float4(maximum[0], maximum[0], maximum[0], maximum[0]);
          __9.x = (v__4.x-v__5.x);
          __9.y = (v__4.y-v__5.y);
          __9.z = (v__4.z-v__5.z);
          __9.w = (v__4.w-v__5.w);
        float4 v__6 = make_float4(broadcast_var_2, broadcast_var_2, broadcast_var_2, broadcast_var_2);
        __8.x = (__9.x*v__6.x);
        __8.y = (__9.y*v__6.y);
        __8.z = (__9.z*v__6.z);
        __8.w = (__9.w*v__6.w);
      float4 v__7 = make_float4(broadcast_var_3, broadcast_var_3, broadcast_var_3, broadcast_var_3);
      __7.x = (__8.x+v__7.x);
      __7.y = (__8.y+v__7.y);
      __7.z = (__8.z+v__7.z);
      __7.w = (__8.w+v__7.w);
    __6.x = exp2f(__7.x);
    __6.y = exp2f(__7.y);
    __6.z = exp2f(__7.z);
    __6.w = exp2f(__7.w);
    ((half2*)(&__5))[0] = __float22half2_rn(((float2*)(&__6))[0]);
    ((half2*)(&__5))[1] = __float22half2_rn(((float2*)(&__6))[1]);
    *(uint2*)(probabilities + 0) = __5;
    partial_sum[0] = 0x0p+0f/*0.000000e+00*/;
    #pragma unroll
    for (int element_4 = 0; element_4 < 4; ++element_4) {
      partial_sum[0] = (partial_sum[0] + ((float)probabilities[element_4]));
    }
    denominator[0] = (denominator[0] + partial_sum[0]);
    __syncwarp();
    #pragma unroll
    for (int row = 0; row < 2; ++row) {
      *(uint4*)(v_fetch + (row * 8)) = *(uint4*)(V + (((((((int64_t)((int)threadIdx.x)) >> (int64_t)3) * (int64_t)128) + (((int64_t)block_start) * (int64_t)64)) + (((int64_t)row) * (int64_t)64)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)7) * (int64_t)8)));
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
    for (int chunk_1 = 0; chunk_1 < 4; ++chunk_1) {
      *(uint2*)(v_operand + (chunk_1 * 4)) = *(uint2*)(shared + (((((((((int)threadIdx.x) & 3) * 16) + (chunk_1 * 4)) + ((((int)threadIdx.x) & 15) >> 2)) ^ ((((int)threadIdx.x) & 31) >> 4)) * 16) + ((((((int)threadIdx.x) >> 4) ^ chunk_1) ^ (((int)threadIdx.x) & 3)) * 4)));
    }
    #pragma unroll
    for (int chunk_2 = 0; chunk_2 < 4; ++chunk_2) {
      {
      *(((float32x4*)numerator) + chunk_2) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)v_operand) + chunk_2),
                    *(((float16x4*)probabilities) + 0),
                    *(((float32x4*)numerator) + chunk_2));
    };
    }
  }
  denominator[0] = (denominator[0] + __shfl_xor_sync((uint64_t)18446744073709551615, denominator[0], 32, 64));
  denominator[0] = (denominator[0] + __shfl_xor_sync((uint64_t)18446744073709551615, denominator[0], 16, 64));
  #pragma unroll
  for (int chunk_3 = 0; chunk_3 < 4; ++chunk_3) {
    float4 __10;
      float4 v__8 = *(float4*)(numerator + (chunk_3 * 4));
      float4 v__9 = make_float4(denominator[0], denominator[0], denominator[0], denominator[0]);
      __10.x = (v__8.x/v__9.x);
      __10.y = (v__8.y/v__9.y);
      __10.z = (v__8.z/v__9.z);
      __10.w = (v__8.w/v__9.w);
    *(float4*)(numerator + (chunk_3 * 4)) = __10;
  }
  __syncwarp();
  #pragma unroll
  for (int chunk_4 = 0; chunk_4 < 4; ++chunk_4) {
    uint2 __11;
    float4 v__10 = *(float4*)(numerator + (chunk_4 * 4));
    ((half2*)(&__11))[0] = __float22half2_rn(((float2*)(&v__10))[0]);
    ((half2*)(&__11))[1] = __float22half2_rn(((float2*)(&v__10))[1]);
    *(uint2*)(shared_local_cast + 0) = __11;
    *(uint2*)(shared + ((((((int)threadIdx.x) & 15) * 64) + ((((chunk_4 * 2) + (((int)threadIdx.x) >> 5)) ^ (((int)threadIdx.x) & 7)) * 8)) + ((((((int)threadIdx.x) & 31) >> 4) ^ ((((int)threadIdx.x) & 15) >> 3)) * 4))) = *(uint2*)(shared_local_cast + 0);
  }
  __syncwarp();
  #pragma unroll
  for (int part_2 = 0; part_2 < 2; ++part_2) {
    #pragma unroll
    for (int pack_1 = 0; pack_1 < 2; ++pack_1) {
      *(uint2*)(output_fetch + (pack_1 * 4)) = *(uint2*)(shared + ((((part_2 * 512) + ((((int)threadIdx.x) >> 3) * 64)) + (((((int)threadIdx.x) & 7) ^ (((int)threadIdx.x) >> 3)) * 8)) + ((pack_1 ^ part_2) * 4)));
    }
    *(uint4*)(Output + (((((int)blockIdx.x) * 1024) + (part_2 * 512)) + (((int)threadIdx.x) * 8))) = *(uint4*)(output_fetch + 0);
  }
}

