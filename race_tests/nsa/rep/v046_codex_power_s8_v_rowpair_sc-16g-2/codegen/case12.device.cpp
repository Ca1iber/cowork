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
  half_t probability_cache[32];
  float max_cache[2];
  float global_max[1];
  float scores[4];
  float block_max[1];
  half_t k_local[4];
  float output_acc[16];
  float rescale[1];
  half_t v_fetch_local[16];
  half_t v_operand[16];
  half_t v_column_local[2];
  float sum_local[1];
  float denominator[1];
  half_t output_shared_local_cast[4];
  #pragma unroll
  for (int i = 0; i < 2; ++i) {
    *(uint4*)(((half_t*)buf_dyn_shmem) + (((((i * 512) + ((((int)threadIdx.x) >> 3) * 64)) + ((((((int)threadIdx.x) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(Q + ((((((int)blockIdx.y) * 1048576) + (((int)blockIdx.x) * 1024)) + (i * 512)) + (((int)threadIdx.x) * 8)));
  }
  __syncwarp();
  for (int chunk = 0; chunk < 4; ++chunk) {
    *(uint2*)(q_local + (chunk * 4)) = *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((((int)threadIdx.x) & 15) * 64) + (((((((int)threadIdx.x) & 7) >> 2) + (chunk >> 1)) & 1) * 32)) + (((((((int)threadIdx.x) & 3) >> 1) + (chunk & 1)) & 1) * 16)) + ((((((int)threadIdx.x) >> 5) + (((int)threadIdx.x) & 1)) & 1) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4)));
  }
  #pragma unroll
  for (int i_1 = 0; i_1 < 8; ++i_1) {
    half_t broadcast_var = half_t(0x0p+0f/*0.000000e+00*/);
    *(uint2*)(probability_cache + (i_1 * 4)) = make_uint2(__pack_half2(broadcast_var, broadcast_var), __pack_half2(broadcast_var, broadcast_var));
  }
  float broadcast_var_1 = -MACART_INF_F;
  *(float2*)(max_cache + 0) = make_float2(broadcast_var_1, broadcast_var_1);
  global_max[0] = -MACART_INF_F;
  #pragma unroll
  for (int selected = 0; selected < 8; ++selected) {
    int block_start = (BlockIndices[(((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8)) + selected)] * 16);
    if ((0 <= block_start) && (block_start <= ((int)blockIdx.x))) {
      __syncwarp();
      #pragma unroll
      for (int i_2 = 0; i_2 < 2; ++i_2) {
        half_t broadcast_var_2 = half_t(0x0p+0f/*0.000000e+00*/);
        uint4 condval;
        if ((((((((int)threadIdx.x) >> 3) + block_start) >> 3) + i_2) < 128)) {
          condval = *(uint4*)(K + ((((((int64_t)((int)blockIdx.y)) * (int64_t)65536) + (((int64_t)i_2) * (int64_t)512)) + (((int64_t)block_start) * (int64_t)64)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)));
        } else {
          condval = make_uint4(__pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2));
        }
        *(uint4*)(((half_t*)buf_dyn_shmem) + (((((i_2 * 512) + ((((int)threadIdx.x) >> 3) * 64)) + ((((((int)threadIdx.x) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = condval;
      }
      __syncwarp();
      float broadcast_var_3 = 0x0p+0f/*0.000000e+00*/;
      *(float4*)(scores + 0) = make_float4(broadcast_var_3, broadcast_var_3, broadcast_var_3, broadcast_var_3);
      for (int chunk_1 = 0; chunk_1 < 4; ++chunk_1) {
        *(uint2*)(k_local + 0) = *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((((int)threadIdx.x) & 15) * 64) + (((((((int)threadIdx.x) & 7) >> 2) + (chunk_1 >> 1)) & 1) * 32)) + (((((((int)threadIdx.x) & 3) >> 1) + (chunk_1 & 1)) & 1) * 16)) + ((((((int)threadIdx.x) >> 5) + (((int)threadIdx.x) & 1)) & 1) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4)));
        {
      *(((float32x4*)scores) + 0) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)k_local) + 0),
                    *(((float16x4*)q_local) + chunk_1),
                    *(((float32x4*)scores) + 0));
    };
      }
      #pragma unroll
      for (int element = 0; element < 4; ++element) {
        float condval_1;
        if ((((((((int)threadIdx.x) >> 4) * 4) + block_start) + element) <= ((int)blockIdx.x))) {
          condval_1 = scores[element];
        } else {
          condval_1 = -MACART_INF_F;
        }
        scores[element] = condval_1;
      }
      block_max[0] = -MACART_INF_F;
      #pragma unroll
      for (int element_1 = 0; element_1 < 4; ++element_1) {
        block_max[0] = max(block_max[0], scores[element_1]);
      }
      block_max[0] = max(block_max[0], __shfl_xor_sync((uint64_t)18446744073709551615, block_max[0], 32, 64));
      block_max[0] = max(block_max[0], __shfl_xor_sync((uint64_t)18446744073709551615, block_max[0], 16, 64));
      if ((((int)threadIdx.x) >> 4) == (selected & 3)) {
        max_cache[(selected >> 2)] = block_max[0];
      }
      global_max[0] = max(global_max[0], block_max[0]);
      float broadcast_var_4 = 0x1.7154764ee6c2fp-3f/*1.803369e-01*/;
      float broadcast_var_5 = 0x1p+3f/*8.000000e+00*/;
      uint2 __1;
      float4 __2;
      float4 __3;
        float4 __4;
          float4 __5;
            float4 v_ = *(float4*)(scores + 0);
            float4 v__1 = make_float4(block_max[0], block_max[0], block_max[0], block_max[0]);
            __5.x = (v_.x-v__1.x);
            __5.y = (v_.y-v__1.y);
            __5.z = (v_.z-v__1.z);
            __5.w = (v_.w-v__1.w);
          float4 v__2 = make_float4(broadcast_var_4, broadcast_var_4, broadcast_var_4, broadcast_var_4);
          __4.x = (__5.x*v__2.x);
          __4.y = (__5.y*v__2.y);
          __4.z = (__5.z*v__2.z);
          __4.w = (__5.w*v__2.w);
        float4 v__3 = make_float4(broadcast_var_5, broadcast_var_5, broadcast_var_5, broadcast_var_5);
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
      *(uint2*)(probability_cache + (selected * 4)) = __1;
    }
  }
  #pragma unroll
  for (int i_3 = 0; i_3 < 4; ++i_3) {
    float broadcast_var_6 = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(output_acc + (i_3 * 4)) = make_float4(broadcast_var_6, broadcast_var_6, broadcast_var_6, broadcast_var_6);
  }
  #pragma unroll
  for (int selected_1 = 0; selected_1 < 8; ++selected_1) {
    int block_start_1 = (BlockIndices[(((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8)) + selected_1)] * 16);
    if ((0 <= block_start_1) && (block_start_1 <= ((int)blockIdx.x))) {
      __syncwarp();
      rescale[0] = 0x0p+0f/*0.000000e+00*/;
      if ((((int)threadIdx.x) >> 4) == (selected_1 & 3)) {
        rescale[0] = exp2f(((max_cache[(selected_1 >> 2)] - global_max[0]) * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/));
      }
      rescale[0] = __shfl_sync((uint64_t)18446744073709551615, rescale[0], (((selected_1 & 3) * 16) + (((int)threadIdx.x) & 15)), 64);
      uint2 __6;
      float4 __7;
        float4 __8;
        uint2 v__4 = *(uint2*)(probability_cache + (selected_1 * 4));
        ((float2*)(&__8))[0] = __half22float2(((half2*)(&v__4))[0]);
        ((float2*)(&__8))[1] = __half22float2(((half2*)(&v__4))[1]);
        float4 v__5 = make_float4(rescale[0], rescale[0], rescale[0], rescale[0]);
        __7.x = (__8.x*v__5.x);
        __7.y = (__8.y*v__5.y);
        __7.z = (__8.z*v__5.z);
        __7.w = (__8.w*v__5.w);
      ((half2*)(&__6))[0] = __float22half2_rn(((float2*)(&__7))[0]);
      ((half2*)(&__6))[1] = __float22half2_rn(((float2*)(&__7))[1]);
      *(uint2*)(probability_cache + (selected_1 * 4)) = __6;
      #pragma unroll
      for (int tile_row = 0; tile_row < 2; ++tile_row) {
        half_t broadcast_var_7 = half_t(0x0p+0f/*0.000000e+00*/);
        uint4 condval_2;
        if ((((((int)threadIdx.x) >> 3) + ((block_start_1 + tile_row) >> 1)) < 512)) {
          condval_2 = *(uint4*)(V + (((((((int64_t)((int)blockIdx.y)) * (int64_t)65536) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)3) * (int64_t)128)) + (((int64_t)block_start_1) * (int64_t)64)) + (((int64_t)tile_row) * (int64_t)64)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)7) * (int64_t)8)));
        } else {
          condval_2 = make_uint4(__pack_half2(broadcast_var_7, broadcast_var_7), __pack_half2(broadcast_var_7, broadcast_var_7), __pack_half2(broadcast_var_7, broadcast_var_7), __pack_half2(broadcast_var_7, broadcast_var_7));
        }
        *(uint4*)(v_fetch_local + (tile_row * 8)) = condval_2;
      }
      #pragma unroll
      for (int tile_col = 0; tile_col < 8; ++tile_col) {
        for (int tile_row_1 = 0; tile_row_1 < 2; ++tile_row_1) {
          v_column_local[tile_row_1] = v_fetch_local[((tile_row_1 * 8) + tile_col)];
        }
        *(uint1*)(((half_t*)buf_dyn_shmem) + (((tile_col * 128) + ((((int)threadIdx.x) & 7) * 16)) + ((((((int)threadIdx.x) >> 3) ^ (((int)threadIdx.x) & 7)) ^ tile_col) * 2))) = *(uint1*)(v_column_local + 0);
      }
      __syncwarp();
      #pragma unroll
      for (int chunk_2 = 0; chunk_2 < 4; ++chunk_2) {
        #pragma unroll
        for (int pair = 0; pair < 2; ++pair) {
          *(uint1*)(v_operand + ((chunk_2 * 4) + (pair * 2))) = *(uint1*)(((half_t*)buf_dyn_shmem) + (((((((int)threadIdx.x) & 7) * 128) + (chunk_2 * 32)) + (((((int)threadIdx.x) & 15) >> 3) * 16)) + ((((((((int)threadIdx.x) >> 4) * 2) + pair) ^ ((chunk_2 * 2) + ((((int)threadIdx.x) & 15) >> 3))) ^ (((int)threadIdx.x) & 7)) * 2)));
        }
      }
      #pragma unroll
      for (int chunk_3 = 0; chunk_3 < 4; ++chunk_3) {
        {
      *(((float32x4*)output_acc) + chunk_3) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)v_operand) + chunk_3),
                    *(((float16x4*)probability_cache) + selected_1),
                    *(((float32x4*)output_acc) + chunk_3));
    };
      }
    }
  }
  __syncwarp();
  sum_local[0] = 0x0p+0f/*0.000000e+00*/;
  #pragma unroll
  for (int element_2 = 0; element_2 < 32; ++element_2) {
    sum_local[0] = (sum_local[0] + ((float)probability_cache[element_2]));
  }
  sum_local[0] = (sum_local[0] + __shfl_xor_sync((uint64_t)18446744073709551615, sum_local[0], 32, 64));
  sum_local[0] = (sum_local[0] + __shfl_xor_sync((uint64_t)18446744073709551615, sum_local[0], 16, 64));
  denominator[0] = sum_local[0];
  #pragma unroll
  for (int i_4 = 0; i_4 < 16; ++i_4) {
    output_acc[i_4] = (output_acc[i_4] / denominator[0]);
  }
  #pragma unroll
  for (int i_5 = 0; i_5 < 4; ++i_5) {
    uint2 __9;
    float4 v__6 = *(float4*)(output_acc + (i_5 * 4));
    ((half2*)(&__9))[0] = __float22half2_rn(((float2*)(&v__6))[0]);
    ((half2*)(&__9))[1] = __float22half2_rn(((float2*)(&v__6))[1]);
    *(uint2*)(output_shared_local_cast + 0) = __9;
    *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((int)threadIdx.x) & 15) * 64) + ((((i_5 * 2) + (((int)threadIdx.x) >> 5)) ^ (((int)threadIdx.x) & 7)) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4))) = *(uint2*)(output_shared_local_cast + 0);
  }
  __syncwarp();
  #pragma unroll
  for (int i_6 = 0; i_6 < 2; ++i_6) {
    *(uint4*)(Output + ((((((int)blockIdx.y) * 1048576) + (((int)blockIdx.x) * 1024)) + (i_6 * 512)) + (((int)threadIdx.x) * 8))) = *(uint4*)(((half_t*)buf_dyn_shmem) + (((i_6 * 512) + ((((int)threadIdx.x) >> 3) * 64)) + (((((int)threadIdx.x) & 7) ^ (((int)threadIdx.x) >> 3)) * 8)));
  }
}

