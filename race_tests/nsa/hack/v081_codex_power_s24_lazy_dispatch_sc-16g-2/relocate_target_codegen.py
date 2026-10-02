from pathlib import Path
import json,hashlib
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v081_codex_power_s24_lazy_dispatch_sc-16g-2');assert not (r/'codegen_target').exists();records=[]
for ci in [10,11]:
 a=json.loads((r/('target_case'+str(ci)+'_codegen.json')).read_text())
 for row in a['records']:assert hashlib.sha256(Path(row['device_path']).read_bytes()).hexdigest()==row['device_sha256']
(r/'codegen_formal').rename(r/'codegen_target')
for ci in [10,11]:
 f=r/('target_case'+str(ci)+'_codegen.json');a=json.loads(f.read_text())
 for row in a['records']:
  before={k:row[k] for k in ['device_path','host_path']}
  for k in before:row[k]=row[k].replace('/codegen_formal/','/codegen_target/')
  assert hashlib.sha256(Path(row['device_path']).read_bytes()).hexdigest()==row['device_sha256'];row['captured_device_path']=before['device_path'];row['captured_host_path']=before['host_path'];records.append({'captured':before,'archived':{k:row[k] for k in before},'device_sha256':row['device_sha256'],'operation':'metadata path relocation only; source bytes unchanged'})
 a['phase_paths_separate']=True;f.write_text(json.dumps(a,indent=2)+'\n')
(r/'target_codegen_relocation.json').write_text(json.dumps(records,indent=2)+'\n')
