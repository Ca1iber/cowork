import ast
import csv
import hashlib
import json
from pathlib import Path

repo=Path('/root/tilelang-metax')
root=repo/'race_tests/nsa'
id='v013_codex_power_best_promotion_sc-16g-2'
experiment,hack,rep,submission=[root/folder/id for folder in ('experiments','hack','rep','submission')]

def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()

root_source=root/'submission.py'
benchmarked_source = root/'submission/v010_codex_power_s8_register_qk_sc-16g-2/submission.py'
assert sha(root_source)==sha(submission/'submission.py')
assert root_source.read_bytes()==b'# codex-power v013\n'+benchmarked_source.read_bytes()
assert sha(benchmarked_source)=='8da99365862d898e6e0c16f7a36d34a8d8164cda9840daad7d1b55817d633dd8'
assert ast.dump(ast.parse(root_source.read_bytes()))==ast.dump(ast.parse(benchmarked_source.read_bytes()))
assert sha(experiment/'baseline_from_start.py')=='462d505fe28efb0a0140feb1a1a4ca00df24b31d89f08beef2478c18685ca0b1'
for name in ('source_oj_static.exit','generated_oj_static.exit','root_official14.exit','paired_all14.exit'):
    assert (rep/name).read_text().strip()=='0',name
assert 'generated device sources checked: 14' in (rep/'generated_oj_static.log').read_text()
exact=list(csv.DictReader((rep/'root_official14_sc-16g-2.csv').open()))
paired=list(csv.DictReader((rep/'paired_all14_sc-16g-2.csv').open()))
assert len(exact)==14 and all(r['status']=='PASS' for r in exact)
assert len(paired)==56 and all(r['status']=='PASS' for r in paired)
analysis=json.loads((rep/'paired_analysis.json').read_text())
assert analysis['paired_runs']==56 and analysis['all_pass']
assert analysis['root_sha256']==sha(root_source)
assert analysis['benchmarked_source_sha256']==sha(benchmarked_source)
assert analysis['baseline_latency_sum_us']==651.026 and analysis['root_latency_sum_us']==573.579
assert [r['case'] for r in analysis['cases'] if r['device_changed']]==[6,12]
assert [r['case'] for r in analysis['cases'] if r['host_changed']]==[6,12]
assert (rep/'report_sc-16g-2.md').exists()
paths=[root_source]+[p for d in (experiment,hack,rep,submission) for p in d.rglob('*') if p.is_file() and p.name not in ('artifact_hashes_sc-16g-2.txt','manifest_sc-16g-2.json')]
index=rep/'artifact_hashes_sc-16g-2.txt'
index.write_text(''.join(f'{sha(p)}  {p.relative_to(repo)}\n' for p in sorted(paths)))
manifest={'iteration':id,'status':'promoted_root_submission_verified','machine':'sc-16g-2 / MetaX C500 / 16G sGPU','branch':'codex-power','parent_commit':'ea2ec21d6','starting_commit':'ffa68b684e3876df2821fe34c9959493c2ca065a','root_submission_sha256':sha(root_source),'benchmarked_source_sha256':sha(benchmarked_source),'source_annotation':'# codex-power v013','annotation_verification':'AST identical to benchmarked v010 source','full_official_reference':'14/14 PASS','paired_reference':'56/56 PASS','baseline_latency_sum_us':651.026,'root_latency_sum_us':573.579,'changed_device_and_host_cases':[6,12],'source_and_generated_oj_static':'PASS','external_oj':'pending','artifact_index':str(index.relative_to(repo)),'artifact_index_sha256':sha(index)}
(rep/'manifest_sc-16g-2.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('finalized',len(paths),'files')
