from pathlib import Path
import json,hashlib,importlib.util
b=Path('/root/tilelang-metax/race_tests/nsa');r=b/'rep/v124_worker1_c12_lane_contiguous_partial_num_sc-16g-2';m=json.loads((r/'compile_source_manifest.json').read_text());p=json.loads((r/'compile_execution_plan.json').read_text());assert p['phase']=='leader_GO_v124_bounded_compile_once'
for x in m['sources'].values():assert hashlib.sha256(Path(x['path']).read_bytes()).hexdigest()==x['sha256']
import tilelang
from tilelang.jit.kernel import JITKernel
import torch
tilelang.set_log_level('ERROR');original=JITKernel.__call__;active=None;records=[];count=0

def export_only(kernel,*args,**kwargs):
 global count
 assert isinstance(kernel,JITKernel)
 count+=1;assert active is not None;d=r/'codegen'/active;d.mkdir(parents=True,exist_ok=True);dev=d/'case12.device.cpp';host=d/'case12.host.cpp';kernel.export_sources(kernel_path=str(dev),host_path=str(host));records.append({'variant':active,'case':12,'hook_count':count,'source':m['sources'][active],'kernel_type':type(kernel).__module__+'.'+type(kernel).__qualname__,'args_metadata':[{'shape':list(x.shape),'dtype':str(x.dtype),'grad':x.requires_grad} for x in args if isinstance(x,torch.Tensor)],'device_path':str(dev),'host_path':str(host),'device_SHA':hashlib.sha256(dev.read_bytes()).hexdigest(),'host_SHA':hashlib.sha256(host.read_bytes()).hexdigest(),'actual_NSA_attention_calls':0});return None
JITKernel.__call__=export_only
try:
 c=json.loads((b/'official_case.json').read_text())[11]
 for label in ['parent113','candidate124']:
  active=label;count=0;source=Path(m['sources'][label]['path']);spec=importlib.util.spec_from_file_location('metadata_'+label,source);mod=importlib.util.module_from_spec(spec);spec.loader.exec_module(mod);q=torch.empty((c['B'],c['SEQ_LEN'],c['HQ'],c['D']),dtype=torch.float16,device='cuda',requires_grad=True);k=torch.empty((c['B'],c['SEQ_LEN'],c['H'],c['D']),dtype=torch.float16,device='cuda',requires_grad=True);v=torch.empty(k.shape,dtype=torch.float16,device='cuda',requires_grad=True);idx=torch.empty((c['B'],c['SEQ_LEN'],c['H'],c['S']),dtype=torch.int32,device='cuda');out=torch.empty(q.shape,dtype=torch.float16,device='cuda');mod.run_kernel(q,k,v,idx,out,c['B'],c['SEQ_LEN'],c['H'],c['HQ'],c['D'],c['S'],c['block_size'],int(c['is_causal']));assert count==1;(r/'metadata_pair.json').write_text(json.dumps({'records':records,'NSA_attention_calls':0,'fullrefs':0,'context_emptyallocations_not0GPUclaim':True},indent=2)+chr(10));print('METADATA_SOURCE_ONLY_EXPORT',label,flush=True)
finally:JITKernel.__call__=original
assert len(records)==2
