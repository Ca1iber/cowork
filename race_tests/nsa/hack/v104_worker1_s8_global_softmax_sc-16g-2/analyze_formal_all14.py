from pathlib import Path
from decimal import Decimal
import json,statistics,csv
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v104_worker1_s8_global_softmax_sc-16g-2');f=r/'formal';d=json.loads((f/'diagnostic_result.json').read_text());assert d['runtime_protocol_completed'] and len(d['all_jobs'])==168 and d['candidate_full_reference_PASS_records']==56 and d['all_sources_PASS_records']==168
labels=['baseline_v28','parent_v084','power_v104'];cases=[];allrows=[]
for ci in range(1,15):
 jobs=[x for x in d['all_jobs'] if x['case']==ci];assert len(jobs)==12 and all(x['native_exit']==0 and x['stop_reason'] is None for x in jobs);values={label:[Decimal(x['records'][0]['latency_ms'])*1000 for x in jobs if x['variant']==label] for label in labels};assert all(len(xs)==4 for xs in values.values());m={label:statistics.median(xs) for label,xs in values.items()};rounds=[]
 for n in [1,2]:
  group=jobs[(n-1)*6:n*6];v={label:[Decimal(x['records'][0]['latency_ms'])*1000 for x in group if x['variant']==label] for label in labels};med={label:statistics.median(xs) for label,xs in v.items()};rounds.append({'round':n,'medians_us':{k:str(x) for k,x in med.items()},'vs_v28_pct':str((med['power_v104']/med['baseline_v28']-1)*100),'vs_parent_pct':str((med['power_v104']/med['parent_v084']-1)*100)})
 c=values['power_v104'];p=values['parent_v084'];case={'case':ci,'samples_us':{k:[str(x) for x in xs] for k,xs in values.items()},'medians_us':{k:str(x) for k,x in m.items()},'vs_v28_pct':str((m['power_v104']/m['baseline_v28']-1)*100),'vs_parent_pct':str((m['power_v104']/m['parent_v084']-1)*100),'rounds':rounds,'ranges_us':{k:[str(min(xs)),str(max(xs))] for k,xs in values.items()},'ranges_overlap_parent':max(c)>=min(p) and max(p)>=min(c),'all_candidate_below_parent':max(c)<min(p),'all_candidate_above_parent':min(c)>max(p),'allrawretained':True};cases.append(case)
 for j,x in enumerate(jobs,1):allrows.append({'case':ci,'run':j,'variant':x['variant'],'latency_ms':x['records'][0]['latency_ms'],'status':x['records'][0]['status'],'native_pid':x['pid'],'source_CSV':x['csv']})
summary={'candidate_refs':56,'inclusive_refs':168,'scope':'formalall14 originalnative eachsinglefreshproc4samples/source','source_archive_sha256':d['candidate_exact_archive_sha256'],'OOM_start':d['cgroup_initial']['oom_kill'],'OOM_end':d['cgroup_final']['oom_kill'],'cases':cases};(r/'formal_all14_summary.json').write_text(json.dumps(summary,indent=2)+'\n')
with (r/'formal_all14_sc-16g-2.csv').open('w',newline='') as f:
 w=csv.DictWriter(f,fieldnames=allrows[0].keys());w.writeheader();w.writerows(allrows)
positive=[x['case'] for x in cases if Decimal(x['vs_v28_pct'])>0 or Decimal(x['vs_parent_pct'])>0];(r/'formal_positive_cases_for_risk.json').write_text(json.dumps({'cases':positive,'rule':'allfullmedianpositive vs eithercontrol,not runtime/round outliers waived','preregistered_future_once':True,'risk_not_automatically_started':True},indent=2)+'\n');print('FORMAL_ANALYZED56/168',positive)
