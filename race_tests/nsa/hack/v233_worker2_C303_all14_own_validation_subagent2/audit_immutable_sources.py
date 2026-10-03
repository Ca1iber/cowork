from pathlib import Path
import json,ast,hashlib
root=Path('/root/tilelang-metax');r=root/'race_tests/nsa/rep/v233_worker2_C303_all14_own_validation_subagent2';plan=json.loads((r/'native_runtime_plan.json').read_text());sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest();candidate=Path(plan['candidate_path']);cb=Path(plan['CB13_path']);assert sha(candidate)==plan['candidateSHA'] and sha(cb)==plan['CB13_SHA']
t=ast.parse(candidate.read_text());b=ast.parse(cb.read_text());assert len(b.body)==18 and len(t.body)==24 and all(ast.dump(x)==ast.dump(y) for x,y in zip(b.body,t.body[:18]))
expect=[('_make_worker2_c8_bounded_kv_index',(2,4096,1,16,64,1,16,True),root/'race_tests/nsa/submission/v230_worker2_c8_bounded_kv_index_subagent2/submission.py'),('_make_worker2_c5_bounded_kv_index',(4,1024,1,16,64,1,16,True),root/'race_tests/nsa/submission/v232_worker2_c5_bounded_kv_index_subagent2/submission.py')]
for name,key,path in expect:
 fn=next(n for n in t.body[18:] if isinstance(n,ast.FunctionDef) and n.name==name);origin=next(n for n in ast.parse(path.read_text()).body if isinstance(n,ast.FunctionDef) and n.name==name);assert ast.dump(fn)==ast.dump(origin)
fn=next(n for n in t.body[18:] if isinstance(n,ast.FunctionDef) and n.name=='_make_power_c6_bounded_kv_index');assert hashlib.sha256(ast.dump(fn,include_attributes=False).encode()).hexdigest()=='5bf05615182cdac709cf3f7aed4a42a150539c8706aa1e6ba96e1fe201a3b096'
inst=[n for n in t.body[18:] if isinstance(n,ast.Expr) and isinstance(n.value,ast.Call) and isinstance(n.value.func,ast.Name) and n.value.func.id=='_power_install_lazy_code'];keys=[ast.literal_eval(n.value.args[0]) for n in inst];assert keys==[(2,4096,1,16,64,1,16,True),(4,1024,1,16,64,1,16,True),(8,1024,1,16,128,1,32,True)]
assert len([n for n in t.body if isinstance(n,(ast.Import,ast.ImportFrom))])==3
result={'gate':0,'C303SHA':sha(candidate),'CB13SHA':sha(cb),'prefix18':True,'threefactories_sources_exact':True,'source6_factory_ownerASTmatched':True,'keys':keys,'immutable_source_no_edit':True,'GPU':0,'SC135failure_independent':True};(r/'source_AST_gate.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result))
