# Tool-only code-generation check; no benchmark or submission changes.
import hashlib,importlib.util,json,subprocess
from pathlib import Path
import tilelang
root=Path('/root/tilelang-metax/race_tests/nsa');rep=root/'rep/v033_codex_power_s4_checkpoint_sc-16g-2';out=rep/'baseline_codegen_oj_feedback';out.mkdir(exist_ok=True)
source=Path('/tmp/nsa_v28_feedback_codegen.py');source.write_bytes(subprocess.check_output(['git','show','39ff49e7b:race_tests/nsa/submission.py']))
assert hashlib.sha256(source.read_bytes()).hexdigest()=='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
spec=importlib.util.spec_from_file_location('baseline_feedback',source);m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
original=tilelang.JITKernel.__call__;active_case=0;rows=[]
def capture(kernel,*args,**kwargs):
 p=out/f'case{active_case}.device.cpp';kernel.export_sources(kernel_path=str(p),host_path=str(out/f'case{active_case}.host.cpp'))
 other=rep/f'codegen/case{active_case}_kernel1.device.cpp'
 rows.append({'case':active_case,'baseline_generated_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'v033_generated_sha256':hashlib.sha256(other.read_bytes()).hexdigest(),'byte_identical':p.read_bytes()==other.read_bytes()})
 return None
tilelang.JITKernel.__call__=capture
try:
 for active_case,c in enumerate(json.loads((root/'official_case.json').read_text()),1):
  if active_case not in (3,6,8):continue
  m.run_kernel(None,None,None,None,None,c['B'],c['SEQ_LEN'],c['H'],c['HQ'],c['D'],c['S'],c['block_size'],c['is_causal'])
finally:tilelang.JITKernel.__call__=original
assert {r['case'] for r in rows}=={3,6,8}
(rep/'fallback_codegen_oj_feedback.json').write_text(json.dumps({'method':'tool-only export, call hook returns without GPU launch; not timing','cases':rows},indent=2)+'\n')
print(rows)
