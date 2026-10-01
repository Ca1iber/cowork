from pathlib import Path
import hashlib,json
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v048_codex_power_s1_shared_arena_sc-16g-2')
p=r/'codegen/case6.device.cpp';cpp=p.read_text()
store=next(x.strip() for x in cpp.splitlines() if '= *(uint2*)(shared_local_cast +' in x)
assert 'i_4 * 2' in store and 'threadIdx.x) >> 5' in store and 'threadIdx.x) & 15' in store
owners={}
for lane in range(64):
 for i in range(8):
  base=(lane&15)*128+((i*2+(lane>>5))^(lane&7))*8+((lane&31)>>4)*4
  for e in range(4):
   addr=base+e;assert addr not in owners
   logical_col=i*16+(lane//16)*4+e
   owners[addr]=(lane%16,logical_col)
assert set(owners)==set(range(2048))
for lane in range(64):
 for part in range(4):
  base=part*512+(lane>>4)*128+((lane&15)^((part&1)*4+(lane>>4)))*8
  for e in range(8):
   logical=part*512+lane*8+e;assert owners[base+e]==divmod(logical,128)
s={'device_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'generated_store_expression':store,'all2048_halfword_writers_unique':'PASS','all2048_coalesced_output_reads':'PASS','checker_warning':'Preserved. Actual lowered output addressing proves no duplicate writers for64threads; no race-check disabling flag added. Other reuse hazards still require full native reference.'}
(r/'generated_output_ownership.json').write_text(json.dumps(s,indent=2)+'\n');print(s)
