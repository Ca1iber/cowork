from pathlib import Path
import json,sys,subprocess,hashlib,re,os
root=Path('/root/tilelang-metax');r=root/'race_tests/nsa/rep/v204_worker2_c8_early_v_fetch_subagent2'
print('BACKEND_CHILD_READY',flush=True)
assert sys.stdin.buffer.readline()==b'GO\n'
rows=json.loads((r/'compiled_metadata_identity.json').read_text());results=[]
common=['/opt/maca/mxgpu_llvm/bin/mxcc','-x','maca','-O3','-lineinfo','--offload-arch=xcore1000','-std=c++17','-I/root/tilelang-metax/src','-use-fast-math','-D__FAST_HALF_CVT__']
for d in rows:
 p=Path(d['device_path']);assert p.exists() and hashlib.sha256(p.read_bytes()).hexdigest()==d['device_sha256']
 src=Path(d['source_path']);assert hashlib.sha256(src.read_bytes()).hexdigest()==d['source_sha256']
 jobs=[('resource',common+['-device-obj','-resource-usage','-o',str(p.with_suffix('.mcbin')),str(p)]),('optimized_ir',common+['-maca-device-only','-S','-emit-llvm','-o',str(p.with_suffix('.ll')),str(p)])]
 for kind,argv in jobs:
  stem=r/(d['variant']+'_'+kind);manifest={'variant':d['variant'],'kind':kind,'argv':argv,'input_device_sha256':d['device_sha256'],'source_sha256':d['source_sha256'],'attention_reference_native':[0,0,0]}
  (stem.with_suffix('.command.json')).write_text(json.dumps(manifest,indent=2)+'\n')
  with stem.with_suffix('.log').open('w') as log:
   proc=subprocess.Popen(argv,stdout=log,stderr=subprocess.STDOUT);manifest['PID']=proc.pid
   (stem.with_suffix('.command.json')).write_text(json.dumps(manifest,indent=2)+'\n');code=proc.wait()
  stem.with_suffix('.exit').write_text(str(code)+'\n');manifest['returncode']=code;results.append(manifest)
  (r/'backend_commands_results.json').write_text(json.dumps(results,indent=2)+'\n')
  print(d['variant'],kind,code,flush=True)
  assert code==0,(kind,code)
  if kind=='resource':
   logtext=stem.with_suffix('.log').read_text();print(logtext,flush=True)
   m=re.search(r'(\d+) bytes stack frame',logtext,re.I)
   assert m and int(m[1])==0,('stack_gate',m.group(0) if m else 'missing')
print('BACKEND_PAIR_EXPORTED_0ATTENTION',flush=True)
