import json
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');v='v062_codex_power_s8_qk_vec16_store_sc-16g-2'
L=1024;BS=16;G=16;D=64;B=4;H=1;S=8
assert L%BS==0
starts=[]
for token in range(L):
 for block_index in range(L//BS):
  start=block_index*BS
  if 0<=start<=token:
   assert start+BS-1<L;starts.append(start)
def qk(r,c):return r*64+((c//8)^(r%8))*8+((c//4%2)^(r//8%2)^(r%2))*4+c%4
def vs(r,c):return (c//4+16*(c%4))*16+((r//4)^(c//16)^(c%4))*4+r%4
assert {qk(r,c) for r in range(16) for c in range(64)}==set(range(1024))
assert {vs(r,c) for r in range(16) for c in range(64)}==set(range(1024))
qk_producer=[];operand=[];v_producer=[];output=[]
for lane in range(64):
 for part in range(2):
  for e in range(8):
   pos=part*512+lane*8+e;qk_producer.append((pos//64,pos%64))
 for chunk in range(4):
  for e in range(4):operand.append((lane%16,chunk*16+lane//16*4+e));output.append((lane%16,chunk*16+lane//16*4+e))
 for row in range(4):
  for col in range(4):v_producer.append((lane//16*4+row,lane%16*4+col))
for a in [qk_producer,operand,v_producer,output]:assert len(a)==1024 and len(set(a))==1024 and set(a)=={(r,c) for r in range(16) for c in range(64)}
for bh in range(B*H):
 assert 0<=bh//H<B and 0<=bh%H<H and (bh%H)*G+15<16
assert max(starts)==1008
out={'domain':'exact official case12 only: B4,L1024,H1,HQ16,D64,S8,BS16,causalTrue','token_domain':[0,1023],'selected_domain':[0,7],'index_buffer_elements':32768,'valid_uniform_branch':'0<=16*index<=token','in_range_block_start_max':1008,'last_K_V_row_max':1023,'Q_K_V_output_columns':[0,63],'Q_output_head_range':[0,15],'shared_qk_and_V_layout_bijections':1024,'all_producer_operand_output_coordinate_sets':1024,'valid_token_block_pairs_checked':len(starts),'invalid_selected_blocks':'preserved explicit branch skips all K/V memory and attention work','local_index_domains':'q/numerator/v_operand/v_fetch0..15,qk_fetch/qk_ordered0..7; scores/P/k/v_column0..3; scalar locals0','safety':'all DSL pointer domains bounded; actual lowering and complete native correctness still required','scope':'factory exact cache shape only; other kernels keep their original settings'}
(root/'rep'/v/'bounded_access_proof.json').write_text(json.dumps(out,indent=2)+'\n');print(out)
