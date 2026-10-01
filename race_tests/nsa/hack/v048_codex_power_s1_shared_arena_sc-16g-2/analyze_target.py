from pathlib import Path
import csv,json,statistics
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v048_codex_power_s1_shared_arena_sc-16g-2')
rows=list(csv.DictReader((r/'paired_case6_sc-16g-2.csv').open()));assert len(rows)==12 and all(x['status']=='PASS' and x['case']=='6' for x in rows)
labels=['baseline_v28','parent_v047','power_v048'];values={k:[float(x['latency_ms'])*1000 for x in rows if x['variant']==k] for k in labels};assert all(len(v)==4 for v in values.values())
s={k:{'us_values':v,'median_us':statistics.median(v),'min_us':min(v),'max_us':max(v)} for k,v in values.items()}
s['candidate_vs_v28_pct']=(s['power_v048']['median_us']/s['baseline_v28']['median_us']-1)*100
s['candidate_vs_parent_pct']=(s['power_v048']['median_us']/s['parent_v047']['median_us']-1)*100
s['correctness']='12/12 PASS; complete naive_nsa,W10/R50'
s['scope']='promising target only; all14 and external OJ required for promotion'
(r/'paired_summary.json').write_text(json.dumps(s,indent=2)+'\n');print(s)
