from pathlib import Path
import json,hashlib,ast
p=Path('/root/tilelang-metax/race_tests/nsa');r=p/'rep/v101_worker1_s2_fixed_selection_sc-16g-2';source=p/'experiments/v077_codex_power_s8_output_pair_sc-16g-2/s8_kernel.py';s=source.read_text();assert hashlib.sha256(source.read_bytes()).hexdigest()=='6cab13e3b158003e6fc0abceb3bace5579a7816bc0a0836c573e04118dec5895'
def slot(row,col):return row*64+((col//8)^(row%8))*8+(((col//4)%2)^((row//8)%2)^(row%2))*4+col%4
writers={}
for part in range(2):
 for lane in range(64):
  for element in range(8):
   pos=part*512+lane*8+element;row,col=divmod(pos,64);idx=slot(row,col);assert idx not in writers;writers[idx]=(row,col)
assert len(writers)==1024 and set(writers)==set(range(1024))
seen=set()
for lane in range(64):
 for chunk in range(4):
  for element in range(4):
   direct=(lane%16,chunk*16+(lane//16)*4+element);assert writers[slot(*direct)]==direct;seen.add(direct)
assert seen=={(row,col) for row in range(16) for col in range(64)}
proof={'case':10,'parent_helper':str(source),'parent_helper_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),'writer_slots_bijective':1024,'original_shared_consumer_equals_direct_global_coordinate':True,'global_coordinates_each_read_once_for_Q_and_each_K_tile':1024,'direct_coordinate':'row=lane%16,col=chunk*16+(lane//16)*4+element','groups':16,'dim':64,'threads':64,'Q_K_fragment_order_preserved':True,'sync_reason':'remove only Q/K shared staging; V/output barriers unchanged and local fragments contain all operands before MFMA','correctness_reference_checks':0,'proof_limit':'coordinate equivalence only,not numerical runtime correctness or latency nonregression'};(r/'direct_QK_coordinate_proof.json').write_text(json.dumps(proof,indent=2)+'\n');print(json.dumps(proof))
