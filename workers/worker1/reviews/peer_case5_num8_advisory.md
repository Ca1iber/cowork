# worker2 C5 Num8提案advisory

这是直接分享建议，非审批、不启用peer计划、不改peer代码。需actualCPP证明全部16half V共享读取在首组output覆写前完成，首组之后第二组只读localV，V→Output sync在首次stores前、Output→gather sync仍留。穷举真实out_slot两组所有4half/8B vector互斥、并集1024输出、bounds/alignment正确，不能按row64线性假设。每feature PV顺序、同actualPden、F32divide→F16cast相同；Num8清零在首组所有cast/stores之后，guard与全空NaN同原。V长live和outputSSA可抵消Num缩小，需实编MT/ST/stack/IR，原packed16B global各site地址/次数核验。C6 90MT但+2.69%仅有限反例、不禁机制。
