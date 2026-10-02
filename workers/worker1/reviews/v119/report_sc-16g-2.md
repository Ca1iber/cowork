# v119 已有C6首次O3IR诊断（sc-16g-2）

## 1. 上版本遗留问题

v118 只改C6的Num16/V4流式PV，实际SDK资源90MT/24ST/max5/stack0/dyn8192，预声明MT<90被反证。旧资源门槛1及所有外层wait1保留；v118未执行IR/native。v103 Num16/V16也是90MT且慢2.691786%，仅为历史反例。

## 2. 问题原因分析

物理寄存器分配原因尚未知。源码数组缩小和90MT相同不能证明物理live变化。本次只检查编译器安排；SDK3.7.1无objdump/disasm，ISA及物理寄存器映射UNAVAILABLE。

## 3. 本版本解决方案

直接读取已有d4ab CPP，唯一首次O3IR，然后CPU提取kernel-only事件/SSA依赖。不修改source290、输入、资源阈值，不重新导出或测量。

## 4. 具体落地策略

原SDK mxcc device-only emit-llvm O3，原flags保持；5GiB入场+23GiB工程预算+4GiB余量、whole28GiB/OOM13/unknown1GiB/600秒/0.5秒/身份1秒/仅核实owned信号保持。launcher、supervisor、controller、SDK及CPU原Popen实际wait全部0。2stages完成，无重试；准备文本工具一次automatic-review deadline未执行，短文本替代记录保留。

## 5. Benchmark 对比

本版本计划及实际candidate fullrefs=0、inclusive fullrefs=0，NSA attention=0、native=0。没有新延迟/正确性结果，旧版本全部数据不拼接。没有OJ或main推广。

## 6. Profile 指标变化

本次metadata/resource/MC/trace全部0。首次IR SHA814d143b46a1736702e5a3fd150c254a4f745010eee29def9857ac1001616979，162775字节；kernel-only32静态MMA、0alloca opcode、0AS5。实际V0八次4half读取各交替MMA，lower四stores完成后进入V1；V1独立zeroSSA初始化再原key1累加，最后warp同步再gather。源码Numclear由新SSA零初值表达。LLVM指令顺序及文本last-use不代表最终CFG完整生命期、物理register映射、occupancy或runtime overlap。

## 7. 实验总结

有限诊断完成：IR保留流式V4/两个输出片的编译安排，但没有解释物理MT为何仍90；v118资源门槛失败不变。7份wholeCG样本峰4827459584B、OOM13稳定，仅观测不是未来上界。所有自有进程terminal，无新source/native授权；下一机制需独立证据与审批。
