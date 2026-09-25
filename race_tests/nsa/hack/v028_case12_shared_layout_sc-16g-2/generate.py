from pathlib import Path
import sys
root=Path('/root/tilelang-metax/race_tests/nsa')
src=(root/'submission/v026_full_past_mask_sc-16g-2/submission.py').read_text()
mode=sys.argv[1]
assert mode in ('output_swizzle','v_linear')
needle='''                        if use_direct_k:
                            if block_size == 32:
'''
assert src.count(needle)==1
if mode=='output_swizzle':
    src=src.replace(needle,'''                        if use_direct_k:
                            if block_size == 32 or (selected_blocks == 8 and block_size == 16 and dim == 64 and groups == 16):
''')
else:
    old='''                            else:
                                T.annotate_layout(
                                    {
                                        q_shared: qk_mma.make_mma_load_layout(q_shared),
                                        scores: qk_mma.make_mma_store_layout(scores),
                                    }
                                )
                        else:
                            if block_size == 32:
'''
    new='''                            else:
                                if selected_blocks == 8 and block_size == 16 and dim == 64 and groups == 16:
                                    T.annotate_layout(
                                        {
                                            q_shared: qk_mma.make_mma_load_layout(q_shared),
                                            scores: qk_mma.make_mma_store_layout(scores),
                                            v_shared: tilelang.layout.make_linear_layout(v_shared),
                                        }
                                    )
                                else:
                                    T.annotate_layout(
                                        {
                                            q_shared: qk_mma.make_mma_load_layout(q_shared),
                                            scores: qk_mma.make_mma_store_layout(scores),
                                        }
                                    )
                        else:
                            if block_size == 32:
'''
    assert src.count(old)==1
    src=src.replace(old,new)
Path(f'/tmp/nsa_v028/{mode}.py').write_text(src)
