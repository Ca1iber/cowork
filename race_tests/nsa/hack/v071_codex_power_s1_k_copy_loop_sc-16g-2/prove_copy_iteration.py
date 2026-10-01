from pathlib import Path
import json
p=Path('/root/tilelang-metax/race_tests/nsa');v='v071_codex_power_s1_k_copy_loop_sc-16g-2'
def slot(row,col):return (col//64)*32*64+row*64+(((col%64)//8)^(row%8))*8+(((col//4)%2)^((row//8)%2)^(col//64))*4+col%4
seen=[];per_part=[]
for part in range(8):
 positions=[]
 for lane in range(64):
  for pack in range(2):
   base=part*512+lane*8+pack*4
   for e in range(4):
    pos=base+e;target=slot(base//128,base%128)+e
    assert target==slot(pos//128,pos%128);assert 0<=target<4096
    positions.append(target);seen.append((pos,target))
 assert len(positions)==512 and len(set(positions))==512;per_part.append(set(positions))
assert len(seen)==4096 and len({x[0] for x in seen})==4096 and len({x[1] for x in seen})==4096
assert all(not per_part[a]&per_part[b] for a in range(8) for b in range(a+1,8))
out={'full_K_elements':4096,'K_copy_runtime_parts':list(range(8)),'global_half_positions':[0,4095],'disjoint_destination_groups_each512half':True,'local_fetch_indices':[0,7],'global_bytes_per_thread_iteration':16,'shared_pack_bytes':8,'iteration_order':'same0..7 as unrolled parent','barrier':'same afterloop,no internal crosspart dependency','proof_scope':'coordinate and sourceAST only;LLVM packing/resource and unchanged fullnative ref required'}
(p/'rep'/v/'K_copy_iteration_proof.json').write_text(json.dumps(out,indent=2)+'\n');print(out)
