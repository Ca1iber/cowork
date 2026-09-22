# v004 threads sweep

One mechanism was tested: CTA thread counts 64, 128, 192, and 256. The 64-thread control completed. Every candidate above 64 failed during MACA FullRow GEMM lowering with `warp_cols=0`; the repeated 128-thread process was stopped, and 192/256 repeated failures were recorded. No candidate latency was measured. The working submission was restored to the v003 64-thread source.
