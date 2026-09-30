# v012: direct output store for the S=8 case12 path

Starting branch `codex-power`, parent 25a8342c1eee6a696c9ab4b3b66328f36ff593d2; user's starting commit ffa68b684e3876df2821fe34c9959493c2ca065a. Candidate starts from this branch's independently derived v010 OJ-ready source. No previous team optimized NSA source is consulted or copied.

Evidence: v010 case12 project-native paired median is 117.689 us and mcTracer device median 113.792 us. Its exported device source contains a final `output_acc` FP32-to-FP16 shared copy, two `__syncthreads()` sites, then a coalesced global store. The v011 attempt to eliminate V shared was rejected at 164.122 us because it changed V loading from vectorized `uint4` to scalar half. This experiment leaves QK, V, score reduction and online softmax as v010 and changes only the final output path.

Hypothesis: a direct TileLang fragment-to-global `T.copy` of `output_acc` can remove the FP16 `output_shared` relay and two static barriers, improving case12 end-to-end and device latency. Because the output is written once per program after all selected blocks, scattered stores may still outweigh the saved sync; generated C++ and timing will falsify this.

Gate: exact `naive_nsa` reference for case12, source/generated OJ static rules and a project-native screen before full 14-case validation. A winning variant must show no material regression on all other official cases, especially case6. User's exact three imports only; no async copies, foreign device calls, or GPU work through Torch. No helper class is needed.
