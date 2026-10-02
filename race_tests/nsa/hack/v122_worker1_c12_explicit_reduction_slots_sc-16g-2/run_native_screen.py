from pathlib import Path
from decimal import Decimal
import json,hashlib,subprocess,os,time,datetime,csv,traceback,fcntl
root=Path('/root/tilelang-metax');p=root/'race_tests/nsa';v='v122_worker1_c12_explicit_reduction_slots_sc-16g-2';r=p/'rep'/v/'native_screen'
manifest=json.loads((r/'native_source_manifest.json').read_text());plan=json.loads((r/'native_execution_plan.json').read_text());shared=json.loads((r/'shared_inputs_identity.json').read_text())['files'];cg=Path('/sys/fs/cgroup/memory');official=json.loads((p/'official_case.json').read_text());budget=plan['memory_engineering_budget'];expected_cases=plan['selected_cases'];expected_count=len(expected_cases)
monitor_file=Path(manifest['tools']['process_monitor']['path']);assert monitor_file.is_file() and hashlib.sha256(monitor_file.read_bytes()).hexdigest()==manifest['tools']['process_monitor']['sha256']
from process_monitor import read_pid_metadata,identity_decision
def now():return datetime.datetime.now(datetime.timezone.utc).isoformat()
def cgstate():
 x={n:(cg/n).read_text() for n in ['memory.limit_in_bytes','memory.usage_in_bytes','memory.oom_control','memory.failcnt','memory.stat']};x['oom_kill']=int(next(l.split()[1] for l in x['memory.oom_control'].splitlines() if l.startswith('oom_kill ')));x['usage_bytes']=int(x['memory.usage_in_bytes']);return x

def verify():
 for label in ['existing_parent_C12_device','existing_candidate_C12_device','frozen_compiled_observation','frozen_IR_actual_exit','preserved_codegen_stage_exit','frozen_compiled_observation_actual_exit']:
  x=manifest[label];f=Path(x['path']);assert f.is_file() and hashlib.sha256(f.read_bytes()).hexdigest()==x['sha256'],label
 evidence=json.loads(Path(manifest['frozen_compiled_observation']['path']).read_text());assert evidence['mechanical_gate'] and evidence['actual_static_MMA_count']==32 and not evidence['alloca_opcode_lines'] and not evidence['AS5_lines']
 assert Path(manifest['frozen_IR_actual_exit']['path']).read_text().strip()=='0' and Path(manifest['preserved_codegen_stage_exit']['path']).read_text().strip()=='1'
 for label,x in manifest['sources'].items():
  f=Path(x['path']);assert f.is_file() and hashlib.sha256(f.read_bytes()).hexdigest()==x['sha256'],label
 for label,x in manifest['tools'].items():
  f=Path(x['path']);assert f.is_file() and hashlib.sha256(f.read_bytes()).hexdigest()==x['sha256'],label
 for f,d in shared.items():assert hashlib.sha256((root/f).read_bytes()).hexdigest()==d,f
 assert (p/'rep/v104_worker1_s8_global_softmax_sc-16g-2/formal/diagnostic.exit').read_text().strip()=='1'
 assert (p/'rep/v101_worker1_s2_fixed_selection_sc-16g-2/target_screen.exit').read_text().strip()=='137'
 assert (p/'rep/v105_worker1_bounded_all14_runtime_diagnostic_sc-16g-2/diagnostic.exit').read_text().strip()=='1'
 assert (p/'rep/v106_worker1_bounded_all14_editor_baseline_sc-16g-2/diagnostic.exit').read_text().strip()=='1'
 assert cgstate()['memory.limit_in_bytes'].strip()=='34359738368'

