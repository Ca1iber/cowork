# v021: normalize single-block scores before PV

Parent is v020 target-failure checkpointac72d3cea. Source base is own v016, preserving original128-thread case6 geometry and original score-bridge layout. No previous optimized team code is copied/consulted. Case6 target own159.813 versus v028156.639 us. Feature splittingv019 fails225.075; bridge-onlyv020159.002 does not establish a target win.

Hypothesis: for S1/BS32/D128/G16, divide FP32 score exponentials by their denominator before FP16 conversion and PV. This replaces2048 output-element normalization operations with512 score-element operations and can shorten output finishing. Grid, Q/K/V staging, shared bridge, math scale and other cases remain the established own path. FP16 rounding changes; exact naive_nsa must gate it.

Predictions: generated case6 score loop normalizes four values per lane before bridge copy and the16-value final division disappears for valid input; no extra launches or buffers. Invalid selected block must retain original NaN empty-attention output, through a scalar block-validity guard on final normalization. This adds an index lookup that can be cached/optimized; no claim of unchanged instruction count there.

Risks: changed probability rounding, extra validity branch/index request, compiler reciprocal commoning and no actual finishing bottleneck. Falsifiers: reference/static failure, unexpected work or resources, or no repeated target gain. Header # codex-power v021, three allowed imports, no custom class/async/foreign source. Inspect codegen/resources then native case6 screen. Case12 still needs improvement; final full14/v028 no-regression gate remains mandatory.
