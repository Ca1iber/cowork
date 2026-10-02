# v212: C8 direct K operand (subagent2)

## 1. Scope and hypothesis / 范围与假设
Only official C8 (2,4096,1,16,64,1,16,True), exact v084 parent 4c674c. Direct global K to the existing MFMA operand removes K shared write/read and two warp barriers. Global K changes 2×16B to 4×8B per lane; extra instructions/address distribution are reverse costs. No async, cached values, or foreign code.

## 2. Source and compliance / 源码与规则
Candidate/archive SHA66871ec89712c58e3432485fcd63601175c7de0b1f29bfe27f4a586dd5a528e4, header212 and exact three imports. Parent14 AST prefix and inverse K-phase AST prove only C8 dispatch changes. Q/PV/Num16/P rounding/den/valid/causal/output remain parent. Other13 generated device code and performance are UNAVAILABLE; source equality is not a no-regression guarantee. See source_identity.json and direct_K_mapping_proof.json.

## 3. Generated mechanism / 编译证据
Metadata, independent strict generated/geometry gate, candidate SDK resource and first O3 IR all true wait0. Parent CPP/SDK/options identities matched and existing parent resource/IR reused. Full-valid candidate has 8 MMA, 4 shuffle reductions, 5 warp syncs. 131072 K-vector address checks pass; preV protects Qshared reads before V overwrite. Initial semantic parser1 and declaration-order diff are retained; independent readonly recovery0 performs no GPU retry. See metadata_semantic_gate.json and generated_geometry_gate.json.

## 4. Resources and runtime / 资源与运行
Parent42MT/20ST→candidate48MT/24ST; staticmax8, shared2048B and stack0 unchanged. Static max is not measured occupancy. Native original Popen wait0; all12 child exits0, original naive PASS, clean4 candidate/12 inclusive full references, OOM3→3. Fixed B28-P84-C-C-P84-B28×2, source-fresh, original seed0/F16GradTrue/tol1e-2/W10R50/no export. No timed-function changes. Samples are original event50 Python enqueue timing, not pure GPU kernel time. See native_originalPopen_wait.json, screen_jobs.json and screen_case8_subagent2.csv.

## 5. Results / 结果
Median candidate43.187us vs parent40.3275us (+7.090694935%), original28 51.517us. Round deltas +7.267127796% / +6.914393227%. Candidate42.931..43.448us entirely above parent40.253..40.407us; all raw values/high points preserved. Target median and both rounds reject. Compile mechanism success does not imply latency gain.

## 6. Limits and failures / 限制与失败
No unique coalescing/register/barrier cause is proved. Actual ISA transactions/HBM bandwidth/occupancy are UNAVAILABLE. Original preparation stale SHA and API errors were corrected before heavy launch with old records retained. Parser failure remains1 and recovery0 is separate. Historical v200/210 failures remain unchanged. No full14/profile/OJ score claim; v213 CycleTrace was not executed by worker2.

## 7. Decision and artifacts / 决策与归档
Rejected; no retry, added samples, full14, or main promotion. Exact submission archive is retained for reproduction only. closure_summary.json holds scoped counts and raw statistics; archive_sha256.json inventories this version only, excluding itself and pycache. CycleTrace preparation/evidence stays independent.
