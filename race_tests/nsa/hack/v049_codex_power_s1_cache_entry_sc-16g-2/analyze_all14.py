from pathlib import Path
import csv,json,statistics
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v049_codex_power_s1_cache_entry_sc-16g-2')
raw=list(csv.DictReader((r/'paired_all14_sc-16g-2.csv').open()));assert len(raw)==112 and all(x['status']=='PASS' for x in raw)
rows=[]
for case in range(1,15):
 vals={label:[float(x['latency_ms'])*1000 for x in raw if int(x['case'])==case and x['variant']==label] for label in ['baseline_v28','power_v049']};assert all(len(v)==4 for v in vals.values())
 a,b=vals['baseline_v28'],vals['power_v049'];ma,mb=statistics.median(a),statistics.median(b)
 rows.append({'case':case,'baseline_us':a,'candidate_us':b,'baseline_median_us':ma,'candidate_median_us':mb,'delta_pct':(mb/ma-1)*100,'candidate_median_slower':mb>ma})
s={'correctness':'112/112 PASS; all14 complete native naive_nsa,W10/R50','status':'inconclusive_no_regression_gate','slower_median_cases':[x['case'] for x in rows if x['candidate_median_slower']],'rows':rows,'interpretation':'Positive deltas are retained, not dismissed as noise. Device-source identity alone does not establish OJ no-regression. All raw values retained; unchanged-case apparent gains are not attributed to kernel changes. Original timed entrypoint AST is unchanged; positive differences still require verification.'}
(r/'paired_all14_summary.json').write_text(json.dumps(s,indent=2)+'\n');print(s['slower_median_cases'])
