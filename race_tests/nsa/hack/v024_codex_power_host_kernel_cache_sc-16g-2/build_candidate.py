import ast,difflib
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa')
id='v024_codex_power_host_kernel_cache_sc-16g-2'
parent=root/'experiments/v023_codex_power_s8_cooperative_k_sc-16g-2/candidate.py'
s=parent.read_text().replace('# codex-power v023','# codex-power v024',1)
s=s.replace('def run_kernel(', '_compiled_kernels = {}\n\n\ndef run_kernel(',1)
start=s.index('    factory = _make_s8_register_qk')
end=s.index('    # out_idx=[]',start)
old=s[start:end]
new='    key = (B, seq_len, H, HQ, D, S, block_size, bool(is_causal))\n    kernel = _compiled_kernels.get(key)\n    if kernel is None:\n'+''.join('    '+x if x.strip() else x for x in old.splitlines(True))+'        _compiled_kernels[key] = kernel\n'
s=s[:start]+new+s[end:]
p=root/'experiments'/id/'candidate.py';p.write_text(s)
(exp:=p.parent/'source_diff.patch').write_text(''.join(difflib.unified_diff(parent.read_text().splitlines(True),s.splitlines(True),fromfile=str(parent),tofile=str(p))))
a,b=ast.parse(parent.read_text()),ast.parse(s)
for name in ('_make_native_sparse_attention','_make_s8_register_qk'):
 assert ast.dump(next(x for x in a.body if isinstance(x,ast.FunctionDef) and x.name==name))==ast.dump(next(x for x in b.body if isinstance(x,ast.FunctionDef) and x.name==name))
print('candidate written; both device factory ASTs identical')
