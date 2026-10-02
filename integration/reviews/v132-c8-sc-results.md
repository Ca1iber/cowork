# v132 original SC C8 crosscheck of immutable C301

Leader independently verified 220 closed inventory hashes, 27 actual review hashes, 12 raw CSV rows and 995 memory samples. All12 inclusive/4 candidate full naive checks PASS with original seed0 GradF16 tolerance1e-2 W10R50. All true waits0, OOM13 unchanged, owned launcher absent at closure. Sampled peak27504517120 bytes is not an upper bound.

| Source | Median us | All raw us |
|---|---:|---|
| B28 | 51.7635 | 51.789,51.738,51.794,51.692 |
| CB13 | 40.7245 | 40.924,40.530,40.817,40.632 |
| C301 | 39.8335 | 39.670,39.997,40.172,39.670 |

C301 vs CB13 -2.187872%, round1 -2.193876%, round2 -1.973014%; maximum C40.172<minimum P40.530, no overlap. Selected SC C8 local gain. Earlier subagent2 v230 independent1.960300% not pooled into this test.

Original tool approval timeout happened before freeze/launch; read-only checks confirmed all launch markers absent and zero native processes. The tool-permitted smaller stdlib retry performed freeze/preflight, then launched the first actual616017 only once. Final planSHA9ea010c36ce11a6e37487038c9cefdcb31e8ba34af8b087a2daaa114fa28762a exactly differs from prepared plan by authorized phase and no_native_GO_yet fields. Source8519/header301 and all helpers/guards unchanged.

Full14 and OJ unproven. No best integration promotion. v133 full14 preparation requested, not authorized to run automatically.
