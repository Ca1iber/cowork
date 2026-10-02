from pathlib import Path
import csv,json,hashlib,importlib.util,sys,os
import tilelang
tilelang.set_log_level('ERROR')
root=Path('/root/tilelang-metax')
v='v200_worker2_baseline_profile_subagent2'
rep=root/'race_tests/nsa/rep'/v
ci=int(sys.argv[1]);assert 1<=ci<=14
plan=json.loads((rep/'diagnostic_plan.json').read_text())
mods={}
for label,identity in plan['sources'].items():
 p=root/identity['path'];assert hashlib.file_digest(p.open('rb'),'sha256').hexdigest()==identity['sha256']
 spec=importlib.util.spec_from_file_location(label,p);m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m);mods[label]=m
sys.modules['submission']=mods['baseline_v28']
runner=root/'race_tests/nsa/hack/v000_codex_power_baseline_sc-16g-2/test_tilelang_nsa_fwd_v28.py'
assert hashlib.file_digest(runner.open('rb'),'sha256').hexdigest()=='6ebdb82ab43a844a908aeb33c08e2b4a6cf2b7385a20f903f123875b53534568'
spec=importlib.util.spec_from_file_location('nsa_native',runner);test=importlib.util.module_from_spec(spec);spec.loader.exec_module(test)
c=json.loads((root/'race_tests/nsa/official_case.json').read_text())[ci-1]
with (rep/f'baseline_case{ci}_subagent2.csv').open('w',newline='') as f:
 w=csv.writer(f);w.writerow(['case','run','variant','latency_ms','status'])
 for n,label in enumerate(plan['native_variant_order'],1):
  test.run_kernel=mods[label].run_kernel
  ms=test._run_one_case(*(c[x] for x in ['B','SEQ_LEN','H','HQ','D','S','block_size','is_causal']))
  w.writerow([ci,n,label,f'{ms:.9f}','PASS']);f.flush();print(ci,n,label,f'{ms:.9f}',flush=True)
# Export only after all four full-reference/native timings; no attention is executed below.
from tilelang.jit.kernel import JITKernel
import torch
real_call=JITKernel.__call__;rows=[];current={}
def export_only(kernel,*a,**kw):
 current['count']+=1
 out=rep/'codegen'/current['label'];out.mkdir(parents=True,exist_ok=True)
 prefix=f'case{ci}_stage{current["count"]}'
 device=out/(prefix+'.device.cpp');host=out/(prefix+'.host.cpp')
 kernel.export_sources(kernel_path=str(device),host_path=str(host))
 rows.append({'case':ci,'variant':current['label'],'stage':current['count'],'device_path':str(device),'device_sha256':hashlib.file_digest(device.open('rb'),'sha256').hexdigest(),'host_path':str(host),'host_sha256':hashlib.file_digest(host.open('rb'),'sha256').hexdigest()})
 return None
JITKernel.__call__=export_only
try:
 q=torch.empty((c['B'],c['SEQ_LEN'],c['HQ'],c['D']),dtype=torch.float16,device='cuda',requires_grad=True)
 k=torch.empty((c['B'],c['SEQ_LEN'],c['H'],c['D']),dtype=torch.float16,device='cuda',requires_grad=True)
 val=torch.empty_like(k,requires_grad=True)
 ind=torch.empty((c['B'],c['SEQ_LEN'],c['H'],c['S']),dtype=torch.int32,device='cuda')
 output=torch.empty_like(q)
 for label,m in mods.items():
  current.update(label=label,count=0)
  m.run_kernel(q,k,val,ind,output,*(c[x] for x in ['B','SEQ_LEN','H','HQ','D','S','block_size','is_causal']))
  assert current['count']==1
finally:
 JITKernel.__call__=real_call
(rep/f'baseline_case{ci}_codegen.json').write_text(json.dumps({'mode':'metadata only after native timings; no attention run','records':rows},indent=2)+'\n')
(rep/f'baseline_case{ci}_identity.json').write_text(json.dumps({'sources':plan['sources'],'full_reference_counts':{'candidate':0,'baseline_v28':2,'parent_v084':2,'total':4},'native_body':'unchanged shared _run_one_case W10R50/full naive_nsa','shape':c},indent=2)+'\n')
