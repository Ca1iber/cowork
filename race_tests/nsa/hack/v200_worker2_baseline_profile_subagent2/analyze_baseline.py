from pathlib import Path
import csv,json,statistics
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v200_worker2_baseline_profile_subagent2')
assert (r/'baseline_all14.exit').read_text().strip()=='0'
allrows=[];summary=[]
for ci in range(1,15):
 assert (r/f'baseline_case{ci}.exit').read_text().strip()=='0'
 rows=list(csv.DictReader((r/f'baseline_case{ci}_subagent2.csv').open()))
 assert len(rows)==4 and all(x['status']=='PASS' for x in rows)
 assert [x['variant'] for x in rows]==['baseline_v28','parent_v084','parent_v084','baseline_v28']
 allrows.extend(rows)
 d={label:[float(x['latency_ms'])*1000 for x in rows if x['variant']==label] for label in ['baseline_v28','parent_v084']}
 b,p=statistics.median(d['baseline_v28']),statistics.median(d['parent_v084'])
 summary.append({'case':ci,'baseline_us':b,'parent_us':p,'parent_vs_baseline_pct':(p/b-1)*100,'baseline_range_us':[min(d['baseline_v28']),max(d['baseline_v28'])],'parent_range_us':[min(d['parent_v084']),max(d['parent_v084'])]})
(r/'baseline_all14_summary.json').write_text(json.dumps(summary,indent=2)+'\n')
with (r/'baseline_all14_subagent2.csv').open('w',newline='') as f:
 w=csv.DictWriter(f,fieldnames=allrows[0].keys());w.writeheader();w.writerows(allrows)
print(json.dumps(summary,indent=2))
