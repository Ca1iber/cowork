# v066: four-block partially expanded selected loop

Observed evidence: v064 single-block runtime loop improves current C12~2.8%,IR85579/staticMMA8. Full v061 IR282324/static64 is slower. v065 pair-group IR114372/static16 has only0.313% initial and0.062% confirmation median signal with overlapping ranges,no stable incremental adoption. Resources82MT/22ST v064 versus82MT/24ST pair,bothmax5,not occupancy.
Hypothesis: outer2groups/inner4-block expansion may improve scheduling/control amortization at a different point on the code-size tradeoff curve; benefit is uncertain and must beat v064.
Mechanism: selected_group serial(S//4),within_group unroll4,selected=4*group+within. Exact original selected body and order0..7 unchanged; no math/address/mask/sync/work/parallelism/data-cache change; C6 own v060 preserved.
Predictions: optimized outer backedge2groups,staticMMA32 rather than8/16/64,intermediate IR/resource footprint. Actual backend may fully unroll outer2,which falsifies intended form. Resource/time empirical.
Falsifier: wrong body/order,backend materializes no intended partial loop,reference fails,formal C12 does not improve current v064 outside observed variability,or another official regresses. No MoE floor borrowed and no OJ/no-regression claim without actual scores.
Risks: larger live state/code footprint,compiler auto-unroll,loop/scheduling cost. Complete unchanged project naive_nsa/official inputs/seed0/W10R50,only3exact imports/normal primitives,no async/injection/manual builtins.
