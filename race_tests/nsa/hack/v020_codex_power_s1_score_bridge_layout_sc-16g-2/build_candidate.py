import ast
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');id='v020_codex_power_s1_score_bridge_layout_sc-16g-2'
s=(root/'experiments/v016_codex_power_s8_v_bank_partition_sc-16g-2/candidate.py').read_text()
a='            output_acc = T.alloc_fragment([groups, tile_dim], accum_dtype)\n'
b='''            output_acc = T.alloc_fragment([groups, tile_dim], accum_dtype)
            if use_two_wave:
                T.annotate_layout({
                    scores_half: T.Layout(
                        [groups, block_tokens],
                        lambda row, col: (row, ((col // 4) ^ (row // 2)) * 4 + col % 4),
                    ),
                })
'''
assert s.count(a)==1;s=s.replace(a,b,1).replace('# codex-power v016','# codex-power v020',1)
assert [ast.unparse(n) for n in ast.parse(s).body if isinstance(n,(ast.Import,ast.ImportFrom))]==['import tilelang','import tilelang.language as T','from tilelang.layout import make_swizzled_layout']
p=root/'experiments'/id/'candidate.py';p.write_text(s);print(p,len(s))
