# v026 case12 完整历史 block 的 causal mask 快路径

## 上版本遗留问题与假设
v023 已使 case6/12 相对 OJ Accepted v009 本地明显变快，但 fresh profile 显示两 case 仍主要耗在设备 kernel 内。case12 每 query 串行处理最多8个稀疏 block，生成代码对每个有效 block 都运行逐元素 causal mask。官方数据生成器选择的有效 block 都完整位于 query 之前；因此用运行时整块边界判断跳过逐元素 mask，同时对覆盖当前 query 的 block 保留原 mask。证据及指标详见 `rep/profile_v023_case6_case12_sc-16g-2/report.md`。

## 本版本机制
从 v023 精确源码 SHA-256 `eb4fdfd7cc0814443109a6674a14c3efe3fbe5f1d17ae6e198a6e866093e9fd2` 出发。初版对 case6/12 都启用快路径，case6 的两对交替 screen 基本持平，于是在正式14 case 前收窄为只对 case12 (S8/BS16/D64/G16) 启用；其他形状保留 v023 路由。最终候选 `submission/v026_full_past_mask_sc-16g-2/submission.py` SHA-256 `3687b4c84081ecf00b3286c40a7fc57ddf89cd0dfa83aca63574513c028acc77`。根目录 `race_tests/nsa/submission.py` 未修改；初版与终版 patch 分别在 experiments 同名目录。

## 正确性和提交规则
- 最终源码使用共享 `test_tilelang_nsa_fwd.py` 的官方14 case、原 `naive_nsa` reference、rtol/atol 1e-2，14/14 PASS；官方 GPU event 计时 warmup10/repeat50。
- 当前 block 的 causal 边界及 S8 哨兵输入额外验证 PASS；初版与终版 case12 的快路径条件和 mask 计算相同，最终源码又经过完整官方14 case 正确性检查。
- 最终源码与全部14份生成设备代码通过 `/tmp/nsa_validate_oj_submission.py`；无异步 copy、外部代码注入或 PyTorch GPU 计算。在线 OJ **未验证**，不能称为 Accepted。

## 目标 case 的重复对照
下表仅用最终源码的三轮；v023 第二轮 case12 的0.091889 ms 尖峰原样保留，另四次 v023 本轮测量约0.0884–0.0888 ms。中位数降低约2.43%；case6 持平。

| case | v023 三轮 ms | v026 三轮 ms | v023 中位数 | v026 中位数 | 耗时变化 |
|---:|---|---|---:|---:|---:|
| 6 | 0.156831 / 0.156836 / 0.156938 | 0.156841 / 0.156728 / 0.156795 | 0.156836 | 0.156795 | -0.03% |
| 12 | 0.088684 / 0.091889 / 0.088776 | 0.086615 / 0.086620 / 0.086569 | 0.088776 | 0.086615 | -2.43% |

## 官方14 case 同环境对照
正式单轮官方14 case 均 14/14 PASS；v023 逐 case 均值0.037252 ms、v026 0.037224 ms，差异约 -0.08%，属于整体波动量级，**不构成可确认的总成绩提升**。每个 case 的原始日志/CSV 与逐项比较 `official_comparison.csv` 完整保留。

| case | v023 ms | v026 ms | 耗时变化 |
|---:|---:|---:|---:|
| 1 | 0.008658 | 0.009047 | +4.49% |
| 2 | 0.009528 | 0.009646 | +1.24% |
| 3 | 0.012268 | 0.012334 | +0.54% |
| 4 | 0.012621 | 0.012759 | +1.09% |
| 5 | 0.031493 | 0.031514 | +0.07% |
| 6 | 0.157082 | 0.157179 | +0.06% |
| 7 | 0.030874 | 0.031176 | +0.98% |
| 8 | 0.052506 | 0.052301 | -0.39% |
| 9 | 0.051886 | 0.052214 | +0.63% |
| 10 | 0.011965 | 0.011827 | -1.15% |
| 11 | 0.023194 | 0.023429 | +1.01% |
| 12 | 0.088796 | 0.086692 | -2.37% |
| 13 | 0.010675 | 0.011126 | +4.22% |
| 14 | 0.019988 | 0.019896 | -0.46% |

## 生成代码和 profile
- `codegen_comparison.csv`：case6 和另外11个形状设备代码逐字等于 v023；case10 仅 AllReduce 的两处 scratch shared 地址1024/1088互换，计算指令相同；case12 新增统一条件 `token < block_start + 16`，只在条件成立时执行原来的四次逐元素 mask。两版 case12 静态 `__syncthreads()` 各5处，未增加同步。
- case12 mcProfiler：v023→v026 L2 hit 91.57→91.57%，global read 14.843→14.843 MB/call，global write 13.477→13.476 MB/call，shared 无冲突65.35→65.35%，MTE Duty67.38→65.46%，MMA Duty9.81→10.04%。WSM stall33.35→34.05M、VLS pipeline stall22.26→22.51M，均不能解释成显著访存改善。数据搬运路径事实上保持不变，主要改动是跳过通常无用的逐元素 mask。
- 与8秒持续 workload 同步的 mx-smi 物理 HBM 活跃样本中位数，v023 case12 约200.6 GB/s，v026 约204.9 GB/s；对应66/66个样本。带宽数值略高与较短耗时一致，不能推断 HBM 是瓶颈。

## 结论
v026 是可复现的 **case12 局部优化**，约2.4%；case6 不变，14 case 平均提升未超波动。因此归档为待 OJ 验证的候选，不称总体突破。下一轮应根据 v023/v026 中较高的 MTE Duty 与 VLS pipeline stall，针对 K 直载后 V 的加载时序做结构实验；旧 v018 在 K shared 版本提前加载 V 会扩大 shared 并退化，v026 的 K 直载资源关系不同，需要单独验证。
