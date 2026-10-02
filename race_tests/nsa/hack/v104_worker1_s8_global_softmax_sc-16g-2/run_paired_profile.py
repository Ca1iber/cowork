from pathlib import Path
from decimal import Decimal
import json,hashlib,subprocess,os,time,datetime,csv,traceback
root=Path('/root/tilelang-metax');p=root/'race_tests/nsa';v='v104_worker1_s8_global_softmax_sc-16g-2';r=p/'rep'/v/'paired_profile'
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
import shlex,shutil,re
assert (r.parent/'formal/diagnostic.exit').read_text().strip()=='0'
selected=json.loads((r.parent/'formal_positive_cases_for_risk.json').read_text())['cases']
if selected:assert (r.parent/'risk/diagnostic.exit').read_text().strip()=='0'
assert (r.parent/'metadata_all14/stage.exit').read_text().strip()=='0'
assert plan['case']==12 and plan['CLI_counts']==2 and plan['predeclared_scope']['unattributed_write_residual_allowed']==[0,512]
fd=os.open(r/'launch_once.lock',os.O_WRONLY|os.O_CREAT|os.O_EXCL,0o600);os.write(fd,json.dumps({'utc':now(),'master_pid':os.getpid(),'stage':'profile'}).encode());os.close(fd)
verify();initial=cgstate();jobs=[];failure=None;active=None
try:
 for i,spec in enumerate(plan['jobs'],1):
  verify();before=cgstate();assert before['oom_kill']==initial['oom_kill'];label=spec['variant'];d=r/('case12_'+label);d.mkdir(exist_ok=False);(d/'raw').mkdir();logpath=d/'mcprofiler.log';monpath=d/'memory_samples.jsonl';smipath=d/'mx_smi_samples.jsonl'
  target=['env','MACA_PATH=/opt/maca','PYTHONDONTWRITEBYTECODE=1','PYTHONWARNINGS=ignore','PYTHONPATH='+str(root)+':'+str(p),'NSA_VARIANT_SOURCE='+manifest['sources'][label]['path'],'NSA_PROFILE_MODE=mctx','MCTX_TARGET_PROFILE_PATH='+str(d/'raw'),manifest['tools']['python']['path'],'-u',manifest['tools']['profile_driver']['path'],'12']
  cmd=[manifest['tools']['timeout']['path'],'480s',manifest['tools']['mcProfiler']['path'],'perf_exec','--cmdline',shlex.join(target),'--casename','nsa_worker1_v104_paired_'+label+'_case12','--metrics']+plan['metrics']+['--counts','2','--custom','--per-kernel','--cwd',str(root)]
  identity={'index':i,'variant':label,'case':12,'command':cmd,'target_argv':target,'source':manifest['sources'][label],'before':before,'planned_pid_file':str(d/'mcprof.pid'),'planned_pgid_file':str(d/'mcprof.pgid'),'reference_checks':0};(d/'launch_plan.json').write_text(json.dumps(identity,indent=2)+'\n')
  with logpath.open('w') as log,monpath.open('w') as mon,smipath.open('w') as smi:
   active=subprocess.Popen(cmd,cwd=Path(manifest['tools']['mcProfiler']['path']).parent,stdout=log,stderr=subprocess.STDOUT,start_new_session=True);pid=active.pid;pgid=os.getpgid(pid);identity.update(pid=pid,pgid=pgid);(d/'mcprof.pid').write_text(str(pid)+'\n');(d/'mcprof.pgid').write_text(str(pgid)+'\n');(r/'active_job.json').write_text(json.dumps(identity,indent=2)+'\n');abort=None;count=0
   while active.poll() is None:
    sample=proc_sample(pid);mon.write(json.dumps(sample)+'\n');mon.flush();count+=1;x=subprocess.run([manifest['tools']['mx_smi']['path']],capture_output=True,text=True);smi.write(json.dumps({'utc':now(),'observed_job_pid':pid,'exit_code':x.returncode,'stdout':x.stdout,'stderr':x.stderr,'not_perkernel_occupancy':True})+'\n');smi.flush()
    if sample['cgroup']['oom_kill']!=before['oom_kill']:abort='OOM increment during profile'
    abort=abort or anomaly(logpath)
    if abort:
     try:os.killpg(pgid,15)
     except ProcessLookupError:pass
     break
    time.sleep(2)
   code=active.wait();active=None
  after=cgstate();reason=abort or ('CLI nonzero '+str(code) if code else None) or anomaly(logpath)
  if after['oom_kill']!=before['oom_kill']:reason=reason or 'terminal OOM increment'
  verify();reportdirs=[line.partition('[info] output path is: ')[2].strip() for line in logpath.read_text(errors='replace').splitlines() if line.startswith('[info] output path is: ')];reportdir=Path(reportdirs[-1]) if reportdirs else None
  if reportdir and (reportdir/'report.txt.json').is_file():shutil.copytree(reportdir,d/'report_bundle')
  else:reason=reason or 'missing report bundle'
  item={'index':i,'case':12,'variant':label,'pid':pid,'pgid':pgid,'CLI_exit':code,'stop_reason':reason,'report_dir':str(reportdir) if reportdir else None,'memory_samples':count,'cgroup_before':before,'cgroup_after':after,'native_reference_checks':0};(d/'terminal_result.json').write_text(json.dumps(item,indent=2)+'\n');jobs.append(item);(r/'completed_jobs.json').write_text(json.dumps(jobs,indent=2)+'\n');print('PROFILE_CLI_TERMINAL',i,label,code,reason,flush=True)
  if reason:failure=reason;break
except BaseException as error:
 failure='orchestration exception '+repr(error);(r/'orchestration_failure.log').write_text(traceback.format_exc())
 if active is not None:
  try:os.killpg(active.pid,15)
  except ProcessLookupError:pass
  active.wait()
complete=not failure and len(jobs)==2 and all(x['CLI_exit']==0 and not x['stop_reason'] for x in jobs);(r/'stage_result.json').write_text(json.dumps({'UTC':now(),'complete_CLI_only_not_counter_gate':complete,'failure':failure,'all_jobs':jobs,'cgroup_initial':initial,'cgroup_final':cgstate(),'native_reference_checks':0,'analysis_required':True,'no_retry':True},indent=2)+'\n');(r/'stage.exit').write_text(('0' if complete else '1')+'\n');raise SystemExit(0 if complete else 1)
