; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v209_worker2_c14_linear_query_grid_subagent2/codegen/parent_v084/case14_stage1.device.cpp'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v209_worker2_c14_linear_query_grid_subagent2/codegen/parent_v084/case14_stage1.device.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "mxc-metax-macahca"

%struct.__half = type { i16 }
%struct.mcDevMallocInfo.0 = type { i32, i32, ptr }

@shared = external protected local_unnamed_addr addrspace(3) global [0 x %struct.__half], align 1024
@mcDeviceMemoryInfo = weak protected addrspace(1) externally_initialized global [1 x %struct.mcDevMallocInfo.0] zeroinitializer, align 8
@llvm.compiler.used = appending addrspace(1) global [1 x ptr] [ptr addrspacecast (ptr addrspace(1) @mcDeviceMemoryInfo to ptr)], section "llvm.metadata"

; Function Attrs: mustprogress noreturn nounwind
define weak void @__cxa_pure_virtual() local_unnamed_addr #0 !dbg !5 {
entry:
  tail call void @llvm.trap(), !dbg !9
  unreachable, !dbg !10
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #1

; Function Attrs: mustprogress noreturn nounwind
define weak void @__cxa_deleted_virtual() local_unnamed_addr #0 !dbg !11 {
entry:
  tail call void @llvm.trap(), !dbg !12
  unreachable, !dbg !13
}

; Function Attrs: nounwind
define weak protected void @__mcImplicitDeviceSynchronize() local_unnamed_addr #2 !dbg !14 {
entry:
  %0 = tail call ptr addrspace(4) @llvm.mxc.implicitarg.ptr(), !dbg !16
  %arrayidx.i.i = getelementptr inbounds i8, ptr addrspace(4) %0, i64 32, !dbg !16
  %1 = load i64, ptr addrspace(4) %arrayidx.i.i, align 8, !dbg !16, !tbaa !17
  %2 = inttoptr i64 %1 to ptr, !dbg !16
  %arrayidx.i32.i = getelementptr inbounds i8, ptr addrspace(4) %0, i64 40, !dbg !16
  %3 = load i64, ptr addrspace(4) %arrayidx.i32.i, align 8, !dbg !16, !tbaa !17
  %4 = inttoptr i64 %3 to ptr, !dbg !16
  %current_counter.i = getelementptr inbounds i8, ptr %4, i64 12, !dbg !16
  %thread_counter.i = getelementptr inbounds i8, ptr %4, i64 16, !dbg !16
  %5 = load ptr, ptr %thread_counter.i, align 8, !dbg !16, !tbaa !21
  %cmp.not.i = icmp eq ptr %5, null, !dbg !16
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !16

if.then.i:                                        ; preds = %entry
  %6 = tail call align 4 dereferenceable(64) ptr addrspace(4) @llvm.mxc.dispatch.ptr(), !dbg !16
  %7 = getelementptr inbounds i8, ptr addrspace(4) %6, i64 12, !dbg !16
  %8 = load i32, ptr addrspace(4) %7, align 4, !dbg !16, !range !28, !invariant.load !8
  %9 = getelementptr inbounds i8, ptr addrspace(4) %6, i64 4, !dbg !16
  %10 = load i32, ptr addrspace(4) %9, align 4, !dbg !16, !invariant.load !8
  %conv.i14.i.i = and i32 %10, 65535, !dbg !16
  %div.i15.i.i = udiv i32 %8, %conv.i14.i.i, !dbg !16
  %mul.i16.i.i = mul i32 %div.i15.i.i, %conv.i14.i.i, !dbg !16
  %cmp.i17.i.i = icmp ugt i32 %8, %mul.i16.i.i, !dbg !16
  %conv2.i18.i.i = zext i1 %cmp.i17.i.i to i32, !dbg !16
  %add.i19.i.i = add nuw i32 %div.i15.i.i, %conv2.i18.i.i, !dbg !16
  %11 = getelementptr inbounds i8, ptr addrspace(4) %6, i64 16, !dbg !16
  %12 = load i32, ptr addrspace(4) %11, align 4, !dbg !16, !range !28, !invariant.load !8
  %13 = lshr i32 %10, 16, !dbg !16
  %div.i.i.i = udiv i32 %12, %13, !dbg !16
  %mul.i.i.i = mul i32 %div.i.i.i, %13, !dbg !16
  %cmp.i.i.i = icmp ugt i32 %12, %mul.i.i.i, !dbg !16
  %conv2.i.i.i = zext i1 %cmp.i.i.i to i32, !dbg !16
  %add.i.i.i = add nuw i32 %div.i.i.i, %conv2.i.i.i, !dbg !16
  %14 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.z(), !dbg !16, !range !29
  %mul.i.i = mul i32 %add.i.i.i, %14, !dbg !16
  %15 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.y(), !dbg !16, !range !29
  %mul320.i.i = add i32 %mul.i.i, %15, !dbg !16
  %add.i.i = mul i32 %mul320.i.i, %add.i19.i.i, !dbg !16
  %16 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !dbg !16, !range !29
  %add8.i.i = add i32 %add.i.i, %16, !dbg !16
  %conv.i.i = zext i32 %add8.i.i to i64, !dbg !16
  %arrayidx.i = getelementptr inbounds i32, ptr %5, i64 %conv.i.i, !dbg !16
  %17 = tail call i1 @llvm.mxc.is.private(ptr nonnull %arrayidx.i), !dbg !16
  br label %while.cond.i, !dbg !16

while.cond.i:                                     ; preds = %while.body.i, %if.then.i
  br i1 %17, label %if.then.i.i, label %if.end.i.i, !dbg !16

if.then.i.i:                                      ; preds = %while.cond.i
  %18 = load i32, ptr %arrayidx.i, align 4, !dbg !16, !tbaa !30
  br label %_Z9atomicAddPii.exit.i, !dbg !16

if.end.i.i:                                       ; preds = %while.cond.i
  %19 = atomicrmw or ptr %arrayidx.i, i32 0 syncscope("device-one-as") monotonic, align 4, !dbg !16
  br label %_Z9atomicAddPii.exit.i, !dbg !16

_Z9atomicAddPii.exit.i:                           ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %18, %if.then.i.i ], [ %19, %if.end.i.i ], !dbg !16
  %cmp6.i = icmp sgt i32 %retval.0.i.i, 0, !dbg !16
  br i1 %cmp6.i, label %while.body.i, label %if.end.i, !dbg !16

while.body.i:                                     ; preds = %_Z9atomicAddPii.exit.i
  tail call void @llvm.mxc.sleep(i32 1), !dbg !16
  br label %while.cond.i, !dbg !16, !llvm.loop !31

if.end.i:                                         ; preds = %_Z9atomicAddPii.exit.i, %entry
  %20 = tail call i1 @llvm.mxc.is.private(ptr nonnull %current_counter.i), !dbg !16
  br i1 %20, label %if.then.i36.i, label %if.end.i34.i, !dbg !16

if.then.i36.i:                                    ; preds = %if.end.i
  %21 = load i32, ptr %current_counter.i, align 4, !dbg !16, !tbaa !30
  %add.i37.i = add nsw i32 %21, -1, !dbg !16
  store i32 %add.i37.i, ptr %current_counter.i, align 4, !dbg !16, !tbaa !30
  br label %_Z9atomicAddPii.exit38.i, !dbg !16

if.end.i34.i:                                     ; preds = %if.end.i
  %22 = atomicrmw add ptr %current_counter.i, i32 -1 syncscope("device-one-as") monotonic, align 4, !dbg !16
  br label %_Z9atomicAddPii.exit38.i, !dbg !16

_Z9atomicAddPii.exit38.i:                         ; preds = %if.end.i34.i, %if.then.i36.i
  %retval.0.i35.i = phi i32 [ %21, %if.then.i36.i ], [ %22, %if.end.i34.i ], !dbg !16
  fence syncscope("device") seq_cst, !dbg !16
  %call_deep.i = getelementptr inbounds i8, ptr %4, i64 4, !dbg !16
  %23 = load i32, ptr %call_deep.i, align 4, !dbg !16, !tbaa !33
  %cmp8.i = icmp eq i32 %23, 0, !dbg !16
  br i1 %cmp8.i, label %if.then9.i, label %if.else.i, !dbg !16

if.then9.i:                                       ; preds = %_Z9atomicAddPii.exit38.i
  %cmp10.i = icmp slt i32 %retval.0.i35.i, 2, !dbg !16
  br i1 %cmp10.i, label %if.then11.i, label %__mcImplicitDeviceSynchronizeImpl.exit, !dbg !16

if.then11.i:                                      ; preds = %if.then9.i
  tail call void @llvm.mxc.sleep(i32 30), !dbg !16
  br label %__mcImplicitDeviceSynchronizeImpl.exit, !dbg !16

if.else.i:                                        ; preds = %_Z9atomicAddPii.exit38.i
  %parent_wrap13.i = getelementptr inbounds i8, ptr %4, i64 24, !dbg !16
  %24 = load ptr, ptr %parent_wrap13.i, align 8, !dbg !16, !tbaa !34
  %25 = load i32, ptr %4, align 8, !dbg !16, !tbaa !35
  %thread_counter15.i = getelementptr inbounds i8, ptr %24, i64 16, !dbg !16
  %26 = load ptr, ptr %thread_counter15.i, align 8, !dbg !16, !tbaa !21
  %idxprom.i = zext i32 %25 to i64, !dbg !16
  %arrayidx16.i = getelementptr inbounds i32, ptr %26, i64 %idxprom.i, !dbg !16
  %cmp17.i = icmp slt i32 %retval.0.i35.i, 2, !dbg !16
  br i1 %cmp17.i, label %if.then18.i, label %if.end20.i, !dbg !16

if.then18.i:                                      ; preds = %if.else.i
  %mqlwrap_slots.i = getelementptr inbounds i8, ptr %2, i64 24, !dbg !16
  %27 = load ptr, ptr %mqlwrap_slots.i, align 8, !dbg !16, !tbaa !36
  %sub.ptr.rhs.cast.i = ptrtoint ptr %27 to i64, !dbg !16
  %sub.ptr.sub.i = sub i64 %3, %sub.ptr.rhs.cast.i, !dbg !16
  %sub.ptr.div.i = sdiv exact i64 %sub.ptr.sub.i, 96, !dbg !16
  %mqlwrap_slot_mask.i = getelementptr inbounds i8, ptr %2, i64 80, !dbg !16
  %28 = load i64, ptr %mqlwrap_slot_mask.i, align 8, !dbg !16, !tbaa !38
  %29 = inttoptr i64 %28 to ptr, !dbg !16
  %idx.ext.i.i = and i64 %sub.ptr.div.i, 4294967295, !dbg !16
  %add.ptr.i.i = getelementptr inbounds i32, ptr %29, i64 %idx.ext.i.i, !dbg !16
  %30 = tail call i1 @llvm.mxc.is.private(ptr %add.ptr.i.i), !dbg !16
  br i1 %30, label %if.then.i.i.i, label %if.end.i.i.i, !dbg !16

