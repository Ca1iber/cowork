from pathlib import Path
from decimal import Decimal
import json,hashlib,subprocess,os,time,datetime,csv,traceback,fcntl
root=Path('/root/tilelang-metax');p=root/'race_tests/nsa';v='v110_worker1_parent_resources_and_codegen_identity_sc-16g-2';r=p/'rep'/v
manifest=json.loads((r/'source_manifest.json').read_text());plan=json.loads((r/'execution_plan.json').read_text());shared=json.loads((r/'shared_inputs_identity.json').read_text())['files'];cg=Path('/sys/fs/cgroup/memory');official=json.loads((p/'official_case.json').read_text());budget=plan['memory_engineering_budget']
monitor_file=Path(manifest['tools']['process_monitor']['path']);assert monitor_file.is_file() and hashlib.sha256(monitor_file.read_bytes()).hexdigest()==manifest['tools']['process_monitor']['sha256']
from process_monitor import read_pid_metadata,identity_decision
def now():return datetime.datetime.now(datetime.timezone.utc).isoformat()
def cgstate():
 x={n:(cg/n).read_text() for n in ['memory.limit_in_bytes','memory.usage_in_bytes','memory.oom_control','memory.failcnt','memory.stat']};x['oom_kill']=int(next(l.split()[1] for l in x['memory.oom_control'].splitlines() if l.startswith('oom_kill ')));x['usage_bytes']=int(x['memory.usage_in_bytes']);return x

