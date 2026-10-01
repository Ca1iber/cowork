from pathlib import Path
import json

def layout(row,col):
 return (col//64*64+(col%64)//8+8*(col%8),((row//2)^((col%64)//8)^(col%8))*2+row%2)
physical={}
for lane in range(64):
 for key_tile in range(2):
  for plane in range(2):
   for col in range(8):
    row=key_tile*16+lane//8*2;feature=plane*64+lane%8*8+col
    lo=layout(row,feature);hi=layout(row+1,feature)
    assert lo[0]==hi[0] and lo[1]%2==0 and hi[1]==lo[1]+1
    for e in range(2):
     p=layout(row+e,feature);assert p not in physical;physical[p]=(row+e)*128+feature
assert set(physical)=={(r,c) for r in range(128) for c in range(32)}
consumed=[]
for lane in range(64):
 for key_tile in range(2):
  for plane in range(2):
   for chunk in range(4):
    col=plane*64+chunk*16+lane%16
    for pair in range(2):
     row=key_tile*16+lane//16*4+pair*2
     lo=layout(row,col);hi=layout(row+1,col)
     assert lo[0]==hi[0] and lo[1]%2==0 and hi[1]==lo[1]+1
     for e in range(2):
      val=physical[layout(row+e,col)];assert val==(row+e)*128+col;consumed.append(val)
assert len(consumed)==4096 and len(set(consumed))==4096
scores={(lane%16,key_tile*16+lane//16*4+e) for lane in range(64) for key_tile in range(2) for e in range(4)}
assert scores=={(head,key) for head in range(16) for key in range(32)}
s={'all4096_V_producer_cells':'PASS','all4096_native_PV_operand_positions':'PASS','all_row_pairs_contiguous_aligned4B':'PASS','all512_score_ownership_positions':'PASS','probability_denom':'same eight FP16 values per lane, xor32 then16 sums all32 per query head','shared_operand_reads_per_lane':32,'shared_producer_stores_per_lane':32,'global_V_loads_per_lane':8,'bank_conflict_claim':'NONE; coordinate proof is not hardware throughput evidence'}
p=Path('/root/tilelang-metax/race_tests/nsa/rep/v047_codex_power_s1_v_planes_sc-16g-2/layout_proof.json');p.write_text(json.dumps(s,indent=2)+'\n');print(s)
