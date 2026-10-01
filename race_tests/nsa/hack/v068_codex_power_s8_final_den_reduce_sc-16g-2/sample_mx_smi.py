import datetime,json,os,subprocess,sys,time
from pathlib import Path
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v068_codex_power_s8_final_den_reduce_sc-16g-2')
pid=int(sys.argv[1]);count=0
with (r/'mx_smi_profile_samples.jsonl').open('w') as f:
 while True:
  try:os.kill(pid,0)
  except ProcessLookupError:break
  phase='metadata'
  if (r/'export_all14.exit').exists():phase='mcprof'
  if (r/'mcprof_baseline_v28/exit_code.txt').exists():phase='archive_native'
  x=subprocess.run(['mx-smi'],capture_output=True,text=True)
  f.write(json.dumps({'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'observed_job_pid':pid,'phase':phase,'exit_code':x.returncode,'stdout':x.stdout,'stderr':x.stderr})+'\n');f.flush();count+=1;time.sleep(2)
(r/'mx_smi_sampler_summary.json').write_text(json.dumps({'samples':count,'job_pid':pid,'scope':'read-only summaries across labeled metadata/profile/archive stages;not per-kernel occupancy or bandwidth counters','exit_code':0},indent=2)+'\n')
print('sampler completed',count)
