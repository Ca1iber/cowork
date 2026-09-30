# v013 final promotion: best independent NSA kernel

Branch: `codex-power`; machine: sc-16g-2 / MetaX C500 / 16G sGPU. User start: `ffa68b684e3876df2821fe34c9959493c2ca065a`. Root `race_tests/nsa/submission.py` has the first-line comment `# codex-power v013`; the remaining bytes are identical to archived v010. Current SHA-256 `e51d49834fdf06bb02f4c7c2ea0bc2bbc9d6a95b81578e58c2317eee0bdfbe76`.

## Exact root verification

- Exact 14 official cases: 14/14 `naive_nsa` reference PASS with project-native warmup10/repeat50; case6 159.329 us, case12 116.705 us, latency sum 579.445 us.
- 56 paired baseline/root runs: 56/56 PASS. Sum of per-case paired medians 651.026 -> 573.579 us (-11.90%).
- Source OJ static rule PASS. The executable source remains identical to v010; all 14 archived generated device C++ files pass generated-code static rules. External OJ was not run.
- Generated device and host launch sources are byte-identical to baseline for the other 12 cases; only case6 and case12 differ. This was verified by chained v000/v007 and v007/v010 exports.
- v010 mcTracer/mcProfiler and hardware counters apply to this exact byte-identical source; see `../v010_codex_power_s8_register_qk_sc-16g-2/report_sc-16g-2.md`. The slower v011 and v012 mechanisms remain archived.

| Case | Baseline median (us) | Root median (us) | Change | Device/host code changed |
|---:|---:|---:|---:|:---:|
| 1 | 12.864 | 12.944 | +0.62% | no |
| 2 | 12.831 | 12.861 | +0.24% | no |
| 3 | 13.901 | 13.427 | -3.41% | no |
| 4 | 14.057 | 13.886 | -1.22% | no |
| 5 | 31.239 | 31.345 | +0.34% | no |
| 6 | 220.800 | 159.288 | -27.86% | yes |
| 7 | 31.038 | 31.078 | +0.13% | no |
| 8 | 52.452 | 52.163 | -0.55% | no |
| 9 | 52.550 | 52.580 | +0.06% | no |
| 10 | 15.332 | 14.490 | -5.49% | no |
| 11 | 28.651 | 28.746 | +0.33% | no |
| 12 | 131.054 | 117.174 | -10.59% | yes |
| 13 | 13.893 | 13.151 | -5.34% | no |
| 14 | 20.364 | 20.447 | +0.40% | no |

Case3 and case13 had outliers in one-shot root timing, but paired medians improve, and their generated code is byte-identical to the starting source. Small changes in other unchanged cases are measurement variation. The local evidence supports no implementation regression outside case6 and case12.

The baseline source used in paired testing is retrieved directly from the exact starting commit and has SHA-256 `462d505fe28efb0a0140feb1a1a4ca00df24b31d89f08beef2478c18685ca0b1`. The corrected project-native test runner is archived in v000; it performs the exact `reference.py::naive_nsa` correctness check.

Version annotation added after the recorded benchmark runs. AST and all bytes following the first-line comment match the measured v010 source (SHA-256 `8da99365862d898e6e0c16f7a36d34a8d8164cda9840daad7d1b55817d633dd8`). Timing and correctness records retain their original benchmark data.
