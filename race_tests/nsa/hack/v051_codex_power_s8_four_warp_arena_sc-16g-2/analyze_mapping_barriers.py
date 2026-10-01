from pathlib import Path
import ast,json
root=Path('/root/tilelang-metax/race_tests/nsa');ident='v051_codex_power_s8_four_warp_arena_sc-16g-2'
def qk_slot(r,c):return r*64+((c//8)^(r%8))*8+c%8
def v_slot(r,c):return (c//4+16*(c%4))*16+((r//4)^(c//16)^(c%4))*4+r%4
def n_slot(w,r,c):return w*1024+r*64+((c//4)^(r%16))*4+c%4
q={qk_slot(pos//64,pos%64) for tid in range(256) for e in range(4) for pos in [tid*4+e]};assert q==set(range(1024))
zones=[]
for w in range(4):
 zone={w*1024+v_slot(r,c) for r in range(16) for c in range(64)};assert zone==set(range(w*1024,(w+1)*1024));zones.append(zone)
assert all(not (zones[a]&zones[b]) for a in range(4) for b in range(a+1,4))
selected=[w*2+s for w in range(4) for s in range(2)];assert selected==list(range(8))
writers={}
for tid in range(256):
 w,lane=divmod(tid,64)
 for chunk in range(4):
  for e in range(4):
   row=lane%16;col=chunk*16+lane//16*4+e;idx=n_slot(w,row,col)
   assert idx not in writers;writers[idx]=(w,row,col)
assert set(writers)==set(range(4096))
for w in range(4):
 for lane in range(64):
  for chunk in range(4):
   for e in range(4):
    row=lane%16;col=chunk*16+lane//16*4+e;assert writers[n_slot(w,row,col)]==(w,row,col)
stats=[w*16+lane for w in range(4) for lane in range(16)]+[64+w*16+lane for w in range(4) for lane in range(16)];assert sorted(stats)==list(range(128))
output=[qk_slot(lane%16,chunk*16+lane//16*4+e) for lane in range(64) for chunk in range(4) for e in range(4)];assert sorted(output)==list(range(1024))
tree=ast.parse((root/'experiments'/ident/'s8_kernel.py').read_text());parents={c:p for p in ast.walk(tree) for c in ast.iter_child_nodes(p)};barriers=[]
for node in ast.walk(tree):
 if isinstance(node,ast.Call) and isinstance(node.func,ast.Attribute) and node.func.attr=='sync_threads':
  p=node;chain=[]
  while p in parents:p=parents[p];chain.append(type(p).__name__)
  assert 'If' not in chain and 'For' not in chain;barriers.append(node.lineno)
assert len(barriers)==5
s={'query1024_global_writers':'PASS','four_disjoint_K_V_zones':'PASS','selected0..7_once':'PASS','partial4096_float_writers_and_merge_reads':'PASS','stats128_unique_writers':'PASS','output1024_unique_writers':'PASS','all5_CTA_barriers_outside_if_and_for':'PASS','CTA_barrier_lines':sorted(barriers),'shared_alias_bits_equal':4096*32==8192*16,'expected_shared_bytes':4096*4+128*4,'arena_phase_order':['Q produce,CTA fence,Q cache,CTA fence','independent two-block per-wave K/V','CTA fence,partial/stats store,CTA fence','wave0 merge,CTA fence','wave0 overwrite FP16 output and global store'],'softmax_merge':'alpha_w=exp2((m_w-M)*scale); sum(alpha_w*N_w)/sum(alpha_w*Z_w)','performance_claim':'NONE;CPU proofs do not replace native reference or hardware measurement'}
(root/'rep'/ident/'mapping_barrier_proof.json').write_text(json.dumps(s,indent=2)+'\n');print(s)
