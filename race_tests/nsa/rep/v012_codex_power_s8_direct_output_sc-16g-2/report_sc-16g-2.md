# v012: direct output store, rejected

Parent 25a8342c1eee6a696c9ab4b3b66328f36ff593d2 on codex-power; sc-16g-2 / MetaX C500 / 16G sGPU. User starting commit ffa68b684e3876df2821fe34c9959493c2ca065a.

Hypothesis: bypass the final FP16 shared output relay in the v010 case12 specialized kernel, saving two barriers. QK, V, online softmax, launch configuration and all other shapes remain unchanged.

Case12 exact `naive_nsa` reference passes. Project-native single screen is 117.294 us. A first 8-run ABBA comparison gave v010 116.4495 us, v012 117.317 us. A fresh 16-run ABBA comparison confirms v010 116.534 us, v012 117.2405 us (+0.7065 us, +0.61%). Thus the change fails the no-regression gate and is not promoted.

Exported device source confirms v010's five static `__syncthreads()` sites become three, and final stores change from coalesced `uint4` after shared staging to four `uint2` stores per lane with head/feature strides. Source and selected generated device source pass OJ static checks. The saved barriers do not repay the global store layout cost in end-to-end timing.

No full 14-case benchmark, profiler or external OJ run was justified after two negative paired screens. The root submission.py remains at the historical starting source until promotion of the best validated version.
