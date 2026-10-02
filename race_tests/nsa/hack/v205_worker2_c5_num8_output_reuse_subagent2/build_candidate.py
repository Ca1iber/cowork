from pathlib import Path
import ast,copy,json,hashlib,difflib
root=Path('/root/tilelang-metax');v='v205_worker2_c5_num8_output_reuse_subagent2';r=root/'race_tests/nsa/rep'/v;x=root/'race_tests/nsa/experiments'/v
parent=root/'race_tests/nsa/submission/v084_codex_power_s1_d32_d128_pair_sc-16g-2/submission.py';s=parent.read_text();assert hashlib.sha256(s.encode()).hexdigest()=='4c674c79e4128f3c9f233fa6694c1a8f825d1048293accd9250fb5e2d86472b0'
case=json.loads((root/'race_tests/nsa/official_case.json').read_text())[4];key=tuple(case[k] for k in ['B','SEQ_LEN','H','HQ','D','S','block_size','is_causal']);assert key==(4,1024,1,16,64,1,16,True)
tree=ast.parse(s);base=next(n for n in tree.body if isinstance(n,ast.FunctionDef) and n.name=='_make_power_s1_case4_dense');n=copy.deepcopy(base);n.name='_make_worker2_c5_num8_output_reuse'
kernel=next(q for q in n.body if isinstance(q,ast.FunctionDef) and q.name=='native_sparse_attention');body=kernel.body[0].body
num=next(q for q in body if isinstance(q,ast.Assign) and isinstance(q.targets[0],ast.Name) and q.targets[0].id=='numerator');assert num.value.args[0].value==16;num.value.args[0]=ast.Constant(8)
fill=next(q for q in body if isinstance(q,ast.Expr) and isinstance(q.value,ast.Call) and isinstance(q.value.func,ast.Attribute) and q.value.func.attr=='fill' and q.value.args[0].id=='numerator');body.remove(fill)
selected=next(q for q in body if isinstance(q,ast.For) and isinstance(q.target,ast.Name) and q.target.id=='selected')
valid=next(q for q in selected.body if isinstance(q,ast.If));oldvalid=copy.deepcopy(valid);oldPV=valid.body[-1]
assert isinstance(oldPV,ast.For) and any(isinstance(q,ast.Call) and isinstance(q.func,ast.Attribute) and q.func.attr=='tvm_mfma' for q in ast.walk(oldPV))
valid.body.pop();Vread=valid.body[-1];assert 'v_operand' in ast.unparse(Vread)
class SelectedZero(ast.NodeTransformer):
 def visit_Name(self,q):
  return ast.copy_location(ast.Constant(0),q) if isinstance(q.ctx,ast.Load) and q.id=='selected' else q
unwrapped=[SelectedZero().visit(q) for q in selected.body];i=body.index(selected);body[i:i+1]=unwrapped
valid=next(q for q in unwrapped if isinstance(q,ast.If));guard=copy.deepcopy(valid.test)
group_source="""for group in T.unroll(2):
    T.fill(numerator, 0)
    if block_start >= 0 and block_start <= token:
        for chunk in T.unroll(2):
            T.tvm_mfma('16x16x16f16', 'row', 'row',
                'float16x4', 'float16x4', 'float32x4',
                v_operand.data, group * 2 + chunk, probabilities.data, 0,
                numerator.data, chunk, dtype='float32x4')
    for chunk in T.unroll(2):
        for element in T.vectorized(4):
            numerator[chunk * 4 + element] /= denominator[0]
    for chunk in T.unroll(2):
        for element in T.vectorized(4):
            feature = (group * 2 + chunk) * 16 + (lane // 16) * 4 + element
            shared[out_slot(lane % 16, feature)] = numerator[chunk * 4 + element]
"""
group=ast.parse(group_source).body[0]
groupguard=next(q for q in group.body if isinstance(q,ast.If));assert ast.dump(groupguard.test,include_attributes=False)==ast.dump(guard,include_attributes=False)
denidx=next(i for i,q in enumerate(body) if isinstance(q,ast.AugAssign) and isinstance(q.target,ast.Subscript) and q.target.value.id=='denominator')
assert len(body[denidx:])==7
den=body[denidx:denidx+2];old_div,preout,old_store,postout,gather=body[denidx+2:]
sync=lambda q:isinstance(q,ast.Expr) and isinstance(q.value,ast.Call) and isinstance(q.value.func,ast.Attribute) and q.value.func.attr=='sync_warp'
assert sync(preout) and sync(postout)
body[denidx+2:]=[preout,group,postout,gather]
ast.fix_missing_locations(n);helper=ast.unparse(n)+'\n';assert helper.count('T.sync_warp()')==7
candidate='# codex-power v205\n'+s.split('\n',1)[1]+'\n\n'+helper+'\n_power_install_lazy_code('+repr(key)+', '+n.name+')\n'
p=Path('/tmp/nsa_worker2_v205_c5_num8_output_reuse.py');p.write_text(candidate);ct=ast.parse(candidate)
assert ast.dump(ast.Module(ct.body[:len(tree.body)],[]),include_attributes=False)==ast.dump(tree,include_attributes=False)
last=ct.body[-1].value;assert ast.literal_eval(last.args[0])==key and last.args[1].id==n.name
(x/'num8_output_kernel.py').write_text(helper);(x/'source_diff.patch').write_text(''.join(difflib.unified_diff(s.splitlines(keepends=True),candidate.splitlines(keepends=True),fromfile=str(parent),tofile=str(p))))
proof={'candidate_path':str(p),'candidate_sha256':hashlib.sha256(candidate.encode()).hexdigest(),'parent_sha256':hashlib.sha256(s.encode()).hexdigest(),'factory_name':n.name,'dispatch_key':list(key),'official_case_number':5,'prefix_14_AST_nodes_equal':True,'additional_nodes_only':[n.name,'C5installer'],'source_sync_sites':7,'Num_float32_elements':8,'Voperand_float16_elements':16,'group_count':2,'PV_per_group':2,'PV_guard':ast.unparse(groupguard.test),'Vreads_before_original_preoutput_warp':True,'preoutput_warp_after_den_same_shfl_before_groupPV':True,'den_AST_unchanged':[ast.unparse(q) for q in den],'group_source':group_source,'original_global_gather_AST_unchanged':True,'valid_QKPdenVbody_unchanged_except_originalPV_removed':True,'selected_loop_unwrapped_exact_single_slot0':True,'planned_global_QKV_Output_vector_bytes':16,'planned_shared_output_vector_bytes':8,'actual_CPP_IR_unavailable_sourceonly':True,'new_import_compile_attention_native':[0,0,0,0]}
(r/'source_identity.json').write_text(json.dumps(proof,indent=2)+'\n');print('V205_SOURCE_SHA',proof['candidate_sha256']);print('actualkey',key,'factory',n.name,'sync7/Num8/Voperand16')
