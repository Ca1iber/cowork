# v010 手写 PV MFMA

- 起点：OJ Accepted 的 v009，SHA-256 b4e7a59a5c6cf2f3379c19dad32a43b7c1a94ea145b0b5b09b1b7ae42154234c。
- 现状：v009 只在部分形状手写 QK；所有形状的 PV 都调用 T.gemm(scores_half, v_shared, output_acc)。
- 本轮机制：PV 的 A 片段使用显式 MFMA load layout，V 的 shared tile 显式 swizzle，按 K=16/32 将 V 加载为每个 lane 的 B local 片段，再以 T.tvm_mfma 累加到显式 C layout。保持 QK 分流、softmax、接口、threads=64 与输入构造不变。
- 参考：仓库 MLA 手写 PV 路径使用 b_transposed=False 的 shared-to-local 映射；这里适配 NSA 的 G=16、block_size=16/32 与 D=32/64/128。
- 预测：官方 14 case 均正确；生成设备代码中的 PV 由显式 local 加载与 MFMA 构成。性能是否提高必须由逐 case 10/50 计时判断。
- 否证条件：任一形状编译或正确性失败、OJ 源码限制不通过、性能总体退化或关键 case 明显退化。

候选仅保存在 submission/v010_manual_pv_sc-16g-2/submission.py；根目录 baseline 与 v009 原档不修改。
