# v011 手写 QK 的 K-shared 布局调参

从 OJ Accepted 的 v009 精确源码出发，仅调整手写 QK 路径 K_shared 的物理布局；固定 64 threads、QK MFMA 算术、softmax 和 PV T.gemm。根目录原始 submission.py、v009 归档和官方 14 case 测试入口均未修改。

- v009 SHA-256：b4e7a59a5c6cf2f3379c19dad32a43b7c1a94ea145b0b5b09b1b7ae42154234c。
- 选中的 v011 XOR8 SHA-256：8413ccd09182cee4754cdf4f80e9dcad21e8f280799b1f4dd4983ab18799b8af。
- 提交代码只在 submission/v011_qk_layout_sc-16g-2/submission.py。在线 OJ 尚未验证。

## 布局扫描结果

在修正参考计算后的同一官方 14 case 入口使用 warmup 10、repeat 50。每份完整 CSV 均 14/14 PASS，候选在独立进程中运行；汇总由 hack/v011_qk_layout_sc-16g-2/analyze.py 从原始 CSV 生成，见 summary.csv。

1. make_swizzled_layout 的三个布尔参数组合 TF、FT、FF 在 case 6、12 的独立生成代码中与 v009 完全相同；平均 0.039130、0.038844、0.038962 ms，前后 v009 对照 0.038951、0.038975 ms。这组调参没有实际改变目标 kernel。
2. 线性、半 bank、四分之一 bank shared 布局均改变了 case 6、12 的生成地址。线性平均 0.040004 ms，case 12 退化约 10%；四分之一 bank 平均 0.039578 ms，case 6/12 退化；半 bank 平均 0.038889 ms，case 6/12 仅比对照快约 0.4%/0.7%，在波动边缘。
3. XOR4、XOR8、XOR16 shared 布局产生互不相同的设备代码。XOR4 平均 0.042040 ms，case 6 退化约 14%；XOR16 平均 0.039278 ms，case 12 退化约 1.7%；XOR8 平均 0.038955 ms，前后 v009 对照为 0.039246、0.039026 ms。生成代码抽取最初出现 TileLang 跨源码内存缓存警告，已改为每个候选独立进程重新生成，不能使用首次混合进程的产物下结论。

XOR8 将连续 8 个 FP16 K 元素保持在同一 shared 向量内，物理列块按 KV 行做 XOR 映射；case 6/12 的 shared 读写地址计算与 v009 不同，而 QK 的 MFMA 运算及 PV 路径未改变。

## XOR8 与 v009 交错复核

| 运行 | 14 case 平均 ms | case 6 ms | case 12 ms |
| --- | ---: | ---: | ---: |
| XOR8 第一次 | 0.038965 | 0.167004 | 0.102830 |
| v009 第一次 | 0.039379 | 0.169006 | 0.103291 |
| XOR8 第二次 | 0.038965 | 0.166881 | 0.102528 |
| v009 第二次 | 0.039092 | 0.168479 | 0.103619 |

配对均值：case 6 为 v009 0.168742 ms、XOR8 0.166942 ms（耗时低约 1.1%）；case 12 为 v009 0.103455 ms、XOR8 0.102679 ms（低约 0.75%）。整套均值约低 0.7%，但未走手写 QK 的形状也有计时变化，不能把整套小差额全归因于 XOR8。

从最终归档的精确 v011 文件再次运行官方 14 case，14/14 PASS，平均 0.039227 ms；case 6/12 为 0.166840/0.102723 ms。提交源码及全部 14 份生成设备代码通过静态 OJ 检查。最终生成代码归档 generated_code.tar.gz SHA-256 07c91a92b962cbfe48e3ed09e52ae9221784b8c118019efd14f5c2cf1566f94a；各布局代表形状生成代码归档 layout_codegen_variants.tar.gz SHA-256 094651c90d800e58aa263f2d8f29d47446118885a9c5afbb18f96464cd7741c9。

结论：XOR8 是本轮唯一在 case 6/12 都重复出现小幅局部收益的布局，已作为 v011 候选归档；收益约 1%/0.75%，在线 OJ 结果仍是最终判据。v009 继续作为已接受版本，根目录 baseline 不变。
