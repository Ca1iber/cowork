from pathlib import Path
import hashlib,json,csv,subprocess,datetime
from decimal import Decimal
root=Path('/root/tilelang-metax');p=root/'race_tests/nsa';v='v102_worker1_native_process_isolation_sc-16g-2';r=p/'rep'/v
result=json.loads((r/'diagnostic_result.json').read_text());sources=json.loads((r/'source_manifest.json').read_text())['sources'];plan=json.loads((r/'execution_plan.json').read_text());assert (r/'diagnostic.exit').read_text().strip()=='0' and result['runtime_protocol_completed']
assert len(result['all_jobs'])==12 and result['candidate_source_v101_observed_PASS_records']==4 and result['all_source_observed_PASS_records']==12
for label,x in sources.items():assert hashlib.sha256(Path(x['path']).read_bytes()).hexdigest()==x['sha256']
for f,digest in json.loads((r/'shared_inputs_identity.json').read_text())['files'].items():assert hashlib.sha256((root/f).read_bytes()).hexdigest()==digest
assert (p/'rep/v101_worker1_s2_fixed_selection_sc-16g-2/target_screen.exit').read_text().strip()=='137';assert (p/'rep/v101_worker1_s2_fixed_selection_sc-16g-2/target_case10.exit').read_text().strip()=='137'
assert result['cgroup_initial']['oom_kill']==result['cgroup_final']['oom_kill']==11
assert Decimal(result['latency']['vs_parent_pct'])>0 and result['latency']['any_round_positive']
assert (r/'report_sc-16g-2.md').read_text().count('## ')==7 and not (p/'submission'/v/'submission.py').exists()
owned={(r/'master.pid').read_text().strip()}
for i,job in enumerate(result['all_jobs'],1):
 assert job['index']==i and job['variant']==plan['order'][i-1] and job['native_exit']==0 and job['stop_reason'] is None
 assert job['cgroup_before']['oom_kill']==job['cgroup_after']['oom_kill']==11
 rows=list(csv.DictReader(Path(job['csv']).open()));assert len(rows)==1 and rows[0]['status']=='PASS' and rows[0]['case']=='10'
 for k,val in {'B':1,'SEQ_LEN':256,'H':1,'HQ':16,'D':64,'S':2,'block_size':16}.items():assert int(rows[0][k])==val
 owned.add(str(job['pid']));owned.add(str(job['pgid']))
ps=subprocess.check_output(['ps','-eo','pid,ppid,pgid,comm'],text=True).splitlines();assert not [x for x in ps[1:] if x.split()[0] in owned or x.split()[1] in owned or x.split()[2] in owned]
manifest={'version':v,'worker':'worker1','status':'diagnostic_runtime_completed_source_v101_latency_rejected','closed_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'kernel_changed':False,'sources':sources,'fixed_plan':plan,'diagnostic_result':result,'reference_counts':json.loads((r/'reference_count_scope.json').read_text()),'memory_observations':json.loads((r/'memory_summary.json').read_text()),'peer_design_review':(r/'peer_design_review.md').read_text(),'runtime_final':json.loads((r/'runtime_final.json').read_text()),'old_v101_screen_exit':137,'no_rootcause_claim':True,'promotion':False,'full14':False,'OJ':None};(r/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
for d in ['experiments','hack','rep','submission']:(p/d/v/'.gitattributes').write_text('* -text -eol -diff\n*.patch -diff\n')
files=[f for d in ['experiments','hack','rep','submission'] for f in (p/d/v).rglob('*') if f.is_file() and f.name!='archive_sha256.json'];index={str(f.relative_to(root)):hashlib.sha256(f.read_bytes()).hexdigest() for f in sorted(files)};(r/'archive_sha256.json').write_text(json.dumps(index,indent=2)+'\n');assert all(hashlib.sha256((root/f).read_bytes()).hexdigest()==h for f,h in index.items())
assert not subprocess.check_output(['git','diff','--cached','--name-only'],text=True).strip();paths=[str((p/d/v).relative_to(root)) for d in ['experiments','hack','rep','submission']];subprocess.run(['git','add','-f']+paths,check=True)
staged=subprocess.check_output(['git','diff','--cached','--name-only'],text=True).splitlines();assert len(staged)==len(files)+1 and all(any(f.startswith(x+'/') for x in paths) for f in staged);subprocess.run(['git','-c','core.whitespace=-blank-at-eof','diff','--cached','--check'],check=True);print('closed/staged',len(staged),'files,C101 references4,total12; no new source')
