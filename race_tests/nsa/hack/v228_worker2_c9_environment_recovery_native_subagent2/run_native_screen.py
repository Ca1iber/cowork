from pathlib import Path
import os,sys,json,subprocess,csv,time,datetime,hashlib,fcntl,signal,re,statistics,math
import native_whole_cgroup_utils as U
root=U.root;r=U.r;h=U.h
nplan=json.loads((r/'native_screen_plan.json').read_text());pplan=U.plan
expected_OOM=3
sources={'baseline_v28':(root/'race_tests/nsa/submission.py','42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'),'parent_v084':(root/pplan['numerical_parent'],pplan['parent_sha256']),'power_v228':(Path(pplan['candidate_path']),'515f9246eb8f103d7be5df1e8029f38e8b1a44922400ace64316fb47b1cb7fa7')}
sha=lambda p:hashlib.sha256(Path(p).read_bytes()).hexdigest()
runner=Path(nplan['runner']);assert sha(runner)==nplan['runnerSHA']
for p,s in sources.values():assert sha(p)==s
prior=root/'race_tests/nsa/rep/v227_worker2_c9_bounded_kv_index_subagent2'
assert json.loads((prior/'metadata_semantic_gate.json').read_text())['gate']==0
assert (prior/'metadata_semantic_gate.exit').read_text().strip()=='0'
assert (prior/'compile_chain.exit').read_text().strip()=='0'
assert (prior/'screen.exit').read_text().strip()=='1'
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
  try:proc.wait(timeout=5)
  except subprocess.TimeoutExpired:actions.append({'actualwait':'UNAVAILABLE_still_live_after_verified_only_abort'})
 return actions