def census():
 records=[];errors=[]
 for q in Path('/proc').iterdir():
  if not q.name.isdigit():continue
  item=read_pid_metadata(int(q.name));records.append(item)
  for error in item['phase_errors']:errors.append(dict(error,pid=q.name))
 sample={'UTC':now(),'visible_PIDs':records,'read_errors':errors,'cgroup':cgstate(),'observer_pid':os.getpid(),'scope':'phase-aware0.5s metadata; racy/namespace limited; optionalerrors preserve readcriticalidentity'}
 sample['identified_unowned_baseline']=baseline_decision(sample)
 return sample
def bypid(sample):return {x['pid']:x for x in sample['visible_PIDs']}
def identity(x):return {k:x[k] for k in ['pid','starttime_ticks','exe']}
def matches(x,y):return x is not None and all(x.get(k)==y.get(k) for k in ['pid','starttime_ticks','exe'])
def extend_owners(sample,known):
 rows=bypid(sample);changed=True
 while changed:
  changed=False
  for pid,x in rows.items():
   parent=x.get('ppid')
   if pid not in known and x.get('critical_identity_available') and parent in known and matches(rows.get(parent),known[parent]) and x['starttime_ticks']>=known[parent]['starttime_ticks']:
    known[pid]=dict(identity(x),observed_parent=identity(rows[parent]),first_seen_UTC=sample['UTC']);changed=True
 return known

def baseline_match(row):
 expected=manifest['recognized_unowned_baseline']
 return row is not None and all(row.get(k)==expected[k] for k in ['pid','starttime_ticks','exe','cgroup'])
def baseline_decision(sample):
 row=next((x for x in sample['visible_PIDs'] if x['pid']==manifest['recognized_unowned_baseline']['pid']),None)
 return {'identity_match':baseline_match(row),'expected_tuple':manifest['recognized_unowned_baseline'],'actual_metadata':row,'identified_but_unowned':True,'RAM_fully_in_wholeCG_budget':True,'not_owned_or_signal_authorized':True,'child_exception':False}

def unknown_heavy(sample,known):
 return [x for x in sample['visible_PIDs'] if x['memory_KiB'].get('VmRSS',0)*1024>budget['unknown_visible_heavy_RSS_bytes'] and not matches(x,known.get(x['pid'],{})) and not baseline_match(x)]

def admission(sample,oom):
 if not sample['identified_unowned_baseline']['identity_match']:return 'recognizedunowned baseline identity missing/changed'
 if sample['cgroup']['oom_kill']!=oom:return 'OOMchanged beforeadmission'
 if sample['cgroup']['usage_bytes']>budget['new_admission_max_whole_bytes']:return 'wholeCG exceeds new5GiB admission'
 if unknown_heavy(sample,{}):return 'unowned visibleRSS exceeds1GiB admission'
 return None

def terminate_owned(proc,known,path):
 events=[]
 for sig in [15,9]:
  sample=census();rows=bypid(sample)
  for pid,expected in sorted(known.items(),reverse=True):
   if pid==manifest['recognized_unowned_baseline']['pid']:
    events.append({'UTC':now(),'pid':pid,'sent':False,'skip_reason':'protected unownedbaseline never signalled'});continue
   cur=rows.get(pid)
   if cur is None or cur.get('state')=='Z' or (pid==proc.pid and proc.poll() is not None):continue
   if not cur.get('critical_identity_available'):
    events.append({'UTC':now(),'pid':pid,'sent':False,'skip_reason':'unavailablecriticalidentity notsignalverified','phase_errors':cur.get('phase_errors')});continue
   event={'UTC':now(),'signal':sig,'expected':expected,'actual':identity(cur),'identity_match':matches(cur,expected)}
   if event['identity_match']:
    try:os.kill(pid,sig);event['sent']=True
    except ProcessLookupError:event['sent']=False;event['already_exited']=True
   else:event['sent']=False;event['skip_reason']='identity mismatch; no unknownsignal'
   events.append(event)
  path.write_text(json.dumps(events,indent=2)+chr(10))
  if sig==15:time.sleep(2)
 try:code=proc.wait(timeout=5);events.append({'UTC':now(),'native_wait_returncode':code})
 except subprocess.TimeoutExpired:events.append({'UTC':now(),'native_wait_timeout':5,'no_unverified_extra_signal':True});code=None
 path.write_text(json.dumps(events,indent=2)+chr(10));return code

