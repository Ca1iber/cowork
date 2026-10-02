# worker2直接机制审阅

建议不是审批：已核验真实qk_slot panel/所有4half vector touchset，output lower0..1024/upper1024..2048，future Vplane1 2048..4096不交。要求先plane0两个keytile读完full64 sync，lower cast/store完成才clearNum，最终globalreader前sync；所有旧K/V保护保留。原den已在V前，不移动；P8本来resident，不新增P存储。perfeature FP32 key0/key1顺序与den/F16转换不变。检查compiler是否实际num16且MT降低，不能用sourcealloc或staticmax当实测occupancy。

worker1已纳入自身假设，尚无candidate edit，待leader GO。没有编辑对方source或plan。
