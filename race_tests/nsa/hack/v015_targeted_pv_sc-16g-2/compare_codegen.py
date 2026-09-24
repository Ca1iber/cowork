import csv,hashlib,json
from pathlib import Path
root=Path("/root/tilelang-metax/race_tests/nsa")
rep=root/"rep/v015_targeted_pv_sc-16g-2"
cases=json.loads((root/"official_case.json").read_text())
new=Path("/tmp/nsa_pv_v015/codegen")
base=Path("/tmp/nsa_pv_v014/codegen_v009")
manual=Path("/tmp/nsa_pv_v013/codegen/v013")
def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
def norm(p):
    lines=[]
    for line in p.read_text().splitlines():
        if "block_max[0] = tl::AllReduce<tl::MaxOp" in line or "block_sum[0] = tl::AllReduce<tl::SumOp" in line:
            line=line.replace("[1088]","[SCRATCH]").replace("[1024]","[SCRATCH]")
        lines.append(line)
    return "\n".join(lines)
with (rep/"codegen_comparison.csv").open("w",newline="") as f:
    w=csv.writer(f)
    w.writerow(("case","manual_pv","v015_sha256","expected_sha256","exact_match","normalized_match"))
    for i,c in enumerate(cases,1):
        selected=c["block_size"]==32 or c["S"]>=8
        path=f"case_{i:02d}.device.cpp"
        a=new/path
        b=(manual if selected else base)/path
        w.writerow((i,int(selected),sha(a),sha(b),int(sha(a)==sha(b)),int(norm(a)==norm(b))))
        print(i,"manual" if selected else "gemm","exact",sha(a)==sha(b),"normalized",norm(a)==norm(b),flush=True)
