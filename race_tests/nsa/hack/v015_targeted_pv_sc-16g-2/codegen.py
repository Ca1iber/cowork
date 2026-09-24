import importlib.util
import json
from pathlib import Path
import torch
import tilelang

tilelang.set_log_level("ERROR")
root=Path("/root/tilelang-metax/race_tests/nsa")
source=root/"submission/v015_targeted_pv_sc-16g-2/submission.py"
out=Path("/tmp/nsa_pv_v015/codegen")
out.mkdir(parents=True,exist_ok=True)
spec=importlib.util.spec_from_file_location("submission",source)
mod=importlib.util.module_from_spec(spec)
spec.loader.exec_module(mod)
cases=json.loads((root/"official_case.json").read_text())
for idx,c in enumerate(cases,1):
    b,seq,h,hq,d,s,bs=(c[x] for x in ("B","SEQ_LEN","H","HQ","D","S","block_size"))
    q=torch.zeros((b,seq,hq,d),device="cuda",dtype=torch.float16)
    k=torch.zeros((b,seq,h,d),device="cuda",dtype=torch.float16)
    v=torch.zeros((b,seq,h,d),device="cuda",dtype=torch.float16)
    indices=torch.zeros((b,seq,h,s),device="cuda",dtype=torch.int32)
    output=torch.empty_like(q)
    mod.run_kernel(q,k,v,indices,output,b,seq,h,hq,d,s,bs,int(c["is_causal"]))
    torch.cuda.synchronize()
    key=(b,seq,h,hq,d,s,bs,bool(c["is_causal"]))
    mod._KERNEL_CACHE[key].export_sources(
        kernel_path=str(out/f"case_{idx:02d}.device.cpp"),
        host_path=str(out/f"case_{idx:02d}.host.cpp"))
    print(idx,flush=True)
