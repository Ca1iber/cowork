import csv
from pathlib import Path

rep=Path("/root/tilelang-metax/race_tests/nsa/rep/v013_manual_pv_tune_sc-16g-2")
def read(path):
    with path.open() as f:
        return list(csv.DictReader(f))
official=[]
for name in ("01_v013","02_v009","03_v013","04_v009"):
    rows=read(rep/f"official_{name}.csv")
    assert len(rows)==14 and all(r["status"]=="PASS" for r in rows)
    official.append([float(r["latency_ms"]) for r in rows])
with (rep/"official_summary.csv").open("w",newline="") as f:
    w=csv.writer(f)
    w.writerow(("case","v009_mean_ms","v013_mean_ms","delta_pct","v009_first_ms","v013_first_ms","v009_second_ms","v013_second_ms"))
    for i in range(14):
        v13a,v09a,v13b,v09b=(run[i] for run in official)
        a=(v09a+v09b)/2
        b=(v13a+v13b)/2
        w.writerow((i+1,f"{a:.6f}",f"{b:.6f}",f"{(b/a-1)*100:+.3f}",v09a,v13a,v09b,v13b))
for label, vals in zip(("v013_1","v009_1","v013_2","v009_2"),official):
    print(label,"mean",round(sum(vals)/14,6),"case6",vals[5],"case12",vals[11])
a=[(official[1][i]+official[3][i])/2 for i in range(14)]
b=[(official[0][i]+official[2][i])/2 for i in range(14)]
print("paired mean",sum(a)/14,sum(b)/14,"delta_pct",(sum(b)/sum(a)-1)*100)
print("faster cases",sum(x<y for x,y in zip(b,a)),"slower cases",sum(x>y for x,y in zip(b,a)))
target=[]
for path in sorted(rep.glob("target_0*.csv")):
    rows=read(path)
    assert len(rows)==2 and all(r["status"]=="PASS" for r in rows)
    target.append((path.stem,*(float(r["latency_ms"]) for r in rows)))
with (rep/"target_summary.csv").open("w",newline="") as f:
    w=csv.writer(f)
    w.writerow(("run","case6_ms","case12_ms"))
    w.writerows(target)
