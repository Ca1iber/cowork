import ast,difflib,hashlib,json,subprocess
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');id='v033_codex_power_s4_checkpoint_sc-16g-2'
base=subprocess.check_output(['git','show','39ff49e7b:race_tests/nsa/submission.py'],text=True);assert hashlib.sha256(base.encode()).hexdigest()=='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
own=(root/'experiments/v032_codex_power_cooperative_q_sc-16g-2/candidate.py').read_text();t=ast.parse(own)
f=next(x for x in t.body if isinstance(x,ast.FunctionDef) and x.name=='_make_multiblock_register_qk')
start=min(x.lineno for x in f.decorator_list)-1
helper=''.join(own.splitlines(True)[start:f.end_lineno]).replace('def _make_multiblock_register_qk(', 'def _make_power_s4(',1)
(root/'experiments'/id/'s4_kernel.py').write_text('# codex-power v033\nimport tilelang\nimport tilelang.language as T\nfrom tilelang.layout import make_swizzled_layout\n\n'+helper+'\n')
old=ast.parse(base);r=next(x for x in old.body if isinstance(x,ast.FunctionDef) and x.name=='run_kernel')
assert [x.arg for x in r.args.args]==['q','k','v','block_indices','output','B','seq_len','H','HQ','D','S','block_size','is_causal']
first=r.body[0]
if isinstance(first,ast.Expr) and isinstance(first.value,ast.Constant) and isinstance(first.value.value,str):first=r.body[1]
inject='    if S == 4 and D == 64 and block_size == 16 and HQ // H == 16:\n        key = (B, seq_len, H, HQ, D, S, block_size, bool(is_causal))\n        kernel = _power_s4_kernels.get(key)\n        if kernel is None:\n            kernel = _make_power_s4(B, seq_len, H, HQ, D, S, block_size, bool(is_causal))\n            _power_s4_kernels[key] = kernel\n        kernel(q, k, v, block_indices, output)\n        return\n'
lines=base.splitlines(True);idx=first.lineno-1
newbase=''.join(lines[:idx])+inject+''.join(lines[idx:])
source='# codex-power v033\n'+newbase+'\n\n_power_s4_kernels = {}\n\n'+helper+'\n'
new=ast.parse(source);nr=next(x for x in new.body if isinstance(x,ast.FunctionDef) and x.name=='run_kernel')
body=[x for x in nr.body if not (isinstance(x,ast.If) and ast.unparse(x.test).startswith('S == 4 and'))]
assert ast.dump(ast.Module(body=body,type_ignores=[]))==ast.dump(ast.Module(body=r.body,type_ignores=[]))
p=Path('/tmp/nsa_power_v033_s4_checkpoint.py');p.write_text(source)
(root/'experiments'/id/'source_diff.patch').write_text(''.join(difflib.unified_diff(base.splitlines(True),source.splitlines(True),fromfile='shared_root_submission_v28',tofile=str(p))))
(root/'rep'/id/'source_identity.json').write_text(json.dumps({'baseline_sha256':hashlib.sha256(base.encode()).hexdigest(),'candidate_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'baseline_body_AST_unchanged':True,'candidate_path':str(p)},indent=2)+'\n')
print('candidate staged',p,'baseline body AST unchanged')
