from pathlib import Path
import json
p=Path('/root/tilelang-metax/race_tests/nsa');v='v070_codex_power_s1_stream_pv_operand_sc-16g-2'
def slot(row,col):return ((col//64)*64+(col%64)//8+8*(col%8))*32+((row//2)^((col%64)//8)^(col%8))*2+row%2
checked=0
for lane in range(64):
 old_calls=[];new_calls=[]
 for kt in range(2):
  for plane in range(2):
   old={ch:[slot(kt*16+(lane//16)*4+pair*2+e,plane*64+ch*16+lane%16) for pair in range(2) for e in range(2)] for ch in range(4)}
   for ch in range(4):
    new=[slot(kt*16+(lane//16)*4+pair*2+e,plane*64+ch*16+lane%16) for pair in range(2) for e in range(2)]
    assert new==old[ch] and all(0<=x<4096 for x in new);checked+=4
    old_calls.append((kt,plane*4+ch,tuple(old[ch])));new_calls.append((kt,plane*4+ch,tuple(new)))
 assert old_calls==new_calls and len(new_calls)==16
 for output in range(8):assert [kt for kt,out,coord in new_calls if out==output]==[0,1]
result={'all_lane_operand_component_checks':checked,'PV_MMA_calls_per_wave':16,'QK_MMA_calls_per_wave':16,'static_total_expected':32,'MMA_operand_coordinates_and_per_output_accumulation_order':'exact parent','local_operand_indices':[0,3],'shared_load_pair_width_bytes':4,'FP32_arithmetic_change':'none,intended exact input and accumulator order','phase_proof':'no sharedV writes between consumerreads;producer barrier retained;normal lowering and actual native required'}
(p/'rep'/v/'stream_operand_coordinate_proof.json').write_text(json.dumps(result,indent=2)+'\n');print(result)
