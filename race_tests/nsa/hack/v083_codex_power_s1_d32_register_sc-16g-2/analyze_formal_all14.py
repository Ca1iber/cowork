from pathlib import Path
from decimal import Decimal
import csv,json,statistics,hashlib,subprocess
root=Path('/root/tilelang-metax/race_tests/nsa');v='v083_codex_power_s1_d32_register_sc-16g-2';r=root/'rep'/v;allrows=[];records=[];sources=None;cases=[];codecheck=[]
newcases={1}
for ci in range(1,15):
 phase='formal_recovery' if ci==5 else 'formal'
 assert (r/(phase+'_case'+str(ci)+'.exit')).read_text().strip()=='0'
 rows=list(csv.DictReader((r/(phase+'_case'+str(ci)+'_sc-16g-2.csv')).open()));assert len(rows)==12 and all(x['status']=='PASS' for x in rows);allrows+=rows
 vals={k:[Decimal(x['latency_ms'])*1000 for x in rows if x['variant']==k] for k in ['baseline_v28','parent_v081','power_v083']};assert all(len(v)==4 for v in vals.values());med={k:statistics.median(v) for k,v in vals.items()};cases.append({'case':ci,'samples_us':{k:[str(x) for x in v] for k,v in vals.items()},'medians_us':{k:str(x) for k,x in med.items()},'vs_v28_pct':str((med['power_v083']/med['baseline_v28']-1)*100),'vs_parent_pct':str((med['power_v083']/med['parent_v081']-1)*100),'ranges':{k:[str(min(v)),str(max(v))] for k,v in vals.items()}})
 info=json.loads((r/(phase+'_case'+str(ci)+'_codegen.json')).read_text());assert len(info['records'])==3
 if sources is None:sources=info['sources']
 assert sources==info['sources'];records+=info['records']
 b=next(x for x in info['records'] if x['variant']=='baseline_v28');i=next(x for x in info['records'] if x['variant']=='parent_v081');c=next(x for x in info['records'] if x['variant']=='power_v083')
 for row in info['records']:assert hashlib.sha256(Path(row['device_path']).read_bytes()).hexdigest()==row['device_sha256'] and row['stage']==1
 sameb=c['device_sha256']==b['device_sha256'];samei=c['device_sha256']==i['device_sha256']
 if ci in [3]:assert sameb,(ci,'unexpectedfallbackcode')
 if ci not in newcases:assert samei,(ci,'unexpectedunchangedparentcode')
 codecheck.append({'case':ci,'exactv28':sameb,'exactparent079':samei,'identitynotperformancewaiver':True});print(cases[-1],flush=True)
with (r/'formal_all14_sc-16g-2.csv').open('w',newline='') as f:
 writer=csv.DictWriter(f,fieldnames=allrows[0].keys());writer.writeheader();writer.writerows(allrows)
(r/'formal_all14_summary.json').write_text(json.dumps({'candidate_refs':56,'experiment_refs':168,'percaseprocess':'originalnative body/timing W10R50 unchanged,samecase3sources','allrawretained':True,'cases':cases},indent=2)+'\n')
(r/'formal_codegen_index.json').write_text(json.dumps({'mode':'metadataonly aftereachcase timing,42samecase3source records','sources':sources,'records':records},indent=2)+'\n');(r/'formal_codegen_comparison.json').write_text(json.dumps(codecheck,indent=2)+'\n')
cmd=['/opt/conda/bin/python',str(root/'hack/validate_oj_submission.py'),'/tmp/nsa_power_v083_d32_register.py']
for x in records:cmd+=['--generated-code',x['device_path']]
y=subprocess.run(cmd,capture_output=True,text=True);(r/'formal_static42.log').write_text(y.stdout+y.stderr);(r/'formal_static42.exit').write_text(str(y.returncode)+'\n');assert y.returncode==0,y.stdout+y.stderr;print(y.stdout)
