from pathlib import Path
import json,math,hashlib
root=Path('/root/tilelang-metax');r=root/'race_tests/nsa/rep/v214_worker2_parent_c8_current_profile_subagent2';sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
mapping={'L2C Hit Rate':'Memory Statistics','Global Memory Read bytes':'Memory Statistics','Global Memory Write bytes':'Memory Statistics','average latency per load instruction':'Workgroup Memory','average conflict cycles per instruction':'Workgroup Memory','shared memory access efficiency':'Workgroup Memory','Achieved waves':'Occupancy','Dispatched waves':'Occupancy','AP MTE Duty ratio':'GPU Throughput Statistics','AP MMA Duty ratio':'GPU Throughput Statistics'}
manifest=json.loads((r/'fixed_profile_manifest.json').read_text())
for p,k in [('source_path','sourceSHA'),('driver_path','driverSHA'),('tool_path','toolSHA')]:assert sha(Path(manifest[p]))==manifest[k]
records=[]
for i in [1,2]:
 p=r/'report_bundle'/f'{i}_native_sparse_attention_kernel_dumped_result.json';d=json.loads(p.read_text());metrics={};errors=[]
 for name,group in mapping.items():
  items=[q for q in d[group] if q['name']==name];assert len(items)==1
  item=items[0];val=item['data'];metrics[name]=val
  if isinstance(val,bool) or not isinstance(val,(int,float)) or not math.isfinite(val) or item.get('isError'):errors.append({'name':name,'item':item})
 residual=metrics['Global Memory Write bytes']-16777216 if not errors else None
 records.append({'record':i,'rawSHA':sha(p),'metrics':metrics,'all10finite_noerror':not errors,'errors':errors,'write_residual_bytes':residual,'payload_consistency_0_to512':residual is not None and 0<=residual<=512,'Achieved_Dispatched_equality_is_not_gate':True,'kernel_identity':'native_sparse_attention_kernel per unique report filename','formattedSHA':sha(p.with_name(f'{i}_native_sparse_attention_kernel.txt'))})
log=(r/'profile_observation/child.log').read_text(errors='replace');result=json.loads((r/'profile_observation/result.json').read_text());ow=json.loads((r/'profile_originalPopen_wait.json').read_text());pre=json.loads((r/'profile_observation/pre_admission.json').read_text());term=json.loads((r/'profile_observation/terminal.json').read_text())
inner=any(x.strip()=='Killed' for x in log.splitlines())
summary={'records':records,'records_count':len(records),'CLI_actualwait':int((r/'profiler_CLI_actualwait.exit').read_text()),'stable_child_wait':result['actualwait'],'observer_originalwait':ow['actualwait'],'OOM_before_after':[pre['oom_kill'],term['oom_kill']],'innerKilled':inner,'owned_actions':result['owned_actions'],'samples':result['samples'],'elapsed_seconds':result['elapsed_seconds'],'completed_driver_markers':log.count('PROFILE_DONE case=8 calls=20'),'actual_attention_launch_count':'UNAVAILABLE_not_inferred_from_counts2_or_replay','runtime_grid':'UNAVAILABLE_umd_data_empty' if not json.loads((r/'report_bundle/nsa_worker2_v214_parent84_case8.json').read_text())['umd_data'] else 'see raw umd_data','scope':'owned command and raw observations only, not exclusive scope/HBM/occupancy','native_reference_newkernel':[0,0,0],'old_gate_failures_unchanged':True}
summary['audit_gate']=0 if all(q['all10finite_noerror'] and q['payload_consistency_0_to512'] for q in records) and summary['CLI_actualwait']==0 and result['gate']==0 and ow['actualwait']==0 and summary['OOM_before_after']==[3,3] and not inner else 1
(r/'profile_audit.json').write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps(summary,indent=2))