def verify():
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
 if sample['cgroup']['usage_bytes']>budget['new_admission_max_whole_bytes']:return 'wholeCG exceeds new4GiB admission'
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
 if len(rows)>14:errors.append('extraCSVrows')
 for i,row in enumerate(rows):
  try:
   assert i<14 and row['status']=='PASS' and int(row['case'])==i+1;case=official[i]
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
assert plan['phase']=='leader_GO_metadata_resources_once'
verify();fd=os.open(r/'launch_once.lock',os.O_WRONLY|os.O_CREAT|os.O_EXCL,0o600);os.write(fd,json.dumps({'UTC':now(),'master_pid':os.getpid(),'scope':'2metadata28pairs+4SDKresources'}).encode());os.close(fd);lock=open(manifest['cooperative_heavy_lock'],'a+');initial=cgstate();jobs=[];failure=None;active=None;known={}
try:
 assert initial['oom_kill']==13;fcntl.flock(lock,fcntl.LOCK_EX|fcntl.LOCK_NB)
 for i,spec in enumerate(plan['guard_stage_jobs'],1):
  verify();kind=spec['kind'];d=r/('stage_'+str(i).zfill(2)+'_'+kind);d.mkdir(exist_ok=False);first=census();(d/'admission_first.json').write_text(json.dumps(first,indent=2)+chr(10));reason=admission(first,initial['oom_kill'])
  if reason:failure=reason;(d/'refused.json').write_text(json.dumps({'reason':reason,'spawned':False},indent=2)+chr(10));break
  py=manifest['tools']['python']['path']
  if kind=='metadata':cmd=[py,'-u',manifest['tools']['metadata_export']['path'],spec['variant']]
  elif kind=='audit_codegen':cmd=[py,'-S','-u',manifest['tools']['codegen_audit']['path']]
  else:cmd=[py,'-S','-u',manifest['tools']['resource_capture']['path'],spec['variant'],str(spec['case'])]
  launch={'stage_index':i,'stage_spec':spec,'native_command':cmd,'manifest_path':str(r/'source_manifest.json'),'ready_file':str(d/'child_ready.json'),'planned_PID_file':str(d/'child.pid'),'planned_PGID_file':str(d/'child.pgid'),'no_NSA_launch_or_ref_expected':True};(d/'launch_plan.json').write_text(json.dumps(launch,indent=2)+chr(10));gatecmd=[py,'-S','-u',manifest['tools']['native_gate']['path'],str(d/'launch_plan.json')];env=os.environ.copy();env.update(MACA_PATH='/opt/maca',PYTHONDONTWRITEBYTECODE='1',PYTHONWARNINGS='ignore',PYTHONPATH=str(root)+':'+str(p));known={};abort=None;pending=None;started=time.monotonic();logpath=d/'stage.log'
  with logpath.open('w') as log,(d/'whole_memory_samples.jsonl').open('w') as mon:
   active=subprocess.Popen(gatecmd,cwd=root,env=env,stdin=subprocess.PIPE,stdout=log,stderr=subprocess.STDOUT,text=True,start_new_session=True);pid=active.pid;pgid=os.getpgid(pid);(d/'child.pid').write_text(str(pid)+chr(10));(d/'child.pgid').write_text(str(pgid)+chr(10));(r/'active_stage.json').write_text(json.dumps(dict(launch,pid=pid,pgid=pgid),indent=2)+chr(10));ready=Path(launch['ready_file'])
   while not ready.exists() and active.poll() is None and time.monotonic()-started<5:time.sleep(0.05)
   if ready.exists():
    owner=json.loads(ready.read_text());assert owner['pid']==pid and owner['pgid']==pgid;known[pid]=dict(identity(owner),observed_parent={'pid':os.getpid()},first_seen_UTC=now());second=census();(d/'admission_second.json').write_text(json.dumps(second,indent=2)+chr(10));extend_owners(second,known);abort=admission(second,initial['oom_kill'])
    if not matches(bypid(second).get(pid),owner):abort=abort or 'ownedgate identity mismatch'
    if not abort:active.stdin.write('GO'+chr(10));active.stdin.flush();active.stdin.close();(d/'GO_sent.json').write_text(json.dumps({'UTC':now(),'owner':owner},indent=2)+chr(10))
   else:abort='missingowned-S handshake'
   if pid not in known:
    x=bypid(census()).get(pid)
    if x and x.get('critical_identity_available') and x.get('ppid')==os.getpid() and x.get('pgid')==pid and x.get('exe')==str(Path(py).resolve()):known[pid]=dict(identity(x),observed_parent={'pid':os.getpid()},first_seen_UTC=now())
   while active.poll() is None and not abort:
    deadline=time.monotonic()+0.5;sample=census();extend_owners(sample,known);mon.write(json.dumps(dict(sample,owned_identities=known))+chr(10));mon.flush()
    if sample['cgroup']['oom_kill']!=initial['oom_kill']:abort='OOMincrement'
    if sample['cgroup']['usage_bytes']>=budget['runtime_stop_whole_bytes']:abort=abort or 'whole28GiBstop'
    if not sample['identified_unowned_baseline']['identity_match']:abort=abort or 'unownedbaseline identity changed'
    if unknown_heavy(sample,known):abort=abort or 'otherunknownheavyRSS>1GiB'
    if time.monotonic()-started>=600:abort=abort or '600s budget'
    abort=abort or log_anomaly(logpath)
    for x in list(manifest['sources'].values())+[{'path':str(root/path),'sha256':sha} for path,sha in shared.items()]:
     if hashlib.sha256(Path(x['path']).read_bytes()).hexdigest()!=x['sha256']:abort=abort or 'source/sharedhashchanged'
    decision=identity_decision(active,bypid(sample).get(pid),known.get(pid,{}))
    if decision['decision']=='alive_identity_mismatch':abort=abort or 'aliveidentity mismatch'
    elif decision['decision']=='identity_unavailable_pending_terminal_confirmation':
     if pending is None:pending=time.monotonic()
     if time.monotonic()-pending>=1:abort=abort or 'criticalunavailable1s withoutterminal'
     deadline=min(deadline,time.monotonic()+0.05)
    else:pending=None
    with (d/'identity_decisions.jsonl').open('a') as trace:trace.write(json.dumps(dict(decision,UTC=now(),prior_abort=abort))+chr(10))
    if not abort:time.sleep(max(0,deadline-time.monotonic()))
   code=terminate_owned(active,known,d/'owned_signal_wait.json') if abort else active.wait();last=census();extend_owners(last,known);mon.write(json.dumps(dict(last,owned_identities=known))+chr(10));mon.flush()
  reason=abort or ('childnonzero '+str(code) if code!=0 else None) or log_anomaly(logpath)
  if last['cgroup']['oom_kill']!=initial['oom_kill']:reason=reason or 'terminalOOMincrement'
  if last['cgroup']['usage_bytes']>=budget['runtime_stop_whole_bytes']:reason=reason or 'terminal28GiB'
  if not last['identified_unowned_baseline']['identity_match']:reason=reason or 'terminalbaseline changed'
  if unknown_heavy(last,known):reason=reason or 'terminalunknownheavy'
  verify();remaining=[x for x in last['visible_PIDs'] if x.get('state')!='Z' and matches(x,known.get(x['pid'],{}))]
  if remaining:reason=reason or 'ownedchildstilllive';terminate_owned(active,known,d/'owned_postexit_signal_wait.json')
  if not reason and kind=='metadata':
   data=json.loads((r/('metadata_'+spec['variant']+'.json')).read_text());assert len(data['records'])==14 and data['NSA_attention_calls']==data['full_reference_checks']==0 and [x['case'] for x in data['records']]==list(range(1,15))
  if not reason and kind=='resource':assert json.loads((r/'resources'/('case'+str(spec['case'])+'_'+spec['variant']+'.json')).read_text())['stack_bytes']==0
  item={'index':i,'spec':spec,'pid':pid,'pgid':pgid,'UTC_terminal':now(),'actual_exit':code,'stop_reason':reason,'cgroup_before':first['cgroup'],'cgroup_after':last['cgroup'],'owned_identities':known,'NSA_attention_calls':0,'full_reference_checks':0};(d/'terminal_result.json').write_text(json.dumps(item,indent=2)+chr(10));jobs.append(item);(r/'completed_stage_jobs.json').write_text(json.dumps(jobs,indent=2)+chr(10));print('EVIDENCE_STAGE_TERMINAL',i,spec,code,reason,flush=True);active=None
  if reason:failure=reason;break
