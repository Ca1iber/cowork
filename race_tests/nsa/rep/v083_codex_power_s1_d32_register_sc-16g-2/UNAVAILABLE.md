# 尚未取得的证据

- 外部完整14项OJ分数未取得，本地不能替代无退化要求，本版只归档候选。
- 没有新的mcTracer时间线，前期timeout124/仅19B header；未宣称CPU/GPU时延拆分。
- 无可用ISA解码器；device CPP/mxcc resource/ELF不叫解码汇编。
- 未标定实测sGPU计算/HBM roof，未伪造Roofline，不把25% Compute推成25% HBM/L2。
- 64KiB payload多320B计数残量来源未证明，绝对0..512B scope条件在当前profile前固定，只是必要一致性，不保证专属kernel作用域或HBM流量。
- 零shared访问的efficiency若undefined/N/A保留raw，不虚称100%。静态maxwarps/raw achieved不是实测occupancy。
- loaderOOM8→10已保留，case5一次恢复与其他首次case监控OOM10不变，但1s采样和读RSS不证明精确峰值/组件因果/OOM风险解除，也不宣称observer零影响。
