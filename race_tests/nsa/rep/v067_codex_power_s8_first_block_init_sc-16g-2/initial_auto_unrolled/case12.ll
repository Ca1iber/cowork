; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v067_codex_power_s8_first_block_init_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v067_codex_power_s8_first_block_init_sc-16g-2/codegen/case12.device.cpp"
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
  %xor1237 = and i32 %mul11, 56
  %call27.masked = and i32 %2, 1016
  %mul29 = xor i32 %xor1237, %call27.masked
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
  %qk_fetch.sroa.0.0.copyload3508 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %qk_fetch.sroa.38.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %qk_fetch.sroa.38.0.copyload3526 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr.1.sroa_idx, align 8, !dbg !45
  %7 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 1024, !dbg !46
  %add.ptr39.11412 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload3508, ptr addrspace(3) %add.ptr39.11412, align 8, !dbg !47
  %add.ptr39.1.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.38.0.copyload3526, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !47
  fence syncscope("warp") release, !dbg !49
  tail call void @llvm.mxc.barrier.warp(), !dbg !55
  fence syncscope("warp") acquire, !dbg !56
  %and48 = shl nuw nsw i32 %2, 6
  %mul49 = and i32 %and48, 960
  %shr52 = lshr i32 %2, 5
  %and55 = and i32 %2, 7
  %and60 = lshr i32 %2, 4
  %8 = xor i32 %and33, %and60
  %xor651236 = xor i32 %8, %2
  %xor68 = shl nuw nsw i32 %xor651236, 2
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
  %mul95 = shl nsw i32 %0, 13, !dbg !64
  %mul97 = shl nsw i32 %1, 3, !dbg !65
  %add98 = add nuw nsw i32 %mul95, %mul97, !dbg !66
  %idxprom = zext nneg i32 %add98 to i64, !dbg !67
  %arrayidx99 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %idxprom, !dbg !67
  %13 = load i32, ptr addrspace(1) %arrayidx99, align 4, !dbg !67, !tbaa !30
  %mul100 = shl nsw i32 %13, 4, !dbg !68
  %cmp101 = icmp slt i32 %13, 0, !dbg !69
  %cmp103.not = icmp sgt i32 %mul100, %1
  %or.cond = select i1 %cmp101, i1 true, i1 %cmp103.not, !dbg !70
  br i1 %or.cond, label %entry.if.end475_crit_edge, label %if.then, !dbg !70

entry.if.end475_crit_edge:                        ; preds = %entry
  %.pre = zext nneg i32 %0 to i64
  %.pre3564 = zext nneg i32 %mul11 to i64
  %.pre3565 = lshr i32 %2, 2
  %.pre3566 = and i32 %.pre3565, 252
  %.pre3567 = shl nuw nsw i64 %.pre, 16
  %.pre3568 = shl nuw nsw i32 %2, 4
  %.pre3570 = and i32 %.pre3568, 16128
  %.pre3572 = zext nneg i32 %.pre3570 to i64
  %.pre3573 = or disjoint i64 %.pre3567, %.pre3572
  %.pre3574 = shl nuw nsw i32 %2, 2
  %.pre3576 = and i32 %.pre3574, 60
  %.pre3578 = zext nneg i32 %.pre3576 to i64
  %.pre3579 = or disjoint i64 %.pre3573, %.pre3578
  %.pre3580 = and i32 %.pre3568, 240
  %.pre3581 = and i32 %.pre3565, 3
  %.pre3582 = xor i32 %.pre3581, %and60
  %.pre3583 = shl nuw nsw i32 %2, 8
  %.pre3584 = and i32 %.pre3583, 768
  %.pre3585 = and i32 %.pre3574, 48
  %.pre3586 = and i32 %2, 3
  %.pre3587 = xor i32 %and60, %.pre3586
  br label %if.end475, !dbg !70

if.then:                                          ; preds = %entry
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %conv = zext nneg i32 %0 to i64
  %conv113 = zext nneg i32 %mul100 to i64
  %mul118 = zext nneg i32 %mul11 to i64
  %.idx1232 = shl nuw nsw i64 %conv113, 7
  %invariant.gep = getelementptr inbounds i8, ptr addrspace(4) %K.coerce, i64 %.idx1232, !dbg !76
  %invariant.gep1357 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %mul118, !dbg !76
  %.idx1401 = shl nuw nsw i64 %conv, 17, !dbg !77
  %14 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1357, i64 %.idx1401, !dbg !77
  %qk_fetch.sroa.0.0.copyload3506 = load i64, ptr addrspace(4) %14, align 16, !dbg !78
  %qk_fetch.sroa.38.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %14, i64 8, !dbg !78
  %qk_fetch.sroa.38.0.copyload3523 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx, align 8, !dbg !78
  store i64 %qk_fetch.sroa.0.0.copyload3506, ptr addrspace(3) %add.ptr39, align 8, !dbg !79
  store i64 %qk_fetch.sroa.38.0.copyload3523, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !79
  %gep1358.1 = getelementptr inbounds i8, ptr addrspace(4) %14, i64 1024, !dbg !77
  %qk_fetch.sroa.0.0.copyload3509 = load i64, ptr addrspace(4) %gep1358.1, align 16, !dbg !78
  %qk_fetch.sroa.38.0.gep1358.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %14, i64 1032, !dbg !78
  %qk_fetch.sroa.38.0.copyload3527 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep1358.1.sroa_idx, align 8, !dbg !78
  store i64 %qk_fetch.sroa.0.0.copyload3509, ptr addrspace(3) %add.ptr39.11412, align 8, !dbg !79
  store i64 %qk_fetch.sroa.38.0.copyload3527, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !79
  fence syncscope("warp") release, !dbg !80
  tail call void @llvm.mxc.barrier.warp(), !dbg !83
  fence syncscope("warp") acquire, !dbg !84
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !85
  %15 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %9, <4 x float> zeroinitializer), !dbg !86
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !85
  %16 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %10, <4 x float> %15), !dbg !86
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !85
  %17 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %11, <4 x float> %16), !dbg !86
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !85
  %18 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %12, <4 x float> %17), !dbg !86
  %19 = lshr i32 %2, 2
  %mul212 = and i32 %19, 252
  %add213 = add nuw nsw i32 %mul100, %mul212
  %cmp216.not = icmp sgt i32 %add213, %1, !dbg !87
  %scores.sroa.0.0.vec.extract2595 = extractelement <4 x float> %18, i64 0
  %spec.select = select i1 %cmp216.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2595, !dbg !88
  %cmp216.not.1.not = icmp slt i32 %add213, %1, !dbg !87
  %scores.sroa.0.4.vec.extract2696 = extractelement <4 x float> %18, i64 1, !dbg !88
  %condval.0.1 = select i1 %cmp216.not.1.not, float %scores.sroa.0.4.vec.extract2696, float 0xFFF0000000000000, !dbg !88
  %add214.2 = or disjoint i32 %add213, 2, !dbg !89
  %cmp216.not.2 = icmp sgt i32 %add214.2, %1, !dbg !87
  %scores.sroa.0.8.vec.extract2773 = extractelement <4 x float> %18, i64 2, !dbg !88
  %condval.0.2 = select i1 %cmp216.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2773, !dbg !88
  %add214.3 = or disjoint i32 %add213, 3, !dbg !89
  %cmp216.not.3 = icmp sgt i32 %add214.3, %1, !dbg !87
  %scores.sroa.0.12.vec.extract2850 = extractelement <4 x float> %18, i64 3, !dbg !88
  %condval.0.3 = select i1 %cmp216.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2850, !dbg !88
  %20 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !90
  %21 = tail call contract noundef float @llvm.maxnum.f32(float %20, float %condval.0.1), !dbg !90
  %22 = tail call contract noundef float @llvm.maxnum.f32(float %21, float %condval.0.2), !dbg !90
  %23 = tail call contract noundef float @llvm.maxnum.f32(float %22, float %condval.0.3), !dbg !90
  %24 = bitcast float %23 to i32, !dbg !94
  %25 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !97
  %26 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %25) #11, !dbg !102
  %xor.i.i = xor i32 %26, 32, !dbg !103
  %27 = and i32 %26, -64, !dbg !104
  %and.i.i = add nsw i32 %27, 64, !dbg !104
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !105
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %26, !dbg !106
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !107
  %28 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %24), !dbg !108
  %29 = bitcast i32 %28 to float, !dbg !109
  %30 = tail call contract noundef float @llvm.maxnum.f32(float %23, float %29), !dbg !110
  %31 = bitcast float %30 to i32, !dbg !112
  %32 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !114
  %33 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %32) #11, !dbg !117
  %xor.i.i1239 = xor i32 %33, 16, !dbg !118
  %34 = and i32 %33, -64, !dbg !119
  %and.i.i1240 = add nsw i32 %34, 64, !dbg !119
  %cmp.not.i.i1241 = icmp slt i32 %xor.i.i1239, %and.i.i1240, !dbg !120
  %cond.i.i1242 = select i1 %cmp.not.i.i1241, i32 %xor.i.i1239, i32 %33, !dbg !121
  %shl.i.i1243 = shl i32 %cond.i.i1242, 2, !dbg !122
  %35 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1243, i32 %31), !dbg !123
  %36 = bitcast i32 %35 to float, !dbg !124
  %37 = tail call contract noundef float @llvm.maxnum.f32(float %30, float %36), !dbg !125
  %sub = fsub contract float %spec.select, %37, !dbg !127
  %sub264 = fsub contract float %condval.0.1, %37, !dbg !128
  %sub267 = fsub contract float %condval.0.2, %37, !dbg !129
  %sub270 = fsub contract float %condval.0.3, %37, !dbg !130
  %mul275 = fmul contract float %sub, 0x3FC7154760000000, !dbg !131
  %mul279 = fmul contract float %sub264, 0x3FC7154760000000, !dbg !132
  %mul283 = fmul contract float %sub267, 0x3FC7154760000000, !dbg !133
  %mul287 = fmul contract float %sub270, 0x3FC7154760000000, !dbg !134
  %add292 = fadd contract float %mul275, 8.000000e+00, !dbg !135
  %add296 = fadd contract float %mul279, 8.000000e+00, !dbg !136
  %add300 = fadd contract float %mul283, 8.000000e+00, !dbg !137
  %add304 = fadd contract float %mul287, 8.000000e+00, !dbg !138
  %cmp.i.i = fcmp contract olt float %add292, -1.260000e+02, !dbg !139
  %cond.i.i1244 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !139
  %add.i.i = fadd contract float %add292, %cond.i.i1244, !dbg !139
  %38 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !139
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !139
  %mul.i.i = fmul contract float %cond2.i.i, %38, !dbg !139
  %cmp.i.i1245 = fcmp contract olt float %add296, -1.260000e+02, !dbg !142
  %cond.i.i1246 = select contract i1 %cmp.i.i1245, float 6.400000e+01, float 0.000000e+00, !dbg !142
  %add.i.i1247 = fadd contract float %add296, %cond.i.i1246, !dbg !142
  %39 = tail call contract float @llvm.exp2.f32(float %add.i.i1247), !dbg !142
  %cond2.i.i1248 = select contract i1 %cmp.i.i1245, float 0x3BF0000000000000, float 1.000000e+00, !dbg !142
  %mul.i.i1249 = fmul contract float %cond2.i.i1248, %39, !dbg !142
  %cmp.i.i1250 = fcmp contract olt float %add300, -1.260000e+02, !dbg !144
  %cond.i.i1251 = select contract i1 %cmp.i.i1250, float 6.400000e+01, float 0.000000e+00, !dbg !144
  %add.i.i1252 = fadd contract float %add300, %cond.i.i1251, !dbg !144
  %40 = tail call contract float @llvm.exp2.f32(float %add.i.i1252), !dbg !144
  %cond2.i.i1253 = select contract i1 %cmp.i.i1250, float 0x3BF0000000000000, float 1.000000e+00, !dbg !144
  %mul.i.i1254 = fmul contract float %cond2.i.i1253, %40, !dbg !144
  %cmp.i.i1255 = fcmp contract olt float %add304, -1.260000e+02, !dbg !146
  %cond.i.i1256 = select contract i1 %cmp.i.i1255, float 6.400000e+01, float 0.000000e+00, !dbg !146
  %add.i.i1257 = fadd contract float %add304, %cond.i.i1256, !dbg !146
  %41 = tail call contract float @llvm.exp2.f32(float %add.i.i1257), !dbg !146
  %cond2.i.i1258 = select contract i1 %cmp.i.i1255, float 0x3BF0000000000000, float 1.000000e+00, !dbg !146
  %mul.i.i1259 = fmul contract float %cond2.i.i1258, %41, !dbg !146
  %42 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !148
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !148, !noalias !156
  %43 = fptrunc float %mul.i.i to half, !dbg !148
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %42), !dbg !148, !noalias !156
  %44 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !161
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !161, !noalias !156
  %45 = fptrunc float %mul.i.i1249 to half, !dbg !161
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %44), !dbg !161, !noalias !156
  %46 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !163
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !163, !noalias !167
  %47 = fptrunc float %mul.i.i1254 to half, !dbg !163
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %46), !dbg !163, !noalias !167
  %48 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !167
  %49 = fptrunc float %mul.i.i1259 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %48), !dbg !172, !noalias !167
  %50 = insertelement <4 x half> poison, half %43, i64 0, !dbg !174
  %51 = insertelement <4 x half> %50, half %45, i64 1, !dbg !174
  %52 = insertelement <4 x half> %51, half %47, i64 2, !dbg !174
  %53 = insertelement <4 x half> %52, half %49, i64 3, !dbg !174
  %conv.i.i = fpext half %43 to float, !dbg !175
  %add338 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !180
  %conv.i.i.1 = fpext half %45 to float, !dbg !175
  %add338.1 = fadd contract float %add338, %conv.i.i.1, !dbg !180
  %conv.i.i.2 = fpext half %47 to float, !dbg !175
  %add338.2 = fadd contract float %add338.1, %conv.i.i.2, !dbg !180
  %conv.i.i.3 = fpext half %49 to float, !dbg !175
  %add338.3 = fadd contract float %add338.2, %conv.i.i.3, !dbg !180
  %54 = bitcast float %add338.3 to i32, !dbg !181
  %55 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !183
  %56 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %55) #11, !dbg !186
  %xor.i.i1261 = xor i32 %56, 32, !dbg !187
  %57 = and i32 %56, -64, !dbg !188
  %and.i.i1262 = add nsw i32 %57, 64, !dbg !188
  %cmp.not.i.i1263 = icmp slt i32 %xor.i.i1261, %and.i.i1262, !dbg !189
  %cond.i.i1264 = select i1 %cmp.not.i.i1263, i32 %xor.i.i1261, i32 %56, !dbg !190
  %shl.i.i1265 = shl i32 %cond.i.i1264, 2, !dbg !191
  %58 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1265, i32 %54), !dbg !192
  %59 = bitcast i32 %58 to float, !dbg !193
  %add346 = fadd contract float %add338.3, %59, !dbg !194
  %60 = bitcast float %add346 to i32, !dbg !195
  %61 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !197
  %62 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %61) #11, !dbg !200
  %xor.i.i1266 = xor i32 %62, 16, !dbg !201
  %63 = and i32 %62, -64, !dbg !202
  %and.i.i1267 = add nsw i32 %63, 64, !dbg !202
  %cmp.not.i.i1268 = icmp slt i32 %xor.i.i1266, %and.i.i1267, !dbg !203
  %cond.i.i1269 = select i1 %cmp.not.i.i1268, i32 %xor.i.i1266, i32 %62, !dbg !204
  %shl.i.i1270 = shl i32 %cond.i.i1269, 2, !dbg !205
  %64 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1270, i32 %60), !dbg !206
  %65 = bitcast i32 %64 to float, !dbg !207
  %add351 = fadd contract float %add346, %65, !dbg !208
  fence syncscope("warp") release, !dbg !209
  tail call void @llvm.mxc.barrier.warp(), !dbg !212
  fence syncscope("warp") acquire, !dbg !213
  %mul363 = shl nuw nsw i64 %conv, 16
  %66 = shl nuw nsw i32 %2, 4
  %67 = and i32 %66, 16128
  %mul367 = zext nneg i32 %67 to i64
  %add368 = or disjoint i64 %mul363, %mul367
  %68 = shl nuw nsw i32 %2, 2
  %69 = and i32 %68, 60
  %mul378 = zext nneg i32 %69 to i64
  %add371 = or disjoint i64 %add368, %mul378
  %70 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add371, !dbg !214
  %71 = getelementptr inbounds i8, ptr addrspace(4) %70, i64 %.idx1232, !dbg !214
  %72 = load i64, ptr addrspace(4) %71, align 8, !dbg !215
  %add.ptr380.1 = getelementptr inbounds i8, ptr addrspace(4) %71, i64 128, !dbg !214
  %73 = load i64, ptr addrspace(4) %add.ptr380.1, align 8, !dbg !215
  %add.ptr380.2 = getelementptr inbounds i8, ptr addrspace(4) %71, i64 256, !dbg !214
  %74 = load i64, ptr addrspace(4) %add.ptr380.2, align 8, !dbg !215
  %add.ptr380.3 = getelementptr inbounds i8, ptr addrspace(4) %71, i64 384, !dbg !214
  %75 = load i64, ptr addrspace(4) %add.ptr380.3, align 8, !dbg !215
  %mul410 = and i32 %66, 240
  %shr416 = and i32 %19, 3
  %xor417 = xor i32 %shr416, %and60
  %76 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul410, !dbg !216
  %add.ptr422.idx = shl nuw nsw i32 %xor417, 3, !dbg !216
  %add.ptr422 = getelementptr inbounds i8, ptr addrspace(3) %76, i32 %add.ptr422.idx, !dbg !216
  %v_column.sroa.130.0.insert.ext = shl i64 %75, 48, !dbg !217
  %v_column.sroa.98.0.insert.ext = shl i64 %74, 32, !dbg !217
  %v_column.sroa.98.0.insert.shift = and i64 %v_column.sroa.98.0.insert.ext, 281470681743360, !dbg !217
  %v_column.sroa.98.0.insert.insert = or disjoint i64 %v_column.sroa.130.0.insert.ext, %v_column.sroa.98.0.insert.shift, !dbg !217
  %v_column.sroa.66.0.insert.ext = shl i64 %73, 16, !dbg !217
  %v_column.sroa.66.0.insert.shift = and i64 %v_column.sroa.66.0.insert.ext, 4294901760, !dbg !217
  %v_column.sroa.66.0.insert.insert = or disjoint i64 %v_column.sroa.98.0.insert.insert, %v_column.sroa.66.0.insert.shift, !dbg !217
  %v_column.sroa.0.0.insert.ext = and i64 %72, 65535, !dbg !217
  %v_column.sroa.0.0.insert.insert = or disjoint i64 %v_column.sroa.66.0.insert.insert, %v_column.sroa.0.0.insert.ext, !dbg !217
  store i64 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr422, align 8, !dbg !217
  %v_fetch.sroa.0.2.extract.shift = lshr i64 %72, 16, !dbg !218
  %add411.1 = or disjoint i32 %mul410, 256, !dbg !219
  %77 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add411.1, !dbg !216
  %xor418.1 = shl nuw nsw i32 %xor417, 3, !dbg !216
  %add.ptr422.idx.1 = xor i32 %xor418.1, 8, !dbg !216
  %add.ptr422.1 = getelementptr inbounds i8, ptr addrspace(3) %77, i32 %add.ptr422.idx.1, !dbg !216
  %78 = shl i64 %75, 32, !dbg !217
  %v_column.sroa.130.0.insert.ext2052 = and i64 %78, -281474976710656, !dbg !217
  %79 = shl i64 %74, 16, !dbg !217
  %v_column.sroa.98.0.insert.shift1898 = and i64 %79, 281470681743360, !dbg !217
  %v_column.sroa.98.0.insert.insert1900 = or disjoint i64 %v_column.sroa.130.0.insert.ext2052, %v_column.sroa.98.0.insert.shift1898, !dbg !217
  %v_column.sroa.66.0.insert.ext1742 = and i64 %73, 4294901760, !dbg !217
  %v_column.sroa.66.0.insert.insert1745 = or disjoint i64 %v_column.sroa.98.0.insert.insert1900, %v_column.sroa.66.0.insert.ext1742, !dbg !217
  %v_column.sroa.0.0.insert.ext1617 = and i64 %v_fetch.sroa.0.2.extract.shift, 65535, !dbg !217
  %v_column.sroa.0.0.insert.insert1619 = or disjoint i64 %v_column.sroa.66.0.insert.insert1745, %v_column.sroa.0.0.insert.ext1617, !dbg !217
  store i64 %v_column.sroa.0.0.insert.insert1619, ptr addrspace(3) %add.ptr422.1, align 8, !dbg !217
  %v_fetch.sroa.0.4.extract.shift = lshr i64 %72, 32, !dbg !218
  %add411.2 = or disjoint i32 %mul410, 512, !dbg !219
  %80 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add411.2, !dbg !216
  %xor418.2 = shl nuw nsw i32 %xor417, 3, !dbg !216
  %add.ptr422.idx.2 = xor i32 %xor418.2, 16, !dbg !216
  %add.ptr422.2 = getelementptr inbounds i8, ptr addrspace(3) %80, i32 %add.ptr422.idx.2, !dbg !216
  %81 = shl i64 %75, 16, !dbg !217
  %v_column.sroa.130.0.insert.ext2057 = and i64 %81, -281474976710656, !dbg !217
  %v_column.sroa.98.0.insert.ext1902 = and i64 %74, 281470681743360, !dbg !217
  %v_column.sroa.98.0.insert.insert1905 = or disjoint i64 %v_column.sroa.130.0.insert.ext2057, %v_column.sroa.98.0.insert.ext1902, !dbg !217
  %82 = lshr i64 %73, 16, !dbg !217
  %v_column.sroa.66.0.insert.shift1748 = and i64 %82, 4294901760, !dbg !217
  %v_column.sroa.66.0.insert.insert1750 = or disjoint i64 %v_column.sroa.98.0.insert.insert1905, %v_column.sroa.66.0.insert.shift1748, !dbg !217
  %v_column.sroa.0.0.insert.ext1621 = and i64 %v_fetch.sroa.0.4.extract.shift, 65535, !dbg !217
  %v_column.sroa.0.0.insert.insert1623 = or disjoint i64 %v_column.sroa.66.0.insert.insert1750, %v_column.sroa.0.0.insert.ext1621, !dbg !217
  store i64 %v_column.sroa.0.0.insert.insert1623, ptr addrspace(3) %add.ptr422.2, align 8, !dbg !217
  %v_fetch.sroa.0.6.extract.shift = lshr i64 %72, 48, !dbg !218
  %v_fetch.sroa.122.30.extract.shift = and i64 %75, -281474976710656, !dbg !217
  %add411.3 = or disjoint i32 %mul410, 768, !dbg !219
  %83 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add411.3, !dbg !216
  %xor418.3 = shl nuw nsw i32 %xor417, 3, !dbg !216
  %add.ptr422.idx.3 = xor i32 %xor418.3, 24, !dbg !216
  %add.ptr422.3 = getelementptr inbounds i8, ptr addrspace(3) %83, i32 %add.ptr422.idx.3, !dbg !216
  %84 = lshr i64 %74, 16, !dbg !217
  %v_column.sroa.98.0.insert.shift1908 = and i64 %84, 281470681743360, !dbg !217
  %v_column.sroa.98.0.insert.insert1910 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift, %v_column.sroa.98.0.insert.shift1908, !dbg !217
  %85 = lshr i64 %73, 32, !dbg !217
  %v_column.sroa.66.0.insert.shift1753 = and i64 %85, 4294901760, !dbg !217
  %v_column.sroa.66.0.insert.insert1755 = or disjoint i64 %v_column.sroa.98.0.insert.insert1910, %v_column.sroa.66.0.insert.shift1753, !dbg !217
  %v_column.sroa.0.0.insert.insert1627 = or disjoint i64 %v_column.sroa.66.0.insert.insert1755, %v_fetch.sroa.0.6.extract.shift, !dbg !217
  store i64 %v_column.sroa.0.0.insert.insert1627, ptr addrspace(3) %add.ptr422.3, align 8, !dbg !217
  fence syncscope("warp") release, !dbg !220
  tail call void @llvm.mxc.barrier.warp(), !dbg !223
  fence syncscope("warp") acquire, !dbg !224
  %and431 = shl nuw nsw i32 %2, 8
  %mul432 = and i32 %and431, 768
  %mul438 = and i32 %68, 48
  %and444 = and i32 %2, 3
  %86 = xor i32 %and60, %and444
  %add439 = or disjoint i32 %mul432, %mul438, !dbg !225
  %87 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add439, !dbg !226
  %add.ptr449.idx = shl nuw nsw i32 %86, 3, !dbg !226
  %add.ptr449 = getelementptr inbounds i8, ptr addrspace(3) %87, i32 %add.ptr449.idx, !dbg !226
  %88 = load <4 x half>, ptr addrspace(3) %add.ptr449, align 8, !dbg !227
  %add434.1 = or disjoint i32 %mul432, %mul438, !dbg !225
  %add439.1 = or disjoint i32 %add434.1, 64, !dbg !225
  %89 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add439.1, !dbg !226
  %xor445.1 = shl nuw nsw i32 %86, 3, !dbg !226
  %add.ptr449.idx.1 = xor i32 %xor445.1, 8, !dbg !226
  %add.ptr449.1 = getelementptr inbounds i8, ptr addrspace(3) %89, i32 %add.ptr449.idx.1, !dbg !226
  %90 = load <4 x half>, ptr addrspace(3) %add.ptr449.1, align 8, !dbg !227
  %add434.2 = or disjoint i32 %mul432, %mul438, !dbg !225
  %add439.2 = or disjoint i32 %add434.2, 128, !dbg !225
  %91 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add439.2, !dbg !226
  %xor445.2 = shl nuw nsw i32 %86, 3, !dbg !226
  %add.ptr449.idx.2 = xor i32 %xor445.2, 16, !dbg !226
  %add.ptr449.2 = getelementptr inbounds i8, ptr addrspace(3) %91, i32 %add.ptr449.idx.2, !dbg !226
  %92 = load <4 x half>, ptr addrspace(3) %add.ptr449.2, align 8, !dbg !227
  %add434.3 = or disjoint i32 %mul432, %mul438, !dbg !225
  %add439.3 = or disjoint i32 %add434.3, 192, !dbg !225
  %93 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add439.3, !dbg !226
  %xor445.3 = shl nuw nsw i32 %86, 3, !dbg !226
  %add.ptr449.idx.3 = xor i32 %xor445.3, 24, !dbg !226
  %add.ptr449.3 = getelementptr inbounds i8, ptr addrspace(3) %93, i32 %add.ptr449.idx.3, !dbg !226
  %94 = load <4 x half>, ptr addrspace(3) %add.ptr449.3, align 8, !dbg !227
  %95 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %88, <4 x half> %53, <4 x float> zeroinitializer), !dbg !228
  %96 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %90, <4 x half> %53, <4 x float> zeroinitializer), !dbg !228
  %97 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %92, <4 x half> %53, <4 x float> zeroinitializer), !dbg !228
  %98 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %94, <4 x half> %53, <4 x float> zeroinitializer), !dbg !228
  %add355 = fadd contract float %add351, 0.000000e+00, !dbg !229
  br label %if.end475

if.end475:                                        ; preds = %entry.if.end475_crit_edge, %if.then
  %.pre-phi3588 = phi i32 [ %.pre3587, %entry.if.end475_crit_edge ], [ %86, %if.then ]
  %mul887.pre-phi = phi i32 [ %.pre3585, %entry.if.end475_crit_edge ], [ %mul438, %if.then ]
  %mul881.pre-phi = phi i32 [ %.pre3584, %entry.if.end475_crit_edge ], [ %mul432, %if.then ]
  %xor866.pre-phi = phi i32 [ %.pre3582, %entry.if.end475_crit_edge ], [ %xor417, %if.then ]
  %mul859.pre-phi = phi i32 [ %.pre3580, %entry.if.end475_crit_edge ], [ %mul410, %if.then ]
  %add820.pre-phi = phi i64 [ %.pre3579, %entry.if.end475_crit_edge ], [ %add371, %if.then ]
  %mul603.pre-phi = phi i32 [ %.pre3566, %entry.if.end475_crit_edge ], [ %mul212, %if.then ]
  %.pre-phi = phi i32 [ %.pre3565, %entry.if.end475_crit_edge ], [ %19, %if.then ]
  %mul509.pre-phi = phi i64 [ %.pre3564, %entry.if.end475_crit_edge ], [ %mul118, %if.then ]
  %conv499.pre-phi = phi i64 [ %.pre, %entry.if.end475_crit_edge ], [ %conv, %if.then ]
  %numerator.sroa.266.0 = phi <4 x float> [ zeroinitializer, %entry.if.end475_crit_edge ], [ %98, %if.then ], !dbg !230
  %numerator.sroa.178.0 = phi <4 x float> [ zeroinitializer, %entry.if.end475_crit_edge ], [ %97, %if.then ], !dbg !230
  %numerator.sroa.90.0 = phi <4 x float> [ zeroinitializer, %entry.if.end475_crit_edge ], [ %96, %if.then ], !dbg !230
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry.if.end475_crit_edge ], [ %95, %if.then ], !dbg !230
  %maximum.sroa.0.0 = phi float [ 0xFFF0000000000000, %entry.if.end475_crit_edge ], [ %37, %if.then ], !dbg !230
  %denominator.sroa.0.0 = phi float [ 0.000000e+00, %entry.if.end475_crit_edge ], [ %add355, %if.then ], !dbg !230
  %invariant.gep1393 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul509.pre-phi, !dbg !231
  %99 = or disjoint i64 %idxprom, 1, !dbg !232
  %arrayidx487 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %99, !dbg !233
  %100 = load i32, ptr addrspace(1) %arrayidx487, align 4, !dbg !233, !tbaa !30
  %mul488 = shl nsw i32 %100, 4, !dbg !234
  %cmp489 = icmp slt i32 %100, 0, !dbg !235
  %cmp492.not = icmp sgt i32 %mul488, %1
  %or.cond1345 = select i1 %cmp489, i1 true, i1 %cmp492.not, !dbg !236
  br i1 %or.cond1345, label %if.end924, label %if.then493, !dbg !236

