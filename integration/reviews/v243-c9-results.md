# Case9 ordinary uint64 V alias: no net gain

Original fixed four-source sixteen-process protocol completed with4 candidate/16 total full-naive PASS references and all original native/outer waits0.

| Source | Median μs |
|---|---:|
| v28 | 51.6945 |
| v84 | 40.1105 |
| Current v303 | 40.4735 |
| Candidate v242 | 40.5045 |

Candidate is0.0766% slower than current v303. Round1 is0.9227% slower and round2 is0.6248% faster; ranges overlap. Pre-registered gate rejects a primary median without net improvement. No promotion or repeat.

Optimized IR retained4 i64 V loads with exact integer bit transport into the original shared layout; MT registers fell42→40. These compiler facts did not establish an end-to-end gain and do not identify a sole cause. Original host-anchor failure and all raw values are retained locally; OJ submission remains v303.
