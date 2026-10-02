from pathlib import Path
import os,sys,json,time,datetime,subprocess,fcntl,signal,re,hashlib
root=Path('/root/tilelang-metax');v='v209_worker2_c14_linear_query_grid_subagent2';r=root/'race_tests/nsa/rep'/v/'metadata_recovery_01';h=root/'race_tests/nsa/hack'/v
plan=json.loads((r/'plan.json').read_text());cgroot=Path('/sys/fs/cgroup/memory')
def info(pid):
 p=Path('/proc')/str(pid)
 try:
  f=(p/'stat').read_text().rsplit(') ',1)[1].split()
  d={'pid':pid,'ppid':int(f[1]),'pgid':int(f[2]),'starttime_ticks':int(f[19]),'state':f[0],'comm':(p/'comm').read_text().strip(),'exe':os.readlink(p/'exe') if (p/'exe').exists() else None,'status':{},'cgroup':(p/'cgroup').read_text().splitlines(),'thread_children':[]}
  for line in (p/'status').read_text().splitlines():
   if line.startswith(('VmRSS:','VmHWM:','Threads:')):k,val=line.split(':',1);d['status'][k]=val.strip()
  for t in (p/'task').iterdir():
   try:c=(t/'children').read_text().strip()
   except (FileNotFoundError,PermissionError,ProcessLookupError):continue
   if c:d['thread_children'].append({'tid':int(t.name),'children':[int(x) for x in c.split()]})
  return d
 except (FileNotFoundError,PermissionError,ProcessLookupError):return None
