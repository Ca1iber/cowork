from pathlib import Path
from decimal import Decimal
import json,statistics,csv
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v108_worker1_reallocated_memory_budget_all14_sc-16g-2');d=json.loads((r/'diagnostic_result.json').read_text());assert d['runtime_protocol_completed'] and len(d['all_jobs'])==12 and d['observed_candidate_fullrefs']==d['clean_candidate_fullrefs']==56 and d['observed_inclusive_fullrefs']==d['clean_inclusive_fullrefs']==168
labels=['baseline_v28','parent_v084','power_v104'];cases=[];canonical=[]
for j in d['all_jobs']:
 assert j['native_exit']==0 and j['clean_process_accepted'] and j['stop_reason'] is None;rows=list(csv.DictReader(Path(j['CSV']).open()));assert rows==j['rawCSVrows'] and len(rows)==14
 for x in rows:canonical.append({'job':j['index'],'round':j['round'],'variant':j['variant'],'case':int(x['case']),'latency_ms':x['latency_ms'],'status':x['status'],'sourceCSV':j['CSV']})
for ci in range(1,15):
 xs=[x for x in canonical if x['case']==ci];values={k:[Decimal(x['latency_ms'])*1000 for x in xs if x['variant']==k] for k in labels};assert all(len(v)==4 for v in values.values());m={k:statistics.median(v) for k,v in values.items()};rounds=[]
 for n in [1,2]:
  vm={k:statistics.median([Decimal(x['latency_ms'])*1000 for x in xs if x['variant']==k and x['round']==n]) for k in labels};rounds.append({'round':n,'medians_us':{k:str(v) for k,v in vm.items()},'vs_parent_pct':str((vm['power_v104']/vm['parent_v084']-1)*100),'vs_v28_pct':str((vm['power_v104']/vm['baseline_v28']-1)*100)})
 c=values['power_v104'];p=values['parent_v084'];cases.append({'case':ci,'samples_us':{k:[str(v) for v in vs] for k,vs in values.items()},'medians_us':{k:str(v) for k,v in m.items()},'vs_parent_pct':str((m['power_v104']/m['parent_v084']-1)*100),'vs_v28_pct':str((m['power_v104']/m['baseline_v28']-1)*100),'rounds':rounds,'ranges_us':{k:[str(min(v)),str(max(v))] for k,v in values.items()},'ranges_overlap_parent':max(c)>=min(p) and max(p)>=min(c),'allC_below_allP':max(c)<min(p),'allC_above_allP':min(c)>max(p),'all_raw_outliers_retained':True})
positive=[x['case'] for x in cases if Decimal(x['vs_parent_pct'])>0 or Decimal(x['vs_v28_pct'])>0];summary={'candidate_source_v104_sha256':d['candidate_source_v104_sha256'],'observed_candidate_refs':56,'observed_inclusive_refs':168,'clean_candidate_refs':56,'clean_inclusive_refs':168,'OOM_start':d['cgroup_initial']['oom_kill'],'OOM_end':d['cgroup_final']['oom_kill'],'new_protocol_only_no_oldabsolute_median_or_refmerge':True,'event50Pythoncalls_notpurekernel':True,'two_rounds_not_statistical_stability':True,'positive_cases_vs_either_control':positive,'cases':cases,'no_OJ_or_main_promotion':True,'risk_metadata_profile_not_authorized_by_this_analysis':True};(r/'all14_summary.json').write_text(json.dumps(summary,indent=2)+chr(10))
with (r/'all14_sc-16g-2.csv').open('w',newline='') as f:
 w=csv.DictWriter(f,fieldnames=canonical[0]);w.writeheader();w.writerows(canonical)
(r/'all14_analysis.exit').write_text('0'+chr(10));print('ALL14_ANALYZED',56,168,'allpositive',positive)
