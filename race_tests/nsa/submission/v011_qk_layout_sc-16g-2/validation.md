# v011 XOR8 提交候选验证

- 精确源码：本目录 submission.py，SHA-256 8413ccd09182cee4754cdf4f80e9dcad21e8f280799b1f4dd4983ab18799b8af。
- 仅手写 QK 的 K_shared 改为 XOR8 物理布局；PV 保持 v009 的 T.gemm。
- 官方本地 14 case：布局扫描、交错复核和归档源码验证均 14/14 正确；warmup 10、repeat 50。
- 静态 OJ 源码和全部 14 个形状的生成设备代码检查通过。
- 在线 OJ：尚未验证。原始 root baseline 与 OJ Accepted 的 v009 未修改。
