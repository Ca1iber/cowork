from pathlib import Path
import json,hashlib,subprocess,re
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v113_worker1_s4_global_softmax_sc-16g-2');m=json.loads((r/'metadata_source_manifest.json').read_text());checks=[]
for label in ['power_v104','power_v113']:
 data=json.loads((r/('metadata_'+label+'.json')).read_text());assert len(data['records'])==1 and data['NSA_attention_calls']==data['full_reference_checks']==0;x=data['records'][0];assert x['case']==11 and x['hook_count_in_case']==1
 for k in ['device','host']:assert hashlib.sha256(Path(x[k+'_path']).read_bytes()).hexdigest()==x[k+'_sha256']
 cmd=[m['tools']['python']['path'],'-S',m['tools']['validator']['path'],m['sources'][label]['path'],'--generated-code',x['device_path']];p=subprocess.run(cmd,capture_output=True,text=True);(r/('static_'+label+'.log')).write_text(p.stdout+p.stderr);(r/('static_'+label+'.exit')).write_text(str(p.returncode)+chr(10));assert p.returncode==0
 s=Path(x['device_path']).read_text();assert s.count('__syncwarp();')==7 and '__syncthreads' not in s and '__launch_bounds__(64, 1)' in s
 sites={a:next(l for l in s.splitlines() if '*('+a+'*)' in l and ' = *(' in l and 'V +' in l) if a=='uint2' else '' for a in ['uint2']};assert any('*(uint4*)' in l and 'Q +' in l for l in s.splitlines());assert any('*(uint4*)' in l and 'K +' in l for l in s.splitlines());assert any('*(uint4*)' in l and 'Output +' in l for l in s.splitlines());assert sites['uint2']
 if label=='power_v104':assert x['device_sha256']==m['existing_parent_C11_device']['sha256']
 else:assert 'float scores[16];' in s and 'half_t probabilities[16];' in s and 'float numerator[16];' in s
 checks.append({'label':label,'case':11,'device_sha256':x['device_sha256'],'host_sha256':x['host_sha256'],'source_global_vectorwidths_Q16_K16_V8_O16':True,'warp_sync_sites':7,'not_hardware_transactions_or_numeric_pass':True})
(r/'codegen_identity_result.json').write_text(json.dumps({'checks':checks,'parent_identical_v111':True,'NSA_attention_calls':0,'full_reference_checks':0},indent=2)+chr(10));(r/'codegen_identity.exit').write_text('0'+chr(10));print('CODEGEN_C11_SCOPE',checks)
