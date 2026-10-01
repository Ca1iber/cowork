from pathlib import Path
from decimal import Decimal
import csv,json,statistics
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v078_codex_power_non_target_control_sc-16g-2');rows=list(csv.DictReader((r/'negative_controls_sc-16g-2.csv').open()));assert len(rows)==128 and all(x['status']=='PASS' for x in rows)
labels=['baseline_A','baseline_B','candidate_A','candidate_B'];result=[]
def stat(vals):
 return {'samples_us':[str(x) for x in vals],'median_us':str(statistics.median(vals)),'min_us':str(min(vals)),'max_us':str(max(vals)),'range_pct':str((max(vals)-min(vals))/statistics.median(vals)*100)}
for case in [1,3,4,10]:
 subset=[x for x in rows if int(x['case'])==case];assert len(subset)==32
 aliases={label:stat([Decimal(x['latency_ms'])*1000 for x in subset if x['label']==label]) for label in labels};assert all(len(x['samples_us'])==8 for x in aliases.values())
 sources={label:stat([Decimal(x['latency_ms'])*1000 for x in subset if x['source']==label]) for label in ['baseline_v28','candidate_v077']};assert all(len(x['samples_us'])==16 for x in sources.values())
 bm=Decimal(sources['baseline_v28']['median_us']);cm=Decimal(sources['candidate_v077']['median_us']);item={'case':case,'aliases':aliases,'sources':sources,'baseline_B_vs_A_pct':str((Decimal(aliases['baseline_B']['median_us'])/Decimal(aliases['baseline_A']['median_us'])-1)*100),'candidate_B_vs_A_pct':str((Decimal(aliases['candidate_B']['median_us'])/Decimal(aliases['candidate_A']['median_us'])-1)*100),'candidate_vs_original_combined_pct':str((cm/bm-1)*100),'rounds':[]}
 for round_index in range(1,5):
  rr=[x for x in subset if int(x['round'])==round_index];med={label:statistics.median([Decimal(x['latency_ms'])*1000 for x in rr if x['source']==label]) for label in sources};item['rounds'].append({'round':round_index,'medians_us':{k:str(v) for k,v in med.items()},'candidate_vs_original_pct':str((med['candidate_v077']/med['baseline_v28']-1)*100)})
 result.append(item);print(case,'samebaselinealias%',item['baseline_B_vs_A_pct'],'samecandidatealias%',item['candidate_B_vs_A_pct'],'crosssource%',item['candidate_vs_original_combined_pct'],'source medians',bm,cm)
(r/'negative_controls_summary.json').write_text(json.dumps({'mode':'diagnostic,unchangednative protocol and callableidentity','cases':result,'reference_checks':{'original_v28':64,'exact_candidate77':64,'total':128},'sample_selection':'all128 retained,decimal exact fromrawCSV','verdict_limit':'does not waive any earlier performance/OJ regression;no source/kernel changes'},indent=2)+'\n')
