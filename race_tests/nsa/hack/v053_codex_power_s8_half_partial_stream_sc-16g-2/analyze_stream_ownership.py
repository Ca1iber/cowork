from pathlib import Path
import ast,json
root=Path('/root/tilelang-metax/race_tests/nsa');ident='v053_codex_power_s8_half_partial_stream_sc-16g-2'
def qk_slot(r,c):return r*64+((c//8)^(r%8))*8+c%8
def p_slot(w,r,c):return w*1024+qk_slot(r,c)
partial={p_slot(w,r,c):('P',w,r,c) for w in range(4) for r in range(16) for c in range(64)};assert set(partial)==set(range(4096))
read=set();written=set()
for chunk in range(4):
 for lane in range(64):
  row=lane%16
  for part in range(4):
   for e in range(4):
    col=chunk*16+lane//16*4+e;idx=p_slot(part,row,col)
    assert partial[idx]==('P',part,row,col);read.add(idx)
  for e in range(4):
   col=chunk*16+lane//16*4+e;idx=qk_slot(row,col)
   assert idx==p_slot(0,row,col) and idx not in written;written.add(idx);partial[idx]=('O',row,col)
assert read==set(range(4096)) and written==set(range(1024))
for pos in range(1024):
 row,col=divmod(pos,64);assert partial[qk_slot(row,col)]==('O',row,col)
stats=[w*16+lane for w in range(4) for lane in range(16)]+[64+w*16+lane for w in range(4) for lane in range(16)];assert sorted(stats)==list(range(128))
tree=ast.parse((root/'experiments'/ident/'s8_kernel.py').read_text());parents={c:p for p in ast.walk(tree) for c in ast.iter_child_nodes(p)};barriers=[]
for node in ast.walk(tree):
 if isinstance(node,ast.Call) and isinstance(node.func,ast.Attribute) and node.func.attr=='sync_threads':
  p=node;chain=[]
  while p in parents:p=parents[p];chain.append(type(p).__name__)
  assert 'If' not in chain and 'For' not in chain;barriers.append(node.lineno)
assert len(barriers)==4
s={'partial4096_unique_slots':'PASS','all4096_reads_before_inplace_overwrite':'PASS','output1024_unique_writers_and_reads':'PASS','stats128_unique_writers':'PASS','all4CTA_barriers_outside_if_for':'PASS','CTA_barrier_lines':sorted(barriers),'expected_shared_bytes':4096*2+128*4,'zero_partial_guard':'N=0,Z=0 -> O=0/1=0,stats retains Z0,m-inf;global alpha0 for invalidpartial when anyvalid exists','merge_formula':'weights=alpha_w*Z_w/sum(alpha*Z),O=sum(weights*FP16(N_w/Z_w))','numerical_risk':'extra FP16 rounding;full naive_nsa required;not an exact algebra identity afterquantization','performance_claim':'NONE;CPU ownership/protocol proof only'}
(root/'rep'/ident/'stream_ownership_proof.json').write_text(json.dumps(s,indent=2)+'\n');print(s)