if.then493:                                       ; preds = %if.end475
  fence syncscope("warp") release, !dbg !237
  tail call void @llvm.mxc.barrier.warp(), !dbg !240
  fence syncscope("warp") acquire, !dbg !241
  %conv504 = zext nneg i32 %mul488 to i64
  %.idx = shl nuw nsw i64 %conv504, 7
  %gep = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1393, i64 %.idx, !dbg !242
  %.idx1403 = shl nuw nsw i64 %conv499.pre-phi, 17, !dbg !243
  %101 = getelementptr inbounds i8, ptr addrspace(4) %gep, i64 %.idx1403, !dbg !243
  %qk_fetch.sroa.0.0.copyload3507 = load i64, ptr addrspace(4) %101, align 16, !dbg !244
  %qk_fetch.sroa.38.0..sroa_idx3524 = getelementptr inbounds i8, ptr addrspace(4) %101, i64 8, !dbg !244
  %qk_fetch.sroa.38.0.copyload3525 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx3524, align 8, !dbg !244
  store i64 %qk_fetch.sroa.0.0.copyload3507, ptr addrspace(3) %add.ptr39, align 8, !dbg !245
  store i64 %qk_fetch.sroa.38.0.copyload3525, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !245
  %gep1374.1 = getelementptr inbounds i8, ptr addrspace(4) %101, i64 1024, !dbg !243
  %qk_fetch.sroa.0.0.copyload3510 = load i64, ptr addrspace(4) %gep1374.1, align 16, !dbg !244
  %qk_fetch.sroa.38.0.gep1374.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %101, i64 1032, !dbg !244
  %qk_fetch.sroa.38.0.copyload3528 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep1374.1.sroa_idx, align 8, !dbg !244
  store i64 %qk_fetch.sroa.0.0.copyload3510, ptr addrspace(3) %add.ptr39.11412, align 8, !dbg !245
  store i64 %qk_fetch.sroa.38.0.copyload3528, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !245
  fence syncscope("warp") release, !dbg !246
  tail call void @llvm.mxc.barrier.warp(), !dbg !249
  fence syncscope("warp") acquire, !dbg !250
  %k_local.sroa.0.0.copyload1205 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !251
  %102 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205, <4 x half> %9, <4 x float> zeroinitializer), !dbg !252
  %k_local.sroa.0.0.copyload1205.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !251
  %103 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.1, <4 x half> %10, <4 x float> %102), !dbg !252
  %k_local.sroa.0.0.copyload1205.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !251
  %104 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.2, <4 x half> %11, <4 x float> %103), !dbg !252
  %k_local.sroa.0.0.copyload1205.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !251
  %105 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.3, <4 x half> %12, <4 x float> %104), !dbg !252
  %add604 = add nuw nsw i32 %mul488, %mul603.pre-phi
  %cmp607.not = icmp sgt i32 %add604, %1, !dbg !253
  %scores.sroa.0.0.vec.extract2601 = extractelement <4 x float> %105, i64 0
  %spec.select3589 = select i1 %cmp607.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2601, !dbg !254
  %cmp607.not.1.not = icmp slt i32 %add604, %1, !dbg !253
  %scores.sroa.0.4.vec.extract2702 = extractelement <4 x float> %105, i64 1, !dbg !254
  %condval_1.0.1 = select i1 %cmp607.not.1.not, float %scores.sroa.0.4.vec.extract2702, float 0xFFF0000000000000, !dbg !254
  %add605.2 = or disjoint i32 %add604, 2, !dbg !255
  %cmp607.not.2 = icmp sgt i32 %add605.2, %1, !dbg !253
  %scores.sroa.0.8.vec.extract2779 = extractelement <4 x float> %105, i64 2, !dbg !254
  %condval_1.0.2 = select i1 %cmp607.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2779, !dbg !254
  %add605.3 = or disjoint i32 %add604, 3, !dbg !255
  %cmp607.not.3 = icmp sgt i32 %add605.3, %1, !dbg !253
  %scores.sroa.0.12.vec.extract2856 = extractelement <4 x float> %105, i64 3, !dbg !254
  %condval_1.0.3 = select i1 %cmp607.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2856, !dbg !254
  %106 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3589, float 0xFFF0000000000000), !dbg !256
  %107 = tail call contract noundef float @llvm.maxnum.f32(float %106, float %condval_1.0.1), !dbg !256
  %108 = tail call contract noundef float @llvm.maxnum.f32(float %107, float %condval_1.0.2), !dbg !256
  %109 = tail call contract noundef float @llvm.maxnum.f32(float %108, float %condval_1.0.3), !dbg !256
  %110 = bitcast float %109 to i32, !dbg !258
  %111 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !260
  %112 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %111) #11, !dbg !263
  %xor.i.i1271 = xor i32 %112, 32, !dbg !264
  %113 = and i32 %112, -64, !dbg !265
  %and.i.i1272 = add nsw i32 %113, 64, !dbg !265
  %cmp.not.i.i1273 = icmp slt i32 %xor.i.i1271, %and.i.i1272, !dbg !266
  %cond.i.i1274 = select i1 %cmp.not.i.i1273, i32 %xor.i.i1271, i32 %112, !dbg !267
  %shl.i.i1275 = shl i32 %cond.i.i1274, 2, !dbg !268
  %114 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1275, i32 %110), !dbg !269
  %115 = bitcast i32 %114 to float, !dbg !270
  %116 = tail call contract noundef float @llvm.maxnum.f32(float %109, float %115), !dbg !271
  %117 = bitcast float %116 to i32, !dbg !273
  %118 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !275
  %119 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %118) #11, !dbg !278
  %xor.i.i1276 = xor i32 %119, 16, !dbg !279
  %120 = and i32 %119, -64, !dbg !280
  %and.i.i1277 = add nsw i32 %120, 64, !dbg !280
  %cmp.not.i.i1278 = icmp slt i32 %xor.i.i1276, %and.i.i1277, !dbg !281
  %cond.i.i1279 = select i1 %cmp.not.i.i1278, i32 %xor.i.i1276, i32 %119, !dbg !282
  %shl.i.i1280 = shl i32 %cond.i.i1279, 2, !dbg !283
  %121 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1280, i32 %117), !dbg !284
  %122 = bitcast i32 %121 to float, !dbg !285
  %123 = tail call contract noundef float @llvm.maxnum.f32(float %116, float %122), !dbg !286
  %124 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.0, float %123), !dbg !288
  %sub651 = fsub contract float %maximum.sroa.0.0, %124, !dbg !290
  %mul652 = fmul contract float %sub651, 0x3FC7154760000000, !dbg !291
  %cmp.i.i1281 = fcmp contract olt float %mul652, -1.260000e+02, !dbg !292
  %cond.i.i1282 = select contract i1 %cmp.i.i1281, float 6.400000e+01, float 0.000000e+00, !dbg !292
  %add.i.i1283 = fadd contract float %mul652, %cond.i.i1282, !dbg !292
  %125 = tail call contract float @llvm.exp2.f32(float %add.i.i1283), !dbg !292
  %cond2.i.i1284 = select contract i1 %cmp.i.i1281, float 0x3BF0000000000000, float 1.000000e+00, !dbg !292
  %mul.i.i1285 = fmul contract float %cond2.i.i1284, %125, !dbg !292
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !294
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !294
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !294
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !294
  %mul670 = fmul contract float %mul.i.i1285, %numerator.sroa.0.0.vec.extract, !dbg !295
  %mul674 = fmul contract float %mul.i.i1285, %numerator.sroa.0.4.vec.extract, !dbg !296
  %mul678 = fmul contract float %mul.i.i1285, %numerator.sroa.0.8.vec.extract, !dbg !297
  %mul682 = fmul contract float %mul.i.i1285, %numerator.sroa.0.12.vec.extract, !dbg !298
  %numerator.sroa.0.0.vec.insert2906 = insertelement <4 x float> poison, float %mul670, i64 0, !dbg !299
  %numerator.sroa.0.4.vec.insert2939 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2906, float %mul674, i64 1, !dbg !299
  %numerator.sroa.0.8.vec.insert2972 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2939, float %mul678, i64 2, !dbg !299
  %numerator.sroa.0.12.vec.insert3005 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2972, float %mul682, i64 3, !dbg !299
  %numerator.sroa.90.16.vec.extract = extractelement <4 x float> %numerator.sroa.90.0, i64 0, !dbg !294
  %numerator.sroa.90.20.vec.extract = extractelement <4 x float> %numerator.sroa.90.0, i64 1, !dbg !294
  %numerator.sroa.90.24.vec.extract = extractelement <4 x float> %numerator.sroa.90.0, i64 2, !dbg !294
  %numerator.sroa.90.28.vec.extract = extractelement <4 x float> %numerator.sroa.90.0, i64 3, !dbg !294
  %mul670.1 = fmul contract float %mul.i.i1285, %numerator.sroa.90.16.vec.extract, !dbg !295
  %mul674.1 = fmul contract float %mul.i.i1285, %numerator.sroa.90.20.vec.extract, !dbg !296
  %mul678.1 = fmul contract float %mul.i.i1285, %numerator.sroa.90.24.vec.extract, !dbg !297
  %mul682.1 = fmul contract float %mul.i.i1285, %numerator.sroa.90.28.vec.extract, !dbg !298
  %numerator.sroa.90.16.vec.insert3047 = insertelement <4 x float> poison, float %mul670.1, i64 0, !dbg !299
  %numerator.sroa.90.20.vec.insert3080 = insertelement <4 x float> %numerator.sroa.90.16.vec.insert3047, float %mul674.1, i64 1, !dbg !299
  %numerator.sroa.90.24.vec.insert3113 = insertelement <4 x float> %numerator.sroa.90.20.vec.insert3080, float %mul678.1, i64 2, !dbg !299
  %numerator.sroa.90.28.vec.insert3146 = insertelement <4 x float> %numerator.sroa.90.24.vec.insert3113, float %mul682.1, i64 3, !dbg !299
  %numerator.sroa.178.32.vec.extract = extractelement <4 x float> %numerator.sroa.178.0, i64 0, !dbg !294
  %numerator.sroa.178.36.vec.extract = extractelement <4 x float> %numerator.sroa.178.0, i64 1, !dbg !294
  %numerator.sroa.178.40.vec.extract = extractelement <4 x float> %numerator.sroa.178.0, i64 2, !dbg !294
  %numerator.sroa.178.44.vec.extract = extractelement <4 x float> %numerator.sroa.178.0, i64 3, !dbg !294
  %mul670.2 = fmul contract float %mul.i.i1285, %numerator.sroa.178.32.vec.extract, !dbg !295
  %mul674.2 = fmul contract float %mul.i.i1285, %numerator.sroa.178.36.vec.extract, !dbg !296
  %mul678.2 = fmul contract float %mul.i.i1285, %numerator.sroa.178.40.vec.extract, !dbg !297
  %mul682.2 = fmul contract float %mul.i.i1285, %numerator.sroa.178.44.vec.extract, !dbg !298
  %numerator.sroa.178.32.vec.insert3187 = insertelement <4 x float> poison, float %mul670.2, i64 0, !dbg !299
  %numerator.sroa.178.36.vec.insert3220 = insertelement <4 x float> %numerator.sroa.178.32.vec.insert3187, float %mul674.2, i64 1, !dbg !299
  %numerator.sroa.178.40.vec.insert3253 = insertelement <4 x float> %numerator.sroa.178.36.vec.insert3220, float %mul678.2, i64 2, !dbg !299
  %numerator.sroa.178.44.vec.insert3286 = insertelement <4 x float> %numerator.sroa.178.40.vec.insert3253, float %mul682.2, i64 3, !dbg !299
  %numerator.sroa.266.48.vec.extract = extractelement <4 x float> %numerator.sroa.266.0, i64 0, !dbg !294
  %numerator.sroa.266.52.vec.extract = extractelement <4 x float> %numerator.sroa.266.0, i64 1, !dbg !294
  %numerator.sroa.266.56.vec.extract = extractelement <4 x float> %numerator.sroa.266.0, i64 2, !dbg !294
  %numerator.sroa.266.60.vec.extract = extractelement <4 x float> %numerator.sroa.266.0, i64 3, !dbg !294
  %mul670.3 = fmul contract float %mul.i.i1285, %numerator.sroa.266.48.vec.extract, !dbg !295
  %mul674.3 = fmul contract float %mul.i.i1285, %numerator.sroa.266.52.vec.extract, !dbg !296
  %mul678.3 = fmul contract float %mul.i.i1285, %numerator.sroa.266.56.vec.extract, !dbg !297
  %mul682.3 = fmul contract float %mul.i.i1285, %numerator.sroa.266.60.vec.extract, !dbg !298
  %numerator.sroa.266.48.vec.insert3327 = insertelement <4 x float> poison, float %mul670.3, i64 0, !dbg !299
  %numerator.sroa.266.52.vec.insert3360 = insertelement <4 x float> %numerator.sroa.266.48.vec.insert3327, float %mul674.3, i64 1, !dbg !299
  %numerator.sroa.266.56.vec.insert3393 = insertelement <4 x float> %numerator.sroa.266.52.vec.insert3360, float %mul678.3, i64 2, !dbg !299
  %numerator.sroa.266.60.vec.insert3426 = insertelement <4 x float> %numerator.sroa.266.56.vec.insert3393, float %mul682.3, i64 3, !dbg !299
  %sub706 = fsub contract float %spec.select3589, %124, !dbg !300
  %sub710 = fsub contract float %condval_1.0.1, %124, !dbg !301
  %sub714 = fsub contract float %condval_1.0.2, %124, !dbg !302
  %sub718 = fsub contract float %condval_1.0.3, %124, !dbg !303
  %mul723 = fmul contract float %sub706, 0x3FC7154760000000, !dbg !304
  %mul727 = fmul contract float %sub710, 0x3FC7154760000000, !dbg !305
  %mul731 = fmul contract float %sub714, 0x3FC7154760000000, !dbg !306
  %mul735 = fmul contract float %sub718, 0x3FC7154760000000, !dbg !307
  %add740 = fadd contract float %mul723, 8.000000e+00, !dbg !308
  %add744 = fadd contract float %mul727, 8.000000e+00, !dbg !309
  %add748 = fadd contract float %mul731, 8.000000e+00, !dbg !310
  %add752 = fadd contract float %mul735, 8.000000e+00, !dbg !311
  %cmp.i.i1290 = fcmp contract olt float %add740, -1.260000e+02, !dbg !312
  %cond.i.i1291 = select contract i1 %cmp.i.i1290, float 6.400000e+01, float 0.000000e+00, !dbg !312
  %add.i.i1292 = fadd contract float %add740, %cond.i.i1291, !dbg !312
  %126 = tail call contract float @llvm.exp2.f32(float %add.i.i1292), !dbg !312
  %cond2.i.i1293 = select contract i1 %cmp.i.i1290, float 0x3BF0000000000000, float 1.000000e+00, !dbg !312
  %mul.i.i1294 = fmul contract float %cond2.i.i1293, %126, !dbg !312
  %cmp.i.i1295 = fcmp contract olt float %add744, -1.260000e+02, !dbg !314
  %cond.i.i1296 = select contract i1 %cmp.i.i1295, float 6.400000e+01, float 0.000000e+00, !dbg !314
  %add.i.i1297 = fadd contract float %add744, %cond.i.i1296, !dbg !314
  %127 = tail call contract float @llvm.exp2.f32(float %add.i.i1297), !dbg !314
  %cond2.i.i1298 = select contract i1 %cmp.i.i1295, float 0x3BF0000000000000, float 1.000000e+00, !dbg !314
  %mul.i.i1299 = fmul contract float %cond2.i.i1298, %127, !dbg !314
  %cmp.i.i1300 = fcmp contract olt float %add748, -1.260000e+02, !dbg !316
  %cond.i.i1301 = select contract i1 %cmp.i.i1300, float 6.400000e+01, float 0.000000e+00, !dbg !316
  %add.i.i1302 = fadd contract float %add748, %cond.i.i1301, !dbg !316
  %128 = tail call contract float @llvm.exp2.f32(float %add.i.i1302), !dbg !316
  %cond2.i.i1303 = select contract i1 %cmp.i.i1300, float 0x3BF0000000000000, float 1.000000e+00, !dbg !316
  %mul.i.i1304 = fmul contract float %cond2.i.i1303, %128, !dbg !316
  %cmp.i.i1305 = fcmp contract olt float %add752, -1.260000e+02, !dbg !318
  %cond.i.i1306 = select contract i1 %cmp.i.i1305, float 6.400000e+01, float 0.000000e+00, !dbg !318
  %add.i.i1307 = fadd contract float %add752, %cond.i.i1306, !dbg !318
  %129 = tail call contract float @llvm.exp2.f32(float %add.i.i1307), !dbg !318
  %cond2.i.i1308 = select contract i1 %cmp.i.i1305, float 0x3BF0000000000000, float 1.000000e+00, !dbg !318
  %mul.i.i1309 = fmul contract float %cond2.i.i1308, %129, !dbg !318
  %130 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !320
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !320, !noalias !324
  %131 = fptrunc float %mul.i.i1294 to half, !dbg !320
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %130), !dbg !320, !noalias !324
  %132 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !329
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !329, !noalias !324
  %133 = fptrunc float %mul.i.i1299 to half, !dbg !329
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %132), !dbg !329, !noalias !324
  %134 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !331
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !331, !noalias !335
  %135 = fptrunc float %mul.i.i1304 to half, !dbg !331
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %134), !dbg !331, !noalias !335
  %136 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !340
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !340, !noalias !335
  %137 = fptrunc float %mul.i.i1309 to half, !dbg !340
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %136), !dbg !340, !noalias !335
  %138 = insertelement <4 x half> poison, half %131, i64 0, !dbg !342
  %139 = insertelement <4 x half> %138, half %133, i64 1, !dbg !342
  %140 = insertelement <4 x half> %139, half %135, i64 2, !dbg !342
  %141 = insertelement <4 x half> %140, half %137, i64 3, !dbg !342
  %conv.i.i1326 = fpext half %131 to float, !dbg !343
  %add787 = fadd contract float %conv.i.i1326, 0.000000e+00, !dbg !346
  %conv.i.i1326.1 = fpext half %133 to float, !dbg !343
  %add787.1 = fadd contract float %add787, %conv.i.i1326.1, !dbg !346
  %conv.i.i1326.2 = fpext half %135 to float, !dbg !343
  %add787.2 = fadd contract float %add787.1, %conv.i.i1326.2, !dbg !346
  %conv.i.i1326.3 = fpext half %137 to float, !dbg !343
  %add787.3 = fadd contract float %add787.2, %conv.i.i1326.3, !dbg !346
  %142 = bitcast float %add787.3 to i32, !dbg !347
  %143 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !349
  %144 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %143) #11, !dbg !352
  %xor.i.i1316 = xor i32 %144, 32, !dbg !353
  %145 = and i32 %144, -64, !dbg !354
  %and.i.i1317 = add nsw i32 %145, 64, !dbg !354
  %cmp.not.i.i1318 = icmp slt i32 %xor.i.i1316, %and.i.i1317, !dbg !355
  %cond.i.i1319 = select i1 %cmp.not.i.i1318, i32 %xor.i.i1316, i32 %144, !dbg !356
  %shl.i.i1320 = shl i32 %cond.i.i1319, 2, !dbg !357
  %146 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1320, i32 %142), !dbg !358
  %147 = bitcast i32 %146 to float, !dbg !359
  %add795 = fadd contract float %add787.3, %147, !dbg !360
  %148 = bitcast float %add795 to i32, !dbg !361
  %149 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !363
  %150 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %149) #11, !dbg !366
  %xor.i.i1321 = xor i32 %150, 16, !dbg !367
  %151 = and i32 %150, -64, !dbg !368
  %and.i.i1322 = add nsw i32 %151, 64, !dbg !368
  %cmp.not.i.i1323 = icmp slt i32 %xor.i.i1321, %and.i.i1322, !dbg !369
  %cond.i.i1324 = select i1 %cmp.not.i.i1323, i32 %xor.i.i1321, i32 %150, !dbg !370
  %shl.i.i1325 = shl i32 %cond.i.i1324, 2, !dbg !371
  %152 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1325, i32 %148), !dbg !372
  %153 = bitcast i32 %152 to float, !dbg !373
  %add800 = fadd contract float %add795, %153, !dbg !374
  fence syncscope("warp") release, !dbg !375
  tail call void @llvm.mxc.barrier.warp(), !dbg !378
  fence syncscope("warp") acquire, !dbg !379
  %154 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add820.pre-phi, !dbg !380
  %155 = getelementptr inbounds i8, ptr addrspace(4) %154, i64 %.idx, !dbg !380
  %156 = load i64, ptr addrspace(4) %155, align 8, !dbg !381
  %add.ptr829.1 = getelementptr inbounds i8, ptr addrspace(4) %155, i64 128, !dbg !380
  %157 = load i64, ptr addrspace(4) %add.ptr829.1, align 8, !dbg !381
  %add.ptr829.2 = getelementptr inbounds i8, ptr addrspace(4) %155, i64 256, !dbg !380
  %158 = load i64, ptr addrspace(4) %add.ptr829.2, align 8, !dbg !381
  %add.ptr829.3 = getelementptr inbounds i8, ptr addrspace(4) %155, i64 384, !dbg !380
  %159 = load i64, ptr addrspace(4) %add.ptr829.3, align 8, !dbg !381
  %mul693 = fmul contract float %denominator.sroa.0.0, %mul.i.i1285, !dbg !382
  %160 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul859.pre-phi, !dbg !383
  %add.ptr871.idx = shl nuw nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871 = getelementptr inbounds i8, ptr addrspace(3) %160, i32 %add.ptr871.idx, !dbg !383
  %v_column.sroa.130.0.insert.ext2047 = shl i64 %159, 48, !dbg !384
  %v_column.sroa.98.0.insert.ext1892 = shl i64 %158, 32, !dbg !384
  %v_column.sroa.98.0.insert.shift1893 = and i64 %v_column.sroa.98.0.insert.ext1892, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert1895 = or disjoint i64 %v_column.sroa.130.0.insert.ext2047, %v_column.sroa.98.0.insert.shift1893, !dbg !384
  %v_column.sroa.66.0.insert.ext1737 = shl i64 %157, 16, !dbg !384
  %v_column.sroa.66.0.insert.shift1738 = and i64 %v_column.sroa.66.0.insert.ext1737, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1740 = or disjoint i64 %v_column.sroa.98.0.insert.insert1895, %v_column.sroa.66.0.insert.shift1738, !dbg !384
  %v_column.sroa.0.0.insert.ext1613 = and i64 %156, 65535, !dbg !384
  %v_column.sroa.0.0.insert.insert1615 = or disjoint i64 %v_column.sroa.66.0.insert.insert1740, %v_column.sroa.0.0.insert.ext1613, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1615, ptr addrspace(3) %add.ptr871, align 8, !dbg !384
  %v_fetch.sroa.0.2.extract.shift2216 = lshr i64 %156, 16, !dbg !385
  %add860.1 = or disjoint i32 %mul859.pre-phi, 256, !dbg !386
  %161 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.1, !dbg !383
  %xor867.1 = shl nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.idx.1 = xor i32 %xor867.1, 8, !dbg !383
  %add.ptr871.1 = getelementptr inbounds i8, ptr addrspace(3) %161, i32 %add.ptr871.idx.1, !dbg !383
  %162 = shl i64 %159, 32, !dbg !384
  %v_column.sroa.130.0.insert.ext2067 = and i64 %162, -281474976710656, !dbg !384
  %163 = shl i64 %158, 16, !dbg !384
  %v_column.sroa.98.0.insert.shift1913 = and i64 %163, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert1915 = or disjoint i64 %v_column.sroa.130.0.insert.ext2067, %v_column.sroa.98.0.insert.shift1913, !dbg !384
  %v_column.sroa.66.0.insert.ext1757 = and i64 %157, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1760 = or disjoint i64 %v_column.sroa.98.0.insert.insert1915, %v_column.sroa.66.0.insert.ext1757, !dbg !384
  %v_column.sroa.0.0.insert.ext1629 = and i64 %v_fetch.sroa.0.2.extract.shift2216, 65535, !dbg !384
  %v_column.sroa.0.0.insert.insert1631 = or disjoint i64 %v_column.sroa.66.0.insert.insert1760, %v_column.sroa.0.0.insert.ext1629, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1631, ptr addrspace(3) %add.ptr871.1, align 8, !dbg !384
  %v_fetch.sroa.0.4.extract.shift2237 = lshr i64 %156, 32, !dbg !385
  %add860.2 = or disjoint i32 %mul859.pre-phi, 512, !dbg !386
  %164 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.2, !dbg !383
  %xor867.2 = shl nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.idx.2 = xor i32 %xor867.2, 16, !dbg !383
  %add.ptr871.2 = getelementptr inbounds i8, ptr addrspace(3) %164, i32 %add.ptr871.idx.2, !dbg !383
  %165 = shl i64 %159, 16, !dbg !384
  %v_column.sroa.130.0.insert.ext2072 = and i64 %165, -281474976710656, !dbg !384
  %v_column.sroa.98.0.insert.ext1917 = and i64 %158, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert1920 = or disjoint i64 %v_column.sroa.130.0.insert.ext2072, %v_column.sroa.98.0.insert.ext1917, !dbg !384
  %166 = lshr i64 %157, 16, !dbg !384
  %v_column.sroa.66.0.insert.shift1763 = and i64 %166, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1765 = or disjoint i64 %v_column.sroa.98.0.insert.insert1920, %v_column.sroa.66.0.insert.shift1763, !dbg !384
  %v_column.sroa.0.0.insert.ext1633 = and i64 %v_fetch.sroa.0.4.extract.shift2237, 65535, !dbg !384
  %v_column.sroa.0.0.insert.insert1635 = or disjoint i64 %v_column.sroa.66.0.insert.insert1765, %v_column.sroa.0.0.insert.ext1633, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1635, ptr addrspace(3) %add.ptr871.2, align 8, !dbg !384
  %v_fetch.sroa.0.6.extract.shift2258 = lshr i64 %156, 48, !dbg !385
  %v_fetch.sroa.122.30.extract.shift2489 = and i64 %159, -281474976710656, !dbg !384
  %add860.3 = or disjoint i32 %mul859.pre-phi, 768, !dbg !386
  %167 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.3, !dbg !383
  %xor867.3 = shl nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.idx.3 = xor i32 %xor867.3, 24, !dbg !383
  %add.ptr871.3 = getelementptr inbounds i8, ptr addrspace(3) %167, i32 %add.ptr871.idx.3, !dbg !383
  %168 = lshr i64 %158, 16, !dbg !384
  %v_column.sroa.98.0.insert.shift1923 = and i64 %168, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert1925 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2489, %v_column.sroa.98.0.insert.shift1923, !dbg !384
  %169 = lshr i64 %157, 32, !dbg !384
  %v_column.sroa.66.0.insert.shift1768 = and i64 %169, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1770 = or disjoint i64 %v_column.sroa.98.0.insert.insert1925, %v_column.sroa.66.0.insert.shift1768, !dbg !384
  %v_column.sroa.0.0.insert.insert1639 = or disjoint i64 %v_column.sroa.66.0.insert.insert1770, %v_fetch.sroa.0.6.extract.shift2258, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1639, ptr addrspace(3) %add.ptr871.3, align 8, !dbg !384
  fence syncscope("warp") release, !dbg !387
  tail call void @llvm.mxc.barrier.warp(), !dbg !390
  fence syncscope("warp") acquire, !dbg !391
  %add888 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %170 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888, !dbg !393
  %add.ptr898.idx = shl nuw nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 %add.ptr898.idx, !dbg !393
  %171 = load <4 x half>, ptr addrspace(3) %add.ptr898, align 8, !dbg !394
  %add883.1 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %add888.1 = or disjoint i32 %add883.1, 64, !dbg !392
  %172 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.1, !dbg !393
  %xor894.1 = shl nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.idx.1 = xor i32 %xor894.1, 8, !dbg !393
  %add.ptr898.1 = getelementptr inbounds i8, ptr addrspace(3) %172, i32 %add.ptr898.idx.1, !dbg !393
  %173 = load <4 x half>, ptr addrspace(3) %add.ptr898.1, align 8, !dbg !394
  %add883.2 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %add888.2 = or disjoint i32 %add883.2, 128, !dbg !392
  %174 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.2, !dbg !393
  %xor894.2 = shl nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.idx.2 = xor i32 %xor894.2, 16, !dbg !393
  %add.ptr898.2 = getelementptr inbounds i8, ptr addrspace(3) %174, i32 %add.ptr898.idx.2, !dbg !393
  %175 = load <4 x half>, ptr addrspace(3) %add.ptr898.2, align 8, !dbg !394
  %add883.3 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %add888.3 = or disjoint i32 %add883.3, 192, !dbg !392
  %176 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.3, !dbg !393
  %xor894.3 = shl nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.idx.3 = xor i32 %xor894.3, 24, !dbg !393
  %add.ptr898.3 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 %add.ptr898.idx.3, !dbg !393
  %177 = load <4 x half>, ptr addrspace(3) %add.ptr898.3, align 8, !dbg !394
  %178 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %171, <4 x half> %141, <4 x float> %numerator.sroa.0.12.vec.insert3005), !dbg !395
  %179 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %173, <4 x half> %141, <4 x float> %numerator.sroa.90.28.vec.insert3146), !dbg !395
  %180 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %175, <4 x half> %141, <4 x float> %numerator.sroa.178.44.vec.insert3286), !dbg !395
  %181 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %177, <4 x half> %141, <4 x float> %numerator.sroa.266.60.vec.insert3426), !dbg !395
  %add804 = fadd contract float %mul693, %add800, !dbg !396
  br label %if.end924, !dbg !397

if.end924:                                        ; preds = %if.then493, %if.end475
  %numerator.sroa.266.1 = phi <4 x float> [ %numerator.sroa.266.0, %if.end475 ], [ %181, %if.then493 ], !dbg !230
  %numerator.sroa.178.1 = phi <4 x float> [ %numerator.sroa.178.0, %if.end475 ], [ %180, %if.then493 ], !dbg !230
  %numerator.sroa.90.1 = phi <4 x float> [ %numerator.sroa.90.0, %if.end475 ], [ %179, %if.then493 ], !dbg !230
  %numerator.sroa.0.1 = phi <4 x float> [ %numerator.sroa.0.0, %if.end475 ], [ %178, %if.then493 ], !dbg !230
  %maximum.sroa.0.2 = phi float [ %maximum.sroa.0.0, %if.end475 ], [ %124, %if.then493 ], !dbg !230
  %denominator.sroa.0.2 = phi float [ %denominator.sroa.0.0, %if.end475 ], [ %add804, %if.then493 ], !dbg !230
  %182 = or disjoint i64 %idxprom, 2, !dbg !232
  %arrayidx487.1 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %182, !dbg !233
  %183 = load i32, ptr addrspace(1) %arrayidx487.1, align 4, !dbg !233, !tbaa !30
  %mul488.1 = shl nsw i32 %183, 4, !dbg !234
  %cmp489.1 = icmp slt i32 %183, 0, !dbg !235
  %cmp492.not.1 = icmp sgt i32 %mul488.1, %1
  %or.cond1345.1 = select i1 %cmp489.1, i1 true, i1 %cmp492.not.1, !dbg !236
  br i1 %or.cond1345.1, label %if.end924.1, label %if.then493.1, !dbg !236

