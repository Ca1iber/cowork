# Worker2 v215: combine shared Q/K writes

Parent is common P84 4c; C212 DirectK is rejected. Only original C8 exact key gains a new factory/header215.

Fresh v214 shows MTE68.6% vsMMA6.8% and no measured shared conflicts. This motivates testing fewer memory instructions, without claiming calibrated HBM or exclusive bottleneck.

Keep original global16B qk_fetch reads, all synchronization and kernel math. Combine each pair of shared8B writes into one shared16B vector using the exact qk_slot row-dependent swap of two4half groups. Use constant source indices with if_then_else; dynamic local indexing may spill. Independently enumerate every address/value mapping and alignment.

Extra selects/registers or compiler splitting back to8B stores are falsifiers. Implement one source-only candidate with frozen exact dispatch and case impact. No compile/native/profile until source review. Worker1 advice is readonly.
