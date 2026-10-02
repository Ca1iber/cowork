from pathlib import Path
import subprocess,sys,time,json,ast,textwrap,os
from unittest.mock import patch
import native_whole_cgroup_utils as U
r=U.r;h=U.h;controller=(h/'run_native_screen.py').read_text();ast.parse(controller);ast.parse((h/'native_whole_cgroup_utils.py').read_text())
a=controller.index('     critical_reason=None;confirmation_mode=False');b=controller.index('     changed=True',a);decision=compile(textwrap.dedent(controller[a:b]),'<actual_controller_decision>','exec')
results=[]
def child():
 p=subprocess.Popen(['/opt/conda/bin/python','-S','-u','-c','import sys;print("READY",flush=True);sys.stdin.read()'],stdin=subprocess.PIPE,stdout=subprocess.PIPE,stderr=subprocess.PIPE);assert p.stdout.readline().strip()==b'READY';return p
proc=child();original=U.info(proc.pid);assert U.identity_equal(original,original)
try:
 realread=Path.read_text;realiter=Path.iterdir
 def status_error(path,*a,**kw):
  if str(path)==f'/proc/{proc.pid}/status':raise PermissionError(13,'controlled optional status error',str(path))
  return realread(path,*a,**kw)
 def task_error(path):
  if str(path)==f'/proc/{proc.pid}/task':raise FileNotFoundError(2,'controlled optional task error',str(path))
  return realiter(path)
 with patch.object(Path,'read_text',status_error),patch.object(Path,'iterdir',task_error):partial=U.info(proc.pid)
 assert U.identity_equal(original,partial) and {e['phase'] for e in partial['metadata_errors']}>= {'status','task'};results.append({'case':'optional_errors_preserve_realcritical','pass':True,'phase_errors':partial['metadata_errors']})
 def env(current):return {'proc':proc,'U':U,'time':time,'owned':{proc.pid:original},'current':{proc.pid:current} if current else {},'pending_start':None,'pending_deadline':None,'missing_elapsed':0.0,'job':{},'snap':{}}
 e=env({**original,'exe':'/explicit-different'});exec(decision,e);assert e['critical_reason']=='OWNED_MAIN_EXPLICIT_CRITICAL_TUPLE_CHANGE';results.append({'case':'explicitnonnull_mismatch_immediate','pass':True})
 missing={**original,'exe':None};e=env(missing);exec(decision,e);assert e['critical_reason'] is None and e['confirmation_mode']
 proc.stdin.close();code=proc.wait(timeout=2);assert code==0;e['current']={};exec(decision,e);assert e['state']=='terminal' and e['critical_reason'] is None;results.append({'case':'real_Popen_terminal_after_missing','pass':True,'actualwait':code,'events':e['job']['critical_confirmation_events']})
finally:
 if proc.poll() is None:proc.stdin.close();proc.wait(timeout=2)
proc=child();original=U.info(proc.pid)
try:
 e=env({**original,'exe':None});exec(decision,e);assert e['critical_reason'] is None
 e['current']={proc.pid:original};exec(decision,e);assert e['state']=='match' and e['pending_start'] is None and e['critical_reason'] is None;results.append({'case':'same_originaltuple_restored','pass':True})
 e=env({**original,'exe':None});e['pending_start']=time.monotonic()-1.1;e['pending_deadline']=time.monotonic()-0.1;exec(decision,e);assert e['critical_reason']=='CRITICAL_MISSING_CONFIRMATION_1S_EXPIRED';priorabort=e['critical_reason'];proc.stdin.close();code=proc.wait(timeout=2);assert code==0 and priorabort=='CRITICAL_MISSING_CONFIRMATION_1S_EXPIRED';results.append({'case':'alive_unverifiable_timeout_thenwait0_priorabortkept','pass':True,'actualwait':code,'priorabort':priorabort,'confirmation_timestamps_synthetic_not_latency':True})
finally:
 if proc.poll() is None:proc.stdin.close();proc.wait(timeout=2)
out={'preflight_cases':results,'all_pass':all(q['pass'] for q in results),'actual_processes':'two real Python-S stdlib children, no signal sent','metadata_error_injection_only':True,'no_fabricated_nativeCSV_or_latency':True,'GPU_attention_fullreference_native':[0,0,0,0]};(r/'controlled_preflight.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2))
