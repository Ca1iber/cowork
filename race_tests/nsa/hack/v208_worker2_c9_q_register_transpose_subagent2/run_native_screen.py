from pathlib import Path
import os,sys,json,subprocess,csv,time,datetime,hashlib,fcntl,signal,re,statistics
import whole_cgroup_utils as U
root=U.root;r=U.r;h=U.h
nplan=json.loads((r/'native_screen_plan.json').read_text());pplan=U.plan
sources={'baseline_v28':(root/'race_tests/nsa/submission.py','42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'),'parent_v084':(root/pplan['numerical_parent'],pplan['parent_sha256']),'power_v208':(Path(pplan['candidate_path']),'46696428569b1cb16eb4aac52d07cefcdc28edc0c223a400937a880ad9a6a264')}
sha=lambda p:hashlib.sha256(Path(p).read_bytes()).hexdigest()
runner=Path(nplan['runner']);assert sha(runner)==nplan['runnerSHA']
for p,s in sources.values():assert sha(p)==s
assert json.loads((r/'metadata_mechanism_gate_semantic.json').read_text())['status']=='SEMANTIC_GATES0_PENDING_LEADER_NATIVE_REVIEW'
assert (r/'diagnostic.exit').read_text().strip()=='0' and (r/'backend_observation/diagnostic.exit').read_text().strip()=='0'
expected_shared=json.loads((root/'race_tests/nsa/rep/v203_worker2_whole_cgroup_import_subagent2/shared_inputs_final.json').read_text())
assert all(sha(root/p)==q for p,q in expected_shared.items())
with (r/'native_screen_once.guard').open('x') as f:f.write(datetime.datetime.now(datetime.timezone.utc).isoformat()+'\n')
jobs=[];rows=[];raw_rows=[];stop=None;lock=open(pplan['heavy_lock'],'a+');lock_taken=False
def terminate_owned(proc,owned):
 actions=[]
 for pid,d in reversed(list(owned.items())):
  now=U.info(pid)
  if U.identity_equal(d,now) and now['state']!='Z':
   try:os.kill(pid,signal.SIGTERM);actions.append({'pid':pid,'signal':'TERM','identity_verified':True})
   except ProcessLookupError:pass
 try:proc.wait(timeout=5)
 except subprocess.TimeoutExpired:
  for pid,d in reversed(list(owned.items())):
   now=U.info(pid)
   if U.identity_equal(d,now) and now['state']!='Z':
    try:os.kill(pid,signal.SIGKILL);actions.append({'pid':pid,'signal':'KILL','identity_verified':True})
    except ProcessLookupError:pass
  proc.wait()
 return actions
