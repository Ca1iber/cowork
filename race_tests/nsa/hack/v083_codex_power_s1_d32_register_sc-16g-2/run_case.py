from pathlib import Path
import csv,json,hashlib,subprocess,importlib.util,sys,os
import tilelang
from tilelang.jit.kernel import JITKernel
tilelang.set_log_level('ERROR');root=Path('/root/tilelang-metax/race_tests/nsa');v='v083_codex_power_s1_d32_register_sc-16g-2';r=root/'rep'/v;ci=int(os.environ['NSA_PAIR_CASE_INDEX']);assert 1<=ci<=14
phase=os.environ.get('NSA_PAIR_PHASE','formal')
base=Path('/tmp/nsa_v083_original.py');base.write_bytes(subprocess.check_output(['git','show','39ff49e7b:race_tests/nsa/submission.py']))
sources={'baseline_v28':base,'parent_v081':root/'submission/v081_codex_power_s24_lazy_dispatch_sc-16g-2/submission.py','power_v083':Path('/tmp/nsa_power_v083_d32_register.py')};hashes={k:hashlib.sha256(f.read_bytes()).hexdigest() for k,f in sources.items()};assert hashes['baseline_v28']=='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd';assert hashes['parent_v081']=='5d972adf74e54b7c9a1e7c546f85bde7c44fb9c335391d5fa9b4ca9d454c3d43';assert hashes['power_v083']==json.loads((r/'source_identity.json').read_text())['candidate_sha256']
mods={}
for label,f in sources.items():
 spec=importlib.util.spec_from_file_location(label,f);m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m);mods[label]=m
c=json.loads((root/'official_case.json').read_text())[ci-1];key=tuple(c[x] for x in ['B','SEQ_LEN','H','HQ','D','S','block_size'])+(bool(c['is_causal']),);is_s1key=ci in [1,2,4,5,6,7,8,9,10,11,12,13,14]
assert len(mods['power_v083']._KERNEL_CACHE)==13 and not any(isinstance(x,JITKernel) for x in mods['power_v083']._KERNEL_CACHE.values())
initial=mods['power_v083']._KERNEL_CACHE.get(key)
if is_s1key:
 assert callable(initial) and initial.__name__=='first_call'
 assert initial.__code__.co_freevars==('factory','key') and initial.__closure__[1].cell_contents==key
sys.modules['submission']=mods['baseline_v28'];spec=importlib.util.spec_from_file_location('nsa_native',root/'hack/v000_codex_power_baseline_sc-16g-2/test_tilelang_nsa_fwd_v28.py');test=importlib.util.module_from_spec(spec);spec.loader.exec_module(test)
with (r/(phase+'_case'+str(ci)+'_sc-16g-2.csv')).open('w',newline='') as f:
 w=csv.writer(f);w.writerow(['case','run','variant','latency_ms','status'])
 for run,label in enumerate(('baseline_v28','parent_v081','power_v083','power_v083','parent_v081','baseline_v28')*2,1):
  test.run_kernel=mods[label].run_kernel;ms=test._run_one_case(c['B'],c['SEQ_LEN'],c['H'],c['HQ'],c['D'],c['S'],c['block_size'],c['is_causal']);w.writerow([ci,run,label,f'{ms:.9f}','PASS']);f.flush();print(ci,run,label,ms,flush=True)
  if label=='power_v083' and is_s1key:assert isinstance(mods[label]._KERNEL_CACHE[key],JITKernel) and mods[label]._KERNEL_CACHE[key] is not initial
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
