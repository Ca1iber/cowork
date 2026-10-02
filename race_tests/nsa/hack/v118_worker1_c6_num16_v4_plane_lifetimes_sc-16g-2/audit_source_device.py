from pathlib import Path
import json,hashlib,subprocess,re
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v118_worker1_c6_num16_v4_plane_lifetimes_sc-16g-2');m=json.loads((r/'compile_source_manifest.json').read_text());d=json.loads((r/'metadata_pair.json').read_text());assert len(d['records'])==2 and d['NSA_attention_calls']==d['fullrefs']==0;rows={x['variant']:x for x in d['records']};assert rows['parent113']['device_SHA']==m['parent_C6_device']['sha256'];checks=[]
for label,x in rows.items():
 for k in ['device','host']:assert hashlib.sha256(Path(x[k+'_path']).read_bytes()).hexdigest()==x[k+'_SHA']
 dev=Path(x['device_path']).read_text();host=Path(x['host_path']).read_text();end=host.rfind('TVMFFIFunctionCall(native_sparse_attention_kernel_packed');start=host.rfind('(((TVMFFIAny*)stack_ffi_any)[0].v_ptr) = Indices;',0,end);assert 0<=start<end;seg=host[start:end];args=[]
 for j in range(5,11):
  lines=[l for l in seg.splitlines() if '['+str(j)+'].v_int64)' in l];assert len(lines)==1;args.append(int(re.search(r'int64_t\)([0-9]+)',lines[0])[1]))
 assert args==[1024,8,64,1,1,8192]
 cmd=[m['tools']['python']['path'],'-S',m['tools']['validator']['path'],m['sources'][label]['path'],'--generated-code',x['device_path']];p=subprocess.run(cmd,capture_output=True,text=True);(r/('static_'+label+'.log')).write_text(p.stdout+p.stderr);(r/('static_'+label+'.exit')).write_text(str(p.returncode)+chr(10));assert p.returncode==0
 if label=='candidate118':
  assert 'float numerator[16];' in dev and 'half_t v_operand[4];' in dev and 'half_t probabilities[8];' in dev;assert any('*(uint4*)' in l and 'Q +' in l for l in dev.splitlines()) and any('*(uint4*)' in l and 'K +' in l for l in dev.splitlines()) and any('*(uint4*)' in l and 'V +' in l for l in dev.splitlines()) and any('*(uint4*)' in l and 'Output +' in l for l in dev.splitlines());assert 'float scores[8];' in dev
 checks.append({'variant':label,'device_SHA':x['device_SHA'],'host_SHA':x['host_SHA'],'actual_launchargs':args,'Num16V4array_materialization':label=='candidate118','actual_lifetime_fullreview_required_afterIR':True})
(r/'device_shape_static_result.json').write_text(json.dumps({'checks':checks,'parent_f186_match':True,'parentresource_readonly_reuse':m['parent_C6_resource'],'compiled_CPP_not_physical_lifetime_or_correctness':True,'fullrefs':0},indent=2)+chr(10));(r/'device_shape_static.exit').write_text('0'+chr(10));print('DEVICE_STATIC_GATE',checks)
