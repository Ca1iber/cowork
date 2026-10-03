from pathlib import Path
import os,sys,json,time,datetime,subprocess,fcntl,signal,re,hashlib
root=Path('/root/tilelang-metax');v='v234_worker2_case2_bounded_kv_index_subagent2';r=root/'race_tests/nsa/rep'/v;h=root/'race_tests/nsa/hack'/v
plan=json.loads((r/'bounded_runtime_plan.json').read_text());cgroot=Path('/sys/fs/cgroup/memory')
def info(pid):
 p=Path('/proc')/str(pid)
 d={'pid':pid,'ppid':None,'pgid':None,'starttime_ticks':None,'state':None,'comm':None,'exe':None,'status':{},'cgroup':[],'thread_children':[],'metadata_errors':[]}
 def phase(name,action):
  try:return action()
  except OSError as e:
   d['metadata_errors'].append({'phase':name,'errno':e.errno,'filename':e.filename});return None
 stat=phase('stat',lambda:(p/'stat').read_text())
 if stat is not None:
  try:
   fields=stat.rsplit(') ',1)[1].split();d.update(ppid=int(fields[1]),pgid=int(fields[2]),starttime_ticks=int(fields[19]),state=fields[0])
  except (ValueError,IndexError) as e:d['metadata_errors'].append({'phase':'stat_parse','errno':None,'filename':str(p/'stat'),'error_type':type(e).__name__})
 d['exe']=phase('exe',lambda:os.readlink(p/'exe'))
 comm=phase('comm',lambda:(p/'comm').read_text());d['comm']=comm.strip() if comm is not None else None
 cg=phase('cgroup',lambda:(p/'cgroup').read_text());d['cgroup']=cg.splitlines() if cg is not None else []
 status=phase('status',lambda:(p/'status').read_text())
 if status is not None:
  for line in status.splitlines():
   if line.startswith(('VmRSS:','VmHWM:','Threads:')):key,val=line.split(':',1);d['status'][key]=val.strip()
 tasks=phase('task',lambda:list((p/'task').iterdir()))
 for t in tasks or []:
  text=phase('thread_children',lambda:(t/'children').read_text())
  if text and text.strip():d['thread_children'].append({'tid':int(t.name),'children':[int(x) for x in text.split()]})
 d['critical_complete']=bool(d['exe'] and isinstance(d['starttime_ticks'],int))
 d['RSS_unavailable']='VmRSS' not in d['status']
 return d

def identity_state(expected,current):
 if current is None:return 'missing'
 for key in ['pid','starttime_ticks','exe']:
  value=current.get(key)
  if value is not None and value!='' and value!=expected.get(key):return 'mismatch'
 return 'match' if identity_equal(expected,current) else 'missing'

def snapshot(stage):
 mem={}
 for name in ['memory.usage_in_bytes','memory.limit_in_bytes','memory.max_usage_in_bytes','memory.oom_control','memory.stat','memory.failcnt','memory.memsw.usage_in_bytes']:
  p=cgroot/name;mem[name]=p.read_text() if p.exists() else 'UNAVAILABLE'
 pids=[];missing=[]
 for p in Path('/proc').iterdir():
  if p.name.isdigit():
   d=info(int(p.name))
   if d:
    pids.append(d)
    if not d.get('critical_complete'):missing.append(int(p.name))
   else:missing.append(int(p.name))
 usage=int(mem['memory.usage_in_bytes']);count=int(re.search(r'^oom_kill (\d+)$',mem['memory.oom_control'],re.M)[1])
 return {'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'stage':stage,'usage_bytes':usage,'oom_kill':count,'memory':mem,'visible_pids':pids,'sample_missing_pids':missing,'observer':info(os.getpid())}
def save(name,data):(r/name).write_text(json.dumps(data,indent=2)+'\n')
def rss(d):return int(d['status'].get('VmRSS','0 kB').split()[0])*1024
def heavy(s,allowed):return [d for d in s['visible_pids'] if not identity_equal(allowed.get(d['pid']),d) and rss(d)>plan['unknown_heavy_RSS_bytes']]
def identity_equal(a,b):return bool(a and b and a.get('exe') and b.get('exe') and isinstance(a.get('starttime_ticks'),int) and isinstance(b.get('starttime_ticks'),int) and all(a.get(k)==b.get(k) for k in ['pid','starttime_ticks','exe']))
