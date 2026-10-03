from pathlib import Path
import json,sys,hashlib,subprocess,re
print('BACKEND_CHILD_READY',flush=True);assert sys.stdin.buffer.readline()==b'GO\n'
root=Path('/root/tilelang-metax');r=root/'race_tests/nsa/rep/v234_worker2_case2_bounded_kv_index_subagent2';old=root/'race_tests/nsa/rep/v208_worker2_c9_q_register_transpose_subagent2';sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
assert json.loads((r/'generated_geometry_gate.json').read_text())['gate']==0
parent,candidate=json.loads((r/'compiled_metadata_identity.json').read_text());assert parent['variant']=='parent_CB13';assert parent['device_sha256']=='85b2d06253ada7098991de3035caf9d03156c7914175fe2e03f0544756c498fe';assert parent['host_sha256']=='df2f57399d1f44606aab2ca915397f40b3ac19640834e22a21591a1bd6cbdc75'
rows=json.loads((old/'backend_commands_results.json').read_text());pr=next(q for q in rows if q.get('variant')=='parent_v084' and q['kind']=='resource');pi=next(q for q in rows if q.get('variant')=='parent_v084' and q['kind']=='optimized_ir');assert pr['returncode']==pi['returncode']==0 and pr['input_device_sha256']==pi['input_device_sha256']==parent['device_sha256'];assert sha(Path(pr['argv'][0]))=='5d0e23f021bc2dad273dbf73d5f67e74313428ef27bcca2d165ad106cbf14c25';assert pi['argv'][0]==pr['argv'][0]
oldir=old/'codegen/parent_v084/case9_stage1.device.ll';assert sha(oldir)=='722c5764812db2d76ae3eb666aa824d0e6409fd402eba857001ef7368717bfea'
(r/'parent_C2_byteidentical_backend_reuse.json').write_text(json.dumps({'actualC2CPP_SHA':parent['device_sha256'],'actualC2hostSHA':parent['host_sha256'],'parentCB13SHA':parent['source_sha256'],'archivedparentdevice_resource_command':pr,'archivedparentdevice_IR_command':pi,'archivedIR_SHA':sha(oldir),'reuse_scope':'exactdeviceCPP/SDKflags only; noC9timing/counters orfailedcandidate references','parentresource':[42,20,8,0,2048],'newparentcommands':0},indent=2)+'\n')
p=Path(candidate['device_path']);assert sha(p)==candidate['device_sha256'];assert sha(Path(candidate['source_path']))==candidate['source_sha256'];results=[]
for kind,original,out in [('resource',pr,p.with_suffix('.mcbin')),('optimized_ir',pi,p.with_suffix('.ll'))]:
 flags=original['argv'][:original['argv'].index('-o')];argv=flags+['-o',str(out),str(p)];stem=r/('power_v234_'+kind);rec={'kind':kind,'argv':argv,'input_CPP_SHA':candidate['device_sha256'],'sourceSHA':candidate['source_sha256'],'SDK_SHA':sha(Path(argv[0]))}
 with stem.with_suffix('.log').open('w') as log:
  proc=subprocess.Popen(argv,stdout=log,stderr=subprocess.STDOUT);rec['PID']=proc.pid;stem.with_suffix('.command.json').write_text(json.dumps(rec,indent=2)+'\n');code=proc.wait()
 rec['actualwait']=code;stem.with_suffix('.exit').write_text(str(code)+'\n');results.append(rec);(r/'backend_commands_results.json').write_text(json.dumps(results,indent=2)+'\n');assert code==0
 if kind=='resource':
  text=stem.with_suffix('.log').read_text();stack=re.search(r'(\d+) bytes stack frame',text);assert stack and int(stack[1])==0
print('BACKEND_CB13_C2_COMPLETE0ATTENTION',flush=True)
