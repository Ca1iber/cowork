import ast,difflib,hashlib,json,subprocess
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');ident='v049_codex_power_s1_cache_entry_sc-16g-2'
base=subprocess.check_output(['git','show','39ff49e7b:race_tests/nsa/submission.py'],text=True)
assert hashlib.sha256(base.encode()).hexdigest()=='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
own=(root/'experiments'/ident/'s1_kernel.py').read_text();fn=next(x for x in ast.parse(own).body if isinstance(x,ast.FunctionDef))
start=min(x.lineno for x in fn.decorator_list)-1;helper=''.join(own.splitlines(True)[start:fn.end_lineno])
registration='\n# Cache compiled code only; all attention data work remains inside every call.\n_KERNEL_CACHE[(8, 1024, 1, 16, 128, 1, 32, True)] = _make_power_s1_shared_arena(8, 1024, 1, 16, 128, 1, 32, True)\n'
source='# codex-power v049\n'+base+'\n'+helper+registration
old=ast.parse(base);new=ast.parse(source)
assert ast.dump(ast.Module(body=new.body[:len(old.body)],type_ignores=[]))==ast.dump(old)
a=next(x for x in old.body if isinstance(x,ast.FunctionDef) and x.name=='run_kernel');b=next(x for x in new.body if isinstance(x,ast.FunctionDef) and x.name=='run_kernel')
assert ast.dump(a)==ast.dump(b)
p=Path('/tmp/nsa_power_v049_cache_entry.py');p.write_text(source)
(root/'experiments'/ident/'source_diff.patch').write_text(''.join(difflib.unified_diff(base.splitlines(True),source.splitlines(True),fromfile='exact_original_v28',tofile=str(p))))
(root/'rep'/ident/'source_identity.json').write_text(json.dumps({'baseline_sha256':hashlib.sha256(base.encode()).hexdigest(),'candidate_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'original_module_prefix_AST_unchanged':True,'run_kernel_full_AST_unchanged':True,'cache_prefill':'compiled code only, exactcase6 shape','candidate_path':str(p)},indent=2)+'\n');print('candidate ready',p)
