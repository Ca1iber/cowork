from pathlib import Path
from decimal import Decimal
import csv,json,statistics,subprocess
root=Path('/root/tilelang-metax/race_tests/nsa');r=root/'rep/v100_worker1_s8_pair_iteration_sc-16g-2';rows=[];summary=[];records=[]
for ci in [12]:
 assert (r/('target_case'+str(ci)+'.exit')).read_text().strip()=='0';data=list(csv.DictReader((r/('target_case'+str(ci)+'_sc-16g-2.csv')).open()));assert len(data)==12 and all(x['status']=='PASS' for x in data);rows+=data;vals={k:[Decimal(x['latency_ms'])*1000 for x in data if x['variant']==k] for k in ['baseline_v28','parent_v084','power_v100']};assert all(len(x)==4 for x in vals.values());med={k:statistics.median(v) for k,v in vals.items()};summary.append({'case':ci,'samples_us':{k:[str(x) for x in v] for k,v in vals.items()},'medians_us':{k:str(v) for k,v in med.items()},'vs_v28_pct':str((med['power_v100']/med['baseline_v28']-1)*100),'vs_parent_pct':str((med['power_v100']/med['parent_v084']-1)*100),'candidate_range_below_parent':max(vals['power_v100'])<min(vals['parent_v084'])});records+=json.loads((r/('target_case'+str(ci)+'_codegen.json')).read_text())['records']
with (r/'target_screen_sc-16g-2.csv').open('w',newline='') as f:
 w=csv.DictWriter(f,fieldnames=rows[0].keys());w.writeheader();w.writerows(rows)
(r/'target_screen_summary.json').write_text(json.dumps({'scope':'selectedtarget screen,notall14 verdict','candidate_refs':4,'experiment_refs':12,'cases':summary},indent=2)+'\n')
cmd=['/opt/conda/bin/python',str(root/'hack/validate_oj_submission.py'),'/tmp/nsa_power_v100_pair_iteration.py']
for x in records:cmd+=['--generated-code',x['device_path']]
a=subprocess.run(cmd,capture_output=True,text=True);(r/'target_static3.log').write_text(a.stdout+a.stderr);(r/'target_static3.exit').write_text(str(a.returncode)+'\n');assert a.returncode==0;print(json.dumps(summary,indent=2))
