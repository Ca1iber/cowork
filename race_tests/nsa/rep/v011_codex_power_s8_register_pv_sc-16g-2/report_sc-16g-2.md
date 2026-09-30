# v011: register-fed PV, rejected at case12 screen

Parent: 4a2346e8d on codex-power; user starting commit ffa68b684e3876df2821fe34c9959493c2ca065a. Machine: sc-16g-2, MetaX C500, 16G sGPU.

Hypothesis: remove the shared V tile and two barriers by loading each 16x16 PV tile directly into lane-local registers. QK, online softmax and other shapes use v010's independent implementation.

Result: exact case12 `naive_nsa` reference PASS; project-native 10-warmup/50-repeat latency 164.122 us (v010 around 117.7 us). Source and selected generated device C++ pass the OJ static rules. Candidate imports are the exact three allowed TileLang imports. Therefore this mechanism is rejected; no full 14-case or external OJ was run.

Diagnosis from exported device C++: static `__syncthreads()` sites fall from five in v010 to three, and V shared copy disappears. But v010's V copy issues four coalesced `uint4` loads per selected block (8 half values per lane per load), while v011 emits four scalar half loads for each of four output tiles (16 scalar loads per lane) plus per-element bounds checks. This cost outweighs the removed shared path and barriers. Correctness and generated code are attached under `codegen/` and `screen_case12_sc-16g-2.csv`.

The root `submission.py` is intentionally unchanged. v010 remains the best locally validated OJ-ready candidate; v011 has no submission copy.
