from pathlib import Path
import ast,copy,json,hashlib,difflib
root=Path('/root/tilelang-metax');v='v208_worker2_c9_q_register_transpose_subagent2';r=root/'race_tests/nsa/rep'/v;x=root/'race_tests/nsa/experiments'/v
parent=root/'race_tests/nsa/submission/v084_codex_power_s1_d32_d128_pair_sc-16g-2/submission.py';s=parent.read_text();assert hashlib.sha256(s.encode()).hexdigest()=='4c674c79e4128f3c9f233fa6694c1a8f825d1048293accd9250fb5e2d86472b0'
case=json.loads((root/'race_tests/nsa/official_case.json').read_text())[8];key=tuple(case[k] for k in ['B','SEQ_LEN','H','HQ','D','S','block_size','is_causal']);assert key==(1,8192,1,16,64,1,16,True)
tree=ast.parse(s);base=next(n for n in tree.body if isinstance(n,ast.FunctionDef) and n.name=='_make_power_s1_case4_dense');n=copy.deepcopy(base);n.name='_make_worker2_c9_q_register_transpose'
kernel=next(q for q in n.body if isinstance(q,ast.FunctionDef) and q.name=='native_sparse_attention');body=kernel.body[0].body
qloc=next(q for q in body if isinstance(q,ast.Assign) and isinstance(q.targets[0],ast.Name) and q.targets[0].id=='q_local');assert qloc.value.args[0].value==16
recv=ast.parse("q_receive = T.alloc_local(4, 'uint32')").body[0];body.insert(body.index(qloc)+1,recv)
idx=next(i for i,q in enumerate(body) if isinstance(q,ast.For) and q.target.id=='part')
oldstage=copy.deepcopy(body[idx:idx+3]);assert oldstage[1].value.func.attr=='sync_warp' and oldstage[2].target.id=='chunk'
loadsrc="""for part in T.unroll(2):
    for element in T.vectorized(8):
        q_local[part * 8 + element] = Q[batch_id, token, kv_head * groups + lane % 16, (lane // 16) * 16 + part * 8 + element]
quarter_low = (lane // 16) % 2
quarter_high = lane // 32
"""
stages=[]
for bit,delta in [(0,16),(1,32)]:
 selector='quarter_low' if bit==0 else 'quarter_high'
 cellzero='other * 2 + 1' if bit==0 else '2 + other'
 cellone='other * 2' if bit==0 else 'other'
 receiveidx='(cell // 2) * 2 + element // 2' if bit==0 else '(cell % 2) * 2 + element // 2'
 keep='cell % 2 == quarter_low' if bit==0 else 'cell // 2 == quarter_high'
 stages.append(f"""for other in T.unroll(2):
    for pair in T.unroll(2):
        send_lo = T.if_then_else({selector} == 0, q_local[({cellzero}) * 4 + pair * 2], q_local[({cellone}) * 4 + pair * 2])
        send_hi = T.if_then_else({selector} == 0, q_local[({cellzero}) * 4 + pair * 2 + 1], q_local[({cellone}) * 4 + pair * 2 + 1])
        send_word = T.reinterpret('uint16', send_lo).astype('uint32') | (T.reinterpret('uint16', send_hi).astype('uint32') << 16)
        q_receive[other * 2 + pair] = T.shfl_xor(send_word, {delta}, width=64, mask=0xFFFFFFFFFFFFFFFF)
for cell in T.unroll(4):
    for element in T.vectorized(4):
        received_word = q_receive[{receiveidx}]
        received_value = T.reinterpret('float16', (received_word >> ((element % 2) * 16)).astype('uint16'))
        q_local[cell * 4 + element] = T.if_then_else({keep}, q_local[cell * 4 + element], received_value)
""")
newsrc=loadsrc+''.join(stages);newnodes=ast.parse(newsrc).body;body[idx:idx+3]=newnodes
undo=copy.deepcopy(n);undo.name=base.name;ub=next(q for q in undo.body if isinstance(q,ast.FunctionDef) and q.name=='native_sparse_attention').body[0].body
u=next(q for q in ub if isinstance(q,ast.Assign) and isinstance(q.targets[0],ast.Name) and q.targets[0].id=='q_receive');ub.remove(u)
ui=next(i for i,q in enumerate(ub) if isinstance(q,ast.For) and q.target.id=='part');ub[ui:ui+len(newnodes)]=oldstage
assert ast.dump(undo,include_attributes=False)==ast.dump(base,include_attributes=False)
for q in ast.walk(ast.Module(newnodes,[])):
 if isinstance(q,ast.Subscript) and isinstance(q.value,ast.Name) and q.value.id in ['q_local','q_receive']:
  names={a.id for a in ast.walk(q.slice) if isinstance(a,ast.Name)};assert not names&{'lane','quarter_low','quarter_high'}
