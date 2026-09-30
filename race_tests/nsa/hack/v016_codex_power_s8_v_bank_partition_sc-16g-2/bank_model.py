import json
from collections import defaultdict
from pathlib import Path
rep=Path('/root/tilelang-metax/race_tests/nsa/rep/v016_codex_power_s8_v_bank_partition_sc-16g-2')
layout=lambda row,col:row*64+(col^(16*(row//4)))
assert set(layout(r,c) for r in range(16) for c in range(64))==set(range(1024))
for r in range(16):
 for c in range(0,64,8):
  assert [layout(r,c+e) for e in range(8)]==list(range(layout(r,c),layout(r,c)+8))
rows=[]
for tile in range(4):
 for element in range(4):
  row={'tile':tile,'element':element}
  for label,fn in [('default',lambda r,c:r*64+(c^((r%8)*8))),('partitioned',layout)]:
   words=defaultdict(set)
   for lane in range(64):
    r=(lane//16)*4+element;c=tile*16+lane%16
    word=fn(r,c)//2;words[word%32].add(word)
   row[label+'_banks']=len(words)
   row[label+'_max_distinct_words_per_bank']=max(map(len,words.values()))
  rows.append(row)
assert all(r['default_max_distinct_words_per_bank']==2 and r['partitioned_max_distinct_words_per_bank']==1 for r in rows)
(rep/'bank_model.json').write_text(json.dumps({'assumption':'framework 32 banks x4-byte word, adjacent half-word lanes may broadcast; not a platform guarantee','mapping':'(row,col)->(row,col XOR16*(row//4))','bijection':True,'8half_vectors_contiguous':True,'loads':rows},indent=2)+'\n')
print('bijection and vectors verified; modeled bank conflicts 2 words ->1')
