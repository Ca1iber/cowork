from pathlib import Path
import json,sys,hashlib,importlib.util
p=Path('/root/tilelang-metax/race_tests/nsa');r=p/'rep/v113_worker1_s4_global_softmax_sc-16g-2';manifest=json.loads((r/'metadata_source_manifest.json').read_text());plan=json.loads((r/'metadata_execution_plan.json').read_text());assert plan['phase']=='leader_GO_metadata_resources_once';label=sys.argv[1];source=Path(manifest['sources'][label]['path']);assert hashlib.sha256(source.read_bytes()).hexdigest()==manifest['sources'][label]['sha256']
import tilelang
from tilelang.jit.kernel import JITKernel
import torch
tilelang.set_log_level('ERROR');spec=importlib.util.spec_from_file_location('metadata_source',source);module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module);original=JITKernel.__call__;records=[];active_case=None;hook_count=0

def export_only(kernel,*args,**kwargs):
 global hook_count
 assert active_case is not None;hook_count+=1;folder=r/'codegen'/label;folder.mkdir(parents=True,exist_ok=True);device=folder/('case'+str(active_case)+'.device.cpp');host=folder/('case'+str(active_case)+'.host.cpp');kernel.export_sources(kernel_path=str(device),host_path=str(host));records.append({'case':active_case,'variant':label,'source_sha256':manifest['sources'][label]['sha256'],'kernel_type':type(kernel).__module__+'.'+type(kernel).__qualname__,'hook_count_in_case':hook_count,'argument_metadata':[{'shape':list(x.shape),'dtype':str(x.dtype),'requires_grad':x.requires_grad} if isinstance(x,torch.Tensor) else {'type':type(x).__name__} for x in args],'device_path':str(device),'host_path':str(host),'device_sha256':hashlib.sha256(device.read_bytes()).hexdigest(),'host_sha256':hashlib.sha256(host.read_bytes()).hexdigest(),'actual_NSA_launch_after_hook':False});return None
JITKernel.__call__=export_only
try:
 for ci in [11]:
  c=json.loads((p/'official_case.json').read_text())[ci-1]
  active_case=ci;hook_count=0;q=torch.empty((c['B'],c['SEQ_LEN'],c['HQ'],c['D']),dtype=torch.float16,device='cuda',requires_grad=True);k=torch.empty((c['B'],c['SEQ_LEN'],c['H'],c['D']),dtype=torch.float16,device='cuda',requires_grad=True);v=torch.empty(k.shape,dtype=torch.float16,device='cuda',requires_grad=True);indices=torch.empty((c['B'],c['SEQ_LEN'],c['H'],c['S']),dtype=torch.int32,device='cuda');out=torch.empty(q.shape,dtype=torch.float16,device='cuda');module.run_kernel(q,k,v,indices,out,c['B'],c['SEQ_LEN'],c['H'],c['HQ'],c['D'],c['S'],c['block_size'],int(c['is_causal']));assert hook_count==1,'actuallaunchpath hookcount differs';(r/('metadata_'+label+'.json')).write_text(json.dumps({'variant':label,'source':manifest['sources'][label],'records':records,'NSA_attention_calls':0,'full_reference_checks':0,'GPUcontext_tensorallocations_not_zeroGPU_claim':True},indent=2)+chr(10));print('METADATA',label,ci,'exportonly0NSAref',flush=True)
finally:JITKernel.__call__=original
assert len(records)==1
