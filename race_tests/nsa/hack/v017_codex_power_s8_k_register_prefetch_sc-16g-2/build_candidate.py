import ast
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');id='v017_codex_power_s8_k_register_prefetch_sc-16g-2'
s=(root/'experiments/v016_codex_power_s8_v_bank_partition_sc-16g-2/candidate.py').read_text()
a='''                    for chunk in T.serial(4):
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
'''
b='''                    for chunk in T.unroll(4):
                        for element in T.vectorized(4):
                            row = lane_id % 16
                            feature = chunk * 16 + (lane_id // 16) * 4 + element
                            k_local[chunk * 4 + element] = K[
                                batch_id, block_start + row, kv_head, feature
                            ]
                    for chunk in T.unroll(4):
                        T.tvm_mfma(
                            '16x16x16f16', 'row', 'row',
                            'float16x4', 'float16x4', 'float32x4',
                            k_local.data, chunk, q_local.data, chunk, scores.data, 0,
                            dtype='float32x4',
                        )
'''
assert s.count(a)==1 and s.count('k_local = T.alloc_local(4, dtype)')==1
s=s.replace(a,b,1).replace('k_local = T.alloc_local(4, dtype)','k_local = T.alloc_local(16, dtype)',1)
s=s.replace('# codex-power v016','# codex-power v017',1)
assert [ast.unparse(n) for n in ast.parse(s).body if isinstance(n,(ast.Import,ast.ImportFrom))]==['import tilelang','import tilelang.language as T','from tilelang.layout import make_swizzled_layout']
p=root/'experiments'/id/'candidate.py';p.write_text(s);print(p,len(s))
