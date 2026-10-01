import csv,hashlib,json,subprocess
from pathlib import Path
root=Path('/root/tilelang-metax');p=root/'race_tests/nsa';v='v063_codex_power_s8_qk_u32_select_sc-16g-2';r=p/'rep'/v
sha=lambda f:hashlib.sha256(f.read_bytes()).hexdigest()
expected='02fd54dfa0abd607309cfde6ae2293ecc89cb8abf69c487b59c1570ddb18787c'
assert sha(p/'submission'/v/'submission.py')==sha(Path('/tmp/nsa_power_v063_proven_bounds.py'))==expected
assert (p/'submission'/v/'submission.py').read_text().startswith('# codex-power v063\n')
assert sha(p/'submission.py')=='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
assert sha(p/'submission/v060_codex_power_s1_output_pair_swap_sc-16g-2/submission.py')=='f2885657714e93ce633699fdc6b61fe2549019554485f2533145315a78935fce'
for name in ['codegen','oj_static','case12.resource','llvm_compile','llvm_dis','screen','paired_case12','archive_static']:assert (r/(name+'.exit')).read_text().strip()=='0',name
rows=list(csv.DictReader((r/'paired_case12_sc-16g-2.csv').open()));assert len(rows)==16 and all(x['status']=='PASS' for x in rows)
assert (r/'first_exit137/paired_case12.exit').read_text().strip()=='137'
assert len(list(csv.DictReader((r/'first_exit137/paired_case12_sc-16g-2.csv').open())))==10
assert (r/'mcprof_baseline_v28/exit_code.txt').read_text().strip()=='0'
assert (r/'fresh_baseline_codegen.exit').read_text().strip()=='0' and (r/'fresh_baseline.resource.exit').read_text().strip()=='0'
assert len(json.loads((r/'fresh_baseline_scope_checks.json').read_text()))==2
assert all(x['consistent_with_single_attention_launch_scope'] for x in json.loads((r/'fresh_baseline_scope_checks.json').read_text()))
assert json.loads((r/'fresh_baseline_codegen_identity.json').read_text())['identical_prior_v060_baseline_export']
assert (r/'rerun_memory_summary.json').exists() and (r/'mx_smi_sampler_summary.json').exists()
report=(r/'report_sc-16g-2.md').read_text();assert report.count('## ')==7
s=json.loads((r/'paired_summary.json').read_text());assert s['candidate_vs_parent_pct']>0
(r/'manifest.json').write_text(json.dumps({'version':v,'status':'rejected_target_performance_and_intended_vector_store','source_sha256':expected,'correctness':'selected C12 screen1+paired16=17 full naive_nsa W10/R50 PASS','performance':s,'lowering_comparison':json.loads((r/'llvm_word_select_comparison.json').read_text()),'skipped_gates':json.loads((r/'skipped_gates.json').read_text()),'main':'exact original v28 preserved','parent_v060':'preserved','diagnostic':'optimized LLVM scalarizes intended16B stores and selects expand; four-way native rejected; no new profiler'},indent=2)+'\n')
for d in ['experiments','hack','rep','submission']:(p/d/v/'.gitattributes').write_text('* -text -eol -diff\n*.patch -diff\n')
files=[f for d in ['experiments','hack','rep','submission'] for f in (p/d/v).rglob('*') if f.is_file() and f.name!='archive_sha256.json']
index={str(f.relative_to(root)):sha(f) for f in sorted(files)};(r/'archive_sha256.json').write_text(json.dumps(index,indent=2)+'\n')
assert all(sha(root/f)==h for f,h in index.items())
assert not subprocess.check_output(['git','diff','--cached','--name-only'],text=True).strip()
paths=[str((p/d/v).relative_to(root)) for d in ['experiments','hack','rep','submission']];subprocess.run(['git','add','-f']+paths,check=True)
staged=subprocess.check_output(['git','diff','--cached','--name-only'],text=True).splitlines();assert len(staged)==len(files)+1 and all(any(x.startswith(t+'/') for t in paths) for x in staged)
subprocess.run(['git','-c','core.whitespace=-blank-at-eof','diff','--cached','--check'],check=True);print('VERIFIED and staged',len(staged),'files; commit separately')
