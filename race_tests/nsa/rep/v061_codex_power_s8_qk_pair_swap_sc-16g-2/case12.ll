; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v061_codex_power_s8_qk_pair_swap_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v061_codex_power_s8_qk_pair_swap_sc-16g-2/codegen/case12.device.cpp"
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
  %mul = shl nsw i32 %0, 20
  %1 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !range !29
  %mul7 = shl nsw i32 %1, 10
  %add = add nuw nsw i32 %mul, %mul7
  %2 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !42
  %mul11 = shl nuw nsw i32 %2, 3
  %add9 = add nuw nsw i32 %add, %mul11
  %mul24 = and i32 %mul11, 8128
  %xor763 = and i32 %mul11, 56
  %call27.masked = and i32 %2, 1016
  %mul29 = xor i32 %xor763, %call27.masked
  %and33 = lshr i32 %2, 3
  %shr34 = and i32 %and33, 1
  %3 = zext nneg i32 %add9 to i64, !dbg !43
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %3, !dbg !44
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %add.ptr, align 16, !dbg !45
  %qk_fetch.sroa.38.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !45
  %qk_fetch.sroa.38.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr.sroa_idx, align 8, !dbg !45
  %4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul29, !dbg !46
  %5 = getelementptr inbounds %struct.__half, ptr addrspace(3) %4, i32 %mul24, !dbg !46
  %add.ptr39.idx = shl nuw nsw i32 %shr34, 3, !dbg !46
  %add.ptr39 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr39, align 8, !dbg !47
  %xor35.1 = shl nuw nsw i32 %shr34, 3, !dbg !46
  %add.ptr39.idx.1 = xor i32 %xor35.1, 8, !dbg !46
  %add.ptr39.1 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.38.0.copyload, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !47
  %6 = add nuw nsw i64 %3, 512, !dbg !48
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %6, !dbg !44
  %qk_fetch.sroa.0.0.copyload3013 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %qk_fetch.sroa.38.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %qk_fetch.sroa.38.0.copyload3030 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr.1.sroa_idx, align 8, !dbg !45
  %7 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 1024, !dbg !46
  %add.ptr39.1862 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload3013, ptr addrspace(3) %add.ptr39.1862, align 8, !dbg !47
  %add.ptr39.1.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.38.0.copyload3030, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !47
  fence syncscope("warp") release, !dbg !49
  tail call void @llvm.mxc.barrier.warp(), !dbg !55
  fence syncscope("warp") acquire, !dbg !56
  %and48 = shl nuw nsw i32 %2, 6
  %mul49 = and i32 %and48, 960
  %shr52 = lshr i32 %2, 5
  %and55 = and i32 %2, 7
  %and60 = lshr i32 %2, 4
  %8 = xor i32 %and33, %and60
  %xor65762 = xor i32 %8, %2
  %xor68 = shl nuw nsw i32 %xor65762, 2
  %mul69 = and i32 %xor68, 4
  %xor56 = xor i32 %shr52, %and55, !dbg !57
  %mul57 = shl nuw nsw i32 %xor56, 3, !dbg !58
  %add58 = add nuw nsw i32 %mul57, %mul49, !dbg !59
  %add70 = or disjoint i32 %add58, %mul69, !dbg !60
  %add.ptr72 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add70, !dbg !61
  %9 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !62
  %add53.1 = add nuw nsw i32 %shr52, 2, !dbg !63
  %xor56.1 = xor i32 %add53.1, %and55, !dbg !57
  %mul57.1 = shl nuw nsw i32 %xor56.1, 3, !dbg !58
  %add58.1 = add nuw nsw i32 %mul57.1, %mul49, !dbg !59
  %add70.1 = or disjoint i32 %add58.1, %mul69, !dbg !60
  %add.ptr72.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add70.1, !dbg !61
  %10 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !62
  %add53.2 = add nuw nsw i32 %shr52, 4, !dbg !63
  %xor56.2 = xor i32 %add53.2, %and55, !dbg !57
  %mul57.2 = shl nuw nsw i32 %xor56.2, 3, !dbg !58
  %add58.2 = add nuw nsw i32 %mul57.2, %mul49, !dbg !59
  %add70.2 = or disjoint i32 %add58.2, %mul69, !dbg !60
  %add.ptr72.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add70.2, !dbg !61
  %11 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !62
  %add53.3 = add nuw nsw i32 %shr52, 6, !dbg !63
  %xor56.3 = xor i32 %add53.3, %and55, !dbg !57
  %mul57.3 = shl nuw nsw i32 %xor56.3, 3, !dbg !58
  %add58.3 = add nuw nsw i32 %mul57.3, %mul49, !dbg !59
  %add70.3 = or disjoint i32 %add58.3, %mul69, !dbg !60
  %add.ptr72.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add70.3, !dbg !61
  %12 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !62
  %mul99 = shl nsw i32 %0, 13
  %mul101 = shl nsw i32 %1, 3
  %add102 = add nuw nsw i32 %mul99, %mul101
  %conv = zext nneg i32 %0 to i64
  %mul123 = zext nneg i32 %mul11 to i64
  %invariant.gep848 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul123, !dbg !64
  %13 = lshr i32 %2, 2
  %mul217 = and i32 %13, 252
  %mul418 = shl nuw nsw i64 %conv, 16
  %14 = shl nuw nsw i32 %2, 4
  %15 = and i32 %14, 16128
  %mul422 = zext nneg i32 %15 to i64
  %add423 = or disjoint i64 %mul418, %mul422
  %16 = shl nuw nsw i32 %2, 2
  %17 = and i32 %16, 60
  %mul433 = zext nneg i32 %17 to i64
  %add426 = or disjoint i64 %add423, %mul433
  %mul465 = and i32 %14, 240
  %shr471 = and i32 %13, 3
  %xor472 = xor i32 %shr471, %and60
  %and486 = shl nuw nsw i32 %2, 8
  %mul487 = and i32 %and486, 768
  %mul493 = and i32 %16, 48
  %and499 = and i32 %2, 3
  %18 = xor i32 %and60, %and499
  %19 = zext nneg i32 %add102 to i64, !dbg !64
  %arrayidx104 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %19, !dbg !65
  %20 = load i32, ptr addrspace(1) %arrayidx104, align 4, !dbg !65, !tbaa !30
  %mul105 = shl nsw i32 %20, 4, !dbg !66
  %cmp106 = icmp slt i32 %20, 0, !dbg !67
  %cmp108.not = icmp sgt i32 %mul105, %1
  %or.cond = select i1 %cmp106, i1 true, i1 %cmp108.not, !dbg !68
  br i1 %or.cond, label %if.end530, label %if.then, !dbg !68

if.then:                                          ; preds = %entry
  fence syncscope("warp") release, !dbg !69
  tail call void @llvm.mxc.barrier.warp(), !dbg !72
  fence syncscope("warp") acquire, !dbg !73
  %conv118 = zext nneg i32 %mul105 to i64
  %.idx = shl nuw nsw i64 %conv118, 7
  %gep = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep848, i64 %.idx, !dbg !74
  %.idx855 = shl nuw nsw i64 %conv, 17, !dbg !75
  %21 = getelementptr inbounds i8, ptr addrspace(4) %gep, i64 %.idx855, !dbg !75
  %qk_fetch.sroa.0.0.copyload3012 = load i64, ptr addrspace(4) %21, align 16, !dbg !76
  %qk_fetch.sroa.38.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %21, i64 8, !dbg !76
  %qk_fetch.sroa.38.0.copyload3029 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3012, ptr addrspace(3) %add.ptr39, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3029, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !77
  %gep831.1 = getelementptr inbounds i8, ptr addrspace(4) %21, i64 1024, !dbg !75
  %qk_fetch.sroa.0.0.copyload3014 = load i64, ptr addrspace(4) %gep831.1, align 16, !dbg !76
  %qk_fetch.sroa.38.0.gep831.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %21, i64 1032, !dbg !76
  %qk_fetch.sroa.38.0.copyload3031 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep831.1.sroa_idx, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3014, ptr addrspace(3) %add.ptr39.1862, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3031, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !77
  fence syncscope("warp") release, !dbg !78
  tail call void @llvm.mxc.barrier.warp(), !dbg !81
  fence syncscope("warp") acquire, !dbg !82
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !83
  %22 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %9, <4 x float> zeroinitializer), !dbg !84
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !83
  %23 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %10, <4 x float> %22), !dbg !84
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !83
  %24 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %11, <4 x float> %23), !dbg !84
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !83
  %25 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %12, <4 x float> %24), !dbg !84
  %add218 = add nuw nsw i32 %mul105, %mul217
  %cmp221.not = icmp sgt i32 %add218, %1, !dbg !85
  %scores.sroa.0.0.vec.extract2033 = extractelement <4 x float> %25, i64 0
  %spec.select = select i1 %cmp221.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2033, !dbg !86
  %cmp221.not.1.not = icmp slt i32 %add218, %1, !dbg !85
  %scores.sroa.0.4.vec.extract2138 = extractelement <4 x float> %25, i64 1, !dbg !86
  %condval.0.1 = select i1 %cmp221.not.1.not, float %scores.sroa.0.4.vec.extract2138, float 0xFFF0000000000000, !dbg !86
  %add219.2 = or disjoint i32 %add218, 2, !dbg !87
  %cmp221.not.2 = icmp sgt i32 %add219.2, %1, !dbg !85
  %scores.sroa.0.8.vec.extract2215 = extractelement <4 x float> %25, i64 2, !dbg !86
  %condval.0.2 = select i1 %cmp221.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2215, !dbg !86
  %add219.3 = or disjoint i32 %add218, 3, !dbg !87
  %cmp221.not.3 = icmp sgt i32 %add219.3, %1, !dbg !85
  %scores.sroa.0.12.vec.extract2292 = extractelement <4 x float> %25, i64 3, !dbg !86
  %condval.0.3 = select i1 %cmp221.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2292, !dbg !86
  %26 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !88
  %27 = tail call contract noundef float @llvm.maxnum.f32(float %26, float %condval.0.1), !dbg !88
  %28 = tail call contract noundef float @llvm.maxnum.f32(float %27, float %condval.0.2), !dbg !88
  %29 = tail call contract noundef float @llvm.maxnum.f32(float %28, float %condval.0.3), !dbg !88
  %30 = bitcast float %29 to i32, !dbg !92
  %31 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !95
  %32 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %31) #11, !dbg !100
  %xor.i.i = xor i32 %32, 32, !dbg !101
  %33 = and i32 %32, -64, !dbg !102
  %and.i.i = add nsw i32 %33, 64, !dbg !102
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !103
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %32, !dbg !104
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !105
  %34 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %30), !dbg !106
  %35 = bitcast i32 %34 to float, !dbg !107
  %36 = tail call contract noundef float @llvm.maxnum.f32(float %29, float %35), !dbg !108
  %37 = bitcast float %36 to i32, !dbg !110
  %38 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !112
  %39 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %38) #11, !dbg !115
  %xor.i.i765 = xor i32 %39, 16, !dbg !116
  %40 = and i32 %39, -64, !dbg !117
  %and.i.i766 = add nsw i32 %40, 64, !dbg !117
  %cmp.not.i.i767 = icmp slt i32 %xor.i.i765, %and.i.i766, !dbg !118
  %cond.i.i768 = select i1 %cmp.not.i.i767, i32 %xor.i.i765, i32 %39, !dbg !119
  %shl.i.i769 = shl i32 %cond.i.i768, 2, !dbg !120
  %41 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i769, i32 %37), !dbg !121
  %42 = bitcast i32 %41 to float, !dbg !122
  %43 = tail call contract noundef float @llvm.maxnum.f32(float %36, float %42), !dbg !123
  %44 = tail call contract noundef float @llvm.maxnum.f32(float %43, float 0xFFF0000000000000), !dbg !125
  %sub = fsub contract float 0xFFF0000000000000, %44, !dbg !127
  %mul263 = fmul contract float %sub, 0x3FC7154760000000, !dbg !128
  %cmp.i.i = fcmp contract olt float %mul263, -1.260000e+02, !dbg !129
  %cond.i.i770 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i = fadd contract float %mul263, %cond.i.i770, !dbg !129
  %45 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !129
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i = fmul contract float %cond2.i.i, %45, !dbg !129
  %mul280 = fmul contract float %mul.i.i, 0.000000e+00, !dbg !132
  %numerator.sroa.0.0.vec.insert2348 = insertelement <4 x float> poison, float %mul280, i64 0, !dbg !133
  %numerator.sroa.0.12.vec.insert2459 = shufflevector <4 x float> %numerator.sroa.0.0.vec.insert2348, <4 x float> poison, <4 x i32> zeroinitializer, !dbg !133
  %sub313 = fsub contract float %spec.select, %44, !dbg !134
  %sub317 = fsub contract float %condval.0.1, %44, !dbg !135
  %sub321 = fsub contract float %condval.0.2, %44, !dbg !136
  %sub325 = fsub contract float %condval.0.3, %44, !dbg !137
  %mul330 = fmul contract float %sub313, 0x3FC7154760000000, !dbg !138
  %mul334 = fmul contract float %sub317, 0x3FC7154760000000, !dbg !139
  %mul338 = fmul contract float %sub321, 0x3FC7154760000000, !dbg !140
  %mul342 = fmul contract float %sub325, 0x3FC7154760000000, !dbg !141
  %add347 = fadd contract float %mul330, 8.000000e+00, !dbg !142
  %add351 = fadd contract float %mul334, 8.000000e+00, !dbg !143
  %add355 = fadd contract float %mul338, 8.000000e+00, !dbg !144
  %add359 = fadd contract float %mul342, 8.000000e+00, !dbg !145
  %cmp.i.i771 = fcmp contract olt float %add347, -1.260000e+02, !dbg !146
  %cond.i.i772 = select contract i1 %cmp.i.i771, float 6.400000e+01, float 0.000000e+00, !dbg !146
  %add.i.i773 = fadd contract float %add347, %cond.i.i772, !dbg !146
  %46 = tail call contract float @llvm.exp2.f32(float %add.i.i773), !dbg !146
  %cond2.i.i774 = select contract i1 %cmp.i.i771, float 0x3BF0000000000000, float 1.000000e+00, !dbg !146
  %mul.i.i775 = fmul contract float %cond2.i.i774, %46, !dbg !146
  %cmp.i.i776 = fcmp contract olt float %add351, -1.260000e+02, !dbg !148
  %cond.i.i777 = select contract i1 %cmp.i.i776, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i778 = fadd contract float %add351, %cond.i.i777, !dbg !148
  %47 = tail call contract float @llvm.exp2.f32(float %add.i.i778), !dbg !148
  %cond2.i.i779 = select contract i1 %cmp.i.i776, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i780 = fmul contract float %cond2.i.i779, %47, !dbg !148
  %cmp.i.i781 = fcmp contract olt float %add355, -1.260000e+02, !dbg !150
  %cond.i.i782 = select contract i1 %cmp.i.i781, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i783 = fadd contract float %add355, %cond.i.i782, !dbg !150
  %48 = tail call contract float @llvm.exp2.f32(float %add.i.i783), !dbg !150
  %cond2.i.i784 = select contract i1 %cmp.i.i781, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i785 = fmul contract float %cond2.i.i784, %48, !dbg !150
  %cmp.i.i786 = fcmp contract olt float %add359, -1.260000e+02, !dbg !152
  %cond.i.i787 = select contract i1 %cmp.i.i786, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i788 = fadd contract float %add359, %cond.i.i787, !dbg !152
  %49 = tail call contract float @llvm.exp2.f32(float %add.i.i788), !dbg !152
  %cond2.i.i789 = select contract i1 %cmp.i.i786, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i790 = fmul contract float %cond2.i.i789, %49, !dbg !152
  %50 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !154, !noalias !162
  %51 = fptrunc float %mul.i.i775 to half, !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %50), !dbg !154, !noalias !162
  %52 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !167, !noalias !162
  %53 = fptrunc float %mul.i.i780 to half, !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %52), !dbg !167, !noalias !162
  %54 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !173
  %55 = fptrunc float %mul.i.i785 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %54), !dbg !169, !noalias !173
  %56 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !173
  %57 = fptrunc float %mul.i.i790 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %56), !dbg !178, !noalias !173
  %58 = insertelement <4 x half> poison, half %51, i64 0, !dbg !180
  %59 = insertelement <4 x half> %58, half %53, i64 1, !dbg !180
  %60 = insertelement <4 x half> %59, half %55, i64 2, !dbg !180
  %61 = insertelement <4 x half> %60, half %57, i64 3, !dbg !180
  %conv.i.i = fpext half %51 to float, !dbg !181
  %add393 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !186
  %conv.i.i.1 = fpext half %53 to float, !dbg !181
  %add393.1 = fadd contract float %add393, %conv.i.i.1, !dbg !186
  %conv.i.i.2 = fpext half %55 to float, !dbg !181
  %add393.2 = fadd contract float %add393.1, %conv.i.i.2, !dbg !186
  %conv.i.i.3 = fpext half %57 to float, !dbg !181
  %add393.3 = fadd contract float %add393.2, %conv.i.i.3, !dbg !186
  %62 = bitcast float %add393.3 to i32, !dbg !187
  %63 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !189
  %64 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %63) #11, !dbg !192
  %xor.i.i796 = xor i32 %64, 32, !dbg !193
  %65 = and i32 %64, -64, !dbg !194
  %and.i.i797 = add nsw i32 %65, 64, !dbg !194
  %cmp.not.i.i798 = icmp slt i32 %xor.i.i796, %and.i.i797, !dbg !195
  %cond.i.i799 = select i1 %cmp.not.i.i798, i32 %xor.i.i796, i32 %64, !dbg !196
  %shl.i.i800 = shl i32 %cond.i.i799, 2, !dbg !197
  %66 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i800, i32 %62), !dbg !198
  %67 = bitcast i32 %66 to float, !dbg !199
  %add401 = fadd contract float %add393.3, %67, !dbg !200
  %68 = bitcast float %add401 to i32, !dbg !201
  %69 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !203
  %70 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %69) #11, !dbg !206
  %xor.i.i801 = xor i32 %70, 16, !dbg !207
  %71 = and i32 %70, -64, !dbg !208
  %and.i.i802 = add nsw i32 %71, 64, !dbg !208
  %cmp.not.i.i803 = icmp slt i32 %xor.i.i801, %and.i.i802, !dbg !209
  %cond.i.i804 = select i1 %cmp.not.i.i803, i32 %xor.i.i801, i32 %70, !dbg !210
  %shl.i.i805 = shl i32 %cond.i.i804, 2, !dbg !211
  %72 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i805, i32 %68), !dbg !212
  %73 = bitcast i32 %72 to float, !dbg !213
  %add406 = fadd contract float %add401, %73, !dbg !214
  fence syncscope("warp") release, !dbg !215
  tail call void @llvm.mxc.barrier.warp(), !dbg !218
  fence syncscope("warp") acquire, !dbg !219
  %74 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add426, !dbg !220
  %75 = getelementptr inbounds i8, ptr addrspace(4) %74, i64 %.idx, !dbg !220
  %76 = load i64, ptr addrspace(4) %75, align 8, !dbg !221
  %add.ptr435.1 = getelementptr inbounds i8, ptr addrspace(4) %75, i64 128, !dbg !220
  %77 = load i64, ptr addrspace(4) %add.ptr435.1, align 8, !dbg !221
  %add.ptr435.2 = getelementptr inbounds i8, ptr addrspace(4) %75, i64 256, !dbg !220
  %78 = load i64, ptr addrspace(4) %add.ptr435.2, align 8, !dbg !221
  %add.ptr435.3 = getelementptr inbounds i8, ptr addrspace(4) %75, i64 384, !dbg !220
  %79 = load i64, ptr addrspace(4) %add.ptr435.3, align 8, !dbg !221
  %80 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul465, !dbg !222
  %add.ptr477.idx = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477 = getelementptr inbounds i8, ptr addrspace(3) %80, i32 %add.ptr477.idx, !dbg !222
  %v_column.sroa.130.0.insert.ext = shl i64 %79, 48, !dbg !223
  %v_column.sroa.98.0.insert.ext = shl i64 %78, 32, !dbg !223
  %v_column.sroa.98.0.insert.shift = and i64 %v_column.sroa.98.0.insert.ext, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert = or disjoint i64 %v_column.sroa.130.0.insert.ext, %v_column.sroa.98.0.insert.shift, !dbg !223
  %v_column.sroa.66.0.insert.ext = shl i64 %77, 16, !dbg !223
  %v_column.sroa.66.0.insert.shift = and i64 %v_column.sroa.66.0.insert.ext, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert = or disjoint i64 %v_column.sroa.98.0.insert.insert, %v_column.sroa.66.0.insert.shift, !dbg !223
  %v_column.sroa.0.0.insert.ext = and i64 %76, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert = or disjoint i64 %v_column.sroa.66.0.insert.insert, %v_column.sroa.0.0.insert.ext, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr477, align 8, !dbg !223
  %v_fetch.sroa.0.2.extract.shift = lshr i64 %76, 16, !dbg !224
  %add466.1 = or disjoint i32 %mul465, 256, !dbg !225
  %81 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.1, !dbg !222
  %xor473.1 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.1 = xor i32 %xor473.1, 8, !dbg !222
  %add.ptr477.1 = getelementptr inbounds i8, ptr addrspace(3) %81, i32 %add.ptr477.idx.1, !dbg !222
  %82 = shl i64 %79, 32, !dbg !223
  %v_column.sroa.130.0.insert.ext1429 = and i64 %82, -281474976710656, !dbg !223
  %83 = shl i64 %78, 16, !dbg !223
  %v_column.sroa.98.0.insert.shift1275 = and i64 %83, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1277 = or disjoint i64 %v_column.sroa.130.0.insert.ext1429, %v_column.sroa.98.0.insert.shift1275, !dbg !223
  %v_column.sroa.66.0.insert.ext1119 = and i64 %77, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1122 = or disjoint i64 %v_column.sroa.98.0.insert.insert1277, %v_column.sroa.66.0.insert.ext1119, !dbg !223
  %v_column.sroa.0.0.insert.ext995 = and i64 %v_fetch.sroa.0.2.extract.shift, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert997 = or disjoint i64 %v_column.sroa.66.0.insert.insert1122, %v_column.sroa.0.0.insert.ext995, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert997, ptr addrspace(3) %add.ptr477.1, align 8, !dbg !223
  %v_fetch.sroa.0.4.extract.shift = lshr i64 %76, 32, !dbg !224
  %add466.2 = or disjoint i32 %mul465, 512, !dbg !225
  %84 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.2, !dbg !222
  %xor473.2 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.2 = xor i32 %xor473.2, 16, !dbg !222
  %add.ptr477.2 = getelementptr inbounds i8, ptr addrspace(3) %84, i32 %add.ptr477.idx.2, !dbg !222
  %85 = shl i64 %79, 16, !dbg !223
  %v_column.sroa.130.0.insert.ext1434 = and i64 %85, -281474976710656, !dbg !223
  %v_column.sroa.98.0.insert.ext1279 = and i64 %78, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1282 = or disjoint i64 %v_column.sroa.130.0.insert.ext1434, %v_column.sroa.98.0.insert.ext1279, !dbg !223
  %86 = lshr i64 %77, 16, !dbg !223
  %v_column.sroa.66.0.insert.shift1125 = and i64 %86, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1127 = or disjoint i64 %v_column.sroa.98.0.insert.insert1282, %v_column.sroa.66.0.insert.shift1125, !dbg !223
  %v_column.sroa.0.0.insert.ext999 = and i64 %v_fetch.sroa.0.4.extract.shift, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert1001 = or disjoint i64 %v_column.sroa.66.0.insert.insert1127, %v_column.sroa.0.0.insert.ext999, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1001, ptr addrspace(3) %add.ptr477.2, align 8, !dbg !223
  %v_fetch.sroa.0.6.extract.shift = lshr i64 %76, 48, !dbg !224
  %v_fetch.sroa.122.30.extract.shift = and i64 %79, -281474976710656, !dbg !223
  %add466.3 = or disjoint i32 %mul465, 768, !dbg !225
  %87 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.3, !dbg !222
  %xor473.3 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.3 = xor i32 %xor473.3, 24, !dbg !222
  %add.ptr477.3 = getelementptr inbounds i8, ptr addrspace(3) %87, i32 %add.ptr477.idx.3, !dbg !222
  %88 = lshr i64 %78, 16, !dbg !223
  %v_column.sroa.98.0.insert.shift1285 = and i64 %88, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1287 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift, %v_column.sroa.98.0.insert.shift1285, !dbg !223
  %89 = lshr i64 %77, 32, !dbg !223
  %v_column.sroa.66.0.insert.shift1130 = and i64 %89, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1132 = or disjoint i64 %v_column.sroa.98.0.insert.insert1287, %v_column.sroa.66.0.insert.shift1130, !dbg !223
  %v_column.sroa.0.0.insert.insert1005 = or disjoint i64 %v_column.sroa.66.0.insert.insert1132, %v_fetch.sroa.0.6.extract.shift, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1005, ptr addrspace(3) %add.ptr477.3, align 8, !dbg !223
  fence syncscope("warp") release, !dbg !226
  tail call void @llvm.mxc.barrier.warp(), !dbg !229
  fence syncscope("warp") acquire, !dbg !230
  %add494 = or disjoint i32 %mul487, %mul493, !dbg !231
  %90 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494, !dbg !232
  %add.ptr504.idx = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504 = getelementptr inbounds i8, ptr addrspace(3) %90, i32 %add.ptr504.idx, !dbg !232
  %91 = load <4 x half>, ptr addrspace(3) %add.ptr504, align 8, !dbg !233
  %add489.1 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.1 = or disjoint i32 %add489.1, 64, !dbg !231
  %92 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.1, !dbg !232
  %xor500.1 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.1 = xor i32 %xor500.1, 8, !dbg !232
  %add.ptr504.1 = getelementptr inbounds i8, ptr addrspace(3) %92, i32 %add.ptr504.idx.1, !dbg !232
  %93 = load <4 x half>, ptr addrspace(3) %add.ptr504.1, align 8, !dbg !233
  %add489.2 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.2 = or disjoint i32 %add489.2, 128, !dbg !231
  %94 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.2, !dbg !232
  %xor500.2 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.2 = xor i32 %xor500.2, 16, !dbg !232
  %add.ptr504.2 = getelementptr inbounds i8, ptr addrspace(3) %94, i32 %add.ptr504.idx.2, !dbg !232
  %95 = load <4 x half>, ptr addrspace(3) %add.ptr504.2, align 8, !dbg !233
  %add489.3 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.3 = or disjoint i32 %add489.3, 192, !dbg !231
  %96 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.3, !dbg !232
  %xor500.3 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.3 = xor i32 %xor500.3, 24, !dbg !232
  %add.ptr504.3 = getelementptr inbounds i8, ptr addrspace(3) %96, i32 %add.ptr504.idx.3, !dbg !232
  %97 = load <4 x half>, ptr addrspace(3) %add.ptr504.3, align 8, !dbg !233
  %98 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %91, <4 x half> %61, <4 x float> %numerator.sroa.0.12.vec.insert2459), !dbg !234
  %99 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %93, <4 x half> %61, <4 x float> %numerator.sroa.0.12.vec.insert2459), !dbg !234
  %100 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %95, <4 x half> %61, <4 x float> %numerator.sroa.0.12.vec.insert2459), !dbg !234
  %101 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %97, <4 x half> %61, <4 x float> %numerator.sroa.0.12.vec.insert2459), !dbg !234
  %add410 = fadd contract float %mul280, %add406, !dbg !235
  br label %if.end530, !dbg !236

if.end530:                                        ; preds = %if.then, %entry
  %numerator.sroa.290.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %101, %if.then ], !dbg !237
  %numerator.sroa.194.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %100, %if.then ], !dbg !237
  %numerator.sroa.98.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %99, %if.then ], !dbg !237
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %98, %if.then ], !dbg !237
  %maximum.sroa.0.1 = phi float [ 0xFFF0000000000000, %entry ], [ %44, %if.then ], !dbg !237
  %denominator.sroa.0.1 = phi float [ 0.000000e+00, %entry ], [ %add410, %if.then ], !dbg !237
  %102 = or disjoint i64 %19, 1, !dbg !238
  %arrayidx104.1 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %102, !dbg !65
  %103 = load i32, ptr addrspace(1) %arrayidx104.1, align 4, !dbg !65, !tbaa !30
  %mul105.1 = shl nsw i32 %103, 4, !dbg !66
  %cmp106.1 = icmp slt i32 %103, 0, !dbg !67
  %cmp108.not.1 = icmp sgt i32 %mul105.1, %1
  %or.cond.1 = select i1 %cmp106.1, i1 true, i1 %cmp108.not.1, !dbg !68
  br i1 %or.cond.1, label %if.end530.1, label %if.then.1, !dbg !68

