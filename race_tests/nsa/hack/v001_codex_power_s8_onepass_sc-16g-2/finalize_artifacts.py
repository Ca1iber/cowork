import csv
import hashlib
import json
from pathlib import Path

repo = Path('/root/tilelang-metax')
root = repo / 'race_tests/nsa'
iteration = 'v001_codex_power_s8_onepass_sc-16g-2'
rep = root / 'rep' / iteration
experiment = root / 'experiments' / iteration
hack = root / 'hack' / iteration
submission = root / 'submission' / iteration

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

candidate = experiment / 'candidate.py'
assert sha(candidate) == '99ae44c34ec1992e4fe81dce8bc7f9d096f286a47ea9edb5fac0fd50ef735254'
assert (rep / 'source_oj_static.exit').read_text().strip() == '0'
assert (rep / 'generated_oj_static.exit').read_text().strip() == '0'
assert (rep / 'screen_case12.exit').read_text().strip() == '0'
assert (rep / 'codegen.exit').read_text().strip() == '0'
assert (rep / 'case12.resource.exit').read_text().strip() == '0'
rows = list(csv.DictReader((rep / 'screen_case12_sc-16g-2.csv').open()))
assert len(rows) == 1 and rows[0]['case'] == '12' and rows[0]['status'] == 'PASS'
assert abs(float(rows[0]['latency_ms']) - 0.674616) < 0.000001
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
    'parent_commit': 'eb4a08f9fff739138de3f15efc4a9e807b69ad18',
    'source_sha256': sha(candidate),
    'source_and_selected_codegen_oj_static': 'PASS',
    'case12_reference': 'PASS',
    'case12_baseline_screen_us': 124.155,
    'case12_candidate_screen_us': 674.616,
    'latency_ratio': 5.433659538480126,
    'resource': {'baseline_MT_ST': [73, 28], 'candidate_MT_ST': [109, 56], 'baseline_static_warps': 6, 'candidate_static_warps': 4},
    'full_official_and_oj': 'not_run_due_to_falsifying_screen',
    'report': str((rep / 'report_sc-16g-2.md').relative_to(repo)),
    'artifact_index': str(index.relative_to(repo)),
    'artifact_index_sha256': sha(index),
}
(rep / 'manifest_sc-16g-2.json').write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + '\n')
print('finalized', len(paths), 'files', sha(index))
