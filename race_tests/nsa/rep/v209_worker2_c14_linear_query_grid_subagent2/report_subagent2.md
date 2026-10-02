# v209 C14 query grid experiment

## 1. Scope
Only official C14 (2,512,2,32,64,1,16,True), exact parent4c. Candidate0719 keeps parent14 AST prefix and other13 keys. Public submission429 unchanged. No OJ/full14 conclusion.

## 2. Hypothesis
Grid[512,4] becomes2048; decode batch/token/KVhead. Q/O base linear*1024 and Indiceslinear may reduce integer preparation or change working order. Hardware CTA order/cache reuse is unknown; old per-head traversal may be better. Work and payload unchanged.

## 3. Mechanism
Inverse grid/decode restores whole factory AST. Num16, QKPdenVPVout, dtype/vector paths, multiplyBS-before-guard, shared layout and7warp syncs stay original. Actual CPP has7 index-line differences, all other lines identical. 2097152 actual address checks and2048 Indices correspondences pass. Host P[512,4,64,1,1,2048], C[2048,64,1,1,2048]; dynamic shared slots10/9.

## 4. Protocol
One fixed B-P-C-C-P-B x2, each source fresh process. Original seed0/GradF16/fullnaive/tol1e-2/W10R50/no export. 12native actual waits0,4C/12total references. Event50Pythoncalls may contain host enqueue gaps. Cooperative lock,2GiB double admission,28GiB/unknownRSS1GiB/OOM/600s guards retained. OOM3 stable; sampled whole peak22,967,934,976B is a lower bound.

## 5. Parent evidence
One profiler CLI0/two ten-numeric records:2048waves/write4MiB+320. Runtimegrid unavailable, necessary nonexclusive scope only. MTE53.24/53.98,MMA5.26/5.33,WGload50.37/50.62 cycles,shared100/0; not bottleneck/HBM/DRAM proof. Three driver completions, total hardware launches unknown; gradFalse/inputs/31calls differ from native. Exact c695/SDK/options allow parentresource reuse. Candidate resource1 and first IR2 all0; both42MT20ST/max8/stack0/dyn2K. IR8MMA/7sync/4oldshfl, no private spill; Qprep shorter/kernelblockY removed. Occupancy/effective roofs/final ISA width unavailable.

## 6. Results and limits
Cmedian15.0295us vs P15.053us, -0.156115%; rounds -.641384%/-.086422%. Ranges overlap: inconclusive_target_overlap_or_round_regression, no promotion. All raw values kept, including C15.191/B20.337. No retry, extra profile or full14. Initial helper NameError before TileLang import gate1 remains; independent recovery01 gate0. Semantic gate0 saved, initial shell OS exit unavailable. Tool write-size rejection did not execute; small directory-create failure made no mutation. Smaller direct writes recovered closure only.

## 7. Artifacts
Exact submission archive SHA0719e8e9fa5f14641ee79692bed0f526e445573ffc447c199ac5bedb39bcd725. Commands/helpers, raw report/samples/CSV/nativewait, initial/recovery failures and source/semantic proofs retained. See closure_summary.json, screen_summary.json, metadata_semantic_gate.json, profile_audit.json, parent_resource_reuse_identity.json and archive_sha256.json. No main/OJ promotion. Further changes require a new plan and peer/leader review.
