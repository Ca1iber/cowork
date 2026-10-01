# v061: S8 Q/K pair swap

Observed evidence: own C6 Q/K pair swap v059 gives repeated3% incremental native gain and scope-consistent shared conflict2.21->1.25/load65->48cycles; v060 output staging further improves C6. C12 own v056 still uses low3-row-bit Q/K swizzle with modeled8B bank duplication. This is a different D64/S8 domain, not an assumption that C6 benefit transfers.
Hypothesis: D64 Q/K low-column bit2 XOR rowbit3 and rowbit0 balances modeled8B consumers and split producer stores. Rowbit0 distinguishes the two row groups within a16-lane global producer phase.
Mechanism: global Q/K16B loads preserved through local8-half staging, two8B shared stores. Keep a separate unchanged old output slot so only Q/K movement changes. Preserve S8 math,probability/denominator,rescale,V,masks,sync,2048B arena/proven bounds. Keep own v060 C6 helper exact.
Predictions: modeled8B word-bank peak2->1; global2x16B/lane/block unchanged; shared producer2x16B->4x8B/lane/block. Resource/allocation and actual bank costs empirical,32banks/4B/16lane only a hypothesis.
Falsifier: coverage/bounds/ownership fail, lowering loses16B global or8B shared vectors, full native reference fails, formal C12 fails to improve v060, or any other official regresses. Missing OJ cannot establish global no-regression.
Risks: extra local staging/producer instructions and reg pressure under8 serial selected blocks; repeated address/control/scheduling costs; wrong model assumptions. Exact official shapes,seed0,full naive_nsa/W10R50; normal TileLang and three exact imports only.
