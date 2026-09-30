import csv
import hashlib
import importlib.util
import json
import os
import sys
from pathlib import Path
import tilelang

tilelang.set_log_level('ERROR')
root=Path('/root/tilelang-metax/race_tests/nsa');rep=root/'rep/v021_codex_power_s1_normalize_scores_sc-16g-2'
sources={'v016':root/'experiments/v016_codex_power_s8_v_bank_partition_sc-16g-2/candidate.py','v021':root/'experiments/v021_codex_power_s1_normalize_scores_sc-16g-2/candidate.py','v028':Path(os.environ['NSA_V028_SOURCE'])}
hashes={k:hashlib.sha256(p.read_bytes()).hexdigest() for k,p in sources.items()}
assert sources['v016'].read_text().startswith('# codex-power v016')
assert hashes['v028']=='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
(rep/'paired_source_hashes.json').write_text(json.dumps(hashes,indent=2)+'\n')
modules={}
for label,p in sources.items():
 spec=importlib.util.spec_from_file_location('nsa_bank_'+label,p);m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m);modules[label]=m
sys.modules['submission']=modules['v016']
p=root/'hack/v000_codex_power_baseline_sc-16g-2/test_tilelang_nsa_fwd_v28.py'
spec=importlib.util.spec_from_file_location('nsa_native_pair',p);test=importlib.util.module_from_spec(spec);spec.loader.exec_module(test)
case=json.loads((root/'official_case.json').read_text())[5]
with (rep/'paired_case6_sc-16g-2.csv').open('w',newline='') as f:
 w=csv.writer(f);w.writerow(('run','variant','latency_ms','status'))
 for i,label in enumerate(('v016','v021','v028','v028','v021','v016')*2,1):
  test.run_kernel=modules[label].run_kernel
  ms=test._run_one_case(case['B'],case['SEQ_LEN'],case['H'],case['HQ'],case['D'],case['S'],case['block_size'],case['is_causal'])
  w.writerow((i,label,f'{ms:.6f}','PASS'));f.flush();print(i,label,ms,'PASS',flush=True)