if.then493.1:                                     ; preds = %if.end924
  fence syncscope("warp") release, !dbg !237
  tail call void @llvm.mxc.barrier.warp(), !dbg !240
  fence syncscope("warp") acquire, !dbg !241
  %conv504.1 = zext nneg i32 %mul488.1 to i64
  %.idx.1 = shl nuw nsw i64 %conv504.1, 7
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1393, i64 %.idx.1, !dbg !242
  %.idx1403.11431 = shl nuw nsw i64 %conv499.pre-phi, 17, !dbg !243
  %184 = getelementptr inbounds i8, ptr addrspace(4) %gep.1, i64 %.idx1403.11431, !dbg !243
  %qk_fetch.sroa.0.0.copyload3511 = load i64, ptr addrspace(4) %184, align 16, !dbg !244
  %qk_fetch.sroa.38.0..sroa_idx3529 = getelementptr inbounds i8, ptr addrspace(4) %184, i64 8, !dbg !244
  %qk_fetch.sroa.38.0.copyload3530 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx3529, align 8, !dbg !244
  store i64 %qk_fetch.sroa.0.0.copyload3511, ptr addrspace(3) %add.ptr39, align 8, !dbg !245
  store i64 %qk_fetch.sroa.38.0.copyload3530, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !245
  %gep1374.1.1 = getelementptr inbounds i8, ptr addrspace(4) %184, i64 1024, !dbg !243
  %qk_fetch.sroa.0.0.copyload3512 = load i64, ptr addrspace(4) %gep1374.1.1, align 16, !dbg !244
  %qk_fetch.sroa.38.0.gep1374.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %184, i64 1032, !dbg !244
  %qk_fetch.sroa.38.0.copyload3531 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep1374.1.1.sroa_idx, align 8, !dbg !244
  store i64 %qk_fetch.sroa.0.0.copyload3512, ptr addrspace(3) %add.ptr39.11412, align 8, !dbg !245
  store i64 %qk_fetch.sroa.38.0.copyload3531, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !245
  fence syncscope("warp") release, !dbg !246
  tail call void @llvm.mxc.barrier.warp(), !dbg !249
  fence syncscope("warp") acquire, !dbg !250
  %k_local.sroa.0.0.copyload1205.11443 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !251
  %185 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.11443, <4 x half> %9, <4 x float> zeroinitializer), !dbg !252
  %k_local.sroa.0.0.copyload1205.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !251
  %186 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.1.1, <4 x half> %10, <4 x float> %185), !dbg !252
  %k_local.sroa.0.0.copyload1205.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !251
  %187 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.2.1, <4 x half> %11, <4 x float> %186), !dbg !252
  %k_local.sroa.0.0.copyload1205.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !251
  %188 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.3.1, <4 x half> %12, <4 x float> %187), !dbg !252
  %add604.1 = add nuw nsw i32 %mul488.1, %mul603.pre-phi
  %cmp607.not.11444 = icmp sgt i32 %add604.1, %1, !dbg !253
  %scores.sroa.0.0.vec.extract2609 = extractelement <4 x float> %188, i64 0
  %spec.select3590 = select i1 %cmp607.not.11444, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2609, !dbg !254
  %cmp607.not.1.1.not = icmp slt i32 %add604.1, %1, !dbg !253
  %scores.sroa.0.4.vec.extract2708 = extractelement <4 x float> %188, i64 1, !dbg !254
  %condval_1.0.1.1 = select i1 %cmp607.not.1.1.not, float %scores.sroa.0.4.vec.extract2708, float 0xFFF0000000000000, !dbg !254
  %add605.2.1 = or disjoint i32 %add604.1, 2, !dbg !255
  %cmp607.not.2.1 = icmp sgt i32 %add605.2.1, %1, !dbg !253
  %scores.sroa.0.8.vec.extract2785 = extractelement <4 x float> %188, i64 2, !dbg !254
  %condval_1.0.2.1 = select i1 %cmp607.not.2.1, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2785, !dbg !254
  %add605.3.1 = or disjoint i32 %add604.1, 3, !dbg !255
  %cmp607.not.3.1 = icmp sgt i32 %add605.3.1, %1, !dbg !253
  %scores.sroa.0.12.vec.extract2862 = extractelement <4 x float> %188, i64 3, !dbg !254
  %condval_1.0.3.1 = select i1 %cmp607.not.3.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2862, !dbg !254
  %189 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3590, float 0xFFF0000000000000), !dbg !256
  %190 = tail call contract noundef float @llvm.maxnum.f32(float %189, float %condval_1.0.1.1), !dbg !256
  %191 = tail call contract noundef float @llvm.maxnum.f32(float %190, float %condval_1.0.2.1), !dbg !256
  %192 = tail call contract noundef float @llvm.maxnum.f32(float %191, float %condval_1.0.3.1), !dbg !256
  %193 = bitcast float %192 to i32, !dbg !258
  %194 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !260
  %195 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %194) #11, !dbg !263
  %xor.i.i1271.1 = xor i32 %195, 32, !dbg !264
  %196 = and i32 %195, -64, !dbg !265
  %and.i.i1272.1 = add nsw i32 %196, 64, !dbg !265
  %cmp.not.i.i1273.1 = icmp slt i32 %xor.i.i1271.1, %and.i.i1272.1, !dbg !266
  %cond.i.i1274.1 = select i1 %cmp.not.i.i1273.1, i32 %xor.i.i1271.1, i32 %195, !dbg !267
  %shl.i.i1275.1 = shl i32 %cond.i.i1274.1, 2, !dbg !268
  %197 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1275.1, i32 %193), !dbg !269
  %198 = bitcast i32 %197 to float, !dbg !270
  %199 = tail call contract noundef float @llvm.maxnum.f32(float %192, float %198), !dbg !271
  %200 = bitcast float %199 to i32, !dbg !273
  %201 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !275
  %202 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %201) #11, !dbg !278
  %xor.i.i1276.1 = xor i32 %202, 16, !dbg !279
  %203 = and i32 %202, -64, !dbg !280
  %and.i.i1277.1 = add nsw i32 %203, 64, !dbg !280
  %cmp.not.i.i1278.1 = icmp slt i32 %xor.i.i1276.1, %and.i.i1277.1, !dbg !281
  %cond.i.i1279.1 = select i1 %cmp.not.i.i1278.1, i32 %xor.i.i1276.1, i32 %202, !dbg !282
  %shl.i.i1280.1 = shl i32 %cond.i.i1279.1, 2, !dbg !283
  %204 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1280.1, i32 %200), !dbg !284
  %205 = bitcast i32 %204 to float, !dbg !285
  %206 = tail call contract noundef float @llvm.maxnum.f32(float %199, float %205), !dbg !286
  %207 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.2, float %206), !dbg !288
  %sub651.1 = fsub contract float %maximum.sroa.0.2, %207, !dbg !290
  %mul652.1 = fmul contract float %sub651.1, 0x3FC7154760000000, !dbg !291
  %cmp.i.i1281.1 = fcmp contract olt float %mul652.1, -1.260000e+02, !dbg !292
  %cond.i.i1282.1 = select contract i1 %cmp.i.i1281.1, float 6.400000e+01, float 0.000000e+00, !dbg !292
  %add.i.i1283.1 = fadd contract float %mul652.1, %cond.i.i1282.1, !dbg !292
  %208 = tail call contract float @llvm.exp2.f32(float %add.i.i1283.1), !dbg !292
  %cond2.i.i1284.1 = select contract i1 %cmp.i.i1281.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !292
  %mul.i.i1285.1 = fmul contract float %cond2.i.i1284.1, %208, !dbg !292
  %numerator.sroa.0.0.vec.extract2909 = extractelement <4 x float> %numerator.sroa.0.1, i64 0, !dbg !294
  %numerator.sroa.0.4.vec.extract2942 = extractelement <4 x float> %numerator.sroa.0.1, i64 1, !dbg !294
  %numerator.sroa.0.8.vec.extract2975 = extractelement <4 x float> %numerator.sroa.0.1, i64 2, !dbg !294
  %numerator.sroa.0.12.vec.extract3008 = extractelement <4 x float> %numerator.sroa.0.1, i64 3, !dbg !294
  %mul670.11455 = fmul contract float %mul.i.i1285.1, %numerator.sroa.0.0.vec.extract2909, !dbg !295
  %mul674.11456 = fmul contract float %mul.i.i1285.1, %numerator.sroa.0.4.vec.extract2942, !dbg !296
  %mul678.11457 = fmul contract float %mul.i.i1285.1, %numerator.sroa.0.8.vec.extract2975, !dbg !297
  %mul682.11458 = fmul contract float %mul.i.i1285.1, %numerator.sroa.0.12.vec.extract3008, !dbg !298
  %numerator.sroa.0.0.vec.insert2911 = insertelement <4 x float> poison, float %mul670.11455, i64 0, !dbg !299
  %numerator.sroa.0.4.vec.insert2944 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2911, float %mul674.11456, i64 1, !dbg !299
  %numerator.sroa.0.8.vec.insert2977 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2944, float %mul678.11457, i64 2, !dbg !299
  %numerator.sroa.0.12.vec.insert3010 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2977, float %mul682.11458, i64 3, !dbg !299
  %numerator.sroa.90.16.vec.extract3049 = extractelement <4 x float> %numerator.sroa.90.1, i64 0, !dbg !294
  %numerator.sroa.90.20.vec.extract3082 = extractelement <4 x float> %numerator.sroa.90.1, i64 1, !dbg !294
  %numerator.sroa.90.24.vec.extract3115 = extractelement <4 x float> %numerator.sroa.90.1, i64 2, !dbg !294
  %numerator.sroa.90.28.vec.extract3148 = extractelement <4 x float> %numerator.sroa.90.1, i64 3, !dbg !294
  %mul670.1.1 = fmul contract float %mul.i.i1285.1, %numerator.sroa.90.16.vec.extract3049, !dbg !295
  %mul674.1.1 = fmul contract float %mul.i.i1285.1, %numerator.sroa.90.20.vec.extract3082, !dbg !296
  %mul678.1.1 = fmul contract float %mul.i.i1285.1, %numerator.sroa.90.24.vec.extract3115, !dbg !297
  %mul682.1.1 = fmul contract float %mul.i.i1285.1, %numerator.sroa.90.28.vec.extract3148, !dbg !298
  %numerator.sroa.90.16.vec.insert3051 = insertelement <4 x float> poison, float %mul670.1.1, i64 0, !dbg !299
  %numerator.sroa.90.20.vec.insert3084 = insertelement <4 x float> %numerator.sroa.90.16.vec.insert3051, float %mul674.1.1, i64 1, !dbg !299
  %numerator.sroa.90.24.vec.insert3117 = insertelement <4 x float> %numerator.sroa.90.20.vec.insert3084, float %mul678.1.1, i64 2, !dbg !299
  %numerator.sroa.90.28.vec.insert3150 = insertelement <4 x float> %numerator.sroa.90.24.vec.insert3117, float %mul682.1.1, i64 3, !dbg !299
  %numerator.sroa.178.32.vec.extract3189 = extractelement <4 x float> %numerator.sroa.178.1, i64 0, !dbg !294
  %numerator.sroa.178.36.vec.extract3222 = extractelement <4 x float> %numerator.sroa.178.1, i64 1, !dbg !294
  %numerator.sroa.178.40.vec.extract3255 = extractelement <4 x float> %numerator.sroa.178.1, i64 2, !dbg !294
  %numerator.sroa.178.44.vec.extract3288 = extractelement <4 x float> %numerator.sroa.178.1, i64 3, !dbg !294
  %mul670.2.1 = fmul contract float %mul.i.i1285.1, %numerator.sroa.178.32.vec.extract3189, !dbg !295
  %mul674.2.1 = fmul contract float %mul.i.i1285.1, %numerator.sroa.178.36.vec.extract3222, !dbg !296
  %mul678.2.1 = fmul contract float %mul.i.i1285.1, %numerator.sroa.178.40.vec.extract3255, !dbg !297
  %mul682.2.1 = fmul contract float %mul.i.i1285.1, %numerator.sroa.178.44.vec.extract3288, !dbg !298
  %numerator.sroa.178.32.vec.insert3191 = insertelement <4 x float> poison, float %mul670.2.1, i64 0, !dbg !299
  %numerator.sroa.178.36.vec.insert3224 = insertelement <4 x float> %numerator.sroa.178.32.vec.insert3191, float %mul674.2.1, i64 1, !dbg !299
  %numerator.sroa.178.40.vec.insert3257 = insertelement <4 x float> %numerator.sroa.178.36.vec.insert3224, float %mul678.2.1, i64 2, !dbg !299
  %numerator.sroa.178.44.vec.insert3290 = insertelement <4 x float> %numerator.sroa.178.40.vec.insert3257, float %mul682.2.1, i64 3, !dbg !299
  %numerator.sroa.266.48.vec.extract3329 = extractelement <4 x float> %numerator.sroa.266.1, i64 0, !dbg !294
  %numerator.sroa.266.52.vec.extract3362 = extractelement <4 x float> %numerator.sroa.266.1, i64 1, !dbg !294
  %numerator.sroa.266.56.vec.extract3395 = extractelement <4 x float> %numerator.sroa.266.1, i64 2, !dbg !294
  %numerator.sroa.266.60.vec.extract3428 = extractelement <4 x float> %numerator.sroa.266.1, i64 3, !dbg !294
  %mul670.3.1 = fmul contract float %mul.i.i1285.1, %numerator.sroa.266.48.vec.extract3329, !dbg !295
  %mul674.3.1 = fmul contract float %mul.i.i1285.1, %numerator.sroa.266.52.vec.extract3362, !dbg !296
  %mul678.3.1 = fmul contract float %mul.i.i1285.1, %numerator.sroa.266.56.vec.extract3395, !dbg !297
  %mul682.3.1 = fmul contract float %mul.i.i1285.1, %numerator.sroa.266.60.vec.extract3428, !dbg !298
  %numerator.sroa.266.48.vec.insert3331 = insertelement <4 x float> poison, float %mul670.3.1, i64 0, !dbg !299
  %numerator.sroa.266.52.vec.insert3364 = insertelement <4 x float> %numerator.sroa.266.48.vec.insert3331, float %mul674.3.1, i64 1, !dbg !299
  %numerator.sroa.266.56.vec.insert3397 = insertelement <4 x float> %numerator.sroa.266.52.vec.insert3364, float %mul678.3.1, i64 2, !dbg !299
  %numerator.sroa.266.60.vec.insert3430 = insertelement <4 x float> %numerator.sroa.266.56.vec.insert3397, float %mul682.3.1, i64 3, !dbg !299
  %sub706.1 = fsub contract float %spec.select3590, %207, !dbg !300
  %sub710.1 = fsub contract float %condval_1.0.1.1, %207, !dbg !301
  %sub714.1 = fsub contract float %condval_1.0.2.1, %207, !dbg !302
  %sub718.1 = fsub contract float %condval_1.0.3.1, %207, !dbg !303
  %mul723.1 = fmul contract float %sub706.1, 0x3FC7154760000000, !dbg !304
  %mul727.1 = fmul contract float %sub710.1, 0x3FC7154760000000, !dbg !305
  %mul731.1 = fmul contract float %sub714.1, 0x3FC7154760000000, !dbg !306
  %mul735.1 = fmul contract float %sub718.1, 0x3FC7154760000000, !dbg !307
  %add740.1 = fadd contract float %mul723.1, 8.000000e+00, !dbg !308
  %add744.1 = fadd contract float %mul727.1, 8.000000e+00, !dbg !309
  %add748.1 = fadd contract float %mul731.1, 8.000000e+00, !dbg !310
  %add752.1 = fadd contract float %mul735.1, 8.000000e+00, !dbg !311
  %cmp.i.i1290.1 = fcmp contract olt float %add740.1, -1.260000e+02, !dbg !312
  %cond.i.i1291.1 = select contract i1 %cmp.i.i1290.1, float 6.400000e+01, float 0.000000e+00, !dbg !312
  %add.i.i1292.1 = fadd contract float %add740.1, %cond.i.i1291.1, !dbg !312
  %209 = tail call contract float @llvm.exp2.f32(float %add.i.i1292.1), !dbg !312
  %cond2.i.i1293.1 = select contract i1 %cmp.i.i1290.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !312
  %mul.i.i1294.1 = fmul contract float %cond2.i.i1293.1, %209, !dbg !312
  %cmp.i.i1295.1 = fcmp contract olt float %add744.1, -1.260000e+02, !dbg !314
  %cond.i.i1296.1 = select contract i1 %cmp.i.i1295.1, float 6.400000e+01, float 0.000000e+00, !dbg !314
  %add.i.i1297.1 = fadd contract float %add744.1, %cond.i.i1296.1, !dbg !314
  %210 = tail call contract float @llvm.exp2.f32(float %add.i.i1297.1), !dbg !314
  %cond2.i.i1298.1 = select contract i1 %cmp.i.i1295.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !314
  %mul.i.i1299.1 = fmul contract float %cond2.i.i1298.1, %210, !dbg !314
  %cmp.i.i1300.1 = fcmp contract olt float %add748.1, -1.260000e+02, !dbg !316
  %cond.i.i1301.1 = select contract i1 %cmp.i.i1300.1, float 6.400000e+01, float 0.000000e+00, !dbg !316
  %add.i.i1302.1 = fadd contract float %add748.1, %cond.i.i1301.1, !dbg !316
  %211 = tail call contract float @llvm.exp2.f32(float %add.i.i1302.1), !dbg !316
  %cond2.i.i1303.1 = select contract i1 %cmp.i.i1300.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !316
  %mul.i.i1304.1 = fmul contract float %cond2.i.i1303.1, %211, !dbg !316
  %cmp.i.i1305.1 = fcmp contract olt float %add752.1, -1.260000e+02, !dbg !318
  %cond.i.i1306.1 = select contract i1 %cmp.i.i1305.1, float 6.400000e+01, float 0.000000e+00, !dbg !318
  %add.i.i1307.1 = fadd contract float %add752.1, %cond.i.i1306.1, !dbg !318
  %212 = tail call contract float @llvm.exp2.f32(float %add.i.i1307.1), !dbg !318
  %cond2.i.i1308.1 = select contract i1 %cmp.i.i1305.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !318
  %mul.i.i1309.1 = fmul contract float %cond2.i.i1308.1, %212, !dbg !318
  %213 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !320
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !320, !noalias !324
  %214 = fptrunc float %mul.i.i1294.1 to half, !dbg !320
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %213), !dbg !320, !noalias !324
  %215 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !329
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !329, !noalias !324
  %216 = fptrunc float %mul.i.i1299.1 to half, !dbg !329
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %215), !dbg !329, !noalias !324
  %217 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !331
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !331, !noalias !335
  %218 = fptrunc float %mul.i.i1304.1 to half, !dbg !331
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %217), !dbg !331, !noalias !335
  %219 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !340
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !340, !noalias !335
  %220 = fptrunc float %mul.i.i1309.1 to half, !dbg !340
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %219), !dbg !340, !noalias !335
  %221 = insertelement <4 x half> poison, half %214, i64 0, !dbg !342
  %222 = insertelement <4 x half> %221, half %216, i64 1, !dbg !342
  %223 = insertelement <4 x half> %222, half %218, i64 2, !dbg !342
  %224 = insertelement <4 x half> %223, half %220, i64 3, !dbg !342
  %conv.i.i1326.11460 = fpext half %214 to float, !dbg !343
  %add787.11461 = fadd contract float %conv.i.i1326.11460, 0.000000e+00, !dbg !346
  %conv.i.i1326.1.1 = fpext half %216 to float, !dbg !343
  %add787.1.1 = fadd contract float %add787.11461, %conv.i.i1326.1.1, !dbg !346
  %conv.i.i1326.2.1 = fpext half %218 to float, !dbg !343
  %add787.2.1 = fadd contract float %add787.1.1, %conv.i.i1326.2.1, !dbg !346
  %conv.i.i1326.3.1 = fpext half %220 to float, !dbg !343
  %add787.3.1 = fadd contract float %add787.2.1, %conv.i.i1326.3.1, !dbg !346
  %225 = bitcast float %add787.3.1 to i32, !dbg !347
  %226 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !349
  %227 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %226) #11, !dbg !352
  %xor.i.i1316.1 = xor i32 %227, 32, !dbg !353
  %228 = and i32 %227, -64, !dbg !354
  %and.i.i1317.1 = add nsw i32 %228, 64, !dbg !354
  %cmp.not.i.i1318.1 = icmp slt i32 %xor.i.i1316.1, %and.i.i1317.1, !dbg !355
  %cond.i.i1319.1 = select i1 %cmp.not.i.i1318.1, i32 %xor.i.i1316.1, i32 %227, !dbg !356
  %shl.i.i1320.1 = shl i32 %cond.i.i1319.1, 2, !dbg !357
  %229 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1320.1, i32 %225), !dbg !358
  %230 = bitcast i32 %229 to float, !dbg !359
  %add795.1 = fadd contract float %add787.3.1, %230, !dbg !360
  %231 = bitcast float %add795.1 to i32, !dbg !361
  %232 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !363
  %233 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %232) #11, !dbg !366
  %xor.i.i1321.1 = xor i32 %233, 16, !dbg !367
  %234 = and i32 %233, -64, !dbg !368
  %and.i.i1322.1 = add nsw i32 %234, 64, !dbg !368
  %cmp.not.i.i1323.1 = icmp slt i32 %xor.i.i1321.1, %and.i.i1322.1, !dbg !369
  %cond.i.i1324.1 = select i1 %cmp.not.i.i1323.1, i32 %xor.i.i1321.1, i32 %233, !dbg !370
  %shl.i.i1325.1 = shl i32 %cond.i.i1324.1, 2, !dbg !371
  %235 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1325.1, i32 %231), !dbg !372
  %236 = bitcast i32 %235 to float, !dbg !373
  %add800.1 = fadd contract float %add795.1, %236, !dbg !374
  fence syncscope("warp") release, !dbg !375
  tail call void @llvm.mxc.barrier.warp(), !dbg !378
  fence syncscope("warp") acquire, !dbg !379
  %237 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add820.pre-phi, !dbg !380
  %238 = getelementptr inbounds i8, ptr addrspace(4) %237, i64 %.idx.1, !dbg !380
  %239 = load i64, ptr addrspace(4) %238, align 8, !dbg !381
  %add.ptr829.1.1 = getelementptr inbounds i8, ptr addrspace(4) %238, i64 128, !dbg !380
  %240 = load i64, ptr addrspace(4) %add.ptr829.1.1, align 8, !dbg !381
  %add.ptr829.2.1 = getelementptr inbounds i8, ptr addrspace(4) %238, i64 256, !dbg !380
  %241 = load i64, ptr addrspace(4) %add.ptr829.2.1, align 8, !dbg !381
  %add.ptr829.3.1 = getelementptr inbounds i8, ptr addrspace(4) %238, i64 384, !dbg !380
  %242 = load i64, ptr addrspace(4) %add.ptr829.3.1, align 8, !dbg !381
  %mul693.1 = fmul contract float %denominator.sroa.0.2, %mul.i.i1285.1, !dbg !382
  %243 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul859.pre-phi, !dbg !383
  %add.ptr871.idx.11469 = shl nuw nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.11470 = getelementptr inbounds i8, ptr addrspace(3) %243, i32 %add.ptr871.idx.11469, !dbg !383
  %v_column.sroa.130.0.insert.ext2082 = shl i64 %242, 48, !dbg !384
  %v_column.sroa.98.0.insert.ext1927 = shl i64 %241, 32, !dbg !384
  %v_column.sroa.98.0.insert.shift1928 = and i64 %v_column.sroa.98.0.insert.ext1927, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert1930 = or disjoint i64 %v_column.sroa.130.0.insert.ext2082, %v_column.sroa.98.0.insert.shift1928, !dbg !384
  %v_column.sroa.66.0.insert.ext1772 = shl i64 %240, 16, !dbg !384
  %v_column.sroa.66.0.insert.shift1773 = and i64 %v_column.sroa.66.0.insert.ext1772, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1775 = or disjoint i64 %v_column.sroa.98.0.insert.insert1930, %v_column.sroa.66.0.insert.shift1773, !dbg !384
  %v_column.sroa.0.0.insert.ext1641 = and i64 %239, 65535, !dbg !384
  %v_column.sroa.0.0.insert.insert1643 = or disjoint i64 %v_column.sroa.66.0.insert.insert1775, %v_column.sroa.0.0.insert.ext1641, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1643, ptr addrspace(3) %add.ptr871.11470, align 8, !dbg !384
  %v_fetch.sroa.0.2.extract.shift2219 = lshr i64 %239, 16, !dbg !385
  %add860.1.1 = or disjoint i32 %mul859.pre-phi, 256, !dbg !386
  %244 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.1.1, !dbg !383
  %xor867.1.1 = shl nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.idx.1.1 = xor i32 %xor867.1.1, 8, !dbg !383
  %add.ptr871.1.1 = getelementptr inbounds i8, ptr addrspace(3) %244, i32 %add.ptr871.idx.1.1, !dbg !383
  %245 = shl i64 %242, 32, !dbg !384
  %v_column.sroa.130.0.insert.ext2087 = and i64 %245, -281474976710656, !dbg !384
  %246 = shl i64 %241, 16, !dbg !384
  %v_column.sroa.98.0.insert.shift1933 = and i64 %246, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert1935 = or disjoint i64 %v_column.sroa.130.0.insert.ext2087, %v_column.sroa.98.0.insert.shift1933, !dbg !384
  %v_column.sroa.66.0.insert.ext1777 = and i64 %240, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1780 = or disjoint i64 %v_column.sroa.98.0.insert.insert1935, %v_column.sroa.66.0.insert.ext1777, !dbg !384
  %v_column.sroa.0.0.insert.ext1645 = and i64 %v_fetch.sroa.0.2.extract.shift2219, 65535, !dbg !384
  %v_column.sroa.0.0.insert.insert1647 = or disjoint i64 %v_column.sroa.66.0.insert.insert1780, %v_column.sroa.0.0.insert.ext1645, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1647, ptr addrspace(3) %add.ptr871.1.1, align 8, !dbg !384
  %v_fetch.sroa.0.4.extract.shift2240 = lshr i64 %239, 32, !dbg !385
  %add860.2.1 = or disjoint i32 %mul859.pre-phi, 512, !dbg !386
  %247 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.2.1, !dbg !383
  %xor867.2.1 = shl nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.idx.2.1 = xor i32 %xor867.2.1, 16, !dbg !383
  %add.ptr871.2.1 = getelementptr inbounds i8, ptr addrspace(3) %247, i32 %add.ptr871.idx.2.1, !dbg !383
  %248 = shl i64 %242, 16, !dbg !384
  %v_column.sroa.130.0.insert.ext2092 = and i64 %248, -281474976710656, !dbg !384
  %v_column.sroa.98.0.insert.ext1937 = and i64 %241, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert1940 = or disjoint i64 %v_column.sroa.130.0.insert.ext2092, %v_column.sroa.98.0.insert.ext1937, !dbg !384
  %249 = lshr i64 %240, 16, !dbg !384
  %v_column.sroa.66.0.insert.shift1783 = and i64 %249, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1785 = or disjoint i64 %v_column.sroa.98.0.insert.insert1940, %v_column.sroa.66.0.insert.shift1783, !dbg !384
  %v_column.sroa.0.0.insert.ext1649 = and i64 %v_fetch.sroa.0.4.extract.shift2240, 65535, !dbg !384
  %v_column.sroa.0.0.insert.insert1651 = or disjoint i64 %v_column.sroa.66.0.insert.insert1785, %v_column.sroa.0.0.insert.ext1649, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1651, ptr addrspace(3) %add.ptr871.2.1, align 8, !dbg !384
  %v_fetch.sroa.0.6.extract.shift2261 = lshr i64 %239, 48, !dbg !385
  %v_fetch.sroa.122.30.extract.shift2492 = and i64 %242, -281474976710656, !dbg !384
  %add860.3.1 = or disjoint i32 %mul859.pre-phi, 768, !dbg !386
  %250 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.3.1, !dbg !383
  %xor867.3.1 = shl nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.idx.3.1 = xor i32 %xor867.3.1, 24, !dbg !383
  %add.ptr871.3.1 = getelementptr inbounds i8, ptr addrspace(3) %250, i32 %add.ptr871.idx.3.1, !dbg !383
  %251 = lshr i64 %241, 16, !dbg !384
  %v_column.sroa.98.0.insert.shift1943 = and i64 %251, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert1945 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2492, %v_column.sroa.98.0.insert.shift1943, !dbg !384
  %252 = lshr i64 %240, 32, !dbg !384
  %v_column.sroa.66.0.insert.shift1788 = and i64 %252, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1790 = or disjoint i64 %v_column.sroa.98.0.insert.insert1945, %v_column.sroa.66.0.insert.shift1788, !dbg !384
  %v_column.sroa.0.0.insert.insert1655 = or disjoint i64 %v_column.sroa.66.0.insert.insert1790, %v_fetch.sroa.0.6.extract.shift2261, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1655, ptr addrspace(3) %add.ptr871.3.1, align 8, !dbg !384
  fence syncscope("warp") release, !dbg !387
  tail call void @llvm.mxc.barrier.warp(), !dbg !390
  fence syncscope("warp") acquire, !dbg !391
  %add888.11472 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %253 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.11472, !dbg !393
  %add.ptr898.idx.11473 = shl nuw nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.11474 = getelementptr inbounds i8, ptr addrspace(3) %253, i32 %add.ptr898.idx.11473, !dbg !393
  %254 = load <4 x half>, ptr addrspace(3) %add.ptr898.11474, align 8, !dbg !394
  %add883.1.1 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %add888.1.1 = or disjoint i32 %add883.1.1, 64, !dbg !392
  %255 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.1.1, !dbg !393
  %xor894.1.1 = shl nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.idx.1.1 = xor i32 %xor894.1.1, 8, !dbg !393
  %add.ptr898.1.1 = getelementptr inbounds i8, ptr addrspace(3) %255, i32 %add.ptr898.idx.1.1, !dbg !393
  %256 = load <4 x half>, ptr addrspace(3) %add.ptr898.1.1, align 8, !dbg !394
  %add883.2.1 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %add888.2.1 = or disjoint i32 %add883.2.1, 128, !dbg !392
  %257 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.2.1, !dbg !393
  %xor894.2.1 = shl nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.idx.2.1 = xor i32 %xor894.2.1, 16, !dbg !393
  %add.ptr898.2.1 = getelementptr inbounds i8, ptr addrspace(3) %257, i32 %add.ptr898.idx.2.1, !dbg !393
  %258 = load <4 x half>, ptr addrspace(3) %add.ptr898.2.1, align 8, !dbg !394
  %add883.3.1 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %add888.3.1 = or disjoint i32 %add883.3.1, 192, !dbg !392
  %259 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.3.1, !dbg !393
  %xor894.3.1 = shl nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.idx.3.1 = xor i32 %xor894.3.1, 24, !dbg !393
  %add.ptr898.3.1 = getelementptr inbounds i8, ptr addrspace(3) %259, i32 %add.ptr898.idx.3.1, !dbg !393
  %260 = load <4 x half>, ptr addrspace(3) %add.ptr898.3.1, align 8, !dbg !394
  %261 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %254, <4 x half> %224, <4 x float> %numerator.sroa.0.12.vec.insert3010), !dbg !395
  %262 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %256, <4 x half> %224, <4 x float> %numerator.sroa.90.28.vec.insert3150), !dbg !395
  %263 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %258, <4 x half> %224, <4 x float> %numerator.sroa.178.44.vec.insert3290), !dbg !395
  %264 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %260, <4 x half> %224, <4 x float> %numerator.sroa.266.60.vec.insert3430), !dbg !395
  %add804.1 = fadd contract float %mul693.1, %add800.1, !dbg !396
  br label %if.end924.1, !dbg !397

if.end924.1:                                      ; preds = %if.then493.1, %if.end924
  %numerator.sroa.266.2 = phi <4 x float> [ %numerator.sroa.266.1, %if.end924 ], [ %264, %if.then493.1 ], !dbg !230
  %numerator.sroa.178.2 = phi <4 x float> [ %numerator.sroa.178.1, %if.end924 ], [ %263, %if.then493.1 ], !dbg !230
  %numerator.sroa.90.2 = phi <4 x float> [ %numerator.sroa.90.1, %if.end924 ], [ %262, %if.then493.1 ], !dbg !230
  %numerator.sroa.0.2 = phi <4 x float> [ %numerator.sroa.0.1, %if.end924 ], [ %261, %if.then493.1 ], !dbg !230
  %maximum.sroa.0.2.1 = phi float [ %maximum.sroa.0.2, %if.end924 ], [ %207, %if.then493.1 ], !dbg !230
  %denominator.sroa.0.2.1 = phi float [ %denominator.sroa.0.2, %if.end924 ], [ %add804.1, %if.then493.1 ], !dbg !230
  %265 = or disjoint i64 %idxprom, 3, !dbg !232
  %arrayidx487.2 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %265, !dbg !233
  %266 = load i32, ptr addrspace(1) %arrayidx487.2, align 4, !dbg !233, !tbaa !30
  %mul488.2 = shl nsw i32 %266, 4, !dbg !234
  %cmp489.2 = icmp slt i32 %266, 0, !dbg !235
  %cmp492.not.2 = icmp sgt i32 %mul488.2, %1
  %or.cond1345.2 = select i1 %cmp489.2, i1 true, i1 %cmp492.not.2, !dbg !236
  br i1 %or.cond1345.2, label %if.end924.2, label %if.then493.2, !dbg !236

if.then493.2:                                     ; preds = %if.end924.1
  fence syncscope("warp") release, !dbg !237
  tail call void @llvm.mxc.barrier.warp(), !dbg !240
  fence syncscope("warp") acquire, !dbg !241
  %conv504.2 = zext nneg i32 %mul488.2 to i64
  %.idx.2 = shl nuw nsw i64 %conv504.2, 7
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1393, i64 %.idx.2, !dbg !242
  %.idx1403.2 = shl nuw nsw i64 %conv499.pre-phi, 17, !dbg !243
  %267 = getelementptr inbounds i8, ptr addrspace(4) %gep.2, i64 %.idx1403.2, !dbg !243
  %qk_fetch.sroa.0.0.copyload3513 = load i64, ptr addrspace(4) %267, align 16, !dbg !244
  %qk_fetch.sroa.38.0..sroa_idx3532 = getelementptr inbounds i8, ptr addrspace(4) %267, i64 8, !dbg !244
  %qk_fetch.sroa.38.0.copyload3533 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx3532, align 8, !dbg !244
  store i64 %qk_fetch.sroa.0.0.copyload3513, ptr addrspace(3) %add.ptr39, align 8, !dbg !245
  store i64 %qk_fetch.sroa.38.0.copyload3533, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !245
  %gep1374.1.2 = getelementptr inbounds i8, ptr addrspace(4) %267, i64 1024, !dbg !243
  %qk_fetch.sroa.0.0.copyload3514 = load i64, ptr addrspace(4) %gep1374.1.2, align 16, !dbg !244
  %qk_fetch.sroa.38.0.gep1374.1.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %267, i64 1032, !dbg !244
  %qk_fetch.sroa.38.0.copyload3534 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep1374.1.2.sroa_idx, align 8, !dbg !244
  store i64 %qk_fetch.sroa.0.0.copyload3514, ptr addrspace(3) %add.ptr39.11412, align 8, !dbg !245
  store i64 %qk_fetch.sroa.38.0.copyload3534, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !245
  fence syncscope("warp") release, !dbg !246
  tail call void @llvm.mxc.barrier.warp(), !dbg !249
  fence syncscope("warp") acquire, !dbg !250
  %k_local.sroa.0.0.copyload1205.21480 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !251
  %268 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.21480, <4 x half> %9, <4 x float> zeroinitializer), !dbg !252
  %k_local.sroa.0.0.copyload1205.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !251
  %269 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.1.2, <4 x half> %10, <4 x float> %268), !dbg !252
  %k_local.sroa.0.0.copyload1205.2.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !251
  %270 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.2.2, <4 x half> %11, <4 x float> %269), !dbg !252
  %k_local.sroa.0.0.copyload1205.3.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !251
  %271 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.3.2, <4 x half> %12, <4 x float> %270), !dbg !252
  %add604.2 = add nuw nsw i32 %mul488.2, %mul603.pre-phi
  %cmp607.not.21481 = icmp sgt i32 %add604.2, %1, !dbg !253
  %scores.sroa.0.0.vec.extract2619 = extractelement <4 x float> %271, i64 0
  %spec.select3591 = select i1 %cmp607.not.21481, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2619, !dbg !254
  %cmp607.not.1.2.not = icmp slt i32 %add604.2, %1, !dbg !253
  %scores.sroa.0.4.vec.extract2714 = extractelement <4 x float> %271, i64 1, !dbg !254
  %condval_1.0.1.2 = select i1 %cmp607.not.1.2.not, float %scores.sroa.0.4.vec.extract2714, float 0xFFF0000000000000, !dbg !254
  %add605.2.2 = or disjoint i32 %add604.2, 2, !dbg !255
  %cmp607.not.2.2 = icmp sgt i32 %add605.2.2, %1, !dbg !253
  %scores.sroa.0.8.vec.extract2791 = extractelement <4 x float> %271, i64 2, !dbg !254
  %condval_1.0.2.2 = select i1 %cmp607.not.2.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2791, !dbg !254
  %add605.3.2 = or disjoint i32 %add604.2, 3, !dbg !255
  %cmp607.not.3.2 = icmp sgt i32 %add605.3.2, %1, !dbg !253
  %scores.sroa.0.12.vec.extract2868 = extractelement <4 x float> %271, i64 3, !dbg !254
  %condval_1.0.3.2 = select i1 %cmp607.not.3.2, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2868, !dbg !254
  %272 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3591, float 0xFFF0000000000000), !dbg !256
  %273 = tail call contract noundef float @llvm.maxnum.f32(float %272, float %condval_1.0.1.2), !dbg !256
  %274 = tail call contract noundef float @llvm.maxnum.f32(float %273, float %condval_1.0.2.2), !dbg !256
  %275 = tail call contract noundef float @llvm.maxnum.f32(float %274, float %condval_1.0.3.2), !dbg !256
  %276 = bitcast float %275 to i32, !dbg !258
  %277 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !260
  %278 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %277) #11, !dbg !263
  %xor.i.i1271.2 = xor i32 %278, 32, !dbg !264
  %279 = and i32 %278, -64, !dbg !265
  %and.i.i1272.2 = add nsw i32 %279, 64, !dbg !265
  %cmp.not.i.i1273.2 = icmp slt i32 %xor.i.i1271.2, %and.i.i1272.2, !dbg !266
  %cond.i.i1274.2 = select i1 %cmp.not.i.i1273.2, i32 %xor.i.i1271.2, i32 %278, !dbg !267
  %shl.i.i1275.2 = shl i32 %cond.i.i1274.2, 2, !dbg !268
  %280 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1275.2, i32 %276), !dbg !269
  %281 = bitcast i32 %280 to float, !dbg !270
  %282 = tail call contract noundef float @llvm.maxnum.f32(float %275, float %281), !dbg !271
  %283 = bitcast float %282 to i32, !dbg !273
  %284 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !275
  %285 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %284) #11, !dbg !278
  %xor.i.i1276.2 = xor i32 %285, 16, !dbg !279
  %286 = and i32 %285, -64, !dbg !280
  %and.i.i1277.2 = add nsw i32 %286, 64, !dbg !280
  %cmp.not.i.i1278.2 = icmp slt i32 %xor.i.i1276.2, %and.i.i1277.2, !dbg !281
  %cond.i.i1279.2 = select i1 %cmp.not.i.i1278.2, i32 %xor.i.i1276.2, i32 %285, !dbg !282
  %shl.i.i1280.2 = shl i32 %cond.i.i1279.2, 2, !dbg !283
  %287 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1280.2, i32 %283), !dbg !284
  %288 = bitcast i32 %287 to float, !dbg !285
  %289 = tail call contract noundef float @llvm.maxnum.f32(float %282, float %288), !dbg !286
  %290 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.2.1, float %289), !dbg !288
  %sub651.2 = fsub contract float %maximum.sroa.0.2.1, %290, !dbg !290
  %mul652.2 = fmul contract float %sub651.2, 0x3FC7154760000000, !dbg !291
  %cmp.i.i1281.2 = fcmp contract olt float %mul652.2, -1.260000e+02, !dbg !292
  %cond.i.i1282.2 = select contract i1 %cmp.i.i1281.2, float 6.400000e+01, float 0.000000e+00, !dbg !292
  %add.i.i1283.2 = fadd contract float %mul652.2, %cond.i.i1282.2, !dbg !292
  %291 = tail call contract float @llvm.exp2.f32(float %add.i.i1283.2), !dbg !292
  %cond2.i.i1284.2 = select contract i1 %cmp.i.i1281.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !292
  %mul.i.i1285.2 = fmul contract float %cond2.i.i1284.2, %291, !dbg !292
  %numerator.sroa.0.0.vec.extract2913 = extractelement <4 x float> %numerator.sroa.0.2, i64 0, !dbg !294
  %numerator.sroa.0.4.vec.extract2946 = extractelement <4 x float> %numerator.sroa.0.2, i64 1, !dbg !294
  %numerator.sroa.0.8.vec.extract2979 = extractelement <4 x float> %numerator.sroa.0.2, i64 2, !dbg !294
  %numerator.sroa.0.12.vec.extract3012 = extractelement <4 x float> %numerator.sroa.0.2, i64 3, !dbg !294
  %mul670.21492 = fmul contract float %mul.i.i1285.2, %numerator.sroa.0.0.vec.extract2913, !dbg !295
  %mul674.21493 = fmul contract float %mul.i.i1285.2, %numerator.sroa.0.4.vec.extract2946, !dbg !296
  %mul678.21494 = fmul contract float %mul.i.i1285.2, %numerator.sroa.0.8.vec.extract2979, !dbg !297
  %mul682.21495 = fmul contract float %mul.i.i1285.2, %numerator.sroa.0.12.vec.extract3012, !dbg !298
  %numerator.sroa.0.0.vec.insert2915 = insertelement <4 x float> poison, float %mul670.21492, i64 0, !dbg !299
  %numerator.sroa.0.4.vec.insert2948 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2915, float %mul674.21493, i64 1, !dbg !299
  %numerator.sroa.0.8.vec.insert2981 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2948, float %mul678.21494, i64 2, !dbg !299
  %numerator.sroa.0.12.vec.insert3014 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2981, float %mul682.21495, i64 3, !dbg !299
  %numerator.sroa.90.16.vec.extract3053 = extractelement <4 x float> %numerator.sroa.90.2, i64 0, !dbg !294
  %numerator.sroa.90.20.vec.extract3086 = extractelement <4 x float> %numerator.sroa.90.2, i64 1, !dbg !294
  %numerator.sroa.90.24.vec.extract3119 = extractelement <4 x float> %numerator.sroa.90.2, i64 2, !dbg !294
  %numerator.sroa.90.28.vec.extract3152 = extractelement <4 x float> %numerator.sroa.90.2, i64 3, !dbg !294
  %mul670.1.2 = fmul contract float %mul.i.i1285.2, %numerator.sroa.90.16.vec.extract3053, !dbg !295
  %mul674.1.2 = fmul contract float %mul.i.i1285.2, %numerator.sroa.90.20.vec.extract3086, !dbg !296
  %mul678.1.2 = fmul contract float %mul.i.i1285.2, %numerator.sroa.90.24.vec.extract3119, !dbg !297
  %mul682.1.2 = fmul contract float %mul.i.i1285.2, %numerator.sroa.90.28.vec.extract3152, !dbg !298
  %numerator.sroa.90.16.vec.insert3055 = insertelement <4 x float> poison, float %mul670.1.2, i64 0, !dbg !299
  %numerator.sroa.90.20.vec.insert3088 = insertelement <4 x float> %numerator.sroa.90.16.vec.insert3055, float %mul674.1.2, i64 1, !dbg !299
  %numerator.sroa.90.24.vec.insert3121 = insertelement <4 x float> %numerator.sroa.90.20.vec.insert3088, float %mul678.1.2, i64 2, !dbg !299
  %numerator.sroa.90.28.vec.insert3154 = insertelement <4 x float> %numerator.sroa.90.24.vec.insert3121, float %mul682.1.2, i64 3, !dbg !299
  %numerator.sroa.178.32.vec.extract3193 = extractelement <4 x float> %numerator.sroa.178.2, i64 0, !dbg !294
  %numerator.sroa.178.36.vec.extract3226 = extractelement <4 x float> %numerator.sroa.178.2, i64 1, !dbg !294
  %numerator.sroa.178.40.vec.extract3259 = extractelement <4 x float> %numerator.sroa.178.2, i64 2, !dbg !294
  %numerator.sroa.178.44.vec.extract3292 = extractelement <4 x float> %numerator.sroa.178.2, i64 3, !dbg !294
  %mul670.2.2 = fmul contract float %mul.i.i1285.2, %numerator.sroa.178.32.vec.extract3193, !dbg !295
  %mul674.2.2 = fmul contract float %mul.i.i1285.2, %numerator.sroa.178.36.vec.extract3226, !dbg !296
  %mul678.2.2 = fmul contract float %mul.i.i1285.2, %numerator.sroa.178.40.vec.extract3259, !dbg !297
  %mul682.2.2 = fmul contract float %mul.i.i1285.2, %numerator.sroa.178.44.vec.extract3292, !dbg !298
  %numerator.sroa.178.32.vec.insert3195 = insertelement <4 x float> poison, float %mul670.2.2, i64 0, !dbg !299
  %numerator.sroa.178.36.vec.insert3228 = insertelement <4 x float> %numerator.sroa.178.32.vec.insert3195, float %mul674.2.2, i64 1, !dbg !299
  %numerator.sroa.178.40.vec.insert3261 = insertelement <4 x float> %numerator.sroa.178.36.vec.insert3228, float %mul678.2.2, i64 2, !dbg !299
  %numerator.sroa.178.44.vec.insert3294 = insertelement <4 x float> %numerator.sroa.178.40.vec.insert3261, float %mul682.2.2, i64 3, !dbg !299
  %numerator.sroa.266.48.vec.extract3333 = extractelement <4 x float> %numerator.sroa.266.2, i64 0, !dbg !294
  %numerator.sroa.266.52.vec.extract3366 = extractelement <4 x float> %numerator.sroa.266.2, i64 1, !dbg !294
  %numerator.sroa.266.56.vec.extract3399 = extractelement <4 x float> %numerator.sroa.266.2, i64 2, !dbg !294
  %numerator.sroa.266.60.vec.extract3432 = extractelement <4 x float> %numerator.sroa.266.2, i64 3, !dbg !294
  %mul670.3.2 = fmul contract float %mul.i.i1285.2, %numerator.sroa.266.48.vec.extract3333, !dbg !295
  %mul674.3.2 = fmul contract float %mul.i.i1285.2, %numerator.sroa.266.52.vec.extract3366, !dbg !296
  %mul678.3.2 = fmul contract float %mul.i.i1285.2, %numerator.sroa.266.56.vec.extract3399, !dbg !297
  %mul682.3.2 = fmul contract float %mul.i.i1285.2, %numerator.sroa.266.60.vec.extract3432, !dbg !298
  %numerator.sroa.266.48.vec.insert3335 = insertelement <4 x float> poison, float %mul670.3.2, i64 0, !dbg !299
  %numerator.sroa.266.52.vec.insert3368 = insertelement <4 x float> %numerator.sroa.266.48.vec.insert3335, float %mul674.3.2, i64 1, !dbg !299
  %numerator.sroa.266.56.vec.insert3401 = insertelement <4 x float> %numerator.sroa.266.52.vec.insert3368, float %mul678.3.2, i64 2, !dbg !299
  %numerator.sroa.266.60.vec.insert3434 = insertelement <4 x float> %numerator.sroa.266.56.vec.insert3401, float %mul682.3.2, i64 3, !dbg !299
  %sub706.2 = fsub contract float %spec.select3591, %290, !dbg !300
  %sub710.2 = fsub contract float %condval_1.0.1.2, %290, !dbg !301
  %sub714.2 = fsub contract float %condval_1.0.2.2, %290, !dbg !302
  %sub718.2 = fsub contract float %condval_1.0.3.2, %290, !dbg !303
  %mul723.2 = fmul contract float %sub706.2, 0x3FC7154760000000, !dbg !304
  %mul727.2 = fmul contract float %sub710.2, 0x3FC7154760000000, !dbg !305
  %mul731.2 = fmul contract float %sub714.2, 0x3FC7154760000000, !dbg !306
  %mul735.2 = fmul contract float %sub718.2, 0x3FC7154760000000, !dbg !307
  %add740.2 = fadd contract float %mul723.2, 8.000000e+00, !dbg !308
  %add744.2 = fadd contract float %mul727.2, 8.000000e+00, !dbg !309
  %add748.2 = fadd contract float %mul731.2, 8.000000e+00, !dbg !310
  %add752.2 = fadd contract float %mul735.2, 8.000000e+00, !dbg !311
  %cmp.i.i1290.2 = fcmp contract olt float %add740.2, -1.260000e+02, !dbg !312
  %cond.i.i1291.2 = select contract i1 %cmp.i.i1290.2, float 6.400000e+01, float 0.000000e+00, !dbg !312
  %add.i.i1292.2 = fadd contract float %add740.2, %cond.i.i1291.2, !dbg !312
  %292 = tail call contract float @llvm.exp2.f32(float %add.i.i1292.2), !dbg !312
  %cond2.i.i1293.2 = select contract i1 %cmp.i.i1290.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !312
  %mul.i.i1294.2 = fmul contract float %cond2.i.i1293.2, %292, !dbg !312
  %cmp.i.i1295.2 = fcmp contract olt float %add744.2, -1.260000e+02, !dbg !314
  %cond.i.i1296.2 = select contract i1 %cmp.i.i1295.2, float 6.400000e+01, float 0.000000e+00, !dbg !314
  %add.i.i1297.2 = fadd contract float %add744.2, %cond.i.i1296.2, !dbg !314
  %293 = tail call contract float @llvm.exp2.f32(float %add.i.i1297.2), !dbg !314
  %cond2.i.i1298.2 = select contract i1 %cmp.i.i1295.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !314
  %mul.i.i1299.2 = fmul contract float %cond2.i.i1298.2, %293, !dbg !314
  %cmp.i.i1300.2 = fcmp contract olt float %add748.2, -1.260000e+02, !dbg !316
  %cond.i.i1301.2 = select contract i1 %cmp.i.i1300.2, float 6.400000e+01, float 0.000000e+00, !dbg !316
  %add.i.i1302.2 = fadd contract float %add748.2, %cond.i.i1301.2, !dbg !316
  %294 = tail call contract float @llvm.exp2.f32(float %add.i.i1302.2), !dbg !316
  %cond2.i.i1303.2 = select contract i1 %cmp.i.i1300.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !316
  %mul.i.i1304.2 = fmul contract float %cond2.i.i1303.2, %294, !dbg !316
  %cmp.i.i1305.2 = fcmp contract olt float %add752.2, -1.260000e+02, !dbg !318
  %cond.i.i1306.2 = select contract i1 %cmp.i.i1305.2, float 6.400000e+01, float 0.000000e+00, !dbg !318
  %add.i.i1307.2 = fadd contract float %add752.2, %cond.i.i1306.2, !dbg !318
  %295 = tail call contract float @llvm.exp2.f32(float %add.i.i1307.2), !dbg !318
  %cond2.i.i1308.2 = select contract i1 %cmp.i.i1305.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !318
  %mul.i.i1309.2 = fmul contract float %cond2.i.i1308.2, %295, !dbg !318
  %296 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !320
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !320, !noalias !324
  %297 = fptrunc float %mul.i.i1294.2 to half, !dbg !320
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %296), !dbg !320, !noalias !324
  %298 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !329
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !329, !noalias !324
  %299 = fptrunc float %mul.i.i1299.2 to half, !dbg !329
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %298), !dbg !329, !noalias !324
  %300 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !331
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !331, !noalias !335
  %301 = fptrunc float %mul.i.i1304.2 to half, !dbg !331
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %300), !dbg !331, !noalias !335
  %302 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !340
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !340, !noalias !335
  %303 = fptrunc float %mul.i.i1309.2 to half, !dbg !340
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %302), !dbg !340, !noalias !335
  %304 = insertelement <4 x half> poison, half %297, i64 0, !dbg !342
  %305 = insertelement <4 x half> %304, half %299, i64 1, !dbg !342
  %306 = insertelement <4 x half> %305, half %301, i64 2, !dbg !342
  %307 = insertelement <4 x half> %306, half %303, i64 3, !dbg !342
  %conv.i.i1326.21497 = fpext half %297 to float, !dbg !343
  %add787.21498 = fadd contract float %conv.i.i1326.21497, 0.000000e+00, !dbg !346
  %conv.i.i1326.1.2 = fpext half %299 to float, !dbg !343
  %add787.1.2 = fadd contract float %add787.21498, %conv.i.i1326.1.2, !dbg !346
  %conv.i.i1326.2.2 = fpext half %301 to float, !dbg !343
  %add787.2.2 = fadd contract float %add787.1.2, %conv.i.i1326.2.2, !dbg !346
  %conv.i.i1326.3.2 = fpext half %303 to float, !dbg !343
  %add787.3.2 = fadd contract float %add787.2.2, %conv.i.i1326.3.2, !dbg !346
  %308 = bitcast float %add787.3.2 to i32, !dbg !347
  %309 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !349
  %310 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %309) #11, !dbg !352
  %xor.i.i1316.2 = xor i32 %310, 32, !dbg !353
  %311 = and i32 %310, -64, !dbg !354
  %and.i.i1317.2 = add nsw i32 %311, 64, !dbg !354
  %cmp.not.i.i1318.2 = icmp slt i32 %xor.i.i1316.2, %and.i.i1317.2, !dbg !355
  %cond.i.i1319.2 = select i1 %cmp.not.i.i1318.2, i32 %xor.i.i1316.2, i32 %310, !dbg !356
  %shl.i.i1320.2 = shl i32 %cond.i.i1319.2, 2, !dbg !357
  %312 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1320.2, i32 %308), !dbg !358
  %313 = bitcast i32 %312 to float, !dbg !359
  %add795.2 = fadd contract float %add787.3.2, %313, !dbg !360
  %314 = bitcast float %add795.2 to i32, !dbg !361
  %315 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !363
  %316 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %315) #11, !dbg !366
  %xor.i.i1321.2 = xor i32 %316, 16, !dbg !367
  %317 = and i32 %316, -64, !dbg !368
  %and.i.i1322.2 = add nsw i32 %317, 64, !dbg !368
  %cmp.not.i.i1323.2 = icmp slt i32 %xor.i.i1321.2, %and.i.i1322.2, !dbg !369
  %cond.i.i1324.2 = select i1 %cmp.not.i.i1323.2, i32 %xor.i.i1321.2, i32 %316, !dbg !370
  %shl.i.i1325.2 = shl i32 %cond.i.i1324.2, 2, !dbg !371
  %318 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1325.2, i32 %314), !dbg !372
  %319 = bitcast i32 %318 to float, !dbg !373
  %add800.2 = fadd contract float %add795.2, %319, !dbg !374
  fence syncscope("warp") release, !dbg !375
  tail call void @llvm.mxc.barrier.warp(), !dbg !378
  fence syncscope("warp") acquire, !dbg !379
  %320 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add820.pre-phi, !dbg !380
  %321 = getelementptr inbounds i8, ptr addrspace(4) %320, i64 %.idx.2, !dbg !380
  %322 = load i64, ptr addrspace(4) %321, align 8, !dbg !381
  %add.ptr829.1.2 = getelementptr inbounds i8, ptr addrspace(4) %321, i64 128, !dbg !380
  %323 = load i64, ptr addrspace(4) %add.ptr829.1.2, align 8, !dbg !381
  %add.ptr829.2.2 = getelementptr inbounds i8, ptr addrspace(4) %321, i64 256, !dbg !380
  %324 = load i64, ptr addrspace(4) %add.ptr829.2.2, align 8, !dbg !381
  %add.ptr829.3.2 = getelementptr inbounds i8, ptr addrspace(4) %321, i64 384, !dbg !380
  %325 = load i64, ptr addrspace(4) %add.ptr829.3.2, align 8, !dbg !381
  %mul693.2 = fmul contract float %denominator.sroa.0.2.1, %mul.i.i1285.2, !dbg !382
  %326 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul859.pre-phi, !dbg !383
  %add.ptr871.idx.21506 = shl nuw nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.21507 = getelementptr inbounds i8, ptr addrspace(3) %326, i32 %add.ptr871.idx.21506, !dbg !383
  %v_column.sroa.130.0.insert.ext2102 = shl i64 %325, 48, !dbg !384
  %v_column.sroa.98.0.insert.ext1947 = shl i64 %324, 32, !dbg !384
  %v_column.sroa.98.0.insert.shift1948 = and i64 %v_column.sroa.98.0.insert.ext1947, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert1950 = or disjoint i64 %v_column.sroa.130.0.insert.ext2102, %v_column.sroa.98.0.insert.shift1948, !dbg !384
  %v_column.sroa.66.0.insert.ext1792 = shl i64 %323, 16, !dbg !384
  %v_column.sroa.66.0.insert.shift1793 = and i64 %v_column.sroa.66.0.insert.ext1792, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1795 = or disjoint i64 %v_column.sroa.98.0.insert.insert1950, %v_column.sroa.66.0.insert.shift1793, !dbg !384
  %v_column.sroa.0.0.insert.ext1657 = and i64 %322, 65535, !dbg !384
  %v_column.sroa.0.0.insert.insert1659 = or disjoint i64 %v_column.sroa.66.0.insert.insert1795, %v_column.sroa.0.0.insert.ext1657, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1659, ptr addrspace(3) %add.ptr871.21507, align 8, !dbg !384
  %v_fetch.sroa.0.2.extract.shift2222 = lshr i64 %322, 16, !dbg !385
  %add860.1.2 = or disjoint i32 %mul859.pre-phi, 256, !dbg !386
  %327 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.1.2, !dbg !383
  %xor867.1.2 = shl nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.idx.1.2 = xor i32 %xor867.1.2, 8, !dbg !383
  %add.ptr871.1.2 = getelementptr inbounds i8, ptr addrspace(3) %327, i32 %add.ptr871.idx.1.2, !dbg !383
  %328 = shl i64 %325, 32, !dbg !384
  %v_column.sroa.130.0.insert.ext2107 = and i64 %328, -281474976710656, !dbg !384
  %329 = shl i64 %324, 16, !dbg !384
  %v_column.sroa.98.0.insert.shift1953 = and i64 %329, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert1955 = or disjoint i64 %v_column.sroa.130.0.insert.ext2107, %v_column.sroa.98.0.insert.shift1953, !dbg !384
  %v_column.sroa.66.0.insert.ext1797 = and i64 %323, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1800 = or disjoint i64 %v_column.sroa.98.0.insert.insert1955, %v_column.sroa.66.0.insert.ext1797, !dbg !384
  %v_column.sroa.0.0.insert.ext1661 = and i64 %v_fetch.sroa.0.2.extract.shift2222, 65535, !dbg !384
  %v_column.sroa.0.0.insert.insert1663 = or disjoint i64 %v_column.sroa.66.0.insert.insert1800, %v_column.sroa.0.0.insert.ext1661, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1663, ptr addrspace(3) %add.ptr871.1.2, align 8, !dbg !384
  %v_fetch.sroa.0.4.extract.shift2243 = lshr i64 %322, 32, !dbg !385
  %add860.2.2 = or disjoint i32 %mul859.pre-phi, 512, !dbg !386
  %330 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.2.2, !dbg !383
  %xor867.2.2 = shl nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.idx.2.2 = xor i32 %xor867.2.2, 16, !dbg !383
  %add.ptr871.2.2 = getelementptr inbounds i8, ptr addrspace(3) %330, i32 %add.ptr871.idx.2.2, !dbg !383
  %331 = shl i64 %325, 16, !dbg !384
  %v_column.sroa.130.0.insert.ext2112 = and i64 %331, -281474976710656, !dbg !384
  %v_column.sroa.98.0.insert.ext1957 = and i64 %324, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert1960 = or disjoint i64 %v_column.sroa.130.0.insert.ext2112, %v_column.sroa.98.0.insert.ext1957, !dbg !384
  %332 = lshr i64 %323, 16, !dbg !384
  %v_column.sroa.66.0.insert.shift1803 = and i64 %332, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1805 = or disjoint i64 %v_column.sroa.98.0.insert.insert1960, %v_column.sroa.66.0.insert.shift1803, !dbg !384
  %v_column.sroa.0.0.insert.ext1665 = and i64 %v_fetch.sroa.0.4.extract.shift2243, 65535, !dbg !384
  %v_column.sroa.0.0.insert.insert1667 = or disjoint i64 %v_column.sroa.66.0.insert.insert1805, %v_column.sroa.0.0.insert.ext1665, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1667, ptr addrspace(3) %add.ptr871.2.2, align 8, !dbg !384
  %v_fetch.sroa.0.6.extract.shift2264 = lshr i64 %322, 48, !dbg !385
  %v_fetch.sroa.122.30.extract.shift2495 = and i64 %325, -281474976710656, !dbg !384
  %add860.3.2 = or disjoint i32 %mul859.pre-phi, 768, !dbg !386
  %333 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.3.2, !dbg !383
  %xor867.3.2 = shl nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.idx.3.2 = xor i32 %xor867.3.2, 24, !dbg !383
  %add.ptr871.3.2 = getelementptr inbounds i8, ptr addrspace(3) %333, i32 %add.ptr871.idx.3.2, !dbg !383
  %334 = lshr i64 %324, 16, !dbg !384
  %v_column.sroa.98.0.insert.shift1963 = and i64 %334, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert1965 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2495, %v_column.sroa.98.0.insert.shift1963, !dbg !384
  %335 = lshr i64 %323, 32, !dbg !384
  %v_column.sroa.66.0.insert.shift1808 = and i64 %335, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1810 = or disjoint i64 %v_column.sroa.98.0.insert.insert1965, %v_column.sroa.66.0.insert.shift1808, !dbg !384
  %v_column.sroa.0.0.insert.insert1671 = or disjoint i64 %v_column.sroa.66.0.insert.insert1810, %v_fetch.sroa.0.6.extract.shift2264, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1671, ptr addrspace(3) %add.ptr871.3.2, align 8, !dbg !384
  fence syncscope("warp") release, !dbg !387
  tail call void @llvm.mxc.barrier.warp(), !dbg !390
  fence syncscope("warp") acquire, !dbg !391
  %add888.21509 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %336 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.21509, !dbg !393
  %add.ptr898.idx.21510 = shl nuw nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.21511 = getelementptr inbounds i8, ptr addrspace(3) %336, i32 %add.ptr898.idx.21510, !dbg !393
  %337 = load <4 x half>, ptr addrspace(3) %add.ptr898.21511, align 8, !dbg !394
  %add883.1.2 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %add888.1.2 = or disjoint i32 %add883.1.2, 64, !dbg !392
  %338 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.1.2, !dbg !393
  %xor894.1.2 = shl nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.idx.1.2 = xor i32 %xor894.1.2, 8, !dbg !393
  %add.ptr898.1.2 = getelementptr inbounds i8, ptr addrspace(3) %338, i32 %add.ptr898.idx.1.2, !dbg !393
  %339 = load <4 x half>, ptr addrspace(3) %add.ptr898.1.2, align 8, !dbg !394
  %add883.2.2 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %add888.2.2 = or disjoint i32 %add883.2.2, 128, !dbg !392
  %340 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.2.2, !dbg !393
  %xor894.2.2 = shl nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.idx.2.2 = xor i32 %xor894.2.2, 16, !dbg !393
  %add.ptr898.2.2 = getelementptr inbounds i8, ptr addrspace(3) %340, i32 %add.ptr898.idx.2.2, !dbg !393
  %341 = load <4 x half>, ptr addrspace(3) %add.ptr898.2.2, align 8, !dbg !394
  %add883.3.2 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %add888.3.2 = or disjoint i32 %add883.3.2, 192, !dbg !392
  %342 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.3.2, !dbg !393
  %xor894.3.2 = shl nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.idx.3.2 = xor i32 %xor894.3.2, 24, !dbg !393
  %add.ptr898.3.2 = getelementptr inbounds i8, ptr addrspace(3) %342, i32 %add.ptr898.idx.3.2, !dbg !393
  %343 = load <4 x half>, ptr addrspace(3) %add.ptr898.3.2, align 8, !dbg !394
  %344 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %337, <4 x half> %307, <4 x float> %numerator.sroa.0.12.vec.insert3014), !dbg !395
  %345 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %339, <4 x half> %307, <4 x float> %numerator.sroa.90.28.vec.insert3154), !dbg !395
  %346 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %341, <4 x half> %307, <4 x float> %numerator.sroa.178.44.vec.insert3294), !dbg !395
  %347 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %343, <4 x half> %307, <4 x float> %numerator.sroa.266.60.vec.insert3434), !dbg !395
  %add804.2 = fadd contract float %mul693.2, %add800.2, !dbg !396
  br label %if.end924.2, !dbg !397

