from pathlib import Path
import subprocess,sys,time,json,datetime
root=Path('/root/tilelang-metax');v='v200_worker2_baseline_profile_subagent2'
h=root/'race_tests/nsa/hack'/v;r=root/'race_tests/nsa/rep'/v
while not (r/'baseline_all14.exit').exists():
 p=Path('/proc/2996/status')
 assert p.exists(),'native orchestrator disappeared without terminal record'
 time.sleep(2)
assert (r/'baseline_all14.exit').read_text().strip()=='0'
while Path('/proc/2996/status').exists():
 s=Path('/proc/2996/status').read_text()
 if 'State:\tZ' in s:break
 time.sleep(2)
jobs=[]
def run(stage,cmd,cwd=root):
 log=(r/(stage+'.log')).open('w');p=subprocess.Popen(cmd,cwd=cwd,stdout=log,stderr=subprocess.STDOUT)
 (r/(stage+'.pid')).write_text(str(p.pid)+'\n')
 (r/'live_stage.json').write_text(json.dumps({'stage':stage,'pid':p.pid,'timestamp_utc':datetime.datetime.now(datetime.timezone.utc).isoformat()})+'\n')
 code=p.wait();log.close();(r/(stage+'.exit')).write_text(str(code)+'\n')
 jobs.append({'stage':stage,'pid':p.pid,'command':cmd,'exit':code});(r/'post_jobs.json').write_text(json.dumps(jobs,indent=2)+'\n')
 print('STAGE_TERMINAL',stage,code,flush=True)
 if code:raise SystemExit(code)
run('baseline_analysis',[sys.executable,str(h/'analyze_baseline.py')])
plan=json.loads((r/'diagnostic_plan.json').read_text());validator=root/'race_tests/nsa/hack/validate_oj_submission.py'
for label,s in plan['sources'].items():
 cmd=[sys.executable,str(validator),str(root/s['path'])]
 for ci in range(1,15):cmd.extend(['--generated-code',str(r/f'codegen/{label}/case{ci}_stage1.device.cpp')])
 run('generated_static_'+label,cmd)
run('profile_execution',[sys.executable,str(h/'run_profile.py')])
run('profile_analysis',[sys.executable,str(h/'analyze_profile.py')])
run('resources',[sys.executable,str(h/'capture_resources.py')])
(r/'post_baseline.exit').write_text('0\n')
(r/'live_stage.json').write_text(json.dumps({'stage':'diagnostic_evidence_complete','timestamp_utc':datetime.datetime.now(datetime.timezone.utc).isoformat()})+'\n')
