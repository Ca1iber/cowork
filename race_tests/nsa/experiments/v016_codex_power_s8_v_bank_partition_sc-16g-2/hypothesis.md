# v016: independent PV V-shared bank partition

Parent is the v015 rejection commit146c913cd on codex-power. Candidate starts from exact independent power v013, not the rejected v014/v015 compute paths. No previous team optimized NSA code is read/copied. Target v028 case12 median83.7195 us; power v013117.0305 us. Machine sc-16g-2 C500 16G sGPU.

Observed evidence: fresh v013 mcProfiler L2 hit94.98%, shared nonconflict65.19%, conflict penalty about1.41 cycles, MMA duty7.87-7.88%, MTE duty54.01-54.09%. Current generated PV B loads have logical row=(lane//16)*4+local_element and col=tile*16+lane%16. Default swizzle maps lane groups0 and2 to the same bank region, and groups1 and3 to another. This inference is from power's generated code, not v028 source.

Bank model: use the32-bank/4-byte-word assumption in the TileLang MFMA swizzle implementation, not an asserted C500 platform guarantee. Compare distinct word addresses per bank for one B-load instruction; adjacent half lanes fetching the same word may broadcast. Actual behavior must be checked with mcProfiler.

Hypothesis: use V shared layout(row,col)->(row,col XOR(16*(row//4))). With16 rows and64 features, this is a bijection in the same2048B allocation. The four row groups occupy four distinct8-bank regions under the model, rather than two. XOR affects only bits4-5, preserving contiguous8-half global-copy vectors. No compute, score, output layout, grid, thread count, math or other shape changes.

Predictions: generated V global loads stay uint4, PV shared address arithmetic simplifies, no added buffers/sync/spills, shared nonconflict efficiency rises and latency falls. Ultimate target is below v02883.7195 us. Falsifiers: mapping not bijective, codegen keeps the old layout or scalarizes global copy, exact naive_nsa reference or static rules fail, resource/traffic regression, or no reproducible paired improvement.

Gate: inspect mapping and generated code before GPU launch, full native case12 reference/timing, matched v013/v028 comparison if the screen improves, then all14 gates before final promotion. Exact three imports, no custom class, async or foreign source. Header # codex-power v016.

## Vectorization expression correction before the next screen

The first raw XOR expression has correct reference at161.213 us, but T.copy chooses16 scalar-half global V loads and MXCC rises to85 MT/28 ST registers, staticMaxWarps5. This falsifies that source expression, not the bank permutation's benefit with vectorized copying. Rewrite col XOR16*(row//4) as8*((col//8) XOR2*(row//4))+col%8, which is algebraically identical on all1024 elements and preserves explicit8-half contiguous blocks for layout inference. Require codegen to restore uint4 V loads before timing the next source. No arithmetic or additional storage changes.
