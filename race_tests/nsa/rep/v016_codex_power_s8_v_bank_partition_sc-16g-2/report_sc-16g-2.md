# v016 V-shared partition: local gain, target gate not met

Parent146c913cdb975b0749ab824a3b79494bb443d32c on codex-power, source base independent power v013. No previous team optimized implementation is read or copied; v028 is run as a benchmark/profile target only.

## 1. Previous issue
Power v013 case12 loses to v028. Three earlier directions remain rejected; a bank-partition hypothesis is derived from power's own generated V operand addresses.

## 2. Hypothesis and model
An idealized32-bank/4-byte-word model over the entire64-lane wave predicts two distinct words per bank for default V layout versus one for row-group partition. That model is explicitly not a hardware guarantee. The new physical layout is a bijection on16x64 FP16 elements and keeps8-half contiguous vector blocks.

## 3. Mechanism
Only specialized case12 V-shared layout changes, to col XOR16*(row//4). Reexpressing it as8*((col//8) XOR2*(row//4))+col%8 restores compiler vectorization. Math, grid and other shapes retain power v013.

## 4. Implementation and resources
Raw XOR unexpectedly scalarizes global V copy:161.213 us,85 MT/28 ST, staticMaxWarps5. The equivalent chunked expression restores two uint4 global loads and simplifies PV shared addresses:66 MT/28 ST,0B stack, staticMaxWarps7. Exact sources and generated C++ pass static checks. Lowered LLVM IR is archived; QK already has four unrolled MMA calls, with K loads interleaved before each MMA. A mere unroll directive is therefore not an established next optimization. Device ISA is explicitly unavailable.

## 5. Matched benchmark
Native _run_one_case with full naive_nsa, warmup10/repeat50. Case12 B4/L1024/H1/HQ16/D64/S8/BS16 causal FP16. Symmetric A-B-C-C-B-A sequence repeated twice:12/12 reference PASS.

| Version | Median us | Versus power v013 | Versus v028 |
|---|---:|---:|---:|
| power v013 |116.961| baseline | +39.56% |
| power v016 |114.7775| -1.87% | +36.96% |
| v028 |83.8065| -28.35% | baseline |

The v016 screen is114.662 us. It is a useful independent search checkpoint, not a v028 replacement. No full14 or external OJ promotion is claimed.

## 6. Matched mcProfiler
v016:4096 waves,L2 hit94.95%,MMA8.07-8.08%,MTE49.14-49.19%,shared nonconflict65.19%,conflict penalty1.41 cycles,load latency44.52-44.59 cycles. Fresh v013 in v014 has the same65.19%/1.41 shared metrics. Thus the predicted bank metric does not improve; the small timing gain may instead come from simpler address arithmetic, unverified.
v028:4096 waves,L2 hit91.66%,MMA11.10-11.11%,MTE62.92-63.01%,shared nonconflict48.43%,conflict penalty2.82 cycles,load latency62.08-62.45 cycles. Faster v028 has worse reported shared/load metrics, so optimizing those percentages in isolation is not a latency objective. Raw reports and all source hashes are archived.

## 7. Conclusion
Keep the measured local improvement as an experiment source, reject final promotion against v028. The bank-conflict causal hypothesis is not supported by the counter movement. Next hypothesis: explicitly preload four K chunks into registers before dependent MFMA instructions, rather than rely on already-present loop unrolling to expose memory overlap. Register/resource growth is the main risk.
