from pathlib import Path
import ast,json,hashlib
p=Path('/root/tilelang-metax/race_tests/nsa');r=p/'rep/v103_worker1_s1_d128_operand_lifetimes_sc-16g-2';source=p/'submission/v084_codex_power_s1_d32_d128_pair_sc-16g-2/submission.py';text=source.read_text();tree=ast.parse(text);factory=next(x for x in tree.body if isinstance(x,ast.FunctionDef) and x.name=='_make_power_s1_v_hybrid_pack');defs=[x for x in factory.body if isinstance(x,ast.FunctionDef) and x.name in ['qk_slot','v_slot','out_slot']];space={};exec(compile(ast.Module(body=defs,type_ignores=[]),str(source),'exec'),space);vslot=space['v_slot'];outslot=space['out_slot']
vsets=[{vslot(row,plane*64+col) for row in range(32) for col in range(64)} for plane in range(2)];osets=[{outslot(row,plane*64+col) for row in range(16) for col in range(64)} for plane in range(2)]
assert vsets[0]==set(range(2048)) and vsets[1]==set(range(2048,4096));assert osets[0]==set(range(1024)) and osets[1]==set(range(1024,2048));assert not osets[0]&osets[1] and (osets[0]|osets[1])==vsets[0]
reads=[set(),set()];writes=[set(),set()];vectors=[]
for plane in range(2):
 for lane in range(64):
  for key in range(2):
   for chunk in range(4):
    row=key*16+(lane//16)*4;col=plane*64+chunk*16+lane%16;base=vslot(row,col);touch={base+e for e in range(4)};assert base%4==0 and touch<=(vsets[plane]);assert touch=={vslot(row+e,col) for e in range(4)};reads[plane]|=touch;vectors.append({'plane':plane,'lane':lane,'key_tile':key,'chunk':chunk,'V_start_half':base,'V_vector_touch_halves':sorted(touch)})
  for chunk in range(4):
   row=lane%16;col=plane*64+chunk*16+(lane//16)*4;base=outslot(row,col);touch={base+e for e in range(4)};assert base%4==0 and touch<=osets[plane];assert touch=={outslot(row,col+e) for e in range(4)};writes[plane]|=touch
assert reads==vsets and writes==osets;assert not writes[0]&reads[1] and not writes[1]&reads[1]
proof={'parent_source':str(source),'parent_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),'V_plane_regions':[[0,2048],[2048,4096]],'output_regions':[[0,1024],[1024,2048]],'V_vectors_checked':len(vectors),'V_all_4half_vector_touches_in_plane_region':True,'output_all_4half_vector_touches_in_consumed_Vplane0':True,'all_output_lower_upper_distinct_and_complete':True,'relative_8B_alignment':True,'early_output_vs_future_Vplane1_disjoint':True,'firstplane_before_write_full64sync_required':True,'final_globalgather_full64sync_required':True,'reference_checks':0,'proof_limit':'static address/alias coverage; no kernel edited,no GPUrace/numerical/performance verdict'};(r/'plane_alias_vector_proof.json').write_text(json.dumps(proof,indent=2)+'\n');(r/'plane_V_vector_touches.json').write_text(json.dumps(vectors,indent=2)+'\n');print(json.dumps(proof))
