import hashlib,json,re,subprocess
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');v='v077_codex_power_s8_output_pair_sc-16g-2';r=root/'rep'/v
index=json.loads((r/'all14_codegen_index.json').read_text());records=index['records'];out=[]
assert index['sources']['power_v077']=='dbaef6b0da5f503742805b07b802168d3f02e5c3aef1e8bffaddd909438d43de'
for case in range(1,15):
 b=next(x for x in records if x['case']==case and x['variant']=='baseline_v28')
 c=next(x for x in records if x['case']==case and x['variant']=='power_v077')
 assert b['stage']==c['stage']==1
 same=b['device_sha256']==c['device_sha256']
 if case not in (6,12):assert same,(case,'unexpected fallback code difference')
 parent_file=Path(next(x['device_path'] for x in records if x['case']==case and x['variant']=='parent_v076'))
 parent_same=hashlib.sha256(parent_file.read_bytes()).hexdigest()==c['device_sha256']
 if case!=12:assert parent_same,(case,'unexpected parent code difference')
 out.append({'case':case,'identical_device_CPP_to_v28':same,'identical_device_CPP_to_v076':parent_same,'timing_gate':'source identity does not waive performance or OJ regression'})
(r/'all14_codegen_comparison.json').write_text(json.dumps(out,indent=2)+'\n')
cpps=[x['device_path'] for x in records];cmd=['/opt/conda/bin/python',str(root/'hack/validate_oj_submission.py'),'/tmp/nsa_power_v077_proven_bounds.py']
for f in cpps:cmd+=['--generated-code',f]
x=subprocess.run(cmd,capture_output=True,text=True);(r/'oj_static_all14.log').write_text(x.stdout+x.stderr);(r/'oj_static_all14.exit').write_text(str(x.returncode)+'\n');assert x.returncode==0,x.stdout+x.stderr
print(out);print(x.stdout)
