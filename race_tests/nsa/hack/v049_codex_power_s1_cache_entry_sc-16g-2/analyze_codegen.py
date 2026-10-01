from pathlib import Path
import hashlib,json,re
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v049_codex_power_s1_cache_entry_sc-16g-2')
cpp=(r/'codegen/case6.device.cpp').read_text();host=(r/'codegen/case6.host.cpp').read_text();llvm=(r/'case6.ll').read_text();resource=(r/'case6.resource.log').read_text()
assert '[10].v_int64) = ((int64_t)8192);' in host
s={'candidate_sha256':hashlib.sha256(Path('/tmp/nsa_power_v049_cache_entry.py').read_bytes()).hexdigest(),'dynamic_shared_bytes':8192,'MT':int(re.search(r'Used\s+(\d+) MTregisters',resource)[1]),'ST':int(re.search(r'(\d+) STregisters',resource)[1]),'stack_bytes':int(re.search(r'(\d+) bytes stack frame',resource)[1]),'static_max_warps_peu':int(re.search(r'staticMaxWarps/PEU : (\d+)',resource)[1]),'private_allocas':[x.strip() for x in llvm.splitlines() if 'alloca ' in x and 'addrspace(5)' in x]}
for name in ['Q','K','V']:
 s[name+'_global_uint4_load_sites']=sum('*(uint4*)('+name+' +' in x for x in cpp.splitlines())
s['output_global_uint4_store_sites']=sum('*(uint4*)(Output +' in x for x in cpp.splitlines())
s['V_operand_uint1_load_sites']=sum('*(uint1*)(v_operand +' in x and '= *(uint1*)' in x for x in cpp.splitlines())
assert all(s[name+'_global_uint4_load_sites']>0 for name in ['Q','K','V']) and s['output_global_uint4_store_sites']>0
counts={}
for label,ident in [('parent_v048','v048_codex_power_s1_shared_arena_sc-16g-2'),('power_v049','v049_codex_power_s1_cache_entry_sc-16g-2')]:
 ir=(r.parent/ident/'case6.ll').read_text()
 counts[label]={key:len(re.findall(r'\bcall\b[^\n]*@'+re.escape(sym)+r'\b',ir)) for key,sym in [('bpermute','llvm.mxc.bsm.bpermute'),('warpbarrier','llvm.mxc.barrier.warp')]}
s['static_IR_calls']=counts;s['interpretation']='Compiler resource ceiling/static calls are not measured occupancy or latency attribution.'
(r/'codegen_analysis.json').write_text(json.dumps(s,indent=2)+'\n');print(s)
