from pathlib import Path
import os,sys,json,time,datetime,subprocess,fcntl,signal,re,hashlib
root=Path('/root/tilelang-metax');v='v209_worker2_c14_linear_query_grid_subagent2';r=root/'race_tests/nsa/rep'/v;h=root/'race_tests/nsa/hack'/v
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
