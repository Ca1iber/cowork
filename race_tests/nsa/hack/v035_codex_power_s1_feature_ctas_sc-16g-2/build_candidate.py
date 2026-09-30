import ast,difflib,hashlib,json
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');id='v035_codex_power_s1_feature_ctas_sc-16g-2'
base=(root/'submission/v033_codex_power_s4_checkpoint_sc-16g-2/submission.py').read_text();assert hashlib.sha256(base.encode()).hexdigest()=='32ff3c0f147d4382a10718724dbea7b970baf2a30d36b98f908bd2b6a698c8d5'
own=(root/'experiments'/id/'s1_kernel.py').read_text();f=next(x for x in ast.parse(own).body if isinstance(x,ast.FunctionDef))
start=min(x.lineno for x in f.decorator_list)-1;helper=''.join(own.splitlines(True)[start:f.end_lineno])
old=ast.parse(base);r=next(x for x in old.body if isinstance(x,ast.FunctionDef) and x.name=='run_kernel');s4=next(x for x in r.body if isinstance(x,ast.If) and ast.unparse(x.test).startswith('S == 4 and'))
inject='    if S == 1 and D == 128 and block_size == 32 and HQ // H == 16:\n        key = (B, seq_len, H, HQ, D, S, block_size, bool(is_causal))\n        kernel = _power_s1_kernels.get(key)\n        if kernel is None:\n            kernel = _make_power_s1_feature_ctas(B, seq_len, H, HQ, D, S, block_size, bool(is_causal))\n            _power_s1_kernels[key] = kernel\n        kernel(q, k, v, block_indices, output)\n        return\n'
lines=base.splitlines(True);idx=s4.end_lineno
source=(''.join(lines[:idx])+inject+''.join(lines[idx:])).replace('# codex-power v033','# codex-power v035',1)+'\n_power_s1_kernels = {}\n\n'+helper+'\n'
new=ast.parse(source);nr=next(x for x in new.body if isinstance(x,ast.FunctionDef) and x.name=='run_kernel')
body=[x for x in nr.body if not(isinstance(x,ast.If) and ast.unparse(x.test).startswith('S == 1 and'))];assert ast.dump(ast.Module(body=body,type_ignores=[]))==ast.dump(ast.Module(body=r.body,type_ignores=[]))
p=Path('/tmp/nsa_power_v035_feature_ctas.py');p.write_text(source)
(root/'experiments'/id/'source_diff.patch').write_text(''.join(difflib.unified_diff(base.splitlines(True),source.splitlines(True),fromfile='shared_root_v033',tofile=str(p))))
(root/'rep'/id/'source_identity.json').write_text(json.dumps({'parent_sha256':hashlib.sha256(base.encode()).hexdigest(),'candidate_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'unchanged_fallback_body_AST':True,'candidate_path':str(p)},indent=2)+'\n');print('candidate ready',p)
