from pathlib import Path
from decimal import Decimal
import json,csv,hashlib
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v115_worker1_fixed_all14_C11_C12_validation_sc-16g-2/native_validation');d=json.loads((r/'diagnostic_result.json').read_text());planned=json.loads((r/'native_execution_plan.json').read_text())['jobs'];samples=[]
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
 for ci in range(1,15):
  g={k:[Decimal(x['latency_us']) for x in samples if x['case']==ci and x['variant']==k] for k in ['baseline_v28','parent_v084','power_v113']};assert all(len(v)==4 for v in g.values());c=med(g['power_v113']);p=med(g['parent_v084']);b=med(g['baseline_v28']);rounds=[]
  for n in [1,2]:
   cg=[Decimal(x['latency_us']) for x in samples if x['case']==ci and x['round']==n and x['variant']=='power_v113'];pg=[Decimal(x['latency_us']) for x in samples if x['case']==ci and x['round']==n and x['variant']=='parent_v084'];bg=[Decimal(x['latency_us']) for x in samples if x['case']==ci and x['round']==n and x['variant']=='baseline_v28'];rounds.append({'round':n,'vs84_pct':str((med(cg)/med(pg)-1)*100),'vs28_pct':str((med(cg)/med(bg)-1)*100)})
  result['cases'].append({'case':ci,'Bmedian_us':str(b),'P84median_us':str(p),'C113median_us':str(c),'vs84_pct':str((c/p-1)*100),'vs28_pct':str((c/b-1)*100),'rounds':rounds,'ranges':{k:[str(min(v)),str(max(v))] for k,v in g.items()},'raw_us':{k:[str(z) for z in v] for k,v in g.items()},'ranges_overlap_vs84':max(min(g['power_v113']),min(g['parent_v084']))<=min(max(g['power_v113']),max(g['parent_v084'])),'allC_lt_allP84':max(g['power_v113'])<min(g['parent_v084'])})
 result['positive_median_vs84_cases']=[x['case'] for x in result['cases'] if Decimal(x['vs84_pct'])>0];result['positive_median_vs28_cases']=[x['case'] for x in result['cases'] if Decimal(x['vs28_pct'])>0];result['any_round_positive_vs_either_control_cases']=[x['case'] for x in result['cases'] if any(Decimal(q[k])>0 for q in x['rounds'] for k in ['vs84_pct','vs28_pct'])];result['no_no_regression_or_OJ_claim']=True
else:result['failure']=d['failure'];result['decision']='failed_runtime_prefix_inconclusive; noolddata fill'
(r/'all14_summary.json').write_text(json.dumps(result,indent=2)+chr(10));print('ALL14_STD_ANALYSIS',d['runtime_protocol_completed'],len(samples),[(x['case'],x['vs84_pct']) for x in result['cases']])
