import sys
print('METADATA_CHILD_READY',flush=True)
assert sys.stdin.readline().strip()=='GO'
from pathlib import Path
import json,hashlib,importlib.util
root=Path('/root/tilelang-metax');v='v212_worker2_c8_direct_k_operand_subagent2';r=root/'race_tests/nsa/rep'/v
manifest=json.loads((r/'metadata_launch_manifest.json').read_text())
for entry in manifest['fixed_inputs']:
 p=Path(entry['path']);assert p.exists() and hashlib.sha256(p.read_bytes()).hexdigest()==entry['sha256'],str(p)

print("V212_METADATA_INPUTS_VERIFIED_NO_TILELANG_IMPORT",flush=True)
