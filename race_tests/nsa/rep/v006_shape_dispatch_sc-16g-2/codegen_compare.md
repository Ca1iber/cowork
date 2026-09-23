# v006 生成代码检查

候选源码 SHA-256 见 `experiments/v006_shape_dispatch_sc-16g-2/source_sha256.txt`。对官方 14 个 shape 全部生成 device/host 代码，并用 OJ 静态校验器检查候选源码及 14 份 device 源码，结果通过。

路由预期：case 6、10、11、12 使用 v005 手写 QK MFMA；其余 10 个 case 使用最早提交的原版 `T.gemm`，该文件与 v003 归档版字节相同。逐字比较生成的 device 源码：case 1–10、13、14 均与相应原版或 v005 路径一致。case 11、12 仅有 `tl::AllReduce` 的 max/sum shared 暂存偏移 `1024` 与 `1088` 交换；QK/PV 指令路径没有变化。

完整 v006 生成源码保存在 `generated_code.tar.gz`。这个比较证明分流在编译期生效，不代表运行时速度一定提高。