def readrows(path):
 if not path.exists():return []
 try:
  with path.open() as f:return list(csv.DictReader(f))
 except (OSError,csv.Error):return []

def auditrows(rows):
 errors=[];verified=[]
 if len(rows)>expected_count:errors.append('extraCSVrows')
 for i,row in enumerate(rows):
  try:
   assert i<expected_count and row['status']=='PASS' and int(row['case'])==expected_cases[i];case=official[expected_cases[i]-1]
   for k in ['B','SEQ_LEN','H','HQ','D','S','block_size']:assert int(row[k])==case[k],k
   latency=Decimal(row['latency_ms']);assert latency.is_finite() and latency>0;verified.append(row)
  except (AssertionError,KeyError,ValueError,TypeError,ArithmeticError) as e:errors.append({'row_index':i,'error':repr(e),'rawrow':row})
 return verified,errors

def log_anomaly(path):
 if not path.exists():return None
 s=path.read_text(errors='replace').lower()
 if 'killed' in s:return 'innerKilled log'
 if 'out of memory' in s:return 'innerOOM log'
 return None
assert plan['phase']=='leader_GO_v122_native_screen_once'
assert len(plan['jobs'])==12 and plan['planned_candidate_fullrefs']==4*expected_count and plan['planned_inclusive_fullrefs']==12*expected_count
verify();fd=os.open(r/'launch_once.lock',os.O_WRONLY|os.O_CREAT|os.O_EXCL,0o600);os.write(fd,json.dumps({'UTC':now(),'master_pid':os.getpid(),'protocol':v}).encode());os.close(fd)
lock=open(manifest['cooperative_heavy_lock'],'a+');jobs=[];failure=None;active=None;known={};global_before=cgstate()
(r/'stage_start.json').write_text(json.dumps({'UTC':now(),'master_pid':os.getpid(),'cgroup_before':global_before,'plan':plan,'frozen_candidate_no_edit_during_measurement':True,'no_metadata_postexport':True},indent=2)+chr(10))
try:
 if global_before['oom_kill']!=plan['expected_oom_before']:raise RuntimeError('OOMcounter changed before protocol')
 try:fcntl.flock(lock,fcntl.LOCK_EX|fcntl.LOCK_NB)
 except BlockingIOError:raise RuntimeError('cooperative heavylock contention; no admission retry')
 lock.seek(0);lock.truncate();lock.write(json.dumps({'UTC':now(),'pid':os.getpid(),'protocol':v}));lock.flush()
 for i,spec in enumerate(plan['jobs'],1):
  verify();label=spec['variant'];d=r/('job_'+str(i).zfill(2)+'_'+label);d.mkdir(exist_ok=False);logpath=d/'native.log';csvpath=d/'native_case12.csv';monitorpath=d/'whole_memory_samples.jsonl';sample1=census();(d/'admission_first.json').write_text(json.dumps(sample1,indent=2)+chr(10));reason=admission(sample1,global_before['oom_kill'])
  if reason:failure=reason;(d/'admission_refused.json').write_text(json.dumps({'UTC':now(),'reason':reason,'spawned':False},indent=2)+chr(10));break
  env=os.environ.copy();explicit={'MACA_PATH':'/opt/maca','PYTHONDONTWRITEBYTECODE':'1','PYTHONWARNINGS':'ignore','PYTHONPATH':str(root)+':'+str(p),'NSA_VARIANT_SOURCE':manifest['sources'][label]['path'],'NSA_RESULTS_PATH':str(csvpath),'NSA_CASES':spec['NSA_CASES']};env.update(explicit)
  nativecmd=[manifest['tools']['python']['path'],'-u',manifest['wrapper_path']];launch={'index':i,'round':spec['round'],'variant':label,'case_order':spec['case_order'],'manifest_path':str(r/'native_source_manifest.json'),'source':manifest['sources'][label],'native_command':nativecmd,'env_explicit':explicit,'ready_file':str(d/'child_ready.json'),'native_pid_file':str(d/'native.pid'),'native_pgid_file':str(d/'native.pgid'),'monitor_file':str(monitorpath),'csv':str(csvpath)};(d/'launch_plan.json').write_text(json.dumps(launch,indent=2)+chr(10));gatecmd=[manifest['tools']['python']['path'],'-S','-u',manifest['tools']['native_gate']['path'],str(d/'launch_plan.json')];(d/'gate_command.json').write_text(json.dumps({'command':gatecmd},indent=2)+chr(10));known={};abort=None;go_sent=False;sample_count=0;start=time.monotonic();pending_identity_since=None
  with logpath.open('w') as log,monitorpath.open('w') as monitor:
   active=subprocess.Popen(gatecmd,cwd=root,env=env,stdin=subprocess.PIPE,stdout=log,stderr=subprocess.STDOUT,start_new_session=True,text=True);pid=active.pid;pgid=os.getpgid(pid);(d/'native.pid').write_text(str(pid)+chr(10));(d/'native.pgid').write_text(str(pgid)+chr(10));(r/'active_job.json').write_text(json.dumps(dict(launch,pid=pid,pgid=pgid,phase='owned-S_waitGO'),indent=2)+chr(10))
   ready=Path(launch['ready_file'])
   while not ready.exists() and active.poll() is None and time.monotonic()-start<5:time.sleep(0.05)
   if ready.exists():
    owner=json.loads(ready.read_text());assert owner['pid']==pid and owner['pgid']==pgid;known[pid]=dict(identity(owner),observed_parent={'pid':os.getpid()},first_seen_UTC=now());sample2=census();(d/'admission_second.json').write_text(json.dumps(sample2,indent=2)+chr(10));extend_owners(sample2,known);abort=admission(sample2,global_before['oom_kill'])
    if not matches(bypid(sample2).get(pid),owner):abort=abort or 'ownedgate identity lost beforeGO'
    if not abort:
     active.stdin.write('GO'+chr(10));active.stdin.flush();active.stdin.close();go_sent=True;(d/'GO_sent.json').write_text(json.dumps({'UTC':now(),'owner':owner,'second_admission_accepted':True},indent=2)+chr(10));(r/'active_job.json').write_text(json.dumps(dict(launch,pid=pid,pgid=pgid,phase='native_original_case12_screen'),indent=2)+chr(10))
   else:abort='ownedgate handshake missing or exited beforeGO'
   if pid not in known:
    fallback=census();cur=bypid(fallback).get(pid)
    if cur and cur.get('critical_identity_available') and cur.get('ppid')==os.getpid() and cur.get('pgid')==pid and cur.get('exe')==str(Path(manifest['tools']['python']['path']).resolve()):known[pid]=dict(identity(cur),observed_parent={'pid':os.getpid()},first_seen_UTC=now(),handshake_fallback_owned_directchild=True)
   while active.poll() is None and not abort:
    sample_deadline=time.monotonic()+budget['sample_interval_seconds'];sample=census();extend_owners(sample,known);monitor.write(json.dumps(dict(sample,owned_identities=known))+chr(10));monitor.flush();sample_count+=1
    if not sample['identified_unowned_baseline']['identity_match']:abort='recognizedunowned baseline identity changed duringruntime'
    if sample['cgroup']['oom_kill']!=global_before['oom_kill']:abort='OOM increment during native'
    if sample['cgroup']['usage_bytes']>=budget['runtime_stop_whole_bytes']:abort=abort or 'wholeCG reached28GiB engineeringstop'
    heavy=unknown_heavy(sample,known)
    if heavy:abort=abort or 'unknown visibleheavyRSS exceeds1GiB'
    if time.monotonic()-start>=budget['per_process_walltime_stop_seconds']:abort=abort or '600s process wallbudget exhausted'
    abort=abort or log_anomaly(logpath)
    observed,auditerr=auditrows(readrows(csvpath))
    if auditerr:abort=abort or 'CSV prefix audit failed'
    for x in list(manifest['sources'].values())+[{'path':str(root/path),'sha256':digest} for path,digest in shared.items()]:
     if not Path(x['path']).is_file() or hashlib.sha256(Path(x['path']).read_bytes()).hexdigest()!=x['sha256']:abort=abort or 'source/native/shared hashchanged'
    decision=identity_decision(active,bypid(sample).get(pid),known.get(pid,{}));decision.update(UTC=now(),native_pid=pid,prior_abort=abort)
    if decision['decision']=='alive_identity_mismatch':abort=abort or 'explicitalive criticalidentity mismatch'
    elif decision['decision']=='identity_unavailable_pending_terminal_confirmation':
     if pending_identity_since is None:pending_identity_since=time.monotonic()
     decision['pending_seconds']=time.monotonic()-pending_identity_since
     if decision['pending_seconds']>=plan['monitor_repair']['unavailable_identity_terminal_confirmation_max_seconds']:abort=abort or 'unavailableidentity notterminal within1s confirmation'
     sample_deadline=min(sample_deadline,time.monotonic()+0.05)
    else:pending_identity_since=None
    with (d/'identity_decisions.jsonl').open('a') as trace:trace.write(json.dumps(dict(decision,abort_after=abort))+chr(10))
    if not abort:time.sleep(max(0,sample_deadline-time.monotonic()))
   code=terminate_owned(active,known,d/'owned_signal_and_wait.json') if abort else active.wait();after=census();extend_owners(after,known);monitor.write(json.dumps(dict(after,owned_identities=known))+chr(10));monitor.flush();sample_count+=1
  aftercg=after['cgroup'];rows=readrows(csvpath);verified,auditerr=auditrows(rows);reason=abort or ('native nonzero '+str(code) if code!=0 else None) or log_anomaly(logpath)
  if aftercg['oom_kill']!=global_before['oom_kill']:reason=reason or 'OOM increment atterminal'
  if aftercg['usage_bytes']>=budget['runtime_stop_whole_bytes']:reason=reason or 'whole28GiB violation interminalcensus'
  if not after['identified_unowned_baseline']['identity_match']:reason=reason or 'baseline identity violation interminalcensus'
  if unknown_heavy(after,known):reason=reason or 'otherunknownheavy interminalcensus'
  if auditerr or len(rows)!=expected_count or len(verified)!=expected_count:reason=reason or 'terminalCSV selectedcases exact audit failed'
  verify();remaining=[x for x in after['visible_PIDs'] if x.get('state')!='Z' and matches(x,known.get(x['pid'],{}))]
  if remaining:
   reason=reason or 'owned descendant remainsafter nativeexit';terminate_owned(active,known,d/'owned_postexit_signal_and_wait.json')
  item={'index':i,'round':spec['round'],'variant':label,'native_pid':pid,'native_pgid':pgid,'UTC_terminal':now(),'GO_sent':go_sent,'native_exit':code,'stop_reason':reason,'clean_process_accepted':reason is None and code==0 and len(verified)==expected_count,'observed_complete_reference_PASS_rows':len(verified),'rawCSVrows':rows,'verifiedCSVrows':verified,'auditerrors':auditerr,'clean_process_accepted_reference_rows':len(verified) if reason is None and code==0 else 0,'CSV':str(csvpath),'log':str(logpath),'memory_samples':sample_count,'owned_identities':known,'cgroup_before':sample1['cgroup'],'cgroup_after':aftercg};(d/'terminal_result.json').write_text(json.dumps(item,indent=2)+chr(10));jobs.append(item);(r/'completed_jobs.json').write_text(json.dumps(jobs,indent=2)+chr(10));print('TERMINAL',i,label,code,len(verified),'clean',item['clean_process_accepted'],reason,flush=True);active=None
  if reason:failure=reason;break