if.then.i.i.i:                                    ; preds = %if.then18.i
  %31 = load i32, ptr %add.ptr.i.i, align 4, !dbg !16, !tbaa !30
  %and.i.i.i = and i32 %31, 2147483647, !dbg !16
  store i32 %and.i.i.i, ptr %add.ptr.i.i, align 4, !dbg !16, !tbaa !30
  br label %if.end20.i, !dbg !16

if.end.i.i.i:                                     ; preds = %if.then18.i
  %32 = atomicrmw and ptr %add.ptr.i.i, i32 2147483647 syncscope("device-one-as") monotonic, align 4, !dbg !16
  br label %if.end20.i, !dbg !16

if.end20.i:                                       ; preds = %if.end.i.i.i, %if.then.i.i.i, %if.else.i
  %33 = tail call i1 @llvm.mxc.is.private(ptr %arrayidx16.i), !dbg !16
  br i1 %33, label %if.then.i41.i, label %if.end.i39.i, !dbg !16

if.then.i41.i:                                    ; preds = %if.end20.i
  %34 = load i32, ptr %arrayidx16.i, align 4, !dbg !16, !tbaa !30
  %add.i42.i = add nsw i32 %34, -1, !dbg !16
  store i32 %add.i42.i, ptr %arrayidx16.i, align 4, !dbg !16, !tbaa !30
  br label %__mcImplicitDeviceSynchronizeImpl.exit, !dbg !16

if.end.i39.i:                                     ; preds = %if.end20.i
  %35 = atomicrmw add ptr %arrayidx16.i, i32 -1 syncscope("device-one-as") monotonic, align 4, !dbg !16
  br label %__mcImplicitDeviceSynchronizeImpl.exit, !dbg !16

__mcImplicitDeviceSynchronizeImpl.exit:           ; preds = %if.then9.i, %if.then11.i, %if.then.i41.i, %if.end.i39.i
  ret void, !dbg !39
}

; Function Attrs: convergent mustprogress norecurse nounwind willreturn
define protected metaxgpu_kernel void @native_sparse_attention_kernel(ptr addrspace(1) noalias nocapture noundef readonly %Indices.coerce, ptr addrspace(4) noalias nocapture noundef readonly %K.coerce, ptr addrspace(1) noalias nocapture noundef writeonly %Output.coerce, ptr addrspace(4) noalias nocapture noundef readonly %Q.coerce, ptr addrspace(4) noalias nocapture noundef readonly %V.coerce) local_unnamed_addr #3 !dbg !40 {
entry:
  %0 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.y(), !range !29
  %1 = shl nuw nsw i32 %0, 19
  %mul = and i32 %1, 2146435072
  %2 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !range !29
  %mul7 = shl nsw i32 %2, 11
  %and = shl i32 %0, 10
  %mul9 = and i32 %and, 1024
  %3 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !42
  %mul14 = shl nuw nsw i32 %3, 3
  %add = add nuw nsw i32 %mul14, %mul7
  %add10 = add nuw nsw i32 %add, %mul
  %add12 = add nuw nsw i32 %add10, %mul9
  %mul28 = and i32 %mul14, 8128
  %xor768 = and i32 %mul14, 56
  %call32.masked = and i32 %3, 1016
  %mul34 = xor i32 %xor768, %call32.masked
  %and38 = lshr i32 %3, 3
  %shr39 = and i32 %and38, 1
  %4 = zext nneg i32 %add12 to i64, !dbg !43
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %4, !dbg !44
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %add.ptr, align 16, !dbg !45
  %qk_fetch.sroa.10.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !45
  %qk_fetch.sroa.10.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0.add.ptr.sroa_idx, align 8, !dbg !45
  %5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul34, !dbg !46
  %6 = getelementptr inbounds %struct.__half, ptr addrspace(3) %5, i32 %mul28, !dbg !46
  %add.ptr44.idx = shl nuw nsw i32 %shr39, 3, !dbg !46
  %add.ptr44 = getelementptr inbounds i8, ptr addrspace(3) %6, i32 %add.ptr44.idx, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr44, align 8, !dbg !47
  %xor40.1 = shl nuw nsw i32 %shr39, 3, !dbg !46
  %add.ptr44.idx.1 = xor i32 %xor40.1, 8, !dbg !46
  %add.ptr44.1 = getelementptr inbounds i8, ptr addrspace(3) %6, i32 %add.ptr44.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.10.0.copyload, ptr addrspace(3) %add.ptr44.1, align 8, !dbg !47
  %7 = add nuw nsw i64 %4, 512, !dbg !48
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !44
  %qk_fetch.sroa.0.0.copyload1058 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %qk_fetch.sroa.10.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %qk_fetch.sroa.10.0.copyload1061 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0.add.ptr.1.sroa_idx, align 8, !dbg !45
  %8 = getelementptr inbounds i8, ptr addrspace(3) %6, i32 1024, !dbg !46
  %add.ptr44.1850 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 %add.ptr44.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1058, ptr addrspace(3) %add.ptr44.1850, align 8, !dbg !47
  %add.ptr44.1.1 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 %add.ptr44.idx, !dbg !46
  store i64 %qk_fetch.sroa.10.0.copyload1061, ptr addrspace(3) %add.ptr44.1.1, align 8, !dbg !47
  fence syncscope("warp") release, !dbg !49
  tail call void @llvm.mxc.barrier.warp(), !dbg !55
  fence syncscope("warp") acquire, !dbg !56
  %and53 = shl nuw nsw i32 %3, 6
  %mul54 = and i32 %and53, 960
  %shr57 = lshr i32 %3, 5
  %and60 = and i32 %3, 7
  %and65 = lshr i32 %3, 4
  %9 = xor i32 %and38, %and65
  %xor61 = xor i32 %shr57, %and60, !dbg !57
  %mul62 = shl nuw nsw i32 %xor61, 3, !dbg !58
  %add63 = add nuw nsw i32 %mul62, %mul54, !dbg !59
  %add58.1 = add nuw nsw i32 %shr57, 2, !dbg !60
  %xor61.1 = xor i32 %add58.1, %and60, !dbg !57
  %mul62.1 = shl nuw nsw i32 %xor61.1, 3, !dbg !58
  %add63.1 = add nuw nsw i32 %mul62.1, %mul54, !dbg !59
  %add58.2 = add nuw nsw i32 %shr57, 4, !dbg !60
  %xor61.2 = xor i32 %add58.2, %and60, !dbg !57
  %mul62.2 = shl nuw nsw i32 %xor61.2, 3, !dbg !58
  %add63.2 = add nuw nsw i32 %mul62.2, %mul54, !dbg !59
  %add58.3 = add nuw nsw i32 %shr57, 6, !dbg !60
  %xor61.3 = xor i32 %add58.3, %and60, !dbg !57
  %mul62.3 = shl nuw nsw i32 %xor61.3, 3, !dbg !58
  %add63.3 = add nuw nsw i32 %mul62.3, %mul54, !dbg !59
  %10 = shl nuw nsw i32 %0, 9, !dbg !61
  %mul101 = and i32 %10, 2147482624, !dbg !61
  %mul103 = shl nuw nsw i32 %2, 1, !dbg !62
  %add104 = add nuw nsw i32 %mul101, %mul103, !dbg !63
  %and106 = and i32 %0, 1, !dbg !64
  %add107 = or disjoint i32 %add104, %and106, !dbg !65
  %idxprom = zext nneg i32 %add107 to i64, !dbg !66
  %arrayidx108 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %idxprom, !dbg !66
  %11 = load i32, ptr addrspace(1) %arrayidx108, align 4, !dbg !66, !tbaa !30
  %mul109 = shl nsw i32 %11, 4, !dbg !67
  %cmp110 = icmp slt i32 %11, 0, !dbg !68
  %cmp112.not = icmp sgt i32 %mul109, %2
  %or.cond = select i1 %cmp110, i1 true, i1 %cmp112.not, !dbg !69
  br i1 %or.cond, label %if.end508, label %if.then, !dbg !69

