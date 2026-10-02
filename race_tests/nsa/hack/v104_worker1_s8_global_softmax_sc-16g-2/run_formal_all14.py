from pathlib import Path
from decimal import Decimal
import json,hashlib,subprocess,os,time,datetime,csv,traceback
root=Path('/root/tilelang-metax');p=root/'race_tests/nsa';v='v104_worker1_s8_global_softmax_sc-16g-2';r=p/'rep'/v/'formal'
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
assert plan['phase']=='leader_GO_fixed_once'
fd=os.open(r/'launch_once.lock',os.O_WRONLY|os.O_CREAT|os.O_EXCL,0o600);os.write(fd,json.dumps({'utc':now(),'master_pid':os.getpid(),'diagnostic':v}).encode());os.close(fd)
initial=verify();global_before=cgstate();jobs=[];failure=None;active=None
(r/'diagnostic_start.json').write_text(json.dumps({'utc':now(),'master_pid':os.getpid(),'sources':initial,'cgroup_before':global_before,'protocol':plan,'no_metadata_in_native_job':True},indent=2)+'\n')
try:
 for i,spec in enumerate(plan['jobs'],1):
  label=spec['variant'];ci=spec['case']
  verify();d=r/('job_'+str(i).zfill(3)+'_case'+str(ci)+'_'+label);d.mkdir(exist_ok=False);csvpath=d/('native_case'+str(ci)+'.csv');logpath=d/'native.log';samples=d/'memory_samples.jsonl';before=cgstate()
  if before['oom_kill']!=global_before['oom_kill']:failure='OOM changed before next job';break
  env=os.environ.copy();env.update({'MACA_PATH':'/opt/maca','PYTHONDONTWRITEBYTECODE':'1','PYTHONWARNINGS':'ignore','PYTHONPATH':'/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa','NSA_VARIANT_SOURCE':manifest['sources'][label]['path'],'NSA_RESULTS_PATH':str(csvpath),'NSA_CASES':str(ci)})
  cmd=[manifest['tools']['python']['path'],'-u',manifest['wrapper_path']]
  identity={'index':i,'case':ci,'variant':label,'utc_before':now(),'command':cmd,'source':manifest['sources'][label],'env_explicit':{k:env[k] for k in ['MACA_PATH','PYTHONDONTWRITEBYTECODE','PYTHONWARNINGS','PYTHONPATH','NSA_VARIANT_SOURCE','NSA_RESULTS_PATH','NSA_CASES']},'planned_pid_file':str(d/'native.pid'),'planned_pgid_file':str(d/'native.pgid'),'monitor_file':str(samples),'cgroup_before':before}
  (d/'launch_plan.json').write_text(json.dumps(identity,indent=2)+'\n')
  with logpath.open('w') as log, samples.open('w') as monitor:
   active=subprocess.Popen(cmd,cwd=root,env=env,stdout=log,stderr=subprocess.STDOUT,start_new_session=True);pid=active.pid;pgid=os.getpgid(pid);(d/'native.pid').write_text(str(pid)+'\n');(d/'native.pgid').write_text(str(pgid)+'\n');identity.update(pid=pid,pgid=pgid,utc_started=now());(d/'active_identity.json').write_text(json.dumps(identity,indent=2)+'\n');(r/'active_job.json').write_text(json.dumps(identity,indent=2)+'\n')
   count=0;observed=[];abort=None
   while active.poll() is None:
    sample=proc_sample(pid);monitor.write(json.dumps(sample)+'\n');monitor.flush();observed.append(sample);count+=1
    if sample['cgroup']['oom_kill']!=before['oom_kill']:abort='OOM counter increment during native job'
    abort=abort or anomaly(logpath)
    if abort:
     try:os.killpg(pgid,15)
     except ProcessLookupError:pass
     break
    time.sleep(2)
   code=active.wait();active=None
  after=cgstate();records=csv_records(csvpath);passes=[x for x in records if x.get('status')=='PASS'];source_after=verify();reason=abort or ('native nonzero exit '+str(code) if code else None)
  if after['oom_kill']!=before['oom_kill']:reason=reason or 'OOM counter increment at terminal'
  reason=reason or anomaly(logpath)
  if len(records)!=1 or len(passes)!=1 or records[0].get('case')!=str(ci):reason=reason or 'missing/wrong/extra native CSV row'
  if passes:
   value=Decimal(passes[0]['latency_ms'])
   if not value.is_finite() or value<=0:reason=reason or 'invalid native latency'
  item={'index':i,'case':ci,'variant':label,'pid':pid,'pgid':pgid,'utc_terminal':now(),'native_exit':code,'cgroup_before':before,'cgroup_after':after,'csv':str(csvpath),'log':str(logpath),'observed_PASS_records':len(passes),'records':records,'samples':count,'stop_reason':reason,'source_hashes_after':source_after};(d/'terminal_result.json').write_text(json.dumps(item,indent=2)+'\n');jobs.append(item);(r/'completed_jobs.json').write_text(json.dumps(jobs,indent=2)+'\n');print('TERMINAL',i,label,code,len(passes),reason,flush=True)
  if reason:failure=reason;break
except BaseException as error:
 failure='orchestration exception: '+repr(error);(r/'orchestration_failure.log').write_text(traceback.format_exc())
 if active is not None:
  try:os.killpg(active.pid,15)
  except ProcessLookupError:pass
  active.wait();active=None
actual=[]
for d in sorted(r.glob('job_*')):
 for f in d.glob('native_case*.csv'):
  for row in csv_records(f):
   if row.get('status')=='PASS':actual.append({'job':d.name,'variant':d.name.split('_',3)[3],'row':row,'CSV':str(f)})
counts={label:sum(x['variant']==label for x in actual) for label in manifest['sources']};allzero=len(jobs)==168 and all(x['native_exit']==0 and not x['stop_reason'] for x in jobs) and not failure
final={'utc':now(),'status':'formal_all14_completed' if allzero else 'formal_all14_failed_prefix_retained','failure':failure,'native_jobs_terminal_recorded':len(jobs),'planned_native_jobs':168,'candidate_full_reference_PASS_records':counts['power_v104'],'all_sources_PASS_records':len(actual),'variant_counts':counts,'runtime_protocol_completed':allzero,'cgroup_initial':global_before,'cgroup_final':cgstate(),'all_jobs':jobs,'candidate_exact_archive_sha256':manifest['sources']['power_v104']['sha256'],'old_v101_gate_unchanged':137,'no_adaptive_retry':True,'data_scope':'all14 native originalW10R50,not OJ score/no-reg verdict'}
(r/'diagnostic_result.json').write_text(json.dumps(final,indent=2)+'\n');(r/'observed_reference_rows.json').write_text(json.dumps(actual,indent=2)+'\n');(r/'diagnostic.exit').write_text(('0' if allzero else '1')+'\n');print('FORMAL_ALL14_TERMINAL',final['status'],counts,flush=True);raise SystemExit(0 if allzero else 1)
