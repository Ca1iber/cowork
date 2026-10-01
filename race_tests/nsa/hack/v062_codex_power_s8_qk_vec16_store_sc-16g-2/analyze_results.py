from pathlib import Path
import csv,hashlib,json,re,statistics
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v062_codex_power_s8_qk_vec16_store_sc-16g-2')
raw=list(csv.DictReader((r/'paired_case12_sc-16g-2.csv').open()));assert len(raw)==16 and all(x['status']=='PASS' and x['case']=='12' for x in raw)
vals={k:[float(x['latency_ms'])*1000 for x in raw if x['variant']==k] for k in ['baseline_v28','parent_v060','trial_v061','power_v062']};assert all(len(v)==4 for v in vals.values())
s={k:{'us_values':v,'median_us':statistics.median(v),'min_us':min(v),'max_us':max(v)} for k,v in vals.items()};s['candidate_vs_v28_pct']=(s['power_v062']['median_us']/s['baseline_v28']['median_us']-1)*100;s['candidate_vs_parent_pct']=(s['power_v062']['median_us']/s['parent_v060']['median_us']-1)*100;s['correctness']='16/16 PASS;full native naive_nsa,W10/R50';s['status']='target_candidate_requires_full14_oj' if s['candidate_vs_v28_pct']<0 and s['candidate_vs_parent_pct']<0 else 'rejected_target_performance'
s['candidate_vs_v061_pct']=(s['power_v062']['median_us']/s['trial_v061']['median_us']-1)*100
(r/'paired_summary.json').write_text(json.dumps(s,indent=2)+'\n');print(s)
resource=(r/'case12.resource.log').read_text();llvm=(r/'case12.ll').read_text();host=(r/'codegen/case12.host.cpp').read_text();assert '[10].v_int64) = ((int64_t)2048);' in host
cg={'source_sha256':hashlib.sha256(Path('/tmp/nsa_power_v062_proven_bounds.py').read_bytes()).hexdigest(),'shared_bytes':2048,'MT':int(re.search(r'Used\s+(\d+) MTregisters',resource)[1]),'ST':int(re.search(r'(\d+) STregisters',resource)[1]),'stack_bytes':int(re.search(r'(\d+) bytes stack frame',resource)[1]),'static_max_warps_peu':int(re.search(r'staticMaxWarps/PEU : (\d+)',resource)[1]),'private_allocas':[x.strip() for x in llvm.splitlines() if 'alloca ' in x and 'addrspace(5)' in x],'interpretation':'same v061 consumer map with fixed-index quad-select and ordered16B shared store; actual lowering/resources/native decide'}
(r/'codegen_analysis.json').write_text(json.dumps(cg,indent=2)+'\n');print(cg)
