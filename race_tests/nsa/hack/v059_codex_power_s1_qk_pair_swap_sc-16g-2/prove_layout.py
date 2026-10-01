import collections,json
from pathlib import Path
p=Path('/root/tilelang-metax/race_tests/nsa');v='v059_codex_power_s1_qk_pair_swap_sc-16g-2'
def old(r,c,rows):return (c//64)*rows*64+r*64+(((c%64)//8)^(r%8))*8+c%8
def new(r,c,rows):return (c//64)*rows*64+r*64+(((c%64)//8)^(r%8))*8+((c%8)^(((r//8%2)^(c//64))*4))
for rows in (16,32):
 assert {new(r,c,rows) for r in range(rows) for c in range(128)}==set(range(rows*128))
 for r in range(rows):
  for c in range(0,128,4):
   a=[new(r,c+e,rows) for e in range(4)]
   assert a==list(range(a[0],a[0]+4)) and a[0]%4==0
 def bank_peak(fn,producer=False):
  peaks=[]
  for phase in range(4):
   for chunk in range(8):
    for kt in range(2 if rows==32 else 1):
     counts=collections.Counter()
     for lane in range(phase*16,phase*16+16):
      r=kt*16+lane%16;c=chunk*16+lane//16*4
      base=fn(r,c,rows);counts.update(((base//2+w)%32 for w in range(2)))
     peaks.append(max(counts.values()))
  return max(peaks)
 assert bank_peak(old)==2 and bank_peak(new)==1
 for part in range(rows//4):
  for pack in range(2):
   for phase in range(4):
    counts=collections.Counter()
    for lane in range(phase*16,phase*16+16):
     pos=part*512+lane*8+pack*4;r=pos//128;c=pos%128
     base=new(r,c,rows);counts.update(((base//2+w)%32 for w in range(2)))
    assert max(counts.values())==1
out={'Q_K_slot_bijections':[2048,4096],'all_4half_consumers_and_stores_contiguous_and_8B_aligned':True,'modeled_operand_word_bank_peak_old':2,'modeled_operand_word_bank_peak_new':1,'modeled_new_8B_producer_word_bank_peak':1,'model_assumptions':'32 banks,4B bank word,16-lane phase; hardware operation splitting unverified; not actual bank-conflict or throughput measurement','global_Q_K_load_width':'16B unchanged by proposed staging','shared_Q_K_store_width':'two8B stores replace one16B store','shared_capacity_halves':4096,'pointer_domain':'same logical Q16x128/K32x128,global/local bounds from v057; new qk_fetch0..7'}
(p/'rep'/v/'qk_layout_proof.json').write_text(json.dumps(out,indent=2)+'\n');print(out)
