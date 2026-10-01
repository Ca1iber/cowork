from pathlib import Path
import json
p=Path('/root/tilelang-metax/race_tests/nsa');v='v072_codex_power_s1_two_query_waves_sc-16g-2'
tokens=[2*pair+w for pair in range(512) for w in range(2)];assert sorted(tokens)==list(range(1024))
fragment={}
for w in range(2):
 for head in range(16):
  for col in range(128):
   thread=w*64+head+16*((col%16)//4);index=col%4+4*(col//16)
   assert 0<=thread<128 and 0<=index<32 and (thread,index) not in fragment;fragment[thread,index]=(w,head,col)
assert len(fragment)==4096 and set(fragment)=={(t,i) for t in range(128) for i in range(32)}
Q=[];K=[];V=[];output=[]
for tid in range(128):
 w=tid//64;lane=tid%64
 for part in range(4):
  for e in range(8):
   pos=part*512+lane*8+e;Q.append((w,pos//128,pos%128));output.append((w,pos//128,pos%128))
 for part in range(8):
  for e in range(8):
   pos=part*512+lane*8+e;K.append((w,pos//128,pos%128))
 for kt in range(2):
  for pl in range(2):
   for row in range(2):
    for col in range(8):V.append((w,kt*16+lane//8*2+row,pl*64+lane%8*8+col))
for values,rows in [(Q,16),(output,16),(K,32),(V,32)]:
 exp={(w,r,c) for w in range(2) for r in range(rows) for c in range(128)};assert len(values)==len(exp) and set(values)==exp
for token in tokens:
 for block in range(32):
  start=block*32
  if 0<=start<=token:assert start+31<1024
out={'CTA_grid':[512,8],'threads':128,'waves_per_CTA':2,'total_CTA':4096,'total_waves':8192,'token_bijection':True,'fragment_pairs':4096,'fragment_local_per_thread':32,'Q_output_coordinates_per_CTA':4096,'K_V_coordinates_per_CTA':8192,'shared_slices':[[0,4095],[4096,8191]],'shared_bytes':16384,'all_global_coordinate_sets_unique_and_complete_per_querywave':True,'sync':'warp64 only,shared slices disjoint;no crossquery consumption','expected_math_work':'each query same32MMA and allsoftmax operations','input_domain':'officialC6 and original validblock guard','numerical_scope':'source/order/proof only;full original native reference decisive'}
(p/'rep'/v/'two_query_ownership_proof.json').write_text(json.dumps(out,indent=2)+'\n');print(out)
