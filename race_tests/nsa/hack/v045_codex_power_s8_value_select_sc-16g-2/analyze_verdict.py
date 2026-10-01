import csv,hashlib,json,statistics
from pathlib import Path
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v045_codex_power_s8_value_select_sc-16g-2')
rows=list(csv.DictReader((r/'paired_case12_sc-16g-2.csv').open()))
assert len(rows)==8 and all(x['status']=='PASS' and x['case']=='12' for x in rows)
values={k:[float(x['latency_ms'])*1000 for x in rows if x['variant']==k] for k in ['baseline_v28','power_v045']}
assert all(len(x)==4 for x in values.values())
summary={k:{'us_values':v,'median_us':statistics.median(v),'min_us':min(v),'max_us':max(v)} for k,v in values.items()}
summary['candidate_relative_change_pct']=(summary['power_v045']['median_us']/summary['baseline_v28']['median_us']-1)*100
summary['correctness']='8/8 PASS; full project native naive_nsa, W10/R50 unchanged'
summary['verdict']='rejected_target_performance'
(r/'paired_summary.json').write_text(json.dumps(summary,indent=2)+'\n')
profiles=json.loads((r/'mcprof_summary.json').read_text());issues=[]
for x in profiles:
 reasons=[]
 if x['waves']!=4096:reasons.append('reported dispatched waves differ from fixed4096 launch and prior exact-baseline captures')
 if x['mte_pct']>100 or x['mma_pct']>100:reasons.append('duty ratio exceeds100; normalization or counter scope unresolved')
 if reasons:issues.append({'variant':x['variant'],'sample':x['sample'],'reasons':reasons})
reliability={'status':'inconclusive_counter_comparison','attention_reports_found':4,'numeric_fields_present':True,'anomalies':issues,'interpretation':'Do not use these samples for bottleneck attribution. Physical-card activity while visible slice idle is observed; interference or counter-scope error is a hypothesis, not established cause. Achieved waves remain raw, not occupancy.','mctracer_exit':int((r/'mctracer.exit').read_text()),'mctracer_status':'timeout_no_valid_timeline','paired_native_summary':'paired_summary.json'}
(r/'counter_reliability.json').write_text(json.dumps(reliability,indent=2)+'\n')
assert issues and reliability['mctracer_exit']==124
print(summary)