if.end924.2:                                      ; preds = %if.then493.2, %if.end924.1
  %numerator.sroa.266.3 = phi <4 x float> [ %numerator.sroa.266.2, %if.end924.1 ], [ %347, %if.then493.2 ], !dbg !230
  %numerator.sroa.178.3 = phi <4 x float> [ %numerator.sroa.178.2, %if.end924.1 ], [ %346, %if.then493.2 ], !dbg !230
  %numerator.sroa.90.3 = phi <4 x float> [ %numerator.sroa.90.2, %if.end924.1 ], [ %345, %if.then493.2 ], !dbg !230
  %numerator.sroa.0.3 = phi <4 x float> [ %numerator.sroa.0.2, %if.end924.1 ], [ %344, %if.then493.2 ], !dbg !230
  %maximum.sroa.0.2.2 = phi float [ %maximum.sroa.0.2.1, %if.end924.1 ], [ %290, %if.then493.2 ], !dbg !230
  %denominator.sroa.0.2.2 = phi float [ %denominator.sroa.0.2.1, %if.end924.1 ], [ %add804.2, %if.then493.2 ], !dbg !230
  %348 = or disjoint i64 %idxprom, 4, !dbg !232
  %arrayidx487.3 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %348, !dbg !233
  %349 = load i32, ptr addrspace(1) %arrayidx487.3, align 4, !dbg !233, !tbaa !30
  %mul488.3 = shl nsw i32 %349, 4, !dbg !234
  %cmp489.3 = icmp slt i32 %349, 0, !dbg !235
  %cmp492.not.3 = icmp sgt i32 %mul488.3, %1
  %or.cond1345.3 = select i1 %cmp489.3, i1 true, i1 %cmp492.not.3, !dbg !236
  br i1 %or.cond1345.3, label %if.end924.3, label %if.then493.3, !dbg !236

if.then493.3:                                     ; preds = %if.end924.2
  fence syncscope("warp") release, !dbg !237
  tail call void @llvm.mxc.barrier.warp(), !dbg !240
  fence syncscope("warp") acquire, !dbg !241
  %conv504.3 = zext nneg i32 %mul488.3 to i64
  %.idx.3 = shl nuw nsw i64 %conv504.3, 7
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1393, i64 %.idx.3, !dbg !242
  %.idx1403.3 = shl nuw nsw i64 %conv499.pre-phi, 17, !dbg !243
  %350 = getelementptr inbounds i8, ptr addrspace(4) %gep.3, i64 %.idx1403.3, !dbg !243
  %qk_fetch.sroa.0.0.copyload3515 = load i64, ptr addrspace(4) %350, align 16, !dbg !244
  %qk_fetch.sroa.38.0..sroa_idx3535 = getelementptr inbounds i8, ptr addrspace(4) %350, i64 8, !dbg !244
  %qk_fetch.sroa.38.0.copyload3536 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx3535, align 8, !dbg !244
  store i64 %qk_fetch.sroa.0.0.copyload3515, ptr addrspace(3) %add.ptr39, align 8, !dbg !245
  store i64 %qk_fetch.sroa.38.0.copyload3536, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !245
  %gep1374.1.3 = getelementptr inbounds i8, ptr addrspace(4) %350, i64 1024, !dbg !243
  %qk_fetch.sroa.0.0.copyload3516 = load i64, ptr addrspace(4) %gep1374.1.3, align 16, !dbg !244
  %qk_fetch.sroa.38.0.gep1374.1.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %350, i64 1032, !dbg !244
  %qk_fetch.sroa.38.0.copyload3537 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep1374.1.3.sroa_idx, align 8, !dbg !244
  store i64 %qk_fetch.sroa.0.0.copyload3516, ptr addrspace(3) %add.ptr39.11412, align 8, !dbg !245
  store i64 %qk_fetch.sroa.38.0.copyload3537, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !245
  fence syncscope("warp") release, !dbg !246
  tail call void @llvm.mxc.barrier.warp(), !dbg !249
  fence syncscope("warp") acquire, !dbg !250
  %k_local.sroa.0.0.copyload1205.31517 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !251
  %351 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.31517, <4 x half> %9, <4 x float> zeroinitializer), !dbg !252
  %k_local.sroa.0.0.copyload1205.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !251
  %352 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.1.3, <4 x half> %10, <4 x float> %351), !dbg !252
  %k_local.sroa.0.0.copyload1205.2.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !251
  %353 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.2.3, <4 x half> %11, <4 x float> %352), !dbg !252
  %k_local.sroa.0.0.copyload1205.3.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !251
  %354 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.3.3, <4 x half> %12, <4 x float> %353), !dbg !252
  %add604.3 = add nuw nsw i32 %mul488.3, %mul603.pre-phi
  %cmp607.not.31518 = icmp sgt i32 %add604.3, %1, !dbg !253
  %scores.sroa.0.0.vec.extract2629 = extractelement <4 x float> %354, i64 0
  %spec.select3592 = select i1 %cmp607.not.31518, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2629, !dbg !254
  %cmp607.not.1.3.not = icmp slt i32 %add604.3, %1, !dbg !253
  %scores.sroa.0.4.vec.extract2720 = extractelement <4 x float> %354, i64 1, !dbg !254
  %condval_1.0.1.3 = select i1 %cmp607.not.1.3.not, float %scores.sroa.0.4.vec.extract2720, float 0xFFF0000000000000, !dbg !254
  %add605.2.3 = or disjoint i32 %add604.3, 2, !dbg !255
  %cmp607.not.2.3 = icmp sgt i32 %add605.2.3, %1, !dbg !253
  %scores.sroa.0.8.vec.extract2797 = extractelement <4 x float> %354, i64 2, !dbg !254
  %condval_1.0.2.3 = select i1 %cmp607.not.2.3, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2797, !dbg !254
  %add605.3.3 = or disjoint i32 %add604.3, 3, !dbg !255
  %cmp607.not.3.3 = icmp sgt i32 %add605.3.3, %1, !dbg !253
  %scores.sroa.0.12.vec.extract2874 = extractelement <4 x float> %354, i64 3, !dbg !254
  %condval_1.0.3.3 = select i1 %cmp607.not.3.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2874, !dbg !254
  %355 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3592, float 0xFFF0000000000000), !dbg !256
  %356 = tail call contract noundef float @llvm.maxnum.f32(float %355, float %condval_1.0.1.3), !dbg !256
  %357 = tail call contract noundef float @llvm.maxnum.f32(float %356, float %condval_1.0.2.3), !dbg !256
  %358 = tail call contract noundef float @llvm.maxnum.f32(float %357, float %condval_1.0.3.3), !dbg !256
  %359 = bitcast float %358 to i32, !dbg !258
  %360 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !260
  %361 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %360) #11, !dbg !263
  %xor.i.i1271.3 = xor i32 %361, 32, !dbg !264
  %362 = and i32 %361, -64, !dbg !265
  %and.i.i1272.3 = add nsw i32 %362, 64, !dbg !265
  %cmp.not.i.i1273.3 = icmp slt i32 %xor.i.i1271.3, %and.i.i1272.3, !dbg !266
  %cond.i.i1274.3 = select i1 %cmp.not.i.i1273.3, i32 %xor.i.i1271.3, i32 %361, !dbg !267
  %shl.i.i1275.3 = shl i32 %cond.i.i1274.3, 2, !dbg !268
  %363 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1275.3, i32 %359), !dbg !269
  %364 = bitcast i32 %363 to float, !dbg !270
  %365 = tail call contract noundef float @llvm.maxnum.f32(float %358, float %364), !dbg !271
  %366 = bitcast float %365 to i32, !dbg !273
  %367 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !275
  %368 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %367) #11, !dbg !278
  %xor.i.i1276.3 = xor i32 %368, 16, !dbg !279
  %369 = and i32 %368, -64, !dbg !280
  %and.i.i1277.3 = add nsw i32 %369, 64, !dbg !280
  %cmp.not.i.i1278.3 = icmp slt i32 %xor.i.i1276.3, %and.i.i1277.3, !dbg !281
  %cond.i.i1279.3 = select i1 %cmp.not.i.i1278.3, i32 %xor.i.i1276.3, i32 %368, !dbg !282
  %shl.i.i1280.3 = shl i32 %cond.i.i1279.3, 2, !dbg !283
  %370 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1280.3, i32 %366), !dbg !284
  %371 = bitcast i32 %370 to float, !dbg !285
  %372 = tail call contract noundef float @llvm.maxnum.f32(float %365, float %371), !dbg !286
  %373 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.2.2, float %372), !dbg !288
  %sub651.3 = fsub contract float %maximum.sroa.0.2.2, %373, !dbg !290
  %mul652.3 = fmul contract float %sub651.3, 0x3FC7154760000000, !dbg !291
  %cmp.i.i1281.3 = fcmp contract olt float %mul652.3, -1.260000e+02, !dbg !292
  %cond.i.i1282.3 = select contract i1 %cmp.i.i1281.3, float 6.400000e+01, float 0.000000e+00, !dbg !292
  %add.i.i1283.3 = fadd contract float %mul652.3, %cond.i.i1282.3, !dbg !292
  %374 = tail call contract float @llvm.exp2.f32(float %add.i.i1283.3), !dbg !292
  %cond2.i.i1284.3 = select contract i1 %cmp.i.i1281.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !292
  %mul.i.i1285.3 = fmul contract float %cond2.i.i1284.3, %374, !dbg !292
  %numerator.sroa.0.0.vec.extract2917 = extractelement <4 x float> %numerator.sroa.0.3, i64 0, !dbg !294
  %numerator.sroa.0.4.vec.extract2950 = extractelement <4 x float> %numerator.sroa.0.3, i64 1, !dbg !294
  %numerator.sroa.0.8.vec.extract2983 = extractelement <4 x float> %numerator.sroa.0.3, i64 2, !dbg !294
  %numerator.sroa.0.12.vec.extract3016 = extractelement <4 x float> %numerator.sroa.0.3, i64 3, !dbg !294
  %mul670.31529 = fmul contract float %mul.i.i1285.3, %numerator.sroa.0.0.vec.extract2917, !dbg !295
  %mul674.31530 = fmul contract float %mul.i.i1285.3, %numerator.sroa.0.4.vec.extract2950, !dbg !296
  %mul678.31531 = fmul contract float %mul.i.i1285.3, %numerator.sroa.0.8.vec.extract2983, !dbg !297
  %mul682.31532 = fmul contract float %mul.i.i1285.3, %numerator.sroa.0.12.vec.extract3016, !dbg !298
  %numerator.sroa.0.0.vec.insert2919 = insertelement <4 x float> poison, float %mul670.31529, i64 0, !dbg !299
  %numerator.sroa.0.4.vec.insert2952 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2919, float %mul674.31530, i64 1, !dbg !299
  %numerator.sroa.0.8.vec.insert2985 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2952, float %mul678.31531, i64 2, !dbg !299
  %numerator.sroa.0.12.vec.insert3018 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2985, float %mul682.31532, i64 3, !dbg !299
  %numerator.sroa.90.16.vec.extract3057 = extractelement <4 x float> %numerator.sroa.90.3, i64 0, !dbg !294
  %numerator.sroa.90.20.vec.extract3090 = extractelement <4 x float> %numerator.sroa.90.3, i64 1, !dbg !294
  %numerator.sroa.90.24.vec.extract3123 = extractelement <4 x float> %numerator.sroa.90.3, i64 2, !dbg !294
  %numerator.sroa.90.28.vec.extract3156 = extractelement <4 x float> %numerator.sroa.90.3, i64 3, !dbg !294
  %mul670.1.3 = fmul contract float %mul.i.i1285.3, %numerator.sroa.90.16.vec.extract3057, !dbg !295
  %mul674.1.3 = fmul contract float %mul.i.i1285.3, %numerator.sroa.90.20.vec.extract3090, !dbg !296
  %mul678.1.3 = fmul contract float %mul.i.i1285.3, %numerator.sroa.90.24.vec.extract3123, !dbg !297
  %mul682.1.3 = fmul contract float %mul.i.i1285.3, %numerator.sroa.90.28.vec.extract3156, !dbg !298
  %numerator.sroa.90.16.vec.insert3059 = insertelement <4 x float> poison, float %mul670.1.3, i64 0, !dbg !299
  %numerator.sroa.90.20.vec.insert3092 = insertelement <4 x float> %numerator.sroa.90.16.vec.insert3059, float %mul674.1.3, i64 1, !dbg !299
  %numerator.sroa.90.24.vec.insert3125 = insertelement <4 x float> %numerator.sroa.90.20.vec.insert3092, float %mul678.1.3, i64 2, !dbg !299
  %numerator.sroa.90.28.vec.insert3158 = insertelement <4 x float> %numerator.sroa.90.24.vec.insert3125, float %mul682.1.3, i64 3, !dbg !299
  %numerator.sroa.178.32.vec.extract3197 = extractelement <4 x float> %numerator.sroa.178.3, i64 0, !dbg !294
  %numerator.sroa.178.36.vec.extract3230 = extractelement <4 x float> %numerator.sroa.178.3, i64 1, !dbg !294
  %numerator.sroa.178.40.vec.extract3263 = extractelement <4 x float> %numerator.sroa.178.3, i64 2, !dbg !294
  %numerator.sroa.178.44.vec.extract3296 = extractelement <4 x float> %numerator.sroa.178.3, i64 3, !dbg !294
  %mul670.2.3 = fmul contract float %mul.i.i1285.3, %numerator.sroa.178.32.vec.extract3197, !dbg !295
  %mul674.2.3 = fmul contract float %mul.i.i1285.3, %numerator.sroa.178.36.vec.extract3230, !dbg !296
  %mul678.2.3 = fmul contract float %mul.i.i1285.3, %numerator.sroa.178.40.vec.extract3263, !dbg !297
  %mul682.2.3 = fmul contract float %mul.i.i1285.3, %numerator.sroa.178.44.vec.extract3296, !dbg !298
  %numerator.sroa.178.32.vec.insert3199 = insertelement <4 x float> poison, float %mul670.2.3, i64 0, !dbg !299
  %numerator.sroa.178.36.vec.insert3232 = insertelement <4 x float> %numerator.sroa.178.32.vec.insert3199, float %mul674.2.3, i64 1, !dbg !299
  %numerator.sroa.178.40.vec.insert3265 = insertelement <4 x float> %numerator.sroa.178.36.vec.insert3232, float %mul678.2.3, i64 2, !dbg !299
  %numerator.sroa.178.44.vec.insert3298 = insertelement <4 x float> %numerator.sroa.178.40.vec.insert3265, float %mul682.2.3, i64 3, !dbg !299
  %numerator.sroa.266.48.vec.extract3337 = extractelement <4 x float> %numerator.sroa.266.3, i64 0, !dbg !294
  %numerator.sroa.266.52.vec.extract3370 = extractelement <4 x float> %numerator.sroa.266.3, i64 1, !dbg !294
  %numerator.sroa.266.56.vec.extract3403 = extractelement <4 x float> %numerator.sroa.266.3, i64 2, !dbg !294
  %numerator.sroa.266.60.vec.extract3436 = extractelement <4 x float> %numerator.sroa.266.3, i64 3, !dbg !294
  %mul670.3.3 = fmul contract float %mul.i.i1285.3, %numerator.sroa.266.48.vec.extract3337, !dbg !295
  %mul674.3.3 = fmul contract float %mul.i.i1285.3, %numerator.sroa.266.52.vec.extract3370, !dbg !296
  %mul678.3.3 = fmul contract float %mul.i.i1285.3, %numerator.sroa.266.56.vec.extract3403, !dbg !297
  %mul682.3.3 = fmul contract float %mul.i.i1285.3, %numerator.sroa.266.60.vec.extract3436, !dbg !298
  %numerator.sroa.266.48.vec.insert3339 = insertelement <4 x float> poison, float %mul670.3.3, i64 0, !dbg !299
  %numerator.sroa.266.52.vec.insert3372 = insertelement <4 x float> %numerator.sroa.266.48.vec.insert3339, float %mul674.3.3, i64 1, !dbg !299
  %numerator.sroa.266.56.vec.insert3405 = insertelement <4 x float> %numerator.sroa.266.52.vec.insert3372, float %mul678.3.3, i64 2, !dbg !299
  %numerator.sroa.266.60.vec.insert3438 = insertelement <4 x float> %numerator.sroa.266.56.vec.insert3405, float %mul682.3.3, i64 3, !dbg !299
  %sub706.3 = fsub contract float %spec.select3592, %373, !dbg !300
  %sub710.3 = fsub contract float %condval_1.0.1.3, %373, !dbg !301
  %sub714.3 = fsub contract float %condval_1.0.2.3, %373, !dbg !302
  %sub718.3 = fsub contract float %condval_1.0.3.3, %373, !dbg !303
  %mul723.3 = fmul contract float %sub706.3, 0x3FC7154760000000, !dbg !304
  %mul727.3 = fmul contract float %sub710.3, 0x3FC7154760000000, !dbg !305
  %mul731.3 = fmul contract float %sub714.3, 0x3FC7154760000000, !dbg !306
  %mul735.3 = fmul contract float %sub718.3, 0x3FC7154760000000, !dbg !307
  %add740.3 = fadd contract float %mul723.3, 8.000000e+00, !dbg !308
  %add744.3 = fadd contract float %mul727.3, 8.000000e+00, !dbg !309
  %add748.3 = fadd contract float %mul731.3, 8.000000e+00, !dbg !310
  %add752.3 = fadd contract float %mul735.3, 8.000000e+00, !dbg !311
  %cmp.i.i1290.3 = fcmp contract olt float %add740.3, -1.260000e+02, !dbg !312
  %cond.i.i1291.3 = select contract i1 %cmp.i.i1290.3, float 6.400000e+01, float 0.000000e+00, !dbg !312
  %add.i.i1292.3 = fadd contract float %add740.3, %cond.i.i1291.3, !dbg !312
  %375 = tail call contract float @llvm.exp2.f32(float %add.i.i1292.3), !dbg !312
  %cond2.i.i1293.3 = select contract i1 %cmp.i.i1290.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !312
  %mul.i.i1294.3 = fmul contract float %cond2.i.i1293.3, %375, !dbg !312
  %cmp.i.i1295.3 = fcmp contract olt float %add744.3, -1.260000e+02, !dbg !314
  %cond.i.i1296.3 = select contract i1 %cmp.i.i1295.3, float 6.400000e+01, float 0.000000e+00, !dbg !314
  %add.i.i1297.3 = fadd contract float %add744.3, %cond.i.i1296.3, !dbg !314
  %376 = tail call contract float @llvm.exp2.f32(float %add.i.i1297.3), !dbg !314
  %cond2.i.i1298.3 = select contract i1 %cmp.i.i1295.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !314
  %mul.i.i1299.3 = fmul contract float %cond2.i.i1298.3, %376, !dbg !314
  %cmp.i.i1300.3 = fcmp contract olt float %add748.3, -1.260000e+02, !dbg !316
  %cond.i.i1301.3 = select contract i1 %cmp.i.i1300.3, float 6.400000e+01, float 0.000000e+00, !dbg !316
  %add.i.i1302.3 = fadd contract float %add748.3, %cond.i.i1301.3, !dbg !316
  %377 = tail call contract float @llvm.exp2.f32(float %add.i.i1302.3), !dbg !316
  %cond2.i.i1303.3 = select contract i1 %cmp.i.i1300.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !316
  %mul.i.i1304.3 = fmul contract float %cond2.i.i1303.3, %377, !dbg !316
  %cmp.i.i1305.3 = fcmp contract olt float %add752.3, -1.260000e+02, !dbg !318
  %cond.i.i1306.3 = select contract i1 %cmp.i.i1305.3, float 6.400000e+01, float 0.000000e+00, !dbg !318
  %add.i.i1307.3 = fadd contract float %add752.3, %cond.i.i1306.3, !dbg !318
  %378 = tail call contract float @llvm.exp2.f32(float %add.i.i1307.3), !dbg !318
  %cond2.i.i1308.3 = select contract i1 %cmp.i.i1305.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !318
  %mul.i.i1309.3 = fmul contract float %cond2.i.i1308.3, %378, !dbg !318
  %379 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !320
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !320, !noalias !324
  %380 = fptrunc float %mul.i.i1294.3 to half, !dbg !320
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %379), !dbg !320, !noalias !324
  %381 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !329
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !329, !noalias !324
  %382 = fptrunc float %mul.i.i1299.3 to half, !dbg !329
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %381), !dbg !329, !noalias !324
  %383 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !331
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !331, !noalias !335
  %384 = fptrunc float %mul.i.i1304.3 to half, !dbg !331
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %383), !dbg !331, !noalias !335
  %385 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !340
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !340, !noalias !335
  %386 = fptrunc float %mul.i.i1309.3 to half, !dbg !340
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %385), !dbg !340, !noalias !335
  %387 = insertelement <4 x half> poison, half %380, i64 0, !dbg !342
  %388 = insertelement <4 x half> %387, half %382, i64 1, !dbg !342
  %389 = insertelement <4 x half> %388, half %384, i64 2, !dbg !342
  %390 = insertelement <4 x half> %389, half %386, i64 3, !dbg !342
  %conv.i.i1326.31534 = fpext half %380 to float, !dbg !343
  %add787.31535 = fadd contract float %conv.i.i1326.31534, 0.000000e+00, !dbg !346
  %conv.i.i1326.1.3 = fpext half %382 to float, !dbg !343
  %add787.1.3 = fadd contract float %add787.31535, %conv.i.i1326.1.3, !dbg !346
  %conv.i.i1326.2.3 = fpext half %384 to float, !dbg !343
  %add787.2.3 = fadd contract float %add787.1.3, %conv.i.i1326.2.3, !dbg !346
  %conv.i.i1326.3.3 = fpext half %386 to float, !dbg !343
  %add787.3.3 = fadd contract float %add787.2.3, %conv.i.i1326.3.3, !dbg !346
  %391 = bitcast float %add787.3.3 to i32, !dbg !347
  %392 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !349
  %393 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %392) #11, !dbg !352
  %xor.i.i1316.3 = xor i32 %393, 32, !dbg !353
  %394 = and i32 %393, -64, !dbg !354
  %and.i.i1317.3 = add nsw i32 %394, 64, !dbg !354
  %cmp.not.i.i1318.3 = icmp slt i32 %xor.i.i1316.3, %and.i.i1317.3, !dbg !355
  %cond.i.i1319.3 = select i1 %cmp.not.i.i1318.3, i32 %xor.i.i1316.3, i32 %393, !dbg !356
  %shl.i.i1320.3 = shl i32 %cond.i.i1319.3, 2, !dbg !357
  %395 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1320.3, i32 %391), !dbg !358
  %396 = bitcast i32 %395 to float, !dbg !359
  %add795.3 = fadd contract float %add787.3.3, %396, !dbg !360
  %397 = bitcast float %add795.3 to i32, !dbg !361
  %398 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !363
  %399 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %398) #11, !dbg !366
  %xor.i.i1321.3 = xor i32 %399, 16, !dbg !367
  %400 = and i32 %399, -64, !dbg !368
  %and.i.i1322.3 = add nsw i32 %400, 64, !dbg !368
  %cmp.not.i.i1323.3 = icmp slt i32 %xor.i.i1321.3, %and.i.i1322.3, !dbg !369
  %cond.i.i1324.3 = select i1 %cmp.not.i.i1323.3, i32 %xor.i.i1321.3, i32 %399, !dbg !370
  %shl.i.i1325.3 = shl i32 %cond.i.i1324.3, 2, !dbg !371
  %401 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1325.3, i32 %397), !dbg !372
  %402 = bitcast i32 %401 to float, !dbg !373
  %add800.3 = fadd contract float %add795.3, %402, !dbg !374
  fence syncscope("warp") release, !dbg !375
  tail call void @llvm.mxc.barrier.warp(), !dbg !378
  fence syncscope("warp") acquire, !dbg !379
  %403 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add820.pre-phi, !dbg !380
  %404 = getelementptr inbounds i8, ptr addrspace(4) %403, i64 %.idx.3, !dbg !380
  %405 = load i64, ptr addrspace(4) %404, align 8, !dbg !381
  %add.ptr829.1.3 = getelementptr inbounds i8, ptr addrspace(4) %404, i64 128, !dbg !380
  %406 = load i64, ptr addrspace(4) %add.ptr829.1.3, align 8, !dbg !381
  %add.ptr829.2.3 = getelementptr inbounds i8, ptr addrspace(4) %404, i64 256, !dbg !380
  %407 = load i64, ptr addrspace(4) %add.ptr829.2.3, align 8, !dbg !381
  %add.ptr829.3.3 = getelementptr inbounds i8, ptr addrspace(4) %404, i64 384, !dbg !380
  %408 = load i64, ptr addrspace(4) %add.ptr829.3.3, align 8, !dbg !381
  %mul693.3 = fmul contract float %denominator.sroa.0.2.2, %mul.i.i1285.3, !dbg !382
  %409 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul859.pre-phi, !dbg !383
  %add.ptr871.idx.31543 = shl nuw nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.31544 = getelementptr inbounds i8, ptr addrspace(3) %409, i32 %add.ptr871.idx.31543, !dbg !383
  %v_column.sroa.130.0.insert.ext2122 = shl i64 %408, 48, !dbg !384
  %v_column.sroa.98.0.insert.ext1967 = shl i64 %407, 32, !dbg !384
  %v_column.sroa.98.0.insert.shift1968 = and i64 %v_column.sroa.98.0.insert.ext1967, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert1970 = or disjoint i64 %v_column.sroa.130.0.insert.ext2122, %v_column.sroa.98.0.insert.shift1968, !dbg !384
  %v_column.sroa.66.0.insert.ext1812 = shl i64 %406, 16, !dbg !384
  %v_column.sroa.66.0.insert.shift1813 = and i64 %v_column.sroa.66.0.insert.ext1812, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1815 = or disjoint i64 %v_column.sroa.98.0.insert.insert1970, %v_column.sroa.66.0.insert.shift1813, !dbg !384
  %v_column.sroa.0.0.insert.ext1673 = and i64 %405, 65535, !dbg !384
  %v_column.sroa.0.0.insert.insert1675 = or disjoint i64 %v_column.sroa.66.0.insert.insert1815, %v_column.sroa.0.0.insert.ext1673, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1675, ptr addrspace(3) %add.ptr871.31544, align 8, !dbg !384
  %v_fetch.sroa.0.2.extract.shift2225 = lshr i64 %405, 16, !dbg !385
  %add860.1.3 = or disjoint i32 %mul859.pre-phi, 256, !dbg !386
  %410 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.1.3, !dbg !383
  %xor867.1.3 = shl nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.idx.1.3 = xor i32 %xor867.1.3, 8, !dbg !383
  %add.ptr871.1.3 = getelementptr inbounds i8, ptr addrspace(3) %410, i32 %add.ptr871.idx.1.3, !dbg !383
  %411 = shl i64 %408, 32, !dbg !384
  %v_column.sroa.130.0.insert.ext2127 = and i64 %411, -281474976710656, !dbg !384
  %412 = shl i64 %407, 16, !dbg !384
  %v_column.sroa.98.0.insert.shift1973 = and i64 %412, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert1975 = or disjoint i64 %v_column.sroa.130.0.insert.ext2127, %v_column.sroa.98.0.insert.shift1973, !dbg !384
  %v_column.sroa.66.0.insert.ext1817 = and i64 %406, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1820 = or disjoint i64 %v_column.sroa.98.0.insert.insert1975, %v_column.sroa.66.0.insert.ext1817, !dbg !384
  %v_column.sroa.0.0.insert.ext1677 = and i64 %v_fetch.sroa.0.2.extract.shift2225, 65535, !dbg !384
  %v_column.sroa.0.0.insert.insert1679 = or disjoint i64 %v_column.sroa.66.0.insert.insert1820, %v_column.sroa.0.0.insert.ext1677, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1679, ptr addrspace(3) %add.ptr871.1.3, align 8, !dbg !384
  %v_fetch.sroa.0.4.extract.shift2246 = lshr i64 %405, 32, !dbg !385
  %add860.2.3 = or disjoint i32 %mul859.pre-phi, 512, !dbg !386
  %413 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.2.3, !dbg !383
  %xor867.2.3 = shl nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.idx.2.3 = xor i32 %xor867.2.3, 16, !dbg !383
  %add.ptr871.2.3 = getelementptr inbounds i8, ptr addrspace(3) %413, i32 %add.ptr871.idx.2.3, !dbg !383
  %414 = shl i64 %408, 16, !dbg !384
  %v_column.sroa.130.0.insert.ext2132 = and i64 %414, -281474976710656, !dbg !384
  %v_column.sroa.98.0.insert.ext1977 = and i64 %407, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert1980 = or disjoint i64 %v_column.sroa.130.0.insert.ext2132, %v_column.sroa.98.0.insert.ext1977, !dbg !384
  %415 = lshr i64 %406, 16, !dbg !384
  %v_column.sroa.66.0.insert.shift1823 = and i64 %415, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1825 = or disjoint i64 %v_column.sroa.98.0.insert.insert1980, %v_column.sroa.66.0.insert.shift1823, !dbg !384
  %v_column.sroa.0.0.insert.ext1681 = and i64 %v_fetch.sroa.0.4.extract.shift2246, 65535, !dbg !384
  %v_column.sroa.0.0.insert.insert1683 = or disjoint i64 %v_column.sroa.66.0.insert.insert1825, %v_column.sroa.0.0.insert.ext1681, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1683, ptr addrspace(3) %add.ptr871.2.3, align 8, !dbg !384
  %v_fetch.sroa.0.6.extract.shift2267 = lshr i64 %405, 48, !dbg !385
  %v_fetch.sroa.122.30.extract.shift2498 = and i64 %408, -281474976710656, !dbg !384
  %add860.3.3 = or disjoint i32 %mul859.pre-phi, 768, !dbg !386
  %416 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.3.3, !dbg !383
  %xor867.3.3 = shl nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.idx.3.3 = xor i32 %xor867.3.3, 24, !dbg !383
  %add.ptr871.3.3 = getelementptr inbounds i8, ptr addrspace(3) %416, i32 %add.ptr871.idx.3.3, !dbg !383
  %417 = lshr i64 %407, 16, !dbg !384
  %v_column.sroa.98.0.insert.shift1983 = and i64 %417, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert1985 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2498, %v_column.sroa.98.0.insert.shift1983, !dbg !384
  %418 = lshr i64 %406, 32, !dbg !384
  %v_column.sroa.66.0.insert.shift1828 = and i64 %418, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1830 = or disjoint i64 %v_column.sroa.98.0.insert.insert1985, %v_column.sroa.66.0.insert.shift1828, !dbg !384
  %v_column.sroa.0.0.insert.insert1687 = or disjoint i64 %v_column.sroa.66.0.insert.insert1830, %v_fetch.sroa.0.6.extract.shift2267, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1687, ptr addrspace(3) %add.ptr871.3.3, align 8, !dbg !384
  fence syncscope("warp") release, !dbg !387
  tail call void @llvm.mxc.barrier.warp(), !dbg !390
  fence syncscope("warp") acquire, !dbg !391
  %add888.31546 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %419 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.31546, !dbg !393
  %add.ptr898.idx.31547 = shl nuw nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.31548 = getelementptr inbounds i8, ptr addrspace(3) %419, i32 %add.ptr898.idx.31547, !dbg !393
  %420 = load <4 x half>, ptr addrspace(3) %add.ptr898.31548, align 8, !dbg !394
  %add883.1.3 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %add888.1.3 = or disjoint i32 %add883.1.3, 64, !dbg !392
  %421 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.1.3, !dbg !393
  %xor894.1.3 = shl nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.idx.1.3 = xor i32 %xor894.1.3, 8, !dbg !393
  %add.ptr898.1.3 = getelementptr inbounds i8, ptr addrspace(3) %421, i32 %add.ptr898.idx.1.3, !dbg !393
  %422 = load <4 x half>, ptr addrspace(3) %add.ptr898.1.3, align 8, !dbg !394
  %add883.2.3 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %add888.2.3 = or disjoint i32 %add883.2.3, 128, !dbg !392
  %423 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.2.3, !dbg !393
  %xor894.2.3 = shl nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.idx.2.3 = xor i32 %xor894.2.3, 16, !dbg !393
  %add.ptr898.2.3 = getelementptr inbounds i8, ptr addrspace(3) %423, i32 %add.ptr898.idx.2.3, !dbg !393
  %424 = load <4 x half>, ptr addrspace(3) %add.ptr898.2.3, align 8, !dbg !394
  %add883.3.3 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %add888.3.3 = or disjoint i32 %add883.3.3, 192, !dbg !392
  %425 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.3.3, !dbg !393
  %xor894.3.3 = shl nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.idx.3.3 = xor i32 %xor894.3.3, 24, !dbg !393
  %add.ptr898.3.3 = getelementptr inbounds i8, ptr addrspace(3) %425, i32 %add.ptr898.idx.3.3, !dbg !393
  %426 = load <4 x half>, ptr addrspace(3) %add.ptr898.3.3, align 8, !dbg !394
  %427 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %420, <4 x half> %390, <4 x float> %numerator.sroa.0.12.vec.insert3018), !dbg !395
  %428 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %422, <4 x half> %390, <4 x float> %numerator.sroa.90.28.vec.insert3158), !dbg !395
  %429 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %424, <4 x half> %390, <4 x float> %numerator.sroa.178.44.vec.insert3298), !dbg !395
  %430 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %426, <4 x half> %390, <4 x float> %numerator.sroa.266.60.vec.insert3438), !dbg !395
  %add804.3 = fadd contract float %mul693.3, %add800.3, !dbg !396
  br label %if.end924.3, !dbg !397

