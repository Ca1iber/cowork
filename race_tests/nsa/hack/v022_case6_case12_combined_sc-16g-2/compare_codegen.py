import csv,hashlib,json,tarfile
from pathlib import Path
root=Path("/root/tilelang-metax/race_tests/nsa")
rep=root/"rep/v022_case6_case12_combined_sc-16g-2"
baseline=root/"rep/v014_selective_pv_sc-16g-2/generated_code.tar.gz"
case6=root/"rep/v016_case6_shared_conflict_sc-16g-2/generated_code.tar.gz"
case12=root/"rep/v021_case12_direct_k_sc-16g-2/generated_code.tar.gz"
exact=Path("/tmp/nsa_v022/codegen_exact")
cases=json.loads((root/"official_case.json").read_text())
def norm(data):
    out=[]
    for line in data.decode().splitlines():
        if "block_max[0] = tl::AllReduce<tl::MaxOp" in line or "block_sum[0] = tl::AllReduce<tl::SumOp" in line:
            line=line.replace("[1088]","[SCRATCH]").replace("[1024]","[SCRATCH]")
        out.append(line)
    return out
with tarfile.open(baseline) as t0, tarfile.open(case6) as t6, tarfile.open(case12) as t12, (rep/"codegen_comparison.csv").open("w",newline="") as f:
    w=csv.writer(f)
    w.writerow(("case","expected_version","v022_sha256","expected_sha256","exact_match","normalized_match"))
    for i,_ in enumerate(cases,1):
        name=f"case_{i:02d}.device.cpp"
        data=exact.joinpath(name).read_bytes()
        if i==6: expected=t6.extractfile(f"codegen_exact/{name}").read();version="v016"
        elif i==12: expected=t12.extractfile(f"codegen_exact/{name}").read();version="v021"
        else: expected=t0.extractfile(f"codegen_v009/{name}").read();version="v009"
        a,b=hashlib.sha256(data).hexdigest(),hashlib.sha256(expected).hexdigest()
        w.writerow((i,version,a,b,int(a==b),int(norm(data)==norm(expected))))
        print(i,version,a==b,norm(data)==norm(expected),flush=True)
