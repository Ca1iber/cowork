# v003 official submission baseline

Purpose: establish correctness and latency for the exact `run_kernel` submission on the 14 cases before parameter tuning.

The submitted implementation is archived once at `race_tests/nsa/submission/v003_official_baseline_sc-16g-2/submission.py`. The shared test runner, reference, and case list remain at `race_tests/nsa/test_tilelang_nsa_fwd.py`, `race_tests/nsa/reference.py`, and `race_tests/nsa/official_case.json`; their source hashes and the starting commit are recorded in this directory. No copies of those shared inputs are kept here.

Baseline configuration: 64 threads, serial selected-block loop, `tile_dim=min(128,next_power_of_2(D))`. Correctness passed 14/14 with `atol=1e-2, rtol=1e-2`; timing used 7 warmups and 25 repeats.
