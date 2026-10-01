import json
from pathlib import Path
fetch={}
for lane in range(64):
 fetch[lane]=[(lane//8*2+r)*64+lane%8*8+c for r in range(2) for c in range(8)]
send={}
for lane in range(64):
 half=lane//8%2
 for r in range(2):
  for pair in range(2):
   c=(1-half)*4+pair*2
   send[lane,r,pair]=fetch[lane][r*8+c]|(fetch[lane][r*8+c+1]<<16)
actual={}
for lane in range(64):
 half=lane//8%2;rowbase=lane//16*4;featurebase=lane%8*8+half*4
 for c in range(4):
  own=[fetch[lane][r*8+half*4+c] for r in range(2)]
  other=[(send[lane^8,r,c//2]>>(c%2*16))&65535 for r in range(2)]
  values=own+other if half==0 else other+own
  for r,val in enumerate(values):
   key=(rowbase+r,featurebase+c);assert key not in actual;actual[key]=val
assert len(actual)==1024
assert all(actual[i,j]==i*64+j for i in range(16) for j in range(64))
s={'all1024_coordinates':'PASS','pack32_bit_exchange':'xor8 neighbour sends opposite feature-half; uint32 bits, no float arithmetic','global_reads_per_lane':{'parent':4,'candidate':2},'shared_stores_per_lane':4,'packed_shuffles_per_lane':4}
p=Path('/root/tilelang-metax/race_tests/nsa/rep/v043_codex_power_s8_v_uint4_fetch_sc-16g-2/v_mapping_proof.json');p.write_text(json.dumps(s,indent=2)+'\n');print(s)
