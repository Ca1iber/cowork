# Worker1 v120: measure existing C6 candidate

Source: immutable v118 `290ac7d13d219d161d14833fcfa777df6ae809982708bb6a95f1a4172a3acf2e`, original header v118.

Evidence: parent compiled resource MT100/max4; candidate MT90/max5; v119 first optimized IR retains V4 load→MMA and V0→early output→V1 ordering. Static max is not observed occupancy.

The old MT<90 resource prediction failed and remains gate1. This new diagnostic asks whether actual original end-to-end latency improves; it does not rewrite the old verdict. Previous v103 regression remains evidence, not a family ban.

Prepare fixed B28–P84–C118–C118–P84–B28 ×2 for original case6. Full naive reference, original inputs/seed/Grad/W10R50 and existing guard semantics are required. Four candidate and twelve inclusive checks; no adaptive repeats or automatic full14/main promotion.

Reuse existing successful worker1 runtime helpers with only source/case/output paths; actual helper diff/plan/hash must be reviewed before one GO. No new source/metadata/resource/IR/profile in this version.

Worker2 may advise and read. Only worker1 changes its own plan/helpers.
