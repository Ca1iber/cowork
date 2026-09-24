# case 6 / 12 重新 profile：v009 对照 v023

## 身份与方法
机器：sc-16g-2，C500 sGPU；Git 分支 `nsa-dev`，起点 `635d487aeb4c01aa654c0ea9ad59585f934c2dc3`。v009 SHA-256 `b4e7a59a5c6cf2f3379c19dad32a43b7c1a94ea145b0b5b09b1b7ae42154234c`；v023 SHA-256 `eb4fdfd7cc0814443109a6674a14c3efe3fbe5f1d17ae6e198a6e866093e9fd2`；官方 JSON、测试入口哈希见 `identity.txt`。两代码此前均通过原 reference 的官方14 case，v023 尚无在线 OJ 验收。

使用原官方 case 6、12 的同种 q/k/v、稀疏下标生成逻辑。干净计时使用 GPU event，warmup10/repeat50；torch.profiler 每组30次记录 kernel 与相邻 launch；mcProfiler 每组20次，在 warmup 后启动；mx-smi 与8秒持续负载同步采集，每100ms读取一次。mcProfiler 的带宽/字节是该工具的全局访存计数，不等同物理 HBM；不把 profiler 计时用于正式性能判断。设备代码引用 v023 已归档 `rep/v023_case6_direct_k_sc-16g-2/generated_code.tar.gz`。

## 直接观测

| case | v009 event ms | v023 event ms | v009/v023 kernel 中位数 us | launch gap 中位数 us | v023 HBM 中位数 GB/s |
|---|---:|---:|---:|---:|---:|
| 6 | 0.168294 | 0.156989 | 165.376 / 154.112 | 2.816 / 2.816 | 454.1 |
| 12 | 0.103255 | 0.088366 | 100.096 / 84.992 | 2.816 / 2.816 | 200.6 |

该轮 v023 相对 v009，case6 event 低约6.7%，case12 低约14.4%；trace 中 kernel 本体同步缩短，launch gap 不变。HBM 活跃样本分别65/66与66/66，原始 mx-smi 日志保留。此前同实例大块复制约1427 GB/s，只用作量级参照；本轮未重新测复制上限。

| case/版本 | L2 hit | global read MB/call | global write MB/call | shared 无冲突 | WG load 延迟 cycles | MTE Duty | MMA Duty | WSM stall raw | VLS pipeline stall raw |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 6 v009 | 69.44% | 58.979 | 53.905 | 44.95% | 69.61 | 34.88% | 5.32% | 78.51M | 23.21M |
| 6 v023 | 76.22% | 58.670 | 53.905 | 89.19% | 38.21 | 36.42% | 5.75% | 26.33M | 63.60M |
| 12 v009 | 88.13% | 14.872 | 13.483 | 74.17% | 50.91 | 62.47% | 8.40% | 47.57M | 9.33M |
| 12 v023 | 91.57% | 14.843 | 13.477 | 65.35% | 47.43 | 67.38% | 9.81% | 33.35M | 22.26M |

## 解释与下一步
事实：v023 显著降低 case6 shared 冲突与 WG load 延迟；两 case 的全局字节基本不变、L2 命中提高、WSM stall 降低，VLS pipeline stall 却上升。case12 的 MTE Duty 已到约67%，MMA Duty 约10%；case6 的 MTE/MMA 约36%/6%。推断：K 直载把瓶颈部分移向向量加载管线，V global→shared→local 与每 block softmax/同步仍在关键路径；物理 HBM 吞吐没有触顶。

v026 将首先证伪/证实官方输入中“完整历史 block”跳过逐元素 mask 的收益。若效果小，后续应以直接 K 后较低的 shared 占用为条件，试验 V 加载与 QK/softmax 的时序重排；旧 v018 的 K shared 版本因 shared 增长而退化，该结果不能直接外推到 v023 的 K 直载版本。所有候选需原 reference 正确性、正式14 case 与静态 OJ 检查后才能称为可提交版。
