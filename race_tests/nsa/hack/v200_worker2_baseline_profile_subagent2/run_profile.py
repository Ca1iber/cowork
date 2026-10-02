from pathlib import Path
import subprocess,json,time,datetime,shlex,shutil,sys
root=Path('/root/tilelang-metax');r=root/'race_tests/nsa/rep/v200_worker2_baseline_profile_subagent2'
plan=json.loads((r/'diagnostic_plan.json').read_text());metrics=['L2C Hit Rate','Global Memory Read bytes','Global Memory Write bytes','AP MTE Duty ratio','AP MMA Duty ratio','shared memory access efficiency','average conflict cycles per instruction','average latency per load instruction','Achieved waves','Dispatched waves']
tool='/usr/local/bin/mcProfiler'
for mode in ['version','show_metrics']:
 z=subprocess.run([tool,mode],cwd='/opt/mcProfiler-ubuntu18.04',capture_output=True,text=True)
 (r/f'mcprofiler_{mode}.txt').write_text(z.stdout+z.stderr);(r/f'mcprofiler_{mode}.exit').write_text(str(z.returncode)+'\n')
jobs=[];samples=[];exitcode=0
for ci in plan['profile_case_order']:
 for label in plan['profile_variant_order']:
  out=r/f'mcprof_case{ci}_{label}';out.mkdir()
  source=root/plan['sources'][label]['path'];driver=root/'race_tests/nsa/hack/v004_codex_power_s1_reprofile_sc-16g-2/profile_variant_v28.py'
  target=['env','MACA_PATH=/opt/maca','PYTHONDONTWRITEBYTECODE=1','PYTHONWARNINGS=ignore',f'PYTHONPATH={root}:{root}/race_tests/nsa',f'NSA_VARIANT_SOURCE={source}','/opt/conda/bin/python','-u',str(driver),str(ci)]
  cmd=['timeout','480s',tool,'perf_exec','--cmdline',shlex.join(target),'--casename',f'nsa_worker2_v200_{label}_case{ci}','--metrics',*metrics,'--counts','2','--custom','--per-kernel','--cwd',str(root)]
  log=(out/'mcprofiler.log').open('w');p=subprocess.Popen(cmd,cwd='/opt/mcProfiler-ubuntu18.04',stdout=log,stderr=subprocess.STDOUT)
  (out/'pid').write_text(str(p.pid)+'\n')
  while p.poll() is None:
   stamp=datetime.datetime.now(datetime.timezone.utc).isoformat()
   (r/'live_stage.json').write_text(json.dumps({'stage':'mcProfiler','case':ci,'variant':label,'pid':p.pid,'timestamp_utc':stamp})+'\n')
   z=subprocess.run(['mx-smi'],capture_output=True,text=True)
   samples.append({'utc':stamp,'profile_case':ci,'variant':label,'profile_pid':p.pid,'mx_smi_exit':z.returncode,'raw':z.stdout+z.stderr})
   time.sleep(2)
  log.close();code=p.returncode;(out/'exit_code.txt').write_text(str(code)+'\n')
  output=[l.removeprefix('[info] output path is: ').strip() for l in (out/'mcprofiler.log').read_text().splitlines() if l.startswith('[info] output path is: ')]
  directory=Path(output[-1]) if output else None
  if code==0 and directory is not None and (directory/'report.txt.json').exists():shutil.copytree(directory,out/'report_bundle')
  jobs.append({'case':ci,'variant':label,'pid':p.pid,'exit':code,'command':cmd,'original_report_directory':str(directory) if directory else None})
  print('PROFILE_TERMINAL',ci,label,code,flush=True)
  if code:exitcode=code;break
 if exitcode:break
(r/'profile_jobs.json').write_text(json.dumps(jobs,indent=2)+'\n')
(r/'mx_smi_profile_samples.json').write_text(json.dumps({'scope':'read-only physical/sGPU summary every >=2s while target profiler CLI live; not calibrated HBM/AP throughput','samples':samples},indent=2)+'\n')
(r/'profile.exit').write_text(str(exitcode)+'\n')
sys.exit(exitcode)
