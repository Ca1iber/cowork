import importlib.util
import os
from pathlib import Path
import torch
from reference import naive_nsa

source = Path(os.environ['NSA_VARIANT_SOURCE'])
spec = importlib.util.spec_from_file_location('candidate', source)
mod = importlib.util.module_from_spec(spec)
spec.loader.exec_module(mod)
for D, S, BS in ((128, 1, 32), (64, 8, 16)):
    B, N, H, HQ = 1, 64, 1, 16
    torch.manual_seed(17)
    q = torch.randn((B, N, HQ, D), device='cuda', dtype=torch.float16)
    k = torch.randn((B, N, H, D), device='cuda', dtype=torch.float16)
    v = torch.randn((B, N, H, D), device='cuda', dtype=torch.float16)
    indices = torch.full((B, N, H, S), N, device='cuda', dtype=torch.long)
    for t in range(N):
        indices[0, t, 0, 0] = t // BS
        if S > 1 and t >= BS:
            indices[0, t, 0, 1] = t // BS - 1
    counts = (indices != N).sum(dim=-1)
    out = torch.empty_like(q)
    mod.run_kernel(q, k, v, indices.int().contiguous(), out, B, N, H, HQ, D, S, BS, 1)
    with torch.no_grad():
        ref = naive_nsa(q=q, k=k, v=v, g_slc=torch.ones((B,N,HQ), device='cuda', dtype=q.dtype), g_swa=torch.ones((B,N,HQ), device='cuda', dtype=q.dtype), block_indices=indices, block_counts=counts, block_size=BS, scale=None)
    torch.testing.assert_close(ref, out, atol=1e-2, rtol=1e-2)
    print(f'PASS current-block edge D={D} S={S} BS={BS}', flush=True)
