from pathlib import Path
import json,hashlib,sys,subprocess
root=Path('/root/tilelang-metax');r=root/'race_tests/nsa/rep/v219_worker2_parent_c3_evidence_subagent2'
print('RESOURCE_CHILD_READY',flush=True);assert sys.stdin.buffer.readline()==b'GO\n'
m=json.loads((r/'resource_command_manifest.json').read_text())
for q in m['fixed_inputs']:assert hashlib.sha256(Path(q['path']).read_bytes()).hexdigest()==q['sha256']
argv=m['argv']
with (r/'parent_c3_resource.log').open('w') as log:
 p=subprocess.Popen(argv,stdout=log,stderr=subprocess.STDOUT,cwd=root);(r/'parent_c3_resource_originalPopen_handle.json').write_text(json.dumps({'argv':argv,'PID':p.pid,'originalPopen_held':True},indent=2)+'\n');code=p.wait()
(r/'parent_c3_resource.exit').write_text(str(code)+'\n');print('RESOURCE_ACTUALWAIT',code,flush=True);sys.exit(code)
