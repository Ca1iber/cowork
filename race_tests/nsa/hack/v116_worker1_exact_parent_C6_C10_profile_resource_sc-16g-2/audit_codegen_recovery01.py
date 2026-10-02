from pathlib import Path
import json,hashlib,subprocess,re
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v116_worker1_exact_parent_C6_C10_profile_resource_sc-16g-2');m=json.loads((r/'source_manifest.json').read_text());checks=[];geometries={6:[1024,8,64,1,1,8192],10:[256,1,64,1,1,2048]};records={}
for label in ['parent_v084','power_v113']:
 d=json.loads((r/('metadata_'+label+'.json')).read_text());assert len(d['records'])==2 and [x['case'] for x in d['records']]==[6,10] and d['NSA_attention_calls']==d['full_reference_checks']==0
 for x in d['records']:
  ci=x['case'];assert x['hook_count_in_case']==1
  for k in ['device','host']:assert hashlib.sha256(Path(x[k+'_path']).read_bytes()).hexdigest()==x[k+'_sha256']
  dev=Path(x['device_path']).read_text();host=Path(x['host_path']).read_text();call=host.rfind('TVMFFIFunctionCall(native_sparse_attention_kernel_packed');start=host.rfind('(((TVMFFIAny*)stack_ffi_any)[0].v_ptr) = Indices;',0,call);assert 0<=start<call;launch_host=host[start:call];args=[]
  for j in range(5,11):
   lines=[l for l in launch_host.splitlines() if '['+str(j)+'].v_int64)' in l];assert len(lines)==1;number=re.search(r'int64_t\)([0-9]+)',lines[0]);assert number;args.append(int(number[1]))
  assert args==geometries[ci] and '__launch_bounds__(64, 1)' in dev
  cmd=[m['tools']['python']['path'],'-S',m['tools']['validator']['path'],m['sources'][label]['path'],'--generated-code',x['device_path']];p=subprocess.run(cmd,capture_output=True,text=True);(r/('static_'+label+'_case'+str(ci)+'.log')).write_text(p.stdout+p.stderr);(r/('static_'+label+'_case'+str(ci)+'.exit')).write_text(str(p.returncode)+chr(10));assert p.returncode==0
  if label=='parent_v084':assert x['device_sha256']==m['existing_parent_devices'][str(ci)]['sha256']
  records[label,ci]=x;checks.append({'label':label,'case':ci,'device_SHA':x['device_sha256'],'host_SHA':x['host_sha256'],'actual_host_launch_args_5_to10':args,'host_grid_contract_not_runtime_launch_proof':True})
for ci in [6,10]:
 p=records['parent_v084',ci];c=records['power_v113',ci];assert Path(p['device_path']).read_bytes()==Path(c['device_path']).read_bytes();assert Path(p['host_path']).read_bytes()==Path(c['host_path']).read_bytes()
(r/'codegen_identity_recovery01_result.json').write_text(json.dumps({'checks':checks,'actualdevice_host_byteidentity_C6_C10':True,'resource_reuse_requires_actualsameCPP':True,'no_performance_positive_waiver':True,'NSA_attention_calls':0,'full_reference_checks':0},indent=2)+chr(10));(r/'codegen_identity_recovery01.exit').write_text('0'+chr(10));print('C6C10_EXACT_IDENTITY_GATE',checks)
