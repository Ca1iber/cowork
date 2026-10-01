from pathlib import Path
import json,collections
p=Path('/root/tilelang-metax/race_tests/nsa');v='v077_codex_power_s8_output_pair_sc-16g-2'
def old(r,c):return r*64+((c//8)^(r%8))*8+c%8
def out(r,c):return r*64+((c//8)^(r%8))*8+((c//4%2)^(r//8%2))*4+c%4
expect={(r,c) for r in range(16) for c in range(64)};assert {out(r,c) for r,c in expect}==set(range(1024))
shared={};reads=[]
for lane in range(64):
 for ch in range(4):
  row=lane%16;basecol=ch*16+(lane//16)*4;base=out(row,basecol);assert base%4==0
  for e in range(4):assert out(row,basecol+e)==base+e and base+e not in shared;shared[base+e]=(row,basecol+e)
for lane in range(64):
 for part in range(2):
  fetch={}
  for pack in range(2):
   pos=part*512+lane*8+pack*4;r,c=pos//64,pos%64;base=out(r,c);assert base%4==0
   for e in range(4):assert out(r,c+e)==base+e;fetch[pack*4+e]=shared[base+e]
  for e in range(8):
   pos=part*512+lane*8+e;assert fetch[e]==(pos//64,pos%64);reads.append(fetch[e])
assert len(reads)==1024 and set(reads)==expect
models={}
for label,fn in [('old',old),('new',out)]:
 maximum=0
 for ch in range(4):
  for start in range(0,64,16):
   banks=[]
   for lane in range(start,start+16):
    addr=fn(lane%16,ch*16+(lane//16)*4)*2;banks += [((addr+x)//4)%32 for x in [0,4]]
   maximum=max(maximum,max(collections.Counter(banks).values()))
 models[label]=maximum
result={'out_bijection':1024,'complete_unique_producer_consumer':1024,'producer4half_8Baligned_contiguous':True,'two8Bgather_restores_original8halforder':True,'output_FP16_bits':'same round-beforestore,copy only','output_fetch_bounds':[0,7],'sharedbounds':[0,1023],'all_input_bounds':'exact68unchanged','bank_assumption':'32banks4B/16lane8Bphase only,not hardwareguarantee','model_max_bank_requests':models,'required':'normalCPP widths/resources and originalnative'}
(p/'rep'/v/'output_pair_coordinate_model.json').write_text(json.dumps(result,indent=2)+'\n');print(result)
