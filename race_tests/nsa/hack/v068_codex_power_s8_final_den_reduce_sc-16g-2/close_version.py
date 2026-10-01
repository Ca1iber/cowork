import csv,hashlib,json,subprocess,datetime
from pathlib import Path
root=Path('/root/tilelang-metax');p=root/'race_tests/nsa';v='v068_codex_power_s8_final_den_reduce_sc-16g-2';r=p/'rep'/v
expected='589d4ca2c5f82f97581cfb3f82eca96ad81c4c49b8624c60326eac0e34b14949';baseline='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
assert hashlib.sha256((p/'submission'/v/'submission.py').read_bytes()).hexdigest()==expected
assert hashlib.sha256(Path('/tmp/nsa_power_v068_proven_bounds.py').read_bytes()).hexdigest()==expected
assert (p/'submission'/v/'submission.py').read_bytes().startswith(b'# codex-power v068\n')
assert hashlib.sha256((p/'submission.py').read_bytes()).hexdigest()==baseline
assert hashlib.sha256((p/'submission/v064_codex_power_s8_serial_loop_sc-16g-2/submission.py').read_bytes()).hexdigest()=='575f2fa041acbfc1bf339f41b30f203d8b8f743ad2fded576a0db43da61beb67'
assert hashlib.sha256((p/'submission/v060_codex_power_s1_output_pair_swap_sc-16g-2/submission.py').read_bytes()).hexdigest()=='f2885657714e93ce633699fdc6b61fe2549019554485f2533145315a78935fce'
assert hashlib.sha256((p/'submission/v049_codex_power_s1_cache_entry_sc-16g-2/submission.py').read_bytes()).hexdigest()=='92887321e3f4d8484d175ca5121eae971bd6bcb39a90dd90bc765f7435f4c68e'
for n in ['codegen','oj_static','case12.resource','llvm_compile','llvm_dis','screen','paired_case12','paired_all14','paired_risk','export_all14','oj_static_all14','all14_archive_static','archive_native_all14','evidence_stage']:
 assert (r/(n+'.exit')).read_text().strip()=='0',n
for label in ['power_v068','parent_v064','baseline_v28']:assert (r/('mcprof_'+label)/'exit_code.txt').read_text().strip()=='0',label
assert json.loads((r/'mx_smi_sampler_summary.json').read_text())['exit_code']==0
report=(r/'report_sc-16g-2.md').read_text();assert report.count('## ')==7 and 'DETAILS_PENDING' not in report
for name,count in [('screen_case12_sc-16g-2.csv',1),('paired_case12_sc-16g-2.csv',16),('paired_all14_sc-16g-2.csv',168),('paired_risk_sc-16g-2.csv',72),('archive_native_all14_sc-16g-2.csv',14)]:
 rows=list(csv.DictReader((r/name).open()));assert len(rows)==count and all(x['status']=='PASS' for x in rows),(name,len(rows))
all14=json.loads((r/'paired_all14_summary.json').read_text());risk=json.loads((r/'paired_risk_summary.json').read_text());scope=json.loads((r/'mcprof_scope_checks.json').read_text())
owned={'117088','117553','118699','119025','119223'}
ps=subprocess.check_output(['ps','-eo','pid,pgid,comm'],text=True).splitlines()
assert not [line for line in ps[1:] if line.split()[0] in owned or line.split()[1] in owned], 'known job still alive'
(r/'final_owned_job_check.txt').write_text('Known target/native/evidence/sampler groups terminal. Checked ps pid/pgid; no unowned jobs terminated.\n')
manifest={'version':v,'status':'inconclusive_no_regression_not_demonstrated_external_oj_pending','closed_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'source_sha256':expected,'baseline_sha256':baseline,'start_identity':json.loads((r/'start_identity.json').read_text()),'identity':json.loads((r/'pre_evidence_identity.json').read_text()),'native_correctness':'finalscreen1+target16+all14_168+risk72+archive14=271 full naive_nsa PASS W10/R50;initial debug1 kept separate','native_source':'/tmp/nsa_power_v068_proven_bounds.py','archive_source':str(p/'submission'/v/'submission.py'),'entry_prefix_AST':'exact original v28 unchanged','compiled_cache':'code objects only;all attention data recomputed','case6':all14['cases'][5],'case12':all14['cases'][11],'risk_confirmation':risk,'positive_off_cases_retained':[x['case'] for x in risk['cases'] if x['candidate_vs_v28_pct']>0],'OJ':'not submitted/pending; no score forecast;main remains v28','mcProfiler_scope_checks':scope,'mcProfiler_footprint_caution':'consistent footprints are necessary,not exclusive scope guarantee; achievedwaves raw is not occupancy','mechanism_proofs':['deferred_denominator_proof.json','den_reduction_only_AST_proof.json','normal_loop_hint_identity.json','hinted_den_cpp_proof.json','final_den_loop_backend_proof.json','denominator_work_model.json'],'debug_scope':'initial_auto_unrolled different SHA,code/resources/screen independently retained','mcTracer':'no new evidence: repeated earlier timeout124 with header-only raw trace;prior v049 raw paths referenced in report','ISA':'tool unavailable;LLVM and mxcc resources captured','Roofline':'sGPU attainable roofs uncalibrated,no normalized peak claim','GPU_settings':'unchanged','promotion':'none; preferred v064 pending archive unchanged;root exact v28','main_submission_hash':baseline}
(r/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
(p/'submission'/v/'status.json').write_text(json.dumps({'status':manifest['status'],'archive_only':True,'source_sha256':expected,'reference_checks':271,'main_submission_unchanged':True,'external_oj':'not submitted/pending'},indent=2)+'\n')
for d in ['experiments','hack','rep','submission']:(p/d/v/'.gitattributes').write_text('* -text -eol -diff\n*.patch -diff\n')
files=[f for d in ['experiments','hack','rep','submission'] for f in (p/d/v).rglob('*') if f.is_file() and f.name!='archive_sha256.json']
index={str(f.relative_to(root)):hashlib.sha256(f.read_bytes()).hexdigest() for f in sorted(files)}
(r/'archive_sha256.json').write_text(json.dumps(index,indent=2)+'\n');assert all(hashlib.sha256((root/f).read_bytes()).hexdigest()==sha for f,sha in index.items())
assert not subprocess.check_output(['git','diff','--cached','--name-only'],text=True).strip()
paths=[str((p/d/v).relative_to(root)) for d in ['experiments','hack','rep','submission']]
subprocess.run(['git','add','-f']+paths,check=True)
staged=subprocess.check_output(['git','diff','--cached','--name-only'],text=True).splitlines()
assert len(staged)==len(files)+1 and all(any(f.startswith(x+'/') for x in paths) for f in staged)
subprocess.run(['git','-c','core.whitespace=-blank-at-eof','diff','--cached','--check'],check=True)
print('VERIFIED and staged',len(staged),'files; main v28 and parent64 unchanged;commit separately')
