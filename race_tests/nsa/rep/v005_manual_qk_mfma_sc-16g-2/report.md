# v005 手写 QK MFMA：正确，但没有确认稳定加速

## 结论

用户提供的 `moe_sota_inline.py` 路径已实际移植到 NSA 的 QK GEMM：显式 fragment/shared 布局、手写 K 加载、`T.tvm_mfma`。官方 14 case 三次候选运行均为 14/14 正确；精确归档源码也为 14/14。静态 OJ 源码校验及 14 份生成设备代码检查通过。端到端延迟不稳定，不能认定该路径优于 v003，因此根目录 `submission.py` 仍是 v003。

## 身份与输入

| 项目 | 值 |
| --- | --- |
| 机器 | sc-16g-2，MetaX C500 16G sGPU |
| 起点提交 | `6ade9a5849f989d50d0fb89af3c2bf853baeb0f2` |
| 基线 SHA-256 | `462d505fe28efb0a0140feb1a1a4ca00df24b31d89f08beef2478c18685ca0b1` |
| 候选 SHA-256 | `32af6c4ba94279470a97e4d6cfb0093f28690c9409265f32ee54023b4f5195f5` |
| 官方 14 case | `race_tests/nsa/official_case.json`，SHA-256 `85f2c34acd793fb0a45084175acd7bcde48ff5d717a395d370800c30cf4e7036` |
| 测试入口 | `race_tests/nsa/test_tilelang_nsa_fwd.py`，SHA-256 `b895638519c21396f8f6737b696073f7f71ba098f00c6e440750c863998c0885` |
| 参考实现 | `race_tests/nsa/reference.py`，SHA-256 `e31d5f188923d8696c7ad190b1652d5b3142c004dc96d0604f371c71f179bf32` |
| 计时 | 每 case warmup 7、repeat 25；`run_kernel` CUDA event 平均值 |

## 官方 14 case

| 运行 | 正确性 | 14 case 平均延迟 |
| --- | --- | ---: |
| v003 历史基线 | 14/14 | 0.127957 ms |
| v005 候选首次 | 14/14 | 0.1009 ms |
| v003 交替基线 | 14/14 | 0.1187 ms |
| v005 候选第二次 | 14/14 | 0.1225 ms |
| v005 归档源码 | 14/14 | 0.1213 ms |

逐 case 记录在 `candidate_first.csv`、`baseline_paired.csv`、`candidate_second.csv` 和 `candidate_archived.csv`。波动明显：case 7（B=1, seq_len=4096, D=64, S=1）候选三次分别为 0.194601、0.405668、0.402217 ms，交替基线是 0.184381 ms。候选首轮平均值不能单独作为加速证据；归档源码的平均值比交替基线高约 2.2%，但单次基线也不足以形成精确的退化幅度结论。

## 生成代码与合规

- `generated_code.tar.gz` 保存基线与候选各 14 个形状的 device/host 源码；SHA-256 `4a1c06be91c3f8cdaee400ba213650d035d7185543b6e446e1c14d6b54877d82`。
- 代表性 case 7 的基线代码将 Q 写入 shared，再从 shared 加载 Q/K 局部片段；候选代码将 Q 直接载入 fragment，并以更宽的 `uint4` 从 shared 载入 K。两者仍各有 QK、PV 两处 MFMA 调用点，候选不是把矩阵乘改成标量计算。
- 对精确归档的 `submission.py` 执行 OJ 静态校验，并把候选 14 份 device 源码逐一传给 `--generated-code`，全部通过；未发现违禁异步拷贝或外部设备代码注入。
- 本轮没有取得稳定的性能收益，因此没有进一步将其作为当前根目录提交版。未做独立 OJ 在线计分或 mcProfiler/ISA 资源归因；生成 C/C++ 源码只能证明路径改变，不能解释全部耗时波动。

## 后续依据

若继续探索该方向，应先控制设备负载，并以相同 case 的交替多次计时确认 case 7 的异常是否可复现；若仍可复现，再看 MFMA 路径的寄存器与占用资源。当前 v005 只证明了手写 QK 路径可用且符合提交源码限制，没有证明性能优势。
