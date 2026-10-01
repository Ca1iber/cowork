from pathlib import Path
import json

def layout(row,col):
 return (col//8+8*(col%8),((row//2)^(col//8)^(col%8))*2+row%2)

physical={}
for lane in range(64):
 for c in range(8):
  row=lane//8*2;col=lane%8*8+c
  lo=layout(row,col);hi=layout(row+1,col)
  assert lo[0]==hi[0] and lo[1]%2==0 and hi[1]==lo[1]+1
  for r in range(2):
   key=layout(row+r,col);assert key not in physical
   physical[key]=(row+r)*64+col
assert len(physical)==1024 and set(physical)=={(r,c) for r in range(64) for c in range(16)}
consumed=[]
for lane in range(64):
 for chunk in range(4):
  col=chunk*16+lane%16
  for pair in range(2):
   row=lane//16*4+pair*2
   lo=layout(row,col);hi=layout(row+1,col)
   assert lo[0]==hi[0] and lo[1]%2==0 and hi[1]==lo[1]+1
   for e in range(2):
    actual=physical[layout(row+e,col)]
    assert actual==(row+e)*64+col;consumed.append(actual)
assert len(set(consumed))==1024

# Hypothesis only: 32 four-byte banks, separate16-lane instruction phases.
def max_collision(coords):
 banks=[((layout(row,col)[0]*16+layout(row,col)[1])*2//4)%32 for row,col in coords]
 return max(banks.count(bank) for bank in set(banks))
producer=[max_collision([(lane//8*2,lane%8*8+c) for lane in range(start,start+16)]) for start in range(0,64,16) for c in range(8)]
consumer=[max_collision([(lane//16*4+pair*2,chunk*16+lane%16) for lane in range(start,start+16)]) for start in range(0,64,16) for chunk in range(4) for pair in range(2)]
s={'bijective_all1024_cells':'PASS','all1024_MMA_operand_positions':'PASS','all_row_pairs_contiguous_aligned4B':'PASS','bank_model_assumptions':'32 banks of4B; separate16lane phases. Hypothesis only, previously insufficient to predict D128 measured conflicts.','modeled_producer_max_collision':max(producer),'modeled_consumer_max_collision':max(consumer),'global_V_loads_per_lane':2,'packed_lane_exchanges':0,'shared_stores_per_lane':8,'shared_operand_loads_per_lane':8}
p=Path('/root/tilelang-metax/race_tests/nsa/rep/v046_codex_power_s8_v_rowpair_sc-16g-2/layout_proof.json');p.write_text(json.dumps(s,indent=2)+'\n');print(s)
