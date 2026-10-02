# C8 paired profiler v231

Immutable P84 and C230, original profile driver573 positional8, MCProfiler8b counts2 each: 2 actual CLI and 4 primary raw records, all true waits zero. Leader independently verified 104 inventory hashes and 638 memory samples (319 per stage), OOM3 unchanged; sampled peak 24021741568 bytes is not an upper bound.

| Metric | P84 records | C230 records |
|---|---|---|
| shared access efficiency | 100 / 100 | 100 / 100 |
| conflict cycles/instruction | 0 / 0 | 0 / 0 |
| average latency/load instruction | 50.423575 / 50.545027 | 51.077079 / 50.698417 |
| AP MTE duty | 69.190841 / 69.159276 | 71.507207 / 68.62921 |
| AP MMA duty | 6.876108 / 6.872972 | 7.287359 / 6.99406 |
| write bytes above16MiB | 320 / 512 | 384 / 320 |

All10 metrics per primary finite with explicit isError=false. Residual512 is inside the predeclared inclusive upper bound. No achieved/dispatched equality assumption.

Same shared100/conflict0 and no observed reduction in WG load latency. These data do not establish why original native v230 gained1.96%. GradFalse profile with31 attention calls per completed driver plus SDK replay differs from original GradF16 native. Actual total launches and runtime grid unavailable. No calibratedHBM/occupancy/exclusive/solecause/full14/OJ claim.