def snapshot(stage):
 mem={}
 for name in ['memory.usage_in_bytes','memory.limit_in_bytes','memory.max_usage_in_bytes','memory.oom_control','memory.stat','memory.failcnt','memory.memsw.usage_in_bytes']:
  p=cgroot/name;mem[name]=p.read_text() if p.exists() else 'UNAVAILABLE'
 pids=[];missing=[]
 for p in Path('/proc').iterdir():
  if p.name.isdigit():
   d=info(int(p.name))
   if d:pids.append(d)
   else:missing.append(int(p.name))
 usage=int(mem['memory.usage_in_bytes']);count=int(re.search(r'^oom_kill (\d+)$',mem['memory.oom_control'],re.M)[1])
 return {'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'stage':stage,'usage_bytes':usage,'oom_kill':count,'memory':mem,'visible_pids':pids,'sample_missing_pids':missing,'observer':info(os.getpid())}
def save(name,data):(r/name).write_text(json.dumps(data,indent=2)+'\n')
def rss(d):return int(d['status'].get('VmRSS','0 kB').split()[0])*1024
def heavy(s,allowed):return [d for d in s['visible_pids'] if d['pid'] not in allowed and rss(d)>plan['unknown_heavy_RSS_bytes']]
def identity_equal(a,b):return a and b and all(a[k]==b[k] for k in ['pid','starttime_ticks','exe'])
with (r/'metadata_once.guard').open('x') as f:f.write(datetime.datetime.now(datetime.timezone.utc).isoformat()+'\n')
lock=open(plan['heavy_lock'],'a+');p=None;owned={};term=[];result={'id':v,'mode':'two_factory_metadata_only','attention_calls':0,'full_reference_count':0,'native_calls':0,'import_attempted':False,'no_retry':True};started=time.monotonic()
try:
 try:fcntl.flock(lock,fcntl.LOCK_EX|fcntl.LOCK_NB)
 except BlockingIOError:raise RuntimeError('ADMISSION_REFUSED_LOCK_BUSY')
 observer=info(os.getpid());assert observer is not None
 save('observer_identity.json',observer)
 save('lock_owner.json',{'PID':observer['pid'],'starttime_ticks':observer['starttime_ticks'],'PGID':observer['pgid'],'exe':observer['exe'],'lock':plan['heavy_lock']})
 pre=snapshot('pre_admission');save('pre_admission.json',pre)
 if pre['usage_bytes']>plan['admission_usage_bytes'] or heavy(pre,{os.getpid()}):raise RuntimeError('ADMISSION_REFUSED_USAGE_OR_UNOWNED_HEAVY')
 child=h/'compile_pair_metadata_recovery_01.py';argv=['/opt/conda/bin/python','-u',str(child)]
 assert child.exists()
 log=(r/'import.log').open('w')
 env={**os.environ,'PYTHONPATH':str(root)}
 p=subprocess.Popen(argv,cwd=root,env=env,stdin=subprocess.PIPE,stdout=log,stderr=subprocess.STDOUT,start_new_session=True)
 d=info(p.pid);assert d and d['exe'],('ownedPIDidentity',p.pid);owned[p.pid]=d
 save('import_identity.json',{'command':argv,'script_sha256':hashlib.file_digest(child.open('rb'),'sha256').hexdigest(),'identity':d,'own_explicit_environment_keys':['PYTHONPATH'],'environment_contents_not_dumped':True})
 lock.seek(0);lock.truncate();lock.write(json.dumps({'pid':observer['pid'],'starttime_ticks':observer['starttime_ticks'],'pgid':observer['pgid'],'import_pid':p.pid})+'\n');lock.flush()
 post=snapshot('post_admission_before_release');save('post_admission_before_release.json',post)
 if post['usage_bytes']>plan['admission_usage_bytes'] or heavy(post,{os.getpid(),p.pid}) or post['oom_kill']!=pre['oom_kill']:raise RuntimeError('ADMISSION_REFUSED_SECOND_CHECK')
 print('ADMITTED',p.pid,d['starttime_ticks'],d['pgid'],post['usage_bytes'],flush=True)
 result.update({'admitted':True,'import_attempted':True,'import_pid':p.pid,'import_starttime_ticks':d['starttime_ticks'],'import_pgid':d['pgid'],'oom_before':pre['oom_kill']})
 p.stdin.write(b'GO\n');p.stdin.flush();p.stdin.close()
 deadline=time.monotonic()+plan['max_seconds'];samples=0;reason=None
 with (r/'samples.jsonl').open('w') as f:
  while p.poll() is None:
   snap=snapshot('import_observation')
   # Observe ancestry from both PPID and all threadchildren; laterreparenting keeps onlyobservedidentity.
   changed=True
   while changed:
    changed=False
    child_ids={x for q in snap['visible_pids'] if q['pid'] in owned for t in q['thread_children'] for x in t['children']}
    for q in snap['visible_pids']:
     if q['pid'] not in owned and (q['ppid'] in owned or q['pid'] in child_ids):
      owned[q['pid']]=q;changed=True
   snap['observed_owned_identities']=[{k:q[k] for k in ['pid','ppid','pgid','starttime_ticks','exe']} for q in owned.values()]
   f.write(json.dumps(snap)+'\n');f.flush();samples+=1
   save('live_stage.json',{'stage':'two_factory_metadata_observing','import_pid':p.pid,'observer_pid':os.getpid(),'sample_count':samples,'usage_bytes':snap['usage_bytes'],'oom':snap['oom_kill'],'utc':snap['utc']})
   if snap['usage_bytes']>=plan['runtime_stop_usage_bytes']:reason='WHOLE_CGROUP_PRESSURE_THRESHOLD'
   elif snap['oom_kill']!=pre['oom_kill']:reason='OOM_COUNTER_INCREMENT'
   elif heavy(snap,set(owned)|{os.getpid()}):reason='UNOWNED_VISIBLE_HEAVY_THRESHOLD'
   elif time.monotonic()>=deadline or samples>=plan['max_samples']:reason='TIME_OR_SAMPLE_BUDGET'
   if reason:break
   time.sleep(plan['period_seconds'])
 result['samples']=samples
 if reason:raise RuntimeError(reason)
 code=p.wait();log.close();result['import_returncode']=code
 if code!=0:raise RuntimeError('IMPORT_NONZERO')
 final=snapshot('after_natural_exit');save('post_exit.json',final)
 if final['oom_kill']!=pre['oom_kill']:raise RuntimeError('OOM_INCREMENT_ON_EXIT')
 result.update({'status':'metadata_compile_observed_exit0_not_runtime_proof','oom_after':final['oom_kill'],'diagnostic_gate':0})
except Exception as e:
 result.update({'status':'admission_refused_or_observation_aborted','reason':str(e),'diagnostic_gate':1})
 if p is not None and p.poll() is None:
  # Never signalunknown/reused PID or merelyPPID1/name-matchedprocesses.
  for pid,d in reversed(list(owned.items())):
   now=info(pid)
   if identity_equal(d,now) and now['state']!='Z':
    try:os.kill(pid,signal.SIGTERM);term.append({'pid':pid,'signal':'TERM','identity_verified':True})
    except ProcessLookupError:pass
  try:p.wait(timeout=5)
  except subprocess.TimeoutExpired:
   for pid,d in reversed(list(owned.items())):
    now=info(pid)
    if identity_equal(d,now) and now['state']!='Z':
     try:os.kill(pid,signal.SIGKILL);term.append({'pid':pid,'signal':'KILL','identity_verified':True})
     except ProcessLookupError:pass
   p.wait()
 if p is not None:result['import_returncode']=p.poll()
 try:save('post_abort_snapshot.json',snapshot('after_abort_or_refusal'))
 except Exception as q:result['post_abort_snapshot_error']=str(q)
finally:
 result.update({'elapsed_seconds':time.monotonic()-started,'owned_termination_actions':term,'observer_heavy_roots':[x for x in ['tilelang','torch','tvm','numpy'] if x in sys.modules],'benchmark_changed':False,'no_other_process_kill_or_cleanup':True,'no_automatic_followup':True})
 save('diagnostic_result.json',result);(r/'diagnostic.exit').write_text(str(result.get('diagnostic_gate',1))+'\n')
 fcntl.flock(lock,fcntl.LOCK_UN);lock.close()
 print(json.dumps(result),flush=True)
sys.exit(result.get('diagnostic_gate',1))
