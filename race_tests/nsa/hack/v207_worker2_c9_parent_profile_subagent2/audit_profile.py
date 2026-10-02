from pathlib import Path
import json,math,hashlib
root=Path('/root/tilelang-metax');r=root/'race_tests/nsa/rep/v207_worker2_c9_parent_profile_subagent2'
manifest=json.loads((r/'fixed_profile_manifest.json').read_text());result=json.loads((r/'diagnostic_result.json').read_text())
for k,s in [('source_path','sourceSHA'),('driver_path','driverSHA'),('tool_path','toolSHA')]:assert hashlib.file_digest(Path(manifest[k]).open('rb'),'sha256').hexdigest()==manifest[s]
log=(r/'import.log').read_text(errors='replace');innerKilled=any(x.strip()=='Killed' for x in log.splitlines())
mapping={'L2C Hit Rate':'Memory Statistics','Global Memory Read bytes':'Memory Statistics','Global Memory Write bytes':'Memory Statistics','average latency per load instruction':'Workgroup Memory','average conflict cycles per instruction':'Workgroup Memory','shared memory access efficiency':'Workgroup Memory','Achieved waves':'Occupancy','Dispatched waves':'Occupancy','AP MTE Duty ratio':'GPU Throughput Statistics','AP MMA Duty ratio':'GPU Throughput Statistics'}
rows=[]
for i in [1,2]:
 p=r/'report_bundle'/f'{i}_native_sparse_attention_kernel_dumped_result.json'
 d=json.loads(p.read_text());m={};errors=[]
 for name,group in mapping.items():
  a=[q for q in d[group] if q['name']==name];assert len(a)==1
  item=a[0];val=item['data'];numeric=isinstance(val,(int,float)) and math.isfinite(val)
  if not numeric or item.get('isError'):errors.append({'name':name,'item':item})
  m[name]=val
 numericall=not errors
 waves=numericall and m['Achieved waves']==8192 and m['Dispatched waves']==8192
 residual=m['Global Memory Write bytes']-16777216 if numericall else None
 payload_scope=numericall and 0<=residual<=512
 nameok=p.name==f'{i}_native_sparse_attention_kernel_dumped_result.json'
 rows.append({'record':i,'raw_path':str(p),'rawSHA':hashlib.sha256(p.read_bytes()).hexdigest(),'kernel_name_from_tool_report_filename':'native_sparse_attention_kernel','kernel_name_filename_pass':nameok,'all_10_numeric':numericall,'errors':errors,'metrics':m,'waves_scope_pass':waves,'output_payload_bytes':16777216,'write_residual_bytes':residual,'residual_scope_pass':payload_scope,'verified_existing_source_host_grid':[8192,1],'runtime_grid_direct_metadata':'UNAVAILABLE_umd_data_empty','necessary_numeric_wave_payload_scope_pass':numericall and waves and payload_scope and nameok,'not_exclusive_scope_proof':True})
aggregate=json.loads((r/'report_bundle/report_dumped_result.json').read_text())
summary={'mode':'PARENTONLY_C9_DIAGNOSTIC','records':rows,'perkernel_record_count':2,'numeric_valid_records':sum(x['all_10_numeric'] for x in rows),'necessary_wave_payload_pass_records':sum(x['necessary_numeric_wave_payload_scope_pass'] for x in rows),'CLI_exit':int((r/'profiler_CLI.exit').read_text()),'observer_exit':result['diagnostic_gate'],'OOM_before_after':[result['oom_before'],result['oom_after']],'innerKilled':innerKilled,'no_pressure_abort':result['owned_termination_actions']==[],'actual_visible_driver_process_count':len(json.loads((r/'observed_driver_identities.json').read_text())),'driver_completion_markers':log.count('PROFILE_DONE case=9 calls=20'),'actual_attention_launch_count':'UNAVAILABLE_toolmayreplay;31drivercallspercompletedinvocation_notcompletehardwarelaunchmeasurement','fixed_manifest_SHA':hashlib.sha256((r/'fixed_profile_manifest.json').read_bytes()).hexdigest(),'grid_evidence_limitation':'source4c/officialcase9/immutabledriver/previousactualhost8192x1 verified;profilerdoesnotexposeactualgrid,umd_dataempty;notclaimdirectruntimegridmeasurement','aggregate_report_not_targetscope':True,'aggregate_wave_count':next(q['data'] for q in aggregate['Occupancy'] if q['name']=='Achieved waves'),'no_old_576_failure_reclassification':True,'full_reference_native_newkernel':[0,0,0],'GlobalRead_not_HBM_WGlatency_not_DRAM_waves_not_occupancy':True,'no_further_capture_or_optimization_automatic':True}
(r/'profile_audit.json').write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps(summary,indent=2))
