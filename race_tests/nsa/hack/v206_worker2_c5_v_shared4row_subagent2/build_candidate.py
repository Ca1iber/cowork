from pathlib import Path
import ast,copy,json,hashlib,difflib
root=Path('/root/tilelang-metax');v='v206_worker2_c5_v_shared4row_subagent2';r=root/'race_tests/nsa/rep'/v;x=root/'race_tests/nsa/experiments'/v
parent=root/'race_tests/nsa/submission/v084_codex_power_s1_d32_d128_pair_sc-16g-2/submission.py';s=parent.read_text();assert hashlib.sha256(s.encode()).hexdigest()=='4c674c79e4128f3c9f233fa6694c1a8f825d1048293accd9250fb5e2d86472b0'
case=json.loads((root/'race_tests/nsa/official_case.json').read_text())[4];key=tuple(case[k] for k in ['B','SEQ_LEN','H','HQ','D','S','block_size','is_causal']);assert key==(4,1024,1,16,64,1,16,True)
tree=ast.parse(s);base=next(n for n in tree.body if isinstance(n,ast.FunctionDef) and n.name=='_make_power_s1_case4_dense');n=copy.deepcopy(base);n.name='_make_worker2_c5_v_shared4row'
kernel=next(q for q in n.body if isinstance(q,ast.FunctionDef) and q.name=='native_sparse_attention');body=kernel.body[0].body
column=next(q for q in body if isinstance(q,ast.Assign) and isinstance(q.targets[0],ast.Name) and q.targets[0].id=='v_column');assert column.value.args[0].value==2;column.value.args[0]=ast.Constant(4)
body.insert(body.index(column)+1,ast.parse("packed_receive = T.alloc_local(4, 'uint32')").body[0])
selected=next(q for q in body if isinstance(q,ast.For) and q.target.id=='selected');valid=next(q for q in selected.body if isinstance(q,ast.If));vb=valid.body;oldvb=copy.deepcopy(vb)
idx=next(i for i,q in enumerate(vb) if isinstance(q,ast.For) and isinstance(q.target,ast.Name) and q.target.id=='col' and any(isinstance(z,ast.Assign) and isinstance(z.targets[0],ast.Subscript) and z.targets[0].value.id=='shared' for z in ast.walk(q)))
oldstore=copy.deepcopy(vb[idx]);assert oldstore.iter.args[0].value==8
newsource="""half = (lane // 8) % 2
for row in T.unroll(2):
    for pair in T.unroll(2):
        send_lo = T.if_then_else(half == 0,
            v_fetch[row * 8 + 4 + pair * 2], v_fetch[row * 8 + pair * 2])
        send_hi = T.if_then_else(half == 0,
            v_fetch[row * 8 + 4 + pair * 2 + 1], v_fetch[row * 8 + pair * 2 + 1])
        send_word = T.reinterpret('uint16', send_lo).astype('uint32') | (T.reinterpret('uint16', send_hi).astype('uint32') << 16)
        packed_receive[row * 2 + pair] = T.shfl_xor(send_word, 8, width=64, mask=0xFFFFFFFFFFFFFFFF)
for col in T.unroll(4):
    for row in T.vectorized(4):
        own_value = T.if_then_else(half == 0,
            v_fetch[(row % 2) * 8 + col], v_fetch[(row % 2) * 8 + 4 + col])
        received_word = packed_receive[(row % 2) * 2 + col // 2]
        received_value = T.reinterpret('float16', (received_word >> ((col % 2) * 16)).astype('uint16'))
        v_column[row] = T.if_then_else(row // 2 == half, own_value, received_value)
    for row in T.vectorized(4):
        shared[v_slot((lane // 16) * 4 + row, fetch_col + half * 4 + col)] = v_column[row]
"""
newnodes=ast.parse(newsource).body;vb[idx:idx+1]=newnodes
restore=copy.deepcopy(vb);restore[idx:idx+len(newnodes)]=[oldstore];assert ast.dump(ast.Module(restore,[]),include_attributes=False)==ast.dump(ast.Module(oldvb,[]),include_attributes=False)
# Invert only the ownership replacement and two local declarations, then compare the whole factory AST.
undo=copy.deepcopy(n);undo.name=base.name;kb=next(q for q in undo.body if isinstance(q,ast.FunctionDef) and q.name=='native_sparse_attention').body[0].body
c=next(q for q in kb if isinstance(q,ast.Assign) and isinstance(q.targets[0],ast.Name) and q.targets[0].id=='v_column');c.value.args[0]=ast.Constant(2)
recv=next(q for q in kb if isinstance(q,ast.Assign) and isinstance(q.targets[0],ast.Name) and q.targets[0].id=='packed_receive');kb.remove(recv)
sv=next(q for q in kb if isinstance(q,ast.For) and q.target.id=='selected');uv=next(q for q in sv.body if isinstance(q,ast.If));uv.body[idx:idx+len(newnodes)]=[copy.deepcopy(oldstore)]
assert ast.dump(undo,include_attributes=False)==ast.dump(base,include_attributes=False)
local_names={'v_fetch','v_column','packed_receive'}
for q in ast.walk(n):
 if isinstance(q,ast.Subscript) and isinstance(q.value,ast.Name) and q.value.id in local_names:
  names={a.id for a in ast.walk(q.slice) if isinstance(a,ast.Name)};assert not names&{'half','lane'}
