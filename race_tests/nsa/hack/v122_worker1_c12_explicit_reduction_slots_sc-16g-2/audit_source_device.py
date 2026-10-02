from pathlib import Path
import json,hashlib,subprocess,re
from audit_actual_shared import audit_actual_shared
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v122_worker1_c12_explicit_reduction_slots_sc-16g-2');m=json.loads((r/'compile_source_manifest.json').read_text());p=json.loads((r/'compile_execution_plan.json').read_text());d=json.loads((r/'metadata_pair.json').read_text());assert len(d['records'])==2 and d['NSA_attention_calls']==d['fullrefs']==0;rows={x['variant']:x for x in d['records']};assert rows['parent113']['device_SHA']==m['parent_C12_device']['sha256'];checks=[]
for label,x in rows.items():
 for k in ['device','host']:assert hashlib.sha256(Path(x[k+'_path']).read_bytes()).hexdigest()==x[k+'_SHA']
 dev=Path(x['device_path']).read_text();host=Path(x['host_path']).read_text();end=host.rfind('TVMFFIFunctionCall(native_sparse_attention_kernel_packed');start=host.rfind('(((TVMFFIAny*)stack_ffi_any)[0].v_ptr) = Indices;',0,end);assert 0<=start<end;seg=host[start:end];args=[]
 for j in range(5,11):
  lines=[l for l in seg.splitlines() if '['+str(j)+'].v_int64)' in l];assert len(lines)==1;args.append(int(re.search(r'int64_t\)([0-9]+)',lines[0])[1]))
 if label=='candidate122':assert args[:5]==p['candidate_geometry_prefix'] and args[5]>0
 else:assert args==p['parent_geometry']
 cmd=[m['tools']['python']['path'],'-S',m['tools']['validator']['path'],m['sources'][label]['path'],'--generated-code',x['device_path']]
 with (r/('static_'+label+'.log')).open('w') as log:child=subprocess.Popen(cmd,stdout=log,stderr=subprocess.STDOUT);code=child.wait()
 (r/('static_'+label+'.exit')).write_text(str(code)+chr(10));assert code==0
 if label=='candidate122':
  body=dev[dev.index('extern "C" __global__'):];assert body.count('__syncthreads()')==4
  actual=audit_actual_shared(x['device_path'],args[5]);(r/'actual_shared_materialization.json').write_text(json.dumps(actual,indent=2)+chr(10))
  assert 'float numerator[16];' in body and 'half_t probabilities[16];' in body and 'float scores[16];' in body
  for name in ['Q','K','Output']:assert any('*(uint4*)' in line and name+' +' in line for line in body.splitlines()),name
  assert any('*(uint2*)' in line and 'V +' in line for line in body.splitlines())
 checks.append({'variant':label,'device_SHA':x['device_SHA'],'host_SHA':x['host_SHA'],'actual_launchargs':args,'static_validator_actual_wait':code,'manual_actual_CPP_IR_barrier_math_lifetime_review_pending':True,'actual_shared_bytes':args[5]})
(r/'device_shape_static_result.json').write_text(json.dumps({'checks':checks,'parent388_match':True,'fullrefs':0},indent=2)+chr(10));(r/'device_shape_static.exit').write_text('0'+chr(10));print('SOURCE_DEVICE_STATIC',checks,flush=True)
