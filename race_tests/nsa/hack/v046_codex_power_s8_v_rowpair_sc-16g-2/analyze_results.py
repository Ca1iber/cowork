from pathlib import Path
import csv,hashlib,json,re,statistics
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v046_codex_power_s8_v_rowpair_sc-16g-2')
rows=list(csv.DictReader((r/'paired_case12_sc-16g-2.csv').open()))
assert len(rows)==12 and all(x['status']=='PASS' for x in rows)
values={k:[float(x['latency_ms'])*1000 for x in rows if x['variant']==k] for k in ['baseline_v28','parent_v045','power_v046']}
assert all(len(v)==4 for v in values.values())
summary={k:{'us_values':v,'median_us':statistics.median(v),'min_us':min(v),'max_us':max(v)} for k,v in values.items()}
summary['candidate_vs_v28_pct']=(summary['power_v046']['median_us']/summary['baseline_v28']['median_us']-1)*100
summary['candidate_vs_parent_pct']=(summary['power_v046']['median_us']/summary['parent_v045']['median_us']-1)*100
summary['correctness']='12/12 PASS; complete native naive_nsa,W10/R50'
summary['anomaly']='power_v046 run10=186.803us retained, cause unresolved. Even min101.084us exceeds baseline max89.580us.'
summary['verdict']='rejected_target_performance'
(r/'paired_summary.json').write_text(json.dumps(summary,indent=2)+'\n')
code=(r/'codegen/case12.device.cpp').read_text();llvm=(r/'case12.ll').read_text();resource=(r/'case12.resource.log').read_text()
cg={'candidate_sha256':hashlib.sha256(Path('/tmp/nsa_power_v046_v_rowpair.py').read_bytes()).hexdigest(),'private_allocas':[x.strip() for x in llvm.splitlines() if 'alloca ' in x and 'addrspace(5)' in x],'global_v_uint4_load_sites':sum('*(uint4*)(V +' in x for x in code.splitlines()),'V_fetch_loop_extent':2,'shared_uint1_store_sites':sum('= *(uint1*)(v_column_local +' in x for x in code.splitlines()),'shared_uint1_operand_load_sites':sum('*(uint1*)(v_operand +' in x and '= *(uint1*)' in x for x in code.splitlines()),'MT':int(re.search(r'Used\s+(\d+) MTregisters',resource)[1]),'ST':int(re.search(r'(\d+) STregisters',resource)[1]),'stack_bytes':int(re.search(r'(\d+) bytes stack frame',resource)[1]),'static_max_warps_peu':int(re.search(r'staticMaxWarps/PEU : (\d+)',resource)[1])}
(r/'codegen_analysis.json').write_text(json.dumps(cg,indent=2)+'\n');print(summary);print(cg)

counts={}
for label,ident in [('parent_v045','v045_codex_power_s8_value_select_sc-16g-2'),('power_v046','v046_codex_power_s8_v_rowpair_sc-16g-2')]:
 ir=(r.parent/ident/'case12.ll').read_text()
 counts[label]={key:len(re.findall(r'\bcall\b[^\n]*@'+re.escape(sym)+r'\b',ir)) for key,sym in [('bpermute','llvm.mxc.bsm.bpermute'),('gethwreg','llvm.mxc.gethwreg'),('sethwreg','llvm.mxc.sethwreg'),('warpbarrier','llvm.mxc.barrier.warp')]}
counts['interpretation']='Static call sites only, not dynamic latency or measured occupancy.'
(r/'llvm_comparison.json').write_text(json.dumps(counts,indent=2)+'\n');print(counts)
