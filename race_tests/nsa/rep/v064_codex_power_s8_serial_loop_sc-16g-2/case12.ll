; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v064_codex_power_s8_serial_loop_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v064_codex_power_s8_serial_loop_sc-16g-2/codegen/case12.device.cpp"
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

; Function Attrs: convergent mustprogress norecurse nounwind
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
  %qk_fetch.sroa.10.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !45
  %qk_fetch.sroa.10.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0.add.ptr.sroa_idx, align 8, !dbg !45
  %4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul29, !dbg !46
  %5 = getelementptr inbounds %struct.__half, ptr addrspace(3) %4, i32 %mul24, !dbg !46
  %add.ptr39.idx = shl nuw nsw i32 %shr34, 3, !dbg !46
  %add.ptr39 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr39, align 8, !dbg !47
  %xor35.1 = shl nuw nsw i32 %shr34, 3, !dbg !46
  %add.ptr39.idx.1 = xor i32 %xor35.1, 8, !dbg !46
  %add.ptr39.1 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.10.0.copyload, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !47
  %6 = add nuw nsw i64 %3, 512, !dbg !48
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %6, !dbg !44
  %qk_fetch.sroa.0.0.copyload1128 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %qk_fetch.sroa.10.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %qk_fetch.sroa.10.0.copyload1131 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0.add.ptr.1.sroa_idx, align 8, !dbg !45
  %7 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 1024, !dbg !46
  %add.ptr39.1862 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1128, ptr addrspace(3) %add.ptr39.1862, align 8, !dbg !47
  %add.ptr39.1.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.10.0.copyload1131, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !47
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
  %invariant.gep1136 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %19, !dbg !64
  %.idx855 = shl nuw nsw i64 %conv, 17
  %invariant.gep1138 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep848, i64 %.idx855, !dbg !64
  %20 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add426
  %21 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul465
  %add.ptr477.idx = shl nuw nsw i32 %xor472, 3
  %add.ptr477 = getelementptr inbounds i8, ptr addrspace(3) %21, i32 %add.ptr477.idx
  %add466.1 = or disjoint i32 %mul465, 256
  %22 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.1
  %xor473.1 = shl nuw nsw i32 %xor472, 3
  %add.ptr477.idx.1 = xor i32 %xor473.1, 8
  %add.ptr477.1 = getelementptr inbounds i8, ptr addrspace(3) %22, i32 %add.ptr477.idx.1
  %add466.2 = or disjoint i32 %mul465, 512
  %23 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.2
  %xor473.2 = shl nuw nsw i32 %xor472, 3
  %add.ptr477.idx.2 = xor i32 %xor473.2, 16
  %add.ptr477.2 = getelementptr inbounds i8, ptr addrspace(3) %23, i32 %add.ptr477.idx.2
  %add466.3 = or disjoint i32 %mul465, 768
  %24 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.3
  %xor473.3 = shl nuw nsw i32 %xor472, 3
  %add.ptr477.idx.3 = xor i32 %xor473.3, 24
  %add.ptr477.3 = getelementptr inbounds i8, ptr addrspace(3) %24, i32 %add.ptr477.idx.3
  %add494 = or disjoint i32 %mul487, %mul493
  %25 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494
  %add.ptr504.idx = shl nuw nsw i32 %18, 3
  %add.ptr504 = getelementptr inbounds i8, ptr addrspace(3) %25, i32 %add.ptr504.idx
  %add489.1 = or disjoint i32 %mul487, %mul493
  %add494.1 = or disjoint i32 %add489.1, 64
  %26 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.1
  %xor500.1 = shl nuw nsw i32 %18, 3
  %add.ptr504.idx.1 = xor i32 %xor500.1, 8
  %add.ptr504.1 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 %add.ptr504.idx.1
  %add489.2 = or disjoint i32 %mul487, %mul493
  %add494.2 = or disjoint i32 %add489.2, 128
  %27 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.2
  %xor500.2 = shl nuw nsw i32 %18, 3
  %add.ptr504.idx.2 = xor i32 %xor500.2, 16
  %add.ptr504.2 = getelementptr inbounds i8, ptr addrspace(3) %27, i32 %add.ptr504.idx.2
  %add489.3 = or disjoint i32 %mul487, %mul493
  %add494.3 = or disjoint i32 %add489.3, 192
  %28 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.3
  %xor500.3 = shl nuw nsw i32 %18, 3
  %add.ptr504.idx.3 = xor i32 %xor500.3, 24
  %add.ptr504.3 = getelementptr inbounds i8, ptr addrspace(3) %28, i32 %add.ptr504.idx.3
  br label %for.body97, !dbg !64

