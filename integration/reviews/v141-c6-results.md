# Case6 first V panel early: rejected

Original fixed four-source, sixteen-process Case6 comparison completed. Candidate full naive correctness 4/4; all sources 16/16. All original native, owner and analyzer waits returned 0.

| Source | Median μs |
|---|---:|
| v28 | 156.895 |
| v84 | 93.870 |
| Current v303 | 86.5685 |
| Candidate v140 | 93.2095 |

Candidate is 7.6714% slower than current v303. Both rounds regressed (+7.6510%, +7.7187%); every candidate sample was slower than every v303 sample. Rejected, with no source promotion or repeat.

Earlier V loads appeared in optimized IR with unchanged 98 MT/22 ST and zero stack. These facts do not identify the cause of the slowdown. Raw samples and private closure remain local; current OJ submission stays v303.
