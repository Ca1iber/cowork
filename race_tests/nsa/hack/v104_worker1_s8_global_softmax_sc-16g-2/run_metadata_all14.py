from pathlib import Path
from decimal import Decimal
import json,hashlib,subprocess,os,time,datetime,csv,traceback
root=Path('/root/tilelang-metax');p=root/'race_tests/nsa';v='v104_worker1_s8_global_softmax_sc-16g-2';r=p/'rep'/v/'metadata_all14'
manifest=json.loads((r/'source_manifest.json').read_text());plan=json.loads((r/'execution_plan.json').read_text());shared=json.loads((r/'shared_inputs_identity.json').read_text())['files'];cg=Path('/sys/fs/cgroup/memory')
def now():return datetime.datetime.now(datetime.timezone.utc).isoformat()
def cgstate():
 fields={n:(cg/n).read_text() for n in ['memory.limit_in_bytes','memory.usage_in_bytes','memory.max_usage_in_bytes','memory.oom_control','memory.failcnt']};fields['oom_kill']=int(next(l.split()[1] for l in fields['memory.oom_control'].splitlines() if l.startswith('oom_kill ')));return fields
def verify():
 out={}
 for label,x in manifest['sources'].items():
  f=Path(x['path']);assert f.is_file(),label;digest=hashlib.sha256(f.read_bytes()).hexdigest();assert digest==x['sha256'],label;out[label]=digest
 for f,digest in shared.items():assert hashlib.sha256((root/f).read_bytes()).hexdigest()==digest,f
 for name,x in manifest['tools'].items():assert Path(x['path']).is_file() and hashlib.sha256(Path(x['path']).read_bytes()).hexdigest()==x['sha256'],name
 assert (p/'rep/v101_worker1_s2_fixed_selection_sc-16g-2/target_screen.exit').read_text().strip()=='137'
 return out
def proc_sample(pid):
 records={}
 for d in Path('/proc').iterdir():
  if not d.name.isdigit():continue
  try:
   s=(d/'stat').read_text();i=s.rfind(')');tail=s[i+2:].split();n=int(d.name);records[n]={'pid':n,'ppid':int(tail[1]),'pgid':int(tail[2]),'state':tail[0],'comm':s[s.index('(')+1:i]}
  except (OSError,ValueError,IndexError):continue
 chosen={pid};changed=True
 while changed:
  extra={n for n,x in records.items() if x['ppid'] in chosen or x['pgid']==pid};changed=not extra.issubset(chosen);chosen|=extra
 out=[]
 for n in sorted(chosen):
  if n not in records:continue
  x=records[n]
  try:x['memory_kib']={l.split(':',1)[0]:int(l.split()[1]) for l in (Path('/proc')/str(n)/'status').read_text().splitlines() if l.startswith(('VmRSS:','VmHWM:','VmSize:'))}
  except (OSError,ValueError,IndexError):x['memory_kib']={}
  out.append(x)
 return {'utc':now(),'native_pid':pid,'processes':out,'cgroup':cgstate(),'scope':'2s sampled observations,not guaranteed final peak or full children coverage'}
def csv_records(path):
 if not path.exists():return []
 try:return list(csv.DictReader(path.open()))
 except (OSError,csv.Error):return []
def anomaly(log):
 if not log.exists():return None
 text=log.read_text(errors='replace').lower()
 if 'killed' in text:return 'inner Killed log evidence'
 if 'out of memory' in text:return 'explicit inner out-of-memory log evidence'
 return None