if.end924.3:                                      ; preds = %if.then493.3, %if.end924.2
  %numerator.sroa.266.4 = phi <4 x float> [ %numerator.sroa.266.3, %if.end924.2 ], [ %430, %if.then493.3 ], !dbg !230
  %numerator.sroa.178.4 = phi <4 x float> [ %numerator.sroa.178.3, %if.end924.2 ], [ %429, %if.then493.3 ], !dbg !230
  %numerator.sroa.90.4 = phi <4 x float> [ %numerator.sroa.90.3, %if.end924.2 ], [ %428, %if.then493.3 ], !dbg !230
  %numerator.sroa.0.4 = phi <4 x float> [ %numerator.sroa.0.3, %if.end924.2 ], [ %427, %if.then493.3 ], !dbg !230
  %maximum.sroa.0.2.3 = phi float [ %maximum.sroa.0.2.2, %if.end924.2 ], [ %373, %if.then493.3 ], !dbg !230
  %denominator.sroa.0.2.3 = phi float [ %denominator.sroa.0.2.2, %if.end924.2 ], [ %add804.3, %if.then493.3 ], !dbg !230
  %431 = or disjoint i64 %idxprom, 5, !dbg !232
  %arrayidx487.4 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %431, !dbg !233
  %432 = load i32, ptr addrspace(1) %arrayidx487.4, align 4, !dbg !233, !tbaa !30
  %mul488.4 = shl nsw i32 %432, 4, !dbg !234
  %cmp489.4 = icmp slt i32 %432, 0, !dbg !235
  %cmp492.not.4 = icmp sgt i32 %mul488.4, %1
  %or.cond1345.4 = select i1 %cmp489.4, i1 true, i1 %cmp492.not.4, !dbg !236
  br i1 %or.cond1345.4, label %if.end924.4, label %if.then493.4, !dbg !236

if.then493.4:                                     ; preds = %if.end924.3
  fence syncscope("warp") release, !dbg !237
  tail call void @llvm.mxc.barrier.warp(), !dbg !240
  fence syncscope("warp") acquire, !dbg !241
  %conv504.4 = zext nneg i32 %mul488.4 to i64
  %.idx.4 = shl nuw nsw i64 %conv504.4, 7
  %gep.4 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1393, i64 %.idx.4, !dbg !242
  %.idx1403.4 = shl nuw nsw i64 %conv499.pre-phi, 17, !dbg !243
  %433 = getelementptr inbounds i8, ptr addrspace(4) %gep.4, i64 %.idx1403.4, !dbg !243
  %qk_fetch.sroa.0.0.copyload3517 = load i64, ptr addrspace(4) %433, align 16, !dbg !244
  %qk_fetch.sroa.38.0..sroa_idx3538 = getelementptr inbounds i8, ptr addrspace(4) %433, i64 8, !dbg !244
  %qk_fetch.sroa.38.0.copyload3539 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx3538, align 8, !dbg !244
  store i64 %qk_fetch.sroa.0.0.copyload3517, ptr addrspace(3) %add.ptr39, align 8, !dbg !245
  store i64 %qk_fetch.sroa.38.0.copyload3539, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !245
  %gep1374.1.4 = getelementptr inbounds i8, ptr addrspace(4) %433, i64 1024, !dbg !243
  %qk_fetch.sroa.0.0.copyload3518 = load i64, ptr addrspace(4) %gep1374.1.4, align 16, !dbg !244
  %qk_fetch.sroa.38.0.gep1374.1.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %433, i64 1032, !dbg !244
  %qk_fetch.sroa.38.0.copyload3540 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep1374.1.4.sroa_idx, align 8, !dbg !244
  store i64 %qk_fetch.sroa.0.0.copyload3518, ptr addrspace(3) %add.ptr39.11412, align 8, !dbg !245
  store i64 %qk_fetch.sroa.38.0.copyload3540, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !245
  fence syncscope("warp") release, !dbg !246
  tail call void @llvm.mxc.barrier.warp(), !dbg !249
  fence syncscope("warp") acquire, !dbg !250
  %k_local.sroa.0.0.copyload1205.4 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !251
  %434 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.4, <4 x half> %9, <4 x float> zeroinitializer), !dbg !252
  %k_local.sroa.0.0.copyload1205.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !251
  %435 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.1.4, <4 x half> %10, <4 x float> %434), !dbg !252
  %k_local.sroa.0.0.copyload1205.2.4 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !251
  %436 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.2.4, <4 x half> %11, <4 x float> %435), !dbg !252
  %k_local.sroa.0.0.copyload1205.3.4 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !251
  %437 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.3.4, <4 x half> %12, <4 x float> %436), !dbg !252
  %add604.4 = add nuw nsw i32 %mul488.4, %mul603.pre-phi
  %cmp607.not.4 = icmp sgt i32 %add604.4, %1, !dbg !253
  %scores.sroa.0.0.vec.extract2639 = extractelement <4 x float> %437, i64 0
  %spec.select3593 = select i1 %cmp607.not.4, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2639, !dbg !254
  %cmp607.not.1.4.not = icmp slt i32 %add604.4, %1, !dbg !253
  %scores.sroa.0.4.vec.extract2726 = extractelement <4 x float> %437, i64 1, !dbg !254
  %condval_1.0.1.4 = select i1 %cmp607.not.1.4.not, float %scores.sroa.0.4.vec.extract2726, float 0xFFF0000000000000, !dbg !254
  %add605.2.4 = or disjoint i32 %add604.4, 2, !dbg !255
  %cmp607.not.2.4 = icmp sgt i32 %add605.2.4, %1, !dbg !253
  %scores.sroa.0.8.vec.extract2803 = extractelement <4 x float> %437, i64 2, !dbg !254
  %condval_1.0.2.4 = select i1 %cmp607.not.2.4, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2803, !dbg !254
  %add605.3.4 = or disjoint i32 %add604.4, 3, !dbg !255
  %cmp607.not.3.4 = icmp sgt i32 %add605.3.4, %1, !dbg !253
  %scores.sroa.0.12.vec.extract2880 = extractelement <4 x float> %437, i64 3, !dbg !254
  %condval_1.0.3.4 = select i1 %cmp607.not.3.4, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2880, !dbg !254
  %438 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3593, float 0xFFF0000000000000), !dbg !256
  %439 = tail call contract noundef float @llvm.maxnum.f32(float %438, float %condval_1.0.1.4), !dbg !256
  %440 = tail call contract noundef float @llvm.maxnum.f32(float %439, float %condval_1.0.2.4), !dbg !256
  %441 = tail call contract noundef float @llvm.maxnum.f32(float %440, float %condval_1.0.3.4), !dbg !256
  %442 = bitcast float %441 to i32, !dbg !258
  %443 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !260
  %444 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %443) #11, !dbg !263
  %xor.i.i1271.4 = xor i32 %444, 32, !dbg !264
  %445 = and i32 %444, -64, !dbg !265
  %and.i.i1272.4 = add nsw i32 %445, 64, !dbg !265
  %cmp.not.i.i1273.4 = icmp slt i32 %xor.i.i1271.4, %and.i.i1272.4, !dbg !266
  %cond.i.i1274.4 = select i1 %cmp.not.i.i1273.4, i32 %xor.i.i1271.4, i32 %444, !dbg !267
  %shl.i.i1275.4 = shl i32 %cond.i.i1274.4, 2, !dbg !268
  %446 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1275.4, i32 %442), !dbg !269
  %447 = bitcast i32 %446 to float, !dbg !270
  %448 = tail call contract noundef float @llvm.maxnum.f32(float %441, float %447), !dbg !271
  %449 = bitcast float %448 to i32, !dbg !273
  %450 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !275
  %451 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %450) #11, !dbg !278
  %xor.i.i1276.4 = xor i32 %451, 16, !dbg !279
  %452 = and i32 %451, -64, !dbg !280
  %and.i.i1277.4 = add nsw i32 %452, 64, !dbg !280
  %cmp.not.i.i1278.4 = icmp slt i32 %xor.i.i1276.4, %and.i.i1277.4, !dbg !281
  %cond.i.i1279.4 = select i1 %cmp.not.i.i1278.4, i32 %xor.i.i1276.4, i32 %451, !dbg !282
  %shl.i.i1280.4 = shl i32 %cond.i.i1279.4, 2, !dbg !283
  %453 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1280.4, i32 %449), !dbg !284
  %454 = bitcast i32 %453 to float, !dbg !285
  %455 = tail call contract noundef float @llvm.maxnum.f32(float %448, float %454), !dbg !286
  %456 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.2.3, float %455), !dbg !288
  %sub651.4 = fsub contract float %maximum.sroa.0.2.3, %456, !dbg !290
  %mul652.4 = fmul contract float %sub651.4, 0x3FC7154760000000, !dbg !291
  %cmp.i.i1281.4 = fcmp contract olt float %mul652.4, -1.260000e+02, !dbg !292
  %cond.i.i1282.4 = select contract i1 %cmp.i.i1281.4, float 6.400000e+01, float 0.000000e+00, !dbg !292
  %add.i.i1283.4 = fadd contract float %mul652.4, %cond.i.i1282.4, !dbg !292
  %457 = tail call contract float @llvm.exp2.f32(float %add.i.i1283.4), !dbg !292
  %cond2.i.i1284.4 = select contract i1 %cmp.i.i1281.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !292
  %mul.i.i1285.4 = fmul contract float %cond2.i.i1284.4, %457, !dbg !292
  %numerator.sroa.0.0.vec.extract2921 = extractelement <4 x float> %numerator.sroa.0.4, i64 0, !dbg !294
  %numerator.sroa.0.4.vec.extract2954 = extractelement <4 x float> %numerator.sroa.0.4, i64 1, !dbg !294
  %numerator.sroa.0.8.vec.extract2987 = extractelement <4 x float> %numerator.sroa.0.4, i64 2, !dbg !294
  %numerator.sroa.0.12.vec.extract3020 = extractelement <4 x float> %numerator.sroa.0.4, i64 3, !dbg !294
  %mul670.4 = fmul contract float %mul.i.i1285.4, %numerator.sroa.0.0.vec.extract2921, !dbg !295
  %mul674.4 = fmul contract float %mul.i.i1285.4, %numerator.sroa.0.4.vec.extract2954, !dbg !296
  %mul678.4 = fmul contract float %mul.i.i1285.4, %numerator.sroa.0.8.vec.extract2987, !dbg !297
  %mul682.4 = fmul contract float %mul.i.i1285.4, %numerator.sroa.0.12.vec.extract3020, !dbg !298
  %numerator.sroa.0.0.vec.insert2923 = insertelement <4 x float> poison, float %mul670.4, i64 0, !dbg !299
  %numerator.sroa.0.4.vec.insert2956 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2923, float %mul674.4, i64 1, !dbg !299
  %numerator.sroa.0.8.vec.insert2989 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2956, float %mul678.4, i64 2, !dbg !299
  %numerator.sroa.0.12.vec.insert3022 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2989, float %mul682.4, i64 3, !dbg !299
  %numerator.sroa.90.16.vec.extract3061 = extractelement <4 x float> %numerator.sroa.90.4, i64 0, !dbg !294
  %numerator.sroa.90.20.vec.extract3094 = extractelement <4 x float> %numerator.sroa.90.4, i64 1, !dbg !294
  %numerator.sroa.90.24.vec.extract3127 = extractelement <4 x float> %numerator.sroa.90.4, i64 2, !dbg !294
  %numerator.sroa.90.28.vec.extract3160 = extractelement <4 x float> %numerator.sroa.90.4, i64 3, !dbg !294
  %mul670.1.4 = fmul contract float %mul.i.i1285.4, %numerator.sroa.90.16.vec.extract3061, !dbg !295
  %mul674.1.4 = fmul contract float %mul.i.i1285.4, %numerator.sroa.90.20.vec.extract3094, !dbg !296
  %mul678.1.4 = fmul contract float %mul.i.i1285.4, %numerator.sroa.90.24.vec.extract3127, !dbg !297
  %mul682.1.4 = fmul contract float %mul.i.i1285.4, %numerator.sroa.90.28.vec.extract3160, !dbg !298
  %numerator.sroa.90.16.vec.insert3063 = insertelement <4 x float> poison, float %mul670.1.4, i64 0, !dbg !299
  %numerator.sroa.90.20.vec.insert3096 = insertelement <4 x float> %numerator.sroa.90.16.vec.insert3063, float %mul674.1.4, i64 1, !dbg !299
  %numerator.sroa.90.24.vec.insert3129 = insertelement <4 x float> %numerator.sroa.90.20.vec.insert3096, float %mul678.1.4, i64 2, !dbg !299
  %numerator.sroa.90.28.vec.insert3162 = insertelement <4 x float> %numerator.sroa.90.24.vec.insert3129, float %mul682.1.4, i64 3, !dbg !299
  %numerator.sroa.178.32.vec.extract3201 = extractelement <4 x float> %numerator.sroa.178.4, i64 0, !dbg !294
  %numerator.sroa.178.36.vec.extract3234 = extractelement <4 x float> %numerator.sroa.178.4, i64 1, !dbg !294
  %numerator.sroa.178.40.vec.extract3267 = extractelement <4 x float> %numerator.sroa.178.4, i64 2, !dbg !294
  %numerator.sroa.178.44.vec.extract3300 = extractelement <4 x float> %numerator.sroa.178.4, i64 3, !dbg !294
  %mul670.2.4 = fmul contract float %mul.i.i1285.4, %numerator.sroa.178.32.vec.extract3201, !dbg !295
  %mul674.2.4 = fmul contract float %mul.i.i1285.4, %numerator.sroa.178.36.vec.extract3234, !dbg !296
  %mul678.2.4 = fmul contract float %mul.i.i1285.4, %numerator.sroa.178.40.vec.extract3267, !dbg !297
  %mul682.2.4 = fmul contract float %mul.i.i1285.4, %numerator.sroa.178.44.vec.extract3300, !dbg !298
  %numerator.sroa.178.32.vec.insert3203 = insertelement <4 x float> poison, float %mul670.2.4, i64 0, !dbg !299
  %numerator.sroa.178.36.vec.insert3236 = insertelement <4 x float> %numerator.sroa.178.32.vec.insert3203, float %mul674.2.4, i64 1, !dbg !299
  %numerator.sroa.178.40.vec.insert3269 = insertelement <4 x float> %numerator.sroa.178.36.vec.insert3236, float %mul678.2.4, i64 2, !dbg !299
  %numerator.sroa.178.44.vec.insert3302 = insertelement <4 x float> %numerator.sroa.178.40.vec.insert3269, float %mul682.2.4, i64 3, !dbg !299
  %numerator.sroa.266.48.vec.extract3341 = extractelement <4 x float> %numerator.sroa.266.4, i64 0, !dbg !294
  %numerator.sroa.266.52.vec.extract3374 = extractelement <4 x float> %numerator.sroa.266.4, i64 1, !dbg !294
  %numerator.sroa.266.56.vec.extract3407 = extractelement <4 x float> %numerator.sroa.266.4, i64 2, !dbg !294
  %numerator.sroa.266.60.vec.extract3440 = extractelement <4 x float> %numerator.sroa.266.4, i64 3, !dbg !294
  %mul670.3.4 = fmul contract float %mul.i.i1285.4, %numerator.sroa.266.48.vec.extract3341, !dbg !295
  %mul674.3.4 = fmul contract float %mul.i.i1285.4, %numerator.sroa.266.52.vec.extract3374, !dbg !296
  %mul678.3.4 = fmul contract float %mul.i.i1285.4, %numerator.sroa.266.56.vec.extract3407, !dbg !297
  %mul682.3.4 = fmul contract float %mul.i.i1285.4, %numerator.sroa.266.60.vec.extract3440, !dbg !298
  %numerator.sroa.266.48.vec.insert3343 = insertelement <4 x float> poison, float %mul670.3.4, i64 0, !dbg !299
  %numerator.sroa.266.52.vec.insert3376 = insertelement <4 x float> %numerator.sroa.266.48.vec.insert3343, float %mul674.3.4, i64 1, !dbg !299
  %numerator.sroa.266.56.vec.insert3409 = insertelement <4 x float> %numerator.sroa.266.52.vec.insert3376, float %mul678.3.4, i64 2, !dbg !299
  %numerator.sroa.266.60.vec.insert3442 = insertelement <4 x float> %numerator.sroa.266.56.vec.insert3409, float %mul682.3.4, i64 3, !dbg !299
  %sub706.4 = fsub contract float %spec.select3593, %456, !dbg !300
  %sub710.4 = fsub contract float %condval_1.0.1.4, %456, !dbg !301
  %sub714.4 = fsub contract float %condval_1.0.2.4, %456, !dbg !302
  %sub718.4 = fsub contract float %condval_1.0.3.4, %456, !dbg !303
  %mul723.4 = fmul contract float %sub706.4, 0x3FC7154760000000, !dbg !304
  %mul727.4 = fmul contract float %sub710.4, 0x3FC7154760000000, !dbg !305
  %mul731.4 = fmul contract float %sub714.4, 0x3FC7154760000000, !dbg !306
  %mul735.4 = fmul contract float %sub718.4, 0x3FC7154760000000, !dbg !307
  %add740.4 = fadd contract float %mul723.4, 8.000000e+00, !dbg !308
  %add744.4 = fadd contract float %mul727.4, 8.000000e+00, !dbg !309
  %add748.4 = fadd contract float %mul731.4, 8.000000e+00, !dbg !310
  %add752.4 = fadd contract float %mul735.4, 8.000000e+00, !dbg !311
  %cmp.i.i1290.4 = fcmp contract olt float %add740.4, -1.260000e+02, !dbg !312
  %cond.i.i1291.4 = select contract i1 %cmp.i.i1290.4, float 6.400000e+01, float 0.000000e+00, !dbg !312
  %add.i.i1292.4 = fadd contract float %add740.4, %cond.i.i1291.4, !dbg !312
  %458 = tail call contract float @llvm.exp2.f32(float %add.i.i1292.4), !dbg !312
  %cond2.i.i1293.4 = select contract i1 %cmp.i.i1290.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !312
  %mul.i.i1294.4 = fmul contract float %cond2.i.i1293.4, %458, !dbg !312
  %cmp.i.i1295.4 = fcmp contract olt float %add744.4, -1.260000e+02, !dbg !314
  %cond.i.i1296.4 = select contract i1 %cmp.i.i1295.4, float 6.400000e+01, float 0.000000e+00, !dbg !314
  %add.i.i1297.4 = fadd contract float %add744.4, %cond.i.i1296.4, !dbg !314
  %459 = tail call contract float @llvm.exp2.f32(float %add.i.i1297.4), !dbg !314
  %cond2.i.i1298.4 = select contract i1 %cmp.i.i1295.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !314
  %mul.i.i1299.4 = fmul contract float %cond2.i.i1298.4, %459, !dbg !314
  %cmp.i.i1300.4 = fcmp contract olt float %add748.4, -1.260000e+02, !dbg !316
  %cond.i.i1301.4 = select contract i1 %cmp.i.i1300.4, float 6.400000e+01, float 0.000000e+00, !dbg !316
  %add.i.i1302.4 = fadd contract float %add748.4, %cond.i.i1301.4, !dbg !316
  %460 = tail call contract float @llvm.exp2.f32(float %add.i.i1302.4), !dbg !316
  %cond2.i.i1303.4 = select contract i1 %cmp.i.i1300.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !316
  %mul.i.i1304.4 = fmul contract float %cond2.i.i1303.4, %460, !dbg !316
  %cmp.i.i1305.4 = fcmp contract olt float %add752.4, -1.260000e+02, !dbg !318
  %cond.i.i1306.4 = select contract i1 %cmp.i.i1305.4, float 6.400000e+01, float 0.000000e+00, !dbg !318
  %add.i.i1307.4 = fadd contract float %add752.4, %cond.i.i1306.4, !dbg !318
  %461 = tail call contract float @llvm.exp2.f32(float %add.i.i1307.4), !dbg !318
  %cond2.i.i1308.4 = select contract i1 %cmp.i.i1305.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !318
  %mul.i.i1309.4 = fmul contract float %cond2.i.i1308.4, %461, !dbg !318
  %462 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !320
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !320, !noalias !324
  %463 = fptrunc float %mul.i.i1294.4 to half, !dbg !320
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %462), !dbg !320, !noalias !324
  %464 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !329
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !329, !noalias !324
  %465 = fptrunc float %mul.i.i1299.4 to half, !dbg !329
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %464), !dbg !329, !noalias !324
  %466 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !331
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !331, !noalias !335
  %467 = fptrunc float %mul.i.i1304.4 to half, !dbg !331
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %466), !dbg !331, !noalias !335
  %468 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !340
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !340, !noalias !335
  %469 = fptrunc float %mul.i.i1309.4 to half, !dbg !340
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %468), !dbg !340, !noalias !335
  %470 = insertelement <4 x half> poison, half %463, i64 0, !dbg !342
  %471 = insertelement <4 x half> %470, half %465, i64 1, !dbg !342
  %472 = insertelement <4 x half> %471, half %467, i64 2, !dbg !342
  %473 = insertelement <4 x half> %472, half %469, i64 3, !dbg !342
  %conv.i.i1326.4 = fpext half %463 to float, !dbg !343
  %add787.4 = fadd contract float %conv.i.i1326.4, 0.000000e+00, !dbg !346
  %conv.i.i1326.1.4 = fpext half %465 to float, !dbg !343
  %add787.1.4 = fadd contract float %add787.4, %conv.i.i1326.1.4, !dbg !346
  %conv.i.i1326.2.4 = fpext half %467 to float, !dbg !343
  %add787.2.4 = fadd contract float %add787.1.4, %conv.i.i1326.2.4, !dbg !346
  %conv.i.i1326.3.4 = fpext half %469 to float, !dbg !343
  %add787.3.4 = fadd contract float %add787.2.4, %conv.i.i1326.3.4, !dbg !346
  %474 = bitcast float %add787.3.4 to i32, !dbg !347
  %475 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !349
  %476 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %475) #11, !dbg !352
  %xor.i.i1316.4 = xor i32 %476, 32, !dbg !353
  %477 = and i32 %476, -64, !dbg !354
  %and.i.i1317.4 = add nsw i32 %477, 64, !dbg !354
  %cmp.not.i.i1318.4 = icmp slt i32 %xor.i.i1316.4, %and.i.i1317.4, !dbg !355
  %cond.i.i1319.4 = select i1 %cmp.not.i.i1318.4, i32 %xor.i.i1316.4, i32 %476, !dbg !356
  %shl.i.i1320.4 = shl i32 %cond.i.i1319.4, 2, !dbg !357
  %478 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1320.4, i32 %474), !dbg !358
  %479 = bitcast i32 %478 to float, !dbg !359
  %add795.4 = fadd contract float %add787.3.4, %479, !dbg !360
  %480 = bitcast float %add795.4 to i32, !dbg !361
  %481 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !363
  %482 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %481) #11, !dbg !366
  %xor.i.i1321.4 = xor i32 %482, 16, !dbg !367
  %483 = and i32 %482, -64, !dbg !368
  %and.i.i1322.4 = add nsw i32 %483, 64, !dbg !368
  %cmp.not.i.i1323.4 = icmp slt i32 %xor.i.i1321.4, %and.i.i1322.4, !dbg !369
  %cond.i.i1324.4 = select i1 %cmp.not.i.i1323.4, i32 %xor.i.i1321.4, i32 %482, !dbg !370
  %shl.i.i1325.4 = shl i32 %cond.i.i1324.4, 2, !dbg !371
  %484 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1325.4, i32 %480), !dbg !372
  %485 = bitcast i32 %484 to float, !dbg !373
  %add800.4 = fadd contract float %add795.4, %485, !dbg !374
  fence syncscope("warp") release, !dbg !375
  tail call void @llvm.mxc.barrier.warp(), !dbg !378
  fence syncscope("warp") acquire, !dbg !379
  %486 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add820.pre-phi, !dbg !380
  %487 = getelementptr inbounds i8, ptr addrspace(4) %486, i64 %.idx.4, !dbg !380
  %488 = load i64, ptr addrspace(4) %487, align 8, !dbg !381
  %add.ptr829.1.4 = getelementptr inbounds i8, ptr addrspace(4) %487, i64 128, !dbg !380
  %489 = load i64, ptr addrspace(4) %add.ptr829.1.4, align 8, !dbg !381
  %add.ptr829.2.4 = getelementptr inbounds i8, ptr addrspace(4) %487, i64 256, !dbg !380
  %490 = load i64, ptr addrspace(4) %add.ptr829.2.4, align 8, !dbg !381
  %add.ptr829.3.4 = getelementptr inbounds i8, ptr addrspace(4) %487, i64 384, !dbg !380
  %491 = load i64, ptr addrspace(4) %add.ptr829.3.4, align 8, !dbg !381
  %mul693.4 = fmul contract float %denominator.sroa.0.2.3, %mul.i.i1285.4, !dbg !382
  %492 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul859.pre-phi, !dbg !383
  %add.ptr871.idx.4 = shl nuw nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.4 = getelementptr inbounds i8, ptr addrspace(3) %492, i32 %add.ptr871.idx.4, !dbg !383
  %v_column.sroa.130.0.insert.ext2142 = shl i64 %491, 48, !dbg !384
  %v_column.sroa.98.0.insert.ext1987 = shl i64 %490, 32, !dbg !384
  %v_column.sroa.98.0.insert.shift1988 = and i64 %v_column.sroa.98.0.insert.ext1987, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert1990 = or disjoint i64 %v_column.sroa.130.0.insert.ext2142, %v_column.sroa.98.0.insert.shift1988, !dbg !384
  %v_column.sroa.66.0.insert.ext1832 = shl i64 %489, 16, !dbg !384
  %v_column.sroa.66.0.insert.shift1833 = and i64 %v_column.sroa.66.0.insert.ext1832, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1835 = or disjoint i64 %v_column.sroa.98.0.insert.insert1990, %v_column.sroa.66.0.insert.shift1833, !dbg !384
  %v_column.sroa.0.0.insert.ext1689 = and i64 %488, 65535, !dbg !384
  %v_column.sroa.0.0.insert.insert1691 = or disjoint i64 %v_column.sroa.66.0.insert.insert1835, %v_column.sroa.0.0.insert.ext1689, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1691, ptr addrspace(3) %add.ptr871.4, align 8, !dbg !384
  %v_fetch.sroa.0.2.extract.shift2228 = lshr i64 %488, 16, !dbg !385
  %add860.1.4 = or disjoint i32 %mul859.pre-phi, 256, !dbg !386
  %493 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.1.4, !dbg !383
  %xor867.1.4 = shl nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.idx.1.4 = xor i32 %xor867.1.4, 8, !dbg !383
  %add.ptr871.1.4 = getelementptr inbounds i8, ptr addrspace(3) %493, i32 %add.ptr871.idx.1.4, !dbg !383
  %494 = shl i64 %491, 32, !dbg !384
  %v_column.sroa.130.0.insert.ext2147 = and i64 %494, -281474976710656, !dbg !384
  %495 = shl i64 %490, 16, !dbg !384
  %v_column.sroa.98.0.insert.shift1993 = and i64 %495, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert1995 = or disjoint i64 %v_column.sroa.130.0.insert.ext2147, %v_column.sroa.98.0.insert.shift1993, !dbg !384
  %v_column.sroa.66.0.insert.ext1837 = and i64 %489, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1840 = or disjoint i64 %v_column.sroa.98.0.insert.insert1995, %v_column.sroa.66.0.insert.ext1837, !dbg !384
  %v_column.sroa.0.0.insert.ext1693 = and i64 %v_fetch.sroa.0.2.extract.shift2228, 65535, !dbg !384
  %v_column.sroa.0.0.insert.insert1695 = or disjoint i64 %v_column.sroa.66.0.insert.insert1840, %v_column.sroa.0.0.insert.ext1693, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1695, ptr addrspace(3) %add.ptr871.1.4, align 8, !dbg !384
  %v_fetch.sroa.0.4.extract.shift2249 = lshr i64 %488, 32, !dbg !385
  %add860.2.4 = or disjoint i32 %mul859.pre-phi, 512, !dbg !386
  %496 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.2.4, !dbg !383
  %xor867.2.4 = shl nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.idx.2.4 = xor i32 %xor867.2.4, 16, !dbg !383
  %add.ptr871.2.4 = getelementptr inbounds i8, ptr addrspace(3) %496, i32 %add.ptr871.idx.2.4, !dbg !383
  %497 = shl i64 %491, 16, !dbg !384
  %v_column.sroa.130.0.insert.ext2152 = and i64 %497, -281474976710656, !dbg !384
  %v_column.sroa.98.0.insert.ext1997 = and i64 %490, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert2000 = or disjoint i64 %v_column.sroa.130.0.insert.ext2152, %v_column.sroa.98.0.insert.ext1997, !dbg !384
  %498 = lshr i64 %489, 16, !dbg !384
  %v_column.sroa.66.0.insert.shift1843 = and i64 %498, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1845 = or disjoint i64 %v_column.sroa.98.0.insert.insert2000, %v_column.sroa.66.0.insert.shift1843, !dbg !384
  %v_column.sroa.0.0.insert.ext1697 = and i64 %v_fetch.sroa.0.4.extract.shift2249, 65535, !dbg !384
  %v_column.sroa.0.0.insert.insert1699 = or disjoint i64 %v_column.sroa.66.0.insert.insert1845, %v_column.sroa.0.0.insert.ext1697, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1699, ptr addrspace(3) %add.ptr871.2.4, align 8, !dbg !384
  %v_fetch.sroa.0.6.extract.shift2270 = lshr i64 %488, 48, !dbg !385
  %v_fetch.sroa.122.30.extract.shift2501 = and i64 %491, -281474976710656, !dbg !384
  %add860.3.4 = or disjoint i32 %mul859.pre-phi, 768, !dbg !386
  %499 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.3.4, !dbg !383
  %xor867.3.4 = shl nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.idx.3.4 = xor i32 %xor867.3.4, 24, !dbg !383
  %add.ptr871.3.4 = getelementptr inbounds i8, ptr addrspace(3) %499, i32 %add.ptr871.idx.3.4, !dbg !383
  %500 = lshr i64 %490, 16, !dbg !384
  %v_column.sroa.98.0.insert.shift2003 = and i64 %500, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert2005 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2501, %v_column.sroa.98.0.insert.shift2003, !dbg !384
  %501 = lshr i64 %489, 32, !dbg !384
  %v_column.sroa.66.0.insert.shift1848 = and i64 %501, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1850 = or disjoint i64 %v_column.sroa.98.0.insert.insert2005, %v_column.sroa.66.0.insert.shift1848, !dbg !384
  %v_column.sroa.0.0.insert.insert1703 = or disjoint i64 %v_column.sroa.66.0.insert.insert1850, %v_fetch.sroa.0.6.extract.shift2270, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1703, ptr addrspace(3) %add.ptr871.3.4, align 8, !dbg !384
  fence syncscope("warp") release, !dbg !387
  tail call void @llvm.mxc.barrier.warp(), !dbg !390
  fence syncscope("warp") acquire, !dbg !391
  %add888.4 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %502 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.4, !dbg !393
  %add.ptr898.idx.4 = shl nuw nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.4 = getelementptr inbounds i8, ptr addrspace(3) %502, i32 %add.ptr898.idx.4, !dbg !393
  %503 = load <4 x half>, ptr addrspace(3) %add.ptr898.4, align 8, !dbg !394
  %add883.1.4 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %add888.1.4 = or disjoint i32 %add883.1.4, 64, !dbg !392
  %504 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.1.4, !dbg !393
  %xor894.1.4 = shl nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.idx.1.4 = xor i32 %xor894.1.4, 8, !dbg !393
  %add.ptr898.1.4 = getelementptr inbounds i8, ptr addrspace(3) %504, i32 %add.ptr898.idx.1.4, !dbg !393
  %505 = load <4 x half>, ptr addrspace(3) %add.ptr898.1.4, align 8, !dbg !394
  %add883.2.4 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %add888.2.4 = or disjoint i32 %add883.2.4, 128, !dbg !392
  %506 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.2.4, !dbg !393
  %xor894.2.4 = shl nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.idx.2.4 = xor i32 %xor894.2.4, 16, !dbg !393
  %add.ptr898.2.4 = getelementptr inbounds i8, ptr addrspace(3) %506, i32 %add.ptr898.idx.2.4, !dbg !393
  %507 = load <4 x half>, ptr addrspace(3) %add.ptr898.2.4, align 8, !dbg !394
  %add883.3.4 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %add888.3.4 = or disjoint i32 %add883.3.4, 192, !dbg !392
  %508 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.3.4, !dbg !393
  %xor894.3.4 = shl nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.idx.3.4 = xor i32 %xor894.3.4, 24, !dbg !393
  %add.ptr898.3.4 = getelementptr inbounds i8, ptr addrspace(3) %508, i32 %add.ptr898.idx.3.4, !dbg !393
  %509 = load <4 x half>, ptr addrspace(3) %add.ptr898.3.4, align 8, !dbg !394
  %510 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %503, <4 x half> %473, <4 x float> %numerator.sroa.0.12.vec.insert3022), !dbg !395
  %511 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %505, <4 x half> %473, <4 x float> %numerator.sroa.90.28.vec.insert3162), !dbg !395
  %512 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %507, <4 x half> %473, <4 x float> %numerator.sroa.178.44.vec.insert3302), !dbg !395
  %513 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %509, <4 x half> %473, <4 x float> %numerator.sroa.266.60.vec.insert3442), !dbg !395
  %add804.4 = fadd contract float %mul693.4, %add800.4, !dbg !396
  br label %if.end924.4, !dbg !397

