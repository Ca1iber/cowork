from pathlib import Path
import csv,json,hashlib,subprocess,importlib.util,sys,os
root=Path('/root/tilelang-metax/race_tests/nsa');v='v101_worker1_s2_fixed_selection_sc-16g-2';r=root/'rep'/v;ci=int(os.environ['NSA_PAIR_CASE_INDEX']);assert 1<=ci<=14
phase=os.environ.get('NSA_PAIR_PHASE','formal')
manifest=json.loads((r/'runner_sources_manifest.json').read_text())['sources'];sources={k:Path(x['path']) for k,x in manifest.items()};hashes={k:hashlib.sha256(f.read_bytes()).hexdigest() for k,f in sources.items()};assert hashes=={k:x['sha256'] for k,x in manifest.items()}
import tilelang
from tilelang.jit.kernel import JITKernel
tilelang.set_log_level('ERROR')
mods={}
for label,f in sources.items():
 spec=importlib.util.spec_from_file_location(label,f);m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m);mods[label]=m
c=json.loads((root/'official_case.json').read_text())[ci-1];key=tuple(c[x] for x in ['B','SEQ_LEN','H','HQ','D','S','block_size'])+(bool(c['is_causal']),);is_s1key=1<=ci<=14
assert len(mods['power_v101']._KERNEL_CACHE)==14 and not any(isinstance(x,JITKernel) for x in mods['power_v101']._KERNEL_CACHE.values())
initial=mods['power_v101']._KERNEL_CACHE.get(key)
if is_s1key:
 assert callable(initial) and initial.__name__=='first_call'
 assert initial.__code__.co_freevars==('factory','key') and initial.__closure__[1].cell_contents==key
sys.modules['submission']=mods['baseline_v28'];spec=importlib.util.spec_from_file_location('nsa_native',root/'hack/v000_codex_power_baseline_sc-16g-2/test_tilelang_nsa_fwd_v28.py');test=importlib.util.module_from_spec(spec);spec.loader.exec_module(test)
with (r/(phase+'_case'+str(ci)+'_sc-16g-2.csv')).open('w',newline='') as f:
 w=csv.writer(f);w.writerow(['case','run','variant','latency_ms','status'])
 for run,label in enumerate(('baseline_v28','parent_v084','power_v101','power_v101','parent_v084','baseline_v28')*2,1):
  test.run_kernel=mods[label].run_kernel;ms=test._run_one_case(c['B'],c['SEQ_LEN'],c['H'],c['HQ'],c['D'],c['S'],c['block_size'],c['is_causal']);w.writerow([ci,run,label,f'{ms:.9f}','PASS']);f.flush();print(ci,run,label,ms,flush=True)
  if label=='power_v101' and is_s1key:assert isinstance(mods[label]._KERNEL_CACHE[key],JITKernel) and mods[label]._KERNEL_CACHE[key] is not initial
from tilelang.jit.kernel import JITKernel as ExportKernel
import torch
original_call=ExportKernel.__call__;export_rows=[];current={'stage':0}
def export_only(kernel,*args,**kwargs):
 current['stage']+=1;out=r/('codegen_'+phase)/current['label'];out.mkdir(parents=True,exist_ok=True);prefix='case'+str(ci)+'_stage'+str(current['stage']);device=out/(prefix+'.device.cpp');host=out/(prefix+'.host.cpp');kernel.export_sources(kernel_path=str(device),host_path=str(host));assert device.exists() and host.exists();export_rows.append({'case':ci,'variant':current['label'],'stage':current['stage'],'device_path':str(device),'device_sha256':hashlib.sha256(device.read_bytes()).hexdigest(),'host_path':str(host)});return None
ExportKernel.__call__=export_only
try:
 q=torch.empty((c['B'],c['SEQ_LEN'],c['HQ'],c['D']),dtype=torch.float16,device='cuda',requires_grad=True);k=torch.empty((c['B'],c['SEQ_LEN'],c['H'],c['D']),dtype=torch.float16,device='cuda',requires_grad=True);val=torch.empty_like(k,requires_grad=True);ind=torch.empty((c['B'],c['SEQ_LEN'],c['H'],c['S']),dtype=torch.int32,device='cuda');output=torch.empty_like(q)
 for label,m in mods.items():
  current.update(label=label,stage=0);m.run_kernel(q,k,val,ind,output,c['B'],c['SEQ_LEN'],c['H'],c['HQ'],c['D'],c['S'],c['block_size'],c['is_causal']);assert current['stage']==1
finally:ExportKernel.__call__=original_call
(r/(phase+'_case'+str(ci)+'_codegen.json')).write_text(json.dumps({'mode':'samecase3source metadataonly AFTERnative measurement;noattentionrun','sources':hashes,'records':export_rows},indent=2)+'\n')
(r/(phase+'_case'+str(ci)+'_identity.json')).write_text(json.dumps({'sources':hashes,'shape_key':key,'initialclosure_codekeyfactory_only':is_s1key,'hot_entry_actualJITKernel':is_s1key,'candidate_checks':4,'control_inclusive_checks':12,'native_body':'unchangedW10R50/fullnaive_nsa','case_process_isolation':'orchestrationonly,no in-function modification'},indent=2)+'\n')
