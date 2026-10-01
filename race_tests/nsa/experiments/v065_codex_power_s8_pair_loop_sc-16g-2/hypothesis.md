# v065: two-block partially expanded selected loop

Observed evidence: own v064 ordinary outer loop preserves full computation/order and improves currentv060 C12~2.8%,staticMMA64->8/backedge,IR282324->85579bytes. Its82MT/22ST/compiler max5 is not lower MT than v06180MT/28ST/max6. Source-level bank mapping/PV/output unchanged and fresh64/61 counters both bank97.4%,no unique bottleneck attribution.
Hypothesis: process two consecutive selected blocks per runtime group,unroll only that inner pair,retaining compact code while halving outer-loop control/backedge frequency and allowing local scheduling across the pair.
Mechanism: selected_pair T.serial(S//2),within_pair T.unroll(2),selected=pair*2+within. Preserve exact old iteration body,0..7 order,addresses/math/P/den/rescale/masks/sync/proven bounds/arena and own v060 C6 helper. No new GPU parallelism and no work reduction.
Predictions: actual outer backedge4groups,staticMMA16sites instead8serial or64fully expanded,intermediate IR/code size. Resources/timing empirical; compiler ceiling not occupiedwarps.
Falsifier: backend fully unrolls groups or does not materialize intended form,body/order proof fails,reference fails,formal C12 fails to beat v064,or another official regresses. Missing OJ not a no-regression waiver.
Risks: twice-expanded body increases live state/registers/instruction footprint,scheduling changes and loop/control costs. Full unchanged project naive_nsa/official shapes/input/seed0/W10R50; exact3imports/normal primitives,no async/injection/manual builtins.
