from pathlib import Path
import sys,json,subprocess,hashlib,os,datetime
r=Path(sys.argv[1]);m=json.loads((r/'native_source_manifest.json').read_text());plan=json.loads((r/'native_execution_plan.json').read_text());assert plan['phase']=='leader_GO_native_screen_once';assert not (r/'launch_once.lock').exists();assert not (r/'native_supervisor_once.lock').exists()
cmd=[m['tools']['python']['path'],'-S','-u',m['tools']['supervisor']['path'],str(r)];assert cmd==json.loads((r/'native_launch_preflight.json').read_text())['corrected_supervisor_argv']
for k,x in list(m['sources'].items())+list(m['tools'].items())+ [('document',m['shared_identity_document']),('parentCPP',m['existing_parent_C11_device'])]:assert Path(x['path']).is_file() and hashlib.sha256(Path(x['path']).read_bytes()).hexdigest()==x['sha256'],k
f=os.open(r/'native_supervisor_once.lock',os.O_CREAT|os.O_EXCL|os.O_WRONLY,0o600);os.write(f,json.dumps({'UTC':datetime.datetime.now(datetime.timezone.utc).isoformat(),'launcher_PID':os.getpid(),'argv':cmd}).encode());os.close(f)
with (r/'native_supervisor.log').open('w') as log:
 p=subprocess.Popen(cmd,cwd='/root/tilelang-metax',stdout=log,stderr=subprocess.STDOUT,start_new_session=True);(r/'native_supervisor.pid').write_text(str(p.pid)+chr(10));(r/'native_supervisor.pgid').write_text(str(os.getpgid(p.pid))+chr(10));rc=p.wait()
(r/'native_supervisor_actual.exit').write_text(str(rc)+chr(10));(r/'native_supervisor_wait.json').write_text(json.dumps({'originalPopen.wait':rc,'supervisor_pid':p.pid,'UTC':datetime.datetime.now(datetime.timezone.utc).isoformat()},indent=2)+chr(10));raise SystemExit(rc)
