import csv
import hashlib
import json
from pathlib import Path

repo = Path('/root/tilelang-metax')
root = repo / 'race_tests/nsa'
id = 'v020_codex_power_s1_score_bridge_layout_sc-16g-2'
experiment, hack, rep, submission = [root / folder / id for folder in ('experiments', 'hack', 'rep', 'submission')]

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

candidate = experiment / 'candidate.py'
rows = list(csv.DictReader((rep / 'screen_case6_sc-16g-2.csv').open()))
assert len(rows) == 1 and rows[0]['case'] == '6' and rows[0]['status'] == 'PASS'
assert abs(float(rows[0]['latency_ms']) - 0.159002) < 1e-6
for name in ('screen_case6.exit', 'codegen.exit', 'oj_static.exit'):
    assert (rep / name).read_text().strip() == '0'
assert 'VALID OJ SUBMISSION SOURCE' in (rep / 'oj_static.log').read_text()
assert (rep / 'codegen/case06.device.cpp').exists()
assert (rep / 'case06.resource.exit').read_text().strip() == '0'
assert (submission / 'UNAVAILABLE.md').exists()
paths = [p for d in (experiment, hack, rep, submission) for p in d.rglob('*') if p.is_file() and p.name not in ('artifact_hashes_sc-16g-2.txt', 'manifest_sc-16g-2.json')]
index = rep / 'artifact_hashes_sc-16g-2.txt'
index.write_text(''.join(f'{sha(p)}  {p.relative_to(repo)}\n' for p in sorted(paths)))
manifest = {'iteration': id, 'status': 'screen_rejected_case6_slower', 'machine': 'sc-16g-2 / MetaX C500 / 16G sGPU', 'branch': 'codex-power', 'parent_commit': '4664fb602c345a6f2810fd2f0cb00bc16d9ac6e8', 'starting_commit': 'ffa68b684e3876df2821fe34c9959493c2ca065a', 'candidate_sha256': sha(candidate), 'case6_us':159.002,'own_case6_target_us':159.813,'v028_case6_target_us':156.639, 'reference': 'PASS', 'oj_static': 'PASS', 'full_official_and_oj': 'not_run_due_to_falsifying_screen', 'artifact_index': str(index.relative_to(repo)), 'artifact_index_sha256': sha(index)}
(rep / 'manifest_sc-16g-2.json').write_text(json.dumps(manifest, indent=2) + '\n')
print('finalized', len(paths), 'files')