try:
 fcntl.flock(lock,fcntl.LOCK_EX|fcntl.LOCK_NB);lock_taken=True
 lock.seek(0);lock.truncate();lock.write(json.dumps(U.info(os.getpid()))+'\n');lock.flush()
 for run,label in enumerate(nplan['fixed_order'],1):
  source,expected=sources[label];assert sha(source)==expected and sha(runner)==nplan['runnerSHA']
  stem=r/f'screen_run{run}_{label}';csvpath=stem.with_suffix('.csv');logpath=stem.with_suffix('.log')
  job={'run':run,'variant':label,'source_path':str(source),'sourceSHA':expected,'reference_records':0};proc=None;owned={};reason=None;actions=[]
  pre=U.snapshot('native_pre_admission');(stem.with_suffix('.pre.json')).write_text(json.dumps(pre)+'\n');job['oom_before']=pre['oom_kill']
  try:
   if pre['usage_bytes']>pplan['admission_usage_bytes'] or U.heavy(pre,{os.getpid()}):raise RuntimeError('ADMISSION_REFUSED_USAGE_OR_UNOWNED_HEAVY')
   env={**os.environ,'PYTHONPATH':str(root)+':'+str(root/'race_tests/nsa'),'NSA_VARIANT_SOURCE':str(source),'NSA_RESULTS_PATH':str(csvpath),'NSA_CASES':'9'}
   argv=['/opt/conda/bin/python','-S',str(h/'native_exec.py')];job['launcher_argv']=argv;job['native_argv']=['/opt/conda/bin/python',str(runner)]
   log=logpath.open('w');proc=subprocess.Popen(argv,stdin=subprocess.PIPE,cwd=root,env=env,stdout=log,stderr=subprocess.STDOUT,start_new_session=True)
   d=U.info(proc.pid);assert d and d['exe'];owned[proc.pid]=d;job.update({'pid':proc.pid,'starttime_ticks':d['starttime_ticks'],'pgid':d['pgid'],'exe':d['exe']})
   stem.with_suffix('.pid').write_text(str(proc.pid)+'\n')
   stem.with_suffix('.identity.json').write_text(json.dumps(job,indent=2)+'\n')
   post=U.snapshot('native_post_admission_before_release');stem.with_suffix('.post_admission.json').write_text(json.dumps(post)+'\n')
   if post['usage_bytes']>pplan['admission_usage_bytes'] or U.heavy(post,{os.getpid(),proc.pid}) or post['oom_kill']!=pre['oom_kill']:raise RuntimeError('SECOND_ADMISSION_REFUSED')
   proc.stdin.write(b'GO\n');proc.stdin.flush();proc.stdin.close();job['released_native']=True
   deadline=time.monotonic()+nplan['max_job_seconds'];samples=0
   with stem.with_suffix('.samples.jsonl').open('w') as stream:
    while proc.poll() is None:
     snap=U.snapshot('native_observation');changed=True
     while changed:
      changed=False;ids={x for q in snap['visible_pids'] if q['pid'] in owned for t in q['thread_children'] for x in t['children']}
      for q in snap['visible_pids']:
       if q['pid'] not in owned and (q['ppid'] in owned or q['pid'] in ids):owned[q['pid']]=q;changed=True
     snap['observed_owned_identities']=[{k:q[k] for k in ['pid','ppid','pgid','starttime_ticks','exe']} for q in owned.values()]
     stream.write(json.dumps(snap)+'\n');stream.flush();samples+=1
     U.save('live_stage.json',{'stage':'fixed_C9_native_observed','run':run,'variant':label,'pid':proc.pid,'observerPID':os.getpid(),'sample_count':samples,'utc':snap['utc'],'usage_bytes':snap['usage_bytes'],'oom':snap['oom_kill']})
     if snap['usage_bytes']>=pplan['runtime_stop_usage_bytes']:reason='WHOLE_CGROUP_PRESSURE_THRESHOLD'
     elif snap['oom_kill']!=pre['oom_kill']:reason='OOM_COUNTER_INCREMENT'
     elif U.heavy(snap,set(owned)|{os.getpid()}):reason='UNOWNED_VISIBLE_HEAVY_THRESHOLD'
     elif time.monotonic()>=deadline:reason='JOB600S_TIMEOUT'
     if reason:break
     time.sleep(nplan['period_seconds'])
   job['samples']=samples
   if reason:raise RuntimeError(reason)
   code=proc.wait();log.close();job['exit']=code
   if code!=0:raise RuntimeError('NATIVE_NONZERO')
  except Exception as e:
   job['stop_reason']=str(e)
   if proc is not None and proc.poll() is None:actions=terminate_owned(proc,owned)
   if proc is not None:job['exit']=proc.wait()
  job['owned_termination_actions']=actions
  final=U.snapshot('after_native_exit');stem.with_suffix('.post_exit.json').write_text(json.dumps(final)+'\n');job['oom_after']=final['oom_kill']
  local=list(csv.DictReader(csvpath.open())) if csvpath.exists() else []
  valid=len(local)==1 and local[0].get('status')=='PASS' and int(local[0]['case'])==9 and float(local[0]['latency_ms'])>0
  job['csv_valid']=valid;job['inner_Killed']=bool(logpath.exists() and any(x.strip()=='Killed' for x in logpath.read_text().splitlines()))
  job['source_hash_unchanged']=sha(source)==expected;job['runner_hash_unchanged']=sha(runner)==nplan['runnerSHA']
  job['shared_hashes_unchanged']=all(sha(root/p)==s for p,s in expected_shared.items())
  if valid:raw_rows.append({'case':9,'run':run,'round':1 if run<=6 else 2,'variant':label,'latency_ms':local[0]['latency_ms'],'status':'PASS'});job['reference_records']=1
  clean=valid and job.get('exit')==0 and not job.get('stop_reason') and job['oom_after']==job['oom_before'] and not job['inner_Killed'] and job['source_hash_unchanged'] and job['runner_hash_unchanged'] and job['shared_hashes_unchanged']
  job['clean_full_reference_record']=int(clean)
  if clean:rows.append(raw_rows[-1])
  if proc is not None:stem.with_suffix('.exit').write_text(str(job['exit'])+'\n')
  jobs.append(job);stem.with_suffix('.process.json').write_text(json.dumps(job,indent=2)+'\n');U.save('screen_jobs.json',jobs)
  print('JOB_TERMINAL',run,label,job.get('exit'),'OOM',job['oom_before'],job['oom_after'],'CSV',valid,flush=True)
  if job.get('stop_reason') or job['oom_after']!=job['oom_before'] or not valid or job['inner_Killed'] or not job['source_hash_unchanged'] or not job['runner_hash_unchanged'] or not job['shared_hashes_unchanged']:
   stop=job;break
