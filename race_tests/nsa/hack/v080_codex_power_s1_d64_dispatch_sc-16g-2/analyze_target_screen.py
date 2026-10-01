from pathlib import Path
import csv,json,statistics
from decimal import Decimal
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v080_codex_power_s1_d64_dispatch_sc-16g-2');summary=[];allrows=[]
for ci in [2,5,7,8,9,13,14]:
 rows=list(csv.DictReader((r/('target_case'+str(ci)+'_sc-16g-2.csv')).open()));assert len(rows)==12 and all(x['status']=='PASS' for x in rows);allrows+=rows
 vals={k:[Decimal(x['latency_ms'])*1000 for x in rows if x['variant']==k] for k in ['baseline_v28','parent_v079','power_v080']};assert all(len(v)==4 for v in vals.values());med={k:statistics.median(v) for k,v in vals.items()};out={'case':ci,'samples_us':{k:[str(x) for x in v] for k,v in vals.items()},'medians_us':{k:str(x) for k,x in med.items()},'vs_v28_pct':str((med['power_v080']/med['baseline_v28']-1)*100),'vs_parent_pct':str((med['power_v080']/med['parent_v079']-1)*100),'all_candidate_below_parent':max(vals['power_v080'])<min(vals['parent_v079'])};summary.append(out);print(out)
with (r/'target_screen_sc-16g-2.csv').open('w',newline='') as f:
 writer=csv.DictWriter(f,fieldnames=allrows[0].keys());writer.writeheader();writer.writerows(allrows)
(r/'target_screen_summary.json').write_text(json.dumps({'mode':'selectedtargetscreen7shapes notall14verdict','candidate_refs':28,'total_refs_withcontrols':84,'allraw_retained':True,'cases':summary},indent=2)+'\n')
