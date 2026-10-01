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
  float max_cache[8];
  float scores[4];
  float block_max[1];
  half_t k_local[4];
  float global_max[1];
  float output_acc[16];
  float rescale[1];
  half_t v_tile_local[16];
  half_t v_operand[16];
  half_t v_column_local[4];
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
  #pragma unroll
  for (int i_2 = 0; i_2 < 2; ++i_2) {
    float broadcast_var_1 = -MACART_INF_F;
    *(float4*)(max_cache + (i_2 * 4)) = make_float4(broadcast_var_1, broadcast_var_1, broadcast_var_1, broadcast_var_1);
  }
  #pragma unroll
  for (int selected = 0; selected < 8; ++selected) {
    int block_start = (BlockIndices[(((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8)) + selected)] * 16);
    if ((0 <= block_start) && (block_start <= ((int)blockIdx.x))) {
      __syncwarp();
      #pragma unroll
      for (int i_3 = 0; i_3 < 2; ++i_3) {
        half_t broadcast_var_2 = half_t(0x0p+0f/*0.000000e+00*/);
        uint4 condval;
        if ((((((((int)threadIdx.x) >> 3) + block_start) >> 3) + i_3) < 128)) {
          condval = *(uint4*)(K + ((((((int64_t)((int)blockIdx.y)) * (int64_t)65536) + (((int64_t)i_3) * (int64_t)512)) + (((int64_t)block_start) * (int64_t)64)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)));
        } else {
          condval = make_uint4(__pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2));
        }
        *(uint4*)(((half_t*)buf_dyn_shmem) + (((((i_3 * 512) + ((((int)threadIdx.x) >> 3) * 64)) + ((((((int)threadIdx.x) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = condval;
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
      for (int i_4 = 0; i_4 < 4; ++i_4) {
        float condval_1;
        if ((((((((int)threadIdx.x) >> 4) * 4) + block_start) + i_4) <= ((int)blockIdx.x))) {
          condval_1 = scores[i_4];
        } else {
          condval_1 = -MACART_INF_F;
        }
        scores[i_4] = condval_1;
      }
      block_max[0] = -MACART_INF_F;
      block_max[0] = -MACART_INF_F;
      #pragma unroll
      for (int rv = 0; rv < 4; ++rv) {
        block_max[0] = max(block_max[0], scores[rv]);
      }
      block_max[0] = tl::AllReduce<tl::MaxOp, 64, 16, 0>::run(block_max[0], (&(((float*)buf_dyn_shmem)[512])));
      max_cache[selected] = block_max[0];
      #pragma unroll
      for (int i_5 = 0; i_5 < 4; ++i_5) {
        scores[i_5] = exp2f((((scores[i_5] - block_max[0]) * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/) + 0x1p+3f/*8.000000e+00*/));
      }
      for (int element = 0; element < 4; ++element) {
        probability_cache[((selected * 4) + element)] = ((half_t)scores[element]);
      }
    }
  }
  global_max[0] = -MACART_INF_F;
  #pragma unroll
  for (int selected_1 = 0; selected_1 < 8; ++selected_1) {
    global_max[0] = max(global_max[0], max_cache[selected_1]);
  }
  #pragma unroll
  for (int i_6 = 0; i_6 < 4; ++i_6) {
    float broadcast_var_4 = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(output_acc + (i_6 * 4)) = make_float4(broadcast_var_4, broadcast_var_4, broadcast_var_4, broadcast_var_4);
  }
  #pragma unroll
  for (int selected_2 = 0; selected_2 < 8; ++selected_2) {
    int block_start_1 = (BlockIndices[(((((int)blockIdx.y) * 8192) + (((int)blockIdx.x) * 8)) + selected_2)] * 16);
    if ((0 <= block_start_1) && (block_start_1 <= ((int)blockIdx.x))) {
      __syncwarp();
      rescale[0] = exp2f(((max_cache[selected_2] - global_max[0]) * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/));
      uint2 __1;
      float4 __2;
        float4 __3;
        uint2 v_ = *(uint2*)(probability_cache + (selected_2 * 4));
        ((float2*)(&__3))[0] = __half22float2(((half2*)(&v_))[0]);
        ((float2*)(&__3))[1] = __half22float2(((half2*)(&v_))[1]);
        float4 v__1 = make_float4(rescale[0], rescale[0], rescale[0], rescale[0]);
        __2.x = (__3.x*v__1.x);
        __2.y = (__3.y*v__1.y);
        __2.z = (__3.z*v__1.z);
        __2.w = (__3.w*v__1.w);
      ((half2*)(&__1))[0] = __float22half2_rn(((float2*)(&__2))[0]);
      ((half2*)(&__1))[1] = __float22half2_rn(((float2*)(&__2))[1]);
      *(uint2*)(probability_cache + (selected_2 * 4)) = __1;
      #pragma unroll
      for (int tile_row = 0; tile_row < 4; ++tile_row) {
        half_t broadcast_var_5 = half_t(0x0p+0f/*0.000000e+00*/);
        uint2 condval_2;
        if ((((((int)threadIdx.x) >> 4) + ((block_start_1 + tile_row) >> 2)) < 256)) {
          condval_2 = *(uint2*)(V + (((((((int64_t)((int)blockIdx.y)) * (int64_t)65536) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)4) * (int64_t)256)) + (((int64_t)block_start_1) * (int64_t)64)) + (((int64_t)tile_row) * (int64_t)64)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)4)));
        } else {
          condval_2 = make_uint2(__pack_half2(broadcast_var_5, broadcast_var_5), __pack_half2(broadcast_var_5, broadcast_var_5));
        }
        *(uint2*)(v_tile_local + (tile_row * 4)) = condval_2;
      }
      #pragma unroll
      for (int tile_col = 0; tile_col < 4; ++tile_col) {
        #pragma unroll
        for (int tile_row_1 = 0; tile_row_1 < 4; ++tile_row_1) {
          v_column_local[tile_row_1] = v_tile_local[((tile_row_1 * 4) + tile_col)];
        }
        *(uint2*)(((half_t*)buf_dyn_shmem) + (((tile_col * 256) + ((((int)threadIdx.x) & 15) * 16)) + ((((((int)threadIdx.x) >> 4) ^ ((((int)threadIdx.x) & 15) >> 2)) ^ tile_col) * 4))) = *(uint2*)(v_column_local + 0);
      }
      __syncwarp();
      #pragma unroll
      for (int chunk_2 = 0; chunk_2 < 4; ++chunk_2) {
        *(uint2*)(v_operand + (chunk_2 * 4)) = *(uint2*)(((half_t*)buf_dyn_shmem) + (((((((int)threadIdx.x) & 3) * 256) + (chunk_2 * 64)) + (((((int)threadIdx.x) & 15) >> 2) * 16)) + ((((((int)threadIdx.x) >> 4) ^ chunk_2) ^ (((int)threadIdx.x) & 3)) * 4)));
      }
      #pragma unroll
      for (int chunk_3 = 0; chunk_3 < 4; ++chunk_3) {
        {
      *(((float32x4*)output_acc) + chunk_3) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)v_operand) + chunk_3),
                    *(((float16x4*)probability_cache) + selected_2),
                    *(((float32x4*)output_acc) + chunk_3));
    };
      }
    }
  }
  __syncwarp();
  sum_local[0] = 0x0p+0f/*0.000000e+00*/;
  #pragma unroll
  for (int element_1 = 0; element_1 < 32; ++element_1) {
    sum_local[0] = (sum_local[0] + ((float)probability_cache[element_1]));
  }
  float broadcast_var_6 = 0x0p+0f/*0.000000e+00*/;
  *(float4*)(scores + 0) = make_float4(broadcast_var_6, broadcast_var_6, broadcast_var_6, broadcast_var_6);
  scores[0] = sum_local[0];
  denominator[0] = 0x0p+0f/*0.000000e+00*/;
  #pragma unroll
  for (int rv_1 = 0; rv_1 < 4; ++rv_1) {
    denominator[0] = (denominator[0] + scores[rv_1]);
  }
  denominator[0] = tl::AllReduce<tl::SumOp, 64, 16, 0>::run(denominator[0], (&(((float*)buf_dyn_shmem)[0])));
  #pragma unroll
  for (int i_7 = 0; i_7 < 16; ++i_7) {
    output_acc[i_7] = (output_acc[i_7] / denominator[0]);
  }
  #pragma unroll
  for (int i_8 = 0; i_8 < 4; ++i_8) {
    uint2 __4;
    float4 v__2 = *(float4*)(output_acc + (i_8 * 4));
    ((half2*)(&__4))[0] = __float22half2_rn(((float2*)(&v__2))[0]);
    ((half2*)(&__4))[1] = __float22half2_rn(((float2*)(&v__2))[1]);
    *(uint2*)(output_shared_local_cast + 0) = __4;
    *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((int)threadIdx.x) & 15) * 64) + ((((i_8 * 2) + (((int)threadIdx.x) >> 5)) ^ (((int)threadIdx.x) & 7)) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4))) = *(uint2*)(output_shared_local_cast + 0);
  }
  __syncwarp();
  #pragma unroll
  for (int i_9 = 0; i_9 < 2; ++i_9) {
    *(uint4*)(Output + ((((((int)blockIdx.y) * 1048576) + (((int)blockIdx.x) * 1024)) + (i_9 * 512)) + (((int)threadIdx.x) * 8))) = *(uint4*)(((half_t*)buf_dyn_shmem) + (((i_9 * 512) + ((((int)threadIdx.x) >> 3) * 64)) + (((((int)threadIdx.x) & 7) ^ (((int)threadIdx.x) >> 3)) * 8)));
  }
}

