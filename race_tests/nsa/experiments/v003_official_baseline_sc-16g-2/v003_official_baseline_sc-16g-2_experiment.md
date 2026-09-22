# v003 official submission baseline

Purpose: establish a correctness and performance baseline for the exact `submission.py` entrypoint on the 14 cases in `official_case.json` before the first generic parameter trial. Current baseline parameters are 64 threads and `tile_dim = min(128, next_power_of_2(D))`.

Correctness uses the reference's D-dependent `1/sqrt(D)` scale and `torch.allclose(atol=1e-2, rtol=1e-2)`. Timing uses 7 warmups and 25 CUDA-event repeats per case.