except BaseException as error:
 failure='orchestration exception '+repr(error);(r/'orchestration_failure.log').write_text(traceback.format_exc())
 if active is not None:
  sample=census();extend_owners(sample,known)
  if active.pid not in known:
   cur=bypid(sample).get(active.pid)
   if cur and cur.get('critical_identity_available') and cur.get('ppid')==os.getpid() and cur.get('pgid')==active.pid and cur.get('exe')==str(Path(manifest['tools']['python']['path']).resolve()):known[active.pid]=dict(identity(cur),observed_parent={'pid':os.getpid()},first_seen_UTC=now())
  terminate_owned(active,known,r/'exception_owned_signal_and_wait.json');active=None
observed=[];counts={x:0 for x in manifest['sources']}
for folder in sorted(r.glob('job_*')):
 label=folder.name.split('_',2)[2];rows=readrows(folder/'native_case12.csv');verified,errors=auditrows(rows)
 for row in verified:observed.append({'job':folder.name,'variant':label,'CSV':str(folder/'native_case12.csv'),'row':row});counts[label]+=1
clean={x:sum(j['clean_process_accepted_reference_rows'] for j in jobs if j['variant']==x) for x in manifest['sources']};complete=not failure and len(jobs)==12 and all(j['clean_process_accepted'] for j in jobs) and counts=={key:4*expected_count for key in manifest['sources']};finalsample=census();owned_live=[x for x in finalsample['visible_PIDs'] if x.get('state')!='Z' and matches(x,known.get(x['pid'],{}))]
if owned_live:failure=failure or 'ownedlive processes remain afterabort';complete=False
result={'UTC':now(),'status':'fixed_case12_screen_protocol_completed' if complete else 'fixed_case12_screen_stopped_prefix_inconclusive','runtime_protocol_completed':complete,'failure':failure,'planned_native_processes':12,'terminal_job_records':len(jobs),'spawned_native_processes':len(list(r.glob('job_*/native.pid'))),'planned_candidate_fullrefs':4*expected_count,'planned_inclusive_fullrefs':12*expected_count,'observed_complete_reference_PASS_rows_by_variant':counts,'observed_candidate_fullrefs':counts['candidate_v122'],'observed_inclusive_fullrefs':len(observed),'clean_process_accepted_fullrefs_by_variant':clean,'clean_candidate_fullrefs':clean['candidate_v122'],'clean_inclusive_fullrefs':sum(clean.values()),'all_jobs':jobs,'cgroup_initial':global_before,'cgroup_final':finalsample['cgroup'],'owned_live_at_end':owned_live,'no_retry':True,'old_v105_zero_ref_gate1_preserved':(p/'rep/v105_worker1_bounded_all14_runtime_diagnostic_sc-16g-2/diagnostic.exit').read_text().strip()=='1','old_v104_formal_exit1_not_changed':(p/'rep/v104_worker1_s8_global_softmax_sc-16g-2/formal/diagnostic.exit').read_text().strip()=='1','old_v101137_not_changed':(p/'rep/v101_worker1_s2_fixed_selection_sc-16g-2/target_screen.exit').read_text().strip()=='137','candidate_source_v122_sha256':manifest['sources']['candidate_v122']['sha256'],'not_OOM_cause_proof_or_OJ_or_no_regression':True};(r/'diagnostic_result.json').write_text(json.dumps(result,indent=2)+chr(10));(r/'observed_reference_rows.json').write_text(json.dumps(observed,indent=2)+chr(10));(r/'final_census.json').write_text(json.dumps(finalsample,indent=2)+chr(10));(r/'diagnostic.exit').write_text(('0' if complete else '1')+chr(10));print('V122_SCREEN_TERMINAL',result['status'],counts,'clean',clean,failure,flush=True);lock.close();raise SystemExit(0 if complete else 1)
