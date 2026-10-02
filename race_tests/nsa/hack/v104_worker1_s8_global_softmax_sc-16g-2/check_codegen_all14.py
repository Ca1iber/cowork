from pathlib import Path
import json,hashlib
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v104_worker1_s8_global_softmax_sc-16g-2');assert (r/'metadata_all14/stage.exit').read_text().strip()=='0';jobs=json.loads((r/'metadata_all14_plan.json').read_text())['jobs'];records={}
for i,j in enumerate(jobs):
 a=json.loads((r/'metadata_all14_records'/('job_'+str(i)+'.json')).read_text());assert a['attention_calls']==a['reference_checks']==0 and len(a['records'])==1;x=a['records'][0]
 for n in ['device','host']:assert hashlib.sha256(Path(x[n+'_path']).read_bytes()).hexdigest()==x[n+'_sha256']
 records[(j['case'],j['variant'])]=x
checks=[]
for ci in range(1,15):
 a=records[(ci,'parent_v084')];b=records[(ci,'power_v104')];same=Path(a['device_path']).read_bytes()==Path(b['device_path']).read_bytes();checks.append({'case':ci,'parent_device_sha256':a['device_sha256'],'candidate_device_sha256':b['device_sha256'],'device_byte_identical':same,'non_target_expected_identical':ci!=12,'performance_no_regression_not_proved_by_identity':True})
(r/'codegen_all14_identity_checks.json').write_text(json.dumps(checks,indent=2)+chr(10));ok=all(x['device_byte_identical'] for x in checks if x['case']!=12);(r/'codegen_all14_identity.exit').write_text(('0' if ok else '1')+chr(10));print('ACTUAL_CODEGEN_GATE',ok,checks);raise SystemExit(0 if ok else 1)
