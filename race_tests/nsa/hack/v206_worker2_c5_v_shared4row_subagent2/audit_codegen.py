from pathlib import Path
import json,re,ast,hashlib,collections
root=Path('/root/tilelang-metax');v='v206_worker2_c5_v_shared4row_subagent2';r=root/'race_tests/nsa/rep'/v
records=json.loads((r/'compiled_metadata_identity.json').read_text());output=[]
for d in records:
 p=Path(d['device_path']);cpp=p.read_text();ir=p.with_suffix('.ll');ls=ir.read_text().splitlines()
 start=next(i for i,s in enumerate(ls) if s.startswith('define ') and '@native_sparse_attention_kernel(' in s);end=next(i for i in range(start,len(ls)) if ls[i]=='}');body=ls[start:end+1]
 assert not any('alloca ' in s or 'addrspace(5)' in s or 'fptoui' in s or 'fptosi' in s for s in body)
 mmas=[i+1 for i,s in enumerate(ls) if 'call contract' in s and '@llvm.mxc.mma.' in s];syncs=[i+1 for i,s in enumerate(ls) if 'call void @llvm.mxc.barrier.warp()' in s];assert len(mmas)==8 and len(syncs)==7
 a=syncs[3];b=syncs[4];phase=ls[a:b-1]
 stores=[(i+1,s) for i,s in enumerate(ls) if a<i+1<b and 'store ' in s and 'addrspace(3)' in s]
 expected_type='i32' if d['variant']=='parent_v084' else 'i64';expected_count=8 if expected_type=='i32' else 4
 assert len(stores)==expected_count and all(('store '+expected_type+' ') in s for _,s in stores)
 globals={name:next(s.strip() for s in cpp.splitlines() if '*(uint4*)' in s and (name+' +') in s) for name in ['Q','K','V','Output']}
 launch=[]
 for slot in range(5,11):
  a0=re.findall(r'\['+str(slot)+r'\]\.v_int64\) = \(\(int64_t\)(\d+)\)',Path(d['host_path']).read_text());assert a0;launch.append(int(a0[-1]))
 assert launch==[1024,4,64,1,1,2048]
 res=(r/(d['variant']+'_resource.log')).read_text();mt,st,ss=re.search(r'Used\s+(\d+) MTregisters,\s*(\d+) STregisters,\s*(\d+) bytes shared mem',res).groups();stack=int(re.search(r'(\d+) bytes stack frame',res)[1]);mx=int(re.search(r'staticMaxWarps/PEU\s*:\s*(\d+)',res)[1]);assert stack==0 and mx>=8
 output.append({'variant':d['variant'],'MT':int(mt),'ST':int(st),'static_shared_bytes':int(ss),'dynamic_shared_bytes':2048,'stack':stack,'staticmax':mx,'not_actual_occupancy':True,'launch':launch,'deviceSHA':d['device_sha256'],'IR_SHA':hashlib.sha256(ir.read_bytes()).hexdigest(),'IR_MMA_lines':mmas,'IR_warp_lines':syncs,'IR_Vsharedstore_lines':[i for i,_ in stores],'IR_Vsharedstore_bytes':4 if expected_type=='i32' else 8,'IR_Vsharedstore_count':len(stores),'CPP_global_uint4_lines':globals,'kernel_no_private_alloca_no_numeric_FPtoInt':True,'transport_phase_no_lane_branch':not any(s.strip().startswith('br ') for s in phase),'sourceSHA':d['source_sha256']})
