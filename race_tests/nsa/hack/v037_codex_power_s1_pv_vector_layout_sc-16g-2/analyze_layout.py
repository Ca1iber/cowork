import json
from pathlib import Path
from collections import Counter
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v037_codex_power_s1_pv_vector_layout_sc-16g-2')
def qk(row,col):return col//64*2048+row*64+((col%64)^((row%8)*8))
def pv(row,col):return row//16*2048+(col//4+32*(col%4))*16+((row%16//4)^(col//16%4)^(col%4))*4+row%4
assert sorted(qk(i,j) for i in range(32) for j in range(128))==list(range(4096))
assert sorted(pv(i,j) for i in range(32) for j in range(128))==list(range(4096))
def banks(addresses):
 c=Counter()
 for a in addresses:
  assert a%4==0
  for h in (0,2):c[((a+h)//2)%32]+=1
 return max(c.values())
consumer=[];producer=[]
for phase in range(4):
 for keytile in range(2):
  for tile in range(8):
   consumer.append(banks([pv(keytile*16+lane//16*4,tile*16+lane%16) for lane in range(phase*16,(phase+1)*16)]))
  for tile in range(2):
   for column in range(4):
    producer.append(banks([pv(keytile*16+lane//16*4,tile*64+lane%16*4+column) for lane in range(phase*16,(phase+1)*16)]))
s={'address_bijection':'both 4096 cells PASS','vector_alignment':'all V4half addresses 8byte aligned','assumption':'framework hypothesis only:32banks x4B,16lane issue phase; not C500 platform guarantee','consumer_model_conflict_max':max(consumer),'producer_model_conflict_max':max(producer),'expected_PV_shared_load_instructions_per_lane':{'v036_scalar':64,'v037_uint2':16}}
(r/'layout_model.json').write_text(json.dumps(s,indent=2)+'\n');print(s)
