import json,re
from pathlib import Path
p=Path('/root/tilelang-metax/race_tests/nsa');v='v057_codex_power_s1_proven_bounds_sc-16g-2';r=p/'rep'/v
paths={'parent_C6_v049':p/'rep/v049_codex_power_s1_cache_entry_sc-16g-2/case6.ll','candidate_v057':r/'case6.ll'}
counts={}
for label,path in paths.items():
 s=path.read_text();calls=[x for x in s.splitlines() if 'call ' in x]
 counts[label]={key:sum(key in x for x in calls) for key in ['gethwreg','sethwreg','bpermute','warpbarrier','mma']}
(r/'ir_control_comparison.json').write_text(json.dumps({'static_call_counts':counts,'interpretation':'optimized IR static call occurrences only; not dynamic latency, actual occupancy or exclusive bottleneck attribution'},indent=2)+'\n');print(counts)
