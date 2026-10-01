from pathlib import Path
import json,collections
p=Path('/root/tilelang-metax/race_tests/nsa');v='v079_codex_power_s1_case4_dense_sc-16g-2'
def qk(r,c):return r*64+((c//8)^(r%8))*8+((c//4%2)^(r//8%2)^(r%2))*4+c%4
def out(r,c):return r*64+((c//8)^(r%8))*8+((c//4%2)^(r//8%2))*4+c%4
def vs(r,c):return ((c//4+16*(c%4))^(r//4%2))*16+((r//4)^(c//16)^(c%4))*4+r%4
expected={(r,c) for r in range(16) for c in range(64)}
for fn in [qk,out,vs]:assert {fn(r,c) for r,c in expected}==set(range(1024))
for token in range(512):
 for block in range(32):
  start=block*16
  if 0<=start<=token:assert start+15<512
copy=[];qload=[];vprod=[];vcons=[];frag={};sh={}
for lane in range(64):
 for part in range(2):
  for e in range(8):pos=part*512+lane*8+e;copy.append((pos//64,pos%64))
 for ch in range(4):
  for e in range(4):qload.append((lane%16,ch*16+lane//16*4+e));frag[lane,ch*4+e]=(lane%16,ch*16+lane//16*4+e)
 rb=lane//8*2;cb=lane%8*8
 for c in range(8):
  base=vs(rb,cb+c);assert base%2==0
  for rr in range(2):coord=(rb+rr,cb+c);assert vs(*coord)==base+rr and base+rr not in sh;sh[base+rr]=coord;vprod.append(coord)
 for ch in range(4):
  rb=lane//16*4;c=ch*16+lane%16;base=vs(rb,c);assert base%4==0
  for e in range(4):coord=(rb+e,c);assert vs(*coord)==base+e;vcons.append(coord)
for values in [copy,qload,vprod,vcons]:assert len(values)==1024 and set(values)==expected
assert len(frag)==1024 and set(frag.values())==expected
for r,c in vcons:assert sh[vs(r,c)]==(r,c)
producermax=consumermax=0
for col in range(8):
 for start in [0,32]:
  banks=[(vs(lane//8*2,lane%8*8+col)*2//4)%32 for lane in range(start,start+32)];producermax=max(producermax,max(collections.Counter(banks).values()))
for ch in range(4):
 for start in range(0,64,16):
  banks=[]
  for lane in range(start,start+16):addr=vs(lane//16*4,ch*16+lane%16)*2;banks += [((addr+x)//4)%32 for x in [0,4]]
  consumermax=max(consumermax,max(collections.Counter(banks).values()))
result={'domain':'C4 B2/L512/H1/HQ16/D64/S1/BS16/causalFP16','all3sharedbijections':1024,'all_global_copy_operand_fragment_sets':'uniquecomplete16x64','shared_capacity_halves':1024,'valid_block_rows':'0..511 full16rows inbounds','local':'q16,qfetch8,k4,scoreP4,num16,vfetch16,vcol2,vop16,outfetch8','MMA':{'QK':4,'PV':4},'singleblock_math':'globalmax,FP16Pscale256,sumofsameconsumedP,FP32PV/Ndiv','bank_assumption':'32x4B,32lane4B/16lane8B not guaranteed','predictedVmax':{'producer':producermax,'consumer':consumermax},'proof_not_native':'originalnaive_nsa/ref/tolerance decides'}
(p/'rep'/v/'C4_coordinate_bounds_proof.json').write_text(json.dumps(result,indent=2)+'\n');print(result)