if.then:                                          ; preds = %entry
  %xor70767 = xor i32 %9, %3
  %xor73 = shl nuw nsw i32 %xor70767, 2
  %mul74 = and i32 %xor73, 4
  %add75.3 = or disjoint i32 %add63.3, %mul74, !dbg !70
  %add.ptr77.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add75.3, !dbg !71
  %12 = load <4 x half>, ptr addrspace(3) %add.ptr77.3, align 8, !dbg !72
  %add75.2 = or disjoint i32 %add63.2, %mul74, !dbg !70
  %add.ptr77.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add75.2, !dbg !71
  %13 = load <4 x half>, ptr addrspace(3) %add.ptr77.2, align 8, !dbg !72
  %add75.1 = or disjoint i32 %add63.1, %mul74, !dbg !70
  %add.ptr77.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add75.1, !dbg !71
  %14 = load <4 x half>, ptr addrspace(3) %add.ptr77.1, align 8, !dbg !72
  %add75 = or disjoint i32 %add63, %mul74, !dbg !70
  %add.ptr77 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add75, !dbg !71
  %15 = load <4 x half>, ptr addrspace(3) %add.ptr77, align 8, !dbg !72
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %16 = lshr i32 %0, 1
  %shr118 = zext nneg i32 %16 to i64
  %mul119 = shl nuw nsw i64 %shr118, 16
  %17 = shl nuw nsw i32 %3, 4
  %18 = and i32 %17, 16256
  %mul126 = zext nneg i32 %18 to i64
  %conv128 = zext nneg i32 %mul109 to i64
  %add122 = or disjoint i64 %mul119, %mul126
  %19 = shl i32 %0, 6
  %20 = and i32 %19, 64
  %mul134 = zext nneg i32 %20 to i64
  %mul139 = zext nneg i32 %xor768 to i64
  %add127 = or disjoint i64 %add122, %mul134
  %add130 = or disjoint i64 %add127, %mul139
  %21 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add130, !dbg !78
  %.idx = shl nuw nsw i64 %conv128, 8, !dbg !78
  %22 = getelementptr inbounds i8, ptr addrspace(4) %21, i64 %.idx, !dbg !78
  %qk_fetch.sroa.0.0.copyload1057 = load i64, ptr addrspace(4) %22, align 16, !dbg !79
  %qk_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %22, i64 8, !dbg !79
  %qk_fetch.sroa.10.0.copyload1060 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0..sroa_idx, align 8, !dbg !79
  store i64 %qk_fetch.sroa.0.0.copyload1057, ptr addrspace(3) %add.ptr44, align 8, !dbg !80
  store i64 %qk_fetch.sroa.10.0.copyload1060, ptr addrspace(3) %add.ptr44.1, align 8, !dbg !80
  %add.ptr141.1 = getelementptr inbounds i8, ptr addrspace(4) %22, i64 2048, !dbg !78
  %qk_fetch.sroa.0.0.copyload1059 = load i64, ptr addrspace(4) %add.ptr141.1, align 16, !dbg !79
  %qk_fetch.sroa.10.0.add.ptr141.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %22, i64 2056, !dbg !79
  %qk_fetch.sroa.10.0.copyload1062 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0.add.ptr141.1.sroa_idx, align 8, !dbg !79
  store i64 %qk_fetch.sroa.0.0.copyload1059, ptr addrspace(3) %add.ptr44.1850, align 8, !dbg !80
  store i64 %qk_fetch.sroa.10.0.copyload1062, ptr addrspace(3) %add.ptr44.1.1, align 8, !dbg !80
  fence syncscope("warp") release, !dbg !81
  tail call void @llvm.mxc.barrier.warp(), !dbg !84
  fence syncscope("warp") acquire, !dbg !85
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr77, align 8, !dbg !86
  %23 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %15, <4 x float> zeroinitializer), !dbg !87
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr77.1, align 8, !dbg !86
  %24 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %14, <4 x float> %23), !dbg !87
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr77.2, align 8, !dbg !86
  %25 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %13, <4 x float> %24), !dbg !87
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr77.3, align 8, !dbg !86
  %26 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %12, <4 x float> %25), !dbg !87
  %27 = lshr i32 %3, 2
  %mul233 = and i32 %27, 252
  %add234 = add nuw nsw i32 %mul109, %mul233
  %cmp237.not = icmp sgt i32 %add234, %2, !dbg !88
  %scores.sroa.0.0.vec.extract940 = extractelement <4 x float> %26, i64 0
  %spec.select = select i1 %cmp237.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract940, !dbg !89
  %cmp237.not.1.not = icmp slt i32 %add234, %2, !dbg !88
  %scores.sroa.0.4.vec.extract947 = extractelement <4 x float> %26, i64 1, !dbg !89
  %condval.0.1 = select i1 %cmp237.not.1.not, float %scores.sroa.0.4.vec.extract947, float 0xFFF0000000000000, !dbg !89
  %add235.2 = or disjoint i32 %add234, 2, !dbg !90
  %cmp237.not.2 = icmp sgt i32 %add235.2, %2, !dbg !88
  %scores.sroa.0.8.vec.extract954 = extractelement <4 x float> %26, i64 2, !dbg !89
  %condval.0.2 = select i1 %cmp237.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract954, !dbg !89
  %add235.3 = or disjoint i32 %add234, 3, !dbg !90
  %cmp237.not.3 = icmp sgt i32 %add235.3, %2, !dbg !88
  %scores.sroa.0.12.vec.extract961 = extractelement <4 x float> %26, i64 3, !dbg !89
  %condval.0.3 = select i1 %cmp237.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract961, !dbg !89
  %28 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !91
  %29 = tail call contract noundef float @llvm.maxnum.f32(float %28, float %condval.0.1), !dbg !91
  %30 = tail call contract noundef float @llvm.maxnum.f32(float %29, float %condval.0.2), !dbg !91
  %31 = tail call contract noundef float @llvm.maxnum.f32(float %30, float %condval.0.3), !dbg !91
  %32 = bitcast float %31 to i32, !dbg !95
  %33 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !98
  %34 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %33) #10, !dbg !103
  %xor.i.i = xor i32 %34, 32, !dbg !104
  %35 = and i32 %34, -64, !dbg !105
  %and.i.i = add nsw i32 %35, 64, !dbg !105
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !106
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %34, !dbg !107
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !108
  %36 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %32), !dbg !109
  %37 = bitcast i32 %36 to float, !dbg !110
  %38 = tail call contract noundef float @llvm.maxnum.f32(float %31, float %37), !dbg !111
  %39 = bitcast float %38 to i32, !dbg !113
  %40 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !115
  %41 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %40) #10, !dbg !118
  %xor.i.i770 = xor i32 %41, 16, !dbg !119
  %42 = and i32 %41, -64, !dbg !120
  %and.i.i771 = add nsw i32 %42, 64, !dbg !120
  %cmp.not.i.i772 = icmp slt i32 %xor.i.i770, %and.i.i771, !dbg !121
  %cond.i.i773 = select i1 %cmp.not.i.i772, i32 %xor.i.i770, i32 %41, !dbg !122
  %shl.i.i774 = shl i32 %cond.i.i773, 2, !dbg !123
  %43 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i774, i32 %39), !dbg !124
  %44 = bitcast i32 %43 to float, !dbg !125
  %45 = tail call contract noundef float @llvm.maxnum.f32(float %38, float %44), !dbg !126
  %sub = fsub contract float %spec.select, %45, !dbg !128
  %sub283 = fsub contract float %condval.0.1, %45, !dbg !129
  %sub286 = fsub contract float %condval.0.2, %45, !dbg !130
  %sub289 = fsub contract float %condval.0.3, %45, !dbg !131
  %mul294 = fmul contract float %sub, 0x3FC7154760000000, !dbg !132
  %mul298 = fmul contract float %sub283, 0x3FC7154760000000, !dbg !133
  %mul302 = fmul contract float %sub286, 0x3FC7154760000000, !dbg !134
  %mul306 = fmul contract float %sub289, 0x3FC7154760000000, !dbg !135
  %add311 = fadd contract float %mul294, 8.000000e+00, !dbg !136
  %add315 = fadd contract float %mul298, 8.000000e+00, !dbg !137
  %add319 = fadd contract float %mul302, 8.000000e+00, !dbg !138
  %add323 = fadd contract float %mul306, 8.000000e+00, !dbg !139
  %cmp.i.i = fcmp contract olt float %add311, -1.260000e+02, !dbg !140
  %cond.i.i775 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !140
  %add.i.i = fadd contract float %add311, %cond.i.i775, !dbg !140
  %46 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !140
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !140
  %mul.i.i = fmul contract float %cond2.i.i, %46, !dbg !140
  %cmp.i.i776 = fcmp contract olt float %add315, -1.260000e+02, !dbg !143
  %cond.i.i777 = select contract i1 %cmp.i.i776, float 6.400000e+01, float 0.000000e+00, !dbg !143
  %add.i.i778 = fadd contract float %add315, %cond.i.i777, !dbg !143
  %47 = tail call contract float @llvm.exp2.f32(float %add.i.i778), !dbg !143
  %cond2.i.i779 = select contract i1 %cmp.i.i776, float 0x3BF0000000000000, float 1.000000e+00, !dbg !143
  %mul.i.i780 = fmul contract float %cond2.i.i779, %47, !dbg !143
  %cmp.i.i781 = fcmp contract olt float %add319, -1.260000e+02, !dbg !145
  %cond.i.i782 = select contract i1 %cmp.i.i781, float 6.400000e+01, float 0.000000e+00, !dbg !145
  %add.i.i783 = fadd contract float %add319, %cond.i.i782, !dbg !145
  %48 = tail call contract float @llvm.exp2.f32(float %add.i.i783), !dbg !145
  %cond2.i.i784 = select contract i1 %cmp.i.i781, float 0x3BF0000000000000, float 1.000000e+00, !dbg !145
  %mul.i.i785 = fmul contract float %cond2.i.i784, %48, !dbg !145
  %cmp.i.i786 = fcmp contract olt float %add323, -1.260000e+02, !dbg !147
  %cond.i.i787 = select contract i1 %cmp.i.i786, float 6.400000e+01, float 0.000000e+00, !dbg !147
  %add.i.i788 = fadd contract float %add323, %cond.i.i787, !dbg !147
  %49 = tail call contract float @llvm.exp2.f32(float %add.i.i788), !dbg !147
  %cond2.i.i789 = select contract i1 %cmp.i.i786, float 0x3BF0000000000000, float 1.000000e+00, !dbg !147
  %mul.i.i790 = fmul contract float %cond2.i.i789, %49, !dbg !147
  %50 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !149
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !149, !noalias !157
  %51 = fptrunc float %mul.i.i to half, !dbg !149
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %50), !dbg !149, !noalias !157
  %52 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !162
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !162, !noalias !157
  %53 = fptrunc float %mul.i.i780 to half, !dbg !162
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %52), !dbg !162, !noalias !157
  %54 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !164
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !164, !noalias !168
  %55 = fptrunc float %mul.i.i785 to half, !dbg !164
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %54), !dbg !164, !noalias !168
  %56 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !168
  %57 = fptrunc float %mul.i.i790 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %56), !dbg !173, !noalias !168
  %58 = insertelement <4 x half> poison, half %51, i64 0, !dbg !175
  %59 = insertelement <4 x half> %58, half %53, i64 1, !dbg !175
  %60 = insertelement <4 x half> %59, half %55, i64 2, !dbg !175
  %61 = insertelement <4 x half> %60, half %57, i64 3, !dbg !175
  %conv.i.i = fpext half %51 to float, !dbg !176
  %add357 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !181
  %conv.i.i.1 = fpext half %53 to float, !dbg !176
  %add357.1 = fadd contract float %add357, %conv.i.i.1, !dbg !181
  %conv.i.i.2 = fpext half %55 to float, !dbg !176
  %add357.2 = fadd contract float %add357.1, %conv.i.i.2, !dbg !181
  %conv.i.i.3 = fpext half %57 to float, !dbg !176
  %add357.3 = fadd contract float %add357.2, %conv.i.i.3, !dbg !181
  fence syncscope("warp") release, !dbg !182
  tail call void @llvm.mxc.barrier.warp(), !dbg !185
  fence syncscope("warp") acquire, !dbg !186
  %62 = shl nuw nsw i32 %3, 5
  %63 = and i32 %62, 32512
  %mul377 = zext nneg i32 %63 to i64
  %add378 = or disjoint i64 %mul119, %mul377
  %add381 = or disjoint i64 %add378, %mul134
  %add384 = or disjoint i64 %add381, %mul139
  %64 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add384, !dbg !187
  %65 = getelementptr inbounds i8, ptr addrspace(4) %64, i64 %.idx, !dbg !187
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %65, align 16, !dbg !188
  %v_fetch.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %65, i64 2, !dbg !188
  %v_fetch.sroa.4.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.4.0..sroa_idx, align 2, !dbg !188, !tbaa !30
  %v_fetch.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %65, i64 4, !dbg !188
  %v_fetch.sroa.5.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.5.0..sroa_idx, align 4, !dbg !188
  %v_fetch.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %65, i64 6, !dbg !188
  %v_fetch.sroa.6.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.6.0..sroa_idx, align 2, !dbg !188, !tbaa !30
  %v_fetch.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %65, i64 8, !dbg !188
  %v_fetch.sroa.7.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.7.0..sroa_idx, align 8, !dbg !188
  %v_fetch.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %65, i64 10, !dbg !188
  %v_fetch.sroa.8.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.8.0..sroa_idx, align 2, !dbg !188, !tbaa !30
  %v_fetch.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %65, i64 12, !dbg !188
  %v_fetch.sroa.9.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.9.0..sroa_idx, align 4, !dbg !188
  %v_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %65, i64 14, !dbg !188
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx, align 2, !dbg !188, !tbaa !30
  %add.ptr395.1 = getelementptr inbounds i8, ptr addrspace(4) %65, i64 256, !dbg !187
  %v_fetch.sroa.11.16.copyload = load i16, ptr addrspace(4) %add.ptr395.1, align 16, !dbg !188
  %v_fetch.sroa.13.16.add.ptr395.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %65, i64 258, !dbg !188
  %v_fetch.sroa.13.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.13.16.add.ptr395.1.sroa_idx, align 2, !dbg !188, !tbaa !30
  %v_fetch.sroa.14.16.add.ptr395.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %65, i64 260, !dbg !188
  %v_fetch.sroa.14.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.16.add.ptr395.1.sroa_idx, align 4, !dbg !188
  %v_fetch.sroa.15.16.add.ptr395.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %65, i64 262, !dbg !188
  %v_fetch.sroa.15.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.15.16.add.ptr395.1.sroa_idx, align 2, !dbg !188, !tbaa !30
  %v_fetch.sroa.16.16.add.ptr395.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %65, i64 264, !dbg !188
  %v_fetch.sroa.16.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.16.16.add.ptr395.1.sroa_idx, align 8, !dbg !188
  %v_fetch.sroa.17.16.add.ptr395.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %65, i64 266, !dbg !188
  %v_fetch.sroa.17.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.17.16.add.ptr395.1.sroa_idx, align 2, !dbg !188, !tbaa !30
  %v_fetch.sroa.18.16.add.ptr395.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %65, i64 268, !dbg !188
  %v_fetch.sroa.18.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.16.add.ptr395.1.sroa_idx, align 4, !dbg !188
  %v_fetch.sroa.19.16.add.ptr395.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %65, i64 270, !dbg !188
  %v_fetch.sroa.19.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.19.16.add.ptr395.1.sroa_idx, align 2, !dbg !188, !tbaa !30
  %and425 = shl nuw nsw i32 %3, 1
  %mul426 = and i32 %and425, 14
  %call430.mask = and i32 %3, 16
  %and438 = lshr i32 %3, 1
  %shr439 = and i32 %and438, 3
  %xor440 = xor i32 %shr439, %and65
  %mul448 = and i32 %27, 2
  %xor433761 = shl nuw nsw i32 %mul426, 4, !dbg !189
  %mul434 = or disjoint i32 %xor433761, %call430.mask, !dbg !189
  %mul443 = shl nuw nsw i32 %xor440, 2, !dbg !190
  %add444 = add nuw nsw i32 %mul434, %mul443, !dbg !191
  %add449 = or disjoint i32 %add444, %mul448, !dbg !192
  %add.ptr451 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add449, !dbg !193
  %v_column.sroa.18.0.insert.ext = zext i16 %v_fetch.sroa.11.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift = shl nuw i32 %v_column.sroa.18.0.insert.ext, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.18.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr451, align 4, !dbg !194, !tbaa !30
  %add427.1 = shl nuw nsw i32 %mul426, 4, !dbg !189
  %xor433761.1 = or disjoint i32 %add427.1, %call430.mask, !dbg !189
  %mul434.1 = or disjoint i32 %xor433761.1, 256, !dbg !189
  %xor442.1 = shl nuw nsw i32 %xor440, 2, !dbg !190
  %mul443.1 = xor i32 %xor442.1, 4, !dbg !190
  %add444.1 = add nuw nsw i32 %mul434.1, %mul443.1, !dbg !191
  %add449.1 = or disjoint i32 %add444.1, %mul448, !dbg !192
  %add.ptr451.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add449.1, !dbg !193
  %v_column.sroa.18.0.insert.ext897 = zext i16 %v_fetch.sroa.13.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift898 = shl nuw i32 %v_column.sroa.18.0.insert.ext897, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext869 = zext i16 %v_fetch.sroa.4.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert871 = or disjoint i32 %v_column.sroa.18.0.insert.shift898, %v_column.sroa.0.0.insert.ext869, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert871, ptr addrspace(3) %add.ptr451.1, align 4, !dbg !194, !tbaa !30
  %add427.2 = shl nuw nsw i32 %mul426, 4, !dbg !189
  %xor433761.2 = or disjoint i32 %add427.2, %call430.mask, !dbg !189
  %mul434.2 = or disjoint i32 %xor433761.2, 512, !dbg !189
  %xor442.2 = shl nuw nsw i32 %xor440, 2, !dbg !190
  %mul443.2 = xor i32 %xor442.2, 8, !dbg !190
  %add444.2 = add nuw nsw i32 %mul434.2, %mul443.2, !dbg !191
  %add449.2 = or disjoint i32 %add444.2, %mul448, !dbg !192
  %add.ptr451.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add449.2, !dbg !193
  %v_column.sroa.18.0.insert.ext902 = zext i16 %v_fetch.sroa.14.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift903 = shl nuw i32 %v_column.sroa.18.0.insert.ext902, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext873 = zext i16 %v_fetch.sroa.5.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert875 = or disjoint i32 %v_column.sroa.18.0.insert.shift903, %v_column.sroa.0.0.insert.ext873, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert875, ptr addrspace(3) %add.ptr451.2, align 4, !dbg !194, !tbaa !30
  %add427.3 = shl nuw nsw i32 %mul426, 4, !dbg !189
  %xor433761.3 = or disjoint i32 %add427.3, %call430.mask, !dbg !189
  %mul434.3 = or disjoint i32 %xor433761.3, 768, !dbg !189
  %xor442.3 = shl nuw nsw i32 %xor440, 2, !dbg !190
  %mul443.3 = xor i32 %xor442.3, 12, !dbg !190
  %add444.3 = add nuw nsw i32 %mul434.3, %mul443.3, !dbg !191
  %add449.3 = or disjoint i32 %add444.3, %mul448, !dbg !192
  %add.ptr451.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add449.3, !dbg !193
  %v_column.sroa.18.0.insert.ext907 = zext i16 %v_fetch.sroa.15.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift908 = shl nuw i32 %v_column.sroa.18.0.insert.ext907, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext877 = zext i16 %v_fetch.sroa.6.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert879 = or disjoint i32 %v_column.sroa.18.0.insert.shift908, %v_column.sroa.0.0.insert.ext877, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert879, ptr addrspace(3) %add.ptr451.3, align 4, !dbg !194, !tbaa !30
  %add429.4 = shl nuw nsw i32 %mul426, 4, !dbg !189
  %xor433761.4 = or disjoint i32 %add429.4, 16, !dbg !189
  %mul434.4 = xor i32 %xor433761.4, %call430.mask, !dbg !189
  %add444.4 = add nuw nsw i32 %mul434.4, %mul443, !dbg !191
  %add449.4 = or disjoint i32 %add444.4, %mul448, !dbg !192
  %add.ptr451.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add449.4, !dbg !193
  %v_column.sroa.18.0.insert.ext912 = zext i16 %v_fetch.sroa.16.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift913 = shl nuw i32 %v_column.sroa.18.0.insert.ext912, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext881 = zext i16 %v_fetch.sroa.7.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert883 = or disjoint i32 %v_column.sroa.18.0.insert.shift913, %v_column.sroa.0.0.insert.ext881, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert883, ptr addrspace(3) %add.ptr451.4, align 4, !dbg !194, !tbaa !30
  %add429.5 = shl nuw nsw i32 %mul426, 4, !dbg !189
  %xor433761.5 = or disjoint i32 %add429.5, 272, !dbg !189
  %mul434.5 = xor i32 %xor433761.5, %call430.mask, !dbg !189
  %add444.5 = add nuw nsw i32 %mul434.5, %mul443.1, !dbg !191
  %add449.5 = or disjoint i32 %add444.5, %mul448, !dbg !192
  %add.ptr451.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add449.5, !dbg !193
  %v_column.sroa.18.0.insert.ext917 = zext i16 %v_fetch.sroa.17.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift918 = shl nuw i32 %v_column.sroa.18.0.insert.ext917, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext885 = zext i16 %v_fetch.sroa.8.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert887 = or disjoint i32 %v_column.sroa.18.0.insert.shift918, %v_column.sroa.0.0.insert.ext885, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert887, ptr addrspace(3) %add.ptr451.5, align 4, !dbg !194, !tbaa !30
  %add429.6 = shl nuw nsw i32 %mul426, 4, !dbg !189
  %xor433761.6 = or disjoint i32 %add429.6, 528, !dbg !189
  %mul434.6 = xor i32 %xor433761.6, %call430.mask, !dbg !189
  %add444.6 = add nuw nsw i32 %mul434.6, %mul443.2, !dbg !191
  %add449.6 = or disjoint i32 %add444.6, %mul448, !dbg !192
  %add.ptr451.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add449.6, !dbg !193
  %v_column.sroa.18.0.insert.ext922 = zext i16 %v_fetch.sroa.18.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift923 = shl nuw i32 %v_column.sroa.18.0.insert.ext922, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext889 = zext i16 %v_fetch.sroa.9.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert891 = or disjoint i32 %v_column.sroa.18.0.insert.shift923, %v_column.sroa.0.0.insert.ext889, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert891, ptr addrspace(3) %add.ptr451.6, align 4, !dbg !194, !tbaa !30
  %add429.7 = shl nuw nsw i32 %mul426, 4, !dbg !189
  %xor433761.7 = or disjoint i32 %add429.7, 784, !dbg !189
  %mul434.7 = xor i32 %xor433761.7, %call430.mask, !dbg !189
  %add444.7 = add nuw nsw i32 %mul434.7, %mul443.3, !dbg !191
  %add449.7 = or disjoint i32 %add444.7, %mul448, !dbg !192
  %add.ptr451.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add449.7, !dbg !193
  %v_column.sroa.18.0.insert.ext927 = zext i16 %v_fetch.sroa.19.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift928 = shl nuw i32 %v_column.sroa.18.0.insert.ext927, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext893 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert895 = or disjoint i32 %v_column.sroa.18.0.insert.shift928, %v_column.sroa.0.0.insert.ext893, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert895, ptr addrspace(3) %add.ptr451.7, align 4, !dbg !194, !tbaa !30
  fence syncscope("warp") release, !dbg !195
  tail call void @llvm.mxc.barrier.warp(), !dbg !198
  fence syncscope("warp") acquire, !dbg !199
  %mul461 = and i32 %17, 48
  %shr466 = and i32 %27, 3
  %66 = or disjoint i32 %mul461, %shr466
  %and477 = and i32 %3, 3
  %67 = xor i32 %and65, %and477
  %xor471760 = shl nuw nsw i32 %66, 4, !dbg !200
  %mul472 = xor i32 %xor471760, %call430.mask, !dbg !200
  %68 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul472, !dbg !201
  %add.ptr482.idx = shl nuw nsw i32 %67, 3, !dbg !201
  %add.ptr482 = getelementptr inbounds i8, ptr addrspace(3) %68, i32 %add.ptr482.idx, !dbg !201
  %69 = load <4 x half>, ptr addrspace(3) %add.ptr482, align 8, !dbg !202
  %add467.1 = shl nuw nsw i32 %66, 4, !dbg !200
  %xor471760.1 = or disjoint i32 %add467.1, 64, !dbg !200
  %mul472.1 = xor i32 %xor471760.1, %call430.mask, !dbg !200
  %70 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul472.1, !dbg !201
  %xor478.1 = shl nuw nsw i32 %67, 3, !dbg !201
  %add.ptr482.idx.1 = xor i32 %xor478.1, 8, !dbg !201
  %add.ptr482.1 = getelementptr inbounds i8, ptr addrspace(3) %70, i32 %add.ptr482.idx.1, !dbg !201
  %71 = load <4 x half>, ptr addrspace(3) %add.ptr482.1, align 8, !dbg !202
  %add467.2 = shl nuw nsw i32 %66, 4, !dbg !200
  %xor471760.2 = or disjoint i32 %add467.2, 128, !dbg !200
  %mul472.2 = xor i32 %xor471760.2, %call430.mask, !dbg !200
  %72 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul472.2, !dbg !201
  %xor478.2 = shl nuw nsw i32 %67, 3, !dbg !201
  %add.ptr482.idx.2 = xor i32 %xor478.2, 16, !dbg !201
  %add.ptr482.2 = getelementptr inbounds i8, ptr addrspace(3) %72, i32 %add.ptr482.idx.2, !dbg !201
  %73 = load <4 x half>, ptr addrspace(3) %add.ptr482.2, align 8, !dbg !202
  %add467.3 = shl nuw nsw i32 %66, 4, !dbg !200
  %xor471760.3 = or disjoint i32 %add467.3, 192, !dbg !200
  %mul472.3 = xor i32 %xor471760.3, %call430.mask, !dbg !200
  %74 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul472.3, !dbg !201
  %xor478.3 = shl nuw nsw i32 %67, 3, !dbg !201
  %add.ptr482.idx.3 = xor i32 %xor478.3, 24, !dbg !201
  %add.ptr482.3 = getelementptr inbounds i8, ptr addrspace(3) %74, i32 %add.ptr482.idx.3, !dbg !201
  %75 = load <4 x half>, ptr addrspace(3) %add.ptr482.3, align 8, !dbg !202
  %76 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %69, <4 x half> %61, <4 x float> zeroinitializer), !dbg !203
  %77 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %71, <4 x half> %61, <4 x float> zeroinitializer), !dbg !203
  %78 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %73, <4 x half> %61, <4 x float> zeroinitializer), !dbg !203
  %79 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %75, <4 x half> %61, <4 x float> zeroinitializer), !dbg !203
  %add364 = fadd contract float %add357.3, 0.000000e+00, !dbg !204
  br label %if.end508, !dbg !205

