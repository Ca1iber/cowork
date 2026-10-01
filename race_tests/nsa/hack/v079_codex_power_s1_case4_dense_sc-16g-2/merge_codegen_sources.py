from pathlib import Path
import json,hashlib
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v079_codex_power_s1_case4_dense_sc-16g-2');records=[];sources={}
for label in ['baseline_v28','power_v079','parent_v077']:
 x=json.loads((r/('all14_codegen_source_'+label+'.json')).read_text());assert len(x['records'])==14 and set(x['sources'])=={label};sources.update(x['sources']);records+=x['records']
assert len(records)==42
for row in records:assert hashlib.sha256(Path(row['device_path']).read_bytes()).hexdigest()==row['device_sha256']
(r/'all14_codegen_index.json').write_text(json.dumps({'mode':'metadataonly,oneimmutablemodule perprocess/all14cases,3sequentialprocesses;no GPU attention/reference/timing claim','sources':sources,'records':records},indent=2)+'\n');print('merged42single-source records,rawhash verified')
