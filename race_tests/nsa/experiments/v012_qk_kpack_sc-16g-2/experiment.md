# v012 手写 QK 的 k_pack 联动扫描
起点：OJ Accepted 的 v009，SHA-256 b4e7a59a5c6cf2f3379c19dad32a43b7c1a94ea145b0b5b09b1b7ae42154234c；机器 sc-16g-2。
观测：v009 的手写 QK 固定每次 D 维处理 32 元素，使用 2 次 16x16x16 MFMA。case 6/12 走该路径，OJ 耗时 0.172/0.107 ms。
假设：更小的 k_pack 降低寄存器压力，或更大的 k_pack 减少循环/加载开销，可能改善 QK 性能。
机制：同步调整 Q fragment 列宽和重复、K local 分配与加载、MFMA 内循环和 operand offset、外层 D 维循环；其余路径及 PV 保持 v009。
证伪：编译或正确性失败；生成代码没有变化；重复计时差异落在波动范围或目标 case 退化。
风险：MFMA fragment 布局不匹配、向量加载限制、寄存器压力上升。先做 case 6/12 独立进程正确性和计时，再对有效候选测官方 14 case。