if.end508:                                        ; preds = %if.then, %entry
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %76, %if.then ], !dbg !207
  %numerator.sroa.20.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %77, %if.then ], !dbg !207
  %numerator.sroa.38.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %78, %if.then ], !dbg !207
  %numerator.sroa.56.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %79, %if.then ], !dbg !207
  %denominator.sroa.0.0 = phi float [ 0.000000e+00, %entry ], [ %add364, %if.then ], !dbg !207
  %80 = bitcast float %denominator.sroa.0.0 to i32, !dbg !205
  %81 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !208
  %82 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %81) #10, !dbg !211
  %xor.i.i792 = xor i32 %82, 32, !dbg !212
  %83 = and i32 %82, -64, !dbg !213
  %and.i.i793 = add nsw i32 %83, 64, !dbg !213
  %cmp.not.i.i794 = icmp slt i32 %xor.i.i792, %and.i.i793, !dbg !214
  %cond.i.i795 = select i1 %cmp.not.i.i794, i32 %xor.i.i792, i32 %82, !dbg !215
  %shl.i.i796 = shl i32 %cond.i.i795, 2, !dbg !216
  %84 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i796, i32 %80), !dbg !217
  %85 = bitcast i32 %84 to float, !dbg !218
  %add512 = fadd contract float %denominator.sroa.0.0, %85, !dbg !219
  %86 = bitcast float %add512 to i32, !dbg !220
  %87 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !222
  %88 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %87) #10, !dbg !225
  %xor.i.i797 = xor i32 %88, 16, !dbg !226
  %89 = and i32 %88, -64, !dbg !227
  %and.i.i798 = add nsw i32 %89, 64, !dbg !227
  %cmp.not.i.i799 = icmp slt i32 %xor.i.i797, %and.i.i798, !dbg !228
  %cond.i.i800 = select i1 %cmp.not.i.i799, i32 %xor.i.i797, i32 %88, !dbg !229
  %shl.i.i801 = shl i32 %cond.i.i800, 2, !dbg !230
  %90 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i801, i32 %86), !dbg !231
  %91 = bitcast i32 %90 to float, !dbg !232
  %add517 = fadd contract float %add512, %91, !dbg !233
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !234
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !234
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !234
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !234
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %add517, !dbg !235
  %div537 = fdiv contract float %numerator.sroa.0.4.vec.extract, %add517, !dbg !236
  %div541 = fdiv contract float %numerator.sroa.0.8.vec.extract, %add517, !dbg !237
  %div545 = fdiv contract float %numerator.sroa.0.12.vec.extract, %add517, !dbg !238
  %numerator.sroa.20.16.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 0, !dbg !234
  %numerator.sroa.20.20.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 1, !dbg !234
  %numerator.sroa.20.24.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 2, !dbg !234
  %numerator.sroa.20.28.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 3, !dbg !234
  %div.1 = fdiv contract float %numerator.sroa.20.16.vec.extract, %add517, !dbg !235
  %div537.1 = fdiv contract float %numerator.sroa.20.20.vec.extract, %add517, !dbg !236
  %div541.1 = fdiv contract float %numerator.sroa.20.24.vec.extract, %add517, !dbg !237
  %div545.1 = fdiv contract float %numerator.sroa.20.28.vec.extract, %add517, !dbg !238
  %numerator.sroa.38.32.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 0, !dbg !234
  %numerator.sroa.38.36.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 1, !dbg !234
  %numerator.sroa.38.40.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 2, !dbg !234
  %numerator.sroa.38.44.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 3, !dbg !234
  %div.2 = fdiv contract float %numerator.sroa.38.32.vec.extract, %add517, !dbg !235
  %div537.2 = fdiv contract float %numerator.sroa.38.36.vec.extract, %add517, !dbg !236
  %div541.2 = fdiv contract float %numerator.sroa.38.40.vec.extract, %add517, !dbg !237
  %div545.2 = fdiv contract float %numerator.sroa.38.44.vec.extract, %add517, !dbg !238
  %numerator.sroa.56.48.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 0, !dbg !234
  %numerator.sroa.56.52.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 1, !dbg !234
  %numerator.sroa.56.56.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 2, !dbg !234
  %numerator.sroa.56.60.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 3, !dbg !234
  %div.3 = fdiv contract float %numerator.sroa.56.48.vec.extract, %add517, !dbg !235
  %div537.3 = fdiv contract float %numerator.sroa.56.52.vec.extract, %add517, !dbg !236
  %div541.3 = fdiv contract float %numerator.sroa.56.56.vec.extract, %add517, !dbg !237
  %div545.3 = fdiv contract float %numerator.sroa.56.60.vec.extract, %add517, !dbg !238
  fence syncscope("warp") release, !dbg !239
  tail call void @llvm.mxc.barrier.warp(), !dbg !242
  fence syncscope("warp") acquire, !dbg !243
  %xor594 = shl nuw nsw i32 %9, 2
  %mul595 = and i32 %xor594, 4
  %92 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !244, !noalias !248
  %93 = fptrunc float %div to half, !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %92), !dbg !244, !noalias !248
  %94 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !248
  %95 = fptrunc float %div537 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %94), !dbg !253, !noalias !248
  %96 = bitcast half %93 to i16, !dbg !255
  %97 = bitcast half %95 to i16, !dbg !258
  %98 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !263
  %99 = fptrunc float %div541 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %98), !dbg !259, !noalias !263
  %100 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !263
  %101 = fptrunc float %div545 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %100), !dbg !268, !noalias !263
  %102 = bitcast half %99 to i16, !dbg !270
  %103 = bitcast half %101 to i16, !dbg !272
  %__7.sroa.6.0.insert.ext = zext i16 %103 to i64, !dbg !273
  %__7.sroa.6.0.insert.shift = shl nuw i64 %__7.sroa.6.0.insert.ext, 48, !dbg !273
  %__7.sroa.5.0.insert.ext = zext i16 %102 to i64, !dbg !273
  %__7.sroa.5.0.insert.shift = shl nuw nsw i64 %__7.sroa.5.0.insert.ext, 32, !dbg !273
  %__7.sroa.5.0.insert.insert = or disjoint i64 %__7.sroa.6.0.insert.shift, %__7.sroa.5.0.insert.shift, !dbg !273
  %__7.sroa.4.0.insert.ext = zext i16 %97 to i64, !dbg !273
  %__7.sroa.4.0.insert.shift = shl nuw nsw i64 %__7.sroa.4.0.insert.ext, 16, !dbg !273
  %__7.sroa.4.0.insert.insert = or disjoint i64 %__7.sroa.5.0.insert.insert, %__7.sroa.4.0.insert.shift, !dbg !273
  %__7.sroa.0.0.insert.ext = zext i16 %96 to i64, !dbg !273
  %__7.sroa.0.0.insert.insert = or disjoint i64 %__7.sroa.4.0.insert.insert, %__7.sroa.0.0.insert.ext, !dbg !273
  %add596 = or disjoint i32 %add63, %mul595, !dbg !274
  %add.ptr598 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add596, !dbg !275
  store i64 %__7.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr598, align 8, !dbg !276
  %104 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !244, !noalias !248
  %105 = fptrunc float %div.1 to half, !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %104), !dbg !244, !noalias !248
  %106 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !248
  %107 = fptrunc float %div537.1 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %106), !dbg !253, !noalias !248
  %108 = bitcast half %105 to i16, !dbg !255
  %109 = bitcast half %107 to i16, !dbg !258
  %110 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !263
  %111 = fptrunc float %div541.1 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %110), !dbg !259, !noalias !263
  %112 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !263
  %113 = fptrunc float %div545.1 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %112), !dbg !268, !noalias !263
  %114 = bitcast half %111 to i16, !dbg !270
  %115 = bitcast half %113 to i16, !dbg !272
  %__7.sroa.6.0.insert.ext.1 = zext i16 %115 to i64, !dbg !273
  %__7.sroa.6.0.insert.shift.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.1, 48, !dbg !273
  %__7.sroa.5.0.insert.ext.1 = zext i16 %114 to i64, !dbg !273
  %__7.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1, 32, !dbg !273
  %__7.sroa.5.0.insert.insert.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.1, %__7.sroa.5.0.insert.shift.1, !dbg !273
  %__7.sroa.4.0.insert.ext.1 = zext i16 %109 to i64, !dbg !273
  %__7.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1, 16, !dbg !273
  %__7.sroa.4.0.insert.insert.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.1, %__7.sroa.4.0.insert.shift.1, !dbg !273
  %__7.sroa.0.0.insert.ext.1 = zext i16 %108 to i64, !dbg !273
  %__7.sroa.0.0.insert.insert.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.1, %__7.sroa.0.0.insert.ext.1, !dbg !273
  %add596.1 = or disjoint i32 %add63.1, %mul595, !dbg !274
  %add.ptr598.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add596.1, !dbg !275
  store i64 %__7.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr598.1, align 8, !dbg !276
  %116 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !244, !noalias !248
  %117 = fptrunc float %div.2 to half, !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %116), !dbg !244, !noalias !248
  %118 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !248
  %119 = fptrunc float %div537.2 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %118), !dbg !253, !noalias !248
  %120 = bitcast half %117 to i16, !dbg !255
  %121 = bitcast half %119 to i16, !dbg !258
  %122 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !263
  %123 = fptrunc float %div541.2 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %122), !dbg !259, !noalias !263
  %124 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !263
  %125 = fptrunc float %div545.2 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %124), !dbg !268, !noalias !263
  %126 = bitcast half %123 to i16, !dbg !270
  %127 = bitcast half %125 to i16, !dbg !272
  %__7.sroa.6.0.insert.ext.2 = zext i16 %127 to i64, !dbg !273
  %__7.sroa.6.0.insert.shift.2 = shl nuw i64 %__7.sroa.6.0.insert.ext.2, 48, !dbg !273
  %__7.sroa.5.0.insert.ext.2 = zext i16 %126 to i64, !dbg !273
  %__7.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.2, 32, !dbg !273
  %__7.sroa.5.0.insert.insert.2 = or disjoint i64 %__7.sroa.6.0.insert.shift.2, %__7.sroa.5.0.insert.shift.2, !dbg !273
  %__7.sroa.4.0.insert.ext.2 = zext i16 %121 to i64, !dbg !273
  %__7.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.2, 16, !dbg !273
  %__7.sroa.4.0.insert.insert.2 = or disjoint i64 %__7.sroa.5.0.insert.insert.2, %__7.sroa.4.0.insert.shift.2, !dbg !273
  %__7.sroa.0.0.insert.ext.2 = zext i16 %120 to i64, !dbg !273
  %__7.sroa.0.0.insert.insert.2 = or disjoint i64 %__7.sroa.4.0.insert.insert.2, %__7.sroa.0.0.insert.ext.2, !dbg !273
  %add596.2 = or disjoint i32 %add63.2, %mul595, !dbg !274
  %add.ptr598.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add596.2, !dbg !275
  store i64 %__7.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr598.2, align 8, !dbg !276
  %128 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !244, !noalias !248
  %129 = fptrunc float %div.3 to half, !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %128), !dbg !244, !noalias !248
  %130 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !248
  %131 = fptrunc float %div537.3 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %130), !dbg !253, !noalias !248
  %132 = bitcast half %129 to i16, !dbg !255
  %133 = bitcast half %131 to i16, !dbg !258
  %134 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !263
  %135 = fptrunc float %div541.3 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %134), !dbg !259, !noalias !263
  %136 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !263
  %137 = fptrunc float %div545.3 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %136), !dbg !268, !noalias !263
  %138 = bitcast half %135 to i16, !dbg !270
  %139 = bitcast half %137 to i16, !dbg !272
  %__7.sroa.6.0.insert.ext.3 = zext i16 %139 to i64, !dbg !273
  %__7.sroa.6.0.insert.shift.3 = shl nuw i64 %__7.sroa.6.0.insert.ext.3, 48, !dbg !273
  %__7.sroa.5.0.insert.ext.3 = zext i16 %138 to i64, !dbg !273
  %__7.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.3, 32, !dbg !273
  %__7.sroa.5.0.insert.insert.3 = or disjoint i64 %__7.sroa.6.0.insert.shift.3, %__7.sroa.5.0.insert.shift.3, !dbg !273
  %__7.sroa.4.0.insert.ext.3 = zext i16 %133 to i64, !dbg !273
  %__7.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.3, 16, !dbg !273
  %__7.sroa.4.0.insert.insert.3 = or disjoint i64 %__7.sroa.5.0.insert.insert.3, %__7.sroa.4.0.insert.shift.3, !dbg !273
  %__7.sroa.0.0.insert.ext.3 = zext i16 %132 to i64, !dbg !273
  %__7.sroa.0.0.insert.insert.3 = or disjoint i64 %__7.sroa.4.0.insert.insert.3, %__7.sroa.0.0.insert.ext.3, !dbg !273
  %add596.3 = or disjoint i32 %add63.3, %mul595, !dbg !274
  %add.ptr598.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add596.3, !dbg !275
  store i64 %__7.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr598.3, align 8, !dbg !276
  fence syncscope("warp") release, !dbg !277
  tail call void @llvm.mxc.barrier.warp(), !dbg !280
  fence syncscope("warp") acquire, !dbg !281
  %140 = load i64, ptr addrspace(3) %6, align 16, !dbg !282
  %add.ptr626.1 = getelementptr inbounds i8, ptr addrspace(3) %6, i32 8, !dbg !283
  %141 = load i64, ptr addrspace(3) %add.ptr626.1, align 8, !dbg !282
  %add.ptr652 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %4, !dbg !284
  store i64 %140, ptr addrspace(1) %add.ptr652, align 16, !dbg !285
  %output_fetch.sroa.6.0.add.ptr652.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr652, i64 8, !dbg !285
  store i64 %141, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr652.sroa_idx, align 8, !dbg !285
  %add.ptr626.1865 = getelementptr inbounds i8, ptr addrspace(3) %6, i32 1032, !dbg !283
  %142 = load i64, ptr addrspace(3) %add.ptr626.1865, align 8, !dbg !282
  %143 = load i64, ptr addrspace(3) %8, align 16, !dbg !282
  %add.ptr652.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %7, !dbg !284
  store i64 %142, ptr addrspace(1) %add.ptr652.1, align 16, !dbg !285
  %output_fetch.sroa.6.0.add.ptr652.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr652.1, i64 8, !dbg !285
  store i64 %143, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr652.1.sroa_idx, align 8, !dbg !285
  ret void, !dbg !286
}

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half>, <4 x half>, <4 x float>) #4

