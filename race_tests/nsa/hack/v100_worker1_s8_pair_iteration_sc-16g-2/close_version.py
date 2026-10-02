from pathlib import Path
import hashlib,json,csv,subprocess,datetime,os
from decimal import Decimal
root=Path('/root/tilelang-metax');p=root/'race_tests/nsa';v='v100_worker1_s8_pair_iteration_sc-16g-2';r=p/'rep'/v
sha='39e142971e79d40d4040f616ef57ac2186f524c09a7f7721e06082bc472a8edf';parent='4c674c79e4128f3c9f233fa6694c1a8f825d1048293accd9250fb5e2d86472b0';base='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
assert hashlib.sha256((p/'submission.py').read_bytes()).hexdigest()==base
assert hashlib.sha256((p/'submission/v084_codex_power_s1_d32_d128_pair_sc-16g-2/submission.py').read_bytes()).hexdigest()==parent
for f in [p/'submission'/v/'submission.py',Path('/tmp/nsa_power_v100_pair_iteration.py')]:assert hashlib.sha256(f.read_bytes()).hexdigest()==sha
for name in ['initial_static','parent_profile','parent_resources','target_case12','target_screen','target_static3','resources','archive_static','profile_stage','profile_analysis']:assert (r/(name+'.exit')).read_text().strip()=='0',name
for label in ['power_v100','parent_v084']:assert (r/('paired_mcprof_case12_'+label)/'exit_code.txt').read_text().strip()=='0'
assert (r/'report_sc-16g-2.md').read_text().count('## ')==7
rows=list(csv.DictReader((r/'target_screen_sc-16g-2.csv').open()));assert len(rows)==12 and all(x['status']=='PASS' for x in rows);candidate=[x for x in rows if x['variant']=='power_v100'];assert len(candidate)==4 and {x['case'] for x in candidate}=={'12'}
counts=json.loads((r/'reference_count_scope.json').read_text());assert counts['candidate_checks']==4 and counts['experiment_checks_with_controls']==12
assert all(x['consistent_with_single_attention_launch_scope'] for x in json.loads((r/'mcprof_scope_checks.json').read_text()))
summary=json.loads((r/'target_screen_summary.json').read_text());assert Decimal(summary['cases'][0]['vs_parent_pct'])>0
info=json.loads((r/'target_case12_codegen.json').read_text());assert len(info['records'])==3
for x in info['records']:assert hashlib.sha256(Path(x['device_path']).read_bytes()).hexdigest()==x['device_sha256']
owned=set()
for name in ['preprobe.pid','preprobe_sampler.pid','target_screen.pid','profile.pid','sampler.pid']:
 if (r/name).exists():owned.add((r/name).read_text().strip())
old=r/'initial_screen_wrapper_path_failure/target_screen.pid'
if old.exists():owned.add(old.read_text().strip())
ps=subprocess.check_output(['ps','-eo','pid,ppid,pgid,comm'],text=True).splitlines();assert not [x for x in ps[1:] if x.split()[0] in owned or x.split()[1] in owned or x.split()[2] in owned]
manifest={'version':v,'worker':'worker1','status':'rejected_case12_selected_screen_regression_vs_v084','closed_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'start':json.loads((r/'start_identity.json').read_text()),'source_identity':json.loads((r/'source_identity.json').read_text()),'native_scope':counts,'screen':summary,'resources':json.loads((r/'resource_summary.json').read_text()),'profile':json.loads((r/'mcprof_summary.json').read_text()),'profile_scope':json.loads((r/'mcprof_scope_checks.json').read_text()),'WG_metric_context':json.loads((r/'WG_raw_metric_context.json').read_text()),'runtime_final':json.loads((r/'runtime_final.json').read_text()),'shared_inputs':json.loads((r/'shared_inputs_identity.json').read_text()),'initial_wrapper_failure':json.loads((r/'initial_screen_wrapper_path_failure/failure_scope.json').read_text()),'promotion':'none; archive rejected candidate only; main originalv28 unchanged','source_sha256':sha,'parent_sha256':parent,'main_sha256':base,'full14':'notperformed due target screen rejection; no merge proposal','OJ':'v100 not submitted; parent user scores do not apply'}
(r/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
for d in ['experiments','hack','rep','submission']:(p/d/v/'.gitattributes').write_text('* -text -eol -diff\n*.patch -diff\n')
files=[f for d in ['experiments','hack','rep','submission'] for f in (p/d/v).rglob('*') if f.is_file() and f.name!='archive_sha256.json'];index={str(f.relative_to(root)):hashlib.sha256(f.read_bytes()).hexdigest() for f in sorted(files)};(r/'archive_sha256.json').write_text(json.dumps(index,indent=2)+'\n')
assert all(hashlib.sha256((root/f).read_bytes()).hexdigest()==h for f,h in index.items())
assert not subprocess.check_output(['git','diff','--cached','--name-only'],text=True).strip();paths=[str((p/d/v).relative_to(root)) for d in ['experiments','hack','rep','submission']];subprocess.run(['git','add','-f']+paths,check=True)
staged=subprocess.check_output(['git','diff','--cached','--name-only'],text=True).splitlines();assert len(staged)==len(files)+1 and all(any(f.startswith(x+'/') for x in paths) for f in staged);subprocess.run(['git','-c','core.whitespace=-blank-at-eof','diff','--cached','--check'],check=True);print('closed/staged',len(staged),'files',4,12)