if.end924.4:                                      ; preds = %if.then493.4, %if.end924.3
  %numerator.sroa.266.5 = phi <4 x float> [ %numerator.sroa.266.4, %if.end924.3 ], [ %513, %if.then493.4 ], !dbg !230
  %numerator.sroa.178.5 = phi <4 x float> [ %numerator.sroa.178.4, %if.end924.3 ], [ %512, %if.then493.4 ], !dbg !230
  %numerator.sroa.90.5 = phi <4 x float> [ %numerator.sroa.90.4, %if.end924.3 ], [ %511, %if.then493.4 ], !dbg !230
  %numerator.sroa.0.5 = phi <4 x float> [ %numerator.sroa.0.4, %if.end924.3 ], [ %510, %if.then493.4 ], !dbg !230
  %maximum.sroa.0.2.4 = phi float [ %maximum.sroa.0.2.3, %if.end924.3 ], [ %456, %if.then493.4 ], !dbg !230
  %denominator.sroa.0.2.4 = phi float [ %denominator.sroa.0.2.3, %if.end924.3 ], [ %add804.4, %if.then493.4 ], !dbg !230
  %514 = or disjoint i64 %idxprom, 6, !dbg !232
  %arrayidx487.5 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %514, !dbg !233
  %515 = load i32, ptr addrspace(1) %arrayidx487.5, align 4, !dbg !233, !tbaa !30
  %mul488.5 = shl nsw i32 %515, 4, !dbg !234
  %cmp489.5 = icmp slt i32 %515, 0, !dbg !235
  %cmp492.not.5 = icmp sgt i32 %mul488.5, %1
  %or.cond1345.5 = select i1 %cmp489.5, i1 true, i1 %cmp492.not.5, !dbg !236
  br i1 %or.cond1345.5, label %if.end924.5, label %if.then493.5, !dbg !236

if.then493.5:                                     ; preds = %if.end924.4
  fence syncscope("warp") release, !dbg !237
  tail call void @llvm.mxc.barrier.warp(), !dbg !240
  fence syncscope("warp") acquire, !dbg !241
  %conv504.5 = zext nneg i32 %mul488.5 to i64
  %.idx.5 = shl nuw nsw i64 %conv504.5, 7
  %gep.5 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1393, i64 %.idx.5, !dbg !242
  %.idx1403.5 = shl nuw nsw i64 %conv499.pre-phi, 17, !dbg !243
  %516 = getelementptr inbounds i8, ptr addrspace(4) %gep.5, i64 %.idx1403.5, !dbg !243
  %qk_fetch.sroa.0.0.copyload3519 = load i64, ptr addrspace(4) %516, align 16, !dbg !244
  %qk_fetch.sroa.38.0..sroa_idx3541 = getelementptr inbounds i8, ptr addrspace(4) %516, i64 8, !dbg !244
  %qk_fetch.sroa.38.0.copyload3542 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx3541, align 8, !dbg !244
  store i64 %qk_fetch.sroa.0.0.copyload3519, ptr addrspace(3) %add.ptr39, align 8, !dbg !245
  store i64 %qk_fetch.sroa.38.0.copyload3542, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !245
  %gep1374.1.5 = getelementptr inbounds i8, ptr addrspace(4) %516, i64 1024, !dbg !243
  %qk_fetch.sroa.0.0.copyload3520 = load i64, ptr addrspace(4) %gep1374.1.5, align 16, !dbg !244
  %qk_fetch.sroa.38.0.gep1374.1.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %516, i64 1032, !dbg !244
  %qk_fetch.sroa.38.0.copyload3543 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep1374.1.5.sroa_idx, align 8, !dbg !244
  store i64 %qk_fetch.sroa.0.0.copyload3520, ptr addrspace(3) %add.ptr39.11412, align 8, !dbg !245
  store i64 %qk_fetch.sroa.38.0.copyload3543, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !245
  fence syncscope("warp") release, !dbg !246
  tail call void @llvm.mxc.barrier.warp(), !dbg !249
  fence syncscope("warp") acquire, !dbg !250
  %k_local.sroa.0.0.copyload1205.5 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !251
  %517 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.5, <4 x half> %9, <4 x float> zeroinitializer), !dbg !252
  %k_local.sroa.0.0.copyload1205.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !251
  %518 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.1.5, <4 x half> %10, <4 x float> %517), !dbg !252
  %k_local.sroa.0.0.copyload1205.2.5 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !251
  %519 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.2.5, <4 x half> %11, <4 x float> %518), !dbg !252
  %k_local.sroa.0.0.copyload1205.3.5 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !251
  %520 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.3.5, <4 x half> %12, <4 x float> %519), !dbg !252
  %add604.5 = add nuw nsw i32 %mul488.5, %mul603.pre-phi
  %cmp607.not.5 = icmp sgt i32 %add604.5, %1, !dbg !253
  %scores.sroa.0.0.vec.extract2649 = extractelement <4 x float> %520, i64 0
  %spec.select3594 = select i1 %cmp607.not.5, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2649, !dbg !254
  %cmp607.not.1.5.not = icmp slt i32 %add604.5, %1, !dbg !253
  %scores.sroa.0.4.vec.extract2732 = extractelement <4 x float> %520, i64 1, !dbg !254
  %condval_1.0.1.5 = select i1 %cmp607.not.1.5.not, float %scores.sroa.0.4.vec.extract2732, float 0xFFF0000000000000, !dbg !254
  %add605.2.5 = or disjoint i32 %add604.5, 2, !dbg !255
  %cmp607.not.2.5 = icmp sgt i32 %add605.2.5, %1, !dbg !253
  %scores.sroa.0.8.vec.extract2809 = extractelement <4 x float> %520, i64 2, !dbg !254
  %condval_1.0.2.5 = select i1 %cmp607.not.2.5, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2809, !dbg !254
  %add605.3.5 = or disjoint i32 %add604.5, 3, !dbg !255
  %cmp607.not.3.5 = icmp sgt i32 %add605.3.5, %1, !dbg !253
  %scores.sroa.0.12.vec.extract2886 = extractelement <4 x float> %520, i64 3, !dbg !254
  %condval_1.0.3.5 = select i1 %cmp607.not.3.5, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2886, !dbg !254
  %521 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3594, float 0xFFF0000000000000), !dbg !256
  %522 = tail call contract noundef float @llvm.maxnum.f32(float %521, float %condval_1.0.1.5), !dbg !256
  %523 = tail call contract noundef float @llvm.maxnum.f32(float %522, float %condval_1.0.2.5), !dbg !256
  %524 = tail call contract noundef float @llvm.maxnum.f32(float %523, float %condval_1.0.3.5), !dbg !256
  %525 = bitcast float %524 to i32, !dbg !258
  %526 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !260
  %527 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %526) #11, !dbg !263
  %xor.i.i1271.5 = xor i32 %527, 32, !dbg !264
  %528 = and i32 %527, -64, !dbg !265
  %and.i.i1272.5 = add nsw i32 %528, 64, !dbg !265
  %cmp.not.i.i1273.5 = icmp slt i32 %xor.i.i1271.5, %and.i.i1272.5, !dbg !266
  %cond.i.i1274.5 = select i1 %cmp.not.i.i1273.5, i32 %xor.i.i1271.5, i32 %527, !dbg !267
  %shl.i.i1275.5 = shl i32 %cond.i.i1274.5, 2, !dbg !268
  %529 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1275.5, i32 %525), !dbg !269
  %530 = bitcast i32 %529 to float, !dbg !270
  %531 = tail call contract noundef float @llvm.maxnum.f32(float %524, float %530), !dbg !271
  %532 = bitcast float %531 to i32, !dbg !273
  %533 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !275
  %534 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %533) #11, !dbg !278
  %xor.i.i1276.5 = xor i32 %534, 16, !dbg !279
  %535 = and i32 %534, -64, !dbg !280
  %and.i.i1277.5 = add nsw i32 %535, 64, !dbg !280
  %cmp.not.i.i1278.5 = icmp slt i32 %xor.i.i1276.5, %and.i.i1277.5, !dbg !281
  %cond.i.i1279.5 = select i1 %cmp.not.i.i1278.5, i32 %xor.i.i1276.5, i32 %534, !dbg !282
  %shl.i.i1280.5 = shl i32 %cond.i.i1279.5, 2, !dbg !283
  %536 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1280.5, i32 %532), !dbg !284
  %537 = bitcast i32 %536 to float, !dbg !285
  %538 = tail call contract noundef float @llvm.maxnum.f32(float %531, float %537), !dbg !286
  %539 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.2.4, float %538), !dbg !288
  %sub651.5 = fsub contract float %maximum.sroa.0.2.4, %539, !dbg !290
  %mul652.5 = fmul contract float %sub651.5, 0x3FC7154760000000, !dbg !291
  %cmp.i.i1281.5 = fcmp contract olt float %mul652.5, -1.260000e+02, !dbg !292
  %cond.i.i1282.5 = select contract i1 %cmp.i.i1281.5, float 6.400000e+01, float 0.000000e+00, !dbg !292
  %add.i.i1283.5 = fadd contract float %mul652.5, %cond.i.i1282.5, !dbg !292
  %540 = tail call contract float @llvm.exp2.f32(float %add.i.i1283.5), !dbg !292
  %cond2.i.i1284.5 = select contract i1 %cmp.i.i1281.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !292
  %mul.i.i1285.5 = fmul contract float %cond2.i.i1284.5, %540, !dbg !292
  %numerator.sroa.0.0.vec.extract2925 = extractelement <4 x float> %numerator.sroa.0.5, i64 0, !dbg !294
  %numerator.sroa.0.4.vec.extract2958 = extractelement <4 x float> %numerator.sroa.0.5, i64 1, !dbg !294
  %numerator.sroa.0.8.vec.extract2991 = extractelement <4 x float> %numerator.sroa.0.5, i64 2, !dbg !294
  %numerator.sroa.0.12.vec.extract3024 = extractelement <4 x float> %numerator.sroa.0.5, i64 3, !dbg !294
  %mul670.5 = fmul contract float %mul.i.i1285.5, %numerator.sroa.0.0.vec.extract2925, !dbg !295
  %mul674.5 = fmul contract float %mul.i.i1285.5, %numerator.sroa.0.4.vec.extract2958, !dbg !296
  %mul678.5 = fmul contract float %mul.i.i1285.5, %numerator.sroa.0.8.vec.extract2991, !dbg !297
  %mul682.5 = fmul contract float %mul.i.i1285.5, %numerator.sroa.0.12.vec.extract3024, !dbg !298
  %numerator.sroa.0.0.vec.insert2927 = insertelement <4 x float> poison, float %mul670.5, i64 0, !dbg !299
  %numerator.sroa.0.4.vec.insert2960 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2927, float %mul674.5, i64 1, !dbg !299
  %numerator.sroa.0.8.vec.insert2993 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2960, float %mul678.5, i64 2, !dbg !299
  %numerator.sroa.0.12.vec.insert3026 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2993, float %mul682.5, i64 3, !dbg !299
  %numerator.sroa.90.16.vec.extract3065 = extractelement <4 x float> %numerator.sroa.90.5, i64 0, !dbg !294
  %numerator.sroa.90.20.vec.extract3098 = extractelement <4 x float> %numerator.sroa.90.5, i64 1, !dbg !294
  %numerator.sroa.90.24.vec.extract3131 = extractelement <4 x float> %numerator.sroa.90.5, i64 2, !dbg !294
  %numerator.sroa.90.28.vec.extract3164 = extractelement <4 x float> %numerator.sroa.90.5, i64 3, !dbg !294
  %mul670.1.5 = fmul contract float %mul.i.i1285.5, %numerator.sroa.90.16.vec.extract3065, !dbg !295
  %mul674.1.5 = fmul contract float %mul.i.i1285.5, %numerator.sroa.90.20.vec.extract3098, !dbg !296
  %mul678.1.5 = fmul contract float %mul.i.i1285.5, %numerator.sroa.90.24.vec.extract3131, !dbg !297
  %mul682.1.5 = fmul contract float %mul.i.i1285.5, %numerator.sroa.90.28.vec.extract3164, !dbg !298
  %numerator.sroa.90.16.vec.insert3067 = insertelement <4 x float> poison, float %mul670.1.5, i64 0, !dbg !299
  %numerator.sroa.90.20.vec.insert3100 = insertelement <4 x float> %numerator.sroa.90.16.vec.insert3067, float %mul674.1.5, i64 1, !dbg !299
  %numerator.sroa.90.24.vec.insert3133 = insertelement <4 x float> %numerator.sroa.90.20.vec.insert3100, float %mul678.1.5, i64 2, !dbg !299
  %numerator.sroa.90.28.vec.insert3166 = insertelement <4 x float> %numerator.sroa.90.24.vec.insert3133, float %mul682.1.5, i64 3, !dbg !299
  %numerator.sroa.178.32.vec.extract3205 = extractelement <4 x float> %numerator.sroa.178.5, i64 0, !dbg !294
  %numerator.sroa.178.36.vec.extract3238 = extractelement <4 x float> %numerator.sroa.178.5, i64 1, !dbg !294
  %numerator.sroa.178.40.vec.extract3271 = extractelement <4 x float> %numerator.sroa.178.5, i64 2, !dbg !294
  %numerator.sroa.178.44.vec.extract3304 = extractelement <4 x float> %numerator.sroa.178.5, i64 3, !dbg !294
  %mul670.2.5 = fmul contract float %mul.i.i1285.5, %numerator.sroa.178.32.vec.extract3205, !dbg !295
  %mul674.2.5 = fmul contract float %mul.i.i1285.5, %numerator.sroa.178.36.vec.extract3238, !dbg !296
  %mul678.2.5 = fmul contract float %mul.i.i1285.5, %numerator.sroa.178.40.vec.extract3271, !dbg !297
  %mul682.2.5 = fmul contract float %mul.i.i1285.5, %numerator.sroa.178.44.vec.extract3304, !dbg !298
  %numerator.sroa.178.32.vec.insert3207 = insertelement <4 x float> poison, float %mul670.2.5, i64 0, !dbg !299
  %numerator.sroa.178.36.vec.insert3240 = insertelement <4 x float> %numerator.sroa.178.32.vec.insert3207, float %mul674.2.5, i64 1, !dbg !299
  %numerator.sroa.178.40.vec.insert3273 = insertelement <4 x float> %numerator.sroa.178.36.vec.insert3240, float %mul678.2.5, i64 2, !dbg !299
  %numerator.sroa.178.44.vec.insert3306 = insertelement <4 x float> %numerator.sroa.178.40.vec.insert3273, float %mul682.2.5, i64 3, !dbg !299
  %numerator.sroa.266.48.vec.extract3345 = extractelement <4 x float> %numerator.sroa.266.5, i64 0, !dbg !294
  %numerator.sroa.266.52.vec.extract3378 = extractelement <4 x float> %numerator.sroa.266.5, i64 1, !dbg !294
  %numerator.sroa.266.56.vec.extract3411 = extractelement <4 x float> %numerator.sroa.266.5, i64 2, !dbg !294
  %numerator.sroa.266.60.vec.extract3444 = extractelement <4 x float> %numerator.sroa.266.5, i64 3, !dbg !294
  %mul670.3.5 = fmul contract float %mul.i.i1285.5, %numerator.sroa.266.48.vec.extract3345, !dbg !295
  %mul674.3.5 = fmul contract float %mul.i.i1285.5, %numerator.sroa.266.52.vec.extract3378, !dbg !296
  %mul678.3.5 = fmul contract float %mul.i.i1285.5, %numerator.sroa.266.56.vec.extract3411, !dbg !297
  %mul682.3.5 = fmul contract float %mul.i.i1285.5, %numerator.sroa.266.60.vec.extract3444, !dbg !298
  %numerator.sroa.266.48.vec.insert3347 = insertelement <4 x float> poison, float %mul670.3.5, i64 0, !dbg !299
  %numerator.sroa.266.52.vec.insert3380 = insertelement <4 x float> %numerator.sroa.266.48.vec.insert3347, float %mul674.3.5, i64 1, !dbg !299
  %numerator.sroa.266.56.vec.insert3413 = insertelement <4 x float> %numerator.sroa.266.52.vec.insert3380, float %mul678.3.5, i64 2, !dbg !299
  %numerator.sroa.266.60.vec.insert3446 = insertelement <4 x float> %numerator.sroa.266.56.vec.insert3413, float %mul682.3.5, i64 3, !dbg !299
  %sub706.5 = fsub contract float %spec.select3594, %539, !dbg !300
  %sub710.5 = fsub contract float %condval_1.0.1.5, %539, !dbg !301
  %sub714.5 = fsub contract float %condval_1.0.2.5, %539, !dbg !302
  %sub718.5 = fsub contract float %condval_1.0.3.5, %539, !dbg !303
  %mul723.5 = fmul contract float %sub706.5, 0x3FC7154760000000, !dbg !304
  %mul727.5 = fmul contract float %sub710.5, 0x3FC7154760000000, !dbg !305
  %mul731.5 = fmul contract float %sub714.5, 0x3FC7154760000000, !dbg !306
  %mul735.5 = fmul contract float %sub718.5, 0x3FC7154760000000, !dbg !307
  %add740.5 = fadd contract float %mul723.5, 8.000000e+00, !dbg !308
  %add744.5 = fadd contract float %mul727.5, 8.000000e+00, !dbg !309
  %add748.5 = fadd contract float %mul731.5, 8.000000e+00, !dbg !310
  %add752.5 = fadd contract float %mul735.5, 8.000000e+00, !dbg !311
  %cmp.i.i1290.5 = fcmp contract olt float %add740.5, -1.260000e+02, !dbg !312
  %cond.i.i1291.5 = select contract i1 %cmp.i.i1290.5, float 6.400000e+01, float 0.000000e+00, !dbg !312
  %add.i.i1292.5 = fadd contract float %add740.5, %cond.i.i1291.5, !dbg !312
  %541 = tail call contract float @llvm.exp2.f32(float %add.i.i1292.5), !dbg !312
  %cond2.i.i1293.5 = select contract i1 %cmp.i.i1290.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !312
  %mul.i.i1294.5 = fmul contract float %cond2.i.i1293.5, %541, !dbg !312
  %cmp.i.i1295.5 = fcmp contract olt float %add744.5, -1.260000e+02, !dbg !314
  %cond.i.i1296.5 = select contract i1 %cmp.i.i1295.5, float 6.400000e+01, float 0.000000e+00, !dbg !314
  %add.i.i1297.5 = fadd contract float %add744.5, %cond.i.i1296.5, !dbg !314
  %542 = tail call contract float @llvm.exp2.f32(float %add.i.i1297.5), !dbg !314
  %cond2.i.i1298.5 = select contract i1 %cmp.i.i1295.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !314
  %mul.i.i1299.5 = fmul contract float %cond2.i.i1298.5, %542, !dbg !314
  %cmp.i.i1300.5 = fcmp contract olt float %add748.5, -1.260000e+02, !dbg !316
  %cond.i.i1301.5 = select contract i1 %cmp.i.i1300.5, float 6.400000e+01, float 0.000000e+00, !dbg !316
  %add.i.i1302.5 = fadd contract float %add748.5, %cond.i.i1301.5, !dbg !316
  %543 = tail call contract float @llvm.exp2.f32(float %add.i.i1302.5), !dbg !316
  %cond2.i.i1303.5 = select contract i1 %cmp.i.i1300.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !316
  %mul.i.i1304.5 = fmul contract float %cond2.i.i1303.5, %543, !dbg !316
  %cmp.i.i1305.5 = fcmp contract olt float %add752.5, -1.260000e+02, !dbg !318
  %cond.i.i1306.5 = select contract i1 %cmp.i.i1305.5, float 6.400000e+01, float 0.000000e+00, !dbg !318
  %add.i.i1307.5 = fadd contract float %add752.5, %cond.i.i1306.5, !dbg !318
  %544 = tail call contract float @llvm.exp2.f32(float %add.i.i1307.5), !dbg !318
  %cond2.i.i1308.5 = select contract i1 %cmp.i.i1305.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !318
  %mul.i.i1309.5 = fmul contract float %cond2.i.i1308.5, %544, !dbg !318
  %545 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !320
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !320, !noalias !324
  %546 = fptrunc float %mul.i.i1294.5 to half, !dbg !320
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %545), !dbg !320, !noalias !324
  %547 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !329
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !329, !noalias !324
  %548 = fptrunc float %mul.i.i1299.5 to half, !dbg !329
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %547), !dbg !329, !noalias !324
  %549 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !331
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !331, !noalias !335
  %550 = fptrunc float %mul.i.i1304.5 to half, !dbg !331
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %549), !dbg !331, !noalias !335
  %551 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !340
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !340, !noalias !335
  %552 = fptrunc float %mul.i.i1309.5 to half, !dbg !340
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %551), !dbg !340, !noalias !335
  %553 = insertelement <4 x half> poison, half %546, i64 0, !dbg !342
  %554 = insertelement <4 x half> %553, half %548, i64 1, !dbg !342
  %555 = insertelement <4 x half> %554, half %550, i64 2, !dbg !342
  %556 = insertelement <4 x half> %555, half %552, i64 3, !dbg !342
  %conv.i.i1326.5 = fpext half %546 to float, !dbg !343
  %add787.5 = fadd contract float %conv.i.i1326.5, 0.000000e+00, !dbg !346
  %conv.i.i1326.1.5 = fpext half %548 to float, !dbg !343
  %add787.1.5 = fadd contract float %add787.5, %conv.i.i1326.1.5, !dbg !346
  %conv.i.i1326.2.5 = fpext half %550 to float, !dbg !343
  %add787.2.5 = fadd contract float %add787.1.5, %conv.i.i1326.2.5, !dbg !346
  %conv.i.i1326.3.5 = fpext half %552 to float, !dbg !343
  %add787.3.5 = fadd contract float %add787.2.5, %conv.i.i1326.3.5, !dbg !346
  %557 = bitcast float %add787.3.5 to i32, !dbg !347
  %558 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !349
  %559 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %558) #11, !dbg !352
  %xor.i.i1316.5 = xor i32 %559, 32, !dbg !353
  %560 = and i32 %559, -64, !dbg !354
  %and.i.i1317.5 = add nsw i32 %560, 64, !dbg !354
  %cmp.not.i.i1318.5 = icmp slt i32 %xor.i.i1316.5, %and.i.i1317.5, !dbg !355
  %cond.i.i1319.5 = select i1 %cmp.not.i.i1318.5, i32 %xor.i.i1316.5, i32 %559, !dbg !356
  %shl.i.i1320.5 = shl i32 %cond.i.i1319.5, 2, !dbg !357
  %561 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1320.5, i32 %557), !dbg !358
  %562 = bitcast i32 %561 to float, !dbg !359
  %add795.5 = fadd contract float %add787.3.5, %562, !dbg !360
  %563 = bitcast float %add795.5 to i32, !dbg !361
  %564 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !363
  %565 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %564) #11, !dbg !366
  %xor.i.i1321.5 = xor i32 %565, 16, !dbg !367
  %566 = and i32 %565, -64, !dbg !368
  %and.i.i1322.5 = add nsw i32 %566, 64, !dbg !368
  %cmp.not.i.i1323.5 = icmp slt i32 %xor.i.i1321.5, %and.i.i1322.5, !dbg !369
  %cond.i.i1324.5 = select i1 %cmp.not.i.i1323.5, i32 %xor.i.i1321.5, i32 %565, !dbg !370
  %shl.i.i1325.5 = shl i32 %cond.i.i1324.5, 2, !dbg !371
  %567 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1325.5, i32 %563), !dbg !372
  %568 = bitcast i32 %567 to float, !dbg !373
  %add800.5 = fadd contract float %add795.5, %568, !dbg !374
  fence syncscope("warp") release, !dbg !375
  tail call void @llvm.mxc.barrier.warp(), !dbg !378
  fence syncscope("warp") acquire, !dbg !379
  %569 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add820.pre-phi, !dbg !380
  %570 = getelementptr inbounds i8, ptr addrspace(4) %569, i64 %.idx.5, !dbg !380
  %571 = load i64, ptr addrspace(4) %570, align 8, !dbg !381
  %add.ptr829.1.5 = getelementptr inbounds i8, ptr addrspace(4) %570, i64 128, !dbg !380
  %572 = load i64, ptr addrspace(4) %add.ptr829.1.5, align 8, !dbg !381
  %add.ptr829.2.5 = getelementptr inbounds i8, ptr addrspace(4) %570, i64 256, !dbg !380
  %573 = load i64, ptr addrspace(4) %add.ptr829.2.5, align 8, !dbg !381
  %add.ptr829.3.5 = getelementptr inbounds i8, ptr addrspace(4) %570, i64 384, !dbg !380
  %574 = load i64, ptr addrspace(4) %add.ptr829.3.5, align 8, !dbg !381
  %mul693.5 = fmul contract float %denominator.sroa.0.2.4, %mul.i.i1285.5, !dbg !382
  %575 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul859.pre-phi, !dbg !383
  %add.ptr871.idx.5 = shl nuw nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.5 = getelementptr inbounds i8, ptr addrspace(3) %575, i32 %add.ptr871.idx.5, !dbg !383
  %v_column.sroa.130.0.insert.ext2162 = shl i64 %574, 48, !dbg !384
  %v_column.sroa.98.0.insert.ext2007 = shl i64 %573, 32, !dbg !384
  %v_column.sroa.98.0.insert.shift2008 = and i64 %v_column.sroa.98.0.insert.ext2007, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert2010 = or disjoint i64 %v_column.sroa.130.0.insert.ext2162, %v_column.sroa.98.0.insert.shift2008, !dbg !384
  %v_column.sroa.66.0.insert.ext1852 = shl i64 %572, 16, !dbg !384
  %v_column.sroa.66.0.insert.shift1853 = and i64 %v_column.sroa.66.0.insert.ext1852, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1855 = or disjoint i64 %v_column.sroa.98.0.insert.insert2010, %v_column.sroa.66.0.insert.shift1853, !dbg !384
  %v_column.sroa.0.0.insert.ext1705 = and i64 %571, 65535, !dbg !384
  %v_column.sroa.0.0.insert.insert1707 = or disjoint i64 %v_column.sroa.66.0.insert.insert1855, %v_column.sroa.0.0.insert.ext1705, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1707, ptr addrspace(3) %add.ptr871.5, align 8, !dbg !384
  %v_fetch.sroa.0.2.extract.shift2231 = lshr i64 %571, 16, !dbg !385
  %add860.1.5 = or disjoint i32 %mul859.pre-phi, 256, !dbg !386
  %576 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.1.5, !dbg !383
  %xor867.1.5 = shl nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.idx.1.5 = xor i32 %xor867.1.5, 8, !dbg !383
  %add.ptr871.1.5 = getelementptr inbounds i8, ptr addrspace(3) %576, i32 %add.ptr871.idx.1.5, !dbg !383
  %577 = shl i64 %574, 32, !dbg !384
  %v_column.sroa.130.0.insert.ext2167 = and i64 %577, -281474976710656, !dbg !384
  %578 = shl i64 %573, 16, !dbg !384
  %v_column.sroa.98.0.insert.shift2013 = and i64 %578, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert2015 = or disjoint i64 %v_column.sroa.130.0.insert.ext2167, %v_column.sroa.98.0.insert.shift2013, !dbg !384
  %v_column.sroa.66.0.insert.ext1857 = and i64 %572, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1860 = or disjoint i64 %v_column.sroa.98.0.insert.insert2015, %v_column.sroa.66.0.insert.ext1857, !dbg !384
  %v_column.sroa.0.0.insert.ext1709 = and i64 %v_fetch.sroa.0.2.extract.shift2231, 65535, !dbg !384
  %v_column.sroa.0.0.insert.insert1711 = or disjoint i64 %v_column.sroa.66.0.insert.insert1860, %v_column.sroa.0.0.insert.ext1709, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1711, ptr addrspace(3) %add.ptr871.1.5, align 8, !dbg !384
  %v_fetch.sroa.0.4.extract.shift2252 = lshr i64 %571, 32, !dbg !385
  %add860.2.5 = or disjoint i32 %mul859.pre-phi, 512, !dbg !386
  %579 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.2.5, !dbg !383
  %xor867.2.5 = shl nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.idx.2.5 = xor i32 %xor867.2.5, 16, !dbg !383
  %add.ptr871.2.5 = getelementptr inbounds i8, ptr addrspace(3) %579, i32 %add.ptr871.idx.2.5, !dbg !383
  %580 = shl i64 %574, 16, !dbg !384
  %v_column.sroa.130.0.insert.ext2172 = and i64 %580, -281474976710656, !dbg !384
  %v_column.sroa.98.0.insert.ext2017 = and i64 %573, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert2020 = or disjoint i64 %v_column.sroa.130.0.insert.ext2172, %v_column.sroa.98.0.insert.ext2017, !dbg !384
  %581 = lshr i64 %572, 16, !dbg !384
  %v_column.sroa.66.0.insert.shift1863 = and i64 %581, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1865 = or disjoint i64 %v_column.sroa.98.0.insert.insert2020, %v_column.sroa.66.0.insert.shift1863, !dbg !384
  %v_column.sroa.0.0.insert.ext1713 = and i64 %v_fetch.sroa.0.4.extract.shift2252, 65535, !dbg !384
  %v_column.sroa.0.0.insert.insert1715 = or disjoint i64 %v_column.sroa.66.0.insert.insert1865, %v_column.sroa.0.0.insert.ext1713, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1715, ptr addrspace(3) %add.ptr871.2.5, align 8, !dbg !384
  %v_fetch.sroa.0.6.extract.shift2273 = lshr i64 %571, 48, !dbg !385
  %v_fetch.sroa.122.30.extract.shift2504 = and i64 %574, -281474976710656, !dbg !384
  %add860.3.5 = or disjoint i32 %mul859.pre-phi, 768, !dbg !386
  %582 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.3.5, !dbg !383
  %xor867.3.5 = shl nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.idx.3.5 = xor i32 %xor867.3.5, 24, !dbg !383
  %add.ptr871.3.5 = getelementptr inbounds i8, ptr addrspace(3) %582, i32 %add.ptr871.idx.3.5, !dbg !383
  %583 = lshr i64 %573, 16, !dbg !384
  %v_column.sroa.98.0.insert.shift2023 = and i64 %583, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert2025 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2504, %v_column.sroa.98.0.insert.shift2023, !dbg !384
  %584 = lshr i64 %572, 32, !dbg !384
  %v_column.sroa.66.0.insert.shift1868 = and i64 %584, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1870 = or disjoint i64 %v_column.sroa.98.0.insert.insert2025, %v_column.sroa.66.0.insert.shift1868, !dbg !384
  %v_column.sroa.0.0.insert.insert1719 = or disjoint i64 %v_column.sroa.66.0.insert.insert1870, %v_fetch.sroa.0.6.extract.shift2273, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1719, ptr addrspace(3) %add.ptr871.3.5, align 8, !dbg !384
  fence syncscope("warp") release, !dbg !387
  tail call void @llvm.mxc.barrier.warp(), !dbg !390
  fence syncscope("warp") acquire, !dbg !391
  %add888.5 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %585 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.5, !dbg !393
  %add.ptr898.idx.5 = shl nuw nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.5 = getelementptr inbounds i8, ptr addrspace(3) %585, i32 %add.ptr898.idx.5, !dbg !393
  %586 = load <4 x half>, ptr addrspace(3) %add.ptr898.5, align 8, !dbg !394
  %add883.1.5 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %add888.1.5 = or disjoint i32 %add883.1.5, 64, !dbg !392
  %587 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.1.5, !dbg !393
  %xor894.1.5 = shl nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.idx.1.5 = xor i32 %xor894.1.5, 8, !dbg !393
  %add.ptr898.1.5 = getelementptr inbounds i8, ptr addrspace(3) %587, i32 %add.ptr898.idx.1.5, !dbg !393
  %588 = load <4 x half>, ptr addrspace(3) %add.ptr898.1.5, align 8, !dbg !394
  %add883.2.5 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %add888.2.5 = or disjoint i32 %add883.2.5, 128, !dbg !392
  %589 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.2.5, !dbg !393
  %xor894.2.5 = shl nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.idx.2.5 = xor i32 %xor894.2.5, 16, !dbg !393
  %add.ptr898.2.5 = getelementptr inbounds i8, ptr addrspace(3) %589, i32 %add.ptr898.idx.2.5, !dbg !393
  %590 = load <4 x half>, ptr addrspace(3) %add.ptr898.2.5, align 8, !dbg !394
  %add883.3.5 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %add888.3.5 = or disjoint i32 %add883.3.5, 192, !dbg !392
  %591 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.3.5, !dbg !393
  %xor894.3.5 = shl nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.idx.3.5 = xor i32 %xor894.3.5, 24, !dbg !393
  %add.ptr898.3.5 = getelementptr inbounds i8, ptr addrspace(3) %591, i32 %add.ptr898.idx.3.5, !dbg !393
  %592 = load <4 x half>, ptr addrspace(3) %add.ptr898.3.5, align 8, !dbg !394
  %593 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %586, <4 x half> %556, <4 x float> %numerator.sroa.0.12.vec.insert3026), !dbg !395
  %594 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %588, <4 x half> %556, <4 x float> %numerator.sroa.90.28.vec.insert3166), !dbg !395
  %595 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %590, <4 x half> %556, <4 x float> %numerator.sroa.178.44.vec.insert3306), !dbg !395
  %596 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %592, <4 x half> %556, <4 x float> %numerator.sroa.266.60.vec.insert3446), !dbg !395
  %add804.5 = fadd contract float %mul693.5, %add800.5, !dbg !396
  br label %if.end924.5, !dbg !397

