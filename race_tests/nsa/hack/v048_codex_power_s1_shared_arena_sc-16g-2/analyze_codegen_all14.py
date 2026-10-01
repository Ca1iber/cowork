from pathlib import Path
import ast,hashlib,json,re,subprocess
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v048_codex_power_s1_shared_arena_sc-16g-2');root=r.parents[1]
d=json.loads((r/'all14_codegen_index.json').read_text());rows=[]
for case in range(1,15):
 a=[x for x in d['records'] if x['case']==case and x['variant']=='baseline_v28'];b=[x for x in d['records'] if x['case']==case and x['variant']=='power_v048']
 assert len(a)==len(b)==1
 same=a[0]['device_sha256']==b[0]['device_sha256'];assert same==(case!=6)
 rows.append({'case':case,'same_device_source':same,'baseline_stages':len(a),'candidate_stages':len(b)})
(r/'all14_codegen_comparison.json').write_text(json.dumps(rows,indent=2)+'\n')
for label,source in [('baseline_v28','/tmp/nsa_export_v048_baseline.py'),('power_v048','/tmp/nsa_power_v048_shared_arena.py')]:
 args=['python',str(root/'hack/validate_oj_submission.py'),source]
 for x in d['records']:
  if x['variant']==label:args+=['--generated-code',x['device_path']]
 with (r/('all14_static_'+label+'.log')).open('w') as f:result=subprocess.run(args,stdout=f,stderr=subprocess.STDOUT)
 (r/('all14_static_'+label+'.exit')).write_text(str(result.returncode)+'\n');assert result.returncode==0
baseline=subprocess.check_output(['git','show','39ff49e7b:race_tests/nsa/submission.py'],text=True);tree=ast.parse(baseline);f=next(x for x in tree.body if isinstance(x,ast.FunctionDef) and x.name=='run_kernel')
meta={'baseline_source_sha256':hashlib.sha256(baseline.encode()).hexdigest(),'host_cache_prefix':[ast.unparse(x) for x in f.body[:2]],'cache_key':'B,seq_len,H,HQ,D,S,block_size,bool(is_causal)','note':'Interface metadata only; kernel algorithm bodies not inspected. Candidate adds a per-call branch before this cache. Next version can prefill code-object cache at import; no tensor contents may be preprocessed/cached.'}
(r/'host_cache_interface.json').write_text(json.dumps(meta,indent=2)+'\n')
print('all14 source/generated static PASS;13 fallback device sources identical')
