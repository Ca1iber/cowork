# codex-power v005：case6 显式 K/V shared swizzle 的冗余路径（sc-16g-2）

## 1. 上轮发现

三轮 S8 大 tile 尝试失败后，v004 新鲜 profile 确认原始 case6 为 **220.974 µs**，设备中位 **218.624 µs**；mcProfiler 可用计数显示 shared 无冲突访问比例 **44.19%**、平均冲突额外周期 **4.65**、MMA duty **4.23%**。这使 K/V shared bank 映射成为可证伪的方向。

## 2. 假设与实现

从用户指定的 `ffa68b6…` 原始源码构造候选，只在 S1/BS32/D128/G16 的 case6 形状对 K/V shared 添加 TileLang `make_swizzled_layout` 注解。预测生成设备代码地址变化、shared 冲突下降、端到端延迟改善。候选 SHA-256 `6af1f35f8c2fa2fb10b5100512ec43e95e8e02e6df48a951f68e99c2afa8d237`，只有用户限定的三条导入。

## 3. 正确性与静态规则

case6 完整原参考 **PASS**，warmup 10/repeat 50；源码与目标设备 C++ 的 OJ 静态扫描也通过。无额外 class、异步拷贝、外部设备代码或 Torch GPU 替代计算。

## 4. 屏蔽计时

case6 单轮为 **220.549 µs**，v004 重测基线为 **220.974 µs**。这种小差值不能称算法收益，需结合生成代码判断。

## 5. 生成代码证伪

v005 与 v000 的 case6 设备 C++ SHA-256 完全相同：`5092f1f787bbc3c1de8b332937554714069b40ec7228fda591778ca8b3ada039`。因此显式 swizzle 没有改变最终设备内核；编译器默认映射已覆盖这一注解效果。单轮时间差属于测量波动，不能支持 shared 冲突减少的假设。

## 6. 未采集证据

目标形状代码生成已证伪机制，所以未进行全 14 项正式计时、mcTracer、mcProfiler、持续 HBM 或外部 OJ；缺项见 `UNAVAILABLE_FULL_PROFILE.md`。新鲜基线 profile 仍在 v004，不能把它的计数当作本候选的改变。

## 7. 结论

**v005 为冗余失败实验，不修改根 `submission.py`，不晋升。** 下一轮须选一个能在 TileLang 生成代码中实质改变数据路径的机制，先检查代码生成，再评估原参考和端到端性能。
