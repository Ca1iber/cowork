# Power v013 versus NSA v028: local performance comparison

## 1. Previous issue

Power v013 was previously compared with the ffa68b684 starting implementation. That starting source is not v028. The earlier reported gains cannot establish superiority over v028.

## 2. Analysis

This report compares elapsed time only. No prior optimized kernel was read or reused for an optimization. Both exact submission sources run through the same project-native correctness and timing routine.

## 3. Comparison design

Compare official cases 6 and 12 using ABBA x2 for each case, with full naive_nsa reference and native warmup10/repeat50. v028 is retrieved from commit 95e8a78ced12e7dae53172d60a9517b5ced41476 into /tmp for execution; power is the archived v013 submission.

## 4. Reproduction

Command: bash race_tests/nsa/hack/compare_power_v013_vs_v028_20260930_sc-16g-2/run_compare.sh

Machine: sc-16g-2, C500, 16G sGPU. Exact source, test and reference hashes are in comparison_sc-16g-2.json; machine_snapshot.txt records GPU state. No submitted kernel files were changed.

## 5. Benchmark

| Case | v028 median (us) | Power v013 median (us) | Power minus v028 (us) | Power latency change |
|---:|---:|---:|---:|---:|
| 6 | 156.639 | 159.813 | +3.174 | +2.03% |
| 12 | 83.719 | 117.030 | +33.311 | +39.79% |

All 16 reference checks pass. Case6 shape: B=8, SEQ_LEN=1024, H=1, HQ=16, D=128, S=1, block_size=32. Case12: B=4, SEQ_LEN=1024, H=1, HQ=16, D=64, S=8, block_size=16. Both use causal attention and FP16.

## 6. Profile evidence

No new profile was collected because the request is for measured latency. TODO: collect matched mcTracer/mcProfiler results if a causal explanation or further optimization is requested. This table does not claim OJ score changes.

## 7. Conclusion

Power v013 is slower than v028 on both requested cases, substantially so on case12. The comparison against the ffa starting source must be kept separate from this comparison. Power v013 is not a replacement for v028 on the evidence of these cases.
