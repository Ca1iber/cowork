# v118_worker1_c6_num16_v4_plane_lifetimes_sc-16g-2

## 1. 上版本遗留问题

C6 exactparent100MT22ST/max4/dyn8K/stack0 known. Priorown103Num16/V16 showed+2.69% latencyfailure;117raw numeric butAchievedscopegate1 remains. No bottleneck/occupancy inference.

## 2. 问题原因分析

SourceNum/V buffers smaller doesnotguaranteephysicalpeak reduction. Actual118resource is90MT24ST/max5/stack0, exactlyfails predeclaredMT<90; no uniquecause/hoist inference withoutIR/ISA. Gate remainsfailed evenMTdownfrom100.

## 3. 本版本解决方案

DedicatedonlyC6 Num16/D64plane reuse +streamV4chunk loads, completeCB13 18ASTprefix andallother13 inclC11/C12 retained. No sharedfactory/input/resultcache changes.

## 4. 具体落地策略

Source290/header118 staticOJ0/inversecoreAST parentmath proof;1024Vvectors/outslot aliasproof. OnefreshP/C metadata2pairs4files, CPUdevice/shape/static0; candidate1SDKresource0 butstrictresourcegate1 haltedbeforeIR. ActualCPP V4load→MFMA→divide/cast/earlylowerSync+store→Numclear nextplane/V1→finalSync/packed16B confirmedsourceorder only; O3lifetimes unverified.

## 5. Benchmark 对比

No originalnaive/native benchmark/fullreference: C0/inclusive0. Outer4realwaits1, candidateSDKactual0/gate1, OOM13stable. No repeatedsource edits/recompile/fillgate orold115time merge. Candidatecorrectness/latency unmeasured.

## 6. Profile 指标变化

Actualparent100/22/max4→candidate90/24/max5, ST+2 retained, dynamic8192/stack0 both. CPP Num16/V4 materialized; originalQK/P8roundedden/Vproducer/packed16B preserved. No newMC/IR/ISA/trace/actualoccupancy, no HBM/countercause attribution.

## 7. 实验总结

Closedresourcegate rejection checkpoint. Fullcandidate290 archivedunder118/header118, no sourcepromotion/canonicalmain429/leadercollection changes. OriginalMT<90 boundary andalloldfailedexperiments retained; nextdirection needsnewfalsifiableproposal/peer/leader, notsamecandidate repeated untilpass.
