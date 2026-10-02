# Worker2 v220: C3 shared layout

P84 source4c, exactC3 (1,256,1,16,128,1,16,True) only. Fresh219: shared80.4878% nonconflict / .888889 conflictcycles, resource66MT20ST/max7. D64 C8 had100%; causal bank explanation remains a hypothesis.

Change Q/K and output shared address maps from wide rows128 to two64column planes, preserving original V plane layout, global reads/writes, computation, Num32, synchronization and2048half shared size. Compare every logical value/address mapping and vector alignment; retain actual parent JIT decorator and14ASTprefix.

Predict improved shared nonconflict; no improvement, extra address/registercost or slower native latency falsifies. Write hypothesis then implement one source-only candidate and concise compile prep. No compile/native until actualsource review GO. Other13 source identity does not waive full14 performance checks. Peer advisory only.
