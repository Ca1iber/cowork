from pathlib import Path
import json
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v212_worker2_c8_direct_k_operand_subagent2')
def qk_slot(row,col):return row*64+((col//8)^(row%8))*8+(((col//4)%2)^((row//8)%2)^(row%2))*4+col%4
shared={}
for part in range(2):
 for lane in range(64):
  for pack in range(2):
   pos=part*512+lane*8+pack*4
   for e in range(4):
    row=(pos+e)//64;col=(pos+e)%64;slot=qk_slot(pos//64,pos%64)+e;assert slot not in shared;shared[slot]=(row,col)
assert len(shared)==1024 and set(shared)==set(range(1024));seen=set()
for lane in range(64):
 for chunk in range(4):
  row=lane%16;col=chunk*16+(lane//16)*4
  assert (row*64+col)*2%8==0
  for e in range(4):
   original=shared[qk_slot(row,col)+e];direct=(row,col+e);assert original==direct;seen.add(direct)
assert len(seen)==1024
bounds=0
for batch in range(2):
 for block in range(256):
  start=block*16
  for row,col in seen:
   address=(batch*4096+start+row)*64+col;assert 0<=address<2*4096*64;bounds+=1
models=[]
for width in [32,64,128]:
 for group in [16,32,64]:
  counts=[]
  for direct in [False,True]:
   n=0
   for instruction in range(4 if direct else 2):
    for begin in range(0,64,group):
     lines=set()
     for lane in range(begin,begin+group):
      start=2*((lane%16)*64+instruction*16+(lane//16)*4) if direct else 2*(instruction*512+lane*8)
      for byte in range(8 if direct else 16):lines.add((start+byte)//width)
     n+=len(lines)
   counts.append(n)
  models.append({'assumed_line_bytes':width,'assumed_coalescing_lanes':group,'parent_line_intersections':counts[0],'direct_line_intersections':counts[1],'ratio':counts[1]/counts[0]})
out={'proposal_only_no_candidate':True,'MFMA_K_scalar_coordinates_equal':1024,'all_direct8B_vectors_aligned':True,'full_tile_bijection':True,'alllegal_batch_block_scalar_bounds_checks':bounds,'old_parentK_global_vectors_perlane_bytes':[2,16],'new_directK_global_vectors_perlane_bytes':[4,8],'logical_tilebytes_equal':2048,'request_models':models,'models_not_C500calibrated_sector_or_HBMtraffic':True,'cross_instruction_cache_writecombine_not_modelled':True}
(r/'direct_K_mapping_proof.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2))
