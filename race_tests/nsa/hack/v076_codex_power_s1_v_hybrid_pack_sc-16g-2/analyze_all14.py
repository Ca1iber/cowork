import csv,json,statistics
from pathlib import Path
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v076_codex_power_s1_v_hybrid_pack_sc-16g-2')
raw=list(csv.DictReader((r/'paired_all14_sc-16g-2.csv').open()))
assert len(raw)==168 and all(x['status']=='PASS' for x in raw)
summary=[]
for ci in range(1,15):
 vals={label:[float(x['latency_ms'])*1000 for x in raw if int(x['case'])==ci and x['variant']==label] for label in ['baseline_v28','parent_v068','power_v076']}
 assert all(len(v)==4 for v in vals.values())
 out={'case':ci,'samples_us':vals,'medians_us':{k:statistics.median(v) for k,v in vals.items()}}
 out['candidate_vs_v28_pct']=(out['medians_us']['power_v076']/out['medians_us']['baseline_v28']-1)*100
 out['candidate_vs_parent_pct']=(out['medians_us']['power_v076']/out['medians_us']['parent_v068']-1)*100
 summary.append(out)
(r/'paired_all14_summary.json').write_text(json.dumps({'correctness':'168/168 full native naive_nsa PASS; warmup10/repeat50','all_observations_retained':True,'positive_medians_are_not_waived_as_noise':True,'cases':summary},indent=2)+'\n')
for x in summary:print(x['case'],x['medians_us'],x['candidate_vs_v28_pct'],x['candidate_vs_parent_pct'])