; Function Attrs: mustprogress nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.mxc.block.id.x() #5

; Function Attrs: mustprogress nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.mxc.block.id.y() #5

; Function Attrs: mustprogress nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.mxc.block.id.z() #5

; Function Attrs: mustprogress nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.mxc.thread.id.x() #5

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.mxc.barrier.warp() #6

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare i32 @llvm.mxc.bsm.bpermute(i32, i32) #4

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare i32 @llvm.mxc.mbcnt.lo(i32, i32) #4

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare i32 @llvm.mxc.mbcnt.hi(i32, i32) #4

; Function Attrs: mustprogress nofree nosync nounwind speculatable willreturn memory(none)
declare align 4 ptr addrspace(4) @llvm.mxc.implicitarg.ptr() #5

; Function Attrs: mustprogress nofree nosync nounwind speculatable willreturn memory(none)
declare align 4 ptr addrspace(4) @llvm.mxc.dispatch.ptr() #5

; Function Attrs: mustprogress nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.mxc.is.private(ptr nocapture) #5

; Function Attrs: mustprogress nounwind willreturn
declare void @llvm.mxc.sleep(i32 immarg) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #8

; Function Attrs: mustprogress nofree nounwind speculatable willreturn memory(inaccessiblemem: read)
declare i32 @llvm.mxc.gethwreg(i32 immarg) #9

