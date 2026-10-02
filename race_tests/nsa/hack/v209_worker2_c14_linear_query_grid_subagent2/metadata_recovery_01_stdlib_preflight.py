import sys
print('METADATA_CHILD_READY',flush=True)
assert sys.stdin.readline().strip()=='GO'
from pathlib import Path
import json,hashlib,importlib.util
root=Path('/root/tilelang-metax');v='v209_worker2_c14_linear_query_grid_subagent2';r=root/'race_tests/nsa/rep'/v
manifest=json.loads((r/'metadata_launch_manifest.json').read_text())
for entry in manifest['fixed_inputs']:
 p=Path(entry['path']);assert p.exists() and hashlib.sha256(p.read_bytes()).hexdigest()==entry['sha256'],str(p)

print("STDLIB_FIXED_INPUTS_VERIFIED_NO_TILELANG_IMPORT",flush=True)
