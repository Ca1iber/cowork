import csv,hashlib,json,subprocess
from pathlib import Path
root=Path('/root/tilelang-metax');p=root/'race_tests/nsa';v='v055_codex_power_s1_four_row_planes_sc-16g-2';r=p/'rep'/v
expected='ad5ed9bcb96d725dee42867f265bf2ce41412fcc8d0bd39a2b50c3551e8efd89'
assert hashlib.sha256((p/'submission'/v/'submission.py').read_bytes()).hexdigest()==expected
assert hashlib.sha256(Path('/tmp/nsa_power_v055_four_row_planes.py').read_bytes()).hexdigest()==expected
assert hashlib.sha256((p/'submission.py').read_bytes()).hexdigest()=='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
assert hashlib.sha256((p/'submission/v049_codex_power_s1_cache_entry_sc-16g-2/submission.py').read_bytes()).hexdigest()=='92887321e3f4d8484d175ca5121eae971bd6bcb39a90dd90bc765f7435f4c68e'
for name in ['codegen','oj_static','case6.resource','llvm_compile','llvm_dis','screen','paired_case6','paired_all14','export_all14','all14_archive_static']:
 assert (r/(name+'.exit')).read_text().strip()=='0',name
for label in ['power_v055','parent_v049','baseline_v28']:
 assert (r/('mcprof_'+label)/'exit_code.txt').read_text().strip()=='0',label
assert json.loads((r/'mx_smi_sampler_summary.json').read_text())['exit_code']==0
report=(r/'report_sc-16g-2.md').read_text();assert report.count('## ')==7 and 'pending' not in report and 'terminal results pending' not in report
all14=json.loads((r/'paired_all14_summary.json').read_text());scope=json.loads((r/'mcprof_scope_checks.json').read_text())
manifest={'version':v,'status':'rejected_incremental_benefit_not_reproduced_and_no_regression_unverified','source_sha256':expected,'baseline_sha256':'42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd','entry_prefix_AST':'exact original v28 unchanged','compiled_cache':'code object only; no attention tensor content caching','native_correctness':'screen1+paired_target12+paired_all14_168=181 full reference PASS at unchanged W10/R50','native_source_path':'/tmp/nsa_power_v055_four_row_planes.py','archive_source':'identical bytes and SHA; no separate archive-native rerun after rejection','case6':all14['cases'][5],'untouched_device_sources':'13/13 byte-identical v28','positive_other_case_medians':[x['case'] for x in all14['cases'] if x['case']!=6 and x['candidate_vs_v28_pct']>0],'OJ':'not submitted; no no-regression claim or main promotion','mcProfiler_scope':scope,'mcProfiler_comparison':'inconclusive; all six launch footprints inconsistent','mcTracer':'not rerun after repeated prior timeouts; referenced prior raw v049 capture','ISA':'unavailable tool','Roofline':'actual sGPU roofs not calibrated','GPU_settings':'unchanged','main_submission':'exact original v28 preserved','independent_v049_oj_candidate':'preserved'}
(r/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
for d in ['experiments','hack','rep','submission']:(p/d/v/'.gitattributes').write_text('* -text -eol -diff\n*.patch -diff\n')
files=[f for d in ['experiments','hack','rep','submission'] for f in (p/d/v).rglob('*') if f.is_file() and f.name!='archive_sha256.json']
index={str(f.relative_to(root)):hashlib.sha256(f.read_bytes()).hexdigest() for f in sorted(files)}
(r/'archive_sha256.json').write_text(json.dumps(index,indent=2)+'\n')
assert all(hashlib.sha256((root/f).read_bytes()).hexdigest()==h for f,h in index.items())
assert not subprocess.check_output(['git','diff','--cached','--name-only'],text=True).strip()
paths=[str((p/d/v).relative_to(root)) for d in ['experiments','hack','rep','submission']]
subprocess.run(['git','add','-f']+paths,check=True)
staged=subprocess.check_output(['git','diff','--cached','--name-only'],text=True).splitlines()
assert len(staged)==len(files)+1 and all(any(f.startswith(x+'/') for x in paths) for f in staged)
subprocess.run(['git','-c','core.whitespace=-blank-at-eof','diff','--cached','--check'],check=True)
print('VERIFIED and staged',len(staged),'files; commit separately')
