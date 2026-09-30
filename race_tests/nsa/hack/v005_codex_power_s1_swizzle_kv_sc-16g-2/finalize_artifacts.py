import csv
import hashlib
import json
from pathlib import Path

repo = Path('/root/tilelang-metax')
root = repo / 'race_tests/nsa'
iteration = 'v005_codex_power_s1_swizzle_kv_sc-16g-2'
rep = root / 'rep' / iteration
experiment = root / 'experiments' / iteration
hack = root / 'hack' / iteration
submission = root / 'submission' / iteration

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

candidate = experiment / 'candidate.py'
assert sha(candidate) == '6af1f35f8c2fa2fb10b5100512ec43e95e8e02e6df48a951f68e99c2afa8d237'
for name in ('source_oj_static.exit','screen_case6.exit','codegen.exit','generated_oj_static.exit'):
    assert (rep / name).read_text().strip() == '0', name
rows = list(csv.DictReader((rep / 'screen_case6_sc-16g-2.csv').open()))
assert len(rows) == 1 and rows[0]['case'] == '6' and rows[0]['status'] == 'PASS'
assert abs(float(rows[0]['latency_ms']) - 0.220549) < 0.000001
base_device = root / 'rep/v000_codex_power_baseline_sc-16g-2/codegen/case06.device.cpp'
candidate_device = rep / 'codegen/case06.device.cpp'
assert base_device.read_bytes() == candidate_device.read_bytes()
assert sha(candidate_device) == '5092f1f787bbc3c1de8b332937554714069b40ec7228fda591778ca8b3ada039'
assert (submission / 'UNAVAILABLE.md').exists()
paths = []
for directory in (experiment, hack, rep, submission):
    for path in directory.rglob('*'):
        if path.is_file() and path.name not in ('artifact_hashes_sc-16g-2.txt','manifest_sc-16g-2.json'):
            paths.append(path)
index = rep / 'artifact_hashes_sc-16g-2.txt'
index.write_text(''.join(f'{sha(path)}  {path.relative_to(repo)}\n' for path in sorted(paths)))
manifest = {
    'iteration': iteration,
    'status': 'screen_rejected_codegen_identical',
    'machine': 'sc-16g-2 / MetaX C500 / 16G sGPU',
    'branch': 'codex-power',
    'parent_commit': '19e71aa6310f9f15cac6e97e3590d284a7e7c776',
    'source_sha256': sha(candidate),
    'case6_reference': 'PASS',
    'case6_baseline_screen_us': 220.974,
    'case6_candidate_screen_us': 220.549,
    'device_code_identical_to_baseline': True,
    'device_code_sha256': sha(candidate_device),
    'full_official_and_oj': 'not_run_due_to_codegen_falsification',
    'report': str((rep / 'report_sc-16g-2.md').relative_to(repo)),
    'artifact_index': str(index.relative_to(repo)),
    'artifact_index_sha256': sha(index),
}
(rep / 'manifest_sc-16g-2.json').write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + '\n')
print('finalized', len(paths), 'files', sha(index))