if.then.1:                                        ; preds = %if.end530
  fence syncscope("warp") release, !dbg !69
  tail call void @llvm.mxc.barrier.warp(), !dbg !72
  fence syncscope("warp") acquire, !dbg !73
  %conv118.1 = zext nneg i32 %mul105.1 to i64
  %.idx.1 = shl nuw nsw i64 %conv118.1, 7
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep848, i64 %.idx.1, !dbg !74
  %.idx855.1873 = shl nuw nsw i64 %conv, 17, !dbg !75
  %104 = getelementptr inbounds i8, ptr addrspace(4) %gep.1, i64 %.idx855.1873, !dbg !75
  %qk_fetch.sroa.0.0.copyload3015 = load i64, ptr addrspace(4) %104, align 16, !dbg !76
  %qk_fetch.sroa.38.0..sroa_idx3032 = getelementptr inbounds i8, ptr addrspace(4) %104, i64 8, !dbg !76
  %qk_fetch.sroa.38.0.copyload3033 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx3032, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3015, ptr addrspace(3) %add.ptr39, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3033, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !77
  %gep831.1.1 = getelementptr inbounds i8, ptr addrspace(4) %104, i64 1024, !dbg !75
  %qk_fetch.sroa.0.0.copyload3016 = load i64, ptr addrspace(4) %gep831.1.1, align 16, !dbg !76
  %qk_fetch.sroa.38.0.gep831.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %104, i64 1032, !dbg !76
  %qk_fetch.sroa.38.0.copyload3034 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep831.1.1.sroa_idx, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3016, ptr addrspace(3) %add.ptr39.1862, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3034, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !77
  fence syncscope("warp") release, !dbg !78
  tail call void @llvm.mxc.barrier.warp(), !dbg !81
  fence syncscope("warp") acquire, !dbg !82
  %k_local.sroa.0.0.copyload.1885 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !83
  %105 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1885, <4 x half> %9, <4 x float> zeroinitializer), !dbg !84
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !83
  %106 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %10, <4 x float> %105), !dbg !84
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !83
  %107 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %11, <4 x float> %106), !dbg !84
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !83
  %108 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %12, <4 x float> %107), !dbg !84
  %add218.1 = add nuw nsw i32 %mul105.1, %mul217
  %cmp221.not.1886 = icmp sgt i32 %add218.1, %1, !dbg !85
  %scores.sroa.0.0.vec.extract2041 = extractelement <4 x float> %108, i64 0
  %spec.select3070 = select i1 %cmp221.not.1886, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2041, !dbg !86
  %cmp221.not.1.1.not = icmp slt i32 %add218.1, %1, !dbg !85
  %scores.sroa.0.4.vec.extract2144 = extractelement <4 x float> %108, i64 1, !dbg !86
  %condval.0.1.1 = select i1 %cmp221.not.1.1.not, float %scores.sroa.0.4.vec.extract2144, float 0xFFF0000000000000, !dbg !86
  %add219.2.1 = or disjoint i32 %add218.1, 2, !dbg !87
  %cmp221.not.2.1 = icmp sgt i32 %add219.2.1, %1, !dbg !85
  %scores.sroa.0.8.vec.extract2221 = extractelement <4 x float> %108, i64 2, !dbg !86
  %condval.0.2.1 = select i1 %cmp221.not.2.1, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2221, !dbg !86
  %add219.3.1 = or disjoint i32 %add218.1, 3, !dbg !87
  %cmp221.not.3.1 = icmp sgt i32 %add219.3.1, %1, !dbg !85
  %scores.sroa.0.12.vec.extract2298 = extractelement <4 x float> %108, i64 3, !dbg !86
  %condval.0.3.1 = select i1 %cmp221.not.3.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2298, !dbg !86
  %109 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3070, float 0xFFF0000000000000), !dbg !88
  %110 = tail call contract noundef float @llvm.maxnum.f32(float %109, float %condval.0.1.1), !dbg !88
  %111 = tail call contract noundef float @llvm.maxnum.f32(float %110, float %condval.0.2.1), !dbg !88
  %112 = tail call contract noundef float @llvm.maxnum.f32(float %111, float %condval.0.3.1), !dbg !88
  %113 = bitcast float %112 to i32, !dbg !92
  %114 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !95
  %115 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %114) #11, !dbg !100
  %xor.i.i.1 = xor i32 %115, 32, !dbg !101
  %116 = and i32 %115, -64, !dbg !102
  %and.i.i.1 = add nsw i32 %116, 64, !dbg !102
  %cmp.not.i.i.1 = icmp slt i32 %xor.i.i.1, %and.i.i.1, !dbg !103
  %cond.i.i.1 = select i1 %cmp.not.i.i.1, i32 %xor.i.i.1, i32 %115, !dbg !104
  %shl.i.i.1 = shl i32 %cond.i.i.1, 2, !dbg !105
  %117 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.1, i32 %113), !dbg !106
  %118 = bitcast i32 %117 to float, !dbg !107
  %119 = tail call contract noundef float @llvm.maxnum.f32(float %112, float %118), !dbg !108
  %120 = bitcast float %119 to i32, !dbg !110
  %121 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !112
  %122 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %121) #11, !dbg !115
  %xor.i.i765.1 = xor i32 %122, 16, !dbg !116
  %123 = and i32 %122, -64, !dbg !117
  %and.i.i766.1 = add nsw i32 %123, 64, !dbg !117
  %cmp.not.i.i767.1 = icmp slt i32 %xor.i.i765.1, %and.i.i766.1, !dbg !118
  %cond.i.i768.1 = select i1 %cmp.not.i.i767.1, i32 %xor.i.i765.1, i32 %122, !dbg !119
  %shl.i.i769.1 = shl i32 %cond.i.i768.1, 2, !dbg !120
  %124 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i769.1, i32 %120), !dbg !121
  %125 = bitcast i32 %124 to float, !dbg !122
  %126 = tail call contract noundef float @llvm.maxnum.f32(float %119, float %125), !dbg !123
  %127 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1, float %126), !dbg !125
  %sub.1 = fsub contract float %maximum.sroa.0.1, %127, !dbg !127
  %mul263.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !128
  %cmp.i.i.1 = fcmp contract olt float %mul263.1, -1.260000e+02, !dbg !129
  %cond.i.i770.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i.1 = fadd contract float %mul263.1, %cond.i.i770.1, !dbg !129
  %128 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !129
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %128, !dbg !129
  %numerator.sroa.0.0.vec.extract2351 = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !239
  %numerator.sroa.0.4.vec.extract2388 = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !239
  %numerator.sroa.0.8.vec.extract2425 = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !239
  %numerator.sroa.0.12.vec.extract2462 = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !239
  %mul280.1897 = fmul contract float %mul.i.i.1, %numerator.sroa.0.0.vec.extract2351, !dbg !132
  %mul283.1898 = fmul contract float %mul.i.i.1, %numerator.sroa.0.4.vec.extract2388, !dbg !240
  %mul286.1899 = fmul contract float %mul.i.i.1, %numerator.sroa.0.8.vec.extract2425, !dbg !241
  %mul289.1900 = fmul contract float %mul.i.i.1, %numerator.sroa.0.12.vec.extract2462, !dbg !242
  %numerator.sroa.0.0.vec.insert2353 = insertelement <4 x float> poison, float %mul280.1897, i64 0, !dbg !133
  %numerator.sroa.0.4.vec.insert2390 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2353, float %mul283.1898, i64 1, !dbg !133
  %numerator.sroa.0.8.vec.insert2427 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2390, float %mul286.1899, i64 2, !dbg !133
  %numerator.sroa.0.12.vec.insert2464 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2427, float %mul289.1900, i64 3, !dbg !133
  %numerator.sroa.98.16.vec.extract2507 = extractelement <4 x float> %numerator.sroa.98.0, i64 0, !dbg !239
  %numerator.sroa.98.20.vec.extract2544 = extractelement <4 x float> %numerator.sroa.98.0, i64 1, !dbg !239
  %numerator.sroa.98.24.vec.extract2581 = extractelement <4 x float> %numerator.sroa.98.0, i64 2, !dbg !239
  %numerator.sroa.98.28.vec.extract2618 = extractelement <4 x float> %numerator.sroa.98.0, i64 3, !dbg !239
  %mul280.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.16.vec.extract2507, !dbg !132
  %mul283.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.20.vec.extract2544, !dbg !240
  %mul286.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.24.vec.extract2581, !dbg !241
  %mul289.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.28.vec.extract2618, !dbg !242
  %numerator.sroa.98.16.vec.insert2509 = insertelement <4 x float> poison, float %mul280.1.1, i64 0, !dbg !133
  %numerator.sroa.98.20.vec.insert2546 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2509, float %mul283.1.1, i64 1, !dbg !133
  %numerator.sroa.98.24.vec.insert2583 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2546, float %mul286.1.1, i64 2, !dbg !133
  %numerator.sroa.98.28.vec.insert2620 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2583, float %mul289.1.1, i64 3, !dbg !133
  %numerator.sroa.194.32.vec.extract2663 = extractelement <4 x float> %numerator.sroa.194.0, i64 0, !dbg !239
  %numerator.sroa.194.36.vec.extract2700 = extractelement <4 x float> %numerator.sroa.194.0, i64 1, !dbg !239
  %numerator.sroa.194.40.vec.extract2737 = extractelement <4 x float> %numerator.sroa.194.0, i64 2, !dbg !239
  %numerator.sroa.194.44.vec.extract2774 = extractelement <4 x float> %numerator.sroa.194.0, i64 3, !dbg !239
  %mul280.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.32.vec.extract2663, !dbg !132
  %mul283.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.36.vec.extract2700, !dbg !240
  %mul286.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.40.vec.extract2737, !dbg !241
  %mul289.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.44.vec.extract2774, !dbg !242
  %numerator.sroa.194.32.vec.insert2665 = insertelement <4 x float> poison, float %mul280.2.1, i64 0, !dbg !133
  %numerator.sroa.194.36.vec.insert2702 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2665, float %mul283.2.1, i64 1, !dbg !133
  %numerator.sroa.194.40.vec.insert2739 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2702, float %mul286.2.1, i64 2, !dbg !133
  %numerator.sroa.194.44.vec.insert2776 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2739, float %mul289.2.1, i64 3, !dbg !133
  %numerator.sroa.290.48.vec.extract2819 = extractelement <4 x float> %numerator.sroa.290.0, i64 0, !dbg !239
  %numerator.sroa.290.52.vec.extract2856 = extractelement <4 x float> %numerator.sroa.290.0, i64 1, !dbg !239
  %numerator.sroa.290.56.vec.extract2893 = extractelement <4 x float> %numerator.sroa.290.0, i64 2, !dbg !239
  %numerator.sroa.290.60.vec.extract2930 = extractelement <4 x float> %numerator.sroa.290.0, i64 3, !dbg !239
  %mul280.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.48.vec.extract2819, !dbg !132
  %mul283.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.52.vec.extract2856, !dbg !240
  %mul286.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.56.vec.extract2893, !dbg !241
  %mul289.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.60.vec.extract2930, !dbg !242
  %numerator.sroa.290.48.vec.insert2821 = insertelement <4 x float> poison, float %mul280.3.1, i64 0, !dbg !133
  %numerator.sroa.290.52.vec.insert2858 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2821, float %mul283.3.1, i64 1, !dbg !133
  %numerator.sroa.290.56.vec.insert2895 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2858, float %mul286.3.1, i64 2, !dbg !133
  %numerator.sroa.290.60.vec.insert2932 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2895, float %mul289.3.1, i64 3, !dbg !133
  %sub313.1 = fsub contract float %spec.select3070, %127, !dbg !134
  %sub317.1 = fsub contract float %condval.0.1.1, %127, !dbg !135
  %sub321.1 = fsub contract float %condval.0.2.1, %127, !dbg !136
  %sub325.1 = fsub contract float %condval.0.3.1, %127, !dbg !137
  %mul330.1 = fmul contract float %sub313.1, 0x3FC7154760000000, !dbg !138
  %mul334.1 = fmul contract float %sub317.1, 0x3FC7154760000000, !dbg !139
  %mul338.1 = fmul contract float %sub321.1, 0x3FC7154760000000, !dbg !140
  %mul342.1 = fmul contract float %sub325.1, 0x3FC7154760000000, !dbg !141
  %add347.1 = fadd contract float %mul330.1, 8.000000e+00, !dbg !142
  %add351.1 = fadd contract float %mul334.1, 8.000000e+00, !dbg !143
  %add355.1 = fadd contract float %mul338.1, 8.000000e+00, !dbg !144
  %add359.1 = fadd contract float %mul342.1, 8.000000e+00, !dbg !145
  %cmp.i.i771.1 = fcmp contract olt float %add347.1, -1.260000e+02, !dbg !146
  %cond.i.i772.1 = select contract i1 %cmp.i.i771.1, float 6.400000e+01, float 0.000000e+00, !dbg !146
  %add.i.i773.1 = fadd contract float %add347.1, %cond.i.i772.1, !dbg !146
  %129 = tail call contract float @llvm.exp2.f32(float %add.i.i773.1), !dbg !146
  %cond2.i.i774.1 = select contract i1 %cmp.i.i771.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !146
  %mul.i.i775.1 = fmul contract float %cond2.i.i774.1, %129, !dbg !146
  %cmp.i.i776.1 = fcmp contract olt float %add351.1, -1.260000e+02, !dbg !148
  %cond.i.i777.1 = select contract i1 %cmp.i.i776.1, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i778.1 = fadd contract float %add351.1, %cond.i.i777.1, !dbg !148
  %130 = tail call contract float @llvm.exp2.f32(float %add.i.i778.1), !dbg !148
  %cond2.i.i779.1 = select contract i1 %cmp.i.i776.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i780.1 = fmul contract float %cond2.i.i779.1, %130, !dbg !148
  %cmp.i.i781.1 = fcmp contract olt float %add355.1, -1.260000e+02, !dbg !150
  %cond.i.i782.1 = select contract i1 %cmp.i.i781.1, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i783.1 = fadd contract float %add355.1, %cond.i.i782.1, !dbg !150
  %131 = tail call contract float @llvm.exp2.f32(float %add.i.i783.1), !dbg !150
  %cond2.i.i784.1 = select contract i1 %cmp.i.i781.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i785.1 = fmul contract float %cond2.i.i784.1, %131, !dbg !150
  %cmp.i.i786.1 = fcmp contract olt float %add359.1, -1.260000e+02, !dbg !152
  %cond.i.i787.1 = select contract i1 %cmp.i.i786.1, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i788.1 = fadd contract float %add359.1, %cond.i.i787.1, !dbg !152
  %132 = tail call contract float @llvm.exp2.f32(float %add.i.i788.1), !dbg !152
  %cond2.i.i789.1 = select contract i1 %cmp.i.i786.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i790.1 = fmul contract float %cond2.i.i789.1, %132, !dbg !152
  %133 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !154, !noalias !162
  %134 = fptrunc float %mul.i.i775.1 to half, !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %133), !dbg !154, !noalias !162
  %135 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !167, !noalias !162
  %136 = fptrunc float %mul.i.i780.1 to half, !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %135), !dbg !167, !noalias !162
  %137 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !173
  %138 = fptrunc float %mul.i.i785.1 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %137), !dbg !169, !noalias !173
  %139 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !173
  %140 = fptrunc float %mul.i.i790.1 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %139), !dbg !178, !noalias !173
  %141 = insertelement <4 x half> poison, half %134, i64 0, !dbg !180
  %142 = insertelement <4 x half> %141, half %136, i64 1, !dbg !180
  %143 = insertelement <4 x half> %142, half %138, i64 2, !dbg !180
  %144 = insertelement <4 x half> %143, half %140, i64 3, !dbg !180
  %conv.i.i.1902 = fpext half %134 to float, !dbg !181
  %add393.1903 = fadd contract float %conv.i.i.1902, 0.000000e+00, !dbg !186
  %conv.i.i.1.1 = fpext half %136 to float, !dbg !181
  %add393.1.1 = fadd contract float %add393.1903, %conv.i.i.1.1, !dbg !186
  %conv.i.i.2.1 = fpext half %138 to float, !dbg !181
  %add393.2.1 = fadd contract float %add393.1.1, %conv.i.i.2.1, !dbg !186
  %conv.i.i.3.1 = fpext half %140 to float, !dbg !181
  %add393.3.1 = fadd contract float %add393.2.1, %conv.i.i.3.1, !dbg !186
  %145 = bitcast float %add393.3.1 to i32, !dbg !187
  %146 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !189
  %147 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %146) #11, !dbg !192
  %xor.i.i796.1 = xor i32 %147, 32, !dbg !193
  %148 = and i32 %147, -64, !dbg !194
  %and.i.i797.1 = add nsw i32 %148, 64, !dbg !194
  %cmp.not.i.i798.1 = icmp slt i32 %xor.i.i796.1, %and.i.i797.1, !dbg !195
  %cond.i.i799.1 = select i1 %cmp.not.i.i798.1, i32 %xor.i.i796.1, i32 %147, !dbg !196
  %shl.i.i800.1 = shl i32 %cond.i.i799.1, 2, !dbg !197
  %149 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i800.1, i32 %145), !dbg !198
  %150 = bitcast i32 %149 to float, !dbg !199
  %add401.1 = fadd contract float %add393.3.1, %150, !dbg !200
  %151 = bitcast float %add401.1 to i32, !dbg !201
  %152 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !203
  %153 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %152) #11, !dbg !206
  %xor.i.i801.1 = xor i32 %153, 16, !dbg !207
  %154 = and i32 %153, -64, !dbg !208
  %and.i.i802.1 = add nsw i32 %154, 64, !dbg !208
  %cmp.not.i.i803.1 = icmp slt i32 %xor.i.i801.1, %and.i.i802.1, !dbg !209
  %cond.i.i804.1 = select i1 %cmp.not.i.i803.1, i32 %xor.i.i801.1, i32 %153, !dbg !210
  %shl.i.i805.1 = shl i32 %cond.i.i804.1, 2, !dbg !211
  %155 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i805.1, i32 %151), !dbg !212
  %156 = bitcast i32 %155 to float, !dbg !213
  %add406.1 = fadd contract float %add401.1, %156, !dbg !214
  fence syncscope("warp") release, !dbg !215
  tail call void @llvm.mxc.barrier.warp(), !dbg !218
  fence syncscope("warp") acquire, !dbg !219
  %157 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add426, !dbg !220
  %158 = getelementptr inbounds i8, ptr addrspace(4) %157, i64 %.idx.1, !dbg !220
  %159 = load i64, ptr addrspace(4) %158, align 8, !dbg !221
  %add.ptr435.1.1 = getelementptr inbounds i8, ptr addrspace(4) %158, i64 128, !dbg !220
  %160 = load i64, ptr addrspace(4) %add.ptr435.1.1, align 8, !dbg !221
  %add.ptr435.2.1 = getelementptr inbounds i8, ptr addrspace(4) %158, i64 256, !dbg !220
  %161 = load i64, ptr addrspace(4) %add.ptr435.2.1, align 8, !dbg !221
  %add.ptr435.3.1 = getelementptr inbounds i8, ptr addrspace(4) %158, i64 384, !dbg !220
  %162 = load i64, ptr addrspace(4) %add.ptr435.3.1, align 8, !dbg !221
  %mul300.1 = fmul contract float %denominator.sroa.0.1, %mul.i.i.1, !dbg !243
  %163 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul465, !dbg !222
  %add.ptr477.idx.1911 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.1912 = getelementptr inbounds i8, ptr addrspace(3) %163, i32 %add.ptr477.idx.1911, !dbg !222
  %v_column.sroa.130.0.insert.ext1444 = shl i64 %162, 48, !dbg !223
  %v_column.sroa.98.0.insert.ext1289 = shl i64 %161, 32, !dbg !223
  %v_column.sroa.98.0.insert.shift1290 = and i64 %v_column.sroa.98.0.insert.ext1289, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1292 = or disjoint i64 %v_column.sroa.130.0.insert.ext1444, %v_column.sroa.98.0.insert.shift1290, !dbg !223
  %v_column.sroa.66.0.insert.ext1134 = shl i64 %160, 16, !dbg !223
  %v_column.sroa.66.0.insert.shift1135 = and i64 %v_column.sroa.66.0.insert.ext1134, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1137 = or disjoint i64 %v_column.sroa.98.0.insert.insert1292, %v_column.sroa.66.0.insert.shift1135, !dbg !223
  %v_column.sroa.0.0.insert.ext1007 = and i64 %159, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert1009 = or disjoint i64 %v_column.sroa.66.0.insert.insert1137, %v_column.sroa.0.0.insert.ext1007, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1009, ptr addrspace(3) %add.ptr477.1912, align 8, !dbg !223
  %v_fetch.sroa.0.2.extract.shift1658 = lshr i64 %159, 16, !dbg !224
  %add466.1.1 = or disjoint i32 %mul465, 256, !dbg !225
  %164 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.1.1, !dbg !222
  %xor473.1.1 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.1.1 = xor i32 %xor473.1.1, 8, !dbg !222
  %add.ptr477.1.1 = getelementptr inbounds i8, ptr addrspace(3) %164, i32 %add.ptr477.idx.1.1, !dbg !222
  %165 = shl i64 %162, 32, !dbg !223
  %v_column.sroa.130.0.insert.ext1449 = and i64 %165, -281474976710656, !dbg !223
  %166 = shl i64 %161, 16, !dbg !223
  %v_column.sroa.98.0.insert.shift1295 = and i64 %166, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1297 = or disjoint i64 %v_column.sroa.130.0.insert.ext1449, %v_column.sroa.98.0.insert.shift1295, !dbg !223
  %v_column.sroa.66.0.insert.ext1139 = and i64 %160, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1142 = or disjoint i64 %v_column.sroa.98.0.insert.insert1297, %v_column.sroa.66.0.insert.ext1139, !dbg !223
  %v_column.sroa.0.0.insert.ext1011 = and i64 %v_fetch.sroa.0.2.extract.shift1658, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert1013 = or disjoint i64 %v_column.sroa.66.0.insert.insert1142, %v_column.sroa.0.0.insert.ext1011, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1013, ptr addrspace(3) %add.ptr477.1.1, align 8, !dbg !223
  %v_fetch.sroa.0.4.extract.shift1679 = lshr i64 %159, 32, !dbg !224
  %add466.2.1 = or disjoint i32 %mul465, 512, !dbg !225
  %167 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.2.1, !dbg !222
  %xor473.2.1 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.2.1 = xor i32 %xor473.2.1, 16, !dbg !222
  %add.ptr477.2.1 = getelementptr inbounds i8, ptr addrspace(3) %167, i32 %add.ptr477.idx.2.1, !dbg !222
  %168 = shl i64 %162, 16, !dbg !223
  %v_column.sroa.130.0.insert.ext1454 = and i64 %168, -281474976710656, !dbg !223
  %v_column.sroa.98.0.insert.ext1299 = and i64 %161, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1302 = or disjoint i64 %v_column.sroa.130.0.insert.ext1454, %v_column.sroa.98.0.insert.ext1299, !dbg !223
  %169 = lshr i64 %160, 16, !dbg !223
  %v_column.sroa.66.0.insert.shift1145 = and i64 %169, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1147 = or disjoint i64 %v_column.sroa.98.0.insert.insert1302, %v_column.sroa.66.0.insert.shift1145, !dbg !223
  %v_column.sroa.0.0.insert.ext1015 = and i64 %v_fetch.sroa.0.4.extract.shift1679, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert1017 = or disjoint i64 %v_column.sroa.66.0.insert.insert1147, %v_column.sroa.0.0.insert.ext1015, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1017, ptr addrspace(3) %add.ptr477.2.1, align 8, !dbg !223
  %v_fetch.sroa.0.6.extract.shift1700 = lshr i64 %159, 48, !dbg !224
  %v_fetch.sroa.122.30.extract.shift1931 = and i64 %162, -281474976710656, !dbg !223
  %add466.3.1 = or disjoint i32 %mul465, 768, !dbg !225
  %170 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.3.1, !dbg !222
  %xor473.3.1 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.3.1 = xor i32 %xor473.3.1, 24, !dbg !222
  %add.ptr477.3.1 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 %add.ptr477.idx.3.1, !dbg !222
  %171 = lshr i64 %161, 16, !dbg !223
  %v_column.sroa.98.0.insert.shift1305 = and i64 %171, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1307 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1931, %v_column.sroa.98.0.insert.shift1305, !dbg !223
  %172 = lshr i64 %160, 32, !dbg !223
  %v_column.sroa.66.0.insert.shift1150 = and i64 %172, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1152 = or disjoint i64 %v_column.sroa.98.0.insert.insert1307, %v_column.sroa.66.0.insert.shift1150, !dbg !223
  %v_column.sroa.0.0.insert.insert1021 = or disjoint i64 %v_column.sroa.66.0.insert.insert1152, %v_fetch.sroa.0.6.extract.shift1700, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1021, ptr addrspace(3) %add.ptr477.3.1, align 8, !dbg !223
  fence syncscope("warp") release, !dbg !226
  tail call void @llvm.mxc.barrier.warp(), !dbg !229
  fence syncscope("warp") acquire, !dbg !230
  %add494.1914 = or disjoint i32 %mul487, %mul493, !dbg !231
  %173 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.1914, !dbg !232
  %add.ptr504.idx.1915 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.1916 = getelementptr inbounds i8, ptr addrspace(3) %173, i32 %add.ptr504.idx.1915, !dbg !232
  %174 = load <4 x half>, ptr addrspace(3) %add.ptr504.1916, align 8, !dbg !233
  %add489.1.1 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.1.1 = or disjoint i32 %add489.1.1, 64, !dbg !231
  %175 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.1.1, !dbg !232
  %xor500.1.1 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.1.1 = xor i32 %xor500.1.1, 8, !dbg !232
  %add.ptr504.1.1 = getelementptr inbounds i8, ptr addrspace(3) %175, i32 %add.ptr504.idx.1.1, !dbg !232
  %176 = load <4 x half>, ptr addrspace(3) %add.ptr504.1.1, align 8, !dbg !233
  %add489.2.1 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.2.1 = or disjoint i32 %add489.2.1, 128, !dbg !231
  %177 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.2.1, !dbg !232
  %xor500.2.1 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.2.1 = xor i32 %xor500.2.1, 16, !dbg !232
  %add.ptr504.2.1 = getelementptr inbounds i8, ptr addrspace(3) %177, i32 %add.ptr504.idx.2.1, !dbg !232
  %178 = load <4 x half>, ptr addrspace(3) %add.ptr504.2.1, align 8, !dbg !233
  %add489.3.1 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.3.1 = or disjoint i32 %add489.3.1, 192, !dbg !231
  %179 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.3.1, !dbg !232
  %xor500.3.1 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.3.1 = xor i32 %xor500.3.1, 24, !dbg !232
  %add.ptr504.3.1 = getelementptr inbounds i8, ptr addrspace(3) %179, i32 %add.ptr504.idx.3.1, !dbg !232
  %180 = load <4 x half>, ptr addrspace(3) %add.ptr504.3.1, align 8, !dbg !233
  %181 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %174, <4 x half> %144, <4 x float> %numerator.sroa.0.12.vec.insert2464), !dbg !234
  %182 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %176, <4 x half> %144, <4 x float> %numerator.sroa.98.28.vec.insert2620), !dbg !234
  %183 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %178, <4 x half> %144, <4 x float> %numerator.sroa.194.44.vec.insert2776), !dbg !234
  %184 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %180, <4 x half> %144, <4 x float> %numerator.sroa.290.60.vec.insert2932), !dbg !234
  %add410.1 = fadd contract float %mul300.1, %add406.1, !dbg !235
  br label %if.end530.1, !dbg !236

if.end530.1:                                      ; preds = %if.then.1, %if.end530
  %numerator.sroa.290.1 = phi <4 x float> [ %numerator.sroa.290.0, %if.end530 ], [ %184, %if.then.1 ], !dbg !237
  %numerator.sroa.194.1 = phi <4 x float> [ %numerator.sroa.194.0, %if.end530 ], [ %183, %if.then.1 ], !dbg !237
  %numerator.sroa.98.1 = phi <4 x float> [ %numerator.sroa.98.0, %if.end530 ], [ %182, %if.then.1 ], !dbg !237
  %numerator.sroa.0.1 = phi <4 x float> [ %numerator.sroa.0.0, %if.end530 ], [ %181, %if.then.1 ], !dbg !237
  %maximum.sroa.0.1.1 = phi float [ %maximum.sroa.0.1, %if.end530 ], [ %127, %if.then.1 ], !dbg !237
  %denominator.sroa.0.1.1 = phi float [ %denominator.sroa.0.1, %if.end530 ], [ %add410.1, %if.then.1 ], !dbg !237
  %185 = or disjoint i64 %19, 2, !dbg !238
  %arrayidx104.2 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %185, !dbg !65
  %186 = load i32, ptr addrspace(1) %arrayidx104.2, align 4, !dbg !65, !tbaa !30
  %mul105.2 = shl nsw i32 %186, 4, !dbg !66
  %cmp106.2 = icmp slt i32 %186, 0, !dbg !67
  %cmp108.not.2 = icmp sgt i32 %mul105.2, %1
  %or.cond.2 = select i1 %cmp106.2, i1 true, i1 %cmp108.not.2, !dbg !68
  br i1 %or.cond.2, label %if.end530.2, label %if.then.2, !dbg !68

