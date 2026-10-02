# Worker1 v125: single warp shared slots

Parent best CB13, exact C12 only. Close rejected twinwarp124 first.

Two1024half slots (4096B). Q0 withpostbar. nextslot1; K validblock writer+consumer same nextslot, keep postproducer barrier, remove preoverwrite barrier, toggle only after validconsumer. PV continues same valid toggle; first V writes opposite lastK. Output writes/reads nextunused opposite lastV, withpostoutput barrier. Keep all math/global16B/Num16/roundedPden/shuffles.

Each postbar guarantees earlier other-slot consumer reads finish before that slot is reused two stages later. Selected-index parity is unsafe for invalid gaps; toggle per valid block. Prove all256 validity masks/empty/causal and fullvalue alignment, retaining actual JIT decorator. Source-only before actual compile GO; no async/foreign code. Fullvalid35→18 warpbarriers is a prediction; extra shared/register/address costs may lose. Peer advisory only.
