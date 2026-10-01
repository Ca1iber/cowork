import csv,json,statistics
from pathlib import Path
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v059_codex_power_s1_qk_pair_swap_sc-16g-2')
rows=list(csv.DictReader((r/'paired_risk_sc-16g-2.csv').open()));assert len(rows)==84 and all(x['status']=='PASS' for x in rows)
res=[]
for ci in (1,3,4,5,7,10,11):
 vals={k:[float(x['latency_ms'])*1000 for x in rows if int(x['case'])==ci and x['variant']==k] for k in ['baseline_v28','parent_v057','power_v059']}
 assert all(len(a)==4 for a in vals.values())
 m={k:statistics.median(a) for k,a in vals.items()};x={'case':ci,'samples_us':vals,'median_us':m,'candidate_vs_v28_pct':(m['power_v059']/m['baseline_v28']-1)*100};res.append(x)
 print(x)
(r/'paired_risk_summary.json').write_text(json.dumps({'reference':'84/84 full native naive_nsa,W10/R50 PASS','source':'exact archive v059','all_observations_retained':True,'cases':res},indent=2)+'\n')
