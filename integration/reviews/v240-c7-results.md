# Case7 V operand streaming: inconclusive

Original fixed four-source, sixteen-process Case7 comparison completed on subagent2. Candidate full naive correctness 4/4; all sources16/16. All original native and outer waits returned0.

| Source | Median μs |
|---|---:|
| v28 | 30.912 |
| v84 | 24.312 |
| Current v303 | 24.4945 |
| Candidate v239 | 24.3635 |

Candidate was 0.5348% faster than current v303, with round changes −0.7895% and −0.0637%. Candidate range24.279–24.637 μs overlaps current30324.320–24.755 μs. Candidate was0.2118% slower than v84 in this protocol. The preregistered acceptance condition is not satisfied: inconclusive, no promotion or repeat.

Four shared8B V loads each feed the corresponding PV MMA before the next load in optimized IR. Resources remain42 MT/20 ST, zero stack. These facts do not establish a stable runtime benefit or a final ISA scheduling result. Raw data and private closure remain local; current OJ submission stays v303.
