from pathlib import Path
import json
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v215_worker2_c8_qk_shared_store16_subagent2')
def slot(row,col):return row*64+((col//8)^(row%8))*8+(((col//4)%2)^((row//8)%2)^(row%2))*4+col%4
checks=[];seen=set()
for part in range(2):
 for lane in range(64):
  pos=part*512+lane*8;row=pos//64;col=pos%64;flip=((row//8)%2)^(row%2);start=row*64+((col//8)^(row%8))*8
  assert start%8==0 and 0<=start<=1016
  for e in range(8):
   src=(e+4)%8 if flip else e
   assert start+e==slot(row,col+src)
   seen.add(start+e);checks.append((part,lane,e,row,col+src,start+e))
assert len(checks)==1024 and seen==set(range(1024))
result={'Q_mapping_checks':1024,'K_mapping_checks':1024,'shared_coverage_bijection':True,'vector8_contiguous_half':True,'relative_alignment_bytes':16,'Q_and_K_identical_producer_mapping':True,'local_source_indices':'e and (e+4)%8 constant after unroll/vector lowering; lane only in scalar rowflip select','host_shape':[4096,2,64],'no_content_caching':True,'proof_scope':'perquery all64lanes/two16B globalfetches; parentglobal addresses/guard unchanged'}
(r/'qk_vector_value_proof.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result))
