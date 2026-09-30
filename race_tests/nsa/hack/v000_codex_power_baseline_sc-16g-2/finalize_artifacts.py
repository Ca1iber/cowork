import csv
import hashlib
import json
from pathlib import Path

repo = Path('/root/tilelang-metax')
root = repo / 'race_tests/nsa'
iteration = 'v000_codex_power_baseline_sc-16g-2'
rep = root / 'rep' / iteration
experiment = root / 'experiments' / iteration
hack = root / 'hack' / iteration
submission = root / 'submission' / iteration

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

assert sha(root / 'submission.py') == '462d505fe28efb0a0140feb1a1a4ca00df24b31d89f08beef2478c18685ca0b1'
assert sha(root / 'official_case.json') == '85f2c34acd793fb0a45084175acd7bcde48ff5d717a395d370800c30cf4e7036'
assert sha(root / 'reference.py') == 'e31d5f188923d8696c7ad190b1652d5b3142c004dc96d0604f371c71f179bf32'
assert sha(hack / 'test_tilelang_nsa_fwd_v28.py') == '6ebdb82ab43a844a908aeb33c08e2b4a6cf2b7385a20f903f123875b53534568'
rows = list(csv.DictReader((rep / 'baseline_official14_sc-16g-2.csv').open()))
assert len(rows) == 14 and all(row['status'] == 'PASS' for row in rows)
assert (rep / 'baseline_oj_static.exit').read_text().strip() == '1'
assert 'forbidden TileLang import form' in (rep / 'baseline_oj_static.log').read_text()
assert (rep / 'codegen.exit').read_text().strip() == '0'
assert (rep / 'mcprof_case12/exit_code.txt').read_text().strip() == '0'
assert len(list(csv.DictReader((rep / 'mcprof_summary_sc-16g-2.csv').open()))) == 2
assert len(list(csv.DictReader((rep / 'mctrace_summary_sc-16g-2.csv').open()))) == 2
assert all((rep / f'mctrace_case{case}.exit').read_text().strip() == '0' for case in (6, 12))
assert (rep / 'hbm_case12.exit').read_text().strip() == '0'
assert len(list(csv.DictReader((rep / 'hbm_summary_sc-16g-2.csv').open()))) == 1
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
    'status': 'baseline_measured_submission_noncompliant',
    'machine': 'sc-16g-2 / MetaX C500 / 16G sGPU',
    'branch': 'codex-power',
    'starting_commit': 'ffa68b684e3876df2821fe34c9959493c2ca065a',
    'root_source_sha256': sha(root / 'submission.py'),
    'corrected_project_runner_sha256': sha(hack / 'test_tilelang_nsa_fwd_v28.py'),
    'correctness': '14/14 PASS using reference, warmup10/repeat50',
    'mean_official_ms': 0.04621564285714286,
    'case6_official_ms': 0.220641,
    'case12_official_ms': 0.124155,
    'case6_mctrace_kernel_us': 218.112,
    'case12_mctrace_kernel_us': 120.576,
    'case12_hbm_median_gbps': 143.4505,
    'submission_import_validation': 'failed: from tilelang import language as T',
    'report': str((rep / 'report_sc-16g-2.md').relative_to(repo)),
    'artifact_index': str(index.relative_to(repo)),
    'artifact_index_sha256': sha(index),
}
(rep / 'manifest_sc-16g-2.json').write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + '\n')
print('finalized', len(paths), 'files', sha(index))
