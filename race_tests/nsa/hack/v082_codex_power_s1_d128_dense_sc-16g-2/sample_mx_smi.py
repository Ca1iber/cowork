import datetime,json,os,subprocess,sys,time
from pathlib import Path
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v082_codex_power_s1_d128_dense_sc-16g-2')
pid=int(sys.argv[1]);count=0
with (r/'mx_smi_profile_samples.jsonl').open('w') as f:
 while True:
  try:os.kill(pid,0)
  except ProcessLookupError:break
  x=subprocess.run(['mx-smi'],capture_output=True,text=True)
  f.write(json.dumps({'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'observed_job_pid':pid,'exit_code':x.returncode,'stdout':x.stdout,'stderr':x.stderr})+'\n');f.flush();count+=1;time.sleep(2)
(r/'mx_smi_sampler_summary.json').write_text(json.dumps({'samples':count,'job_pid':pid,'scope':'read-only physical/sGPU summaries; these are not per-kernel occupancy counters','exit_code':0},indent=2)+'\n')
print('sampler completed',count)
