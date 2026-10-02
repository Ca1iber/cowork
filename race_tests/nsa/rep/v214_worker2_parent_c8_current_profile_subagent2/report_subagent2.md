# v214: current parent C8 profile / 当前父版有限诊断

## 1. Scope / 范围
One original mcProfiler CLI counts2/custom/per-kernel, incumbent v084 SHA4c674c, official C8 (2,4096,1,16,64,1,16,True). No new kernel, metadata/resource/IR, native benchmark or full reference. Parent CPP24237/resource42MT20ST/max8/2KiB/stack0 reused as static context only.

## 2. Fixed inputs / 固定输入
Original driver573cb367/source4c/tool8b668655 and ten metrics/argv frozen in fixed_profile_manifest.json. Driver seed0/GradFalse/initial1+warm10+ROI20 differs native GradTrue/fullnaive/W10R50 and index construction. Three completion markers observed; actual total hardware launches/replays UNAVAILABLE. No input/SDK/GPU settings changed.

## 3. Process and guard / 进程与守卫
Original observer Popen wait0, stable child wait0 and MC CLI truewait0. 312 whole-CG samples/165.78156s, OOM3→3, no signals or innerKilled. 2GiB double admission, cooperative lock, 28GiB/runtime300s/unknown1GiB/phase-aware1s guard preserved. Sampling/namespace/accounting limitations remain. First approval-path check failed before any spawn; direct leader GO was separately recorded, no CLI retry.

## 4. Raw results / 原始结果
Two unique NSA dumped_result records: all10 finite/isErrorfalse. MTE68.568909/68.701510%; MMA6.814302/6.827479%; L2hit47.919206/47.921251%; WGload50.746225/50.560529cycles; shared nonconflict100%/conflict0. Read18,868,768/18,879,264B; write16,777,536/16,777,600B (16MiB+320/+384), within original payload consistency bound. Original formatted reports corroborate. See profile_audit.json and report_bundle/1_native_sparse_attention_kernel_dumped_result.json and record2.

## 5. Waves and scope / 波数与范围
Achieved8192/8192 and Dispatched8192/8192 recorded separately, no formula/equality gate assumed. Runtime grid UNAVAILABLE because raw umd_data empty; static parent grid4096×2. Own target command and raw observations only, no exclusive scope proof. WGload is not DRAM latency, global bytes are not calibrated HBM traffic, waves/staticmax are not occupancy. Old v200/v117 failure gates remain failed.

## 6. Interpretation / 有限结论
This run has valid numeric evidence; it is not a speed comparison, OJ result or unique bottleneck proof. Low MMA duty and substantial MTE duty motivate a separate falsifiable preparation/work organization hypothesis, while direct K experiment v212 already demonstrated that removing shared/sync can worsen latency. No single cause inferred from counters.

## 7. Closure / 闭环
Close finite diagnostic with raw tool output, true waits, guard samples, frozen inputs and audit. No recapture, trace, native, new codegen or automatic optimization. Submission directory only points to existing incumbent; candidate count0. Next mechanism requires separate own proposal/peer/leader review.
