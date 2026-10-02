from pathlib import Path
import json,re,hashlib
root=Path('/root/tilelang-metax');old=root/'race_tests/nsa/rep/v217_worker2_c8_qk_shared_store16_branch_subagent2';r=root/'race_tests/nsa/rep/v218_worker2_c8_packed_qk_native_subagent2';sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
p=old/'codegen/parent_v084/case8_stage1.device.cpp';c=old/'codegen/power_v217/case8_stage1.device.cpp';parent=p.read_text();candidate=c.read_text();reverse=candidate.replace('  half_t qk_store[8];\n','',1)
for part,pack,indent in [('part','pack',4),('part_1','pack_1',6)]:
 a=' '*indent;start=reverse.index(a+'if (0 < ('+part+' ^');end=reverse.index('= *(uint4*)(qk_store + 0);',start)+len('= *(uint4*)(qk_store + 0);')
 restored=a+'#pragma unroll\n'+a+f'for (int {pack} = 0; {pack} < 2; ++{pack}) {{\n'+a+f'  *(uint2*)(shared + (((({part} * 512) + ((((int)threadIdx.x) >> 3) * 64)) + (((((int)threadIdx.x) & 7) ^ (((int)threadIdx.x) >> 3)) * 8)) + ((({pack} ^ {part}) ^ ((((int)threadIdx.x) & 15) >> 3)) * 4))) = *(uint2*)(qk_fetch + ({pack} * 4));\n'+a+'}'
 reverse=reverse[:start]+restored+reverse[end:]
# Removing producer pack variables renames output pack_2 to pack; normalize this one unchanged output loop.
anchor=reverse.index('for (int part_2 = 0; part_2 < 2; ++part_2)');reverse=reverse[:anchor]+re.sub(r'\bpack\b','pack_2',reverse[anchor:])
assert reverse==parent
for kind in ['Q','K']:
 for part in range(2):
  for lane in range(64):
   flip=part^((lane&15)>>3);base=part*512+(lane>>3)*64+((lane&7)^(lane>>3))*8
   oldmap={base+((pack^part)^((lane&15)>>3))*4+i:pack*4+i for pack in range(2) for i in range(4)}
   vals=list(range(4,8))+list(range(4)) if flip else list(range(8));newmap={base+i:vals[i] for i in range(8)};assert oldmap==newmap
ir=old/'codegen/power_v217/case8_stage1.device.ll';text=ir.read_text();start=text.index('define protected metaxgpu_kernel void @native_sparse_attention_kernel');body=text[start:text.index('\n}',start)]
assert len(re.findall(r'\bcall[^\n]*@llvm\.mxc\.mma',body))==8 and body.count('call void @llvm.mxc.barrier.warp(')==7 and body.count('@llvm.mxc.bsm.bpermute(')==4
assert not re.search(r'^\s*%[^=]+ = alloca\b',body,re.M) and 'addrspace(5)' not in body
selects=[x for x in body.splitlines() if 'select i1 ' in x and 'qk_fetch' in x];assert len(selects)==8 and all('i64' in x for x in selects)
geom=json.loads((old/'generated_geometry_gate.json').read_text());assert geom['gate']==0 and all(q['actual_launch']==[4096,2,64,1,1,2048] for q in geom['records'])
assert json.loads((old/'metadata_mechanism_gate.json').read_text())['mechanism_gate']==1
result={'CPU_math_geometry_lifetime_gate':0,'actualCPP_inverse_exact_parent':True,'Q_K_1024_each_bitcopy_map':True,'IR_i64_whole_half4_select_transport':True,'VNumScoresPdenOutputAndAll7sync_literal_preserved':True,'globalQKuint4_addresses_literal_preserved':True,'parent_consumer_accesses_preserved':True,'old217_materialization_gate_stays1':True,'geometry':[4096,2,64,1,1,2048],'sourceSHA':'21332fbff1793eda669c5d37533b02a183685e85061393265596b19fdb313d52','parentCPP_SHA':sha(p),'candidateCPP_SHA':sha(c),'candidateIR_SHA':sha(ir),'no_GPU_native_reference':True,'ISAwidth':'UNAVAILABLE'}
(r/'CPU_native_prerequisite_gate.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result))
