# Worker2 v223: C5 fixed shared slots

Parent P84, exact C5 only; stop rejected C3 directions. Two1024half slots. Q0, K1, V0, output1. Keep each producer postbar; remove preK/preV/preoutput. Each prior postbar proves earlier consumer done before later same-slot overwrite. Invalid single selected block skips K/V together and output1 is disjoint from Q0.

Keep original math/Num16/global16B/8MMA4shfl/causal. Fullvalid7→4 warpbarriers, shared2→4KiB, register/address costs recorded. Source-only value/lifetime proof and actual JIT before bounded compile GO; no async/foreign code or implicit speed claim. Peer advisory only.
