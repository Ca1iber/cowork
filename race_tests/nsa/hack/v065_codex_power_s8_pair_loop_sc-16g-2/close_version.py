import csv,hashlib,json,subprocess
from pathlib import Path
root=Path('/root/tilelang-metax');p=root/'race_tests/nsa';v='v065_codex_power_s8_pair_loop_sc-16g-2';r=p/'rep'/v
sha=lambda f:hashlib.sha256(f.read_bytes()).hexdigest()
expected='f120d2d66df93c1f988158825c99435eb701a691ab5becc1753dfdecba28b06a'
assert sha(p/'submission'/v/'submission.py')==sha(Path('/tmp/nsa_power_v065_proven_bounds.py'))==expected
assert (p/'submission'/v/'submission.py').read_text().startswith('# codex-power v065\n')
assert sha(p/'submission.py')=='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
assert sha(p/'submission/v064_codex_power_s8_serial_loop_sc-16g-2/submission.py')=='575f2fa041acbfc1bf339f41b30f203d8b8f743ad2fded576a0db43da61beb67'
for name in ['codegen','oj_static','case12.resource','llvm_compile','llvm_dis','screen','paired_case12','confirmed_case12','archive_static']:assert (r/(name+'.exit')).read_text().strip()=='0',name
rows=list(csv.DictReader((r/'paired_case12_sc-16g-2.csv').open()));assert len(rows)==16 and all(x['status']=='PASS' for x in rows)
confirm=list(csv.DictReader((r/'confirmed_case12_sc-16g-2.csv').open()));assert len(confirm)==16 and all(x['status']=='PASS' for x in confirm)
assert (r/'target_confirmation_summary.json').exists()
report=(r/'report_sc-16g-2.md').read_text();assert report.count('## ')==7
s=json.loads((r/'paired_summary.json').read_text());assert s['status']=='inconclusive_incremental_signal_unresolved'
(r/'manifest.json').write_text(json.dumps({'version':v,'status':'inconclusive_incremental_signal_unresolved','source_sha256':expected,'correctness':'selected C12 screen1+initial16+confirmation16=33 full naive_nsa W10/R50 PASS','performance':s,'actual_partial_expansion_proof':json.loads((r/'backend_pair_loop_proof.json').read_text()),'skipped_gates':json.loads((r/'skipped_gates.json').read_text()),'main':'exact original v28 preserved','parent_v060':'preserved','diagnostic':'16static MMA sites+actual4group backedge; two native full runs have overlapped small incremental signal; no new profile'},indent=2)+'\n')
for d in ['experiments','hack','rep','submission']:(p/d/v/'.gitattributes').write_text('* -text -eol -diff\n*.patch -diff\n')
files=[f for d in ['experiments','hack','rep','submission'] for f in (p/d/v).rglob('*') if f.is_file() and f.name!='archive_sha256.json']
index={str(f.relative_to(root)):sha(f) for f in sorted(files)};(r/'archive_sha256.json').write_text(json.dumps(index,indent=2)+'\n')
assert all(sha(root/f)==h for f,h in index.items())
assert not subprocess.check_output(['git','diff','--cached','--name-only'],text=True).strip()
paths=[str((p/d/v).relative_to(root)) for d in ['experiments','hack','rep','submission']];subprocess.run(['git','add','-f']+paths,check=True)
staged=subprocess.check_output(['git','diff','--cached','--name-only'],text=True).splitlines();assert len(staged)==len(files)+1 and all(any(x.startswith(t+'/') for t in paths) for x in staged)
subprocess.run(['git','-c','core.whitespace=-blank-at-eof','diff','--cached','--check'],check=True);print('VERIFIED and staged',len(staged),'files; commit separately')
