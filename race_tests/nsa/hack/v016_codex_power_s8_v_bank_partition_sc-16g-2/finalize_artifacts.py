import ast,csv,hashlib,json
from pathlib import Path
repo=Path('/root/tilelang-metax');root=repo/'race_tests/nsa';id='v016_codex_power_s8_v_bank_partition_sc-16g-2'
exp,hack,rep,sub=[root/f/id for f in ('experiments','hack','rep','submission')]
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
identity=json.loads((rep/'paired_source_hashes.json').read_text())
assert sha(exp/'candidate.py')==identity['v016']
assert sha(root/'submission.py')==identity['v013']=='e51d49834fdf06bb02f4c7c2ea0bc2bbc9d6a95b81578e58c2317eee0bdfbe76'
expected={n:sha(exp/n) for n in ('candidate.py','candidate_xor_expr.py')}
for n in expected:
 p=exp/n;t=ast.parse(p.read_text())
 assert [ast.unparse(x) for x in t.body if isinstance(x,(ast.Import,ast.ImportFrom))]==['import tilelang','import tilelang.language as T','from tilelang.layout import make_swizzled_layout']
 assert p.read_text().startswith('# codex-power v016\n')
 assert not any(isinstance(x,ast.ClassDef) for x in ast.walk(t))
for f in ('paired_case12.exit','screen_vec8.exit','oj_static_vec8.exit','oj_static_xor_expr.exit','codegen_vec8.exit','case12_vec8.resource.exit','llvm_ir_compile.exit'):
 assert (rep/f).read_text().strip()=='0',f
for label in ('v016','v028'):assert (rep/f'mcprof_{label}/exit_code.txt').read_text().strip()=='0'
rows=list(csv.DictReader((rep/'paired_case12_sc-16g-2.csv').open()))
assert len(rows)==12 and all(x['status']=='PASS' for x in rows)
a=json.loads((rep/'paired_summary.json').read_text());assert abs(a['medians_us']['v016']-114.7775)<0.001
assert '*(uint4*)(V +' in (rep/'codegen/case12.device.cpp').read_text()
assert (rep/'case12_vec8.ll').read_text().startswith(';')
assert (sub/'UNAVAILABLE.md').exists()
paths=[p for d in (exp,hack,rep,sub) for p in d.rglob('*') if p.is_file() and p.name not in ('artifact_hashes_sc-16g-2.txt','manifest_sc-16g-2.json')]
index=rep/'artifact_hashes_sc-16g-2.txt';index.write_text(''.join(f'{sha(p)}  {p.relative_to(repo)}\n' for p in sorted(paths)))
manifest={'iteration':id,'status':'local_gain_over_power_v013_but_target_v028_gate_failed','parent_commit':'146c913cdb975b0749ab824a3b79494bb443d32c','branch':'codex-power','machine':'sc-16g-2 C50016G sGPU','source_sha256':expected,'paired_source_sha256':identity,'reference':'12/12 paired plus two target screens PASS','paired_medians_us':a['medians_us'],'source_generated_static':'PASS','mcprofiler':'two matched samples each v016 and v028','bank_prediction':'shared counter unchanged; causal hypothesis not supported','full14_and_oj':'not run after target gate failed','ISA':'SDK tool unavailable, LLVM IR archived','artifact_index_sha256':sha(index)}
(rep/'manifest_sc-16g-2.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('finalized',len(paths),'files')
