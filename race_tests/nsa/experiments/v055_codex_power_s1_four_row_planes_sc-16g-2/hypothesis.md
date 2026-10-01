# v055: case6 four-row V planes

仅修改V producer/physical layout/operand gather，不改变QK、softmax、MMA数量、shared arena容量、输出布局或入口。四个16x64 tile用四row微转置，把每个float16x4 operand的两次4B shared read合成一次8B read。代价是global load从两次16B变为四次8B，需实际代码与paired native时间评估；不能由理论银行映射推断吞吐。case12及其他12项保持v28原入口。

## Evidence and falsifier details

Observed evidence: v049 generated code reads each four-half PV operand with two 4B shared loads. Its valid archived counters show shared nonconflict fraction about 60.49%, conflict cycles 2.21, MTE about 41.7%, MMA about 6.3%; these do not establish a unique bottleneck.
Verified bottleneck: no exclusive bottleneck established. This isolates the operand instruction/producer tradeoff.
Current hypothesis: reducing operand reads may offset the increased global producer instruction count.
Predicted change: 32 to 16 shared operand loads per lane; no change to total V bytes, MMA count, shared capacity or mathematics. Register allocation and measured counters remain empirical.
Falsifier: codegen lacks aligned packed operands, correctness fails, full native measurements fail to improve the incumbent, or any other official case regresses. Tiny parent improvement does not establish reliable benefit.
Risks: physical layout coverage, V transpose, compiler private allocation, global-load issue pressure, unchanged output-fragment verifier warning.
Timing note: the short initial hypothesis and start_identity were recorded before helper mutation; these detailed falsifiers were expanded while formal benchmarking was in progress.
