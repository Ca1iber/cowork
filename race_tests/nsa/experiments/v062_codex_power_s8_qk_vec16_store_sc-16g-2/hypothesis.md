# v062: S8 ordered16B shared Q/K store

Observed evidence: v061 C12 Q/K mapping improves fresh consistent shared nonconflict79.88->97.40%,conflict1.04->0.10/load61->49cycles but formal native78.3895us versus current v06077.8135us (+0.740%). Registers72->80/compiler max7->6 and split producer stores2->4/lane/block co-occur; exclusive cost not proven.
Hypothesis: retain the v061 Q/K mapping and consumer addresses while reversing the producer's within-eight-half quad order in registers, allowing one aligned16B shared store instead of two8B stores.
Mechanism: fixed-index T.Select for each of8half values according to rowbit3 XOR rowbit0; no dynamic local indexing and no explicit per-lane branch. Store ordered local8-half buffer at the physical8-half block base. Global16B load,consumer8B load,bytes/math/PV/output/masks/sync/arena/proven bounds unchanged. Keep v060 C6 helper exact.
Predictions: producer shared stores4x8B->2x16B/lane/block; consumer mapping and modeled bank distribution unchanged. Extra8half ordered buffer/select cost and resources empirical.
Falsifier: permutation/domain proof fails, lowering loses16B store or retains private/dynamic local indexing, reference fails, formal C12 fails to beat current v060, or another official regresses. Missing OJ cannot establish global no-regression.
Risks: select/unroll vector lowering,local allocations/register pressure,scheduling under8 selected blocks. Exact official input/seed0/full naive_nsa/W10R50; three exact imports,normal TileLang primitives,no async/injection/manual backend builtins.
