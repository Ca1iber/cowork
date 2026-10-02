from pathlib import Path
import json,sys,hashlib,subprocess,re
print('BACKEND_CHILD_READY',flush=True);assert sys.stdin.buffer.readline()==b'GO\n'
root=Path('/root/tilelang-metax');r=root/'race_tests/nsa/rep/v232_worker2_c5_bounded_kv_index_subagent2';old=root/'race_tests/nsa/rep/v205_worker2_c5_num8_output_reuse_subagent2';sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
assert json.loads((r/'generated_geometry_gate.json').read_text())['gate']==0
parent,candidate=json.loads((r/'compiled_metadata_identity.json').read_text());assert parent['device_sha256']=='c544b9aee12ff8cc0acf6452367b8bdffc726c33b3d50c1ef6652fd22941582d';assert parent['host_sha256']=='e2e8e4665e5750edaf19426c4ff12dd6409d74cee46cc4174e057cdac02367db'
rows=json.loads((old/'backend_commands_results.json').read_text());pr=next(q for q in rows if q['variant']=='parent_v084' and q['kind']=='resource');pi=next(q for q in rows if q['variant']=='parent_v084' and q['kind']=='optimized_ir');assert pr['returncode']==pi['returncode']==0 and pr['input_device_sha256']==pi['input_device_sha256']==parent['device_sha256']
assert sha(Path(pr['argv'][0]))=='5d0e23f021bc2dad273dbf73d5f67e74313428ef27bcca2d165ad106cbf14c25';assert pi['argv'][0]==pr['argv'][0]
(r/'parent_resource_IR_reuse_identity.json').write_text(json.dumps({'parentCPP_SHA':parent['device_sha256'],'parentHostSHA':parent['host_sha256'],'resource_command':pr,'IR_command':pi,'existingIR_SHA':sha(old/'codegen/parent_v084/case5_stage1.device.ll'),'parentresource':[42,20,8,0,2048],'newparentcommands':0},indent=2)+'\n')
p=Path(candidate['device_path']);assert sha(p)==candidate['device_sha256'];assert sha(Path(candidate['source_path']))==candidate['source_sha256'];results=[]
for kind,original,out in [('resource',pr,p.with_suffix('.mcbin')),('optimized_ir',pi,p.with_suffix('.ll'))]:
 flags=original['argv'][:original['argv'].index('-o')];argv=flags+['-o',str(out),str(p)];stem=r/('power_v232_'+kind);rec={'kind':kind,'argv':argv,'sourceSHA':candidate['source_sha256'],'input_CPP_SHA':candidate['device_sha256'],'SDK_SHA':sha(Path(argv[0]))}
 with stem.with_suffix('.log').open('w') as log:
  proc=subprocess.Popen(argv,stdout=log,stderr=subprocess.STDOUT);rec['PID']=proc.pid;stem.with_suffix('.command.json').write_text(json.dumps(rec,indent=2)+'\n');code=proc.wait()
 rec['actualwait']=code;stem.with_suffix('.exit').write_text(str(code)+'\n');results.append(rec);(r/'backend_commands_results.json').write_text(json.dumps(results,indent=2)+'\n');assert code==0
 if kind=='resource':
  text=stem.with_suffix('.log').read_text();stack=re.search(r'(\d+) bytes stack frame',text);assert stack and int(stack[1])==0
print('BACKEND_C5_COMPLETE0ATTENTION',flush=True)
