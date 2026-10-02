from pathlib import Path
import json,csv,math
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v104_worker1_s8_global_softmax_sc-16g-2');stage=r/'paired_profile';plan=json.loads((stage/'execution_plan.json').read_text());expected=plan['predeclared_scope'];metrics={'L2C Hit Rate':('Memory Statistics','l2_hit_pct'),'Global Memory Read bytes':('Memory Statistics','read_bytes'),'Global Memory Write bytes':('Memory Statistics','write_bytes'),'average latency per load instruction':('Workgroup Memory','WG_load_latency_cycles'),'average conflict cycles per instruction':('Workgroup Memory','conflict_cycles'),'shared memory access efficiency':('Workgroup Memory','shared_nonconflict_pct'),'Achieved waves':('Occupancy','achieved_waves_raw'),'Dispatched waves':('Occupancy','waves'),'AP MTE Duty ratio':('GPU Throughput Statistics','mte_pct'),'AP MMA Duty ratio':('GPU Throughput Statistics','mma_pct')};rows=[];checks=[];rawcontext=[];failures=[]
for spec in plan['jobs']:
 label=spec['variant'];d=stage/('case12_'+label);terminal=d/'terminal_result.json'
 if not terminal.exists():failures.append({'variant':label,'reason':'no terminal evidence'});continue
 t=json.loads(terminal.read_text())
 if t['CLI_exit']!=0 or t['stop_reason']:failures.append({'variant':label,'reason':'CLI/runtime gate failed','terminal':t})
 files=sorted((d/'report_bundle').glob('*native_sparse_attention_kernel.txt.json'))
 if len(files)!=2:failures.append({'variant':label,'reason':'counter sample count differs from2','actual':len(files)})
 for i,f in enumerate(files,1):
  data=json.loads(f.read_text());row={'case':12,'variant':label,'sample':i,'source_file':str(f)};missing={}
  for name,(group,col) in metrics.items():
   candidates=[x for x in data.get(group,[]) if x.get('name')==name];value=candidates[0].get('value') if len(candidates)==1 else None
   rawcontext.append({'case':12,'variant':label,'sample':i,'group':group,'metric':name,'records':candidates})
   try:
    val=float(str(value).replace('%','').replace('byte','').replace(',',''));row[col]=val if math.isfinite(val) else None
   except (ValueError,TypeError):row[col]=None
   if row[col] is None:missing[name]=value
  row['unavailable_raw']=missing;rows.append(row);residual=None if row['write_bytes'] is None else row['write_bytes']-expected['output_payload_bytes'];scope=row['waves']==expected['dispatched_waves'] and residual is not None and expected['unattributed_write_residual_allowed'][0]<=residual<=expected['unattributed_write_residual_allowed'][1];check={'variant':label,'sample':i,'expected':expected,'waves':row['waves'],'write_bytes':row['write_bytes'],'residual':residual,'consistent_with_predeclared_scope':scope,'necessary_not_exclusive':True,'all_named_metrics_numeric':not missing};checks.append(check)
  if not scope:failures.append({'variant':label,'sample':i,'reason':'predeclared scope falsified or unavailable','check':check})
  if missing:failures.append({'variant':label,'sample':i,'reason':'missing/nonnumeric counters','raw':missing})
(r/'mcprof_summary.json').write_text(json.dumps(rows,indent=2)+'\n');(r/'mcprof_scope_checks.json').write_text(json.dumps(checks,indent=2)+'\n');(r/'WG_raw_metric_context.json').write_text(json.dumps({'records':rawcontext,'WG_definition':'Workgroup Memory issue-to-memopsdone,not global/DRAM','MTE_duty_not_HBM_bandwidth':True,'dispatched_and_staticmax_not_measured_occupancy':True},indent=2)+'\n')
if rows:
 with (r/'mcprof_summary_sc-16g-2.csv').open('w',newline='') as f:
  w=csv.DictWriter(f,fieldnames=rows[0]);w.writeheader();w.writerows(rows)
complete=not failures and len(rows)==4;(r/'mcprof_analysis_result.json').write_text(json.dumps({'complete':complete,'numeric_samples':sum(not x['unavailable_raw'] for x in rows),'scope_valid_samples':sum(x['consistent_with_predeclared_scope'] for x in checks),'actual_samples':len(rows),'planned_samples':4,'failures':failures,'all_raw_retained':True,'no_threshold_change_or_retry':True,'native_reference_checks':0},indent=2)+'\n');(r/'mcprof_analysis.exit').write_text(('0' if complete else '1')+'\n');print('PROFILE_ANALYSIS',complete,rows,checks,failures);raise SystemExit(0 if complete else 1)
