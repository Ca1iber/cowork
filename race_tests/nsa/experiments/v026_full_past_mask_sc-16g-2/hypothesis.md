# v026 整块历史 KV 的 causal mask 快路径

Observed evidence: v009/v023 新一轮 torch.profiler 显示 case6 kernel 165.376/154.112 us、case12 100.096/84.992 us，相邻 launch gap 均约2.816 us；设备代码中 case6 每CTA逐元素 mask 8 次，case12 每选中块逐元素 mask 4 次。官方输入按 `randperm(max(1, t // block_size))` 选择，非哨兵块总在完整的历史区间。v023 的既有 mcProfiler 显示 MMA Duty 低，当前同环境硬件计数器正在补采。

Verified bottleneck: 两个目标的耗时主要在设备 kernel 内；逐元素 causal mask 在全历史 block 上是可避免的控制/谓词工作，但其占总耗时多少尚未证实。

Current hypothesis: 给目标形状加入运行时整块历史判断，绝大多数有效 block 可跳过逐元素 mask；对当前 block 保留原 mask，应减少设备谓词指令且保持通用正确性。

Proposed mechanism: 只对 case6 (S1/BS32/D128/G16) 与 case12 (S8/BS16/D64/G16) 的手写 QK 路径，在 `block_start + block_tokens <= token` 时跳过逐元素 causal mask。

Predicted metric changes: 两个目标的内层 mask 指令不再走主路径；生成代码有统一条件分支；设备时延降幅必须超过重复测量波动，其他12个官方形状生成代码不变。

Falsifying result: 编译器保留相同 predicate 工作、额外分支/同步使任一目标退化，或重复计时无可分辨收益，则拒绝此候选。

Correctness and resource risks: 当前块中未来 token 仍必须遮蔽；无效哨兵仍跳过；新增分支可能增加同步/寄存器。正式 verdict 使用原官方14 case、warmup10/repeat50、原 reference；精确候选源码先在 `/tmp/nsa_v026/submission.py`，优胜后才归档 submission 同名目录。

## 判定过程补记
初版同时启用 case6、12。两对 case6/12 交替 screen 显示 case6 基本持平、case12 约快2.4%，所以在正式14 case 前将最终路由收窄为只启用 case12。初版源码 SHA-256 `b85fd5bdc8a00eae715998bd40fe642a47114a26b6f3e768278458f2cf9f97e7`；最终源码 SHA-256 `3687b4c84081ecf00b3286c40a7fc57ddf89cd0dfa83aca63574513c028acc77`。`patch_initial_case6_case12.diff` 与 `patch.diff` 分别保留两版改动。最终源码的目标交替复测单独进行，不将初版时延冒充最终版结果。
