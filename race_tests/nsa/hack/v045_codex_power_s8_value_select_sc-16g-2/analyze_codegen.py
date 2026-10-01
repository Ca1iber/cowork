from pathlib import Path
import hashlib,json,re
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v045_codex_power_s8_value_select_sc-16g-2')
code=(r/'codegen/case12.device.cpp').read_text();llvm=(r/'case12.ll').read_text();resource=(r/'case12.resource.log').read_text()
result={'candidate_sha256':hashlib.sha256(Path('/tmp/nsa_power_v045_value_select.py').read_bytes()).hexdigest(),'private_allocas':[x.strip() for x in llvm.splitlines() if 'alloca ' in x and 'addrspace(5)' in x],'global_v_uint4_load_sites':sum('*(uint4*)(V +' in x for x in code.splitlines()),'V_fetch_loop_extent':2,'shared_uint2_store_sites':sum('= *(uint2*)(v_column_local +' in x for x in code.splitlines()),'MT':int(re.search(r'Used\s+(\d+) MTregisters',resource)[1]),'ST':int(re.search(r'(\d+) STregisters',resource)[1]),'stack_bytes':int(re.search(r'(\d+) bytes stack frame',resource)[1]),'static_max_warps_peu':int(re.search(r'staticMaxWarps/PEU : (\d+)',resource)[1])}
assert result['stack_bytes']==0 and result['private_allocas']==[]
(r/'codegen_analysis.json').write_text(json.dumps(result,indent=2)+'\n');print(result)

rows={}
for label,ident in [('parent_v042','v042_codex_power_s8_lane_normalizer_sc-16g-2'),('power_v045','v045_codex_power_s8_value_select_sc-16g-2')]:
 ir=(r.parent/ident/'case12.ll').read_text()
 rows[label]={key:len(re.findall(r'\bcall\b[^\n]*@'+re.escape(sym)+r'\b',ir)) for key,sym in [('bpermute','llvm.mxc.bsm.bpermute'),('gethwreg','llvm.mxc.gethwreg'),('sethwreg','llvm.mxc.sethwreg'),('warpbarrier','llvm.mxc.barrier.warp')]}
rows['interpretation']='Static optimized IR call sites only; not latency, dynamic issue count or measured occupancy.'
(r/'llvm_comparison.json').write_text(json.dumps(rows,indent=2)+'\n');print(rows)
