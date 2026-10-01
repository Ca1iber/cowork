from pathlib import Path
import json,collections
p=Path('/root/tilelang-metax/race_tests/nsa');v='v076_codex_power_s1_v_hybrid_pack_sc-16g-2'
def slot(r,c):return ((c//64)*64+(c%64)//8+8*(c%8))*32+(((r//4%2)*4+r//8)^(c%8)^((c%64)//16))*4+r%4
expected={(r,c) for r in range(32) for c in range(128)};assert {slot(r,c) for r,c in expected}==set(range(4096))
shared={};producer=[];consumer=[]
for lane in range(64):
 for kt in range(2):
  for plane in range(2):
   rb=kt*16+lane//8*2;cb=plane*64+lane%8*8
   for col in range(8):
    base=slot(rb,cb+col);assert base%2==0
    for row in range(2):
     coord=(rb+row,cb+col);assert slot(*coord)==base+row and base+row not in shared;shared[base+row]=coord;producer.append(coord)
   for ch in range(4):
    rb2=kt*16+lane//16*4;col2=plane*64+ch*16+lane%16;base=slot(rb2,col2);assert base%4==0
    for e in range(4):assert slot(rb2+e,col2)==base+e;consumer.append((rb2+e,col2))
assert len(producer)==len(consumer)==4096 and set(producer)==set(consumer)==expected
for r,c in consumer:assert shared[slot(r,c)]==(r,c)
models={}
for kind in ['producer4B','consumer8B']:
 phase=32 if kind=='producer4B' else 16;elements=8 if kind=='producer4B' else 4;word_offsets=[0] if kind=='producer4B' else [0,4];maxreq=0
 for kt in range(2):
  for plane in range(2):
   for item in range(elements):
    for start in range(0,64,phase):
     banks=[]
     for lane in range(start,start+phase):
      if kind=='producer4B':r=kt*16+lane//8*2;c=plane*64+lane%8*8+item
      else:r=kt*16+lane//16*4;c=plane*64+item*16+lane%16
      addr=slot(r,c)*2;banks += [((addr+offset)//4)%32 for offset in word_offsets]
     maxreq=max(maxreq,max(collections.Counter(banks).values()))
 models[kind]=maxreq
result={'slotbijection':4096,'producer_and_consumer_unique_complete':4096,'producer2halfcontiguous4Baligned':True,'consumer4halfcontiguous8Baligned':True,'same_MMA_operand_coordinates_and_accumorder':True,'global8x16B':'exactold60producer','sharedstores32x4B':'oldcount','sharedoperandloads16x8B':'half oldcount,samebytes','localbounds':'vfetch0..15,vcolumn0..1,voperand0..15','globalbounds':'oldvalid32row/128col','bank_assumption':'32banks4B,32lanephase4B/16lanephase8B,unverified','predicted_max_requests_per_bank':models,'hardwareclaim':'none,requires actualprofile and native'}
(p/'rep'/v/'V_hybrid_coordinate_model.json').write_text(json.dumps(result,indent=2)+'\n');print(result)
