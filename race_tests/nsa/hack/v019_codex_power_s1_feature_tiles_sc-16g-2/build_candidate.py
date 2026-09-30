import ast
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');id='v019_codex_power_s1_feature_tiles_sc-16g-2'
s=(root/'experiments/v016_codex_power_s8_v_bank_partition_sc-16g-2/candidate.py').read_text()
helper=(root/'hack'/id/'feature_tiles_function.txt').read_text()
assert s.count('def run_kernel(')==1;s=s.replace('def run_kernel(',helper+'\n\ndef run_kernel(',1)
a='    factory = _make_s8_register_qk if (S == 8 and block_size == 16 and D == 64 and HQ // H == 16) else _make_native_sparse_attention'
b='''    factory = _make_s1_feature_tiles if (S == 1 and block_size == 32 and D == 128 and HQ // H == 16) else (
        _make_s8_register_qk if (S == 8 and block_size == 16 and D == 64 and HQ // H == 16) else _make_native_sparse_attention
    )'''
assert s.count(a)==1;s=s.replace(a,b,1).replace('# codex-power v016','# codex-power v019',1)
assert [ast.unparse(n) for n in ast.parse(s).body if isinstance(n,(ast.Import,ast.ImportFrom))]==['import tilelang','import tilelang.language as T','from tilelang.layout import make_swizzled_layout']
p=root/'experiments'/id/'candidate.py';p.write_text(s);print(p,len(s))
