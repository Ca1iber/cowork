import hashlib,importlib.util,json,sys
from pathlib import Path
import tilelang
tilelang.set_log_level('ERROR')
root=Path('/root/tilelang-metax/race_tests/nsa');id='v033_codex_power_s4_checkpoint_sc-16g-2';rep=root/'rep'/id;out=rep/'codegen';out.mkdir(exist_ok=True)
source=Path('/tmp/nsa_power_v033_s4_checkpoint.py');identity=json.loads((rep/'source_identity.json').read_text());assert hashlib.sha256(source.read_bytes()).hexdigest()==identity['candidate_sha256']
spec=importlib.util.spec_from_file_location('submission',source);module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module);sys.modules['submission']=module
spec=importlib.util.spec_from_file_location('nsa_native_export',root/'hack/v000_codex_power_baseline_sc-16g-2/test_tilelang_nsa_fwd_v28.py');test=importlib.util.module_from_spec(spec);spec.loader.exec_module(test)
original=tilelang.JITKernel.__call__;active_case=0;seen=set();captures=[]
def export_call(kernel,*args,**kwargs):
 key=(active_case,id_builtin(kernel))
 if key not in seen:
  ordinal=1+sum(x['case']==active_case for x in captures)
  stem=f'case{active_case}_kernel{ordinal}'
  kernel.export_sources(kernel_path=str(out/(stem+'.device.cpp')),host_path=str(out/(stem+'.host.cpp')))
  seen.add(key);captures.append({'case':active_case,'ordinal':ordinal,'device':stem+'.device.cpp','host':stem+'.host.cpp'})
 return original(kernel,*args,**kwargs)
id_builtin=__builtins__.id if not isinstance(__builtins__,dict) else __builtins__['id']
tilelang.JITKernel.__call__=export_call
try:
 for active_case,c in enumerate(json.loads((root/'official_case.json').read_text()),1):
  test._run_one_case(c['B'],c['SEQ_LEN'],c['H'],c['HQ'],c['D'],c['S'],c['block_size'],c['is_causal'])
  print('EXPORTED',active_case,flush=True)
finally:tilelang.JITKernel.__call__=original
assert {x['case'] for x in captures}==set(range(1,15))
(rep/'codegen_manifest.json').write_text(json.dumps({'source_sha256':identity['candidate_sha256'],'captures':captures,'method':'external JITKernel call hook, export-only native runner; timings instrumented and not a verdict'},indent=2)+'\n')
