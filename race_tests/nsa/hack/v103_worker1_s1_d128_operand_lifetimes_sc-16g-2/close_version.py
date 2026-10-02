from pathlib import Path
import hashlib,json,csv,subprocess,datetime
from decimal import Decimal
root=Path('/root/tilelang-metax');p=root/'race_tests/nsa';v='v103_worker1_s1_d128_operand_lifetimes_sc-16g-2';r=p/'rep'/v
sha='2a56f48e011d50cb0de4401d851161fd9d314cf03327f4f399e10389cfc5e7e0';parent='4c674c79e4128f3c9f233fa6694c1a8f825d1048293accd9250fb5e2d86472b0';base='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
for f,digest in [(p/'submission.py',base),(p/'submission/v084_codex_power_s1_d32_d128_pair_sc-16g-2/submission.py',parent),(p/'submission'/v/'submission.py',sha),(Path('/tmp/nsa_power_v103_pv_plane.py'),sha)]:assert hashlib.sha256(f.read_bytes()).hexdigest()==digest
for n in ['parent_profile','parent_resources','initial_static','precompile','precompile_resources','precompile_static_recovery','archive_static','diagnostic']:assert (r/(n+'.exit')).read_text().strip()=='0',n
assert (r/'precompile_static.exit').read_text().strip()=='1' and (r/'precompile_stage.exit').read_text().strip()=='1'
assert (r/'report_sc-16g-2.md').read_text().count('## ')==7
result=json.loads((r/'diagnostic_result.json').read_text());assert len(result['all_jobs'])==12 and result['power_v103_observed_PASS_records']==4 and result['all_source_observed_PASS_records']==12
assert result['cgroup_initial']['oom_kill']==result['cgroup_final']['oom_kill']==11
assert Decimal(result['latency']['vs_parent_pct'])>0 and all(Decimal(x['vs_parent_pct'])>0 for x in result['latency']['rounds'])
correct=json.loads((r/'corrected_interval_analysis.json').read_text());assert correct['all_candidate_samples_above_all_parent'] and not correct['corrected_ranges_overlap']
assert all(x['predeclared_scope_met'] for x in json.loads((r/'parent_profile_scope_checks.json').read_text()))
owned={(r/n).read_text().strip() for n in ['master.pid','preprobe.pid','preprobe_sampler.pid','precompile.pid']}
for job in result['all_jobs']:
 assert job['native_exit']==0 and job['stop_reason'] is None;owned.add(str(job['pid']));owned.add(str(job['pgid']));rows=list(csv.DictReader(Path(job['csv']).open()));assert len(rows)==1 and rows[0]['status']=='PASS' and rows[0]['case']=='6'
 for k,val in {'B':8,'SEQ_LEN':1024,'H':1,'HQ':16,'D':128,'S':1,'block_size':32}.items():assert int(rows[0][k])==val
ps=subprocess.check_output(['ps','-eo','pid,ppid,pgid,comm'],text=True).splitlines();assert not [x for x in ps[1:] if x.split()[0] in owned or x.split()[1] in owned or x.split()[2] in owned]
manifest={'version':v,'status':'rejected_case6_latency_regression_vs_v084','closed_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'source_sha256':sha,'parent_sha256':parent,'main_sha256':base,'source_identity':json.loads((r/'source_identity.json').read_text()),'native_result_raw':result,'corrected_interval_relation':correct,'resource_actual':json.loads((r/'precompile_resource_gate.json').read_text()),'actual_CPP_mechanism':json.loads((r/'actual_precompile_mechanism.json').read_text()),'alias_vector_proof':json.loads((r/'plane_alias_vector_proof.json').read_text()),'parent_profile':json.loads((r/'parent_profile_metrics.json').read_text()),'profile_scope':json.loads((r/'parent_profile_scope_checks.json').read_text()),'reference_counts':json.loads((r/'reference_count_scope.json').read_text()),'runtime_final':json.loads((r/'runtime_final.json').read_text()),'initial_static_argument_failure_preserved':True,'initial_interval_predicate_error_preserved':True,'candidate_profile':'UNAVAILABLE; no further evidence run after fixed latency rejection','full14':False,'OJ':None,'promotion':False};(r/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
for d in ['experiments','hack','rep','submission']:(p/d/v/'.gitattributes').write_text('* -text -eol -diff\n*.patch -diff\n')
files=[f for d in ['experiments','hack','rep','submission'] for f in (p/d/v).rglob('*') if f.is_file() and f.name!='archive_sha256.json'];index={str(f.relative_to(root)):hashlib.sha256(f.read_bytes()).hexdigest() for f in sorted(files)};(r/'archive_sha256.json').write_text(json.dumps(index,indent=2)+'\n');assert all(hashlib.sha256((root/f).read_bytes()).hexdigest()==h for f,h in index.items())
assert not subprocess.check_output(['git','diff','--cached','--name-only'],text=True).strip();paths=[str((p/d/v).relative_to(root)) for d in ['experiments','hack','rep','submission']];subprocess.run(['git','add','-f']+paths,check=True)
staged=subprocess.check_output(['git','diff','--cached','--name-only'],text=True).splitlines();assert len(staged)==len(files)+1 and all(any(f.startswith(x+'/') for x in paths) for f in staged);subprocess.run(['git','-c','core.whitespace=-blank-at-eof','diff','--cached','--check'],check=True);print('closed/staged',len(staged),'files;4candidate refs/12total,no formal')
