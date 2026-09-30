import csv
import hashlib
import json
from pathlib import Path

repo = Path('/root/tilelang-metax')
root = repo / 'race_tests/nsa'
iteration = 'v004_codex_power_s1_reprofile_sc-16g-2'
rep = root / 'rep' / iteration
experiment = root / 'experiments' / iteration
hack = root / 'hack' / iteration
submission = root / 'submission' / iteration

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

assert sha(root / 'submission.py') == '462d505fe28efb0a0140feb1a1a4ca00df24b31d89f08beef2478c18685ca0b1'
rows = list(csv.DictReader((rep / 'reprofile_case6_12_sc-16g-2.csv').open()))
assert len(rows) == 2 and [int(r['case']) for r in rows] == [6, 12]
assert all(r['status'] == 'PASS' for r in rows)
trace = list(csv.DictReader((rep / 'mctrace_summary_sc-16g-2.csv').open()))
assert len(trace) == 2 and [int(r['case']) for r in trace] == [6, 12]
assert all((rep / f'mctrace_case{case}.exit').read_text().strip() == '0' for case in (6, 12))
assert (rep / 'mcprof_case6/exit_code.txt').read_text().strip() == '0'
profile = list(csv.DictReader((rep / 'mcprof_summary_sc-16g-2.csv').open()))
assert len(profile) == 2 and all(float(r['achieved_waves']) == float(r['dispatched_waves']) == 8192 for r in profile)
assert all(r['global_read_bytes'] == r['global_write_bytes'] == r['mte_duty_pct'] == r['wg_load_latency_cycles'] == '' for r in profile)
assert (rep / 'UNAVAILABLE_MCPROF_METRICS.md').exists()
assert (rep / 'hbm_case6.exit').read_text().strip() == '0'
hbm = list(csv.DictReader((rep / 'hbm_summary_sc-16g-2.csv').open()))
assert len(hbm) == 1 and int(hbm[0]['active_stable']) == 56
assert (submission / 'UNAVAILABLE.md').exists()
paths = []
for directory in (experiment, hack, rep, submission):
    for path in directory.rglob('*'):
        if path.is_file() and path.name not in ('artifact_hashes_sc-16g-2.txt', 'manifest_sc-16g-2.json'):
            paths.append(path)
index = rep / 'artifact_hashes_sc-16g-2.txt'
index.write_text(''.join(f'{sha(path)}  {path.relative_to(repo)}\n' for path in sorted(paths)))
manifest = {
    'iteration': iteration,
    'status': 'baseline_reprofiled_after_three_failed_versions',
    'machine': 'sc-16g-2 / MetaX C500 / 16G sGPU',
    'branch': 'codex-power',
    'parent_commit': '78177bee12de796615afbaa2d173d1389791a48d',
    'source_sha256': sha(root / 'submission.py'),
    'correctness': 'case6 and case12 PASS, project-native reference, warmup10/repeat50',
    'official_case6_ms': float(rows[0]['latency_ms']),
    'official_case12_ms': float(rows[1]['latency_ms']),
    'mctrace_case6_us': float(trace[0]['kernel_median_us']),
    'mctrace_case12_us': float(trace[1]['kernel_median_us']),
    'hbm_case6_median_gbps': float(hbm[0]['median_gbps']),
    'mcprofiler_unavailable_metrics': ['global_read_bytes','global_write_bytes','mte_duty_pct','wg_load_latency_cycles'],
    'next_mechanism': 'case6 shared operand layout, independent of S8 dense tile family',
    'report': str((rep / 'report_sc-16g-2.md').relative_to(repo)),
    'artifact_index': str(index.relative_to(repo)),
    'artifact_index_sha256': sha(index),
}
(rep / 'manifest_sc-16g-2.json').write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + '\n')
print('finalized', len(paths), 'files', sha(index))
