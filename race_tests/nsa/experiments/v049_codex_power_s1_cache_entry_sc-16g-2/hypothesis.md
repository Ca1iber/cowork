# v049: use original compiled-code cache without a per-call branch

Observed evidence: v048 case6 target median159.370us versus166.0055us (-3.997%). All14 native112/112 correctness passes, case6 -3.47%, but median cases1/3/7/9/10 slower.13 fallback device sources byte-identical. Candidate adds a per-call if before original key/cache lookup. Original host interface confirmed key=(B,L,H,HQ,D,S,BS,bool(causal)) and _KERNEL_CACHE.get.
Verified bottleneck: per-call branch is an added host operation; its exact timing contribution is unproven. GPU target implementation is already validated.
Current hypothesis: removing that operation can reduce small-case dispatch overhead while preserving the case6 arena improvement.
Proposed mechanism: leave original run_kernel body/AST completely unchanged. Append the own v048 helper and prefill the original _KERNEL_CACHE for exactly official case6 with its compiled code object. Compilation happens at module initialization; no input tensor, preprocessing result or GPU data work is cached or executed there. Every scored call still executes complete GPU attention work.
Predicted metric changes: case6 device source identical to v048, all other13 identical to v28;8192B shared/76MT/26ST stack0 unchanged. No new branch in timed entrypoint. All14 no-regression must still be measured and externally OJ-confirmed before promotion.
Falsifying result: cache key/ABI mismatch, source contract fails, kernel data work moves outside timed calls, case6 device changes, correctness fails, or other-case performance still regresses.
Risks: precompiled-code cache compatibility, module-import compile cost, exact shape specialization, cache table layout, residual environment variability. Code identity alone cannot waive no-regression. Preserve every timing and do not dismiss positive deltas as noise.

Original root remains exact42911561... on v28-based branch. No shared benchmark/reference/input changes, no GPU settings changes. This version changes host cache integration only.
