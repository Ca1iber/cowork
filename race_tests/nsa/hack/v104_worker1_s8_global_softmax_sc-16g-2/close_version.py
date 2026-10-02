from pathlib import Path
import hashlib,json,csv,subprocess,datetime
root=Path('/root/tilelang-metax');p=root/'race_tests/nsa';v='v104_worker1_s8_global_softmax_sc-16g-2';r=p/'rep'/v;sha='27f6021b1edcdd3d48d8f8e7b0182492b8a3607b6ce0e7e28c8097bd6ec20e07';parent='4c674c79e4128f3c9f233fa6694c1a8f825d1048293accd9250fb5e2d86472b0';base='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
for f,digest in [(p/'submission.py',base),(p/'submission/v084_codex_power_s1_d32_d128_pair_sc-16g-2/submission.py',parent),(p/'submission'/v/'submission.py',sha),(Path('/tmp/nsa_power_v104_global_softmax.py'),sha)]:assert hashlib.sha256(f.read_bytes()).hexdigest()==digest
for n in ['initial_static','precompile','precompile_resources','precompile_resource_command','precompile_static','precompile_stage','archive_static','diagnostic','formal/diagnostic','metadata_all14/stage','codegen_all14_identity']:assert (r/(n+'.exit')).read_text().strip()=='0',n
selected=json.loads((r/'formal_positive_cases_for_risk.json').read_text())['cases']
if selected:assert (r/'risk/diagnostic.exit').read_text().strip()=='0'
assert (r/'report_sc-16g-2.md').read_text().count('## ')==7
counts=json.loads((r/'reference_count_scope.json').read_text());assert counts['candidate_total_full_refs']==60+4*len(selected) and counts['inclusive_total_full_refs']==180+12*len(selected)
results=[json.loads((r/x).read_text()) for x in ['diagnostic_result.json','formal/diagnostic_result.json']]
if selected:results.append(json.loads((r/'risk/diagnostic_result.json').read_text()))
owned=set();actual_candidate=0;actual_total=0
for result in results:
 assert result['runtime_protocol_completed']
 for job in result['all_jobs']:
  assert job['native_exit']==0 and job['stop_reason'] is None;owned.update([str(job['pid']),str(job['pgid'])]);rows=list(csv.DictReader(Path(job['csv']).open()));assert len(rows)==1 and rows[0]['status']=='PASS' and int(rows[0]['case'])==job['case'];actual_total+=1;actual_candidate+=job['variant']=='power_v104'
assert actual_candidate==counts['candidate_total_full_refs'] and actual_total==counts['inclusive_total_full_refs']
for f in r.rglob('*.pid'):
 if f.read_text().strip().isdigit():owned.add(f.read_text().strip())
ps=subprocess.check_output(['ps','-eo','pid,ppid,pgid,state,comm'],text=True).splitlines();live=[x for x in ps[1:] if (x.split()[0] in owned or x.split()[1] in owned or x.split()[2] in owned) and x.split()[3]!='Z'];assert not live,live
assert (p/'rep/v101_worker1_s2_fixed_selection_sc-16g-2/target_screen.exit').read_text().strip()=='137'
for name in ['runtime_final.json','UNAVAILABLE.md','final_resource_summary.json','mcprof_analysis_result.json']:assert (r/name).is_file(),name
status=json.loads((r/'performance_status.json').read_text());manifest={'version':v,'status':status['status'],'closed_UTC':datetime.datetime.now(datetime.timezone.utc).isoformat(),'source_sha256':sha,'parent_sha256':parent,'main_sha256':base,'source_identity':json.loads((r/'source_identity.json').read_text()),'native_reference_counts':counts,'formal_all14':json.loads((r/'formal_all14_summary.json').read_text()),'risk_cases':selected,'risk':json.loads((r/'risk_summary.json').read_text()) if selected else None,'codegen_identity':json.loads((r/'codegen_all14_identity_checks.json').read_text()),'compiler_resources':json.loads((r/'final_resource_summary.json').read_text()),'counter_analysis':json.loads((r/'mcprof_analysis_result.json').read_text()),'runtime_final':json.loads((r/'runtime_final.json').read_text()),'old_v101_exit137_preserved':True,'all_positive_deltas_and_outliers_retained':True,'samecode_not_performance_waiver':True,'OJ':None,'main_promotion':False};(r/'manifest.json').write_text(json.dumps(manifest,indent=2)+chr(10))
for d in ['experiments','hack','rep','submission']:(p/d/v/'.gitattributes').write_text('* -text -eol -diff'+chr(10)+'*.patch -diff'+chr(10))
files=[f for d in ['experiments','hack','rep','submission'] for f in (p/d/v).rglob('*') if f.is_file() and f.name!='archive_sha256.json'];index={str(f.relative_to(root)):hashlib.sha256(f.read_bytes()).hexdigest() for f in sorted(files)};(r/'archive_sha256.json').write_text(json.dumps(index,indent=2)+chr(10));assert all(hashlib.sha256((root/f).read_bytes()).hexdigest()==digest for f,digest in index.items());assert not subprocess.check_output(['git','diff','--cached','--name-only'],cwd=root,text=True).strip();paths=[str((p/d/v).relative_to(root)) for d in ['experiments','hack','rep','submission']];subprocess.run(['git','add','-f']+paths,cwd=root,check=True);staged=subprocess.check_output(['git','diff','--cached','--name-only'],cwd=root,text=True).splitlines();assert len(staged)==len(files)+1 and all(any(f.startswith(x+'/') for x in paths) for f in staged);subprocess.run(['git','-c','core.whitespace=-blank-at-eof','diff','--cached','--check'],cwd=root,check=True);print('CLOSED_STAGED',len(staged),'candidate_refs',actual_candidate,'inclusive_refs',actual_total,'status',status['status'])
