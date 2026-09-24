import statistics
import torch
n=1<<30
src=torch.empty((n,),device="cuda",dtype=torch.uint8)
dst=torch.empty_like(src)
src.fill_(1)
for _ in range(10): dst.copy_(src)
torch.cuda.synchronize()
times=[]
for i in range(3):
    a=torch.cuda.Event(enable_timing=True)
    b=torch.cuda.Event(enable_timing=True)
    a.record()
    for _ in range(31): dst.copy_(src)
    b.record()
    b.synchronize()
    elapsed_ms=a.elapsed_time(b)/31
    gbps=(2*n)/(elapsed_ms/1000)/1e9
    times.append(gbps)
    print(f"run={i+1} ms_per_copy={elapsed_ms:.6f} effective_GBps={gbps:.3f}",flush=True)
print(f"median_effective_GBps={statistics.median(times):.3f}",flush=True)
