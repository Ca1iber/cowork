from pathlib import Path
import csv,hashlib,json,subprocess,datetime
from decimal import Decimal
root=Path('/root/tilelang-metax');p=root/'race_tests/nsa';v='v084_codex_power_s1_d32_d128_pair_sc-16g-2';r=p/'rep'/v;sha='4c674c79e4128f3c9f233fa6694c1a8f825d1048293accd9250fb5e2d86472b0';base='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
for f in [p/'submission'/v/'submission.py',Path('/tmp/nsa_power_v084_pair.py')]:assert hashlib.sha256(f.read_bytes()).hexdigest()==sha
assert hashlib.sha256((p/'submission.py').read_bytes()).hexdigest()==base
prior={'v081_codex_power_s24_lazy_dispatch_sc-16g-2':'5d972adf74e54b7c9a1e7c546f85bde7c44fb9c335391d5fa9b4ca9d454c3d43','v082_codex_power_s1_d128_dense_sc-16g-2':'6d8b91f405043ddc4e26e515a54e894cb5e64b1c5c2a5fb9cb8428148f204616','v083_codex_power_s1_d32_register_sc-16g-2':'e89c6893b737962cec1ea25518f384e5b6241dbaa909a9483545daa2d4440f98','v080_codex_power_s1_d64_dispatch_sc-16g-2':'31a6d042336de68ab75c4be3e1777089324490d639ac3021c90381c268a714a1','v079_codex_power_s1_case4_dense_sc-16g-2':'98ac1b75839e8e3ae49d2de3345ce64779211af0c2aebe30751d1593a084a2fb','v077_codex_power_s8_output_pair_sc-16g-2':'dbaef6b0da5f503742805b07b802168d3f02e5c3aef1e8bffaddd909438d43de','v076_codex_power_s1_v_hybrid_pack_sc-16g-2':'d24e9391e40ae13191a35e0ee6ab13fe74f74538462eff25c005c0a40084674f'}
for ident,digest in prior.items():assert hashlib.sha256((p/'submission'/ident/'submission.py').read_bytes()).hexdigest()==digest
for n in ['initial_static','target_screen','target_static6','target_confirm','confirm_static3','formal_all14','formal_static42','risk','archive_static','archive_native_all14','profile_analysis','resources','post_formal','mx_smi_sampler']:assert (r/(n+'.exit')).read_text().strip()=='0',n
for ci in [1,3]:
 for label in ['power_v084','parent_v081']:assert (r/('mcprof_case'+str(ci)+'_'+label)/'exit_code.txt').read_text().strip()=='0'
assert all(x['consistent_with_single_attention_launch_scope'] for x in json.loads((r/'mcprof_scope_checks.json').read_text()))
assert (r/'report_sc-16g-2.md').read_text().count('## ')==7
risk=json.loads((r/'risk_selection.json').read_text())['cases'];counts=[]
for name,n in [('target_screen_sc-16g-2.csv',24),('confirm_case1_sc-16g-2.csv',12),('formal_all14_sc-16g-2.csv',168),('risk_sc-16g-2.csv',12*len(risk)),('archive_native_all14_sc-16g-2.csv',14)]:
 if not n:continue
 rows=list(csv.DictReader((r/name).open()));assert len(rows)==n and all(x['status']=='PASS' for x in rows);chosen=[x for x in rows if x.get('variant')=='power_v084'] if 'variant' in rows[0] else rows;counts.append({'file':name,'candidate_checks':len(chosen),'experiment_checks_with_controls':len(rows),'candidate_cases':sorted({int(x['case']) for x in chosen})})
count_scope={'candidate_label':'power_v084','candidate_checks':sum(x['candidate_checks'] for x in counts),'experiment_checks_with_controls':sum(x['experiment_checks_with_controls'] for x in counts),'rows':counts,'duplicate_policy':'merged only; percase copies excluded;  metadata/cold/profile excluded'};assert count_scope['candidate_checks']==82+4*len(risk);assert count_scope['experiment_checks_with_controls']==218+12*len(risk);(r/'reference_count_scope.json').write_text(json.dumps(count_scope,indent=2)+'\n')

