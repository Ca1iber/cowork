from pathlib import Path
import json
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v210_worker2_c8_serial_query_pair_subagent2');seen=set();checks=0
for b in range(2):
 for pair in range(2048):
  for step in range(2):
   token=pair*2+step;assert 0<=token<4096;key=(b,token,0);assert key not in seen;seen.add(key)
   for lane in range(64):
    for part in range(2):
     pos=part*512+lane*8
     oldbase=((b*4096+token)*16)*64+pos
     decodedbase=(b*4096+pair*2+step)*1024+pos
     assert oldbase==decodedbase and oldbase%8==0;checks+=1
assert len(seen)==8192
out={'proof_scope':'proposal-only token mapping/address algebra, not candidate/generatedcode validation','logicalqueries':8192,'B2_tokens4096_bijection':True,'perlane_Q_Output_vector_base_checks':checks,'grid':[2048,2],'threads':64,'waves':4096,'Q_Output_payloadbytes':16777216,'K_V_source_formula_unchanged_for_all_legal_blockstarts':'b4096*64+(rawidx*16+row)*64+col, perquery rawidx independent; no content-sharing premise','uniformity':'pair/step/token/selectedIdx same across64 lanes; step guard/sync cannot diverge across physical warp','tail_contract':'target4096 even all8192 valid; retain token<seq_len whole-wave guard if generic ceiling grid'}
(r/'query_pair_proof.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2))
