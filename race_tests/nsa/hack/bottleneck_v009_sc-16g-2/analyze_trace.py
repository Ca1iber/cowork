import csv
import json
from pathlib import Path
from statistics import median

rep=Path("/root/tilelang-metax/race_tests/nsa/rep/bottleneck_v009_sc-16g-2")
def pctl(values,p):
    a=sorted(values)
    return a[round((len(a)-1)*p)]
with (rep/"trace_summary.csv").open("w",newline="") as f:
    w=csv.writer(f)
    w.writerow(("case","kernel_count","kernel_median_us","kernel_p10_us","kernel_p90_us","gap_median_us","gap_p10_us","gap_p90_us","launch_cpu_median_us","device_span_us","device_busy_pct"))
    for case in (2,6,8,12):
        e=json.loads((rep/f"trace_case{case}.json").read_text())["traceEvents"]
        kernels=sorted((x for x in e if x.get("cat")=="kernel" and "native_sparse_attention_kernel" in x.get("name","")),key=lambda x:x["ts"])
        launches=[x["dur"] for x in e if x.get("cat")=="cuda_runtime" and "mcModuleLaunchKernel" in x.get("name","")]
        assert len(kernels)==30,(case,len(kernels))
        durs=[x["dur"] for x in kernels]
        gaps=[kernels[i+1]["ts"]-(kernels[i]["ts"]+kernels[i]["dur"]) for i in range(len(kernels)-1)]
        span=kernels[-1]["ts"]+kernels[-1]["dur"]-kernels[0]["ts"]
        busy=sum(durs)/span*100
        row=(case,len(kernels),median(durs),pctl(durs,.1),pctl(durs,.9),median(gaps),pctl(gaps,.1),pctl(gaps,.9),median(launches),span,busy)
        w.writerow(row)
        print(row)
