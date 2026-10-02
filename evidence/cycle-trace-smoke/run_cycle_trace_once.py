from pathlib import Path
import os,sys,json,subprocess,time,fcntl,signal,hashlib
import bounded_utils as U
root=U.root;r=U.r;h=U.h;plan=U.plan
stage='trace';o=r/(stage+'_observation');o.mkdir(exist_ok=True)
manifest=json.loads((r/'trace_launch_manifest.json').read_text())
for item in manifest['fixed_inputs']:assert hashlib.sha256(Path(item['path']).read_bytes()).hexdigest()==item['sha256']
with (o/'once.guard').open('x') as f:f.write(str(time.time()))
lock=open(plan['heavy_lock'],'a+');proc=None;owned={};actions=[];result={'stage':stage,'attention_reference_native_profile':[0,0,0,0],'no_retry':True};started=time.monotonic()
def save(name,x):(o/name).write_text(json.dumps(x,indent=2)+'\n')
def terminate():
 for pid,d in reversed(list(owned.items())):
  current=U.info(pid)
  if U.identity_equal(d,current) and current.get('state')!='Z':
   try:os.kill(pid,signal.SIGTERM);actions.append({'pid':pid,'signal':'TERM','verified':True})
   except ProcessLookupError:pass
 try:proc.wait(timeout=5)
 except subprocess.TimeoutExpired:
  for pid,d in reversed(list(owned.items())):
   current=U.info(pid)
   if U.identity_equal(d,current) and current.get('state')!='Z':
    try:os.kill(pid,signal.SIGKILL);actions.append({'pid':pid,'signal':'KILL','verified':True})
    except ProcessLookupError:pass
  try:proc.wait(timeout=5)
  except subprocess.TimeoutExpired:result['actualwait']='UNAVAILABLE_unverified_or_still_live'
