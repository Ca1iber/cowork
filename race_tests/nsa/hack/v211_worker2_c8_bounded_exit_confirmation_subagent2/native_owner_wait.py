from pathlib import Path
import json,subprocess,time,os,hashlib
root=Path('/root/tilelang-metax');r=root/'race_tests/nsa/rep/v211_worker2_c8_bounded_exit_confirmation_subagent2'
m=json.loads((r/'native_launch_manifest.json').read_text());assert not Path(m['onceguard']).exists()
def ident(pid):
 p=Path('/proc')/str(pid);f=(p/'stat').read_text().rsplit(') ',1)[1].split();return {'pid':pid,'ppid':int(f[1]),'pgid':int(f[2]),'starttime_ticks':int(f[19]),'exe':os.readlink(p/'exe')}
owner=ident(os.getpid())
with (r/'native_observer.log').open('w') as log:
 proc=subprocess.Popen(m['argv'],cwd=root,stdout=log,stderr=subprocess.STDOUT,start_new_session=True)
 child=ident(proc.pid);record={'owner':owner,'controller':child,'argv':m['argv'],'originalPopen_held':True,'owner_helperSHA':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()};(r/'native_originalPopen_handle.json').write_text(json.dumps(record,indent=2)+'\n');print('ACTUAL_NATIVE_HANDLE',json.dumps(record),flush=True)
 while True:
  try:code=proc.wait(timeout=30);break
  except subprocess.TimeoutExpired:
   try:
    live=json.loads((r/'live_stage.json').read_text());jobs=json.loads((r/'screen_jobs.json').read_text()) if (r/'screen_jobs.json').exists() else [];clean=[j for j in jobs if j.get('clean_full_reference_record')];print('SAME_HANDLE_PROGRESS',json.dumps({'live':live,'clean_C_total':[sum(j['variant']=='power_v210' for j in clean),len(clean)]}),flush=True)
   except (OSError,json.JSONDecodeError) as e:print('READONLY_PROGRESS_UNAVAILABLE',type(e).__name__,flush=True)
record['originalPopen_actualwait']=code;(r/'native_originalPopen_wait.json').write_text(json.dumps(record,indent=2)+'\n');(r/'native_owner_wait.exit').write_text(str(code)+'\n');print('ORIGINAL_POPEN_ACTUALWAIT',code,flush=True)
if (r/'screen_summary.json').exists():print('FINAL_NATIVE_SUMMARY',(r/'screen_summary.json').read_text(),flush=True)
