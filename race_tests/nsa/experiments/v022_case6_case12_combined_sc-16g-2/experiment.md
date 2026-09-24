# v022 合并 case6 输出 swizzle 与 case12 K 直载
起点：OJ Accepted v009，两个 OJ 尚未验证的本地候选 v016/v021。v016 case6 配对耗时 -3.35%，shared 无冲突 44.95%→92.45%；v021 case12 三轮中位数 -13.96%，shared 4608→2560 B。
假设：两个改动仅作用于不同官方形状，可在同一精确提交稿中叠加，各自保留数值正确与局部收益。
机制：以 v021 为底，在非 directK 的 BS32 manual-QK 分支加入 v016 output_shared swizzled 布局；其它形状维持 v009 路径。
预测：case6 generated device code 等于 v016，case12 等于 v021，其余官方形状等于 v009（仅允许 reduction scratch 地址重排）；14/14 正确，两重点 case 继续改善。
证伪：任一重点 case 代码未匹配、正确性失败、局部收益消失或显著全套退化。
风险：TileLang 闭包分支改变布局推断；线上 OJ 计时/沙箱与本机不同。
