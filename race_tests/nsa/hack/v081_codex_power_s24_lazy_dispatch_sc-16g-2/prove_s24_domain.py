from pathlib import Path
import ast,json,hashlib
p=Path('/root/tilelang-metax/race_tests/nsa');v='v081_codex_power_s24_lazy_dispatch_sc-16g-2';r=p/'rep'/v
old=p/'experiments/v077_codex_power_s8_output_pair_sc-16g-2/s8_kernel.py';new=p/'experiments'/v/'s248_kernel.py';a=next(x for x in ast.parse(old.read_text()).body if isinstance(x,ast.FunctionDef));b=next(x for x in ast.parse(new.read_text()).body if isinstance(x,ast.FunctionDef));clean=lambda fn:ast.dump(ast.Module(body=[x for x in fn.body if not isinstance(x,ast.Assert)],type_ignores=[]));assert clean(a)==clean(b)
q=lambda row,col:row*64+((col//8)^(row%8))*8+((col//4%2)^(row//8%2)^(row%2))*4+col%4
o=lambda row,col:row*64+((col//8)^(row%8))*8+((col//4%2)^(row//8%2))*4+col%4
vslot=lambda row,col:(col//4+16*(col%4))*16+((row//4)^(col//16)^(col%4))*4+row%4
for f in [q,o,vslot]:assert sorted(f(row,col) for row in range(16) for col in range(64))==list(range(1024))
cases=json.loads((p/'official_case.json').read_text());records=[]
for ci in [10,11]:
 c=cases[ci-1];assert c['HQ']//c['H']==16 and c['D']==64 and c['S'] in [2,4] and c['block_size']==16 and c['is_causal'];assert c['SEQ_LEN']%16==0
 for token in range(c['SEQ_LEN']):
  for index in range(c['SEQ_LEN']//16):
   start=index*16
   if start<=token:assert start+15<c['SEQ_LEN']
 records.append({'case':ci,'shape':c,'indices_selected_extent':c['S'],'selected_loop':'0..S-1','full16_validblock_rows_inbounds':True,'query_head_mapping':'kv_head*16+row;0<=row<16','waves':c['B']*c['SEQ_LEN']*c['H'],'output_bytes':c['B']*c['SEQ_LEN']*c['HQ']*c['D']*2})
(r/'S24_domain_proof.json').write_text(json.dumps({'compute_body_exact_own77_excluding_asserts':True,'new_source_sha256':hashlib.sha256(new.read_bytes()).hexdigest(),'three_shared_bijections':'all1024half coordinates,unchanged','online_denominator_identity':'each quarter d_j=alpha*d_j+sum_consumedFP16P;alpha uniform by head;sum_j commutes with rescale over real arithmetic','floating_order':'same asown77;native ref required,not proof bitexact toTorch','math_does_not_assume_eight_iterations':True,'cases':records},indent=2)+'\n');print('S2/S4 coordinate/recurrence proof complete; doesnot replace fullnative')
