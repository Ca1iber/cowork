# v027 K 直载路径的 V 加载时序扫描

Observed evidence: fresh v023/v026 profile 中，case6/12 MTE Duty 约36%/65–67%，MMA Duty 约6%/10%；K global→local 后 VLS pipeline stall 上升，但物理 HBM 仅约454/201 GB/s，未到此前实测复制上限。生成设备代码在 QK/softmax 后才发出 V global→shared copy，并在 PV 前同步。v018 在仍有 K shared 的 case6 提前 V 造成动态 shared 8KB→16KB 且退化；当前 case6/12 都是 K 直载，K shared 不再存在。

Verified bottleneck: 设备 kernel 主导总时延，尤其 case12 每选中块都重复 V copy/softmax/PV；局部限制与向量加载/等待相关，非 HBM 总带宽或 MMA 峰值。

Current hypothesis: 在 K 直载后，提前发起 V copy 可能在不扩大 shared 资源的情况下让 V 数据与 QK 或 softmax 计算重叠。

Proposed mechanism: 仅对 case6/12 的 directK 形状，把原 PV 前的 V copy 分别移到 QK 前、以及 QK 后 softmax 前，两种时序作为同一个加载时机参数扫描；其他形状保持 v026。所有 T.copy 仍为同步 TileLang copy，不使用异步 copy。

Predicted metric changes: V global load 提前，PV 前等待减少，动态 shared 不出现 v018 的翻倍；若有收益，case6/12 GPU event 时延和设备 kernel duration下降，global 字节近似不变。

Falsifying result: 生成代码没把 V load 前移、出现异步 copy、shared/同步/寄存器显著增长，或 correctness 不通过、目标时延稳定退化，则拒绝。尤其不能用高 HBM GB/s 本身当成功指标。

Correctness and resource risks: 早写 V shared 后被其他阶段复用/覆盖，跨 selected 迭代依赖，shared 活跃期变长，寄存器或同步增加。先用原 reference 的 case6/12、warmup10/repeat50 screen，优胜后再完整14 case和 OJ 静态检查。起点为 v026 精确 SHA-256 `3687b4c84081ecf00b3286c40a7fc57ddf89cd0dfa83aca63574513c028acc77`；初始 Git `2395e0a4c`。
