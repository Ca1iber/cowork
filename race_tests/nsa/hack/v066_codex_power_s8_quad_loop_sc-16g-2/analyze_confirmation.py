import csv,json,statistics
from pathlib import Path
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v066_codex_power_s8_quad_loop_sc-16g-2')
results={}
for name,prefix in [('initial','paired_case12'),('confirmation','confirmed_case12')]:
 rows=list(csv.DictReader((r/(prefix+'_sc-16g-2.csv')).open()))
 assert len(rows)==16 and all(x['status']=='PASS' and x['case']=='12' for x in rows)
 vals={k:[float(x['latency_ms'])*1000 for x in rows if x['variant']==k] for k in ['baseline_v28','parent_v064','trial_v061','power_v066']};assert all(len(a)==4 for a in vals.values())
 med={k:statistics.median(a) for k,a in vals.items()}
 results[name]={'us_values':vals,'median_us':med,'candidate_vs_current_pct':(med['power_v066']/med['parent_v064']-1)*100,'candidate_range':[min(vals['power_v066']),max(vals['power_v066'])],'current_range':[min(vals['parent_v064']),max(vals['parent_v064'])]}
(r/'target_confirmation_summary.json').write_text(json.dumps({'protocol':'one prespecified same-settings repeat; both complete runs retained separately;W10/R50 full naive_nsa','no_sample_exclusion':True,'runs':results,'promotion':'no automatic acceptance or no-regression claim from medians'},indent=2)+'\n')
print(results)
