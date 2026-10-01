from pathlib import Path
import hashlib,json
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v049_codex_power_s1_cache_entry_sc-16g-2');rows=json.loads((r/'mcprof_summary.json').read_text());issues=[]
for x in rows:
 reasons=[]
 if x['waves']!=8192:reasons.append('wave count differs from8192 host launch')
 if not (0<=x['mte_pct']<=100 and 0<=x['mma_pct']<=100):reasons.append('duty ratio outside0..100')
 if x['unavailable_raw']:reasons.append('missing/non-numeric fields')
 issues.append({'variant':x['variant'],'sample':x['sample'],'anomalies':reasons})
candidate_ok=all(not x['anomalies'] for x in issues if x['variant']=='power_v049');baseline_ok=all(not x['anomalies'] for x in issues if x['variant']=='baseline_v28')
assert candidate_ok and not baseline_ok
s={'status':'candidate_internally_consistent_baseline_inconclusive','candidate_reports':2,'baseline_reports':2,'issues':issues,'paired_counter_comparison':'INCONCLUSIVE; do not compare unreliable baseline values','candidate_diagnostic':'shared nonconflict60.49%,conflict2.21cycles,load54.71/54.73cycles; internal direction evidence only','achieved_waves':'raw counts, not occupancy','sources':{k:hashlib.sha256(Path(p).read_bytes()).hexdigest() for k,p in [('candidate','/tmp/nsa_power_v049_cache_entry.py'),('baseline','/tmp/nsa_baseline_v28_for_power49.py')]}}
(r/'counter_reliability.json').write_text(json.dumps(s,indent=2)+'\n');print(s['status'])
