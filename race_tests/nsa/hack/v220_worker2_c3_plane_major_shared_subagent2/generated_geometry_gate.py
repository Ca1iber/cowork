from pathlib import Path
import json,hashlib,re,subprocess
root=Path('/root/tilelang-metax');r=root/'race_tests/nsa/rep/v220_worker2_c3_plane_major_shared_subagent2'
assert json.loads((r/'metadata_observation/result.json').read_text())['gate']==0
rows=json.loads((r/'compiled_metadata_identity.json').read_text());assert len(rows)==2;results=[]
for d in rows:
 for key,sha in [('source_path','source_sha256'),('device_path','device_sha256'),('host_path','host_sha256')]:assert hashlib.sha256(Path(d[key]).read_bytes()).hexdigest()==d[sha]
 argv=['/opt/conda/bin/python','-S',str(root/'race_tests/nsa/hack/validate_oj_submission.py'),d['source_path'],'--generated-code',d['device_path']];stem=r/(d['variant']+'_generated_validator')
 with stem.with_suffix('.log').open('w') as log:p=subprocess.Popen(argv,stdout=log,stderr=subprocess.STDOUT);code=p.wait()
 stem.with_suffix('.exit').write_text(str(code)+'\n');assert code==0
 host=Path(d['host_path']).read_text();needle='TVMFFIFunctionCall(native_sparse_attention_kernel_packed';end=host.rfind(needle);assert end>=0
 # Bind only the final target-kernel call's argument setup, not reused whole-function slots.
 start=host.rfind('.v_ptr) = V;',0,end);assert start>=0;region=host[start:end]
 n=int(re.search(r'TVMFFIFunctionCall\(native_sparse_attention_kernel_packed,.*?, (\d+),',host[end:])[1]);assert n==11
 vals={}
 for i in range(5,n):
  a=re.findall(r'stack_ffi_any\)\['+str(i)+r'\]\.v_int64\) = \(\(int64_t\)(\d+)\);',region);assert len(a)==1,(i,a);vals[i]=int(a[0])
 launch=[vals[i] for i in range(5,n)];assert launch==[256,1,64,1,1,4096],launch
 results.append({'variant':d['variant'],'sourceSHA':d['source_sha256'],'CPP_SHA':d['device_sha256'],'hostSHA':d['host_sha256'],'generated_actualwait':code,'actual_launch':launch,'argument_setup_region_SHA':hashlib.sha256(region.encode()).hexdigest(),'wholehost_not_scanned':True})
(r/'generated_geometry_gate.json').write_text(json.dumps({'gate':0,'records':results},indent=2)+'\n');print(json.dumps(results),flush=True)
