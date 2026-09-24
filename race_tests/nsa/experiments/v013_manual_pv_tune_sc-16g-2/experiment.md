# v013 手写 PV 布局及打包参数
起点：OJ Accepted v009；v010 手写 PV 为原型，曾在 BS32 因 PV A 与 QK score fragment 布局不同而增加 shared 往返。
假设：若 PV A fragment 与 QK score store fragment 相同，可直接 float32→float16 转换并消除 BS32 的 shared 重排；PV K 维打包数及 V shared 布局可改变 local load、循环和 bank 行为。
机制：保留 v009 QK 分流、threads=64、softmax；手写 PV，扫描 k_pack=1/2（按 BS 裁剪）和 V shared swizzle/linear/half/quarter。先在 case 6、12 校验和计时，再测官方 14 case。
证伪：编译/数值失败、生成代码未变、局部收益落在波动内或整套退化。
风险：score fragment 与 MFMA A operand 映射不匹配、shared bank conflict、local 片段寄存器压力。
