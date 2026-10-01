# v052: isolate partial and merged local-state lifetimes

Observed evidence: v051 four-wave path passes12/12 full native case12 references but152.668us versus v28 83.8325us. Shared16896B matches design;90MT/28ST stack0/max5. Optimized IR merge join has4 float32x4 numerator phi with old partial incoming values and denominator phi, even though partial state is no longer needed after shared store. This is a liveness clue, not proof of exclusive register/latency cause.
Verified bottleneck: increased register footprint and retained SSA state are established. Occupied warps and exact time attribution unmeasured.
Current hypothesis: separate merged local numerator,max,den,rescale arrays allow old partial values to die before merge, reducing merge phi pressure and registers.
Proposed mechanism: change local-state naming/storage only at merge/output. Keep4waves,selected partition,K/V/q/partial layouts,typed shared arena,all5 CTA barriers,online math and alpha formula unchanged. Register code object via original host cache and preserve independent v049 S1 helper.
Predicted metric changes: no old numerator/den incoming values at merge join,MT below90,zero stack and same16896B shared. Native timing must beat original v28, not only v051, before any promotion.
Falsifying result: original phi/liveness persists,MT does not fall,private appears,reference fails,or paired target remains slower than v28.
Risks: merge buffer only initialized/read by wave0 across CTA barrier; all other waves never read it. Compiler can retain undef phi or hoist other inputs, so phi disappearance need not lower resources. No synchronization or numerical change; CPU ownership/CTA proof remains applicable by AST comparison.

Project naive_nsa/official inputs/W10R50 and GPU state untouched. v049 OJ gate pending;root exact42911561... stays unchanged. Fresh valid incumbent profile fromv051 is referenced,not reinterpreted as occupied warps.
