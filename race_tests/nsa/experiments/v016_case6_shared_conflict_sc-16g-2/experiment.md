# v016 case6 shared bank conflict 调参
起点：OJ Accepted v009；机器 sc-16g-2。case6 官方形状 B8 seq1024 H1 HQ16 D128 S1 BS32，v009 中位数 0.168847 ms，设备 kernel 约 165.12 us。
观测证据：mcProfiler shared 无 bank conflict 访问仅 44.95%，冲突 WG 指令平均额外 4.62 cycles，WG load 69.08 cycles；MMA Duty 5.34%，负载 HBM 424 GB/s，当前大块复制 1427 GB/s。
假设：K 或 V operand 的 shared 物理布局使多个 lane 映射到同一 bank，改变 BS32 专属布局可提高无冲突比例、降低 WG load 延迟并缩短 case6。
机制：只在 block_size==32 的 manual-QK 分支扫描 K XOR8、V linear/half/XOR8 及组合；其余形状沿用 v009。QK/PV 算术、线程数、block_indices 与计时入口不变。
预测：设备 shared 地址不同；正确性 14/14；case6 shared 无冲突比例高于 44.95%，WG conflict cycles 低于 4.62，稳态耗时低于 v009。
证伪：生成代码相同、编译或正确性失败、计数器未改善或端到端耗时退化。
风险：T.gemm PV 布局与显式 shared 布局不兼容、bank conflict 从 K 转移到 V、额外寄存器或同步。先独立编译/正确性/计时并查代码，再对有效候选采 profiler。
