# C11 S4 phase-separated global softmax proposal

Base exact v10427f; only C11 changes, C12 retained. Known C11 physical80MT22ST/max6/2KiB/stack0. v112counter unavailable, therefore this is a source/resource-derived falsifiable hypothesis, not an established bottleneck.

All4QK -> one globalsoftmax actual roundedP16/den -> all4PV removes repeated online Num16 rescaling and six max shuffles in the fullvalid case. 16 score-exp/lane, 32MMA/query and required QKV values remain. Risks: Score/P liveness, code-size/ST/MT, altered F16 quantization, shortcase hostevent component.

Numerical/mask/sharedsync/vector contracts and finite metadata/native stop lines are in execution_plan.json. No kernel edit/import/compile/native yet; await actual peer and leader review. Previous positive deltas and failed profiler remain.