if.then.2:                                        ; preds = %if.end530.1
  fence syncscope("warp") release, !dbg !69
  tail call void @llvm.mxc.barrier.warp(), !dbg !72
  fence syncscope("warp") acquire, !dbg !73
  %conv118.2 = zext nneg i32 %mul105.2 to i64
  %.idx.2 = shl nuw nsw i64 %conv118.2, 7
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep848, i64 %.idx.2, !dbg !74
  %.idx855.2 = shl nuw nsw i64 %conv, 17, !dbg !75
  %187 = getelementptr inbounds i8, ptr addrspace(4) %gep.2, i64 %.idx855.2, !dbg !75
  %qk_fetch.sroa.0.0.copyload3017 = load i64, ptr addrspace(4) %187, align 16, !dbg !76
  %qk_fetch.sroa.38.0..sroa_idx3035 = getelementptr inbounds i8, ptr addrspace(4) %187, i64 8, !dbg !76
  %qk_fetch.sroa.38.0.copyload3036 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx3035, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3017, ptr addrspace(3) %add.ptr39, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3036, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !77
  %gep831.1.2 = getelementptr inbounds i8, ptr addrspace(4) %187, i64 1024, !dbg !75
  %qk_fetch.sroa.0.0.copyload3018 = load i64, ptr addrspace(4) %gep831.1.2, align 16, !dbg !76
  %qk_fetch.sroa.38.0.gep831.1.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %187, i64 1032, !dbg !76
  %qk_fetch.sroa.38.0.copyload3037 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep831.1.2.sroa_idx, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3018, ptr addrspace(3) %add.ptr39.1862, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3037, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !77
  fence syncscope("warp") release, !dbg !78
  tail call void @llvm.mxc.barrier.warp(), !dbg !81
  fence syncscope("warp") acquire, !dbg !82
  %k_local.sroa.0.0.copyload.2922 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !83
  %188 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2922, <4 x half> %9, <4 x float> zeroinitializer), !dbg !84
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !83
  %189 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %10, <4 x float> %188), !dbg !84
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !83
  %190 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %11, <4 x float> %189), !dbg !84
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !83
  %191 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %12, <4 x float> %190), !dbg !84
  %add218.2 = add nuw nsw i32 %mul105.2, %mul217
  %cmp221.not.2923 = icmp sgt i32 %add218.2, %1, !dbg !85
  %scores.sroa.0.0.vec.extract2051 = extractelement <4 x float> %191, i64 0
  %spec.select3071 = select i1 %cmp221.not.2923, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2051, !dbg !86
  %cmp221.not.1.2.not = icmp slt i32 %add218.2, %1, !dbg !85
  %scores.sroa.0.4.vec.extract2150 = extractelement <4 x float> %191, i64 1, !dbg !86
  %condval.0.1.2 = select i1 %cmp221.not.1.2.not, float %scores.sroa.0.4.vec.extract2150, float 0xFFF0000000000000, !dbg !86
  %add219.2.2 = or disjoint i32 %add218.2, 2, !dbg !87
  %cmp221.not.2.2 = icmp sgt i32 %add219.2.2, %1, !dbg !85
  %scores.sroa.0.8.vec.extract2227 = extractelement <4 x float> %191, i64 2, !dbg !86
  %condval.0.2.2 = select i1 %cmp221.not.2.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2227, !dbg !86
  %add219.3.2 = or disjoint i32 %add218.2, 3, !dbg !87
  %cmp221.not.3.2 = icmp sgt i32 %add219.3.2, %1, !dbg !85
  %scores.sroa.0.12.vec.extract2304 = extractelement <4 x float> %191, i64 3, !dbg !86
  %condval.0.3.2 = select i1 %cmp221.not.3.2, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2304, !dbg !86
  %192 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3071, float 0xFFF0000000000000), !dbg !88
  %193 = tail call contract noundef float @llvm.maxnum.f32(float %192, float %condval.0.1.2), !dbg !88
  %194 = tail call contract noundef float @llvm.maxnum.f32(float %193, float %condval.0.2.2), !dbg !88
  %195 = tail call contract noundef float @llvm.maxnum.f32(float %194, float %condval.0.3.2), !dbg !88
  %196 = bitcast float %195 to i32, !dbg !92
  %197 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !95
  %198 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %197) #11, !dbg !100
  %xor.i.i.2 = xor i32 %198, 32, !dbg !101
  %199 = and i32 %198, -64, !dbg !102
  %and.i.i.2 = add nsw i32 %199, 64, !dbg !102
  %cmp.not.i.i.2 = icmp slt i32 %xor.i.i.2, %and.i.i.2, !dbg !103
  %cond.i.i.2 = select i1 %cmp.not.i.i.2, i32 %xor.i.i.2, i32 %198, !dbg !104
  %shl.i.i.2 = shl i32 %cond.i.i.2, 2, !dbg !105
  %200 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.2, i32 %196), !dbg !106
  %201 = bitcast i32 %200 to float, !dbg !107
  %202 = tail call contract noundef float @llvm.maxnum.f32(float %195, float %201), !dbg !108
  %203 = bitcast float %202 to i32, !dbg !110
  %204 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !112
  %205 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %204) #11, !dbg !115
  %xor.i.i765.2 = xor i32 %205, 16, !dbg !116
  %206 = and i32 %205, -64, !dbg !117
  %and.i.i766.2 = add nsw i32 %206, 64, !dbg !117
  %cmp.not.i.i767.2 = icmp slt i32 %xor.i.i765.2, %and.i.i766.2, !dbg !118
  %cond.i.i768.2 = select i1 %cmp.not.i.i767.2, i32 %xor.i.i765.2, i32 %205, !dbg !119
  %shl.i.i769.2 = shl i32 %cond.i.i768.2, 2, !dbg !120
  %207 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i769.2, i32 %203), !dbg !121
  %208 = bitcast i32 %207 to float, !dbg !122
  %209 = tail call contract noundef float @llvm.maxnum.f32(float %202, float %208), !dbg !123
  %210 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.1, float %209), !dbg !125
  %sub.2 = fsub contract float %maximum.sroa.0.1.1, %210, !dbg !127
  %mul263.2 = fmul contract float %sub.2, 0x3FC7154760000000, !dbg !128
  %cmp.i.i.2 = fcmp contract olt float %mul263.2, -1.260000e+02, !dbg !129
  %cond.i.i770.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i.2 = fadd contract float %mul263.2, %cond.i.i770.2, !dbg !129
  %211 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !129
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %211, !dbg !129
  %numerator.sroa.0.0.vec.extract2355 = extractelement <4 x float> %numerator.sroa.0.1, i64 0, !dbg !239
  %numerator.sroa.0.4.vec.extract2392 = extractelement <4 x float> %numerator.sroa.0.1, i64 1, !dbg !239
  %numerator.sroa.0.8.vec.extract2429 = extractelement <4 x float> %numerator.sroa.0.1, i64 2, !dbg !239
  %numerator.sroa.0.12.vec.extract2466 = extractelement <4 x float> %numerator.sroa.0.1, i64 3, !dbg !239
  %mul280.2934 = fmul contract float %mul.i.i.2, %numerator.sroa.0.0.vec.extract2355, !dbg !132
  %mul283.2935 = fmul contract float %mul.i.i.2, %numerator.sroa.0.4.vec.extract2392, !dbg !240
  %mul286.2936 = fmul contract float %mul.i.i.2, %numerator.sroa.0.8.vec.extract2429, !dbg !241
  %mul289.2937 = fmul contract float %mul.i.i.2, %numerator.sroa.0.12.vec.extract2466, !dbg !242
  %numerator.sroa.0.0.vec.insert2357 = insertelement <4 x float> poison, float %mul280.2934, i64 0, !dbg !133
  %numerator.sroa.0.4.vec.insert2394 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2357, float %mul283.2935, i64 1, !dbg !133
  %numerator.sroa.0.8.vec.insert2431 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2394, float %mul286.2936, i64 2, !dbg !133
  %numerator.sroa.0.12.vec.insert2468 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2431, float %mul289.2937, i64 3, !dbg !133
  %numerator.sroa.98.16.vec.extract2511 = extractelement <4 x float> %numerator.sroa.98.1, i64 0, !dbg !239
  %numerator.sroa.98.20.vec.extract2548 = extractelement <4 x float> %numerator.sroa.98.1, i64 1, !dbg !239
  %numerator.sroa.98.24.vec.extract2585 = extractelement <4 x float> %numerator.sroa.98.1, i64 2, !dbg !239
  %numerator.sroa.98.28.vec.extract2622 = extractelement <4 x float> %numerator.sroa.98.1, i64 3, !dbg !239
  %mul280.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.16.vec.extract2511, !dbg !132
  %mul283.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.20.vec.extract2548, !dbg !240
  %mul286.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.24.vec.extract2585, !dbg !241
  %mul289.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.28.vec.extract2622, !dbg !242
  %numerator.sroa.98.16.vec.insert2513 = insertelement <4 x float> poison, float %mul280.1.2, i64 0, !dbg !133
  %numerator.sroa.98.20.vec.insert2550 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2513, float %mul283.1.2, i64 1, !dbg !133
  %numerator.sroa.98.24.vec.insert2587 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2550, float %mul286.1.2, i64 2, !dbg !133
  %numerator.sroa.98.28.vec.insert2624 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2587, float %mul289.1.2, i64 3, !dbg !133
  %numerator.sroa.194.32.vec.extract2667 = extractelement <4 x float> %numerator.sroa.194.1, i64 0, !dbg !239
  %numerator.sroa.194.36.vec.extract2704 = extractelement <4 x float> %numerator.sroa.194.1, i64 1, !dbg !239
  %numerator.sroa.194.40.vec.extract2741 = extractelement <4 x float> %numerator.sroa.194.1, i64 2, !dbg !239
  %numerator.sroa.194.44.vec.extract2778 = extractelement <4 x float> %numerator.sroa.194.1, i64 3, !dbg !239
  %mul280.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.32.vec.extract2667, !dbg !132
  %mul283.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.36.vec.extract2704, !dbg !240
  %mul286.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.40.vec.extract2741, !dbg !241
  %mul289.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.44.vec.extract2778, !dbg !242
  %numerator.sroa.194.32.vec.insert2669 = insertelement <4 x float> poison, float %mul280.2.2, i64 0, !dbg !133
  %numerator.sroa.194.36.vec.insert2706 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2669, float %mul283.2.2, i64 1, !dbg !133
  %numerator.sroa.194.40.vec.insert2743 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2706, float %mul286.2.2, i64 2, !dbg !133
  %numerator.sroa.194.44.vec.insert2780 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2743, float %mul289.2.2, i64 3, !dbg !133
  %numerator.sroa.290.48.vec.extract2823 = extractelement <4 x float> %numerator.sroa.290.1, i64 0, !dbg !239
  %numerator.sroa.290.52.vec.extract2860 = extractelement <4 x float> %numerator.sroa.290.1, i64 1, !dbg !239
  %numerator.sroa.290.56.vec.extract2897 = extractelement <4 x float> %numerator.sroa.290.1, i64 2, !dbg !239
  %numerator.sroa.290.60.vec.extract2934 = extractelement <4 x float> %numerator.sroa.290.1, i64 3, !dbg !239
  %mul280.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.48.vec.extract2823, !dbg !132
  %mul283.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.52.vec.extract2860, !dbg !240
  %mul286.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.56.vec.extract2897, !dbg !241
  %mul289.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.60.vec.extract2934, !dbg !242
  %numerator.sroa.290.48.vec.insert2825 = insertelement <4 x float> poison, float %mul280.3.2, i64 0, !dbg !133
  %numerator.sroa.290.52.vec.insert2862 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2825, float %mul283.3.2, i64 1, !dbg !133
  %numerator.sroa.290.56.vec.insert2899 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2862, float %mul286.3.2, i64 2, !dbg !133
  %numerator.sroa.290.60.vec.insert2936 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2899, float %mul289.3.2, i64 3, !dbg !133
  %sub313.2 = fsub contract float %spec.select3071, %210, !dbg !134
  %sub317.2 = fsub contract float %condval.0.1.2, %210, !dbg !135
  %sub321.2 = fsub contract float %condval.0.2.2, %210, !dbg !136
  %sub325.2 = fsub contract float %condval.0.3.2, %210, !dbg !137
  %mul330.2 = fmul contract float %sub313.2, 0x3FC7154760000000, !dbg !138
  %mul334.2 = fmul contract float %sub317.2, 0x3FC7154760000000, !dbg !139
  %mul338.2 = fmul contract float %sub321.2, 0x3FC7154760000000, !dbg !140
  %mul342.2 = fmul contract float %sub325.2, 0x3FC7154760000000, !dbg !141
  %add347.2 = fadd contract float %mul330.2, 8.000000e+00, !dbg !142
  %add351.2 = fadd contract float %mul334.2, 8.000000e+00, !dbg !143
  %add355.2 = fadd contract float %mul338.2, 8.000000e+00, !dbg !144
  %add359.2 = fadd contract float %mul342.2, 8.000000e+00, !dbg !145
  %cmp.i.i771.2 = fcmp contract olt float %add347.2, -1.260000e+02, !dbg !146
  %cond.i.i772.2 = select contract i1 %cmp.i.i771.2, float 6.400000e+01, float 0.000000e+00, !dbg !146
  %add.i.i773.2 = fadd contract float %add347.2, %cond.i.i772.2, !dbg !146
  %212 = tail call contract float @llvm.exp2.f32(float %add.i.i773.2), !dbg !146
  %cond2.i.i774.2 = select contract i1 %cmp.i.i771.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !146
  %mul.i.i775.2 = fmul contract float %cond2.i.i774.2, %212, !dbg !146
  %cmp.i.i776.2 = fcmp contract olt float %add351.2, -1.260000e+02, !dbg !148
  %cond.i.i777.2 = select contract i1 %cmp.i.i776.2, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i778.2 = fadd contract float %add351.2, %cond.i.i777.2, !dbg !148
  %213 = tail call contract float @llvm.exp2.f32(float %add.i.i778.2), !dbg !148
  %cond2.i.i779.2 = select contract i1 %cmp.i.i776.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i780.2 = fmul contract float %cond2.i.i779.2, %213, !dbg !148
  %cmp.i.i781.2 = fcmp contract olt float %add355.2, -1.260000e+02, !dbg !150
  %cond.i.i782.2 = select contract i1 %cmp.i.i781.2, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i783.2 = fadd contract float %add355.2, %cond.i.i782.2, !dbg !150
  %214 = tail call contract float @llvm.exp2.f32(float %add.i.i783.2), !dbg !150
  %cond2.i.i784.2 = select contract i1 %cmp.i.i781.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i785.2 = fmul contract float %cond2.i.i784.2, %214, !dbg !150
  %cmp.i.i786.2 = fcmp contract olt float %add359.2, -1.260000e+02, !dbg !152
  %cond.i.i787.2 = select contract i1 %cmp.i.i786.2, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i788.2 = fadd contract float %add359.2, %cond.i.i787.2, !dbg !152
  %215 = tail call contract float @llvm.exp2.f32(float %add.i.i788.2), !dbg !152
  %cond2.i.i789.2 = select contract i1 %cmp.i.i786.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i790.2 = fmul contract float %cond2.i.i789.2, %215, !dbg !152
  %216 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !154, !noalias !162
  %217 = fptrunc float %mul.i.i775.2 to half, !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %216), !dbg !154, !noalias !162
  %218 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !167, !noalias !162
  %219 = fptrunc float %mul.i.i780.2 to half, !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %218), !dbg !167, !noalias !162
  %220 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !173
  %221 = fptrunc float %mul.i.i785.2 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %220), !dbg !169, !noalias !173
  %222 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !173
  %223 = fptrunc float %mul.i.i790.2 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %222), !dbg !178, !noalias !173
  %224 = insertelement <4 x half> poison, half %217, i64 0, !dbg !180
  %225 = insertelement <4 x half> %224, half %219, i64 1, !dbg !180
  %226 = insertelement <4 x half> %225, half %221, i64 2, !dbg !180
  %227 = insertelement <4 x half> %226, half %223, i64 3, !dbg !180
  %conv.i.i.2939 = fpext half %217 to float, !dbg !181
  %add393.2940 = fadd contract float %conv.i.i.2939, 0.000000e+00, !dbg !186
  %conv.i.i.1.2 = fpext half %219 to float, !dbg !181
  %add393.1.2 = fadd contract float %add393.2940, %conv.i.i.1.2, !dbg !186
  %conv.i.i.2.2 = fpext half %221 to float, !dbg !181
  %add393.2.2 = fadd contract float %add393.1.2, %conv.i.i.2.2, !dbg !186
  %conv.i.i.3.2 = fpext half %223 to float, !dbg !181
  %add393.3.2 = fadd contract float %add393.2.2, %conv.i.i.3.2, !dbg !186
  %228 = bitcast float %add393.3.2 to i32, !dbg !187
  %229 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !189
  %230 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %229) #11, !dbg !192
  %xor.i.i796.2 = xor i32 %230, 32, !dbg !193
  %231 = and i32 %230, -64, !dbg !194
  %and.i.i797.2 = add nsw i32 %231, 64, !dbg !194
  %cmp.not.i.i798.2 = icmp slt i32 %xor.i.i796.2, %and.i.i797.2, !dbg !195
  %cond.i.i799.2 = select i1 %cmp.not.i.i798.2, i32 %xor.i.i796.2, i32 %230, !dbg !196
  %shl.i.i800.2 = shl i32 %cond.i.i799.2, 2, !dbg !197
  %232 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i800.2, i32 %228), !dbg !198
  %233 = bitcast i32 %232 to float, !dbg !199
  %add401.2 = fadd contract float %add393.3.2, %233, !dbg !200
  %234 = bitcast float %add401.2 to i32, !dbg !201
  %235 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !203
  %236 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %235) #11, !dbg !206
  %xor.i.i801.2 = xor i32 %236, 16, !dbg !207
  %237 = and i32 %236, -64, !dbg !208
  %and.i.i802.2 = add nsw i32 %237, 64, !dbg !208
  %cmp.not.i.i803.2 = icmp slt i32 %xor.i.i801.2, %and.i.i802.2, !dbg !209
  %cond.i.i804.2 = select i1 %cmp.not.i.i803.2, i32 %xor.i.i801.2, i32 %236, !dbg !210
  %shl.i.i805.2 = shl i32 %cond.i.i804.2, 2, !dbg !211
  %238 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i805.2, i32 %234), !dbg !212
  %239 = bitcast i32 %238 to float, !dbg !213
  %add406.2 = fadd contract float %add401.2, %239, !dbg !214
  fence syncscope("warp") release, !dbg !215
  tail call void @llvm.mxc.barrier.warp(), !dbg !218
  fence syncscope("warp") acquire, !dbg !219
  %240 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add426, !dbg !220
  %241 = getelementptr inbounds i8, ptr addrspace(4) %240, i64 %.idx.2, !dbg !220
  %242 = load i64, ptr addrspace(4) %241, align 8, !dbg !221
  %add.ptr435.1.2 = getelementptr inbounds i8, ptr addrspace(4) %241, i64 128, !dbg !220
  %243 = load i64, ptr addrspace(4) %add.ptr435.1.2, align 8, !dbg !221
  %add.ptr435.2.2 = getelementptr inbounds i8, ptr addrspace(4) %241, i64 256, !dbg !220
  %244 = load i64, ptr addrspace(4) %add.ptr435.2.2, align 8, !dbg !221
  %add.ptr435.3.2 = getelementptr inbounds i8, ptr addrspace(4) %241, i64 384, !dbg !220
  %245 = load i64, ptr addrspace(4) %add.ptr435.3.2, align 8, !dbg !221
  %mul300.2 = fmul contract float %denominator.sroa.0.1.1, %mul.i.i.2, !dbg !243
  %246 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul465, !dbg !222
  %add.ptr477.idx.2948 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.2949 = getelementptr inbounds i8, ptr addrspace(3) %246, i32 %add.ptr477.idx.2948, !dbg !222
  %v_column.sroa.130.0.insert.ext1464 = shl i64 %245, 48, !dbg !223
  %v_column.sroa.98.0.insert.ext1309 = shl i64 %244, 32, !dbg !223
  %v_column.sroa.98.0.insert.shift1310 = and i64 %v_column.sroa.98.0.insert.ext1309, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1312 = or disjoint i64 %v_column.sroa.130.0.insert.ext1464, %v_column.sroa.98.0.insert.shift1310, !dbg !223
  %v_column.sroa.66.0.insert.ext1154 = shl i64 %243, 16, !dbg !223
  %v_column.sroa.66.0.insert.shift1155 = and i64 %v_column.sroa.66.0.insert.ext1154, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1157 = or disjoint i64 %v_column.sroa.98.0.insert.insert1312, %v_column.sroa.66.0.insert.shift1155, !dbg !223
  %v_column.sroa.0.0.insert.ext1023 = and i64 %242, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert1025 = or disjoint i64 %v_column.sroa.66.0.insert.insert1157, %v_column.sroa.0.0.insert.ext1023, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1025, ptr addrspace(3) %add.ptr477.2949, align 8, !dbg !223
  %v_fetch.sroa.0.2.extract.shift1661 = lshr i64 %242, 16, !dbg !224
  %add466.1.2 = or disjoint i32 %mul465, 256, !dbg !225
  %247 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.1.2, !dbg !222
  %xor473.1.2 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.1.2 = xor i32 %xor473.1.2, 8, !dbg !222
  %add.ptr477.1.2 = getelementptr inbounds i8, ptr addrspace(3) %247, i32 %add.ptr477.idx.1.2, !dbg !222
  %248 = shl i64 %245, 32, !dbg !223
  %v_column.sroa.130.0.insert.ext1469 = and i64 %248, -281474976710656, !dbg !223
  %249 = shl i64 %244, 16, !dbg !223
  %v_column.sroa.98.0.insert.shift1315 = and i64 %249, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1317 = or disjoint i64 %v_column.sroa.130.0.insert.ext1469, %v_column.sroa.98.0.insert.shift1315, !dbg !223
  %v_column.sroa.66.0.insert.ext1159 = and i64 %243, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1162 = or disjoint i64 %v_column.sroa.98.0.insert.insert1317, %v_column.sroa.66.0.insert.ext1159, !dbg !223
  %v_column.sroa.0.0.insert.ext1027 = and i64 %v_fetch.sroa.0.2.extract.shift1661, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert1029 = or disjoint i64 %v_column.sroa.66.0.insert.insert1162, %v_column.sroa.0.0.insert.ext1027, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1029, ptr addrspace(3) %add.ptr477.1.2, align 8, !dbg !223
  %v_fetch.sroa.0.4.extract.shift1682 = lshr i64 %242, 32, !dbg !224
  %add466.2.2 = or disjoint i32 %mul465, 512, !dbg !225
  %250 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.2.2, !dbg !222
  %xor473.2.2 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.2.2 = xor i32 %xor473.2.2, 16, !dbg !222
  %add.ptr477.2.2 = getelementptr inbounds i8, ptr addrspace(3) %250, i32 %add.ptr477.idx.2.2, !dbg !222
  %251 = shl i64 %245, 16, !dbg !223
  %v_column.sroa.130.0.insert.ext1474 = and i64 %251, -281474976710656, !dbg !223
  %v_column.sroa.98.0.insert.ext1319 = and i64 %244, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1322 = or disjoint i64 %v_column.sroa.130.0.insert.ext1474, %v_column.sroa.98.0.insert.ext1319, !dbg !223
  %252 = lshr i64 %243, 16, !dbg !223
  %v_column.sroa.66.0.insert.shift1165 = and i64 %252, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1167 = or disjoint i64 %v_column.sroa.98.0.insert.insert1322, %v_column.sroa.66.0.insert.shift1165, !dbg !223
  %v_column.sroa.0.0.insert.ext1031 = and i64 %v_fetch.sroa.0.4.extract.shift1682, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert1033 = or disjoint i64 %v_column.sroa.66.0.insert.insert1167, %v_column.sroa.0.0.insert.ext1031, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1033, ptr addrspace(3) %add.ptr477.2.2, align 8, !dbg !223
  %v_fetch.sroa.0.6.extract.shift1703 = lshr i64 %242, 48, !dbg !224
  %v_fetch.sroa.122.30.extract.shift1934 = and i64 %245, -281474976710656, !dbg !223
  %add466.3.2 = or disjoint i32 %mul465, 768, !dbg !225
  %253 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.3.2, !dbg !222
  %xor473.3.2 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.3.2 = xor i32 %xor473.3.2, 24, !dbg !222
  %add.ptr477.3.2 = getelementptr inbounds i8, ptr addrspace(3) %253, i32 %add.ptr477.idx.3.2, !dbg !222
  %254 = lshr i64 %244, 16, !dbg !223
  %v_column.sroa.98.0.insert.shift1325 = and i64 %254, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1327 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1934, %v_column.sroa.98.0.insert.shift1325, !dbg !223
  %255 = lshr i64 %243, 32, !dbg !223
  %v_column.sroa.66.0.insert.shift1170 = and i64 %255, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1172 = or disjoint i64 %v_column.sroa.98.0.insert.insert1327, %v_column.sroa.66.0.insert.shift1170, !dbg !223
  %v_column.sroa.0.0.insert.insert1037 = or disjoint i64 %v_column.sroa.66.0.insert.insert1172, %v_fetch.sroa.0.6.extract.shift1703, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1037, ptr addrspace(3) %add.ptr477.3.2, align 8, !dbg !223
  fence syncscope("warp") release, !dbg !226
  tail call void @llvm.mxc.barrier.warp(), !dbg !229
  fence syncscope("warp") acquire, !dbg !230
  %add494.2951 = or disjoint i32 %mul487, %mul493, !dbg !231
  %256 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.2951, !dbg !232
  %add.ptr504.idx.2952 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.2953 = getelementptr inbounds i8, ptr addrspace(3) %256, i32 %add.ptr504.idx.2952, !dbg !232
  %257 = load <4 x half>, ptr addrspace(3) %add.ptr504.2953, align 8, !dbg !233
  %add489.1.2 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.1.2 = or disjoint i32 %add489.1.2, 64, !dbg !231
  %258 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.1.2, !dbg !232
  %xor500.1.2 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.1.2 = xor i32 %xor500.1.2, 8, !dbg !232
  %add.ptr504.1.2 = getelementptr inbounds i8, ptr addrspace(3) %258, i32 %add.ptr504.idx.1.2, !dbg !232
  %259 = load <4 x half>, ptr addrspace(3) %add.ptr504.1.2, align 8, !dbg !233
  %add489.2.2 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.2.2 = or disjoint i32 %add489.2.2, 128, !dbg !231
  %260 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.2.2, !dbg !232
  %xor500.2.2 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.2.2 = xor i32 %xor500.2.2, 16, !dbg !232
  %add.ptr504.2.2 = getelementptr inbounds i8, ptr addrspace(3) %260, i32 %add.ptr504.idx.2.2, !dbg !232
  %261 = load <4 x half>, ptr addrspace(3) %add.ptr504.2.2, align 8, !dbg !233
  %add489.3.2 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.3.2 = or disjoint i32 %add489.3.2, 192, !dbg !231
  %262 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.3.2, !dbg !232
  %xor500.3.2 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.3.2 = xor i32 %xor500.3.2, 24, !dbg !232
  %add.ptr504.3.2 = getelementptr inbounds i8, ptr addrspace(3) %262, i32 %add.ptr504.idx.3.2, !dbg !232
  %263 = load <4 x half>, ptr addrspace(3) %add.ptr504.3.2, align 8, !dbg !233
  %264 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %257, <4 x half> %227, <4 x float> %numerator.sroa.0.12.vec.insert2468), !dbg !234
  %265 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %259, <4 x half> %227, <4 x float> %numerator.sroa.98.28.vec.insert2624), !dbg !234
  %266 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %261, <4 x half> %227, <4 x float> %numerator.sroa.194.44.vec.insert2780), !dbg !234
  %267 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %263, <4 x half> %227, <4 x float> %numerator.sroa.290.60.vec.insert2936), !dbg !234
  %add410.2 = fadd contract float %mul300.2, %add406.2, !dbg !235
  br label %if.end530.2, !dbg !236

if.end530.2:                                      ; preds = %if.then.2, %if.end530.1
  %numerator.sroa.290.2 = phi <4 x float> [ %numerator.sroa.290.1, %if.end530.1 ], [ %267, %if.then.2 ], !dbg !237
  %numerator.sroa.194.2 = phi <4 x float> [ %numerator.sroa.194.1, %if.end530.1 ], [ %266, %if.then.2 ], !dbg !237
  %numerator.sroa.98.2 = phi <4 x float> [ %numerator.sroa.98.1, %if.end530.1 ], [ %265, %if.then.2 ], !dbg !237
  %numerator.sroa.0.2 = phi <4 x float> [ %numerator.sroa.0.1, %if.end530.1 ], [ %264, %if.then.2 ], !dbg !237
  %maximum.sroa.0.1.2 = phi float [ %maximum.sroa.0.1.1, %if.end530.1 ], [ %210, %if.then.2 ], !dbg !237
  %denominator.sroa.0.1.2 = phi float [ %denominator.sroa.0.1.1, %if.end530.1 ], [ %add410.2, %if.then.2 ], !dbg !237
  %268 = or disjoint i64 %19, 3, !dbg !238
  %arrayidx104.3 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %268, !dbg !65
  %269 = load i32, ptr addrspace(1) %arrayidx104.3, align 4, !dbg !65, !tbaa !30
  %mul105.3 = shl nsw i32 %269, 4, !dbg !66
  %cmp106.3 = icmp slt i32 %269, 0, !dbg !67
  %cmp108.not.3 = icmp sgt i32 %mul105.3, %1
  %or.cond.3 = select i1 %cmp106.3, i1 true, i1 %cmp108.not.3, !dbg !68
  br i1 %or.cond.3, label %if.end530.3, label %if.then.3, !dbg !68

