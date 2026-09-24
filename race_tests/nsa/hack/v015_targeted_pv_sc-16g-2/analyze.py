import csv
from pathlib import Path

rep=Path("/root/tilelang-metax/race_tests/nsa/rep/v015_targeted_pv_sc-16g-2")
def read(path):
    with path.open() as f: return list(csv.DictReader(f))
names=("01_v015","02_v009","03_v015","04_v009")
data=[]
for name in names:
    rows=read(rep/f"official_{name}.csv")
    assert len(rows)==14 and all(r["status"]=="PASS" for r in rows)
    data.append([float(r["latency_ms"]) for r in rows])
with (rep/"official_summary.csv").open("w",newline="") as f:
    w=csv.writer(f)
    w.writerow(("case","v009_mean_ms","v015_mean_ms","delta_pct","v009_first_ms","v015_first_ms","v009_second_ms","v015_second_ms"))
    for i in range(14):
        b1,b2=data[1][i],data[3][i]
        a1,a2=data[0][i],data[2][i]
        b=(b1+b2)/2
        a=(a1+a2)/2
        w.writerow((i+1,f"{b:.6f}",f"{a:.6f}",f"{(a/b-1)*100:+.3f}",b1,a1,b2,a2))
for name,run in zip(names,data):
    print(name,"mean",round(sum(run)/14,6),"case6",run[5],"case12",run[11])
base=[(data[1][i]+data[3][i])/2 for i in range(14)]
cand=[(data[0][i]+data[2][i])/2 for i in range(14)]
print("paired mean",sum(base)/14,sum(cand)/14,"delta_pct",(sum(cand)/sum(base)-1)*100)
print("faster",sum(a<b for a,b in zip(cand,base)),"slower",sum(a>b for a,b in zip(cand,base)))
