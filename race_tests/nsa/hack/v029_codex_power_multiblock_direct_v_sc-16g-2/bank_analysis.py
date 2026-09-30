import json
from collections import Counter
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa')
id='v029_codex_power_multiblock_direct_v_sc-16g-2'
def transposed_v(row,col):
 return (col//4+16*(col%4))*16+((row//4)^(col//16)^(col%4))*4+row%4
mapping=[transposed_v(r,c) for r in range(16) for c in range(64)]
assert sorted(mapping)==list(range(1024))
def conflict(starts,bytes_per_lane):
 # 32 banks x4-byte word is a framework model, not a verified platform guarantee.
 words=[((x*2+k)//4) for x in starts for k in range(0,bytes_per_lane,4)]
 bank_words={b:set(w for w in words if w%32==b) for b in range(32)}
 return max(map(len,bank_words.values()))
store=[];read=[]
for group in range(4):
 for col_element in range(4):
  a=[transposed_v(4*group,4*t+col_element) for t in range(16)]
  assert all(x%4==0 for x in a)
  store.append(conflict(a,8))
 for tile in range(4):
  a=[transposed_v(4*group,16*tile+h) for h in range(16)]
  assert all(x%4==0 for x in a)
  read.append(conflict(a,8))
assert max(store)==max(read)==1
old_out=[];new_out=[]
for group in range(4):
 for tile in range(4):
  c=tile*16+group*4
  old_out.append(conflict([r*64+c for r in range(16)],8))
  new_out.append(conflict([r*64+((c//8)^(r%8))*8+c%8 for r in range(16)],8))
data={'model':'hypothetical framework32 banks x4B,16-lane phase, distinct word conflicts; not hardware guarantee','next_V_layout':'physical feature=col//4+16*(col%4); token=((row//4)^(col//16)^(col%4))*4+row%4','mapping_bijective1024':True,'microtile_store_max_conflict':max(store),'native_PV_vector_load_max_conflict':max(read),'optional_output_model_old':max(old_out),'optional_output_model_chunk8_xor_row':max(new_out),'falsifier':'generated vector loads/stores do not materialize, counters fail or native end-to-end does not improve'}
(root/'rep'/id/'bank_analysis.json').write_text(json.dumps(data,indent=2)+'\n')
print(data)
