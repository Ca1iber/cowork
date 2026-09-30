# v006: direct fragment-to-global output for case6

Starting branch: codex-power, parent commit 7cda4a1daf89dfc4866e3c6587e77e67081341dc. The candidate is built only from the user's ffa68b684e3876df2821fe34c9959493c2ca065a original kernel and the TileLang primitive surface; no prior optimized NSA kernel is imported or copied. Machine: sc-16g-2 / C500 16G sGPU.

Observed evidence: exact v004 case6 is 220.974 us official, 218.624 us mcTracer device median. Its generated C++ writes FP32 output_acc through FP16 output_shared, then synchronizes and copies output_shared to global Output. There are seven static CTA sync sites; two occur around final output staging. v005 explicit K/V swizzle produced byte-identical device code and was stopped. The device is below the conservative physical HBM roof, but mcProfiler global read/write counters were unavailable.

Hypothesis: for the S1,BS32,D128,G16 case6 path, storing each output_acc element directly to the final global Output through a TileLang T.Parallel loop will eliminate the output_shared round trip and its synchronization while preserving the numerical conversion to fp16. Predicted case6 generated C++ changes, static CTA sync sites fall below seven, and official end-to-end case6 latency falls reproducibly below v004. Falsifiers: compiler layout conflict, incorrect output, identical codegen, divergent memory coalescing, or no paired latency gain. Other official shapes retain the original path.

The exact candidate must use only `import tilelang`, `import tilelang.language as T`, and `from tilelang.layout import make_swizzled_layout`; no class, async copy, foreign device code or Torch kernel computation.
