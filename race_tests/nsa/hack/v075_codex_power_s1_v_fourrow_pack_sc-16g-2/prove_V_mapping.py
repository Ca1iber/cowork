from pathlib import Path
import json,collections
p=Path('/root/tilelang-metax/race_tests/nsa');v='v075_codex_power_s1_v_fourrow_pack_sc-16g-2'
def oldslot(r,c):return ((c//64)*64+(c%64)//8+8*(c%8))*32+((r//2)^((c%64)//8)^(c%8))*2+r%2
def slot(r,c):return ((c//64)*64+(c%64)//8+8*(c%8))*32+((r//4)^(c%8)^((c%64)//16))*4+r%4
expected={(r,c) for r in range(32) for c in range(128)};assert {slot(r,c) for r,c in expected}==set(range(4096))
shared={};producer=[];consumer=[];oldcalls=[];newcalls=[]
for lane in range(64):
 oldseq=[];newseq=[]
 for kt in range(2):
  for plane in range(2):
   rb=kt*16+lane//16*4;cb=plane*64+lane%16*4
   for col in range(4):
    base=slot(rb,cb+col);assert base%4==0
    for row in range(4):
     coord=(rb+row,cb+col);assert slot(*coord)==base+row and base+row not in shared;shared[base+row]=coord;producer.append(coord)
   for ch in range(4):
    row=kt*16+lane//16*4;col=plane*64+ch*16+lane%16;base=slot(row,col);assert base%4==0
    coords=tuple((row+e,col) for e in range(4));consumer+=list(coords)
    oldseq.append((kt,plane*4+ch,coords));newseq.append((kt,plane*4+ch,coords))
 assert oldseq==newseq;oldcalls.append(oldseq);newcalls.append(newseq)
assert len(producer)==4096 and set(producer)==expected and len(consumer)==4096 and set(consumer)==expected
for r,c in consumer:assert shared[slot(r,c)]==(r,c)
models=[]
for kind in ['producer','consumer']:
 for kt in range(2):
  for plane in range(2):
   for item in range(4):
    for group in range(4):
     newbanks=[]
     for lane in range(group*16,(group+1)*16):
      if kind=='producer':r=kt*16+lane//16*4;c=plane*64+lane%16*4+item
      else:r=kt*16+lane//16*4;c=plane*64+item*16+lane%16
      address=slot(r,c)*2;newbanks += [((address+x)//4)%32 for x in [0,4]]
     models.append(max(collections.Counter(newbanks).values()))
result={'V_slot_bijection':4096,'producer_coordinates_unique_complete':4096,'consumer_coordinates_unique_complete':4096,'4half_contiguous_and_8B_aligned':True,'logical_operand_sequence_and_MMAaccumulator_order':'exact parent','global_reads_perthread':'16x8B versus8x16B,bytes128 unchanged','Vshared_stores_perthread':'16x8B versus32x4B,bytes128 unchanged','Vshared_operandloads_perthread':'16x8B versus32x4B,bytes128 unchanged','bounds':'same global rows0..31,col0..127,shared0..4095,vfetch0..15,vcolumn0..3,voperand0..15','bank_assumption':'32banks,4B,16lane phase,8B as2bank words;not verified hardware','predicted_new_max_requests_perbank_in_phase':max(models),'model_scope':'diagnostic only;actualmcProfiler/native decides'}
(p/'rep'/v/'V_coordinate_and_bank_model.json').write_text(json.dumps(result,indent=2)+'\n');print(result)
