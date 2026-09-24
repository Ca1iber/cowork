# v011 QK K-shared swizzle 布局扫描

- 起点：OJ Accepted 的 v009，SHA-256 b4e7a59a5c6cf2f3379c19dad32a43b7c1a94ea145b0b5b09b1b7ae42154234c。v010 手写 PV 没有稳定收益，本轮 PV 恢复 v009 的 T.gemm。
- 固定：64 threads、QK MFMA 宏与寄存器布局、softmax、PV T.gemm、官方 14 case 和 warmup 10 / repeat 50。
- 唯一变量：手写 QK 路径中 K_shared 的 make_swizzled_layout(k_major, allow_pad)。默认是 (True, True)；尝试 (True, False)、(False, True)、(False, False)。两个参数分别控制 K-major 映射与是否允许 padding。
- 预测：改变 K 共享内存的物理映射与 shared-to-local 访存；若能减少 bank 冲突或 padding，至少部分手写 QK case 应变快。
- 否证：编译/正确性失败、生成代码相同、官方 14 case 或关键 case 退化。先单轮筛选，再对可能获益的布局与 v009 做重复对照；在线 OJ 是最终判据。
- 归档：共用 official_case.json/reference.py/测试入口仅按路径与哈希引用，不复制。临时候选在容器 /tmp，实验目录保存精确补丁/哈希；只有通过验证的候选才进入 submission/v011_qk_layout_sc-16g-2/。

根目录 baseline 与 v009 原档不变。
