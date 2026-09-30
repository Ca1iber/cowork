# codex-power v014
import tilelang
import tilelang.language as T
from tilelang.layout import make_swizzled_layout


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
    use_direct_output = selected_blocks == 1 and block_size == 32 and dim == 128 and groups == 16
    use_two_wave = use_direct_output
    q_shape = [batch, seq_len, query_heads, dim]
    kv_shape = [batch, seq_len, kv_heads, dim]
    block_indices_shape = [batch, seq_len, kv_heads, selected_blocks]

    dtype = T.float16
    accum_dtype = T.float32
    tile_dim = min(128, tilelang.math.next_power_of_2(dim))
    assert dim <= 256, "The key dimension can not be larger than 256"

    output_tiles = tilelang.cdiv(dim, tile_dim)
    threads = 128 if use_two_wave else 64
    stages = selected_blocks
    block_tokens = block_size

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
            q_shared = T.alloc_shared([groups, tile_dim], dtype)
            k_shared = T.alloc_shared([block_tokens, tile_dim], dtype)
            v_shared = T.alloc_shared([block_tokens, tile_dim], dtype)
            output_shared = T.alloc_shared([groups, tile_dim], dtype)

            scores = T.alloc_fragment([groups, block_tokens], accum_dtype)
            if use_two_wave:
                scores_half = T.alloc_shared([groups, block_tokens], dtype)
            else:
                scores_half = T.alloc_fragment([groups, block_tokens], dtype)
            output_acc = T.alloc_fragment([groups, tile_dim], accum_dtype)
            block_max = T.alloc_fragment([groups], accum_dtype)
            previous_max = T.alloc_fragment([groups], accum_dtype)
            rescale = T.alloc_fragment([groups], accum_dtype)
            block_sum = T.alloc_fragment([groups], accum_dtype)
            denominator = T.alloc_fragment([groups], accum_dtype)

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
                    T.gemm(
                        scores_half,
                        v_shared,
                        output_acc,
                        policy=T.GemmWarpPolicy.FullRow,
                    )

            for head, feature in T.Parallel(groups, tile_dim):
                output_acc[head, feature] /= denominator[head]

            if use_direct_output:
                for head, feature in T.Parallel(groups, tile_dim):
                    Output[batch_id, token, kv_head * groups + head, output_tile * tile_dim + feature] = output_acc[head, feature]
            else:
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


