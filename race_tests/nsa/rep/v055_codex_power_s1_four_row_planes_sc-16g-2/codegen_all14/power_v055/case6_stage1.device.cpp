#include <tl_templates/maca/gemm.h>
#include <tl_templates/maca/copy.h>
#include <tl_templates/maca/reduce.h>
#include <tl_templates/maca/intrin.h>
#include <tl_templates/maca/atomic.h>
#include <tl_templates/maca/threadblock_swizzle.h>
#include <tl_templates/maca/debug.h>

extern "C" __global__ void native_sparse_attention_kernel(const int* __restrict__ Indices, const half_t* __restrict__ K, half_t* __restrict__ Output, const half_t* __restrict__ Q, const half_t* __restrict__ V);
extern "C" __global__ void __launch_bounds__(64, 1) native_sparse_attention_kernel(const int* __restrict__ Indices, const half_t* __restrict__ K, half_t* __restrict__ Output, const half_t* __restrict__ Q, const half_t* __restrict__ V) {
  float denominator[1];
  extern __shared__ __align__(1024) half_t shared[];
  half_t q_local[32];
  float scores[8];
  float maximum[1];
  half_t probabilities[8];
  float numerator[32];
  half_t k_local[4];
  half_t v_fetch[16];
  half_t v_column[4];
  half_t v_operand[16];
  half_t shared_local_cast[4];
  int block_start = (Indices[((((int)blockIdx.y) * 1024) + ((int)blockIdx.x))] * 32);
  denominator[0] = 0x0p+0f/*0.000000e+00*/;
  if ((0 <= block_start) && (block_start <= ((int)blockIdx.x))) {
    #pragma unroll
    for (int part = 0; part < 4; ++part) {
      *(uint4*)(shared + ((((((((int)threadIdx.x) & 15) >> 3) * 1024) + (part * 256)) + ((((int)threadIdx.x) >> 4) * 64)) + (((((int)threadIdx.x) & 7) ^ (((part & 1) * 4) + (((int)threadIdx.x) >> 4))) * 8))) = *(uint4*)(Q + ((((((int)blockIdx.y) * 2097152) + (((int)blockIdx.x) * 2048)) + (part * 512)) + (((int)threadIdx.x) * 8)));
    }
    __syncwarp();
    for (int chunk = 0; chunk < 8; ++chunk) {
      *(uint2*)(q_local + (chunk * 4)) = *(uint2*)(shared + (((((chunk >> 2) * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((chunk & 3) * 2) + (((int)threadIdx.x) >> 5)) ^ (((int)threadIdx.x) & 7)) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4)));
    }
    __syncwarp();
    #pragma unroll
    for (int part_1 = 0; part_1 < 8; ++part_1) {
      half_t broadcast_var = half_t(0x0p+0f/*0.000000e+00*/);
      uint4 condval;
      if ((((((((int)threadIdx.x) >> 4) + block_start) >> 2) + part_1) < 256)) {
        condval = *(uint4*)(K + ((((((int64_t)((int)blockIdx.y)) * (int64_t)131072) + (((int64_t)part_1) * (int64_t)512)) + (((int64_t)block_start) * (int64_t)128)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)));
      } else {
        condval = make_uint4(__pack_half2(broadcast_var, broadcast_var), __pack_half2(broadcast_var, broadcast_var), __pack_half2(broadcast_var, broadcast_var), __pack_half2(broadcast_var, broadcast_var));
      }
      *(uint4*)(shared + ((((((((int)threadIdx.x) & 15) >> 3) * 2048) + (part_1 * 256)) + ((((int)threadIdx.x) >> 4) * 64)) + (((((int)threadIdx.x) & 7) ^ (((part_1 & 1) * 4) + (((int)threadIdx.x) >> 4))) * 8))) = condval;
    }
    __syncwarp();
    #pragma unroll
    for (int i = 0; i < 2; ++i) {
      float broadcast_var_1 = 0x0p+0f/*0.000000e+00*/;
      *(float4*)(scores + (i * 4)) = make_float4(broadcast_var_1, broadcast_var_1, broadcast_var_1, broadcast_var_1);
    }
    for (int chunk_1 = 0; chunk_1 < 8; ++chunk_1) {
      #pragma unroll
      for (int key_tile = 0; key_tile < 2; ++key_tile) {
        *(uint2*)(k_local + 0) = *(uint2*)(shared + ((((((chunk_1 >> 2) * 2048) + (key_tile * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (((((chunk_1 & 3) * 2) + (((int)threadIdx.x) >> 5)) ^ (((int)threadIdx.x) & 7)) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4)));
        {
      *(((float32x4*)scores) + key_tile) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)k_local) + 0),
                    *(((float16x4*)q_local) + chunk_1),
                    *(((float32x4*)scores) + key_tile));
    };
      }
    }
    #pragma unroll
    for (int key_tile_1 = 0; key_tile_1 < 2; ++key_tile_1) {
      #pragma unroll
      for (int element = 0; element < 4; ++element) {
        float condval_1;
        if ((((((key_tile_1 * 16) + ((((int)threadIdx.x) >> 4) * 4)) + block_start) + element) <= ((int)blockIdx.x))) {
          condval_1 = scores[((key_tile_1 * 4) + element)];
        } else {
          condval_1 = -MACART_INF_F;
        }
        scores[((key_tile_1 * 4) + element)] = condval_1;
      }
    }
    maximum[0] = -MACART_INF_F;
    #pragma unroll
    for (int element_1 = 0; element_1 < 8; ++element_1) {
      maximum[0] = max(maximum[0], scores[element_1]);
    }
    maximum[0] = max(maximum[0], __shfl_xor_sync((uint64_t)18446744073709551615, maximum[0], 32, 64));
    maximum[0] = max(maximum[0], __shfl_xor_sync((uint64_t)18446744073709551615, maximum[0], 16, 64));
    #pragma unroll
    for (int key_tile_2 = 0; key_tile_2 < 2; ++key_tile_2) {
      float broadcast_var_2 = 0x1.0527dbd5cafffp-3f/*1.275174e-01*/;
      float broadcast_var_3 = 0x1p+3f/*8.000000e+00*/;
      uint2 __1;
      float4 __2;
      float4 __3;
        float4 __4;
          float4 __5;
            float4 v_ = *(float4*)(scores + (key_tile_2 * 4));
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
      *(uint2*)(probabilities + (key_tile_2 * 4)) = __1;
    }
    #pragma unroll
    for (int element_2 = 0; element_2 < 8; ++element_2) {
      denominator[0] = (denominator[0] + ((float)probabilities[element_2]));
    }
    denominator[0] = (denominator[0] + __shfl_xor_sync((uint64_t)18446744073709551615, denominator[0], 32, 64));
    denominator[0] = (denominator[0] + __shfl_xor_sync((uint64_t)18446744073709551615, denominator[0], 16, 64));
    __syncwarp();
    #pragma unroll
    for (int key_tile_3 = 0; key_tile_3 < 2; ++key_tile_3) {
      #pragma unroll
      for (int plane = 0; plane < 2; ++plane) {
        #pragma unroll
        for (int row = 0; row < 4; ++row) {
          half_t broadcast_var_4 = half_t(0x0p+0f/*0.000000e+00*/);
          uint2 condval_2;
          if ((((((key_tile_3 * 16) + ((((int)threadIdx.x) >> 4) * 4)) + block_start) + row) < 1024)) {
            condval_2 = *(uint2*)(V + (((((((((int64_t)((int)blockIdx.y)) * (int64_t)131072) + (((int64_t)key_tile_3) * (int64_t)2048)) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)4) * (int64_t)512)) + (((int64_t)block_start) * (int64_t)128)) + (((int64_t)row) * (int64_t)128)) + (((int64_t)plane) * (int64_t)64)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)4)));
          } else {
            condval_2 = make_uint2(__pack_half2(broadcast_var_4, broadcast_var_4), __pack_half2(broadcast_var_4, broadcast_var_4));
          }
          *(uint2*)(v_fetch + (row * 4)) = condval_2;
        }
        #pragma unroll
        for (int col = 0; col < 4; ++col) {
          for (int row_1 = 0; row_1 < 4; ++row_1) {
            v_column[row_1] = v_fetch[((row_1 * 4) + col)];
          }
          *(uint2*)(shared + (((((key_tile_3 * 2048) + (plane * 1024)) + (col * 256)) + ((((int)threadIdx.x) & 15) * 16)) + ((((((int)threadIdx.x) >> 4) ^ ((((int)threadIdx.x) & 15) >> 2)) ^ col) * 4))) = *(uint2*)(v_column + 0);
        }
      }
    }
    __syncwarp();
    #pragma unroll
    for (int i_1 = 0; i_1 < 8; ++i_1) {
      float broadcast_var_5 = 0x0p+0f/*0.000000e+00*/;
      *(float4*)(numerator + (i_1 * 4)) = make_float4(broadcast_var_5, broadcast_var_5, broadcast_var_5, broadcast_var_5);
    }
    #pragma unroll
    for (int key_tile_4 = 0; key_tile_4 < 2; ++key_tile_4) {
      #pragma unroll
      for (int plane_1 = 0; plane_1 < 2; ++plane_1) {
        #pragma unroll
        for (int chunk_2 = 0; chunk_2 < 4; ++chunk_2) {
          *(uint2*)(v_operand + (chunk_2 * 4)) = *(uint2*)(shared + ((((((key_tile_4 * 2048) + (plane_1 * 1024)) + ((((int)threadIdx.x) & 3) * 256)) + (chunk_2 * 64)) + (((((int)threadIdx.x) & 15) >> 2) * 16)) + ((((((int)threadIdx.x) >> 4) ^ chunk_2) ^ (((int)threadIdx.x) & 3)) * 4)));
        }
        #pragma unroll
        for (int chunk_3 = 0; chunk_3 < 4; ++chunk_3) {
          {
      *(((float32x4*)numerator) + ((plane_1 * 4) + chunk_3)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)v_operand) + chunk_3),
                    *(((float16x4*)probabilities) + key_tile_4),
                    *(((float32x4*)numerator) + ((plane_1 * 4) + chunk_3)));
    };
        }
      }
    }
  } else {
    #pragma unroll
    for (int i_2 = 0; i_2 < 8; ++i_2) {
      float broadcast_var_6 = 0x0p+0f/*0.000000e+00*/;
      *(float4*)(numerator + (i_2 * 4)) = make_float4(broadcast_var_6, broadcast_var_6, broadcast_var_6, broadcast_var_6);
    }
  }
  #pragma unroll
  for (int i_3 = 0; i_3 < 32; ++i_3) {
    numerator[i_3] = (numerator[i_3] / denominator[0]);
  }
  __syncwarp();
  #pragma unroll
  for (int i_4 = 0; i_4 < 8; ++i_4) {
    uint2 __6;
    float4 v__4 = *(float4*)(numerator + (i_4 * 4));
    ((half2*)(&__6))[0] = __float22half2_rn(((float2*)(&v__4))[0]);
    ((half2*)(&__6))[1] = __float22half2_rn(((float2*)(&v__4))[1]);
    *(uint2*)(shared_local_cast + 0) = __6;
    *(uint2*)(shared + ((((((int)threadIdx.x) & 15) * 128) + ((((i_4 * 2) + (((int)threadIdx.x) >> 5)) ^ (((int)threadIdx.x) & 7)) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4))) = *(uint2*)(shared_local_cast + 0);
  }
  __syncwarp();
  #pragma unroll
  for (int part_2 = 0; part_2 < 4; ++part_2) {
    *(uint4*)(Output + ((((((int)blockIdx.y) * 2097152) + (((int)blockIdx.x) * 2048)) + (part_2 * 512)) + (((int)threadIdx.x) * 8))) = *(uint4*)(shared + (((part_2 * 512) + ((((int)threadIdx.x) >> 4) * 128)) + (((((int)threadIdx.x) & 15) ^ (((part_2 & 1) * 4) + (((int)threadIdx.x) >> 4))) * 8)));
  }
}

