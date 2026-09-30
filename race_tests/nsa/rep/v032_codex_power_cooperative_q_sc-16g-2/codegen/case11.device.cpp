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
  float output_acc[16];
  float denominator[1];
  float normalizer[1];
  float scores[4];
  float block_max[1];
  float rescale[1];
  float block_sum[1];
  half_t scores_half[4];
  half_t v_tile_local[16];
  half_t k_local[4];
  half_t v_column_local[4];
  half_t output_shared_local_cast[4];
  #pragma unroll
  for (int i = 0; i < 2; ++i) {
    *(uint4*)(((half_t*)buf_dyn_shmem) + (((((i * 512) + ((((int)threadIdx.x) >> 3) * 64)) + ((((((int)threadIdx.x) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(Q + ((((((int)blockIdx.y) * 524288) + (((int)blockIdx.x) * 1024)) + (i * 512)) + (((int)threadIdx.x) * 8)));
  }
  __syncwarp();
  for (int chunk = 0; chunk < 4; ++chunk) {
    *(uint2*)(q_local + (chunk * 4)) = *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((((int)threadIdx.x) & 15) * 64) + (((((((int)threadIdx.x) & 7) >> 2) + (chunk >> 1)) & 1) * 32)) + (((((((int)threadIdx.x) & 3) >> 1) + (chunk & 1)) & 1) * 16)) + ((((((int)threadIdx.x) >> 5) + (((int)threadIdx.x) & 1)) & 1) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4)));
  }
  #pragma unroll
  for (int i_1 = 0; i_1 < 4; ++i_1) {
    float broadcast_var = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(output_acc + (i_1 * 4)) = make_float4(broadcast_var, broadcast_var, broadcast_var, broadcast_var);
  }
  denominator[0] = 0x0p+0f/*0.000000e+00*/;
  normalizer[0] = -MACART_INF_F;
  for (int selected = 0; selected < 4; ++selected) {
    int block_start = (BlockIndices[(((((int)blockIdx.y) * 2048) + (((int)blockIdx.x) * 4)) + selected)] * 16);
    if ((0 <= block_start) && (block_start <= ((int)blockIdx.x))) {
      __syncwarp();
      #pragma unroll
      for (int i_2 = 0; i_2 < 2; ++i_2) {
        half_t broadcast_var_1 = half_t(0x0p+0f/*0.000000e+00*/);
        uint4 condval;
        if ((((((((int)threadIdx.x) >> 3) + block_start) >> 3) + i_2) < 64)) {
          condval = *(uint4*)(K + ((((((int64_t)((int)blockIdx.y)) * (int64_t)32768) + (((int64_t)i_2) * (int64_t)512)) + (((int64_t)block_start) * (int64_t)64)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)));
        } else {
          condval = make_uint4(__pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1));
        }
        *(uint4*)(((half_t*)buf_dyn_shmem) + (((((i_2 * 512) + ((((int)threadIdx.x) >> 3) * 64)) + ((((((int)threadIdx.x) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = condval;
      }
      __syncwarp();
      float broadcast_var_2 = 0x0p+0f/*0.000000e+00*/;
      *(float4*)(scores + 0) = make_float4(broadcast_var_2, broadcast_var_2, broadcast_var_2, broadcast_var_2);
      for (int chunk_1 = 0; chunk_1 < 4; ++chunk_1) {
        *(uint2*)(k_local + 0) = *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((((int)threadIdx.x) & 15) * 64) + (((((((int)threadIdx.x) & 7) >> 2) + (chunk_1 >> 1)) & 1) * 32)) + (((((((int)threadIdx.x) & 3) >> 1) + (chunk_1 & 1)) & 1) * 16)) + ((((((int)threadIdx.x) >> 5) + (((int)threadIdx.x) & 1)) & 1) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4)));
        {
      *(((float32x4*)scores) + 0) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)k_local) + 0),
                    *(((float16x4*)q_local) + chunk_1),
                    *(((float32x4*)scores) + 0));
    };
      }
      #pragma unroll
      for (int i_3 = 0; i_3 < 4; ++i_3) {
        float condval_1;
        if ((((((((int)threadIdx.x) >> 4) * 4) + block_start) + i_3) <= ((int)blockIdx.x))) {
          condval_1 = scores[i_3];
        } else {
          condval_1 = -MACART_INF_F;
        }
        scores[i_3] = condval_1;
      }
      block_max[0] = -MACART_INF_F;
      block_max[0] = -MACART_INF_F;
      #pragma unroll
      for (int rv = 0; rv < 4; ++rv) {
        block_max[0] = max(block_max[0], scores[rv]);
      }
      block_max[0] = tl::AllReduce<tl::MaxOp, 64, 16, 0>::run(block_max[0], (&(((float*)buf_dyn_shmem)[1088])));
      if (0x1.cp+2f/*7.000000e+00*/ < ((block_max[0] - normalizer[0]) * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/)) {
        rescale[0] = exp2f(((normalizer[0] - block_max[0]) * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/));
        normalizer[0] = block_max[0];
      } else {
        rescale[0] = 0x1p+0f/*1.000000e+00*/;
      }
      #pragma unroll
      for (int i_4 = 0; i_4 < 4; ++i_4) {
        scores[i_4] = exp2f((((scores[i_4] - normalizer[0]) * 0x1.7154764ee6c2fp-3f/*1.803369e-01*/) + 0x1p+3f/*8.000000e+00*/));
      }
      block_sum[0] = 0x0p+0f/*0.000000e+00*/;
      #pragma unroll
      for (int rv_1 = 0; rv_1 < 4; ++rv_1) {
        block_sum[0] = (block_sum[0] + scores[rv_1]);
      }
      block_sum[0] = tl::AllReduce<tl::SumOp, 64, 16, 0>::run(block_sum[0], (&(((float*)buf_dyn_shmem)[1024])));
      if (rescale[0] != 0x1p+0f/*1.000000e+00*/) {
        denominator[0] = (denominator[0] * rescale[0]);
      }
      denominator[0] = (denominator[0] + block_sum[0]);
      uint2 __1;
      float4 v_ = *(float4*)(scores + 0);
      ((half2*)(&__1))[0] = __float22half2_rn(((float2*)(&v_))[0]);
      ((half2*)(&__1))[1] = __float22half2_rn(((float2*)(&v_))[1]);
      *(uint2*)(scores_half + 0) = __1;
      if (rescale[0] != 0x1p+0f/*1.000000e+00*/) {
        #pragma unroll
        for (int i_5 = 0; i_5 < 16; ++i_5) {
          output_acc[i_5] = (output_acc[i_5] * rescale[0]);
        }
      }
      #pragma unroll
      for (int tile_row = 0; tile_row < 4; ++tile_row) {
        half_t broadcast_var_3 = half_t(0x0p+0f/*0.000000e+00*/);
        uint2 condval_2;
        if ((((((int)threadIdx.x) >> 4) + ((block_start + tile_row) >> 2)) < 128)) {
          condval_2 = *(uint2*)(V + (((((((int64_t)((int)blockIdx.y)) * (int64_t)32768) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)4) * (int64_t)256)) + (((int64_t)block_start) * (int64_t)64)) + (((int64_t)tile_row) * (int64_t)64)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)4)));
        } else {
          condval_2 = make_uint2(__pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3));
        }
        *(uint2*)(v_tile_local + (tile_row * 4)) = condval_2;
      }
      #pragma unroll
      for (int tile_col = 0; tile_col < 4; ++tile_col) {
        #pragma unroll
        for (int tile_row_1 = 0; tile_row_1 < 4; ++tile_row_1) {
          v_column_local[tile_row_1] = v_tile_local[((tile_row_1 * 4) + tile_col)];
        }
        *(uint2*)(((half_t*)buf_dyn_shmem) + ((((tile_col * 256) + ((((int)threadIdx.x) & 15) * 16)) + ((((((int)threadIdx.x) >> 4) ^ ((((int)threadIdx.x) & 15) >> 2)) ^ tile_col) * 4)) + 1024)) = *(uint2*)(v_column_local + 0);
      }
      __syncwarp();
      half_t B_local[16];
      for (int j = 0; j < 4; ++j) {
        *(uint2*)(B_local + (j * 4)) = *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((((int)threadIdx.x) & 3) * 256) + (j * 64)) + (((((int)threadIdx.x) & 15) >> 2) * 16)) + ((((((int)threadIdx.x) >> 4) ^ j) ^ (((int)threadIdx.x) & 3)) * 4)) + 1024));
      }
      for (int j_1 = 0; j_1 < 4; ++j_1) {
        {
      *(((float32x4*)output_acc) + j_1) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)B_local) + j_1),
                    *(((float16x4*)scores_half) + 0),
                    *(((float32x4*)output_acc) + j_1));
    };
      }
    }
  }
  __syncwarp();
  #pragma unroll
  for (int i_6 = 0; i_6 < 16; ++i_6) {
    output_acc[i_6] = (output_acc[i_6] / denominator[0]);
  }
  #pragma unroll
  for (int i_7 = 0; i_7 < 4; ++i_7) {
    uint2 __2;
    float4 v__1 = *(float4*)(output_acc + (i_7 * 4));
    ((half2*)(&__2))[0] = __float22half2_rn(((float2*)(&v__1))[0]);
    ((half2*)(&__2))[1] = __float22half2_rn(((float2*)(&v__1))[1]);
    *(uint2*)(output_shared_local_cast + 0) = __2;
    *(uint2*)(((half_t*)buf_dyn_shmem) + ((((((int)threadIdx.x) & 15) * 64) + ((((i_7 * 2) + (((int)threadIdx.x) >> 5)) ^ (((int)threadIdx.x) & 7)) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4))) = *(uint2*)(output_shared_local_cast + 0);
  }
  __syncwarp();
  #pragma unroll
  for (int i_8 = 0; i_8 < 2; ++i_8) {
    *(uint4*)(Output + ((((((int)blockIdx.y) * 524288) + (((int)blockIdx.x) * 1024)) + (i_8 * 512)) + (((int)threadIdx.x) * 8))) = *(uint4*)(((half_t*)buf_dyn_shmem) + (((i_8 * 512) + ((((int)threadIdx.x) >> 3) * 64)) + (((((int)threadIdx.x) & 7) ^ (((int)threadIdx.x) >> 3)) * 8)));
  }
}

