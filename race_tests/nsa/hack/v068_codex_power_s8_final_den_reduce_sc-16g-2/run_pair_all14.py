import csv,hashlib,importlib.util,json,sys,subprocess
from pathlib import Path
import tilelang
tilelang.set_log_level('ERROR')
root=Path('/root/tilelang-metax/race_tests/nsa');id='v068_codex_power_s8_final_den_reduce_sc-16g-2';rep=root/'rep'/id
baseline=Path('/tmp/nsa_power_v068_baseline.py');baseline.write_bytes(subprocess.check_output(['git','show','39ff49e7b:race_tests/nsa/submission.py']))
sources={'baseline_v28':baseline,'parent_v064':root/'submission/v064_codex_power_s8_serial_loop_sc-16g-2/submission.py','power_v068':Path('/tmp/nsa_power_v068_proven_bounds.py')}
hashes={k:hashlib.sha256(p.read_bytes()).hexdigest() for k,p in sources.items()}
assert hashes['baseline_v28']=='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
assert hashes['parent_v064']=='575f2fa041acbfc1bf339f41b30f203d8b8f743ad2fded576a0db43da61beb67'
assert hashes['power_v068']=='589d4ca2c5f82f97581cfb3f82eca96ad81c4c49b8624c60326eac0e34b14949'
(rep/'paired_all14_source_hashes.json').write_text(json.dumps(hashes,indent=2)+'\n')
modules={}
for label,p in sources.items():
 spec=importlib.util.spec_from_file_location(label,p);m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m);modules[label]=m
sys.modules['submission']=modules['baseline_v28']
spec=importlib.util.spec_from_file_location('nsa_native',root/'hack/v000_codex_power_baseline_sc-16g-2/test_tilelang_nsa_fwd_v28.py');test=importlib.util.module_from_spec(spec);spec.loader.exec_module(test)
cases=json.loads((root/'official_case.json').read_text())
with (rep/'paired_all14_sc-16g-2.csv').open('w',newline='') as f:
 w=csv.writer(f);w.writerow(('case','run','variant','latency_ms','status'))
 for case_index,c in enumerate(cases,1):
  order=('baseline_v28','parent_v064','power_v068','power_v068','parent_v064','baseline_v28')*2
  for run,label in enumerate(order,1):
   test.run_kernel=modules[label].run_kernel
   ms=test._run_one_case(c['B'],c['SEQ_LEN'],c['H'],c['HQ'],c['D'],c['S'],c['block_size'],c['is_causal'])
   w.writerow((case_index,run,label,f'{ms:.6f}','PASS'));f.flush();print(case_index,run,label,ms,flush=True)
