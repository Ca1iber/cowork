from pathlib import Path
import json,sys,hashlib,subprocess,re
print('BACKEND_CHILD_READY',flush=True);assert sys.stdin.buffer.readline()==b'GO\n'
root=Path('/root/tilelang-metax');r=root/'race_tests/nsa/rep/v236_worker2_case3_shared_den_reciprocal_subagent2';p219=root/'race_tests/nsa/rep/v219_worker2_parent_c3_evidence_subagent2';p235=root/'race_tests/nsa/rep/v235_worker2_case3_parent_normalization_ir_subagent2';sha=lambda p:hashlib.sha256(Path(p).read_bytes()).hexdigest()
assert json.loads((r/'generated_geometry_gate.json').read_text())['gate']==0
parent,candidate=json.loads((r/'compiled_metadata_identity.json').read_text());assert parent['variant']=='parent_C303' and candidate['variant']=='power_v236';assert parent['device_sha256']=='814735db527ddf73362721a41d5ffd6fe9d070e2c190d461900b06e9cb6ff671' and parent['host_sha256']=='fa1bde13abe760cef253640273dc380cbf293d15d9f3079bfa815d0a330556a2'
pr=json.loads((p219/'resource_command_manifest.json').read_text());pi=json.loads((p235/'parent_ir_command_manifest.json').read_text());iw=json.loads((p235/'parent_C3_IR_SDK_original_wait.json').read_text());assert (p219/'parent_c3_resource.exit').read_text().strip()=='0' and iw['actualwait']==0
assert sha(pr['argv'][-1])==pi['input_CPP_SHA']==parent['device_sha256'];assert pi['host_SHA']==parent['host_sha256'];assert sha(pr['argv'][0])==pi['SDK_SHA']=='5d0e23f021bc2dad273dbf73d5f67e74313428ef27bcca2d165ad106cbf14c25';assert pi['common_semantic_flags']==pr['argv'][:pr['argv'].index('-device-obj')];assert sha(pi['output'])==iw['output_SHA']=='a39bbe7ecdfff9b81ac47a715b84a4b62a1c55b75ab9535726b23a68618a69f1'
(r/'parent_C3_exact_backend_reuse.json').write_text(json.dumps({'parent_currentC303_CPP_SHA':parent['device_sha256'],'parent_host_SHA':parent['host_sha256'],'resource_originalargv':pr['argv'],'resource_exit':0,'resource':[66,20,7,0,4096],'IR_path':pi['output'],'IR_SHA':iw['output_SHA'],'IR_actualwait':0,'new_parent_resource_IR_commands':0,'reuse':'exactCPP/host/SDK/common flags identity only; no borrowedtiming'},indent=2)+'\n')
cpp=Path(candidate['device_path']);assert sha(cpp)==candidate['device_sha256'];assert sha(candidate['source_path'])==candidate['source_sha256'];rows=[]
for kind,original,out in [('resource',pr,cpp.with_suffix('.mcbin')),('optimized_ir',pi,cpp.with_suffix('.ll'))]:
 argv=original['argv'][:original['argv'].index('-o')]+['-o',str(out),str(cpp)];stem=r/('power_v236_'+kind);rec={'kind':kind,'argv':argv,'input_CPP_SHA':candidate['device_sha256'],'sourceSHA':candidate['source_sha256'],'SDK_SHA':sha(argv[0])}
 with stem.with_suffix('.log').open('wb') as log:
  p=subprocess.Popen(argv,cwd=root,stdout=log,stderr=subprocess.STDOUT);rec['PID']=p.pid;stem.with_suffix('.command.json').write_text(json.dumps(rec,indent=2)+'\n');code=p.wait()
 rec['actualwait']=code;stem.with_suffix('.exit').write_text(str(code)+'\n');rows.append(rec);(r/'backend_commands_results.json').write_text(json.dumps(rows,indent=2)+'\n');assert code==0
 if kind=='resource':
  text=stem.with_suffix('.log').read_text();stack=re.search(r'(\d+) bytes stack frame',text);assert stack and int(stack[1])==0
print('C303_C3_CANDIDATE_RESOURCE_IR_COMPLETE0ATTENTION',flush=True)