for.cond534.preheader:                            ; preds = %if.end530
  %numerator.sroa.0.0.vec.extract979 = extractelement <4 x float> %numerator.sroa.0.1, i64 0, !dbg !65
  %numerator.sroa.0.4.vec.extract988 = extractelement <4 x float> %numerator.sroa.0.1, i64 1, !dbg !65
  %numerator.sroa.0.8.vec.extract997 = extractelement <4 x float> %numerator.sroa.0.1, i64 2, !dbg !65
  %numerator.sroa.0.12.vec.extract1006 = extractelement <4 x float> %numerator.sroa.0.1, i64 3, !dbg !65
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract979, %denominator.sroa.0.1, !dbg !66
  %div552 = fdiv contract float %numerator.sroa.0.4.vec.extract988, %denominator.sroa.0.1, !dbg !67
  %div556 = fdiv contract float %numerator.sroa.0.8.vec.extract997, %denominator.sroa.0.1, !dbg !68
  %div560 = fdiv contract float %numerator.sroa.0.12.vec.extract1006, %denominator.sroa.0.1, !dbg !69
  %numerator.sroa.28.16.vec.extract1014 = extractelement <4 x float> %numerator.sroa.28.1, i64 0, !dbg !65
  %numerator.sroa.28.20.vec.extract1023 = extractelement <4 x float> %numerator.sroa.28.1, i64 1, !dbg !65
  %numerator.sroa.28.24.vec.extract1032 = extractelement <4 x float> %numerator.sroa.28.1, i64 2, !dbg !65
  %numerator.sroa.28.28.vec.extract1041 = extractelement <4 x float> %numerator.sroa.28.1, i64 3, !dbg !65
  %div.1 = fdiv contract float %numerator.sroa.28.16.vec.extract1014, %denominator.sroa.0.1, !dbg !66
  %div552.1 = fdiv contract float %numerator.sroa.28.20.vec.extract1023, %denominator.sroa.0.1, !dbg !67
  %div556.1 = fdiv contract float %numerator.sroa.28.24.vec.extract1032, %denominator.sroa.0.1, !dbg !68
  %div560.1 = fdiv contract float %numerator.sroa.28.28.vec.extract1041, %denominator.sroa.0.1, !dbg !69
  %numerator.sroa.54.32.vec.extract1051 = extractelement <4 x float> %numerator.sroa.54.1, i64 0, !dbg !65
  %numerator.sroa.54.36.vec.extract1060 = extractelement <4 x float> %numerator.sroa.54.1, i64 1, !dbg !65
  %numerator.sroa.54.40.vec.extract1069 = extractelement <4 x float> %numerator.sroa.54.1, i64 2, !dbg !65
  %numerator.sroa.54.44.vec.extract1078 = extractelement <4 x float> %numerator.sroa.54.1, i64 3, !dbg !65
  %div.2 = fdiv contract float %numerator.sroa.54.32.vec.extract1051, %denominator.sroa.0.1, !dbg !66
  %div552.2 = fdiv contract float %numerator.sroa.54.36.vec.extract1060, %denominator.sroa.0.1, !dbg !67
  %div556.2 = fdiv contract float %numerator.sroa.54.40.vec.extract1069, %denominator.sroa.0.1, !dbg !68
  %div560.2 = fdiv contract float %numerator.sroa.54.44.vec.extract1078, %denominator.sroa.0.1, !dbg !69
  %numerator.sroa.80.48.vec.extract1088 = extractelement <4 x float> %numerator.sroa.80.1, i64 0, !dbg !65
  %numerator.sroa.80.52.vec.extract1097 = extractelement <4 x float> %numerator.sroa.80.1, i64 1, !dbg !65
  %numerator.sroa.80.56.vec.extract1106 = extractelement <4 x float> %numerator.sroa.80.1, i64 2, !dbg !65
  %numerator.sroa.80.60.vec.extract1115 = extractelement <4 x float> %numerator.sroa.80.1, i64 3, !dbg !65
  %div.3 = fdiv contract float %numerator.sroa.80.48.vec.extract1088, %denominator.sroa.0.1, !dbg !66
  %div552.3 = fdiv contract float %numerator.sroa.80.52.vec.extract1097, %denominator.sroa.0.1, !dbg !67
  %div556.3 = fdiv contract float %numerator.sroa.80.56.vec.extract1106, %denominator.sroa.0.1, !dbg !68
  %div560.3 = fdiv contract float %numerator.sroa.80.60.vec.extract1115, %denominator.sroa.0.1, !dbg !69
  fence syncscope("warp") release, !dbg !70
  tail call void @llvm.mxc.barrier.warp(), !dbg !73
  fence syncscope("warp") acquire, !dbg !74
  %mul606 = and i32 %13, 4
  %29 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !75
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !75, !noalias !83
  %30 = fptrunc float %div to half, !dbg !75
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %29), !dbg !75, !noalias !83
  %31 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !88
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !88, !noalias !83
  %32 = fptrunc float %div552 to half, !dbg !88
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %31), !dbg !88, !noalias !83
  %33 = bitcast half %30 to i16, !dbg !90
  %34 = bitcast half %32 to i16, !dbg !93
  %35 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !94
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !94, !noalias !98
  %36 = fptrunc float %div556 to half, !dbg !94
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %35), !dbg !94, !noalias !98
  %37 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !103
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !103, !noalias !98
  %38 = fptrunc float %div560 to half, !dbg !103
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %37), !dbg !103, !noalias !98
  %39 = bitcast half %36 to i16, !dbg !105
  %40 = bitcast half %38 to i16, !dbg !107
  %__8.sroa.6.0.insert.ext = zext i16 %40 to i64, !dbg !108
  %__8.sroa.6.0.insert.shift = shl nuw i64 %__8.sroa.6.0.insert.ext, 48, !dbg !108
  %__8.sroa.5.0.insert.ext = zext i16 %39 to i64, !dbg !108
  %__8.sroa.5.0.insert.shift = shl nuw nsw i64 %__8.sroa.5.0.insert.ext, 32, !dbg !108
  %__8.sroa.5.0.insert.insert = or disjoint i64 %__8.sroa.6.0.insert.shift, %__8.sroa.5.0.insert.shift, !dbg !108
  %__8.sroa.4.0.insert.ext = zext i16 %34 to i64, !dbg !108
  %__8.sroa.4.0.insert.shift = shl nuw nsw i64 %__8.sroa.4.0.insert.ext, 16, !dbg !108
  %__8.sroa.4.0.insert.insert = or disjoint i64 %__8.sroa.5.0.insert.insert, %__8.sroa.4.0.insert.shift, !dbg !108
  %__8.sroa.0.0.insert.ext = zext i16 %33 to i64, !dbg !108
  %__8.sroa.0.0.insert.insert = or disjoint i64 %__8.sroa.4.0.insert.insert, %__8.sroa.0.0.insert.ext, !dbg !108
  %add607 = or disjoint i32 %add58, %mul606, !dbg !109
  %add.ptr609 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add607, !dbg !110
  store i64 %__8.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr609, align 8, !dbg !111
  %41 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !75
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !75, !noalias !83
  %42 = fptrunc float %div.1 to half, !dbg !75
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %41), !dbg !75, !noalias !83
  %43 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !88
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !88, !noalias !83
  %44 = fptrunc float %div552.1 to half, !dbg !88
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %43), !dbg !88, !noalias !83
  %45 = bitcast half %42 to i16, !dbg !90
  %46 = bitcast half %44 to i16, !dbg !93
  %47 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !94
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !94, !noalias !98
  %48 = fptrunc float %div556.1 to half, !dbg !94
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %47), !dbg !94, !noalias !98
  %49 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !103
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !103, !noalias !98
  %50 = fptrunc float %div560.1 to half, !dbg !103
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %49), !dbg !103, !noalias !98
  %51 = bitcast half %48 to i16, !dbg !105
  %52 = bitcast half %50 to i16, !dbg !107
  %__8.sroa.6.0.insert.ext.1 = zext i16 %52 to i64, !dbg !108
  %__8.sroa.6.0.insert.shift.1 = shl nuw i64 %__8.sroa.6.0.insert.ext.1, 48, !dbg !108
  %__8.sroa.5.0.insert.ext.1 = zext i16 %51 to i64, !dbg !108
  %__8.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.1, 32, !dbg !108
  %__8.sroa.5.0.insert.insert.1 = or disjoint i64 %__8.sroa.6.0.insert.shift.1, %__8.sroa.5.0.insert.shift.1, !dbg !108
  %__8.sroa.4.0.insert.ext.1 = zext i16 %46 to i64, !dbg !108
  %__8.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.1, 16, !dbg !108
  %__8.sroa.4.0.insert.insert.1 = or disjoint i64 %__8.sroa.5.0.insert.insert.1, %__8.sroa.4.0.insert.shift.1, !dbg !108
  %__8.sroa.0.0.insert.ext.1 = zext i16 %45 to i64, !dbg !108
  %__8.sroa.0.0.insert.insert.1 = or disjoint i64 %__8.sroa.4.0.insert.insert.1, %__8.sroa.0.0.insert.ext.1, !dbg !108
  %add607.1 = or disjoint i32 %add58.1, %mul606, !dbg !109
  %add.ptr609.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add607.1, !dbg !110
  store i64 %__8.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr609.1, align 8, !dbg !111
  %53 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !75
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !75, !noalias !83
  %54 = fptrunc float %div.2 to half, !dbg !75
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %53), !dbg !75, !noalias !83
  %55 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !88
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !88, !noalias !83
  %56 = fptrunc float %div552.2 to half, !dbg !88
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %55), !dbg !88, !noalias !83
  %57 = bitcast half %54 to i16, !dbg !90
  %58 = bitcast half %56 to i16, !dbg !93
  %59 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !94
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !94, !noalias !98
  %60 = fptrunc float %div556.2 to half, !dbg !94
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %59), !dbg !94, !noalias !98
  %61 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !103
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !103, !noalias !98
  %62 = fptrunc float %div560.2 to half, !dbg !103
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %61), !dbg !103, !noalias !98
  %63 = bitcast half %60 to i16, !dbg !105
  %64 = bitcast half %62 to i16, !dbg !107
  %__8.sroa.6.0.insert.ext.2 = zext i16 %64 to i64, !dbg !108
  %__8.sroa.6.0.insert.shift.2 = shl nuw i64 %__8.sroa.6.0.insert.ext.2, 48, !dbg !108
  %__8.sroa.5.0.insert.ext.2 = zext i16 %63 to i64, !dbg !108
  %__8.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.2, 32, !dbg !108
  %__8.sroa.5.0.insert.insert.2 = or disjoint i64 %__8.sroa.6.0.insert.shift.2, %__8.sroa.5.0.insert.shift.2, !dbg !108
  %__8.sroa.4.0.insert.ext.2 = zext i16 %58 to i64, !dbg !108
  %__8.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.2, 16, !dbg !108
  %__8.sroa.4.0.insert.insert.2 = or disjoint i64 %__8.sroa.5.0.insert.insert.2, %__8.sroa.4.0.insert.shift.2, !dbg !108
  %__8.sroa.0.0.insert.ext.2 = zext i16 %57 to i64, !dbg !108
  %__8.sroa.0.0.insert.insert.2 = or disjoint i64 %__8.sroa.4.0.insert.insert.2, %__8.sroa.0.0.insert.ext.2, !dbg !108
  %add607.2 = or disjoint i32 %add58.2, %mul606, !dbg !109
  %add.ptr609.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add607.2, !dbg !110
  store i64 %__8.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr609.2, align 8, !dbg !111
  %65 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !75
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !75, !noalias !83
  %66 = fptrunc float %div.3 to half, !dbg !75
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %65), !dbg !75, !noalias !83
  %67 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !88
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !88, !noalias !83
  %68 = fptrunc float %div552.3 to half, !dbg !88
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %67), !dbg !88, !noalias !83
  %69 = bitcast half %66 to i16, !dbg !90
  %70 = bitcast half %68 to i16, !dbg !93
  %71 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !94
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !94, !noalias !98
  %72 = fptrunc float %div556.3 to half, !dbg !94
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %71), !dbg !94, !noalias !98
  %73 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !103
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !103, !noalias !98
  %74 = fptrunc float %div560.3 to half, !dbg !103
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %73), !dbg !103, !noalias !98
  %75 = bitcast half %72 to i16, !dbg !105
  %76 = bitcast half %74 to i16, !dbg !107
  %__8.sroa.6.0.insert.ext.3 = zext i16 %76 to i64, !dbg !108
  %__8.sroa.6.0.insert.shift.3 = shl nuw i64 %__8.sroa.6.0.insert.ext.3, 48, !dbg !108
  %__8.sroa.5.0.insert.ext.3 = zext i16 %75 to i64, !dbg !108
  %__8.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.3, 32, !dbg !108
  %__8.sroa.5.0.insert.insert.3 = or disjoint i64 %__8.sroa.6.0.insert.shift.3, %__8.sroa.5.0.insert.shift.3, !dbg !108
  %__8.sroa.4.0.insert.ext.3 = zext i16 %70 to i64, !dbg !108
  %__8.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.3, 16, !dbg !108
  %__8.sroa.4.0.insert.insert.3 = or disjoint i64 %__8.sroa.5.0.insert.insert.3, %__8.sroa.4.0.insert.shift.3, !dbg !108
  %__8.sroa.0.0.insert.ext.3 = zext i16 %69 to i64, !dbg !108
  %__8.sroa.0.0.insert.insert.3 = or disjoint i64 %__8.sroa.4.0.insert.insert.3, %__8.sroa.0.0.insert.ext.3, !dbg !108
  %add607.3 = or disjoint i32 %add58.3, %mul606, !dbg !109
  %add.ptr609.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add607.3, !dbg !110
  store i64 %__8.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr609.3, align 8, !dbg !111
  fence syncscope("warp") release, !dbg !112
  tail call void @llvm.mxc.barrier.warp(), !dbg !115
  fence syncscope("warp") acquire, !dbg !116
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul24, !dbg !117
  %invariant.gep852 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul29, !dbg !117
  %add.ptr642 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !118
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr642, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep852, i64 16, i1 false), !dbg !119, !tbaa.struct !120, !call_argsrelate !121
  %gep853.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep852, i32 1024, !dbg !122
  %add.ptr642.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %6, !dbg !118
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr642.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep853.1, i64 16, i1 false), !dbg !119, !tbaa.struct !120, !call_argsrelate !121
  ret void, !dbg !123

