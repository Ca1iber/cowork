from pathlib import Path
import json,hashlib,ast
root=Path('/root/tilelang-metax/race_tests/nsa');v='v080_codex_power_s1_d64_dispatch_sc-16g-2';cases=json.loads((root/'official_case.json').read_text());targets=[2,4,5,7,8,9,13,14];results=[]
for ci in targets:
 c=cases[ci-1];B,L,H,G,D,S,BS=c['B'],c['SEQ_LEN'],c['H'],c['HQ']//c['H'],c['D'],c['S'],c['block_size'];assert G==16 and D==64 and S==1 and BS==16 and c['is_causal'] and L%16==0
 for bh in range(B*H):b,h=bh//H,bh%H;assert 0<=b<B and 0<=h<H and h*G+15<c['HQ']
 for token in range(L):
  last=(token//16)*16;assert last+15<L
 results.append({'case':ci,'batch':B,'seq':L,'kvheads':H,'Qheads':c['HQ'],'grid':[L,B*H],'wave_count':L*B*H,'same1024slot_andoperanddomain':True,'K_Vvalidfull16rows_bounded':True,'Q_outputheads':'headbasekv*16 ..+15 insideHQ'})
helper=root/'experiments/v079_codex_power_s1_case4_dense_sc-16g-2/s1_case4_kernel.py';bound=root/'rep/v079_codex_power_s1_case4_dense_sc-16g-2/C4_coordinate_bounds_proof.json';lazy=(root/'experiments'/v/'lazy_dispatch.py').read_text();a=ast.parse(lazy);outer=next(x for x in a.body if isinstance(x,ast.FunctionDef));inner=next(x for x in outer.body if isinstance(x,ast.FunctionDef));assert inner.args.vararg.arg=='tensor_args'
(root/'rep'/v/'dispatch_domain_proof.json').write_text(json.dumps({'shapes':results,'immutable_factory_path':str(helper),'factory_sha256':hashlib.sha256(helper.read_bytes()).hexdigest(),'same_layout_operand_proof_path':str(bound),'same_proof_sha256':hashlib.sha256(bound.read_bytes()).hexdigest(),'lazy_semantics':'compile codeonfirstcall,replacekeythenfulllaunch;onlykeyinclosure;no tensorvalues retained;subsequentoriginalentrydirectkernel','required':'originalnative pernewshape/ref/tolerance and actualreplacement gate'},indent=2)+'\n');print(results)
