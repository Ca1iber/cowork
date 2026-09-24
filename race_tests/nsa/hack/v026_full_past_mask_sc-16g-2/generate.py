from pathlib import Path
root = Path('/root/tilelang-metax/race_tests/nsa')
src = (root / 'submission/v023_case6_direct_k_sc-16g-2/submission.py').read_text()
anchor = '            use_prefetch_k = selected_blocks == 1 and block_size == 32 and dim == 128 and groups == 16\n'
assert src.count(anchor) == 1
src = src.replace(anchor, anchor + '            use_full_past_mask = selected_blocks == 8 and block_size == 16 and dim == 64 and groups == 16\n')
needle = '''                                if is_causal:
                                    for head, offset in T.Parallel(groups, block_tokens):
                                        scores[head, offset] = T.if_then_else(
                                            token >= block_start + offset,
                                            scores[head, offset],
                                            -T.infinity(accum_dtype),
                                        )
'''
assert src.count(needle) == 1
replacement = '''                                if is_causal:
                                    if use_full_past_mask:
                                        if block_start + block_tokens > token:
                                            for head, offset in T.Parallel(groups, block_tokens):
                                                scores[head, offset] = T.if_then_else(
                                                    token >= block_start + offset,
                                                    scores[head, offset],
                                                    -T.infinity(accum_dtype),
                                                )
                                    else:
                                        for head, offset in T.Parallel(groups, block_tokens):
                                            scores[head, offset] = T.if_then_else(
                                                token >= block_start + offset,
                                                scores[head, offset],
                                                -T.infinity(accum_dtype),
                                            )
'''
src = src.replace(needle, replacement)
Path('/tmp/nsa_v026/submission.py').write_text(src)
