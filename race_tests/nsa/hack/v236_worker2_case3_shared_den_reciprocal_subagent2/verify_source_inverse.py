from pathlib import Path
import ast,json,hashlib
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v236_worker2_case3_shared_den_reciprocal_subagent2');d=json.loads((r/'source_identity.json').read_text());parent=Path(d['base_source_path']);candidate=Path(d['source_path']);sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest();assert sha(parent)==d['baseSHA'] and sha(candidate)==d['sourceSHA']
a=ast.parse(parent.read_text());b=ast.parse(candidate.read_text());assert len(a.body)==24 and len(b.body)==26;assert all(ast.dump(x,include_attributes=False)==ast.dump(y,include_attributes=False) for x,y in zip(a.body,b.body[:24]))
original=next(x for x in a.body if isinstance(x,ast.FunctionDef) and x.name==d['original_factory']);new=b.body[-2];lines=candidate.read_text().splitlines();start=min([new.lineno]+[x.lineno for x in new.decorator_list]);body='\n'.join(lines[start-1:new.end_lineno])+'\n'
anchor='            partial_sum[0] = 1.0 / denominator[0]\n';before='numerator[chunk * 4 + element] *= partial_sum[0]';after='numerator[chunk * 4 + element] /= denominator[0]';assert body.count(anchor)==body.count(before)==1
inverse=ast.parse(body.replace('def '+new.name+'(','def '+original.name+'(',1).replace(anchor,'',1).replace(before,after,1)).body[0];assert ast.dump(inverse,include_attributes=False)==ast.dump(original,include_attributes=False)
assert ast.literal_eval(b.body[-1].value.args[0])==(1,256,1,16,128,1,16,True);assert b.body[-1].value.args[1].id==new.name
print(json.dumps({'gate':0,'complete_C303_prefix24':True,'full_decorated_factory_inverse':True,'only_C3_dispatch':True,'kernel_import_SDK_GPU':0}),flush=True)
