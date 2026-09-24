import csv,json
from pathlib import Path
root=Path("/root/tilelang-metax/race_tests/nsa")
rep=root/"rep/v023_case6_direct_k_sc-16g-2"
def get(d,name):
    for section in d.values():
        for entry in section:
            if entry["name"]==name: return entry["value"]
    raise KeyError(name)
def num(v): return float(str(v).replace("%","").replace("byte","").replace(",",""))
with (rep/"profiler_summary.csv").open("w",newline="") as f:
    w=csv.writer(f)
    w.writerow(("version","l2_hit_pct","global_read_mb_per_call","global_write_mb_per_call","shared_nonconflict_pct","wg_load_latency_cycles","mte_duty_pct","mma_duty_pct","wsm_stall_raw","vls_pipeline_stall_raw"))
    for v in ("v022","v023"):
        d=json.loads((rep/f"mcprof_{v}/report.txt.json").read_text())
        stall=get(d,"ISU stall cycles layout")["data"]
        row=(v,num(get(d,"L2C Hit Rate")),num(get(d,"Global Memory Read bytes"))/20/1e6,num(get(d,"Global Memory Write bytes"))/20/1e6,num(get(d,"shared memory access efficiency")),num(get(d,"average latency per load instruction")),num(get(d,"AP MTE Duty ratio")),num(get(d,"AP MMA Duty ratio")),stall["wsm_stall"],stall["vls_pipeline_stall"])
        w.writerow(row)
        print(row)
