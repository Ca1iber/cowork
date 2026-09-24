import csv
import hashlib
import json
from pathlib import Path
root=Path("/root/tilelang-metax/race_tests/nsa")
rep=root/"rep/v014_selective_pv_sc-16g-2"
cases=json.loads((root/"official_case.json").read_text())
v14=Path("/tmp/nsa_pv_v014/codegen")
v09=Path("/tmp/nsa_pv_v014/codegen_v009")
v13=Path("/tmp/nsa_pv_v013/codegen/v013")
def sha(path): return hashlib.sha256(path.read_bytes()).hexdigest()
def normalized(path):
    out=[]
    for line in path.read_text().splitlines():
        if "block_max[0] = tl::AllReduce<tl::MaxOp" in line or "block_sum[0] = tl::AllReduce<tl::SumOp" in line:
            line=line.replace("[1088]", "[SCRATCH]").replace("[1024]", "[SCRATCH]")
        out.append(line)
    return "\n".join(out)
with (rep/"codegen_comparison.csv").open("w",newline="") as f:
    w=csv.writer(f)
    w.writerow(("case","manual_pv","v014_sha256","v009_sha256","v013_sha256","matches_expected","matches_except_reduce_scratch"))
    for i,c in enumerate(cases,1):
        path=f"case_{i:02d}.device.cpp"
        manual=c["block_size"]==32 or c["S"]>1
        a,b,d=sha(v14/path),sha(v09/path),sha(v13/path)
        expected=d if manual else b
        w.writerow((i,int(manual),a,b,d,int(a==expected),int(normalized(v14/path)==normalized((v13 if manual else v09)/path))))
        print(i,"manual" if manual else "gemm","exact",a==expected,"normalized",normalized(v14/path)==normalized((v13 if manual else v09)/path),flush=True)
