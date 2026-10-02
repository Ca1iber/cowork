# v200 worker2 baseline and profile diagnosis

Source checkout /root/tilelang-metax; branch exp/nsa-worker2-s1-from-v084; base7bb0e33b. Exact original v28 and archived v084 are referenced by diagnostic_plan.json path+hash, never copied into experiments.

run_baseline.py executes run_case.py in one fresh process per official case. run_case.py loads two exact sources, calls the unmodified shared native _run_one_case in fixed B-P-P-B order, and exports actual two device/host sources only after all native measurements. It does not modify seed/shapes/grad/reference/tolerance/W10R50. Full references:56 control-inclusive, 28 original+28 parent, candidate0. Environment smoke is separate1parent reference.

run_post_baseline.sh / run_post_baseline.py wait on the actual native terminal gate; then analyze_baseline.py, validate exact sources against all28 device CPPs, run_profile.py, analyze_profile.py, capture_resources.py sequentially. Profile has6 CLI jobs with2 samples each,12 raw samples total, cases5/8/9 and two sources; existing shared profiling driver is requires_gradFalse and does not execute naive_nsa (0 references). mx-smi summary sampling is read-only. Resource reports are six direct mxcc device-object builds from fresh actual device sources.

No optimization source or new submission is created in this diagnostic version. No common source/input/runner is changed. Failure/positive delta/outlier records remain raw; no repeat-until-win. Report/scoped bilingual code commit closes diagnosis before any v201 kernel edit.
