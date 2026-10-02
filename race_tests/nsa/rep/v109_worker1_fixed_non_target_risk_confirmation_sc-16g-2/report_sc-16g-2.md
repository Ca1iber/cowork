# codex-power v109 worker1：固定八项风险复核与case11正差

## 1. 上版本遗留问题

v108完整原native56C/168inclusive里C4/7/8/9/10/11 median正差+C13第二round正差，C12目标收益约4.49%。所有原样保留，不以samecode/noise豁免。

## 2. 问题原因分析

需要一次预声明风险确认，不能repeat-until-win或拼旧样本。8case subset不同前序JIT/cache/allocator/温度，不能称原all14同协议或混median。

## 3. 本版本解决方案

独立source27f/header104，选[4,7,8,9,10,11,12,13]，C12在13前复核目标，但没有其它6case。12source B-P-C-C-P-B两round计划32C/96，不是all14。

## 4. 具体落地策略

原native每case seed0/fullnaive1e-2/GradF16/W10R50不变，只有官方selector/CSV按真实case id校验official[id−1]/clean8/global32+96。4+24+4/28及全部baseline/unknown/OOM13/600s/phase1s/priorabort/verifiedownsignal原样。无exports/metadata，固定一次。

## 5. Benchmark 对比

12进程全部native0/ordered8PASS/clean8，observed=clean32C/96，OOM13不增。原168与本96分别保留，所有raw/outliers/ranges见risk_summary：
|case|v28 us|v84 us|v104 us|vs84 %|round1/2 vs84 %|
|---:|---:|---:|---:|---:|---:|
|4|12.874000|11.451000|11.197500|-2.213780|-6.484174/-2.108660|
|7|31.037500|24.681000|24.617000|-0.259309|-0.812795/0.385888|
|8|52.009000|40.108000|40.064000|-0.109704|-0.705107/2.287733|
|9|52.160000|40.430000|40.420000|-0.024734|-0.289855/0.089077|
|10|12.574500|10.808000|10.677500|-1.207439|-9.936316/0.192127|
|11|23.429000|19.532500|19.681000|0.760271|1.088771/0.184261|
|12|84.342000|72.379000|69.112500|-4.513049|-4.613323/-4.322386|
|13|11.852500|11.625000|9.754000|-16.094624|-19.267581/-7.156035|

## 6. Profile 指标变化

无本版metadata/profiler/ISA/新resource，仍未获GO，不冒充完成。没有纯kernel/统计稳定或CG预算保证；maskedphase/SKU/AP/namespace/0.5s限制保持。

## 7. 实验总结

C12median69.1125vs72.379us -4.513049%，两round-4.613323/-4.322386%，allC<allP无overlap，目标收益保留。C11+0.760271%且两round正(+1.088771/+0.184261%)、其它C7/8/9/10第二round正及C8高42.117/P13较高样本全部保留；不能no-reg/OJ。风险确认已结束不重复，不按结果改subset。main429/source27f不变，下一metadata/profile需实际leaderreview。

