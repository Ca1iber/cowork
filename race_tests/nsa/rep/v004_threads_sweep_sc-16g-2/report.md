# v004 threads sweep — failed at compilation

One variable was swept: CTA threads 64 (control), 128, 192, and 256; all other source parameters were held fixed. The 64-thread control passed all 14 cases in the first round (mean 0.1205 ms). The 128-, 192-, and 256-thread candidates failed during TileLang/MACA GEMM lowering before correctness or timing; the compiler reported `warp_cols=0` in the FullRow layout for the current score tile. No performance result is claimed for those candidates.

A second-round candidate process was stopped after the same compile-failure pattern. Its partial logs are retained. The v003 64-thread source has been restored as the working submission.
