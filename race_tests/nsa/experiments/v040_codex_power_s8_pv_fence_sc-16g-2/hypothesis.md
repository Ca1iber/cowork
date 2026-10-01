# v040 hypothesis / sc-16g-2

Evidence: v039 native case12 93.307us PASS, tracer90.368us,72MT/max7/shared4608. Compiled K shared bytes[0,2048), V[2048,4096), disjoint. Original v28 approximately83.7us remains incumbent.
Hypothesis: removing first-PV pre-fence per valid pair reduces redundant ordering cost. Each valid pair executes at least one QK pre-fence before any PV, so prior-pair V reads have already completed. No V access during this pair QK; K/V regions must stay disjoint. Second PV still requires fence before overwriting V consumed by first PV.
Mechanism: retain PV pre-fence only when which==1, no other kernel/mathematical changes. Keep all producer-to-consumer post-fences and final output fences.
Predictions: one fewer fence per valid pair (up to4per token), resources/stores/loads/math unchanged. Must inspect new lowering for same K/V separation before native benchmark. Native12 must beat fresh v28; otherwise reject. No physical roof or occupancy assumed.
Falsifier: regions alias, reference fails, or latency not better than v28. All official cases keep fallback AST; any local target win then needs paired14 and external no-regression OJ gate.
Identity: starta7ab5acbc, mainrepo/codex-power-v28-base/sc-16g-2. Candidate/tmp/nsa_power_v040_pv_fence.py, firstline codex-power v040, exact3imports, synchronous native TileLang only. Fresh baseline profile is v039 path, no copied shared inputs.
