# v102 worker1: fixed native process isolation diagnostic

No kernel edits/new source. Immutable C101 archive e828f662 / parent84 4c674c79 / main original28 42911561. Candidate header remains v101. Four matching NSA directories contain protocol, utilities, evidence and source references; no full-source/reference/native-runner copy into experiments.

Leader approved one fixed sequence B28-P84-C101-C101-P84-B28 twice:12 sequential jobs,4/source. Each uses existing run_variant.py with NSA_VARIANT_SOURCE and NSA_CASES=10, original full naive_nsa/seed0/F16 causal/tolerance1e-2/warmup10/repeat50. No post-export inside native process, no metadata/reprofile/import test parallel. Startup/JIT not in measured event; event still surrounds50 Python calls and may contain host enqueue gaps.

run_fixed_diagnostic.py: stdlib orchestration, source/shared-input hashes before/after, exclusive onceguard, prelaunch command/source/PIDfile plan, actual PID/PGID,2s proc RSS/HWM and discoverable children/cgroup usage/OOM samples, real terminal wait, immutable native CSV/log. Runtime risk terminates only own isolated process group and stops remaining plannedjobs; no adaptive retries/prefix completion attempt.

Stop on any nonzero, OOM increment, inner Killed/explicitOOM, wrong/missing/extra row or source/shared hashes changed. Count only actual PASS CSV rows, not header or plannedlaunch. Prior v101137 and rejection remain unchanged. RSS/HWM samples may miss short peaks/child and parentRSS != cgroup total; lifetime cgroup maxima not reset, no victim/rootcause inference.

Runtime completion and latency interpretation separate. All12 terminal0 can show only this protocol completed. Preserve all raw/round medians/ranges/outliers; overlap/any positive round does not establish stable improvement, no repeatuntilwin. Full14/OJ requires later leaderreview, never autoformal. Worker2 direct design review is in peer_design_review.md and own cowork handoff; peer suggestions do not edit peer code/plan.
