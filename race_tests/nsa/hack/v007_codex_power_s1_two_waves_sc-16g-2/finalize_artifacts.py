import csv
import hashlib
import json
from pathlib import Path
from statistics import median

repo = Path('/root/tilelang-metax')
root = repo / 'race_tests/nsa'
iteration = 'v007_codex_power_s1_two_waves_sc-16g-2'
rep = root / 'rep' / iteration
experiment = root / 'experiments' / iteration
hack = root / 'hack' / iteration
submission = root / 'submission' / iteration / 'submission.py'
source = experiment / 'candidate.py'

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

assert sha(root / 'submission.py') == '462d505fe28efb0a0140feb1a1a4ca00df24b31d89f08beef2478c18685ca0b1'
assert sha(source) == sha(submission) == '3d3f1b6d3b7bfb98a3ed19b665e412ac1871e77f3a9d14c8a9d6c4cf1e13ead7'
assert (rep / 'screen_fragment_conflict.exit').read_text().strip() == '1'
assert 'Layout infer conflict' in (rep / 'screen_fragment_conflict.log').read_text()
assert (experiment / 'candidate_fragment_conflict.py').exists()
for name in ('candidate_official14_sc-16g-2.csv','exact_submission_official14_sc-16g-2.csv','exact_submission_official14_clean_sc-16g-2.csv'):
    rows = list(csv.DictReader((rep / name).open()))
    assert len(rows) == 14 and all(row['status'] == 'PASS' for row in rows), name
clean = list(csv.DictReader((rep / 'exact_submission_official14_clean_sc-16g-2.csv').open()))
assert abs(float(clean[9]['latency_ms']) - 0.014141) < 0.000001
for name, count in (('paired_case6_sc-16g-2.csv',8),('paired_all14_sc-16g-2.csv',56)):
    rows = list(csv.DictReader((rep / name).open()))
    assert len(rows) == count and all(row['status'] == 'PASS' for row in rows), name
codegen = list(csv.DictReader((rep / 'all14_codegen_sc-16g-2.csv').open()))
assert len(codegen) == 14
for row in codegen:
    expect_same = int(row['case']) != 6
    assert (row['device_identical'] == 'True') == expect_same
    assert (row['host_identical'] == 'True') == expect_same
for name in ('source_oj_static.log','submission_oj_static.log','generated_all14_oj_static.log'):
    assert 'VALID OJ SUBMISSION SOURCE' in (rep / name).read_text(), name
assert (rep / 'case06.resource.exit').read_text().strip() == '0'
trace = list(csv.DictReader((rep / 'mctrace_summary_sc-16g-2.csv').open()))
profile = list(csv.DictReader((rep / 'mcprof_summary_sc-16g-2.csv').open()))
hbm = list(csv.DictReader((rep / 'hbm_summary_sc-16g-2.csv').open()))
assert len(trace) == 2 and len(profile) == 4 and len(hbm) == 2
assert len(list(csv.DictReader((rep / 'roofline_sensitivity_sc-16g-2.csv').open()))) == 4
for label in ('v000','v007'):
    assert (rep / f'mctrace_{label}.exit').read_text().strip() == '0'
    assert (rep / f'mcprof_{label}/exit_code.txt').read_text().strip() == '0'
    assert (rep / f'hbm_{label}.exit').read_text().strip() == '0'
assert (rep / 'OJ_PENDING.md').exists()
pair_case6 = list(csv.DictReader((rep / 'paired_case6_sc-16g-2.csv').open()))
old = median(float(row['latency_ms']) for row in pair_case6 if row['variant'] == 'v006')
new = median(float(row['latency_ms']) for row in pair_case6 if row['variant'] == 'v007')
assert abs(old - 0.2165655) < 0.000001 and abs(new - 0.159447) < 0.000001
pair_all = list(csv.DictReader((rep / 'paired_all14_sc-16g-2.csv').open()))
base_case6 = median(float(row['latency_ms']) for row in pair_all if row['case'] == '6' and row['variant'] == 'v000')
new_case6 = median(float(row['latency_ms']) for row in pair_all if row['case'] == '6' and row['variant'] == 'v007')
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
    'parent_commit': '89a5bd139efd0796ba67f70b8fd04e7bed03be0e',
    'starting_commit': 'ffa68b684e3876df2821fe34c9959493c2ca065a',
    'baseline_source_sha256': sha(root / 'submission.py'),
    'candidate_and_submission_sha256': sha(submission),
    'correctness': {'candidate_official14':'14/14','exact_submission_official14':'14/14','exact_submission_clean_official14':'14/14','paired_case6':'8/8','paired_all14':'56/56'},
    'case6_v006_to_v007_paired_us': {'v006_median': old*1000, 'v007_median': new*1000, 'delta_pct': (new/old-1)*100},
    'case6_v000_to_v007_all14_paired_us': {'v000_median': base_case6*1000, 'v007_median': new_case6*1000, 'delta_pct': (new_case6/base_case6-1)*100},
    'codegen': 'Only case6 device and host launch code differ; other 13 cases identical',
    'mcTracer_kernel_us': {'v000_median': 218.112, 'v007_median': 157.440, 'gap_both': 2.816},
    'external_oj': 'pending',
    'report': str((rep / 'report_sc-16g-2.md').relative_to(repo)),
    'artifact_index': str(index.relative_to(repo)),
    'artifact_index_sha256': sha(index),
}
(rep / 'manifest_sc-16g-2.json').write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + '\n')
print('finalized', len(paths), 'files', sha(index))
