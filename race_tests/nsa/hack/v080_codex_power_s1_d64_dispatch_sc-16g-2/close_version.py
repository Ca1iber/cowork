from pathlib import Path
import csv,hashlib,json,subprocess,datetime
root=Path('/root/tilelang-metax');p=root/'race_tests/nsa';v='v080_codex_power_s1_d64_dispatch_sc-16g-2';r=p/'rep'/v;sha='31a6d042336de68ab75c4be3e1777089324490d639ac3021c90381c268a714a1';base='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
for f in [p/'submission'/v/'submission.py',Path('/tmp/nsa_power_v080_dispatch.py')]:assert hashlib.sha256(f.read_bytes()).hexdigest()==sha
assert hashlib.sha256((p/'submission.py').read_bytes()).hexdigest()==base
prior={'v079_codex_power_s1_case4_dense_sc-16g-2':'98ac1b75839e8e3ae49d2de3345ce64779211af0c2aebe30751d1593a084a2fb','v077_codex_power_s8_output_pair_sc-16g-2':'dbaef6b0da5f503742805b07b802168d3f02e5c3aef1e8bffaddd909438d43de','v076_codex_power_s1_v_hybrid_pack_sc-16g-2':'d24e9391e40ae13191a35e0ee6ab13fe74f74538462eff25c005c0a40084674f','v068_codex_power_s8_final_den_reduce_sc-16g-2':'589d4ca2c5f82f97581cfb3f82eca96ad81c4c49b8624c60326eac0e34b14949','v064_codex_power_s8_serial_loop_sc-16g-2':'575f2fa041acbfc1bf339f41b30f203d8b8f743ad2fded576a0db43da61beb67'}
for ident,digest in prior.items():assert hashlib.sha256((p/'submission'/ident/'submission.py').read_bytes()).hexdigest()==digest
for n in ['target_screen','formal_all14','formal_static42','risk','archive_static','archive_recovery','profile_analysis','resources','evidence_after_recovery','mx_smi_sampler']:assert (r/(n+'.exit')).read_text().strip()=='0',n
for label in ['power_v080','parent_v079']:assert (r/('mcprof_'+label)/'exit_code.txt').read_text().strip()=='0'
assert all(x['consistent_with_single_attention_launch_scope'] for x in json.loads((r/'mcprof_scope_checks.json').read_text()))
assert (r/'report_sc-16g-2.md').read_text().count('## ')==7
risk=json.loads((r/'risk_selection.json').read_text())['cases'];counts=[]
# These four merged files contain each native invocation exactly once.
for name,n in [('target_screen_sc-16g-2.csv',84),('formal_all14_sc-16g-2.csv',168),('risk_sc-16g-2.csv',12*len(risk)),('archive_native_all14_sc-16g-2.csv',14)]:
 if n==0:continue
 rows=list(csv.DictReader((r/name).open()));assert len(rows)==n and all(x['status']=='PASS' for x in rows)
 chosen=[x for x in rows if x.get('variant')=='power_v080'] if 'variant' in rows[0] else rows
 counts.append({'file':name,'candidate_checks':len(chosen),'experiment_checks_with_controls':len(rows),'candidate_cases':sorted({int(x['case']) for x in chosen})})
count_scope={'candidate_label':'power_v080','candidate_checks':sum(x['candidate_checks'] for x in counts),'experiment_checks_with_controls':sum(x['experiment_checks_with_controls'] for x in counts),'rows':counts,'duplicate_policy':'percase CSVs are same invocations as merged CSV; excluded from count'}
assert count_scope['candidate_checks']==98+4*len(risk);assert count_scope['experiment_checks_with_controls']==266+12*len(risk)
(r/'reference_count_scope.json').write_text(json.dumps(count_scope,indent=2)+'\n')
assert (r/'archive_native_all14.exit').read_text().strip()=='137'
manifest={'archive_recovery':json.loads((r/'archive_recovery_plan.json').read_text()),'recovery_memory':json.loads((r/'archive_recovery_memory_summary.json').read_text()),'version':v,'status':'inconclusive_no_regression_not_demonstrated_external_oj_pending','closed_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'start':json.loads((r/'start_identity.json').read_text()),'source_sha256':sha,'main_sha256':base,'source_identity':json.loads((r/'source_identity.json').read_text()),'native_reference_checks':count_scope,'screen':json.loads((r/'target_screen_summary.json').read_text()),'formal':json.loads((r/'formal_all14_summary.json').read_text()),'risk':json.loads((r/'risk_summary.json').read_text()),'codegen_comparison':json.loads((r/'formal_codegen_comparison.json').read_text()),'resources':json.loads((r/'resource_capture.json').read_text()),'resource_summary':json.loads((r/'resource_summary.json').read_text()),'shared_inputs_identity':json.loads((r/'shared_inputs_identity.json').read_text()),'mcProfiler':json.loads((r/'mcprof_summary.json').read_text()),'mcProfiler_scope':json.loads((r/'mcprof_scope_checks.json').read_text()),'cache':'code objects only, key-only first closure replaced by actual JITKernel; all data recomputed','promotion':'none; archive candidate only; main originalv28 unchanged','skipped':{'external_OJ':'not submitted; fullscorespending','mcTracer':'prior timeout124/headeronly, no new timeline','ISA':'no working decoder; no disassembly claim','roofline':'actual sGPU roofs uncalibrated'}}
(r/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n');(p/'submission'/v/'status.json').write_text(json.dumps({'status':manifest['status'],'archive_only':True,'sha256':sha,'native_reference_checks':count_scope},indent=2)+'\n')
print('closure metadata ready',count_scope['candidate_checks'],count_scope['experiment_checks_with_controls'])

# Both native and auxiliary pipeline groups must be terminal before inventory/staging.
owned={'166081','167911','171290','171411'}
for n in ['profile.pid']:
 if (r/n).exists():owned.add((r/n).read_text().strip())
ps=subprocess.check_output(['ps','-eo','pid,ppid,pgid,comm'],text=True).splitlines();assert not [x for x in ps[1:] if x.split()[0] in owned or x.split()[1] in owned or x.split()[2] in owned]
for d in ['experiments','hack','rep','submission']:(p/d/v/'.gitattributes').write_text('* -text -eol -diff\n*.patch -diff\n')
files=[f for d in ['experiments','hack','rep','submission'] for f in (p/d/v).rglob('*') if f.is_file() and f.name!='archive_sha256.json'];index={str(f.relative_to(root)):hashlib.sha256(f.read_bytes()).hexdigest() for f in sorted(files)};(r/'archive_sha256.json').write_text(json.dumps(index,indent=2)+'\n');assert all(hashlib.sha256((root/f).read_bytes()).hexdigest()==digest for f,digest in index.items())
assert not subprocess.check_output(['git','diff','--cached','--name-only'],text=True).strip();paths=[str((p/d/v).relative_to(root)) for d in ['experiments','hack','rep','submission']];subprocess.run(['git','add','-f']+paths,check=True)
selected=subprocess.check_output(['git','diff','--cached','--name-only'],text=True).splitlines();assert len(selected)==len(files)+1 and all(any(f.startswith(x+'/') for x in paths) for f in selected)
subprocess.run(['git','-c','core.whitespace=-blank-at-eof','diff','--cached','--check'],check=True);print('closed/staged',len(selected),'files; commit separately')
