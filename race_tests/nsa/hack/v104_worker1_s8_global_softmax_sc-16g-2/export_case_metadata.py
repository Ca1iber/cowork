from pathlib import Path
import json,sys,hashlib,importlib.util
p=Path('/root/tilelang-metax/race_tests/nsa');r=p/'rep/v104_worker1_s8_global_softmax_sc-16g-2';plan=json.loads((r/'metadata_all14_plan.json').read_text());job=plan['jobs'][int(sys.argv[1])];source=Path(job['source']['path']);assert source.is_file() and hashlib.sha256(source.read_bytes()).hexdigest()==job['source']['sha256'];assert (r/'formal/diagnostic.exit').read_text().strip()=='0'
import tilelang
from tilelang.jit.kernel import JITKernel
import torch
tilelang.set_log_level('ERROR');spec=importlib.util.spec_from_file_location('metadata_source',source);module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module);c=json.loads((p/'official_case.json').read_text())[job['case']-1];old=JITKernel.__call__;records=[]
def export_only(kernel,*args,**kwargs):
 device=Path(job['device_path']);host=Path(job['host_path']);device.parent.mkdir(parents=True,exist_ok=True);kernel.export_sources(kernel_path=str(device),host_path=str(host));records.append({'case':job['case'],'variant':job['variant'],'device_path':str(device),'host_path':str(host),'device_sha256':hashlib.sha256(device.read_bytes()).hexdigest(),'host_sha256':hashlib.sha256(host.read_bytes()).hexdigest(),'source_sha256':job['source']['sha256']});return None
JITKernel.__call__=export_only
try:
 q=torch.empty((c['B'],c['SEQ_LEN'],c['HQ'],c['D']),dtype=torch.float16,device='cuda',requires_grad=True);k=torch.empty((c['B'],c['SEQ_LEN'],c['H'],c['D']),dtype=torch.float16,device='cuda',requires_grad=True);val=torch.empty_like(k);idx=torch.empty((c['B'],c['SEQ_LEN'],c['H'],c['S']),dtype=torch.int32,device='cuda');out=torch.empty_like(q);module.run_kernel(q,k,val,idx,out,c['B'],c['SEQ_LEN'],c['H'],c['HQ'],c['D'],c['S'],c['block_size'],c['is_causal'])
finally:JITKernel.__call__=old
assert len(records)==1;folder=r/'metadata_all14_records';folder.mkdir(exist_ok=True);(folder/('job_'+sys.argv[1]+'.json')).write_text(json.dumps({'attention_calls':0,'reference_checks':0,'records':records},indent=2)+'\n');print('EXPORT0REF',job['case'],job['variant'])
