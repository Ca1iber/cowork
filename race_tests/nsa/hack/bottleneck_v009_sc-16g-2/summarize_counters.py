import csv
import json
import re
from pathlib import Path
from statistics import median

rep=Path("/root/tilelang-metax/race_tests/nsa/rep/bottleneck_v009_sc-16g-2")
def item(data,name):
    for v in data.values():
        for entry in v:
            if entry["name"]==name: return entry["value"]
    raise KeyError(name)
def num(text):
    return float(str(text).split("%")[0].split("byte")[0].replace(",",""))
with (rep/"counter_summary.csv").open("w",newline="") as f:
    w=csv.writer(f)
    w.writerow(("case","l2_hit_pct","global_read_mb_per_call","global_write_mb_per_call","ap_mte_duty_pct","ap_ste_duty_pct","ap_mma_duty_pct","wsm_stall","vls_pipeline_stall","vls_wdata_stall","roof_case_I","roof_max_I","roof_bandwidth_gbps","mxsmi_hbm_median_gbps","mxsmi_hbm_p10_gbps","mxsmi_hbm_p90_gbps","mxsmi_active_samples"))
    for c in (6,12):
        base=rep/f"mcprof_case{c}"
        counters=json.loads((base/"counters_report.txt.json").read_text())
        roof=json.loads((base/"report.txt.json").read_text())
        r=item(roof,"RoofLine")["data"]
        stalls=item(counters,"ISU stall cycles layout")["data"]
        matches=re.findall(r"throughput\s*:\s*([0-9]+) MBytes/s",(rep/f"hbm_case{c}.mxsmi.log").read_text())
        active=sorted(int(x)/1000 for x in matches if int(x)>1000)
        assert len(active)>10,(c,len(active))
        p10=active[round((len(active)-1)*.1)]
        p90=active[round((len(active)-1)*.9)]
        row=(c,num(item(counters,"L2C Hit Rate")),num(item(counters,"Global Memory Read bytes"))/20/1e6,num(item(counters,"Global Memory Write bytes"))/20/1e6,num(item(counters,"AP MTE Duty ratio")),num(item(counters,"AP STE Duty ratio")),num(item(counters,"AP MMA Duty ratio")),stalls["wsm_stall"],stalls["vls_pipeline_stall"],stalls["vls_wdata_stall"],r["case_I"],r["MAX_I"],r["case_bandwith"],median(active),p10,p90,len(active))
        w.writerow(row)
        print(row)
