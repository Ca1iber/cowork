# Coordination protocol

## Branch and file ownership

Leader writes main and tasks/, evidence/, integration/. Each worker pushes only its own communication branch: worker1 or worker2. Each owns workers/<worker>/ and handoffs/<worker>/. Never force-push or rewrite shared history. Fetch and merge origin/main into the communication branch before reading changed assignments. Keep the communication checkout separate from the TileLang source checkout.

The source repository remains /root/tilelang-metax on each container. Worker1 keeps codex-power-v28-base; worker2 branches from the exact leader-published checkpoint. No worktrees. No cross-worker branch switching. Do not change main submission.py or common reference/test inputs.

## Status updates

Publish workers/<worker>/status.json after environment preparation, hypothesis selection, screen, formal benchmark, profile, and version closure. Include UTC timestamp, source commit/SHA, candidate path, cases, actual job PID/stage, correctness counts, benchmark/profile paths, target and non-target deltas, blockers, and next step. Also notify leader with a short collaboration message after each publication. Leader checks checkpoints and sends written feedback through tasks/<worker>.json and integration/reviews/. Do not rely on a long-running job being silent to infer completion.

## Evidence and version closure

Use same-machine native naive_nsa correctness and W10R50 timing without changed inputs/tolerance/shapes. Screens are selected-case screens, not all14 verdicts. Compare each candidate against exact v084 and original v28 on its own container. Do not compare absolute latency across the two containers as an optimization verdict. Preserve all raw observations, including outliers and non-target regressions. No repeat-until-win. Profile and lowering/resource evidence must support the proposed mechanism. Follow the NSA four-directory AKO4ALL workflow and bilingual scoped commits.

Worker1 versions v100-v199; worker2 versions v200-v299. Begin every source with # codex-power vxxx. Each version must close before the next kernel edit. Worker2 must freshly inspect machine/software/profiler identity. Do not infer equal performance or HBM/L2 from a nominal 25% slice. Never store passwords, private keys, access tokens or credentials here.

## Handoff and integration

A merge proposal includes exact base commit, candidate commit and SHA, assigned-case implementation patch, import/generated-code validation, full14 correctness results, paired target/non-target timings, profiler summary and known risks. Leader owns integration and the final all14 benchmark on sc-16g-2. A local win does not establish an OJ score gain. Preserve v084 OJ scores as the external comparison vector until the user supplies another result.

Both containers may run independently. Within each container, do not overlap heavy GPU benchmark/profiler/compiler jobs. Do not install dependencies or change GPU settings without a concrete authorized plan.

## Direct worker exchange and peer review

Workers must directly exchange evidence and review each other before editing a new mechanism. Use collaboration messages to the other worker and persist the discussion in workers/<author>/lessons/ and workers/<author>/reviews/. Each review stays in the author-owned branch; never edit another worker's files or cases. Leader relays both Git branches through a peer snapshot so workers can read actual evidence without credentials.

Before edit: send observed profile/codegen/resource facts, proposed mechanism, numerical/index/synchronization risks and falsifiers to the peer. Peer responds with concrete agreement, counterexample, or missing evidence. Leader considers both and approves or changes the plan. After screen: exchange the raw scope, regressions, resource tradeoffs and failure reasons. Results with unfinished or failed process gates cannot become successful verdicts.

Shared principles and evidence may inform another case; do not copy old team algorithms or assume a win on one shape transfers to another. Each worker retains independent validation on its own machine. Final integration remains leader-owned.
