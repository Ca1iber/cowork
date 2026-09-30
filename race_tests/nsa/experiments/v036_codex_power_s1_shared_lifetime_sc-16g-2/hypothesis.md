# v036 hypothesis / sc-16g-2

Observed evidence: v035 case6 native298.941us, tracer295.424us, 16384 waves vs baseline8192, MMA4.63% vs6.06%; actual shared12288B. Registers fell to50 without a latency win.
Verified bottleneck: feature partition doubled waves and duplicated QK; resource reduction alone failed. Exact pipeline stall cause remains unmeasured.
Current hypothesis: one64-thread CTA full128 output plus Q/K/V lifetime alias removes duplication and reduces shared from12KB to8KB. Increased output accumulators may offset gains.
Proposed mechanism: gridL x BH; one shared32x128 buffer, Q copy first16 rows then register cache, warp fence, K fullcopy then QK, warp fence, V fullcopy then fullPV; all synchronous.
Predicted metrics: waves8192, actual shared8192B, stack0; native case6 below original v28 approx156us needed for target success.
Falsifier: native reference failure, spills, generated alias/fences absent, or case6 remains slower than v28.
Risks: output accumulator32 FP32/lane increases pressure, producer/consumer alias fences, FP16 probability bridge. Non-target fallback remains baseline AST unchanged.
Identity: branch codex-power-v28-base, start efe7cb50c; original v28 shared root39ff49e7b SHA42911561. Exact three imports, firstline codex-power v036.
