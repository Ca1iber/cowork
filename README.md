# NSA leader / worker coordination

This repository records tasks, progress, evidence and integration handoffs for two NSA optimization workers.

| Role | Container | Cases | Code branch |
|---|---|---|---|
| leader | local coordination | review and integration | communication main |
| worker1 | sc-16g-2 | 6, 10, 11, 12 | codex-power-v28-base |
| worker2 | subagent2 | 1, 2, 3, 4, 5, 7, 8, 9, 13, 14 | exp/nsa-worker2-s1-from-v084 |

The common code base commit is published in tasks/*.json after the v084 checkpoint closes. Do not edit kernels before the task state is READY.

v084 user-reported OJ score: 1204, versus original v28 1169, with no score regression in 14 cases. See evidence/oj-v084.json. Local positive deltas versus v081 remain recorded. OJ screenshots do not independently verify the uploaded file SHA.

See protocol.md for ownership and handoff rules.
