# v234 Case2 bounded K/V index: limited four-source result

## 1. Scope and source

Exact official Case2 `(1,128,1,16,64,1,16,True)` only. Candidate header234 / SHA `7c9838e1471baddf3dadda12a899f7beba902e3dc769154ba2d246f328cd65c0` retains current CB13 complete18 AST prefix, correct JIT decorator and other13 source paths. Inside the original uniform valid guard, bounded_start clamps raw block_start to0..112 and only K/V row expressions use it. Original Indices*16, guard, causal mask, layouts, Num16, rounded-F16 P denominator, mathematics and Output remain. No worker1 or leader source/plan edits. See [source identity](source_identity.json) and [archived source](../../submission/v234_worker2_case2_bounded_kv_index_subagent2/submission.py).

## 2. Hypothesis and actual compilation

Official legal8 blocks make the clamp an identity. Independent2048 complete16B K/V vector checks prove half≤8191 and last byte16383, bounds/alignment. Actual CPP differs by two K/V load address expressions; whole host byte-identical. Actual smin112 and row-scale/add intermediates are i32 before late zext/GEP64. MT42→40, ST20, staticmax8, stack0, shared2048; staticmax is not measured occupancy. Actual8MMA/7warp sync/4bpermute/no alloca opcode or AS5. CPP uint4 intent is not proof of final ISA transactions; ISA unavailable. Parent backend reuse required byte-identical CPP85b2/SDK5d/options, without borrowing C9 timing/counters. [Semantic gate](metadata_semantic_gate.json) and [backend records](backend_commands_results.json).

## 3. Fixed execution and correctness

One B28–P84–CB13–C234–C234–CB13–P84–B28 sequence×2:16 fresh processes, original Case2/seed0/F16GradTrue/fullnaive1e-2/W10R50/no export. All16 real native waits0, exact one-row CSV PASS each, clean4 candidate/16 inclusive full references; original outer Popen wait0. The original timing includes50 Python enqueues and may include host gaps, not pure kernel/OJ timing. No old samples pooled. [Jobs](screen_jobs.json), [original wait](native_supervisor_originalPopen_wait.json), [all raw rows](screen_case2_subagent2.csv).

## 4. Performance and raw values

|Source|Four raw microseconds|Median us|C234 delta %|
|---|---|---:|---:|
|B28|9.236,9.897,9.923,9.482|9.6895|-8.111874|
|P84|9.211,9.472,11.346,9.027|9.3415|-4.688754|
|CB13|9.052,9.457,9.062,8.678|9.0570|-1.694822|
|C234|8.970,9.211,8.689,8.837|8.9035|0|

Two round deltas vsCB13 −1.772111/−1.206313%; vsP84 −2.686935/−13.974378%. Candidate8.689..9.211 overlaps CB13 8.678..9.457 and P84 9.027..11.346. High11.346 is retained; old v233 Case2 high11.269 and positive deltas remain independent. Same parent factory does not imply equal P84/CB13 timing. [Full summary](screen_summary.json).

## 5. Runtime evidence and limits

Native1263+compile93 JSONL samples, OOM3→3, observed whole-cgroup peak24,507,289,600 bytes, no signals or abort. Critical missing confirmations were bounded and resolved by original Popen terminal0; they are retained in process records. Admission3GiB+25GiB engineering estimate+4GiB reserve, runtime28GiB/unknownRSS1GiB/600s/.5s/critical1s50ms/verified ownership/cooperative lock/priorabort/no retry unchanged. Sampling/namespace/accounting limits mean observed peak is not a future upper bound. [Raw audit](native_raw_readonly_audit.json).

## 6. Decision and case impact

Local correctness passed; latency result is inconclusive because both current-control ranges overlap. No promotion, repeat, full14, profile or OJ conclusion. Address-width compilation is an observed mechanism; it does not prove a bottleneck or explain v233 regression. Other13 source unchanged; their freshly generated device bytes and performance are UNAVAILABLE in this selected run. C303 trial submission and worker1 v136 remain untouched.

## 7. Reproducibility and closure

Four version directories contain own hypothesis/proofs/helpers, exact candidate archive, original exports/SDK logs/IR/CSV/waits and all1356 JSONL samples. [Inventory](archive_sha256.json) records exact bytes/SHA and excludes itself plus Python cache files. Frozen preparation stage flags remain historical snapshots; independent GO records document actual authorization. See [closure summary](closure_summary.json). Source and communication commits/bundles are scoped to this version and workers/worker2 respectively.
