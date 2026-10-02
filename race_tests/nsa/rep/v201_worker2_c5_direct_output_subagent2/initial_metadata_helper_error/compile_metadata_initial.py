from pathlib import Path
import json,hashlib,importlib.util,subprocess,re,sys
import tilelang
from tilelang.jit.kernel import JITKernel
import torch
tilelang.set_log_level('ERROR')
root=Path('/root/tilelang-metax');v='v201_worker2_c5_direct_output_subagent2';r=root/'race_tests/nsa/rep'/v
source=Path('/tmp/nsa_worker2_v201_c5_direct_output.py');identity=json.loads((r/'source_identity.json').read_text())
assert hashlib.file_digest(source.open('rb'),'sha256').hexdigest()==identity['candidate_sha256']
spec=importlib.util.spec_from_file_location('power_v201',source);m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
assert len(m._KERNEL_CACHE)==14 and not any(isinstance(x,JITKernel) for x in m._KERNEL_CACHE.values())
key=(4,1024,1,16,64,1,16,True);entry=m._KERNEL_CACHE[key]
cells=dict(zip(entry.__code__.co_freevars,[c.cell_contents for c in entry.__closure__]))
assert cells['key']==key and cells['factory'].__name__=='_make_worker2_c5_direct_output'
def forbidden_attention_call(*a,**kw):raise AssertionError('metadata must not launch attention')
real_call=JITKernel.__call__;JITKernel.__call__=forbidden_attention_call
try:
 kernel=cells['factory'](*key)
 out=r/'codegen/power_v201';out.mkdir(parents=True)
 dev=out/'case5_stage1.device.cpp';host=out/'case5_stage1.host.cpp'
 kernel.export_sources(kernel_path=str(dev),host_path=str(host))
 output=torch.empty((4,1024,16,64),dtype=torch.float16,device='cuda')
 actual_align=output.data_ptr()%8;assert actual_align==0
finally:JITKernel.__call__=real_call
s=dev.read_text();hs=host.read_text();syncs=s.count('__syncwarp()')
assert syncs==5,(syncs,s)
stores=[l.strip() for l in s.splitlines() if '*(uint' in l and '(Output +' in l]
assert len(stores)==1 and '*(uint2*)' in stores[0] and '*(uint4*)' not in stores[0],stores
assert 'output_fetch' not in s and 'shared_local_cast' not in s
smemlines=[l for l in hs.splitlines() if '.v_int64)' in l and '[10]' in l];assert len(smemlines)==1
dyn=int(re.search(r'int64_t\)(\d+)',smemlines[0])[1]);assert dyn==2048
validator=root/'race_tests/nsa/hack/validate_oj_submission.py'
z=subprocess.run([sys.executable,str(validator),str(source),'--generated-code',str(dev)],capture_output=True,text=True)
(r/'generated_static.log').write_text(z.stdout+z.stderr);(r/'generated_static.exit').write_text(str(z.returncode)+'\n');assert z.returncode==0
proof={'source_sha256':identity['candidate_sha256'],'case':5,'factory':cells['factory'].__name__,'initial14cache_entries_codeonly':True,'attention_calls':0,'full_reference_count':0,'actualOutput_data_ptr_mod8':actual_align,'generated_syncwarp_count':syncs,'global_output_vector_bytes':8,'output_store_source_line':stores[0],'source_loop_store_iterations_perlane':4,'dynamic_shared_bytes_host':dyn,'device_path':str(dev),'host_path':str(host),'device_sha256':hashlib.file_digest(dev.open('rb'),'sha256').hexdigest(),'host_sha256':hashlib.file_digest(host.open('rb'),'sha256').hexdigest(),'all_QKV_and_normalization_source_preserved':True}
(r/'metadata_identity.json').write_text(json.dumps(proof,indent=2)+'\n')
print(json.dumps(proof),flush=True)
