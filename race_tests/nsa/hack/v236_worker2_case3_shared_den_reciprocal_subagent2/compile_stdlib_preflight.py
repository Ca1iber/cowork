from pathlib import Path
import ast,json,hashlib
root=Path('/root/tilelang-metax');r=root/'race_tests/nsa/rep/v236_worker2_case3_shared_den_reciprocal_subagent2';h=root/'race_tests/nsa/hack/v236_worker2_case3_shared_den_reciprocal_subagent2';sha=lambda p:hashlib.sha256(Path(p).read_bytes()).hexdigest()
for name in ['metadata_launch_manifest.json','backend_launch_manifest.json','compile_launch_manifest.json']:
 m=json.loads((r/name).read_text())
 for q in m['fixed_inputs']:assert Path(q['path']).is_file() and sha(q['path'])==q['sha256'],q['path']
for p in h.glob('*.py'):ast.parse(p.read_text())
d=json.loads((r/'source_identity.json').read_text());a=ast.parse(Path(d['base_source_path']).read_text());b=ast.parse(Path(d['source_path']).read_text());assert len(a.body)==24 and len(b.body)==26 and all(ast.dump(x,include_attributes=False)==ast.dump(y,include_attributes=False) for x,y in zip(a.body,b.body[:24]))
old='v234_worker2_case2_bounded_kv_index_subagent2';new='v236_worker2_case3_shared_den_reciprocal_subagent2'
for name in ['bounded_utils.py','run_bounded_once.py']:assert ast.dump(ast.parse((root/'race_tests/nsa/hack'/old/name).read_text().replace(old,new)),include_attributes=False)==ast.dump(ast.parse((h/name).read_text()),include_attributes=False)
plan=json.loads((r/'bounded_runtime_plan.json').read_text());assert [plan['admission_usage_bytes'],plan['runtime_stop_usage_bytes'],plan['unknown_heavy_RSS_bytes']]==[3221225472,30064771072,1073741824]
assert plan['only_target_key']==[1,256,1,16,128,1,16,True] and plan['parent_sha256']==d['baseSHA'] and plan['candidateSHA']==d['sourceSHA']
assert not (r/'metadata_observation/once.guard').exists() and not (r/'backend_observation/once.guard').exists()
print('V236_COMPILE_STDLIB_PREFLIGHT0_NO_IMPORT_JIT_SDK_GPU_NATIVE',flush=True)
