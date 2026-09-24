# v024 K/V 同时绕过 shared 中转
起点：本地最佳 v023，OJ 已接受版仍为 v009。v023 case6 K 预取2片段、本地比 v009 快约6.8%；case12 K 直载快约14.2%；case6/12 的 PV 仍有 V global→shared→local 数据流，且 MTE Duty 高于 MMA Duty。
假设：把 PV 的 V operand 也按 MFMA B fragment 分布直接从 global 加载 local，避免每个选中block的 V shared 中转与同步，可能在 case6/12 带来结构性提升。
机制：对 v023 已走 directK 的两个参数形状，增加手写 PV k_pack=1，scores_half 与 QK score store 使用兼容的 fragment 布局，V global vectorized4→pv_b_local；其他形状精确保留 v023。
预测：生成代码无 V shared copy/read、动态 shared 降低、同步减少，case6/12正确且更快。
证伪：PV fragment 布局冲突、数值失败、跨lane global V加载交易过多或性能退化。
风险：手写 PV k_pack=1 时 BS32 需要两轮 MFMA；scores_half/output_acc 显式布局会改变寄存器使用与输出搬运。线上 OJ 沙箱需在精确提交稿上验证。
