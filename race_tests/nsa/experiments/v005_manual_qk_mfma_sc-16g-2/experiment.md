# v005 手写 QK MFMA

- 机器：`sc-16g-2`，MetaX C500 16G sGPU。
- 起点：`nsa-dev` 的 `6ade9a5849f989d50d0fb89af3c2bf853baeb0f2`；根目录 `submission.py` 是 v003 版本，64 threads。
- 固定输入：`race_tests/nsa/official_case.json`，14 个 case；warmup 7、repeat 25。
- 参考实现：用户提供的 `/mnt/c/Users/Calibrum/Desktop/moe-sota/moe_sota_inline.py`，SHA-256 `e8878b9b7ca5222446da2a7c00a10129ed7296846034c06a3e6f5b5364fb0a76`。这里只借鉴 TileLang MFMA 布局与宏；没有引入外部设备代码。

## 假设

已知 `T.gemm(Q, K, scores, transpose_B=True)` 会将 Q 经过 shared memory 和局部加载。手写 QK 的 fragment 布局、K 的 shared 布局以及 `T.tvm_mfma`，可能省去 Q 的 shared memory 往返与重复局部加载。预计生成代码保留 MFMA，但 Q 直接进入 fragment，长序列 case 的耗时下降。

只替换 QK 路径。PV 的 `T.gemm` 保持原样，因为其 K 维是 16 或 32，直接照搬参考文件的 K=32 打包路径并不适用。threads 固定 64，tile_dim、循环方式和接口保持不变。由于 QK 改为手写，causal mask 移到 MFMA 后；数值语义不变。

## 可证伪条件与风险

- 任一官方 case 正确性失败或提交源码校验失败。
- 生成代码没有体现 Q 的 shared 路径被去掉，或出现异步拷贝。
- 官方 14 case 的延迟改善不足以超过运行波动，或出现实质性退化。
- 显式布局可能增加寄存器压力；仅凭源码减少 shared 使用量不能推断加速。

完整改动见 `manual_qk.patch`；候选源码仅在 `submission/v005_manual_qk_mfma_sc-16g-2/submission.py` 存一份。共享的 `official_case.json`、`reference.py`、测试入口没有复制。
