import csv
from pathlib import Path
from statistics import median

rep=Path("/root/tilelang-metax/race_tests/nsa/rep/v022_case6_case12_combined_sc-16g-2")
def read(name):
    with (rep/f"official_{name}.csv").open() as f: rows=list(csv.DictReader(f))
    assert len(rows)==14 and all(r["status"]=="PASS" for r in rows)
    return [float(r["latency_ms"]) for r in rows]
v15=[read(f"{i:02d}_v022") for i in (1,3,5)]
v09=[read(f"{i:02d}_v009") for i in (2,4,6)]
base=[median(run[i] for run in v09) for i in range(14)]
cand=[median(run[i] for run in v15) for i in range(14)]
with (rep/"median_summary.csv").open("w",newline="") as f:
    w=csv.writer(f)
    w.writerow(("case","v009_median_ms","v022_median_ms","delta_pct","v009_run1_ms","v009_run2_ms","v009_run3_ms","v022_run1_ms","v022_run2_ms","v022_run3_ms"))
    for i in range(14):
        w.writerow((i+1,f"{base[i]:.6f}",f"{cand[i]:.6f}",f"{(cand[i]/base[i]-1)*100:+.3f}",*(x[i] for x in v09),*(x[i] for x in v15)))
for name,group in (("v022",v15),("v009",v09)):
    print(name,"run_means",*[f"{sum(x)/14:.6f}" for x in group])
print("mean of case medians","v009",f"{sum(base)/14:.6f}","v022",f"{sum(cand)/14:.6f}","delta_pct",f"{(sum(cand)/sum(base)-1)*100:+.3f}")
print("case6","v009",base[5],"v022",cand[5],"delta_pct",f"{(cand[5]/base[5]-1)*100:+.3f}")
print("case12","v009",base[11],"v022",cand[11],"delta_pct",f"{(cand[11]/base[11]-1)*100:+.3f}")
print("faster",sum(a<b for a,b in zip(cand,base)),"slower",sum(a>b for a,b in zip(cand,base)))
