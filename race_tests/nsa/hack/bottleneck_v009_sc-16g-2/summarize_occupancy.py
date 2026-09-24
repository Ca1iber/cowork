import csv,json
from pathlib import Path
rep=Path("/root/tilelang-metax/race_tests/nsa/rep/bottleneck_v009_sc-16g-2")
def val(data,name):
    for group in data.values():
        for item in group:
            if item["name"]==name:
                return float(str(item["value"]).replace("%","").replace(",",""))
    raise KeyError(name)
with (rep/"occupancy_summary.csv").open("w",newline="") as f:
    w=csv.writer(f)
    w.writerow(("case","shared_nonconflict_pct","shared_conflict_cycles_when_conflict","shared_load_latency_cycles","dnoc_read_latency_cycles","achieved_waves","dispatched_waves"))
    for c in (6,12):
        d=json.loads((rep/f"mcprof_case{c}/occupancy_report.txt.json").read_text())
        row=(c,val(d,"shared memory access efficiency"),val(d,"average conflict cycles per instruction"),val(d,"average latency per load instruction"),val(d,"Dnoc Read Average Latency"),val(d,"Achieved waves"),val(d,"Dispatched waves"))
        w.writerow(row)
        print(row)
