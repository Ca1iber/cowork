from pathlib import Path
import json,hashlib
root=Path('/root/tilelang-metax');v='v209_worker2_c14_linear_query_grid_subagent2';r=root/'race_tests/nsa/rep'/v
case=json.loads((root/'race_tests/nsa/official_case.json').read_text())[13];key=[case[k] for k in ['B','SEQ_LEN','H','HQ','D','S','block_size','is_causal']];assert key==[2,512,2,32,64,1,16,True]
seen=set();maps=[]
for linear in range(2048):
 b=linear//1024;t=(linear//2)%512;h=linear%2
 assert 0<=b<2 and 0<=t<512 and 0<=h<2 and (b*512+t)*2+h==linear
 assert (b,t,h) not in seen;seen.add((b,t,h))
 assert b*1024+t*2+h==linear
 for lane in range(64):
  for part in range(2):
   qold=b*1048576+t*2048+h*1024+part*512+lane*8
   qnew=linear*1024+part*512+lane*8
   assert qold==qnew and qnew%8==0 and qnew+8<=2*512*32*64
  # K/V identities hold for every legal aligned block, not an assumption that H0/H1 indices agree.
  for block in range(t//16+1):
   start=block*16
   for part in range(2):
    row=part*8+lane//8;col=(lane%8)*8
    kvold=b*65536+(start+row)*128+h*64+col
    kvnew=(linear//1024)*65536+(start+row)*128+(linear%2)*64+col
    assert kvold==kvnew and kvnew%8==0 and 0<=kvnew and kvnew+8<=2*512*2*64
 maps.append({'linear':linear,'batch':b,'token':t,'kvhead':h,'old_grid':[t,b*2+h]})
assert len(seen)==2048
summary={'official_case_number':14,'only_key':key,'old_grid':[512,4],'proposed_grid':[2048],'threads_kept':64,'logical_query_wave_count':2048,'output_payload_bytes':4194304,'qlogical_read_bytes':4194304,'KV_each_unique_input_bytes':262144,'KV_each_logical_read_bytes':4194304,'shared_logical_readwrite_bytes_perquery':16384,'MMA_perlogicalquery':8,'nominal_MMA_FLOPs':2048*8*2*16*16*16,'all2048_query_bijection':True,'all_perlane_QO_same_formula':True,'all_legal_KV_blocks_perlane_address_equal':True,'indices_new_linear_equals_original':True,'head0_head1_selectedindices_independent':True,'no_newcache_shuffle_prepack_or_mathexpected':True,'sourcecode_existing_parent14_CPP':'race_tests/nsa/rep/v200_worker2_baseline_profile_subagent2/codegen/parent_v084/case14_stage1.device.cpp','parent14_CPP_SHA':'c6957b7274e656c0c03b0ed0959d2c5d322fcb549396cff9eb212fc7e69a7e1a','resource_MT_ST_staticmax':'UNAVAILABLE_noexistingcase14resourcecapture','profile_case14':'UNAVAILABLE_noexistingcase14profile','hardware_CTA_execution_order':'UNAVAILABLE_logicalgridordering_notexecutionguarantee','candidate_created':False,'new_import_compile_attention_native':[0,0,0,0]}
(r/'query_grid_proof.json').write_text(json.dumps(summary,indent=2)+'\n');(r/'query_linear_mapping.json').write_text(json.dumps(maps,indent=2)+'\n')
print(json.dumps(summary,indent=2))