for.body97:                                       ; preds = %entry, %if.end530
  %numerator.sroa.80.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %numerator.sroa.80.1, %if.end530 ], !dbg !124
  %numerator.sroa.54.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %numerator.sroa.54.1, %if.end530 ], !dbg !124
  %numerator.sroa.28.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %numerator.sroa.28.1, %if.end530 ], !dbg !124
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %numerator.sroa.0.1, %if.end530 ], !dbg !124
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end530 ]
  %denominator.sroa.0.0847 = phi float [ 0.000000e+00, %entry ], [ %denominator.sroa.0.1, %if.end530 ]
  %maximum.sroa.0.0846 = phi float [ 0xFFF0000000000000, %entry ], [ %maximum.sroa.0.1, %if.end530 ]
  %gep1137 = getelementptr inbounds i32, ptr addrspace(1) %invariant.gep1136, i64 %indvars.iv, !dbg !125
  %77 = load i32, ptr addrspace(1) %gep1137, align 4, !dbg !125, !tbaa !30
  %mul105 = shl nsw i32 %77, 4, !dbg !126
  %cmp106 = icmp slt i32 %77, 0, !dbg !127
  %cmp108.not = icmp sgt i32 %mul105, %1
  %or.cond = select i1 %cmp106, i1 true, i1 %cmp108.not, !dbg !128
  br i1 %or.cond, label %if.end530, label %if.then, !dbg !128

