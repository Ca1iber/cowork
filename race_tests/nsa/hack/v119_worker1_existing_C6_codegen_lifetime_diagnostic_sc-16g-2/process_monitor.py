from pathlib import Path
import os

def read_pid_metadata(pid,proc_root=Path('/proc'),after_phase=None):
 q=proc_root/str(pid);out={'pid':int(pid),'memory_KiB':{},'all_thread_children':{},'phase_errors':[]}
 def error(phase,e):out['phase_errors'].append({'phase':phase,'error':repr(e),'errno':getattr(e,'errno',None),'filename':getattr(e,'filename',None)})
 try:
  raw=(q/'stat').read_text();i=raw.rfind(')');a=raw[i+2:].split();out.update(ppid=int(a[1]),pgid=int(a[2]),state=a[0],starttime_ticks=int(a[19]),comm=raw[raw.index('(')+1:i])
 except (OSError,ValueError,IndexError) as e:error('stat',e)
 if after_phase:after_phase('stat')
 try:out['exe']=os.readlink(q/'exe')
 except OSError as e:error('exe_readlink',e)
 if after_phase:after_phase('exe_readlink')
 try:out['memory_KiB']={l.split(':')[0]:int(l.split()[1]) for l in (q/'status').read_text().splitlines() if l.startswith(('VmRSS:','VmHWM:','VmSize:'))}
 except (OSError,ValueError,IndexError) as e:error('status',e)
 if after_phase:after_phase('status')
 try:out['cgroup']=(q/'cgroup').read_text()
 except OSError as e:error('cgroup',e)
 try:
  threads=list((q/'task').iterdir())
 except OSError as e:error('task_iterdir',e);threads=[]
 for t in threads:
  try:out['all_thread_children'][t.name]=[int(n) for n in (t/'children').read_text().split()]
  except (OSError,ValueError) as e:error('thread_children_'+t.name,e)
 out['critical_identity_available']=all(k in out for k in ['pid','starttime_ticks','exe'])
 return out

def identity_decision(proc,row,expected):
 code=proc.poll()
 if code is not None:return {'decision':'terminal_confirmed','returncode':code,'authority':'original_Popen_handle','before_identity_judgement':True}
 if row is not None and row.get('critical_identity_available'):
  good=all(row.get(k)==expected.get(k) for k in ['pid','starttime_ticks','exe'])
  return {'decision':'alive_identity_match' if good else 'alive_identity_mismatch','returncode':None,'authority':'live_critical_identity_and_Popen'}
 return {'decision':'identity_unavailable_pending_terminal_confirmation','returncode':None,'authority':'Popen_still_live_or_transition; no verified_signal'}
