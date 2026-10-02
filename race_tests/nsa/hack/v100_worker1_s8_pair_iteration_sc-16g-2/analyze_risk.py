from pathlib import Path
from decimal import Decimal
import csv,json,statistics
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v100_worker1_s8_pair_iteration_sc-16g-2'); ids=json.loads((r/'risk_selection.json').read_text())['cases'];allrows=[];summary=[]
for ci in ids:
 assert (r/('risk_case'+str(ci)+'.exit')).read_text().strip()=='0'
 rows=list(csv.DictReader((r/('risk_case'+str(ci)+'_sc-16g-2.csv')).open()));assert len(rows)==12 and all(x['status']=='PASS' for x in rows);allrows+=rows
 vals={k:[Decimal(x['latency_ms'])*1000 for x in rows if x['variant']==k] for k in ['baseline_v28','parent_v084','power_v100']};med={k:statistics.median(v) for k,v in vals.items()}
 summary.append({'case':ci,'medians_us':{k:str(v) for k,v in med.items()},'samples_us':{k:[str(x) for x in v] for k,v in vals.items()},'vs_v28_pct':str((med['power_v100']/med['baseline_v28']-1)*100),'vs_parent_pct':str((med['power_v100']/med['parent_v084']-1)*100)})
if allrows:
 with (r/'risk_sc-16g-2.csv').open('w',newline='') as f:
  w=csv.DictWriter(f,fieldnames=allrows[0].keys());w.writeheader();w.writerows(allrows)
(r/'risk_summary.json').write_text(json.dumps({'candidate_refs':4*len(ids),'experiment_refs':12*len(ids),'selection':'all formal cases positive versus original or parent,one fixed confirmation only','allrawretained':True,'cases':summary},indent=2)+'\n');print(json.dumps(summary,indent=2))
