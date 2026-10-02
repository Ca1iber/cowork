from pathlib import Path
import json,hashlib
p=Path('/root/tilelang-metax/race_tests/nsa');v='v082_codex_power_s1_d128_dense_sc-16g-2';r=p/'rep'/v
q=lambda row,c:row*128+(c//64)*64+((c%64//8)^(row%8))*8+((c%64//4%2)^(row//8%2)^(row%2))*4+c%4
o=lambda row,c:row*128+(c//64)*64+((c%64//8)^(row%8))*8+((c%64//4%2)^(row//8%2))*4+c%4
vslot=lambda row,c:(c//64)*1024+((c%64//4+16*(c%4))^(row//4%2))*16+((row//4)^(c%64//16)^(c%4))*4+row%4
full={(row,col) for row in range(16) for col in range(128)}
for fn in [q,o,vslot]:assert sorted(fn(*x) for x in full)==list(range(2048))
producer=[((part*512+lane*8+e)//128,(part*512+lane*8+e)%128) for part in range(4) for lane in range(64) for e in range(8)];assert set(producer)==full and len(producer)==len(full)
for part in range(4):
 for lane in range(64):
  for pack in range(2):
   pos=part*512+lane*8+pack*4;row,col=pos//128,pos%128
   for e in range(4):assert q(row,col)+e==q(row,col+e) and o(row,col)+e==o(row,col+e)
qkread=[(lane%16,chunk*16+(lane//16)*4+e) for lane in range(64) for chunk in range(8) for e in range(4)];assert set(qkread)==full and len(qkread)==2048
vprod=[((lane//8)*2+rr,panel*64+(lane%8)*8+cc) for panel in range(2) for lane in range(64) for rr in range(2) for cc in range(8)];assert set(vprod)==full and len(vprod)==2048
vread=[((lane//16)*4+e,chunk*16+lane%16) for lane in range(64) for chunk in range(8) for e in range(4)];assert set(vread)==full and len(vread)==2048
for token in range(256):
 for index in range(16):
  if index*16<=token:assert index*16+15<256
info={'three_shared_bijections':2048,'Q_K_Global_copy_full_unique':len(producer),'QK_operand_coords_full_unique':len(qkread),'V_producer_full_unique':len(vprod),'PV_operand_coords_full_unique':len(vread),'output_scatter_gather':'same proven2048 QKread/prodcounter coordinates,contiguous4store/gather packs','MMA_vector_chunk_offsets':'0..7,4 elements/vec;local q/num/Vop extent32','global_queryheads':'16 rows only,exactC3 H1/HQ16','valid_block_rows_16_inbounds':True,'shared_half_capacity':2048,'expected_QK_MFMA':8,'expected_PV_MFMA':8,'math':'single selected block,global max perhead,FP16Pscale256,FP32den sum of consumed P,FP32PV','not_native_correctness_proof':True};(r/'D128_coordinate_proof.json').write_text(json.dumps(info,indent=2)+'\n');print(info)