if.then.3:                                        ; preds = %if.end530.2
  fence syncscope("warp") release, !dbg !69
  tail call void @llvm.mxc.barrier.warp(), !dbg !72
  fence syncscope("warp") acquire, !dbg !73
  %conv118.3 = zext nneg i32 %mul105.3 to i64
  %.idx.3 = shl nuw nsw i64 %conv118.3, 7
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep848, i64 %.idx.3, !dbg !74
  %.idx855.3 = shl nuw nsw i64 %conv, 17, !dbg !75
  %270 = getelementptr inbounds i8, ptr addrspace(4) %gep.3, i64 %.idx855.3, !dbg !75
  %qk_fetch.sroa.0.0.copyload3019 = load i64, ptr addrspace(4) %270, align 16, !dbg !76
  %qk_fetch.sroa.38.0..sroa_idx3038 = getelementptr inbounds i8, ptr addrspace(4) %270, i64 8, !dbg !76
  %qk_fetch.sroa.38.0.copyload3039 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx3038, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3019, ptr addrspace(3) %add.ptr39, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3039, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !77
  %gep831.1.3 = getelementptr inbounds i8, ptr addrspace(4) %270, i64 1024, !dbg !75
  %qk_fetch.sroa.0.0.copyload3020 = load i64, ptr addrspace(4) %gep831.1.3, align 16, !dbg !76
  %qk_fetch.sroa.38.0.gep831.1.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %270, i64 1032, !dbg !76
  %qk_fetch.sroa.38.0.copyload3040 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep831.1.3.sroa_idx, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3020, ptr addrspace(3) %add.ptr39.1862, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3040, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !77
  fence syncscope("warp") release, !dbg !78
  tail call void @llvm.mxc.barrier.warp(), !dbg !81
  fence syncscope("warp") acquire, !dbg !82
  %k_local.sroa.0.0.copyload.3959 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !83
  %271 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3959, <4 x half> %9, <4 x float> zeroinitializer), !dbg !84
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !83
  %272 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %10, <4 x float> %271), !dbg !84
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !83
  %273 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %11, <4 x float> %272), !dbg !84
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !83
  %274 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %12, <4 x float> %273), !dbg !84
  %add218.3 = add nuw nsw i32 %mul105.3, %mul217
  %cmp221.not.3960 = icmp sgt i32 %add218.3, %1, !dbg !85
  %scores.sroa.0.0.vec.extract2061 = extractelement <4 x float> %274, i64 0
  %spec.select3072 = select i1 %cmp221.not.3960, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2061, !dbg !86
  %cmp221.not.1.3.not = icmp slt i32 %add218.3, %1, !dbg !85
  %scores.sroa.0.4.vec.extract2156 = extractelement <4 x float> %274, i64 1, !dbg !86
  %condval.0.1.3 = select i1 %cmp221.not.1.3.not, float %scores.sroa.0.4.vec.extract2156, float 0xFFF0000000000000, !dbg !86
  %add219.2.3 = or disjoint i32 %add218.3, 2, !dbg !87
  %cmp221.not.2.3 = icmp sgt i32 %add219.2.3, %1, !dbg !85
  %scores.sroa.0.8.vec.extract2233 = extractelement <4 x float> %274, i64 2, !dbg !86
  %condval.0.2.3 = select i1 %cmp221.not.2.3, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2233, !dbg !86
  %add219.3.3 = or disjoint i32 %add218.3, 3, !dbg !87
  %cmp221.not.3.3 = icmp sgt i32 %add219.3.3, %1, !dbg !85
  %scores.sroa.0.12.vec.extract2310 = extractelement <4 x float> %274, i64 3, !dbg !86
  %condval.0.3.3 = select i1 %cmp221.not.3.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2310, !dbg !86
  %275 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3072, float 0xFFF0000000000000), !dbg !88
  %276 = tail call contract noundef float @llvm.maxnum.f32(float %275, float %condval.0.1.3), !dbg !88
  %277 = tail call contract noundef float @llvm.maxnum.f32(float %276, float %condval.0.2.3), !dbg !88
  %278 = tail call contract noundef float @llvm.maxnum.f32(float %277, float %condval.0.3.3), !dbg !88
  %279 = bitcast float %278 to i32, !dbg !92
  %280 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !95
  %281 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %280) #11, !dbg !100
  %xor.i.i.3 = xor i32 %281, 32, !dbg !101
  %282 = and i32 %281, -64, !dbg !102
  %and.i.i.3 = add nsw i32 %282, 64, !dbg !102
  %cmp.not.i.i.3 = icmp slt i32 %xor.i.i.3, %and.i.i.3, !dbg !103
  %cond.i.i.3 = select i1 %cmp.not.i.i.3, i32 %xor.i.i.3, i32 %281, !dbg !104
  %shl.i.i.3 = shl i32 %cond.i.i.3, 2, !dbg !105
  %283 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.3, i32 %279), !dbg !106
  %284 = bitcast i32 %283 to float, !dbg !107
  %285 = tail call contract noundef float @llvm.maxnum.f32(float %278, float %284), !dbg !108
  %286 = bitcast float %285 to i32, !dbg !110
  %287 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !112
  %288 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %287) #11, !dbg !115
  %xor.i.i765.3 = xor i32 %288, 16, !dbg !116
  %289 = and i32 %288, -64, !dbg !117
  %and.i.i766.3 = add nsw i32 %289, 64, !dbg !117
  %cmp.not.i.i767.3 = icmp slt i32 %xor.i.i765.3, %and.i.i766.3, !dbg !118
  %cond.i.i768.3 = select i1 %cmp.not.i.i767.3, i32 %xor.i.i765.3, i32 %288, !dbg !119
  %shl.i.i769.3 = shl i32 %cond.i.i768.3, 2, !dbg !120
  %290 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i769.3, i32 %286), !dbg !121
  %291 = bitcast i32 %290 to float, !dbg !122
  %292 = tail call contract noundef float @llvm.maxnum.f32(float %285, float %291), !dbg !123
  %293 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.2, float %292), !dbg !125
  %sub.3 = fsub contract float %maximum.sroa.0.1.2, %293, !dbg !127
  %mul263.3 = fmul contract float %sub.3, 0x3FC7154760000000, !dbg !128
  %cmp.i.i.3 = fcmp contract olt float %mul263.3, -1.260000e+02, !dbg !129
  %cond.i.i770.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i.3 = fadd contract float %mul263.3, %cond.i.i770.3, !dbg !129
  %294 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !129
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %294, !dbg !129
  %numerator.sroa.0.0.vec.extract2359 = extractelement <4 x float> %numerator.sroa.0.2, i64 0, !dbg !239
  %numerator.sroa.0.4.vec.extract2396 = extractelement <4 x float> %numerator.sroa.0.2, i64 1, !dbg !239
  %numerator.sroa.0.8.vec.extract2433 = extractelement <4 x float> %numerator.sroa.0.2, i64 2, !dbg !239
  %numerator.sroa.0.12.vec.extract2470 = extractelement <4 x float> %numerator.sroa.0.2, i64 3, !dbg !239
  %mul280.3971 = fmul contract float %mul.i.i.3, %numerator.sroa.0.0.vec.extract2359, !dbg !132
  %mul283.3972 = fmul contract float %mul.i.i.3, %numerator.sroa.0.4.vec.extract2396, !dbg !240
  %mul286.3973 = fmul contract float %mul.i.i.3, %numerator.sroa.0.8.vec.extract2433, !dbg !241
  %mul289.3974 = fmul contract float %mul.i.i.3, %numerator.sroa.0.12.vec.extract2470, !dbg !242
  %numerator.sroa.0.0.vec.insert2361 = insertelement <4 x float> poison, float %mul280.3971, i64 0, !dbg !133
  %numerator.sroa.0.4.vec.insert2398 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2361, float %mul283.3972, i64 1, !dbg !133
  %numerator.sroa.0.8.vec.insert2435 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2398, float %mul286.3973, i64 2, !dbg !133
  %numerator.sroa.0.12.vec.insert2472 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2435, float %mul289.3974, i64 3, !dbg !133
  %numerator.sroa.98.16.vec.extract2515 = extractelement <4 x float> %numerator.sroa.98.2, i64 0, !dbg !239
  %numerator.sroa.98.20.vec.extract2552 = extractelement <4 x float> %numerator.sroa.98.2, i64 1, !dbg !239
  %numerator.sroa.98.24.vec.extract2589 = extractelement <4 x float> %numerator.sroa.98.2, i64 2, !dbg !239
  %numerator.sroa.98.28.vec.extract2626 = extractelement <4 x float> %numerator.sroa.98.2, i64 3, !dbg !239
  %mul280.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.16.vec.extract2515, !dbg !132
  %mul283.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.20.vec.extract2552, !dbg !240
  %mul286.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.24.vec.extract2589, !dbg !241
  %mul289.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.28.vec.extract2626, !dbg !242
  %numerator.sroa.98.16.vec.insert2517 = insertelement <4 x float> poison, float %mul280.1.3, i64 0, !dbg !133
  %numerator.sroa.98.20.vec.insert2554 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2517, float %mul283.1.3, i64 1, !dbg !133
  %numerator.sroa.98.24.vec.insert2591 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2554, float %mul286.1.3, i64 2, !dbg !133
  %numerator.sroa.98.28.vec.insert2628 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2591, float %mul289.1.3, i64 3, !dbg !133
  %numerator.sroa.194.32.vec.extract2671 = extractelement <4 x float> %numerator.sroa.194.2, i64 0, !dbg !239
  %numerator.sroa.194.36.vec.extract2708 = extractelement <4 x float> %numerator.sroa.194.2, i64 1, !dbg !239
  %numerator.sroa.194.40.vec.extract2745 = extractelement <4 x float> %numerator.sroa.194.2, i64 2, !dbg !239
  %numerator.sroa.194.44.vec.extract2782 = extractelement <4 x float> %numerator.sroa.194.2, i64 3, !dbg !239
  %mul280.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.32.vec.extract2671, !dbg !132
  %mul283.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.36.vec.extract2708, !dbg !240
  %mul286.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.40.vec.extract2745, !dbg !241
  %mul289.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.44.vec.extract2782, !dbg !242
  %numerator.sroa.194.32.vec.insert2673 = insertelement <4 x float> poison, float %mul280.2.3, i64 0, !dbg !133
  %numerator.sroa.194.36.vec.insert2710 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2673, float %mul283.2.3, i64 1, !dbg !133
  %numerator.sroa.194.40.vec.insert2747 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2710, float %mul286.2.3, i64 2, !dbg !133
  %numerator.sroa.194.44.vec.insert2784 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2747, float %mul289.2.3, i64 3, !dbg !133
  %numerator.sroa.290.48.vec.extract2827 = extractelement <4 x float> %numerator.sroa.290.2, i64 0, !dbg !239
  %numerator.sroa.290.52.vec.extract2864 = extractelement <4 x float> %numerator.sroa.290.2, i64 1, !dbg !239
  %numerator.sroa.290.56.vec.extract2901 = extractelement <4 x float> %numerator.sroa.290.2, i64 2, !dbg !239
  %numerator.sroa.290.60.vec.extract2938 = extractelement <4 x float> %numerator.sroa.290.2, i64 3, !dbg !239
  %mul280.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.48.vec.extract2827, !dbg !132
  %mul283.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.52.vec.extract2864, !dbg !240
  %mul286.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.56.vec.extract2901, !dbg !241
  %mul289.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.60.vec.extract2938, !dbg !242
  %numerator.sroa.290.48.vec.insert2829 = insertelement <4 x float> poison, float %mul280.3.3, i64 0, !dbg !133
  %numerator.sroa.290.52.vec.insert2866 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2829, float %mul283.3.3, i64 1, !dbg !133
  %numerator.sroa.290.56.vec.insert2903 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2866, float %mul286.3.3, i64 2, !dbg !133
  %numerator.sroa.290.60.vec.insert2940 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2903, float %mul289.3.3, i64 3, !dbg !133
  %sub313.3 = fsub contract float %spec.select3072, %293, !dbg !134
  %sub317.3 = fsub contract float %condval.0.1.3, %293, !dbg !135
  %sub321.3 = fsub contract float %condval.0.2.3, %293, !dbg !136
  %sub325.3 = fsub contract float %condval.0.3.3, %293, !dbg !137
  %mul330.3 = fmul contract float %sub313.3, 0x3FC7154760000000, !dbg !138
  %mul334.3 = fmul contract float %sub317.3, 0x3FC7154760000000, !dbg !139
  %mul338.3 = fmul contract float %sub321.3, 0x3FC7154760000000, !dbg !140
  %mul342.3 = fmul contract float %sub325.3, 0x3FC7154760000000, !dbg !141
  %add347.3 = fadd contract float %mul330.3, 8.000000e+00, !dbg !142
  %add351.3 = fadd contract float %mul334.3, 8.000000e+00, !dbg !143
  %add355.3 = fadd contract float %mul338.3, 8.000000e+00, !dbg !144
  %add359.3 = fadd contract float %mul342.3, 8.000000e+00, !dbg !145
  %cmp.i.i771.3 = fcmp contract olt float %add347.3, -1.260000e+02, !dbg !146
  %cond.i.i772.3 = select contract i1 %cmp.i.i771.3, float 6.400000e+01, float 0.000000e+00, !dbg !146
  %add.i.i773.3 = fadd contract float %add347.3, %cond.i.i772.3, !dbg !146
  %295 = tail call contract float @llvm.exp2.f32(float %add.i.i773.3), !dbg !146
  %cond2.i.i774.3 = select contract i1 %cmp.i.i771.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !146
  %mul.i.i775.3 = fmul contract float %cond2.i.i774.3, %295, !dbg !146
  %cmp.i.i776.3 = fcmp contract olt float %add351.3, -1.260000e+02, !dbg !148
  %cond.i.i777.3 = select contract i1 %cmp.i.i776.3, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i778.3 = fadd contract float %add351.3, %cond.i.i777.3, !dbg !148
  %296 = tail call contract float @llvm.exp2.f32(float %add.i.i778.3), !dbg !148
  %cond2.i.i779.3 = select contract i1 %cmp.i.i776.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i780.3 = fmul contract float %cond2.i.i779.3, %296, !dbg !148
  %cmp.i.i781.3 = fcmp contract olt float %add355.3, -1.260000e+02, !dbg !150
  %cond.i.i782.3 = select contract i1 %cmp.i.i781.3, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i783.3 = fadd contract float %add355.3, %cond.i.i782.3, !dbg !150
  %297 = tail call contract float @llvm.exp2.f32(float %add.i.i783.3), !dbg !150
  %cond2.i.i784.3 = select contract i1 %cmp.i.i781.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i785.3 = fmul contract float %cond2.i.i784.3, %297, !dbg !150
  %cmp.i.i786.3 = fcmp contract olt float %add359.3, -1.260000e+02, !dbg !152
  %cond.i.i787.3 = select contract i1 %cmp.i.i786.3, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i788.3 = fadd contract float %add359.3, %cond.i.i787.3, !dbg !152
  %298 = tail call contract float @llvm.exp2.f32(float %add.i.i788.3), !dbg !152
  %cond2.i.i789.3 = select contract i1 %cmp.i.i786.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i790.3 = fmul contract float %cond2.i.i789.3, %298, !dbg !152
  %299 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !154, !noalias !162
  %300 = fptrunc float %mul.i.i775.3 to half, !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %299), !dbg !154, !noalias !162
  %301 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !167, !noalias !162
  %302 = fptrunc float %mul.i.i780.3 to half, !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %301), !dbg !167, !noalias !162
  %303 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !173
  %304 = fptrunc float %mul.i.i785.3 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %303), !dbg !169, !noalias !173
  %305 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !173
  %306 = fptrunc float %mul.i.i790.3 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %305), !dbg !178, !noalias !173
  %307 = insertelement <4 x half> poison, half %300, i64 0, !dbg !180
  %308 = insertelement <4 x half> %307, half %302, i64 1, !dbg !180
  %309 = insertelement <4 x half> %308, half %304, i64 2, !dbg !180
  %310 = insertelement <4 x half> %309, half %306, i64 3, !dbg !180
  %conv.i.i.3976 = fpext half %300 to float, !dbg !181
  %add393.3977 = fadd contract float %conv.i.i.3976, 0.000000e+00, !dbg !186
  %conv.i.i.1.3 = fpext half %302 to float, !dbg !181
  %add393.1.3 = fadd contract float %add393.3977, %conv.i.i.1.3, !dbg !186
  %conv.i.i.2.3 = fpext half %304 to float, !dbg !181
  %add393.2.3 = fadd contract float %add393.1.3, %conv.i.i.2.3, !dbg !186
  %conv.i.i.3.3 = fpext half %306 to float, !dbg !181
  %add393.3.3 = fadd contract float %add393.2.3, %conv.i.i.3.3, !dbg !186
  %311 = bitcast float %add393.3.3 to i32, !dbg !187
  %312 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !189
  %313 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %312) #11, !dbg !192
  %xor.i.i796.3 = xor i32 %313, 32, !dbg !193
  %314 = and i32 %313, -64, !dbg !194
  %and.i.i797.3 = add nsw i32 %314, 64, !dbg !194
  %cmp.not.i.i798.3 = icmp slt i32 %xor.i.i796.3, %and.i.i797.3, !dbg !195
  %cond.i.i799.3 = select i1 %cmp.not.i.i798.3, i32 %xor.i.i796.3, i32 %313, !dbg !196
  %shl.i.i800.3 = shl i32 %cond.i.i799.3, 2, !dbg !197
  %315 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i800.3, i32 %311), !dbg !198
  %316 = bitcast i32 %315 to float, !dbg !199
  %add401.3 = fadd contract float %add393.3.3, %316, !dbg !200
  %317 = bitcast float %add401.3 to i32, !dbg !201
  %318 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !203
  %319 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %318) #11, !dbg !206
  %xor.i.i801.3 = xor i32 %319, 16, !dbg !207
  %320 = and i32 %319, -64, !dbg !208
  %and.i.i802.3 = add nsw i32 %320, 64, !dbg !208
  %cmp.not.i.i803.3 = icmp slt i32 %xor.i.i801.3, %and.i.i802.3, !dbg !209
  %cond.i.i804.3 = select i1 %cmp.not.i.i803.3, i32 %xor.i.i801.3, i32 %319, !dbg !210
  %shl.i.i805.3 = shl i32 %cond.i.i804.3, 2, !dbg !211
  %321 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i805.3, i32 %317), !dbg !212
  %322 = bitcast i32 %321 to float, !dbg !213
  %add406.3 = fadd contract float %add401.3, %322, !dbg !214
  fence syncscope("warp") release, !dbg !215
  tail call void @llvm.mxc.barrier.warp(), !dbg !218
  fence syncscope("warp") acquire, !dbg !219
  %323 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add426, !dbg !220
  %324 = getelementptr inbounds i8, ptr addrspace(4) %323, i64 %.idx.3, !dbg !220
  %325 = load i64, ptr addrspace(4) %324, align 8, !dbg !221
  %add.ptr435.1.3 = getelementptr inbounds i8, ptr addrspace(4) %324, i64 128, !dbg !220
  %326 = load i64, ptr addrspace(4) %add.ptr435.1.3, align 8, !dbg !221
  %add.ptr435.2.3 = getelementptr inbounds i8, ptr addrspace(4) %324, i64 256, !dbg !220
  %327 = load i64, ptr addrspace(4) %add.ptr435.2.3, align 8, !dbg !221
  %add.ptr435.3.3 = getelementptr inbounds i8, ptr addrspace(4) %324, i64 384, !dbg !220
  %328 = load i64, ptr addrspace(4) %add.ptr435.3.3, align 8, !dbg !221
  %mul300.3 = fmul contract float %denominator.sroa.0.1.2, %mul.i.i.3, !dbg !243
  %329 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul465, !dbg !222
  %add.ptr477.idx.3985 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.3986 = getelementptr inbounds i8, ptr addrspace(3) %329, i32 %add.ptr477.idx.3985, !dbg !222
  %v_column.sroa.130.0.insert.ext1484 = shl i64 %328, 48, !dbg !223
  %v_column.sroa.98.0.insert.ext1329 = shl i64 %327, 32, !dbg !223
  %v_column.sroa.98.0.insert.shift1330 = and i64 %v_column.sroa.98.0.insert.ext1329, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1332 = or disjoint i64 %v_column.sroa.130.0.insert.ext1484, %v_column.sroa.98.0.insert.shift1330, !dbg !223
  %v_column.sroa.66.0.insert.ext1174 = shl i64 %326, 16, !dbg !223
  %v_column.sroa.66.0.insert.shift1175 = and i64 %v_column.sroa.66.0.insert.ext1174, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1177 = or disjoint i64 %v_column.sroa.98.0.insert.insert1332, %v_column.sroa.66.0.insert.shift1175, !dbg !223
  %v_column.sroa.0.0.insert.ext1039 = and i64 %325, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert1041 = or disjoint i64 %v_column.sroa.66.0.insert.insert1177, %v_column.sroa.0.0.insert.ext1039, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1041, ptr addrspace(3) %add.ptr477.3986, align 8, !dbg !223
  %v_fetch.sroa.0.2.extract.shift1664 = lshr i64 %325, 16, !dbg !224
  %add466.1.3 = or disjoint i32 %mul465, 256, !dbg !225
  %330 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.1.3, !dbg !222
  %xor473.1.3 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.1.3 = xor i32 %xor473.1.3, 8, !dbg !222
  %add.ptr477.1.3 = getelementptr inbounds i8, ptr addrspace(3) %330, i32 %add.ptr477.idx.1.3, !dbg !222
  %331 = shl i64 %328, 32, !dbg !223
  %v_column.sroa.130.0.insert.ext1489 = and i64 %331, -281474976710656, !dbg !223
  %332 = shl i64 %327, 16, !dbg !223
  %v_column.sroa.98.0.insert.shift1335 = and i64 %332, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1337 = or disjoint i64 %v_column.sroa.130.0.insert.ext1489, %v_column.sroa.98.0.insert.shift1335, !dbg !223
  %v_column.sroa.66.0.insert.ext1179 = and i64 %326, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1182 = or disjoint i64 %v_column.sroa.98.0.insert.insert1337, %v_column.sroa.66.0.insert.ext1179, !dbg !223
  %v_column.sroa.0.0.insert.ext1043 = and i64 %v_fetch.sroa.0.2.extract.shift1664, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert1045 = or disjoint i64 %v_column.sroa.66.0.insert.insert1182, %v_column.sroa.0.0.insert.ext1043, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1045, ptr addrspace(3) %add.ptr477.1.3, align 8, !dbg !223
  %v_fetch.sroa.0.4.extract.shift1685 = lshr i64 %325, 32, !dbg !224
  %add466.2.3 = or disjoint i32 %mul465, 512, !dbg !225
  %333 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.2.3, !dbg !222
  %xor473.2.3 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.2.3 = xor i32 %xor473.2.3, 16, !dbg !222
  %add.ptr477.2.3 = getelementptr inbounds i8, ptr addrspace(3) %333, i32 %add.ptr477.idx.2.3, !dbg !222
  %334 = shl i64 %328, 16, !dbg !223
  %v_column.sroa.130.0.insert.ext1494 = and i64 %334, -281474976710656, !dbg !223
  %v_column.sroa.98.0.insert.ext1339 = and i64 %327, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1342 = or disjoint i64 %v_column.sroa.130.0.insert.ext1494, %v_column.sroa.98.0.insert.ext1339, !dbg !223
  %335 = lshr i64 %326, 16, !dbg !223
  %v_column.sroa.66.0.insert.shift1185 = and i64 %335, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1187 = or disjoint i64 %v_column.sroa.98.0.insert.insert1342, %v_column.sroa.66.0.insert.shift1185, !dbg !223
  %v_column.sroa.0.0.insert.ext1047 = and i64 %v_fetch.sroa.0.4.extract.shift1685, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert1049 = or disjoint i64 %v_column.sroa.66.0.insert.insert1187, %v_column.sroa.0.0.insert.ext1047, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1049, ptr addrspace(3) %add.ptr477.2.3, align 8, !dbg !223
  %v_fetch.sroa.0.6.extract.shift1706 = lshr i64 %325, 48, !dbg !224
  %v_fetch.sroa.122.30.extract.shift1937 = and i64 %328, -281474976710656, !dbg !223
  %add466.3.3 = or disjoint i32 %mul465, 768, !dbg !225
  %336 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.3.3, !dbg !222
  %xor473.3.3 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.3.3 = xor i32 %xor473.3.3, 24, !dbg !222
  %add.ptr477.3.3 = getelementptr inbounds i8, ptr addrspace(3) %336, i32 %add.ptr477.idx.3.3, !dbg !222
  %337 = lshr i64 %327, 16, !dbg !223
  %v_column.sroa.98.0.insert.shift1345 = and i64 %337, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1347 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1937, %v_column.sroa.98.0.insert.shift1345, !dbg !223
  %338 = lshr i64 %326, 32, !dbg !223
  %v_column.sroa.66.0.insert.shift1190 = and i64 %338, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1192 = or disjoint i64 %v_column.sroa.98.0.insert.insert1347, %v_column.sroa.66.0.insert.shift1190, !dbg !223
  %v_column.sroa.0.0.insert.insert1053 = or disjoint i64 %v_column.sroa.66.0.insert.insert1192, %v_fetch.sroa.0.6.extract.shift1706, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1053, ptr addrspace(3) %add.ptr477.3.3, align 8, !dbg !223
  fence syncscope("warp") release, !dbg !226
  tail call void @llvm.mxc.barrier.warp(), !dbg !229
  fence syncscope("warp") acquire, !dbg !230
  %add494.3988 = or disjoint i32 %mul487, %mul493, !dbg !231
  %339 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.3988, !dbg !232
  %add.ptr504.idx.3989 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.3990 = getelementptr inbounds i8, ptr addrspace(3) %339, i32 %add.ptr504.idx.3989, !dbg !232
  %340 = load <4 x half>, ptr addrspace(3) %add.ptr504.3990, align 8, !dbg !233
  %add489.1.3 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.1.3 = or disjoint i32 %add489.1.3, 64, !dbg !231
  %341 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.1.3, !dbg !232
  %xor500.1.3 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.1.3 = xor i32 %xor500.1.3, 8, !dbg !232
  %add.ptr504.1.3 = getelementptr inbounds i8, ptr addrspace(3) %341, i32 %add.ptr504.idx.1.3, !dbg !232
  %342 = load <4 x half>, ptr addrspace(3) %add.ptr504.1.3, align 8, !dbg !233
  %add489.2.3 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.2.3 = or disjoint i32 %add489.2.3, 128, !dbg !231
  %343 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.2.3, !dbg !232
  %xor500.2.3 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.2.3 = xor i32 %xor500.2.3, 16, !dbg !232
  %add.ptr504.2.3 = getelementptr inbounds i8, ptr addrspace(3) %343, i32 %add.ptr504.idx.2.3, !dbg !232
  %344 = load <4 x half>, ptr addrspace(3) %add.ptr504.2.3, align 8, !dbg !233
  %add489.3.3 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.3.3 = or disjoint i32 %add489.3.3, 192, !dbg !231
  %345 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.3.3, !dbg !232
  %xor500.3.3 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.3.3 = xor i32 %xor500.3.3, 24, !dbg !232
  %add.ptr504.3.3 = getelementptr inbounds i8, ptr addrspace(3) %345, i32 %add.ptr504.idx.3.3, !dbg !232
  %346 = load <4 x half>, ptr addrspace(3) %add.ptr504.3.3, align 8, !dbg !233
  %347 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %340, <4 x half> %310, <4 x float> %numerator.sroa.0.12.vec.insert2472), !dbg !234
  %348 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %342, <4 x half> %310, <4 x float> %numerator.sroa.98.28.vec.insert2628), !dbg !234
  %349 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %344, <4 x half> %310, <4 x float> %numerator.sroa.194.44.vec.insert2784), !dbg !234
  %350 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %346, <4 x half> %310, <4 x float> %numerator.sroa.290.60.vec.insert2940), !dbg !234
  %add410.3 = fadd contract float %mul300.3, %add406.3, !dbg !235
  br label %if.end530.3, !dbg !236

if.end530.3:                                      ; preds = %if.then.3, %if.end530.2
  %numerator.sroa.290.3 = phi <4 x float> [ %numerator.sroa.290.2, %if.end530.2 ], [ %350, %if.then.3 ], !dbg !237
  %numerator.sroa.194.3 = phi <4 x float> [ %numerator.sroa.194.2, %if.end530.2 ], [ %349, %if.then.3 ], !dbg !237
  %numerator.sroa.98.3 = phi <4 x float> [ %numerator.sroa.98.2, %if.end530.2 ], [ %348, %if.then.3 ], !dbg !237
  %numerator.sroa.0.3 = phi <4 x float> [ %numerator.sroa.0.2, %if.end530.2 ], [ %347, %if.then.3 ], !dbg !237
  %maximum.sroa.0.1.3 = phi float [ %maximum.sroa.0.1.2, %if.end530.2 ], [ %293, %if.then.3 ], !dbg !237
  %denominator.sroa.0.1.3 = phi float [ %denominator.sroa.0.1.2, %if.end530.2 ], [ %add410.3, %if.then.3 ], !dbg !237
  %351 = or disjoint i64 %19, 4, !dbg !238
  %arrayidx104.4 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %351, !dbg !65
  %352 = load i32, ptr addrspace(1) %arrayidx104.4, align 4, !dbg !65, !tbaa !30
  %mul105.4 = shl nsw i32 %352, 4, !dbg !66
  %cmp106.4 = icmp slt i32 %352, 0, !dbg !67
  %cmp108.not.4 = icmp sgt i32 %mul105.4, %1
  %or.cond.4 = select i1 %cmp106.4, i1 true, i1 %cmp108.not.4, !dbg !68
  br i1 %or.cond.4, label %if.end530.4, label %if.then.4, !dbg !68

if.then.4:                                        ; preds = %if.end530.3
  fence syncscope("warp") release, !dbg !69
  tail call void @llvm.mxc.barrier.warp(), !dbg !72
  fence syncscope("warp") acquire, !dbg !73
  %conv118.4 = zext nneg i32 %mul105.4 to i64
  %.idx.4 = shl nuw nsw i64 %conv118.4, 7
  %gep.4 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep848, i64 %.idx.4, !dbg !74
  %.idx855.4 = shl nuw nsw i64 %conv, 17, !dbg !75
  %353 = getelementptr inbounds i8, ptr addrspace(4) %gep.4, i64 %.idx855.4, !dbg !75
  %qk_fetch.sroa.0.0.copyload3021 = load i64, ptr addrspace(4) %353, align 16, !dbg !76
  %qk_fetch.sroa.38.0..sroa_idx3041 = getelementptr inbounds i8, ptr addrspace(4) %353, i64 8, !dbg !76
  %qk_fetch.sroa.38.0.copyload3042 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx3041, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3021, ptr addrspace(3) %add.ptr39, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3042, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !77
  %gep831.1.4 = getelementptr inbounds i8, ptr addrspace(4) %353, i64 1024, !dbg !75
  %qk_fetch.sroa.0.0.copyload3022 = load i64, ptr addrspace(4) %gep831.1.4, align 16, !dbg !76
  %qk_fetch.sroa.38.0.gep831.1.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %353, i64 1032, !dbg !76
  %qk_fetch.sroa.38.0.copyload3043 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep831.1.4.sroa_idx, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3022, ptr addrspace(3) %add.ptr39.1862, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3043, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !77
  fence syncscope("warp") release, !dbg !78
  tail call void @llvm.mxc.barrier.warp(), !dbg !81
  fence syncscope("warp") acquire, !dbg !82
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !83
  %354 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %9, <4 x float> zeroinitializer), !dbg !84
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !83
  %355 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %10, <4 x float> %354), !dbg !84
  %k_local.sroa.0.0.copyload.2.4 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !83
  %356 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.4, <4 x half> %11, <4 x float> %355), !dbg !84
  %k_local.sroa.0.0.copyload.3.4 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !83
  %357 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.4, <4 x half> %12, <4 x float> %356), !dbg !84
  %add218.4 = add nuw nsw i32 %mul105.4, %mul217
  %cmp221.not.4 = icmp sgt i32 %add218.4, %1, !dbg !85
  %scores.sroa.0.0.vec.extract2071 = extractelement <4 x float> %357, i64 0
  %spec.select3073 = select i1 %cmp221.not.4, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2071, !dbg !86
  %cmp221.not.1.4.not = icmp slt i32 %add218.4, %1, !dbg !85
  %scores.sroa.0.4.vec.extract2162 = extractelement <4 x float> %357, i64 1, !dbg !86
  %condval.0.1.4 = select i1 %cmp221.not.1.4.not, float %scores.sroa.0.4.vec.extract2162, float 0xFFF0000000000000, !dbg !86
  %add219.2.4 = or disjoint i32 %add218.4, 2, !dbg !87
  %cmp221.not.2.4 = icmp sgt i32 %add219.2.4, %1, !dbg !85
  %scores.sroa.0.8.vec.extract2239 = extractelement <4 x float> %357, i64 2, !dbg !86
  %condval.0.2.4 = select i1 %cmp221.not.2.4, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2239, !dbg !86
  %add219.3.4 = or disjoint i32 %add218.4, 3, !dbg !87
  %cmp221.not.3.4 = icmp sgt i32 %add219.3.4, %1, !dbg !85
  %scores.sroa.0.12.vec.extract2316 = extractelement <4 x float> %357, i64 3, !dbg !86
  %condval.0.3.4 = select i1 %cmp221.not.3.4, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2316, !dbg !86
  %358 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3073, float 0xFFF0000000000000), !dbg !88
  %359 = tail call contract noundef float @llvm.maxnum.f32(float %358, float %condval.0.1.4), !dbg !88
  %360 = tail call contract noundef float @llvm.maxnum.f32(float %359, float %condval.0.2.4), !dbg !88
  %361 = tail call contract noundef float @llvm.maxnum.f32(float %360, float %condval.0.3.4), !dbg !88
  %362 = bitcast float %361 to i32, !dbg !92
  %363 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !95
  %364 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %363) #11, !dbg !100
  %xor.i.i.4 = xor i32 %364, 32, !dbg !101
  %365 = and i32 %364, -64, !dbg !102
  %and.i.i.4 = add nsw i32 %365, 64, !dbg !102
  %cmp.not.i.i.4 = icmp slt i32 %xor.i.i.4, %and.i.i.4, !dbg !103
  %cond.i.i.4 = select i1 %cmp.not.i.i.4, i32 %xor.i.i.4, i32 %364, !dbg !104
  %shl.i.i.4 = shl i32 %cond.i.i.4, 2, !dbg !105
  %366 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.4, i32 %362), !dbg !106
  %367 = bitcast i32 %366 to float, !dbg !107
  %368 = tail call contract noundef float @llvm.maxnum.f32(float %361, float %367), !dbg !108
  %369 = bitcast float %368 to i32, !dbg !110
  %370 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !112
  %371 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %370) #11, !dbg !115
  %xor.i.i765.4 = xor i32 %371, 16, !dbg !116
  %372 = and i32 %371, -64, !dbg !117
  %and.i.i766.4 = add nsw i32 %372, 64, !dbg !117
  %cmp.not.i.i767.4 = icmp slt i32 %xor.i.i765.4, %and.i.i766.4, !dbg !118
  %cond.i.i768.4 = select i1 %cmp.not.i.i767.4, i32 %xor.i.i765.4, i32 %371, !dbg !119
  %shl.i.i769.4 = shl i32 %cond.i.i768.4, 2, !dbg !120
  %373 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i769.4, i32 %369), !dbg !121
  %374 = bitcast i32 %373 to float, !dbg !122
  %375 = tail call contract noundef float @llvm.maxnum.f32(float %368, float %374), !dbg !123
  %376 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.3, float %375), !dbg !125
  %sub.4 = fsub contract float %maximum.sroa.0.1.3, %376, !dbg !127
  %mul263.4 = fmul contract float %sub.4, 0x3FC7154760000000, !dbg !128
  %cmp.i.i.4 = fcmp contract olt float %mul263.4, -1.260000e+02, !dbg !129
  %cond.i.i770.4 = select contract i1 %cmp.i.i.4, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i.4 = fadd contract float %mul263.4, %cond.i.i770.4, !dbg !129
  %377 = tail call contract float @llvm.exp2.f32(float %add.i.i.4), !dbg !129
  %cond2.i.i.4 = select contract i1 %cmp.i.i.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i.4 = fmul contract float %cond2.i.i.4, %377, !dbg !129
  %numerator.sroa.0.0.vec.extract2363 = extractelement <4 x float> %numerator.sroa.0.3, i64 0, !dbg !239
  %numerator.sroa.0.4.vec.extract2400 = extractelement <4 x float> %numerator.sroa.0.3, i64 1, !dbg !239
  %numerator.sroa.0.8.vec.extract2437 = extractelement <4 x float> %numerator.sroa.0.3, i64 2, !dbg !239
  %numerator.sroa.0.12.vec.extract2474 = extractelement <4 x float> %numerator.sroa.0.3, i64 3, !dbg !239
  %mul280.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.0.vec.extract2363, !dbg !132
  %mul283.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.4.vec.extract2400, !dbg !240
  %mul286.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.8.vec.extract2437, !dbg !241
  %mul289.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.12.vec.extract2474, !dbg !242
  %numerator.sroa.0.0.vec.insert2365 = insertelement <4 x float> poison, float %mul280.4, i64 0, !dbg !133
  %numerator.sroa.0.4.vec.insert2402 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2365, float %mul283.4, i64 1, !dbg !133
  %numerator.sroa.0.8.vec.insert2439 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2402, float %mul286.4, i64 2, !dbg !133
  %numerator.sroa.0.12.vec.insert2476 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2439, float %mul289.4, i64 3, !dbg !133
  %numerator.sroa.98.16.vec.extract2519 = extractelement <4 x float> %numerator.sroa.98.3, i64 0, !dbg !239
  %numerator.sroa.98.20.vec.extract2556 = extractelement <4 x float> %numerator.sroa.98.3, i64 1, !dbg !239
  %numerator.sroa.98.24.vec.extract2593 = extractelement <4 x float> %numerator.sroa.98.3, i64 2, !dbg !239
  %numerator.sroa.98.28.vec.extract2630 = extractelement <4 x float> %numerator.sroa.98.3, i64 3, !dbg !239
  %mul280.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.16.vec.extract2519, !dbg !132
  %mul283.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.20.vec.extract2556, !dbg !240
  %mul286.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.24.vec.extract2593, !dbg !241
  %mul289.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.28.vec.extract2630, !dbg !242
  %numerator.sroa.98.16.vec.insert2521 = insertelement <4 x float> poison, float %mul280.1.4, i64 0, !dbg !133
  %numerator.sroa.98.20.vec.insert2558 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2521, float %mul283.1.4, i64 1, !dbg !133
  %numerator.sroa.98.24.vec.insert2595 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2558, float %mul286.1.4, i64 2, !dbg !133
  %numerator.sroa.98.28.vec.insert2632 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2595, float %mul289.1.4, i64 3, !dbg !133
  %numerator.sroa.194.32.vec.extract2675 = extractelement <4 x float> %numerator.sroa.194.3, i64 0, !dbg !239
  %numerator.sroa.194.36.vec.extract2712 = extractelement <4 x float> %numerator.sroa.194.3, i64 1, !dbg !239
  %numerator.sroa.194.40.vec.extract2749 = extractelement <4 x float> %numerator.sroa.194.3, i64 2, !dbg !239
  %numerator.sroa.194.44.vec.extract2786 = extractelement <4 x float> %numerator.sroa.194.3, i64 3, !dbg !239
  %mul280.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.32.vec.extract2675, !dbg !132
  %mul283.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.36.vec.extract2712, !dbg !240
  %mul286.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.40.vec.extract2749, !dbg !241
  %mul289.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.44.vec.extract2786, !dbg !242
  %numerator.sroa.194.32.vec.insert2677 = insertelement <4 x float> poison, float %mul280.2.4, i64 0, !dbg !133
  %numerator.sroa.194.36.vec.insert2714 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2677, float %mul283.2.4, i64 1, !dbg !133
  %numerator.sroa.194.40.vec.insert2751 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2714, float %mul286.2.4, i64 2, !dbg !133
  %numerator.sroa.194.44.vec.insert2788 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2751, float %mul289.2.4, i64 3, !dbg !133
  %numerator.sroa.290.48.vec.extract2831 = extractelement <4 x float> %numerator.sroa.290.3, i64 0, !dbg !239
  %numerator.sroa.290.52.vec.extract2868 = extractelement <4 x float> %numerator.sroa.290.3, i64 1, !dbg !239
  %numerator.sroa.290.56.vec.extract2905 = extractelement <4 x float> %numerator.sroa.290.3, i64 2, !dbg !239
  %numerator.sroa.290.60.vec.extract2942 = extractelement <4 x float> %numerator.sroa.290.3, i64 3, !dbg !239
  %mul280.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.48.vec.extract2831, !dbg !132
  %mul283.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.52.vec.extract2868, !dbg !240
  %mul286.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.56.vec.extract2905, !dbg !241
  %mul289.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.60.vec.extract2942, !dbg !242
  %numerator.sroa.290.48.vec.insert2833 = insertelement <4 x float> poison, float %mul280.3.4, i64 0, !dbg !133
  %numerator.sroa.290.52.vec.insert2870 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2833, float %mul283.3.4, i64 1, !dbg !133
  %numerator.sroa.290.56.vec.insert2907 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2870, float %mul286.3.4, i64 2, !dbg !133
  %numerator.sroa.290.60.vec.insert2944 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2907, float %mul289.3.4, i64 3, !dbg !133
  %sub313.4 = fsub contract float %spec.select3073, %376, !dbg !134
  %sub317.4 = fsub contract float %condval.0.1.4, %376, !dbg !135
  %sub321.4 = fsub contract float %condval.0.2.4, %376, !dbg !136
  %sub325.4 = fsub contract float %condval.0.3.4, %376, !dbg !137
  %mul330.4 = fmul contract float %sub313.4, 0x3FC7154760000000, !dbg !138
  %mul334.4 = fmul contract float %sub317.4, 0x3FC7154760000000, !dbg !139
  %mul338.4 = fmul contract float %sub321.4, 0x3FC7154760000000, !dbg !140
  %mul342.4 = fmul contract float %sub325.4, 0x3FC7154760000000, !dbg !141
  %add347.4 = fadd contract float %mul330.4, 8.000000e+00, !dbg !142
  %add351.4 = fadd contract float %mul334.4, 8.000000e+00, !dbg !143
  %add355.4 = fadd contract float %mul338.4, 8.000000e+00, !dbg !144
  %add359.4 = fadd contract float %mul342.4, 8.000000e+00, !dbg !145
  %cmp.i.i771.4 = fcmp contract olt float %add347.4, -1.260000e+02, !dbg !146
  %cond.i.i772.4 = select contract i1 %cmp.i.i771.4, float 6.400000e+01, float 0.000000e+00, !dbg !146
  %add.i.i773.4 = fadd contract float %add347.4, %cond.i.i772.4, !dbg !146
  %378 = tail call contract float @llvm.exp2.f32(float %add.i.i773.4), !dbg !146
  %cond2.i.i774.4 = select contract i1 %cmp.i.i771.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !146
  %mul.i.i775.4 = fmul contract float %cond2.i.i774.4, %378, !dbg !146
  %cmp.i.i776.4 = fcmp contract olt float %add351.4, -1.260000e+02, !dbg !148
  %cond.i.i777.4 = select contract i1 %cmp.i.i776.4, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i778.4 = fadd contract float %add351.4, %cond.i.i777.4, !dbg !148
  %379 = tail call contract float @llvm.exp2.f32(float %add.i.i778.4), !dbg !148
  %cond2.i.i779.4 = select contract i1 %cmp.i.i776.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i780.4 = fmul contract float %cond2.i.i779.4, %379, !dbg !148
  %cmp.i.i781.4 = fcmp contract olt float %add355.4, -1.260000e+02, !dbg !150
  %cond.i.i782.4 = select contract i1 %cmp.i.i781.4, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i783.4 = fadd contract float %add355.4, %cond.i.i782.4, !dbg !150
  %380 = tail call contract float @llvm.exp2.f32(float %add.i.i783.4), !dbg !150
  %cond2.i.i784.4 = select contract i1 %cmp.i.i781.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i785.4 = fmul contract float %cond2.i.i784.4, %380, !dbg !150
  %cmp.i.i786.4 = fcmp contract olt float %add359.4, -1.260000e+02, !dbg !152
  %cond.i.i787.4 = select contract i1 %cmp.i.i786.4, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i788.4 = fadd contract float %add359.4, %cond.i.i787.4, !dbg !152
  %381 = tail call contract float @llvm.exp2.f32(float %add.i.i788.4), !dbg !152
  %cond2.i.i789.4 = select contract i1 %cmp.i.i786.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i790.4 = fmul contract float %cond2.i.i789.4, %381, !dbg !152
  %382 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !154, !noalias !162
  %383 = fptrunc float %mul.i.i775.4 to half, !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %382), !dbg !154, !noalias !162
  %384 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !167, !noalias !162
  %385 = fptrunc float %mul.i.i780.4 to half, !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %384), !dbg !167, !noalias !162
  %386 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !173
  %387 = fptrunc float %mul.i.i785.4 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %386), !dbg !169, !noalias !173
  %388 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !173
  %389 = fptrunc float %mul.i.i790.4 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %388), !dbg !178, !noalias !173
  %390 = insertelement <4 x half> poison, half %383, i64 0, !dbg !180
  %391 = insertelement <4 x half> %390, half %385, i64 1, !dbg !180
  %392 = insertelement <4 x half> %391, half %387, i64 2, !dbg !180
  %393 = insertelement <4 x half> %392, half %389, i64 3, !dbg !180
  %conv.i.i.4 = fpext half %383 to float, !dbg !181
  %add393.4 = fadd contract float %conv.i.i.4, 0.000000e+00, !dbg !186
  %conv.i.i.1.4 = fpext half %385 to float, !dbg !181
  %add393.1.4 = fadd contract float %add393.4, %conv.i.i.1.4, !dbg !186
  %conv.i.i.2.4 = fpext half %387 to float, !dbg !181
  %add393.2.4 = fadd contract float %add393.1.4, %conv.i.i.2.4, !dbg !186
  %conv.i.i.3.4 = fpext half %389 to float, !dbg !181
  %add393.3.4 = fadd contract float %add393.2.4, %conv.i.i.3.4, !dbg !186
  %394 = bitcast float %add393.3.4 to i32, !dbg !187
  %395 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !189
  %396 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %395) #11, !dbg !192
  %xor.i.i796.4 = xor i32 %396, 32, !dbg !193
  %397 = and i32 %396, -64, !dbg !194
  %and.i.i797.4 = add nsw i32 %397, 64, !dbg !194
  %cmp.not.i.i798.4 = icmp slt i32 %xor.i.i796.4, %and.i.i797.4, !dbg !195
  %cond.i.i799.4 = select i1 %cmp.not.i.i798.4, i32 %xor.i.i796.4, i32 %396, !dbg !196
  %shl.i.i800.4 = shl i32 %cond.i.i799.4, 2, !dbg !197
  %398 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i800.4, i32 %394), !dbg !198
  %399 = bitcast i32 %398 to float, !dbg !199
  %add401.4 = fadd contract float %add393.3.4, %399, !dbg !200
  %400 = bitcast float %add401.4 to i32, !dbg !201
  %401 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !203
  %402 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %401) #11, !dbg !206
  %xor.i.i801.4 = xor i32 %402, 16, !dbg !207
  %403 = and i32 %402, -64, !dbg !208
  %and.i.i802.4 = add nsw i32 %403, 64, !dbg !208
  %cmp.not.i.i803.4 = icmp slt i32 %xor.i.i801.4, %and.i.i802.4, !dbg !209
  %cond.i.i804.4 = select i1 %cmp.not.i.i803.4, i32 %xor.i.i801.4, i32 %402, !dbg !210
  %shl.i.i805.4 = shl i32 %cond.i.i804.4, 2, !dbg !211
  %404 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i805.4, i32 %400), !dbg !212
  %405 = bitcast i32 %404 to float, !dbg !213
  %add406.4 = fadd contract float %add401.4, %405, !dbg !214
  fence syncscope("warp") release, !dbg !215
  tail call void @llvm.mxc.barrier.warp(), !dbg !218
  fence syncscope("warp") acquire, !dbg !219
  %406 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add426, !dbg !220
  %407 = getelementptr inbounds i8, ptr addrspace(4) %406, i64 %.idx.4, !dbg !220
  %408 = load i64, ptr addrspace(4) %407, align 8, !dbg !221
  %add.ptr435.1.4 = getelementptr inbounds i8, ptr addrspace(4) %407, i64 128, !dbg !220
  %409 = load i64, ptr addrspace(4) %add.ptr435.1.4, align 8, !dbg !221
  %add.ptr435.2.4 = getelementptr inbounds i8, ptr addrspace(4) %407, i64 256, !dbg !220
  %410 = load i64, ptr addrspace(4) %add.ptr435.2.4, align 8, !dbg !221
  %add.ptr435.3.4 = getelementptr inbounds i8, ptr addrspace(4) %407, i64 384, !dbg !220
  %411 = load i64, ptr addrspace(4) %add.ptr435.3.4, align 8, !dbg !221
  %mul300.4 = fmul contract float %denominator.sroa.0.1.3, %mul.i.i.4, !dbg !243
  %412 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul465, !dbg !222
  %add.ptr477.idx.4 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.4 = getelementptr inbounds i8, ptr addrspace(3) %412, i32 %add.ptr477.idx.4, !dbg !222
  %v_column.sroa.130.0.insert.ext1504 = shl i64 %411, 48, !dbg !223
  %v_column.sroa.98.0.insert.ext1349 = shl i64 %410, 32, !dbg !223
  %v_column.sroa.98.0.insert.shift1350 = and i64 %v_column.sroa.98.0.insert.ext1349, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1352 = or disjoint i64 %v_column.sroa.130.0.insert.ext1504, %v_column.sroa.98.0.insert.shift1350, !dbg !223
  %v_column.sroa.66.0.insert.ext1194 = shl i64 %409, 16, !dbg !223
  %v_column.sroa.66.0.insert.shift1195 = and i64 %v_column.sroa.66.0.insert.ext1194, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1197 = or disjoint i64 %v_column.sroa.98.0.insert.insert1352, %v_column.sroa.66.0.insert.shift1195, !dbg !223
  %v_column.sroa.0.0.insert.ext1055 = and i64 %408, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert1057 = or disjoint i64 %v_column.sroa.66.0.insert.insert1197, %v_column.sroa.0.0.insert.ext1055, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1057, ptr addrspace(3) %add.ptr477.4, align 8, !dbg !223
  %v_fetch.sroa.0.2.extract.shift1667 = lshr i64 %408, 16, !dbg !224
  %add466.1.4 = or disjoint i32 %mul465, 256, !dbg !225
  %413 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.1.4, !dbg !222
  %xor473.1.4 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.1.4 = xor i32 %xor473.1.4, 8, !dbg !222
  %add.ptr477.1.4 = getelementptr inbounds i8, ptr addrspace(3) %413, i32 %add.ptr477.idx.1.4, !dbg !222
  %414 = shl i64 %411, 32, !dbg !223
  %v_column.sroa.130.0.insert.ext1509 = and i64 %414, -281474976710656, !dbg !223
  %415 = shl i64 %410, 16, !dbg !223
  %v_column.sroa.98.0.insert.shift1355 = and i64 %415, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1357 = or disjoint i64 %v_column.sroa.130.0.insert.ext1509, %v_column.sroa.98.0.insert.shift1355, !dbg !223
  %v_column.sroa.66.0.insert.ext1199 = and i64 %409, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1202 = or disjoint i64 %v_column.sroa.98.0.insert.insert1357, %v_column.sroa.66.0.insert.ext1199, !dbg !223
  %v_column.sroa.0.0.insert.ext1059 = and i64 %v_fetch.sroa.0.2.extract.shift1667, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert1061 = or disjoint i64 %v_column.sroa.66.0.insert.insert1202, %v_column.sroa.0.0.insert.ext1059, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1061, ptr addrspace(3) %add.ptr477.1.4, align 8, !dbg !223
  %v_fetch.sroa.0.4.extract.shift1688 = lshr i64 %408, 32, !dbg !224
  %add466.2.4 = or disjoint i32 %mul465, 512, !dbg !225
  %416 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.2.4, !dbg !222
  %xor473.2.4 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.2.4 = xor i32 %xor473.2.4, 16, !dbg !222
  %add.ptr477.2.4 = getelementptr inbounds i8, ptr addrspace(3) %416, i32 %add.ptr477.idx.2.4, !dbg !222
  %417 = shl i64 %411, 16, !dbg !223
  %v_column.sroa.130.0.insert.ext1514 = and i64 %417, -281474976710656, !dbg !223
  %v_column.sroa.98.0.insert.ext1359 = and i64 %410, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1362 = or disjoint i64 %v_column.sroa.130.0.insert.ext1514, %v_column.sroa.98.0.insert.ext1359, !dbg !223
  %418 = lshr i64 %409, 16, !dbg !223
  %v_column.sroa.66.0.insert.shift1205 = and i64 %418, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1207 = or disjoint i64 %v_column.sroa.98.0.insert.insert1362, %v_column.sroa.66.0.insert.shift1205, !dbg !223
  %v_column.sroa.0.0.insert.ext1063 = and i64 %v_fetch.sroa.0.4.extract.shift1688, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert1065 = or disjoint i64 %v_column.sroa.66.0.insert.insert1207, %v_column.sroa.0.0.insert.ext1063, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1065, ptr addrspace(3) %add.ptr477.2.4, align 8, !dbg !223
  %v_fetch.sroa.0.6.extract.shift1709 = lshr i64 %408, 48, !dbg !224
  %v_fetch.sroa.122.30.extract.shift1940 = and i64 %411, -281474976710656, !dbg !223
  %add466.3.4 = or disjoint i32 %mul465, 768, !dbg !225
  %419 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.3.4, !dbg !222
  %xor473.3.4 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.3.4 = xor i32 %xor473.3.4, 24, !dbg !222
  %add.ptr477.3.4 = getelementptr inbounds i8, ptr addrspace(3) %419, i32 %add.ptr477.idx.3.4, !dbg !222
  %420 = lshr i64 %410, 16, !dbg !223
  %v_column.sroa.98.0.insert.shift1365 = and i64 %420, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1367 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1940, %v_column.sroa.98.0.insert.shift1365, !dbg !223
  %421 = lshr i64 %409, 32, !dbg !223
  %v_column.sroa.66.0.insert.shift1210 = and i64 %421, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1212 = or disjoint i64 %v_column.sroa.98.0.insert.insert1367, %v_column.sroa.66.0.insert.shift1210, !dbg !223
  %v_column.sroa.0.0.insert.insert1069 = or disjoint i64 %v_column.sroa.66.0.insert.insert1212, %v_fetch.sroa.0.6.extract.shift1709, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1069, ptr addrspace(3) %add.ptr477.3.4, align 8, !dbg !223
  fence syncscope("warp") release, !dbg !226
  tail call void @llvm.mxc.barrier.warp(), !dbg !229
  fence syncscope("warp") acquire, !dbg !230
  %add494.4 = or disjoint i32 %mul487, %mul493, !dbg !231
  %422 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.4, !dbg !232
  %add.ptr504.idx.4 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.4 = getelementptr inbounds i8, ptr addrspace(3) %422, i32 %add.ptr504.idx.4, !dbg !232
  %423 = load <4 x half>, ptr addrspace(3) %add.ptr504.4, align 8, !dbg !233
  %add489.1.4 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.1.4 = or disjoint i32 %add489.1.4, 64, !dbg !231
  %424 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.1.4, !dbg !232
  %xor500.1.4 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.1.4 = xor i32 %xor500.1.4, 8, !dbg !232
  %add.ptr504.1.4 = getelementptr inbounds i8, ptr addrspace(3) %424, i32 %add.ptr504.idx.1.4, !dbg !232
  %425 = load <4 x half>, ptr addrspace(3) %add.ptr504.1.4, align 8, !dbg !233
  %add489.2.4 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.2.4 = or disjoint i32 %add489.2.4, 128, !dbg !231
  %426 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.2.4, !dbg !232
  %xor500.2.4 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.2.4 = xor i32 %xor500.2.4, 16, !dbg !232
  %add.ptr504.2.4 = getelementptr inbounds i8, ptr addrspace(3) %426, i32 %add.ptr504.idx.2.4, !dbg !232
  %427 = load <4 x half>, ptr addrspace(3) %add.ptr504.2.4, align 8, !dbg !233
  %add489.3.4 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.3.4 = or disjoint i32 %add489.3.4, 192, !dbg !231
  %428 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.3.4, !dbg !232
  %xor500.3.4 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.3.4 = xor i32 %xor500.3.4, 24, !dbg !232
  %add.ptr504.3.4 = getelementptr inbounds i8, ptr addrspace(3) %428, i32 %add.ptr504.idx.3.4, !dbg !232
  %429 = load <4 x half>, ptr addrspace(3) %add.ptr504.3.4, align 8, !dbg !233
  %430 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %423, <4 x half> %393, <4 x float> %numerator.sroa.0.12.vec.insert2476), !dbg !234
  %431 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %425, <4 x half> %393, <4 x float> %numerator.sroa.98.28.vec.insert2632), !dbg !234
  %432 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %427, <4 x half> %393, <4 x float> %numerator.sroa.194.44.vec.insert2788), !dbg !234
  %433 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %429, <4 x half> %393, <4 x float> %numerator.sroa.290.60.vec.insert2944), !dbg !234
  %add410.4 = fadd contract float %mul300.4, %add406.4, !dbg !235
  br label %if.end530.4, !dbg !236

