import hashlib
import json
from pathlib import Path

repo = Path('/root/tilelang-metax')
root = repo / 'race_tests/nsa'
iteration = 'v008_codex_power_s8_two_waves_sc-16g-2'
rep = root / 'rep' / iteration
experiment = root / 'experiments' / iteration
hack = root / 'hack' / iteration
submission = root / 'submission' / iteration

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

candidate = experiment / 'candidate.py'
assert sha(candidate) == '72008f81140a79c67b8c86261af1523d4773f6ea5e2ad4f351f5114ca6c5ff59'
assert (rep / 'source_oj_static.exit').read_text().strip() == '0'
assert (rep / 'screen_case12.exit').read_text().strip() == '1'
assert 'Divide by zero' in (rep / 'screen_case12.log').read_text()
assert (submission / 'UNAVAILABLE.md').exists()
assert (rep / 'UNAVAILABLE_FULL_PROFILE.md').exists()
paths = []
for directory in (experiment, hack, rep, submission):
    for path in directory.rglob('*'):
        if path.is_file() and path.name not in ('artifact_hashes_sc-16g-2.txt','manifest_sc-16g-2.json'):
            paths.append(path)
index = rep / 'artifact_hashes_sc-16g-2.txt'
index.write_text(''.join(f'{sha(path)}  {path.relative_to(repo)}\n' for path in sorted(paths)))
manifest = {
    'iteration': iteration,
    'status': 'failed_compile_case12',
    'machine': 'sc-16g-2 / MetaX C500 / 16G sGPU',
    'branch': 'codex-power',
    'parent_commit': '9c3b39d4fff9f1c74587a3022bb666521f24ca36',
    'starting_commit': 'ffa68b684e3876df2821fe34c9959493c2ca065a',
    'candidate_sha256': sha(candidate),
    'source_oj_static': 'PASS',
    'compile_failure': 'case12 TileLang Divide by zero',
    'correctness_and_performance': 'unavailable_due_to_compile_failure',
    'report': str((rep / 'report_sc-16g-2.md').relative_to(repo)),
    'artifact_index': str(index.relative_to(repo)),
    'artifact_index_sha256': sha(index),
}
(rep / 'manifest_sc-16g-2.json').write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + '\n')
print('finalized', len(paths), 'files', sha(index))