if.then:                                          ; preds = %for.body97
  fence syncscope("warp") release, !dbg !129
  tail call void @llvm.mxc.barrier.warp(), !dbg !132
  fence syncscope("warp") acquire, !dbg !133
  %conv118 = zext nneg i32 %mul105 to i64
  %.idx = shl nuw nsw i64 %conv118, 7
  %gep1139 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1138, i64 %.idx, !dbg !134
  %qk_fetch.sroa.0.0.copyload1127 = load i64, ptr addrspace(4) %gep1139, align 16, !dbg !135
  %qk_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1139, i64 8, !dbg !135
  %qk_fetch.sroa.10.0.copyload1130 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0..sroa_idx, align 8, !dbg !135
  store i64 %qk_fetch.sroa.0.0.copyload1127, ptr addrspace(3) %add.ptr39, align 8, !dbg !136
  store i64 %qk_fetch.sroa.10.0.copyload1130, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !136
  %gep831.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1139, i64 1024, !dbg !134
  %qk_fetch.sroa.0.0.copyload1129 = load i64, ptr addrspace(4) %gep831.1, align 16, !dbg !135
  %qk_fetch.sroa.10.0.gep831.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1139, i64 1032, !dbg !135
  %qk_fetch.sroa.10.0.copyload1132 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0.gep831.1.sroa_idx, align 8, !dbg !135
  store i64 %qk_fetch.sroa.0.0.copyload1129, ptr addrspace(3) %add.ptr39.1862, align 8, !dbg !136
  store i64 %qk_fetch.sroa.10.0.copyload1132, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !136
  fence syncscope("warp") release, !dbg !137
  tail call void @llvm.mxc.barrier.warp(), !dbg !140
  fence syncscope("warp") acquire, !dbg !141
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !142
  %78 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %9, <4 x float> zeroinitializer), !dbg !143
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !142
  %79 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %10, <4 x float> %78), !dbg !143
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !142
  %80 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %11, <4 x float> %79), !dbg !143
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !142
  %81 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %12, <4 x float> %80), !dbg !143
  %add218 = add nuw nsw i32 %mul105, %mul217
  %cmp221.not = icmp sgt i32 %add218, %1, !dbg !144
  %scores.sroa.0.0.vec.extract946 = extractelement <4 x float> %81, i64 0
  %spec.select = select i1 %cmp221.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract946, !dbg !145
  %cmp221.not.1.not = icmp slt i32 %add218, %1, !dbg !144
  %scores.sroa.0.4.vec.extract953 = extractelement <4 x float> %81, i64 1, !dbg !145
  %condval.0.1 = select i1 %cmp221.not.1.not, float %scores.sroa.0.4.vec.extract953, float 0xFFF0000000000000, !dbg !145
  %add219.2 = or disjoint i32 %add218, 2, !dbg !146
  %cmp221.not.2 = icmp sgt i32 %add219.2, %1, !dbg !144
  %scores.sroa.0.8.vec.extract960 = extractelement <4 x float> %81, i64 2, !dbg !145
  %condval.0.2 = select i1 %cmp221.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract960, !dbg !145
  %add219.3 = or disjoint i32 %add218, 3, !dbg !146
  %cmp221.not.3 = icmp sgt i32 %add219.3, %1, !dbg !144
  %scores.sroa.0.12.vec.extract967 = extractelement <4 x float> %81, i64 3, !dbg !145
  %condval.0.3 = select i1 %cmp221.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract967, !dbg !145
  %82 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !147
  %83 = tail call contract noundef float @llvm.maxnum.f32(float %82, float %condval.0.1), !dbg !147
  %84 = tail call contract noundef float @llvm.maxnum.f32(float %83, float %condval.0.2), !dbg !147
  %85 = tail call contract noundef float @llvm.maxnum.f32(float %84, float %condval.0.3), !dbg !147
  %86 = bitcast float %85 to i32, !dbg !151
  %87 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !154
  %88 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %87) #11, !dbg !159
  %xor.i.i = xor i32 %88, 32, !dbg !160
  %89 = and i32 %88, -64, !dbg !161
  %and.i.i = add nsw i32 %89, 64, !dbg !161
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !162
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %88, !dbg !163
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !164
  %90 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %86), !dbg !165
  %91 = bitcast i32 %90 to float, !dbg !166
  %92 = tail call contract noundef float @llvm.maxnum.f32(float %85, float %91), !dbg !167
  %93 = bitcast float %92 to i32, !dbg !169
  %94 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !171
  %95 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %94) #11, !dbg !174
  %xor.i.i765 = xor i32 %95, 16, !dbg !175
  %96 = and i32 %95, -64, !dbg !176
  %and.i.i766 = add nsw i32 %96, 64, !dbg !176
  %cmp.not.i.i767 = icmp slt i32 %xor.i.i765, %and.i.i766, !dbg !177
  %cond.i.i768 = select i1 %cmp.not.i.i767, i32 %xor.i.i765, i32 %95, !dbg !178
  %shl.i.i769 = shl i32 %cond.i.i768, 2, !dbg !179
  %97 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i769, i32 %93), !dbg !180
  %98 = bitcast i32 %97 to float, !dbg !181
  %99 = tail call contract noundef float @llvm.maxnum.f32(float %92, float %98), !dbg !182
  %100 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.0846, float %99), !dbg !184
  %sub = fsub contract float %maximum.sroa.0.0846, %100, !dbg !186
  %mul263 = fmul contract float %sub, 0x3FC7154760000000, !dbg !187
  %cmp.i.i = fcmp contract olt float %mul263, -1.260000e+02, !dbg !188
  %cond.i.i770 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !188
  %add.i.i = fadd contract float %mul263, %cond.i.i770, !dbg !188
  %101 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !188
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !188
  %mul.i.i = fmul contract float %cond2.i.i, %101, !dbg !188
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !191
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !191
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !191
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !191
  %mul280 = fmul contract float %mul.i.i, %numerator.sroa.0.0.vec.extract, !dbg !192
  %mul283 = fmul contract float %mul.i.i, %numerator.sroa.0.4.vec.extract, !dbg !193
  %mul286 = fmul contract float %mul.i.i, %numerator.sroa.0.8.vec.extract, !dbg !194
  %mul289 = fmul contract float %mul.i.i, %numerator.sroa.0.12.vec.extract, !dbg !195
  %numerator.sroa.0.0.vec.insert974 = insertelement <4 x float> poison, float %mul280, i64 0, !dbg !196
  %numerator.sroa.0.4.vec.insert983 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert974, float %mul283, i64 1, !dbg !196
  %numerator.sroa.0.8.vec.insert992 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert983, float %mul286, i64 2, !dbg !196
  %numerator.sroa.0.12.vec.insert1001 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert992, float %mul289, i64 3, !dbg !196
  %numerator.sroa.28.16.vec.extract = extractelement <4 x float> %numerator.sroa.28.0, i64 0, !dbg !191
  %numerator.sroa.28.20.vec.extract = extractelement <4 x float> %numerator.sroa.28.0, i64 1, !dbg !191
  %numerator.sroa.28.24.vec.extract = extractelement <4 x float> %numerator.sroa.28.0, i64 2, !dbg !191
  %numerator.sroa.28.28.vec.extract = extractelement <4 x float> %numerator.sroa.28.0, i64 3, !dbg !191
  %mul280.1 = fmul contract float %mul.i.i, %numerator.sroa.28.16.vec.extract, !dbg !192
  %mul283.1 = fmul contract float %mul.i.i, %numerator.sroa.28.20.vec.extract, !dbg !193
  %mul286.1 = fmul contract float %mul.i.i, %numerator.sroa.28.24.vec.extract, !dbg !194
  %mul289.1 = fmul contract float %mul.i.i, %numerator.sroa.28.28.vec.extract, !dbg !195
  %numerator.sroa.28.16.vec.insert1012 = insertelement <4 x float> poison, float %mul280.1, i64 0, !dbg !196
  %numerator.sroa.28.20.vec.insert1021 = insertelement <4 x float> %numerator.sroa.28.16.vec.insert1012, float %mul283.1, i64 1, !dbg !196
  %numerator.sroa.28.24.vec.insert1030 = insertelement <4 x float> %numerator.sroa.28.20.vec.insert1021, float %mul286.1, i64 2, !dbg !196
  %numerator.sroa.28.28.vec.insert1039 = insertelement <4 x float> %numerator.sroa.28.24.vec.insert1030, float %mul289.1, i64 3, !dbg !196
  %numerator.sroa.54.32.vec.extract = extractelement <4 x float> %numerator.sroa.54.0, i64 0, !dbg !191
  %numerator.sroa.54.36.vec.extract = extractelement <4 x float> %numerator.sroa.54.0, i64 1, !dbg !191
  %numerator.sroa.54.40.vec.extract = extractelement <4 x float> %numerator.sroa.54.0, i64 2, !dbg !191
  %numerator.sroa.54.44.vec.extract = extractelement <4 x float> %numerator.sroa.54.0, i64 3, !dbg !191
  %mul280.2 = fmul contract float %mul.i.i, %numerator.sroa.54.32.vec.extract, !dbg !192
  %mul283.2 = fmul contract float %mul.i.i, %numerator.sroa.54.36.vec.extract, !dbg !193
  %mul286.2 = fmul contract float %mul.i.i, %numerator.sroa.54.40.vec.extract, !dbg !194
  %mul289.2 = fmul contract float %mul.i.i, %numerator.sroa.54.44.vec.extract, !dbg !195
  %numerator.sroa.54.32.vec.insert1049 = insertelement <4 x float> poison, float %mul280.2, i64 0, !dbg !196
  %numerator.sroa.54.36.vec.insert1058 = insertelement <4 x float> %numerator.sroa.54.32.vec.insert1049, float %mul283.2, i64 1, !dbg !196
  %numerator.sroa.54.40.vec.insert1067 = insertelement <4 x float> %numerator.sroa.54.36.vec.insert1058, float %mul286.2, i64 2, !dbg !196
  %numerator.sroa.54.44.vec.insert1076 = insertelement <4 x float> %numerator.sroa.54.40.vec.insert1067, float %mul289.2, i64 3, !dbg !196
  %numerator.sroa.80.48.vec.extract = extractelement <4 x float> %numerator.sroa.80.0, i64 0, !dbg !191
  %numerator.sroa.80.52.vec.extract = extractelement <4 x float> %numerator.sroa.80.0, i64 1, !dbg !191
  %numerator.sroa.80.56.vec.extract = extractelement <4 x float> %numerator.sroa.80.0, i64 2, !dbg !191
  %numerator.sroa.80.60.vec.extract = extractelement <4 x float> %numerator.sroa.80.0, i64 3, !dbg !191
  %mul280.3 = fmul contract float %mul.i.i, %numerator.sroa.80.48.vec.extract, !dbg !192
  %mul283.3 = fmul contract float %mul.i.i, %numerator.sroa.80.52.vec.extract, !dbg !193
  %mul286.3 = fmul contract float %mul.i.i, %numerator.sroa.80.56.vec.extract, !dbg !194
  %mul289.3 = fmul contract float %mul.i.i, %numerator.sroa.80.60.vec.extract, !dbg !195
  %numerator.sroa.80.48.vec.insert1086 = insertelement <4 x float> poison, float %mul280.3, i64 0, !dbg !196
  %numerator.sroa.80.52.vec.insert1095 = insertelement <4 x float> %numerator.sroa.80.48.vec.insert1086, float %mul283.3, i64 1, !dbg !196
  %numerator.sroa.80.56.vec.insert1104 = insertelement <4 x float> %numerator.sroa.80.52.vec.insert1095, float %mul286.3, i64 2, !dbg !196
  %numerator.sroa.80.60.vec.insert1113 = insertelement <4 x float> %numerator.sroa.80.56.vec.insert1104, float %mul289.3, i64 3, !dbg !196
  %sub313 = fsub contract float %spec.select, %100, !dbg !197
  %sub317 = fsub contract float %condval.0.1, %100, !dbg !198
  %sub321 = fsub contract float %condval.0.2, %100, !dbg !199
  %sub325 = fsub contract float %condval.0.3, %100, !dbg !200
  %mul330 = fmul contract float %sub313, 0x3FC7154760000000, !dbg !201
  %mul334 = fmul contract float %sub317, 0x3FC7154760000000, !dbg !202
  %mul338 = fmul contract float %sub321, 0x3FC7154760000000, !dbg !203
  %mul342 = fmul contract float %sub325, 0x3FC7154760000000, !dbg !204
  %add347 = fadd contract float %mul330, 8.000000e+00, !dbg !205
  %add351 = fadd contract float %mul334, 8.000000e+00, !dbg !206
  %add355 = fadd contract float %mul338, 8.000000e+00, !dbg !207
  %add359 = fadd contract float %mul342, 8.000000e+00, !dbg !208
  %cmp.i.i771 = fcmp contract olt float %add347, -1.260000e+02, !dbg !209
  %cond.i.i772 = select contract i1 %cmp.i.i771, float 6.400000e+01, float 0.000000e+00, !dbg !209
  %add.i.i773 = fadd contract float %add347, %cond.i.i772, !dbg !209
  %102 = tail call contract float @llvm.exp2.f32(float %add.i.i773), !dbg !209
  %cond2.i.i774 = select contract i1 %cmp.i.i771, float 0x3BF0000000000000, float 1.000000e+00, !dbg !209
  %mul.i.i775 = fmul contract float %cond2.i.i774, %102, !dbg !209
  %cmp.i.i776 = fcmp contract olt float %add351, -1.260000e+02, !dbg !211
  %cond.i.i777 = select contract i1 %cmp.i.i776, float 6.400000e+01, float 0.000000e+00, !dbg !211
  %add.i.i778 = fadd contract float %add351, %cond.i.i777, !dbg !211
  %103 = tail call contract float @llvm.exp2.f32(float %add.i.i778), !dbg !211
  %cond2.i.i779 = select contract i1 %cmp.i.i776, float 0x3BF0000000000000, float 1.000000e+00, !dbg !211
  %mul.i.i780 = fmul contract float %cond2.i.i779, %103, !dbg !211
  %cmp.i.i781 = fcmp contract olt float %add355, -1.260000e+02, !dbg !213
  %cond.i.i782 = select contract i1 %cmp.i.i781, float 6.400000e+01, float 0.000000e+00, !dbg !213
  %add.i.i783 = fadd contract float %add355, %cond.i.i782, !dbg !213
  %104 = tail call contract float @llvm.exp2.f32(float %add.i.i783), !dbg !213
  %cond2.i.i784 = select contract i1 %cmp.i.i781, float 0x3BF0000000000000, float 1.000000e+00, !dbg !213
  %mul.i.i785 = fmul contract float %cond2.i.i784, %104, !dbg !213
  %cmp.i.i786 = fcmp contract olt float %add359, -1.260000e+02, !dbg !215
  %cond.i.i787 = select contract i1 %cmp.i.i786, float 6.400000e+01, float 0.000000e+00, !dbg !215
  %add.i.i788 = fadd contract float %add359, %cond.i.i787, !dbg !215
  %105 = tail call contract float @llvm.exp2.f32(float %add.i.i788), !dbg !215
  %cond2.i.i789 = select contract i1 %cmp.i.i786, float 0x3BF0000000000000, float 1.000000e+00, !dbg !215
  %mul.i.i790 = fmul contract float %cond2.i.i789, %105, !dbg !215
  %106 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !217
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !217, !noalias !221
  %107 = fptrunc float %mul.i.i775 to half, !dbg !217
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %106), !dbg !217, !noalias !221
  %108 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !221
  %109 = fptrunc float %mul.i.i780 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %108), !dbg !226, !noalias !221
  %110 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !228
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !228, !noalias !232
  %111 = fptrunc float %mul.i.i785 to half, !dbg !228
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %110), !dbg !228, !noalias !232
  %112 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !232
  %113 = fptrunc float %mul.i.i790 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %112), !dbg !237, !noalias !232
  %114 = insertelement <4 x half> poison, half %107, i64 0, !dbg !239
  %115 = insertelement <4 x half> %114, half %109, i64 1, !dbg !239
  %116 = insertelement <4 x half> %115, half %111, i64 2, !dbg !239
  %117 = insertelement <4 x half> %116, half %113, i64 3, !dbg !239
  %conv.i.i = fpext half %107 to float, !dbg !240
  %add393 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !245
  %conv.i.i.1 = fpext half %109 to float, !dbg !240
  %add393.1 = fadd contract float %add393, %conv.i.i.1, !dbg !245
  %conv.i.i.2 = fpext half %111 to float, !dbg !240
  %add393.2 = fadd contract float %add393.1, %conv.i.i.2, !dbg !245
  %conv.i.i.3 = fpext half %113 to float, !dbg !240
  %add393.3 = fadd contract float %add393.2, %conv.i.i.3, !dbg !245
  %118 = bitcast float %add393.3 to i32, !dbg !246
  %119 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !248
  %120 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %119) #11, !dbg !251
  %xor.i.i796 = xor i32 %120, 32, !dbg !252
  %121 = and i32 %120, -64, !dbg !253
  %and.i.i797 = add nsw i32 %121, 64, !dbg !253
  %cmp.not.i.i798 = icmp slt i32 %xor.i.i796, %and.i.i797, !dbg !254
  %cond.i.i799 = select i1 %cmp.not.i.i798, i32 %xor.i.i796, i32 %120, !dbg !255
  %shl.i.i800 = shl i32 %cond.i.i799, 2, !dbg !256
  %122 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i800, i32 %118), !dbg !257
  %123 = bitcast i32 %122 to float, !dbg !258
  %add401 = fadd contract float %add393.3, %123, !dbg !259
  %124 = bitcast float %add401 to i32, !dbg !260
  %125 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !262
  %126 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %125) #11, !dbg !265
  %xor.i.i801 = xor i32 %126, 16, !dbg !266
  %127 = and i32 %126, -64, !dbg !267
  %and.i.i802 = add nsw i32 %127, 64, !dbg !267
  %cmp.not.i.i803 = icmp slt i32 %xor.i.i801, %and.i.i802, !dbg !268
  %cond.i.i804 = select i1 %cmp.not.i.i803, i32 %xor.i.i801, i32 %126, !dbg !269
  %shl.i.i805 = shl i32 %cond.i.i804, 2, !dbg !270
  %128 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i805, i32 %124), !dbg !271
  %129 = bitcast i32 %128 to float, !dbg !272
  %add406 = fadd contract float %add401, %129, !dbg !273
  fence syncscope("warp") release, !dbg !274
  tail call void @llvm.mxc.barrier.warp(), !dbg !277
  fence syncscope("warp") acquire, !dbg !278
  %130 = getelementptr inbounds i8, ptr addrspace(4) %20, i64 %.idx, !dbg !279
  %131 = load i64, ptr addrspace(4) %130, align 8, !dbg !280
  %add.ptr435.1 = getelementptr inbounds i8, ptr addrspace(4) %130, i64 128, !dbg !279
  %132 = load i64, ptr addrspace(4) %add.ptr435.1, align 8, !dbg !280
  %add.ptr435.2 = getelementptr inbounds i8, ptr addrspace(4) %130, i64 256, !dbg !279
  %133 = load i64, ptr addrspace(4) %add.ptr435.2, align 8, !dbg !280
  %add.ptr435.3 = getelementptr inbounds i8, ptr addrspace(4) %130, i64 384, !dbg !279
  %134 = load i64, ptr addrspace(4) %add.ptr435.3, align 8, !dbg !280
  %mul300 = fmul contract float %denominator.sroa.0.0847, %mul.i.i, !dbg !281
  %v_column.sroa.18.0.insert.ext = shl i64 %134, 48, !dbg !282
  %v_column.sroa.14.0.insert.ext = shl i64 %133, 32, !dbg !282
  %v_column.sroa.14.0.insert.shift = and i64 %v_column.sroa.14.0.insert.ext, 281470681743360, !dbg !282
  %v_column.sroa.14.0.insert.insert = or disjoint i64 %v_column.sroa.18.0.insert.ext, %v_column.sroa.14.0.insert.shift, !dbg !282
  %v_column.sroa.10.0.insert.ext = shl i64 %132, 16, !dbg !282
  %v_column.sroa.10.0.insert.shift = and i64 %v_column.sroa.10.0.insert.ext, 4294901760, !dbg !282
  %v_column.sroa.10.0.insert.insert = or disjoint i64 %v_column.sroa.14.0.insert.insert, %v_column.sroa.10.0.insert.shift, !dbg !282
  %v_column.sroa.0.0.insert.ext = and i64 %131, 65535, !dbg !282
  %v_column.sroa.0.0.insert.insert = or disjoint i64 %v_column.sroa.10.0.insert.insert, %v_column.sroa.0.0.insert.ext, !dbg !282
  store i64 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr477, align 8, !dbg !282
  %v_fetch.sroa.0.2.extract.shift = lshr i64 %131, 16, !dbg !283
  %135 = shl i64 %134, 32, !dbg !282
  %v_column.sroa.18.0.insert.ext923 = and i64 %135, -281474976710656, !dbg !282
  %136 = shl i64 %133, 16, !dbg !282
  %v_column.sroa.14.0.insert.shift909 = and i64 %136, 281470681743360, !dbg !282
  %v_column.sroa.14.0.insert.insert911 = or disjoint i64 %v_column.sroa.18.0.insert.ext923, %v_column.sroa.14.0.insert.shift909, !dbg !282
  %v_column.sroa.10.0.insert.ext893 = and i64 %132, 4294901760, !dbg !282
  %v_column.sroa.10.0.insert.insert896 = or disjoint i64 %v_column.sroa.14.0.insert.insert911, %v_column.sroa.10.0.insert.ext893, !dbg !282
  %v_column.sroa.0.0.insert.ext881 = and i64 %v_fetch.sroa.0.2.extract.shift, 65535, !dbg !282
  %v_column.sroa.0.0.insert.insert883 = or disjoint i64 %v_column.sroa.10.0.insert.insert896, %v_column.sroa.0.0.insert.ext881, !dbg !282
  store i64 %v_column.sroa.0.0.insert.insert883, ptr addrspace(3) %add.ptr477.1, align 8, !dbg !282
  %v_fetch.sroa.0.4.extract.shift = lshr i64 %131, 32, !dbg !283
  %137 = shl i64 %134, 16, !dbg !282
  %v_column.sroa.18.0.insert.ext928 = and i64 %137, -281474976710656, !dbg !282
  %v_column.sroa.14.0.insert.ext913 = and i64 %133, 281470681743360, !dbg !282
  %v_column.sroa.14.0.insert.insert916 = or disjoint i64 %v_column.sroa.18.0.insert.ext928, %v_column.sroa.14.0.insert.ext913, !dbg !282
  %138 = lshr i64 %132, 16, !dbg !282
  %v_column.sroa.10.0.insert.shift899 = and i64 %138, 4294901760, !dbg !282
  %v_column.sroa.10.0.insert.insert901 = or disjoint i64 %v_column.sroa.14.0.insert.insert916, %v_column.sroa.10.0.insert.shift899, !dbg !282
  %v_column.sroa.0.0.insert.ext885 = and i64 %v_fetch.sroa.0.4.extract.shift, 65535, !dbg !282
  %v_column.sroa.0.0.insert.insert887 = or disjoint i64 %v_column.sroa.10.0.insert.insert901, %v_column.sroa.0.0.insert.ext885, !dbg !282
  store i64 %v_column.sroa.0.0.insert.insert887, ptr addrspace(3) %add.ptr477.2, align 8, !dbg !282
  %v_fetch.sroa.0.6.extract.shift = lshr i64 %131, 48, !dbg !283
  %v_fetch.sroa.17.30.extract.shift = and i64 %134, -281474976710656, !dbg !282
  %139 = lshr i64 %133, 16, !dbg !282
  %v_column.sroa.14.0.insert.shift919 = and i64 %139, 281470681743360, !dbg !282
  %v_column.sroa.14.0.insert.insert921 = or disjoint i64 %v_fetch.sroa.17.30.extract.shift, %v_column.sroa.14.0.insert.shift919, !dbg !282
  %140 = lshr i64 %132, 32, !dbg !282
  %v_column.sroa.10.0.insert.shift904 = and i64 %140, 4294901760, !dbg !282
  %v_column.sroa.10.0.insert.insert906 = or disjoint i64 %v_column.sroa.14.0.insert.insert921, %v_column.sroa.10.0.insert.shift904, !dbg !282
  %v_column.sroa.0.0.insert.insert891 = or disjoint i64 %v_column.sroa.10.0.insert.insert906, %v_fetch.sroa.0.6.extract.shift, !dbg !282
  store i64 %v_column.sroa.0.0.insert.insert891, ptr addrspace(3) %add.ptr477.3, align 8, !dbg !282
  fence syncscope("warp") release, !dbg !284
  tail call void @llvm.mxc.barrier.warp(), !dbg !287
  fence syncscope("warp") acquire, !dbg !288
  %141 = load <4 x half>, ptr addrspace(3) %add.ptr504, align 8, !dbg !289
  %142 = load <4 x half>, ptr addrspace(3) %add.ptr504.1, align 8, !dbg !289
  %143 = load <4 x half>, ptr addrspace(3) %add.ptr504.2, align 8, !dbg !289
  %144 = load <4 x half>, ptr addrspace(3) %add.ptr504.3, align 8, !dbg !289
  %145 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %141, <4 x half> %117, <4 x float> %numerator.sroa.0.12.vec.insert1001), !dbg !290
  %146 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %142, <4 x half> %117, <4 x float> %numerator.sroa.28.28.vec.insert1039), !dbg !290
  %147 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %143, <4 x half> %117, <4 x float> %numerator.sroa.54.44.vec.insert1076), !dbg !290
  %148 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %144, <4 x half> %117, <4 x float> %numerator.sroa.80.60.vec.insert1113), !dbg !290
  %add410 = fadd contract float %mul300, %add406, !dbg !291
  br label %if.end530, !dbg !292

