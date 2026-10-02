from pathlib import Path
import subprocess,json,datetime,shlex,time,hashlib,sys
root=Path('/root/tilelang-metax');v='v200_worker2_baseline_profile_subagent2'
r=root/'race_tests/nsa/rep'/v
while not (r/'post_baseline.exit').exists():
 assert Path('/proc/4850/status').exists(),'post pipeline disappeared without terminal gate'
 time.sleep(2)
assert (r/'post_baseline.exit').read_text().strip()=='0'
while Path('/proc/4850/status').exists():
 if 'State:\tZ' in Path('/proc/4850/status').read_text():break
 time.sleep(2)
out=r/'mctracer_case5_parent_v084';out.mkdir()
source=root/'race_tests/nsa/submission/v084_codex_power_s1_d32_d128_pair_sc-16g-2/submission.py'
driver=root/'race_tests/nsa/hack/v004_codex_power_s1_reprofile_sc-16g-2/profile_variant_v28.py'
target=['env','MACA_PATH=/opt/maca','PYTHONDONTWRITEBYTECODE=1','PYTHONWARNINGS=ignore',f'PYTHONPATH={root}:{root}/race_tests/nsa',f'NSA_VARIANT_SOURCE={source}','NSA_PROFILE_MODE=mctx','/opt/conda/bin/python','-u',str(driver),'5']
cmd=['timeout','--kill-after=5s','120s','/opt/maca/bin/mcTracer','--mctx','--odname',str(out),'--name','parent_case5',shlex.join(target)]
identity={'timestamp_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'source_sha256':hashlib.file_digest(source.open('rb'),'sha256').hexdigest(),'driver_sha256':hashlib.file_digest(driver.open('rb'),'sha256').hexdigest(),'command':cmd,'scope':'single bounded diagnostic after fixed12 profiles+6resource terminal; driver gradFalse warm10 then20range calls; native gradTrue W10R50 differs','full_reference_count':0,'no_retry':True,'purpose':'timeline/stages/launch gaps only; not official timing or optimization verdict','inventory_correction':'mcTracer not in PATH; actual /opt/maca/bin/mcTracer exists and help0/version3.7.1.5-ef9e10e'}
(out/'plan.json').write_text(json.dumps(identity,indent=2)+'\n')
log=(out/'mcTracer.log').open('w');p=subprocess.Popen(cmd,cwd=root,stdout=log,stderr=subprocess.STDOUT)
(out/'pid').write_text(str(p.pid)+'\n')
while p.poll() is None:
 (r/'live_stage.json').write_text(json.dumps({'stage':'single_bounded_mcTracer','case':5,'variant':'parent_v084','pid':p.pid,'timestamp_utc':datetime.datetime.now(datetime.timezone.utc).isoformat()})+'\n')
 time.sleep(2)
log.close();code=p.returncode;(out/'exit_code.txt').write_text(str(code)+'\n')
files=[{'path':str(f.relative_to(out)),'size':f.stat().st_size,'sha256':hashlib.file_digest(f.open('rb'),'sha256').hexdigest()} for f in out.rglob('*') if f.is_file()]
(r/'tracer_artifact_inventory.json').write_text(json.dumps({'tool_exit':code,'full_reference_count':0,'no_retry':True,'files':files,'oom':Path('/sys/fs/cgroup/memory/memory.oom_control').read_text()},indent=2)+'\n')
(r/'live_stage.json').write_text(json.dumps({'stage':'evidence_terminal_pending_report','trace_tool_exit':code,'timestamp_utc':datetime.datetime.now(datetime.timezone.utc).isoformat()})+'\n')
print('TRACE_TOOL_TERMINAL',code,flush=True)