try:
 fcntl.flock(lock,fcntl.LOCK_EX|fcntl.LOCK_NB);observer=U.info(os.getpid());assert U.identity_equal(observer,observer)
 pre=U.snapshot('pre_admission');save('pre_admission.json',pre)
 if pre['oom_kill']!=3 or pre['usage_bytes']>plan['admission_usage_bytes'] or U.heavy(pre,{os.getpid():observer}):raise RuntimeError('PRE_ADMISSION_GUARD')
 child=Path(manifest['child']);argv=['/opt/conda/bin/python','-S','-u',str(child)]
 log=(o/'child.log').open('w');env={**os.environ,'PYTHONPATH':str(root)};proc=subprocess.Popen(argv,stdin=subprocess.PIPE,stdout=log,stderr=subprocess.STDOUT,cwd=root,env=env,start_new_session=True);d=U.info(proc.pid);assert U.identity_equal(d,d);owned[proc.pid]=d;save('child_identity.json',{'argv':argv,'identity':d});save('observer_identity.json',observer)
 post=U.snapshot('post_admission');save('post_admission.json',post);current={q['pid']:q for q in post['visible_pids']}
 if post['oom_kill']!=3 or post['usage_bytes']>plan['admission_usage_bytes'] or U.heavy(post,{**owned,os.getpid():observer}) or not U.identity_equal(d,current.get(proc.pid)):raise RuntimeError('POST_ADMISSION_GUARD')
 proc.stdin.write(b'GO\n');proc.stdin.flush();proc.stdin.close();deadline=time.monotonic()+120;pending=None;spent=0.0;samples=0
 with (o/'samples.jsonl').open('w') as stream:
  while proc.poll() is None:
   snap=U.snapshot('bounded_observation');cur={q['pid']:q for q in snap['visible_pids']};poll=proc.poll();state='terminal' if poll is not None else U.identity_state(d,cur.get(proc.pid));now=time.monotonic();mode=False
   if state=='mismatch':raise RuntimeError('EXPLICIT_MAIN_IDENTITY_CHANGE')
   if state=='missing':
    if pending is None:pending=now
    mode=True
    if spent+now-pending>=1:raise RuntimeError('MISSING_IDENTITY_1S_BUDGET')
   elif pending is not None:
    spent+=now-pending;pending=None
    if spent>1:raise RuntimeError('MISSING_IDENTITY_TOTAL_BUDGET')
   changed=True
   while changed:
    changed=False;verified={pid:old for pid,old in owned.items() if U.identity_equal(old,cur.get(pid))};ids={x for pid in verified for t in cur[pid]['thread_children'] for x in t['children']}
    for q in snap['visible_pids']:
     if q['pid'] not in owned and q.get('exe') and isinstance(q.get('starttime_ticks'),int) and (q['ppid'] in verified or q['pid'] in ids):owned[q['pid']]=q;changed=True
   snap['originalPopenpoll']=poll;snap['identity_state']=state;stream.write(json.dumps(snap)+'\n');stream.flush();samples+=1;save('live_stage.json',{'stage':stage,'PID':proc.pid,'samples':samples,'usage':snap['usage_bytes'],'OOM':snap['oom_kill']})
   if snap['oom_kill']!=3 or snap['usage_bytes']>=plan['runtime_stop_usage_bytes'] or U.heavy(snap,{**owned,os.getpid():observer}):raise RuntimeError('RUNTIME_OOM_PRESSURE_UNKNOWN_GUARD')
   created=[]
   for path in r.glob('capture_parentC8_once*'):
    if path.is_symlink():raise RuntimeError('TRACE_OUTPUT_SYMLINK')
    if path.is_file():created.append(path)
    elif path.is_dir():
     for below in path.rglob('*'):
      if below.is_symlink():raise RuntimeError('TRACE_OUTPUT_SYMLINK')
      if below.is_file():created.append(below)
   total=sum(path.stat().st_size for path in created);jsonbytes=sum(path.stat().st_size for path in created if path.suffix=='.json')
   if total>=67108864 or jsonbytes>=33554432:raise RuntimeError('TRACE_OUTPUT_BYTES_BUDGET')
   if now>=deadline:raise RuntimeError('120S_TIMEOUT')
   if any(x.strip()=='Killed' for x in (o/'child.log').read_text().splitlines()):raise RuntimeError('INNER_KILLED')
   if poll is not None:break
   time.sleep(min(0.05,max(0,1-spent-(time.monotonic()-pending))) if mode else 0.5)
 if pending is not None:
  spent+=time.monotonic()-pending
  if spent>1:raise RuntimeError('EXIT_CONFIRMATION_TOTAL_BUDGET')
 code=proc.wait();result['actualwait']=code;result['samples']=samples;result['missing_seconds']=spent;log.close();final=U.snapshot('terminal');save('terminal.json',final);cur={q['pid']:q for q in final['visible_pids']}
 if code!=0:raise RuntimeError('CHILD_NONZERO')
 if final['oom_kill']!=3 or final['usage_bytes']>=plan['runtime_stop_usage_bytes'] or U.heavy(final,{**owned,os.getpid():observer}):raise RuntimeError('TERMINAL_MEMORY_GUARD')
 if any(pid!=proc.pid and pid in cur and cur[pid].get('state')!='Z' for pid in owned):raise RuntimeError('TERMINAL_OWNED_DESCENDANT')
 result['gate']=0;result['trace_validity']='UNPROVEN_until_actual_data_attribution'
except Exception as e:
 result['gate']=1;result['reason']=str(e)
 if proc is not None:terminate();result.setdefault('actualwait',proc.poll())
finally:
 result['owned_actions']=actions;result['elapsed_seconds']=time.monotonic()-started;save('result.json',result);(o/'gate.exit').write_text(str(result.get('gate',1))+'\n');fcntl.flock(lock,fcntl.LOCK_UN);lock.close();print(json.dumps(result),flush=True)
sys.exit(result.get('gate',1))