assert (r.parent/'formal/diagnostic.exit').read_text().strip()=='0'
selection=json.loads((r.parent/'formal_positive_cases_for_risk.json').read_text())['cases']
if selection:assert (r.parent/'risk/diagnostic.exit').read_text().strip()=='0'
assert len(plan['jobs'])==42 and plan['attention_calls']==0 and plan['reference_checks']==0
fd=os.open(r/'launch_once.lock',os.O_WRONLY|os.O_CREAT|os.O_EXCL,0o600);os.write(fd,json.dumps({'utc':now(),'master_pid':os.getpid(),'phase':'metadataonly42'}).encode());os.close(fd)
verify();initial=cgstate();jobs=[];failure=None;active=None
(r/'stage_start.json').write_text(json.dumps({'utc':now(),'master_pid':os.getpid(),'cgroup':initial,'attention_calls':0,'reference_checks':0,'plan':plan},indent=2)+'\n')
try:
 for i,spec in enumerate(plan['jobs']):
  verify();before=cgstate();assert before['oom_kill']==initial['oom_kill'];d=r/('job_'+str(i).zfill(2)+'_case'+str(spec['case'])+'_'+spec['variant']);d.mkdir(exist_ok=False);logpath=d/'metadata.log';samples=d/'memory_samples.jsonl';env=os.environ.copy();env.update(MACA_PATH='/opt/maca',PYTHONDONTWRITEBYTECODE='1',PYTHONWARNINGS='ignore',PYTHONPATH=str(root)+':'+str(p));cmd=[manifest['tools']['python']['path'],'-u',manifest['tools']['export_case_metadata']['path'],str(i)]
  identity={'ordinal':i,'case':spec['case'],'variant':spec['variant'],'command':cmd,'source':spec['source'],'utc_before':now(),'planned_pid_file':str(d/'metadata.pid'),'planned_pgid_file':str(d/'metadata.pgid'),'cgroup_before':before};(d/'launch_plan.json').write_text(json.dumps(identity,indent=2)+'\n')
  with logpath.open('w') as log,samples.open('w') as monitor:
   active=subprocess.Popen(cmd,cwd=root,env=env,stdout=log,stderr=subprocess.STDOUT,start_new_session=True);pid=active.pid;pgid=os.getpgid(pid);(d/'metadata.pid').write_text(str(pid)+'\n');(d/'metadata.pgid').write_text(str(pgid)+'\n');identity.update(pid=pid,pgid=pgid);(r/'active_job.json').write_text(json.dumps(identity,indent=2)+'\n');abort=None;count=0
   while active.poll() is None:
    sample=proc_sample(pid);monitor.write(json.dumps(sample)+'\n');monitor.flush();count+=1
    if sample['cgroup']['oom_kill']!=before['oom_kill']:abort='OOM increment during metadata'
    abort=abort or anomaly(logpath)
    if abort:
     try:os.killpg(pgid,15)
     except ProcessLookupError:pass
     break
    time.sleep(2)
   code=active.wait();active=None
  after=cgstate();reason=abort or ('metadata nonzero '+str(code) if code else None) or anomaly(logpath)
  if after['oom_kill']!=before['oom_kill']:reason=reason or 'terminal OOM increment'
  verify();evidence=r.parent/'metadata_all14_records'/('job_'+str(i)+'.json');record=None
  if not reason:
   record=json.loads(evidence.read_text());assert record['attention_calls']==0 and record['reference_checks']==0 and len(record['records'])==1;item=record['records'][0]
   for name in ['device','host']:
    f=Path(item[name+'_path']);assert f.is_file() and hashlib.sha256(f.read_bytes()).hexdigest()==item[name+'_sha256']
   static=[manifest['tools']['python']['path'],manifest['tools']['validator']['path'],spec['source']['path'],'--generated-code',spec['device_path']];(d/'static_command.json').write_text(json.dumps({'command':static},indent=2)+'\n');result=subprocess.run(static,cwd=root,capture_output=True,text=True);(d/'static.log').write_text(result.stdout+result.stderr);(d/'static.exit').write_text(str(result.returncode)+'\n')
   if result.returncode:reason='static validation nonzero '+str(result.returncode)
  terminal={'ordinal':i,'case':spec['case'],'variant':spec['variant'],'pid':pid,'pgid':pgid,'metadata_exit':code,'stop_reason':reason,'cgroup_before':before,'cgroup_after':after,'samples':count,'attention_calls':0,'reference_checks':0,'record':record};(d/'terminal_result.json').write_text(json.dumps(terminal,indent=2)+'\n');jobs.append(terminal);(r/'completed_jobs.json').write_text(json.dumps(jobs,indent=2)+'\n');print('METADATA_TERMINAL',i,spec['case'],spec['variant'],code,reason,flush=True)
  if reason:failure=reason;break
except BaseException as error:
 failure='orchestration exception '+repr(error);(r/'orchestration_failure.log').write_text(traceback.format_exc())
 if active is not None:
  try:os.killpg(active.pid,15)
  except ProcessLookupError:pass
  active.wait()
complete=not failure and len(jobs)==42 and all(x['metadata_exit']==0 and not x['stop_reason'] for x in jobs);final={'utc':now(),'complete':complete,'failure':failure,'terminal_jobs':len(jobs),'planned_jobs':42,'attention_calls':0,'reference_checks':0,'all_jobs':jobs,'cgroup_initial':initial,'cgroup_final':cgstate(),'no_retry':True,'no_performance_waiver_for_identical_codegen':True};(r/'stage_result.json').write_text(json.dumps(final,indent=2)+'\n');(r/'stage.exit').write_text(('0' if complete else '1')+'\n');raise SystemExit(0 if complete else 1)
