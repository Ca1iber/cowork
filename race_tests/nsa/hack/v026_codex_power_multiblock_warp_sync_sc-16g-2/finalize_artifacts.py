import ast,csv,hashlib,json,subprocess
from pathlib import Path
repo=Path('/root/tilelang-metax');root=repo/'race_tests/nsa';id='v026_codex_power_multiblock_warp_sync_sc-16g-2'
exp,hack,rep,sub=[root/x/id for x in ('experiments','hack','rep','submission')]
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
identity=json.loads((rep/'paired_target_source_hashes.json').read_text())
assert sha(exp/'candidate.py')==identity['v026']
assert sha(root/'submission.py')=='e51d49834fdf06bb02f4c7c2ea0bc2bbc9d6a95b81578e58c2317eee0bdfbe76'
for n in ('screen.exit','paired_targets.exit','codegen.exit','oj_static_generated.exit','case12.resource.exit','llvm_compile.exit','llvm_dis.exit','mctracer.exit','torchprof.exit','sustain.exit'):assert (rep/n).read_text().strip()=='0',n
rows=list(csv.DictReader((rep/'paired_targets_sc-16g-2.csv').open()));assert len(rows)==18 and all(x['status']=='PASS' for x in rows)
for label in ('v026','v028'):assert (rep/f'mcprof_{label}/exit_code.txt').read_text().strip()=='0'
metrics=json.loads((rep/'mcprof_summary.json').read_text());assert len(metrics)==4 and all(x['read_bytes'] is not None for x in metrics)
a,b=ast.parse((root/'experiments/v025_codex_power_s2_s4_register_qk_sc-16g-2/candidate.py').read_text()),ast.parse((exp/'candidate.py').read_text())
for n in ('_make_native_sparse_attention','run_kernel'):
 assert ast.dump(next(x for x in a.body if isinstance(x,ast.FunctionDef) and x.name==n))==ast.dump(next(x for x in b.body if isinstance(x,ast.FunctionDef) and x.name==n))
assert (exp/'candidate.py').read_text().startswith('# codex-power v026\n')
assert [ast.unparse(x) for x in b.body if isinstance(x,(ast.Import,ast.ImportFrom))]==['import tilelang','import tilelang.language as T','from tilelang.layout import make_swizzled_layout']
assert (rep/'synchronization_proof.json').exists() and (rep/'report_sc-16g-2.md').exists()
(sub/'UNAVAILABLE.md').write_text('Local gain, case10 beats v28 in target pair; case11 and12 remain slower. Full14/OJ final gates remain open. Root submission unchanged.\n')
paths=[p for d in (exp,hack,rep,sub) for p in d.rglob('*') if p.is_file() and p.name not in ('artifact_hashes_sc-16g-2.txt','manifest_sc-16g-2.json')]
index=rep/'artifact_hashes_sc-16g-2.txt';index.write_text(''.join(f'{sha(p)}  {p.relative_to(repo)}\n' for p in sorted(paths)))
(rep/'manifest_sc-16g-2.json').write_text(json.dumps({'iteration':id,'parent_commit':subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip(),'status':'local_gain; full_v28_gate_failed','source_hashes':identity,'targets':json.loads((rep/'paired_summary.json').read_text()),'mcProfiler':'two matched samples each; valid','mcTracer':json.loads((rep/'mctracer_summary.json').read_text()),'source_generated_static':'PASS','synchronization':'explicit native64 warp fences; proof archived','resources':'65MT32ST zero-stack max7; LLVM warp barriers confirmed, ISA unavailable','full14_OJ':'not run after targets11/12 still slower','artifact_index_sha256':sha(index)},indent=2)+'\n')
print('finalized',len(paths),'files')
