import importlib.util
from pathlib import Path

import tilelang


tilelang.set_log_level('ERROR')
root = Path('/root/tilelang-metax/race_tests/nsa')
id = 'v032_codex_power_cooperative_q_sc-16g-2'
source = root / 'experiments' / id / 'candidate.py'
out = root / 'rep' / id / 'codegen'
out.mkdir(parents=True, exist_ok=True)
spec = importlib.util.spec_from_file_location('nsa_candidate', source)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
import json
for i,c in enumerate(json.loads((root/'official_case.json').read_text()),1):
 if i not in (10,11,12):continue
 B,L,H,HQ,D,S,BS=[c[x] for x in ('B','SEQ_LEN','H','HQ','D','S','block_size')]
 factory=module._make_multiblock_register_qk if (S in (2,4,8) and BS==16 and D==64 and HQ//H==16) else module._make_native_sparse_attention
 kernel=factory(B,L,H,HQ,D,S,BS,bool(c['is_causal']))
 try:kernel(None,None,None,None,None)
 except RuntimeError as e:
  if 'non-NULL pointer' not in str(e):raise
 kernel.export_sources(kernel_path=str(out/f'case{i}.device.cpp'),host_path=str(out/f'case{i}.host.cpp'))
 print('exported',i,flush=True)
