from pathlib import Path
import json,hashlib,importlib.util
p=Path('/root/tilelang-metax/race_tests/nsa');r=p/'rep/v101_worker1_s2_fixed_selection_sc-16g-2';sources=json.loads((r/'runner_sources_manifest.json').read_text())['sources'];s=sources['power_v101'];f=Path(s['path']);assert hashlib.sha256(f.read_bytes()).hexdigest()==s['sha256']
import tilelang
from tilelang.jit.kernel import JITKernel
import torch
tilelang.set_log_level('ERROR');spec=importlib.util.spec_from_file_location('candidate101',f);module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module);assert len(module._KERNEL_CACHE)==14 and not any(isinstance(x,JITKernel) for x in module._KERNEL_CACHE.values())
c=json.loads((p/'official_case.json').read_text())[9];out=r/'codegen_precompile/power_v101';out.mkdir(parents=True,exist_ok=True);calls=[];old=JITKernel.__call__
def export_only(kernel,*args,**kwargs):
 device=out/'case10_stage1.device.cpp';host=out/'case10_stage1.host.cpp';kernel.export_sources(kernel_path=str(device),host_path=str(host));calls.append({'device_path':str(device),'host_path':str(host),'device_sha256':hashlib.sha256(device.read_bytes()).hexdigest(),'host_sha256':hashlib.sha256(host.read_bytes()).hexdigest()});return None
JITKernel.__call__=export_only
try:
 q=torch.empty((c['B'],c['SEQ_LEN'],c['HQ'],c['D']),dtype=torch.float16,device='cuda',requires_grad=True);k=torch.empty((c['B'],c['SEQ_LEN'],c['H'],c['D']),dtype=torch.float16,device='cuda',requires_grad=True);val=torch.empty_like(k);ind=torch.empty((c['B'],c['SEQ_LEN'],c['H'],c['S']),dtype=torch.int32,device='cuda');output=torch.empty_like(q);module.run_kernel(q,k,val,ind,output,c['B'],c['SEQ_LEN'],c['H'],c['HQ'],c['D'],c['S'],c['block_size'],c['is_causal'])
finally:JITKernel.__call__=old
assert len(calls)==1;(r/'precompile_codegen.json').write_text(json.dumps({'source_sha256':s['sha256'],'records':calls,'attention_executions':0,'reference_checks':0,'mode':'metadataonly export, no native benchmark'},indent=2)+'\n');print('EXPORT_ONLY0REF')
