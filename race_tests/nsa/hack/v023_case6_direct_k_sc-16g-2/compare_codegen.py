import csv,hashlib,json,tarfile
from pathlib import Path
root=Path("/root/tilelang-metax/race_tests/nsa")
rep=root/"rep/v023_case6_direct_k_sc-16g-2"
archive=root/"rep/v022_case6_case12_combined_sc-16g-2/generated_code.tar.gz"
exact=Path("/tmp/nsa_v023/codegen_exact")
cases=json.loads((root/"official_case.json").read_text())
def norm(data):
    out=[]
    for line in data.decode().splitlines():
        if "block_max[0] = tl::AllReduce<tl::MaxOp" in line or "block_sum[0] = tl::AllReduce<tl::SumOp" in line:
            line=line.replace("[1088]","[SCRATCH]").replace("[1024]","[SCRATCH]")
        out.append(line)
    return out
with tarfile.open(archive) as tar, (rep/"codegen_comparison.csv").open("w",newline="") as f:
    w=csv.writer(f)
    w.writerow(("case","v023_sha256","v022_sha256","exact_match","normalized_match"))
    for i,_ in enumerate(cases,1):
        name=f"case_{i:02d}.device.cpp"
        a=exact.joinpath(name).read_bytes()
        b=tar.extractfile(f"codegen_exact/{name}").read()
        h1,h2=hashlib.sha256(a).hexdigest(),hashlib.sha256(b).hexdigest()
        w.writerow((i,h1,h2,int(h1==h2),int(norm(a)==norm(b))))
        print(i,h1==h2,norm(a)==norm(b),flush=True)
