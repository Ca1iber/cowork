from pathlib import Path
import subprocess,json,csv,hashlib,time,datetime,os,sys,re,statistics
root=Path('/root/tilelang-metax');v='v202_worker2_c8_two_query_cta_subagent2';r=root/'race_tests/nsa/rep'/v
assert (r/'metadata.exit').read_text().strip()=='0'
assert (r/'resource_capture.exit').read_text().strip()=='0'
assert (r/'compiled_ownership_audit.exit').read_text().strip()=='0'
with (r/'screen_unique_once.guard').open('x') as f:f.write('unique fixednative invocation; no retry\n')
assert (r/'generated_static.exit').read_text().strip()=='0'
plan=json.loads((r/'plan.json').read_text());ident=json.loads((r/'source_identity.json').read_text())
sources={'baseline_v28':(root/plan['original_source'],plan['original_sha256']),'parent_v084':(root/plan['parent_source'],plan['parent_sha256']),'power_v202':(Path(plan['candidate_path']),ident['candidate_sha256'])}
runner=root/'race_tests/nsa/hack/v000_codex_power_baseline_sc-16g-2/run_variant.py'
assert hashlib.file_digest(runner.open('rb'),'sha256').hexdigest()=='32c0ddec744347102cb939c5e9e88684cd00eb5d8009d5953118a560e058508f'
oomfile=Path('/sys/fs/cgroup/memory/memory.oom_control')
def oom():return int(re.search(r'^oom_kill (\d+)$',oomfile.read_text(),re.M)[1])
assert oom()==1
jobs=[];rows=[];stop=None
for n,label in enumerate(plan['native_screen_order'],1):
 source,sha=sources[label]
 assert hashlib.file_digest(source.open('rb'),'sha256').hexdigest()==sha
 path=r/f'screen_run{n}_{label}.csv';logpath=r/f'screen_run{n}_{label}.log'
 env={**os.environ,'PYTHONPATH':str(root)+':'+str(root/'race_tests/nsa'),'NSA_VARIANT_SOURCE':str(source),'NSA_RESULTS_PATH':str(path),'NSA_CASES':'8'}
 before=oom();samples=[]
 argv=[sys.executable,str(runner)]
 log=logpath.open('w');p=subprocess.Popen(argv,cwd=root,env=env,stdout=log,stderr=subprocess.STDOUT)
 (r/f'screen_run{n}_{label}.pid').write_text(str(p.pid)+'\n')
 while p.poll() is None:
  stamp=datetime.datetime.now(datetime.timezone.utc).isoformat();d={'utc':stamp}
  status=Path('/proc')/str(p.pid)/'status'
  try:
   for line in status.read_text().splitlines():
    if line.startswith(('VmRSS:','VmHWM:','VmSize:')):k,val=line.split(':',1);d[k]=val.strip()
   childfile=Path('/proc')/str(p.pid)/'task'/str(p.pid)/'children'
   d['direct_children']=childfile.read_text().strip() if childfile.exists() else ''
  except FileNotFoundError:pass
  d['cgroup_usage_bytes']=Path('/sys/fs/cgroup/memory/memory.usage_in_bytes').read_text().strip()
  d['oom_kill']=oom();samples.append(d)
  (r/'live_stage.json').write_text(json.dumps({'stage':'fixed_native_selected_case8','run':n,'variant':label,'pid':p.pid,'timestamp_utc':stamp,'oom':d['oom_kill']})+'\n')
  time.sleep(2)
 code=p.returncode;log.close();after=oom();textlog=logpath.read_text()
 (r/f'screen_run{n}_{label}.exit').write_text(str(code)+'\n')
 local=list(csv.DictReader(path.open())) if path.exists() else []
 valid=len(local)==1 and local[0].get('status')=='PASS' and int(local[0]['case'])==8
 if valid:
  rec={'case':8,'run':n,'round':1 if n<=6 else 2,'variant':label,'latency_ms':local[0]['latency_ms'],'status':'PASS'};rows.append(rec)
 inner_killed=any(line.strip()=='Killed' for line in textlog.splitlines())
 hash_ok=hashlib.file_digest(source.open('rb'),'sha256').hexdigest()==sha
 j={'run':n,'variant':label,'pid':p.pid,'command':argv,'source_path':str(source),'source_sha256':sha,'exit':code,'oom_before':before,'oom_after':after,'inner_Killed':inner_killed,'csv_valid':valid,'source_hash_unchanged':hash_ok,'memory_samples':samples,'memory_observation_limit':'2s RSS/HWM/currentcgroup snapshots; transient/child peaks may be missed'}
 jobs.append(j);(r/f'screen_run{n}_{label}_process.json').write_text(json.dumps(j,indent=2)+'\n')
 (r/'screen_jobs.json').write_text(json.dumps(jobs,indent=2)+'\n')
 print('JOB_TERMINAL',n,label,'exit',code,'oom',before,after,'csv',valid,flush=True)
 if code!=0 or after!=before or inner_killed or not valid or not hash_ok:
  stop={'run':n,'variant':label,'exit':code,'oom_before':before,'oom_after':after,'inner_Killed':inner_killed,'csv_valid':valid,'source_hash_ok':hash_ok};break
with (r/'screen_case8_subagent2.csv').open('w',newline='') as f:
 w=csv.DictWriter(f,fieldnames=['case','run','round','variant','latency_ms','status']);w.writeheader();w.writerows(rows)
complete=stop is None and len(jobs)==12
summary={'source_sha256':ident['candidate_sha256'],'complete12jobs':complete,'job_stop':stop,'actual_full_references':{'candidate':sum(x['variant']=='power_v202' for x in rows),'total':len(rows)},'oom_final':oom(),'protocol':'single-source freshproc/full unchangednative; no postexport; fixed12 only','automatic_formal':False}
if complete:
 d={label:[float(x['latency_ms'])*1000 for x in rows if x['variant']==label] for label in sources}
 med={label:statistics.median(vals) for label,vals in d.items()}
 delta={label:(med['power_v202']/med[label]-1)*100 for label in ['baseline_v28','parent_v084']}
 rounds=[]
 for rnd in [1,2]:
  q={label:statistics.median(float(x['latency_ms'])*1000 for x in rows if x['round']==rnd and x['variant']==label) for label in sources}
  rounds.append({'round':rnd,'medians_us':q,'candidate_vs_parent_pct':(q['power_v202']/q['parent_v084']-1)*100})
 overlap=not(max(d['power_v202'])<min(d['parent_v084']) or max(d['parent_v084'])<min(d['power_v202']))
 status='target_screen_passed_for_leader_review_only'
 if any(x>=0 for x in delta.values()):status='rejected_target_median_not_faster'
 elif overlap or any(x['candidate_vs_parent_pct']>0 for x in rounds):status='inconclusive_target_overlap_or_round_regression'
 summary.update({'status':status,'samples_us':d,'medians_us':med,'candidate_vs_control_pct':delta,'rounds':rounds,'candidate_parent_ranges_overlap':overlap})
else:summary['status']='failed_runtime_or_validation_selected_screen'
(r/'screen_summary.json').write_text(json.dumps(summary,indent=2)+'\n')
(r/'screen.exit').write_text('0\n' if complete else '1\n')
(r/'live_stage.json').write_text(json.dumps({'stage':'selected_screen_terminal_pending_leader_review','status':summary['status'],'timestamp_utc':datetime.datetime.now(datetime.timezone.utc).isoformat()})+'\n')
print(json.dumps(summary),flush=True)
sys.exit(0 if complete else 1)
