# 本版未取得的证据

- 外部OJ完整14分数待用户提供；本地native结果不替代真实无退化要求。本版只归档候选，不提升主入口。
- mcTracer前期timeout124且仅19B header，本版未再重试，不宣称有CPU/GPU时间拆分。
- 没有可用ISA解码器；device CPP/mxcc resource/ELF不是解码汇编。
- 当前sGPU真实HBM/计算roof未标定，不伪造Roofline，不把25% Compute推成25% HBM/L2。
- 单次cold import不证明32GiB内存风险解决。双方在source exec前RuMaxRSS已约22GiB；本次减少编译entries及source执行时间，峰值只小幅变化，组件归因未证明。
