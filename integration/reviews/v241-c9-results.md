# Case9 two independent query warps: rejected

Original fixed four-source, sixteen-process Case9 comparison completed. Candidate full naive correctness4/4; all sources16/16; all original native/outer waits0.

| Source | Median μs |
|---|---:|
| v28 | 51.7425 |
| v84 | 40.3200 |
| Current v303 | 40.2815 |
| Candidate v241 | 42.2755 |

Candidate is4.9502% slower than current v303; both rounds regressed (+6.0677%, +3.8439%). Every candidate sample was slower than every v303 sample. Rejected, no promotion or repeat.

Thread/query/shared-slice mapping and floating computation are valid. Reported costs are46MT versus42MT, and4KiB shared versus2KiB. These observations do not identify a sole cause for the regression. Raw data and private closure remain local; OJ submission remains v303.
