from pathlib import Path
import os,sys,json,hashlib
job=json.loads(Path(sys.argv[1]).read_text());command=job['native_command'];manifest=json.loads(Path(job['manifest_path']).read_text())
for x in manifest['sources'].values():assert hashlib.sha256(Path(x['path']).read_bytes()).hexdigest()==x['sha256']
for x in manifest['tools'].values():assert hashlib.sha256(Path(x['path']).read_bytes()).hexdigest()==x['sha256']
stat=Path('/proc/self/stat').read_text();tail=stat[stat.rfind(')')+2:].split();identity={'pid':os.getpid(),'ppid':int(tail[1]),'pgid':os.getpgrp(),'starttime_ticks':int(tail[19]),'exe':os.readlink('/proc/self/exe'),'state':tail[0]};ready=Path(job['ready_file']);temporary=ready.with_suffix('.tmp');temporary.write_text(json.dumps(identity)+chr(10));temporary.replace(ready)
if sys.stdin.readline().strip()!='GO':raise SystemExit(91)
os.execve(command[0],command,os.environ.copy())
