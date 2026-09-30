import csv
import hashlib
import json
from pathlib import Path

repo = Path('/root/tilelang-metax')
root = repo / 'race_tests/nsa'
id = 'v012_codex_power_s8_direct_output_sc-16g-2'
experiment, hack, rep, submission = [root / folder / id for folder in ('experiments', 'hack', 'rep', 'submission')]

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

candidate = experiment / 'candidate.py'
rows = list(csv.DictReader((rep / 'screen_case12_sc-16g-2.csv').open()))
assert len(rows) == 1 and rows[0]['case'] == '12' and rows[0]['status'] == 'PASS'
assert abs(float(rows[0]['latency_ms']) - 0.117294) < 1e-6
for name in ('screen_case12.exit', 'paired_case12.exit', 'codegen.exit', 'oj_static.exit'):
    assert (rep / name).read_text().strip() == '0'
assert 'VALID OJ SUBMISSION SOURCE' in (rep / 'oj_static.log').read_text()
assert (rep / 'codegen/case12.device.cpp').exists()
assert sha(rep / 'codegen/case12.device.cpp') != sha(root / 'rep/v010_codex_power_s8_register_qk_sc-16g-2/codegen/case12.device.cpp')
import statistics
paired = list(csv.DictReader((rep / 'paired_case12_sc-16g-2.csv').open()))
assert len(paired) == 16 and all(row['status'] == 'PASS' for row in paired)
for label, expected in [('v010', 116.534), ('v012', 117.2405)]:
    values = [float(row['latency_ms']) * 1000 for row in paired if row['variant'] == label]
    assert len(values) == 8 and abs(statistics.median(values) - expected) < 0.001
assert (submission / 'UNAVAILABLE.md').exists()
paths = [p for d in (experiment, hack, rep, submission) for p in d.rglob('*') if p.is_file() and p.name not in ('artifact_hashes_sc-16g-2.txt', 'manifest_sc-16g-2.json')]
index = rep / 'artifact_hashes_sc-16g-2.txt'
index.write_text(''.join(f'{sha(p)}  {p.relative_to(repo)}\n' for p in sorted(paths)))
manifest = {'iteration': id, 'status': 'screen_rejected_case12_slower', 'machine': 'sc-16g-2 / MetaX C500 / 16G sGPU', 'branch': 'codex-power', 'parent_commit': '25a8342c1eee6a696c9ab4b3b66328f36ff593d2', 'starting_commit': 'ffa68b684e3876df2821fe34c9959493c2ca065a', 'candidate_sha256': sha(candidate), 'case12_us': 117.294, 'paired_v010_case12_us': 116.534, 'paired_v012_case12_us': 117.2405, 'reference': 'PASS', 'oj_static': 'PASS', 'full_official_and_oj': 'not_run_due_to_falsifying_screen', 'artifact_index': str(index.relative_to(repo)), 'artifact_index_sha256': sha(index)}
(rep / 'manifest_sc-16g-2.json').write_text(json.dumps(manifest, indent=2) + '\n')
print('finalized', len(paths), 'files')
