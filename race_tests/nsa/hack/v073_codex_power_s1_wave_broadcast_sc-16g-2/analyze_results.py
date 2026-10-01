from pathlib import Path
import csv,json,statistics
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v073_codex_power_s1_wave_broadcast_sc-16g-2');raw=list(csv.DictReader((r/'paired_case6_sc-16g-2.csv').open()));assert len(raw)==16 and all(x['case']=='6' and x['status']=='PASS' for x in raw)
labels=['baseline_v28','parent_v068','trial_v072','power_v073'];vals={k:[float(x['latency_ms'])*1000 for x in raw if x['variant']==k] for k in labels};assert all(len(v)==4 for v in vals.values());s={k:{'us_values':v,'median_us':statistics.median(v),'min_us':min(v),'max_us':max(v)} for k,v in vals.items()}
for label in labels[:-1]:s['candidate_vs_'+label+'_pct']=(s['power_v073']['median_us']/s[label]['median_us']-1)*100
s['correctness']='16/16 full native naive_nsa W10R50 PASS';s['all_samples_retained']=True;s['candidate_range_all_below_current']=max(vals['power_v073'])<min(vals['parent_v068']);(r/'paired_summary.json').write_text(json.dumps(s,indent=2)+'\n');print(s)
