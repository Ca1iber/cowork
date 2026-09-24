# v025 case6 多 query token/CTA
起点：本地最佳 v023，OJ Accepted 仍为 v009。case6 8192 CTA、每 CTA 仅64线程一 wave；bank conflict、K 数据中转已分别优化，但每 token 独立 CTA 的任务调度和缓存利用可能仍限制吞吐。
假设：一个64-thread CTA 顺序处理2/4/8个 query token，复用同一组 fragment/shared 缓冲并降低 CTA 总数，可减少调度与每CTA固定开销，获得超出局部预取微调的收益。
机制：仅对 S1/BS32/D128/G16 且 seq_len 可整除分组大小的形状用 token_group=2/4/8，T.Kernel token grid 相应缩小；CTA内部按原 v023 代码逐 token 计算并重置在线 softmax 状态。其它形状 token_group=1。
预测：case6 CTA 8192→4096/2048/1024，单 CTA 动态 shared 不增加、正确性不变；如调度为关键瓶颈，单次耗时下降。
证伪：并行 CTA 数减少使 K/V 读取延迟隐藏不足、编译生成额外循环/同步、case6 耗时不降。
风险：TileLang 循环包裹 GEMM/fragment 布局后端失败；随机选中 KV block 不保证跨 query 数据复用，可能没有足够固定开销可摊薄。
