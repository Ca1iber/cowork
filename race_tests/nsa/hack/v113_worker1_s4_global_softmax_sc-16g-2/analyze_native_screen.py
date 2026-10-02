from pathlib import Path
from decimal import Decimal
import json,csv,hashlib
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v113_worker1_s4_global_softmax_sc-16g-2/native_screen');d=json.loads((r/'diagnostic_result.json').read_text());samples=[];planned=json.loads((r/'native_execution_plan.json').read_text())['jobs']
for job in planned:
 folder=r/('job_'+str(job['index']).zfill(2)+'_'+job['variant']);f=folder/'native_case11.csv'
 if not f.exists():continue
 with f.open() as stream:rows=list(csv.DictReader(stream))
 for row in rows:
  if row.get('status')=='PASS' and row.get('case')=='11':samples.append({'index':job['index'],'round':job['round'],'variant':job['variant'],'latency_us':str(Decimal(row['latency_ms'])*1000),'raw_CSV':str(f),'CSV_SHA':hashlib.sha256(f.read_bytes()).hexdigest(),'raw_row':row})
def median(a):
 a=sorted(a);n=len(a);return a[n//2] if n%2 else (a[n//2-1]+a[n//2])/2
summary={'runtime_completed':d['runtime_protocol_completed'],'observed_by_variant':d['observed_complete_reference_PASS_rows_by_variant'],'clean_by_variant':d['clean_process_accepted_fullrefs_by_variant'],'raw_samples':samples,'full_reference_scope':'onlyC11, actual PASS rows; planned4candidate12inclusive not count until terminal','no_purekernel_or_all14_no_reg_OJ_claim':True,'old_failedstage_andstartup_preserved':True}
if d['runtime_protocol_completed']:
 groups={k:[Decimal(x['latency_us']) for x in samples if x['variant']==k] for k in ['baseline_v28','power_v104','power_v113']};assert all(len(a)==4 for a in groups.values());stats={k:{'median_us':str(median(a)),'min_us':str(min(a)),'max_us':str(max(a)),'raw_us':[str(x) for x in a]} for k,a in groups.items()};c=median(groups['power_v113']);p=median(groups['power_v104']);b=median(groups['baseline_v28']);rounds=[]
 for n in [1,2]:
  ca=[Decimal(x['latency_us']) for x in samples if x['round']==n and x['variant']=='power_v113'];pa=[Decimal(x['latency_us']) for x in samples if x['round']==n and x['variant']=='power_v104'];rounds.append({'round':n,'Cmedian_us':str(median(ca)),'Pmedian_us':str(median(pa)),'vs104_pct':str((median(ca)/median(pa)-1)*100)})
 overlap=max(min(groups['power_v113']),min(groups['power_v104']))<=min(max(groups['power_v113']),max(groups['power_v104']));delta=(c/p-1)*100;summary.update(stats=stats,vs104_pct=str(delta),vs28_pct=str((c/b-1)*100),rounds=rounds,ranges_overlap=overlap,allcandidate_lt_allparent=max(groups['power_v113'])<min(groups['power_v104']),decision='rejected_latency' if delta>=0 else 'inconclusive_overlap_or_roundpositive' if overlap or any(Decimal(x['vs104_pct'])>=0 for x in rounds) else 'selected_local_gain_requires_leader_review',no_remeasurement=True)
else:summary['decision']='failed_runtime_incomplete_screen; preserve prefix, no latency win'
(r/'screen_summary.json').write_text(json.dumps(summary,indent=2)+chr(10));print(json.dumps(summary,indent=2))
