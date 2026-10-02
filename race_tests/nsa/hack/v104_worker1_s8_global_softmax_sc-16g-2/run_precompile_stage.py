from pathlib import Path
import json,hashlib,subprocess,os,datetime
p=Path('/root/tilelang-metax/race_tests/nsa');r=p/'rep/v104_worker1_s8_global_softmax_sc-16g-2';m=json.loads((r/'source_manifest.json').read_text());env=os.environ.copy();env.update(MACA_PATH='/opt/maca',PYTHONDONTWRITEBYTECODE='1',PYTHONWARNINGS='ignore',PYTHONPATH='/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa')
def tool(name):
 x=m['tools'][name];f=Path(x['path']);assert f.is_file() and hashlib.sha256(f.read_bytes()).hexdigest()==x['sha256'];return str(f)
for x in m['sources'].values():assert Path(x['path']).is_file() and hashlib.sha256(Path(x['path']).read_bytes()).hexdigest()==x['sha256']
for label,name in [('precompile','metadata'),('precompile_resource_command','resources')]:
 cmd=[tool('python'),'-u',tool(name)];a=subprocess.run(cmd,cwd='/root/tilelang-metax',env=env,stdout=(r/(label+'.log')).open('w'),stderr=subprocess.STDOUT);(r/(label+'.exit')).write_text(str(a.returncode)+'\n')
 if a.returncode:(r/'precompile_stage.exit').write_text(str(a.returncode)+'\n');raise SystemExit(a.returncode)
source=m['sources'][m['candidate_label']]['path'];device=Path(m['metadata_device_path']);assert device.is_file();cmd=[tool('python'),tool('validator'),source,'--generated-code',str(device)];a=subprocess.run(cmd,capture_output=True,text=True);(r/'precompile_static.log').write_text(a.stdout+a.stderr);(r/'precompile_static.exit').write_text(str(a.returncode)+'\n');(r/'precompile_stage.exit').write_text(str(a.returncode)+'\n');print('METADATA_STAGE',a.returncode);raise SystemExit(a.returncode)
