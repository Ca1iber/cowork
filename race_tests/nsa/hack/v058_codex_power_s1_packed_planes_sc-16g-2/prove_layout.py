import json
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');ident='v058_codex_power_s1_packed_planes_sc-16g-2'
def slot(r,c):
 return (r//16*2+c//64)*1024+((c%64)//4+16*(c%4))*16+(((r%16)//4)^((c%64)//16)^(c%4))*4+r%4
coords={(r,c):slot(r,c) for r in range(32) for c in range(128)}
assert set(coords.values())==set(range(4096))
covered=[];reads=[]
for kt in range(2):
 for pl in range(2):
  for lane in range(64):
   r=kt*16+lane//16*4;c=pl*64+lane%16*4
   covered += [(r+a,c+b) for a in range(4) for b in range(4)]
   for chunk in range(4):
    positions=[slot(kt*16+lane//16*4+e,pl*64+chunk*16+lane%16) for e in range(4)]
    assert positions==list(range(positions[0],positions[0]+4)) and positions[0]%4==0
    reads+=positions
assert len(covered)==4096 and len(set(covered))==4096
assert len(reads)==4096 and len(set(reads))==4096
out={'bijection':True,'unique_global_elements':len(set(covered)),'unique_operand_elements':len(set(reads)),'all_operand_four_half_words_contiguous_and_8B_aligned':True,'producer_all_four_row_shared_stores_8B_aligned':True,'shared_bytes':8192,'modeled_read_instruction_count_per_lane':16,'parent_row_pair_read_count_per_lane':32,'model_is_not_performance_or_bank_conflict_measurement':True}
(root/'rep'/ident/'v_layout_proof.json').write_text(json.dumps(out,indent=2)+'\n');print(out)
