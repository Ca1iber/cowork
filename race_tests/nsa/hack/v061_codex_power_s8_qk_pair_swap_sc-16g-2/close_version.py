import csv,hashlib,json,subprocess
from pathlib import Path
root=Path('/root/tilelang-metax');p=root/'race_tests/nsa';v='v061_codex_power_s8_qk_pair_swap_sc-16g-2';r=p/'rep'/v
sha=lambda f:hashlib.sha256(f.read_bytes()).hexdigest()
expected='575e5f11b2a37b3952e7d7ed5f099ef58b9a1d75221fcac752404a74b6b521a9'
assert sha(p/'submission'/v/'submission.py')==sha(Path('/tmp/nsa_power_v061_proven_bounds.py'))==expected
assert (p/'submission'/v/'submission.py').read_text().startswith('# codex-power v061\n')
assert sha(p/'submission.py')=='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
assert sha(p/'submission/v060_codex_power_s1_output_pair_swap_sc-16g-2/submission.py')=='f2885657714e93ce633699fdc6b61fe2549019554485f2533145315a78935fce'
for name in ['codegen','oj_static','case12.resource','llvm_compile','llvm_dis','screen','paired_case12','archive_static']:assert (r/(name+'.exit')).read_text().strip()=='0',name
for label in ['power_v061','parent_v060']:assert (r/('mcprof_'+label)/'exit_code.txt').read_text().strip()=='0',label
assert json.loads((r/'mx_smi_sampler_summary.json').read_text())['exit_code']==0
rows=list(csv.DictReader((r/'paired_case12_sc-16g-2.csv').open()));assert len(rows)==12 and all(x['status']=='PASS' for x in rows)
report=(r/'report_sc-16g-2.md').read_text();assert report.count('## ')==7
s=json.loads((r/'paired_summary.json').read_text());assert s['candidate_vs_parent_pct']>0
scope=json.loads((r/'mcprof_scope_checks.json').read_text());assert len(scope)==4 and all(x['consistent_with_single_attention_launch_scope'] for x in scope)
(r/'manifest.json').write_text(json.dumps({'version':v,'status':'rejected_target_incremental_performance','source_sha256':expected,'correctness':'selected C12 screen1+paired12=13 full naive_nsa W10/R50 PASS','performance':s,'scope_checks':scope,'skipped_gates':json.loads((r/'skipped_gates.json').read_text()),'main':'exact original v28 preserved','parent_v060':'preserved','diagnostic':'kernel-wide bank metrics improve while target latency regresses; no exclusive cause/occupancy claim'},indent=2)+'\n')
for d in ['experiments','hack','rep','submission']:(p/d/v/'.gitattributes').write_text('* -text -eol -diff\n*.patch -diff\n')
files=[f for d in ['experiments','hack','rep','submission'] for f in (p/d/v).rglob('*') if f.is_file() and f.name!='archive_sha256.json']
index={str(f.relative_to(root)):sha(f) for f in sorted(files)};(r/'archive_sha256.json').write_text(json.dumps(index,indent=2)+'\n')
assert all(sha(root/f)==h for f,h in index.items())
assert not subprocess.check_output(['git','diff','--cached','--name-only'],text=True).strip()
paths=[str((p/d/v).relative_to(root)) for d in ['experiments','hack','rep','submission']];subprocess.run(['git','add','-f']+paths,check=True)
staged=subprocess.check_output(['git','diff','--cached','--name-only'],text=True).splitlines();assert len(staged)==len(files)+1 and all(any(x.startswith(t+'/') for t in paths) for x in staged)
subprocess.run(['git','-c','core.whitespace=-blank-at-eof','diff','--cached','--check'],check=True);print('VERIFIED and staged',len(staged),'files; commit separately')
