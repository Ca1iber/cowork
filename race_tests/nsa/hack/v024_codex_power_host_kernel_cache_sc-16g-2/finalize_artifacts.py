import ast,csv,hashlib,json,subprocess
from pathlib import Path
repo=Path('/root/tilelang-metax');root=repo/'race_tests/nsa';id='v024_codex_power_host_kernel_cache_sc-16g-2'
exp,hack,rep,sub=[root/x/id for x in ('experiments','hack','rep','submission')]
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
a=json.loads((rep/'paired_summary.json').read_text());identity=json.loads((rep/'paired_source_hashes.json').read_text())
assert sha(exp/'candidate.py')==identity['v024']
assert sha(root/'submission.py')=='e51d49834fdf06bb02f4c7c2ea0bc2bbc9d6a95b81578e58c2317eee0bdfbe76'
for name in ('paired_all14.exit','oj_static.exit','oj_static_all14.exit','codegen.exit','torchprof_case2_v023.exit','torchprof_case2_v024.exit'):
 assert (rep/name).read_text().strip()=='0'
rows=list(csv.DictReader((rep/'paired_all14_sc-16g-2.csv').open()));assert len(rows)==56 and all(x['status']=='PASS' for x in rows)
assert len(list((rep/'codegen').glob('*.device.cpp')))==14
parent=root/'experiments/v023_codex_power_s8_cooperative_k_sc-16g-2/candidate.py'
old,new=ast.parse(parent.read_text()),ast.parse((exp/'candidate.py').read_text())
assert (exp/'candidate.py').read_text().startswith('# codex-power v024\n')
assert [ast.unparse(x) for x in new.body if isinstance(x,(ast.Import,ast.ImportFrom))]==['import tilelang','import tilelang.language as T','from tilelang.layout import make_swizzled_layout']
for n in ('_make_native_sparse_attention','_make_s8_register_qk'):
 assert ast.dump(next(x for x in old.body if isinstance(x,ast.FunctionDef) and x.name==n))==ast.dump(next(x for x in new.body if isinstance(x,ast.FunctionDef) and x.name==n))
assert (rep/'codegen/case12.device.cpp').read_bytes()==(root/'rep/v023_codex_power_s8_cooperative_k_sc-16g-2/codegen/case12.device.cpp').read_bytes()
assert (rep/'report_sc-16g-2.md').exists()
(sub/'UNAVAILABLE.md').write_text('Host cache benefit verified; case10/11/12 remain slower than v28. No final promotion/OJ result. Root submission unchanged.\n')
paths=[p for d in (exp,hack,rep,sub) for p in d.rglob('*') if p.is_file() and p.name not in ('artifact_hashes_sc-16g-2.txt','manifest_sc-16g-2.json')]
index=rep/'artifact_hashes_sc-16g-2.txt';index.write_text(''.join(f'{sha(p)}  {p.relative_to(repo)}\n' for p in sorted(paths)))
(rep/'manifest_sc-16g-2.json').write_text(json.dumps({'iteration':id,'parent_commit':subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip(),'status':'host_improvement; v28_target_gate_failed','source_sha256':identity,'full14':a,'host_profile':json.loads((rep/'host_profile_summary.json').read_text()),'device_factories':'AST unchanged; case12 byte-identical; fresh14 generated static PASS','OJ':'UNKNOWN','artifact_index_sha256':sha(index)},indent=2)+'\n')
print('finalized',len(paths),'files')
