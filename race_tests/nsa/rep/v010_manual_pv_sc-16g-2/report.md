# v010 手写 PV MFMA 实验

本版本以 OJ Accepted 的 v009 为起点，只将 PV 的 T.gemm(scores_half, v_shared, output_acc) 改为显式 fragment/shared 布局、shared-to-local 加载和 T.tvm_mfma；原有 QK 形状分流、softmax、threads=64 与提交接口保留。BS=16 用 K16，一次 MFMA；BS=32 用 K32，两次 MFMA。源码在本容器中直接编辑，根目录 baseline 与 v009 原档未修改。

- v009 SHA-256：b4e7a59a5c6cf2f3379c19dad32a43b7c1a94ea145b0b5b09b1b7ae42154234c。
- v010 精确候选 SHA-256：760ae6978f591ec075763b9b25aad07a5b708771af268a7b1acab9a136647916。
- 根目录 baseline SHA-256：462d505fe28efb0a0140feb1a1a4ca00df24b31d89f08beef2478c18685ca0b1。
- 首次完整编译在 case 6（BS=32）因 scores 与 PV A fragment 布局不同失败；增加 shared 中转后 case 6 单独通过，随后官方 14 case 连续三轮均 14/14 PASS。失败日志与修复后的结果均保留。
- TileLang OJ 静态源码检查和 14 份生成设备代码检查通过。在线 OJ 尚未提交 v010。

## 性能：同一 no-grad 官方测试入口，warmup 10 / repeat 50

| 版本 | 三轮 14 case 平均 ms | 三轮均值的平均 ms |
| --- | --- | ---: |
| v009 | 0.039247 / 0.039456 / 0.039120 | 0.039275 |
| v010 | 0.040040 / 0.039037 / 0.039006 | 0.039361 |

v010 整套平均仅比 v009 高约 0.2%，位于本地测量波动内。逐 case 三轮中位数见 summary.csv；case 6 为 0.168765→0.170537 ms（+1.0%），case 12 为 0.103301→0.102989 ms（−0.3%），都没有可确认的收益。

## 生成代码结论

BS=16 的代表 case 1、2、12 中，v010 与 v009 的 host 源码逐字相同，device 源码只改了 PV B local 的变量名；实际 shared 加载与 MFMA 指令相同。这说明这些形状的原 T.gemm 已经降低到同一条手写 MFMA 路径。BS=32 的 case 6 为转换 scores 的片段布局增加 shared 往返和两次同步，因此没有看到改进。完整生成代码在 generated_code.tar.gz，SHA-256 82420152a430baf68334d47c8f446f50a10fb586a5c451bf08704923d7be9c18。

结论：手写 PV 已完成且本地正确，但当前实现不比 v009 稳定更快；v010 仅作为实验归档，不替换 OJ Accepted 的 v009。后续若再优化 PV，需要提出能改变 BS=16 已相同的生成指令，或消除 BS=32 的片段重排开销的具体机制。
