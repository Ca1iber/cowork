from pathlib import Path
import json,sys,subprocess,hashlib,datetime
import whole_cgroup_utils as U
r=U.r
print('PROFILE_STABLE_CHILD_READY',flush=True)
assert sys.stdin.buffer.readline()==b'GO\n'
m=json.loads((r/'fixed_parent_evidence_manifest.json').read_text())
for path,key in [('tool_path','toolSHA'),('driver_path','driverSHA'),('source_path','sourceSHA')]:
 p=Path(m[path]);assert hashlib.file_digest(p.open('rb'),'sha256').hexdigest()==m[key]
assert hashlib.file_digest((U.root/'race_tests/nsa/official_case.json').open('rb'),'sha256').hexdigest()==m['official_JSON_SHA']
argv=m['fixed_profiler_argv'];print('CLI_START',flush=True)
p=subprocess.Popen(argv,cwd='/opt/mcProfiler-ubuntu18.04')
identity=U.info(p.pid);(r/'profiler_CLI_launch.json').write_text(json.dumps({'argv':argv,'PID':p.pid,'initial_identity':identity,'actual_CLI_invocations':1,'utc':datetime.datetime.now(datetime.timezone.utc).isoformat()},indent=2)+'\n')
code=p.wait();(r/'profiler_CLI.exit').write_text(str(code)+'\n');print('CLI_REAL_TERMINAL',p.pid,code,flush=True)
sys.exit(code)
