# Case12 V operand streaming: incomplete

The original fixed16 protocol stopped after10 clean full-naive reference checks, including2 candidate checks. Job11 current303 was terminated only after the generic unowned-heavy guard fired; its originalwait was−15 and no CSV/reference row was produced. Jobs12–16 did not start.

The controller, supervisor and original launcher returned1. The CPU-only analyzer returned0 and correctly reported an incomplete protocol with no formal comparison. All10 original CSVs and all809 memory/798 identity records are preserved locally. OOM remained13.

The trigger was an unowned Python process at07:17:30.598640 UTC. Its origin and GPU usage are unknown. Only the verified owned native process received TERM; the unknown process was not signalled.

No promotion, replay or missing-sample fill. Current OJ submission remains v303. The earlier baseline-identity refusal is retained separately from this completed compiler check and incomplete native measurement.
