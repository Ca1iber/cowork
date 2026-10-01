import ast,difflib,hashlib,json,subprocess
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');id='v043_codex_power_s8_v_uint4_fetch_sc-16g-2'
base=subprocess.check_output(['git','show','39ff49e7b:race_tests/nsa/submission.py'],text=True)
assert hashlib.sha256(base.encode()).hexdigest()=='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
own=(root/'experiments'/id/'s8_kernel.py').read_text();f=next(x for x in ast.parse(own).body if isinstance(x,ast.FunctionDef))
start=min(x.lineno for x in f.decorator_list)-1;helper=''.join(own.splitlines(True)[start:f.end_lineno])
old=ast.parse(base);r=next(x for x in old.body if isinstance(x,ast.FunctionDef) and x.name=='run_kernel')
inject='    if S == 8 and D == 64 and block_size == 16 and HQ // H == 16:\n        key = (B, seq_len, H, HQ, D, S, block_size, bool(is_causal))\n        kernel = _power_s8_kernels.get(key)\n        if kernel is None:\n            kernel = _make_power_s8_v_uint4_fetch(B, seq_len, H, HQ, D, S, block_size, bool(is_causal))\n            _power_s8_kernels[key] = kernel\n        kernel(q, k, v, block_indices, output)\n        return\n'
lines=base.splitlines(True);idx=r.body[0].lineno-1
source='# codex-power v043\n'+''.join(lines[:idx])+inject+''.join(lines[idx:])+'\n_power_s8_kernels = {}\n\n'+helper+'\n'
new=ast.parse(source);nr=next(x for x in new.body if isinstance(x,ast.FunctionDef) and x.name=='run_kernel')
assert ast.dump(ast.Module(body=nr.body[1:],type_ignores=[]))==ast.dump(ast.Module(body=r.body,type_ignores=[]))
p=Path('/tmp/nsa_power_v043_v_uint4_fetch.py');p.write_text(source)
(root/'experiments'/id/'source_diff.patch').write_text(''.join(difflib.unified_diff(base.splitlines(True),source.splitlines(True),fromfile='shared_root_v28',tofile=str(p))))
(root/'rep'/id/'source_identity.json').write_text(json.dumps({'parent_sha256':hashlib.sha256(base.encode()).hexdigest(),'candidate_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'unchanged_fallback_body_AST':True,'candidate_path':str(p)},indent=2)+'\n');print('candidate ready',p)