try:
 fcntl.flock(lock,fcntl.LOCK_EX|fcntl.LOCK_NB);lock_taken=True
 lock.seek(0);lock.truncate();lock.write(json.dumps(U.info(os.getpid()))+'\n');lock.flush()
 observer_identity=U.info(os.getpid());assert observer_identity and observer_identity['exe']
 initial=U.snapshot('native_initial_guard');U.save('native_initial_guard.json',initial)
 if initial['oom_kill']!=expected_OOM:raise RuntimeError('INITIAL_EXPECTED_OOM_MISMATCH')
 for run,label in enumerate(nplan['fixed_order'],1):
  source,expected=sources[label];assert sha(source)==expected and sha(runner)==nplan['runnerSHA']
  stem=r/f'screen_run{run}_{label}';csvpath=stem.with_suffix('.csv');logpath=stem.with_suffix('.log')
  job={'run':run,'variant':label,'source_path':str(source),'sourceSHA':expected,'reference_records':0};proc=None;owned={};reason=None;actions=[]
  pre=U.snapshot('native_pre_admission');(stem.with_suffix('.pre.json')).write_text(json.dumps(pre)+'\n');job['oom_before']=pre['oom_kill']
  try:
   if pre['oom_kill']!=expected_OOM:raise RuntimeError('ADMISSION_EXPECTED_OOM_MISMATCH')
   if pre['usage_bytes']>pplan['admission_usage_bytes'] or U.heavy(pre,{os.getpid():observer_identity}):raise RuntimeError('ADMISSION_REFUSED_USAGE_OR_UNOWNED_HEAVY')
   env={**os.environ,'PYTHONPATH':str(root)+':'+str(root/'race_tests/nsa'),'NSA_VARIANT_SOURCE':str(source),'NSA_RESULTS_PATH':str(csvpath),'NSA_CASES':'9'}
   argv=['/opt/conda/bin/python','-S',str(h/'native_exec.py')];job['launcher_argv']=argv;job['native_argv']=['/opt/conda/bin/python',str(runner)]
   log=logpath.open('w');proc=subprocess.Popen(argv,stdin=subprocess.PIPE,cwd=root,env=env,stdout=log,stderr=subprocess.STDOUT,start_new_session=True)
   d=U.info(proc.pid);assert d and d['exe'];owned[proc.pid]=d;job.update({'pid':proc.pid,'starttime_ticks':d['starttime_ticks'],'pgid':d['pgid'],'exe':d['exe']})
   stem.with_suffix('.pid').write_text(str(proc.pid)+'\n')
   stem.with_suffix('.identity.json').write_text(json.dumps(job,indent=2)+'\n')
   post=U.snapshot('native_post_admission_before_release');stem.with_suffix('.post_admission.json').write_text(json.dumps(post)+'\n')
   if post['usage_bytes']>pplan['admission_usage_bytes'] or U.heavy(post,{os.getpid():observer_identity,proc.pid:d}) or post['oom_kill']!=expected_OOM:raise RuntimeError('SECOND_ADMISSION_REFUSED')
   post_current={q['pid']:q for q in post['visible_pids']}
   if proc.poll() is not None or not U.identity_equal(d,post_current.get(proc.pid)):raise RuntimeError('PRE_RELEASE_OWNED_IDENTITY_OR_EXIT')
   proc.stdin.write(b'GO\n');proc.stdin.flush();proc.stdin.close();job['released_native']=True
   deadline=time.monotonic()+nplan['max_job_seconds'];samples=0;pending_start=None;pending_deadline=None;missing_elapsed=0.0
   with stem.with_suffix('.samples.jsonl').open('w') as stream:
    while proc.poll() is None:
     snap=U.snapshot('native_observation');current={q['pid']:q for q in snap['visible_pids']}
     critical_reason=None;confirmation_mode=False
     actual_poll=proc.poll()
     state='terminal' if actual_poll is not None else U.identity_state(owned[proc.pid],current.get(proc.pid))
     now=time.monotonic()
     if state=='mismatch':critical_reason='OWNED_MAIN_EXPLICIT_CRITICAL_TUPLE_CHANGE'
     elif state=='missing':
      if pending_start is None:
       pending_start=now;pending_deadline=now+max(0.0,1.0-missing_elapsed)
       job.setdefault('critical_confirmation_events',[]).append({'event':'started','monotonic':now,'deadline':pending_deadline,'metadata':current.get(proc.pid)})
      confirmation_mode=True
      if now>=pending_deadline:critical_reason='CRITICAL_MISSING_CONFIRMATION_1S_EXPIRED'
     elif pending_start is not None:
      missing_elapsed+=now-pending_start
      job.setdefault('critical_confirmation_events',[]).append({'event':'terminal_confirmed' if state=='terminal' else 'original_tuple_restored','elapsed':now-pending_start,'total_missing_elapsed':missing_elapsed,'actualPopenpoll':actual_poll})
      if missing_elapsed>1.0:critical_reason='CRITICAL_CONFIRMATION_TOTAL_BUDGET_EXCEEDED'
      pending_start=None;pending_deadline=None
     snap['originalPopen_poll']=actual_poll;snap['critical_identity_state']=state;snap['critical_confirmation_mode']=confirmation_mode
     changed=True
     while changed:
      changed=False
      verified={pid:d for pid,d in owned.items() if U.identity_equal(d,current.get(pid))}
      ids={child for pid in verified for thread in current[pid]['thread_children'] for child in thread['children']}
      for q in snap['visible_pids']:
       if q['pid'] not in owned and q.get('exe') and isinstance(q.get('starttime_ticks'),int) and (q['ppid'] in verified or q['pid'] in ids):
        parents=[pid for pid in verified if q['ppid']==pid or any(q['pid'] in t['children'] for t in current[pid]['thread_children'])]
        job.setdefault('descendant_registration_events',[]).append({'child':{k:q[k] for k in ['pid','starttime_ticks','exe']},'verified_current_parents':[{k:current[pid][k] for k in ['pid','starttime_ticks','exe']} for pid in parents],'PPID_match':q['ppid'] in verified,'observed_thread_child_match':q['pid'] in ids})
        owned[q['pid']]=q;changed=True
     snap['observed_owned_identities']=[{k:q[k] for k in ['pid','ppid','pgid','starttime_ticks','exe']} for q in owned.values()]
     stream.write(json.dumps(snap)+'\n');stream.flush();samples+=1
     U.save('live_stage.json',{'stage':'fixed_C9_native_observed','run':run,'variant':label,'pid':proc.pid,'observerPID':os.getpid(),'sample_count':samples,'utc':snap['utc'],'usage_bytes':snap['usage_bytes'],'oom':snap['oom_kill']})
     if critical_reason:reason=critical_reason
     elif snap['usage_bytes']>=pplan['runtime_stop_usage_bytes']:reason='WHOLE_CGROUP_PRESSURE_THRESHOLD'
     elif snap['oom_kill']!=expected_OOM:reason='OOM_COUNTER_INCREMENT'
     elif U.heavy(snap,{**owned,os.getpid():observer_identity}):reason='UNOWNED_VISIBLE_HEAVY_THRESHOLD'
     elif any(x.strip()=='Killed' for x in logpath.read_text().splitlines()):reason='INNER_KILLED'
     elif time.monotonic()>=deadline:reason='JOB600S_TIMEOUT'
     if reason:break
     if actual_poll is not None:break
     delay=min(0.05,max(0.0,pending_deadline-time.monotonic())) if confirmation_mode else nplan['period_seconds']
     time.sleep(delay)
   if pending_start is not None:
    elapsed=time.monotonic()-pending_start;missing_elapsed+=elapsed
    job.setdefault('critical_confirmation_events',[]).append({'event':'after_loop_original_terminal' if proc.poll() is not None else 'after_loop_unresolved','elapsed':elapsed,'total_missing_elapsed':missing_elapsed,'actualPopenpoll':proc.poll()})
    if missing_elapsed>1.0 and reason is None:reason='CRITICAL_CONFIRMATION_TOTAL_BUDGET_EXCEEDED'
   job['critical_missing_total_seconds']=missing_elapsed
   job['samples']=samples
   if reason:raise RuntimeError(reason)
   code=proc.wait();log.close();job['exit']=code
   if code!=0:raise RuntimeError('NATIVE_NONZERO')
  except Exception as e:
   job['stop_reason']=str(e)
   if proc is not None and proc.poll() is None:actions=terminate_owned(proc,owned)
   if proc is not None:
    job['exit']=proc.poll()
    if job['exit'] is None:job['actualwait']='UNAVAILABLE_live_identity_unverified_or_aborttimeout'
  job['owned_termination_actions']=actions
  final=U.snapshot('after_native_exit');stem.with_suffix('.post_exit.json').write_text(json.dumps(final)+'\n');job['oom_after']=final['oom_kill']
  terminal_current={q['pid']:q for q in final['visible_pids']}
  descendants=[q for pid,q in terminal_current.items() if pid in owned and (proc is None or pid!=proc.pid) and q.get('state')!='Z']
  job['terminal_observed_owned_descendants']=[{'pid':q['pid'],'starttime_ticks':q['starttime_ticks'],'exe':q['exe'],'current_tuple_verified':U.identity_equal(owned[q['pid']],q)} for q in descendants]
  terminal_reason=None
  if final['oom_kill']!=expected_OOM:terminal_reason='TERMINAL_EXPECTED_OOM_MISMATCH'
  elif final['usage_bytes']>=pplan['runtime_stop_usage_bytes']:terminal_reason='TERMINAL_WHOLE_CGROUP_PRESSURE'
  elif U.heavy(final,{**owned,os.getpid():observer_identity}):terminal_reason='TERMINAL_UNOWNED_HEAVY'
  elif descendants:terminal_reason='TERMINAL_OWNED_DESCENDANTS_STILL_VISIBLE'
  if terminal_reason:
   job.setdefault('stop_reason',terminal_reason);job['terminal_guard_reason']=terminal_reason
   if proc is not None:job['owned_termination_actions']+=terminate_owned(proc,owned)
  local=list(csv.DictReader(csvpath.open())) if csvpath.exists() else []
  valid=len(local)==1 and local[0].get('status')=='PASS' and int(local[0]['case'])==9 and tuple(int(local[0][key]) for key in ['B','SEQ_LEN','H','HQ','D','S','block_size'])==(1,8192,1,16,64,1,16) and math.isfinite(float(local[0]['latency_ms'])) and float(local[0]['latency_ms'])>0
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
 summary={'complete12jobs':complete,'job_stop':stop,'actual_full_references':{'candidate':sum(q['variant']=='power_v228' for q in rows),'total':len(rows)},'protocol':'fixed12/sourcefresh/wholecg0.5s/nativeW10R50unchanged','raw_PASS_CSV_record_count':len(raw_rows),'raw_all_records':raw_rows,'automatic_formal':False,'currentOOM':U.snapshot('summary')['oom_kill'],'sourceSHA':sources['power_v228'][1]}
 if complete:
  vals={s:[float(q['latency_ms'])*1000 for q in rows if q['variant']==s] for s in sources};med={s:statistics.median(q) for s,q in vals.items()}
  rounds=[]
  for rnd in [1,2]:
   m={s:statistics.median(float(q['latency_ms'])*1000 for q in rows if q['round']==rnd and q['variant']==s) for s in sources}
   rounds.append({'round':rnd,'medians_us':m,'candidate_vs_parent_pct':(m['power_v228']/m['parent_v084']-1)*100})
  overlap=not(max(vals['power_v228'])<min(vals['parent_v084']) or max(vals['parent_v084'])<min(vals['power_v228']))
  status='target_screen_passed_for_leader_review_only'
  if med['power_v228']>=med['parent_v084'] or med['power_v228']>=med['baseline_v28']:status='rejected_target_median_not_faster'
  elif overlap or any(x['candidate_vs_parent_pct']>0 for x in rounds):status='inconclusive_target_overlap_or_round_regression'
  summary.update({'status':status,'samples_us':vals,'medians_us':med,'candidate_vs_parent_pct':(med['power_v228']/med['parent_v084']-1)*100,'rounds':rounds,'ranges_overlap':overlap})
 else:summary['status']='failed_runtime_or_validation_selected_screen'
 U.save('screen_summary.json',summary);(r/'screen.exit').write_text('0\n' if complete else '1\n');U.save('live_stage.json',{'stage':'screen_terminal','status':summary['status']})
 print(json.dumps(summary),flush=True)
sys.exit(0 if complete else 1)
