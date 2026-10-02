# C11 phase advisory only

Global-max softmax changes F16 P rounding versus the online implementation. Use identical actual rounded P16 for both denominator and PV; preserve per-feature selected order and F32 division then F16 cast. The finite full-valid bound of 64 keys times Pmax256 is 16384 and does not replace original tolerance checks.

Initialize every Score16/P16 slot; uniform has_valid avoids all-empty negative-infinity subtraction and keeps original final NaN. Preserve sentinel/range/causal checks and selected-order interpretation.

Audit shared K/V read-before-overwrite protections at each phase transition and final Output; shuffles are not shared memory barriers. Explicit unroll4 must become constant offsets with no private spill in actual optimized code. MT<=96/max>=5/stack0 is a declared resource gate, not a latency prediction; retain ST/code size/host-event cost and all deltas. Control is exact current C104, including its C12 code. No peer files or plans edited.
