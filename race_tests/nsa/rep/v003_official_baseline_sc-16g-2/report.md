# v003 official submission baseline

Status: baseline complete. `submission.py` passed all 14 cases through the exact `run_kernel` entrypoint with `torch.allclose(atol=1e-2, rtol=1e-2)`. The benchmark used 7 warmups and 25 repeats per case.

Arithmetic mean latency: 0.127957 ms. Minimum case latency: 0.014479 ms. Maximum case latency: 0.578970 ms. Per-case data and raw run log are preserved in `benchmark/` and `run.log`.

Baseline kernel configuration: 64 threads, serial selected-block loop, and `tile_dim=min(128,next_power_of_2(D))`.
