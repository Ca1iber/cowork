# 未取得或未执行的证据

- v100没有OJ结果，v084用户截图分数不属于v100。
- 全14 formal及归档路径native未重跑：C12 selected screen已退化并拒绝，无merge proposal。仅4候选/12含对照完整naive_nsa检查，不能宣称全14正确性或无退化。
- 无新mcTracer timeline，历史timeout124/header-only；不作CPU/GPU时间分解。
- 无可用ISA decoder或实测sGPU HBM/compute roof；CPP/mcbin/resource不是ISA，未画伪Roofline。
- 8MiB输出计数额外320B未归因，0至512B仅必要scope条件，不证明独占或真实HBM traffic。
- staticmaxwarps不等于实测occupancy；寄存器上涨不单独证明退化唯一因果。
- sampler开始晚于profile，仅代表实际采样窗口，不宣称全程观测或perkernel吞吐。
- 原native官方输入至少1有效block；reference对全部mask softmax(-inf)为NaN，不引入不同empty-all结果契约。
