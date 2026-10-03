# 当前 C12 已存优化 IR 只读结论

当前 CB13 sourcecb30 的 `_make_power_s8_global_softmax` 含完整decorator AST精确同v104 source27f。实际CPP3885044e、优化IRde3bcdfd已存且原capture exit0；归档compilerSHA5d与当前只读binary hash相同，原命令为 -maca-device-only -S -emit-llvm -O3 -lineinfo --offload-arch=xcore1000 -use-fast-math 等完整argv见JSON。本次没有import TileLang/Torch、编译/资源/profile/native/GPU，也没有改源码/原归档/peer计划。

## Indices：地址复用，值未CSE

8个getelementptr地址每个出现两次globali32 load，总16个静态load sites。slot0同 `%arrayidx125` 在272行读 `%15`、1452行重新读 `%307`；QK/PV有效条件分别 `%or.cond886` / `%or.cond887`，均基于各自load。仅GEP地址CSE不代表load值CSE。

| slot | shared pointer SSA | QK load SSA / line | PV load SSA / line |
|---|---|---|---|
| 0 | %arrayidx125 | %15 / 272 | %307 / 1452 |
| 1 | %arrayidx125.1 | %213 / 993 | %338 / 1574 |
| 2 | %arrayidx125.2 | %225 / 1055 | %369 / 1696 |
| 3 | %arrayidx125.3 | %237 / 1117 | %400 / 1818 |
| 4 | %arrayidx125.4 | %249 / 1179 | %431 / 1940 |
| 5 | %arrayidx125.5 | %261 / 1241 | %462 / 2062 |
| 6 | %arrayidx125.6 | %273 / 1303 | %493 / 2184 |
| 7 | %arrayidx125.7 | %285 / 1365 | %524 / 2306 |


将8个整数元数据在一次调用内保留可能改变loadsites，但会延长活跃范围/增加MT或ST/产生spill，也可能不减最终ISA工作量。这里只确认当前IR没有值CSE；不把16×4B当HBM实际流量、周期或瓶颈。未实施元数据cache或新计划。

## max：32级串行SSA，未自动平衡

278行 `%16=maxnum(score0,-inf)`；280行 `%17=maxnum(%16,score1)`，持续至340行 `%47=maxnum(%46,score31)`。32个scalar `llvm.maxnum.f32` 节点构成最长max-only深度32（31条节点间边）。352行XOR32归约 `%54=maxnum(%47,%53)`，364行XOR16 `%61=maxnum(%54,%60)`，计入两次跨lane max后共34级max节点依赖。未发现balanced scalar tree或vector.reduce.fmax。该SSA图不证明ISA流水周期、运行占用或端到端瓶颈。

## 必须保留的数值边界

每invalid slot score为−inf，`has_valid`由原raw合法/因果guard合并；1425/1426 false分支绕softmax，P为0/den0/Num0，原末尾除法维持NaN而非强置0。保留raw guard在乘BS前、同actualroundedF16P同时驱动PV与F32den、原per-feature累加顺序。未来任何max重组必须核原maxnum NaN/−inf/signedzero语义，不能以finite max关联性豁免完整原naive1e-2。没有修改或放宽这些边界。

两项机制都只能作为后续可证伪假设；是否选方向由leader结合完整验证另行批准。
