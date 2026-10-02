from pathlib import Path
import json,hashlib,importlib.util,sys,subprocess
import tilelang
from tilelang.jit.kernel import JITKernel
tilelang.set_log_level('ERROR')
root=Path('/root/tilelang-metax');v='v202_worker2_c8_two_query_cta_subagent2';r=root/'race_tests/nsa/rep'/v
identity=json.loads((r/'source_identity.json').read_text());plan=json.loads((r/'plan.json').read_text());source=Path(identity['candidate_path'])
assert source.exists() and hashlib.file_digest(source.open('rb'),'sha256').hexdigest()==identity['candidate_sha256']
spec=importlib.util.spec_from_file_location('power_v202',source);m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
key=tuple(plan['target_key']);assert len(m._KERNEL_CACHE)==14 and not any(isinstance(x,JITKernel) for x in m._KERNEL_CACHE.values())
entry=m._KERNEL_CACHE[key];cells=dict(zip(entry.__code__.co_freevars,[c.cell_contents for c in entry.__closure__]));assert cells['key']==key and cells['factory'] is getattr(m,identity['factory_name'])
def no_attention(*a,**kw):raise AssertionError('metadata cannot launchattention')
real=JITKernel.__call__;JITKernel.__call__=no_attention
try:
 kernel=cells['factory'](*key)
 dev=Path(identity['metadata_device_path']);host=Path(identity['metadata_host_path']);dev.parent.mkdir(parents=True,exist_ok=True)
 kernel.export_sources(kernel_path=str(dev),host_path=str(host));assert dev.exists() and host.exists()
finally:JITKernel.__call__=real
(r/'compiled_metadata_identity.json').write_text(json.dumps({'source_sha256':identity['candidate_sha256'],'factory_object_identity_checked':True,'initial_cache14_codeonly':True,'device_path':str(dev),'host_path':str(host),'device_sha256':hashlib.file_digest(dev.open('rb'),'sha256').hexdigest(),'host_sha256':hashlib.file_digest(host.open('rb'),'sha256').hexdigest(),'attention_calls':0,'full_reference_count':0},indent=2)+'\n')
z=subprocess.run([sys.executable,str(root/'race_tests/nsa/hack/validate_oj_submission.py'),str(source),'--generated-code',str(dev)],capture_output=True,text=True)
(r/'generated_static.log').write_text(z.stdout+z.stderr);(r/'generated_static.exit').write_text(str(z.returncode)+'\n');assert z.returncode==0
print('COMPILED_METADATA_ONLY0ATTENTION',str(dev),flush=True)
