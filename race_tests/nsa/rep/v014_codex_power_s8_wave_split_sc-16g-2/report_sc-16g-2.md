# v014 two-wave sparse-block splitting: rejected

Parent f15e82e0c on codex-power; sc-16g-2 C500 16G sGPU. Three-import TileLang sources begin with # codex-power v014. No previous optimized team kernel was consulted; v028 is used as a timing target only.

## 1. Prior issue
Power v013 loses to v028 on case12: matched native medians 117.0305 versus 83.7195 us. The original ffa baseline is distinct from v028.

## 2. Evidence and hypothesis
Fresh v013 mcProfiler: L2 hit 94.98%, 4096 waves, MMA duty about 7.88%, MTE about 54.05%. Codegen serially visits eight selected blocks. The hypothesis was that two waves, each processing four blocks, could shorten the dependency chain. Low MMA duty by itself was not treated as proof of a compute bottleneck.

## 3. Mechanism
Each wave retains local Q/K MFMA and vectorized V shared staging. FP32 output, softmax maximum and denominator are merged across waves at the end. Layout and synchronization diagnostics change the required communication mechanism without changing math or other shapes.

## 4. Implementation
wave_split_function.txt and build_candidate.py implement the independent path. Generated AllReduce64 is wave-local. V global loads remain uint4. A final source disables automatic thread-storage synchronization and has two wave barriers per loop plus three explicit CTA barriers around the merge. No CTA barrier is inside a wave-divergent branch. Resource reports show 0B stack, 60 MT/32 ST for initial and 62 MT/32 ST for final, staticMaxWarps/PEU=8.

## 5. Benchmark
All screens use original naive_nsa and native warmup10/repeat50, official case12 B4/L1024/H1/HQ16/D64/S8/BS16, causal FP16.

| Source | Latency (us) | Reference |
|---|---:|---|
| v028, prior matched median | 83.7195 | PASS |
| v013, prior matched median | 117.0305 | PASS |
| v014 CTA / linear partial output | 186.824 | PASS |
| v014 CTA / swizzled partial output | 179.082 | PASS |
| v014 wave sync / swizzled partial output | 173.245 | PASS |

These are falsifying target screens, not positive version verdicts. All three exact source/codegen snapshots pass the OJ static validator. Full official14 and external OJ are not run for this rejected direction.

## 6. Profile
The initial candidate dispatches 8192 waves, L2 hit95.44%, MMA duty4.69%, MTE35.10-35.12%, shared nonconflict56.85%, conflict penalty2.25 cycles, load latency42.05-42.39 cycles. Global reads9.565MB/writes8.389MB are nearly unchanged from v013. More waves did not translate into throughput. Layout and barrier changes recover some time but do not offset merge/shared-resource costs. Exact causal allocation of remaining time is unverified. mcProfiler bundles, C++ and resources are archived. Fresh baseline mcTracer times out at120s with incomplete JSON; no new device-duration claim is made. Missing full profiles/Roofline are listed in UNAVAILABLE_FULL_PROFILE.md.

## 7. Conclusion
Reject this two-wave block-split configuration. Root submission stays power v013; it is not promoted over v028. Next evidence-supported direction is one gathered 128-token score matrix with vectorized K/V loads, one softmax and one PV, avoiding partial-output merge and repeated online rescaling.
