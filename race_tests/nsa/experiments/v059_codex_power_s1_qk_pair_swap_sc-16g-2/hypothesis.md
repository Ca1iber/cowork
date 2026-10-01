# v059: Q/K low-column pair swap

Observed evidence: v057 valid C6 captures shared nonconflict60.49%,conflict2.21/load65cycles; scope-consistent waves8192/output33.55MB. Its old Q/K slot maps rows differing by8 to the same modeled bank pair for an8B MFMA operand within a16-lane phase. v058 V packing gives only0.5-0.7% incremental gain and new counters are scope-invalid. Kernel-wide counters do not prove a Q/K-exclusive bottleneck.
Hypothesis: XOR the low-column bit2 with row bit3 and feature-plane bit6 to spread Q/K8B operands and producer8B stores across the modeled32 banks. The bank model is a hypothesis, never measured throughput.
Mechanism: keep global Q/K16B loads, stage8halves in a local buffer, then two contiguous8B shared stores to support the pair swap. Consumer logical coordinates unchanged. Keep v057 V geometry,math,masks,sync,proven bounds,8192B arena and own v056 C12 helper.
Predicted change: modeled8B bank-word multiplicity2->1; actual global instruction/bytes unchanged; shared producer stores12x16B->24x8B per lane. Register and issue costs empirical.
Falsifier: domain/bijection/contiguity proof fails, codegen scalarizes global load or8B operands, native reference fails, paired C6 does not improve v057, or another official case regresses. Missing OJ does not establish no regression.
Risks: local staging register/private allocation,split-store issue cost,compiler scheduling,incorrect bank-model assumptions. Full unchanged native naive_nsa/official shapes/seed0/W10R50 and exact three allowed imports; no async/injection/manual backend builtins.