if.end924.5:                                      ; preds = %if.then493.5, %if.end924.4
  %numerator.sroa.266.6 = phi <4 x float> [ %numerator.sroa.266.5, %if.end924.4 ], [ %596, %if.then493.5 ], !dbg !230
  %numerator.sroa.178.6 = phi <4 x float> [ %numerator.sroa.178.5, %if.end924.4 ], [ %595, %if.then493.5 ], !dbg !230
  %numerator.sroa.90.6 = phi <4 x float> [ %numerator.sroa.90.5, %if.end924.4 ], [ %594, %if.then493.5 ], !dbg !230
  %numerator.sroa.0.6 = phi <4 x float> [ %numerator.sroa.0.5, %if.end924.4 ], [ %593, %if.then493.5 ], !dbg !230
  %maximum.sroa.0.2.5 = phi float [ %maximum.sroa.0.2.4, %if.end924.4 ], [ %539, %if.then493.5 ], !dbg !230
  %denominator.sroa.0.2.5 = phi float [ %denominator.sroa.0.2.4, %if.end924.4 ], [ %add804.5, %if.then493.5 ], !dbg !230
  %597 = or disjoint i64 %idxprom, 7, !dbg !232
  %arrayidx487.6 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %597, !dbg !233
  %598 = load i32, ptr addrspace(1) %arrayidx487.6, align 4, !dbg !233, !tbaa !30
  %mul488.6 = shl nsw i32 %598, 4, !dbg !234
  %cmp489.6 = icmp slt i32 %598, 0, !dbg !235
  %cmp492.not.6 = icmp sgt i32 %mul488.6, %1
  %or.cond1345.6 = select i1 %cmp489.6, i1 true, i1 %cmp492.not.6, !dbg !236
  br i1 %or.cond1345.6, label %if.end924.6, label %if.then493.6, !dbg !236

if.then493.6:                                     ; preds = %if.end924.5
  fence syncscope("warp") release, !dbg !237
  tail call void @llvm.mxc.barrier.warp(), !dbg !240
  fence syncscope("warp") acquire, !dbg !241
  %conv504.6 = zext nneg i32 %mul488.6 to i64
  %.idx.6 = shl nuw nsw i64 %conv504.6, 7
  %gep.6 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1393, i64 %.idx.6, !dbg !242
  %.idx1403.6 = shl nuw nsw i64 %conv499.pre-phi, 17, !dbg !243
  %599 = getelementptr inbounds i8, ptr addrspace(4) %gep.6, i64 %.idx1403.6, !dbg !243
  %qk_fetch.sroa.0.0.copyload3521 = load i64, ptr addrspace(4) %599, align 16, !dbg !244
  %qk_fetch.sroa.38.0..sroa_idx3544 = getelementptr inbounds i8, ptr addrspace(4) %599, i64 8, !dbg !244
  %qk_fetch.sroa.38.0.copyload3545 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx3544, align 8, !dbg !244
  store i64 %qk_fetch.sroa.0.0.copyload3521, ptr addrspace(3) %add.ptr39, align 8, !dbg !245
  store i64 %qk_fetch.sroa.38.0.copyload3545, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !245
  %gep1374.1.6 = getelementptr inbounds i8, ptr addrspace(4) %599, i64 1024, !dbg !243
  %qk_fetch.sroa.0.0.copyload3522 = load i64, ptr addrspace(4) %gep1374.1.6, align 16, !dbg !244
  %qk_fetch.sroa.38.0.gep1374.1.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %599, i64 1032, !dbg !244
  %qk_fetch.sroa.38.0.copyload3546 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep1374.1.6.sroa_idx, align 8, !dbg !244
  store i64 %qk_fetch.sroa.0.0.copyload3522, ptr addrspace(3) %add.ptr39.11412, align 8, !dbg !245
  store i64 %qk_fetch.sroa.38.0.copyload3546, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !245
  fence syncscope("warp") release, !dbg !246
  tail call void @llvm.mxc.barrier.warp(), !dbg !249
  fence syncscope("warp") acquire, !dbg !250
  %k_local.sroa.0.0.copyload1205.6 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !251
  %600 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.6, <4 x half> %9, <4 x float> zeroinitializer), !dbg !252
  %k_local.sroa.0.0.copyload1205.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !251
  %601 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.1.6, <4 x half> %10, <4 x float> %600), !dbg !252
  %k_local.sroa.0.0.copyload1205.2.6 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !251
  %602 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.2.6, <4 x half> %11, <4 x float> %601), !dbg !252
  %k_local.sroa.0.0.copyload1205.3.6 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !251
  %603 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.3.6, <4 x half> %12, <4 x float> %602), !dbg !252
  %add604.6 = add nuw nsw i32 %mul488.6, %mul603.pre-phi
  %cmp607.not.6 = icmp sgt i32 %add604.6, %1, !dbg !253
  %scores.sroa.0.0.vec.extract2659 = extractelement <4 x float> %603, i64 0
  %spec.select3595 = select i1 %cmp607.not.6, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2659, !dbg !254
  %cmp607.not.1.6.not = icmp slt i32 %add604.6, %1, !dbg !253
  %scores.sroa.0.4.vec.extract2738 = extractelement <4 x float> %603, i64 1, !dbg !254
  %condval_1.0.1.6 = select i1 %cmp607.not.1.6.not, float %scores.sroa.0.4.vec.extract2738, float 0xFFF0000000000000, !dbg !254
  %add605.2.6 = or disjoint i32 %add604.6, 2, !dbg !255
  %cmp607.not.2.6 = icmp sgt i32 %add605.2.6, %1, !dbg !253
  %scores.sroa.0.8.vec.extract2815 = extractelement <4 x float> %603, i64 2, !dbg !254
  %condval_1.0.2.6 = select i1 %cmp607.not.2.6, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2815, !dbg !254
  %add605.3.6 = or disjoint i32 %add604.6, 3, !dbg !255
  %cmp607.not.3.6 = icmp sgt i32 %add605.3.6, %1, !dbg !253
  %scores.sroa.0.12.vec.extract2892 = extractelement <4 x float> %603, i64 3, !dbg !254
  %condval_1.0.3.6 = select i1 %cmp607.not.3.6, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2892, !dbg !254
  %604 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3595, float 0xFFF0000000000000), !dbg !256
  %605 = tail call contract noundef float @llvm.maxnum.f32(float %604, float %condval_1.0.1.6), !dbg !256
  %606 = tail call contract noundef float @llvm.maxnum.f32(float %605, float %condval_1.0.2.6), !dbg !256
  %607 = tail call contract noundef float @llvm.maxnum.f32(float %606, float %condval_1.0.3.6), !dbg !256
  %608 = bitcast float %607 to i32, !dbg !258
  %609 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !260
  %610 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %609) #11, !dbg !263
  %xor.i.i1271.6 = xor i32 %610, 32, !dbg !264
  %611 = and i32 %610, -64, !dbg !265
  %and.i.i1272.6 = add nsw i32 %611, 64, !dbg !265
  %cmp.not.i.i1273.6 = icmp slt i32 %xor.i.i1271.6, %and.i.i1272.6, !dbg !266
  %cond.i.i1274.6 = select i1 %cmp.not.i.i1273.6, i32 %xor.i.i1271.6, i32 %610, !dbg !267
  %shl.i.i1275.6 = shl i32 %cond.i.i1274.6, 2, !dbg !268
  %612 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1275.6, i32 %608), !dbg !269
  %613 = bitcast i32 %612 to float, !dbg !270
  %614 = tail call contract noundef float @llvm.maxnum.f32(float %607, float %613), !dbg !271
  %615 = bitcast float %614 to i32, !dbg !273
  %616 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !275
  %617 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %616) #11, !dbg !278
  %xor.i.i1276.6 = xor i32 %617, 16, !dbg !279
  %618 = and i32 %617, -64, !dbg !280
  %and.i.i1277.6 = add nsw i32 %618, 64, !dbg !280
  %cmp.not.i.i1278.6 = icmp slt i32 %xor.i.i1276.6, %and.i.i1277.6, !dbg !281
  %cond.i.i1279.6 = select i1 %cmp.not.i.i1278.6, i32 %xor.i.i1276.6, i32 %617, !dbg !282
  %shl.i.i1280.6 = shl i32 %cond.i.i1279.6, 2, !dbg !283
  %619 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1280.6, i32 %615), !dbg !284
  %620 = bitcast i32 %619 to float, !dbg !285
  %621 = tail call contract noundef float @llvm.maxnum.f32(float %614, float %620), !dbg !286
  %622 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.2.5, float %621), !dbg !288
  %sub651.6 = fsub contract float %maximum.sroa.0.2.5, %622, !dbg !290
  %mul652.6 = fmul contract float %sub651.6, 0x3FC7154760000000, !dbg !291
  %cmp.i.i1281.6 = fcmp contract olt float %mul652.6, -1.260000e+02, !dbg !292
  %cond.i.i1282.6 = select contract i1 %cmp.i.i1281.6, float 6.400000e+01, float 0.000000e+00, !dbg !292
  %add.i.i1283.6 = fadd contract float %mul652.6, %cond.i.i1282.6, !dbg !292
  %623 = tail call contract float @llvm.exp2.f32(float %add.i.i1283.6), !dbg !292
  %cond2.i.i1284.6 = select contract i1 %cmp.i.i1281.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !292
  %mul.i.i1285.6 = fmul contract float %cond2.i.i1284.6, %623, !dbg !292
  %numerator.sroa.0.0.vec.extract2929 = extractelement <4 x float> %numerator.sroa.0.6, i64 0, !dbg !294
  %numerator.sroa.0.4.vec.extract2962 = extractelement <4 x float> %numerator.sroa.0.6, i64 1, !dbg !294
  %numerator.sroa.0.8.vec.extract2995 = extractelement <4 x float> %numerator.sroa.0.6, i64 2, !dbg !294
  %numerator.sroa.0.12.vec.extract3028 = extractelement <4 x float> %numerator.sroa.0.6, i64 3, !dbg !294
  %mul670.6 = fmul contract float %mul.i.i1285.6, %numerator.sroa.0.0.vec.extract2929, !dbg !295
  %mul674.6 = fmul contract float %mul.i.i1285.6, %numerator.sroa.0.4.vec.extract2962, !dbg !296
  %mul678.6 = fmul contract float %mul.i.i1285.6, %numerator.sroa.0.8.vec.extract2995, !dbg !297
  %mul682.6 = fmul contract float %mul.i.i1285.6, %numerator.sroa.0.12.vec.extract3028, !dbg !298
  %numerator.sroa.0.0.vec.insert2931 = insertelement <4 x float> poison, float %mul670.6, i64 0, !dbg !299
  %numerator.sroa.0.4.vec.insert2964 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2931, float %mul674.6, i64 1, !dbg !299
  %numerator.sroa.0.8.vec.insert2997 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2964, float %mul678.6, i64 2, !dbg !299
  %numerator.sroa.0.12.vec.insert3030 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2997, float %mul682.6, i64 3, !dbg !299
  %numerator.sroa.90.16.vec.extract3069 = extractelement <4 x float> %numerator.sroa.90.6, i64 0, !dbg !294
  %numerator.sroa.90.20.vec.extract3102 = extractelement <4 x float> %numerator.sroa.90.6, i64 1, !dbg !294
  %numerator.sroa.90.24.vec.extract3135 = extractelement <4 x float> %numerator.sroa.90.6, i64 2, !dbg !294
  %numerator.sroa.90.28.vec.extract3168 = extractelement <4 x float> %numerator.sroa.90.6, i64 3, !dbg !294
  %mul670.1.6 = fmul contract float %mul.i.i1285.6, %numerator.sroa.90.16.vec.extract3069, !dbg !295
  %mul674.1.6 = fmul contract float %mul.i.i1285.6, %numerator.sroa.90.20.vec.extract3102, !dbg !296
  %mul678.1.6 = fmul contract float %mul.i.i1285.6, %numerator.sroa.90.24.vec.extract3135, !dbg !297
  %mul682.1.6 = fmul contract float %mul.i.i1285.6, %numerator.sroa.90.28.vec.extract3168, !dbg !298
  %numerator.sroa.90.16.vec.insert3071 = insertelement <4 x float> poison, float %mul670.1.6, i64 0, !dbg !299
  %numerator.sroa.90.20.vec.insert3104 = insertelement <4 x float> %numerator.sroa.90.16.vec.insert3071, float %mul674.1.6, i64 1, !dbg !299
  %numerator.sroa.90.24.vec.insert3137 = insertelement <4 x float> %numerator.sroa.90.20.vec.insert3104, float %mul678.1.6, i64 2, !dbg !299
  %numerator.sroa.90.28.vec.insert3170 = insertelement <4 x float> %numerator.sroa.90.24.vec.insert3137, float %mul682.1.6, i64 3, !dbg !299
  %numerator.sroa.178.32.vec.extract3209 = extractelement <4 x float> %numerator.sroa.178.6, i64 0, !dbg !294
  %numerator.sroa.178.36.vec.extract3242 = extractelement <4 x float> %numerator.sroa.178.6, i64 1, !dbg !294
  %numerator.sroa.178.40.vec.extract3275 = extractelement <4 x float> %numerator.sroa.178.6, i64 2, !dbg !294
  %numerator.sroa.178.44.vec.extract3308 = extractelement <4 x float> %numerator.sroa.178.6, i64 3, !dbg !294
  %mul670.2.6 = fmul contract float %mul.i.i1285.6, %numerator.sroa.178.32.vec.extract3209, !dbg !295
  %mul674.2.6 = fmul contract float %mul.i.i1285.6, %numerator.sroa.178.36.vec.extract3242, !dbg !296
  %mul678.2.6 = fmul contract float %mul.i.i1285.6, %numerator.sroa.178.40.vec.extract3275, !dbg !297
  %mul682.2.6 = fmul contract float %mul.i.i1285.6, %numerator.sroa.178.44.vec.extract3308, !dbg !298
  %numerator.sroa.178.32.vec.insert3211 = insertelement <4 x float> poison, float %mul670.2.6, i64 0, !dbg !299
  %numerator.sroa.178.36.vec.insert3244 = insertelement <4 x float> %numerator.sroa.178.32.vec.insert3211, float %mul674.2.6, i64 1, !dbg !299
  %numerator.sroa.178.40.vec.insert3277 = insertelement <4 x float> %numerator.sroa.178.36.vec.insert3244, float %mul678.2.6, i64 2, !dbg !299
  %numerator.sroa.178.44.vec.insert3310 = insertelement <4 x float> %numerator.sroa.178.40.vec.insert3277, float %mul682.2.6, i64 3, !dbg !299
  %numerator.sroa.266.48.vec.extract3349 = extractelement <4 x float> %numerator.sroa.266.6, i64 0, !dbg !294
  %numerator.sroa.266.52.vec.extract3382 = extractelement <4 x float> %numerator.sroa.266.6, i64 1, !dbg !294
  %numerator.sroa.266.56.vec.extract3415 = extractelement <4 x float> %numerator.sroa.266.6, i64 2, !dbg !294
  %numerator.sroa.266.60.vec.extract3448 = extractelement <4 x float> %numerator.sroa.266.6, i64 3, !dbg !294
  %mul670.3.6 = fmul contract float %mul.i.i1285.6, %numerator.sroa.266.48.vec.extract3349, !dbg !295
  %mul674.3.6 = fmul contract float %mul.i.i1285.6, %numerator.sroa.266.52.vec.extract3382, !dbg !296
  %mul678.3.6 = fmul contract float %mul.i.i1285.6, %numerator.sroa.266.56.vec.extract3415, !dbg !297
  %mul682.3.6 = fmul contract float %mul.i.i1285.6, %numerator.sroa.266.60.vec.extract3448, !dbg !298
  %numerator.sroa.266.48.vec.insert3351 = insertelement <4 x float> poison, float %mul670.3.6, i64 0, !dbg !299
  %numerator.sroa.266.52.vec.insert3384 = insertelement <4 x float> %numerator.sroa.266.48.vec.insert3351, float %mul674.3.6, i64 1, !dbg !299
  %numerator.sroa.266.56.vec.insert3417 = insertelement <4 x float> %numerator.sroa.266.52.vec.insert3384, float %mul678.3.6, i64 2, !dbg !299
  %numerator.sroa.266.60.vec.insert3450 = insertelement <4 x float> %numerator.sroa.266.56.vec.insert3417, float %mul682.3.6, i64 3, !dbg !299
  %sub706.6 = fsub contract float %spec.select3595, %622, !dbg !300
  %sub710.6 = fsub contract float %condval_1.0.1.6, %622, !dbg !301
  %sub714.6 = fsub contract float %condval_1.0.2.6, %622, !dbg !302
  %sub718.6 = fsub contract float %condval_1.0.3.6, %622, !dbg !303
  %mul723.6 = fmul contract float %sub706.6, 0x3FC7154760000000, !dbg !304
  %mul727.6 = fmul contract float %sub710.6, 0x3FC7154760000000, !dbg !305
  %mul731.6 = fmul contract float %sub714.6, 0x3FC7154760000000, !dbg !306
  %mul735.6 = fmul contract float %sub718.6, 0x3FC7154760000000, !dbg !307
  %add740.6 = fadd contract float %mul723.6, 8.000000e+00, !dbg !308
  %add744.6 = fadd contract float %mul727.6, 8.000000e+00, !dbg !309
  %add748.6 = fadd contract float %mul731.6, 8.000000e+00, !dbg !310
  %add752.6 = fadd contract float %mul735.6, 8.000000e+00, !dbg !311
  %cmp.i.i1290.6 = fcmp contract olt float %add740.6, -1.260000e+02, !dbg !312
  %cond.i.i1291.6 = select contract i1 %cmp.i.i1290.6, float 6.400000e+01, float 0.000000e+00, !dbg !312
  %add.i.i1292.6 = fadd contract float %add740.6, %cond.i.i1291.6, !dbg !312
  %624 = tail call contract float @llvm.exp2.f32(float %add.i.i1292.6), !dbg !312
  %cond2.i.i1293.6 = select contract i1 %cmp.i.i1290.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !312
  %mul.i.i1294.6 = fmul contract float %cond2.i.i1293.6, %624, !dbg !312
  %cmp.i.i1295.6 = fcmp contract olt float %add744.6, -1.260000e+02, !dbg !314
  %cond.i.i1296.6 = select contract i1 %cmp.i.i1295.6, float 6.400000e+01, float 0.000000e+00, !dbg !314
  %add.i.i1297.6 = fadd contract float %add744.6, %cond.i.i1296.6, !dbg !314
  %625 = tail call contract float @llvm.exp2.f32(float %add.i.i1297.6), !dbg !314
  %cond2.i.i1298.6 = select contract i1 %cmp.i.i1295.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !314
  %mul.i.i1299.6 = fmul contract float %cond2.i.i1298.6, %625, !dbg !314
  %cmp.i.i1300.6 = fcmp contract olt float %add748.6, -1.260000e+02, !dbg !316
  %cond.i.i1301.6 = select contract i1 %cmp.i.i1300.6, float 6.400000e+01, float 0.000000e+00, !dbg !316
  %add.i.i1302.6 = fadd contract float %add748.6, %cond.i.i1301.6, !dbg !316
  %626 = tail call contract float @llvm.exp2.f32(float %add.i.i1302.6), !dbg !316
  %cond2.i.i1303.6 = select contract i1 %cmp.i.i1300.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !316
  %mul.i.i1304.6 = fmul contract float %cond2.i.i1303.6, %626, !dbg !316
  %cmp.i.i1305.6 = fcmp contract olt float %add752.6, -1.260000e+02, !dbg !318
  %cond.i.i1306.6 = select contract i1 %cmp.i.i1305.6, float 6.400000e+01, float 0.000000e+00, !dbg !318
  %add.i.i1307.6 = fadd contract float %add752.6, %cond.i.i1306.6, !dbg !318
  %627 = tail call contract float @llvm.exp2.f32(float %add.i.i1307.6), !dbg !318
  %cond2.i.i1308.6 = select contract i1 %cmp.i.i1305.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !318
  %mul.i.i1309.6 = fmul contract float %cond2.i.i1308.6, %627, !dbg !318
  %628 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !320
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !320, !noalias !324
  %629 = fptrunc float %mul.i.i1294.6 to half, !dbg !320
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %628), !dbg !320, !noalias !324
  %630 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !329
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !329, !noalias !324
  %631 = fptrunc float %mul.i.i1299.6 to half, !dbg !329
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %630), !dbg !329, !noalias !324
  %632 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !331
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !331, !noalias !335
  %633 = fptrunc float %mul.i.i1304.6 to half, !dbg !331
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %632), !dbg !331, !noalias !335
  %634 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !340
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !340, !noalias !335
  %635 = fptrunc float %mul.i.i1309.6 to half, !dbg !340
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %634), !dbg !340, !noalias !335
  %636 = insertelement <4 x half> poison, half %629, i64 0, !dbg !342
  %637 = insertelement <4 x half> %636, half %631, i64 1, !dbg !342
  %638 = insertelement <4 x half> %637, half %633, i64 2, !dbg !342
  %639 = insertelement <4 x half> %638, half %635, i64 3, !dbg !342
  %conv.i.i1326.6 = fpext half %629 to float, !dbg !343
  %add787.6 = fadd contract float %conv.i.i1326.6, 0.000000e+00, !dbg !346
  %conv.i.i1326.1.6 = fpext half %631 to float, !dbg !343
  %add787.1.6 = fadd contract float %add787.6, %conv.i.i1326.1.6, !dbg !346
  %conv.i.i1326.2.6 = fpext half %633 to float, !dbg !343
  %add787.2.6 = fadd contract float %add787.1.6, %conv.i.i1326.2.6, !dbg !346
  %conv.i.i1326.3.6 = fpext half %635 to float, !dbg !343
  %add787.3.6 = fadd contract float %add787.2.6, %conv.i.i1326.3.6, !dbg !346
  %640 = bitcast float %add787.3.6 to i32, !dbg !347
  %641 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !349
  %642 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %641) #11, !dbg !352
  %xor.i.i1316.6 = xor i32 %642, 32, !dbg !353
  %643 = and i32 %642, -64, !dbg !354
  %and.i.i1317.6 = add nsw i32 %643, 64, !dbg !354
  %cmp.not.i.i1318.6 = icmp slt i32 %xor.i.i1316.6, %and.i.i1317.6, !dbg !355
  %cond.i.i1319.6 = select i1 %cmp.not.i.i1318.6, i32 %xor.i.i1316.6, i32 %642, !dbg !356
  %shl.i.i1320.6 = shl i32 %cond.i.i1319.6, 2, !dbg !357
  %644 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1320.6, i32 %640), !dbg !358
  %645 = bitcast i32 %644 to float, !dbg !359
  %add795.6 = fadd contract float %add787.3.6, %645, !dbg !360
  %646 = bitcast float %add795.6 to i32, !dbg !361
  %647 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !363
  %648 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %647) #11, !dbg !366
  %xor.i.i1321.6 = xor i32 %648, 16, !dbg !367
  %649 = and i32 %648, -64, !dbg !368
  %and.i.i1322.6 = add nsw i32 %649, 64, !dbg !368
  %cmp.not.i.i1323.6 = icmp slt i32 %xor.i.i1321.6, %and.i.i1322.6, !dbg !369
  %cond.i.i1324.6 = select i1 %cmp.not.i.i1323.6, i32 %xor.i.i1321.6, i32 %648, !dbg !370
  %shl.i.i1325.6 = shl i32 %cond.i.i1324.6, 2, !dbg !371
  %650 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1325.6, i32 %646), !dbg !372
  %651 = bitcast i32 %650 to float, !dbg !373
  %add800.6 = fadd contract float %add795.6, %651, !dbg !374
  fence syncscope("warp") release, !dbg !375
  tail call void @llvm.mxc.barrier.warp(), !dbg !378
  fence syncscope("warp") acquire, !dbg !379
  %652 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add820.pre-phi, !dbg !380
  %653 = getelementptr inbounds i8, ptr addrspace(4) %652, i64 %.idx.6, !dbg !380
  %654 = load i64, ptr addrspace(4) %653, align 8, !dbg !381
  %add.ptr829.1.6 = getelementptr inbounds i8, ptr addrspace(4) %653, i64 128, !dbg !380
  %655 = load i64, ptr addrspace(4) %add.ptr829.1.6, align 8, !dbg !381
  %add.ptr829.2.6 = getelementptr inbounds i8, ptr addrspace(4) %653, i64 256, !dbg !380
  %656 = load i64, ptr addrspace(4) %add.ptr829.2.6, align 8, !dbg !381
  %add.ptr829.3.6 = getelementptr inbounds i8, ptr addrspace(4) %653, i64 384, !dbg !380
  %657 = load i64, ptr addrspace(4) %add.ptr829.3.6, align 8, !dbg !381
  %mul693.6 = fmul contract float %denominator.sroa.0.2.5, %mul.i.i1285.6, !dbg !382
  %658 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul859.pre-phi, !dbg !383
  %add.ptr871.idx.6 = shl nuw nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.6 = getelementptr inbounds i8, ptr addrspace(3) %658, i32 %add.ptr871.idx.6, !dbg !383
  %v_column.sroa.130.0.insert.ext2182 = shl i64 %657, 48, !dbg !384
  %v_column.sroa.98.0.insert.ext2027 = shl i64 %656, 32, !dbg !384
  %v_column.sroa.98.0.insert.shift2028 = and i64 %v_column.sroa.98.0.insert.ext2027, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert2030 = or disjoint i64 %v_column.sroa.130.0.insert.ext2182, %v_column.sroa.98.0.insert.shift2028, !dbg !384
  %v_column.sroa.66.0.insert.ext1872 = shl i64 %655, 16, !dbg !384
  %v_column.sroa.66.0.insert.shift1873 = and i64 %v_column.sroa.66.0.insert.ext1872, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1875 = or disjoint i64 %v_column.sroa.98.0.insert.insert2030, %v_column.sroa.66.0.insert.shift1873, !dbg !384
  %v_column.sroa.0.0.insert.ext1721 = and i64 %654, 65535, !dbg !384
  %v_column.sroa.0.0.insert.insert1723 = or disjoint i64 %v_column.sroa.66.0.insert.insert1875, %v_column.sroa.0.0.insert.ext1721, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1723, ptr addrspace(3) %add.ptr871.6, align 8, !dbg !384
  %v_fetch.sroa.0.2.extract.shift2234 = lshr i64 %654, 16, !dbg !385
  %add860.1.6 = or disjoint i32 %mul859.pre-phi, 256, !dbg !386
  %659 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.1.6, !dbg !383
  %xor867.1.6 = shl nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.idx.1.6 = xor i32 %xor867.1.6, 8, !dbg !383
  %add.ptr871.1.6 = getelementptr inbounds i8, ptr addrspace(3) %659, i32 %add.ptr871.idx.1.6, !dbg !383
  %660 = shl i64 %657, 32, !dbg !384
  %v_column.sroa.130.0.insert.ext2187 = and i64 %660, -281474976710656, !dbg !384
  %661 = shl i64 %656, 16, !dbg !384
  %v_column.sroa.98.0.insert.shift2033 = and i64 %661, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert2035 = or disjoint i64 %v_column.sroa.130.0.insert.ext2187, %v_column.sroa.98.0.insert.shift2033, !dbg !384
  %v_column.sroa.66.0.insert.ext1877 = and i64 %655, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1880 = or disjoint i64 %v_column.sroa.98.0.insert.insert2035, %v_column.sroa.66.0.insert.ext1877, !dbg !384
  %v_column.sroa.0.0.insert.ext1725 = and i64 %v_fetch.sroa.0.2.extract.shift2234, 65535, !dbg !384
  %v_column.sroa.0.0.insert.insert1727 = or disjoint i64 %v_column.sroa.66.0.insert.insert1880, %v_column.sroa.0.0.insert.ext1725, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1727, ptr addrspace(3) %add.ptr871.1.6, align 8, !dbg !384
  %v_fetch.sroa.0.4.extract.shift2255 = lshr i64 %654, 32, !dbg !385
  %add860.2.6 = or disjoint i32 %mul859.pre-phi, 512, !dbg !386
  %662 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.2.6, !dbg !383
  %xor867.2.6 = shl nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.idx.2.6 = xor i32 %xor867.2.6, 16, !dbg !383
  %add.ptr871.2.6 = getelementptr inbounds i8, ptr addrspace(3) %662, i32 %add.ptr871.idx.2.6, !dbg !383
  %663 = shl i64 %657, 16, !dbg !384
  %v_column.sroa.130.0.insert.ext2192 = and i64 %663, -281474976710656, !dbg !384
  %v_column.sroa.98.0.insert.ext2037 = and i64 %656, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert2040 = or disjoint i64 %v_column.sroa.130.0.insert.ext2192, %v_column.sroa.98.0.insert.ext2037, !dbg !384
  %664 = lshr i64 %655, 16, !dbg !384
  %v_column.sroa.66.0.insert.shift1883 = and i64 %664, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1885 = or disjoint i64 %v_column.sroa.98.0.insert.insert2040, %v_column.sroa.66.0.insert.shift1883, !dbg !384
  %v_column.sroa.0.0.insert.ext1729 = and i64 %v_fetch.sroa.0.4.extract.shift2255, 65535, !dbg !384
  %v_column.sroa.0.0.insert.insert1731 = or disjoint i64 %v_column.sroa.66.0.insert.insert1885, %v_column.sroa.0.0.insert.ext1729, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1731, ptr addrspace(3) %add.ptr871.2.6, align 8, !dbg !384
  %v_fetch.sroa.0.6.extract.shift2276 = lshr i64 %654, 48, !dbg !385
  %v_fetch.sroa.122.30.extract.shift2507 = and i64 %657, -281474976710656, !dbg !384
  %add860.3.6 = or disjoint i32 %mul859.pre-phi, 768, !dbg !386
  %665 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.3.6, !dbg !383
  %xor867.3.6 = shl nsw i32 %xor866.pre-phi, 3, !dbg !383
  %add.ptr871.idx.3.6 = xor i32 %xor867.3.6, 24, !dbg !383
  %add.ptr871.3.6 = getelementptr inbounds i8, ptr addrspace(3) %665, i32 %add.ptr871.idx.3.6, !dbg !383
  %666 = lshr i64 %656, 16, !dbg !384
  %v_column.sroa.98.0.insert.shift2043 = and i64 %666, 281470681743360, !dbg !384
  %v_column.sroa.98.0.insert.insert2045 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2507, %v_column.sroa.98.0.insert.shift2043, !dbg !384
  %667 = lshr i64 %655, 32, !dbg !384
  %v_column.sroa.66.0.insert.shift1888 = and i64 %667, 4294901760, !dbg !384
  %v_column.sroa.66.0.insert.insert1890 = or disjoint i64 %v_column.sroa.98.0.insert.insert2045, %v_column.sroa.66.0.insert.shift1888, !dbg !384
  %v_column.sroa.0.0.insert.insert1735 = or disjoint i64 %v_column.sroa.66.0.insert.insert1890, %v_fetch.sroa.0.6.extract.shift2276, !dbg !384
  store i64 %v_column.sroa.0.0.insert.insert1735, ptr addrspace(3) %add.ptr871.3.6, align 8, !dbg !384
  fence syncscope("warp") release, !dbg !387
  tail call void @llvm.mxc.barrier.warp(), !dbg !390
  fence syncscope("warp") acquire, !dbg !391
  %add888.6 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %668 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.6, !dbg !393
  %add.ptr898.idx.6 = shl nuw nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.6 = getelementptr inbounds i8, ptr addrspace(3) %668, i32 %add.ptr898.idx.6, !dbg !393
  %669 = load <4 x half>, ptr addrspace(3) %add.ptr898.6, align 8, !dbg !394
  %add883.1.6 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %add888.1.6 = or disjoint i32 %add883.1.6, 64, !dbg !392
  %670 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.1.6, !dbg !393
  %xor894.1.6 = shl nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.idx.1.6 = xor i32 %xor894.1.6, 8, !dbg !393
  %add.ptr898.1.6 = getelementptr inbounds i8, ptr addrspace(3) %670, i32 %add.ptr898.idx.1.6, !dbg !393
  %671 = load <4 x half>, ptr addrspace(3) %add.ptr898.1.6, align 8, !dbg !394
  %add883.2.6 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %add888.2.6 = or disjoint i32 %add883.2.6, 128, !dbg !392
  %672 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.2.6, !dbg !393
  %xor894.2.6 = shl nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.idx.2.6 = xor i32 %xor894.2.6, 16, !dbg !393
  %add.ptr898.2.6 = getelementptr inbounds i8, ptr addrspace(3) %672, i32 %add.ptr898.idx.2.6, !dbg !393
  %673 = load <4 x half>, ptr addrspace(3) %add.ptr898.2.6, align 8, !dbg !394
  %add883.3.6 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi, !dbg !392
  %add888.3.6 = or disjoint i32 %add883.3.6, 192, !dbg !392
  %674 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.3.6, !dbg !393
  %xor894.3.6 = shl nsw i32 %.pre-phi3588, 3, !dbg !393
  %add.ptr898.idx.3.6 = xor i32 %xor894.3.6, 24, !dbg !393
  %add.ptr898.3.6 = getelementptr inbounds i8, ptr addrspace(3) %674, i32 %add.ptr898.idx.3.6, !dbg !393
  %675 = load <4 x half>, ptr addrspace(3) %add.ptr898.3.6, align 8, !dbg !394
  %676 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %669, <4 x half> %639, <4 x float> %numerator.sroa.0.12.vec.insert3030), !dbg !395
  %677 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %671, <4 x half> %639, <4 x float> %numerator.sroa.90.28.vec.insert3170), !dbg !395
  %678 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %673, <4 x half> %639, <4 x float> %numerator.sroa.178.44.vec.insert3310), !dbg !395
  %679 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %675, <4 x half> %639, <4 x float> %numerator.sroa.266.60.vec.insert3450), !dbg !395
  %add804.6 = fadd contract float %mul693.6, %add800.6, !dbg !396
  br label %if.end924.6, !dbg !397

