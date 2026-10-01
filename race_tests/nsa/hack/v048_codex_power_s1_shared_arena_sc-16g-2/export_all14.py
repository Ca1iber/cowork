import hashlib,importlib.util,json,subprocess
from pathlib import Path
import torch,tilelang
from tilelang.jit.kernel import JITKernel

tilelang.set_log_level('ERROR')
root=Path('/root/tilelang-metax/race_tests/nsa');ident='v048_codex_power_s1_shared_arena_sc-16g-2';rep=root/'rep'/ident
base=Path('/tmp/nsa_export_v048_baseline.py');base.write_bytes(subprocess.check_output(['git','show','39ff49e7b:race_tests/nsa/submission.py']))
sources={'baseline_v28':base,'power_v048':Path('/tmp/nsa_power_v048_shared_arena.py')}
assert hashlib.sha256(base.read_bytes()).hexdigest()=='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
modules={}
for label,p in sources.items():
 spec=importlib.util.spec_from_file_location('export_'+label,p);m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m);modules[label]=m
original=JITKernel.__call__;current={};records=[]
def export_only(kernel,*args,**kwargs):
 current['stage']+=1;out=rep/'codegen_all14'/current['label'];out.mkdir(parents=True,exist_ok=True)
 prefix='case'+str(current['case'])+'_stage'+str(current['stage'])
 device=out/(prefix+'.device.cpp');host=out/(prefix+'.host.cpp')
 kernel.export_sources(kernel_path=str(device),host_path=str(host))
 if not host.exists() or not host.stat().st_size:
  try:original(kernel,*([None]*len(args)))
  except RuntimeError as e:
   if 'non-NULL pointer' not in str(e):raise
  kernel.export_sources(kernel_path=str(device),host_path=str(host))
 assert device.stat().st_size and host.stat().st_size
 records.append({'case':current['case'],'variant':current['label'],'stage':current['stage'],'device_path':str(device),'device_sha256':hashlib.sha256(device.read_bytes()).hexdigest(),'host_path':str(host)})
 return None
JITKernel.__call__=export_only
try:
 for ci,c in enumerate(json.loads((root/'official_case.json').read_text()),1):
  q=torch.empty((c['B'],c['SEQ_LEN'],c['HQ'],c['D']),dtype=torch.float16,device='cuda',requires_grad=True)
  k=torch.empty((c['B'],c['SEQ_LEN'],c['H'],c['D']),dtype=torch.float16,device='cuda',requires_grad=True);v=torch.empty_like(k,requires_grad=True)
  indices=torch.empty((c['B'],c['SEQ_LEN'],c['H'],c['S']),dtype=torch.int32,device='cuda');out=torch.empty_like(q)
  for label,m in modules.items():
   current.update(label=label,case=ci,stage=0)
   m.run_kernel(q,k,v,indices,out,c['B'],c['SEQ_LEN'],c['H'],c['HQ'],c['D'],c['S'],c['block_size'],int(c['is_causal']))
   assert current['stage']>0
  print('exported metadata/source only case',ci,flush=True)
finally:JITKernel.__call__=original
(rep/'all14_codegen_index.json').write_text(json.dumps({'mode':'export only; no GPU kernel execution, timing or reference claim','sources':{k:hashlib.sha256(p.read_bytes()).hexdigest() for k,p in sources.items()},'records':records},indent=2)+'\n')
