# v045: select scalar bits after fixed-address loads

Observed evidence: v044 removed alias views but LLVM retains a 32-byte fetch alloca and 56 dynamic address uses. Compiler 78MT/50ST, stack36B/max6. Full official case12 correctness failed (65.1% mismatches). Isolated producer passes coordinate and random input with matching pass configs; full-context failure remains unresolved.
Verified bottleneck: dynamic private fetch addresses prevent promotion. Its time cost and full-context correctness cause are unproven.
Current hypothesis: selecting half array elements lowers through pointer selection before scalar promotion. Loading constant indexes as uint16 bit values before T.Select can keep the address independent of lane and avoid private storage.
Proposed mechanism: only V-producer value selection changes. Extract both fixed-index half values as uint16 before selection. Use normal TileLang T.Select for integer/value selects, no branch or address select. Retain 2x8 fetch, xor8, shared layout, all attention math and normalization.
Predicted metric changes: no fetch addrspace5 alloca/dynamic GEP; stack0, lower registers. Keep two 16B global V reads and four packed xor8 exchanges per block per lane.
Falsifying result: private array persists, exact native correctness fails or full-reference timing does not beat original v28.
Risks: eager selects evaluate both arms; all fixed indexes are inbounds and initialized. Mixed half bitcast lowering and C++ optimization may reintroduce address selection. No performance claim without full native correctness.
