from pathlib import Path
import csv,json,statistics
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v049_codex_power_s1_cache_entry_sc-16g-2')
raw=list(csv.DictReader((r/'paired_risk_sc-16g-2.csv').open()));assert len(raw)==96 and all(x['status']=='PASS' for x in raw)
rows=[]
for case in [1,2,4,6,7,8,10,13]:
 vals={k:[float(x['latency_ms'])*1000 for x in raw if int(x['case'])==case and x['variant']==k] for k in ['baseline_v28','parent_v048','power_v049']};assert all(len(v)==4 for v in vals.values())
 med={k:statistics.median(v) for k,v in vals.items()};delta=(med['power_v049']/med['baseline_v28']-1)*100
 rows.append({'case':case,'us_values':vals,'median_us':med,'candidate_vs_v28_pct':delta,'candidate_vs_parent_pct':(med['power_v049']/med['parent_v048']-1)*100})
 print(case,{k:round(v,4) for k,v in med.items()},round(delta,3))
s={'correctness':'96/96 PASS; full native naive_nsa,W10/R50','rows':rows,'slower_median_cases':[x['case'] for x in rows if x['candidate_vs_v28_pct']>0],'interpretation':'All initial and repeated timings retained. No assertion that differences are noise or that OJ no-regression is established.'}
(r/'risk_summary.json').write_text(json.dumps(s,indent=2)+'\n')
