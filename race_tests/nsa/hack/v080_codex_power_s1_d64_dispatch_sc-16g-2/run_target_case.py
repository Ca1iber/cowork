from pathlib import Path
import csv,json,hashlib,subprocess,importlib.util,sys,os
import tilelang
from tilelang.jit.kernel import JITKernel
tilelang.set_log_level('ERROR');root=Path('/root/tilelang-metax/race_tests/nsa');v='v080_codex_power_s1_d64_dispatch_sc-16g-2';r=root/'rep'/v;ci=int(os.environ['NSA_PAIR_CASE_INDEX']);assert ci in [2,5,7,8,9,13,14]
base=Path('/tmp/nsa_v080_original.py');base.write_bytes(subprocess.check_output(['git','show','39ff49e7b:race_tests/nsa/submission.py']))
sources={'baseline_v28':base,'parent_v079':root/'submission/v079_codex_power_s1_case4_dense_sc-16g-2/submission.py','power_v080':Path('/tmp/nsa_power_v080_dispatch.py')};hashes={k:hashlib.sha256(f.read_bytes()).hexdigest() for k,f in sources.items()};assert hashes['baseline_v28']=='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd';assert hashes['parent_v079']=='98ac1b75839e8e3ae49d2de3345ce64779211af0c2aebe30751d1593a084a2fb';assert hashes['power_v080']==json.loads((r/'source_identity.json').read_text())['candidate_sha256']
mods={}
for label,f in sources.items():
 spec=importlib.util.spec_from_file_location(label,f);m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m);mods[label]=m
c=json.loads((root/'official_case.json').read_text())[ci-1];key=tuple(c[x] for x in ['B','SEQ_LEN','H','HQ','D','S','block_size'])+(bool(c['is_causal']),);initial=mods['power_v080']._KERNEL_CACHE[key];assert callable(initial) and initial.__name__=='first_call';assert initial.__code__.co_freevars==('key',);assert initial.__closure__[0].cell_contents==key
sys.modules['submission']=mods['baseline_v28'];spec=importlib.util.spec_from_file_location('nsa_native',root/'hack/v000_codex_power_baseline_sc-16g-2/test_tilelang_nsa_fwd_v28.py');test=importlib.util.module_from_spec(spec);spec.loader.exec_module(test)
with (r/('target_case'+str(ci)+'_sc-16g-2.csv')).open('w',newline='') as f:
 w=csv.writer(f);w.writerow(['case','run','variant','latency_ms','status'])
 for run,label in enumerate(('baseline_v28','parent_v079','power_v080','power_v080','parent_v079','baseline_v28')*2,1):
  test.run_kernel=mods[label].run_kernel;ms=test._run_one_case(c['B'],c['SEQ_LEN'],c['H'],c['HQ'],c['D'],c['S'],c['block_size'],c['is_causal']);w.writerow([ci,run,label,f'{ms:.9f}','PASS']);f.flush();print(ci,run,label,ms,flush=True)
  if label=='power_v080':assert isinstance(mods[label]._KERNEL_CACHE[key],JITKernel) and mods[label]._KERNEL_CACHE[key] is not initial
kernel=mods['power_v080']._KERNEL_CACHE[key];out=r/'codegen_targets';out.mkdir(exist_ok=True);kernel.export_sources(kernel_path=str(out/('case'+str(ci)+'.device.cpp')),host_path=str(out/('case'+str(ci)+'.host.cpp')))
(r/('target_case'+str(ci)+'_identity.json')).write_text(json.dumps({'sources':hashes,'shape_key':key,'initialclosure_key_only':True,'hot_entry_actualJITKernel':True,'candidate_checks':4,'control_inclusive_checks':12,'native_body':'unchangedW10R50/fullnaive_nsa','case_process_isolation':'orchestrationonly,no in-function modification'},indent=2)+'\n')
