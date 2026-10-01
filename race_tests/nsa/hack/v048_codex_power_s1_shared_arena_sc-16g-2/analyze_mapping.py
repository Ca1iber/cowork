from pathlib import Path
import json

def qk_slot(row,col,rows):
 return col//64*rows*64+row*64+((col%64//8)^(row%8))*8+col%8

def expanded_sdk_slot(row,col,rows):
 return col//64*rows*64+row*64+((row//4+col//32)%2)*32+((row//2+col//16)%2)*16+((row+col//8)%2)*8+col%8

def v_slot(row,col):
 return (col//64*64+col%64//8+8*(col%8))*32+((row//2)^(col%64//8)^(col%8))*2+row%2

def out_slot(row,col):
 return row*128+((col//8)^(row%8))*8+col%8

arena=[None]*4096
for rows in [16,32]:
 seen=set()
 for part in range(rows//4):
  for lane in range(64):
   for e in range(8):
    pos=part*512+lane*8+e;row,col=divmod(pos,128);idx=qk_slot(row,col,rows)
    assert idx==expanded_sdk_slot(row,col,rows) and idx not in seen;seen.add(idx);arena[idx]=(rows,row,col)
 assert seen==set(range(rows*128))
 for key_tile in range(rows//16):
  for lane in range(64):
   for chunk in range(8):
    for e in range(4):
     row=key_tile*16+lane%16;col=chunk*16+lane//16*4+e
     assert arena[qk_slot(row,col,rows)]==(rows,row,col)
seen=set()
for row in range(32):
 for col in range(128):
  idx=v_slot(row,col);assert idx not in seen;seen.add(idx);arena[idx]=('V',row,col)
assert seen==set(range(4096))
for key_tile in range(2):
 for plane in range(2):
  for lane in range(64):
   for chunk in range(4):
    for e in range(4):
     row=key_tile*16+lane//16*4+e;col=plane*64+chunk*16+lane%16
     assert arena[v_slot(row,col)]==('V',row,col)
seen=set()
for row in range(16):
 for col in range(128):
  idx=out_slot(row,col);assert idx not in seen;seen.add(idx);arena[idx]=('O',row,col)
assert seen==set(range(2048))
for pos in range(2048):
 row,col=divmod(pos,128);assert arena[out_slot(row,col)]==('O',row,col)
s={'Q_K_bijections':'PASS all6144 coordinates','Q_K_vs_expanded_v047_SDK_formula':'PASS','V_bijection_and4096_MMA_operand_positions':'PASS','output2048_bijection_and_coalesced_reads':'PASS','arena_half_elements':4096,'shared_bytes':8192,'required_fences':['Q cached before K overwrite','K consumed before V overwrite','all PV operands consumed before output overwrite'],'performance_claim':'NONE; CPU mapping proof only'}
p=Path('/root/tilelang-metax/race_tests/nsa/rep/v048_codex_power_s1_shared_arena_sc-16g-2/phased_mapping_proof.json');p.write_text(json.dumps(s,indent=2)+'\n');print(s)