if.end924.6:                                      ; preds = %if.then493.6, %if.end924.5
  %numerator.sroa.266.7 = phi <4 x float> [ %numerator.sroa.266.6, %if.end924.5 ], [ %679, %if.then493.6 ], !dbg !230
  %numerator.sroa.178.7 = phi <4 x float> [ %numerator.sroa.178.6, %if.end924.5 ], [ %678, %if.then493.6 ], !dbg !230
  %numerator.sroa.90.7 = phi <4 x float> [ %numerator.sroa.90.6, %if.end924.5 ], [ %677, %if.then493.6 ], !dbg !230
  %numerator.sroa.0.7 = phi <4 x float> [ %numerator.sroa.0.6, %if.end924.5 ], [ %676, %if.then493.6 ], !dbg !230
  %denominator.sroa.0.2.6 = phi float [ %denominator.sroa.0.2.5, %if.end924.5 ], [ %add804.6, %if.then493.6 ], !dbg !230
  %numerator.sroa.0.0.vec.extract2935 = extractelement <4 x float> %numerator.sroa.0.7, i64 0, !dbg !398
  %numerator.sroa.0.4.vec.extract2968 = extractelement <4 x float> %numerator.sroa.0.7, i64 1, !dbg !398
  %numerator.sroa.0.8.vec.extract3001 = extractelement <4 x float> %numerator.sroa.0.7, i64 2, !dbg !398
  %numerator.sroa.0.12.vec.extract3034 = extractelement <4 x float> %numerator.sroa.0.7, i64 3, !dbg !398
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract2935, %denominator.sroa.0.2.6, !dbg !399
  %div946 = fdiv contract float %numerator.sroa.0.4.vec.extract2968, %denominator.sroa.0.2.6, !dbg !400
  %div950 = fdiv contract float %numerator.sroa.0.8.vec.extract3001, %denominator.sroa.0.2.6, !dbg !401
  %div954 = fdiv contract float %numerator.sroa.0.12.vec.extract3034, %denominator.sroa.0.2.6, !dbg !402
  %numerator.sroa.90.16.vec.extract3073 = extractelement <4 x float> %numerator.sroa.90.7, i64 0, !dbg !398
  %numerator.sroa.90.20.vec.extract3106 = extractelement <4 x float> %numerator.sroa.90.7, i64 1, !dbg !398
  %numerator.sroa.90.24.vec.extract3139 = extractelement <4 x float> %numerator.sroa.90.7, i64 2, !dbg !398
  %numerator.sroa.90.28.vec.extract3172 = extractelement <4 x float> %numerator.sroa.90.7, i64 3, !dbg !398
  %div.1 = fdiv contract float %numerator.sroa.90.16.vec.extract3073, %denominator.sroa.0.2.6, !dbg !399
  %div946.1 = fdiv contract float %numerator.sroa.90.20.vec.extract3106, %denominator.sroa.0.2.6, !dbg !400
  %div950.1 = fdiv contract float %numerator.sroa.90.24.vec.extract3139, %denominator.sroa.0.2.6, !dbg !401
  %div954.1 = fdiv contract float %numerator.sroa.90.28.vec.extract3172, %denominator.sroa.0.2.6, !dbg !402
  %numerator.sroa.178.32.vec.extract3213 = extractelement <4 x float> %numerator.sroa.178.7, i64 0, !dbg !398
  %numerator.sroa.178.36.vec.extract3246 = extractelement <4 x float> %numerator.sroa.178.7, i64 1, !dbg !398
  %numerator.sroa.178.40.vec.extract3279 = extractelement <4 x float> %numerator.sroa.178.7, i64 2, !dbg !398
  %numerator.sroa.178.44.vec.extract3312 = extractelement <4 x float> %numerator.sroa.178.7, i64 3, !dbg !398
  %div.2 = fdiv contract float %numerator.sroa.178.32.vec.extract3213, %denominator.sroa.0.2.6, !dbg !399
  %div946.2 = fdiv contract float %numerator.sroa.178.36.vec.extract3246, %denominator.sroa.0.2.6, !dbg !400
  %div950.2 = fdiv contract float %numerator.sroa.178.40.vec.extract3279, %denominator.sroa.0.2.6, !dbg !401
  %div954.2 = fdiv contract float %numerator.sroa.178.44.vec.extract3312, %denominator.sroa.0.2.6, !dbg !402
  %numerator.sroa.266.48.vec.extract3353 = extractelement <4 x float> %numerator.sroa.266.7, i64 0, !dbg !398
  %numerator.sroa.266.52.vec.extract3386 = extractelement <4 x float> %numerator.sroa.266.7, i64 1, !dbg !398
  %numerator.sroa.266.56.vec.extract3419 = extractelement <4 x float> %numerator.sroa.266.7, i64 2, !dbg !398
  %numerator.sroa.266.60.vec.extract3452 = extractelement <4 x float> %numerator.sroa.266.7, i64 3, !dbg !398
  %div.3 = fdiv contract float %numerator.sroa.266.48.vec.extract3353, %denominator.sroa.0.2.6, !dbg !399
  %div946.3 = fdiv contract float %numerator.sroa.266.52.vec.extract3386, %denominator.sroa.0.2.6, !dbg !400
  %div950.3 = fdiv contract float %numerator.sroa.266.56.vec.extract3419, %denominator.sroa.0.2.6, !dbg !401
  %div954.3 = fdiv contract float %numerator.sroa.266.60.vec.extract3452, %denominator.sroa.0.2.6, !dbg !402
  fence syncscope("warp") release, !dbg !403
  tail call void @llvm.mxc.barrier.warp(), !dbg !406
  fence syncscope("warp") acquire, !dbg !407
  %mul1000 = and i32 %.pre-phi, 4
  %680 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !408
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !408, !noalias !412
  %681 = fptrunc float %div to half, !dbg !408
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %680), !dbg !408, !noalias !412
  %682 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !417
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !417, !noalias !412
  %683 = fptrunc float %div946 to half, !dbg !417
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %682), !dbg !417, !noalias !412
  %684 = bitcast half %681 to i16, !dbg !419
  %685 = bitcast half %683 to i16, !dbg !422
  %686 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !423
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !423, !noalias !427
  %687 = fptrunc float %div950 to half, !dbg !423
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %686), !dbg !423, !noalias !427
  %688 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !432
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !432, !noalias !427
  %689 = fptrunc float %div954 to half, !dbg !432
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %688), !dbg !432, !noalias !427
  %690 = bitcast half %687 to i16, !dbg !434
  %691 = bitcast half %689 to i16, !dbg !436
  %__13.sroa.6.0.insert.ext = zext i16 %691 to i64, !dbg !437
  %__13.sroa.6.0.insert.shift = shl nuw i64 %__13.sroa.6.0.insert.ext, 48, !dbg !437
  %__13.sroa.5.0.insert.ext = zext i16 %690 to i64, !dbg !437
  %__13.sroa.5.0.insert.shift = shl nuw nsw i64 %__13.sroa.5.0.insert.ext, 32, !dbg !437
  %__13.sroa.5.0.insert.insert = or disjoint i64 %__13.sroa.6.0.insert.shift, %__13.sroa.5.0.insert.shift, !dbg !437
  %__13.sroa.4.0.insert.ext = zext i16 %685 to i64, !dbg !437
  %__13.sroa.4.0.insert.shift = shl nuw nsw i64 %__13.sroa.4.0.insert.ext, 16, !dbg !437
  %__13.sroa.4.0.insert.insert = or disjoint i64 %__13.sroa.5.0.insert.insert, %__13.sroa.4.0.insert.shift, !dbg !437
  %__13.sroa.0.0.insert.ext = zext i16 %684 to i64, !dbg !437
  %__13.sroa.0.0.insert.insert = or disjoint i64 %__13.sroa.4.0.insert.insert, %__13.sroa.0.0.insert.ext, !dbg !437
  %add1001 = or disjoint i32 %add58, %mul1000, !dbg !438
  %add.ptr1003 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add1001, !dbg !439
  store i64 %__13.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr1003, align 8, !dbg !440
  %692 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !408
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !408, !noalias !412
  %693 = fptrunc float %div.1 to half, !dbg !408
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %692), !dbg !408, !noalias !412
  %694 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !417
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !417, !noalias !412
  %695 = fptrunc float %div946.1 to half, !dbg !417
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %694), !dbg !417, !noalias !412
  %696 = bitcast half %693 to i16, !dbg !419
  %697 = bitcast half %695 to i16, !dbg !422
  %698 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !423
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !423, !noalias !427
  %699 = fptrunc float %div950.1 to half, !dbg !423
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %698), !dbg !423, !noalias !427
  %700 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !432
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !432, !noalias !427
  %701 = fptrunc float %div954.1 to half, !dbg !432
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %700), !dbg !432, !noalias !427
  %702 = bitcast half %699 to i16, !dbg !434
  %703 = bitcast half %701 to i16, !dbg !436
  %__13.sroa.6.0.insert.ext.1 = zext i16 %703 to i64, !dbg !437
  %__13.sroa.6.0.insert.shift.1 = shl nuw i64 %__13.sroa.6.0.insert.ext.1, 48, !dbg !437
  %__13.sroa.5.0.insert.ext.1 = zext i16 %702 to i64, !dbg !437
  %__13.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__13.sroa.5.0.insert.ext.1, 32, !dbg !437
  %__13.sroa.5.0.insert.insert.1 = or disjoint i64 %__13.sroa.6.0.insert.shift.1, %__13.sroa.5.0.insert.shift.1, !dbg !437
  %__13.sroa.4.0.insert.ext.1 = zext i16 %697 to i64, !dbg !437
  %__13.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__13.sroa.4.0.insert.ext.1, 16, !dbg !437
  %__13.sroa.4.0.insert.insert.1 = or disjoint i64 %__13.sroa.5.0.insert.insert.1, %__13.sroa.4.0.insert.shift.1, !dbg !437
  %__13.sroa.0.0.insert.ext.1 = zext i16 %696 to i64, !dbg !437
  %__13.sroa.0.0.insert.insert.1 = or disjoint i64 %__13.sroa.4.0.insert.insert.1, %__13.sroa.0.0.insert.ext.1, !dbg !437
  %add1001.1 = or disjoint i32 %add58.1, %mul1000, !dbg !438
  %add.ptr1003.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add1001.1, !dbg !439
  store i64 %__13.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr1003.1, align 8, !dbg !440
  %704 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !408
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !408, !noalias !412
  %705 = fptrunc float %div.2 to half, !dbg !408
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %704), !dbg !408, !noalias !412
  %706 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !417
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !417, !noalias !412
  %707 = fptrunc float %div946.2 to half, !dbg !417
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %706), !dbg !417, !noalias !412
  %708 = bitcast half %705 to i16, !dbg !419
  %709 = bitcast half %707 to i16, !dbg !422
  %710 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !423
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !423, !noalias !427
  %711 = fptrunc float %div950.2 to half, !dbg !423
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %710), !dbg !423, !noalias !427
  %712 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !432
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !432, !noalias !427
  %713 = fptrunc float %div954.2 to half, !dbg !432
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %712), !dbg !432, !noalias !427
  %714 = bitcast half %711 to i16, !dbg !434
  %715 = bitcast half %713 to i16, !dbg !436
  %__13.sroa.6.0.insert.ext.2 = zext i16 %715 to i64, !dbg !437
  %__13.sroa.6.0.insert.shift.2 = shl nuw i64 %__13.sroa.6.0.insert.ext.2, 48, !dbg !437
  %__13.sroa.5.0.insert.ext.2 = zext i16 %714 to i64, !dbg !437
  %__13.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__13.sroa.5.0.insert.ext.2, 32, !dbg !437
  %__13.sroa.5.0.insert.insert.2 = or disjoint i64 %__13.sroa.6.0.insert.shift.2, %__13.sroa.5.0.insert.shift.2, !dbg !437
  %__13.sroa.4.0.insert.ext.2 = zext i16 %709 to i64, !dbg !437
  %__13.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__13.sroa.4.0.insert.ext.2, 16, !dbg !437
  %__13.sroa.4.0.insert.insert.2 = or disjoint i64 %__13.sroa.5.0.insert.insert.2, %__13.sroa.4.0.insert.shift.2, !dbg !437
  %__13.sroa.0.0.insert.ext.2 = zext i16 %708 to i64, !dbg !437
  %__13.sroa.0.0.insert.insert.2 = or disjoint i64 %__13.sroa.4.0.insert.insert.2, %__13.sroa.0.0.insert.ext.2, !dbg !437
  %add1001.2 = or disjoint i32 %add58.2, %mul1000, !dbg !438
  %add.ptr1003.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add1001.2, !dbg !439
  store i64 %__13.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr1003.2, align 8, !dbg !440
  %716 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !408
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !408, !noalias !412
  %717 = fptrunc float %div.3 to half, !dbg !408
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %716), !dbg !408, !noalias !412
  %718 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !417
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !417, !noalias !412
  %719 = fptrunc float %div946.3 to half, !dbg !417
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %718), !dbg !417, !noalias !412
  %720 = bitcast half %717 to i16, !dbg !419
  %721 = bitcast half %719 to i16, !dbg !422
  %722 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !423
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !423, !noalias !427
  %723 = fptrunc float %div950.3 to half, !dbg !423
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %722), !dbg !423, !noalias !427
  %724 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !432
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !432, !noalias !427
  %725 = fptrunc float %div954.3 to half, !dbg !432
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %724), !dbg !432, !noalias !427
  %726 = bitcast half %723 to i16, !dbg !434
  %727 = bitcast half %725 to i16, !dbg !436
  %__13.sroa.6.0.insert.ext.3 = zext i16 %727 to i64, !dbg !437
  %__13.sroa.6.0.insert.shift.3 = shl nuw i64 %__13.sroa.6.0.insert.ext.3, 48, !dbg !437
  %__13.sroa.5.0.insert.ext.3 = zext i16 %726 to i64, !dbg !437
  %__13.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__13.sroa.5.0.insert.ext.3, 32, !dbg !437
  %__13.sroa.5.0.insert.insert.3 = or disjoint i64 %__13.sroa.6.0.insert.shift.3, %__13.sroa.5.0.insert.shift.3, !dbg !437
  %__13.sroa.4.0.insert.ext.3 = zext i16 %721 to i64, !dbg !437
  %__13.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__13.sroa.4.0.insert.ext.3, 16, !dbg !437
  %__13.sroa.4.0.insert.insert.3 = or disjoint i64 %__13.sroa.5.0.insert.insert.3, %__13.sroa.4.0.insert.shift.3, !dbg !437
  %__13.sroa.0.0.insert.ext.3 = zext i16 %720 to i64, !dbg !437
  %__13.sroa.0.0.insert.insert.3 = or disjoint i64 %__13.sroa.4.0.insert.insert.3, %__13.sroa.0.0.insert.ext.3, !dbg !437
  %add1001.3 = or disjoint i32 %add58.3, %mul1000, !dbg !438
  %add.ptr1003.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add1001.3, !dbg !439
  store i64 %__13.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr1003.3, align 8, !dbg !440
  fence syncscope("warp") release, !dbg !441
  tail call void @llvm.mxc.barrier.warp(), !dbg !444
  fence syncscope("warp") acquire, !dbg !445
  %invariant.gep1396 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul24, !dbg !446
  %invariant.gep1398 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep1396, i32 %mul29, !dbg !446
  %add.ptr1036 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !447
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr1036, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep1398, i64 16, i1 false), !dbg !448, !tbaa.struct !449, !call_argsrelate !450
  %gep1399.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1398, i32 1024, !dbg !451
  %add.ptr1036.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %6, !dbg !447
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr1036.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep1399.1, i64 16, i1 false), !dbg !448, !tbaa.struct !449, !call_argsrelate !450
  ret void, !dbg !452
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v067_codex_power_s8_first_block_init_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v067_codex_power_s8_first_block_init_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!64 = !DILocation(line: 48, column: 50, scope: !40)
!65 = !DILocation(line: 48, column: 79, scope: !40)
!66 = !DILocation(line: 48, column: 58, scope: !40)
!67 = !DILocation(line: 48, column: 22, scope: !40)
!68 = !DILocation(line: 48, column: 86, scope: !40)
!69 = !DILocation(line: 49, column: 10, scope: !40)
!70 = !DILocation(line: 49, column: 26, scope: !40)
!71 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !72)
!72 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !73)
!73 = distinct !DILocation(line: 50, column: 5, scope: !40)
!74 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !72)
!75 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !72)
!76 = !DILocation(line: 52, column: 10, scope: !40)
!77 = !DILocation(line: 53, column: 45, scope: !40)
!78 = !DILocation(line: 53, column: 31, scope: !40)
!79 = !DILocation(line: 56, column: 211, scope: !40)
!80 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !81)
!81 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !82)
!82 = distinct !DILocation(line: 59, column: 5, scope: !40)
!83 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !81)
!84 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !81)
!85 = !DILocation(line: 64, column: 30, scope: !40)
!86 = !DILocation(line: 66, column: 37, scope: !40)
!87 = !DILocation(line: 74, column: 72, scope: !40)
!88 = !DILocation(line: 74, column: 11, scope: !40)
!89 = !DILocation(line: 74, column: 61, scope: !40)
!90 = !DILocation(line: 351, column: 10, scope: !91, inlinedAt: !93)
!91 = distinct !DISubprogram(name: "max", scope: !92, file: !92, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!92 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!93 = distinct !DILocation(line: 84, column: 26, scope: !40)
!94 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !96)
!95 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!96 = distinct !DILocation(line: 86, column: 46, scope: !40)
!97 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !99)
!98 = distinct !DISubprogram(name: "__lane_id", scope: !51, file: !51, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!99 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !101)
!100 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!101 = distinct !DILocation(line: 1019, column: 11, scope: !95, inlinedAt: !96)
!102 = !DILocation(line: 171, column: 10, scope: !98, inlinedAt: !99)
!103 = !DILocation(line: 991, column: 20, scope: !100, inlinedAt: !101)
!104 = !DILocation(line: 992, column: 36, scope: !100, inlinedAt: !101)
!105 = !DILocation(line: 992, column: 17, scope: !100, inlinedAt: !101)
!106 = !DILocation(line: 992, column: 11, scope: !100, inlinedAt: !101)
!107 = !DILocation(line: 993, column: 43, scope: !100, inlinedAt: !101)
!108 = !DILocation(line: 993, column: 10, scope: !100, inlinedAt: !101)
!109 = !DILocation(line: 1020, column: 14, scope: !95, inlinedAt: !96)
!110 = !DILocation(line: 351, column: 10, scope: !91, inlinedAt: !111)
!111 = distinct !DILocation(line: 86, column: 24, scope: !40)
!112 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !113)
!113 = distinct !DILocation(line: 87, column: 46, scope: !40)
!114 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !115)
!115 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !116)
!116 = distinct !DILocation(line: 1019, column: 11, scope: !95, inlinedAt: !113)
!117 = !DILocation(line: 171, column: 10, scope: !98, inlinedAt: !115)
!118 = !DILocation(line: 991, column: 20, scope: !100, inlinedAt: !116)
!119 = !DILocation(line: 992, column: 36, scope: !100, inlinedAt: !116)
!120 = !DILocation(line: 992, column: 17, scope: !100, inlinedAt: !116)
!121 = !DILocation(line: 992, column: 11, scope: !100, inlinedAt: !116)
!122 = !DILocation(line: 993, column: 43, scope: !100, inlinedAt: !116)
!123 = !DILocation(line: 993, column: 10, scope: !100, inlinedAt: !116)
!124 = !DILocation(line: 1020, column: 14, scope: !95, inlinedAt: !113)
!125 = !DILocation(line: 351, column: 10, scope: !91, inlinedAt: !126)
!126 = distinct !DILocation(line: 87, column: 24, scope: !40)
!127 = !DILocation(line: 98, column: 24, scope: !40)
!128 = !DILocation(line: 99, column: 24, scope: !40)
!129 = !DILocation(line: 100, column: 24, scope: !40)
!130 = !DILocation(line: 101, column: 24, scope: !40)
!131 = !DILocation(line: 103, column: 23, scope: !40)
!132 = !DILocation(line: 104, column: 23, scope: !40)
!133 = !DILocation(line: 105, column: 23, scope: !40)
!134 = !DILocation(line: 106, column: 23, scope: !40)
!135 = !DILocation(line: 108, column: 21, scope: !40)
!136 = !DILocation(line: 109, column: 21, scope: !40)
!137 = !DILocation(line: 110, column: 21, scope: !40)
!138 = !DILocation(line: 111, column: 21, scope: !40)
!139 = !DILocation(line: 285, column: 49, scope: !140, inlinedAt: !141)
!140 = distinct !DISubprogram(name: "exp2f", scope: !92, file: !92, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!141 = distinct !DILocation(line: 112, column: 13, scope: !40)
!142 = !DILocation(line: 285, column: 49, scope: !140, inlinedAt: !143)
!143 = distinct !DILocation(line: 113, column: 13, scope: !40)
!144 = !DILocation(line: 285, column: 49, scope: !140, inlinedAt: !145)
!145 = distinct !DILocation(line: 114, column: 13, scope: !40)
!146 = !DILocation(line: 285, column: 49, scope: !140, inlinedAt: !147)
!147 = distinct !DILocation(line: 115, column: 13, scope: !40)
!148 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !151)
!149 = distinct !DISubprogram(name: "__float2half_rn", scope: !150, file: !150, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!150 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!151 = distinct !DILocation(line: 1077, column: 18, scope: !152, inlinedAt: !153)
!152 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !150, file: !150, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!153 = distinct !DILocation(line: 1295, column: 23, scope: !154, inlinedAt: !155)
!154 = distinct !DISubprogram(name: "__float22half2_rn", scope: !150, file: !150, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!155 = distinct !DILocation(line: 116, column: 27, scope: !40)
!156 = !{!157, !159}
!157 = distinct !{!157, !158, !"_ZL17__floats2half2_rnff: %agg.result"}
!158 = distinct !{!158, !"_ZL17__floats2half2_rnff"}
!159 = distinct !{!159, !160, !"_ZL17__float22half2_rn6float2: %agg.result"}
!160 = distinct !{!160, !"_ZL17__float22half2_rn6float2"}
!161 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !162)
!162 = distinct !DILocation(line: 1077, column: 38, scope: !152, inlinedAt: !153)
!163 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !164)
!164 = distinct !DILocation(line: 1077, column: 18, scope: !152, inlinedAt: !165)
!165 = distinct !DILocation(line: 1295, column: 23, scope: !154, inlinedAt: !166)
!166 = distinct !DILocation(line: 117, column: 27, scope: !40)
!167 = !{!168, !170}
!168 = distinct !{!168, !169, !"_ZL17__floats2half2_rnff: %agg.result"}
!169 = distinct !{!169, !"_ZL17__floats2half2_rnff"}
!170 = distinct !{!170, !171, !"_ZL17__float22half2_rn6float2: %agg.result"}
!171 = distinct !{!171, !"_ZL17__float22half2_rn6float2"}
!172 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !173)
!173 = distinct !DILocation(line: 1077, column: 38, scope: !152, inlinedAt: !165)
!174 = !DILocation(line: 118, column: 34, scope: !40)
!175 = !DILocation(line: 1082, column: 16, scope: !176, inlinedAt: !177)
!176 = distinct !DISubprogram(name: "__half2float", scope: !150, file: !150, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!177 = distinct !DILocation(line: 136, column: 55, scope: !178, inlinedAt: !179)
!178 = distinct !DISubprogram(name: "operator float", scope: !150, file: !150, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!179 = distinct !DILocation(line: 122, column: 50, scope: !40)
!180 = !DILocation(line: 122, column: 40, scope: !40)
!181 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !182)
!182 = distinct !DILocation(line: 124, column: 40, scope: !40)
!183 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !184)
!184 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !185)
!185 = distinct !DILocation(line: 1019, column: 11, scope: !95, inlinedAt: !182)
!186 = !DILocation(line: 171, column: 10, scope: !98, inlinedAt: !184)
!187 = !DILocation(line: 991, column: 20, scope: !100, inlinedAt: !185)
!188 = !DILocation(line: 992, column: 36, scope: !100, inlinedAt: !185)
!189 = !DILocation(line: 992, column: 17, scope: !100, inlinedAt: !185)
!190 = !DILocation(line: 992, column: 11, scope: !100, inlinedAt: !185)
!191 = !DILocation(line: 993, column: 43, scope: !100, inlinedAt: !185)
!192 = !DILocation(line: 993, column: 10, scope: !100, inlinedAt: !185)
!193 = !DILocation(line: 1020, column: 14, scope: !95, inlinedAt: !182)
!194 = !DILocation(line: 124, column: 38, scope: !40)
!195 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !196)
!196 = distinct !DILocation(line: 125, column: 40, scope: !40)
!197 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !198)
!198 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !199)
!199 = distinct !DILocation(line: 1019, column: 11, scope: !95, inlinedAt: !196)
!200 = !DILocation(line: 171, column: 10, scope: !98, inlinedAt: !198)
!201 = !DILocation(line: 991, column: 20, scope: !100, inlinedAt: !199)
!202 = !DILocation(line: 992, column: 36, scope: !100, inlinedAt: !199)
!203 = !DILocation(line: 992, column: 17, scope: !100, inlinedAt: !199)
!204 = !DILocation(line: 992, column: 11, scope: !100, inlinedAt: !199)
!205 = !DILocation(line: 993, column: 43, scope: !100, inlinedAt: !199)
!206 = !DILocation(line: 993, column: 10, scope: !100, inlinedAt: !199)
!207 = !DILocation(line: 1020, column: 14, scope: !95, inlinedAt: !196)
!208 = !DILocation(line: 125, column: 38, scope: !40)
!209 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !210)
!210 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !211)
!211 = distinct !DILocation(line: 127, column: 5, scope: !40)
!212 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !210)
!213 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !210)
!214 = !DILocation(line: 130, column: 52, scope: !40)
!215 = !DILocation(line: 130, column: 38, scope: !40)
!216 = !DILocation(line: 137, column: 24, scope: !40)
!217 = !DILocation(line: 137, column: 157, scope: !40)
!218 = !DILocation(line: 135, column: 25, scope: !40)
!219 = !DILocation(line: 137, column: 40, scope: !40)
!220 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !221)
!221 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !222)
!222 = distinct !DILocation(line: 139, column: 5, scope: !40)
!223 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !221)
!224 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !221)
!225 = !DILocation(line: 142, column: 119, scope: !40)
!226 = !DILocation(line: 142, column: 63, scope: !40)
!227 = !DILocation(line: 142, column: 44, scope: !40)
!228 = !DILocation(line: 147, column: 46, scope: !40)
!229 = !DILocation(line: 126, column: 38, scope: !40)
!230 = !DILocation(line: 0, scope: !40)
!231 = !DILocation(line: 153, column: 3, scope: !40)
!232 = !DILocation(line: 154, column: 90, scope: !40)
!233 = !DILocation(line: 154, column: 26, scope: !40)
!234 = !DILocation(line: 154, column: 103, scope: !40)
!235 = !DILocation(line: 155, column: 12, scope: !40)
!236 = !DILocation(line: 155, column: 30, scope: !40)
!237 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !238)
!238 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !239)
!239 = distinct !DILocation(line: 156, column: 7, scope: !40)
!240 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !238)
!241 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !238)
!242 = !DILocation(line: 158, column: 12, scope: !40)
!243 = !DILocation(line: 159, column: 47, scope: !40)
!244 = !DILocation(line: 159, column: 33, scope: !40)
!245 = !DILocation(line: 162, column: 213, scope: !40)
!246 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !247)
!247 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !248)
!248 = distinct !DILocation(line: 165, column: 7, scope: !40)
!249 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !247)
!250 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !247)
!251 = !DILocation(line: 170, column: 32, scope: !40)
!252 = !DILocation(line: 172, column: 37, scope: !40)
!253 = !DILocation(line: 180, column: 78, scope: !40)
!254 = !DILocation(line: 180, column: 13, scope: !40)
!255 = !DILocation(line: 180, column: 65, scope: !40)
!256 = !DILocation(line: 351, column: 10, scope: !91, inlinedAt: !257)
!257 = distinct !DILocation(line: 190, column: 28, scope: !40)
!258 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !259)
!259 = distinct !DILocation(line: 192, column: 48, scope: !40)
!260 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !261)
!261 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !262)
!262 = distinct !DILocation(line: 1019, column: 11, scope: !95, inlinedAt: !259)
!263 = !DILocation(line: 171, column: 10, scope: !98, inlinedAt: !261)
!264 = !DILocation(line: 991, column: 20, scope: !100, inlinedAt: !262)
!265 = !DILocation(line: 992, column: 36, scope: !100, inlinedAt: !262)
!266 = !DILocation(line: 992, column: 17, scope: !100, inlinedAt: !262)
!267 = !DILocation(line: 992, column: 11, scope: !100, inlinedAt: !262)
!268 = !DILocation(line: 993, column: 43, scope: !100, inlinedAt: !262)
!269 = !DILocation(line: 993, column: 10, scope: !100, inlinedAt: !262)
!270 = !DILocation(line: 1020, column: 14, scope: !95, inlinedAt: !259)
!271 = !DILocation(line: 351, column: 10, scope: !91, inlinedAt: !272)
!272 = distinct !DILocation(line: 192, column: 26, scope: !40)
!273 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !274)
!274 = distinct !DILocation(line: 193, column: 48, scope: !40)
!275 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !276)
!276 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !277)
!277 = distinct !DILocation(line: 1019, column: 11, scope: !95, inlinedAt: !274)
!278 = !DILocation(line: 171, column: 10, scope: !98, inlinedAt: !276)
!279 = !DILocation(line: 991, column: 20, scope: !100, inlinedAt: !277)
!280 = !DILocation(line: 992, column: 36, scope: !100, inlinedAt: !277)
!281 = !DILocation(line: 992, column: 17, scope: !100, inlinedAt: !277)
!282 = !DILocation(line: 992, column: 11, scope: !100, inlinedAt: !277)
!283 = !DILocation(line: 993, column: 43, scope: !100, inlinedAt: !277)
!284 = !DILocation(line: 993, column: 10, scope: !100, inlinedAt: !277)
!285 = !DILocation(line: 1020, column: 14, scope: !95, inlinedAt: !274)
!286 = !DILocation(line: 351, column: 10, scope: !91, inlinedAt: !287)
!287 = distinct !DILocation(line: 193, column: 26, scope: !40)
!288 = !DILocation(line: 351, column: 10, scope: !91, inlinedAt: !289)
!289 = distinct !DILocation(line: 194, column: 24, scope: !40)
!290 = !DILocation(line: 195, column: 39, scope: !40)
!291 = !DILocation(line: 195, column: 57, scope: !40)
!292 = !DILocation(line: 285, column: 49, scope: !140, inlinedAt: !293)
!293 = distinct !DILocation(line: 195, column: 20, scope: !40)
!294 = !DILocation(line: 199, column: 25, scope: !40)
!295 = !DILocation(line: 201, column: 26, scope: !40)
!296 = !DILocation(line: 202, column: 26, scope: !40)
!297 = !DILocation(line: 203, column: 26, scope: !40)
!298 = !DILocation(line: 204, column: 26, scope: !40)
!299 = !DILocation(line: 205, column: 47, scope: !40)
!300 = !DILocation(line: 218, column: 29, scope: !40)
!301 = !DILocation(line: 219, column: 29, scope: !40)
!302 = !DILocation(line: 220, column: 29, scope: !40)
!303 = !DILocation(line: 221, column: 29, scope: !40)
!304 = !DILocation(line: 223, column: 27, scope: !40)
!305 = !DILocation(line: 224, column: 27, scope: !40)
!306 = !DILocation(line: 225, column: 27, scope: !40)
!307 = !DILocation(line: 226, column: 27, scope: !40)
!308 = !DILocation(line: 228, column: 24, scope: !40)
!309 = !DILocation(line: 229, column: 24, scope: !40)
!310 = !DILocation(line: 230, column: 24, scope: !40)
!311 = !DILocation(line: 231, column: 24, scope: !40)
!312 = !DILocation(line: 285, column: 49, scope: !140, inlinedAt: !313)
!313 = distinct !DILocation(line: 232, column: 15, scope: !40)
!314 = !DILocation(line: 285, column: 49, scope: !140, inlinedAt: !315)
!315 = distinct !DILocation(line: 233, column: 15, scope: !40)
!316 = !DILocation(line: 285, column: 49, scope: !140, inlinedAt: !317)
!317 = distinct !DILocation(line: 234, column: 15, scope: !40)
!318 = !DILocation(line: 285, column: 49, scope: !140, inlinedAt: !319)
!319 = distinct !DILocation(line: 235, column: 15, scope: !40)
!320 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !321)
!321 = distinct !DILocation(line: 1077, column: 18, scope: !152, inlinedAt: !322)
!322 = distinct !DILocation(line: 1295, column: 23, scope: !154, inlinedAt: !323)
!323 = distinct !DILocation(line: 236, column: 29, scope: !40)
!324 = !{!325, !327}
!325 = distinct !{!325, !326, !"_ZL17__floats2half2_rnff: %agg.result"}
!326 = distinct !{!326, !"_ZL17__floats2half2_rnff"}
!327 = distinct !{!327, !328, !"_ZL17__float22half2_rn6float2: %agg.result"}
!328 = distinct !{!328, !"_ZL17__float22half2_rn6float2"}
!329 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !330)
!330 = distinct !DILocation(line: 1077, column: 38, scope: !152, inlinedAt: !322)
!331 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !332)
!332 = distinct !DILocation(line: 1077, column: 18, scope: !152, inlinedAt: !333)
!333 = distinct !DILocation(line: 1295, column: 23, scope: !154, inlinedAt: !334)
!334 = distinct !DILocation(line: 237, column: 29, scope: !40)
!335 = !{!336, !338}
!336 = distinct !{!336, !337, !"_ZL17__floats2half2_rnff: %agg.result"}
!337 = distinct !{!337, !"_ZL17__floats2half2_rnff"}
!338 = distinct !{!338, !339, !"_ZL17__float22half2_rn6float2: %agg.result"}
!339 = distinct !{!339, !"_ZL17__float22half2_rn6float2"}
!340 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !341)
!341 = distinct !DILocation(line: 1077, column: 38, scope: !152, inlinedAt: !333)
!342 = !DILocation(line: 238, column: 36, scope: !40)
!343 = !DILocation(line: 1082, column: 16, scope: !176, inlinedAt: !344)
!344 = distinct !DILocation(line: 136, column: 55, scope: !178, inlinedAt: !345)
!345 = distinct !DILocation(line: 242, column: 52, scope: !40)
!346 = !DILocation(line: 242, column: 42, scope: !40)
!347 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !348)
!348 = distinct !DILocation(line: 244, column: 42, scope: !40)
!349 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !350)
!350 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !351)
!351 = distinct !DILocation(line: 1019, column: 11, scope: !95, inlinedAt: !348)
!352 = !DILocation(line: 171, column: 10, scope: !98, inlinedAt: !350)
!353 = !DILocation(line: 991, column: 20, scope: !100, inlinedAt: !351)
!354 = !DILocation(line: 992, column: 36, scope: !100, inlinedAt: !351)
!355 = !DILocation(line: 992, column: 17, scope: !100, inlinedAt: !351)
!356 = !DILocation(line: 992, column: 11, scope: !100, inlinedAt: !351)
!357 = !DILocation(line: 993, column: 43, scope: !100, inlinedAt: !351)
!358 = !DILocation(line: 993, column: 10, scope: !100, inlinedAt: !351)
!359 = !DILocation(line: 1020, column: 14, scope: !95, inlinedAt: !348)
!360 = !DILocation(line: 244, column: 40, scope: !40)
!361 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !362)
!362 = distinct !DILocation(line: 245, column: 42, scope: !40)
!363 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !364)
!364 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !365)
!365 = distinct !DILocation(line: 1019, column: 11, scope: !95, inlinedAt: !362)
!366 = !DILocation(line: 171, column: 10, scope: !98, inlinedAt: !364)
!367 = !DILocation(line: 991, column: 20, scope: !100, inlinedAt: !365)
!368 = !DILocation(line: 992, column: 36, scope: !100, inlinedAt: !365)
!369 = !DILocation(line: 992, column: 17, scope: !100, inlinedAt: !365)
!370 = !DILocation(line: 992, column: 11, scope: !100, inlinedAt: !365)
!371 = !DILocation(line: 993, column: 43, scope: !100, inlinedAt: !365)
!372 = !DILocation(line: 993, column: 10, scope: !100, inlinedAt: !365)
!373 = !DILocation(line: 1020, column: 14, scope: !95, inlinedAt: !362)
!374 = !DILocation(line: 245, column: 40, scope: !40)
!375 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !376)
!376 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !377)
!377 = distinct !DILocation(line: 247, column: 7, scope: !40)
!378 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !376)
!379 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !376)
!380 = !DILocation(line: 250, column: 56, scope: !40)
!381 = !DILocation(line: 250, column: 42, scope: !40)
!382 = !DILocation(line: 207, column: 40, scope: !40)
!383 = !DILocation(line: 257, column: 26, scope: !40)
!384 = !DILocation(line: 257, column: 163, scope: !40)
!385 = !DILocation(line: 255, column: 27, scope: !40)
!386 = !DILocation(line: 257, column: 44, scope: !40)
!387 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !388)
!388 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !389)
!389 = distinct !DILocation(line: 259, column: 7, scope: !40)
!390 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !388)
!391 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !388)
!392 = !DILocation(line: 262, column: 121, scope: !40)
!393 = !DILocation(line: 262, column: 65, scope: !40)
!394 = !DILocation(line: 262, column: 46, scope: !40)
!395 = !DILocation(line: 267, column: 46, scope: !40)
!396 = !DILocation(line: 246, column: 40, scope: !40)
!397 = !DILocation(line: 153, column: 40, scope: !40)
!398 = !DILocation(line: 277, column: 22, scope: !40)
!399 = !DILocation(line: 279, column: 24, scope: !40)
!400 = !DILocation(line: 280, column: 24, scope: !40)
!401 = !DILocation(line: 281, column: 24, scope: !40)
!402 = !DILocation(line: 282, column: 24, scope: !40)
!403 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !404)
!404 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !405)
!405 = distinct !DILocation(line: 285, column: 3, scope: !40)
!406 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !404)
!407 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !404)
!408 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !409)
!409 = distinct !DILocation(line: 1077, column: 18, scope: !152, inlinedAt: !410)
!410 = distinct !DILocation(line: 1295, column: 23, scope: !154, inlinedAt: !411)
!411 = distinct !DILocation(line: 290, column: 28, scope: !40)
!412 = !{!413, !415}
!413 = distinct !{!413, !414, !"_ZL17__floats2half2_rnff: %agg.result"}
!414 = distinct !{!414, !"_ZL17__floats2half2_rnff"}
!415 = distinct !{!415, !416, !"_ZL17__float22half2_rn6float2: %agg.result"}
!416 = distinct !{!416, !"_ZL17__float22half2_rn6float2"}
!417 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !418)
!418 = distinct !DILocation(line: 1077, column: 38, scope: !152, inlinedAt: !410)
!419 = !DILocation(line: 596, column: 67, scope: !420, inlinedAt: !421)
!420 = distinct !DISubprogram(name: "__half2", scope: !150, file: !150, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!421 = distinct !DILocation(line: 1077, column: 10, scope: !152, inlinedAt: !410)
!422 = !DILocation(line: 596, column: 73, scope: !420, inlinedAt: !421)
!423 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !424)
!424 = distinct !DILocation(line: 1077, column: 18, scope: !152, inlinedAt: !425)
!425 = distinct !DILocation(line: 1295, column: 23, scope: !154, inlinedAt: !426)
!426 = distinct !DILocation(line: 291, column: 28, scope: !40)
!427 = !{!428, !430}
!428 = distinct !{!428, !429, !"_ZL17__floats2half2_rnff: %agg.result"}
!429 = distinct !{!429, !"_ZL17__floats2half2_rnff"}
!430 = distinct !{!430, !431, !"_ZL17__float22half2_rn6float2: %agg.result"}
!431 = distinct !{!431, !"_ZL17__float22half2_rn6float2"}
!432 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !433)
!433 = distinct !DILocation(line: 1077, column: 38, scope: !152, inlinedAt: !425)
!434 = !DILocation(line: 596, column: 67, scope: !420, inlinedAt: !435)
!435 = distinct !DILocation(line: 1077, column: 10, scope: !152, inlinedAt: !425)
!436 = !DILocation(line: 596, column: 73, scope: !420, inlinedAt: !435)
!437 = !DILocation(line: 292, column: 38, scope: !40)
!438 = !DILocation(line: 293, column: 141, scope: !40)
!439 = !DILocation(line: 293, column: 22, scope: !40)
!440 = !DILocation(line: 293, column: 184, scope: !40)
!441 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !442)
!442 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !443)
!443 = distinct !DILocation(line: 295, column: 3, scope: !40)
!444 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !442)
!445 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !442)
!446 = !DILocation(line: 297, column: 8, scope: !40)
!447 = !DILocation(line: 298, column: 22, scope: !40)
!448 = !DILocation(line: 298, column: 134, scope: !40)
!449 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!450 = !{i32 2, i32 -1, i32 -1, i32 -1}
!451 = !DILocation(line: 298, column: 153, scope: !40)
!452 = !DILocation(line: 300, column: 1, scope: !40)
