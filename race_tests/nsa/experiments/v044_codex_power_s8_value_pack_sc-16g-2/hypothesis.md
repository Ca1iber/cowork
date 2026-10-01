# v044: value-based V packing

Observed evidence: v043 generated two 16-byte V loads per lane and passed official case12 correctness, but ran at 125.076 us. Compiler reported 80 MT registers, 36-byte private/stack storage and static max 6 warps/PEU. LLVM retained v_fetch_words alloca in address space 5. Original v28 paired median was 83.5765 us in v042.
Verified bottleneck: private fetch-array storage is verified; register-pressure spilling and its exact time contribution are unproven.
Current hypothesis: mixed pointer aliases from T.view prevent promotion of the fetch array. Value bitcasts with constant indexes may remove private storage.
Proposed mechanism: retain v043 2x8 global producer, xor8 exchange, shared layout, attention and normalizer. Replace alias views with T.reinterpret, shifts and OR of values only.
Predicted metric changes: stack/private goes to zero, lower MT register count; two UInt4 global loads remain.
Falsifying result: private fetch alloca persists, vector loads disappear, correctness fails, or native latency remains above original v28.
Correctness and resource risks: bit order, half bitcasts, active-lane shuffle mask, compiler scalarization and additional arithmetic. Parent coordinate proof remains relevant but generated loads/stores and native reference must be checked again.

Target: official case12; changes dispatched only for S8/BS16/D64/G16. Other cases use unchanged original fallback AST. No promotion without all14 and external OJ no-regression evidence.
