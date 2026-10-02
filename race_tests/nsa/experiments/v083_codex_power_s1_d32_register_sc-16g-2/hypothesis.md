# v083 hypothesis BEFORE kernel edit

Observed evidence：82 C3快16.2%，但C1固定对v28 +5%而拒绝；本轮parent回81。fresh C1 probe64waves，输出65536+320B，raw320残量来源未归因、scope仅必要条件；52.63% shared效率、conflict3.27、load39.48/40.64，MTE5.21/4.86、MMA0.33/0.32。24MT/20ST/stack0/static maxwarps8，动态shared2048B。主host已有cache快速路径/class仅miss，因此不改那个已被否定的猜测。
Verified bottleneck：观察shared冲突、小grid低duty；未取得timeline，不能证明它是唯一限制。
Current hypothesis：D32、16keys、16heads足够以64线程四quarter直接装入16x16x16f16 MFMA寄存器；QK2、PV2，省去Q/K/V/output shared中转与warp memory sync，可能改善端到端。
Proposed mechanism：q8half/k4half/scoreP4/num8float/Vop8half，Q/K按(lane%16,chunk16+quarter4+e) global8B vectorload，V按(quarter4+e,chunk16+lane%16) scalar coalescedlane loads，Output同Q布局global8Bstore。仅exact C1 lazykey，整份parent81 AST为前缀，另外13个body/key不变。各call完整计算，codecache无输入/输出内容。
Predicted metrics：shared2048→0，不再有shared access/conflict，零访问的efficiency若N/A必须保留，不虚称100%；global read/store效率可能下降、load latency/MT可能变差，仍以完整native时延判定。只有64waves，不能用roofline理论替代测量。
Falsifier：完整naive_nsa失败；allowed-source/codegen失败；新D32时延不改善；其他case正式与唯一风险有正差则不宣称无退化；新cache保留Tensor/结果或热路径非JITKernel则拒绝。
Risks：gmem vector不是完全contiguous warp，V scalar gathers、MFMA mapping/offsets、mask/queryheads。prove512coords和local8extent，FP16Pscale256/FP32den同consumedP、QKaccumF32，reference容差不得改。

只用正常TileLang原语，不async/外源/手写generalbuiltin/torch math。旧团队kernel不读，原始v28黑盒。Direct-register D32为新设计，不按先前shared布局简单缩放。未提交OJ，root originalv28保持。
