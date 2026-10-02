# Leader review: worker1 v101 case10 direct Q/K fragments

Fresh parent measurements reported: 256 dispatched waves, output 524,608 B (512 KiB payload plus 320 B unattributed), reads 593,056 B, L2 68.86%, shared non-conflict 100%/conflict zero, WG-load 45.87/45.83 cycles, MTE 15.42/15.19%, MMA 1.87/1.84%. Resources: 82 MT/24 ST, dynamic shared 2048 B, stack zero, static max warps five. These do not establish a unique dominant bottleneck or measured occupancy.

Approve a case10-only screen: load Q/K directly into ordinary MFMA operand fragments while preserving sequential online softmax, denominator from the actual rounded P, and V/output shared-memory paths. All other 13 keys retain exact parent v084.

Before edit, document operand mapping for every Q/K entry and sentinel/bounds masks. Direct lane-wise 8 B or scalar loads may coalesce worse than parent 16 B global transfers. Ensure invalid addresses are not actually loaded.

Classify each removed barrier by the data lifetime it protects. Removing Q/K staging does not authorize removing a barrier that also protects previous V reads before the next shared V write. Preserve those dependencies across iterations.

Fixed stop gates: import/generated-source or correctness failure; stack greater than zero; static max warps below five; or fixed four-sample screen median not faster than v084. No repeat-until-win. Inspect actual vector width, removed Q/K staging, and barriers before claiming a mechanism change. Fewer WG-load instructions does not necessarily lower average WG-load latency; its composition changes.

Submit raw screen and resource results for leader review before formal all14. No OJ gain claimed until a new user result exists.
