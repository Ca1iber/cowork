import sys
print('METADATA_CHILD_READY',flush=True)
assert sys.stdin.readline().strip()=='GO'
from pathlib import Path
import json,hashlib,importlib.util
root=Path('/root/tilelang-metax');v='v230_worker2_c8_bounded_kv_index_subagent2';r=root/'race_tests/nsa/rep'/v
manifest=json.loads((r/'metadata_launch_manifest.json').read_text())
for entry in manifest['fixed_inputs']:
 p=Path(entry['path']);assert p.exists() and hashlib.sha256(p.read_bytes()).hexdigest()==entry['sha256'],str(p)
import tilelang
from tilelang.jit.kernel import JITKernel
tilelang.set_log_level('ERROR')
identity=json.loads((r/'source_identity.json').read_text());plan=json.loads((r/'bounded_runtime_plan.json').read_text());key=tuple(plan['only_target_key'])
sources={'parent_v084':(root/plan['numerical_parent'],plan['parent_sha256'],'_make_power_s1_case4_dense'),'power_v230':(Path(identity['candidate_path']),identity['candidate_sha256'],identity['factory_name'])}
def no_attention(*a,**kw):raise AssertionError('metadata cannot launchattention')
real=JITKernel.__call__;JITKernel.__call__=no_attention;rows=[]
try:
 for label,(source,sha,factory_name) in sources.items():
  assert source.exists() and hashlib.file_digest(source.open('rb'),'sha256').hexdigest()==sha
  spec=importlib.util.spec_from_file_location(label,source);m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
  assert len(m._KERNEL_CACHE)==14 and not any(isinstance(z,JITKernel) for z in m._KERNEL_CACHE.values())
  entry=m._KERNEL_CACHE[key];cells=dict(zip(entry.__code__.co_freevars,[c.cell_contents for c in entry.__closure__]))
  assert cells['key']==key and cells['factory'] is getattr(m,factory_name)
  kernel=cells['factory'](*key);out=r/'codegen'/label;out.mkdir(parents=True)
  dev=out/'case8_stage1.device.cpp';host=out/'case8_stage1.host.cpp';kernel.export_sources(kernel_path=str(dev),host_path=str(host));assert dev.exists() and host.exists()
  rows.append({'variant':label,'source_path':str(source),'source_sha256':sha,'factory_identity':True,'device_path':str(dev),'host_path':str(host),'device_sha256':hashlib.file_digest(dev.open('rb'),'sha256').hexdigest(),'host_sha256':hashlib.file_digest(host.open('rb'),'sha256').hexdigest(),'attention_calls':0,'full_reference_count':0})
finally:JITKernel.__call__=real
(r/'compiled_metadata_identity.json').write_text(json.dumps(rows,indent=2)+'\n');print('METADATA_PAIR_EXPORTED0ATTENTION',flush=True)
