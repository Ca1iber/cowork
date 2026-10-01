import json,collections
from pathlib import Path
p=Path('/root/tilelang-metax/race_tests/nsa');v='v060_codex_power_s1_output_pair_swap_sc-16g-2'
def old(r,c):return r*128+((c//8)^(r%8))*8+c%8
def new(r,c):return c//64*1024+r*64+(((c%64)//8)^(r%8))*8+((c//4%2)^(r//8%2)^(c//64))*4+c%4
assert {new(r,c) for r in range(16) for c in range(128)}==set(range(2048))
produced=[];gathered=[];oldpeak=[];newpeak=[]
for chunk in range(8):
 for phase in range(4):
  counts_old=collections.Counter();counts_new=collections.Counter()
  for lane in range(phase*16,phase*16+16):
   head=lane%16;base=chunk*16+lane//16*4
   assert head+16*((base%16)//4)==lane
   a=[new(head,base+e) for e in range(4)]
   assert a==list(range(a[0],a[0]+4)) and a[0]%4==0
   counts_old.update((old(head,base)//2+w)%32 for w in range(2));counts_new.update((a[0]//2+w)%32 for w in range(2))
   for e in range(4):
    col=base+e;assert col%4+4*(col//16)==chunk*4+e;produced.append((head,col))
  oldpeak.append(max(counts_old.values()));newpeak.append(max(counts_new.values()))
for part in range(4):
 for pack in range(2):
  for phase in range(4):
   count=collections.Counter()
   for lane in range(phase*16,phase*16+16):
    pos=part*512+lane*8+pack*4;r=pos//128;c=pos%128
    a=[new(r,c+e) for e in range(4)];assert a==list(range(a[0],a[0]+4)) and a[0]%4==0
    count.update((a[0]//2+w)%32 for w in range(2));gathered.extend((r,c+e) for e in range(4))
   assert max(count.values())==1
assert len(produced)==len(set(produced))==len(gathered)==len(set(gathered))==2048
assert set(produced)==set(gathered)=={(r,c) for r in range(16) for c in range(128)}
out={'output_bijection_and_unique_producer_and_gather':2048,'same_fragment_values':'thread=head+16*(col%16//4), index=col%4+4*(col//16)','explicit_producer_all_matches_fragment_owner':True,'four_half_base_plus_element_contiguous_8B_aligned':True,'modeled_producer_bank_peak_old':max(oldpeak),'modeled_producer_bank_peak_new':max(newpeak),'modeled_gather_8B_bank_peak_new':1,'model_assumptions':'32banks/4B words/16lane phase; actual bank behavior/operation splitting unverified','local_output_fetch_range':[0,7],'global_store':'same4x16B/lane, same output logical positions','normalization_and_rounding':'same F32 values converted once to F16 before global output','shared_capacity_halves':4096}
assert out['modeled_producer_bank_peak_old']==2 and out['modeled_producer_bank_peak_new']==1
(p/'rep'/v/'output_layout_proof.json').write_text(json.dumps(out,indent=2)+'\n');print(out)