; Function Attrs: mustprogress nounwind willreturn
declare void @llvm.mxc.sethwreg(i32 immarg, i32) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #8

attributes #0 = { mustprogress noreturn nounwind "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="512" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="512" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" }
attributes #3 = { convergent mustprogress norecurse nounwind willreturn "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-implicitarg-num-bytes"="80" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="64" "metaxgpu-min-blocks"="1" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" "uniform-work-group-size"="true" }
attributes #4 = { convergent mustprogress nofree nounwind willreturn memory(none) }
attributes #5 = { mustprogress nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { convergent mustprogress nounwind willreturn }
attributes #7 = { mustprogress nounwind willreturn }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind speculatable willreturn memory(inaccessiblemem: read) }
attributes #10 = { nomerge }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "mxcc version 1.0.0 (d9102a1572)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v209_worker2_c14_linear_query_grid_subagent2/codegen/parent_v084/case14_stage1.device.cpp", directory: "/root/tilelang-metax")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 8, !"PIC Level", i32 1}
!5 = distinct !DISubprogram(name: "__cxa_pure_virtual", scope: !6, file: !6, line: 38, type: !7, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!6 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_runtime_wrapper.h", directory: "")
!7 = !DISubroutineType(types: !8)
!8 = !{}
!9 = !DILocation(line: 39, column: 3, scope: !5)
!10 = !DILocation(line: 40, column: 1, scope: !5)
!11 = distinct !DISubprogram(name: "__cxa_deleted_virtual", scope: !6, file: !6, line: 43, type: !7, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!12 = !DILocation(line: 44, column: 3, scope: !11)
!13 = !DILocation(line: 45, column: 1, scope: !11)
!14 = distinct !DISubprogram(name: "__mcImplicitDeviceSynchronize", scope: !15, file: !15, line: 92, type: !7, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!15 = !DIFile(filename: "/opt/maca/include/mckl/mc_device_runtime.h", directory: "")
!16 = !DILocation(line: 94, column: 5, scope: !14)
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C++ TBAA"}
!21 = !{!22, !24, i64 16}
!22 = !{!"_ZTS21_DynamicParallMqlWrap", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !24, i64 16, !24, i64 24, !25, i64 32}
!23 = !{!"int", !19, i64 0}
!24 = !{!"any pointer", !19, i64 0}
!25 = !{!"_ZTS28mxc_kernel_dispatch_packet_s", !26, i64 0, !26, i64 2, !26, i64 4, !26, i64 6, !26, i64 8, !26, i64 10, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !18, i64 32, !24, i64 40, !18, i64 48, !27, i64 56}
!26 = !{!"short", !19, i64 0}
!27 = !{!"_ZTS12mxc_signal_s", !18, i64 0}
!28 = !{i32 1, i32 -2147483648}
!29 = !{i32 0, i32 2147483647}
!30 = !{!23, !23, i64 0}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!22, !23, i64 4}
!34 = !{!22, !24, i64 24}
!35 = !{!22, !23, i64 0}
!36 = !{!37, !24, i64 24}
!37 = !{!"_ZTS28_DynamicParallSchedulerParam", !18, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !23, i64 104, !23, i64 108, !23, i64 112, !23, i64 116, !23, i64 120, !23, i64 124}
!38 = !{!37, !18, i64 80}
!39 = !DILocation(line: 95, column: 1, scope: !14)
!40 = distinct !DISubprogram(name: "native_sparse_attention_kernel", scope: !41, file: !41, line: 10, type: !7, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!41 = !DIFile(filename: "race_tests/nsa/rep/v209_worker2_c14_linear_query_grid_subagent2/codegen/parent_v084/case14_stage1.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 27, column: 3, scope: !40)
!44 = !DILocation(line: 28, column: 43, scope: !40)
!45 = !DILocation(line: 28, column: 29, scope: !40)
!46 = !DILocation(line: 31, column: 24, scope: !40)
!47 = !DILocation(line: 31, column: 203, scope: !40)
!48 = !DILocation(line: 28, column: 168, scope: !40)
!49 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !52)
!50 = distinct !DISubprogram(name: "__barrier_warp", scope: !51, file: !51, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!51 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!52 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !54)
!53 = distinct !DISubprogram(name: "__syncwarp", scope: !51, file: !51, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!54 = distinct !DILocation(line: 34, column: 3, scope: !40)
!55 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !52)
!56 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !52)
!57 = !DILocation(line: 37, column: 140, scope: !40)
!58 = !DILocation(line: 37, column: 168, scope: !40)
!59 = !DILocation(line: 37, column: 94, scope: !40)
!60 = !DILocation(line: 37, column: 111, scope: !40)
!61 = !DILocation(line: 46, column: 58, scope: !40)
!62 = !DILocation(line: 46, column: 87, scope: !40)
!63 = !DILocation(line: 46, column: 66, scope: !40)
!64 = !DILocation(line: 46, column: 114, scope: !40)
!65 = !DILocation(line: 46, column: 93, scope: !40)
!66 = !DILocation(line: 46, column: 22, scope: !40)
!67 = !DILocation(line: 46, column: 121, scope: !40)
!68 = !DILocation(line: 47, column: 10, scope: !40)
!69 = !DILocation(line: 47, column: 26, scope: !40)
!70 = !DILocation(line: 37, column: 174, scope: !40)
!71 = !DILocation(line: 37, column: 57, scope: !40)
!72 = !DILocation(line: 37, column: 38, scope: !40)
!73 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !74)
!74 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !75)
!75 = distinct !DILocation(line: 48, column: 5, scope: !40)
!76 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !74)
!77 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !74)
!78 = !DILocation(line: 51, column: 45, scope: !40)
!79 = !DILocation(line: 51, column: 31, scope: !40)
!80 = !DILocation(line: 54, column: 211, scope: !40)
!81 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !82)
!82 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !83)
!83 = distinct !DILocation(line: 57, column: 5, scope: !40)
!84 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !82)
!85 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !82)
!86 = !DILocation(line: 62, column: 30, scope: !40)
!87 = !DILocation(line: 64, column: 37, scope: !40)
!88 = !DILocation(line: 72, column: 72, scope: !40)
!89 = !DILocation(line: 72, column: 11, scope: !40)
!90 = !DILocation(line: 72, column: 61, scope: !40)
!91 = !DILocation(line: 351, column: 10, scope: !92, inlinedAt: !94)
!92 = distinct !DISubprogram(name: "max", scope: !93, file: !93, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!93 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!94 = distinct !DILocation(line: 82, column: 20, scope: !40)
!95 = !DILocation(line: 1018, column: 9, scope: !96, inlinedAt: !97)
!96 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!97 = distinct !DILocation(line: 84, column: 34, scope: !40)
!98 = !DILocation(line: 171, column: 37, scope: !99, inlinedAt: !100)
!99 = distinct !DISubprogram(name: "__lane_id", scope: !51, file: !51, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!100 = distinct !DILocation(line: 990, column: 14, scope: !101, inlinedAt: !102)
!101 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!102 = distinct !DILocation(line: 1019, column: 11, scope: !96, inlinedAt: !97)
!103 = !DILocation(line: 171, column: 10, scope: !99, inlinedAt: !100)
!104 = !DILocation(line: 991, column: 20, scope: !101, inlinedAt: !102)
!105 = !DILocation(line: 992, column: 36, scope: !101, inlinedAt: !102)
!106 = !DILocation(line: 992, column: 17, scope: !101, inlinedAt: !102)
!107 = !DILocation(line: 992, column: 11, scope: !101, inlinedAt: !102)
!108 = !DILocation(line: 993, column: 43, scope: !101, inlinedAt: !102)
!109 = !DILocation(line: 993, column: 10, scope: !101, inlinedAt: !102)
!110 = !DILocation(line: 1020, column: 14, scope: !96, inlinedAt: !97)
!111 = !DILocation(line: 351, column: 10, scope: !92, inlinedAt: !112)
!112 = distinct !DILocation(line: 84, column: 18, scope: !40)
!113 = !DILocation(line: 1018, column: 9, scope: !96, inlinedAt: !114)
!114 = distinct !DILocation(line: 85, column: 34, scope: !40)
!115 = !DILocation(line: 171, column: 37, scope: !99, inlinedAt: !116)
!116 = distinct !DILocation(line: 990, column: 14, scope: !101, inlinedAt: !117)
!117 = distinct !DILocation(line: 1019, column: 11, scope: !96, inlinedAt: !114)
!118 = !DILocation(line: 171, column: 10, scope: !99, inlinedAt: !116)
!119 = !DILocation(line: 991, column: 20, scope: !101, inlinedAt: !117)
!120 = !DILocation(line: 992, column: 36, scope: !101, inlinedAt: !117)
!121 = !DILocation(line: 992, column: 17, scope: !101, inlinedAt: !117)
!122 = !DILocation(line: 992, column: 11, scope: !101, inlinedAt: !117)
!123 = !DILocation(line: 993, column: 43, scope: !101, inlinedAt: !117)
!124 = !DILocation(line: 993, column: 10, scope: !101, inlinedAt: !117)
!125 = !DILocation(line: 1020, column: 14, scope: !96, inlinedAt: !114)
!126 = !DILocation(line: 351, column: 10, scope: !92, inlinedAt: !127)
!127 = distinct !DILocation(line: 85, column: 18, scope: !40)
!128 = !DILocation(line: 95, column: 24, scope: !40)
!129 = !DILocation(line: 96, column: 24, scope: !40)
!130 = !DILocation(line: 97, column: 24, scope: !40)
!131 = !DILocation(line: 98, column: 24, scope: !40)
!132 = !DILocation(line: 100, column: 23, scope: !40)
!133 = !DILocation(line: 101, column: 23, scope: !40)
!134 = !DILocation(line: 102, column: 23, scope: !40)
!135 = !DILocation(line: 103, column: 23, scope: !40)
!136 = !DILocation(line: 105, column: 21, scope: !40)
!137 = !DILocation(line: 106, column: 21, scope: !40)
!138 = !DILocation(line: 107, column: 21, scope: !40)
!139 = !DILocation(line: 108, column: 21, scope: !40)
!140 = !DILocation(line: 285, column: 49, scope: !141, inlinedAt: !142)
!141 = distinct !DISubprogram(name: "exp2f", scope: !93, file: !93, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!142 = distinct !DILocation(line: 109, column: 13, scope: !40)
!143 = !DILocation(line: 285, column: 49, scope: !141, inlinedAt: !144)
!144 = distinct !DILocation(line: 110, column: 13, scope: !40)
!145 = !DILocation(line: 285, column: 49, scope: !141, inlinedAt: !146)
!146 = distinct !DILocation(line: 111, column: 13, scope: !40)
!147 = !DILocation(line: 285, column: 49, scope: !141, inlinedAt: !148)
!148 = distinct !DILocation(line: 112, column: 13, scope: !40)
!149 = !DILocation(line: 1007, column: 10, scope: !150, inlinedAt: !152)
!150 = distinct !DISubprogram(name: "__float2half_rn", scope: !151, file: !151, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!151 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!152 = distinct !DILocation(line: 1077, column: 18, scope: !153, inlinedAt: !154)
!153 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !151, file: !151, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!154 = distinct !DILocation(line: 1295, column: 23, scope: !155, inlinedAt: !156)
!155 = distinct !DISubprogram(name: "__float22half2_rn", scope: !151, file: !151, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!156 = distinct !DILocation(line: 113, column: 27, scope: !40)
!157 = !{!158, !160}
!158 = distinct !{!158, !159, !"_ZL17__floats2half2_rnff: %agg.result"}
!159 = distinct !{!159, !"_ZL17__floats2half2_rnff"}
!160 = distinct !{!160, !161, !"_ZL17__float22half2_rn6float2: %agg.result"}
!161 = distinct !{!161, !"_ZL17__float22half2_rn6float2"}
!162 = !DILocation(line: 1007, column: 10, scope: !150, inlinedAt: !163)
!163 = distinct !DILocation(line: 1077, column: 38, scope: !153, inlinedAt: !154)
!164 = !DILocation(line: 1007, column: 10, scope: !150, inlinedAt: !165)
!165 = distinct !DILocation(line: 1077, column: 18, scope: !153, inlinedAt: !166)
!166 = distinct !DILocation(line: 1295, column: 23, scope: !155, inlinedAt: !167)
!167 = distinct !DILocation(line: 114, column: 27, scope: !40)
!168 = !{!169, !171}
!169 = distinct !{!169, !170, !"_ZL17__floats2half2_rnff: %agg.result"}
!170 = distinct !{!170, !"_ZL17__floats2half2_rnff"}
!171 = distinct !{!171, !172, !"_ZL17__float22half2_rn6float2: %agg.result"}
!172 = distinct !{!172, !"_ZL17__float22half2_rn6float2"}
!173 = !DILocation(line: 1007, column: 10, scope: !150, inlinedAt: !174)
!174 = distinct !DILocation(line: 1077, column: 38, scope: !153, inlinedAt: !166)
!175 = !DILocation(line: 115, column: 34, scope: !40)
!176 = !DILocation(line: 1082, column: 16, scope: !177, inlinedAt: !178)
!177 = distinct !DISubprogram(name: "__half2float", scope: !151, file: !151, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!178 = distinct !DILocation(line: 136, column: 55, scope: !179, inlinedAt: !180)
!179 = distinct !DISubprogram(name: "operator float", scope: !151, file: !151, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!180 = distinct !DILocation(line: 119, column: 50, scope: !40)
!181 = !DILocation(line: 119, column: 40, scope: !40)
!182 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !183)
!183 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !184)
!184 = distinct !DILocation(line: 122, column: 5, scope: !40)
!185 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !183)
!186 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !183)
!187 = !DILocation(line: 125, column: 52, scope: !40)
!188 = !DILocation(line: 125, column: 38, scope: !40)
!189 = !DILocation(line: 132, column: 133, scope: !40)
!190 = !DILocation(line: 132, column: 218, scope: !40)
!191 = !DILocation(line: 132, column: 139, scope: !40)
!192 = !DILocation(line: 132, column: 224, scope: !40)
!193 = !DILocation(line: 132, column: 24, scope: !40)
!194 = !DILocation(line: 132, column: 267, scope: !40)
!195 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !196)
!196 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !197)
!197 = distinct !DILocation(line: 134, column: 5, scope: !40)
!198 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !196)
!199 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !196)
!200 = !DILocation(line: 137, column: 191, scope: !40)
!201 = !DILocation(line: 137, column: 63, scope: !40)
!202 = !DILocation(line: 137, column: 44, scope: !40)
!203 = !DILocation(line: 142, column: 46, scope: !40)
!204 = !DILocation(line: 121, column: 38, scope: !40)
!205 = !DILocation(line: 1018, column: 9, scope: !96, inlinedAt: !206)
!206 = distinct !DILocation(line: 148, column: 38, scope: !40)
!207 = !DILocation(line: 0, scope: !40)
!208 = !DILocation(line: 171, column: 37, scope: !99, inlinedAt: !209)
!209 = distinct !DILocation(line: 990, column: 14, scope: !101, inlinedAt: !210)
!210 = distinct !DILocation(line: 1019, column: 11, scope: !96, inlinedAt: !206)
!211 = !DILocation(line: 171, column: 10, scope: !99, inlinedAt: !209)
!212 = !DILocation(line: 991, column: 20, scope: !101, inlinedAt: !210)
!213 = !DILocation(line: 992, column: 36, scope: !101, inlinedAt: !210)
!214 = !DILocation(line: 992, column: 17, scope: !101, inlinedAt: !210)
!215 = !DILocation(line: 992, column: 11, scope: !101, inlinedAt: !210)
!216 = !DILocation(line: 993, column: 43, scope: !101, inlinedAt: !210)
!217 = !DILocation(line: 993, column: 10, scope: !101, inlinedAt: !210)
!218 = !DILocation(line: 1020, column: 14, scope: !96, inlinedAt: !206)
!219 = !DILocation(line: 148, column: 36, scope: !40)
!220 = !DILocation(line: 1018, column: 9, scope: !96, inlinedAt: !221)
!221 = distinct !DILocation(line: 149, column: 38, scope: !40)
!222 = !DILocation(line: 171, column: 37, scope: !99, inlinedAt: !223)
!223 = distinct !DILocation(line: 990, column: 14, scope: !101, inlinedAt: !224)
!224 = distinct !DILocation(line: 1019, column: 11, scope: !96, inlinedAt: !221)
!225 = !DILocation(line: 171, column: 10, scope: !99, inlinedAt: !223)
!226 = !DILocation(line: 991, column: 20, scope: !101, inlinedAt: !224)
!227 = !DILocation(line: 992, column: 36, scope: !101, inlinedAt: !224)
!228 = !DILocation(line: 992, column: 17, scope: !101, inlinedAt: !224)
!229 = !DILocation(line: 992, column: 11, scope: !101, inlinedAt: !224)
!230 = !DILocation(line: 993, column: 43, scope: !101, inlinedAt: !224)
!231 = !DILocation(line: 993, column: 10, scope: !101, inlinedAt: !224)
!232 = !DILocation(line: 1020, column: 14, scope: !96, inlinedAt: !221)
!233 = !DILocation(line: 149, column: 36, scope: !40)
!234 = !DILocation(line: 153, column: 21, scope: !40)
!235 = !DILocation(line: 155, column: 22, scope: !40)
!236 = !DILocation(line: 156, column: 22, scope: !40)
!237 = !DILocation(line: 157, column: 22, scope: !40)
!238 = !DILocation(line: 158, column: 22, scope: !40)
!239 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !240)
!240 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !241)
!241 = distinct !DILocation(line: 161, column: 3, scope: !40)
!242 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !240)
!243 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !240)
!244 = !DILocation(line: 1007, column: 10, scope: !150, inlinedAt: !245)
!245 = distinct !DILocation(line: 1077, column: 18, scope: !153, inlinedAt: !246)
!246 = distinct !DILocation(line: 1295, column: 23, scope: !155, inlinedAt: !247)
!247 = distinct !DILocation(line: 166, column: 27, scope: !40)
!248 = !{!249, !251}
!249 = distinct !{!249, !250, !"_ZL17__floats2half2_rnff: %agg.result"}
!250 = distinct !{!250, !"_ZL17__floats2half2_rnff"}
!251 = distinct !{!251, !252, !"_ZL17__float22half2_rn6float2: %agg.result"}
!252 = distinct !{!252, !"_ZL17__float22half2_rn6float2"}
!253 = !DILocation(line: 1007, column: 10, scope: !150, inlinedAt: !254)
!254 = distinct !DILocation(line: 1077, column: 38, scope: !153, inlinedAt: !246)
!255 = !DILocation(line: 596, column: 67, scope: !256, inlinedAt: !257)
!256 = distinct !DISubprogram(name: "__half2", scope: !151, file: !151, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!257 = distinct !DILocation(line: 1077, column: 10, scope: !153, inlinedAt: !246)
!258 = !DILocation(line: 596, column: 73, scope: !256, inlinedAt: !257)
!259 = !DILocation(line: 1007, column: 10, scope: !150, inlinedAt: !260)
!260 = distinct !DILocation(line: 1077, column: 18, scope: !153, inlinedAt: !261)
!261 = distinct !DILocation(line: 1295, column: 23, scope: !155, inlinedAt: !262)
!262 = distinct !DILocation(line: 167, column: 27, scope: !40)
!263 = !{!264, !266}
!264 = distinct !{!264, !265, !"_ZL17__floats2half2_rnff: %agg.result"}
!265 = distinct !{!265, !"_ZL17__floats2half2_rnff"}
!266 = distinct !{!266, !267, !"_ZL17__float22half2_rn6float2: %agg.result"}
!267 = distinct !{!267, !"_ZL17__float22half2_rn6float2"}
!268 = !DILocation(line: 1007, column: 10, scope: !150, inlinedAt: !269)
!269 = distinct !DILocation(line: 1077, column: 38, scope: !153, inlinedAt: !261)
!270 = !DILocation(line: 596, column: 67, scope: !256, inlinedAt: !271)
!271 = distinct !DILocation(line: 1077, column: 10, scope: !153, inlinedAt: !261)
!272 = !DILocation(line: 596, column: 73, scope: !256, inlinedAt: !271)
!273 = !DILocation(line: 168, column: 38, scope: !40)
!274 = !DILocation(line: 169, column: 141, scope: !40)
!275 = !DILocation(line: 169, column: 22, scope: !40)
!276 = !DILocation(line: 169, column: 221, scope: !40)
!277 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !278)
!278 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !279)
!279 = distinct !DILocation(line: 171, column: 3, scope: !40)
!280 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !278)
!281 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !278)
!282 = !DILocation(line: 176, column: 46, scope: !40)
!283 = !DILocation(line: 176, column: 65, scope: !40)
!284 = !DILocation(line: 178, column: 22, scope: !40)
!285 = !DILocation(line: 178, column: 178, scope: !40)
!286 = !DILocation(line: 180, column: 1, scope: !40)
