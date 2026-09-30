import csv
import hashlib
import json
from pathlib import Path

repo = Path('/root/tilelang-metax')
root = repo / 'race_tests/nsa'
iteration = 'v009_codex_power_s8_group2_two_waves_sc-16g-2'
rep = root / 'rep' / iteration
experiment = root / 'experiments' / iteration
hack = root / 'hack' / iteration
submission = root / 'submission' / iteration

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

expected = {
    'candidate.py': 'bff0a800c667b4d260ea7c0ad4a3d395c4d89bbd6d6b62f996c29d35ad81f184',
    'candidate_fragment.py': 'd5c0210296215b6a5feb0fcf8b9287c36503a1ccfe55903c8e4b3dee1dfe3e73',
    'candidate_parallel_load.py': '46440238aa3ecdbbdaf7151d3772e4b27cd938a9c8aa8c9c314a82ac7818cc32',
}
for name, value in expected.items():
    assert sha(experiment / name) == value
for name in ('source_oj_static.exit','fragment_oj_static.exit','parallel_load_oj_static.exit','screen_shared.exit','screen_parallel_load.exit','codegen.exit','case12.resource.exit','parallel_load_codegen.exit','generated_oj_static.exit','parallel_load_generated_oj_static.exit'):
    assert (rep / name).read_text().strip() == '0', name
assert (rep / 'screen_fragment.exit').read_text().strip() == '1'
assert 'Layout infer conflict' in (rep / 'screen_fragment.log').read_text()
for name, expected_latency in (('screen_shared_sc-16g-2.csv',0.135557),('screen_parallel_load_sc-16g-2.csv',0.135511)):
    rows = list(csv.DictReader((rep / name).open()))
    assert len(rows) == 1 and rows[0]['case'] == '12' and rows[0]['status'] == 'PASS'
    assert abs(float(rows[0]['latency_ms']) - expected_latency) < 0.000001
assert sha(rep / 'codegen/case12.device.cpp') != sha(rep / 'codegen_parallel_load/case12.device.cpp')
assert (submission / 'UNAVAILABLE.md').exists() and (rep / 'UNAVAILABLE_FULL_PROFILE.md').exists()
paths = []
for directory in (experiment, hack, rep, submission):
    for path in directory.rglob('*'):
        if path.is_file() and path.name not in ('artifact_hashes_sc-16g-2.txt','manifest_sc-16g-2.json'):
            paths.append(path)
index = rep / 'artifact_hashes_sc-16g-2.txt'
index.write_text(''.join(f'{sha(path)}  {path.relative_to(repo)}\n' for path in sorted(paths)))
manifest = {
    'iteration': iteration,
    'status': 'screen_rejected_case12_slower',
    'machine': 'sc-16g-2 / MetaX C500 / 16G sGPU',
    'branch': 'codex-power',
    'parent_commit': '8796bde971e357bbe0b524c66b1ca5a322c67d2f',
    'starting_commit': 'ffa68b684e3876df2821fe34c9959493c2ca065a',
    'sources_sha256': expected,
    'shared_case12_us': 135.557,
    'parallel_load_case12_us': 135.511,
    'historical_baseline_case12_us': 124.155,
    'fragment_variant': 'compile_failure_layout_infer_conflict',
    'full_official_and_oj': 'not_run_due_to_falsifying_screens',
    'report': str((rep / 'report_sc-16g-2.md').relative_to(repo)),
    'artifact_index': str(index.relative_to(repo)),
    'artifact_index_sha256': sha(index),
}
(rep / 'manifest_sc-16g-2.json').write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + '\n')
print('finalized', len(paths), 'files', sha(index))
