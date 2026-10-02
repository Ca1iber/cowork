# Leader review: v102 native process-isolation diagnostic

Worker1 owns the plan. Worker2 supplied advisory-only comments; no cross-worker code or plan edit occurred. Leader approves one fixed diagnostic sequence B28-P84-C101-C101-P84-B28 repeated twice, all case10, using the immutable existing run_variant.py wrapper once per source/case in a fresh process. Do not change native seed, shapes, inputs, tolerance, naive_nsa reference, or W10R50.

This protocol change addresses a concrete execution risk: v101 ended137 with OOM10 to11 after twelve PASS rows and codegen files. Multiple modules causing that OOM is a hypothesis, not a verified cause. All three sources use the same new process-isolation protocol; do not compare old and new absolute times as algorithm gains. Candidate source remains immutable v101 SHAe828f662, not a new algorithm.

Record source/runner hashes, exact argv/PID/PGID, actual CSV rows,2s parent/child RSS/HWM and cgroup counters. Sampled RSS misses short peaks, shared mappings can be double counted, and cgroup usage is broader than a PID. No counter resets.

Any nonzero exit, OOM increment, inner Killed/error, changed hash or invalid/missing/extra CSV row stops subsequent jobs. Preserve failed prefixes, no adaptive retries or repeat-until-win. Old v101137 gates remain failed.

Twelve terminal0 jobs with no OOM only establish completion of this diagnostic protocol. Preserve all latency samples and round deltas; overlap/positive round delta cannot be called stable improvement. No automatic formal all14 or OJ promotion; leader reviews observed runtime and latency separately before next action.
