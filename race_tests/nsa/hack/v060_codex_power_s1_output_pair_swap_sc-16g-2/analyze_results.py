from pathlib import Path
import csv,hashlib,json,re,statistics
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v060_codex_power_s1_output_pair_swap_sc-16g-2')
raw=list(csv.DictReader((r/'paired_case6_sc-16g-2.csv').open()));assert len(raw)==12 and all(x['status']=='PASS' and x['case']=='6' for x in raw)
vals={k:[float(x['latency_ms'])*1000 for x in raw if x['variant']==k] for k in ['baseline_v28','parent_v059','power_v060']};assert all(len(v)==4 for v in vals.values())
s={k:{'us_values':v,'median_us':statistics.median(v),'min_us':min(v),'max_us':max(v)} for k,v in vals.items()};s['candidate_vs_v28_pct']=(s['power_v060']['median_us']/s['baseline_v28']['median_us']-1)*100;s['candidate_vs_parent_pct']=(s['power_v060']['median_us']/s['parent_v059']['median_us']-1)*100;s['correctness']='12/12 PASS;full native naive_nsa,W10/R50';s['status']='target_candidate_requires_full14_oj' if s['candidate_vs_v28_pct']<0 and s['candidate_vs_parent_pct']<0 else 'rejected_target_performance'
(r/'paired_summary.json').write_text(json.dumps(s,indent=2)+'\n');print(s)
resource=(r/'case6.resource.log').read_text();llvm=(r/'case6.ll').read_text();host=(r/'codegen/case6.host.cpp').read_text();assert '[10].v_int64) = ((int64_t)8192);' in host
cg={'source_sha256':hashlib.sha256(Path('/tmp/nsa_power_v060_proven_bounds.py').read_bytes()).hexdigest(),'shared_bytes':8192,'MT':int(re.search(r'Used\s+(\d+) MTregisters',resource)[1]),'ST':int(re.search(r'(\d+) STregisters',resource)[1]),'stack_bytes':int(re.search(r'(\d+) bytes stack frame',resource)[1]),'static_max_warps_peu':int(re.search(r'staticMaxWarps/PEU : (\d+)',resource)[1]),'private_allocas':[x.strip() for x in llvm.splitlines() if 'alloca ' in x and 'addrspace(5)' in x],'interpretation':'output low-column pair swap with local8-half gather; compiler ceiling is not occupancy; bank model requires actual evidence'}
(r/'codegen_analysis.json').write_text(json.dumps(cg,indent=2)+'\n');print(cg)

cpp=(r/'codegen/case6.device.cpp').read_text()
cg.update({'output_layout':'qk_slot(head,col,16) pair swap','explicit_fragment_owner_checked':True,'output_width':'global uint4, shared uint2 expected; inspect actual CPP separately','bank_model':'32bank/4B/16lane assumption only'})
(r/'codegen_analysis.json').write_text(json.dumps(cg,indent=2)+'\n');print(cg)
