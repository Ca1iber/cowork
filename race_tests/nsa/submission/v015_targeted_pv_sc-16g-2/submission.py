import tilelang
import tilelang.language as T
from tilelang.layout import make_swizzled_layout

_KERNEL_CACHE = {}


def run_kernel(
    q,
    k,
    v,
    block_indices,
    output,
    B,
    seq_len,
    H,
    HQ,
    D,
    S,
    block_size,
    is_causal,
):
    key = (B, seq_len, H, HQ, D, S, block_size, bool(is_causal))
    kernel = _KERNEL_CACHE.get(key)
    if kernel is None:
        __metaclass__ = type

        def _qk_reverse_load_layout(thread_id, local_id):
            return thread_id % 16, (thread_id // 16) * 8 + local_id

        class _ManualMacaQK:
            """One-warp MFMA for Q[G,D] @ K[BS,D].T, adapted from moe_sota_inline.py."""

            def __init__(self, groups, block_tokens, dim):
                self.warp_rows = groups // 16
                self.warp_cols = block_tokens // 16
                self.chunk = dim
                self.k_pack = 2
                self.local_size_a = 4
                self.local_size_b = 4
                self.local_size_out = 4

            def make_mma_load_layout(self, local_buf):
                def forward_thread(i, j):
                    return i + 16 * (j // 8)

                def forward_index(i, j):
                    return j % 8

                base = T.Fragment(
                    [16, 32],
                    forward_thread_fn=forward_thread,
                    forward_index_fn=forward_index,
                )
                return base.repeat(
                    [self.warp_rows, self.chunk // 32],
                    repeat_on_thread=False,
                    lower_dim_first=False,
                )

            def make_mma_store_layout(self, local_buf):
                warp_rows = self.warp_rows
                warp_cols = self.warp_cols

                def forward_thread(i, j):
                    mma_i = i % 16
                    mma_j = j % 16
                    return mma_i + (mma_j // 4) * 16

                def forward_index(i, j):
                    warp_i = (i // 16) % warp_rows
                    warp_j = (j // 16) % warp_cols
                    return warp_i * (warp_cols * 4) + warp_j * 4 + j % 4

                return T.Fragment(
                    local_buf.shape,
                    forward_thread_fn=forward_thread,
                    forward_index_fn=forward_index,
                )

            def ldmatrix_b(self, b_local_buf, b_shared_buf, ki):
                warp_cols = self.warp_cols
                thread_binding = T.KernelLaunchFrame.Current().get_thread_binding()

                @T.macro
                def warp_ldmatrix_b(b_local_buf, b_shared_buf, ki, thread_binding):
                    lane_id = thread_binding % 64
                    for j in T.serial(warp_cols):
                        for local_id in T.vectorized(8):
                            row, col = T.meta_var(_qk_reverse_load_layout(lane_id, local_id))
                            b_local_buf[j * 8 + local_id] = b_shared_buf[j * 16 + row, ki * 32 + col]

                return warp_ldmatrix_b(b_local_buf, b_shared_buf, ki, thread_binding)

            def mma(self, a_local_buf, b_local_buf, c_local_buf, ki):
                warp_rows = self.warp_rows
                warp_cols = self.warp_cols
                a_local_stride = ki * warp_rows * 8

                @T.macro
                def warp_mma(a_local_buf, b_local_buf, c_local_buf):
                    for kp, i, j in T.grid(2, warp_rows, warp_cols):
                        T.tvm_mfma(
                            "16x16x16f16",
                            "row",
                            "row",
                            "float16x4",
                            "float16x4",
                            "float32x4",
                            b_local_buf.data,
                            j * 2 + kp,
                            a_local_buf.data,
                            a_local_stride // 4 + i * 2 + kp,
                            c_local_buf.data,
                            i * warp_cols + j,
                            dtype="float32x4",
                        )

                return warp_mma(a_local_buf, b_local_buf, c_local_buf)


        class _ManualMacaPV:
            """One-warp MFMA for scores[G,BS] @ V[BS,D]."""

            def __init__(self, groups, block_tokens, dim):
                self.warp_rows = groups // 16
                self.warp_cols = dim // 16
                self.block_tokens = block_tokens
                self.k_pack = min(1, block_tokens // 16)

            def make_mma_load_layout(self, local_buf):
                warp_rows = self.warp_rows
                k_tiles = self.block_tokens // 16

                def forward_thread(i, j):
                    return (i % 16) + ((j % 16) // 4) * 16

                def forward_index(i, j):
                    return (i // 16) * (k_tiles * 4) + (j // 16) * 4 + j % 4

                return T.Fragment(
                    local_buf.shape,
                    forward_thread_fn=forward_thread,
                    forward_index_fn=forward_index,
                )

            def make_mma_store_layout(self, local_buf):
                warp_rows = self.warp_rows
                warp_cols = self.warp_cols

                def forward_thread(i, j):
                    mma_i = i % 16
                    mma_j = j % 16
                    return mma_i + (mma_j // 4) * 16

                def forward_index(i, j):
                    warp_i = (i // 16) % warp_rows
                    warp_j = (j // 16) % warp_cols
                    return warp_i * (warp_cols * 4) + warp_j * 4 + j % 4

                return T.Fragment(
                    local_buf.shape,
                    forward_thread_fn=forward_thread,
                    forward_index_fn=forward_index,
                )

            def ldmatrix_b(self, b_local_buf, b_shared_buf, ki):
                warp_cols = self.warp_cols
                k_pack = self.k_pack
                thread_binding = T.KernelLaunchFrame.Current().get_thread_binding()

                @T.macro
                def warp_ldmatrix_b(b_local_buf, b_shared_buf, ki, thread_binding):
                    lane_id = thread_binding % 64
                    for j in T.serial(warp_cols):
                        for local_id in T.vectorized(k_pack * 4):
                            row = local_id + (lane_id // 16) * (k_pack * 4)
                            col = lane_id % 16
                            b_local_buf[j * k_pack * 4 + local_id] = b_shared_buf[
                                ki * k_pack * 16 + row, j * 16 + col
                            ]

                return warp_ldmatrix_b(b_local_buf, b_shared_buf, ki, thread_binding)

            def mma(self, a_local_buf, b_local_buf, c_local_buf, ki):
                warp_rows = self.warp_rows
                warp_cols = self.warp_cols
                k_pack = self.k_pack
                a_local_stride = ki * k_pack
                a_row_stride = self.block_tokens // 16

                @T.macro
                def warp_mma(a_local_buf, b_local_buf, c_local_buf):
                    for kp, i, j in T.grid(k_pack, warp_rows, warp_cols):
                        T.tvm_mfma(
                            "16x16x16f16",
                            "row",
                            "row",
                            "float16x4",
                            "float16x4",
                            "float32x4",
                            b_local_buf.data,
                            j * k_pack + kp,
                            a_local_buf.data,
                            a_local_stride + i * a_row_stride + kp,
                            c_local_buf.data,
                            i * warp_cols + j,
                            dtype="float32x4",
                        )

                return warp_mma(a_local_buf, b_local_buf, c_local_buf)

        @tilelang.jit(
            out_idx=[],
            pass_configs={
                tilelang.PassConfigKey.TL_ENABLE_FAST_MATH: True,
                tilelang.PassConfigKey.TL_DISABLE_WARP_SPECIALIZED: True,
            },
        )
        def _make_native_sparse_attention(
            batch,
            seq_len,
            kv_heads,
            query_heads,
            dim,
            selected_blocks,
            block_size,
            is_causal,
        ):
            # TileLang exp2 is used below, so convert the natural-exponential scale.
            scale = (1.0 / dim) ** 0.5 * 1.44269504

            groups = query_heads // kv_heads
            q_shape = [batch, seq_len, query_heads, dim]
            kv_shape = [batch, seq_len, kv_heads, dim]
            block_indices_shape = [batch, seq_len, kv_heads, selected_blocks]

            dtype = T.float16
            accum_dtype = T.float32
            tile_dim = min(128, tilelang.math.next_power_of_2(dim))
            assert dim <= 256, "The key dimension can not be larger than 256"

            output_tiles = tilelang.cdiv(dim, tile_dim)
            threads = 64
            stages = selected_blocks
            block_tokens = block_size
            assert groups % 16 == 0 and block_tokens % 16 == 0 and dim % 32 == 0
            use_manual_qk = block_size == 32 or selected_blocks > 1
            if use_manual_qk:
                qk_mma = _ManualMacaQK(groups, block_tokens, dim)
            use_manual_pv = block_size == 32 or selected_blocks >= 8
            if use_manual_pv:
                pv_mma = _ManualMacaPV(groups, block_tokens, dim)
                pv_chunks = block_tokens // (16 * pv_mma.k_pack)

            @T.prim_func
            def native_sparse_attention(
                Q: T.Tensor(q_shape, dtype),
                K: T.Tensor(kv_shape, dtype),
                V: T.Tensor(kv_shape, dtype),
                BlockIndices: T.Tensor(block_indices_shape, T.int32),
                Output: T.Tensor(q_shape, dtype),
            ):
                with T.Kernel(seq_len, output_tiles, batch * kv_heads, threads=threads) as (
                    token,
                    output_tile,
                    batch_head,
                ):
                    if use_manual_qk:
                        q_shared = T.alloc_fragment([groups, tile_dim], dtype)
                    else:
                        q_shared = T.alloc_shared([groups, tile_dim], dtype)
                    k_shared = T.alloc_shared([block_tokens, tile_dim], dtype)
                    v_shared = T.alloc_shared([block_tokens, tile_dim], dtype)
                    output_shared = T.alloc_shared([groups, tile_dim], dtype)

                    scores = T.alloc_fragment([groups, block_tokens], accum_dtype)
                    scores_half = T.alloc_fragment([groups, block_tokens], dtype)
                    output_acc = T.alloc_fragment([groups, tile_dim], accum_dtype)
                    block_max = T.alloc_fragment([groups], accum_dtype)
                    previous_max = T.alloc_fragment([groups], accum_dtype)
                    rescale = T.alloc_fragment([groups], accum_dtype)
                    block_sum = T.alloc_fragment([groups], accum_dtype)
                    denominator = T.alloc_fragment([groups], accum_dtype)
                    if use_manual_pv:
                        pv_b_local = T.alloc_local(pv_mma.warp_cols * pv_mma.k_pack * 4, dtype)
                    if use_manual_qk:
                        k_local = T.alloc_local(qk_mma.warp_cols * 8, dtype)
                        if use_manual_pv:
                            T.annotate_layout(
                                {
                                    q_shared: qk_mma.make_mma_load_layout(q_shared),
                                    k_shared: make_swizzled_layout(k_shared),
                                    scores: qk_mma.make_mma_store_layout(scores),
                                    scores_half: pv_mma.make_mma_load_layout(scores_half),
                                    v_shared: tilelang.layout.make_linear_layout(v_shared),
                                    output_acc: pv_mma.make_mma_store_layout(output_acc),
                                }
                            )
                        else:
                            T.annotate_layout(
                                {
                                    q_shared: qk_mma.make_mma_load_layout(q_shared),
                                    k_shared: make_swizzled_layout(k_shared),
                                    scores: qk_mma.make_mma_store_layout(scores),
                                }
                            )

                    batch_id = batch_head // kv_heads
                    kv_head = batch_head % kv_heads

                    T.copy(
                        Q[
                            batch_id,
                            token,
                            kv_head * groups : (kv_head + 1) * groups,
                            :,
                        ],
                        q_shared,
                    )
                    T.fill(output_acc, 0)
                    T.fill(denominator, 0)
                    T.fill(block_max, -T.infinity(accum_dtype))

                    # A regular serial loop keeps these copies synchronous and supports
                    # every selected-block count, including S=1.
                    for selected in T.serial(stages):
                        block_start = (
                            BlockIndices[batch_id, token, kv_head, selected] * block_tokens
                        )

                        # seq_len is the invalid-block sentinel; future blocks are also skipped.
                        if block_start >= 0 and block_start <= token:
                            T.copy(
                                K[
                                    batch_id,
                                    block_start : block_start + block_tokens,
                                    kv_head,
                                    :,
                                ],
                                k_shared,
                            )

                            if use_manual_qk:
                                T.clear(scores)
                                for ki in T.serial(dim // 32):
                                    qk_mma.ldmatrix_b(k_local, k_shared, ki)
                                    qk_mma.mma(q_shared, k_local, scores, ki)
                                if is_causal:
                                    for head, offset in T.Parallel(groups, block_tokens):
                                        scores[head, offset] = T.if_then_else(
                                            token >= block_start + offset,
                                            scores[head, offset],
                                            -T.infinity(accum_dtype),
                                        )
                            else:
                                if is_causal:
                                    for head, offset in T.Parallel(groups, block_tokens):
                                        scores[head, offset] = T.if_then_else(
                                            token >= block_start + offset,
                                            0,
                                            -T.infinity(accum_dtype),
                                        )
                                else:
                                    T.clear(scores)
                                T.gemm(
                                    q_shared,
                                    k_shared,
                                    scores,
                                    transpose_B=True,
                                    policy=T.GemmWarpPolicy.FullRow,
                                )

                            T.copy(block_max, previous_max)
                            T.fill(block_max, -T.infinity(accum_dtype))
                            T.reduce_max(scores, block_max, dim=1, clear=True)

                            for head in T.Parallel(groups):
                                rescale[head] = T.exp2(
                                    previous_max[head] * scale - block_max[head] * scale
                                )
                            for head, offset in T.Parallel(groups, block_tokens):
                                scores[head, offset] = T.exp2(
                                    scores[head, offset] * scale - block_max[head] * scale
                                )

                            T.reduce_sum(scores, block_sum, dim=1)
                            for head in T.Parallel(groups):
                                denominator[head] = (
                                    denominator[head] * rescale[head] + block_sum[head]
                                )
                            T.copy(scores, scores_half)

                            for head, feature in T.Parallel(groups, tile_dim):
                                output_acc[head, feature] *= rescale[head]

                            T.copy(
                                V[
                                    batch_id,
                                    block_start : block_start + block_tokens,
                                    kv_head,
                                    output_tile * tile_dim : (output_tile + 1) * tile_dim,
                                ],
                                v_shared,
                            )
                            if use_manual_pv:
                                for ki in T.serial(pv_chunks):
                                    pv_mma.ldmatrix_b(pv_b_local, v_shared, ki)
                                    pv_mma.mma(scores_half, pv_b_local, output_acc, ki)
                            else:
                                T.gemm(
                                    scores_half,
                                    v_shared,
                                    output_acc,
                                    policy=T.GemmWarpPolicy.FullRow,
                                )

                    for head, feature in T.Parallel(groups, tile_dim):
                        output_acc[head, feature] /= denominator[head]

                    T.copy(output_acc, output_shared)
                    T.copy(
                        output_shared,
                        Output[
                            batch_id,
                            token,
                            kv_head * groups : (kv_head + 1) * groups,
                            output_tile * tile_dim : (output_tile + 1) * tile_dim,
                        ],
                    )

            return native_sparse_attention

        kernel = _make_native_sparse_attention(
            batch=B,
            seq_len=seq_len,
            kv_heads=H,
            query_heads=HQ,
            dim=D,
            selected_blocks=S,
            block_size=block_size,
            is_causal=bool(is_causal),
        )
        _KERNEL_CACHE[key] = kernel
    kernel(q, k, v, block_indices, output)