if.end530.4:                                      ; preds = %if.then.4, %if.end530.3
  %numerator.sroa.290.4 = phi <4 x float> [ %numerator.sroa.290.3, %if.end530.3 ], [ %433, %if.then.4 ], !dbg !237
  %numerator.sroa.194.4 = phi <4 x float> [ %numerator.sroa.194.3, %if.end530.3 ], [ %432, %if.then.4 ], !dbg !237
  %numerator.sroa.98.4 = phi <4 x float> [ %numerator.sroa.98.3, %if.end530.3 ], [ %431, %if.then.4 ], !dbg !237
  %numerator.sroa.0.4 = phi <4 x float> [ %numerator.sroa.0.3, %if.end530.3 ], [ %430, %if.then.4 ], !dbg !237
  %maximum.sroa.0.1.4 = phi float [ %maximum.sroa.0.1.3, %if.end530.3 ], [ %376, %if.then.4 ], !dbg !237
  %denominator.sroa.0.1.4 = phi float [ %denominator.sroa.0.1.3, %if.end530.3 ], [ %add410.4, %if.then.4 ], !dbg !237
  %434 = or disjoint i64 %19, 5, !dbg !238
  %arrayidx104.5 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %434, !dbg !65
  %435 = load i32, ptr addrspace(1) %arrayidx104.5, align 4, !dbg !65, !tbaa !30
  %mul105.5 = shl nsw i32 %435, 4, !dbg !66
  %cmp106.5 = icmp slt i32 %435, 0, !dbg !67
  %cmp108.not.5 = icmp sgt i32 %mul105.5, %1
  %or.cond.5 = select i1 %cmp106.5, i1 true, i1 %cmp108.not.5, !dbg !68
  br i1 %or.cond.5, label %if.end530.5, label %if.then.5, !dbg !68

if.then.5:                                        ; preds = %if.end530.4
  fence syncscope("warp") release, !dbg !69
  tail call void @llvm.mxc.barrier.warp(), !dbg !72
  fence syncscope("warp") acquire, !dbg !73
  %conv118.5 = zext nneg i32 %mul105.5 to i64
  %.idx.5 = shl nuw nsw i64 %conv118.5, 7
  %gep.5 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep848, i64 %.idx.5, !dbg !74
  %.idx855.5 = shl nuw nsw i64 %conv, 17, !dbg !75
  %436 = getelementptr inbounds i8, ptr addrspace(4) %gep.5, i64 %.idx855.5, !dbg !75
  %qk_fetch.sroa.0.0.copyload3023 = load i64, ptr addrspace(4) %436, align 16, !dbg !76
  %qk_fetch.sroa.38.0..sroa_idx3044 = getelementptr inbounds i8, ptr addrspace(4) %436, i64 8, !dbg !76
  %qk_fetch.sroa.38.0.copyload3045 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx3044, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3023, ptr addrspace(3) %add.ptr39, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3045, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !77
  %gep831.1.5 = getelementptr inbounds i8, ptr addrspace(4) %436, i64 1024, !dbg !75
  %qk_fetch.sroa.0.0.copyload3024 = load i64, ptr addrspace(4) %gep831.1.5, align 16, !dbg !76
  %qk_fetch.sroa.38.0.gep831.1.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %436, i64 1032, !dbg !76
  %qk_fetch.sroa.38.0.copyload3046 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep831.1.5.sroa_idx, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3024, ptr addrspace(3) %add.ptr39.1862, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3046, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !77
  fence syncscope("warp") release, !dbg !78
  tail call void @llvm.mxc.barrier.warp(), !dbg !81
  fence syncscope("warp") acquire, !dbg !82
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !83
  %437 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %9, <4 x float> zeroinitializer), !dbg !84
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !83
  %438 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %10, <4 x float> %437), !dbg !84
  %k_local.sroa.0.0.copyload.2.5 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !83
  %439 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.5, <4 x half> %11, <4 x float> %438), !dbg !84
  %k_local.sroa.0.0.copyload.3.5 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !83
  %440 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.5, <4 x half> %12, <4 x float> %439), !dbg !84
  %add218.5 = add nuw nsw i32 %mul105.5, %mul217
  %cmp221.not.5 = icmp sgt i32 %add218.5, %1, !dbg !85
  %scores.sroa.0.0.vec.extract2081 = extractelement <4 x float> %440, i64 0
  %spec.select3074 = select i1 %cmp221.not.5, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2081, !dbg !86
  %cmp221.not.1.5.not = icmp slt i32 %add218.5, %1, !dbg !85
  %scores.sroa.0.4.vec.extract2168 = extractelement <4 x float> %440, i64 1, !dbg !86
  %condval.0.1.5 = select i1 %cmp221.not.1.5.not, float %scores.sroa.0.4.vec.extract2168, float 0xFFF0000000000000, !dbg !86
  %add219.2.5 = or disjoint i32 %add218.5, 2, !dbg !87
  %cmp221.not.2.5 = icmp sgt i32 %add219.2.5, %1, !dbg !85
  %scores.sroa.0.8.vec.extract2245 = extractelement <4 x float> %440, i64 2, !dbg !86
  %condval.0.2.5 = select i1 %cmp221.not.2.5, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2245, !dbg !86
  %add219.3.5 = or disjoint i32 %add218.5, 3, !dbg !87
  %cmp221.not.3.5 = icmp sgt i32 %add219.3.5, %1, !dbg !85
  %scores.sroa.0.12.vec.extract2322 = extractelement <4 x float> %440, i64 3, !dbg !86
  %condval.0.3.5 = select i1 %cmp221.not.3.5, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2322, !dbg !86
  %441 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3074, float 0xFFF0000000000000), !dbg !88
  %442 = tail call contract noundef float @llvm.maxnum.f32(float %441, float %condval.0.1.5), !dbg !88
  %443 = tail call contract noundef float @llvm.maxnum.f32(float %442, float %condval.0.2.5), !dbg !88
  %444 = tail call contract noundef float @llvm.maxnum.f32(float %443, float %condval.0.3.5), !dbg !88
  %445 = bitcast float %444 to i32, !dbg !92
  %446 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !95
  %447 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %446) #11, !dbg !100
  %xor.i.i.5 = xor i32 %447, 32, !dbg !101
  %448 = and i32 %447, -64, !dbg !102
  %and.i.i.5 = add nsw i32 %448, 64, !dbg !102
  %cmp.not.i.i.5 = icmp slt i32 %xor.i.i.5, %and.i.i.5, !dbg !103
  %cond.i.i.5 = select i1 %cmp.not.i.i.5, i32 %xor.i.i.5, i32 %447, !dbg !104
  %shl.i.i.5 = shl i32 %cond.i.i.5, 2, !dbg !105
  %449 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.5, i32 %445), !dbg !106
  %450 = bitcast i32 %449 to float, !dbg !107
  %451 = tail call contract noundef float @llvm.maxnum.f32(float %444, float %450), !dbg !108
  %452 = bitcast float %451 to i32, !dbg !110
  %453 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !112
  %454 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %453) #11, !dbg !115
  %xor.i.i765.5 = xor i32 %454, 16, !dbg !116
  %455 = and i32 %454, -64, !dbg !117
  %and.i.i766.5 = add nsw i32 %455, 64, !dbg !117
  %cmp.not.i.i767.5 = icmp slt i32 %xor.i.i765.5, %and.i.i766.5, !dbg !118
  %cond.i.i768.5 = select i1 %cmp.not.i.i767.5, i32 %xor.i.i765.5, i32 %454, !dbg !119
  %shl.i.i769.5 = shl i32 %cond.i.i768.5, 2, !dbg !120
  %456 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i769.5, i32 %452), !dbg !121
  %457 = bitcast i32 %456 to float, !dbg !122
  %458 = tail call contract noundef float @llvm.maxnum.f32(float %451, float %457), !dbg !123
  %459 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.4, float %458), !dbg !125
  %sub.5 = fsub contract float %maximum.sroa.0.1.4, %459, !dbg !127
  %mul263.5 = fmul contract float %sub.5, 0x3FC7154760000000, !dbg !128
  %cmp.i.i.5 = fcmp contract olt float %mul263.5, -1.260000e+02, !dbg !129
  %cond.i.i770.5 = select contract i1 %cmp.i.i.5, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i.5 = fadd contract float %mul263.5, %cond.i.i770.5, !dbg !129
  %460 = tail call contract float @llvm.exp2.f32(float %add.i.i.5), !dbg !129
  %cond2.i.i.5 = select contract i1 %cmp.i.i.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i.5 = fmul contract float %cond2.i.i.5, %460, !dbg !129
  %numerator.sroa.0.0.vec.extract2367 = extractelement <4 x float> %numerator.sroa.0.4, i64 0, !dbg !239
  %numerator.sroa.0.4.vec.extract2404 = extractelement <4 x float> %numerator.sroa.0.4, i64 1, !dbg !239
  %numerator.sroa.0.8.vec.extract2441 = extractelement <4 x float> %numerator.sroa.0.4, i64 2, !dbg !239
  %numerator.sroa.0.12.vec.extract2478 = extractelement <4 x float> %numerator.sroa.0.4, i64 3, !dbg !239
  %mul280.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.0.vec.extract2367, !dbg !132
  %mul283.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.4.vec.extract2404, !dbg !240
  %mul286.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.8.vec.extract2441, !dbg !241
  %mul289.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.12.vec.extract2478, !dbg !242
  %numerator.sroa.0.0.vec.insert2369 = insertelement <4 x float> poison, float %mul280.5, i64 0, !dbg !133
  %numerator.sroa.0.4.vec.insert2406 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2369, float %mul283.5, i64 1, !dbg !133
  %numerator.sroa.0.8.vec.insert2443 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2406, float %mul286.5, i64 2, !dbg !133
  %numerator.sroa.0.12.vec.insert2480 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2443, float %mul289.5, i64 3, !dbg !133
  %numerator.sroa.98.16.vec.extract2523 = extractelement <4 x float> %numerator.sroa.98.4, i64 0, !dbg !239
  %numerator.sroa.98.20.vec.extract2560 = extractelement <4 x float> %numerator.sroa.98.4, i64 1, !dbg !239
  %numerator.sroa.98.24.vec.extract2597 = extractelement <4 x float> %numerator.sroa.98.4, i64 2, !dbg !239
  %numerator.sroa.98.28.vec.extract2634 = extractelement <4 x float> %numerator.sroa.98.4, i64 3, !dbg !239
  %mul280.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.16.vec.extract2523, !dbg !132
  %mul283.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.20.vec.extract2560, !dbg !240
  %mul286.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.24.vec.extract2597, !dbg !241
  %mul289.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.28.vec.extract2634, !dbg !242
  %numerator.sroa.98.16.vec.insert2525 = insertelement <4 x float> poison, float %mul280.1.5, i64 0, !dbg !133
  %numerator.sroa.98.20.vec.insert2562 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2525, float %mul283.1.5, i64 1, !dbg !133
  %numerator.sroa.98.24.vec.insert2599 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2562, float %mul286.1.5, i64 2, !dbg !133
  %numerator.sroa.98.28.vec.insert2636 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2599, float %mul289.1.5, i64 3, !dbg !133
  %numerator.sroa.194.32.vec.extract2679 = extractelement <4 x float> %numerator.sroa.194.4, i64 0, !dbg !239
  %numerator.sroa.194.36.vec.extract2716 = extractelement <4 x float> %numerator.sroa.194.4, i64 1, !dbg !239
  %numerator.sroa.194.40.vec.extract2753 = extractelement <4 x float> %numerator.sroa.194.4, i64 2, !dbg !239
  %numerator.sroa.194.44.vec.extract2790 = extractelement <4 x float> %numerator.sroa.194.4, i64 3, !dbg !239
  %mul280.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.32.vec.extract2679, !dbg !132
  %mul283.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.36.vec.extract2716, !dbg !240
  %mul286.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.40.vec.extract2753, !dbg !241
  %mul289.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.44.vec.extract2790, !dbg !242
  %numerator.sroa.194.32.vec.insert2681 = insertelement <4 x float> poison, float %mul280.2.5, i64 0, !dbg !133
  %numerator.sroa.194.36.vec.insert2718 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2681, float %mul283.2.5, i64 1, !dbg !133
  %numerator.sroa.194.40.vec.insert2755 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2718, float %mul286.2.5, i64 2, !dbg !133
  %numerator.sroa.194.44.vec.insert2792 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2755, float %mul289.2.5, i64 3, !dbg !133
  %numerator.sroa.290.48.vec.extract2835 = extractelement <4 x float> %numerator.sroa.290.4, i64 0, !dbg !239
  %numerator.sroa.290.52.vec.extract2872 = extractelement <4 x float> %numerator.sroa.290.4, i64 1, !dbg !239
  %numerator.sroa.290.56.vec.extract2909 = extractelement <4 x float> %numerator.sroa.290.4, i64 2, !dbg !239
  %numerator.sroa.290.60.vec.extract2946 = extractelement <4 x float> %numerator.sroa.290.4, i64 3, !dbg !239
  %mul280.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.48.vec.extract2835, !dbg !132
  %mul283.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.52.vec.extract2872, !dbg !240
  %mul286.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.56.vec.extract2909, !dbg !241
  %mul289.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.60.vec.extract2946, !dbg !242
  %numerator.sroa.290.48.vec.insert2837 = insertelement <4 x float> poison, float %mul280.3.5, i64 0, !dbg !133
  %numerator.sroa.290.52.vec.insert2874 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2837, float %mul283.3.5, i64 1, !dbg !133
  %numerator.sroa.290.56.vec.insert2911 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2874, float %mul286.3.5, i64 2, !dbg !133
  %numerator.sroa.290.60.vec.insert2948 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2911, float %mul289.3.5, i64 3, !dbg !133
  %sub313.5 = fsub contract float %spec.select3074, %459, !dbg !134
  %sub317.5 = fsub contract float %condval.0.1.5, %459, !dbg !135
  %sub321.5 = fsub contract float %condval.0.2.5, %459, !dbg !136
  %sub325.5 = fsub contract float %condval.0.3.5, %459, !dbg !137
  %mul330.5 = fmul contract float %sub313.5, 0x3FC7154760000000, !dbg !138
  %mul334.5 = fmul contract float %sub317.5, 0x3FC7154760000000, !dbg !139
  %mul338.5 = fmul contract float %sub321.5, 0x3FC7154760000000, !dbg !140
  %mul342.5 = fmul contract float %sub325.5, 0x3FC7154760000000, !dbg !141
  %add347.5 = fadd contract float %mul330.5, 8.000000e+00, !dbg !142
  %add351.5 = fadd contract float %mul334.5, 8.000000e+00, !dbg !143
  %add355.5 = fadd contract float %mul338.5, 8.000000e+00, !dbg !144
  %add359.5 = fadd contract float %mul342.5, 8.000000e+00, !dbg !145
  %cmp.i.i771.5 = fcmp contract olt float %add347.5, -1.260000e+02, !dbg !146
  %cond.i.i772.5 = select contract i1 %cmp.i.i771.5, float 6.400000e+01, float 0.000000e+00, !dbg !146
  %add.i.i773.5 = fadd contract float %add347.5, %cond.i.i772.5, !dbg !146
  %461 = tail call contract float @llvm.exp2.f32(float %add.i.i773.5), !dbg !146
  %cond2.i.i774.5 = select contract i1 %cmp.i.i771.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !146
  %mul.i.i775.5 = fmul contract float %cond2.i.i774.5, %461, !dbg !146
  %cmp.i.i776.5 = fcmp contract olt float %add351.5, -1.260000e+02, !dbg !148
  %cond.i.i777.5 = select contract i1 %cmp.i.i776.5, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i778.5 = fadd contract float %add351.5, %cond.i.i777.5, !dbg !148
  %462 = tail call contract float @llvm.exp2.f32(float %add.i.i778.5), !dbg !148
  %cond2.i.i779.5 = select contract i1 %cmp.i.i776.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i780.5 = fmul contract float %cond2.i.i779.5, %462, !dbg !148
  %cmp.i.i781.5 = fcmp contract olt float %add355.5, -1.260000e+02, !dbg !150
  %cond.i.i782.5 = select contract i1 %cmp.i.i781.5, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i783.5 = fadd contract float %add355.5, %cond.i.i782.5, !dbg !150
  %463 = tail call contract float @llvm.exp2.f32(float %add.i.i783.5), !dbg !150
  %cond2.i.i784.5 = select contract i1 %cmp.i.i781.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i785.5 = fmul contract float %cond2.i.i784.5, %463, !dbg !150
  %cmp.i.i786.5 = fcmp contract olt float %add359.5, -1.260000e+02, !dbg !152
  %cond.i.i787.5 = select contract i1 %cmp.i.i786.5, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i788.5 = fadd contract float %add359.5, %cond.i.i787.5, !dbg !152
  %464 = tail call contract float @llvm.exp2.f32(float %add.i.i788.5), !dbg !152
  %cond2.i.i789.5 = select contract i1 %cmp.i.i786.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i790.5 = fmul contract float %cond2.i.i789.5, %464, !dbg !152
  %465 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !154, !noalias !162
  %466 = fptrunc float %mul.i.i775.5 to half, !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %465), !dbg !154, !noalias !162
  %467 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !167, !noalias !162
  %468 = fptrunc float %mul.i.i780.5 to half, !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %467), !dbg !167, !noalias !162
  %469 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !173
  %470 = fptrunc float %mul.i.i785.5 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %469), !dbg !169, !noalias !173
  %471 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !173
  %472 = fptrunc float %mul.i.i790.5 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %471), !dbg !178, !noalias !173
  %473 = insertelement <4 x half> poison, half %466, i64 0, !dbg !180
  %474 = insertelement <4 x half> %473, half %468, i64 1, !dbg !180
  %475 = insertelement <4 x half> %474, half %470, i64 2, !dbg !180
  %476 = insertelement <4 x half> %475, half %472, i64 3, !dbg !180
  %conv.i.i.5 = fpext half %466 to float, !dbg !181
  %add393.5 = fadd contract float %conv.i.i.5, 0.000000e+00, !dbg !186
  %conv.i.i.1.5 = fpext half %468 to float, !dbg !181
  %add393.1.5 = fadd contract float %add393.5, %conv.i.i.1.5, !dbg !186
  %conv.i.i.2.5 = fpext half %470 to float, !dbg !181
  %add393.2.5 = fadd contract float %add393.1.5, %conv.i.i.2.5, !dbg !186
  %conv.i.i.3.5 = fpext half %472 to float, !dbg !181
  %add393.3.5 = fadd contract float %add393.2.5, %conv.i.i.3.5, !dbg !186
  %477 = bitcast float %add393.3.5 to i32, !dbg !187
  %478 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !189
  %479 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %478) #11, !dbg !192
  %xor.i.i796.5 = xor i32 %479, 32, !dbg !193
  %480 = and i32 %479, -64, !dbg !194
  %and.i.i797.5 = add nsw i32 %480, 64, !dbg !194
  %cmp.not.i.i798.5 = icmp slt i32 %xor.i.i796.5, %and.i.i797.5, !dbg !195
  %cond.i.i799.5 = select i1 %cmp.not.i.i798.5, i32 %xor.i.i796.5, i32 %479, !dbg !196
  %shl.i.i800.5 = shl i32 %cond.i.i799.5, 2, !dbg !197
  %481 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i800.5, i32 %477), !dbg !198
  %482 = bitcast i32 %481 to float, !dbg !199
  %add401.5 = fadd contract float %add393.3.5, %482, !dbg !200
  %483 = bitcast float %add401.5 to i32, !dbg !201
  %484 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !203
  %485 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %484) #11, !dbg !206
  %xor.i.i801.5 = xor i32 %485, 16, !dbg !207
  %486 = and i32 %485, -64, !dbg !208
  %and.i.i802.5 = add nsw i32 %486, 64, !dbg !208
  %cmp.not.i.i803.5 = icmp slt i32 %xor.i.i801.5, %and.i.i802.5, !dbg !209
  %cond.i.i804.5 = select i1 %cmp.not.i.i803.5, i32 %xor.i.i801.5, i32 %485, !dbg !210
  %shl.i.i805.5 = shl i32 %cond.i.i804.5, 2, !dbg !211
  %487 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i805.5, i32 %483), !dbg !212
  %488 = bitcast i32 %487 to float, !dbg !213
  %add406.5 = fadd contract float %add401.5, %488, !dbg !214
  fence syncscope("warp") release, !dbg !215
  tail call void @llvm.mxc.barrier.warp(), !dbg !218
  fence syncscope("warp") acquire, !dbg !219
  %489 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add426, !dbg !220
  %490 = getelementptr inbounds i8, ptr addrspace(4) %489, i64 %.idx.5, !dbg !220
  %491 = load i64, ptr addrspace(4) %490, align 8, !dbg !221
  %add.ptr435.1.5 = getelementptr inbounds i8, ptr addrspace(4) %490, i64 128, !dbg !220
  %492 = load i64, ptr addrspace(4) %add.ptr435.1.5, align 8, !dbg !221
  %add.ptr435.2.5 = getelementptr inbounds i8, ptr addrspace(4) %490, i64 256, !dbg !220
  %493 = load i64, ptr addrspace(4) %add.ptr435.2.5, align 8, !dbg !221
  %add.ptr435.3.5 = getelementptr inbounds i8, ptr addrspace(4) %490, i64 384, !dbg !220
  %494 = load i64, ptr addrspace(4) %add.ptr435.3.5, align 8, !dbg !221
  %mul300.5 = fmul contract float %denominator.sroa.0.1.4, %mul.i.i.5, !dbg !243
  %495 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul465, !dbg !222
  %add.ptr477.idx.5 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.5 = getelementptr inbounds i8, ptr addrspace(3) %495, i32 %add.ptr477.idx.5, !dbg !222
  %v_column.sroa.130.0.insert.ext1524 = shl i64 %494, 48, !dbg !223
  %v_column.sroa.98.0.insert.ext1369 = shl i64 %493, 32, !dbg !223
  %v_column.sroa.98.0.insert.shift1370 = and i64 %v_column.sroa.98.0.insert.ext1369, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1372 = or disjoint i64 %v_column.sroa.130.0.insert.ext1524, %v_column.sroa.98.0.insert.shift1370, !dbg !223
  %v_column.sroa.66.0.insert.ext1214 = shl i64 %492, 16, !dbg !223
  %v_column.sroa.66.0.insert.shift1215 = and i64 %v_column.sroa.66.0.insert.ext1214, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1217 = or disjoint i64 %v_column.sroa.98.0.insert.insert1372, %v_column.sroa.66.0.insert.shift1215, !dbg !223
  %v_column.sroa.0.0.insert.ext1071 = and i64 %491, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert1073 = or disjoint i64 %v_column.sroa.66.0.insert.insert1217, %v_column.sroa.0.0.insert.ext1071, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1073, ptr addrspace(3) %add.ptr477.5, align 8, !dbg !223
  %v_fetch.sroa.0.2.extract.shift1670 = lshr i64 %491, 16, !dbg !224
  %add466.1.5 = or disjoint i32 %mul465, 256, !dbg !225
  %496 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.1.5, !dbg !222
  %xor473.1.5 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.1.5 = xor i32 %xor473.1.5, 8, !dbg !222
  %add.ptr477.1.5 = getelementptr inbounds i8, ptr addrspace(3) %496, i32 %add.ptr477.idx.1.5, !dbg !222
  %497 = shl i64 %494, 32, !dbg !223
  %v_column.sroa.130.0.insert.ext1529 = and i64 %497, -281474976710656, !dbg !223
  %498 = shl i64 %493, 16, !dbg !223
  %v_column.sroa.98.0.insert.shift1375 = and i64 %498, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1377 = or disjoint i64 %v_column.sroa.130.0.insert.ext1529, %v_column.sroa.98.0.insert.shift1375, !dbg !223
  %v_column.sroa.66.0.insert.ext1219 = and i64 %492, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1222 = or disjoint i64 %v_column.sroa.98.0.insert.insert1377, %v_column.sroa.66.0.insert.ext1219, !dbg !223
  %v_column.sroa.0.0.insert.ext1075 = and i64 %v_fetch.sroa.0.2.extract.shift1670, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert1077 = or disjoint i64 %v_column.sroa.66.0.insert.insert1222, %v_column.sroa.0.0.insert.ext1075, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1077, ptr addrspace(3) %add.ptr477.1.5, align 8, !dbg !223
  %v_fetch.sroa.0.4.extract.shift1691 = lshr i64 %491, 32, !dbg !224
  %add466.2.5 = or disjoint i32 %mul465, 512, !dbg !225
  %499 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.2.5, !dbg !222
  %xor473.2.5 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.2.5 = xor i32 %xor473.2.5, 16, !dbg !222
  %add.ptr477.2.5 = getelementptr inbounds i8, ptr addrspace(3) %499, i32 %add.ptr477.idx.2.5, !dbg !222
  %500 = shl i64 %494, 16, !dbg !223
  %v_column.sroa.130.0.insert.ext1534 = and i64 %500, -281474976710656, !dbg !223
  %v_column.sroa.98.0.insert.ext1379 = and i64 %493, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1382 = or disjoint i64 %v_column.sroa.130.0.insert.ext1534, %v_column.sroa.98.0.insert.ext1379, !dbg !223
  %501 = lshr i64 %492, 16, !dbg !223
  %v_column.sroa.66.0.insert.shift1225 = and i64 %501, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1227 = or disjoint i64 %v_column.sroa.98.0.insert.insert1382, %v_column.sroa.66.0.insert.shift1225, !dbg !223
  %v_column.sroa.0.0.insert.ext1079 = and i64 %v_fetch.sroa.0.4.extract.shift1691, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert1081 = or disjoint i64 %v_column.sroa.66.0.insert.insert1227, %v_column.sroa.0.0.insert.ext1079, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1081, ptr addrspace(3) %add.ptr477.2.5, align 8, !dbg !223
  %v_fetch.sroa.0.6.extract.shift1712 = lshr i64 %491, 48, !dbg !224
  %v_fetch.sroa.122.30.extract.shift1943 = and i64 %494, -281474976710656, !dbg !223
  %add466.3.5 = or disjoint i32 %mul465, 768, !dbg !225
  %502 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.3.5, !dbg !222
  %xor473.3.5 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.3.5 = xor i32 %xor473.3.5, 24, !dbg !222
  %add.ptr477.3.5 = getelementptr inbounds i8, ptr addrspace(3) %502, i32 %add.ptr477.idx.3.5, !dbg !222
  %503 = lshr i64 %493, 16, !dbg !223
  %v_column.sroa.98.0.insert.shift1385 = and i64 %503, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1387 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1943, %v_column.sroa.98.0.insert.shift1385, !dbg !223
  %504 = lshr i64 %492, 32, !dbg !223
  %v_column.sroa.66.0.insert.shift1230 = and i64 %504, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1232 = or disjoint i64 %v_column.sroa.98.0.insert.insert1387, %v_column.sroa.66.0.insert.shift1230, !dbg !223
  %v_column.sroa.0.0.insert.insert1085 = or disjoint i64 %v_column.sroa.66.0.insert.insert1232, %v_fetch.sroa.0.6.extract.shift1712, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1085, ptr addrspace(3) %add.ptr477.3.5, align 8, !dbg !223
  fence syncscope("warp") release, !dbg !226
  tail call void @llvm.mxc.barrier.warp(), !dbg !229
  fence syncscope("warp") acquire, !dbg !230
  %add494.5 = or disjoint i32 %mul487, %mul493, !dbg !231
  %505 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.5, !dbg !232
  %add.ptr504.idx.5 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.5 = getelementptr inbounds i8, ptr addrspace(3) %505, i32 %add.ptr504.idx.5, !dbg !232
  %506 = load <4 x half>, ptr addrspace(3) %add.ptr504.5, align 8, !dbg !233
  %add489.1.5 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.1.5 = or disjoint i32 %add489.1.5, 64, !dbg !231
  %507 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.1.5, !dbg !232
  %xor500.1.5 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.1.5 = xor i32 %xor500.1.5, 8, !dbg !232
  %add.ptr504.1.5 = getelementptr inbounds i8, ptr addrspace(3) %507, i32 %add.ptr504.idx.1.5, !dbg !232
  %508 = load <4 x half>, ptr addrspace(3) %add.ptr504.1.5, align 8, !dbg !233
  %add489.2.5 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.2.5 = or disjoint i32 %add489.2.5, 128, !dbg !231
  %509 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.2.5, !dbg !232
  %xor500.2.5 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.2.5 = xor i32 %xor500.2.5, 16, !dbg !232
  %add.ptr504.2.5 = getelementptr inbounds i8, ptr addrspace(3) %509, i32 %add.ptr504.idx.2.5, !dbg !232
  %510 = load <4 x half>, ptr addrspace(3) %add.ptr504.2.5, align 8, !dbg !233
  %add489.3.5 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.3.5 = or disjoint i32 %add489.3.5, 192, !dbg !231
  %511 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.3.5, !dbg !232
  %xor500.3.5 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.3.5 = xor i32 %xor500.3.5, 24, !dbg !232
  %add.ptr504.3.5 = getelementptr inbounds i8, ptr addrspace(3) %511, i32 %add.ptr504.idx.3.5, !dbg !232
  %512 = load <4 x half>, ptr addrspace(3) %add.ptr504.3.5, align 8, !dbg !233
  %513 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %506, <4 x half> %476, <4 x float> %numerator.sroa.0.12.vec.insert2480), !dbg !234
  %514 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %508, <4 x half> %476, <4 x float> %numerator.sroa.98.28.vec.insert2636), !dbg !234
  %515 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %510, <4 x half> %476, <4 x float> %numerator.sroa.194.44.vec.insert2792), !dbg !234
  %516 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %512, <4 x half> %476, <4 x float> %numerator.sroa.290.60.vec.insert2948), !dbg !234
  %add410.5 = fadd contract float %mul300.5, %add406.5, !dbg !235
  br label %if.end530.5, !dbg !236

