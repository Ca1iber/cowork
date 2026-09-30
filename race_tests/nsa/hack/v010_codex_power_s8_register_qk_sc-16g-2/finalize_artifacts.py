import csv
import hashlib
import json
from pathlib import Path
from statistics import median

repo = Path('/root/tilelang-metax')
root = repo / 'race_tests/nsa'
iteration = 'v010_codex_power_s8_register_qk_sc-16g-2'
rep = root / 'rep' / iteration
experiment = root / 'experiments' / iteration
hack = root / 'hack' / iteration
submission = root / 'submission' / iteration / 'submission.py'
source = experiment / 'candidate.py'

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

assert sha(root / 'submission.py') == '462d505fe28efb0a0140feb1a1a4ca00df24b31d89f08beef2478c18685ca0b1'
assert sha(root / 'submission/v007_codex_power_s1_two_waves_sc-16g-2/submission.py') == '3d3f1b6d3b7bfb98a3ed19b665e412ac1871e77f3a9d14c8a9d6c4cf1e13ead7'
assert sha(source) == sha(submission) == '8da99365862d898e6e0c16f7a36d34a8d8164cda9840daad7d1b55817d633dd8'
for name, expected in (('screen_shared_score_sc-16g-2.csv',0.122368),('screen_fragment_score_sc-16g-2.csv',0.117340)):
    rows = list(csv.DictReader((rep / name).open()))
    assert len(rows) == 1 and rows[0]['case'] == '12' and rows[0]['status'] == 'PASS'
    assert abs(float(rows[0]['latency_ms']) - expected) < 0.000001
for name in ('candidate_official14_sc-16g-2.csv','exact_submission_official14_sc-16g-2.csv'):
    rows = list(csv.DictReader((rep / name).open()))
    assert len(rows) == 14 and all(row['status'] == 'PASS' for row in rows), name
for name, count in (('paired_case12_sc-16g-2.csv',8),('paired_all14_sc-16g-2.csv',56)):
    rows = list(csv.DictReader((rep / name).open()))
    assert len(rows) == count and all(row['status'] == 'PASS' for row in rows), name
codegen = list(csv.DictReader((rep / 'all14_codegen_sc-16g-2.csv').open()))
assert len(codegen) == 14
for row in codegen:
    expect_same = int(row['case']) != 12
    assert (row['device_identical'] == 'True') == expect_same
    assert (row['host_identical'] == 'True') == expect_same
for name in ('source_oj_static.log','submission_oj_static.log','generated_oj_static.log','generated_all14_oj_static.log'):
    assert 'VALID OJ SUBMISSION SOURCE' in (rep / name).read_text(), name
for name in ('codegen.exit','codegen_shared_score.exit','case12.resource.exit','case12_shared_score.resource.exit'):
    assert (rep / name).read_text().strip() == '0', name
trace = list(csv.DictReader((rep / 'mctrace_summary_sc-16g-2.csv').open()))
profile = list(csv.DictReader((rep / 'mcprof_summary_sc-16g-2.csv').open()))
hbm = list(csv.DictReader((rep / 'hbm_summary_sc-16g-2.csv').open()))
assert len(trace) == 2 and len(profile) == 4 and len(hbm) == 2
assert len(list(csv.DictReader((rep / 'roofline_sensitivity_sc-16g-2.csv').open()))) == 4
for label in ('v007','v010'):
    assert (rep / f'mctrace_{label}.exit').read_text().strip() == '0'
    assert (rep / f'mcprof_{label}/exit_code.txt').read_text().strip() == '0'
    assert (rep / f'hbm_{label}.exit').read_text().strip() == '0'
assert (rep / 'OJ_PENDING.md').exists()
pair = list(csv.DictReader((rep / 'paired_case12_sc-16g-2.csv').open()))
old = median(float(row['latency_ms']) for row in pair if row['variant'] == 'v007')
new = median(float(row['latency_ms']) for row in pair if row['variant'] == 'v010')
assert abs(old - 0.1242625) < 0.000001 and abs(new - 0.1176885) < 0.000001
pair_all = list(csv.DictReader((rep / 'paired_all14_sc-16g-2.csv').open()))
old_all = median(float(row['latency_ms']) for row in pair_all if row['case'] == '12' and row['variant'] == 'v007')
new_all = median(float(row['latency_ms']) for row in pair_all if row['case'] == '12' and row['variant'] == 'v010')
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
    'parent_commit': 'ac4d3f43feb2452e3d80b898e7c53f204e46e09e',
    'starting_commit': 'ffa68b684e3876df2821fe34c9959493c2ca065a',
    'baseline_source_sha256': sha(root / 'submission.py'),
    'parent_source_sha256': sha(root / 'submission/v007_codex_power_s1_two_waves_sc-16g-2/submission.py'),
    'candidate_and_submission_sha256': sha(submission),
    'correctness': {'candidate_official14':'14/14','exact_submission_official14':'14/14','paired_case12':'8/8','paired_all14':'56/56'},
    'case12_paired_us': {'v007_median': old*1000, 'v010_median': new*1000, 'delta_pct': (new/old-1)*100},
    'case12_all14_paired_us': {'v007_median': old_all*1000, 'v010_median': new_all*1000, 'delta_pct': (new_all/old_all-1)*100},
    'codegen': 'Only case12 device and host launch code differ; other 13 cases identical',
    'mcTracer_kernel_us': {'v007_median': 120.832, 'v010_median': 113.792, 'gap_both': 2.816},
    'external_oj': 'pending',
    'report': str((rep / 'report_sc-16g-2.md').relative_to(repo)),
    'artifact_index': str(index.relative_to(repo)),
    'artifact_index_sha256': sha(index),
}
(rep / 'manifest_sc-16g-2.json').write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + '\n')
print('finalized', len(paths), 'files', sha(index))
