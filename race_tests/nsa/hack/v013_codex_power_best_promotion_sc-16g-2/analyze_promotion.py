import csv
import hashlib
import json
import statistics
from collections import defaultdict
from pathlib import Path

repo = Path('/root/tilelang-metax')
root = repo / 'race_tests/nsa'
rep = root / 'rep/v013_codex_power_best_promotion_sc-16g-2'
rows = list(csv.DictReader((rep / 'paired_all14_sc-16g-2.csv').open()))
assert len(rows) == 56 and all(row['status'] == 'PASS' for row in rows)
by_case = defaultdict(lambda: defaultdict(list))
for row in rows:
    by_case[int(row['case'])][row['variant']].append(float(row['latency_ms']) * 1000)
prior = root / 'rep/v007_codex_power_s1_two_waves_sc-16g-2/codegen_all14'
current = root / 'rep/v010_codex_power_s8_register_qk_sc-16g-2/codegen_all14'
result = []
for case in range(1, 15):
    medians = {}
    for label in ('baseline', 'root'):
        values = by_case[case][label]
        assert len(values) == 2
        medians[label] = statistics.median(values)
    flags = {}
    for suffix in ('device.cpp', 'host.cpp'):
        old = (prior / f'case{case:02}_v000.{suffix}').read_bytes()
        middle = (prior / f'case{case:02}_v007.{suffix}').read_bytes()
        middle2 = (current / f'case{case:02}_v007.{suffix}').read_bytes()
        new = (current / f'case{case:02}_v010.{suffix}').read_bytes()
        assert middle == middle2
        flags[suffix] = old != new
    result.append({'case': case, 'baseline_median_us': round(medians['baseline'], 6), 'root_median_us': round(medians['root'], 6), 'change_pct': round((medians['root'] / medians['baseline'] - 1) * 100, 4), 'device_changed': flags['device.cpp'], 'host_changed': flags['host.cpp']})
assert [x['case'] for x in result if x['device_changed']] == [6, 12]
assert [x['case'] for x in result if x['host_changed']] == [6, 12]
summary = {'cases': result, 'baseline_latency_sum_us': round(sum(x['baseline_median_us'] for x in result), 6), 'root_latency_sum_us': round(sum(x['root_median_us'] for x in result), 6), 'all_pass': True, 'paired_runs': len(rows), 'root_sha256': hashlib.sha256((root/'submission.py').read_bytes()).hexdigest()}
benchmarked_source = (root/'submission/v010_codex_power_s8_register_qk_sc-16g-2/submission.py').read_bytes()
assert (root/'submission.py').read_bytes() == b'# codex-power v013\n' + benchmarked_source
summary['benchmarked_source_sha256'] = hashlib.sha256(benchmarked_source).hexdigest()
summary['source_annotation'] = '# codex-power v013'
(rep / 'paired_analysis.json').write_text(json.dumps(summary, indent=2) + '\n')
print(summary['paired_runs'], summary['baseline_latency_sum_us'], summary['root_latency_sum_us'], summary['root_sha256'])
