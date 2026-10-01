from pathlib import Path
import csv,hashlib,json,subprocess
root=Path('/root/tilelang-metax');p=root/'race_tests/nsa'
versions=['v064_codex_power_s8_serial_loop_sc-16g-2','v068_codex_power_s8_final_den_reduce_sc-16g-2','v069_codex_power_s1_shared_reciprocal_sc-16g-2','v070_codex_power_s1_stream_pv_operand_sc-16g-2','v071_codex_power_s1_k_copy_loop_sc-16g-2','v072_codex_power_s1_two_query_waves_sc-16g-2','v073_codex_power_s1_wave_broadcast_sc-16g-2','v074_codex_power_s1_blockstart_broadcast_sc-16g-2']
audit=[];changed=[]
for v in versions:
 r=p/'rep'/v;label='power_'+v.split('_')[0];records=[]
 for f in sorted(r.glob('*.csv')):
  if not any(f.name.startswith(x) for x in ['screen_case','paired_case','paired_all14','paired_risk','archive_native_all14']):continue
  rows=list(csv.DictReader(f.open()));assert rows and all(x['status']=='PASS' for x in rows)
  selected=[x for x in rows if x.get('variant')==label] if 'variant' in rows[0] else rows
  records.append({'path':str(f.relative_to(root)),'sha256':hashlib.sha256(f.read_bytes()).hexdigest(),'all_variants_checks':len(rows),'candidate_checks':len(selected),'candidate_cases':sorted({int(x['case']) for x in selected})})
 total=sum(x['all_variants_checks'] for x in records);candidate=sum(x['candidate_checks'] for x in records);cases=sorted({c for x in records for c in x['candidate_cases']})
 item={'version':v,'candidate_label':label,'experiment_total_including_controls':total,'exact_candidate_total':candidate,'candidate_official_cases':cases,'records':records,'interpretation':'count repetitions separately from distinctcase coverage;no correctness or latency result changed'};audit.append(item)
 report=r/'report_sc-16g-2.md';s=report.read_text()
 s=s.replace('最终SHA共271完整checks','整组实验（包含对照）共271完整checks').replace('最终源总计 screen1+目标16+全14_168+风险72+归档14=271/271','整组实验（包含对照）总计 screen1+目标16+全14_168+风险72+归档14=271/271')
 s=s.replace('最终源13次完整C6参考','整组实验13次完整C6参考，其中精确候选5次').replace('最终源17次完整C6参考','整组实验17次完整C6参考，其中精确候选5次')
 note=f'**计数更正：整组实验（含对照）{total}次参考检查；精确候选为{candidate}次，覆盖官方case {cases}。下文整组总数不得解读为候选单独执行次数；原始CSV、正确性结果及延迟结论不变。**\n\n'
 head,tail=s.split('\n',1);report.write_text(head+'\n\n'+note+tail);changed.append(report)
 manifest=r/'manifest.json';m=json.loads(manifest.read_text());m['reference_count_scope']=item
 key='native_correctness' if 'native_correctness' in m else 'native_reference_checks';m[key]=f'{candidate} exactcandidate checks across{cases};{total} total experiment checks includingcontrols;originalnaive_nsa W10R50 PASS'
 manifest.write_text(json.dumps(m,indent=2)+'\n');changed.append(manifest)
 status=p/'submission'/v/'status.json'
 if status.exists():
  m=json.loads(status.read_text());m['reference_count_scope']={'candidate_checks':candidate,'experiment_checks_with_controls':total,'candidate_official_cases':cases}
  if 'reference_checks' in m:m['reference_checks']=candidate
  if 'source_checks' in m:m['source_checks']=f'{candidate}exactcandidate checks across{cases};not totalcontrol checks'
  status.write_text(json.dumps(m,indent=2)+'\n');changed.append(status)
 scope=r/'reference_count_scope.json';scope.write_text(json.dumps(item,indent=2)+'\n');changed.append(scope)
 files=[f for d in ['experiments','hack','rep','submission'] for f in (p/d/v).rglob('*') if f.is_file() and f.name!='archive_sha256.json'];inventory=r/'archive_sha256.json';index={str(f.relative_to(root)):hashlib.sha256(f.read_bytes()).hexdigest() for f in sorted(files)};inventory.write_text(json.dumps(index,indent=2)+'\n');assert all(hashlib.sha256((root/f).read_bytes()).hexdigest()==h for f,h in index.items());changed.append(inventory)
out=p/'rep/reference_count_audit_sc-16g-2.json';out.write_text(json.dumps(audit,indent=2)+'\n');changed.append(out)
assert hashlib.sha256((p/'submission.py').read_bytes()).hexdigest()=='42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
for item in audit:
 for row in item['records']:assert hashlib.sha256((root/row['path']).read_bytes()).hexdigest()==row['sha256']
print([(x['version'],x['experiment_total_including_controls'],x['exact_candidate_total']) for x in audit])
print('scope-corrected metadata',len(changed),'files;no candidate/raw benchmark changes')
