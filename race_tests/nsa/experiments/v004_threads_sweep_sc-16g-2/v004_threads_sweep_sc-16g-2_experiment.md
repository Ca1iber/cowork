# v004 threads sweep

One optimization mechanism: vary only TileLang CTA thread count. Sweep 64 (control), 128, 192, and 256 threads; retain the same `tile_dim`, serial loop, softmax, and memory mapping. The 32-thread option is omitted because C500's MACA MMA emitter uses 64-lane warps.

Hypothesis: more threads per CTA may improve operand issue and per-CTA work distribution for the fixed GQA tiles. Falsifier: correctness failure, compile failure, or no stable 14-case mean-latency improvement beyond run-to-run noise.

Benchmark: exact submission.run_kernel path, 14 official cases, reference allclose atol=1e-2/rtol=1e-2, 7 warmups, 25 CUDA-event repeats per case. Each variant receives two rounds; order is baseline/128/192/256 then 256/192/128/baseline. The root submission is restored to v003 after the sweep.