assert output[0]['CPP_global_uint4_lines']==output[1]['CPP_global_uint4_lines']
candidate=records[1];p=Path(candidate['device_path']);cpp=p.read_text();ls=p.with_suffix('.ll').read_text().splitlines();a=output[1]['IR_warp_lines'][3];b=output[1]['IR_warp_lines'][4];phase=ls[a:b-1]
bperm=[i+1 for i,s in enumerate(ls) if a<i+1<b and 'call noundef i32 @llvm.mxc.bsm.bpermute' in s]
assert len(bperm)==4 and not any(s.strip().startswith('br ') for s in phase)
assert sum('xor i32' in s and ', 8,' in s for s in phase)==4
assert sum('@llvm.mxc.mbcnt.lo(i32 -1, i32 0)' in s for s in phase)==4 and sum('@llvm.mxc.mbcnt.hi(i32 -1' in s for s in phase)==4
assert sum('and i32' in s and ', -64' in s for s in phase)==4 and sum('add nsw i32' in s and ', 64,' in s for s in phase)==4
assert not any(re.search(r'\b(fadd|fmul|fdiv|fptrunc|fpext|fptoui|fptosi)\b',s) for s in phase)
# Inspect the generated uint2 shared address expression, not only the planned TileLang formula.
storeline=next(s.strip() for s in cpp.splitlines() if '*(uint2*)(shared +' in s and 'v_column + 0' in s)
expr=re.search(r'\*\(uint2\*\)\(shared \+ (.*)\) = \*\(uint2\*\)\(v_column \+ 0\);',storeline)[1].replace('((int)threadIdx.x)','lane')
expr_ast=ast.parse(expr,mode='eval');assert all(not isinstance(q,(ast.Call,ast.Attribute,ast.Subscript)) for q in ast.walk(expr_ast));assert {q.id for q in ast.walk(expr_ast) if isinstance(q,ast.Name)}=={'lane','col'}
src=root/'race_tests/nsa/submission/v084_codex_power_s1_d32_d128_pair_sc-16g-2/submission.py';f=next(q for q in ast.parse(src.read_text()).body if isinstance(q,ast.FunctionDef) and q.name=='_make_power_s1_case4_dense');vs=next(q for q in f.body if isinstance(q,ast.FunctionDef) and q.name=='v_slot');env={};exec(compile(ast.Module([vs],[]),str(src),'exec'),env)
touches=[]
for lane in range(64):
 for col in range(4):
  base=eval(compile(expr_ast,str(p),'eval'),{'__builtins__':{}},{'lane':lane,'col':col})
  desired=[env['v_slot']((lane//16)*4+row,(lane%8)*8+((lane//8)%2)*4+col) for row in range(4)]
  assert desired==list(range(base,base+4)) and base%4==0 and all(0<=q<1024 for q in desired);touches+=desired
assert len(touches)==1024 and set(touches)==set(range(1024))
assert "send_word = (((uint)(*(ushort *)(&(send_lo)))) | (((uint)(*(ushort *)(&(send_hi)))) << (uint)16));" in cpp
assert "received_value = (*(half_t *)(&(v__4)));" in cpp and "ushort v__4 = (ushort)(received_word >>" in cpp
assert "__shfl_xor_sync((uint64_t)18446744073709551615, send_word, 8, 64)" in cpp
# Actual optimized transport has i16 loads, opposite-half integer selects, zext/shl/or, four i32 bpermutes,
# trunc/lshr/select i16 and i64 packed stores. No float transport operation or lane-control branch.
assert sum('zext i16' in s and 'to i32' in s for s in phase)>=8 and sum('trunc i32' in s and 'to i16' in s for s in phase)>=8
assert sum('shl nuw i32' in s and ', 16,' in s for s in phase)==4
assert sum('or disjoint i32' in s for s in phase)==4
assert any(s.startswith('target datalayout = "e-') for s in ls)
assert output[1]['transport_phase_no_lane_branch']
summary={'status':'CPP_IR_GATES0_PENDING_LEADER_NATIVE_REVIEW','resource_rows':output,'actual_packed_exchange_IR_bpermute_lines':bperm,'i32_exchange_xor8_with_full_lo_hi_masks_width64':True,'transport_integer_bitpath_verified':True,'IR_transport_no_float_numeric_cast_no_lane_branch':True,'actual_CPP_sharedvector_coords_verified1024':True,'globalperlane_QKVOutput_uint4_CPP_expressions_identical':True,'normal_TIR_source_inverse_and_1024_packet_coordinate_bit_proof_link':'source_identity.json/ownership_proof.json','byteorder_little_endian_IR':True,'CPP_four8B_sharedstore_materialized_IRfouri64':True,'all8MMA_and7warpsync_preserved':True,'no_kernel_alloca_or_private_spill':True,'bank_models_uncalibrated':True,'final_ISA_transaction_width_and_runtime_latency':'UNAVAILABLE_noISAdecoder_or_native','attention_reference_native':[0,0,0],'no_auto_native':True}
(r/'metadata_mechanism_gate.json').write_text(json.dumps(summary,indent=2)+'\n')
(r/'resource_ir_summary.json').write_text(json.dumps(output,indent=2)+'\n')
print('actualCPP/IR gates0; parent42MT20ST -> candidate46MT20ST, stack0/max8;0attention/ref/native')
