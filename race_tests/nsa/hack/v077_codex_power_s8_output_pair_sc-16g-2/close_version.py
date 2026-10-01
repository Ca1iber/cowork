from pathlib import Path
import csv,hashlib,json,subprocess,datetime
root=Path('/root/tilelang-metax');p=root/'race_tests/nsa';v='v077_codex_power_s8_output_pair_sc-16g-2';r=p/'rep'/v;sha='dbaef6b0da5f503742805b07b802168d3f02e5c3aef1e8bffaddd909438d43de';base='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
for f in [p/'submission'/v/'submission.py',Path('/tmp/nsa_power_v077_proven_bounds.py')]:assert hashlib.sha256(f.read_bytes()).hexdigest()==sha
assert hashlib.sha256((p/'submission.py').read_bytes()).hexdigest()==base
assert hashlib.sha256((p/'submission/v076_codex_power_s1_v_hybrid_pack_sc-16g-2/submission.py').read_bytes()).hexdigest()=='d24e9391e40ae13191a35e0ee6ab13fe74f74538462eff25c005c0a40084674f'
assert json.loads((r/'metadata_memory_summary.json').read_text())['samples']>0
assert hashlib.sha256((p/'submission/v068_codex_power_s8_final_den_reduce_sc-16g-2/submission.py').read_bytes()).hexdigest()=='589d4ca2c5f82f97581cfb3f82eca96ad81c4c49b8624c60326eac0e34b14949'
assert hashlib.sha256((p/'submission/v064_codex_power_s8_serial_loop_sc-16g-2/submission.py').read_bytes()).hexdigest()=='575f2fa041acbfc1bf339f41b30f203d8b8f743ad2fded576a0db43da61beb67'
for n in ['codegen','oj_static','case12.resource','llvm_compile','llvm_dis','screen','paired_case12','paired_all14','paired_risk','export_all14','oj_static_all14','all14_archive_static','archive_native_all14','evidence_stage']:assert (r/(n+'.exit')).read_text().strip()=='0',n
for name,count in [('screen_case12_sc-16g-2.csv',1),('paired_case12_sc-16g-2.csv',12),('paired_all14_sc-16g-2.csv',168),('paired_risk_sc-16g-2.csv',96),('archive_native_all14_sc-16g-2.csv',14)]:
 rows=list(csv.DictReader((r/name).open()));assert len(rows)==count and all(x['status']=='PASS' for x in rows)
