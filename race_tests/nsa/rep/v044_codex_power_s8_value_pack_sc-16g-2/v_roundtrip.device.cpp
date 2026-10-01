#include <tl_templates/maca/gemm.h>
#include <tl_templates/maca/copy.h>
#include <tl_templates/maca/reduce.h>
#include <tl_templates/maca/intrin.h>
#include <tl_templates/maca/atomic.h>
#include <tl_templates/maca/threadblock_swizzle.h>
#include <tl_templates/maca/debug.h>

extern "C" __global__ void roundtrip_kernel(half_t* __restrict__ O, const half_t* __restrict__ V);
extern "C" __global__ void __launch_bounds__(64, 1) roundtrip_kernel(half_t* __restrict__ O, const half_t* __restrict__ V) {
  half_t v_fetch_local[16];
  uint v_exchange_words[4];
  extern __shared__ __align__(1024) half_t v_shared[];
  half_t v_column_local[4];
  #pragma unroll
  for (int tile_row = 0; tile_row < 2; ++tile_row) {
    *(uint4*)(v_fetch_local + (tile_row * 8)) = *(uint4*)(V + ((((((int)threadIdx.x) >> 3) * 128) + (tile_row * 64)) + ((((int)threadIdx.x) & 7) * 8)));
  }
  #pragma unroll
  for (int tile_row_1 = 0; tile_row_1 < 2; ++tile_row_1) {
    #pragma unroll
    for (int pair = 0; pair < 2; ++pair) {
      half_t v_ = v_fetch_local[((tile_row_1 * 8) + (pair * 2))];
      half_t v__1 = v_fetch_local[(((tile_row_1 * 8) + (pair * 2)) + 1)];
      uint lower_word = (((uint)(*(ushort *)(&(v_)))) | (((uint)(*(ushort *)(&(v__1)))) << (uint)16));
      half_t v__2 = v_fetch_local[(((tile_row_1 * 8) + (pair * 2)) + 4)];
      half_t v__3 = v_fetch_local[(((tile_row_1 * 8) + (pair * 2)) + 5)];
      uint upper_word = (((uint)(*(ushort *)(&(v__2)))) | (((uint)(*(ushort *)(&(v__3)))) << (uint)16));
      uint condval;
      if ((((((int)threadIdx.x) & 15) >> 3) == 0)) {
        condval = upper_word;
      } else {
        condval = lower_word;
      }
      uint send_word = condval;
      v_exchange_words[((tile_row_1 * 2) + pair)] = __shfl_xor_sync((uint64_t)18446744073709551615, send_word, 8, 64);
    }
  }
  #pragma unroll
  for (int tile_col = 0; tile_col < 4; ++tile_col) {
    half_t condval_1;
    if ((((((int)threadIdx.x) & 15) >> 3) == 0)) {
      condval_1 = v_fetch_local[tile_col];
    } else {
      condval_1 = v_fetch_local[(tile_col + 4)];
    }
    half_t own0 = condval_1;
    half_t condval_2;
    if ((((((int)threadIdx.x) & 15) >> 3) == 0)) {
      condval_2 = v_fetch_local[(tile_col + 8)];
    } else {
      condval_2 = v_fetch_local[(tile_col + 12)];
    }
    half_t own1 = condval_2;
    ushort v__4 = (ushort)(v_exchange_words[(tile_col >> 1)] >> ((uint)((tile_col & 1) * 16)));
    half_t other0 = (*(half_t *)(&(v__4)));
    ushort v__5 = (ushort)(v_exchange_words[((tile_col >> 1) + 2)] >> ((uint)((tile_col & 1) * 16)));
    half_t other1 = (*(half_t *)(&(v__5)));
    half_t condval_3;
    if ((((((int)threadIdx.x) & 15) >> 3) == 0)) {
      condval_3 = own0;
    } else {
      condval_3 = other0;
    }
    v_column_local[0] = condval_3;
    half_t condval_4;
    if ((((((int)threadIdx.x) & 15) >> 3) == 0)) {
      condval_4 = own1;
    } else {
      condval_4 = other1;
    }
    v_column_local[1] = condval_4;
    half_t condval_5;
    if ((((((int)threadIdx.x) & 15) >> 3) == 0)) {
      condval_5 = other0;
    } else {
      condval_5 = own0;
    }
    v_column_local[2] = condval_5;
    half_t condval_6;
    if ((((((int)threadIdx.x) & 15) >> 3) == 0)) {
      condval_6 = other1;
    } else {
      condval_6 = own1;
    }
    v_column_local[3] = condval_6;
    *(uint2*)(v_shared + ((((tile_col * 256) + ((((int)threadIdx.x) & 7) * 32)) + (((((int)threadIdx.x) & 15) >> 3) * 16)) + ((((((int)threadIdx.x) >> 4) ^ ((((int)threadIdx.x) & 7) >> 1)) ^ tile_col) * 4))) = *(uint2*)(v_column_local + 0);
  }
  __syncwarp();
  #pragma unroll
  for (int i = 0; i < 16; ++i) {
    O[((i * 64) + ((int)threadIdx.x))] = v_shared[(((((((int)threadIdx.x) & 3) * 256) + ((((int)threadIdx.x) >> 2) * 16)) + ((((i >> 2) ^ (((int)threadIdx.x) >> 4)) ^ (((int)threadIdx.x) & 3)) * 4)) + (i & 3))];
  }
}