newshfl=[q for q in ast.walk(ast.Module(newnodes,[])) if isinstance(q,ast.Call) and isinstance(q.func,ast.Attribute) and q.func.attr=='shfl_xor'];assert len(newshfl)==1
q=newshfl[0];assert q.args[1].value==8 and {z.arg:z.value.value for z in q.keywords}=={'width':64,'mask':0xFFFFFFFFFFFFFFFF}
assert not any(isinstance(q,ast.If) for q in ast.walk(ast.Module(newnodes,[])))
ast.fix_missing_locations(n);helper=ast.unparse(n)+'\n';assert helper.count('T.sync_warp()')==7 and 'numerator = T.alloc_local(16, accum_dtype)' in helper
p=Path('/tmp/nsa_worker2_v206_c5_v_shared4row.py');candidate='# codex-power v206\n'+s.split('\n',1)[1]+'\n\n'+helper+'\n_power_install_lazy_code('+repr(key)+', '+n.name+')\n';p.write_text(candidate);ct=ast.parse(candidate)
assert ast.dump(ast.Module(ct.body[:len(tree.body)],[]),include_attributes=False)==ast.dump(tree,include_attributes=False)
assert len(ct.body)==len(tree.body)+2 and ast.literal_eval(ct.body[-1].value.args[0])==key
(x/'v_shared4row_kernel.py').write_text(helper);(x/'source_diff.patch').write_text(''.join(difflib.unified_diff(s.splitlines(keepends=True),candidate.splitlines(keepends=True),fromfile=str(parent),tofile=str(p))))
proof={'candidate_path':str(p),'candidate_sha256':hashlib.sha256(candidate.encode()).hexdigest(),'parent_sha256':hashlib.sha256(s.encode()).hexdigest(),'factory_name':n.name,'dispatch_key':list(key),'official_case_number':5,'prefix_14_AST_nodes_equal':True,'additional_nodes_only':[n.name,'exactC5installer'],'inverse_ownership_and_declarations_whole_factory_AST_equal':True,'Num_float32_elements':16,'v_column_float16_elements':4,'packed_receive_uint32_elements':4,'unchanged_globalVfetch_and_math_and_consumer_and_output_AST':True,'source_sync_sites':7,'new_ownership_source':newsource,'source_shfl_callsite_inside_2x2unrolls':1,'planned_expanded_uint32_shfl':4,'shfl_xor_delta':8,'shfl_width':64,'shfl_mask':0xFFFFFFFFFFFFFFFF,'only_uniform_valid_branch_encloses_shfl':True,'no_lane_dependent_index_for_localarrays':True,'uint16_reinterpret_zeroextend_shift_or_split_reinterpret':True,'planned_V_shared_stores_perlane':4,'planned_V_shared_vector_bytes':8,'actual_CPP_IR_unavailable_sourceonly':True,'new_import_compile_attention_native':[0,0,0,0]}
(r/'source_identity.json').write_text(json.dumps(proof,indent=2)+'\n');print('V206_SOURCE_SHA',proof['candidate_sha256']);print('actualkey',key,'factory',n.name,'sync7/Num16/globalVunchanged')
