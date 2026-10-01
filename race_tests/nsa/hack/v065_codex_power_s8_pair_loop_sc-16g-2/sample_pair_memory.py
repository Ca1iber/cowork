import datetime,json,os,subprocess,sys,time
from pathlib import Path
p=Path('/root/tilelang-metax/race_tests/nsa');v='v065_codex_power_s8_pair_loop_sc-16g-2';r=p/'rep'/v
pid=int(sys.argv[1]);samples=0;peak=0
files=[Path('/sys/fs/cgroup/memory')/x for x in ['memory.oom_control','memory.usage_in_bytes','memory.max_usage_in_bytes','memory.limit_in_bytes','memory.failcnt']]
with (r/'pair_memory_samples.jsonl').open('w') as f:
 while True:
  try:os.kill(pid,0)
  except ProcessLookupError:break
  rows=subprocess.run(['ps','-eo','pid,ppid,pgid,comm'],capture_output=True,text=True).stdout.splitlines()[1:]
  owned=[]
  for row in rows:
   a=row.split()
   if len(a)<4 or int(a[2])!=pid:continue
   status=Path('/proc')/a[0]/'status'
   try:lines=status.read_text().splitlines()
   except FileNotFoundError:continue
   mem={x.split(':',1)[0]:x.split(':',1)[1].strip() for x in lines if x.startswith(('VmRSS:','VmHWM:','RssAnon:'))}
   rss=int(mem.get('VmRSS','0 kB').split()[0]);peak=max(peak,rss);owned.append({'pid':int(a[0]),'comm':a[3],'memory':mem})
  cg={str(x):x.read_text() for x in files if x.exists()}
  f.write(json.dumps({'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'job_pid':pid,'owned':owned,'cgroup':cg})+'\n');f.flush();samples+=1;time.sleep(2)
(r/'pair_memory_summary.json').write_text(json.dumps({'samples':samples,'max_owned_process_rss_kb':peak,'job_pid':pid,'after':{str(x):x.read_text() for x in files if x.exists()},'scope':'read-only; no benchmark/GPU/allocator configuration changes'},indent=2)+'\n');print('sampler terminal',samples,peak)
