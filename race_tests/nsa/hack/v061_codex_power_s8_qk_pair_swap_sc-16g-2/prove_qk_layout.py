import json,collections
from pathlib import Path
p=Path('/root/tilelang-metax/race_tests/nsa');v='v061_codex_power_s8_qk_pair_swap_sc-16g-2'
def old(r,c):return r*64+((c//8)^(r%8))*8+c%8
def new(r,c):return r*64+((c//8)^(r%8))*8+((c//4%2)^(r//8%2)^(r%2))*4+c%4
assert {new(r,c) for r in range(16) for c in range(64)}==set(range(1024))
for r in range(16):
 for c in range(0,64,4):
  a=[new(r,c+e) for e in range(4)];assert a==list(range(a[0],a[0]+4)) and a[0]%4==0
peaks={}
for label,fn in [('old',old),('new',new)]:
 values=[]
 for phase in range(4):
  for chunk in range(4):
   count=collections.Counter()
   for lane in range(phase*16,phase*16+16):
    base=fn(lane%16,chunk*16+lane//16*4);count.update((base//2+w)%32 for w in range(2))
   values.append(max(count.values()))
 peaks[label]=max(values)
assert peaks=={'old':2,'new':1}
producer=[]
for part in range(2):
 for pack in range(2):
  for phase in range(4):
   count=collections.Counter()
   for lane in range(phase*16,phase*16+16):
    pos=part*512+lane*8+pack*4;r=pos//64;c=pos%64;base=new(r,c)
    count.update((base//2+w)%32 for w in range(2));producer.extend((r,c+e) for e in range(4))
   assert max(count.values())==1
assert len(producer)==len(set(producer))==1024
valid=0
for token in range(1024):
 for idx in range(64):
  start=idx*16
  if start<=token:assert start+15<=1023;valid+=1
out={'Q_K_bijection_elements':1024,'unique_split_producer_elements':1024,'four_half_groups_contiguous_8B_aligned':True,'modeled_operand_word_bank_peak':peaks,'modeled_new8B_producer_word_bank_peak':1,'model_assumptions':'32banks/4B/16lane phase unverified hardware model','valid_block_token_pairs_checked':valid,'K_last_row_max':1023,'global_shape':'exact C12 B4/L1024/H1/HQ16/D64/S8/BS16/causalTrue','local_qk_fetch_indices':[0,7],'output':'old out_slot kept independent; same producer/gather as v056','shared_halves':1024,'Q_K_global_load_width':'16B unchanged'}
(p/'rep'/v/'qk_layout_proof.json').write_text(json.dumps(out,indent=2)+'\n');print(out)
