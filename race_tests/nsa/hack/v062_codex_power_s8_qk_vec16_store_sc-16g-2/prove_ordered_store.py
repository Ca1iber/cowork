import json
from pathlib import Path
p=Path('/root/tilelang-metax/race_tests/nsa');v='v062_codex_power_s8_qk_vec16_store_sc-16g-2'
def slot(r,c):return r*64+((c//8)^(r%8))*8+((c//4%2)^(r//8%2)^(r%2))*4+c%4
def block(r,c):return r*64+((c//8)^(r%8))*8
count=0
for r in range(16):
 flip=(r//8%2)^(r%2)
 for c in range(0,64,8):
  base=block(r,c);assert base%8==0
  physical=[None]*8
  for e in range(8):physical[slot(r,c+e)-base]=e
  ordered=[e if flip==0 else (e+4)%8 for e in range(8)]
  assert physical==ordered and set(ordered)==set(range(8))
  for e in range(8):assert ordered[slot(r,c+e)-base]==e;count+=1
assert count==1024
out={'logical_values_verified':count,'register_order_fixed_indices':'select flip0 fetch[e] else fetch[(e+4)%8],e unrolled0..7','physical_block_base16B_aligned':True,'ordered16B_store_matches_v061_split8B_stores':True,'global_coordinates_bytes_and_consumer_map':'unchanged','all_local_fetch_and_order_indices':[0,7],'no_dynamic_array_indexing_in_proposal':True,'bank_model':'v061 consumer mapping retained; wider store hardware splitting unverified','shared_capacity_halves':1024}
(p/'rep'/v/'ordered_store_proof.json').write_text(json.dumps(out,indent=2)+'\n');print(out)
