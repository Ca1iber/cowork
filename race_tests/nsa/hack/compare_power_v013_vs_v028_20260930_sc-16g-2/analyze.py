import csv
import hashlib
import json
import statistics
import subprocess
from pathlib import Path
root = Path('/root/tilelang-metax/race_tests/nsa')
id = 'compare_power_v013_vs_v028_20260930_sc-16g-2'
rep = root/'rep'/id
rows = list(csv.DictReader((rep/'paired_case6_case12_sc-16g-2.csv').open()))
assert (rep/'paired.exit').read_text().strip() == '0'
assert len(rows) == 16 and all(r['status'] == 'PASS' for r in rows)
summary = []
for case in (6,12):
    values = {v: [float(r['latency_ms'])*1000 for r in rows if int(r['case']) == case and r['variant'] == v] for v in ('v028','power_v013')}
    assert all(len(v) == 4 for v in values.values())
    old = statistics.median(values['v028'])
    new = statistics.median(values['power_v013'])
    summary.append({'case':case,'v028_median_us':old,'power_v013_median_us':new,'power_minus_v028_us':new-old,'power_latency_change_pct':(new/old-1)*100,'v028_range_us':[min(values['v028']),max(values['v028'])],'power_range_us':[min(values['power_v013']),max(values['power_v013'])]})
identity = {'machine':'sc-16g-2 / C500 / 16G sGPU','power_commit':subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip(),'v028_commit':subprocess.check_output(['git','rev-parse','95e8a78ce'],text=True).strip(),'v028_sha256':'42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd','power_v013_sha256':hashlib.sha256((root/'submission.py').read_bytes()).hexdigest(),'runner_sha256':hashlib.sha256((root/'hack/v000_codex_power_baseline_sc-16g-2/test_tilelang_nsa_fwd_v28.py').read_bytes()).hexdigest(),'case_json_sha256':hashlib.sha256((root/'official_case.json').read_bytes()).hexdigest(),'reference_sha256':hashlib.sha256((root/'reference.py').read_bytes()).hexdigest()}
(rep/'comparison_sc-16g-2.json').write_text(json.dumps({'identity':identity,'measurement':'native _run_one_case, warmup10/repeat50, ABBA x2 per shape','correctness':'16/16 PASS','results':summary},indent=2)+'\n')
lines=['# Power v013 versus NSA v028: local performance comparison','', '## 1. Previous issue','', 'Power v013 was previously compared with the ffa68b684 starting implementation. That starting source is not v028. The earlier reported gains cannot establish superiority over v028.', '', '## 2. Analysis','', 'This report compares elapsed time only. No prior optimized kernel was read or reused for an optimization. Both exact submission sources run through the same project-native correctness and timing routine.', '', '## 3. Comparison design','', 'Compare official cases 6 and 12 using ABBA x2 for each case, with full naive_nsa reference and native warmup10/repeat50. v028 is retrieved from commit '+identity['v028_commit']+' into /tmp for execution; power is the archived v013 submission.', '', '## 4. Reproduction','', 'Command: bash race_tests/nsa/hack/'+id+'/run_compare.sh', '', 'Machine: sc-16g-2, C500, 16G sGPU. Exact source, test and reference hashes are in comparison_sc-16g-2.json; machine_snapshot.txt records GPU state. No submitted kernel files were changed.', '', '## 5. Benchmark','', '| Case | v028 median (us) | Power v013 median (us) | Power minus v028 (us) | Power latency change |','|---:|---:|---:|---:|---:|']
for r in summary:
    lines.append(f"| {r['case']} | {r['v028_median_us']:.3f} | {r['power_v013_median_us']:.3f} | {r['power_minus_v028_us']:+.3f} | {r['power_latency_change_pct']:+.2f}% |")
lines += ['', 'All 16 reference checks pass. Case6 shape: B=8, SEQ_LEN=1024, H=1, HQ=16, D=128, S=1, block_size=32. Case12: B=4, SEQ_LEN=1024, H=1, HQ=16, D=64, S=8, block_size=16. Both use causal attention and FP16.', '', '## 6. Profile evidence','', 'No new profile was collected because the request is for measured latency. TODO: collect matched mcTracer/mcProfiler results if a causal explanation or further optimization is requested. This table does not claim OJ score changes.', '', '## 7. Conclusion','', 'Power v013 is slower than v028 on both requested cases, substantially so on case12. The comparison against the ffa starting source must be kept separate from this comparison. Power v013 is not a replacement for v028 on the evidence of these cases.', '']
(rep/'report_sc-16g-2.md').write_text('\n'.join(lines))
for r in summary: print(json.dumps(r))
