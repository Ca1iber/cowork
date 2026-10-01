from pathlib import Path
import csv,hashlib,json,subprocess,importlib.util,sys
import tilelang
tilelang.set_log_level('ERROR')
root=Path('/root/tilelang-metax/race_tests/nsa');v='v078_codex_power_non_target_control_sc-16g-2';r=root/'rep'/v
base=Path('/tmp/nsa_v078_exact_v28.py');base.write_bytes(subprocess.check_output(['git','show','39ff49e7b:race_tests/nsa/submission.py']))
sources={'baseline_v28':base,'candidate_v077':root/'submission/v077_codex_power_s8_output_pair_sc-16g-2/submission.py'}
expected={'baseline_v28':'42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd','candidate_v077':'dbaef6b0da5f503742805b07b802168d3f02e5c3aef1e8bffaddd909438d43de'}
modules={}
for label,f in sources.items():
 assert hashlib.sha256(f.read_bytes()).hexdigest()==expected[label]
 spec=importlib.util.spec_from_file_location(label,f);m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m);modules[label]=m
functions={'baseline_A':modules['baseline_v28'].run_kernel,'baseline_B':modules['baseline_v28'].run_kernel,'candidate_A':modules['candidate_v077'].run_kernel,'candidate_B':modules['candidate_v077'].run_kernel}
assert functions['baseline_A'] is functions['baseline_B'];assert functions['candidate_A'] is functions['candidate_B']
identity={'sources':expected,'baseline_alias_same_function_object':True,'candidate_alias_same_function_object':True,'native_hash':hashlib.sha256((root/'hack/v000_codex_power_baseline_sc-16g-2/test_tilelang_nsa_fwd_v28.py').read_bytes()).hexdigest(),'timing':'unchanged originalW10R50,no profiling/context instrumentation','cases':[1,3,4,10]};(r/'callable_identity.json').write_text(json.dumps(identity,indent=2)+'\n')
sys.modules['submission']=modules['baseline_v28'];spec=importlib.util.spec_from_file_location('nsa_native',root/'hack/v000_codex_power_baseline_sc-16g-2/test_tilelang_nsa_fwd_v28.py');test=importlib.util.module_from_spec(spec);spec.loader.exec_module(test)
labels=('baseline_A','baseline_B','candidate_A','candidate_B');cases=json.loads((root/'official_case.json').read_text())
with (r/'negative_controls_sc-16g-2.csv').open('w',newline='') as f:
 writer=csv.writer(f);writer.writerow(['case','round','position','label','source','latency_ms','status'])
 for ci,c in enumerate(cases,1):
  if ci not in (1,3,4,10):continue
  for round_index in range(4):
   cycle=labels[round_index:]+labels[:round_index];order=cycle+tuple(reversed(cycle))
   for position,label in enumerate(order,1):
    test.run_kernel=functions[label]
    ms=test._run_one_case(c['B'],c['SEQ_LEN'],c['H'],c['HQ'],c['D'],c['S'],c['block_size'],c['is_causal'])
    source='baseline_v28' if label.startswith('baseline') else 'candidate_v077';writer.writerow([ci,round_index+1,position,label,source,f'{ms:.9f}','PASS']);f.flush();print(ci,round_index+1,position,label,ms,flush=True)
