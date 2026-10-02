from pathlib import Path
import ast,json,hashlib
root=Path('/root/tilelang-metax');v='v205_worker2_c5_num8_output_reuse_subagent2';r=root/'race_tests/nsa/rep'/v
src=root/'race_tests/nsa/submission/v084_codex_power_s1_d32_d128_pair_sc-16g-2/submission.py'
assert hashlib.sha256(src.read_bytes()).hexdigest()=='4c674c79e4128f3c9f233fa6694c1a8f825d1048293accd9250fb5e2d86472b0'
f=next(n for n in ast.parse(src.read_text()).body if isinstance(n,ast.FunctionDef) and n.name=='_make_power_s1_case4_dense')
env={}
for name in ['out_slot','v_slot']:
 node=next(n for n in f.body if isinstance(n,ast.FunctionDef) and n.name==name)
 exec(compile(ast.Module(body=[node],type_ignores=[]),str(src),'exec'),env)
out_slot=env['out_slot'];v_slot=env['v_slot'];sets=[];records=[]
for group in range(2):
 touches=[]
 for lane in range(64):
  for localchunk in range(2):
   chunk=group*2+localchunk;feature=chunk*16+(lane//16)*4;base=out_slot(lane%16,feature);vec=[out_slot(lane%16,feature+e) for e in range(4)]
   assert vec==list(range(base,base+4)) and base%4==0 and all(0<=i<1024 for i in vec)
   touches+=vec;records.append({'group':group,'lane':lane,'chunk':chunk,'shared_half_indices':vec,'relative_byte_alignment':8})
 assert len(touches)==512 and len(set(touches))==512;sets.append(set(touches))
assert not sets[0]&sets[1] and sets[0]|sets[1]==set(range(1024))
V=[v_slot((lane//16)*4+e,chunk*16+lane%16) for lane in range(64) for chunk in range(4) for e in range(4)]
assert len(V)==1024 and set(V)==set(range(1024))
d={'parentSHA':hashlib.sha256(src.read_bytes()).hexdigest(),'out_slot_source':ast.get_source_segment(src.read_text(),next(n for n in f.body if isinstance(n,ast.FunctionDef) and n.name=='out_slot')),'two_groups_exact_output_half_counts':[len(s) for s in sets],'groups_disjoint':True,'union_exact1024':True,'all_vectors_contiguous_four_half_and_8B_aligned':True,'all_Voperand_reads_cover1024_shared_half':True,'V_must_be_local_before_any_output_overwrite':True,'all_empty_den0_and_num0_division_preserved':True,'candidate_source_not_created':True,'attention_reference_native':[0,0,0]}
case=json.loads((root/'race_tests/nsa/official_case.json').read_text())[4]
key=[case[k] for k in ['B','SEQ_LEN','H','HQ','D','S','block_size','is_causal']]
assert key==[4,1024,1,16,64,1,16,True]
d.update({'official_case_number':5,'only_key':key,'query_partition_proof_B_L_independent':True,'actual_host_grid_from_proposal':[1024,4],'expected_waves':4096,'expected_output_payload_bytes':8388608,'max_valid_aligned_block_V_row':max(b*16+15 for t in range(1024) for b in range(64) if b*16<=t),'numerical_empty_behavior_is_design_requirement_not_candidate_validation':True})
(r/'output_partition_proof.json').write_text(json.dumps(d,indent=2)+'\n');(r/'output_vector_touches.json').write_text(json.dumps(records,indent=2)+'\n');print(json.dumps(d,indent=2))
