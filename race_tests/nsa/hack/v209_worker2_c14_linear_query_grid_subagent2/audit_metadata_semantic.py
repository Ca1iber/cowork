from pathlib import Path
import json,re,hashlib
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v209_worker2_c14_linear_query_grid_subagent2');rows=json.loads((r/'compiled_metadata_identity.json').read_text())
P,C=rows;cpp=[Path(d['device_path']).read_text() for d in rows];lines=[s.splitlines() for s in cpp]
assert len(lines[0])==len(lines[1]);diff=[(i+1,a,b) for i,(a,b) in enumerate(zip(*lines)) if a!=b];assert len(diff)==7
kinds=['Qvector','Indices','valid_guard','Kvector','causal_guard','Vvector','Outputvector']
for (_,a,b),kind in zip(diff,kinds):
 marker={'Qvector':'Q + ','Indices':'Indices[','valid_guard':'if ((0 <= block_start)','Kvector':'K + ','causal_guard':'if ((((','Vvector':'V + ','Outputvector':'Output + '}[kind];assert marker in a and marker in b
for s in cpp:assert s.count('__syncwarp();')==7 and 'float numerator[16];' in s and s.count('*(uint4*)')==8

def expr(line,array):
 if array=='Indices':return line.split('Indices[',1)[1].split(']',1)[0]
 q=line.split(array+' + ',1)[1];depth=0
 for i,ch in enumerate(q):
  if ch=='(':depth+=1
  elif ch==')':
   depth-=1
   if depth==0:return q[:i+1]
 raise AssertionError(array)
def code(s):
 s=s.replace('(int64_t)','').replace('(int)','').replace('blockIdx.x','bx').replace('blockIdx.y','by').replace('threadIdx.x','tx');return compile(s,'<actualCPPoffset>','eval')
ops={}
for arr in ['Q','Indices','K','V','Output']:
 ops[arr]=[code(expr(next(l for l in L if arr+('[' if arr=='Indices' else ' + ') in l),arr)) for L in lines]
checks=0
for linear in range(2048):
 b=linear//1024;t=(linear//2)%512;head=linear%2
 dp={'bx':t,'by':b*2+head};dc={'bx':linear,'by':0}
 assert eval(ops['Indices'][0],{},dp)==eval(ops['Indices'][1],{},dc)==linear
 for lane in range(64):
  for i in range(2):
   for block in [0,496]:
    dp.update(tx=lane,part=i,part_1=i,part_2=i,row=i,block_start=block);dc.update(tx=lane,part=i,part_1=i,part_2=i,row=i,block_start=block)
    for arr in ['Q','K','V','Output']:
     a=eval(ops[arr][0],{},dp);z=eval(ops[arr][1],{},dc);assert a==z,(arr,linear,lane,i,block,a,z);assert a%8==0;checks+=1
    # K/V offsets are affine block_start*128 in both actual CPPs; endpoints cover unchanged coefficient.

def host_launch(s):
 call=re.search(r'TVMFFIFunctionCall\(native_sparse_attention_kernel_packed,.*?, (\d+),',s);assert call;n=int(call[1]);vals={}
 for idx,val in re.findall(r'stack_ffi_any\)\[(\d+)\]\.v_int64\) = \(\(int64_t\)(\d+)\);',s):vals[int(idx)]=int(val)
 return n,[vals[i] for i in range(5,n)]
host=[host_launch(Path(d['host_path']).read_text()) for d in rows];assert host==[(11,[512,4,64,1,1,2048]),(10,[2048,64,1,1,2048])],host
irs=[]
for d in rows:
 s=Path(d['device_path']).with_suffix('.ll').read_text();body=s[s.index('define protected metaxgpu_kernel void @native_sparse_attention_kernel'):];body=body[:body.index('\n}')+2]
 names=[re.search(r'@([^ (]+)',l)[1] for l in body.splitlines() if 'call ' in l and '@' in l]
 assert names.count('llvm.mxc.mma.f32.16x16x16f16')==8 and names.count('llvm.mxc.barrier.warp')==7 and names.count('llvm.mxc.bsm.bpermute')==4
 assert 'alloca ' not in body and 'addrspace(5)' not in body and 'fptoui ' not in body and 'fptosi ' not in body
 qprefix=body[:body.index('%Q.coerce, i64')];irs.append({'variant':d['variant'],'IR_SHA':hashlib.sha256(s.encode()).hexdigest(),'MMA8_sync7_shuffle4':True,'no_private_stack_numeric_FPtransport':True,'kernel_block_y_call_count':names.count('llvm.mxc.block.id.y'),'Qprefix_integer_lines':[l.strip() for l in qprefix.splitlines() if any(' '+op+' ' in l for op in ['shl','and','add','or'])]})
assert irs[0]['kernel_block_y_call_count']==1 and irs[1]['kernel_block_y_call_count']==0
log=(r/'power_v209_resource.log').read_text();resource={'MT':int(re.search(r'Used\s+(\d+) MTregisters',log)[1]),'ST':int(re.search(r'(\d+) STregisters',log)[1]),'staticMax':int(re.search(r'staticMaxWarps/PEU\s*:\s*(\d+)',log)[1]),'stack':int(re.search(r'(\d+) bytes stack frame',log)[1])};assert resource['staticMax']>=8 and resource['stack']==0
summary={'semantic_gate':0,'sourceSHA':'0719e8e9fa5f14641ee79692bed0f526e445573ffc447c199ac5bedb39bcd725','CPP_changed_line_count':7,'CPP_only_changed_sites':[{'line':a,'kind':kind,'parent':b,'candidate':c} for (a,b,c),kind in zip(diff,kinds)],'all_other_CPP_lines_identical':True,'actual_CPP_address_equal_checks':checks,'all2048Indices_linear_equal':True,'K_V_blockstart_affine_coefficient128_same':True,'actualCPP_uint4_paths_perlane_same_address_count':True,'host_launch_actual':host,'dynamic_shared_slot_parent_candidate':[10,9],'candidate_resource':resource,'parent_resource_reuse':'parent_resource_reuse_identity.json exactc695/SDK/options','optimizedIR':irs,'Qprep_observation':'candidate Q/Output base linear*1024 and Indiceslinear materialized inCPP;IR removes kernelblockY and shorter Q prefix. No runtime sequence/cache/latency inference','final_ISA_transaction_width':'UNAVAILABLE;CPPuint4/IR split i64 not measured ISA','full_reference_attention_native':[0,0,0],'initial_metadata_gate1_preserved':True,'no_extra_capture_or_native':True}
(r/'metadata_semantic_gate.json').write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps({k:summary[k] for k in ['semantic_gate','CPP_changed_line_count','actual_CPP_address_equal_checks','host_launch_actual','candidate_resource','Qprep_observation']},indent=2))
