import csv,json
from pathlib import Path
root=Path("/root/tilelang-metax/race_tests/nsa")
rep=root/"rep/v016_case6_shared_conflict_sc-16g-2"
def get(d,name):
    for section in d.values():
        for item in section:
            if item["name"]==name:
                return float(str(item["value"]).replace("%","").replace(",",""))
    raise KeyError(name)
with (rep/"profiler_summary.csv").open("w",newline="") as f:
    w=csv.writer(f)
    w.writerow(("variant","shared_nonconflict_pct","conflict_cycles_when_conflict","wg_load_latency_cycles","mma_duty_pct"))
    for name in ("v009","k_xor8","v_linear","v_half","out_linear","out_swizzled"):
        data=json.loads((rep/f"mcprof_{name}/report.txt.json").read_text())
        row=(name,get(data,"shared memory access efficiency"),get(data,"average conflict cycles per instruction"),get(data,"average latency per load instruction"),get(data,"AP MMA Duty ratio"))
        w.writerow(row)
        print(row)
with (rep/"screen_summary.csv").open("w",newline="") as f:
    w=csv.writer(f)
    w.writerow(("run","variant","latency_ms","status"))
    for path in sorted(rep.glob("case6_*.csv"))+sorted(rep.glob("more_*.csv")):
        with path.open() as inp: rows=list(csv.DictReader(inp))
        if len(rows)!=1: raise ValueError(path)
        w.writerow((path.stem,rows[0]["variant"],rows[0]["latency_ms"],rows[0]["status"]))