if.end530.5:                                      ; preds = %if.then.5, %if.end530.4
  %numerator.sroa.290.5 = phi <4 x float> [ %numerator.sroa.290.4, %if.end530.4 ], [ %516, %if.then.5 ], !dbg !237
  %numerator.sroa.194.5 = phi <4 x float> [ %numerator.sroa.194.4, %if.end530.4 ], [ %515, %if.then.5 ], !dbg !237
  %numerator.sroa.98.5 = phi <4 x float> [ %numerator.sroa.98.4, %if.end530.4 ], [ %514, %if.then.5 ], !dbg !237
  %numerator.sroa.0.5 = phi <4 x float> [ %numerator.sroa.0.4, %if.end530.4 ], [ %513, %if.then.5 ], !dbg !237
  %maximum.sroa.0.1.5 = phi float [ %maximum.sroa.0.1.4, %if.end530.4 ], [ %459, %if.then.5 ], !dbg !237
  %denominator.sroa.0.1.5 = phi float [ %denominator.sroa.0.1.4, %if.end530.4 ], [ %add410.5, %if.then.5 ], !dbg !237
  %517 = or disjoint i64 %19, 6, !dbg !238
  %arrayidx104.6 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %517, !dbg !65
  %518 = load i32, ptr addrspace(1) %arrayidx104.6, align 4, !dbg !65, !tbaa !30
  %mul105.6 = shl nsw i32 %518, 4, !dbg !66
  %cmp106.6 = icmp slt i32 %518, 0, !dbg !67
  %cmp108.not.6 = icmp sgt i32 %mul105.6, %1
  %or.cond.6 = select i1 %cmp106.6, i1 true, i1 %cmp108.not.6, !dbg !68
  br i1 %or.cond.6, label %if.end530.6, label %if.then.6, !dbg !68

if.then.6:                                        ; preds = %if.end530.5
  fence syncscope("warp") release, !dbg !69
  tail call void @llvm.mxc.barrier.warp(), !dbg !72
  fence syncscope("warp") acquire, !dbg !73
  %conv118.6 = zext nneg i32 %mul105.6 to i64
  %.idx.6 = shl nuw nsw i64 %conv118.6, 7
  %gep.6 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep848, i64 %.idx.6, !dbg !74
  %.idx855.6 = shl nuw nsw i64 %conv, 17, !dbg !75
  %519 = getelementptr inbounds i8, ptr addrspace(4) %gep.6, i64 %.idx855.6, !dbg !75
  %qk_fetch.sroa.0.0.copyload3025 = load i64, ptr addrspace(4) %519, align 16, !dbg !76
  %qk_fetch.sroa.38.0..sroa_idx3047 = getelementptr inbounds i8, ptr addrspace(4) %519, i64 8, !dbg !76
  %qk_fetch.sroa.38.0.copyload3048 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx3047, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3025, ptr addrspace(3) %add.ptr39, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3048, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !77
  %gep831.1.6 = getelementptr inbounds i8, ptr addrspace(4) %519, i64 1024, !dbg !75
  %qk_fetch.sroa.0.0.copyload3026 = load i64, ptr addrspace(4) %gep831.1.6, align 16, !dbg !76
  %qk_fetch.sroa.38.0.gep831.1.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %519, i64 1032, !dbg !76
  %qk_fetch.sroa.38.0.copyload3049 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep831.1.6.sroa_idx, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3026, ptr addrspace(3) %add.ptr39.1862, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3049, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !77
  fence syncscope("warp") release, !dbg !78
  tail call void @llvm.mxc.barrier.warp(), !dbg !81
  fence syncscope("warp") acquire, !dbg !82
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !83
  %520 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %9, <4 x float> zeroinitializer), !dbg !84
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !83
  %521 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %10, <4 x float> %520), !dbg !84
  %k_local.sroa.0.0.copyload.2.6 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !83
  %522 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.6, <4 x half> %11, <4 x float> %521), !dbg !84
  %k_local.sroa.0.0.copyload.3.6 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !83
  %523 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.6, <4 x half> %12, <4 x float> %522), !dbg !84
  %add218.6 = add nuw nsw i32 %mul105.6, %mul217
  %cmp221.not.6 = icmp sgt i32 %add218.6, %1, !dbg !85
  %scores.sroa.0.0.vec.extract2091 = extractelement <4 x float> %523, i64 0
  %spec.select3075 = select i1 %cmp221.not.6, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2091, !dbg !86
  %cmp221.not.1.6.not = icmp slt i32 %add218.6, %1, !dbg !85
  %scores.sroa.0.4.vec.extract2174 = extractelement <4 x float> %523, i64 1, !dbg !86
  %condval.0.1.6 = select i1 %cmp221.not.1.6.not, float %scores.sroa.0.4.vec.extract2174, float 0xFFF0000000000000, !dbg !86
  %add219.2.6 = or disjoint i32 %add218.6, 2, !dbg !87
  %cmp221.not.2.6 = icmp sgt i32 %add219.2.6, %1, !dbg !85
  %scores.sroa.0.8.vec.extract2251 = extractelement <4 x float> %523, i64 2, !dbg !86
  %condval.0.2.6 = select i1 %cmp221.not.2.6, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2251, !dbg !86
  %add219.3.6 = or disjoint i32 %add218.6, 3, !dbg !87
  %cmp221.not.3.6 = icmp sgt i32 %add219.3.6, %1, !dbg !85
  %scores.sroa.0.12.vec.extract2328 = extractelement <4 x float> %523, i64 3, !dbg !86
  %condval.0.3.6 = select i1 %cmp221.not.3.6, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2328, !dbg !86
  %524 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3075, float 0xFFF0000000000000), !dbg !88
  %525 = tail call contract noundef float @llvm.maxnum.f32(float %524, float %condval.0.1.6), !dbg !88
  %526 = tail call contract noundef float @llvm.maxnum.f32(float %525, float %condval.0.2.6), !dbg !88
  %527 = tail call contract noundef float @llvm.maxnum.f32(float %526, float %condval.0.3.6), !dbg !88
  %528 = bitcast float %527 to i32, !dbg !92
  %529 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !95
  %530 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %529) #11, !dbg !100
  %xor.i.i.6 = xor i32 %530, 32, !dbg !101
  %531 = and i32 %530, -64, !dbg !102
  %and.i.i.6 = add nsw i32 %531, 64, !dbg !102
  %cmp.not.i.i.6 = icmp slt i32 %xor.i.i.6, %and.i.i.6, !dbg !103
  %cond.i.i.6 = select i1 %cmp.not.i.i.6, i32 %xor.i.i.6, i32 %530, !dbg !104
  %shl.i.i.6 = shl i32 %cond.i.i.6, 2, !dbg !105
  %532 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.6, i32 %528), !dbg !106
  %533 = bitcast i32 %532 to float, !dbg !107
  %534 = tail call contract noundef float @llvm.maxnum.f32(float %527, float %533), !dbg !108
  %535 = bitcast float %534 to i32, !dbg !110
  %536 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !112
  %537 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %536) #11, !dbg !115
  %xor.i.i765.6 = xor i32 %537, 16, !dbg !116
  %538 = and i32 %537, -64, !dbg !117
  %and.i.i766.6 = add nsw i32 %538, 64, !dbg !117
  %cmp.not.i.i767.6 = icmp slt i32 %xor.i.i765.6, %and.i.i766.6, !dbg !118
  %cond.i.i768.6 = select i1 %cmp.not.i.i767.6, i32 %xor.i.i765.6, i32 %537, !dbg !119
  %shl.i.i769.6 = shl i32 %cond.i.i768.6, 2, !dbg !120
  %539 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i769.6, i32 %535), !dbg !121
  %540 = bitcast i32 %539 to float, !dbg !122
  %541 = tail call contract noundef float @llvm.maxnum.f32(float %534, float %540), !dbg !123
  %542 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.5, float %541), !dbg !125
  %sub.6 = fsub contract float %maximum.sroa.0.1.5, %542, !dbg !127
  %mul263.6 = fmul contract float %sub.6, 0x3FC7154760000000, !dbg !128
  %cmp.i.i.6 = fcmp contract olt float %mul263.6, -1.260000e+02, !dbg !129
  %cond.i.i770.6 = select contract i1 %cmp.i.i.6, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i.6 = fadd contract float %mul263.6, %cond.i.i770.6, !dbg !129
  %543 = tail call contract float @llvm.exp2.f32(float %add.i.i.6), !dbg !129
  %cond2.i.i.6 = select contract i1 %cmp.i.i.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i.6 = fmul contract float %cond2.i.i.6, %543, !dbg !129
  %numerator.sroa.0.0.vec.extract2371 = extractelement <4 x float> %numerator.sroa.0.5, i64 0, !dbg !239
  %numerator.sroa.0.4.vec.extract2408 = extractelement <4 x float> %numerator.sroa.0.5, i64 1, !dbg !239
  %numerator.sroa.0.8.vec.extract2445 = extractelement <4 x float> %numerator.sroa.0.5, i64 2, !dbg !239
  %numerator.sroa.0.12.vec.extract2482 = extractelement <4 x float> %numerator.sroa.0.5, i64 3, !dbg !239
  %mul280.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.0.vec.extract2371, !dbg !132
  %mul283.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.4.vec.extract2408, !dbg !240
  %mul286.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.8.vec.extract2445, !dbg !241
  %mul289.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.12.vec.extract2482, !dbg !242
  %numerator.sroa.0.0.vec.insert2373 = insertelement <4 x float> poison, float %mul280.6, i64 0, !dbg !133
  %numerator.sroa.0.4.vec.insert2410 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2373, float %mul283.6, i64 1, !dbg !133
  %numerator.sroa.0.8.vec.insert2447 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2410, float %mul286.6, i64 2, !dbg !133
  %numerator.sroa.0.12.vec.insert2484 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2447, float %mul289.6, i64 3, !dbg !133
  %numerator.sroa.98.16.vec.extract2527 = extractelement <4 x float> %numerator.sroa.98.5, i64 0, !dbg !239
  %numerator.sroa.98.20.vec.extract2564 = extractelement <4 x float> %numerator.sroa.98.5, i64 1, !dbg !239
  %numerator.sroa.98.24.vec.extract2601 = extractelement <4 x float> %numerator.sroa.98.5, i64 2, !dbg !239
  %numerator.sroa.98.28.vec.extract2638 = extractelement <4 x float> %numerator.sroa.98.5, i64 3, !dbg !239
  %mul280.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.16.vec.extract2527, !dbg !132
  %mul283.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.20.vec.extract2564, !dbg !240
  %mul286.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.24.vec.extract2601, !dbg !241
  %mul289.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.28.vec.extract2638, !dbg !242
  %numerator.sroa.98.16.vec.insert2529 = insertelement <4 x float> poison, float %mul280.1.6, i64 0, !dbg !133
  %numerator.sroa.98.20.vec.insert2566 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2529, float %mul283.1.6, i64 1, !dbg !133
  %numerator.sroa.98.24.vec.insert2603 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2566, float %mul286.1.6, i64 2, !dbg !133
  %numerator.sroa.98.28.vec.insert2640 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2603, float %mul289.1.6, i64 3, !dbg !133
  %numerator.sroa.194.32.vec.extract2683 = extractelement <4 x float> %numerator.sroa.194.5, i64 0, !dbg !239
  %numerator.sroa.194.36.vec.extract2720 = extractelement <4 x float> %numerator.sroa.194.5, i64 1, !dbg !239
  %numerator.sroa.194.40.vec.extract2757 = extractelement <4 x float> %numerator.sroa.194.5, i64 2, !dbg !239
  %numerator.sroa.194.44.vec.extract2794 = extractelement <4 x float> %numerator.sroa.194.5, i64 3, !dbg !239
  %mul280.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.32.vec.extract2683, !dbg !132
  %mul283.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.36.vec.extract2720, !dbg !240
  %mul286.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.40.vec.extract2757, !dbg !241
  %mul289.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.44.vec.extract2794, !dbg !242
  %numerator.sroa.194.32.vec.insert2685 = insertelement <4 x float> poison, float %mul280.2.6, i64 0, !dbg !133
  %numerator.sroa.194.36.vec.insert2722 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2685, float %mul283.2.6, i64 1, !dbg !133
  %numerator.sroa.194.40.vec.insert2759 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2722, float %mul286.2.6, i64 2, !dbg !133
  %numerator.sroa.194.44.vec.insert2796 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2759, float %mul289.2.6, i64 3, !dbg !133
  %numerator.sroa.290.48.vec.extract2839 = extractelement <4 x float> %numerator.sroa.290.5, i64 0, !dbg !239
  %numerator.sroa.290.52.vec.extract2876 = extractelement <4 x float> %numerator.sroa.290.5, i64 1, !dbg !239
  %numerator.sroa.290.56.vec.extract2913 = extractelement <4 x float> %numerator.sroa.290.5, i64 2, !dbg !239
  %numerator.sroa.290.60.vec.extract2950 = extractelement <4 x float> %numerator.sroa.290.5, i64 3, !dbg !239
  %mul280.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.48.vec.extract2839, !dbg !132
  %mul283.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.52.vec.extract2876, !dbg !240
  %mul286.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.56.vec.extract2913, !dbg !241
  %mul289.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.60.vec.extract2950, !dbg !242
  %numerator.sroa.290.48.vec.insert2841 = insertelement <4 x float> poison, float %mul280.3.6, i64 0, !dbg !133
  %numerator.sroa.290.52.vec.insert2878 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2841, float %mul283.3.6, i64 1, !dbg !133
  %numerator.sroa.290.56.vec.insert2915 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2878, float %mul286.3.6, i64 2, !dbg !133
  %numerator.sroa.290.60.vec.insert2952 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2915, float %mul289.3.6, i64 3, !dbg !133
  %sub313.6 = fsub contract float %spec.select3075, %542, !dbg !134
  %sub317.6 = fsub contract float %condval.0.1.6, %542, !dbg !135
  %sub321.6 = fsub contract float %condval.0.2.6, %542, !dbg !136
  %sub325.6 = fsub contract float %condval.0.3.6, %542, !dbg !137
  %mul330.6 = fmul contract float %sub313.6, 0x3FC7154760000000, !dbg !138
  %mul334.6 = fmul contract float %sub317.6, 0x3FC7154760000000, !dbg !139
  %mul338.6 = fmul contract float %sub321.6, 0x3FC7154760000000, !dbg !140
  %mul342.6 = fmul contract float %sub325.6, 0x3FC7154760000000, !dbg !141
  %add347.6 = fadd contract float %mul330.6, 8.000000e+00, !dbg !142
  %add351.6 = fadd contract float %mul334.6, 8.000000e+00, !dbg !143
  %add355.6 = fadd contract float %mul338.6, 8.000000e+00, !dbg !144
  %add359.6 = fadd contract float %mul342.6, 8.000000e+00, !dbg !145
  %cmp.i.i771.6 = fcmp contract olt float %add347.6, -1.260000e+02, !dbg !146
  %cond.i.i772.6 = select contract i1 %cmp.i.i771.6, float 6.400000e+01, float 0.000000e+00, !dbg !146
  %add.i.i773.6 = fadd contract float %add347.6, %cond.i.i772.6, !dbg !146
  %544 = tail call contract float @llvm.exp2.f32(float %add.i.i773.6), !dbg !146
  %cond2.i.i774.6 = select contract i1 %cmp.i.i771.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !146
  %mul.i.i775.6 = fmul contract float %cond2.i.i774.6, %544, !dbg !146
  %cmp.i.i776.6 = fcmp contract olt float %add351.6, -1.260000e+02, !dbg !148
  %cond.i.i777.6 = select contract i1 %cmp.i.i776.6, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i778.6 = fadd contract float %add351.6, %cond.i.i777.6, !dbg !148
  %545 = tail call contract float @llvm.exp2.f32(float %add.i.i778.6), !dbg !148
  %cond2.i.i779.6 = select contract i1 %cmp.i.i776.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i780.6 = fmul contract float %cond2.i.i779.6, %545, !dbg !148
  %cmp.i.i781.6 = fcmp contract olt float %add355.6, -1.260000e+02, !dbg !150
  %cond.i.i782.6 = select contract i1 %cmp.i.i781.6, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i783.6 = fadd contract float %add355.6, %cond.i.i782.6, !dbg !150
  %546 = tail call contract float @llvm.exp2.f32(float %add.i.i783.6), !dbg !150
  %cond2.i.i784.6 = select contract i1 %cmp.i.i781.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i785.6 = fmul contract float %cond2.i.i784.6, %546, !dbg !150
  %cmp.i.i786.6 = fcmp contract olt float %add359.6, -1.260000e+02, !dbg !152
  %cond.i.i787.6 = select contract i1 %cmp.i.i786.6, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i788.6 = fadd contract float %add359.6, %cond.i.i787.6, !dbg !152
  %547 = tail call contract float @llvm.exp2.f32(float %add.i.i788.6), !dbg !152
  %cond2.i.i789.6 = select contract i1 %cmp.i.i786.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i790.6 = fmul contract float %cond2.i.i789.6, %547, !dbg !152
  %548 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !154, !noalias !162
  %549 = fptrunc float %mul.i.i775.6 to half, !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %548), !dbg !154, !noalias !162
  %550 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !167, !noalias !162
  %551 = fptrunc float %mul.i.i780.6 to half, !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %550), !dbg !167, !noalias !162
  %552 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !173
  %553 = fptrunc float %mul.i.i785.6 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %552), !dbg !169, !noalias !173
  %554 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !173
  %555 = fptrunc float %mul.i.i790.6 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %554), !dbg !178, !noalias !173
  %556 = insertelement <4 x half> poison, half %549, i64 0, !dbg !180
  %557 = insertelement <4 x half> %556, half %551, i64 1, !dbg !180
  %558 = insertelement <4 x half> %557, half %553, i64 2, !dbg !180
  %559 = insertelement <4 x half> %558, half %555, i64 3, !dbg !180
  %conv.i.i.6 = fpext half %549 to float, !dbg !181
  %add393.6 = fadd contract float %conv.i.i.6, 0.000000e+00, !dbg !186
  %conv.i.i.1.6 = fpext half %551 to float, !dbg !181
  %add393.1.6 = fadd contract float %add393.6, %conv.i.i.1.6, !dbg !186
  %conv.i.i.2.6 = fpext half %553 to float, !dbg !181
  %add393.2.6 = fadd contract float %add393.1.6, %conv.i.i.2.6, !dbg !186
  %conv.i.i.3.6 = fpext half %555 to float, !dbg !181
  %add393.3.6 = fadd contract float %add393.2.6, %conv.i.i.3.6, !dbg !186
  %560 = bitcast float %add393.3.6 to i32, !dbg !187
  %561 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !189
  %562 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %561) #11, !dbg !192
  %xor.i.i796.6 = xor i32 %562, 32, !dbg !193
  %563 = and i32 %562, -64, !dbg !194
  %and.i.i797.6 = add nsw i32 %563, 64, !dbg !194
  %cmp.not.i.i798.6 = icmp slt i32 %xor.i.i796.6, %and.i.i797.6, !dbg !195
  %cond.i.i799.6 = select i1 %cmp.not.i.i798.6, i32 %xor.i.i796.6, i32 %562, !dbg !196
  %shl.i.i800.6 = shl i32 %cond.i.i799.6, 2, !dbg !197
  %564 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i800.6, i32 %560), !dbg !198
  %565 = bitcast i32 %564 to float, !dbg !199
  %add401.6 = fadd contract float %add393.3.6, %565, !dbg !200
  %566 = bitcast float %add401.6 to i32, !dbg !201
  %567 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !203
  %568 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %567) #11, !dbg !206
  %xor.i.i801.6 = xor i32 %568, 16, !dbg !207
  %569 = and i32 %568, -64, !dbg !208
  %and.i.i802.6 = add nsw i32 %569, 64, !dbg !208
  %cmp.not.i.i803.6 = icmp slt i32 %xor.i.i801.6, %and.i.i802.6, !dbg !209
  %cond.i.i804.6 = select i1 %cmp.not.i.i803.6, i32 %xor.i.i801.6, i32 %568, !dbg !210
  %shl.i.i805.6 = shl i32 %cond.i.i804.6, 2, !dbg !211
  %570 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i805.6, i32 %566), !dbg !212
  %571 = bitcast i32 %570 to float, !dbg !213
  %add406.6 = fadd contract float %add401.6, %571, !dbg !214
  fence syncscope("warp") release, !dbg !215
  tail call void @llvm.mxc.barrier.warp(), !dbg !218
  fence syncscope("warp") acquire, !dbg !219
  %572 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add426, !dbg !220
  %573 = getelementptr inbounds i8, ptr addrspace(4) %572, i64 %.idx.6, !dbg !220
  %574 = load i64, ptr addrspace(4) %573, align 8, !dbg !221
  %add.ptr435.1.6 = getelementptr inbounds i8, ptr addrspace(4) %573, i64 128, !dbg !220
  %575 = load i64, ptr addrspace(4) %add.ptr435.1.6, align 8, !dbg !221
  %add.ptr435.2.6 = getelementptr inbounds i8, ptr addrspace(4) %573, i64 256, !dbg !220
  %576 = load i64, ptr addrspace(4) %add.ptr435.2.6, align 8, !dbg !221
  %add.ptr435.3.6 = getelementptr inbounds i8, ptr addrspace(4) %573, i64 384, !dbg !220
  %577 = load i64, ptr addrspace(4) %add.ptr435.3.6, align 8, !dbg !221
  %mul300.6 = fmul contract float %denominator.sroa.0.1.5, %mul.i.i.6, !dbg !243
  %578 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul465, !dbg !222
  %add.ptr477.idx.6 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.6 = getelementptr inbounds i8, ptr addrspace(3) %578, i32 %add.ptr477.idx.6, !dbg !222
  %v_column.sroa.130.0.insert.ext1544 = shl i64 %577, 48, !dbg !223
  %v_column.sroa.98.0.insert.ext1389 = shl i64 %576, 32, !dbg !223
  %v_column.sroa.98.0.insert.shift1390 = and i64 %v_column.sroa.98.0.insert.ext1389, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1392 = or disjoint i64 %v_column.sroa.130.0.insert.ext1544, %v_column.sroa.98.0.insert.shift1390, !dbg !223
  %v_column.sroa.66.0.insert.ext1234 = shl i64 %575, 16, !dbg !223
  %v_column.sroa.66.0.insert.shift1235 = and i64 %v_column.sroa.66.0.insert.ext1234, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1237 = or disjoint i64 %v_column.sroa.98.0.insert.insert1392, %v_column.sroa.66.0.insert.shift1235, !dbg !223
  %v_column.sroa.0.0.insert.ext1087 = and i64 %574, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert1089 = or disjoint i64 %v_column.sroa.66.0.insert.insert1237, %v_column.sroa.0.0.insert.ext1087, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1089, ptr addrspace(3) %add.ptr477.6, align 8, !dbg !223
  %v_fetch.sroa.0.2.extract.shift1673 = lshr i64 %574, 16, !dbg !224
  %add466.1.6 = or disjoint i32 %mul465, 256, !dbg !225
  %579 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.1.6, !dbg !222
  %xor473.1.6 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.1.6 = xor i32 %xor473.1.6, 8, !dbg !222
  %add.ptr477.1.6 = getelementptr inbounds i8, ptr addrspace(3) %579, i32 %add.ptr477.idx.1.6, !dbg !222
  %580 = shl i64 %577, 32, !dbg !223
  %v_column.sroa.130.0.insert.ext1549 = and i64 %580, -281474976710656, !dbg !223
  %581 = shl i64 %576, 16, !dbg !223
  %v_column.sroa.98.0.insert.shift1395 = and i64 %581, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1397 = or disjoint i64 %v_column.sroa.130.0.insert.ext1549, %v_column.sroa.98.0.insert.shift1395, !dbg !223
  %v_column.sroa.66.0.insert.ext1239 = and i64 %575, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1242 = or disjoint i64 %v_column.sroa.98.0.insert.insert1397, %v_column.sroa.66.0.insert.ext1239, !dbg !223
  %v_column.sroa.0.0.insert.ext1091 = and i64 %v_fetch.sroa.0.2.extract.shift1673, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert1093 = or disjoint i64 %v_column.sroa.66.0.insert.insert1242, %v_column.sroa.0.0.insert.ext1091, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1093, ptr addrspace(3) %add.ptr477.1.6, align 8, !dbg !223
  %v_fetch.sroa.0.4.extract.shift1694 = lshr i64 %574, 32, !dbg !224
  %add466.2.6 = or disjoint i32 %mul465, 512, !dbg !225
  %582 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.2.6, !dbg !222
  %xor473.2.6 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.2.6 = xor i32 %xor473.2.6, 16, !dbg !222
  %add.ptr477.2.6 = getelementptr inbounds i8, ptr addrspace(3) %582, i32 %add.ptr477.idx.2.6, !dbg !222
  %583 = shl i64 %577, 16, !dbg !223
  %v_column.sroa.130.0.insert.ext1554 = and i64 %583, -281474976710656, !dbg !223
  %v_column.sroa.98.0.insert.ext1399 = and i64 %576, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1402 = or disjoint i64 %v_column.sroa.130.0.insert.ext1554, %v_column.sroa.98.0.insert.ext1399, !dbg !223
  %584 = lshr i64 %575, 16, !dbg !223
  %v_column.sroa.66.0.insert.shift1245 = and i64 %584, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1247 = or disjoint i64 %v_column.sroa.98.0.insert.insert1402, %v_column.sroa.66.0.insert.shift1245, !dbg !223
  %v_column.sroa.0.0.insert.ext1095 = and i64 %v_fetch.sroa.0.4.extract.shift1694, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert1097 = or disjoint i64 %v_column.sroa.66.0.insert.insert1247, %v_column.sroa.0.0.insert.ext1095, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1097, ptr addrspace(3) %add.ptr477.2.6, align 8, !dbg !223
  %v_fetch.sroa.0.6.extract.shift1715 = lshr i64 %574, 48, !dbg !224
  %v_fetch.sroa.122.30.extract.shift1946 = and i64 %577, -281474976710656, !dbg !223
  %add466.3.6 = or disjoint i32 %mul465, 768, !dbg !225
  %585 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.3.6, !dbg !222
  %xor473.3.6 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.3.6 = xor i32 %xor473.3.6, 24, !dbg !222
  %add.ptr477.3.6 = getelementptr inbounds i8, ptr addrspace(3) %585, i32 %add.ptr477.idx.3.6, !dbg !222
  %586 = lshr i64 %576, 16, !dbg !223
  %v_column.sroa.98.0.insert.shift1405 = and i64 %586, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1407 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1946, %v_column.sroa.98.0.insert.shift1405, !dbg !223
  %587 = lshr i64 %575, 32, !dbg !223
  %v_column.sroa.66.0.insert.shift1250 = and i64 %587, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1252 = or disjoint i64 %v_column.sroa.98.0.insert.insert1407, %v_column.sroa.66.0.insert.shift1250, !dbg !223
  %v_column.sroa.0.0.insert.insert1101 = or disjoint i64 %v_column.sroa.66.0.insert.insert1252, %v_fetch.sroa.0.6.extract.shift1715, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1101, ptr addrspace(3) %add.ptr477.3.6, align 8, !dbg !223
  fence syncscope("warp") release, !dbg !226
  tail call void @llvm.mxc.barrier.warp(), !dbg !229
  fence syncscope("warp") acquire, !dbg !230
  %add494.6 = or disjoint i32 %mul487, %mul493, !dbg !231
  %588 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.6, !dbg !232
  %add.ptr504.idx.6 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.6 = getelementptr inbounds i8, ptr addrspace(3) %588, i32 %add.ptr504.idx.6, !dbg !232
  %589 = load <4 x half>, ptr addrspace(3) %add.ptr504.6, align 8, !dbg !233
  %add489.1.6 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.1.6 = or disjoint i32 %add489.1.6, 64, !dbg !231
  %590 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.1.6, !dbg !232
  %xor500.1.6 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.1.6 = xor i32 %xor500.1.6, 8, !dbg !232
  %add.ptr504.1.6 = getelementptr inbounds i8, ptr addrspace(3) %590, i32 %add.ptr504.idx.1.6, !dbg !232
  %591 = load <4 x half>, ptr addrspace(3) %add.ptr504.1.6, align 8, !dbg !233
  %add489.2.6 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.2.6 = or disjoint i32 %add489.2.6, 128, !dbg !231
  %592 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.2.6, !dbg !232
  %xor500.2.6 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.2.6 = xor i32 %xor500.2.6, 16, !dbg !232
  %add.ptr504.2.6 = getelementptr inbounds i8, ptr addrspace(3) %592, i32 %add.ptr504.idx.2.6, !dbg !232
  %593 = load <4 x half>, ptr addrspace(3) %add.ptr504.2.6, align 8, !dbg !233
  %add489.3.6 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.3.6 = or disjoint i32 %add489.3.6, 192, !dbg !231
  %594 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.3.6, !dbg !232
  %xor500.3.6 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.3.6 = xor i32 %xor500.3.6, 24, !dbg !232
  %add.ptr504.3.6 = getelementptr inbounds i8, ptr addrspace(3) %594, i32 %add.ptr504.idx.3.6, !dbg !232
  %595 = load <4 x half>, ptr addrspace(3) %add.ptr504.3.6, align 8, !dbg !233
  %596 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %589, <4 x half> %559, <4 x float> %numerator.sroa.0.12.vec.insert2484), !dbg !234
  %597 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %591, <4 x half> %559, <4 x float> %numerator.sroa.98.28.vec.insert2640), !dbg !234
  %598 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %593, <4 x half> %559, <4 x float> %numerator.sroa.194.44.vec.insert2796), !dbg !234
  %599 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %595, <4 x half> %559, <4 x float> %numerator.sroa.290.60.vec.insert2952), !dbg !234
  %add410.6 = fadd contract float %mul300.6, %add406.6, !dbg !235
  br label %if.end530.6, !dbg !236

