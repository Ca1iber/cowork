# v021 case12 K global→local 直接加载
起点：OJ Accepted v009。v020 分组大 tile 因 shared/register 资源上升而退化；case12 仍由 S8 小 block 串行循环、MTE 数据搬运和33处同步主导。
假设：S8/BS16/D64/G16 的手写 QK 可直接按现有 MFMA B fragment 分布从 K 全局张量载入 local，去掉每轮 K→shared→local 中转及其同步，且保持小 shared footprint。
机制：只对 case12 参数形状启用 direct K local load；QK MFMA、softmax、V/PV 和其他形状 v009 路径不变。
预测：generated code 少 K shared global copy 与至少一处每轮同步，动态 shared 降低，case12 正确且更快。
证伪：不合并的 global K 请求导致访存延迟上升、correctness/compile失败、最终耗时不降。
风险：MFMA B operand 线程映射对应的跨 lane global 地址可能跨度大，失去原 T.copy 合并访问；后端可能无法 vectorize8。
