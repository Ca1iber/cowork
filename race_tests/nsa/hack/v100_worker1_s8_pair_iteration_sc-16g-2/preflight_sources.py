from pathlib import Path
import json,hashlib,sys,datetime
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v100_worker1_s8_pair_iteration_sc-16g-2');data=json.loads((r/'runner_sources_manifest.json').read_text());records=[]
for label,x in data['sources'].items():
 f=Path(x['path']);assert f.is_file(),(label,str(f));digest=hashlib.sha256(f.read_bytes()).hexdigest();assert digest==x['sha256'],(label,digest,x['sha256']);records.append({'label':label,'path':str(f),'sha256':digest})
assert set(data['sources'])=={'baseline_v28','parent_v084','power_v100'}
print(json.dumps({'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'phase':sys.argv[1] if len(sys.argv)>1 else 'unspecified','checked_sources':records,'reference_body_unchanged':True},indent=2))
