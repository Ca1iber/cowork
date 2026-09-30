import csv,hashlib,importlib.util,json,os,sys
from pathlib import Path
import tilelang
tilelang.set_log_level('ERROR')
root=Path('/root/tilelang-metax/race_tests/nsa');id='v030_codex_power_v_microtile_transpose_sc-16g-2';rep=root/'rep'/id
sources={'baseline_v28':Path(os.environ['NSA_V028_SOURCE']),'power_v028':root/'experiments/v028_codex_power_adaptive_normalizer_sc-16g-2/candidate.py','power_v030':root/'experiments'/id/'candidate.py'}
hashes={k:hashlib.sha256(p.read_bytes()).hexdigest() for k,p in sources.items()}
assert hashes['baseline_v28']=='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
(rep/'paired_source_hashes.json').write_text(json.dumps(hashes,indent=2)+'\n')
modules={}
for label,p in sources.items():
 spec=importlib.util.spec_from_file_location(label,p);module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module);modules[label]=module
sys.modules['submission']=modules['baseline_v28']
spec=importlib.util.spec_from_file_location('nsa_native',root/'hack/v000_codex_power_baseline_sc-16g-2/test_tilelang_nsa_fwd_v28.py');test=importlib.util.module_from_spec(spec);spec.loader.exec_module(test)
cases=json.loads((root/'official_case.json').read_text())
with (rep/'paired_targets_sc-16g-2.csv').open('w',newline='') as f:
 w=csv.writer(f);w.writerow(('case','run','variant','latency_ms','status'))
 for case_index in (10,11,12):
  c=cases[case_index-1]
  order=('baseline_v28','power_v028','power_v030','power_v030','power_v028','baseline_v28')*2
  for run,label in enumerate(order,1):
   test.run_kernel=modules[label].run_kernel
   time_ms=test._run_one_case(c['B'],c['SEQ_LEN'],c['H'],c['HQ'],c['D'],c['S'],c['block_size'],c['is_causal'])
   w.writerow((case_index,run,label,f'{time_ms:.6f}','PASS'));f.flush();print(case_index,run,label,time_ms,flush=True)
