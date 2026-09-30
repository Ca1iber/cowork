# v002: two grouped tiles of four selected blocks

Starting branch: codex-power, parent commit dc10af54b. Exact historical baseline source is ffa68b684e3876df2821fe34c9959493c2ca065a:race_tests/nsa/submission.py; no prior optimized NSA kernel is imported or copied. Machine: sc-16g-2 / C500 16G sGPU.

Observed evidence: v000 case12 is correct at 124.155 us official latency and 120.576 us device median. Its selected-block loop repeats QK, online softmax and PV 8 times. v001 merged all 8 into a 128-token tile and stayed correct, but a project-native case12 screen measured 674.616 us. Generated code retained long MFMA loops and used 109 MT/56 ST registers with staticMaxWarps/PEU=4; 128-token scores enlarged per-thread fragments to 32 FP32 values.

Hypothesis: group four selected 16-token blocks into a 64-token tile, run two online-softmax segments, and reuse a smaller shared/fragment footprint. This retains the mathematical online combination while reducing softmax and launch-site work versus eight one-block stages. Expected shared Q/K/V/output storage is about 20 KB, score fragment half the v001 size, and target latency below the v000 baseline if occupancy and reduction cost improve. Falsifiers: any reference failure, forbidden import/lowering, compile failure, or no stable end-to-end improvement on the exact official case12 shape.

Risk: an all-invalid second segment must be skipped, mixed valid/invalid positions must be masked, and changed reduction order may exceed the official tolerance. The exact candidate uses only the user's three allowed imports; no async copy, foreign code, or Torch kernel work. No helper class is needed.

Outcome: Falsified by the first full-reference case12 screen. The candidate is correct and OJ-static-valid, but 242.396 us versus v000's 124.155 us. MXCC reports 150 MT/30 ST registers and staticMaxWarps/PEU=3, worse than both the predicted resource reduction and the v000 baseline. The generated code still runs two segments with sequential MFMA loops. Stop and archive before changing mechanism.
