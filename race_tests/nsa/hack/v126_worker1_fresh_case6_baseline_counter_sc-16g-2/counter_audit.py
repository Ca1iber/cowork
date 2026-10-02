from pathlib import Path
import json,math
METRICS={'L2C Hit Rate':('Memory Statistics','l2_hit_pct'),'Global Memory Read bytes':('Memory Statistics','read_bytes'),'Global Memory Write bytes':('Memory Statistics','write_bytes'),'average latency per load instruction':('Workgroup Memory','WG_load_cycles'),'average conflict cycles per instruction':('Workgroup Memory','WG_conflict_cycles'),'shared memory access efficiency':('Workgroup Memory','shared_nonconflict_pct'),'Achieved waves':('Occupancy','achieved_waves_raw'),'Dispatched waves':('Occupancy','dispatched_waves'),'AP MTE Duty ratio':('GPU Throughput Statistics','MTE_pct'),'AP MMA Duty ratio':('GPU Throughput Statistics','MMA_pct')}
def audit_job(job):
 d=Path(job['output_dir']);files=sorted((d/'report_bundle').glob('*native_sparse_attention_kernel_dumped_result.json'));rows=[];errors=[];context=[]
 if len(files)!=2:errors.append({'reason':'expected2perkernelrecords','actual':len(files)})
 for i,f in enumerate(files,1):
  data=json.loads(f.read_text());row={'case':job['case'],'variant':job['variant'],'sample':i,'source_file':str(f)};missing={}
  for name,(group,key) in METRICS.items():
   items=[x for x in data.get(group,[]) if x.get('name')==name];metric=items[0] if len(items)==1 else None;raw=metric.get('data') if metric is not None else None;context.append({'sample':i,'group':group,'name':name,'raw':items})
   good=metric is not None and metric.get('isError') is False and isinstance(raw,(int,float)) and not isinstance(raw,bool) and math.isfinite(raw)
   row[key]=raw if good else None
   if not good:missing[name]={'actual_metric':metric,'duplicate_or_missing':len(items)!=1}
  residual=None if row['write_bytes'] is None else row['write_bytes']-job['output_payload_bytes'];row.update(unavailable_raw=missing,write_residual_bytes=residual,scope_necessary_not_exclusive=True,runtime_grid='UNAVAILABLE unlessactualrawreports providegrid');scope=residual is not None and 0<=residual<=512;row['wave_contract_only_not_equal_gate']=job['contract_waves_not_formula_gate'];row['Achieved_Dispatched_semantics']='rawvalues recorded independently; no unverified equality formula';row['predeclared_scope_met']=scope;rows.append(row)
  if missing:errors.append({'sample':i,'reason':'NA/nonnumeric','raw':missing})
  if not scope:errors.append({'sample':i,'reason':'necessaryscopefailed','dispatched_waves':row['dispatched_waves'],'achieved_waves':row['achieved_waves_raw'],'residual':residual,'original_bound':[0,512]})
 result={'actual_records':len(rows),'valid_numeric_scope_records':sum(not x['unavailable_raw'] and x['predeclared_scope_met'] for x in rows),'rows':rows,'errors':errors,'raw_metric_context':context,'complete':not errors and len(rows)==2,'not_native_or_totalGPU_launch_count':True,'primary_values':'perkernel dumped_result data/isError, notformatted value','formatted_files_corroboration_only':[str(x) for x in (d/'report_bundle').glob('*native_sparse_attention_kernel.txt.json')],'no_reprofile_or_bound_change':True};(d/'counter_analysis.json').write_text(json.dumps(result,indent=2)+chr(10));(d/'counter_analysis.exit').write_text(('0' if result['complete'] else '1')+chr(10));return result
