from pathlib import Path
import ast,hashlib,json,difflib,subprocess
root=Path('/root/tilelang-metax/race_tests/nsa');v='v080_codex_power_s1_d64_dispatch_sc-16g-2';r=root/'rep'/v
base=subprocess.check_output(['git','show','39ff49e7b:race_tests/nsa/submission.py'],text=True);assert hashlib.sha256(base.encode()).hexdigest()=='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
paths=[root/'experiments/v076_codex_power_s1_v_hybrid_pack_sc-16g-2/s1_kernel.py',root/'experiments/v077_codex_power_s8_output_pair_sc-16g-2/s8_kernel.py',root/'experiments/v079_codex_power_s1_case4_dense_sc-16g-2/s1_case4_kernel.py'];helpers=[]
for path in paths:
 text=path.read_text();fn=next(x for x in ast.parse(text).body if isinstance(x,ast.FunctionDef));start=min(x.lineno for x in fn.decorator_list)-1;helpers.append(''.join(text.splitlines(True)[start:fn.end_lineno]))
registration="\n_KERNEL_CACHE[(8,1024,1,16,128,1,32,True)] = _make_power_s1_v_hybrid_pack(8,1024,1,16,128,1,32,True)\n_KERNEL_CACHE[(4,1024,1,16,64,8,16,True)] = _make_power_s8_output_pair(4,1024,1,16,64,8,16,True)\n"
source='# codex-power v080\n'+base+'\n'+'\n'.join(helpers)+registration+(root/'experiments'/v/'lazy_dispatch.py').read_text()
a=ast.parse(base);b=ast.parse(source);assert ast.dump(ast.Module(body=b.body[:len(a.body)],type_ignores=[]))==ast.dump(a)
p=Path('/tmp/nsa_power_v080_dispatch.py');p.write_text(source);(root/'experiments'/v/'source_diff.patch').write_text(''.join(difflib.unified_diff(base.splitlines(True),source.splitlines(True),fromfile='exact_original_v28',tofile=str(p))))
(r/'source_identity.json').write_text(json.dumps({'candidate_path':str(p),'candidate_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'baseline_sha256':hashlib.sha256(base.encode()).hexdigest(),'originalprefix_and_entryAST_exact':True,'helper_dependencies':{str(f):hashlib.sha256(f.read_bytes()).hexdigest() for f in paths},'all_kernel_bodies':'exactvalidated76/77/79,no math edits','lazycache':'compiledcode object replacesdispatch entry onfirstcall,tensorargsnot retained'},indent=2)+'\n');print('selfcontainedcandidate',p)
