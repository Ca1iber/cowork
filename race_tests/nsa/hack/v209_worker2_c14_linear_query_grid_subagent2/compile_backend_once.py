from pathlib import Path
import sys,json,hashlib,subprocess,re
print('BACKEND_CHILD_READY',flush=True);assert sys.stdin.buffer.readline()==b'GO\n'
root=Path('/root/tilelang-metax');r=root/'race_tests/nsa/rep/v209_worker2_c14_linear_query_grid_subagent2'
rows=json.loads((r/'compiled_metadata_identity.json').read_text());fixed=json.loads((r/'fixed_parent_evidence_manifest.json').read_text())
assert len(rows)==2 and rows[0]['variant']=='parent_v084' and rows[1]['variant']=='power_v209'
parent,candidate=rows
assert hashlib.sha256(Path(fixed['SDK_path']).read_bytes()).hexdigest()==fixed['SDK_SHA']
assert parent['device_sha256']==fixed['parent_CPP_SHA']=='c6957b7274e656c0c03b0ed0959d2c5d322fcb549396cff9eb212fc7e69a7e1a'
assert (r/'parent_resource.exit').read_text().strip()=='0'
common=['/opt/maca/mxgpu_llvm/bin/mxcc','-x','maca','-O3','-lineinfo','--offload-arch=xcore1000','-std=c++17','-I/root/tilelang-metax/src','-use-fast-math','-D__FAST_HALF_CVT__']
resourceopts=common+['-device-obj','-resource-usage']
oldargv=fixed['fixed_resource_argv'];outidx=oldargv.index('-o');assert oldargv[:outidx]==resourceopts and outidx+3==len(oldargv)
reuse={'new_CPP_path':parent['device_path'],'new_CPP_SHA':parent['device_sha256'],'original_CPP_path':fixed['parent_CPP_path'],'original_CPP_SHA':fixed['parent_CPP_SHA'],'SDK_path':fixed['SDK_path'],'SDK_SHA':fixed['SDK_SHA'],'semantic_compilation_options_equal':True,'options':resourceopts,'original_input_output_paths':oldargv[outidx+1:],'new_parent_resource_command_executed':False,'existing_log_SHA':hashlib.sha256((r/'parent_resource.log').read_bytes()).hexdigest(),'existing_exit':0,'resource':json.loads((r/'parent_resource_summary.json').read_text())}
(r/'parent_resource_reuse_identity.json').write_text(json.dumps(reuse,indent=2)+'\n')
results=[]
jobs=[(candidate,'resource'),(parent,'optimized_ir'),(candidate,'optimized_ir')]
for d,kind in jobs:
 p=Path(d['device_path']);assert hashlib.sha256(p.read_bytes()).hexdigest()==d['device_sha256'];assert hashlib.sha256(Path(d['source_path']).read_bytes()).hexdigest()==d['source_sha256']
 if kind=='resource':argv=resourceopts+['-o',str(p.with_suffix('.mcbin')),str(p)]
 else:argv=common+['-maca-device-only','-S','-emit-llvm','-o',str(p.with_suffix('.ll')),str(p)]
 stem=r/(d['variant']+'_'+kind);m={'variant':d['variant'],'kind':kind,'argv':argv,'input_CPP_path':str(p),'input_CPP_SHA':d['device_sha256'],'sourceSHA':d['source_sha256'],'SDK_SHA':fixed['SDK_SHA'],'attention_reference_native':[0,0,0]}
 with stem.with_suffix('.log').open('w') as log:
  proc=subprocess.Popen(argv,stdout=log,stderr=subprocess.STDOUT);m['PID']=proc.pid;stem.with_suffix('.command.json').write_text(json.dumps(m,indent=2)+'\n');code=proc.wait()
 stem.with_suffix('.exit').write_text(str(code)+'\n');m['returncode']=code;results.append(m);(r/'backend_commands_results.json').write_text(json.dumps(results,indent=2)+'\n');print(d['variant'],kind,code,flush=True);assert code==0
 if kind=='resource':
  text=stem.with_suffix('.log').read_text();stack=re.search(r'(\d+) bytes stack frame',text);mx=re.search(r'staticMaxWarps/PEU\s*:\s*(\d+)',text);assert stack and int(stack[1])==0;assert mx and int(mx[1])>=8
print('BACKEND_THREE_COMMANDS_COMPLETE_0ATTENTION',flush=True)
