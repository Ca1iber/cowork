from pathlib import Path
import json,hashlib,subprocess,sys
print('RESOURCE_CHILD_READY',flush=True)
assert sys.stdin.buffer.readline()==b'GO\n'
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v209_worker2_c14_linear_query_grid_subagent2')
m=json.loads((r/'fixed_parent_evidence_manifest.json').read_text())
for path,key in [('source_path','sourceSHA'),('parent_CPP_path','parent_CPP_SHA'),('SDK_path','SDK_SHA')]:assert hashlib.file_digest(Path(m[path]).open('rb'),'sha256').hexdigest()==m[key]
argv=m['fixed_resource_argv']
with (r/'parent_resource.log').open('w') as log:p=subprocess.Popen(argv,cwd=m['resource_CWD'],stdout=log,stderr=subprocess.STDOUT)
(r/'parent_resource.pid').write_text(str(p.pid)+'\n');code=p.wait();(r/'parent_resource.exit').write_text(str(code)+'\n');print('RESOURCE_REAL_TERMINAL',p.pid,code,flush=True);sys.exit(code)
