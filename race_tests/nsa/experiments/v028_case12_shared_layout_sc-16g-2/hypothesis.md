# v028 case12 shared 布局扫描

Observed evidence: v026 case12 的 shared 无冲突访问比例仅65.35%，WG load 平均延迟47.74 cycles；S8 会重复 V global→shared→PV 读取8轮。case6 在 v016 中对 `output_shared` 注解 swizzle 曾使无冲突比例44.95→92.45%，但 case12 目前尚未采用该注解；v016 在 case6 上对 V linear 无益，case12 的重复 S8 访问模式不同。

Verified bottleneck: case12 kernel 时间约85 us、launch gap约2.8 us，MTE Duty约65%，MMA Duty约10%，物理 HBM约205 GB/s，shared 冲突与加载供给仍是可测瓶颈。

Current hypothesis: 对 case12 的 output_shared 或 V shared 设定更合适的布局，可能降低 WG bank conflict/加载延迟；若 V 的重复访问受益，时延收益可能大于只改一次输出暂存的路径。

Proposed mechanism: 从 v026 精确源码独立扫描两种 case12-only 注解：`output_shared` swizzle；`v_shared` linear。其余13个官方形状、QK/PV 数学和同步拷贝次序保持不变。每个变体只改一个缓冲区的布局。

Predicted metric changes: 目标 generated code 的 shared 地址计算改变，同步/MFMA 数量不变；候选若有效，共享无冲突比例提高、WG load 延迟或 clean case12 latency 下降。

Falsifying result: 布局注解不能编译/数值不正确、codegen 不改变、bank 指标无改善或 clean latency 稳定退化，则拒绝对应变体。初筛仍使用原 reference、warmup10/repeat50，不用 profiler 附加时间当正式成绩。

Correctness and resource risks: 显式布局可能触发 LayoutInfer 失败或增加寄存器/shared 重排；需检查所有官方14 shape的设备代码和 OJ 静态规则，只有优胜版本才进入完整14 case。起点 Git `ca792f868`，v026 源码 SHA-256 `3687b4c84081ecf00b3286c40a7fc57ddf89cd0dfa83aca63574513c028acc77`。
