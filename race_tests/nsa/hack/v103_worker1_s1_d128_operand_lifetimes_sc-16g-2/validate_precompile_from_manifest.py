from pathlib import Path
import json,hashlib,subprocess
p=Path('/root/tilelang-metax/race_tests/nsa');r=p/'rep/v103_worker1_s1_d128_operand_lifetimes_sc-16g-2';x=json.loads((r/'runner_sources_manifest.json').read_text())['sources']['power_v103'];source=Path(x['path']);assert source.is_file() and hashlib.sha256(source.read_bytes()).hexdigest()==x['sha256'];meta=json.loads((r/'precompile_codegen.json').read_text());assert meta['source_sha256']==x['sha256'];cmd=['/opt/conda/bin/python',str(p/'hack/validate_oj_submission.py'),str(source)]
for rec in meta['records']:
 f=Path(rec['device_path']);assert f.is_file() and hashlib.sha256(f.read_bytes()).hexdigest()==rec['device_sha256'];cmd+=['--generated-code',str(f)]
a=subprocess.run(cmd,capture_output=True,text=True);(r/'precompile_static_recovery.log').write_text(a.stdout+a.stderr);(r/'precompile_static_recovery.exit').write_text(str(a.returncode)+'\n');print(a.stdout,a.stderr);raise SystemExit(a.returncode)
