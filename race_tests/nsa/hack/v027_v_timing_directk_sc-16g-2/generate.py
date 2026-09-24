from pathlib import Path
import sys
root=Path('/root/tilelang-metax/race_tests/nsa')
src=(root/'submission/v026_full_past_mask_sc-16g-2/submission.py').read_text()
mode=sys.argv[1]
assert mode in ('pre_qk','pre_softmax')
anchor='            use_full_past_mask = selected_blocks == 8 and block_size == 16 and dim == 64 and groups == 16\n'
assert src.count(anchor)==1
src=src.replace(anchor,anchor+'            use_early_v = use_direct_k\n')
copy='''T.copy(
                                V[
                                    batch_id,
                                    block_start : block_start + block_tokens,
                                    kv_head,
                                    output_tile * tile_dim : (output_tile + 1) * tile_dim,
                                ],
                                v_shared,
                            )'''
late='                            '+copy
assert src.count(late)==1
src=src.replace(late,'                            if not use_early_v:\n'+'                                '+copy.replace('\n','\n    '))
early='''                            if use_early_v:
                                T.copy(
                                    V[
                                        batch_id,
                                        block_start : block_start + block_tokens,
                                        kv_head,
                                        output_tile * tile_dim : (output_tile + 1) * tile_dim,
                                    ],
                                    v_shared,
                                )
'''
if mode=='pre_qk':
    anchor='''                        if block_start >= 0 and block_start <= token:
                            if not use_direct_k:
'''
    assert src.count(anchor)==1
    src=src.replace(anchor,'                        if block_start >= 0 and block_start <= token:\n'+early+'                            if not use_direct_k:\n')
else:
    anchor='''                            T.copy(block_max, previous_max)
'''
    assert src.count(anchor)==1
    src=src.replace(anchor,early+anchor)
Path(f'/tmp/nsa_v027/{mode}.py').write_text(src)