if.end530.6:                                      ; preds = %if.then.6, %if.end530.5
  %numerator.sroa.290.6 = phi <4 x float> [ %numerator.sroa.290.5, %if.end530.5 ], [ %599, %if.then.6 ], !dbg !237
  %numerator.sroa.194.6 = phi <4 x float> [ %numerator.sroa.194.5, %if.end530.5 ], [ %598, %if.then.6 ], !dbg !237
  %numerator.sroa.98.6 = phi <4 x float> [ %numerator.sroa.98.5, %if.end530.5 ], [ %597, %if.then.6 ], !dbg !237
  %numerator.sroa.0.6 = phi <4 x float> [ %numerator.sroa.0.5, %if.end530.5 ], [ %596, %if.then.6 ], !dbg !237
  %maximum.sroa.0.1.6 = phi float [ %maximum.sroa.0.1.5, %if.end530.5 ], [ %542, %if.then.6 ], !dbg !237
  %denominator.sroa.0.1.6 = phi float [ %denominator.sroa.0.1.5, %if.end530.5 ], [ %add410.6, %if.then.6 ], !dbg !237
  %600 = or disjoint i64 %19, 7, !dbg !238
  %arrayidx104.7 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %600, !dbg !65
  %601 = load i32, ptr addrspace(1) %arrayidx104.7, align 4, !dbg !65, !tbaa !30
  %mul105.7 = shl nsw i32 %601, 4, !dbg !66
  %cmp106.7 = icmp slt i32 %601, 0, !dbg !67
  %cmp108.not.7 = icmp sgt i32 %mul105.7, %1
  %or.cond.7 = select i1 %cmp106.7, i1 true, i1 %cmp108.not.7, !dbg !68
  br i1 %or.cond.7, label %if.end530.7, label %if.then.7, !dbg !68

if.then.7:                                        ; preds = %if.end530.6
  fence syncscope("warp") release, !dbg !69
  tail call void @llvm.mxc.barrier.warp(), !dbg !72
  fence syncscope("warp") acquire, !dbg !73
  %conv118.7 = zext nneg i32 %mul105.7 to i64
  %.idx.7 = shl nuw nsw i64 %conv118.7, 7
  %gep.7 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep848, i64 %.idx.7, !dbg !74
  %.idx855.7 = shl nuw nsw i64 %conv, 17, !dbg !75
  %602 = getelementptr inbounds i8, ptr addrspace(4) %gep.7, i64 %.idx855.7, !dbg !75
  %qk_fetch.sroa.0.0.copyload3027 = load i64, ptr addrspace(4) %602, align 16, !dbg !76
  %qk_fetch.sroa.38.0..sroa_idx3050 = getelementptr inbounds i8, ptr addrspace(4) %602, i64 8, !dbg !76
  %qk_fetch.sroa.38.0.copyload3051 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx3050, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3027, ptr addrspace(3) %add.ptr39, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3051, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !77
  %gep831.1.7 = getelementptr inbounds i8, ptr addrspace(4) %602, i64 1024, !dbg !75
  %qk_fetch.sroa.0.0.copyload3028 = load i64, ptr addrspace(4) %gep831.1.7, align 16, !dbg !76
  %qk_fetch.sroa.38.0.gep831.1.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %602, i64 1032, !dbg !76
  %qk_fetch.sroa.38.0.copyload3052 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep831.1.7.sroa_idx, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3028, ptr addrspace(3) %add.ptr39.1862, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3052, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !77
  fence syncscope("warp") release, !dbg !78
  tail call void @llvm.mxc.barrier.warp(), !dbg !81
  fence syncscope("warp") acquire, !dbg !82
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !83
  %603 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %9, <4 x float> zeroinitializer), !dbg !84
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !83
  %604 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %10, <4 x float> %603), !dbg !84
  %k_local.sroa.0.0.copyload.2.7 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !83
  %605 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.7, <4 x half> %11, <4 x float> %604), !dbg !84
  %k_local.sroa.0.0.copyload.3.7 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !83
  %606 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.7, <4 x half> %12, <4 x float> %605), !dbg !84
  %add218.7 = add nuw nsw i32 %mul105.7, %mul217
  %cmp221.not.7 = icmp sgt i32 %add218.7, %1, !dbg !85
  %scores.sroa.0.0.vec.extract2101 = extractelement <4 x float> %606, i64 0
  %spec.select3076 = select i1 %cmp221.not.7, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2101, !dbg !86
  %cmp221.not.1.7.not = icmp slt i32 %add218.7, %1, !dbg !85
  %scores.sroa.0.4.vec.extract2180 = extractelement <4 x float> %606, i64 1, !dbg !86
  %condval.0.1.7 = select i1 %cmp221.not.1.7.not, float %scores.sroa.0.4.vec.extract2180, float 0xFFF0000000000000, !dbg !86
  %add219.2.7 = or disjoint i32 %add218.7, 2, !dbg !87
  %cmp221.not.2.7 = icmp sgt i32 %add219.2.7, %1, !dbg !85
  %scores.sroa.0.8.vec.extract2257 = extractelement <4 x float> %606, i64 2, !dbg !86
  %condval.0.2.7 = select i1 %cmp221.not.2.7, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2257, !dbg !86
  %add219.3.7 = or disjoint i32 %add218.7, 3, !dbg !87
  %cmp221.not.3.7 = icmp sgt i32 %add219.3.7, %1, !dbg !85
  %scores.sroa.0.12.vec.extract2334 = extractelement <4 x float> %606, i64 3, !dbg !86
  %condval.0.3.7 = select i1 %cmp221.not.3.7, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2334, !dbg !86
  %607 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3076, float 0xFFF0000000000000), !dbg !88
  %608 = tail call contract noundef float @llvm.maxnum.f32(float %607, float %condval.0.1.7), !dbg !88
  %609 = tail call contract noundef float @llvm.maxnum.f32(float %608, float %condval.0.2.7), !dbg !88
  %610 = tail call contract noundef float @llvm.maxnum.f32(float %609, float %condval.0.3.7), !dbg !88
  %611 = bitcast float %610 to i32, !dbg !92
  %612 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !95
  %613 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %612) #11, !dbg !100
  %xor.i.i.7 = xor i32 %613, 32, !dbg !101
  %614 = and i32 %613, -64, !dbg !102
  %and.i.i.7 = add nsw i32 %614, 64, !dbg !102
  %cmp.not.i.i.7 = icmp slt i32 %xor.i.i.7, %and.i.i.7, !dbg !103
  %cond.i.i.7 = select i1 %cmp.not.i.i.7, i32 %xor.i.i.7, i32 %613, !dbg !104
  %shl.i.i.7 = shl i32 %cond.i.i.7, 2, !dbg !105
  %615 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.7, i32 %611), !dbg !106
  %616 = bitcast i32 %615 to float, !dbg !107
  %617 = tail call contract noundef float @llvm.maxnum.f32(float %610, float %616), !dbg !108
  %618 = bitcast float %617 to i32, !dbg !110
  %619 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !112
  %620 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %619) #11, !dbg !115
  %xor.i.i765.7 = xor i32 %620, 16, !dbg !116
  %621 = and i32 %620, -64, !dbg !117
  %and.i.i766.7 = add nsw i32 %621, 64, !dbg !117
  %cmp.not.i.i767.7 = icmp slt i32 %xor.i.i765.7, %and.i.i766.7, !dbg !118
  %cond.i.i768.7 = select i1 %cmp.not.i.i767.7, i32 %xor.i.i765.7, i32 %620, !dbg !119
  %shl.i.i769.7 = shl i32 %cond.i.i768.7, 2, !dbg !120
  %622 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i769.7, i32 %618), !dbg !121
  %623 = bitcast i32 %622 to float, !dbg !122
  %624 = tail call contract noundef float @llvm.maxnum.f32(float %617, float %623), !dbg !123
  %625 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.6, float %624), !dbg !125
  %sub.7 = fsub contract float %maximum.sroa.0.1.6, %625, !dbg !127
  %mul263.7 = fmul contract float %sub.7, 0x3FC7154760000000, !dbg !128
  %cmp.i.i.7 = fcmp contract olt float %mul263.7, -1.260000e+02, !dbg !129
  %cond.i.i770.7 = select contract i1 %cmp.i.i.7, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i.7 = fadd contract float %mul263.7, %cond.i.i770.7, !dbg !129
  %626 = tail call contract float @llvm.exp2.f32(float %add.i.i.7), !dbg !129
  %cond2.i.i.7 = select contract i1 %cmp.i.i.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i.7 = fmul contract float %cond2.i.i.7, %626, !dbg !129
  %numerator.sroa.0.0.vec.extract2375 = extractelement <4 x float> %numerator.sroa.0.6, i64 0, !dbg !239
  %numerator.sroa.0.4.vec.extract2412 = extractelement <4 x float> %numerator.sroa.0.6, i64 1, !dbg !239
  %numerator.sroa.0.8.vec.extract2449 = extractelement <4 x float> %numerator.sroa.0.6, i64 2, !dbg !239
  %numerator.sroa.0.12.vec.extract2486 = extractelement <4 x float> %numerator.sroa.0.6, i64 3, !dbg !239
  %mul280.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.0.vec.extract2375, !dbg !132
  %mul283.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.4.vec.extract2412, !dbg !240
  %mul286.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.8.vec.extract2449, !dbg !241
  %mul289.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.12.vec.extract2486, !dbg !242
  %numerator.sroa.0.0.vec.insert2377 = insertelement <4 x float> poison, float %mul280.7, i64 0, !dbg !133
  %numerator.sroa.0.4.vec.insert2414 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2377, float %mul283.7, i64 1, !dbg !133
  %numerator.sroa.0.8.vec.insert2451 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2414, float %mul286.7, i64 2, !dbg !133
  %numerator.sroa.0.12.vec.insert2488 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2451, float %mul289.7, i64 3, !dbg !133
  %numerator.sroa.98.16.vec.extract2531 = extractelement <4 x float> %numerator.sroa.98.6, i64 0, !dbg !239
  %numerator.sroa.98.20.vec.extract2568 = extractelement <4 x float> %numerator.sroa.98.6, i64 1, !dbg !239
  %numerator.sroa.98.24.vec.extract2605 = extractelement <4 x float> %numerator.sroa.98.6, i64 2, !dbg !239
  %numerator.sroa.98.28.vec.extract2642 = extractelement <4 x float> %numerator.sroa.98.6, i64 3, !dbg !239
  %mul280.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.16.vec.extract2531, !dbg !132
  %mul283.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.20.vec.extract2568, !dbg !240
  %mul286.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.24.vec.extract2605, !dbg !241
  %mul289.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.28.vec.extract2642, !dbg !242
  %numerator.sroa.98.16.vec.insert2533 = insertelement <4 x float> poison, float %mul280.1.7, i64 0, !dbg !133
  %numerator.sroa.98.20.vec.insert2570 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2533, float %mul283.1.7, i64 1, !dbg !133
  %numerator.sroa.98.24.vec.insert2607 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2570, float %mul286.1.7, i64 2, !dbg !133
  %numerator.sroa.98.28.vec.insert2644 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2607, float %mul289.1.7, i64 3, !dbg !133
  %numerator.sroa.194.32.vec.extract2687 = extractelement <4 x float> %numerator.sroa.194.6, i64 0, !dbg !239
  %numerator.sroa.194.36.vec.extract2724 = extractelement <4 x float> %numerator.sroa.194.6, i64 1, !dbg !239
  %numerator.sroa.194.40.vec.extract2761 = extractelement <4 x float> %numerator.sroa.194.6, i64 2, !dbg !239
  %numerator.sroa.194.44.vec.extract2798 = extractelement <4 x float> %numerator.sroa.194.6, i64 3, !dbg !239
  %mul280.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.32.vec.extract2687, !dbg !132
  %mul283.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.36.vec.extract2724, !dbg !240
  %mul286.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.40.vec.extract2761, !dbg !241
  %mul289.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.44.vec.extract2798, !dbg !242
  %numerator.sroa.194.32.vec.insert2689 = insertelement <4 x float> poison, float %mul280.2.7, i64 0, !dbg !133
  %numerator.sroa.194.36.vec.insert2726 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2689, float %mul283.2.7, i64 1, !dbg !133
  %numerator.sroa.194.40.vec.insert2763 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2726, float %mul286.2.7, i64 2, !dbg !133
  %numerator.sroa.194.44.vec.insert2800 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2763, float %mul289.2.7, i64 3, !dbg !133
  %numerator.sroa.290.48.vec.extract2843 = extractelement <4 x float> %numerator.sroa.290.6, i64 0, !dbg !239
  %numerator.sroa.290.52.vec.extract2880 = extractelement <4 x float> %numerator.sroa.290.6, i64 1, !dbg !239
  %numerator.sroa.290.56.vec.extract2917 = extractelement <4 x float> %numerator.sroa.290.6, i64 2, !dbg !239
  %numerator.sroa.290.60.vec.extract2954 = extractelement <4 x float> %numerator.sroa.290.6, i64 3, !dbg !239
  %mul280.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.48.vec.extract2843, !dbg !132
  %mul283.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.52.vec.extract2880, !dbg !240
  %mul286.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.56.vec.extract2917, !dbg !241
  %mul289.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.60.vec.extract2954, !dbg !242
  %numerator.sroa.290.48.vec.insert2845 = insertelement <4 x float> poison, float %mul280.3.7, i64 0, !dbg !133
  %numerator.sroa.290.52.vec.insert2882 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2845, float %mul283.3.7, i64 1, !dbg !133
  %numerator.sroa.290.56.vec.insert2919 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2882, float %mul286.3.7, i64 2, !dbg !133
  %numerator.sroa.290.60.vec.insert2956 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2919, float %mul289.3.7, i64 3, !dbg !133
  %sub313.7 = fsub contract float %spec.select3076, %625, !dbg !134
  %sub317.7 = fsub contract float %condval.0.1.7, %625, !dbg !135
  %sub321.7 = fsub contract float %condval.0.2.7, %625, !dbg !136
  %sub325.7 = fsub contract float %condval.0.3.7, %625, !dbg !137
  %mul330.7 = fmul contract float %sub313.7, 0x3FC7154760000000, !dbg !138
  %mul334.7 = fmul contract float %sub317.7, 0x3FC7154760000000, !dbg !139
  %mul338.7 = fmul contract float %sub321.7, 0x3FC7154760000000, !dbg !140
  %mul342.7 = fmul contract float %sub325.7, 0x3FC7154760000000, !dbg !141
  %add347.7 = fadd contract float %mul330.7, 8.000000e+00, !dbg !142
  %add351.7 = fadd contract float %mul334.7, 8.000000e+00, !dbg !143
  %add355.7 = fadd contract float %mul338.7, 8.000000e+00, !dbg !144
  %add359.7 = fadd contract float %mul342.7, 8.000000e+00, !dbg !145
  %cmp.i.i771.7 = fcmp contract olt float %add347.7, -1.260000e+02, !dbg !146
  %cond.i.i772.7 = select contract i1 %cmp.i.i771.7, float 6.400000e+01, float 0.000000e+00, !dbg !146
  %add.i.i773.7 = fadd contract float %add347.7, %cond.i.i772.7, !dbg !146
  %627 = tail call contract float @llvm.exp2.f32(float %add.i.i773.7), !dbg !146
  %cond2.i.i774.7 = select contract i1 %cmp.i.i771.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !146
  %mul.i.i775.7 = fmul contract float %cond2.i.i774.7, %627, !dbg !146
  %cmp.i.i776.7 = fcmp contract olt float %add351.7, -1.260000e+02, !dbg !148
  %cond.i.i777.7 = select contract i1 %cmp.i.i776.7, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i778.7 = fadd contract float %add351.7, %cond.i.i777.7, !dbg !148
  %628 = tail call contract float @llvm.exp2.f32(float %add.i.i778.7), !dbg !148
  %cond2.i.i779.7 = select contract i1 %cmp.i.i776.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i780.7 = fmul contract float %cond2.i.i779.7, %628, !dbg !148
  %cmp.i.i781.7 = fcmp contract olt float %add355.7, -1.260000e+02, !dbg !150
  %cond.i.i782.7 = select contract i1 %cmp.i.i781.7, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i783.7 = fadd contract float %add355.7, %cond.i.i782.7, !dbg !150
  %629 = tail call contract float @llvm.exp2.f32(float %add.i.i783.7), !dbg !150
  %cond2.i.i784.7 = select contract i1 %cmp.i.i781.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i785.7 = fmul contract float %cond2.i.i784.7, %629, !dbg !150
  %cmp.i.i786.7 = fcmp contract olt float %add359.7, -1.260000e+02, !dbg !152
  %cond.i.i787.7 = select contract i1 %cmp.i.i786.7, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i788.7 = fadd contract float %add359.7, %cond.i.i787.7, !dbg !152
  %630 = tail call contract float @llvm.exp2.f32(float %add.i.i788.7), !dbg !152
  %cond2.i.i789.7 = select contract i1 %cmp.i.i786.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i790.7 = fmul contract float %cond2.i.i789.7, %630, !dbg !152
  %631 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !154, !noalias !162
  %632 = fptrunc float %mul.i.i775.7 to half, !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %631), !dbg !154, !noalias !162
  %633 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !167, !noalias !162
  %634 = fptrunc float %mul.i.i780.7 to half, !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %633), !dbg !167, !noalias !162
  %635 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !173
  %636 = fptrunc float %mul.i.i785.7 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %635), !dbg !169, !noalias !173
  %637 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !173
  %638 = fptrunc float %mul.i.i790.7 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %637), !dbg !178, !noalias !173
  %639 = insertelement <4 x half> poison, half %632, i64 0, !dbg !180
  %640 = insertelement <4 x half> %639, half %634, i64 1, !dbg !180
  %641 = insertelement <4 x half> %640, half %636, i64 2, !dbg !180
  %642 = insertelement <4 x half> %641, half %638, i64 3, !dbg !180
  %conv.i.i.7 = fpext half %632 to float, !dbg !181
  %add393.7 = fadd contract float %conv.i.i.7, 0.000000e+00, !dbg !186
  %conv.i.i.1.7 = fpext half %634 to float, !dbg !181
  %add393.1.7 = fadd contract float %add393.7, %conv.i.i.1.7, !dbg !186
  %conv.i.i.2.7 = fpext half %636 to float, !dbg !181
  %add393.2.7 = fadd contract float %add393.1.7, %conv.i.i.2.7, !dbg !186
  %conv.i.i.3.7 = fpext half %638 to float, !dbg !181
  %add393.3.7 = fadd contract float %add393.2.7, %conv.i.i.3.7, !dbg !186
  %643 = bitcast float %add393.3.7 to i32, !dbg !187
  %644 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !189
  %645 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %644) #11, !dbg !192
  %xor.i.i796.7 = xor i32 %645, 32, !dbg !193
  %646 = and i32 %645, -64, !dbg !194
  %and.i.i797.7 = add nsw i32 %646, 64, !dbg !194
  %cmp.not.i.i798.7 = icmp slt i32 %xor.i.i796.7, %and.i.i797.7, !dbg !195
  %cond.i.i799.7 = select i1 %cmp.not.i.i798.7, i32 %xor.i.i796.7, i32 %645, !dbg !196
  %shl.i.i800.7 = shl i32 %cond.i.i799.7, 2, !dbg !197
  %647 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i800.7, i32 %643), !dbg !198
  %648 = bitcast i32 %647 to float, !dbg !199
  %add401.7 = fadd contract float %add393.3.7, %648, !dbg !200
  %649 = bitcast float %add401.7 to i32, !dbg !201
  %650 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !203
  %651 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %650) #11, !dbg !206
  %xor.i.i801.7 = xor i32 %651, 16, !dbg !207
  %652 = and i32 %651, -64, !dbg !208
  %and.i.i802.7 = add nsw i32 %652, 64, !dbg !208
  %cmp.not.i.i803.7 = icmp slt i32 %xor.i.i801.7, %and.i.i802.7, !dbg !209
  %cond.i.i804.7 = select i1 %cmp.not.i.i803.7, i32 %xor.i.i801.7, i32 %651, !dbg !210
  %shl.i.i805.7 = shl i32 %cond.i.i804.7, 2, !dbg !211
  %653 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i805.7, i32 %649), !dbg !212
  %654 = bitcast i32 %653 to float, !dbg !213
  %add406.7 = fadd contract float %add401.7, %654, !dbg !214
  fence syncscope("warp") release, !dbg !215
  tail call void @llvm.mxc.barrier.warp(), !dbg !218
  fence syncscope("warp") acquire, !dbg !219
  %655 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add426, !dbg !220
  %656 = getelementptr inbounds i8, ptr addrspace(4) %655, i64 %.idx.7, !dbg !220
  %657 = load i64, ptr addrspace(4) %656, align 8, !dbg !221
  %add.ptr435.1.7 = getelementptr inbounds i8, ptr addrspace(4) %656, i64 128, !dbg !220
  %658 = load i64, ptr addrspace(4) %add.ptr435.1.7, align 8, !dbg !221
  %add.ptr435.2.7 = getelementptr inbounds i8, ptr addrspace(4) %656, i64 256, !dbg !220
  %659 = load i64, ptr addrspace(4) %add.ptr435.2.7, align 8, !dbg !221
  %add.ptr435.3.7 = getelementptr inbounds i8, ptr addrspace(4) %656, i64 384, !dbg !220
  %660 = load i64, ptr addrspace(4) %add.ptr435.3.7, align 8, !dbg !221
  %mul300.7 = fmul contract float %denominator.sroa.0.1.6, %mul.i.i.7, !dbg !243
  %661 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul465, !dbg !222
  %add.ptr477.idx.7 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.7 = getelementptr inbounds i8, ptr addrspace(3) %661, i32 %add.ptr477.idx.7, !dbg !222
  %v_column.sroa.130.0.insert.ext1564 = shl i64 %660, 48, !dbg !223
  %v_column.sroa.98.0.insert.ext1409 = shl i64 %659, 32, !dbg !223
  %v_column.sroa.98.0.insert.shift1410 = and i64 %v_column.sroa.98.0.insert.ext1409, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1412 = or disjoint i64 %v_column.sroa.130.0.insert.ext1564, %v_column.sroa.98.0.insert.shift1410, !dbg !223
  %v_column.sroa.66.0.insert.ext1254 = shl i64 %658, 16, !dbg !223
  %v_column.sroa.66.0.insert.shift1255 = and i64 %v_column.sroa.66.0.insert.ext1254, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1257 = or disjoint i64 %v_column.sroa.98.0.insert.insert1412, %v_column.sroa.66.0.insert.shift1255, !dbg !223
  %v_column.sroa.0.0.insert.ext1103 = and i64 %657, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert1105 = or disjoint i64 %v_column.sroa.66.0.insert.insert1257, %v_column.sroa.0.0.insert.ext1103, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1105, ptr addrspace(3) %add.ptr477.7, align 8, !dbg !223
  %v_fetch.sroa.0.2.extract.shift1676 = lshr i64 %657, 16, !dbg !224
  %add466.1.7 = or disjoint i32 %mul465, 256, !dbg !225
  %662 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.1.7, !dbg !222
  %xor473.1.7 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.1.7 = xor i32 %xor473.1.7, 8, !dbg !222
  %add.ptr477.1.7 = getelementptr inbounds i8, ptr addrspace(3) %662, i32 %add.ptr477.idx.1.7, !dbg !222
  %663 = shl i64 %660, 32, !dbg !223
  %v_column.sroa.130.0.insert.ext1569 = and i64 %663, -281474976710656, !dbg !223
  %664 = shl i64 %659, 16, !dbg !223
  %v_column.sroa.98.0.insert.shift1415 = and i64 %664, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1417 = or disjoint i64 %v_column.sroa.130.0.insert.ext1569, %v_column.sroa.98.0.insert.shift1415, !dbg !223
  %v_column.sroa.66.0.insert.ext1259 = and i64 %658, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1262 = or disjoint i64 %v_column.sroa.98.0.insert.insert1417, %v_column.sroa.66.0.insert.ext1259, !dbg !223
  %v_column.sroa.0.0.insert.ext1107 = and i64 %v_fetch.sroa.0.2.extract.shift1676, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert1109 = or disjoint i64 %v_column.sroa.66.0.insert.insert1262, %v_column.sroa.0.0.insert.ext1107, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1109, ptr addrspace(3) %add.ptr477.1.7, align 8, !dbg !223
  %v_fetch.sroa.0.4.extract.shift1697 = lshr i64 %657, 32, !dbg !224
  %add466.2.7 = or disjoint i32 %mul465, 512, !dbg !225
  %665 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.2.7, !dbg !222
  %xor473.2.7 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.2.7 = xor i32 %xor473.2.7, 16, !dbg !222
  %add.ptr477.2.7 = getelementptr inbounds i8, ptr addrspace(3) %665, i32 %add.ptr477.idx.2.7, !dbg !222
  %666 = shl i64 %660, 16, !dbg !223
  %v_column.sroa.130.0.insert.ext1574 = and i64 %666, -281474976710656, !dbg !223
  %v_column.sroa.98.0.insert.ext1419 = and i64 %659, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1422 = or disjoint i64 %v_column.sroa.130.0.insert.ext1574, %v_column.sroa.98.0.insert.ext1419, !dbg !223
  %667 = lshr i64 %658, 16, !dbg !223
  %v_column.sroa.66.0.insert.shift1265 = and i64 %667, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1267 = or disjoint i64 %v_column.sroa.98.0.insert.insert1422, %v_column.sroa.66.0.insert.shift1265, !dbg !223
  %v_column.sroa.0.0.insert.ext1111 = and i64 %v_fetch.sroa.0.4.extract.shift1697, 65535, !dbg !223
  %v_column.sroa.0.0.insert.insert1113 = or disjoint i64 %v_column.sroa.66.0.insert.insert1267, %v_column.sroa.0.0.insert.ext1111, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1113, ptr addrspace(3) %add.ptr477.2.7, align 8, !dbg !223
  %v_fetch.sroa.0.6.extract.shift1718 = lshr i64 %657, 48, !dbg !224
  %v_fetch.sroa.122.30.extract.shift1949 = and i64 %660, -281474976710656, !dbg !223
  %add466.3.7 = or disjoint i32 %mul465, 768, !dbg !225
  %668 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.3.7, !dbg !222
  %xor473.3.7 = shl nuw nsw i32 %xor472, 3, !dbg !222
  %add.ptr477.idx.3.7 = xor i32 %xor473.3.7, 24, !dbg !222
  %add.ptr477.3.7 = getelementptr inbounds i8, ptr addrspace(3) %668, i32 %add.ptr477.idx.3.7, !dbg !222
  %669 = lshr i64 %659, 16, !dbg !223
  %v_column.sroa.98.0.insert.shift1425 = and i64 %669, 281470681743360, !dbg !223
  %v_column.sroa.98.0.insert.insert1427 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1949, %v_column.sroa.98.0.insert.shift1425, !dbg !223
  %670 = lshr i64 %658, 32, !dbg !223
  %v_column.sroa.66.0.insert.shift1270 = and i64 %670, 4294901760, !dbg !223
  %v_column.sroa.66.0.insert.insert1272 = or disjoint i64 %v_column.sroa.98.0.insert.insert1427, %v_column.sroa.66.0.insert.shift1270, !dbg !223
  %v_column.sroa.0.0.insert.insert1117 = or disjoint i64 %v_column.sroa.66.0.insert.insert1272, %v_fetch.sroa.0.6.extract.shift1718, !dbg !223
  store i64 %v_column.sroa.0.0.insert.insert1117, ptr addrspace(3) %add.ptr477.3.7, align 8, !dbg !223
  fence syncscope("warp") release, !dbg !226
  tail call void @llvm.mxc.barrier.warp(), !dbg !229
  fence syncscope("warp") acquire, !dbg !230
  %add494.7 = or disjoint i32 %mul487, %mul493, !dbg !231
  %671 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.7, !dbg !232
  %add.ptr504.idx.7 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.7 = getelementptr inbounds i8, ptr addrspace(3) %671, i32 %add.ptr504.idx.7, !dbg !232
  %672 = load <4 x half>, ptr addrspace(3) %add.ptr504.7, align 8, !dbg !233
  %add489.1.7 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.1.7 = or disjoint i32 %add489.1.7, 64, !dbg !231
  %673 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.1.7, !dbg !232
  %xor500.1.7 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.1.7 = xor i32 %xor500.1.7, 8, !dbg !232
  %add.ptr504.1.7 = getelementptr inbounds i8, ptr addrspace(3) %673, i32 %add.ptr504.idx.1.7, !dbg !232
  %674 = load <4 x half>, ptr addrspace(3) %add.ptr504.1.7, align 8, !dbg !233
  %add489.2.7 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.2.7 = or disjoint i32 %add489.2.7, 128, !dbg !231
  %675 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.2.7, !dbg !232
  %xor500.2.7 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.2.7 = xor i32 %xor500.2.7, 16, !dbg !232
  %add.ptr504.2.7 = getelementptr inbounds i8, ptr addrspace(3) %675, i32 %add.ptr504.idx.2.7, !dbg !232
  %676 = load <4 x half>, ptr addrspace(3) %add.ptr504.2.7, align 8, !dbg !233
  %add489.3.7 = or disjoint i32 %mul487, %mul493, !dbg !231
  %add494.3.7 = or disjoint i32 %add489.3.7, 192, !dbg !231
  %677 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.3.7, !dbg !232
  %xor500.3.7 = shl nuw nsw i32 %18, 3, !dbg !232
  %add.ptr504.idx.3.7 = xor i32 %xor500.3.7, 24, !dbg !232
  %add.ptr504.3.7 = getelementptr inbounds i8, ptr addrspace(3) %677, i32 %add.ptr504.idx.3.7, !dbg !232
  %678 = load <4 x half>, ptr addrspace(3) %add.ptr504.3.7, align 8, !dbg !233
  %679 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %672, <4 x half> %642, <4 x float> %numerator.sroa.0.12.vec.insert2488), !dbg !234
  %680 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %674, <4 x half> %642, <4 x float> %numerator.sroa.98.28.vec.insert2644), !dbg !234
  %681 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %676, <4 x half> %642, <4 x float> %numerator.sroa.194.44.vec.insert2800), !dbg !234
  %682 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %678, <4 x half> %642, <4 x float> %numerator.sroa.290.60.vec.insert2956), !dbg !234
  %add410.7 = fadd contract float %mul300.7, %add406.7, !dbg !235
  br label %if.end530.7, !dbg !236

