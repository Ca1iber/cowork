import csv
import hashlib
import json
from pathlib import Path
from statistics import median

repo = Path('/root/tilelang-metax')
root = repo / 'race_tests/nsa'
iteration = 'v006_codex_power_s1_direct_output_sc-16g-2'
rep = root / 'rep' / iteration
experiment = root / 'experiments' / iteration
hack = root / 'hack' / iteration
submission = root / 'submission' / iteration / 'submission.py'
source = experiment / 'candidate.py'

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

assert sha(root / 'submission.py') == '462d505fe28efb0a0140feb1a1a4ca00df24b31d89f08beef2478c18685ca0b1'
assert sha(source) == sha(submission) == '20b816ab98e11584ad2e271c2c5feb5e640e79bc244d74656dbd45f16f21fca6'
for name in ('candidate_official14_sc-16g-2.csv', 'exact_submission_official14_sc-16g-2.csv'):
    rows = list(csv.DictReader((rep / name).open()))
    assert len(rows) == 14 and all(row['status'] == 'PASS' for row in rows), name
for name, count in (('paired_case6_sc-16g-2.csv', 8), ('paired_all14_sc-16g-2.csv', 56)):
    rows = list(csv.DictReader((rep / name).open()))
    assert len(rows) == count and all(row['status'] == 'PASS' for row in rows), name
all14 = list(csv.DictReader((rep / 'all14_codegen_sc-16g-2.csv').open()))
assert len(all14) == 14
for row in all14:
    assert row['host_identical'] == 'True'
    assert (row['device_identical'] == 'False') == (int(row['case']) == 6)
for name in ('source_oj_static.log','submission_oj_static.log','generated_all14_oj_static.log'):
    assert 'VALID OJ SUBMISSION SOURCE' in (rep / name).read_text(), name
assert (rep / 'case06.resource.exit').read_text().strip() == '0'
assert len(list(csv.DictReader((rep / 'mctrace_summary_sc-16g-2.csv').open()))) == 2
assert len(list(csv.DictReader((rep / 'mcprof_summary_sc-16g-2.csv').open()))) == 4
assert len(list(csv.DictReader((rep / 'hbm_summary_sc-16g-2.csv').open()))) == 2
assert len(list(csv.DictReader((rep / 'roofline_sensitivity_sc-16g-2.csv').open()))) == 4
for label in ('v000','v006'):
    assert (rep / f'mctrace_{label}.exit').read_text().strip() == '0'
    assert (rep / f'mcprof_{label}/exit_code.txt').read_text().strip() == '0'
    assert (rep / f'hbm_{label}.exit').read_text().strip() == '0'
assert (rep / 'OJ_PENDING.md').exists()
pair = list(csv.DictReader((rep / 'paired_all14_sc-16g-2.csv').open()))
base = median(float(row['latency_ms']) for row in pair if row['case'] == '6' and row['variant'] == 'v000')
new = median(float(row['latency_ms']) for row in pair if row['case'] == '6' and row['variant'] == 'v006')
assert abs(base - 0.220595) < 0.000001 and abs(new - 0.216286) < 0.000001
paths = []
for directory in (experiment, hack, rep, submission.parent):
    for path in directory.rglob('*'):
        if path.is_file() and path.name not in ('artifact_hashes_sc-16g-2.txt','manifest_sc-16g-2.json'):
            paths.append(path)
index = rep / 'artifact_hashes_sc-16g-2.txt'
index.write_text(''.join(f'{sha(path)}  {path.relative_to(repo)}\n' for path in sorted(paths)))
manifest = {
    'iteration': iteration,
    'status': 'local_improved_oj_pending',
    'machine': 'sc-16g-2 / MetaX C500 / 16G sGPU',
    'branch': 'codex-power',
    'parent_commit': '7cda4a1daf89dfc4866e3c6587e77e67081341dc',
    'starting_commit': 'ffa68b684e3876df2821fe34c9959493c2ca065a',
    'baseline_source_sha256': sha(root / 'submission.py'),
    'candidate_and_submission_sha256': sha(submission),
    'correctness': {'candidate_official14': '14/14', 'exact_submission_official14': '14/14', 'paired_case6': '8/8', 'paired_all14': '56/56'},
    'case6_paired_all14_us': {'v000_median': base * 1000, 'v006_median': new * 1000, 'delta_pct': (new / base - 1) * 100},
    'codegen': 'Only case6 device code differs; all host code identical',
    'case6_sync_sites': {'v000': 7, 'v006': 5},
    'mcTracer_kernel_us': {'v000_median': 217.984, 'v006_median': 214.528, 'gap_both': 2.816},
    'external_oj': 'pending',
    'report': str((rep / 'report_sc-16g-2.md').relative_to(repo)),
    'artifact_index': str(index.relative_to(repo)),
    'artifact_index_sha256': sha(index),
}
(rep / 'manifest_sc-16g-2.json').write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + '\n')
print('finalized', len(paths), 'files', sha(index))
