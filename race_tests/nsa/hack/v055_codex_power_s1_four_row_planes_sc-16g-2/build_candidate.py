import ast,difflib,hashlib,json,subprocess
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');ident='v055_codex_power_s1_four_row_planes_sc-16g-2'
base=subprocess.check_output(['git','show','39ff49e7b:race_tests/nsa/submission.py'],text=True)
assert hashlib.sha256(base.encode()).hexdigest()=='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
text=(root/'experiments'/ident/'s1_kernel.py').read_text();f=next(x for x in ast.parse(text).body if isinstance(x,ast.FunctionDef));start=min(x.lineno for x in f.decorator_list)-1
helper=''.join(text.splitlines(True)[start:f.end_lineno])
source='# codex-power v055\n'+base+'\n'+helper+'\n# Compiled code object only; every call executes all attention data work.\n_KERNEL_CACHE[(8,1024,1,16,128,1,32,True)] = _make_power_s1_four_row_planes(8,1024,1,16,128,1,32,True)\n'
old=ast.parse(base);new=ast.parse(source)
assert ast.dump(ast.Module(body=new.body[:len(old.body)],type_ignores=[]))==ast.dump(old)
p=Path('/tmp/nsa_power_v055_four_row_planes.py');p.write_text(source)
(root/'experiments'/ident/'source_diff.patch').write_text(''.join(difflib.unified_diff(base.splitlines(True),source.splitlines(True),fromfile='exact_original_v28',tofile=str(p))))
(root/'rep'/ident/'source_identity.json').write_text(json.dumps({'baseline_sha256':hashlib.sha256(base.encode()).hexdigest(),'candidate_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'original_prefix_and_entry_AST_unchanged':True,'cache_type':'code object only','candidate_path':str(p),'changed_case':6},indent=2)+'\n')
print('candidate ready',p)
