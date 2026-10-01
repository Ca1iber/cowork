from pathlib import Path
import csv,hashlib,json,re,statistics
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v057_codex_power_s1_proven_bounds_sc-16g-2')
raw=list(csv.DictReader((r/'paired_case6_sc-16g-2.csv').open()));assert len(raw)==12 and all(x['status']=='PASS' and x['case']=='6' for x in raw)
vals={k:[float(x['latency_ms'])*1000 for x in raw if x['variant']==k] for k in ['baseline_v28','parent_v056','power_v057']};assert all(len(v)==4 for v in vals.values())
s={k:{'us_values':v,'median_us':statistics.median(v),'min_us':min(v),'max_us':max(v)} for k,v in vals.items()};s['candidate_vs_v28_pct']=(s['power_v057']['median_us']/s['baseline_v28']['median_us']-1)*100;s['candidate_vs_parent_pct']=(s['power_v057']['median_us']/s['parent_v056']['median_us']-1)*100;s['correctness']='12/12 PASS;full native naive_nsa,W10/R50';s['status']='target_candidate_requires_full14_oj' if s['candidate_vs_v28_pct']<0 and s['candidate_vs_parent_pct']<0 else 'rejected_target_performance'
(r/'paired_summary.json').write_text(json.dumps(s,indent=2)+'\n');print(s)
resource=(r/'case6.resource.log').read_text();llvm=(r/'case6.ll').read_text();host=(r/'codegen/case6.host.cpp').read_text();assert '[10].v_int64) = ((int64_t)8192);' in host
cg={'source_sha256':hashlib.sha256(Path('/tmp/nsa_power_v057_proven_bounds.py').read_bytes()).hexdigest(),'shared_bytes':8192,'MT':int(re.search(r'Used\s+(\d+) MTregisters',resource)[1]),'ST':int(re.search(r'(\d+) STregisters',resource)[1]),'stack_bytes':int(re.search(r'(\d+) bytes stack frame',resource)[1]),'static_max_warps_peu':int(re.search(r'staticMaxWarps/PEU : (\d+)',resource)[1]),'private_allocas':[x.strip() for x in llvm.splitlines() if 'alloca ' in x and 'addrspace(5)' in x],'interpretation':'K/V padding guards removed in generated code after complete pointer-domain proof; resource ceiling is not measured occupancy; latency remains empirical'}
(r/'codegen_analysis.json').write_text(json.dumps(cg,indent=2)+'\n');print(cg)

parent=(r.parent/'v049_codex_power_s1_cache_entry_sc-16g-2/codegen/case6.device.cpp').read_text().splitlines()
new=(r/'codegen/case6.device.cpp').read_text().splitlines()
c={'parent_cpp_conditions':[x.strip() for x in parent if 'if (' in x],'candidate_cpp_conditions':[x.strip() for x in new if 'if (' in x],'removed':'per-K/V padding guards','preserved':'uniform valid-block branch and per-key causal mask','counts':{'parent':sum('if (' in x for x in parent),'candidate':sum('if (' in x for x in new)}}
assert c['counts']=={'parent':4,'candidate':2}
(r/'codegen_guard_comparison.json').write_text(json.dumps(c,indent=2)+'\n')
cpp='\n'.join(new);assert 'shared + ((((((int)threadIdx.x) & 15) * 128)' in cpp
positions=[]
for lane in range(64):
 for chunk in range(8):
  for e in range(4):
   h=lane%16;col=chunk*16+lane//16*4+e;positions.append(h*128+((col//8)^(h%8))*8+col%8)
assert len(set(positions))==2048
cg.update({'lowered_output_unique_writes':2048,'race_warning':'same Fragment annotation warning as v049; lowered output unique, checker remains enabled'})
(r/'codegen_analysis.json').write_text(json.dumps(cg,indent=2)+'\n')