if.end530.7:                                      ; preds = %if.then.7, %if.end530.6
  %numerator.sroa.290.7 = phi <4 x float> [ %numerator.sroa.290.6, %if.end530.6 ], [ %682, %if.then.7 ], !dbg !237
  %numerator.sroa.194.7 = phi <4 x float> [ %numerator.sroa.194.6, %if.end530.6 ], [ %681, %if.then.7 ], !dbg !237
  %numerator.sroa.98.7 = phi <4 x float> [ %numerator.sroa.98.6, %if.end530.6 ], [ %680, %if.then.7 ], !dbg !237
  %numerator.sroa.0.7 = phi <4 x float> [ %numerator.sroa.0.6, %if.end530.6 ], [ %679, %if.then.7 ], !dbg !237
  %denominator.sroa.0.1.7 = phi float [ %denominator.sroa.0.1.6, %if.end530.6 ], [ %add410.7, %if.then.7 ], !dbg !237
  %numerator.sroa.0.0.vec.extract2381 = extractelement <4 x float> %numerator.sroa.0.7, i64 0, !dbg !244
  %numerator.sroa.0.4.vec.extract2418 = extractelement <4 x float> %numerator.sroa.0.7, i64 1, !dbg !244
  %numerator.sroa.0.8.vec.extract2455 = extractelement <4 x float> %numerator.sroa.0.7, i64 2, !dbg !244
  %numerator.sroa.0.12.vec.extract2492 = extractelement <4 x float> %numerator.sroa.0.7, i64 3, !dbg !244
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract2381, %denominator.sroa.0.1.7, !dbg !245
  %div552 = fdiv contract float %numerator.sroa.0.4.vec.extract2418, %denominator.sroa.0.1.7, !dbg !246
  %div556 = fdiv contract float %numerator.sroa.0.8.vec.extract2455, %denominator.sroa.0.1.7, !dbg !247
  %div560 = fdiv contract float %numerator.sroa.0.12.vec.extract2492, %denominator.sroa.0.1.7, !dbg !248
  %numerator.sroa.98.16.vec.extract2535 = extractelement <4 x float> %numerator.sroa.98.7, i64 0, !dbg !244
  %numerator.sroa.98.20.vec.extract2572 = extractelement <4 x float> %numerator.sroa.98.7, i64 1, !dbg !244
  %numerator.sroa.98.24.vec.extract2609 = extractelement <4 x float> %numerator.sroa.98.7, i64 2, !dbg !244
  %numerator.sroa.98.28.vec.extract2646 = extractelement <4 x float> %numerator.sroa.98.7, i64 3, !dbg !244
  %div.1 = fdiv contract float %numerator.sroa.98.16.vec.extract2535, %denominator.sroa.0.1.7, !dbg !245
  %div552.1 = fdiv contract float %numerator.sroa.98.20.vec.extract2572, %denominator.sroa.0.1.7, !dbg !246
  %div556.1 = fdiv contract float %numerator.sroa.98.24.vec.extract2609, %denominator.sroa.0.1.7, !dbg !247
  %div560.1 = fdiv contract float %numerator.sroa.98.28.vec.extract2646, %denominator.sroa.0.1.7, !dbg !248
  %numerator.sroa.194.32.vec.extract2691 = extractelement <4 x float> %numerator.sroa.194.7, i64 0, !dbg !244
  %numerator.sroa.194.36.vec.extract2728 = extractelement <4 x float> %numerator.sroa.194.7, i64 1, !dbg !244
  %numerator.sroa.194.40.vec.extract2765 = extractelement <4 x float> %numerator.sroa.194.7, i64 2, !dbg !244
  %numerator.sroa.194.44.vec.extract2802 = extractelement <4 x float> %numerator.sroa.194.7, i64 3, !dbg !244
  %div.2 = fdiv contract float %numerator.sroa.194.32.vec.extract2691, %denominator.sroa.0.1.7, !dbg !245
  %div552.2 = fdiv contract float %numerator.sroa.194.36.vec.extract2728, %denominator.sroa.0.1.7, !dbg !246
  %div556.2 = fdiv contract float %numerator.sroa.194.40.vec.extract2765, %denominator.sroa.0.1.7, !dbg !247
  %div560.2 = fdiv contract float %numerator.sroa.194.44.vec.extract2802, %denominator.sroa.0.1.7, !dbg !248
  %numerator.sroa.290.48.vec.extract2847 = extractelement <4 x float> %numerator.sroa.290.7, i64 0, !dbg !244
  %numerator.sroa.290.52.vec.extract2884 = extractelement <4 x float> %numerator.sroa.290.7, i64 1, !dbg !244
  %numerator.sroa.290.56.vec.extract2921 = extractelement <4 x float> %numerator.sroa.290.7, i64 2, !dbg !244
  %numerator.sroa.290.60.vec.extract2958 = extractelement <4 x float> %numerator.sroa.290.7, i64 3, !dbg !244
  %div.3 = fdiv contract float %numerator.sroa.290.48.vec.extract2847, %denominator.sroa.0.1.7, !dbg !245
  %div552.3 = fdiv contract float %numerator.sroa.290.52.vec.extract2884, %denominator.sroa.0.1.7, !dbg !246
  %div556.3 = fdiv contract float %numerator.sroa.290.56.vec.extract2921, %denominator.sroa.0.1.7, !dbg !247
  %div560.3 = fdiv contract float %numerator.sroa.290.60.vec.extract2958, %denominator.sroa.0.1.7, !dbg !248
  fence syncscope("warp") release, !dbg !249
  tail call void @llvm.mxc.barrier.warp(), !dbg !252
  fence syncscope("warp") acquire, !dbg !253
  %mul606 = and i32 %13, 4
  %683 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !254, !noalias !258
  %684 = fptrunc float %div to half, !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %683), !dbg !254, !noalias !258
  %685 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !258
  %686 = fptrunc float %div552 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %685), !dbg !263, !noalias !258
  %687 = bitcast half %684 to i16, !dbg !265
  %688 = bitcast half %686 to i16, !dbg !268
  %689 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !273
  %690 = fptrunc float %div556 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %689), !dbg !269, !noalias !273
  %691 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !278, !noalias !273
  %692 = fptrunc float %div560 to half, !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %691), !dbg !278, !noalias !273
  %693 = bitcast half %690 to i16, !dbg !280
  %694 = bitcast half %692 to i16, !dbg !282
  %__8.sroa.6.0.insert.ext = zext i16 %694 to i64, !dbg !283
  %__8.sroa.6.0.insert.shift = shl nuw i64 %__8.sroa.6.0.insert.ext, 48, !dbg !283
  %__8.sroa.5.0.insert.ext = zext i16 %693 to i64, !dbg !283
  %__8.sroa.5.0.insert.shift = shl nuw nsw i64 %__8.sroa.5.0.insert.ext, 32, !dbg !283
  %__8.sroa.5.0.insert.insert = or disjoint i64 %__8.sroa.6.0.insert.shift, %__8.sroa.5.0.insert.shift, !dbg !283
  %__8.sroa.4.0.insert.ext = zext i16 %688 to i64, !dbg !283
  %__8.sroa.4.0.insert.shift = shl nuw nsw i64 %__8.sroa.4.0.insert.ext, 16, !dbg !283
  %__8.sroa.4.0.insert.insert = or disjoint i64 %__8.sroa.5.0.insert.insert, %__8.sroa.4.0.insert.shift, !dbg !283
  %__8.sroa.0.0.insert.ext = zext i16 %687 to i64, !dbg !283
  %__8.sroa.0.0.insert.insert = or disjoint i64 %__8.sroa.4.0.insert.insert, %__8.sroa.0.0.insert.ext, !dbg !283
  %add607 = or disjoint i32 %add58, %mul606, !dbg !284
  %add.ptr609 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add607, !dbg !285
  store i64 %__8.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr609, align 8, !dbg !286
  %695 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !254, !noalias !258
  %696 = fptrunc float %div.1 to half, !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %695), !dbg !254, !noalias !258
  %697 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !258
  %698 = fptrunc float %div552.1 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %697), !dbg !263, !noalias !258
  %699 = bitcast half %696 to i16, !dbg !265
  %700 = bitcast half %698 to i16, !dbg !268
  %701 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !273
  %702 = fptrunc float %div556.1 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %701), !dbg !269, !noalias !273
  %703 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !278, !noalias !273
  %704 = fptrunc float %div560.1 to half, !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %703), !dbg !278, !noalias !273
  %705 = bitcast half %702 to i16, !dbg !280
  %706 = bitcast half %704 to i16, !dbg !282
  %__8.sroa.6.0.insert.ext.1 = zext i16 %706 to i64, !dbg !283
  %__8.sroa.6.0.insert.shift.1 = shl nuw i64 %__8.sroa.6.0.insert.ext.1, 48, !dbg !283
  %__8.sroa.5.0.insert.ext.1 = zext i16 %705 to i64, !dbg !283
  %__8.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.1, 32, !dbg !283
  %__8.sroa.5.0.insert.insert.1 = or disjoint i64 %__8.sroa.6.0.insert.shift.1, %__8.sroa.5.0.insert.shift.1, !dbg !283
  %__8.sroa.4.0.insert.ext.1 = zext i16 %700 to i64, !dbg !283
  %__8.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.1, 16, !dbg !283
  %__8.sroa.4.0.insert.insert.1 = or disjoint i64 %__8.sroa.5.0.insert.insert.1, %__8.sroa.4.0.insert.shift.1, !dbg !283
  %__8.sroa.0.0.insert.ext.1 = zext i16 %699 to i64, !dbg !283
  %__8.sroa.0.0.insert.insert.1 = or disjoint i64 %__8.sroa.4.0.insert.insert.1, %__8.sroa.0.0.insert.ext.1, !dbg !283
  %add607.1 = or disjoint i32 %add58.1, %mul606, !dbg !284
  %add.ptr609.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add607.1, !dbg !285
  store i64 %__8.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr609.1, align 8, !dbg !286
  %707 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !254, !noalias !258
  %708 = fptrunc float %div.2 to half, !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %707), !dbg !254, !noalias !258
  %709 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !258
  %710 = fptrunc float %div552.2 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %709), !dbg !263, !noalias !258
  %711 = bitcast half %708 to i16, !dbg !265
  %712 = bitcast half %710 to i16, !dbg !268
  %713 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !273
  %714 = fptrunc float %div556.2 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %713), !dbg !269, !noalias !273
  %715 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !278, !noalias !273
  %716 = fptrunc float %div560.2 to half, !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %715), !dbg !278, !noalias !273
  %717 = bitcast half %714 to i16, !dbg !280
  %718 = bitcast half %716 to i16, !dbg !282
  %__8.sroa.6.0.insert.ext.2 = zext i16 %718 to i64, !dbg !283
  %__8.sroa.6.0.insert.shift.2 = shl nuw i64 %__8.sroa.6.0.insert.ext.2, 48, !dbg !283
  %__8.sroa.5.0.insert.ext.2 = zext i16 %717 to i64, !dbg !283
  %__8.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.2, 32, !dbg !283
  %__8.sroa.5.0.insert.insert.2 = or disjoint i64 %__8.sroa.6.0.insert.shift.2, %__8.sroa.5.0.insert.shift.2, !dbg !283
  %__8.sroa.4.0.insert.ext.2 = zext i16 %712 to i64, !dbg !283
  %__8.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.2, 16, !dbg !283
  %__8.sroa.4.0.insert.insert.2 = or disjoint i64 %__8.sroa.5.0.insert.insert.2, %__8.sroa.4.0.insert.shift.2, !dbg !283
  %__8.sroa.0.0.insert.ext.2 = zext i16 %711 to i64, !dbg !283
  %__8.sroa.0.0.insert.insert.2 = or disjoint i64 %__8.sroa.4.0.insert.insert.2, %__8.sroa.0.0.insert.ext.2, !dbg !283
  %add607.2 = or disjoint i32 %add58.2, %mul606, !dbg !284
  %add.ptr609.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add607.2, !dbg !285
  store i64 %__8.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr609.2, align 8, !dbg !286
  %719 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !254, !noalias !258
  %720 = fptrunc float %div.3 to half, !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %719), !dbg !254, !noalias !258
  %721 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !258
  %722 = fptrunc float %div552.3 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %721), !dbg !263, !noalias !258
  %723 = bitcast half %720 to i16, !dbg !265
  %724 = bitcast half %722 to i16, !dbg !268
  %725 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !273
  %726 = fptrunc float %div556.3 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %725), !dbg !269, !noalias !273
  %727 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !278, !noalias !273
  %728 = fptrunc float %div560.3 to half, !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %727), !dbg !278, !noalias !273
  %729 = bitcast half %726 to i16, !dbg !280
  %730 = bitcast half %728 to i16, !dbg !282
  %__8.sroa.6.0.insert.ext.3 = zext i16 %730 to i64, !dbg !283
  %__8.sroa.6.0.insert.shift.3 = shl nuw i64 %__8.sroa.6.0.insert.ext.3, 48, !dbg !283
  %__8.sroa.5.0.insert.ext.3 = zext i16 %729 to i64, !dbg !283
  %__8.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.3, 32, !dbg !283
  %__8.sroa.5.0.insert.insert.3 = or disjoint i64 %__8.sroa.6.0.insert.shift.3, %__8.sroa.5.0.insert.shift.3, !dbg !283
  %__8.sroa.4.0.insert.ext.3 = zext i16 %724 to i64, !dbg !283
  %__8.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.3, 16, !dbg !283
  %__8.sroa.4.0.insert.insert.3 = or disjoint i64 %__8.sroa.5.0.insert.insert.3, %__8.sroa.4.0.insert.shift.3, !dbg !283
  %__8.sroa.0.0.insert.ext.3 = zext i16 %723 to i64, !dbg !283
  %__8.sroa.0.0.insert.insert.3 = or disjoint i64 %__8.sroa.4.0.insert.insert.3, %__8.sroa.0.0.insert.ext.3, !dbg !283
  %add607.3 = or disjoint i32 %add58.3, %mul606, !dbg !284
  %add.ptr609.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add607.3, !dbg !285
  store i64 %__8.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr609.3, align 8, !dbg !286
  fence syncscope("warp") release, !dbg !287
  tail call void @llvm.mxc.barrier.warp(), !dbg !290
  fence syncscope("warp") acquire, !dbg !291
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul24, !dbg !292
  %invariant.gep852 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul29, !dbg !292
  %add.ptr642 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !293
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr642, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep852, i64 16, i1 false), !dbg !294, !tbaa.struct !295, !call_argsrelate !296
  %gep853.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep852, i32 1024, !dbg !297
  %add.ptr642.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %6, !dbg !293
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr642.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep853.1, i64 16, i1 false), !dbg !294, !tbaa.struct !295, !call_argsrelate !296
  ret void, !dbg !298
}

; Function Attrs: convergent nounwind willreturn memory(none)
declare <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half>, <4 x half>, <4 x float>) #4

; Function Attrs: nounwind speculatable willreturn memory(none)
declare i32 @llvm.mxc.block.id.x() #5

; Function Attrs: nounwind speculatable willreturn memory(none)
declare i32 @llvm.mxc.block.id.y() #5

; Function Attrs: nounwind speculatable willreturn memory(none)
declare i32 @llvm.mxc.block.id.z() #5

; Function Attrs: nounwind speculatable willreturn memory(none)
declare i32 @llvm.mxc.thread.id.x() #5

; Function Attrs: convergent nounwind willreturn
declare void @llvm.mxc.barrier.warp() #6

; Function Attrs: convergent nounwind willreturn memory(none)
declare i32 @llvm.mxc.bsm.bpermute(i32, i32) #4

; Function Attrs: convergent nounwind willreturn memory(none)
declare i32 @llvm.mxc.mbcnt.lo(i32, i32) #4

; Function Attrs: convergent nounwind willreturn memory(none)
declare i32 @llvm.mxc.mbcnt.hi(i32, i32) #4

; Function Attrs: nounwind speculatable willreturn memory(none)
declare align 4 ptr addrspace(4) @llvm.mxc.implicitarg.ptr() #5

; Function Attrs: nounwind speculatable willreturn memory(none)
declare align 4 ptr addrspace(4) @llvm.mxc.dispatch.ptr() #5

; Function Attrs: nounwind speculatable willreturn memory(none)
declare i1 @llvm.mxc.is.private(ptr nocapture) #5

; Function Attrs: nounwind willreturn
declare void @llvm.mxc.sleep(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #8

; Function Attrs: nounwind speculatable willreturn memory(inaccessiblemem: read)
declare i32 @llvm.mxc.gethwreg(i32 immarg) #9

; Function Attrs: nounwind willreturn
declare void @llvm.mxc.sethwreg(i32 immarg, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noalias nocapture writeonly, ptr addrspace(3) noalias nocapture readonly, i64, i1 immarg) #10

attributes #0 = { mustprogress noreturn nounwind "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="512" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="512" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" }
attributes #3 = { convergent mustprogress norecurse nounwind willreturn "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-implicitarg-num-bytes"="80" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="64" "metaxgpu-min-blocks"="1" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" "uniform-work-group-size"="true" }
attributes #4 = { convergent nounwind willreturn memory(none) }
attributes #5 = { nounwind speculatable willreturn memory(none) }
attributes #6 = { convergent nounwind willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind speculatable willreturn memory(inaccessiblemem: read) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nomerge }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "mxcc version 1.0.0 (d9102a1572)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v061_codex_power_s8_qk_pair_swap_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v061_codex_power_s8_qk_pair_swap_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 29, column: 3, scope: !40)
!44 = !DILocation(line: 30, column: 43, scope: !40)
!45 = !DILocation(line: 30, column: 29, scope: !40)
!46 = !DILocation(line: 33, column: 24, scope: !40)
!47 = !DILocation(line: 33, column: 203, scope: !40)
!48 = !DILocation(line: 30, column: 124, scope: !40)
!49 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !52)
!50 = distinct !DISubprogram(name: "__barrier_warp", scope: !51, file: !51, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!51 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!52 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !54)
!53 = distinct !DISubprogram(name: "__syncwarp", scope: !51, file: !51, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!54 = distinct !DILocation(line: 36, column: 3, scope: !40)
!55 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !52)
!56 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !52)
!57 = !DILocation(line: 39, column: 140, scope: !40)
!58 = !DILocation(line: 39, column: 168, scope: !40)
!59 = !DILocation(line: 39, column: 94, scope: !40)
!60 = !DILocation(line: 39, column: 174, scope: !40)
!61 = !DILocation(line: 39, column: 57, scope: !40)
!62 = !DILocation(line: 39, column: 38, scope: !40)
!63 = !DILocation(line: 39, column: 111, scope: !40)
!64 = !DILocation(line: 49, column: 3, scope: !40)
!65 = !DILocation(line: 50, column: 24, scope: !40)
!66 = !DILocation(line: 50, column: 101, scope: !40)
!67 = !DILocation(line: 51, column: 12, scope: !40)
!68 = !DILocation(line: 51, column: 28, scope: !40)
!69 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !70)
!70 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !71)
!71 = distinct !DILocation(line: 52, column: 7, scope: !40)
!72 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !70)
!73 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !70)
!74 = !DILocation(line: 54, column: 12, scope: !40)
!75 = !DILocation(line: 55, column: 47, scope: !40)
!76 = !DILocation(line: 55, column: 33, scope: !40)
!77 = !DILocation(line: 58, column: 213, scope: !40)
!78 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !79)
!79 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !80)
!80 = distinct !DILocation(line: 61, column: 7, scope: !40)
!81 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !79)
!82 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !79)
!83 = !DILocation(line: 66, column: 32, scope: !40)
!84 = !DILocation(line: 68, column: 37, scope: !40)
!85 = !DILocation(line: 76, column: 74, scope: !40)
!86 = !DILocation(line: 76, column: 13, scope: !40)
!87 = !DILocation(line: 76, column: 63, scope: !40)
!88 = !DILocation(line: 351, column: 10, scope: !89, inlinedAt: !91)
!89 = distinct !DISubprogram(name: "max", scope: !90, file: !90, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!90 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!91 = distinct !DILocation(line: 86, column: 28, scope: !40)
!92 = !DILocation(line: 1018, column: 9, scope: !93, inlinedAt: !94)
!93 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!94 = distinct !DILocation(line: 88, column: 48, scope: !40)
!95 = !DILocation(line: 171, column: 37, scope: !96, inlinedAt: !97)
!96 = distinct !DISubprogram(name: "__lane_id", scope: !51, file: !51, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!97 = distinct !DILocation(line: 990, column: 14, scope: !98, inlinedAt: !99)
!98 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!99 = distinct !DILocation(line: 1019, column: 11, scope: !93, inlinedAt: !94)
!100 = !DILocation(line: 171, column: 10, scope: !96, inlinedAt: !97)
!101 = !DILocation(line: 991, column: 20, scope: !98, inlinedAt: !99)
!102 = !DILocation(line: 992, column: 36, scope: !98, inlinedAt: !99)
!103 = !DILocation(line: 992, column: 17, scope: !98, inlinedAt: !99)
!104 = !DILocation(line: 992, column: 11, scope: !98, inlinedAt: !99)
!105 = !DILocation(line: 993, column: 43, scope: !98, inlinedAt: !99)
!106 = !DILocation(line: 993, column: 10, scope: !98, inlinedAt: !99)
!107 = !DILocation(line: 1020, column: 14, scope: !93, inlinedAt: !94)
!108 = !DILocation(line: 351, column: 10, scope: !89, inlinedAt: !109)
!109 = distinct !DILocation(line: 88, column: 26, scope: !40)
!110 = !DILocation(line: 1018, column: 9, scope: !93, inlinedAt: !111)
!111 = distinct !DILocation(line: 89, column: 48, scope: !40)
!112 = !DILocation(line: 171, column: 37, scope: !96, inlinedAt: !113)
!113 = distinct !DILocation(line: 990, column: 14, scope: !98, inlinedAt: !114)
!114 = distinct !DILocation(line: 1019, column: 11, scope: !93, inlinedAt: !111)
!115 = !DILocation(line: 171, column: 10, scope: !96, inlinedAt: !113)
!116 = !DILocation(line: 991, column: 20, scope: !98, inlinedAt: !114)
!117 = !DILocation(line: 992, column: 36, scope: !98, inlinedAt: !114)
!118 = !DILocation(line: 992, column: 17, scope: !98, inlinedAt: !114)
!119 = !DILocation(line: 992, column: 11, scope: !98, inlinedAt: !114)
!120 = !DILocation(line: 993, column: 43, scope: !98, inlinedAt: !114)
!121 = !DILocation(line: 993, column: 10, scope: !98, inlinedAt: !114)
!122 = !DILocation(line: 1020, column: 14, scope: !93, inlinedAt: !111)
!123 = !DILocation(line: 351, column: 10, scope: !89, inlinedAt: !124)
!124 = distinct !DILocation(line: 89, column: 26, scope: !40)
!125 = !DILocation(line: 351, column: 10, scope: !89, inlinedAt: !126)
!126 = distinct !DILocation(line: 90, column: 24, scope: !40)
!127 = !DILocation(line: 91, column: 39, scope: !40)
!128 = !DILocation(line: 91, column: 57, scope: !40)
!129 = !DILocation(line: 285, column: 49, scope: !130, inlinedAt: !131)
!130 = distinct !DISubprogram(name: "exp2f", scope: !90, file: !90, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!131 = distinct !DILocation(line: 91, column: 20, scope: !40)
!132 = !DILocation(line: 97, column: 24, scope: !40)
!133 = !DILocation(line: 101, column: 47, scope: !40)
!134 = !DILocation(line: 114, column: 28, scope: !40)
!135 = !DILocation(line: 115, column: 28, scope: !40)
!136 = !DILocation(line: 116, column: 28, scope: !40)
!137 = !DILocation(line: 117, column: 28, scope: !40)
!138 = !DILocation(line: 119, column: 25, scope: !40)
!139 = !DILocation(line: 120, column: 25, scope: !40)
!140 = !DILocation(line: 121, column: 25, scope: !40)
!141 = !DILocation(line: 122, column: 25, scope: !40)
!142 = !DILocation(line: 124, column: 23, scope: !40)
!143 = !DILocation(line: 125, column: 23, scope: !40)
!144 = !DILocation(line: 126, column: 23, scope: !40)
!145 = !DILocation(line: 127, column: 23, scope: !40)
!146 = !DILocation(line: 285, column: 49, scope: !130, inlinedAt: !147)
!147 = distinct !DILocation(line: 128, column: 15, scope: !40)
!148 = !DILocation(line: 285, column: 49, scope: !130, inlinedAt: !149)
!149 = distinct !DILocation(line: 129, column: 15, scope: !40)
!150 = !DILocation(line: 285, column: 49, scope: !130, inlinedAt: !151)
!151 = distinct !DILocation(line: 130, column: 15, scope: !40)
!152 = !DILocation(line: 285, column: 49, scope: !130, inlinedAt: !153)
!153 = distinct !DILocation(line: 131, column: 15, scope: !40)
!154 = !DILocation(line: 1007, column: 10, scope: !155, inlinedAt: !157)
!155 = distinct !DISubprogram(name: "__float2half_rn", scope: !156, file: !156, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!156 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!157 = distinct !DILocation(line: 1077, column: 18, scope: !158, inlinedAt: !159)
!158 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !156, file: !156, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!159 = distinct !DILocation(line: 1295, column: 23, scope: !160, inlinedAt: !161)
!160 = distinct !DISubprogram(name: "__float22half2_rn", scope: !156, file: !156, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!161 = distinct !DILocation(line: 132, column: 29, scope: !40)
!162 = !{!163, !165}
!163 = distinct !{!163, !164, !"_ZL17__floats2half2_rnff: %agg.result"}
!164 = distinct !{!164, !"_ZL17__floats2half2_rnff"}
!165 = distinct !{!165, !166, !"_ZL17__float22half2_rn6float2: %agg.result"}
!166 = distinct !{!166, !"_ZL17__float22half2_rn6float2"}
!167 = !DILocation(line: 1007, column: 10, scope: !155, inlinedAt: !168)
!168 = distinct !DILocation(line: 1077, column: 38, scope: !158, inlinedAt: !159)
!169 = !DILocation(line: 1007, column: 10, scope: !155, inlinedAt: !170)
!170 = distinct !DILocation(line: 1077, column: 18, scope: !158, inlinedAt: !171)
!171 = distinct !DILocation(line: 1295, column: 23, scope: !160, inlinedAt: !172)
!172 = distinct !DILocation(line: 133, column: 29, scope: !40)
!173 = !{!174, !176}
!174 = distinct !{!174, !175, !"_ZL17__floats2half2_rnff: %agg.result"}
!175 = distinct !{!175, !"_ZL17__floats2half2_rnff"}
!176 = distinct !{!176, !177, !"_ZL17__float22half2_rn6float2: %agg.result"}
!177 = distinct !{!177, !"_ZL17__float22half2_rn6float2"}
!178 = !DILocation(line: 1007, column: 10, scope: !155, inlinedAt: !179)
!179 = distinct !DILocation(line: 1077, column: 38, scope: !158, inlinedAt: !171)
!180 = !DILocation(line: 134, column: 36, scope: !40)
!181 = !DILocation(line: 1082, column: 16, scope: !182, inlinedAt: !183)
!182 = distinct !DISubprogram(name: "__half2float", scope: !156, file: !156, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!183 = distinct !DILocation(line: 136, column: 55, scope: !184, inlinedAt: !185)
!184 = distinct !DISubprogram(name: "operator float", scope: !156, file: !156, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!185 = distinct !DILocation(line: 138, column: 52, scope: !40)
!186 = !DILocation(line: 138, column: 42, scope: !40)
!187 = !DILocation(line: 1018, column: 9, scope: !93, inlinedAt: !188)
!188 = distinct !DILocation(line: 140, column: 42, scope: !40)
!189 = !DILocation(line: 171, column: 37, scope: !96, inlinedAt: !190)
!190 = distinct !DILocation(line: 990, column: 14, scope: !98, inlinedAt: !191)
!191 = distinct !DILocation(line: 1019, column: 11, scope: !93, inlinedAt: !188)
!192 = !DILocation(line: 171, column: 10, scope: !96, inlinedAt: !190)
!193 = !DILocation(line: 991, column: 20, scope: !98, inlinedAt: !191)
!194 = !DILocation(line: 992, column: 36, scope: !98, inlinedAt: !191)
!195 = !DILocation(line: 992, column: 17, scope: !98, inlinedAt: !191)
!196 = !DILocation(line: 992, column: 11, scope: !98, inlinedAt: !191)
!197 = !DILocation(line: 993, column: 43, scope: !98, inlinedAt: !191)
!198 = !DILocation(line: 993, column: 10, scope: !98, inlinedAt: !191)
!199 = !DILocation(line: 1020, column: 14, scope: !93, inlinedAt: !188)
!200 = !DILocation(line: 140, column: 40, scope: !40)
!201 = !DILocation(line: 1018, column: 9, scope: !93, inlinedAt: !202)
!202 = distinct !DILocation(line: 141, column: 42, scope: !40)
!203 = !DILocation(line: 171, column: 37, scope: !96, inlinedAt: !204)
!204 = distinct !DILocation(line: 990, column: 14, scope: !98, inlinedAt: !205)
!205 = distinct !DILocation(line: 1019, column: 11, scope: !93, inlinedAt: !202)
!206 = !DILocation(line: 171, column: 10, scope: !96, inlinedAt: !204)
!207 = !DILocation(line: 991, column: 20, scope: !98, inlinedAt: !205)
!208 = !DILocation(line: 992, column: 36, scope: !98, inlinedAt: !205)
!209 = !DILocation(line: 992, column: 17, scope: !98, inlinedAt: !205)
!210 = !DILocation(line: 992, column: 11, scope: !98, inlinedAt: !205)
!211 = !DILocation(line: 993, column: 43, scope: !98, inlinedAt: !205)
!212 = !DILocation(line: 993, column: 10, scope: !98, inlinedAt: !205)
!213 = !DILocation(line: 1020, column: 14, scope: !93, inlinedAt: !202)
!214 = !DILocation(line: 141, column: 40, scope: !40)
!215 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !216)
!216 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !217)
!217 = distinct !DILocation(line: 143, column: 7, scope: !40)
!218 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !216)
!219 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !216)
!220 = !DILocation(line: 146, column: 54, scope: !40)
!221 = !DILocation(line: 146, column: 40, scope: !40)
!222 = !DILocation(line: 153, column: 26, scope: !40)
!223 = !DILocation(line: 153, column: 159, scope: !40)
!224 = !DILocation(line: 151, column: 27, scope: !40)
!225 = !DILocation(line: 153, column: 42, scope: !40)
!226 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !227)
!227 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !228)
!228 = distinct !DILocation(line: 155, column: 7, scope: !40)
!229 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !227)
!230 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !227)
!231 = !DILocation(line: 158, column: 121, scope: !40)
!232 = !DILocation(line: 158, column: 65, scope: !40)
!233 = !DILocation(line: 158, column: 46, scope: !40)
!234 = !DILocation(line: 163, column: 46, scope: !40)
!235 = !DILocation(line: 142, column: 40, scope: !40)
!236 = !DILocation(line: 49, column: 40, scope: !40)
!237 = !DILocation(line: 0, scope: !40)
!238 = !DILocation(line: 50, column: 88, scope: !40)
!239 = !DILocation(line: 95, column: 23, scope: !40)
!240 = !DILocation(line: 98, column: 24, scope: !40)
!241 = !DILocation(line: 99, column: 24, scope: !40)
!242 = !DILocation(line: 100, column: 24, scope: !40)
!243 = !DILocation(line: 103, column: 40, scope: !40)
!244 = !DILocation(line: 173, column: 21, scope: !40)
!245 = !DILocation(line: 175, column: 22, scope: !40)
!246 = !DILocation(line: 176, column: 22, scope: !40)
!247 = !DILocation(line: 177, column: 22, scope: !40)
!248 = !DILocation(line: 178, column: 22, scope: !40)
!249 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !250)
!250 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !251)
!251 = distinct !DILocation(line: 181, column: 3, scope: !40)
!252 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !250)
!253 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !250)
!254 = !DILocation(line: 1007, column: 10, scope: !155, inlinedAt: !255)
!255 = distinct !DILocation(line: 1077, column: 18, scope: !158, inlinedAt: !256)
!256 = distinct !DILocation(line: 1295, column: 23, scope: !160, inlinedAt: !257)
!257 = distinct !DILocation(line: 186, column: 27, scope: !40)
!258 = !{!259, !261}
!259 = distinct !{!259, !260, !"_ZL17__floats2half2_rnff: %agg.result"}
!260 = distinct !{!260, !"_ZL17__floats2half2_rnff"}
!261 = distinct !{!261, !262, !"_ZL17__float22half2_rn6float2: %agg.result"}
!262 = distinct !{!262, !"_ZL17__float22half2_rn6float2"}
!263 = !DILocation(line: 1007, column: 10, scope: !155, inlinedAt: !264)
!264 = distinct !DILocation(line: 1077, column: 38, scope: !158, inlinedAt: !256)
!265 = !DILocation(line: 596, column: 67, scope: !266, inlinedAt: !267)
!266 = distinct !DISubprogram(name: "__half2", scope: !156, file: !156, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!267 = distinct !DILocation(line: 1077, column: 10, scope: !158, inlinedAt: !256)
!268 = !DILocation(line: 596, column: 73, scope: !266, inlinedAt: !267)
!269 = !DILocation(line: 1007, column: 10, scope: !155, inlinedAt: !270)
!270 = distinct !DILocation(line: 1077, column: 18, scope: !158, inlinedAt: !271)
!271 = distinct !DILocation(line: 1295, column: 23, scope: !160, inlinedAt: !272)
!272 = distinct !DILocation(line: 187, column: 27, scope: !40)
!273 = !{!274, !276}
!274 = distinct !{!274, !275, !"_ZL17__floats2half2_rnff: %agg.result"}
!275 = distinct !{!275, !"_ZL17__floats2half2_rnff"}
!276 = distinct !{!276, !277, !"_ZL17__float22half2_rn6float2: %agg.result"}
!277 = distinct !{!277, !"_ZL17__float22half2_rn6float2"}
!278 = !DILocation(line: 1007, column: 10, scope: !155, inlinedAt: !279)
!279 = distinct !DILocation(line: 1077, column: 38, scope: !158, inlinedAt: !271)
!280 = !DILocation(line: 596, column: 67, scope: !266, inlinedAt: !281)
!281 = distinct !DILocation(line: 1077, column: 10, scope: !158, inlinedAt: !271)
!282 = !DILocation(line: 596, column: 73, scope: !266, inlinedAt: !281)
!283 = !DILocation(line: 188, column: 38, scope: !40)
!284 = !DILocation(line: 189, column: 141, scope: !40)
!285 = !DILocation(line: 189, column: 22, scope: !40)
!286 = !DILocation(line: 189, column: 184, scope: !40)
!287 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !288)
!288 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !289)
!289 = distinct !DILocation(line: 191, column: 3, scope: !40)
!290 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !288)
!291 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !288)
!292 = !DILocation(line: 193, column: 8, scope: !40)
!293 = !DILocation(line: 194, column: 22, scope: !40)
!294 = !DILocation(line: 194, column: 134, scope: !40)
!295 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!296 = !{i32 2, i32 -1, i32 -1, i32 -1}
!297 = !DILocation(line: 194, column: 153, scope: !40)
!298 = !DILocation(line: 196, column: 1, scope: !40)
