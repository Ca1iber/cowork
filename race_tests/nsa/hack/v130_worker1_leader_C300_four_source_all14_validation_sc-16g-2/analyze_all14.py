from pathlib import Path
from decimal import Decimal
import json,csv,hashlib
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v130_worker1_leader_C300_four_source_all14_validation_sc-16g-2/native_validation');d=json.loads((r/'diagnostic_result.json').read_text());planned=json.loads((r/'native_execution_plan.json').read_text())['jobs'];samples=[]
for job in planned:
 folder=r/('job_'+str(job['index']).zfill(2)+'_'+job['variant']);p=folder/'native_all14.csv'
 if not p.exists():continue
 with p.open() as f:rows=list(csv.DictReader(f))
 for row in rows:
  if row.get('status')=='PASS':samples.append({'job':job['index'],'round':job['round'],'variant':job['variant'],'case':int(row['case']),'latency_us':str(Decimal(row['latency_ms'])*1000),'rawrow':row,'CSV':str(p),'CSV_SHA':hashlib.sha256(p.read_bytes()).hexdigest()})
def med(a):
 a=sorted(a);return a[len(a)//2] if len(a)%2 else (a[len(a)//2-1]+a[len(a)//2])/2
result={'runtime_completed':d['runtime_protocol_completed'],'observed_by_variant':d['observed_complete_reference_PASS_rows_by_variant'],'clean_by_variant':d['clean_process_accepted_fullrefs_by_variant'],'rawsamples':samples,'allold_singlecase_and_108_109_results_separate':True,'identity_not_latency_waiver':True,'cases':[],'automatic_formal_risk_profile_main_promotion':False}
if d['runtime_protocol_completed']:
 controls={'vs84_pct':'parent_v084','vs113_pct':'power_v113','vs28_pct':'baseline_v28'}
 for ci in range(1,15):
  g={k:[Decimal(x['latency_us']) for x in samples if x['case']==ci and x['variant']==k] for k in ['baseline_v28','parent_v084','power_v113','candidate_v300']};assert all(len(v)==4 for v in g.values());c=med(g['candidate_v300']);rounds=[]
  for n in [1,2]:
   rg={k:[Decimal(x['latency_us']) for x in samples if x['case']==ci and x['round']==n and x['variant']==k] for k in g};assert all(len(v)==2 for v in rg.values());rounds.append({'round':n,**{key:str((med(rg['candidate_v300'])/med(rg[label])-1)*100) for key,label in controls.items()}})
  result['cases'].append({'case':ci,'medians_us':{k:str(med(v)) for k,v in g.items()},**{key:str((c/med(g[label])-1)*100) for key,label in controls.items()},'rounds':rounds,'ranges':{k:[str(min(v)),str(max(v))] for k,v in g.items()},'raw_us':{k:[str(z) for z in v] for k,v in g.items()},'ranges_overlap':{label:max(min(g['candidate_v300']),min(g[label]))<=min(max(g['candidate_v300']),max(g[label])) for label in controls.values()},'allC_lt_allcontrol':{label:max(g['candidate_v300'])<min(g[label]) for label in controls.values()}})
 for key in controls:result['positive_median_'+key+'_cases']=[x['case'] for x in result['cases'] if Decimal(x[key])>0]
 result['any_round_positive_vs_any_control_cases']=[x['case'] for x in result['cases'] if any(Decimal(q[k])>0 for q in x['rounds'] for k in controls)];result['no_no_regression_or_OJ_claim']=True
else:result['failure']=d['failure'];result['decision']='failed_runtime_prefix_inconclusive; noolddata fill'
(r/'all14_summary.json').write_text(json.dumps(result,indent=2)+chr(10));print('ALL14_STD_ANALYSIS',d['runtime_protocol_completed'],len(samples),[(x['case'],x['vs84_pct'],x['vs113_pct']) for x in result['cases']])
