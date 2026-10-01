from pathlib import Path
import csv,json,statistics
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v069_codex_power_s1_shared_reciprocal_sc-16g-2')
raw=list(csv.DictReader((r/'paired_case6_sc-16g-2.csv').open()));assert len(raw)==12 and all(x['status']=='PASS' and x['case']=='6' for x in raw)
labels=['baseline_v28','parent_v068','power_v069'];vals={k:[float(x['latency_ms'])*1000 for x in raw if x['variant']==k] for k in labels};assert all(len(v)==4 for v in vals.values())
s={k:{'us_values':v,'median_us':statistics.median(v),'min_us':min(v),'max_us':max(v)} for k,v in vals.items()}
s['candidate_vs_v28_pct']=(s['power_v069']['median_us']/s['baseline_v28']['median_us']-1)*100;s['candidate_vs_parent_pct']=(s['power_v069']['median_us']/s['parent_v068']['median_us']-1)*100
s['candidate_range_all_below_parent']=max(vals['power_v069'])<min(vals['parent_v068']);s['correctness']='12/12 full native naive_nsa,W10/R50 PASS';s['all_samples_retained']=True
(r/'paired_summary.json').write_text(json.dumps(s,indent=2)+'\n');print(s)
