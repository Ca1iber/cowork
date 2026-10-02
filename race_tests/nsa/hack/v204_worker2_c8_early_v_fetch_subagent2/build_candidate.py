from pathlib import Path
import ast,copy,json,hashlib,difflib
root=Path('/root/tilelang-metax');v='v204_worker2_c8_early_v_fetch_subagent2';r=root/'race_tests/nsa/rep'/v;x=root/'race_tests/nsa/experiments'/v
plan=json.loads((r/'plan.json').read_text());parent=root/plan['numerical_parent'];s=parent.read_text();assert hashlib.sha256(s.encode()).hexdigest()==plan['parent_sha256']
tree=ast.parse(s);base=next(n for n in tree.body if isinstance(n,ast.FunctionDef) and n.name=='_make_power_s1_case4_dense')
n=copy.deepcopy(base);n.name='_make_worker2_c8_early_v_fetch'
kernel=next(q for q in n.body if isinstance(q,ast.FunctionDef) and q.name=='native_sparse_attention')
withbody=kernel.body[0].body
selected=next(q for q in withbody if isinstance(q,ast.For) and isinstance(q.target,ast.Name) and q.target.id=='selected')
valid=next(q for q in selected.body if isinstance(q,ast.If));body=valid.body;oldbody=copy.deepcopy(body)
start=next(i for i,q in enumerate(body) if isinstance(q,ast.Assign) and isinstance(q.targets[0],ast.Name) and q.targets[0].id=='fetch_row')
assert isinstance(body[start+1],ast.Assign) and body[start+1].targets[0].id=='fetch_col'
moved=body[start:start+3]
assert isinstance(moved[2],ast.For)
loads=[q for q in ast.walk(moved[2]) if isinstance(q,ast.Assign) and isinstance(q.targets[0],ast.Subscript) and isinstance(q.targets[0].value,ast.Name) and q.targets[0].value.id=='v_fetch']
assert len(loads)==1 and isinstance(loads[0].value,ast.Subscript) and loads[0].value.value.id=='V'
assert any(isinstance(q,ast.Call) and isinstance(q.func,ast.Attribute) and q.func.attr=='vectorized' and q.args[0].value==8 for q in ast.walk(moved[2]))
def sync(q):return isinstance(q,ast.Expr) and isinstance(q.value,ast.Call) and isinstance(q.value.func,ast.Attribute) and q.value.func.attr=='sync_warp'
assert sync(body[start-1])
original_preV=ast.dump(body[start-1],include_attributes=False)
assert sync(body[0]) and isinstance(body[1],ast.For) and sync(body[2])
assert isinstance(body[3],ast.Expr) and body[3].value.func.attr=='fill'
del body[start:start+3];insertion=3;body[insertion:insertion]=moved
assert sync(body[insertion-1]) and body[insertion+3].value.func.attr=='fill'
# Reverseonlythemovement andverify the wholeoriginalquerybranch AST exactly.
restored=copy.deepcopy(body);undo=restored[insertion:insertion+3];del restored[insertion:insertion+3];restored[start:start]=undo
assert ast.dump(ast.Module(restored,[]),include_attributes=False)==ast.dump(ast.Module(oldbody,[]),include_attributes=False)
ast.fix_missing_locations(n);helper=ast.unparse(n)+'\n';assert helper.count('T.sync_warp()')==7
assert not any(isinstance(q,ast.Attribute) and q.attr in ['sync_threads','import_source','call_extern','call_packed','call_cpacked'] for q in ast.walk(n))
(x/'early_v_fetch_kernel.py').write_text(helper)
candidate='# codex-power v204\n'+s.split('\n',1)[1]+'\n\n'+helper+'\n_power_install_lazy_code((2,4096,1,16,64,1,16,True), _make_worker2_c8_early_v_fetch)\n'
p=Path(plan['candidate_path']);p.write_text(candidate);ct=ast.parse(candidate)
assert ast.dump(ast.Module(ct.body[:len(tree.body)],[]),include_attributes=False)==ast.dump(tree,include_attributes=False)
(x/'source_diff.patch').write_text(''.join(difflib.unified_diff(s.splitlines(keepends=True),candidate.splitlines(keepends=True),fromfile=str(parent),tofile=str(p))))
proof={'candidate_path':str(p),'candidate_sha256':hashlib.sha256(candidate.encode()).hexdigest(),'parent_sha256':plan['parent_sha256'],'factory_name':n.name,'dispatch_key':plan['only_target_key'],'original_parent_prefix_AST_equal':True,'reverse_statement_move_entire_querybranch_AST_equal':True,'moved_statements_source':[ast.unparse(q) for q in moved],'guard_source':ast.unparse(valid.test),'old_anchor':'original preVsync -> fetch_row/fetch_col/V16Bloadloop -> Vsharedwrite','new_anchor':'Ksharedwrite -> Kpostsync -> samefetchthree -> scoresclear/QK -> max/P/den -> originalpreVsync -> sameVsharedwrite','vectorized_half_elements':8,'global_V_vector_bytes':16,'source_sync_sites':7,'threads':64,'dynamic_shared_elements_half':1024,'local_v_fetch_elements_half':16,'no_early_shared_write':True,'no_shader_math_or_index_change':True,'only_static_S_checks_no_import_compile_native':True}
(r/'source_identity.json').write_text(json.dumps(proof,indent=2)+'\n')
print('V204_SOURCE_SHA',proof['candidate_sha256']);print('MOVED',proof['moved_statements_source']);print('GUARD',proof['guard_source'])
