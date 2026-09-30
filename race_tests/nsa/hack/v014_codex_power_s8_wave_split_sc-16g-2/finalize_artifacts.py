import ast
import csv
import hashlib
import json
from pathlib import Path
repo=Path('/root/tilelang-metax');root=repo/'race_tests/nsa'
id='v014_codex_power_s8_wave_split_sc-16g-2'
exp,hack,rep,sub=[root/f/id for f in ('experiments','hack','rep','submission')]
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
expected={'candidate.py': '05486fc5c147d3b8a468f410435748a202777e34894dda960118b9515420ddf6', 'candidate_cta_linear.py': 'c5b11eb3fdd88d1f5e4ea888ad7db9a8b24d86816819d34cb64ed33073ecf207', 'candidate_cta_swizzle.py': '66c8a8082f81c7bf04faa10ffea43f747ea03949420a41b22689b0dffc0bdf79'}
for name,digest in expected.items():
 p=exp/name;assert sha(p)==digest
 t=ast.parse(p.read_text())
 assert [ast.unparse(n) for n in t.body if isinstance(n,(ast.Import,ast.ImportFrom))]==['import tilelang','import tilelang.language as T','from tilelang.layout import make_swizzled_layout']
 assert not any(isinstance(n,ast.ClassDef) for n in ast.walk(t))
 assert p.read_text().splitlines()[0]=='# codex-power v014'
for name,value in [('screen_cta_linear_sc-16g-2.csv',186.824),('screen_cta_swizzle_sc-16g-2.csv',179.082),('screen_case12_sc-16g-2.csv',173.245)]:
 rows=list(csv.DictReader((rep/name).open()))
 assert len(rows)==1 and rows[0]['case']=='12' and rows[0]['status']=='PASS'
 assert abs(float(rows[0]['latency_ms'])*1000-value)<0.001
for name in ('screen_case12.exit','screen_swizzle.exit','screen_wave_sync.exit','oj_static_cta_linear.exit','oj_static_cta_swizzle.exit','oj_static_wave_sync.exit','codegen.exit','codegen_swizzle.exit','codegen_wave_sync.exit','case12.resource.exit','case12_wave_sync.resource.exit'):
 assert (rep/name).read_text().strip()=='0',name
for label in ('v013','v014_linear'):assert (rep/f'mcprof_{label}/exit_code.txt').read_text().strip()=='0'
assert sha(root/'submission.py')=='e51d49834fdf06bb02f4c7c2ea0bc2bbc9d6a95b81578e58c2317eee0bdfbe76'
assert (sub/'UNAVAILABLE.md').exists() and (rep/'UNAVAILABLE_FULL_PROFILE.md').exists()
paths=[p for d in (exp,hack,rep,sub) for p in d.rglob('*') if p.is_file() and p.name not in ('artifact_hashes_sc-16g-2.txt','manifest_sc-16g-2.json')]
assert not any(p.is_symlink() for p in paths)
index=rep/'artifact_hashes_sc-16g-2.txt';index.write_text(''.join(f'{sha(p)}  {p.relative_to(repo)}\n' for p in sorted(paths)))
manifest={'iteration':id,'status':'rejected_target_screens_slower_than_v013_and_v028','branch':'codex-power','parent_commit':'f15e82e0c13083ecfa253e43ea07c4ea254dc973','starting_commit':'ffa68b684e3876df2821fe34c9959493c2ca065a','machine':'sc-16g-2 C500 16G sGPU','source_sha256':expected,'reference':'3/3 case12 screens PASS','screens_us':{'cta_linear':186.824,'cta_swizzle':179.082,'wave_sync_swizzle':173.245},'v013_target_us':117.0305,'v028_target_us':83.7195,'static_source_generated':'3/3 PASS','full14_and_oj':'not run after falsifying screens','fresh_v013_mctracer':'120s timeout, incomplete JSON, no new timing','mcprofiler':'two v013 and two initial-candidate samples available','artifact_index_sha256':sha(index)}
(rep/'manifest_sc-16g-2.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('finalized',len(paths),'files')
