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
  half_t k_local[4];
  float block_maximum[1];
  half_t probabilities[4];
  float partial_sum[1];
  half_t v_fetch[16];
  half_t v_column[4];
  half_t v_operand[16];
  float new_maximum[1];
  float rescale[1];
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
  int block_start = (Indices[((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8))] * 16);
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
    maximum[0] = block_maximum[0];
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
    partial_sum[0] = (partial_sum[0] + __shfl_xor_sync((uint64_t)18446744073709551615, partial_sum[0], 32, 64));
    partial_sum[0] = (partial_sum[0] + __shfl_xor_sync((uint64_t)18446744073709551615, partial_sum[0], 16, 64));
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
    for (int chunk_2 = 0; chunk_2 < 4; ++chunk_2) {
      *(uint2*)(v_operand + (chunk_2 * 4)) = *(uint2*)(shared + (((((((int)threadIdx.x) & 3) * 256) + (chunk_2 * 64)) + (((((int)threadIdx.x) & 15) >> 2) * 16)) + ((((((int)threadIdx.x) >> 4) ^ chunk_2) ^ (((int)threadIdx.x) & 3)) * 4)));
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
  for (int selected = 1; selected < 8; ++selected) {
    int block_start_1 = (Indices[(((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8)) + selected)] * 16);
    if ((0 <= block_start_1) && (block_start_1 <= ((int)blockIdx.x))) {
      __syncwarp();
      #pragma unroll
      for (int part_2 = 0; part_2 < 2; ++part_2) {
        *(uint4*)(qk_fetch + 0) = *(uint4*)(K + ((((((int64_t)((int)blockIdx.y)) * (int64_t)65536) + (((int64_t)part_2) * (int64_t)512)) + (((int64_t)block_start_1) * (int64_t)64)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)));
        #pragma unroll
        for (int pack_2 = 0; pack_2 < 2; ++pack_2) {
          *(uint2*)(shared + ((((part_2 * 512) + ((((int)threadIdx.x) >> 3) * 64)) + (((((int)threadIdx.x) & 7) ^ (((int)threadIdx.x) >> 3)) * 8)) + (((pack_2 ^ part_2) ^ ((((int)threadIdx.x) & 15) >> 3)) * 4))) = *(uint2*)(qk_fetch + (pack_2 * 4));
        }
      }
      __syncwarp();
      float broadcast_var_4 = 0x0p+0f/*0.000000e+00*/;
      *(float4*)(scores + 0) = make_float4(broadcast_var_4, broadcast_var_4, broadcast_var_4, broadcast_var_4);
      #pragma unroll
      for (int chunk_4 = 0; chunk_4 < 4; ++chunk_4) {
        *(uint2*)(k_local + 0) = *(uint2*)(shared + ((((((int)threadIdx.x) & 15) * 64) + ((((chunk_4 * 2) + (((int)threadIdx.x) >> 5)) ^ (((int)threadIdx.x) & 7)) * 8)) + (((((((int)threadIdx.x) & 31) >> 4) ^ ((((int)threadIdx.x) & 15) >> 3)) ^ (((int)threadIdx.x) & 1)) * 4)));
        {
      *(((float32x4*)scores) + 0) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)k_local) + 0),
                    *(((float16x4*)q_local) + chunk_4),
                    *(((float32x4*)scores) + 0));
    };
      }
      #pragma unroll
      for (int element_3 = 0; element_3 < 4; ++element_3) {
        float condval_1;
        if ((((((((int)threadIdx.x) >> 4) * 4) + block_start_1) + element_3) <= ((int)blockIdx.x))) {
          condval_1 = scores[element_3];
        } else {
          condval_1 = -MACART_INF_F;
        }
        scores[element_3] = condval_1;
      }
      block_maximum[0] = -MACART_INF_F;
      #pragma unroll
      for (int element_4 = 0; element_4 < 4; ++element_4) {
        block_maximum[0] = max(block_maximum[0], scores[element_4]);
      }
      block_maximum[0] = max(block_maximum[0], __shfl_xor_sync((uint64_t)18446744073709551615, block_maximum[0], 32, 64));
      block_maximum[0] = max(block_maximum[0], __shfl_xor_sync((uint64_t)18446744073709551615, block_maximum[0], 16, 64));
      new_maximum[0] = max(maximum[0], block_maximum[0]);
      rescale[0] = exp2f(((maximum[0] - new_maximum[0]) * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/));
      #pragma unroll
      for (int chunk_5 = 0; chunk_5 < 4; ++chunk_5) {
        float4 __6;
          float4 v__4 = *(float4*)(numerator + (chunk_5 * 4));
          float4 v__5 = make_float4(rescale[0], rescale[0], rescale[0], rescale[0]);
          __6.x = (v__4.x*v__5.x);
          __6.y = (v__4.y*v__5.y);
          __6.z = (v__4.z*v__5.z);
          __6.w = (v__4.w*v__5.w);
        *(float4*)(numerator + (chunk_5 * 4)) = __6;
      }
      denominator[0] = (denominator[0] * rescale[0]);
      maximum[0] = new_maximum[0];
      float broadcast_var_5 = 0x1.7154764ee6c2fp-3f/*1.803369e-01*/;
      float broadcast_var_6 = 0x1p+3f/*8.000000e+00*/;
      uint2 __7;
      float4 __8;
      float4 __9;
        float4 __10;
          float4 __11;
            float4 v__6 = *(float4*)(scores + 0);
            float4 v__7 = make_float4(maximum[0], maximum[0], maximum[0], maximum[0]);
            __11.x = (v__6.x-v__7.x);
            __11.y = (v__6.y-v__7.y);
            __11.z = (v__6.z-v__7.z);
            __11.w = (v__6.w-v__7.w);
          float4 v__8 = make_float4(broadcast_var_5, broadcast_var_5, broadcast_var_5, broadcast_var_5);
          __10.x = (__11.x*v__8.x);
          __10.y = (__11.y*v__8.y);
          __10.z = (__11.z*v__8.z);
          __10.w = (__11.w*v__8.w);
        float4 v__9 = make_float4(broadcast_var_6, broadcast_var_6, broadcast_var_6, broadcast_var_6);
        __9.x = (__10.x+v__9.x);
        __9.y = (__10.y+v__9.y);
        __9.z = (__10.z+v__9.z);
        __9.w = (__10.w+v__9.w);
      __8.x = exp2f(__9.x);
      __8.y = exp2f(__9.y);
      __8.z = exp2f(__9.z);
      __8.w = exp2f(__9.w);
      ((half2*)(&__7))[0] = __float22half2_rn(((float2*)(&__8))[0]);
      ((half2*)(&__7))[1] = __float22half2_rn(((float2*)(&__8))[1]);
      *(uint2*)(probabilities + 0) = __7;
      partial_sum[0] = 0x0p+0f/*0.000000e+00*/;
      #pragma unroll
      for (int element_5 = 0; element_5 < 4; ++element_5) {
        partial_sum[0] = (partial_sum[0] + ((float)probabilities[element_5]));
      }
      partial_sum[0] = (partial_sum[0] + __shfl_xor_sync((uint64_t)18446744073709551615, partial_sum[0], 32, 64));
      partial_sum[0] = (partial_sum[0] + __shfl_xor_sync((uint64_t)18446744073709551615, partial_sum[0], 16, 64));
      denominator[0] = (denominator[0] + partial_sum[0]);
      __syncwarp();
      #pragma unroll
      for (int row_2 = 0; row_2 < 4; ++row_2) {
        *(uint2*)(v_fetch + (row_2 * 4)) = *(uint2*)(V + (((((((int64_t)((int)blockIdx.y)) * (int64_t)65536) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)4) * (int64_t)256)) + (((int64_t)block_start_1) * (int64_t)64)) + (((int64_t)row_2) * (int64_t)64)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)4)));
      }
      #pragma unroll
      for (int col_1 = 0; col_1 < 4; ++col_1) {
        for (int row_3 = 0; row_3 < 4; ++row_3) {
          v_column[row_3] = v_fetch[((row_3 * 4) + col_1)];
        }
        *(uint2*)(shared + (((col_1 * 256) + ((((int)threadIdx.x) & 15) * 16)) + ((((((int)threadIdx.x) >> 4) ^ ((((int)threadIdx.x) & 15) >> 2)) ^ col_1) * 4))) = *(uint2*)(v_column + 0);
      }
      __syncwarp();
      #pragma unroll
      for (int chunk_6 = 0; chunk_6 < 4; ++chunk_6) {
        *(uint2*)(v_operand + (chunk_6 * 4)) = *(uint2*)(shared + (((((((int)threadIdx.x) & 3) * 256) + (chunk_6 * 64)) + (((((int)threadIdx.x) & 15) >> 2) * 16)) + ((((((int)threadIdx.x) >> 4) ^ chunk_6) ^ (((int)threadIdx.x) & 3)) * 4)));
      }
      #pragma unroll
      for (int chunk_7 = 0; chunk_7 < 4; ++chunk_7) {
        {
      *(((float32x4*)numerator) + chunk_7) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)v_operand) + chunk_7),
                    *(((float16x4*)probabilities) + 0),
                    *(((float32x4*)numerator) + chunk_7));
    };
      }
    }
  }
  #pragma unroll
  for (int chunk_8 = 0; chunk_8 < 4; ++chunk_8) {
    float4 __12;
      float4 v__10 = *(float4*)(numerator + (chunk_8 * 4));
      float4 v__11 = make_float4(denominator[0], denominator[0], denominator[0], denominator[0]);
      __12.x = (v__10.x/v__11.x);
      __12.y = (v__10.y/v__11.y);
      __12.z = (v__10.z/v__11.z);
      __12.w = (v__10.w/v__11.w);
    *(float4*)(numerator + (chunk_8 * 4)) = __12;
  }
  __syncwarp();
  #pragma unroll
  for (int chunk_9 = 0; chunk_9 < 4; ++chunk_9) {
    uint2 __13;
    float4 v__12 = *(float4*)(numerator + (chunk_9 * 4));
    ((half2*)(&__13))[0] = __float22half2_rn(((float2*)(&v__12))[0]);
    ((half2*)(&__13))[1] = __float22half2_rn(((float2*)(&v__12))[1]);
    *(uint2*)(shared_local_cast + 0) = __13;
    *(uint2*)(shared + ((((((int)threadIdx.x) & 15) * 64) + ((((chunk_9 * 2) + (((int)threadIdx.x) >> 5)) ^ (((int)threadIdx.x) & 7)) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4))) = *(uint2*)(shared_local_cast + 0);
  }
  __syncwarp();
  #pragma unroll
  for (int part_3 = 0; part_3 < 2; ++part_3) {
    *(uint4*)(Output + ((((((int)blockIdx.y) * 1048576) + (((int)blockIdx.x) * 1024)) + (part_3 * 512)) + (((int)threadIdx.x) * 8))) = *(uint4*)(shared + (((part_3 * 512) + ((((int)threadIdx.x) >> 3) * 64)) + (((((int)threadIdx.x) & 7) ^ (((int)threadIdx.x) >> 3)) * 8)));
  }
}

