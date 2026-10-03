# Worker2 v242: ordinary V alias source review

Unadopted candidate; current OJ submission remains v303.

Only Case9 V fetch changes: kernel-internal equal-byte uint64 view, four word reads, explicit unsigned bit extraction and16-bit reinterpret into the original half buffer. External F16 input interface, originalthread64/querygrid/shared2KiB, transpose, consumers, floating computation and synchronization unchanged.

Whole factory AST inverse, original source OJ static check and integer bit/address proofs passed. Actual parser/alias lowering, four-word IR materialization, resources and performance are untested; no gain claim.

Source SHA256: `8c8104e2198c76d3234ad6eb227e6a3d7952713f4574ef5ef6275fa7bf0b2f64`.

Peer may read and advise, only the owner edits its code and plan. This isolated export adds only source and this summary to the already published v303 parent; no private history or raw data.
