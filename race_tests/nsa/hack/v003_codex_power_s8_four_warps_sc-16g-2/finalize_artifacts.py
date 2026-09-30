import csv
import hashlib
import json
from pathlib import Path

repo = Path('/root/tilelang-metax')
root = repo / 'race_tests/nsa'
iteration = 'v003_codex_power_s8_four_warps_sc-16g-2'
rep = root / 'rep' / iteration
experiment = root / 'experiments' / iteration
hack = root / 'hack' / iteration
submission = root / 'submission' / iteration

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

candidate = experiment / 'candidate.py'
assert sha(candidate) == '49274a43b56a6c1ccd32a66ac4c1655bd631f821decbd6a3c6d0e340b078fef7'
assert (rep / 'source_oj_static.exit').read_text().strip() == '0'
assert (rep / 'generated_oj_static.exit').read_text().strip() == '0'
assert (rep / 'screen_case12.exit').read_text().strip() == '0'
assert (rep / 'screen_fragment_conflict.exit').read_text().strip() == '1'
assert 'Layout infer conflict' in (rep / 'screen_fragment_conflict.log').read_text()
assert sha(experiment / 'candidate_fragment_conflict.py') == 'b2d93c35912d86acda5d8284f5e091cce84d3a030f739a3064e3524739d22f27'
assert (rep / 'codegen.exit').read_text().strip() == '0'
assert (rep / 'case12.resource.exit').read_text().strip() == '0'
rows = list(csv.DictReader((rep / 'screen_case12_sc-16g-2.csv').open()))
assert len(rows) == 1 and rows[0]['case'] == '12' and rows[0]['status'] == 'PASS'
assert abs(float(rows[0]['latency_ms']) - 0.338908) < 0.000001
assert (submission / 'UNAVAILABLE.md').exists()
assert (rep / 'UNAVAILABLE_FULL_PROFILE.md').exists()
paths = []
for directory in (experiment, hack, rep, submission):
    for path in directory.rglob('*'):
        if path.is_file() and path.name not in ('artifact_hashes_sc-16g-2.txt', 'manifest_sc-16g-2.json'):
            paths.append(path)
index = rep / 'artifact_hashes_sc-16g-2.txt'
index.write_text(''.join(f'{sha(path)}  {path.relative_to(repo)}\n' for path in sorted(paths)))
manifest = {
    'iteration': iteration,
    'status': 'screen_rejected_latency_regression',
    'machine': 'sc-16g-2 / MetaX C500 / 16G sGPU',
    'branch': 'codex-power',
    'parent_commit': 'c875fcaff7ca8c71924f19d118ba950499df4c17',
    'source_sha256': sha(candidate),
    'source_and_selected_codegen_oj_static': 'PASS',
    'case12_reference': 'PASS',
    'case12_baseline_screen_us': 124.155,
    'case12_candidate_screen_us': 338.908,
    'latency_ratio': 2.7297168861503764,
    'resource': {'baseline_MT_ST': [73, 28], 'candidate_MT_ST': [54, 28], 'baseline_static_warps': 6, 'candidate_static_warps': 8},
    'full_official_and_oj': 'not_run_due_to_falsifying_screen',
    'report': str((rep / 'report_sc-16g-2.md').relative_to(repo)),
    'artifact_index': str(index.relative_to(repo)),
    'artifact_index_sha256': sha(index),
}
(rep / 'manifest_sc-16g-2.json').write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + '\n')
print('finalized', len(paths), 'files', sha(index))
