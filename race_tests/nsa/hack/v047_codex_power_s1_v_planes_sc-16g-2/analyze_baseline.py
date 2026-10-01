from pathlib import Path
import hashlib,json
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v047_codex_power_s1_v_planes_sc-16g-2')
p=Path('/tmp/nsa_baseline_v28_for_power47.py');sha=hashlib.sha256(p.read_bytes()).hexdigest()
assert sha=='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
d=r/'mcprof_baseline_v28';assert (d/'exit_code.txt').read_text().strip()=='0'
files=sorted((d/'report_bundle').glob('*native_sparse_attention_kernel.txt.json'));assert len(files)==2
metrics=['Dispatched waves','Achieved waves','L2C Hit Rate','Global Memory Read bytes','Global Memory Write bytes','AP MTE Duty ratio','AP MMA Duty ratio','shared memory access efficiency','average conflict cycles per instruction','average latency per load instruction']
rows=[]
for f in files:
 data=json.loads(f.read_text());raw={x['name']:x['value'] for group in data.values() for x in group if x.get('name') in metrics}
 vals={name:float(str(raw[name]).replace(',','').replace('%','').replace('byte','')) for name in metrics}
 reasons=[]
 if vals['Dispatched waves']!=8192:reasons.append('waves differ from fixed8192 launch')
 if not (0<=vals['AP MTE Duty ratio']<=100 and 0<=vals['AP MMA Duty ratio']<=100):reasons.append('duty ratio outside0..100')
 rows.append({'file':f.name,'values':vals,'anomalies':reasons})
s={'status':'inconclusive_counter_capture' if any(x['anomalies'] for x in rows) else 'fresh_baseline_counter_gate_PASS','baseline_sha256':sha,'rows':rows,'achieved_waves_interpretation':'raw only, not occupancy'}
(r/'fresh_baseline_summary.json').write_text(json.dumps(s,indent=2)+'\n');print(s)
