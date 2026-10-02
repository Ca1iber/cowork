# 未取得的证据

- 外部完整14项OJ评分待核对，本地计时不能代替无退化要求；本版只归档候选。
- mcTracer此前timeout124、仅19B header，本版未新重试；不宣称CPU/GPU时间拆分。
- 未获得可用ISA解码，device CPP/mxcc resource/ELF不叫解码汇编。
- 实测sGPU计算/HBM roof未标定，不伪造Roofline，不把25% Compute推成25% HBM/L2。
- 单次profile counter不证明bank冲突为唯一瓶颈；static maxwarps/raw achieved不是实测occupancy。根据完整native、寄存器/shared与pairedprofile一起判断。
