# codex-power v008：case12 两组 wave 编译失败（sc-16g-2）

## 1. 起点与假设

v007 在用户指定的原始分支上独立实现 case6 两组 wave，目标快约 27.6%，但 case12 仍保留起点的 S8/BS16/D64 串行块循环、约 123–124 µs。v008 假设保持每块 16 token 小 tile，只把 case12 CTA 改为 128 线程，并用 shared 桥接 FP16 score，可以像 case6 一样降低每线程工作。候选来自 v007 精确源码，不复制此前其他分支的优化内核。

## 2. 源码变化

仅对 S8/BS16/D64/G16 打开 v007 已独立构造的两组 wave 路径；case6 及其他形状的编译期条件不变。候选 SHA-256 `72008f81140a79c67b8c86261af1523d4773f6ea5e2ad4f351f5114ca6c5ff59`，只有用户限定的三条导入。

## 3. OJ 静态门槛

源码静态导入、异步拷贝与外部代码扫描通过。该结果只证明文本规则，不能证明编译和正确性。

## 4. 编译结果

项目原生 case12 入口在 TileLang 编译阶段失败：`Check failed: pb->value != 0 (0 vs. 0) : Divide by zero`。因此没有获得 case12 参考 PASS 或延迟数字，不能把它算成性能回退或收益。

## 5. 原因范围

当前路径的 QK 形状为 M=16、N=16，CTA 却有两组 64-thread wave。TileLang FullRow 的 warp 分配会尝试把过窄的输出列拆开，可能与后端 MFMA 的最小列块冲突；这是结合源码与框架分配逻辑的**推断**，错误栈未唯一定位到一个 primitive。未生成有效目标设备 C++，也没有 MXCC 资源或 ISA。

## 6. 未采集证据

目标形状无法编译，所以全 14 项参考、正式计时、mcTracer、mcProfiler、HBM 与外部 OJ 都未运行；原因见 `UNAVAILABLE_FULL_PROFILE.md`。失败日志和精确候选留存，提交目录只记录不可提交原因，根 `nsa/submission.py` 未改。

## 7. 结论

**v008 为编译失败版本，已停止。** 下一独立机制将两个被选 16-token 块组成 32 列小 tile，使两组 wave 各有完整的输出列块，同时避免 v001/v002 的大 shared/fragment 压力。必须重新通过编译、原参考和端到端计时才能判断价值。
