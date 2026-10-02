from pathlib import Path
import json,sys,subprocess,os
print('CYCLETRACE_CHILD_READY',flush=True);assert sys.stdin.buffer.readline()==b'GO\n'
root=Path('/root/tilelang-metax');r=Path('/tmp/nsa_cycle_trace_leader');m=json.loads((r/'trace_launch_manifest.json').read_text());env={**os.environ,**m['target_only_env_overrides']}
p=subprocess.Popen(m['tool_argv'],env=env,cwd=r,start_new_session=True);(r/'NG_originalPopen_handle.json').write_text(json.dumps({'argv':m['tool_argv'],'PID':p.pid,'originalPopen_held':True},indent=2)+'\n');print('NG_STARTED',p.pid,flush=True);code=p.wait();(r/'NG_actualwait.exit').write_text(str(code)+'\n');print('NG_ACTUALWAIT',code,flush=True);sys.exit(code)