assert not json.loads((r/'machine_text_comparison.json').read_text())['text_sections_identical']
assert (r/'report_sc-16g-2.md').read_text().count('## ')==7
assert (r/'evidence_stage.exit').read_text().strip()=='0'
for label in ['power_v077','parent_v076']:assert (r/('mcprof_'+label)/'exit_code.txt').read_text().strip()=='0'
assert json.loads((r/'mx_smi_sampler_summary.json').read_text())['exit_code']==0
owned={'146808','147040','147041','147287','147616','148861','149271','149466','149721','150603','150604'};ps=subprocess.check_output(['ps','-eo','pid,pgid,comm'],text=True).splitlines();assert not [x for x in ps[1:] if x.split()[0] in owned or x.split()[1] in owned]
manifest={'version':v,'status':'inconclusive_no_regression_not_demonstrated_external_oj_pending','closed_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'start':json.loads((r/'start_identity.json').read_text()),'source_sha256':sha,'main_sha256':base,'native_reference_checks':'exact107candidate checks across14cases;291experimentincludingcontrols,verifiedrawlabels,W10R50','paired':json.loads((r/'paired_summary.json').read_text()),'codegen':json.loads((r/'codegen_analysis.json').read_text()),'integer_identity':json.loads((r/'output_pair_AST_proof.json').read_text()),'V_mapping_bank_model':json.loads((r/'output_pair_coordinate_model.json').read_text()),'mcProfiler':json.loads((r/'mcprof_summary.json').read_text()),'mcProfiler_scope':json.loads((r/'mcprof_scope_checks.json').read_text()),'machine_text':json.loads((r/'machine_text_comparison.json').read_text()),'skipped':{'full14_risk_OJ':'MT100/ST22,C12target2.306percentfaster;offcase1/3/4/10positive aftersingleconfirmation;not promoted','mcProfiler_mcTracer':'clear targetregression,fresh70 referenced,not current74 counters','ISA_decode':'unavailable;ELF section comparison is not disassembly','roofline':'actual sGPU roofs uncalibrated'},'cache':'code objects only,all attention content recomputed','promotion':'none;root v28 and pending64/68 unchanged','job_state':'known codegen/compiler/native groups terminal;no unowned kills'}
manifest['skipped']={'external_OJ':'not submitted,actualscorespending','mcTracer':'prior124/headeronly failure,no new timeline','ISA_decode':'unavailable;machine text is not disassembly','roofline':'actual sGPU roofs uncalibrated'}
manifest['full14']=json.loads((r/'paired_all14_summary.json').read_text())
manifest['risk_confirmation']=json.loads((r/'paired_risk_summary.json').read_text())
manifest['metadata_retry']={'initial_exit':137,'cause':'unproven,no beforememorysnapshot','initial_raw':'initial_export_exit137','new_mode':'14freshpercase/same3sources,42records','native_benchmark_changed':False,'memory':json.loads((r/'metadata_memory_summary.json').read_text())}
manifest['sameprocess_source_identity']=json.loads((r/'sameprocess_codegen_identity.json').read_text())

# Counts below distinguish the tested candidate from comparison/control modules.
count_rows=[];candidate_label='power_'+v.split('_')[0]
for table in sorted(r.glob('*.csv')):
 if not any(table.name.startswith(x) for x in ['screen_case','paired_case','paired_all14','paired_risk','archive_native_all14']):continue
 data=list(csv.DictReader(table.open()));assert data and all(x['status']=='PASS' for x in data)
 chosen=[x for x in data if x.get('variant')==candidate_label] if 'variant' in data[0] else data
 count_rows.append({'path':str(table),'experiment_checks_with_controls':len(data),'candidate_checks':len(chosen),'candidate_cases':sorted({int(x['case']) for x in chosen})})
count_scope={'candidate_label':candidate_label,'candidate_checks':sum(x['candidate_checks'] for x in count_rows),'experiment_checks_with_controls':sum(x['experiment_checks_with_controls'] for x in count_rows),'rows':count_rows}
manifest['reference_count_scope']=count_scope
if 'native_correctness' in manifest:manifest['native_correctness']=count_scope
if 'native_reference_checks' in manifest:manifest['native_reference_checks']=count_scope
(r/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n');(p/'submission'/v/'status.json').write_text(json.dumps({'status':manifest['status'],'archive_only':True,'sha256':sha,'source_checks':count_scope},indent=2)+'\n')
for d in ['experiments','hack','rep','submission']:(p/d/v/'.gitattributes').write_text('* -text -eol -diff\n*.patch -diff\n')
files=[f for d in ['experiments','hack','rep','submission'] for f in (p/d/v).rglob('*') if f.is_file() and f.name!='archive_sha256.json'];index={str(f.relative_to(root)):hashlib.sha256(f.read_bytes()).hexdigest() for f in sorted(files)};(r/'archive_sha256.json').write_text(json.dumps(index,indent=2)+'\n');assert all(hashlib.sha256((root/f).read_bytes()).hexdigest()==h for f,h in index.items())
assert not subprocess.check_output(['git','diff','--cached','--name-only'],text=True).strip();paths=[str((p/d/v).relative_to(root)) for d in ['experiments','hack','rep','submission']];subprocess.run(['git','add','-f']+paths,check=True)
selected=subprocess.check_output(['git','diff','--cached','--name-only'],text=True).splitlines();assert len(selected)==len(files)+1 and all(any(f.startswith(x+'/') for x in paths) for f in selected)
subprocess.run(['git','-c','core.whitespace=-blank-at-eof','diff','--cached','--check'],check=True);print('closed and staged',len(selected),'files;commit separate')
