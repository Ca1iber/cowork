from pathlib import Path
import json,hashlib,subprocess,os,re,math,shutil
root=Path('/root/tilelang-metax');v='v231_worker2_c8_paired_counter_evidence_subagent2';r=root/'race_tests/nsa/rep'/v;sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
groups={'L2C Hit Rate':'Memory Statistics','Global Memory Read bytes':'Memory Statistics','Global Memory Write bytes':'Memory Statistics','average latency per load instruction':'Workgroup Memory','average conflict cycles per instruction':'Workgroup Memory','shared memory access efficiency':'Workgroup Memory','Achieved waves':'Occupancy','Dispatched waves':'Occupancy','AP MTE Duty ratio':'GPU Throughput Statistics','AP MMA Duty ratio':'GPU Throughput Statistics'}
def audit_primary(stage):
 text=(r/(stage+'_observation/child.log')).read_text();paths=re.findall(r'please check report file (\S+)',text);assert len(paths)==1
 dst=r/(stage+'_report_bundle');dst.mkdir(exist_ok=True)
 for q in Path(paths[0]).iterdir():
  if q.is_file():shutil.copyfile(q,dst/q.name)
 records=[];ok=True
 for i in [1,2]:
  q=dst/f'{i}_native_sparse_attention_kernel_dumped_result.json';d=json.loads(q.read_text());vals={};errors=[]
  for name,group in groups.items():
   a=[z for z in d[group] if z['name']==name];assert len(a)==1;z=a[0];val=z['data'];vals[name]=val
   if isinstance(val,bool) or not isinstance(val,(int,float)) or not math.isfinite(val) or z.get('isError'):errors.append(z)
  residual=vals['Global Memory Write bytes']-16777216 if not errors else None;passed=not errors and 0<=residual<=512;ok=ok and passed
  records.append({'record':i,'rawSHA':sha(q),'metrics':vals,'errors':errors,'residual':residual,'finite_noerror_payload_pass':passed,'AchDisp_no_equalitygate':True})
 cli=int((r/(stage+'_CLI_actualwait.exit')).read_text());ok=ok and cli==0 and not any(x.strip()=='Killed' for x in text.splitlines());gate={'stage':stage,'CLIwait':cli,'records':records,'gate':0 if ok else 1};(r/(stage+'_primary_raw_gate.json')).write_text(json.dumps(gate,indent=2)+'\n');return gate

def identity(pid):
 p=Path('/proc')/str(pid);f=(p/'stat').read_text().rsplit(') ',1)[1].split();return {'pid':pid,'ppid':int(f[1]),'pgid':int(f[2]),'starttime_ticks':int(f[19]),'exe':os.readlink(p/'exe')}
if __name__=='__main__':
 owner=identity(os.getpid());rows=[]
 for stage in ['parent_profile','candidate_profile']:
  if stage=='candidate_profile':
   assert rows[0]['actualwait']==0 and json.loads((r/'parent_profile_primary_raw_gate.json').read_text())['gate']==0
  m=json.loads((r/(stage+'_launch_manifest.json')).read_text())
  for q in m['fixed_inputs']:assert sha(Path(q['path']))==q['sha256']
  argv=m['original_observer_argv']
  with (r/(stage+'_owner.log')).open('w') as log:
   p=subprocess.Popen(argv,cwd=root,stdout=log,stderr=subprocess.STDOUT,start_new_session=True);rec={'owner':owner,'stage':stage,'identity':identity(p.pid),'argv':argv,'originalPopen_held':True};(r/(stage+'_originalPopen_handle.json')).write_text(json.dumps(rec,indent=2)+'\n');print('PAIR_ORIGINAL_HANDLE',json.dumps(rec),flush=True)
   while True:
    try:code=p.wait(timeout=30);break
    except subprocess.TimeoutExpired:print('PAIR_SAME_HANDLE',stage,flush=True)
  rec['actualwait']=code;rows.append(rec);(r/(stage+'_originalPopen_wait.json')).write_text(json.dumps(rec,indent=2)+'\n');(r/'paired_stage_results.json').write_text(json.dumps(rows,indent=2)+'\n');print('PAIR_STAGE_WAIT',stage,code,flush=True)
  if code!=0:break
  try:gate=audit_primary(stage)
  except Exception as e:
   (r/(stage+'_raw_gate_exception.json')).write_text(json.dumps({'exception':str(e),'stage':stage,'candidate_suffix_not_launched':stage=='parent_profile'},indent=2)+'\n');break
  print('PAIR_RAW_GATE',stage,gate['gate'],flush=True)
  if gate['gate']!=0:break
 complete=len(rows)==2 and all(q['actualwait']==0 for q in rows) and all((r/(q+'_primary_raw_gate.json')).exists() and json.loads((r/(q+'_primary_raw_gate.json')).read_text())['gate']==0 for q in ['parent_profile','candidate_profile'])
 (r/'paired_owner.exit').write_text('0\n' if complete else '1\n');print('PAIR_TERMINAL',int(not complete),flush=True)
 raise SystemExit(0 if complete else 1)
