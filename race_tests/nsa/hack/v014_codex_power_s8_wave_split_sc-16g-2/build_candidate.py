import ast
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa')
id='v014_codex_power_s8_wave_split_sc-16g-2'
s=(root/'submission/v013_codex_power_best_promotion_sc-16g-2/submission.py').read_text()
start=s.index('@tilelang.jit(',s.index('    return native_sparse_attention')+1)
end=s.index('def run_kernel(',start)
helper=(root/'hack'/id/'wave_split_function.txt').read_text()
s=s[:start]+helper+'\n\n'+s[end:]
s=s.replace('_make_s8_register_qk if','_make_s8_wave_split if')
s=s.replace('# codex-power v013','# codex-power v014',1)
assert s.count('def _make_s8_wave_split(')==1 and '_make_s8_register_qk' not in s
imports=[ast.unparse(n) for n in ast.parse(s).body if isinstance(n,(ast.Import,ast.ImportFrom))]
assert imports==['import tilelang','import tilelang.language as T','from tilelang.layout import make_swizzled_layout']
p=root/'experiments'/id/'candidate.py';p.write_text(s)
print(p,len(s),imports)