@tilelang.jit(
    out_idx=[],
    pass_configs={
        tilelang.PassConfigKey.TL_ENABLE_FAST_MATH: True,
        tilelang.PassConfigKey.TL_DISABLE_WARP_SPECIALIZED: True,
    },
)
def _make_s8_wave_split(
    batch, seq_len, kv_heads, query_heads, dim, selected_blocks, block_size, is_causal,
):
    groups = query_heads // kv_heads
    assert selected_blocks == 8 and block_size == 16 and dim == 64 and groups == 16
    scale = (1.0 / dim) ** 0.5 * 1.44269504
    q_shape = [batch, seq_len, query_heads, dim]
    kv_shape = [batch, seq_len, kv_heads, dim]
    indices_shape = [batch, seq_len, kv_heads, selected_blocks]
    dtype = T.float16
    accum_dtype = T.float32
    score_layout = T.Fragment(
        [2, groups, block_size],
        forward_thread_fn=lambda wave, row, col: wave * 64 + row + 16 * (col // 4),
        forward_index_fn=lambda wave, row, col: col % 4,
    )
    output_layout = T.Fragment(
        [2, groups, dim],
        forward_thread_fn=lambda wave, row, col: wave * 64 + row + 16 * ((col % 16) // 4),
        forward_index_fn=lambda wave, row, col: (col // 16) * 4 + col % 4,
    )
    head_layout = T.Fragment(
        [2, groups],
        forward_thread_fn=lambda wave, row, rep: wave * 64 + row + rep * 16,
        forward_index_fn=lambda wave, row: 0,
        replicate=4,
    )

    @T.prim_func
    def native_sparse_attention(
        Q: T.Tensor(q_shape, dtype),
        K: T.Tensor(kv_shape, dtype),
        V: T.Tensor(kv_shape, dtype),
        BlockIndices: T.Tensor(indices_shape, T.int32),
        Output: T.Tensor(q_shape, dtype),
    ):
        with T.Kernel(seq_len, batch * kv_heads, threads=128) as (token, batch_head):
            batch_id = batch_head // kv_heads
            kv_head = batch_head % kv_heads
            tx = T.KernelLaunchFrame.Current().get_thread_binding()
            wave_id = tx // 64
            lane_id = tx % 64
            q_local = T.alloc_local(16, dtype)
            k_local = T.alloc_local(4, dtype)
            v_local = T.alloc_local(4, dtype)
            v_shared = T.alloc_shared([2, block_size, dim], dtype)
            partial_output = T.alloc_shared([2, groups, dim], accum_dtype)
            partial_max = T.alloc_shared([2, groups], accum_dtype)
            partial_denominator = T.alloc_shared([2, groups], accum_dtype)
            weights = T.alloc_shared([2, groups], accum_dtype)
            scores = T.alloc_fragment([2, groups, block_size], accum_dtype)
            scores_half = T.alloc_fragment([2, groups, block_size], dtype)
            output_acc = T.alloc_fragment([2, groups, dim], accum_dtype)
            block_max = T.alloc_fragment([2, groups], accum_dtype)
            previous_max = T.alloc_fragment([2, groups], accum_dtype)
            rescale = T.alloc_fragment([2, groups], accum_dtype)
            block_sum = T.alloc_fragment([2, groups], accum_dtype)
            denominator = T.alloc_fragment([2, groups], accum_dtype)
            T.annotate_layout({
                scores: score_layout,
                scores_half: score_layout,
                output_acc: output_layout,
                block_max: head_layout,
                previous_max: head_layout,
                rescale: head_layout,
                block_sum: head_layout,
                denominator: head_layout,
                v_shared: make_swizzled_layout(v_shared),
                partial_output: make_swizzled_layout(partial_output),
            })
            for chunk in T.serial(4):
                for element in T.vectorized(4):
                    head = lane_id % 16
                    feature = chunk * 16 + (lane_id // 16) * 4 + element
                    q_local[chunk * 4 + element] = Q[
                        batch_id, token, kv_head * groups + head, feature
                    ]
            T.fill(output_acc, 0)
            T.fill(denominator, 0)
            T.fill(block_max, -T.infinity(accum_dtype))
            for selected_round in T.serial(4):
                block_start = BlockIndices[
                    batch_id, token, kv_head, selected_round * 2 + wave_id
                ] * block_size
                if block_start >= 0 and block_start <= token:
                    T.fill(scores, 0)
                    for chunk in T.serial(4):
                        for element in T.vectorized(4):
                            row = lane_id % 16
                            feature = chunk * 16 + (lane_id // 16) * 4 + element
                            k_local[element] = K[
                                batch_id, block_start + row, kv_head, feature
                            ]
                        T.tvm_mfma(
                            '16x16x16f16', 'row', 'row',
                            'float16x4', 'float16x4', 'float32x4',
                            k_local.data, 0, q_local.data, chunk, scores.data, 0,
                            dtype='float32x4',
                        )
                    if is_causal:
                        for wave, head, offset in T.Parallel(2, groups, block_size):
                            scores[wave, head, offset] = T.if_then_else(
                                token >= block_start + offset,
                                scores[wave, head, offset],
                                -T.infinity(accum_dtype),
                            )
                    T.copy(block_max, previous_max)
                    T.fill(block_max, -T.infinity(accum_dtype))
                    T.reduce_max(scores, block_max, dim=2, clear=True)
                    for wave, head in T.Parallel(2, groups):
                        rescale[wave, head] = T.exp2(
                            previous_max[wave, head] * scale - block_max[wave, head] * scale
                        )
                    for wave, head, offset in T.Parallel(2, groups, block_size):
                        scores[wave, head, offset] = T.exp2(
                            scores[wave, head, offset] * scale - block_max[wave, head] * scale
                        )
                    T.reduce_sum(scores, block_sum, dim=2)
                    for wave, head in T.Parallel(2, groups):
                        denominator[wave, head] = (
                            denominator[wave, head] * rescale[wave, head] + block_sum[wave, head]
                        )
                    T.copy(scores, scores_half)
                    for wave, head, feature in T.Parallel(2, groups, dim):
                        output_acc[wave, head, feature] *= rescale[wave, head]
                for iteration in T.serial(2):
                    for element in T.vectorized(8):
                        linear = iteration * 512 + lane_id * 8 + element
                        row = linear // dim
                        feature = linear % dim
                        v_shared[wave_id, row, feature] = T.if_then_else(
                            block_start >= 0 and block_start <= token,
                            V[batch_id, block_start + row, kv_head, feature],
                            0,
                        )
                T.sync_threads()
                if block_start >= 0 and block_start <= token:
                    for tile in T.serial(4):
                        for element in T.vectorized(4):
                            row = (lane_id // 16) * 4 + element
                            feature = tile * 16 + lane_id % 16
                            v_local[element] = v_shared[wave_id, row, feature]
                        T.tvm_mfma(
                            '16x16x16f16', 'row', 'row',
                            'float16x4', 'float16x4', 'float32x4',
                            v_local.data, 0, scores_half.data, 0, output_acc.data, tile,
                            dtype='float32x4',
                        )
                T.sync_threads()
            T.copy(output_acc, partial_output)
            T.copy(block_max, partial_max)
            T.copy(denominator, partial_denominator)
            T.sync_threads()
            for head in T.Parallel(groups):
                maximum = T.max(partial_max[0, head], partial_max[1, head])
                scale0 = T.if_then_else(
                    partial_denominator[0, head] > 0,
                    T.exp2((partial_max[0, head] - maximum) * scale),
                    0.0,
                )
                scale1 = T.if_then_else(
                    partial_denominator[1, head] > 0,
                    T.exp2((partial_max[1, head] - maximum) * scale),
                    0.0,
                )
                total = partial_denominator[0, head] * scale0 + partial_denominator[1, head] * scale1
                weights[0, head] = T.if_then_else(total > 0, scale0 / total, 0.0)
                weights[1, head] = T.if_then_else(total > 0, scale1 / total, 0.0)
            T.sync_threads()
            for head, feature in T.Parallel(groups, dim):
                Output[batch_id, token, kv_head * groups + head, feature] = T.cast(
                    partial_output[0, head, feature] * weights[0, head]
                    + partial_output[1, head, feature] * weights[1, head], dtype,
                )

    return native_sparse_attention


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
    factory = _make_s8_wave_split if (S == 8 and block_size == 16 and D == 64 and HQ // H == 16) else _make_native_sparse_attention
    kernel = factory(
        batch=B,
        seq_len=seq_len,
        kv_heads=H,
        query_heads=HQ,
        dim=D,
        selected_blocks=S,
        block_size=block_size,
        is_causal=bool(is_causal),
    )
    # out_idx=[] makes the caller-provided output buffer an ordinary kernel argument.
    kernel(q, k, v, block_indices, output)
