# 尚未取得的证据

- 用户已提供v84完整14项OJ截图，分数对原v28非退化；未取得独立截图文件SHA与上传源码SHA，归属按用户版本说明。相对81的OJ分数未提供。
- 没有新的mcTracer时间线，前期timeout124/仅19B header；未量化CPU/GPU时延拆分。
- 无可用ISA解码器；device CPP/mxcc resource/ELF不称为解码汇编。
- 未标定实测sGPU计算/HBM roof，未伪造Roofline；25% Compute不推导25% HBM/L2。
- 两目标写计数比payload均多320B，来源未证明。事前0至512B条件仅为必要scope一致性，不保证独占kernel或实际HBM流量。
- WG-load指标属于Workgroup Memory，不是global/DRAM加载延迟；零shared访问下工具报告100%效率和0周期不表示有效效率或global零延迟。
- 静态maxwarps和raw achieved waves不是实测occupancy；profile gradFalse与native gradTrue不同，profile不代替native基准。
- 本轮OOM计数保持10，不证明32GiB CPU内存风险解除。
