from pathlib import Path
import json,re,hashlib
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v212_worker2_c8_direct_k_operand_subagent2');rows=json.loads((r/'compiled_metadata_identity.json').read_text());P,C=rows;parent=Path(P['device_path']).read_text();cpp=Path(C['device_path']).read_text();line=next(l for l in cpp.splitlines() if 'K +' in l);assert '*(uint2*)(k_local + 0)' in line
s=line.split('K + ',1)[1];depth=0
for i,ch in enumerate(s):
 if ch=='(':depth+=1
 elif ch==')':
  depth-=1
  if depth==0:expr=s[:i+1];break
expr=expr.replace('(int64_t)','').replace('(int)','').replace('blockIdx.y','batch').replace('threadIdx.x','lane');code=compile(expr,'<actualKCPP>','eval');checks=0
for batch in range(2):
 for block in range(256):
  for lane in range(64):
   for chunk_1 in range(4):
    block_start=block*16;addr=eval(code,{},locals());expected=(batch*4096+block_start+lane%16)*64+chunk_1*16+(lane//16)*4;assert addr==expected and addr%4==0 and addr+3<524288;checks+=1
assert cpp[:cpp.index('  if ((0 <= block_start)')]==parent[:parent.index('  if ((0 <= block_start)')]
assert cpp.count('__syncwarp();')==5 and 'float numerator[16];' in cpp
vstart=cpp.index('  if ((0 <= block_start)');qk=cpp.index('float broadcast_var_1',vstart);preV=cpp.index('    __syncwarp();',qk);assert 'shared +' not in cpp[qk:preV].split('for (int element =',1)[0]
irpath=Path(C['device_path']).with_suffix('.ll');ir=irpath.read_text();body=ir[ir.index('define protected metaxgpu_kernel void @native_sparse_attention_kernel'):];body=body[:body.index('\n}')+2];ls=body.splitlines();mma=[i for i,l in enumerate(ls) if 'call' in l and '@llvm.mxc.mma.' in l];sync=[i for i,l in enumerate(ls) if 'call void @llvm.mxc.barrier.warp' in l];shfl=[i for i,l in enumerate(ls) if 'call' in l and '@llvm.mxc.bsm.bpermute' in l];assert [len(mma),len(sync),len(shfl)]==[8,5,4]
assert 'alloca ' not in body and 'addrspace(5)' not in body
# OriginalQstage singlewriter/readback: no shared overwrites before keptpreV sync.
qreads=[i for i in range(sync[0]+1,mma[0]) if 'load ' in ls[i] and 'addrspace(3)' in ls[i]];assert len(qreads)==4
assert not any('store ' in l and 'addrspace(3)' in l for l in ls[sync[0]+1:sync[1]])
vstores=[i for i in range(sync[1]+1,sync[2]) if 'store ' in ls[i] and 'addrspace(3)' in ls[i]];assert vstores and max(qreads)<sync[1]<min(vstores)
for i in [0,4,5,6,7]:assert 'zeroinitializer' in ls[mma[i]]
log=(r/'power_v212_resource.log').read_text();resource={'MT':int(re.search(r'Used\s+(\d+) MTregisters',log)[1]),'ST':int(re.search(r'(\d+) STregisters',log)[1]),'max':int(re.search(r'staticMaxWarps/PEU\s*:\s*(\d+)',log)[1]),'stack':int(re.search(r'(\d+) bytes stack frame',log)[1])};assert resource['max']>=8 and resource['stack']==0
out={'semantic_gate':0,'sourceSHA':C['source_sha256'],'CPP_SHA':C['device_sha256'],'IR_SHA':hashlib.sha256(ir.encode()).hexdigest(),'actual_global_K8B_vector_basechecks':checks,'original1024MFMAvalue_mapping_proof':'direct_K_mapping_proof.json','actual_CPP_K4x8B_not2x16B':True,'original_Q_prefix_byte_equal':True,'Kshared_removed':True,'kept_preV_IR_body_line':sync[1]+1,'Qshared_read_IR_body_lines':[i+1 for i in qreads],'Vshared_write_IR_body_lines':[i+1 for i in vstores],'no_intervening_shared_overwrite':True,'fullvalid_static_MMA_sync_shfl':[8,5,4],'Num16_Pden_PV_guard_original_inverseAST':True,'no_private_spill':True,'resource_parent':[42,20,8,0],'resource_candidate':resource,'staticmax_not_occupancy_ISAwidth_UNAVAILABLE':True,'native_reference_profile_trace':[0,0,0,0]};(r/'metadata_semantic_gate.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2))