except Exception as e:stop={'coordinator_exception':str(e)}
finally:
 if lock_taken:fcntl.flock(lock,fcntl.LOCK_UN)
 lock.close()
 with (r/'screen_case9_subagent2.csv').open('w',newline='') as f:
  w=csv.DictWriter(f,fieldnames=['case','run','round','variant','latency_ms','status']);w.writeheader();w.writerows(rows)
 complete=stop is None and len(jobs)==12
 summary={'complete12jobs':complete,'job_stop':stop,'actual_full_references':{'candidate':sum(q['variant']=='power_v208' for q in rows),'total':len(rows)},'protocol':'fixed12/sourcefresh/wholecg0.5s/nativeW10R50unchanged','raw_PASS_CSV_record_count':len(raw_rows),'raw_all_records':raw_rows,'automatic_formal':False,'currentOOM':U.snapshot('summary')['oom_kill'],'sourceSHA':sources['power_v208'][1]}
 if complete:
  vals={s:[float(q['latency_ms'])*1000 for q in rows if q['variant']==s] for s in sources};med={s:statistics.median(q) for s,q in vals.items()}
  rounds=[]
  for rnd in [1,2]:
   m={s:statistics.median(float(q['latency_ms'])*1000 for q in rows if q['round']==rnd and q['variant']==s) for s in sources}
   rounds.append({'round':rnd,'medians_us':m,'candidate_vs_parent_pct':(m['power_v208']/m['parent_v084']-1)*100})
  overlap=not(max(vals['power_v208'])<min(vals['parent_v084']) or max(vals['parent_v084'])<min(vals['power_v208']))
  status='target_screen_passed_for_leader_review_only'
  if med['power_v208']>=med['parent_v084'] or med['power_v208']>=med['baseline_v28']:status='rejected_target_median_not_faster'
  elif overlap or any(x['candidate_vs_parent_pct']>0 for x in rounds):status='inconclusive_target_overlap_or_round_regression'
  summary.update({'status':status,'samples_us':vals,'medians_us':med,'candidate_vs_parent_pct':(med['power_v208']/med['parent_v084']-1)*100,'rounds':rounds,'ranges_overlap':overlap})
 else:summary['status']='failed_runtime_or_validation_selected_screen'
 U.save('screen_summary.json',summary);(r/'screen.exit').write_text('0\n' if complete else '1\n');U.save('live_stage.json',{'stage':'screen_terminal','status':summary['status']})
 print(json.dumps(summary),flush=True)
sys.exit(0 if complete else 1)
