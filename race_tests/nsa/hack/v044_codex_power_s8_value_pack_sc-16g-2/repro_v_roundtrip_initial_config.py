import torch
import tilelang
import tilelang.language as T
from pathlib import Path
import json

@tilelang.jit(out_idx=[])
def build():
 dtype=T.float16
 @T.prim_func
 def roundtrip(V:T.Tensor([1,1024,1,64],dtype),O:T.Tensor([16,64],dtype)):
  with T.Kernel(1,threads=64) as block:
   lane_id=T.KernelLaunchFrame.Current().get_thread_binding()%64
   batch_id=0
   kv_head=0
   block_start=0
   v_shared=T.alloc_shared([16,64],dtype)
   v_fetch_local=T.alloc_local(16,dtype)
   v_exchange_words=T.alloc_local(4,T.uint32)
   v_column_local=T.alloc_local(4,dtype)
   T.annotate_layout({v_shared:T.Layout([16,64],lambda row,col:(col//4+16*(col%4),((row//4)^(col//16)^(col%4))*4+row%4))})
   feature_half = (lane_id // 8) % 2
   fetch_row_base = (lane_id // 8) * 2
   fetch_feature_base = (lane_id % 8) * 8
   for tile_row in T.unroll(2):
       for tile_col in T.vectorized(8):
           v_fetch_local[tile_row * 8 + tile_col] = V[batch_id, block_start + fetch_row_base + tile_row, kv_head, fetch_feature_base + tile_col]
   for tile_row in T.unroll(2):
       for pair in T.unroll(2):
           lower_word = T.reinterpret(v_fetch_local[tile_row * 8 + pair * 2], T.uint16).astype(T.uint32) | (T.reinterpret(v_fetch_local[tile_row * 8 + pair * 2 + 1], T.uint16).astype(T.uint32) << 16)
           upper_word = T.reinterpret(v_fetch_local[tile_row * 8 + pair * 2 + 4], T.uint16).astype(T.uint32) | (T.reinterpret(v_fetch_local[tile_row * 8 + pair * 2 + 5], T.uint16).astype(T.uint32) << 16)
           send_word = T.if_then_else(feature_half == 0, upper_word, lower_word)
           v_exchange_words[tile_row * 2 + pair] = T.shfl_xor(send_word, 8, width=64, mask=0xFFFFFFFFFFFFFFFF)
   row_base = (lane_id // 16) * 4
   feature_base = (lane_id % 8) * 8 + feature_half * 4
   for tile_col in T.unroll(4):
       own0 = T.if_then_else(feature_half == 0, v_fetch_local[tile_col], v_fetch_local[4 + tile_col])
       own1 = T.if_then_else(feature_half == 0, v_fetch_local[8 + tile_col], v_fetch_local[12 + tile_col])
       other0 = T.reinterpret((v_exchange_words[tile_col // 2] >> ((tile_col % 2) * 16)).astype(T.uint16), dtype)
       other1 = T.reinterpret((v_exchange_words[2 + tile_col // 2] >> ((tile_col % 2) * 16)).astype(T.uint16), dtype)
       v_column_local[0] = T.if_then_else(feature_half == 0, own0, other0)
       v_column_local[1] = T.if_then_else(feature_half == 0, own1, other1)
       v_column_local[2] = T.if_then_else(feature_half == 0, other0, own0)
       v_column_local[3] = T.if_then_else(feature_half == 0, other1, own1)
       for tile_row in T.vectorized(4):
           v_shared[row_base + tile_row, feature_base + tile_col] = v_column_local[tile_row]
   T.sync_warp()
   T.copy(v_shared,O)
 return roundtrip

kernel=build()
x=torch.arange(65536,dtype=torch.float32,device='cuda').reshape(1,1024,1,64).to(torch.float16)
y=torch.empty((16,64),device='cuda',dtype=torch.float16)
kernel(x,y)
torch.cuda.synchronize()
expected=x[0,:16,0,:]
mask=y!=expected
result={'mismatched':int(mask.sum().item()),'first':None}
if bool(mask.any()):
 idx=mask.nonzero()[0].tolist();result['first']={'index':idx,'actual':float(y[idx[0],idx[1]]),'expected':float(expected[idx[0],idx[1]])}
print(result)
Path('race_tests/nsa/rep/v044_codex_power_s8_value_pack_sc-16g-2/v_roundtrip_result.json').write_text(json.dumps(result,indent=2)+'\n')
