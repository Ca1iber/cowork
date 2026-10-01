from pathlib import Path
import json,hashlib
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v079_codex_power_s1_case4_dense_sc-16g-2');records=[];sources=None
for ci in range(1,15):
 x=json.loads((r/('all14_codegen_case'+str(ci)+'.json')).read_text())
 if sources is None:sources=x['sources']
 assert sources==x['sources'] and len(x['records'])==3
 assert all(a['case']==ci for a in x['records']);records+=x['records']
assert len(records)==42
for row in records:assert hashlib.sha256(Path(row['device_path']).read_bytes()).hexdigest()==row['device_sha256']
(r/'all14_codegen_index.json').write_text(json.dumps({'mode':'metadata only,percase freshprocess withsame3modules,no GPU attention/reference/timing claim','sources':sources,'records':records},indent=2)+'\n');print('merged42 sources,percase3identity comparisons')
