from pathlib import Path
import json

def qk_slot(row,col):return row*64+((col//8)^(row%8))*8+col%8

def v_slot(row,col):return (col//4+16*(col%4))*16+((row//4)^(col//16)^(col%4))*4+row%4

qk={qk_slot(r,c):(r,c) for r in range(16) for c in range(64)}
assert set(qk)==set(range(1024))
for lane in range(64):
 for chunk in range(4):
  for e in range(4):
   row=lane%16;col=chunk*16+lane//16*4+e
   assert qk[qk_slot(row,col)]==(row,col)
physical={}
for lane in range(64):
 for col in range(4):
  for row in range(4):
   r=lane//16*4+row;c=lane%16*4+col;idx=v_slot(r,c)
   assert idx not in physical;physical[idx]=(r,c)
assert set(physical)==set(range(1024))
for lane in range(64):
 for chunk in range(4):
  for e in range(4):
   row=lane//16*4+e;col=chunk*16+lane%16
   assert physical[v_slot(row,col)]==(row,col)
writers={}
for lane in range(64):
 for chunk in range(4):
  for e in range(4):
   row=lane%16;col=chunk*16+lane//16*4+e;idx=qk_slot(row,col)
   assert idx not in writers;writers[idx]=(row,col)
assert set(writers)==set(range(1024))
for pos in range(1024):
 row,col=divmod(pos,64);assert writers[qk_slot(row,col)]==(row,col)
s={'Q_K1024_mapping':'PASS','V1024_producer_consumer_mapping':'PASS','output1024_writer_uniqueness_and_reads':'PASS','arena_bytes':2048,'online_anchor':'monotone max; alpha<=1 for finite anchors, first alpha0','denominator':'sums the four consumed FP16 values per lane, xor32/16 across4key groups','performance_claim':'NONE; mapping proof does not replace full naive_nsa'}
p=Path('/root/tilelang-metax/race_tests/nsa/rep/v050_codex_power_s8_online_local_sc-16g-2/mapping_proof.json');p.write_text(json.dumps(s,indent=2)+'\n');print(s)
