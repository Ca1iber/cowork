import ast
from pathlib import Path
r=Path('/root/tilelang-metax/race_tests/nsa');id='v022_codex_power_s1_past_block_mask_sc-16g-2'
s=(r/'experiments/v021_codex_power_s1_normalize_scores_sc-16g-2/candidate.py').read_text()
a='''                    if is_causal:
                        for head, offset in T.Parallel(groups, block_tokens):'''
b='''                    if is_causal and (not use_direct_output or token < block_start + block_tokens - 1):
                        for head, offset in T.Parallel(groups, block_tokens):'''
assert s.count(a)==1;s=s.replace(a,b,1).replace('# codex-power v021','# codex-power v022',1)
assert [ast.unparse(n) for n in ast.parse(s).body if isinstance(n,(ast.Import,ast.ImportFrom))]==['import tilelang','import tilelang.language as T','from tilelang.layout import make_swizzled_layout']
p=r/'experiments'/id/'candidate.py';p.write_text(s);print(p)
