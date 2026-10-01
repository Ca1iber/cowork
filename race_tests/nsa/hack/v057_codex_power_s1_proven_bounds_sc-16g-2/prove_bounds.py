import json
from pathlib import Path
p=Path('/root/tilelang-metax/race_tests/nsa');v='v057_codex_power_s1_proven_bounds_sc-16g-2'
L=1024;BS=32;B=8;H=1;G=16;D=128
assert L%BS==0
pairs=0;max_start=0
for token in range(L):
 for index in range(L//BS):
  start=index*BS
  if 0<=start<=token:
   assert start+BS-1<L;pairs+=1;max_start=max(max_start,start)
def qk(r,c,rows):return (c//64)*rows*64+r*64+(((c%64)//8)^(r%8))*8+c%8
def vs(r,c):return ((c//64)*64+(c%64)//8+8*(c%8))*32+((r//2)^((c%64)//8)^(c%8))*2+r%2
def out(r,c):return r*128+((c//8)^(r%8))*8+c%8
assert {qk(r,c,16) for r in range(16) for c in range(128)}==set(range(2048))
assert {qk(r,c,32) for r in range(32) for c in range(128)}==set(range(4096))
assert {vs(r,c) for r in range(32) for c in range(128)}==set(range(4096))
assert {out(r,c) for r in range(16) for c in range(128)}==set(range(2048))
qp=[];kp=[];ql=[];kl=[];vp=[];vl=[];ow=[];frag=[]
for lane in range(64):
 for part in range(4):
  for e in range(8):
   pos=part*512+lane*8+e;qp.append((pos//128,pos%128));ow.append((pos//128,pos%128))
 for part in range(8):
  for e in range(8):
   pos=part*512+lane*8+e;kp.append((pos//128,pos%128))
 for chunk in range(8):
  for e in range(4):
   ql.append((lane%16,chunk*16+lane//16*4+e))
   for kt in range(2):kl.append((kt*16+lane%16,chunk*16+lane//16*4+e))
 for kt in range(2):
  for pl in range(2):
   for row in range(2):
    for col in range(8):vp.append((kt*16+lane//8*2+row,pl*64+lane%8*8+col))
   for chunk in range(4):
    for e in range(4):vl.append((kt*16+lane//16*4+e,pl*64+chunk*16+lane%16))
 for col in range(128):
  h=lane%16
  if h+16*((col%16)//4)==lane:frag.append((h,col,col%4+4*(col//16)))
for seq,rows in [(qp,16),(ql,16),(ow,16),(kp,32),(kl,32),(vp,32),(vl,32)]:
 expect={(r,c) for r in range(rows) for c in range(128)}
 assert set(seq)==expect and len(seq)==len(expect)
assert len(frag)==2048 and len({(h,c) for h,c,i in frag})==2048 and all(0<=i<32 for h,c,i in frag)
result={'domain':'official case6 B8,L1024,H1,HQ16,D128,S1,BS32,causalTrue','uniform_valid_block_branch':'0<=32*index<=token','in_range_start_max':max_start,'last_K_V_row_max':max_start+BS-1,'valid_token_block_pairs_checked':pairs,'Indices_elements':8192,'selected_slot':0,'global_column_range':[0,127],'Q_output_heads':[0,15],'Q_output_coordinate_count':2048,'K_V_coordinate_count':4096,'all_global_producer_and_operand_coordinates_unique_and_complete':True,'shared_Q_output_bijections':2048,'shared_K_V_bijections':4096,'shared_capacity_halves':4096,'fragment_per_lane_indices':[0,31],'local_bounds':'q_local0..31; k_local0..3; scores/P0..7; v_fetch/v_operand0..15; v_column0..1; scalars0','invalid_selected_blocks':'unchanged explicit branch skips Q/K/V reads; output coords always valid','proof_scope':'exact compiled/cache shape only; actual lowering and full native correctness remain required'}
(p/'rep'/v/'bounded_access_proof.json').write_text(json.dumps(result,indent=2)+'\n');print(result)
