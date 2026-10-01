from pathlib import Path
import csv,hashlib,json,re,statistics
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v047_codex_power_s1_v_planes_sc-16g-2')
rows=list(csv.DictReader((r/'paired_case6_sc-16g-2.csv').open()));assert len(rows)==8 and all(x['status']=='PASS' and x['case']=='6' for x in rows)
values={k:[float(x['latency_ms'])*1000 for x in rows if x['variant']==k] for k in ['baseline_v28','power_v047']};assert all(len(v)==4 for v in values.values())
summary={k:{'us_values':v,'median_us':statistics.median(v),'min_us':min(v),'max_us':max(v)} for k,v in values.items()}
summary['candidate_vs_v28_pct']=(summary['power_v047']['median_us']/summary['baseline_v28']['median_us']-1)*100
summary['correctness']='8/8 PASS; full native naive_nsa,W10/R50'
summary['verdict']='rejected_target_performance_and_shared_footprint_prediction'
(r/'paired_summary.json').write_text(json.dumps(summary,indent=2)+'\n')
code=(r/'codegen/case6.device.cpp').read_text();llvm=(r/'case6.ll').read_text();resource=(r/'case6.resource.log').read_text();host=(r/'codegen/case6.host.cpp').read_text()
assert '[10].v_int64) = ((int64_t)20480);' in host
cg={'candidate_sha256':hashlib.sha256(Path('/tmp/nsa_power_v047_v_planes.py').read_bytes()).hexdigest(),'private_allocas':[x.strip() for x in llvm.splitlines() if 'alloca ' in x and 'addrspace(5)' in x],'global_v_uint4_load_sites':sum('*(uint4*)(V +' in x for x in code.splitlines()),'global_V_load_loop_product':8,'shared_uint1_operand_load_sites':sum('*(uint1*)(v_operand +' in x and '= *(uint1*)' in x for x in code.splitlines()),'operand_load_loop_product':32,'MT':int(re.search(r'Used\s+(\d+) MTregisters',resource)[1]),'ST':int(re.search(r'(\d+) STregisters',resource)[1]),'stack_bytes':int(re.search(r'(\d+) bytes stack frame',resource)[1]),'static_max_warps_peu':int(re.search(r'staticMaxWarps/PEU : (\d+)',resource)[1]),'dynamic_shared_actual_bytes':20480,'dynamic_shared_predicted_bytes':8192,'V_shared_offset_half_elements':4096,'output_shared_offset_half_elements':0,'Q_shared_offset_half_elements':8192,'K_shared_offset_half_elements':0,'interpretation':'Actual lowering allocates Q4KiB at16KiB, K8KiB at0, V8KiB at8KiB. Output aliases K at0; Q/K/V remain distinct. Resource footprint failure is verified; its exclusive latency contribution is not established.'}
(r/'codegen_analysis.json').write_text(json.dumps(cg,indent=2)+'\n');print(summary);print(cg)
