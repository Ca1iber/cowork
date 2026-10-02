from pathlib import Path
import json,sys,hashlib,subprocess,re
print('BACKEND_CHILD_READY',flush=True);assert sys.stdin.buffer.readline()==b'GO\n'
root=Path('/root/tilelang-metax');r=root/'race_tests/nsa/rep/v227_worker2_c9_bounded_kv_index_subagent2';old=root/'race_tests/nsa/rep/v200_worker2_baseline_profile_subagent2';sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
assert json.loads((r/'generated_geometry_gate.json').read_text())['gate']==0
parent,candidate=json.loads((r/'compiled_metadata_identity.json').read_text());assert parent['device_sha256']=='85b2d06253ada7098991de3035caf9d03156c7914175fe2e03f0544756c498fe';assert parent['host_sha256']=='f69ccb3644e47fe5e96a2f97463a32c281f4cf1300784acc57ed3927fa101f34'
pr=next(q for q in json.loads((old/'resource_capture.json').read_text()) if q['case']==9 and q['variant']=='parent_v084');assert pr['exit']==0 and (old/'resources/case9_parent_v084.exit').read_text().strip()=='0';assert sha(Path(pr['command'][0]))=='5d0e23f021bc2dad273dbf73d5f67e74313428ef27bcca2d165ad106cbf14c25'
opts=pr['command'][:pr['command'].index('-o')];irflags=json.loads((root/'race_tests/nsa/rep/v217_worker2_c8_qk_shared_store16_branch_subagent2/parent_resource_IR_reuse_identity.json').read_text())['exact_recorded_IR_options'];assert irflags[0]==opts[0]
(r/'parent_resource_reuse_identity.json').write_text(json.dumps({'CPP_SHA':parent['device_sha256'],'hostSHA':parent['host_sha256'],'parentC9resource':[42,20,8,0,2048],'originalcommand':pr['command'],'originalresource_log':str(old/'resources/case9_parent_v084.log'),'newparentresource_IRcommands':0},indent=2)+'\n')
p=Path(candidate['device_path']);assert sha(p)==candidate['device_sha256'];assert sha(Path(candidate['source_path']))==candidate['source_sha256'];results=[]
for kind,flags,out in [('resource',opts,p.with_suffix('.mcbin')),('optimized_ir',irflags,p.with_suffix('.ll'))]:
 argv=flags+['-o',str(out),str(p)];stem=r/('power_v227_'+kind);rec={'kind':kind,'argv':argv,'input_CPP_SHA':candidate['device_sha256'],'sourceSHA':candidate['source_sha256'],'SDK_SHA':sha(Path(argv[0]))}
 with stem.with_suffix('.log').open('w') as log:
  proc=subprocess.Popen(argv,stdout=log,stderr=subprocess.STDOUT);rec['PID']=proc.pid;stem.with_suffix('.command.json').write_text(json.dumps(rec,indent=2)+'\n');code=proc.wait()
 rec['actualwait']=code;stem.with_suffix('.exit').write_text(str(code)+'\n');results.append(rec);(r/'backend_commands_results.json').write_text(json.dumps(results,indent=2)+'\n');assert code==0
 if kind=='resource':
  text=stem.with_suffix('.log').read_text();stack=re.search(r'(\d+) bytes stack frame',text);assert stack and int(stack[1])==0
print('BACKEND_C9_COMPLETE0ATTENTION',flush=True)
