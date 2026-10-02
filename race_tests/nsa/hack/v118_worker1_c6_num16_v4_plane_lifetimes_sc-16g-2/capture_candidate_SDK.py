from pathlib import Path
import json,hashlib,subprocess,sys,re
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v118_worker1_c6_num16_v4_plane_lifetimes_sc-16g-2');m=json.loads((r/'compile_source_manifest.json').read_text());p=json.loads((r/'compile_execution_plan.json').read_text());mode=sys.argv[1];assert mode in ['resource','IR'];assert (r/'device_shape_static.exit').read_text().strip()=='0';x=next(x for x in json.loads((r/'metadata_pair.json').read_text())['records'] if x['variant']=='candidate118');src=Path(x['device_path']);assert hashlib.sha256(src.read_bytes()).hexdigest()==x['device_SHA'];tool=m['tools']['compiler'];assert hashlib.sha256(Path(tool['path']).read_bytes()).hexdigest()==tool['sha256'];cmd=p['candidate_'+mode+'_argv'];assert cmd[-1]==str(src) and cmd[0]==tool['path'];d=r/'SDK';d.mkdir(exist_ok=True)
if mode=='IR':assert (d/'resource_gate.exit').read_text().strip()=='0'
(r/('SDK_'+mode+'_command.json')).write_text(json.dumps({'argv':cmd,'source_SHA':x['device_SHA'],'attention_fullrefs':0},indent=2)+chr(10))
with (d/(mode+'.log')).open('w') as log:
 child=subprocess.Popen(cmd,stdout=log,stderr=subprocess.STDOUT);(d/(mode+'.pid')).write_text(str(child.pid)+chr(10));rc=child.wait()
(d/(mode+'_actual.exit')).write_text(str(rc)+chr(10));assert rc==0
if mode=='resource':
 raw=(d/'resource.log').read_text();a=re.search(r'Used\s+(\d+) MTregisters,\s*(\d+) STregisters,\s*(\d+) bytes shared mem',raw);w=re.search(r'staticMaxWarps/PEU\s*:\s*(\d+)',raw);s=re.search(r'(\d+) bytes stack frame',raw);assert a and w and s;res={'case':6,'source_SHA':x['device_SHA'],'MT':int(a[1]),'ST':int(a[2]),'staticmax':int(w[1]),'stack':int(s[1]),'staticshared':int(a[3]),'dynamicshared':8192,'occupancy':'NOT_MEASURED','attention_fullrefs':0};(d/'resource_result.json').write_text(json.dumps(res,indent=2)+chr(10));ok=res['MT']<90 and res['staticmax']>=5 and res['stack']==0;(d/'resource_gate.exit').write_text(str(0 if ok else 1)+chr(10));print('SDK_RESOURCE',res,flush=True);raise SystemExit(0 if ok else 1)
else:assert Path(cmd[-2]).exists();print('FIRST_CANDIDATE_IR',hashlib.sha256(Path(cmd[-2]).read_bytes()).hexdigest(),flush=True)
