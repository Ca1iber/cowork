import csv,hashlib,json,tarfile
from pathlib import Path
root=Path("/root/tilelang-metax/race_tests/nsa")
rep=root/"rep/v016_case6_shared_conflict_sc-16g-2"
archive=root/"rep/v014_selective_pv_sc-16g-2/generated_code.tar.gz"
exact=Path("/tmp/nsa_v016/codegen_exact")
cases=json.loads((root/"official_case.json").read_text())
with tarfile.open(archive) as tar, (rep/"codegen_comparison.csv").open("w",newline="") as f:
    w=csv.writer(f)
    w.writerow(("case","v016_sha256","v009_sha256","same_device_code","same_except_reduction_scratch"))
    for i,_ in enumerate(cases,1):
        filename=f"case_{i:02d}.device.cpp"
        a=exact.joinpath(filename).read_bytes()
        b=tar.extractfile(f"codegen_v009/{filename}").read()
        h1,h2=hashlib.sha256(a).hexdigest(),hashlib.sha256(b).hexdigest()
        x=a.decode().splitlines()
        y=b.decode().splitlines()
        def normalize(lines):
            result=[]
            for line in lines:
                if "block_max[0] = tl::AllReduce<tl::MaxOp" in line or "block_sum[0] = tl::AllReduce<tl::SumOp" in line:
                    line=line.replace("[1088]","[SCRATCH]").replace("[1024]","[SCRATCH]")
                result.append(line)
            return result
        w.writerow((i,h1,h2,int(h1==h2),int(normalize(x)==normalize(y))))
        print(i,h1==h2,normalize(x)==normalize(y),flush=True)
