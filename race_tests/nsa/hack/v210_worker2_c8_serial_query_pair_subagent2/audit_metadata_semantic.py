from pathlib import Path
import json,re,hashlib
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v210_worker2_c8_serial_query_pair_subagent2');rows=json.loads((r/'compiled_metadata_identity.json').read_text());P,C=rows;ps=Path(P['device_path']).read_text();cs=Path(C['device_path']).read_text();pl=ps.splitlines();cl=cs.splitlines();start=next(i for i,l in enumerate(cl) if 'for (int query_step' in l);end=next(i for i,l in enumerate(cl) if 'if (query_step == 0)' in l)
old=pl[start:-2];new=[l[2:] for l in cl[start+1:end]];assert len(old)==len(new);changes=[(i,a,b) for i,(a,b) in enumerate(zip(old,new)) if a.strip()!=b.strip()];assert len(changes)==5
expected=['Q + ','Indices[','if ((0 <= block_start)','if ((((','Output + ']
for (_,a,b),mark in zip(changes,expected):assert mark in a and mark in b
assert [l.strip() for l in pl[:start]]==[l.strip() for l in cl[:start]]
assert sum('__syncwarp();' in l for l in old)==7
assert all(q in cs for q in ['float numerator[16];','float denominator[1];','float maximum[1];','half_t q_local[16];','for (int query_step = 0; query_step < 2; ++query_step)'])
assert '__syncwarp();' in cl[end+1] and '}' in cl[end+2]

def offset(line,array):
 if array=='Indices':return line.split('Indices[',1)[1].split(']',1)[0]
 q=line.split(array+' + ',1)[1];depth=0
 for i,ch in enumerate(q):
  if ch=='(':depth+=1
  elif ch==')':
   depth-=1
   if depth==0:return q[:i+1]
 raise AssertionError(array)
def compile_offset(s):return compile(s.replace('(int64_t)','').replace('(int)','').replace('blockIdx.x','bx').replace('blockIdx.y','by').replace('threadIdx.x','tx'),'<actualCPPoffset>','eval')
ops={}
for arr in ['Q','Indices','Output']:ops[arr]=[compile_offset(offset(next(l for l in ls if arr+('[' if arr=='Indices' else ' + ') in l),arr)) for ls in [old,new]]
checks=0
for b in range(2):
 for pair in range(2048):
  for step in range(2):
   token=pair*2+step;dp={'bx':token,'by':b};dc={'bx':pair,'by':b,'query_step':step};assert eval(ops['Indices'][0],{},dp)==eval(ops['Indices'][1],{},dc)==b*4096+token
   for lane in range(64):
    for part in range(2):
     dp.update(tx=lane,part=part,part_2=part);dc.update(tx=lane,part=part,part_2=part)
     for arr in ['Q','Output']:
      a=eval(ops[arr][0],{},dp);z=eval(ops[arr][1],{},dc);assert a==z and 0<=a<=8388600 and a%8==0;checks+=1
irpath=Path(C['device_path']).with_suffix('.ll');ir=irpath.read_text();body=ir[ir.index('define protected metaxgpu_kernel void @native_sparse_attention_kernel'):];body=body[:body.index('\n}')+2];ls=body.splitlines();warps=[i for i,l in enumerate(ls) if 'call void @llvm.mxc.barrier.warp' in l];mma=[i for i,l in enumerate(ls) if 'call' in l and '@llvm.mxc.mma.f32.16x16x16f16' in l];shfl=[i for i,l in enumerate(ls) if 'call' in l and '@llvm.mxc.bsm.bpermute' in l]
assert len(mma)==16 and len(warps)==15 and len(shfl)==8 and 'llvm.loop' not in body
assert 'alloca ' not in body and 'addrspace(5)' not in body
boundary=warps[7];assert sum(i<boundary for i in mma)==8 and sum(i>boundary for i in mma)==8
for idx in [0,4,5,6,7,8,12,13,14,15]:assert 'zeroinitializer' in ls[mma[idx]]
previous_postwrite=warps[6];q0outloads=[i for i in range(previous_postwrite+1,boundary) if 'load ' in ls[i] and 'addrspace(3)' in ls[i]];q1writers=[i for i in range(boundary+1,warps[8]) if 'store ' in ls[i] and 'addrspace(3)' in ls[i]];assert len(q0outloads)==4 and len(q1writers)==4
log=(r/'power_v210_resource.log').read_text();resource={'MT':int(re.search(r'Used\s+(\d+) MTregisters',log)[1]),'ST':int(re.search(r'(\d+) STregisters',log)[1]),'staticmax':int(re.search(r'staticMaxWarps/PEU\s*:\s*(\d+)',log)[1]),'stack':int(re.search(r'(\d+) bytes stack frame',log)[1])};assert resource['staticmax']>=8 and resource['stack']==0
summary={'semantic_gate':0,'sourceSHA':C['source_sha256'],'candidate_CPP_SHA':C['device_sha256'],'IR_SHA':hashlib.sha256(ir.encode()).hexdigest(),'perquery_CPP_core_whitespace_normalized_differences':len(changes),'difference_sites':['Qbase','Idxbase','validtoken','causaltoken','Outputbase'],'other_perquery_CPP_lines_equal':True,'allocations_once_outside_loop':True,'originalNum_den_max_reset_and_Qreload_inside_eachquery':True,'valid_only_PScoreV_overwrite_before_read_core_equal':True,'actual_address_checks':checks,'Indices8192bijection':True,'K_V_perquery_CPP_expressions_identical':True,'source_guard_tail_eliminated_by_TIR_for_exact_even4096_grid_safe':True,'IR_queryloop_fully_unrolled':True,'actual_MMA16_with8eachquery':True,'actual_sync15_with7eachquery_and1boundary':True,'actual_softmaxden_shuffle8_4eachquery':True,'QKfirst_and_PV_accumulator_zeros_eachquery':True,'boundary_IR_body_line':boundary+1,'Q0_output_shared_read_IR_body_lines':[i+1 for i in q0outloads],'Q1_Q_shared_write_IR_body_lines':[i+1 for i in q1writers],'boundary_in_common_postOutput_block_uniformQueryPredicate':True,'resource_parent_candidate':[[42,20,8,0],list(resource.values())],'hostP_C_grids':[[4096,2],[2048,2]],'threads64_dyn2048':True,'no_private_spill':True,'final_ISA_width_actual_occupancy_runtimeorder':'UNAVAILABLE','attention_fullreference_native_profile':[0,0,0,0],'not_correctness_or_performance_verdict':True}
(r/'metadata_semantic_gate.json').write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps(summary,indent=2))
