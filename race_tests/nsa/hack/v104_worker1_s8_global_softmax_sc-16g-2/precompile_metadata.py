from pathlib import Path
import json,hashlib,importlib.util
p=Path('/root/tilelang-metax/race_tests/nsa');r=p/'rep/v104_worker1_s8_global_softmax_sc-16g-2';m=json.loads((r/'source_manifest.json').read_text());x=m['sources'][m['candidate_label']];f=Path(x['path']);assert f.is_file() and hashlib.sha256(f.read_bytes()).hexdigest()==x['sha256']
import tilelang
from tilelang.jit.kernel import JITKernel
import torch
tilelang.set_log_level('ERROR');spec=importlib.util.spec_from_file_location('metadata_candidate',f);module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module);assert len(module._KERNEL_CACHE)==14 and not any(isinstance(x,JITKernel) for x in module._KERNEL_CACHE.values());c=json.loads((p/'official_case.json').read_text())[m['case']-1];records=[];old=JITKernel.__call__
def export_only(kernel,*args,**kwargs):
 device=Path(m['metadata_device_path']);host=Path(m['metadata_host_path']);device.parent.mkdir(parents=True,exist_ok=True);kernel.export_sources(kernel_path=str(device),host_path=str(host));records.append({'device_path':str(device),'device_sha256':hashlib.sha256(device.read_bytes()).hexdigest(),'host_path':str(host),'host_sha256':hashlib.sha256(host.read_bytes()).hexdigest()});return None
JITKernel.__call__=export_only
try:
 q=torch.empty((c['B'],c['SEQ_LEN'],c['HQ'],c['D']),dtype=torch.float16,device='cuda',requires_grad=True);k=torch.empty((c['B'],c['SEQ_LEN'],c['H'],c['D']),dtype=torch.float16,device='cuda',requires_grad=True);val=torch.empty_like(k);ind=torch.empty((c['B'],c['SEQ_LEN'],c['H'],c['S']),dtype=torch.int32,device='cuda');out=torch.empty_like(q);module.run_kernel(q,k,val,ind,out,c['B'],c['SEQ_LEN'],c['H'],c['HQ'],c['D'],c['S'],c['block_size'],c['is_causal'])
finally:JITKernel.__call__=old
assert len(records)==1;(r/'precompile_codegen.json').write_text(json.dumps({'source_sha256':x['sha256'],'records':records,'attention_calls':0,'reference_checks':0},indent=2)+'\n');print('EXPORT_ONLY0REF')
