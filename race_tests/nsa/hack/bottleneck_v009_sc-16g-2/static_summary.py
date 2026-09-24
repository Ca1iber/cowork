import csv
import json
import tarfile
from pathlib import Path

root=Path("/root/tilelang-metax/race_tests/nsa")
out=root/"rep/bottleneck_v009_sc-16g-2"
cases=json.loads((root/"official_case.json").read_text())
with (root/"rep/v015_targeted_pv_sc-16g-2/median_summary.csv").open() as f:
    times={int(r["case"]):float(r["v009_median_ms"]) for r in csv.DictReader(f)}
with (out/"static_summary.csv").open("w",newline="") as f:
    w=csv.writer(f)
    w.writerow(("case","latency_ms","latency_share_pct","ctas","avg_valid_blocks","qk_pv_flops","logical_q_output_bytes","unique_kv_bytes","logical_kv_load_bytes","static_barriers"))
    total=sum(times.values())
    for i,c in enumerate(cases,1):
        b,seq,h,hq,d,s,bs=(c[x] for x in ("B","SEQ_LEN","H","HQ","D","S","block_size"))
        g=hq//h
        ctas=b*seq*h
        valid=sum(min(s,max(1,t//bs)) for t in range(seq))/seq
        flops=ctas*valid*4*g*bs*d
        qo=2*b*seq*hq*d*2
        unique_kv=2*b*seq*h*d*2
        logical_kv=ctas*valid*2*bs*d*2
        archive=root/"rep/v014_selective_pv_sc-16g-2/generated_code.tar.gz"
        with tarfile.open(archive) as tar:
            code=tar.extractfile(f"codegen_v009/case_{i:02d}.device.cpp").read().decode()
        barriers=code.count("__syncthreads")
        w.writerow((i,f"{times[i]:.6f}",f"{times[i]/total*100:.2f}",ctas,f"{valid:.6f}",int(flops),qo,unique_kv,int(logical_kv),barriers))
print("sum_ms",f"{total:.6f}","case6+12_share_pct",f"{(times[6]+times[12])/total*100:.2f}")