except BaseException as error:
 failure='orchestrationexception '+repr(error);(r/'orchestration_failure.log').write_text(traceback.format_exc())
 if active is not None:
  snap=census();extend_owners(snap,known)
  if active.pid not in known:
   x=bypid(snap).get(active.pid)
   if x and x.get('critical_identity_available') and x.get('ppid')==os.getpid() and x.get('pgid')==active.pid and x.get('exe')==str(Path(manifest['tools']['python']['path']).resolve()):known[active.pid]=dict(identity(x),observed_parent={'pid':os.getpid()},first_seen_UTC=now())
  terminate_owned(active,known,r/'exception_owned_signal_wait.json');active=None
complete=not failure and len(jobs)==7 and all(x['actual_exit']==0 and x['stop_reason'] is None for x in jobs);final=census();records=[]
for label in ['parent_v084','power_v104']:
 f=r/('metadata_'+label+'.json')
 if f.exists():records+=json.loads(f.read_text())['records']
resources=[]
for f in (r/'resources').glob('case*.json') if (r/'resources').exists() else []:
 if not f.name.endswith('.command.json'):resources.append(json.loads(f.read_text()))
(r/'stage_result.json').write_text(json.dumps({'UTC':now(),'complete':complete,'failure':failure,'all_jobs':jobs,'metadata_record_pairs':len(records),'resource_results':resources,'NSA_attention_calls':0,'full_reference_checks':0,'cgroup_initial':initial,'cgroup_final':final['cgroup'],'no_retry':True,'not_performance_or_no_regression_proof':True},indent=2)+chr(10));(r/'final_census.json').write_text(json.dumps(final,indent=2)+chr(10));(r/'stage.exit').write_text(('0' if complete else '1')+chr(10));print('V110_TERMINAL',complete,len(records),len(resources),failure,flush=True);lock.close();raise SystemExit(0 if complete else 1)
