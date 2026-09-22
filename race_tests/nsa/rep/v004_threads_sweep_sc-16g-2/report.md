# v004 threads sweep — failed compile candidates

This version changed only CTA thread count; `tile_dim`, loop structure, warp policy, and arithmetic were unchanged.

- 64-thread control: 14/14 correctness pass; round 1 mean latency 0.1205 ms.
- 128, 192, and 256 threads: first-round compilation failed in MACA `GemmWarpPolicy.FullRow` lowering with `warp_cols=0`; no correctness or latency result exists for these settings.
- 192 and 256 threads failed the repeated compile attempt as well. The repeated 128-thread attempt was terminated while the same failure pattern was being investigated (exit 143).
- The separate v003 baseline mean was 0.127957 ms, while this sweep's 64-thread control was 0.1205 ms. This spread shows run-to-run variation; because no larger-thread candidate produced timings, v004 has no performance winner.

Root `submission.py` is restored byte-for-byte to the 64-thread v003 baseline. No v004 submission artifact was created.