if.end530:                                        ; preds = %if.then, %for.body97
  %numerator.sroa.80.1 = phi <4 x float> [ %numerator.sroa.80.0, %for.body97 ], [ %148, %if.then ], !dbg !293
  %numerator.sroa.54.1 = phi <4 x float> [ %numerator.sroa.54.0, %for.body97 ], [ %147, %if.then ], !dbg !293
  %numerator.sroa.28.1 = phi <4 x float> [ %numerator.sroa.28.0, %for.body97 ], [ %146, %if.then ], !dbg !293
  %numerator.sroa.0.1 = phi <4 x float> [ %numerator.sroa.0.0, %for.body97 ], [ %145, %if.then ], !dbg !293
  %maximum.sroa.0.1 = phi float [ %maximum.sroa.0.0846, %for.body97 ], [ %100, %if.then ], !dbg !293
  %denominator.sroa.0.1 = phi float [ %denominator.sroa.0.0847, %for.body97 ], [ %add410, %if.then ], !dbg !293
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !292
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !294
  br i1 %exitcond.not, label %for.cond534.preheader, label %for.body97, !dbg !64, !llvm.loop !295
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
attributes #3 = { convergent mustprogress norecurse nounwind "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-implicitarg-num-bytes"="80" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="64" "metaxgpu-min-blocks"="1" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" "uniform-work-group-size"="true" }
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v064_codex_power_s8_serial_loop_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v064_codex_power_s8_serial_loop_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!64 = !DILocation(line: 48, column: 3, scope: !40)
!65 = !DILocation(line: 172, column: 21, scope: !40)
!66 = !DILocation(line: 174, column: 22, scope: !40)
!67 = !DILocation(line: 175, column: 22, scope: !40)
!68 = !DILocation(line: 176, column: 22, scope: !40)
!69 = !DILocation(line: 177, column: 22, scope: !40)
!70 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !71)
!71 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !72)
!72 = distinct !DILocation(line: 180, column: 3, scope: !40)
!73 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !71)
!74 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !71)
!75 = !DILocation(line: 1007, column: 10, scope: !76, inlinedAt: !78)
!76 = distinct !DISubprogram(name: "__float2half_rn", scope: !77, file: !77, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!77 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!78 = distinct !DILocation(line: 1077, column: 18, scope: !79, inlinedAt: !80)
!79 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !77, file: !77, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!80 = distinct !DILocation(line: 1295, column: 23, scope: !81, inlinedAt: !82)
!81 = distinct !DISubprogram(name: "__float22half2_rn", scope: !77, file: !77, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!82 = distinct !DILocation(line: 185, column: 27, scope: !40)
!83 = !{!84, !86}
!84 = distinct !{!84, !85, !"_ZL17__floats2half2_rnff: %agg.result"}
!85 = distinct !{!85, !"_ZL17__floats2half2_rnff"}
!86 = distinct !{!86, !87, !"_ZL17__float22half2_rn6float2: %agg.result"}
!87 = distinct !{!87, !"_ZL17__float22half2_rn6float2"}
!88 = !DILocation(line: 1007, column: 10, scope: !76, inlinedAt: !89)
!89 = distinct !DILocation(line: 1077, column: 38, scope: !79, inlinedAt: !80)
!90 = !DILocation(line: 596, column: 67, scope: !91, inlinedAt: !92)
!91 = distinct !DISubprogram(name: "__half2", scope: !77, file: !77, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!92 = distinct !DILocation(line: 1077, column: 10, scope: !79, inlinedAt: !80)
!93 = !DILocation(line: 596, column: 73, scope: !91, inlinedAt: !92)
!94 = !DILocation(line: 1007, column: 10, scope: !76, inlinedAt: !95)
!95 = distinct !DILocation(line: 1077, column: 18, scope: !79, inlinedAt: !96)
!96 = distinct !DILocation(line: 1295, column: 23, scope: !81, inlinedAt: !97)
!97 = distinct !DILocation(line: 186, column: 27, scope: !40)
!98 = !{!99, !101}
!99 = distinct !{!99, !100, !"_ZL17__floats2half2_rnff: %agg.result"}
!100 = distinct !{!100, !"_ZL17__floats2half2_rnff"}
!101 = distinct !{!101, !102, !"_ZL17__float22half2_rn6float2: %agg.result"}
!102 = distinct !{!102, !"_ZL17__float22half2_rn6float2"}
!103 = !DILocation(line: 1007, column: 10, scope: !76, inlinedAt: !104)
!104 = distinct !DILocation(line: 1077, column: 38, scope: !79, inlinedAt: !96)
!105 = !DILocation(line: 596, column: 67, scope: !91, inlinedAt: !106)
!106 = distinct !DILocation(line: 1077, column: 10, scope: !79, inlinedAt: !96)
!107 = !DILocation(line: 596, column: 73, scope: !91, inlinedAt: !106)
!108 = !DILocation(line: 187, column: 38, scope: !40)
!109 = !DILocation(line: 188, column: 141, scope: !40)
!110 = !DILocation(line: 188, column: 22, scope: !40)
!111 = !DILocation(line: 188, column: 184, scope: !40)
!112 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !113)
!113 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !114)
!114 = distinct !DILocation(line: 190, column: 3, scope: !40)
!115 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !113)
!116 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !113)
!117 = !DILocation(line: 192, column: 8, scope: !40)
!118 = !DILocation(line: 193, column: 22, scope: !40)
!119 = !DILocation(line: 193, column: 134, scope: !40)
!120 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!121 = !{i32 2, i32 -1, i32 -1, i32 -1}
!122 = !DILocation(line: 193, column: 153, scope: !40)
!123 = !DILocation(line: 195, column: 1, scope: !40)
!124 = !DILocation(line: 44, column: 37, scope: !40)
!125 = !DILocation(line: 49, column: 24, scope: !40)
!126 = !DILocation(line: 49, column: 101, scope: !40)
!127 = !DILocation(line: 50, column: 12, scope: !40)
!128 = !DILocation(line: 50, column: 28, scope: !40)
!129 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !130)
!130 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !131)
!131 = distinct !DILocation(line: 51, column: 7, scope: !40)
!132 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !130)
!133 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !130)
!134 = !DILocation(line: 54, column: 47, scope: !40)
!135 = !DILocation(line: 54, column: 33, scope: !40)
!136 = !DILocation(line: 57, column: 213, scope: !40)
!137 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !138)
!138 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !139)
!139 = distinct !DILocation(line: 60, column: 7, scope: !40)
!140 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !138)
!141 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !138)
!142 = !DILocation(line: 65, column: 32, scope: !40)
!143 = !DILocation(line: 67, column: 37, scope: !40)
!144 = !DILocation(line: 75, column: 74, scope: !40)
!145 = !DILocation(line: 75, column: 13, scope: !40)
!146 = !DILocation(line: 75, column: 63, scope: !40)
!147 = !DILocation(line: 351, column: 10, scope: !148, inlinedAt: !150)
!148 = distinct !DISubprogram(name: "max", scope: !149, file: !149, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!149 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!150 = distinct !DILocation(line: 85, column: 28, scope: !40)
!151 = !DILocation(line: 1018, column: 9, scope: !152, inlinedAt: !153)
!152 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!153 = distinct !DILocation(line: 87, column: 48, scope: !40)
!154 = !DILocation(line: 171, column: 37, scope: !155, inlinedAt: !156)
!155 = distinct !DISubprogram(name: "__lane_id", scope: !51, file: !51, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!156 = distinct !DILocation(line: 990, column: 14, scope: !157, inlinedAt: !158)
!157 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!158 = distinct !DILocation(line: 1019, column: 11, scope: !152, inlinedAt: !153)
!159 = !DILocation(line: 171, column: 10, scope: !155, inlinedAt: !156)
!160 = !DILocation(line: 991, column: 20, scope: !157, inlinedAt: !158)
!161 = !DILocation(line: 992, column: 36, scope: !157, inlinedAt: !158)
!162 = !DILocation(line: 992, column: 17, scope: !157, inlinedAt: !158)
!163 = !DILocation(line: 992, column: 11, scope: !157, inlinedAt: !158)
!164 = !DILocation(line: 993, column: 43, scope: !157, inlinedAt: !158)
!165 = !DILocation(line: 993, column: 10, scope: !157, inlinedAt: !158)
!166 = !DILocation(line: 1020, column: 14, scope: !152, inlinedAt: !153)
!167 = !DILocation(line: 351, column: 10, scope: !148, inlinedAt: !168)
!168 = distinct !DILocation(line: 87, column: 26, scope: !40)
!169 = !DILocation(line: 1018, column: 9, scope: !152, inlinedAt: !170)
!170 = distinct !DILocation(line: 88, column: 48, scope: !40)
!171 = !DILocation(line: 171, column: 37, scope: !155, inlinedAt: !172)
!172 = distinct !DILocation(line: 990, column: 14, scope: !157, inlinedAt: !173)
!173 = distinct !DILocation(line: 1019, column: 11, scope: !152, inlinedAt: !170)
!174 = !DILocation(line: 171, column: 10, scope: !155, inlinedAt: !172)
!175 = !DILocation(line: 991, column: 20, scope: !157, inlinedAt: !173)
!176 = !DILocation(line: 992, column: 36, scope: !157, inlinedAt: !173)
!177 = !DILocation(line: 992, column: 17, scope: !157, inlinedAt: !173)
!178 = !DILocation(line: 992, column: 11, scope: !157, inlinedAt: !173)
!179 = !DILocation(line: 993, column: 43, scope: !157, inlinedAt: !173)
!180 = !DILocation(line: 993, column: 10, scope: !157, inlinedAt: !173)
!181 = !DILocation(line: 1020, column: 14, scope: !152, inlinedAt: !170)
!182 = !DILocation(line: 351, column: 10, scope: !148, inlinedAt: !183)
!183 = distinct !DILocation(line: 88, column: 26, scope: !40)
!184 = !DILocation(line: 351, column: 10, scope: !148, inlinedAt: !185)
!185 = distinct !DILocation(line: 89, column: 24, scope: !40)
!186 = !DILocation(line: 90, column: 39, scope: !40)
!187 = !DILocation(line: 90, column: 57, scope: !40)
!188 = !DILocation(line: 285, column: 49, scope: !189, inlinedAt: !190)
!189 = distinct !DISubprogram(name: "exp2f", scope: !149, file: !149, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!190 = distinct !DILocation(line: 90, column: 20, scope: !40)
!191 = !DILocation(line: 94, column: 23, scope: !40)
!192 = !DILocation(line: 96, column: 24, scope: !40)
!193 = !DILocation(line: 97, column: 24, scope: !40)
!194 = !DILocation(line: 98, column: 24, scope: !40)
!195 = !DILocation(line: 99, column: 24, scope: !40)
!196 = !DILocation(line: 100, column: 47, scope: !40)
!197 = !DILocation(line: 113, column: 28, scope: !40)
!198 = !DILocation(line: 114, column: 28, scope: !40)
!199 = !DILocation(line: 115, column: 28, scope: !40)
!200 = !DILocation(line: 116, column: 28, scope: !40)
!201 = !DILocation(line: 118, column: 25, scope: !40)
!202 = !DILocation(line: 119, column: 25, scope: !40)
!203 = !DILocation(line: 120, column: 25, scope: !40)
!204 = !DILocation(line: 121, column: 25, scope: !40)
!205 = !DILocation(line: 123, column: 23, scope: !40)
!206 = !DILocation(line: 124, column: 23, scope: !40)
!207 = !DILocation(line: 125, column: 23, scope: !40)
!208 = !DILocation(line: 126, column: 23, scope: !40)
!209 = !DILocation(line: 285, column: 49, scope: !189, inlinedAt: !210)
!210 = distinct !DILocation(line: 127, column: 15, scope: !40)
!211 = !DILocation(line: 285, column: 49, scope: !189, inlinedAt: !212)
!212 = distinct !DILocation(line: 128, column: 15, scope: !40)
!213 = !DILocation(line: 285, column: 49, scope: !189, inlinedAt: !214)
!214 = distinct !DILocation(line: 129, column: 15, scope: !40)
!215 = !DILocation(line: 285, column: 49, scope: !189, inlinedAt: !216)
!216 = distinct !DILocation(line: 130, column: 15, scope: !40)
!217 = !DILocation(line: 1007, column: 10, scope: !76, inlinedAt: !218)
!218 = distinct !DILocation(line: 1077, column: 18, scope: !79, inlinedAt: !219)
!219 = distinct !DILocation(line: 1295, column: 23, scope: !81, inlinedAt: !220)
!220 = distinct !DILocation(line: 131, column: 29, scope: !40)
!221 = !{!222, !224}
!222 = distinct !{!222, !223, !"_ZL17__floats2half2_rnff: %agg.result"}
!223 = distinct !{!223, !"_ZL17__floats2half2_rnff"}
!224 = distinct !{!224, !225, !"_ZL17__float22half2_rn6float2: %agg.result"}
!225 = distinct !{!225, !"_ZL17__float22half2_rn6float2"}
!226 = !DILocation(line: 1007, column: 10, scope: !76, inlinedAt: !227)
!227 = distinct !DILocation(line: 1077, column: 38, scope: !79, inlinedAt: !219)
!228 = !DILocation(line: 1007, column: 10, scope: !76, inlinedAt: !229)
!229 = distinct !DILocation(line: 1077, column: 18, scope: !79, inlinedAt: !230)
!230 = distinct !DILocation(line: 1295, column: 23, scope: !81, inlinedAt: !231)
!231 = distinct !DILocation(line: 132, column: 29, scope: !40)
!232 = !{!233, !235}
!233 = distinct !{!233, !234, !"_ZL17__floats2half2_rnff: %agg.result"}
!234 = distinct !{!234, !"_ZL17__floats2half2_rnff"}
!235 = distinct !{!235, !236, !"_ZL17__float22half2_rn6float2: %agg.result"}
!236 = distinct !{!236, !"_ZL17__float22half2_rn6float2"}
!237 = !DILocation(line: 1007, column: 10, scope: !76, inlinedAt: !238)
!238 = distinct !DILocation(line: 1077, column: 38, scope: !79, inlinedAt: !230)
!239 = !DILocation(line: 133, column: 36, scope: !40)
!240 = !DILocation(line: 1082, column: 16, scope: !241, inlinedAt: !242)
!241 = distinct !DISubprogram(name: "__half2float", scope: !77, file: !77, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!242 = distinct !DILocation(line: 136, column: 55, scope: !243, inlinedAt: !244)
!243 = distinct !DISubprogram(name: "operator float", scope: !77, file: !77, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!244 = distinct !DILocation(line: 137, column: 52, scope: !40)
!245 = !DILocation(line: 137, column: 42, scope: !40)
!246 = !DILocation(line: 1018, column: 9, scope: !152, inlinedAt: !247)
!247 = distinct !DILocation(line: 139, column: 42, scope: !40)
!248 = !DILocation(line: 171, column: 37, scope: !155, inlinedAt: !249)
!249 = distinct !DILocation(line: 990, column: 14, scope: !157, inlinedAt: !250)
!250 = distinct !DILocation(line: 1019, column: 11, scope: !152, inlinedAt: !247)
!251 = !DILocation(line: 171, column: 10, scope: !155, inlinedAt: !249)
!252 = !DILocation(line: 991, column: 20, scope: !157, inlinedAt: !250)
!253 = !DILocation(line: 992, column: 36, scope: !157, inlinedAt: !250)
!254 = !DILocation(line: 992, column: 17, scope: !157, inlinedAt: !250)
!255 = !DILocation(line: 992, column: 11, scope: !157, inlinedAt: !250)
!256 = !DILocation(line: 993, column: 43, scope: !157, inlinedAt: !250)
!257 = !DILocation(line: 993, column: 10, scope: !157, inlinedAt: !250)
!258 = !DILocation(line: 1020, column: 14, scope: !152, inlinedAt: !247)
!259 = !DILocation(line: 139, column: 40, scope: !40)
!260 = !DILocation(line: 1018, column: 9, scope: !152, inlinedAt: !261)
!261 = distinct !DILocation(line: 140, column: 42, scope: !40)
!262 = !DILocation(line: 171, column: 37, scope: !155, inlinedAt: !263)
!263 = distinct !DILocation(line: 990, column: 14, scope: !157, inlinedAt: !264)
!264 = distinct !DILocation(line: 1019, column: 11, scope: !152, inlinedAt: !261)
!265 = !DILocation(line: 171, column: 10, scope: !155, inlinedAt: !263)
!266 = !DILocation(line: 991, column: 20, scope: !157, inlinedAt: !264)
!267 = !DILocation(line: 992, column: 36, scope: !157, inlinedAt: !264)
!268 = !DILocation(line: 992, column: 17, scope: !157, inlinedAt: !264)
!269 = !DILocation(line: 992, column: 11, scope: !157, inlinedAt: !264)
!270 = !DILocation(line: 993, column: 43, scope: !157, inlinedAt: !264)
!271 = !DILocation(line: 993, column: 10, scope: !157, inlinedAt: !264)
!272 = !DILocation(line: 1020, column: 14, scope: !152, inlinedAt: !261)
!273 = !DILocation(line: 140, column: 40, scope: !40)
!274 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !275)
!275 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !276)
!276 = distinct !DILocation(line: 142, column: 7, scope: !40)
!277 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !275)
!278 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !275)
!279 = !DILocation(line: 145, column: 54, scope: !40)
!280 = !DILocation(line: 145, column: 40, scope: !40)
!281 = !DILocation(line: 102, column: 40, scope: !40)
!282 = !DILocation(line: 152, column: 159, scope: !40)
!283 = !DILocation(line: 150, column: 27, scope: !40)
!284 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !285)
!285 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !286)
!286 = distinct !DILocation(line: 154, column: 7, scope: !40)
!287 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !285)
!288 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !285)
!289 = !DILocation(line: 157, column: 46, scope: !40)
!290 = !DILocation(line: 162, column: 46, scope: !40)
!291 = !DILocation(line: 141, column: 40, scope: !40)
!292 = !DILocation(line: 48, column: 40, scope: !40)
!293 = !DILocation(line: 0, scope: !40)
!294 = !DILocation(line: 48, column: 35, scope: !40)
!295 = distinct !{!295, !64, !296, !32}
!296 = !DILocation(line: 168, column: 3, scope: !40)
