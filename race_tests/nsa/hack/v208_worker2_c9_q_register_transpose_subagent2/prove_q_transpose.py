from pathlib import Path
import json,hashlib
root=Path('/root/tilelang-metax');v='v208_worker2_c9_q_register_transpose_subagent2';r=root/'race_tests/nsa/rep'/v
case=json.loads((root/'race_tests/nsa/official_case.json').read_text())[8];key=[case[k] for k in ['B','SEQ_LEN','H','HQ','D','S','block_size','is_causal']];assert key==[1,8192,1,16,64,1,16,True]
raw=[[(lane%16,(lane//16)*16+cell*4+e) for cell in range(4) for e in range(4)] for lane in range(64)]
stages=[]
for bit,delta in [(0,16),(1,32)]:
 old=[a[:] for a in raw];recv=[];new=[a[:] for a in old]
 for lane in range(64):
  peer=lane^delta;assert peer%16==lane%16 and peer//64==lane//64
  for cell in range(4):
   for e in range(4):
    ownbit=((lane//16)>>bit)&1
    coord=old[lane][cell*4+e] if ((cell>>bit)&1)==ownbit else old[peer][(cell^(1<<bit))*4+e]
    new[lane][cell*4+e]=coord
  # Four 32-bit words are received before any destination write.
  packet=[]
  for otherbit in range(2):
   sourcecell=(otherbit*2+(1-ownbit)) if bit==0 else ((1-ownbit)*2+otherbit)
   peercell=sourcecell^(1<<bit)
   for pair in range(2):packet.append([old[peer][peercell*4+pair*2+e] for e in range(2)])
  assert len(packet)==4
  recv.append({'lane':lane,'peer':peer,'packet_coordinates':packet})
 raw=new;stages.append({'bit':bit,'xor_delta':delta,'all_recv_before_overwrite':True,'packet_count_perlane':4,'received_packets':recv})
expected=[[(lane%16,cell*16+(lane//16)*4+e) for cell in range(4) for e in range(4)] for lane in range(64)]
assert raw==expected
assert len({x for a in raw for x in a})==1024
addresses={}
for label in ['parent','proposal']:
 vectors=[]
 for part in range(2):
  add=[]
  for lane in range(64):
   base=part*1024+lane*16 if label=='parent' else (lane%16)*128+(lane//16)*32+part*16
   assert base%16==0 and 0<=base and base+16<=2048;add.append(base)
  vectors.append(add)
 assert sorted(b for a in vectors for base in a for b in range(base,base+16))==list(range(2048))
 addresses[label]=vectors
models=[]
for sector in [32,64,128]:
 for subgroup in [8,16,32,64]:
  for label,vectors in addresses.items():
   counts=[]
   for part in range(2):
    for start in range(0,64,subgroup):
     touched={b//sector for base in vectors[part][start:start+subgroup] for b in range(base,base+16)};counts.append(len(touched))
   models.append({'hypothetical_sector_bytes':sector,'hypothetical_subgroup':subgroup,'kind':label,'sum_min_logical_intersections_perpass':sum(counts),'not_actual_transactions':'cache/coalescer issue grouping uncalibrated; repeatedsecondpasscanhit'})
summary={'official_case_number':9,'only_key':key,'initial_coordinate':'x[laneQuarter,cell,e]=Q(head,16laneQuarter+4cell+e)','final_coordinate':'xprime[quarter,cell,e]=Q(head,16cell+4quarter+e)','all1024_coordinates_exact':True,'xor16_xor32_preserve_head_query':True,'two_stages_each4word_shfl':True,'planned_logical_register_exchange_bytes_perquery':2048,'old_Qshared_write_read_bytes_perquery':4096,'old_total_shared_write_read_bytes_perquery':16384,'planned_total_shared_bytes_afterQremoval':12288,'logical_shared_reduction_pct':25,'planned_Qglobal_uint4_perlane':2,'same_global_Q_payload_bytes_perquery':2048,'globalQ_perlane_address_changed':True,'fullcoverage_16Bvector_alignment_andbounds':True,'inputoutput_bits':'uint16 bitreinterpret/zeroextend/pack/shfl/split/reinterpret;no numericconversion','planned_removed_sync':'only original Qshared writer-reader sync;K/V/output6others retained','Num_float32_elements_kept':16,'candidate_created':False,'new_import_compile_attention_native':[0,0,0,0]}
for name,d in [('q_transpose_proof.json',summary),('q_stage_packet_coordinates.json',stages),('Q_global_vector_addresses.json',addresses),('global_line_hypotheses.json',models)]:(r/name).write_text(json.dumps(d,indent=2)+'\n')
print(json.dumps(summary,indent=2))
