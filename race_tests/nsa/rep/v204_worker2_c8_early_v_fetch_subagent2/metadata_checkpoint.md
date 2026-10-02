# v204 metadata checkpoint (open experiment)

## 1. Scope
Only case8 `(2,4096,1,16,64,1,16,True)`, exact candidate2a93. Parent84 prefix and inverse-move numerical AST preserved; no attention/reference/native calls.

## 2. Hypothesis and peer
Move ordinary V reads into existing local buffer after K post-sync, before QK; keep shared overwrite at original preV sync. Worker1 reviewed guards, longer lifetime, and compiler-materialization risks. No async or inter-query reuse.

## 3. Execution
Metadata observer122963/child122964 completed0,78samples,39.8785s,OOM3 unchanged. Backend observer125269/child125270 completed0,13samples,6.6588s; four SDK commands completed0. Raw reused observer label `oneimport-only` is retained; actual scopes are two factory compiles and four CPU backend captures, respectively.

## 4. Resources
Parent42MT/20ST →candidate44MT/20ST; both dynamic2048B,staticmax8,stack0,threads64,grid4096x2. Staticmax is not measured occupancy.

## 5. Generated evidence
Parent optimized IR V loads427–457 follow QK299–305. Candidate307–337 precede QK339–345. Eight V shared stores475–558 remain after each original preV barrier(416/456) and before postV560. All7 warp barriers remain. Both CPPs keep two uint4 V reads/lane, same addresses; both optimized IRs scalarize into16 i16 loads. Final ISA width/order and runtime overlap are UNAVAILABLE.

## 6. Limitations and failures
One broad prior-log read tool automatic-review deadline timed out without executing; not retried. All actual compiler captures are first attempts with genuine0 exits. No latency, correctness, full14, non-regression, or OJ claim exists.

## 7. Next gate
Await leader review before one fixed case8 fresh-source native screen. No automatic follow-up. Raw artifacts: compiled_metadata_identity.json, backend_commands_results.json, resource_ir_summary.json, metadata_mechanism_gate.json, diagnostic_result.json, backend_observation/diagnostic_result.json.
