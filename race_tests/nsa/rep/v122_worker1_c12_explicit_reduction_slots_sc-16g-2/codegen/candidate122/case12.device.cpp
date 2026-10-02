#include <tl_templates/maca/gemm.h>
#include <tl_templates/maca/copy.h>
#include <tl_templates/maca/reduce.h>
#include <tl_templates/maca/intrin.h>
#include <tl_templates/maca/atomic.h>
#include <tl_templates/maca/threadblock_swizzle.h>
#include <tl_templates/maca/debug.h>

extern "C" __global__ void native_sparse_attention_kernel(const int* __restrict__ Indices, const half_t* __restrict__ K, half_t* __restrict__ Output, const half_t* __restrict__ Q, const half_t* __restrict__ V);
extern "C" __global__ void __launch_bounds__(128, 1) native_sparse_attention_kernel(const int* __restrict__ Indices, const half_t* __restrict__ K, half_t* __restrict__ Output, const half_t* __restrict__ Q, const half_t* __restrict__ V) {
  extern __shared__ __align__(1024) uchar buf_dyn_shmem[];
  half_t qk_fetch[8];
  half_t q_local[16];
  float scores[16];
  half_t probabilities[16];
  float denominator[1];
  half_t k_local[4];
  float maximum[1];
  float numerator[16];
  half_t v_fetch[16];
  half_t v_operand[16];
  half_t v_column[4];
  half_t shared_local_cast[4];
  half_t output_fetch[8];
  if ((((int)threadIdx.x) >> 6) == 0) {
    #pragma unroll
    for (int part = 0; part < 2; ++part) {
      *(uint4*)(qk_fetch + 0) = *(uint4*)(Q + ((((((int)blockIdx.y) * 1048576) + (((int)blockIdx.x) * 1024)) + (part * 512)) + ((((int)threadIdx.x) & 63) * 8)));
      #pragma unroll
      for (int pack = 0; pack < 2; ++pack) {
        *(uint2*)(((half_t*)buf_dyn_shmem) + ((((part * 512) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8)) + (((pack ^ part) ^ ((((int)threadIdx.x) & 15) >> 3)) * 4))) = *(uint2*)(qk_fetch + (pack * 4));
      }
    }
  }
  __syncthreads();
  #pragma unroll
  for (int chunk = 0; chunk < 4; ++chunk) {
    *(uint2*)(q_local + (chunk * 4)) = *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((int)threadIdx.x) & 15) * 64) + ((((chunk * 2) + ((((int)threadIdx.x) & 63) >> 5)) ^ (((int)threadIdx.x) & 7)) * 8)) + (((((((int)threadIdx.x) & 31) >> 4) ^ ((((int)threadIdx.x) & 15) >> 3)) ^ (((int)threadIdx.x) & 1)) * 4)));
  }
  #pragma unroll
  for (int i = 0; i < 4; ++i) {
    float broadcast_var = -MACART_INF_F;
    *(float4*)(scores + (i * 4)) = make_float4(broadcast_var, broadcast_var, broadcast_var, broadcast_var);
  }
  #pragma unroll
  for (int i_1 = 0; i_1 < 4; ++i_1) {
    half_t broadcast_var_1 = half_t(0x0p+0f/*0.000000e+00*/);
    *(uint2*)(probabilities + (i_1 * 4)) = make_uint2(__pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1));
  }
  denominator[0] = 0x0p+0f/*0.000000e+00*/;
  #pragma unroll
  for (int selected = 0; selected < 4; ++selected) {
    int raw_index = Indices[((((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) >> 6) * 4)) + selected)];
    if (((0 <= raw_index) && (raw_index < 64)) && (raw_index <= (((int)blockIdx.x) >> 4))) {
      __syncwarp();
      #pragma unroll
      for (int part_1 = 0; part_1 < 2; ++part_1) {
        *(uint4*)(qk_fetch + 0) = *(uint4*)(K + ((((((int)blockIdx.y) * 65536) + (raw_index * 1024)) + (part_1 * 512)) + ((((int)threadIdx.x) & 63) * 8)));
        #pragma unroll
        for (int pack_1 = 0; pack_1 < 2; ++pack_1) {
          *(uint2*)(((half_t*)buf_dyn_shmem) + (((((((((int)threadIdx.x) >> 6) * 1024) + (part_1 * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8)) + (((pack_1 ^ part_1) ^ ((((int)threadIdx.x) & 15) >> 3)) * 4)) + 1024)) = *(uint2*)(qk_fetch + (pack_1 * 4));
        }
      }
      __syncwarp();
      #pragma unroll
      for (int element = 0; element < 4; ++element) {
        scores[((selected * 4) + element)] = 0x0p+0f/*0.000000e+00*/;
      }
      #pragma unroll
      for (int chunk_1 = 0; chunk_1 < 4; ++chunk_1) {
        *(uint2*)(k_local + 0) = *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((((int)threadIdx.x) >> 6) * 1024) + ((((int)threadIdx.x) & 15) * 64)) + ((((chunk_1 * 2) + ((((int)threadIdx.x) & 63) >> 5)) ^ (((int)threadIdx.x) & 7)) * 8)) + (((((((int)threadIdx.x) & 31) >> 4) ^ ((((int)threadIdx.x) & 15) >> 3)) ^ (((int)threadIdx.x) & 1)) * 4)) + 1024));
        {
      *(((float32x4*)scores) + selected) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)k_local) + 0),
                    *(((float16x4*)q_local) + chunk_1),
                    *(((float32x4*)scores) + selected));
    };
      }
      #pragma unroll
      for (int element_1 = 0; element_1 < 4; ++element_1) {
        float condval;
        if (((((raw_index * 16) + (((((int)threadIdx.x) & 63) >> 4) * 4)) + element_1) <= ((int)blockIdx.x))) {
          condval = scores[((selected * 4) + element_1)];
        } else {
          condval = -MACART_INF_F;
        }
        scores[((selected * 4) + element_1)] = condval;
      }
    }
  }
  maximum[0] = -MACART_INF_F;
  #pragma unroll
  for (int element_2 = 0; element_2 < 16; ++element_2) {
    maximum[0] = max(maximum[0], scores[element_2]);
  }
  maximum[0] = max(maximum[0], __shfl_xor_sync((uint64_t)18446744073709551615, maximum[0], 32, 64));
  maximum[0] = max(maximum[0], __shfl_xor_sync((uint64_t)18446744073709551615, maximum[0], 16, 64));
  if ((((int)threadIdx.x) & 63) < 16) {
    ((float*)buf_dyn_shmem)[((((((int)threadIdx.x) >> 6) * 16) + (((int)threadIdx.x) & 63)) + 1536)] = maximum[0];
  }
  __syncthreads();
  maximum[0] = max(((float*)buf_dyn_shmem)[((((int)threadIdx.x) & 15) + 1536)], ((float*)buf_dyn_shmem)[((((int)threadIdx.x) & 15) + 1552)]);
  if (-MACART_INF_F < maximum[0]) {
    #pragma unroll
    for (int selected_1 = 0; selected_1 < 4; ++selected_1) {
      float broadcast_var_2 = 0x1.7154764ee6c2fp-3f/*1.803369e-01*/;
      float broadcast_var_3 = 0x1p+3f/*8.000000e+00*/;
      uint2 __1;
      float4 __2;
      float4 __3;
        float4 __4;
          float4 __5;
            float4 v_ = *(float4*)(scores + (selected_1 * 4));
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
      *(uint2*)(probabilities + (selected_1 * 4)) = __1;
    }
  }
  #pragma unroll
  for (int element_3 = 0; element_3 < 16; ++element_3) {
    denominator[0] = (denominator[0] + ((float)probabilities[element_3]));
  }
  denominator[0] = (denominator[0] + __shfl_xor_sync((uint64_t)18446744073709551615, denominator[0], 32, 64));
  denominator[0] = (denominator[0] + __shfl_xor_sync((uint64_t)18446744073709551615, denominator[0], 16, 64));
  if ((((int)threadIdx.x) & 63) < 16) {
    ((float*)buf_dyn_shmem)[((((((int)threadIdx.x) >> 6) * 16) + (((int)threadIdx.x) & 63)) + 1568)] = denominator[0];
  }
  __syncthreads();
  #pragma unroll
  for (int i_2 = 0; i_2 < 4; ++i_2) {
    float broadcast_var_4 = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(numerator + (i_2 * 4)) = make_float4(broadcast_var_4, broadcast_var_4, broadcast_var_4, broadcast_var_4);
  }
  #pragma unroll
  for (int selected_2 = 0; selected_2 < 4; ++selected_2) {
    int raw_index_1 = Indices[((((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) >> 6) * 4)) + selected_2)];
    if (((0 <= raw_index_1) && (raw_index_1 < 64)) && (raw_index_1 <= (((int)blockIdx.x) >> 4))) {
      __syncwarp();
      #pragma unroll
      for (int row = 0; row < 4; ++row) {
        *(uint2*)(v_fetch + (row * 4)) = *(uint2*)(V + (((((((int)blockIdx.y) * 65536) + (raw_index_1 * 1024)) + (((((int)threadIdx.x) & 63) >> 4) * 256)) + (row * 64)) + ((((int)threadIdx.x) & 15) * 4)));
      }
      #pragma unroll
      for (int col = 0; col < 4; ++col) {
        for (int row_1 = 0; row_1 < 4; ++row_1) {
          v_column[row_1] = v_fetch[((row_1 * 4) + col)];
        }
        *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((((int)threadIdx.x) >> 6) * 1024) + (col * 256)) + ((((int)threadIdx.x) & 15) * 16)) + (((((((int)threadIdx.x) & 63) >> 4) ^ ((((int)threadIdx.x) & 15) >> 2)) ^ col) * 4)) + 1024)) = *(uint2*)(v_column + 0);
      }
      __syncwarp();
      #pragma unroll
      for (int chunk_2 = 0; chunk_2 < 4; ++chunk_2) {
        *(uint2*)(v_operand + (chunk_2 * 4)) = *(uint2*)(((half_t*)buf_dyn_shmem) + (((((((((int)threadIdx.x) >> 6) * 1024) + ((((int)threadIdx.x) & 3) * 256)) + (chunk_2 * 64)) + (((((int)threadIdx.x) & 15) >> 2) * 16)) + (((((((int)threadIdx.x) & 63) >> 4) ^ chunk_2) ^ (((int)threadIdx.x) & 3)) * 4)) + 1024));
      }
      #pragma unroll
      for (int chunk_3 = 0; chunk_3 < 4; ++chunk_3) {
        {
      *(((float32x4*)numerator) + chunk_3) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)v_operand) + chunk_3),
                    *(((float16x4*)probabilities) + selected_2),
                    *(((float32x4*)numerator) + chunk_3));
    };
      }
    }
  }
  if ((((int)threadIdx.x) >> 6) == 1) {
    #pragma unroll
    for (int chunk_4 = 0; chunk_4 < 4; ++chunk_4) {
      *(float4*)(((float*)buf_dyn_shmem) + (((((((int)threadIdx.x) & 15) * 64) + (chunk_4 * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4)) + 1600)) = *(float4*)(numerator + (chunk_4 * 4));
    }
  }
  __syncthreads();
  if ((((int)threadIdx.x) >> 6) == 0) {
    denominator[0] = (((float*)buf_dyn_shmem)[((((int)threadIdx.x) & 15) + 1568)] + ((float*)buf_dyn_shmem)[((((int)threadIdx.x) & 15) + 1584)]);
    #pragma unroll
    for (int chunk_5 = 0; chunk_5 < 4; ++chunk_5) {
      float4 __6;
        float4 v__4 = *(float4*)(numerator + (chunk_5 * 4));
        float4 v__5 = *(float4*)(((float*)buf_dyn_shmem) + (((((((int)threadIdx.x) & 15) * 64) + (chunk_5 * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4)) + 1600));
        __6.x = (v__4.x+v__5.x);
        __6.y = (v__4.y+v__5.y);
        __6.z = (v__4.z+v__5.z);
        __6.w = (v__4.w+v__5.w);
      *(float4*)(numerator + (chunk_5 * 4)) = __6;
    }
    #pragma unroll
    for (int chunk_6 = 0; chunk_6 < 4; ++chunk_6) {
      float4 __7;
        float4 v__6 = *(float4*)(numerator + (chunk_6 * 4));
        float4 v__7 = make_float4(denominator[0], denominator[0], denominator[0], denominator[0]);
        __7.x = (v__6.x/v__7.x);
        __7.y = (v__6.y/v__7.y);
        __7.z = (v__6.z/v__7.z);
        __7.w = (v__6.w/v__7.w);
      *(float4*)(numerator + (chunk_6 * 4)) = __7;
    }
    __syncwarp();
    #pragma unroll
    for (int chunk_7 = 0; chunk_7 < 4; ++chunk_7) {
      uint2 __8;
      float4 v__8 = *(float4*)(numerator + (chunk_7 * 4));
      ((half2*)(&__8))[0] = __float22half2_rn(((float2*)(&v__8))[0]);
      ((half2*)(&__8))[1] = __float22half2_rn(((float2*)(&v__8))[1]);
      *(uint2*)(shared_local_cast + 0) = __8;
      *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((int)threadIdx.x) & 15) * 64) + ((((chunk_7 * 2) + ((((int)threadIdx.x) & 63) >> 5)) ^ (((int)threadIdx.x) & 7)) * 8)) + ((((((int)threadIdx.x) & 31) >> 4) ^ ((((int)threadIdx.x) & 15) >> 3)) * 4))) = *(uint2*)(shared_local_cast + 0);
    }
    __syncwarp();
    #pragma unroll
    for (int part_2 = 0; part_2 < 2; ++part_2) {
      #pragma unroll
      for (int pack_2 = 0; pack_2 < 2; ++pack_2) {
        *(uint2*)(output_fetch + (pack_2 * 4)) = *(uint2*)(((half_t*)buf_dyn_shmem) + ((((part_2 * 512) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8)) + ((pack_2 ^ part_2) * 4)));
      }
      *(uint4*)(Output + ((((((int)blockIdx.y) * 1048576) + (((int)blockIdx.x) * 1024)) + (part_2 * 512)) + ((((int)threadIdx.x) & 63) * 8))) = *(uint4*)(output_fetch + 0);
    }
  }
}

