# v136 C12 max4×8 编译物化与native失败前缀（sc-16g-2）

## 1. 上版本遗留问题

当时CB13 currentC12 CPP388/优化IRde3有32个local maxnum串链+2warp依赖34，Indices16loads。136只选四条max8归约，原CB13其余13source保持；旧135未知heavy失败独立不复活。本版本在当前v303获OJ成绩前开始，不能作为当前base替代而丢失其5/6/8收益。

## 2. 问题原因分析

source rationale−inf seed/sameT.max/NaN、±0经+8、emptyhasvalidfalse保持forward数值/分类而不承诺NaNpayload/异常bit，原fullnaive1e−2不放宽。当前IR真实长链只支持优化假设，不证明运行瓶颈。源码仅partial4+max区域，完整decoratedfactory逆变换与父字节exact，JIT/18ASTprefix及P32round/den/PV/Num16/两shuffle/同步输出不动。

## 3. 本版本解决方案

source43fa/header136，先有限5stage compile；actual37maxsites（父34）、四8链+2层merge/localdepth10+原warp2总12（父34），64MMA/noallocaAS5/资源68MT44ST/max7/stack0/dyn2048同父、Indices16不变。原contract flags，无nnan/ninf/nsz/reassoc/fast。整CPP仅partial4/max区域变化、hostbyteequal。结构物化不是速度证明。

## 4. 具体落地策略

原compile5/outerwait0、2exports0NSArefs/100samples/OOM13，compile-only checkpoint56d766保留；native另获leader四源16批准：B28-P84-CB13-C136-C136-CB13-P84-B28两round，仅selector12/seed0GradF16/fullnaive1e−2/W10R50。20deps+shared6+actualmathflags绑定，唯firstlauncher667749原Popen持到wait1。按最新授权仅phaseGO变化，原no_native_GO_yet文字保留并在GO_freeze明确非runtimegate，实际权限来自leader消息/phase。

9originalnative进程exit0/cleanPASS共9refs、C136只2refs。第10P84第一次准入6438412288B<6442450944B，握手child670600已spawn但GO_sent=false；第二6444773376B超2322432B，knownchildTERM/wait−15，原run_variant未exec、0reference/CSV无，第11..16未起。四层truewait1/OOM13稳定，不等当前下降重试，不改阈值/身份/清cache/未知进程。拒绝是真实预算门禁，不是数值失败。

## 5. Benchmark 对比

完整16程序失败，expected4C16仅actual2C9，所有9CSV/PASS原SHA保留。Existing统计脚本wait0只生成incomplete/cases[]，不洗nativegate1。root要求只读首8balancedround1：C[68.874,68.961]中位68.9175，CB13[69.222,69.110]中位69.166，差−.3592806%；P84[72.136,72.310]中位72.223差−4.5767969%，B28[83.804,83.523]中位83.6635差−17.6253683%。这些仅两candidate/首轮有限数据，不是完整两个round或稳定收益；第9B28额外样本保留，不能删/补/与旧时延拼完整median。原event包围50Pythoncalls非纯kernel，全部高点/拒绝原样，不归noise。

## 6. Profile 指标变化

无新mcProfiler/trace/ISA或重编，UNAVAILABLE。native745个.5s样本/OOM13、observedpeak27930267648B；compile100样本peak27092606976B，仅观测下界，不是futureupperbound。拒绝secondadmission+2322432B精确保留，rawcache/rss/mapped/swap账项和Nodeexact匹配/currentcensus已存，不等于sumPIDRSS。后续currentwhole6386610176B较低不是旧136重跑授权。CPPuint4是声明/意图，非ISA物理访存宽度/occupancy证明。

## 7. 实验总结

failed_second6GiB_admission_originalC12_native_incomplete_prefix_retained。编译机制成立，但只有2C9前缀正确性与首轮约−.36%有限差，不能正式采用/推广或补测。SC135旧failure、136compilecheckpoint及全部raw分开保留。用户后来提供v303 OJ14AC/1212 vsv84 1204逐项不降，按用户版本归属记录、uploadSHA未独立可见；leader当前base改为v303 source985ffd。136旧source不追溯改写，后续任何候选须保留当前v303全source5/6/8收益。现在只读当前C12 K/V索引width已32与Num16归一化IR16fdiv证据，提出下一最小机制proposal，不自行source/GPU/SDK，旧门禁不复活。
