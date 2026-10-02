from pathlib import Path
import json,sys,subprocess,hashlib,datetime
root=Path('/root/tilelang-metax');r=root/'race_tests/nsa/rep/v214_worker2_parent_c8_current_profile_subagent2'
print('PROFILE_CHILD_READY',flush=True);assert sys.stdin.buffer.readline()==b'GO\n'
m=json.loads((r/'fixed_profile_manifest.json').read_text())
for path,key in [('tool_path','toolSHA'),('driver_path','driverSHA'),('source_path','sourceSHA')]:
 assert hashlib.sha256(Path(m[path]).read_bytes()).hexdigest()==m[key]
assert hashlib.sha256((root/'race_tests/nsa/official_case.json').read_bytes()).hexdigest()==m['official_JSON_SHA']
argv=m['fixed_profiler_argv'];p=subprocess.Popen(argv,cwd='/opt/mcProfiler-ubuntu18.04',start_new_session=True)
(r/'profiler_CLI_originalPopen_handle.json').write_text(json.dumps({'argv':argv,'PID':p.pid,'originalPopen_held':True,'actualCLIinvocations':1,'utc':datetime.datetime.now(datetime.timezone.utc).isoformat()},indent=2)+'\n')
print('PROFILER_CLI_STARTED',p.pid,flush=True);code=p.wait();(r/'profiler_CLI_actualwait.exit').write_text(str(code)+'\n');print('PROFILER_CLI_ACTUALWAIT',code,flush=True);sys.exit(code)
