from pathlib import Path
import subprocess,json,time,os,sys,datetime
root=Path('/root/tilelang-metax');v='v200_worker2_baseline_profile_subagent2'
rep=root/'race_tests/nsa/rep'/v
env={**os.environ,'PYTHONPATH':str(root)+':'+str(root/'race_tests/nsa')}
oom=Path('/sys/fs/cgroup/memory/memory.oom_control')
jobs=[]
for ci in range(1,15):
 log=(rep/f'baseline_case{ci}.log').open('w')
 argv=[sys.executable,str(root/'race_tests/nsa/hack'/v/'run_case.py'),str(ci)]
 p=subprocess.Popen(argv,cwd=root,env=env,stdout=log,stderr=subprocess.STDOUT)
 (rep/f'baseline_case{ci}.pid').write_text(str(p.pid)+'\n')
 before=oom.read_text();samples=[]
 while p.poll() is None:
  status=Path('/proc')/str(p.pid)/'status'
  if status.exists():
   d={}
   for line in status.read_text().splitlines():
    if line.startswith(('VmRSS:','VmHWM:','VmSize:')):k,val=line.split(':',1);d[k]=val.strip()
   samples.append({'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),**d})
  (rep/'live_stage.json').write_text(json.dumps({'stage':'native_baseline','case':ci,'pid':p.pid,'command':argv,'timestamp_utc':datetime.datetime.now(datetime.timezone.utc).isoformat()})+'\n')
  time.sleep(2)
 code=p.returncode;log.close()
 (rep/f'baseline_case{ci}.exit').write_text(str(code)+'\n')
 rec={'case':ci,'pid':p.pid,'exit':code,'command':argv,'oom_before':before,'oom_after':oom.read_text(),'memory_samples':samples}
 (rep/f'baseline_case{ci}_process.json').write_text(json.dumps(rec,indent=2)+'\n');jobs.append(rec)
 print('CASE_TERMINAL',ci,'exit',code,flush=True)
 if code:break
(rep/'baseline_jobs.json').write_text(json.dumps(jobs,indent=2)+'\n')
exitcode=0 if len(jobs)==14 and all(j['exit']==0 for j in jobs) else 1
(rep/'baseline_all14.exit').write_text(str(exitcode)+'\n')
sys.exit(exitcode)
