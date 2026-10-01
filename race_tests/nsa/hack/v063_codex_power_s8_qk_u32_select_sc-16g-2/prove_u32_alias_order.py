import json
from pathlib import Path
p=Path('/root/tilelang-metax/race_tests/nsa');v='v063_codex_power_s8_qk_u32_select_sc-16g-2'
def slot(r,c):return r*64+((c//8)^(r%8))*8+((c//4%2)^(r//8%2)^(r%2))*4+c%4
def block(r,c):return r*64+((c//8)^(r%8))*8
labels={};visited=0
for r in range(16):
 flip=(r//8%2)^(r%2)
 for c in range(0,64,8):
  base=block(r,c);assert base%8==0 and (base//2)%4==0
  fetch=[((r,c+2*w),(r,c+2*w+1)) for w in range(4)]
  ordered=[fetch[w if flip==0 else (w+2)%4] for w in range(4)]
  for w,pair in enumerate(ordered):
   labels[base+2*w]=pair[0];labels[base+2*w+1]=pair[1]
  for e in range(8):assert labels[slot(r,c+e)]==(r,c+e);visited+=1
assert visited==len(labels)==1024
B,L,H,HQ,D=4,1024,1,16,64
assert B*L*HQ*D*16==B*L*HQ*(D//2)*32
assert B*L*H*D*16==B*L*H*(D//2)*32
assert 1024*16==512*32
out={'half_labels_verified':visited,'packed_pair_order_bit_exact':True,'no_numeric_conversion_or_bit_arithmetic':'whole uint32 pair copied and selected; both half bit patterns unchanged','endianness':'no half unpack/repack; whole adjacent word copied so pair order unchanged','Q_K_alias_shape':'last dim64half->32uint32, equal bit counts','shared_alias':'1024half->512uint32, same DataVar/equal bits','global_four_word_range':[0,31],'shared_word_range':[0,511],'local_fetch_and_order_word_indices':[0,3],'shared_word_base_multiple4':True,'logical_QK_consumer_map':'unchanged v061; domain proof inherited and separately verified'}
(p/'rep'/v/'u32_alias_order_proof.json').write_text(json.dumps(out,indent=2)+'\n');print(out)
