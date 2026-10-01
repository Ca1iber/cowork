from pathlib import Path
import ast,csv,hashlib,json,re,statistics
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v050_codex_power_s8_online_local_sc-16g-2');root=r.parents[1]
raw=list(csv.DictReader((r/'paired_case12_sc-16g-2.csv').open()));assert len(raw)==12 and all(x['status']=='PASS' and x['case']=='12' for x in raw)
vals={k:[float(x['latency_ms'])*1000 for x in raw if x['variant']==k] for k in ['baseline_v28','parent_v049','power_v050']};assert all(len(v)==4 for v in vals.values())
s={k:{'us_values':v,'median_us':statistics.median(v),'min_us':min(v),'max_us':max(v)} for k,v in vals.items()};s['candidate_vs_v28_pct']=(s['power_v050']['median_us']/s['baseline_v28']['median_us']-1)*100;s['correctness']='12/12 PASS;full naive_nsa,W10/R50';s['status']='rejected_target_performance'
(r/'paired_summary.json').write_text(json.dumps(s,indent=2)+'\n');print(s)
resource=(r/'case12.resource.log').read_text();base=(r/'baseline_case12.resource.log').read_text();llvm=(r/'case12.ll').read_text();host=(r/'codegen/case12.host.cpp').read_text();cpp=(r/'codegen/case12.device.cpp').read_text()
assert '[10].v_int64) = ((int64_t)2048);' in host
cg={'candidate_sha256':hashlib.sha256(Path('/tmp/nsa_power_v050_online_local.py').read_bytes()).hexdigest(),'shared_bytes':2048,'MT':int(re.search(r'Used\s+(\d+) MTregisters',resource)[1]),'ST':int(re.search(r'(\d+) STregisters',resource)[1]),'stack_bytes':int(re.search(r'(\d+) bytes stack frame',resource)[1]),'static_max_warps_peu':int(re.search(r'staticMaxWarps/PEU : (\d+)',resource)[1]),'baseline_MT':int(re.search(r'Used\s+(\d+) MTregisters',base)[1]),'baseline_ST':int(re.search(r'(\d+) STregisters',base)[1]),'private_allocas':[x.strip() for x in llvm.splitlines() if 'alloca ' in x and 'addrspace(5)' in x],'vector_sites':{x:sum('*(uint4*)('+x+' +' in line for line in cpp.splitlines()) for x in ['Q','K','Output']},'V_global_uint2_sites':sum('*(uint2*)(V +' in line for line in cpp.splitlines())}
(r/'codegen_analysis.json').write_text(json.dumps(cg,indent=2)+'\n');print(cg)
a=ast.parse(Path('/tmp/nsa_power_v050_online_local.py').read_text());b=ast.parse((root/'submission/v049_codex_power_s1_cache_entry_sc-16g-2/submission.py').read_text())
fa=next(x for x in a.body if isinstance(x,ast.FunctionDef) and x.name=='_make_power_s1_shared_arena');fb=next(x for x in b.body if isinstance(x,ast.FunctionDef) and x.name=='_make_power_s1_shared_arena');assert ast.dump(fa)==ast.dump(fb)
(r/'case6_preserved.json').write_text(json.dumps({'helper_full_AST_same_as_v049':True,'kernel_algorithm_not_modified':True,'native_case6_retest':'NOT_RUN_TARGET12_FAILED;not promoted'},indent=2)+'\n')
