from pathlib import Path
import ast,json
root=Path('/root/tilelang-metax/race_tests/nsa');ident='v052_codex_power_s8_merge_lifetime_sc-16g-2'
a=ast.parse((root/'experiments'/ident/'s8_kernel.py').read_text());b=ast.parse((root/'experiments/v051_codex_power_s8_four_warp_arena_sc-16g-2/s8_kernel.py').read_text())
for node in ast.walk(a):
 if isinstance(node,ast.FunctionDef) and node.name=='_make_power_s8_merge_lifetime':node.name='_make_power_s8_four_warp_arena'
 if isinstance(node,ast.Name) and node.id.startswith('merged_'):node.id=node.id[len('merged_'):]
# Strip the four added allocations after normalization; they sit just before maximum.
f=next(x for x in a.body if isinstance(x,ast.FunctionDef));prim=next(x for x in f.body if isinstance(x,ast.FunctionDef) and x.name=='native_sparse_attention');body=prim.body[0].body
indices=[n for n,x in enumerate(body) if isinstance(x,ast.Assign) and isinstance(x.targets[0],ast.Name) and x.targets[0].id=='numerator']
assert len(indices)==2
start=indices[1];assert [x.targets[0].id for x in body[start:start+4]]==['numerator','maximum','denominator','rescale'];del body[start:start+4]
assert ast.dump(a)==ast.dump(b)
s={'normalized_full_helper_AST_same_as_v051':True,'only_change':'four distinct merged local allocations and use sites','math_layout_and_CTA_warp_sync_unchanged':True,'reference_mapping_proof':'race_tests/nsa/rep/v051_codex_power_s8_four_warp_arena_sc-16g-2/mapping_barrier_proof.json'}
(root/'rep'/ident/'source_equivalence_proof.json').write_text(json.dumps(s,indent=2)+'\n');print(s)