assert not any(isinstance(q,ast.If) for q in ast.walk(ast.Module(newnodes,[])))
calls=[q for q in ast.walk(ast.Module(newnodes,[])) if isinstance(q,ast.Call) and isinstance(q.func,ast.Attribute) and q.func.attr=='shfl_xor'];assert len(calls)==2
assert [q.args[1].value for q in calls]==[16,32]
for q in calls:assert {z.arg:z.value.value for z in q.keywords}=={'width':64,'mask':0xFFFFFFFFFFFFFFFF}
ast.fix_missing_locations(n);helper=ast.unparse(n)+'\n';assert helper.count('T.sync_warp()')==6 and 'numerator = T.alloc_local(16, accum_dtype)' in helper
p=Path('/tmp/nsa_worker2_v208_c9_q_register_transpose.py');candidate='# codex-power v208\n'+s.split('\n',1)[1]+'\n\n'+helper+'\n_power_install_lazy_code('+repr(key)+', '+n.name+')\n';p.write_text(candidate);ct=ast.parse(candidate)
assert ast.dump(ast.Module(ct.body[:len(tree.body)],[]),include_attributes=False)==ast.dump(tree,include_attributes=False)
assert len(ct.body)==len(tree.body)+2 and ast.literal_eval(ct.body[-1].value.args[0])==key
(x/'q_register_transpose_kernel.py').write_text(helper);(x/'source_diff.patch').write_text(''.join(difflib.unified_diff(s.splitlines(keepends=True),candidate.splitlines(keepends=True),fromfile=str(parent),tofile=str(p))))
proof={'candidate_path':str(p),'candidate_sha256':hashlib.sha256(candidate.encode()).hexdigest(),'parent_sha256':hashlib.sha256(s.encode()).hexdigest(),'factory_name':n.name,'dispatch_key':list(key),'official_case_number':9,'prefix_14_AST_nodes_equal':True,'additional_nodes_only':[n.name,'exactC9installer'],'inverse_Qstage_and_Qreceive_decl_whole_factory_AST_equal':True,'Num_float32_elements':16,'qLocal_float16_elements':16,'qReceive_uint32_elements':4,'remaining_KPdenVPVOutput_source_AST_identical':True,'removed_sync':'onlyQsharedwrite_readsync','source_sync_sites':6,'Qglobal_vector_half_elements':8,'Qglobal_perlane_vector_count':2,'Qglobal_perlane_addresses_changed':True,'newQstage_source':newsrc,'stage_shfl_callsite_count':[1,1],'expanded_wordshfl_count_perstage':[4,4],'shfl_xor_deltas':[16,32],'width':64,'mask':0xFFFFFFFFFFFFFFFF,'no_lane_dependent_local_index_or_branch_enclosing_shfl':True,'collect_recv_before_each_stage_inplace_overwrite':True,'planned_Qshared_reads_writes_removed':True,'bittransport_reinterpret_not_FPnumeric_cast':True,'actual_CPP_IR_resource_unavailable_sourceonly':True,'new_import_compile_attention_native':[0,0,0,0]}
(r/'source_identity.json').write_text(json.dumps(proof,indent=2)+'\n');print('V208_SOURCE_SHA',proof['candidate_sha256']);print('onlykey',key,'Num16/source6sync/globalQ16Bnewlayout')
