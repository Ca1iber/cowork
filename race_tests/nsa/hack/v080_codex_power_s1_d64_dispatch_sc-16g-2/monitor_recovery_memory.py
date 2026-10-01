from pathlib import Path
import sys,time,json,datetime
pid=int(sys.argv[1]);ci=int(sys.argv[2]);r=Path('/root/tilelang-metax/race_tests/nsa/rep/v080_codex_power_s1_d64_dispatch_sc-16g-2');rows=[]
while Path('/proc/'+str(pid)+'/status').exists():
 status=Path('/proc/'+str(pid)+'/status')
 try:s=status.read_text()
 except FileNotFoundError:break
 d={k:v.strip() for k,v in (line.split(':',1) for line in s.splitlines() if ':' in line)}
 rows.append({'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'pid':pid,'rss':d.get('VmRSS'),'hwm':d.get('VmHWM'),'cgroup_usage':Path('/sys/fs/cgroup/memory/memory.usage_in_bytes').read_text().strip(),'oom_control':Path('/sys/fs/cgroup/memory/memory.oom_control').read_text()});time.sleep(1)
(r/('archive_retry_case'+str(ci)+'_memory.json')).write_text(json.dumps(rows,indent=2)+'\n');print('monitor terminal',ci,len(rows),flush=True)
