from pathlib import Path
import json,csv,hashlib,statistics
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v208_worker2_c9_q_register_transpose_subagent2')
assert (r/'screen.exit').exists(),'no terminal yet'
jobs=json.loads((r/'screen_jobs.json').read_text());raw=[];accepted=[];input_sha={}
for j in jobs:
 p=r/f"screen_run{j['run']}_{j['variant']}.csv"
 a=list(csv.DictReader(p.open())) if p.exists() else []
 if len(a)==1 and a[0].get('status')=='PASS' and int(a[0]['case'])==9:
  row={'run':j['run'],'round':1 if j['run']<=6 else 2,'variant':j['variant'],'latency_us':float(a[0]['latency_ms'])*1000};raw.append(row)
  if j.get('exit')==0 and j.get('oom_before')==j.get('oom_after') and not j.get('stop_reason') and not j.get('inner_Killed') and j.get('source_hash_unchanged') and j.get('runner_hash_unchanged') and j.get('shared_hashes_unchanged'):accepted.append(row)
 if p.exists():input_sha[p.name]=hashlib.sha256(p.read_bytes()).hexdigest()
d={'raw_PASS_CSV_records':len(raw),'accepted_terminal0_unchanged_OOM_fullrefs':{'candidate':sum(x['variant']=='power_v208' for x in accepted),'total':len(accepted)},'accepted_records':accepted,'all_raw_records':raw,'CSV_sha256':input_sha,'planned_candidate_total':[4,12],'not_equivalent_to_full14':True}
d['complete_original12']=len(jobs)==12 and len(accepted)==12
if d['complete_original12']:
 vals={q:[x['latency_us'] for x in accepted if x['variant']==q] for q in ['baseline_v28','parent_v084','power_v208']};med={q:statistics.median(v) for q,v in vals.items()}
 d['medians_us']=med;d['candidate_vs_parent_pct']=(med['power_v208']/med['parent_v084']-1)*100;d['ranges_us']={q:[min(v),max(v)] for q,v in vals.items()};d['all_values_retained']=True
else:d['complete_verdict']='UNAVAILABLE_failed_or_partial'
(r/'accepted_native_counts.json').write_text(json.dumps(d,indent=2)+'\n')
print(json.dumps(d,indent=2))
memory=[]
for j in jobs:
 f=r/f"screen_run{j['run']}_{j['variant']}.samples.jsonl"
 peak=0;n=0;oom=set();rss=0;hwm=0
 if f.exists():
  with f.open() as stream:
   for line in stream:
    x=json.loads(line);n+=1;peak=max(peak,x['usage_bytes']);oom.add(x['oom_kill'])
    for q in x['visible_pids']:
     if q['pid']==j.get('pid') and q['starttime_ticks']==j.get('starttime_ticks'):
      rss=max(rss,int(q['status'].get('VmRSS','0 kB').split()[0]));hwm=max(hwm,int(q['status'].get('VmHWM','0 kB').split()[0]))
 memory.append({'run':j['run'],'variant':j['variant'],'samples':n,'observed_whole_cgroup_peak_bytes':peak,'observed_native_RSS_KiB':rss,'observed_native_HWM_KiB':hwm,'observed_OOM_counts':sorted(oom),'accounting_and_subsample_peaks_limited':True})
(r/'native_memory_summary.json').write_text(json.dumps(memory,indent=2)+'\n')
print('memory observation saved',len(memory))
