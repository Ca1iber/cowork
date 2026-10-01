from pathlib import Path
import ast,csv,hashlib,json,re,statistics
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v051_codex_power_s8_four_warp_arena_sc-16g-2');root=r.parents[1]
raw=list(csv.DictReader((r/'paired_case12_sc-16g-2.csv').open()));assert len(raw)==12 and all(x['status']=='PASS' and x['case']=='12' for x in raw)
vals={k:[float(x['latency_ms'])*1000 for x in raw if x['variant']==k] for k in ['baseline_v28','parent_v050','power_v051']};assert all(len(v)==4 for v in vals.values())
s={k:{'us_values':v,'median_us':statistics.median(v),'min_us':min(v),'max_us':max(v)} for k,v in vals.items()};s['candidate_vs_v28_pct']=(s['power_v051']['median_us']/s['baseline_v28']['median_us']-1)*100;s['correctness']='12/12 PASS;full native naive_nsa,W10/R50';s['status']='rejected_target_performance'
(r/'paired_summary.json').write_text(json.dumps(s,indent=2)+'\n');print(s)
resource=(r/'case12.resource.log').read_text();llvm=(r/'case12.ll').read_text();host=(r/'codegen/case12.host.cpp').read_text();cpp=(r/'codegen/case12.device.cpp').read_text()
assert '[10].v_int64) = ((int64_t)16896);' in host
phi=[x.strip() for x in llvm.splitlines() if ' phi ' in x and any(n in x for n in ['numerator','maximum','denominator'])]
cg={'source_sha256':hashlib.sha256(Path('/tmp/nsa_power_v051_four_warp_arena.py').read_bytes()).hexdigest(),'shared_bytes':16896,'per_warp_shared_bytes':4224,'legacy_two_warp_per_warp_shared_bytes':6656,'MT':int(re.search(r'Used\s+(\d+) MTregisters',resource)[1]),'ST':int(re.search(r'(\d+) STregisters',resource)[1]),'stack_bytes':int(re.search(r'(\d+) bytes stack frame',resource)[1]),'static_max_warps_peu':int(re.search(r'staticMaxWarps/PEU : (\d+)',resource)[1]),'private_allocas':[x.strip() for x in llvm.splitlines() if 'alloca ' in x and 'addrspace(5)' in x],'state_phi_count':len(phi),'merge_phi_sample':phi[-5:],'interpretation':'Merge join retains old local numerator/den in SSA. This is a liveness hypothesis for high registers, not exclusive attribution of all90 registers or latency.'}
(r/'codegen_analysis.json').write_text(json.dumps(cg,indent=2)+'\n');print(cg)
(r/'state_phi_lines.txt').write_text('\n'.join(phi)+'\n')
