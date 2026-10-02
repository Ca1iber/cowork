# v112_worker1_fixed_parent_and_target_mcprofiler_sc-16g-2

## 1. 上版本遗留问题

v111 completed export/resource only. C11 timing positive deltas in v108/v109 remain; C12 target gain lacks a completed paired profiler comparison.

## 2. 问题原因分析

Observed unknown-heavy PID413559/PPID413553/start96319410/python3.12 exceeded 1GiB RSS. Ownership and historical OOM cause remain UNKNOWN. Guard stop is not proof of a kernel error.

## 3. 本版本解决方案

Fixed once three serial mcProfiler CLI: P84 C11, P84 C12, C104 C12, counts2/original10metrics/driver573. No algorithm/native changes.

## 4. 具体落地策略

Original4GiB double admission/28GiB runtime/OOM13/unknown1GiB/300s/0.5s/identity rules retained. First tracked wrapper terminated only after owned PID/start/exe checks. Later CLI not started. No replay or changed scope.

## 5. Benchmark 对比

No native benchmark/fullreference was executed: candidate0/inclusive0. Previous v108168 and v10996 cleanrefs remain independent, with all positive deltas retained. No current latency/no-reg/OJ claim.

## 6. Profile 指标变化

Actual counters0/validscope0 vsplanned6. Controller original wait1, wrapper original wait-15; SDK original wait UNAVAILABLE. OOM13->13. Partial driver/SDK execution occurred; total attention launches UNMEASURED. No fabricated metric, HBM/occupancy attribution or resource-based performance claim.

## 7. 实验总结

Status failed_unknown_heavy_guard_profile_incomplete. Source27f/header104 and main429 unchanged. Preserve partiallog, signals, sampler, startup SyntaxError and actual wait. Next propose a concrete C11 S4 phase mechanism based on known code/resources, with peer/leader review.
