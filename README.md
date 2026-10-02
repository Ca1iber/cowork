# NSA leader / worker coordination

This repository records tasks, progress, evidence and integration handoffs for two NSA optimization workers.

| Role | Container | Cases | Code branch |
|---|---|---|---|
| leader | local coordination | review and integration | communication main |
| worker1 | sc-16g-2 | 6, 10, 11, 12 | codex-power-v28-base |
| worker2 | subagent2 | 1, 2, 3, 4, 5, 7, 8, 9, 13, 14 | exp/nsa-worker2-s1-from-v084 |

Common code base: 7bb0e33b35a7b5a02a8fb42e99d4151617316572. Task readiness is recorded in tasks/*.json; source/runtime synchronization to subagent2 is in progress. Both workers use leader relay for GitHub transport without copying private keys.

v084 user-reported OJ score: 1204, versus original v28 1169, with no score regression in 14 cases. See evidence/oj-v084.json. Local positive deltas versus v081 remain recorded. OJ screenshots do not independently verify the uploaded file SHA.

See protocol.md for ownership and handoff rules.
