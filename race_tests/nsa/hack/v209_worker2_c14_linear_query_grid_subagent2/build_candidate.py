from pathlib import Path
import ast,copy,json,hashlib,difflib
root=Path('/root/tilelang-metax');ver='v209_worker2_c14_linear_query_grid_subagent2'
r=root/'race_tests/nsa/rep'/ver;x=root/'race_tests/nsa/experiments'/ver;x.mkdir(exist_ok=True)
parent=root/'race_tests/nsa/submission/v084_codex_power_s1_d32_d128_pair_sc-16g-2/submission.py'
s=parent.read_text();assert hashlib.sha256(s.encode()).hexdigest()=='4c674c79e4128f3c9f233fa6694c1a8f825d1048293accd9250fb5e2d86472b0'
t=ast.parse(s);base=next(n for n in t.body if isinstance(n,ast.FunctionDef) and n.name=='_make_power_s1_case4_dense')
n=copy.deepcopy(base);n.name='_make_worker2_c14_linear_query_grid'
f=next(v for v in n.body if isinstance(v,ast.FunctionDef) and v.name=='native_sparse_attention');w=f.body[0];assert isinstance(w,ast.With)
original_context=copy.deepcopy(w.items);original_decode=copy.deepcopy(w.body[:2])
w.items=ast.parse('with T.Kernel(batch * seq_len * kv_heads, threads=64) as linear_query:\n    pass').body[0].items
new_decode=ast.parse('batch_id = linear_query // (seq_len * kv_heads)\ntoken = (linear_query // kv_heads) % seq_len\nkv_head = linear_query % kv_heads').body
w.body[:2]=new_decode
undo=copy.deepcopy(n);undo.name=base.name;uw=next(v for v in undo.body if isinstance(v,ast.FunctionDef) and v.name=='native_sparse_attention').body[0]
uw.items=original_context;uw.body[:3]=original_decode
assert ast.dump(undo,include_attributes=False)==ast.dump(base,include_attributes=False)
ast.fix_missing_locations(n);helper=ast.unparse(n)+'\n';key=(2,512,2,32,64,1,16,True)
candidate='# codex-power v209\n'+s.split('\n',1)[1]+'\n\n'+helper+'\n_power_install_lazy_code('+repr(key)+', '+n.name+')\n'
p=Path('/tmp/nsa_worker2_v209_c14_linear_query_grid.py');p.write_text(candidate);ct=ast.parse(candidate)
assert len(ct.body)==len(t.body)+2 and ast.dump(ast.Module(ct.body[:len(t.body)],[]),include_attributes=False)==ast.dump(t,include_attributes=False)
assert ast.literal_eval(ct.body[-1].value.args[0])==key
assert helper.count('T.sync_warp()')==7 and 'numerator = T.alloc_local(16, accum_dtype)' in helper
imports=[q for q in ct.body if isinstance(q,(ast.Import,ast.ImportFrom))];assert len(imports)==3
(x/'linear_query_grid_kernel.py').write_text(helper)
(x/'source_diff.patch').write_text(''.join(difflib.unified_diff(s.splitlines(keepends=True),candidate.splitlines(keepends=True),fromfile=str(parent),tofile=str(p))))
proof={'candidate_path':str(p),'candidate_sha256':hashlib.sha256(candidate.encode()).hexdigest(),'parent_sha256':hashlib.sha256(s.encode()).hexdigest(),'factory_name':n.name,'dispatch_key':list(key),'official_case_number':14,'prefix_14_AST_nodes_equal':True,'only_additional_factory_and_C14_install':True,'inverse_kernel_grid_decode_whole_factory_AST_equal':True,'actual_grid_context':'T.Kernel(batch*seq_len*kv_heads,threads=64) as linear_query','actual_decode':[ast.unparse(a) for a in new_decode],'source_sync_sites':7,'Num_float32_elements':16,'QKPdenVPVoutput_guard_index_math_source_AST_unchanged':True,'raw_index_multiplyBS_before_parent_guard_unchanged':True,'existing_query_address_proof':'query_grid_proof.json','existing_2048_bijection':'query_linear_mapping.json','exact_import_count':3,'source_only_new_import_compile_attention_native':[0,0,0,0],'actual_CPP_IR_resources_UNAVAILABLE_before_metadata':True}
(r/'source_identity.json').write_text(json.dumps(proof,indent=2)+'\n');print(json.dumps(proof,indent=2))
