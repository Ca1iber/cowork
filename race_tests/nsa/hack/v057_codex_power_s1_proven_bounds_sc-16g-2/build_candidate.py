import ast,difflib,hashlib,json,subprocess
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');ident='v057_codex_power_s1_proven_bounds_sc-16g-2'
base=subprocess.check_output(['git','show','39ff49e7b:race_tests/nsa/submission.py'],text=True)
assert hashlib.sha256(base.encode()).hexdigest()=='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
helpers=[]
paths=[root/'experiments/v057_codex_power_s1_proven_bounds_sc-16g-2/s1_kernel.py',root/'experiments/v056_codex_power_s8_proven_bounds_sc-16g-2/s8_kernel.py']
for path in paths:
 text=path.read_text();f=next(x for x in ast.parse(text).body if isinstance(x,ast.FunctionDef));start=min(x.lineno for x in f.decorator_list)-1
 helpers.append(''.join(text.splitlines(True)[start:f.end_lineno]))
registration='\n# Compiled code objects only; all attention data work occurs in every call.\n_KERNEL_CACHE[(8, 1024, 1, 16, 128, 1, 32, True)] = _make_power_s1_proven_bounds(8, 1024, 1, 16, 128, 1, 32, True)\n_KERNEL_CACHE[(4, 1024, 1, 16, 64, 8, 16, True)] = _make_power_s8_proven_bounds(4, 1024, 1, 16, 64, 8, 16, True)\n'
source='# codex-power v057\n'+base+'\n'+'\n'.join(helpers)+registration
old=ast.parse(base);new=ast.parse(source);assert ast.dump(ast.Module(body=new.body[:len(old.body)],type_ignores=[]))==ast.dump(old)
p=Path('/tmp/nsa_power_v057_proven_bounds.py');p.write_text(source)
(root/'experiments'/ident/'source_diff.patch').write_text(''.join(difflib.unified_diff(base.splitlines(True),source.splitlines(True),fromfile='exact_original_v28',tofile=str(p))))
(root/'rep'/ident/'source_identity.json').write_text(json.dumps({'baseline_sha256':hashlib.sha256(base.encode()).hexdigest(),'candidate_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'original_prefix_and_entry_AST_unchanged':True,'case6_helper_dependency':str(paths[0]),'case6_helper_sha256':hashlib.sha256(paths[0].read_bytes()).hexdigest(),'cache_type':'code objects only','candidate_path':str(p)},indent=2)+'\n');print('candidate ready',p)
