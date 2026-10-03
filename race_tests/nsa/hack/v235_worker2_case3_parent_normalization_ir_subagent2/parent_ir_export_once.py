from pathlib import Path
import json,sys,hashlib,re,subprocess,ast
import bounded_utils as U
root=U.root;r=U.r
sha=lambda p:hashlib.sha256(Path(p).read_bytes()).hexdigest()
def preflight():
 m=json.loads((r/'parent_ir_command_manifest.json').read_text())
 for q in m['fixed_inputs']:assert sha(q['path'])==q['sha256'] and Path(q['path']).stat().st_size==q['bytes'],q['path']
 identity=json.loads(Path(m['current_parent_factory_identity']).read_text());dumps=[]
 for item in identity['source_files']:
  tree=ast.parse(Path(item['path']).read_text());node=next(x for x in tree.body if isinstance(x,ast.FunctionDef) and x.name==identity['factory_name']);dumps.append(ast.dump(node,include_attributes=False))
 assert dumps[0]==dumps[1]==dumps[2] and hashlib.sha256(dumps[0].encode()).hexdigest()==identity['complete_decorated_factory_AST_SHA']
 original=json.loads(Path(m['original_resource_record']).read_text());base=original['argv'][:original['argv'].index('-device-obj')]
 assert m['argv']==base+['-maca-device-only','-S','-emit-llvm','-o',m['output'],m['input_CPP']]
 assert m['common_semantic_flags']==base
 host=Path(m['host']).read_text();needle='TVMFFIFunctionCall(native_sparse_attention_kernel_packed';end=host.rfind(needle);assert end>=0;start=host.rfind('.v_ptr) = V;',0,end);assert start>=0;region=host[start:end]
 count=int(re.search(r'TVMFFIFunctionCall\(native_sparse_attention_kernel_packed,.*?, (\d+),',host[end:])[1]);assert count==11
 vals=[]
 for i in range(5,count):
  x=re.findall(r'stack_ffi_any\)\['+str(i)+r'\]\.v_int64\) = \(\(int64_t\)(\d+)\);',region);assert len(x)==1,(i,x);vals.append(int(x[0]))
 assert vals==m['expected_geometry']==[256,1,64,1,1,4096]
 assert not Path(m['output']).exists()
 return m,{'gate':0,'geometry':vals,'target_argument_region_SHA':hashlib.sha256(region.encode()).hexdigest(),'stock_flags_match':True,'SDK_not_executed':True}
if __name__=='__main__':
 m,proof=preflight()
 if '--preflight' in sys.argv:
  print(json.dumps(proof),flush=True);raise SystemExit(0)
 print('PARENT_C3_IR_CHILD_READY',flush=True);assert sys.stdin.buffer.readline()==b'GO\n'
 with (r/'parent_C3_IR_SDK.log').open('wb') as log:
  p=subprocess.Popen(m['argv'],cwd=root,stdout=log,stderr=subprocess.STDOUT);record={'argv':m['argv'],'originalPopen':True,'identity':U.info(p.pid),'input_CPP_SHA':m['input_CPP_SHA'],'SDK_SHA':m['SDK_SHA'],'geometry_preflight':proof};(r/'parent_C3_IR_SDK_original_handle.json').write_text(json.dumps(record,indent=2)+'\n');code=p.wait()
 record['actualwait']=code
 if Path(m['output']).is_file():record['output_SHA']=sha(m['output']);record['output_bytes']=Path(m['output']).stat().st_size
 (r/'parent_C3_IR_SDK_original_wait.json').write_text(json.dumps(record,indent=2)+'\n');(r/'parent_C3_IR_SDK.exit').write_text(str(code)+'\n');print(json.dumps(record),flush=True);raise SystemExit(code)