# Validate exact archived source artifacts after all native phases, with separate paths.
for phase,ids in [('target',[1,3]),('confirm',[1]),('formal',list(range(1,15))),('risk',risk)]:
 for ci in ids:
  info=json.loads((r/(phase+'_case'+str(ci)+'_codegen.json')).read_text())
  for x in info['records']:assert hashlib.sha256(Path(x['device_path']).read_bytes()).hexdigest()==x['device_sha256']
manifest={'version':v,'status':'oj_user_reported_improvement_vs_v28_local_parent_deltas_retained','closed_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'start':json.loads((r/'start_identity.json').read_text()),'runtime_final':json.loads((r/'runtime_final.json').read_text()),'source_sha256':sha,'main_sha256':base,'source_identity':json.loads((r/'source_identity.json').read_text()),'shared_inputs_identity':json.loads((r/'shared_inputs_identity.json').read_text()),'native_reference_checks':count_scope,'screen':json.loads((r/'target_screen_summary.json').read_text()),'formal':json.loads((r/'formal_all14_summary.json').read_text()),'risk':json.loads((r/'risk_summary.json').read_text()),'codegen_comparison':json.loads((r/'formal_codegen_comparison.json').read_text()),'resources':json.loads((r/'resource_summary.json').read_text()),'mcProfiler':json.loads((r/'mcprof_summary.json').read_text()),'mcProfiler_scope':json.loads((r/'mcprof_scope_checks.json').read_text()),'target_confirmation':json.loads((r/'target_confirm_summary.json').read_text()),'WG_raw_metric_context':json.loads((r/'WG_raw_metric_context.json').read_text()),'profile_scope_contract':json.loads((r/'profile_scope_contract.json').read_text()),'codegen_phase_paths_separate':True,'cache':'compiledcode only;key+factory closures replaced by actualJITKernel during first normal attention call','promotion':'none; exact candidate archive only; originalv28 main unchanged','skipped':{'external_OJ_source_attestation':'user screenshot supplied; uploaded source SHA not independently attested','mcTracer':'prior timeout124/headeronly, no new timeline','ISA':'no working decoder','roofline':'actual sGPU roofs uncalibrated'}}
losses=[x for x in manifest['risk']['cases'] if Decimal(x['vs_v28_pct'])>0]
if losses:manifest['status']='rejected_local_regression_external_oj_pending'
manifest['confirmed_losses_vs_v28']=losses
manifest['OJ_user_reported_evidence']=json.loads((r/'OJ_user_reported_scores.json').read_text())
assert manifest['OJ_user_reported_evidence']['casewise_non_regression_vs_v28']
assert manifest['OJ_user_reported_evidence']['candidate_total']==1204
(r/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n');(p/'submission'/v/'status.json').write_text(json.dumps({'status':manifest['status'],'archive_only':True,'sha256':sha,'native_reference_checks':count_scope},indent=2)+'\n')
owned={'205592','206135','206341','207000'}
if (r/'profile.pid').exists():owned.add((r/'profile.pid').read_text().strip())
ps=subprocess.check_output(['ps','-eo','pid,ppid,pgid,comm'],text=True).splitlines();assert not [x for x in ps[1:] if x.split()[0] in owned or x.split()[1] in owned or x.split()[2] in owned]
for d in ['experiments','hack','rep','submission']:(p/d/v/'.gitattributes').write_text('* -text -eol -diff\n*.patch -diff\n')
files=[f for d in ['experiments','hack','rep','submission'] for f in (p/d/v).rglob('*') if f.is_file() and f.name!='archive_sha256.json'];index={str(f.relative_to(root)):hashlib.sha256(f.read_bytes()).hexdigest() for f in sorted(files)};(r/'archive_sha256.json').write_text(json.dumps(index,indent=2)+'\n');assert all(hashlib.sha256((root/f).read_bytes()).hexdigest()==h for f,h in index.items())
assert not subprocess.check_output(['git','diff','--cached','--name-only'],text=True).strip();paths=[str((p/d/v).relative_to(root)) for d in ['experiments','hack','rep','submission']];subprocess.run(['git','add','-f']+paths,check=True)
selected=subprocess.check_output(['git','diff','--cached','--name-only'],text=True).splitlines();assert len(selected)==len(files)+1 and all(any(f.startswith(x+'/') for x in paths) for f in selected);subprocess.run(['git','-c','core.whitespace=-blank-at-eof','diff','--cached','--check'],check=True);print('closed/staged',len(selected),'files',count_scope['candidate_checks'],count_scope['experiment_checks_with_controls'])
