; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v066_codex_power_s8_quad_loop_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v066_codex_power_s8_quad_loop_sc-16g-2/codegen/case12.device.cpp"
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
  %xor774 = and i32 %mul11, 56
  %call27.masked = and i32 %2, 1016
  %mul29 = xor i32 %xor774, %call27.masked
  %and33 = lshr i32 %2, 3
  %shr34 = and i32 %and33, 1
  %3 = zext nneg i32 %add9 to i64, !dbg !43
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %3, !dbg !44
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %add.ptr, align 16, !dbg !45
  %qk_fetch.sroa.22.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !45
  %qk_fetch.sroa.22.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.add.ptr.sroa_idx, align 8, !dbg !45
  %4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul29, !dbg !46
  %5 = getelementptr inbounds %struct.__half, ptr addrspace(3) %4, i32 %mul24, !dbg !46
  %add.ptr39.idx = shl nuw nsw i32 %shr34, 3, !dbg !46
  %add.ptr39 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr39, align 8, !dbg !47
  %xor35.1 = shl nuw nsw i32 %shr34, 3, !dbg !46
  %add.ptr39.idx.1 = xor i32 %xor35.1, 8, !dbg !46
  %add.ptr39.1 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.22.0.copyload, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !47
  %6 = add nuw nsw i64 %3, 512, !dbg !48
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %6, !dbg !44
  %qk_fetch.sroa.0.0.copyload2020 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %qk_fetch.sroa.22.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %qk_fetch.sroa.22.0.copyload2029 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.add.ptr.1.sroa_idx, align 8, !dbg !45
  %7 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 1024, !dbg !46
  %add.ptr39.1876 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload2020, ptr addrspace(3) %add.ptr39.1876, align 8, !dbg !47
  %add.ptr39.1.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.22.0.copyload2029, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !47
  fence syncscope("warp") release, !dbg !49
  tail call void @llvm.mxc.barrier.warp(), !dbg !55
  fence syncscope("warp") acquire, !dbg !56
  %and48 = shl nuw nsw i32 %2, 6
  %mul49 = and i32 %and48, 960
  %shr52 = lshr i32 %2, 5
  %and55 = and i32 %2, 7
  %and60 = lshr i32 %2, 4
  %8 = xor i32 %and33, %and60
  %xor65773 = xor i32 %8, %2
  %xor68 = shl nuw nsw i32 %xor65773, 2
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
  %mul103 = shl nsw i32 %0, 13
  %mul105 = shl nsw i32 %1, 3
  %add106 = add nuw nsw i32 %mul103, %mul105
  %conv = zext nneg i32 %0 to i64
  %mul129 = zext nneg i32 %mul11 to i64
  %invariant.gep859 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul129
  %13 = lshr i32 %2, 2
  %mul223 = and i32 %13, 252
  %mul424 = shl nuw nsw i64 %conv, 16
  %14 = shl nuw nsw i32 %2, 4
  %15 = and i32 %14, 16128
  %mul428 = zext nneg i32 %15 to i64
  %add429 = or disjoint i64 %mul424, %mul428
  %16 = shl nuw nsw i32 %2, 2
  %17 = and i32 %16, 60
  %mul439 = zext nneg i32 %17 to i64
  %add432 = or disjoint i64 %add429, %mul439
  %mul471 = and i32 %14, 240
  %shr477 = and i32 %13, 3
  %xor478 = xor i32 %shr477, %and60
  %and492 = shl nuw nsw i32 %2, 8
  %mul493 = and i32 %and492, 768
  %mul499 = and i32 %16, 48
  %and505 = and i32 %2, 3
  %18 = xor i32 %and60, %and505
  %19 = zext nneg i32 %add106 to i64, !dbg !64
  %.idx869 = shl nuw nsw i64 %conv, 17
  %invariant.gep2049 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep859, i64 %.idx869, !dbg !64
  %20 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add432
  %21 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul471
  %add.ptr483.idx = shl nuw nsw i32 %xor478, 3
  %add.ptr483 = getelementptr inbounds i8, ptr addrspace(3) %21, i32 %add.ptr483.idx
  %add472.1 = or disjoint i32 %mul471, 256
  %22 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add472.1
  %xor479.1 = shl nuw nsw i32 %xor478, 3
  %add.ptr483.idx.1 = xor i32 %xor479.1, 8
  %add.ptr483.1 = getelementptr inbounds i8, ptr addrspace(3) %22, i32 %add.ptr483.idx.1
  %add472.2 = or disjoint i32 %mul471, 512
  %23 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add472.2
  %xor479.2 = shl nuw nsw i32 %xor478, 3
  %add.ptr483.idx.2 = xor i32 %xor479.2, 16
  %add.ptr483.2 = getelementptr inbounds i8, ptr addrspace(3) %23, i32 %add.ptr483.idx.2
  %add472.3 = or disjoint i32 %mul471, 768
  %24 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add472.3
  %xor479.3 = shl nuw nsw i32 %xor478, 3
  %add.ptr483.idx.3 = xor i32 %xor479.3, 24
  %add.ptr483.3 = getelementptr inbounds i8, ptr addrspace(3) %24, i32 %add.ptr483.idx.3
  %add500 = or disjoint i32 %mul493, %mul499
  %25 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add500
  %add.ptr510.idx = shl nuw nsw i32 %18, 3
  %add.ptr510 = getelementptr inbounds i8, ptr addrspace(3) %25, i32 %add.ptr510.idx
  %add495.1 = or disjoint i32 %mul493, %mul499
  %add500.1 = or disjoint i32 %add495.1, 64
  %26 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add500.1
  %xor506.1 = shl nuw nsw i32 %18, 3
  %add.ptr510.idx.1 = xor i32 %xor506.1, 8
  %add.ptr510.1 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 %add.ptr510.idx.1
  %add495.2 = or disjoint i32 %mul493, %mul499
  %add500.2 = or disjoint i32 %add495.2, 128
  %27 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add500.2
  %xor506.2 = shl nuw nsw i32 %18, 3
  %add.ptr510.idx.2 = xor i32 %xor506.2, 16
  %add.ptr510.2 = getelementptr inbounds i8, ptr addrspace(3) %27, i32 %add.ptr510.idx.2
  %add495.3 = or disjoint i32 %mul493, %mul499
  %add500.3 = or disjoint i32 %add495.3, 192
  %28 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add500.3
  %xor506.3 = shl nuw nsw i32 %18, 3
  %add.ptr510.idx.3 = xor i32 %xor506.3, 24
  %add.ptr510.3 = getelementptr inbounds i8, ptr addrspace(3) %28, i32 %add.ptr510.idx.3
  %.idx869.1887 = shl nuw nsw i64 %conv, 17
  %invariant.gep2051 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep859, i64 %.idx869.1887, !dbg !64
  %29 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add432
  %30 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul471
  %add.ptr483.idx.1925 = shl nuw nsw i32 %xor478, 3
  %add.ptr483.1926 = getelementptr inbounds i8, ptr addrspace(3) %30, i32 %add.ptr483.idx.1925
  %add472.1.1 = or disjoint i32 %mul471, 256
  %31 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add472.1.1
  %xor479.1.1 = shl nuw nsw i32 %xor478, 3
  %add.ptr483.idx.1.1 = xor i32 %xor479.1.1, 8
  %add.ptr483.1.1 = getelementptr inbounds i8, ptr addrspace(3) %31, i32 %add.ptr483.idx.1.1
  %add472.2.1 = or disjoint i32 %mul471, 512
  %32 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add472.2.1
  %xor479.2.1 = shl nuw nsw i32 %xor478, 3
  %add.ptr483.idx.2.1 = xor i32 %xor479.2.1, 16
  %add.ptr483.2.1 = getelementptr inbounds i8, ptr addrspace(3) %32, i32 %add.ptr483.idx.2.1
  %add472.3.1 = or disjoint i32 %mul471, 768
  %33 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add472.3.1
  %xor479.3.1 = shl nuw nsw i32 %xor478, 3
  %add.ptr483.idx.3.1 = xor i32 %xor479.3.1, 24
  %add.ptr483.3.1 = getelementptr inbounds i8, ptr addrspace(3) %33, i32 %add.ptr483.idx.3.1
  %add500.1928 = or disjoint i32 %mul493, %mul499
  %34 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add500.1928
  %add.ptr510.idx.1929 = shl nuw nsw i32 %18, 3
  %add.ptr510.1930 = getelementptr inbounds i8, ptr addrspace(3) %34, i32 %add.ptr510.idx.1929
  %add495.1.1 = or disjoint i32 %mul493, %mul499
  %add500.1.1 = or disjoint i32 %add495.1.1, 64
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add500.1.1
  %xor506.1.1 = shl nuw nsw i32 %18, 3
  %add.ptr510.idx.1.1 = xor i32 %xor506.1.1, 8
  %add.ptr510.1.1 = getelementptr inbounds i8, ptr addrspace(3) %35, i32 %add.ptr510.idx.1.1
  %add495.2.1 = or disjoint i32 %mul493, %mul499
  %add500.2.1 = or disjoint i32 %add495.2.1, 128
  %36 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add500.2.1
  %xor506.2.1 = shl nuw nsw i32 %18, 3
  %add.ptr510.idx.2.1 = xor i32 %xor506.2.1, 16
  %add.ptr510.2.1 = getelementptr inbounds i8, ptr addrspace(3) %36, i32 %add.ptr510.idx.2.1
  %add495.3.1 = or disjoint i32 %mul493, %mul499
  %add500.3.1 = or disjoint i32 %add495.3.1, 192
  %37 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add500.3.1
  %xor506.3.1 = shl nuw nsw i32 %18, 3
  %add.ptr510.idx.3.1 = xor i32 %xor506.3.1, 24
  %add.ptr510.3.1 = getelementptr inbounds i8, ptr addrspace(3) %37, i32 %add.ptr510.idx.3.1
  %.idx869.2 = shl nuw nsw i64 %conv, 17
  %invariant.gep2052 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep859, i64 %.idx869.2, !dbg !64
  %38 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add432
  %39 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul471
  %add.ptr483.idx.2962 = shl nuw nsw i32 %xor478, 3
  %add.ptr483.2963 = getelementptr inbounds i8, ptr addrspace(3) %39, i32 %add.ptr483.idx.2962
  %add472.1.2 = or disjoint i32 %mul471, 256
  %40 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add472.1.2
  %xor479.1.2 = shl nuw nsw i32 %xor478, 3
  %add.ptr483.idx.1.2 = xor i32 %xor479.1.2, 8
  %add.ptr483.1.2 = getelementptr inbounds i8, ptr addrspace(3) %40, i32 %add.ptr483.idx.1.2
  %add472.2.2 = or disjoint i32 %mul471, 512
  %41 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add472.2.2
  %xor479.2.2 = shl nuw nsw i32 %xor478, 3
  %add.ptr483.idx.2.2 = xor i32 %xor479.2.2, 16
  %add.ptr483.2.2 = getelementptr inbounds i8, ptr addrspace(3) %41, i32 %add.ptr483.idx.2.2
  %add472.3.2 = or disjoint i32 %mul471, 768
  %42 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add472.3.2
  %xor479.3.2 = shl nuw nsw i32 %xor478, 3
  %add.ptr483.idx.3.2 = xor i32 %xor479.3.2, 24
  %add.ptr483.3.2 = getelementptr inbounds i8, ptr addrspace(3) %42, i32 %add.ptr483.idx.3.2
  %add500.2965 = or disjoint i32 %mul493, %mul499
  %43 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add500.2965
  %add.ptr510.idx.2966 = shl nuw nsw i32 %18, 3
  %add.ptr510.2967 = getelementptr inbounds i8, ptr addrspace(3) %43, i32 %add.ptr510.idx.2966
  %add495.1.2 = or disjoint i32 %mul493, %mul499
  %add500.1.2 = or disjoint i32 %add495.1.2, 64
  %44 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add500.1.2
  %xor506.1.2 = shl nuw nsw i32 %18, 3
  %add.ptr510.idx.1.2 = xor i32 %xor506.1.2, 8
  %add.ptr510.1.2 = getelementptr inbounds i8, ptr addrspace(3) %44, i32 %add.ptr510.idx.1.2
  %add495.2.2 = or disjoint i32 %mul493, %mul499
  %add500.2.2 = or disjoint i32 %add495.2.2, 128
  %45 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add500.2.2
  %xor506.2.2 = shl nuw nsw i32 %18, 3
  %add.ptr510.idx.2.2 = xor i32 %xor506.2.2, 16
  %add.ptr510.2.2 = getelementptr inbounds i8, ptr addrspace(3) %45, i32 %add.ptr510.idx.2.2
  %add495.3.2 = or disjoint i32 %mul493, %mul499
  %add500.3.2 = or disjoint i32 %add495.3.2, 192
  %46 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add500.3.2
  %xor506.3.2 = shl nuw nsw i32 %18, 3
  %add.ptr510.idx.3.2 = xor i32 %xor506.3.2, 24
  %add.ptr510.3.2 = getelementptr inbounds i8, ptr addrspace(3) %46, i32 %add.ptr510.idx.3.2
  %.idx869.3 = shl nuw nsw i64 %conv, 17
  %invariant.gep2054 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep859, i64 %.idx869.3, !dbg !64
  %47 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add432
  %48 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul471
  %add.ptr483.idx.3999 = shl nuw nsw i32 %xor478, 3
  %add.ptr483.31000 = getelementptr inbounds i8, ptr addrspace(3) %48, i32 %add.ptr483.idx.3999
  %add472.1.3 = or disjoint i32 %mul471, 256
  %49 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add472.1.3
  %xor479.1.3 = shl nuw nsw i32 %xor478, 3
  %add.ptr483.idx.1.3 = xor i32 %xor479.1.3, 8
  %add.ptr483.1.3 = getelementptr inbounds i8, ptr addrspace(3) %49, i32 %add.ptr483.idx.1.3
  %add472.2.3 = or disjoint i32 %mul471, 512
  %50 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add472.2.3
  %xor479.2.3 = shl nuw nsw i32 %xor478, 3
  %add.ptr483.idx.2.3 = xor i32 %xor479.2.3, 16
  %add.ptr483.2.3 = getelementptr inbounds i8, ptr addrspace(3) %50, i32 %add.ptr483.idx.2.3
  %add472.3.3 = or disjoint i32 %mul471, 768
  %51 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add472.3.3
  %xor479.3.3 = shl nuw nsw i32 %xor478, 3
  %add.ptr483.idx.3.3 = xor i32 %xor479.3.3, 24
  %add.ptr483.3.3 = getelementptr inbounds i8, ptr addrspace(3) %51, i32 %add.ptr483.idx.3.3
  %add500.31002 = or disjoint i32 %mul493, %mul499
  %52 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add500.31002
  %add.ptr510.idx.31003 = shl nuw nsw i32 %18, 3
  %add.ptr510.31004 = getelementptr inbounds i8, ptr addrspace(3) %52, i32 %add.ptr510.idx.31003
  %add495.1.3 = or disjoint i32 %mul493, %mul499
  %add500.1.3 = or disjoint i32 %add495.1.3, 64
  %53 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add500.1.3
  %xor506.1.3 = shl nuw nsw i32 %18, 3
  %add.ptr510.idx.1.3 = xor i32 %xor506.1.3, 8
  %add.ptr510.1.3 = getelementptr inbounds i8, ptr addrspace(3) %53, i32 %add.ptr510.idx.1.3
  %add495.2.3 = or disjoint i32 %mul493, %mul499
  %add500.2.3 = or disjoint i32 %add495.2.3, 128
  %54 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add500.2.3
  %xor506.2.3 = shl nuw nsw i32 %18, 3
  %add.ptr510.idx.2.3 = xor i32 %xor506.2.3, 16
  %add.ptr510.2.3 = getelementptr inbounds i8, ptr addrspace(3) %54, i32 %add.ptr510.idx.2.3
  %add495.3.3 = or disjoint i32 %mul493, %mul499
  %add500.3.3 = or disjoint i32 %add495.3.3, 192
  %55 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add500.3.3
  %xor506.3.3 = shl nuw nsw i32 %18, 3
  %add.ptr510.idx.3.3 = xor i32 %xor506.3.3, 24
  %add.ptr510.3.3 = getelementptr inbounds i8, ptr addrspace(3) %55, i32 %add.ptr510.idx.3.3
  br label %for.cond98.preheader, !dbg !64

for.cond98.preheader:                             ; preds = %entry, %if.end536.3
  %numerator.sroa.170.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %numerator.sroa.170.4, %if.end536.3 ], !dbg !65
  %numerator.sroa.114.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %numerator.sroa.114.4, %if.end536.3 ], !dbg !65
  %numerator.sroa.58.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %numerator.sroa.58.4, %if.end536.3 ], !dbg !65
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %numerator.sroa.0.4, %if.end536.3 ], !dbg !65
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end536.3 ]
  %denominator.sroa.0.0862 = phi float [ 0.000000e+00, %entry ], [ %denominator.sroa.0.2.3, %if.end536.3 ]
  %maximum.sroa.0.0861 = phi float [ 0xFFF0000000000000, %entry ], [ %maximum.sroa.0.2.3, %if.end536.3 ]
  %56 = shl nuw nsw i64 %indvars.iv, 2
  %57 = add nuw nsw i64 %56, %19
  %arrayidx110 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %57, !dbg !66
  %58 = load i32, ptr addrspace(1) %arrayidx110, align 4, !dbg !66, !tbaa !30
  %mul111 = shl nsw i32 %58, 4, !dbg !67
  %cmp112 = icmp slt i32 %58, 0, !dbg !68
  %cmp114.not = icmp sgt i32 %mul111, %1
  %or.cond = select i1 %cmp112, i1 true, i1 %cmp114.not, !dbg !69
  br i1 %or.cond, label %if.end536, label %if.then, !dbg !69

for.cond543.preheader:                            ; preds = %if.end536.3
  %numerator.sroa.0.0.vec.extract1664 = extractelement <4 x float> %numerator.sroa.0.4, i64 0, !dbg !70
  %numerator.sroa.0.4.vec.extract1685 = extractelement <4 x float> %numerator.sroa.0.4, i64 1, !dbg !70
  %numerator.sroa.0.8.vec.extract1706 = extractelement <4 x float> %numerator.sroa.0.4, i64 2, !dbg !70
  %numerator.sroa.0.12.vec.extract1727 = extractelement <4 x float> %numerator.sroa.0.4, i64 3, !dbg !70
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract1664, %denominator.sroa.0.2.3, !dbg !71
  %div561 = fdiv contract float %numerator.sroa.0.4.vec.extract1685, %denominator.sroa.0.2.3, !dbg !72
  %div565 = fdiv contract float %numerator.sroa.0.8.vec.extract1706, %denominator.sroa.0.2.3, !dbg !73
  %div569 = fdiv contract float %numerator.sroa.0.12.vec.extract1727, %denominator.sroa.0.2.3, !dbg !74
  %numerator.sroa.58.16.vec.extract1750 = extractelement <4 x float> %numerator.sroa.58.4, i64 0, !dbg !70
  %numerator.sroa.58.20.vec.extract1771 = extractelement <4 x float> %numerator.sroa.58.4, i64 1, !dbg !70
  %numerator.sroa.58.24.vec.extract1792 = extractelement <4 x float> %numerator.sroa.58.4, i64 2, !dbg !70
  %numerator.sroa.58.28.vec.extract1813 = extractelement <4 x float> %numerator.sroa.58.4, i64 3, !dbg !70
  %div.1 = fdiv contract float %numerator.sroa.58.16.vec.extract1750, %denominator.sroa.0.2.3, !dbg !71
  %div561.1 = fdiv contract float %numerator.sroa.58.20.vec.extract1771, %denominator.sroa.0.2.3, !dbg !72
  %div565.1 = fdiv contract float %numerator.sroa.58.24.vec.extract1792, %denominator.sroa.0.2.3, !dbg !73
  %div569.1 = fdiv contract float %numerator.sroa.58.28.vec.extract1813, %denominator.sroa.0.2.3, !dbg !74
  %numerator.sroa.114.32.vec.extract1838 = extractelement <4 x float> %numerator.sroa.114.4, i64 0, !dbg !70
  %numerator.sroa.114.36.vec.extract1859 = extractelement <4 x float> %numerator.sroa.114.4, i64 1, !dbg !70
  %numerator.sroa.114.40.vec.extract1880 = extractelement <4 x float> %numerator.sroa.114.4, i64 2, !dbg !70
  %numerator.sroa.114.44.vec.extract1901 = extractelement <4 x float> %numerator.sroa.114.4, i64 3, !dbg !70
  %div.2 = fdiv contract float %numerator.sroa.114.32.vec.extract1838, %denominator.sroa.0.2.3, !dbg !71
  %div561.2 = fdiv contract float %numerator.sroa.114.36.vec.extract1859, %denominator.sroa.0.2.3, !dbg !72
  %div565.2 = fdiv contract float %numerator.sroa.114.40.vec.extract1880, %denominator.sroa.0.2.3, !dbg !73
  %div569.2 = fdiv contract float %numerator.sroa.114.44.vec.extract1901, %denominator.sroa.0.2.3, !dbg !74
  %numerator.sroa.170.48.vec.extract1926 = extractelement <4 x float> %numerator.sroa.170.4, i64 0, !dbg !70
  %numerator.sroa.170.52.vec.extract1947 = extractelement <4 x float> %numerator.sroa.170.4, i64 1, !dbg !70
  %numerator.sroa.170.56.vec.extract1968 = extractelement <4 x float> %numerator.sroa.170.4, i64 2, !dbg !70
  %numerator.sroa.170.60.vec.extract1989 = extractelement <4 x float> %numerator.sroa.170.4, i64 3, !dbg !70
  %div.3 = fdiv contract float %numerator.sroa.170.48.vec.extract1926, %denominator.sroa.0.2.3, !dbg !71
  %div561.3 = fdiv contract float %numerator.sroa.170.52.vec.extract1947, %denominator.sroa.0.2.3, !dbg !72
  %div565.3 = fdiv contract float %numerator.sroa.170.56.vec.extract1968, %denominator.sroa.0.2.3, !dbg !73
  %div569.3 = fdiv contract float %numerator.sroa.170.60.vec.extract1989, %denominator.sroa.0.2.3, !dbg !74
  fence syncscope("warp") release, !dbg !75
  tail call void @llvm.mxc.barrier.warp(), !dbg !78
  fence syncscope("warp") acquire, !dbg !79
  %mul615 = and i32 %13, 4
  %59 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !80
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !80, !noalias !88
  %60 = fptrunc float %div to half, !dbg !80
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %59), !dbg !80, !noalias !88
  %61 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !93
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !93, !noalias !88
  %62 = fptrunc float %div561 to half, !dbg !93
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %61), !dbg !93, !noalias !88
  %63 = bitcast half %60 to i16, !dbg !95
  %64 = bitcast half %62 to i16, !dbg !98
  %65 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !99
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !99, !noalias !103
  %66 = fptrunc float %div565 to half, !dbg !99
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %65), !dbg !99, !noalias !103
  %67 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !108
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !108, !noalias !103
  %68 = fptrunc float %div569 to half, !dbg !108
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %67), !dbg !108, !noalias !103
  %69 = bitcast half %66 to i16, !dbg !110
  %70 = bitcast half %68 to i16, !dbg !112
  %__8.sroa.6.0.insert.ext = zext i16 %70 to i64, !dbg !113
  %__8.sroa.6.0.insert.shift = shl nuw i64 %__8.sroa.6.0.insert.ext, 48, !dbg !113
  %__8.sroa.5.0.insert.ext = zext i16 %69 to i64, !dbg !113
  %__8.sroa.5.0.insert.shift = shl nuw nsw i64 %__8.sroa.5.0.insert.ext, 32, !dbg !113
  %__8.sroa.5.0.insert.insert = or disjoint i64 %__8.sroa.6.0.insert.shift, %__8.sroa.5.0.insert.shift, !dbg !113
  %__8.sroa.4.0.insert.ext = zext i16 %64 to i64, !dbg !113
  %__8.sroa.4.0.insert.shift = shl nuw nsw i64 %__8.sroa.4.0.insert.ext, 16, !dbg !113
  %__8.sroa.4.0.insert.insert = or disjoint i64 %__8.sroa.5.0.insert.insert, %__8.sroa.4.0.insert.shift, !dbg !113
  %__8.sroa.0.0.insert.ext = zext i16 %63 to i64, !dbg !113
  %__8.sroa.0.0.insert.insert = or disjoint i64 %__8.sroa.4.0.insert.insert, %__8.sroa.0.0.insert.ext, !dbg !113
  %add616 = or disjoint i32 %add58, %mul615, !dbg !114
  %add.ptr618 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add616, !dbg !115
  store i64 %__8.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr618, align 8, !dbg !116
  %71 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !80
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !80, !noalias !88
  %72 = fptrunc float %div.1 to half, !dbg !80
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %71), !dbg !80, !noalias !88
  %73 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !93
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !93, !noalias !88
  %74 = fptrunc float %div561.1 to half, !dbg !93
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %73), !dbg !93, !noalias !88
  %75 = bitcast half %72 to i16, !dbg !95
  %76 = bitcast half %74 to i16, !dbg !98
  %77 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !99
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !99, !noalias !103
  %78 = fptrunc float %div565.1 to half, !dbg !99
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %77), !dbg !99, !noalias !103
  %79 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !108
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !108, !noalias !103
  %80 = fptrunc float %div569.1 to half, !dbg !108
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %79), !dbg !108, !noalias !103
  %81 = bitcast half %78 to i16, !dbg !110
  %82 = bitcast half %80 to i16, !dbg !112
  %__8.sroa.6.0.insert.ext.1 = zext i16 %82 to i64, !dbg !113
  %__8.sroa.6.0.insert.shift.1 = shl nuw i64 %__8.sroa.6.0.insert.ext.1, 48, !dbg !113
  %__8.sroa.5.0.insert.ext.1 = zext i16 %81 to i64, !dbg !113
  %__8.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.1, 32, !dbg !113
  %__8.sroa.5.0.insert.insert.1 = or disjoint i64 %__8.sroa.6.0.insert.shift.1, %__8.sroa.5.0.insert.shift.1, !dbg !113
  %__8.sroa.4.0.insert.ext.1 = zext i16 %76 to i64, !dbg !113
  %__8.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.1, 16, !dbg !113
  %__8.sroa.4.0.insert.insert.1 = or disjoint i64 %__8.sroa.5.0.insert.insert.1, %__8.sroa.4.0.insert.shift.1, !dbg !113
  %__8.sroa.0.0.insert.ext.1 = zext i16 %75 to i64, !dbg !113
  %__8.sroa.0.0.insert.insert.1 = or disjoint i64 %__8.sroa.4.0.insert.insert.1, %__8.sroa.0.0.insert.ext.1, !dbg !113
  %add616.1 = or disjoint i32 %add58.1, %mul615, !dbg !114
  %add.ptr618.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add616.1, !dbg !115
  store i64 %__8.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr618.1, align 8, !dbg !116
  %83 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !80
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !80, !noalias !88
  %84 = fptrunc float %div.2 to half, !dbg !80
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %83), !dbg !80, !noalias !88
  %85 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !93
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !93, !noalias !88
  %86 = fptrunc float %div561.2 to half, !dbg !93
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %85), !dbg !93, !noalias !88
  %87 = bitcast half %84 to i16, !dbg !95
  %88 = bitcast half %86 to i16, !dbg !98
  %89 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !99
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !99, !noalias !103
  %90 = fptrunc float %div565.2 to half, !dbg !99
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %89), !dbg !99, !noalias !103
  %91 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !108
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !108, !noalias !103
  %92 = fptrunc float %div569.2 to half, !dbg !108
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %91), !dbg !108, !noalias !103
  %93 = bitcast half %90 to i16, !dbg !110
  %94 = bitcast half %92 to i16, !dbg !112
  %__8.sroa.6.0.insert.ext.2 = zext i16 %94 to i64, !dbg !113
  %__8.sroa.6.0.insert.shift.2 = shl nuw i64 %__8.sroa.6.0.insert.ext.2, 48, !dbg !113
  %__8.sroa.5.0.insert.ext.2 = zext i16 %93 to i64, !dbg !113
  %__8.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.2, 32, !dbg !113
  %__8.sroa.5.0.insert.insert.2 = or disjoint i64 %__8.sroa.6.0.insert.shift.2, %__8.sroa.5.0.insert.shift.2, !dbg !113
  %__8.sroa.4.0.insert.ext.2 = zext i16 %88 to i64, !dbg !113
  %__8.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.2, 16, !dbg !113
  %__8.sroa.4.0.insert.insert.2 = or disjoint i64 %__8.sroa.5.0.insert.insert.2, %__8.sroa.4.0.insert.shift.2, !dbg !113
  %__8.sroa.0.0.insert.ext.2 = zext i16 %87 to i64, !dbg !113
  %__8.sroa.0.0.insert.insert.2 = or disjoint i64 %__8.sroa.4.0.insert.insert.2, %__8.sroa.0.0.insert.ext.2, !dbg !113
  %add616.2 = or disjoint i32 %add58.2, %mul615, !dbg !114
  %add.ptr618.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add616.2, !dbg !115
  store i64 %__8.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr618.2, align 8, !dbg !116
  %95 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !80
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !80, !noalias !88
  %96 = fptrunc float %div.3 to half, !dbg !80
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %95), !dbg !80, !noalias !88
  %97 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !93
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !93, !noalias !88
  %98 = fptrunc float %div561.3 to half, !dbg !93
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %97), !dbg !93, !noalias !88
  %99 = bitcast half %96 to i16, !dbg !95
  %100 = bitcast half %98 to i16, !dbg !98
  %101 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !99
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !99, !noalias !103
  %102 = fptrunc float %div565.3 to half, !dbg !99
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %101), !dbg !99, !noalias !103
  %103 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !108
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !108, !noalias !103
  %104 = fptrunc float %div569.3 to half, !dbg !108
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %103), !dbg !108, !noalias !103
  %105 = bitcast half %102 to i16, !dbg !110
  %106 = bitcast half %104 to i16, !dbg !112
  %__8.sroa.6.0.insert.ext.3 = zext i16 %106 to i64, !dbg !113
  %__8.sroa.6.0.insert.shift.3 = shl nuw i64 %__8.sroa.6.0.insert.ext.3, 48, !dbg !113
  %__8.sroa.5.0.insert.ext.3 = zext i16 %105 to i64, !dbg !113
  %__8.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.3, 32, !dbg !113
  %__8.sroa.5.0.insert.insert.3 = or disjoint i64 %__8.sroa.6.0.insert.shift.3, %__8.sroa.5.0.insert.shift.3, !dbg !113
  %__8.sroa.4.0.insert.ext.3 = zext i16 %100 to i64, !dbg !113
  %__8.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.3, 16, !dbg !113
  %__8.sroa.4.0.insert.insert.3 = or disjoint i64 %__8.sroa.5.0.insert.insert.3, %__8.sroa.4.0.insert.shift.3, !dbg !113
  %__8.sroa.0.0.insert.ext.3 = zext i16 %99 to i64, !dbg !113
  %__8.sroa.0.0.insert.insert.3 = or disjoint i64 %__8.sroa.4.0.insert.insert.3, %__8.sroa.0.0.insert.ext.3, !dbg !113
  %add616.3 = or disjoint i32 %add58.3, %mul615, !dbg !114
  %add.ptr618.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add616.3, !dbg !115
  store i64 %__8.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr618.3, align 8, !dbg !116
  fence syncscope("warp") release, !dbg !117
  tail call void @llvm.mxc.barrier.warp(), !dbg !120
  fence syncscope("warp") acquire, !dbg !121
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul24, !dbg !122
  %invariant.gep866 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul29, !dbg !122
  %add.ptr651 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !123
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr651, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep866, i64 16, i1 false), !dbg !124, !tbaa.struct !125, !call_argsrelate !126
  %gep867.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep866, i32 1024, !dbg !127
  %add.ptr651.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %6, !dbg !123
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr651.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep867.1, i64 16, i1 false), !dbg !124, !tbaa.struct !125, !call_argsrelate !126
  ret void, !dbg !128

if.then:                                          ; preds = %for.cond98.preheader
  fence syncscope("warp") release, !dbg !129
  tail call void @llvm.mxc.barrier.warp(), !dbg !132
  fence syncscope("warp") acquire, !dbg !133
  %conv124 = zext nneg i32 %mul111 to i64
  %.idx = shl nuw nsw i64 %conv124, 7
  %gep2050 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep2049, i64 %.idx, !dbg !134
  %qk_fetch.sroa.0.0.copyload2019 = load i64, ptr addrspace(4) %gep2050, align 16, !dbg !135
  %qk_fetch.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep2050, i64 8, !dbg !135
  %qk_fetch.sroa.22.0.copyload2028 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0..sroa_idx, align 8, !dbg !135
  store i64 %qk_fetch.sroa.0.0.copyload2019, ptr addrspace(3) %add.ptr39, align 8, !dbg !136
  store i64 %qk_fetch.sroa.22.0.copyload2028, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !136
  %gep842.1 = getelementptr inbounds i8, ptr addrspace(4) %gep2050, i64 1024, !dbg !134
  %qk_fetch.sroa.0.0.copyload2021 = load i64, ptr addrspace(4) %gep842.1, align 16, !dbg !135
  %qk_fetch.sroa.22.0.gep842.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep2050, i64 1032, !dbg !135
  %qk_fetch.sroa.22.0.copyload2030 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.gep842.1.sroa_idx, align 8, !dbg !135
  store i64 %qk_fetch.sroa.0.0.copyload2021, ptr addrspace(3) %add.ptr39.1876, align 8, !dbg !136
  store i64 %qk_fetch.sroa.22.0.copyload2030, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !136
  fence syncscope("warp") release, !dbg !137
  tail call void @llvm.mxc.barrier.warp(), !dbg !140
  fence syncscope("warp") acquire, !dbg !141
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !142
  %107 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %9, <4 x float> zeroinitializer), !dbg !143
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !142
  %108 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %10, <4 x float> %107), !dbg !143
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !142
  %109 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %11, <4 x float> %108), !dbg !143
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !142
  %110 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %12, <4 x float> %109), !dbg !143
  %add224 = add nuw nsw i32 %mul111, %mul223
  %cmp227.not = icmp sgt i32 %add224, %1, !dbg !144
  %scores.sroa.0.0.vec.extract1496 = extractelement <4 x float> %110, i64 0
  %spec.select = select i1 %cmp227.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1496, !dbg !145
  %cmp227.not.1.not = icmp slt i32 %add224, %1, !dbg !144
  %scores.sroa.0.4.vec.extract1545 = extractelement <4 x float> %110, i64 1, !dbg !145
  %condval.0.1 = select i1 %cmp227.not.1.not, float %scores.sroa.0.4.vec.extract1545, float 0xFFF0000000000000, !dbg !145
  %add225.2 = or disjoint i32 %add224, 2, !dbg !146
  %cmp227.not.2 = icmp sgt i32 %add225.2, %1, !dbg !144
  %scores.sroa.0.8.vec.extract1582 = extractelement <4 x float> %110, i64 2, !dbg !145
  %condval.0.2 = select i1 %cmp227.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1582, !dbg !145
  %add225.3 = or disjoint i32 %add224, 3, !dbg !146
  %cmp227.not.3 = icmp sgt i32 %add225.3, %1, !dbg !144
  %scores.sroa.0.12.vec.extract1619 = extractelement <4 x float> %110, i64 3, !dbg !145
  %condval.0.3 = select i1 %cmp227.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1619, !dbg !145
  %111 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !147
  %112 = tail call contract noundef float @llvm.maxnum.f32(float %111, float %condval.0.1), !dbg !147
  %113 = tail call contract noundef float @llvm.maxnum.f32(float %112, float %condval.0.2), !dbg !147
  %114 = tail call contract noundef float @llvm.maxnum.f32(float %113, float %condval.0.3), !dbg !147
  %115 = bitcast float %114 to i32, !dbg !151
  %116 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !154
  %117 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %116) #11, !dbg !159
  %xor.i.i = xor i32 %117, 32, !dbg !160
  %118 = and i32 %117, -64, !dbg !161
  %and.i.i = add nsw i32 %118, 64, !dbg !161
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !162
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %117, !dbg !163
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !164
  %119 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %115), !dbg !165
  %120 = bitcast i32 %119 to float, !dbg !166
  %121 = tail call contract noundef float @llvm.maxnum.f32(float %114, float %120), !dbg !167
  %122 = bitcast float %121 to i32, !dbg !169
  %123 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !171
  %124 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %123) #11, !dbg !174
  %xor.i.i776 = xor i32 %124, 16, !dbg !175
  %125 = and i32 %124, -64, !dbg !176
  %and.i.i777 = add nsw i32 %125, 64, !dbg !176
  %cmp.not.i.i778 = icmp slt i32 %xor.i.i776, %and.i.i777, !dbg !177
  %cond.i.i779 = select i1 %cmp.not.i.i778, i32 %xor.i.i776, i32 %124, !dbg !178
  %shl.i.i780 = shl i32 %cond.i.i779, 2, !dbg !179
  %126 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i780, i32 %122), !dbg !180
  %127 = bitcast i32 %126 to float, !dbg !181
  %128 = tail call contract noundef float @llvm.maxnum.f32(float %121, float %127), !dbg !182
  %129 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.0861, float %128), !dbg !184
  %sub = fsub contract float %maximum.sroa.0.0861, %129, !dbg !186
  %mul269 = fmul contract float %sub, 0x3FC7154760000000, !dbg !187
  %cmp.i.i = fcmp contract olt float %mul269, -1.260000e+02, !dbg !188
  %cond.i.i781 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !188
  %add.i.i = fadd contract float %mul269, %cond.i.i781, !dbg !188
  %130 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !188
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !188
  %mul.i.i = fmul contract float %cond2.i.i, %130, !dbg !188
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !191
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !191
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !191
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !191
  %mul286 = fmul contract float %mul.i.i, %numerator.sroa.0.0.vec.extract, !dbg !192
  %mul289 = fmul contract float %mul.i.i, %numerator.sroa.0.4.vec.extract, !dbg !193
  %mul292 = fmul contract float %mul.i.i, %numerator.sroa.0.8.vec.extract, !dbg !194
  %mul295 = fmul contract float %mul.i.i, %numerator.sroa.0.12.vec.extract, !dbg !195
  %numerator.sroa.0.0.vec.insert1647 = insertelement <4 x float> poison, float %mul286, i64 0, !dbg !196
  %numerator.sroa.0.4.vec.insert1668 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert1647, float %mul289, i64 1, !dbg !196
  %numerator.sroa.0.8.vec.insert1689 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert1668, float %mul292, i64 2, !dbg !196
  %numerator.sroa.0.12.vec.insert1710 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert1689, float %mul295, i64 3, !dbg !196
  %numerator.sroa.58.16.vec.extract = extractelement <4 x float> %numerator.sroa.58.0, i64 0, !dbg !191
  %numerator.sroa.58.20.vec.extract = extractelement <4 x float> %numerator.sroa.58.0, i64 1, !dbg !191
  %numerator.sroa.58.24.vec.extract = extractelement <4 x float> %numerator.sroa.58.0, i64 2, !dbg !191
  %numerator.sroa.58.28.vec.extract = extractelement <4 x float> %numerator.sroa.58.0, i64 3, !dbg !191
  %mul286.1 = fmul contract float %mul.i.i, %numerator.sroa.58.16.vec.extract, !dbg !192
  %mul289.1 = fmul contract float %mul.i.i, %numerator.sroa.58.20.vec.extract, !dbg !193
  %mul292.1 = fmul contract float %mul.i.i, %numerator.sroa.58.24.vec.extract, !dbg !194
  %mul295.1 = fmul contract float %mul.i.i, %numerator.sroa.58.28.vec.extract, !dbg !195
  %numerator.sroa.58.16.vec.insert1736 = insertelement <4 x float> poison, float %mul286.1, i64 0, !dbg !196
  %numerator.sroa.58.20.vec.insert1757 = insertelement <4 x float> %numerator.sroa.58.16.vec.insert1736, float %mul289.1, i64 1, !dbg !196
  %numerator.sroa.58.24.vec.insert1778 = insertelement <4 x float> %numerator.sroa.58.20.vec.insert1757, float %mul292.1, i64 2, !dbg !196
  %numerator.sroa.58.28.vec.insert1799 = insertelement <4 x float> %numerator.sroa.58.24.vec.insert1778, float %mul295.1, i64 3, !dbg !196
  %numerator.sroa.114.32.vec.extract = extractelement <4 x float> %numerator.sroa.114.0, i64 0, !dbg !191
  %numerator.sroa.114.36.vec.extract = extractelement <4 x float> %numerator.sroa.114.0, i64 1, !dbg !191
  %numerator.sroa.114.40.vec.extract = extractelement <4 x float> %numerator.sroa.114.0, i64 2, !dbg !191
  %numerator.sroa.114.44.vec.extract = extractelement <4 x float> %numerator.sroa.114.0, i64 3, !dbg !191
  %mul286.2 = fmul contract float %mul.i.i, %numerator.sroa.114.32.vec.extract, !dbg !192
  %mul289.2 = fmul contract float %mul.i.i, %numerator.sroa.114.36.vec.extract, !dbg !193
  %mul292.2 = fmul contract float %mul.i.i, %numerator.sroa.114.40.vec.extract, !dbg !194
  %mul295.2 = fmul contract float %mul.i.i, %numerator.sroa.114.44.vec.extract, !dbg !195
  %numerator.sroa.114.32.vec.insert1824 = insertelement <4 x float> poison, float %mul286.2, i64 0, !dbg !196
  %numerator.sroa.114.36.vec.insert1845 = insertelement <4 x float> %numerator.sroa.114.32.vec.insert1824, float %mul289.2, i64 1, !dbg !196
  %numerator.sroa.114.40.vec.insert1866 = insertelement <4 x float> %numerator.sroa.114.36.vec.insert1845, float %mul292.2, i64 2, !dbg !196
  %numerator.sroa.114.44.vec.insert1887 = insertelement <4 x float> %numerator.sroa.114.40.vec.insert1866, float %mul295.2, i64 3, !dbg !196
  %numerator.sroa.170.48.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 0, !dbg !191
  %numerator.sroa.170.52.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 1, !dbg !191
  %numerator.sroa.170.56.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 2, !dbg !191
  %numerator.sroa.170.60.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 3, !dbg !191
  %mul286.3 = fmul contract float %mul.i.i, %numerator.sroa.170.48.vec.extract, !dbg !192
  %mul289.3 = fmul contract float %mul.i.i, %numerator.sroa.170.52.vec.extract, !dbg !193
  %mul292.3 = fmul contract float %mul.i.i, %numerator.sroa.170.56.vec.extract, !dbg !194
  %mul295.3 = fmul contract float %mul.i.i, %numerator.sroa.170.60.vec.extract, !dbg !195
  %numerator.sroa.170.48.vec.insert1912 = insertelement <4 x float> poison, float %mul286.3, i64 0, !dbg !196
  %numerator.sroa.170.52.vec.insert1933 = insertelement <4 x float> %numerator.sroa.170.48.vec.insert1912, float %mul289.3, i64 1, !dbg !196
  %numerator.sroa.170.56.vec.insert1954 = insertelement <4 x float> %numerator.sroa.170.52.vec.insert1933, float %mul292.3, i64 2, !dbg !196
  %numerator.sroa.170.60.vec.insert1975 = insertelement <4 x float> %numerator.sroa.170.56.vec.insert1954, float %mul295.3, i64 3, !dbg !196
  %sub319 = fsub contract float %spec.select, %129, !dbg !197
  %sub323 = fsub contract float %condval.0.1, %129, !dbg !198
  %sub327 = fsub contract float %condval.0.2, %129, !dbg !199
  %sub331 = fsub contract float %condval.0.3, %129, !dbg !200
  %mul336 = fmul contract float %sub319, 0x3FC7154760000000, !dbg !201
  %mul340 = fmul contract float %sub323, 0x3FC7154760000000, !dbg !202
  %mul344 = fmul contract float %sub327, 0x3FC7154760000000, !dbg !203
  %mul348 = fmul contract float %sub331, 0x3FC7154760000000, !dbg !204
  %add353 = fadd contract float %mul336, 8.000000e+00, !dbg !205
  %add357 = fadd contract float %mul340, 8.000000e+00, !dbg !206
  %add361 = fadd contract float %mul344, 8.000000e+00, !dbg !207
  %add365 = fadd contract float %mul348, 8.000000e+00, !dbg !208
  %cmp.i.i782 = fcmp contract olt float %add353, -1.260000e+02, !dbg !209
  %cond.i.i783 = select contract i1 %cmp.i.i782, float 6.400000e+01, float 0.000000e+00, !dbg !209
  %add.i.i784 = fadd contract float %add353, %cond.i.i783, !dbg !209
  %131 = tail call contract float @llvm.exp2.f32(float %add.i.i784), !dbg !209
  %cond2.i.i785 = select contract i1 %cmp.i.i782, float 0x3BF0000000000000, float 1.000000e+00, !dbg !209
  %mul.i.i786 = fmul contract float %cond2.i.i785, %131, !dbg !209
  %cmp.i.i787 = fcmp contract olt float %add357, -1.260000e+02, !dbg !211
  %cond.i.i788 = select contract i1 %cmp.i.i787, float 6.400000e+01, float 0.000000e+00, !dbg !211
  %add.i.i789 = fadd contract float %add357, %cond.i.i788, !dbg !211
  %132 = tail call contract float @llvm.exp2.f32(float %add.i.i789), !dbg !211
  %cond2.i.i790 = select contract i1 %cmp.i.i787, float 0x3BF0000000000000, float 1.000000e+00, !dbg !211
  %mul.i.i791 = fmul contract float %cond2.i.i790, %132, !dbg !211
  %cmp.i.i792 = fcmp contract olt float %add361, -1.260000e+02, !dbg !213
  %cond.i.i793 = select contract i1 %cmp.i.i792, float 6.400000e+01, float 0.000000e+00, !dbg !213
  %add.i.i794 = fadd contract float %add361, %cond.i.i793, !dbg !213
  %133 = tail call contract float @llvm.exp2.f32(float %add.i.i794), !dbg !213
  %cond2.i.i795 = select contract i1 %cmp.i.i792, float 0x3BF0000000000000, float 1.000000e+00, !dbg !213
  %mul.i.i796 = fmul contract float %cond2.i.i795, %133, !dbg !213
  %cmp.i.i797 = fcmp contract olt float %add365, -1.260000e+02, !dbg !215
  %cond.i.i798 = select contract i1 %cmp.i.i797, float 6.400000e+01, float 0.000000e+00, !dbg !215
  %add.i.i799 = fadd contract float %add365, %cond.i.i798, !dbg !215
  %134 = tail call contract float @llvm.exp2.f32(float %add.i.i799), !dbg !215
  %cond2.i.i800 = select contract i1 %cmp.i.i797, float 0x3BF0000000000000, float 1.000000e+00, !dbg !215
  %mul.i.i801 = fmul contract float %cond2.i.i800, %134, !dbg !215
  %135 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !217
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !217, !noalias !221
  %136 = fptrunc float %mul.i.i786 to half, !dbg !217
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %135), !dbg !217, !noalias !221
  %137 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !221
  %138 = fptrunc float %mul.i.i791 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %137), !dbg !226, !noalias !221
  %139 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !228
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !228, !noalias !232
  %140 = fptrunc float %mul.i.i796 to half, !dbg !228
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %139), !dbg !228, !noalias !232
  %141 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !232
  %142 = fptrunc float %mul.i.i801 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %141), !dbg !237, !noalias !232
  %143 = insertelement <4 x half> poison, half %136, i64 0, !dbg !239
  %144 = insertelement <4 x half> %143, half %138, i64 1, !dbg !239
  %145 = insertelement <4 x half> %144, half %140, i64 2, !dbg !239
  %146 = insertelement <4 x half> %145, half %142, i64 3, !dbg !239
  %conv.i.i = fpext half %136 to float, !dbg !240
  %add399 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !245
  %conv.i.i.1 = fpext half %138 to float, !dbg !240
  %add399.1 = fadd contract float %add399, %conv.i.i.1, !dbg !245
  %conv.i.i.2 = fpext half %140 to float, !dbg !240
  %add399.2 = fadd contract float %add399.1, %conv.i.i.2, !dbg !245
  %conv.i.i.3 = fpext half %142 to float, !dbg !240
  %add399.3 = fadd contract float %add399.2, %conv.i.i.3, !dbg !245
  %147 = bitcast float %add399.3 to i32, !dbg !246
  %148 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !248
  %149 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %148) #11, !dbg !251
  %xor.i.i807 = xor i32 %149, 32, !dbg !252
  %150 = and i32 %149, -64, !dbg !253
  %and.i.i808 = add nsw i32 %150, 64, !dbg !253
  %cmp.not.i.i809 = icmp slt i32 %xor.i.i807, %and.i.i808, !dbg !254
  %cond.i.i810 = select i1 %cmp.not.i.i809, i32 %xor.i.i807, i32 %149, !dbg !255
  %shl.i.i811 = shl i32 %cond.i.i810, 2, !dbg !256
  %151 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i811, i32 %147), !dbg !257
  %152 = bitcast i32 %151 to float, !dbg !258
  %add407 = fadd contract float %add399.3, %152, !dbg !259
  %153 = bitcast float %add407 to i32, !dbg !260
  %154 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !262
  %155 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %154) #11, !dbg !265
  %xor.i.i812 = xor i32 %155, 16, !dbg !266
  %156 = and i32 %155, -64, !dbg !267
  %and.i.i813 = add nsw i32 %156, 64, !dbg !267
  %cmp.not.i.i814 = icmp slt i32 %xor.i.i812, %and.i.i813, !dbg !268
  %cond.i.i815 = select i1 %cmp.not.i.i814, i32 %xor.i.i812, i32 %155, !dbg !269
  %shl.i.i816 = shl i32 %cond.i.i815, 2, !dbg !270
  %157 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i816, i32 %153), !dbg !271
  %158 = bitcast i32 %157 to float, !dbg !272
  %add412 = fadd contract float %add407, %158, !dbg !273
  fence syncscope("warp") release, !dbg !274
  tail call void @llvm.mxc.barrier.warp(), !dbg !277
  fence syncscope("warp") acquire, !dbg !278
  %159 = getelementptr inbounds i8, ptr addrspace(4) %20, i64 %.idx, !dbg !279
  %160 = load i64, ptr addrspace(4) %159, align 8, !dbg !280
  %add.ptr441.1 = getelementptr inbounds i8, ptr addrspace(4) %159, i64 128, !dbg !279
  %161 = load i64, ptr addrspace(4) %add.ptr441.1, align 8, !dbg !280
  %add.ptr441.2 = getelementptr inbounds i8, ptr addrspace(4) %159, i64 256, !dbg !279
  %162 = load i64, ptr addrspace(4) %add.ptr441.2, align 8, !dbg !280
  %add.ptr441.3 = getelementptr inbounds i8, ptr addrspace(4) %159, i64 384, !dbg !279
  %163 = load i64, ptr addrspace(4) %add.ptr441.3, align 8, !dbg !280
  %mul306 = fmul contract float %denominator.sroa.0.0862, %mul.i.i, !dbg !281
  %v_column.sroa.66.0.insert.ext = shl i64 %163, 48, !dbg !282
  %v_column.sroa.50.0.insert.ext = shl i64 %162, 32, !dbg !282
  %v_column.sroa.50.0.insert.shift = and i64 %v_column.sroa.50.0.insert.ext, 281470681743360, !dbg !282
  %v_column.sroa.50.0.insert.insert = or disjoint i64 %v_column.sroa.66.0.insert.ext, %v_column.sroa.50.0.insert.shift, !dbg !282
  %v_column.sroa.34.0.insert.ext = shl i64 %161, 16, !dbg !282
  %v_column.sroa.34.0.insert.shift = and i64 %v_column.sroa.34.0.insert.ext, 4294901760, !dbg !282
  %v_column.sroa.34.0.insert.insert = or disjoint i64 %v_column.sroa.50.0.insert.insert, %v_column.sroa.34.0.insert.shift, !dbg !282
  %v_column.sroa.0.0.insert.ext = and i64 %160, 65535, !dbg !282
  %v_column.sroa.0.0.insert.insert = or disjoint i64 %v_column.sroa.34.0.insert.insert, %v_column.sroa.0.0.insert.ext, !dbg !282
  store i64 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr483, align 8, !dbg !282
  %v_fetch.sroa.0.2.extract.shift = lshr i64 %160, 16, !dbg !283
  %164 = shl i64 %163, 32, !dbg !282
  %v_column.sroa.66.0.insert.ext1224 = and i64 %164, -281474976710656, !dbg !282
  %165 = shl i64 %162, 16, !dbg !282
  %v_column.sroa.50.0.insert.shift1150 = and i64 %165, 281470681743360, !dbg !282
  %v_column.sroa.50.0.insert.insert1152 = or disjoint i64 %v_column.sroa.66.0.insert.ext1224, %v_column.sroa.50.0.insert.shift1150, !dbg !282
  %v_column.sroa.34.0.insert.ext1074 = and i64 %161, 4294901760, !dbg !282
  %v_column.sroa.34.0.insert.insert1077 = or disjoint i64 %v_column.sroa.50.0.insert.insert1152, %v_column.sroa.34.0.insert.ext1074, !dbg !282
  %v_column.sroa.0.0.insert.ext1014 = and i64 %v_fetch.sroa.0.2.extract.shift, 65535, !dbg !282
  %v_column.sroa.0.0.insert.insert1016 = or disjoint i64 %v_column.sroa.34.0.insert.insert1077, %v_column.sroa.0.0.insert.ext1014, !dbg !282
  store i64 %v_column.sroa.0.0.insert.insert1016, ptr addrspace(3) %add.ptr483.1, align 8, !dbg !282
  %v_fetch.sroa.0.4.extract.shift = lshr i64 %160, 32, !dbg !283
  %166 = shl i64 %163, 16, !dbg !282
  %v_column.sroa.66.0.insert.ext1229 = and i64 %166, -281474976710656, !dbg !282
  %v_column.sroa.50.0.insert.ext1154 = and i64 %162, 281470681743360, !dbg !282
  %v_column.sroa.50.0.insert.insert1157 = or disjoint i64 %v_column.sroa.66.0.insert.ext1229, %v_column.sroa.50.0.insert.ext1154, !dbg !282
  %167 = lshr i64 %161, 16, !dbg !282
  %v_column.sroa.34.0.insert.shift1080 = and i64 %167, 4294901760, !dbg !282
  %v_column.sroa.34.0.insert.insert1082 = or disjoint i64 %v_column.sroa.50.0.insert.insert1157, %v_column.sroa.34.0.insert.shift1080, !dbg !282
  %v_column.sroa.0.0.insert.ext1018 = and i64 %v_fetch.sroa.0.4.extract.shift, 65535, !dbg !282
  %v_column.sroa.0.0.insert.insert1020 = or disjoint i64 %v_column.sroa.34.0.insert.insert1082, %v_column.sroa.0.0.insert.ext1018, !dbg !282
  store i64 %v_column.sroa.0.0.insert.insert1020, ptr addrspace(3) %add.ptr483.2, align 8, !dbg !282
  %v_fetch.sroa.0.6.extract.shift = lshr i64 %160, 48, !dbg !283
  %v_fetch.sroa.62.30.extract.shift = and i64 %163, -281474976710656, !dbg !282
  %168 = lshr i64 %162, 16, !dbg !282
  %v_column.sroa.50.0.insert.shift1160 = and i64 %168, 281470681743360, !dbg !282
  %v_column.sroa.50.0.insert.insert1162 = or disjoint i64 %v_fetch.sroa.62.30.extract.shift, %v_column.sroa.50.0.insert.shift1160, !dbg !282
  %169 = lshr i64 %161, 32, !dbg !282
  %v_column.sroa.34.0.insert.shift1085 = and i64 %169, 4294901760, !dbg !282
  %v_column.sroa.34.0.insert.insert1087 = or disjoint i64 %v_column.sroa.50.0.insert.insert1162, %v_column.sroa.34.0.insert.shift1085, !dbg !282
  %v_column.sroa.0.0.insert.insert1024 = or disjoint i64 %v_column.sroa.34.0.insert.insert1087, %v_fetch.sroa.0.6.extract.shift, !dbg !282
  store i64 %v_column.sroa.0.0.insert.insert1024, ptr addrspace(3) %add.ptr483.3, align 8, !dbg !282
  fence syncscope("warp") release, !dbg !284
  tail call void @llvm.mxc.barrier.warp(), !dbg !287
  fence syncscope("warp") acquire, !dbg !288
  %170 = load <4 x half>, ptr addrspace(3) %add.ptr510, align 8, !dbg !289
  %171 = load <4 x half>, ptr addrspace(3) %add.ptr510.1, align 8, !dbg !289
  %172 = load <4 x half>, ptr addrspace(3) %add.ptr510.2, align 8, !dbg !289
  %173 = load <4 x half>, ptr addrspace(3) %add.ptr510.3, align 8, !dbg !289
  %174 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %170, <4 x half> %146, <4 x float> %numerator.sroa.0.12.vec.insert1710), !dbg !290
  %175 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %171, <4 x half> %146, <4 x float> %numerator.sroa.58.28.vec.insert1799), !dbg !290
  %176 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %172, <4 x half> %146, <4 x float> %numerator.sroa.114.44.vec.insert1887), !dbg !290
  %177 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %173, <4 x half> %146, <4 x float> %numerator.sroa.170.60.vec.insert1975), !dbg !290
  %add416 = fadd contract float %mul306, %add412, !dbg !291
  br label %if.end536, !dbg !292

if.end536:                                        ; preds = %if.then, %for.cond98.preheader
  %numerator.sroa.170.1 = phi <4 x float> [ %numerator.sroa.170.0, %for.cond98.preheader ], [ %177, %if.then ], !dbg !293
  %numerator.sroa.114.1 = phi <4 x float> [ %numerator.sroa.114.0, %for.cond98.preheader ], [ %176, %if.then ], !dbg !293
  %numerator.sroa.58.1 = phi <4 x float> [ %numerator.sroa.58.0, %for.cond98.preheader ], [ %175, %if.then ], !dbg !293
  %numerator.sroa.0.1 = phi <4 x float> [ %numerator.sroa.0.0, %for.cond98.preheader ], [ %174, %if.then ], !dbg !293
  %maximum.sroa.0.2 = phi float [ %maximum.sroa.0.0861, %for.cond98.preheader ], [ %129, %if.then ], !dbg !293
  %denominator.sroa.0.2 = phi float [ %denominator.sroa.0.0862, %for.cond98.preheader ], [ %add416, %if.then ], !dbg !293
  %178 = or disjoint i64 %57, 1, !dbg !294
  %arrayidx110.1 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %178, !dbg !66
  %179 = load i32, ptr addrspace(1) %arrayidx110.1, align 4, !dbg !66, !tbaa !30
  %mul111.1 = shl nsw i32 %179, 4, !dbg !67
  %cmp112.1 = icmp slt i32 %179, 0, !dbg !68
  %cmp114.not.1 = icmp sgt i32 %mul111.1, %1
  %or.cond.1 = select i1 %cmp112.1, i1 true, i1 %cmp114.not.1, !dbg !69
  br i1 %or.cond.1, label %if.end536.1, label %if.then.1, !dbg !69

if.then.1:                                        ; preds = %if.end536
  fence syncscope("warp") release, !dbg !129
  tail call void @llvm.mxc.barrier.warp(), !dbg !132
  fence syncscope("warp") acquire, !dbg !133
  %conv124.1 = zext nneg i32 %mul111.1 to i64
  %.idx.1 = shl nuw nsw i64 %conv124.1, 7
  %gep = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep2051, i64 %.idx.1, !dbg !134
  %qk_fetch.sroa.0.0.copyload2022 = load i64, ptr addrspace(4) %gep, align 16, !dbg !135
  %qk_fetch.sroa.22.0..sroa_idx2031 = getelementptr inbounds i8, ptr addrspace(4) %gep, i64 8, !dbg !135
  %qk_fetch.sroa.22.0.copyload2032 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0..sroa_idx2031, align 8, !dbg !135
  store i64 %qk_fetch.sroa.0.0.copyload2022, ptr addrspace(3) %add.ptr39, align 8, !dbg !136
  store i64 %qk_fetch.sroa.22.0.copyload2032, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !136
  %gep842.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep, i64 1024, !dbg !134
  %qk_fetch.sroa.0.0.copyload2023 = load i64, ptr addrspace(4) %gep842.1.1, align 16, !dbg !135
  %qk_fetch.sroa.22.0.gep842.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep, i64 1032, !dbg !135
  %qk_fetch.sroa.22.0.copyload2033 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.gep842.1.1.sroa_idx, align 8, !dbg !135
  store i64 %qk_fetch.sroa.0.0.copyload2023, ptr addrspace(3) %add.ptr39.1876, align 8, !dbg !136
  store i64 %qk_fetch.sroa.22.0.copyload2033, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !136
  fence syncscope("warp") release, !dbg !137
  tail call void @llvm.mxc.barrier.warp(), !dbg !140
  fence syncscope("warp") acquire, !dbg !141
  %k_local.sroa.0.0.copyload.1899 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !142
  %180 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1899, <4 x half> %9, <4 x float> zeroinitializer), !dbg !143
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !142
  %181 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %10, <4 x float> %180), !dbg !143
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !142
  %182 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %11, <4 x float> %181), !dbg !143
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !142
  %183 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %12, <4 x float> %182), !dbg !143
  %add224.1 = add nuw nsw i32 %mul111.1, %mul223
  %cmp227.not.1900 = icmp sgt i32 %add224.1, %1, !dbg !144
  %scores.sroa.0.0.vec.extract1504 = extractelement <4 x float> %183, i64 0
  %spec.select2056 = select i1 %cmp227.not.1900, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1504, !dbg !145
  %cmp227.not.1.1.not = icmp slt i32 %add224.1, %1, !dbg !144
  %scores.sroa.0.4.vec.extract1551 = extractelement <4 x float> %183, i64 1, !dbg !145
  %condval.0.1.1 = select i1 %cmp227.not.1.1.not, float %scores.sroa.0.4.vec.extract1551, float 0xFFF0000000000000, !dbg !145
  %add225.2.1 = or disjoint i32 %add224.1, 2, !dbg !146
  %cmp227.not.2.1 = icmp sgt i32 %add225.2.1, %1, !dbg !144
  %scores.sroa.0.8.vec.extract1588 = extractelement <4 x float> %183, i64 2, !dbg !145
  %condval.0.2.1 = select i1 %cmp227.not.2.1, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1588, !dbg !145
  %add225.3.1 = or disjoint i32 %add224.1, 3, !dbg !146
  %cmp227.not.3.1 = icmp sgt i32 %add225.3.1, %1, !dbg !144
  %scores.sroa.0.12.vec.extract1625 = extractelement <4 x float> %183, i64 3, !dbg !145
  %condval.0.3.1 = select i1 %cmp227.not.3.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1625, !dbg !145
  %184 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2056, float 0xFFF0000000000000), !dbg !147
  %185 = tail call contract noundef float @llvm.maxnum.f32(float %184, float %condval.0.1.1), !dbg !147
  %186 = tail call contract noundef float @llvm.maxnum.f32(float %185, float %condval.0.2.1), !dbg !147
  %187 = tail call contract noundef float @llvm.maxnum.f32(float %186, float %condval.0.3.1), !dbg !147
  %188 = bitcast float %187 to i32, !dbg !151
  %189 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !154
  %190 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %189) #11, !dbg !159
  %xor.i.i.1 = xor i32 %190, 32, !dbg !160
  %191 = and i32 %190, -64, !dbg !161
  %and.i.i.1 = add nsw i32 %191, 64, !dbg !161
  %cmp.not.i.i.1 = icmp slt i32 %xor.i.i.1, %and.i.i.1, !dbg !162
  %cond.i.i.1 = select i1 %cmp.not.i.i.1, i32 %xor.i.i.1, i32 %190, !dbg !163
  %shl.i.i.1 = shl i32 %cond.i.i.1, 2, !dbg !164
  %192 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.1, i32 %188), !dbg !165
  %193 = bitcast i32 %192 to float, !dbg !166
  %194 = tail call contract noundef float @llvm.maxnum.f32(float %187, float %193), !dbg !167
  %195 = bitcast float %194 to i32, !dbg !169
  %196 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !171
  %197 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %196) #11, !dbg !174
  %xor.i.i776.1 = xor i32 %197, 16, !dbg !175
  %198 = and i32 %197, -64, !dbg !176
  %and.i.i777.1 = add nsw i32 %198, 64, !dbg !176
  %cmp.not.i.i778.1 = icmp slt i32 %xor.i.i776.1, %and.i.i777.1, !dbg !177
  %cond.i.i779.1 = select i1 %cmp.not.i.i778.1, i32 %xor.i.i776.1, i32 %197, !dbg !178
  %shl.i.i780.1 = shl i32 %cond.i.i779.1, 2, !dbg !179
  %199 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i780.1, i32 %195), !dbg !180
  %200 = bitcast i32 %199 to float, !dbg !181
  %201 = tail call contract noundef float @llvm.maxnum.f32(float %194, float %200), !dbg !182
  %202 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.2, float %201), !dbg !184
  %sub.1 = fsub contract float %maximum.sroa.0.2, %202, !dbg !186
  %mul269.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !187
  %cmp.i.i.1 = fcmp contract olt float %mul269.1, -1.260000e+02, !dbg !188
  %cond.i.i781.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !188
  %add.i.i.1 = fadd contract float %mul269.1, %cond.i.i781.1, !dbg !188
  %203 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !188
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !188
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %203, !dbg !188
  %numerator.sroa.0.0.vec.extract1650 = extractelement <4 x float> %numerator.sroa.0.1, i64 0, !dbg !191
  %numerator.sroa.0.4.vec.extract1671 = extractelement <4 x float> %numerator.sroa.0.1, i64 1, !dbg !191
  %numerator.sroa.0.8.vec.extract1692 = extractelement <4 x float> %numerator.sroa.0.1, i64 2, !dbg !191
  %numerator.sroa.0.12.vec.extract1713 = extractelement <4 x float> %numerator.sroa.0.1, i64 3, !dbg !191
  %mul286.1911 = fmul contract float %mul.i.i.1, %numerator.sroa.0.0.vec.extract1650, !dbg !192
  %mul289.1912 = fmul contract float %mul.i.i.1, %numerator.sroa.0.4.vec.extract1671, !dbg !193
  %mul292.1913 = fmul contract float %mul.i.i.1, %numerator.sroa.0.8.vec.extract1692, !dbg !194
  %mul295.1914 = fmul contract float %mul.i.i.1, %numerator.sroa.0.12.vec.extract1713, !dbg !195
  %numerator.sroa.0.0.vec.insert1652 = insertelement <4 x float> poison, float %mul286.1911, i64 0, !dbg !196
  %numerator.sroa.0.4.vec.insert1673 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert1652, float %mul289.1912, i64 1, !dbg !196
  %numerator.sroa.0.8.vec.insert1694 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert1673, float %mul292.1913, i64 2, !dbg !196
  %numerator.sroa.0.12.vec.insert1715 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert1694, float %mul295.1914, i64 3, !dbg !196
  %numerator.sroa.58.16.vec.extract1738 = extractelement <4 x float> %numerator.sroa.58.1, i64 0, !dbg !191
  %numerator.sroa.58.20.vec.extract1759 = extractelement <4 x float> %numerator.sroa.58.1, i64 1, !dbg !191
  %numerator.sroa.58.24.vec.extract1780 = extractelement <4 x float> %numerator.sroa.58.1, i64 2, !dbg !191
  %numerator.sroa.58.28.vec.extract1801 = extractelement <4 x float> %numerator.sroa.58.1, i64 3, !dbg !191
  %mul286.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.58.16.vec.extract1738, !dbg !192
  %mul289.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.58.20.vec.extract1759, !dbg !193
  %mul292.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.58.24.vec.extract1780, !dbg !194
  %mul295.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.58.28.vec.extract1801, !dbg !195
  %numerator.sroa.58.16.vec.insert1740 = insertelement <4 x float> poison, float %mul286.1.1, i64 0, !dbg !196
  %numerator.sroa.58.20.vec.insert1761 = insertelement <4 x float> %numerator.sroa.58.16.vec.insert1740, float %mul289.1.1, i64 1, !dbg !196
  %numerator.sroa.58.24.vec.insert1782 = insertelement <4 x float> %numerator.sroa.58.20.vec.insert1761, float %mul292.1.1, i64 2, !dbg !196
  %numerator.sroa.58.28.vec.insert1803 = insertelement <4 x float> %numerator.sroa.58.24.vec.insert1782, float %mul295.1.1, i64 3, !dbg !196
  %numerator.sroa.114.32.vec.extract1826 = extractelement <4 x float> %numerator.sroa.114.1, i64 0, !dbg !191
  %numerator.sroa.114.36.vec.extract1847 = extractelement <4 x float> %numerator.sroa.114.1, i64 1, !dbg !191
  %numerator.sroa.114.40.vec.extract1868 = extractelement <4 x float> %numerator.sroa.114.1, i64 2, !dbg !191
  %numerator.sroa.114.44.vec.extract1889 = extractelement <4 x float> %numerator.sroa.114.1, i64 3, !dbg !191
  %mul286.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.114.32.vec.extract1826, !dbg !192
  %mul289.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.114.36.vec.extract1847, !dbg !193
  %mul292.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.114.40.vec.extract1868, !dbg !194
  %mul295.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.114.44.vec.extract1889, !dbg !195
  %numerator.sroa.114.32.vec.insert1828 = insertelement <4 x float> poison, float %mul286.2.1, i64 0, !dbg !196
  %numerator.sroa.114.36.vec.insert1849 = insertelement <4 x float> %numerator.sroa.114.32.vec.insert1828, float %mul289.2.1, i64 1, !dbg !196
  %numerator.sroa.114.40.vec.insert1870 = insertelement <4 x float> %numerator.sroa.114.36.vec.insert1849, float %mul292.2.1, i64 2, !dbg !196
  %numerator.sroa.114.44.vec.insert1891 = insertelement <4 x float> %numerator.sroa.114.40.vec.insert1870, float %mul295.2.1, i64 3, !dbg !196
  %numerator.sroa.170.48.vec.extract1914 = extractelement <4 x float> %numerator.sroa.170.1, i64 0, !dbg !191
  %numerator.sroa.170.52.vec.extract1935 = extractelement <4 x float> %numerator.sroa.170.1, i64 1, !dbg !191
  %numerator.sroa.170.56.vec.extract1956 = extractelement <4 x float> %numerator.sroa.170.1, i64 2, !dbg !191
  %numerator.sroa.170.60.vec.extract1977 = extractelement <4 x float> %numerator.sroa.170.1, i64 3, !dbg !191
  %mul286.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.170.48.vec.extract1914, !dbg !192
  %mul289.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.170.52.vec.extract1935, !dbg !193
  %mul292.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.170.56.vec.extract1956, !dbg !194
  %mul295.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.170.60.vec.extract1977, !dbg !195
  %numerator.sroa.170.48.vec.insert1916 = insertelement <4 x float> poison, float %mul286.3.1, i64 0, !dbg !196
  %numerator.sroa.170.52.vec.insert1937 = insertelement <4 x float> %numerator.sroa.170.48.vec.insert1916, float %mul289.3.1, i64 1, !dbg !196
  %numerator.sroa.170.56.vec.insert1958 = insertelement <4 x float> %numerator.sroa.170.52.vec.insert1937, float %mul292.3.1, i64 2, !dbg !196
  %numerator.sroa.170.60.vec.insert1979 = insertelement <4 x float> %numerator.sroa.170.56.vec.insert1958, float %mul295.3.1, i64 3, !dbg !196
  %sub319.1 = fsub contract float %spec.select2056, %202, !dbg !197
  %sub323.1 = fsub contract float %condval.0.1.1, %202, !dbg !198
  %sub327.1 = fsub contract float %condval.0.2.1, %202, !dbg !199
  %sub331.1 = fsub contract float %condval.0.3.1, %202, !dbg !200
  %mul336.1 = fmul contract float %sub319.1, 0x3FC7154760000000, !dbg !201
  %mul340.1 = fmul contract float %sub323.1, 0x3FC7154760000000, !dbg !202
  %mul344.1 = fmul contract float %sub327.1, 0x3FC7154760000000, !dbg !203
  %mul348.1 = fmul contract float %sub331.1, 0x3FC7154760000000, !dbg !204
  %add353.1 = fadd contract float %mul336.1, 8.000000e+00, !dbg !205
  %add357.1 = fadd contract float %mul340.1, 8.000000e+00, !dbg !206
  %add361.1 = fadd contract float %mul344.1, 8.000000e+00, !dbg !207
  %add365.1 = fadd contract float %mul348.1, 8.000000e+00, !dbg !208
  %cmp.i.i782.1 = fcmp contract olt float %add353.1, -1.260000e+02, !dbg !209
  %cond.i.i783.1 = select contract i1 %cmp.i.i782.1, float 6.400000e+01, float 0.000000e+00, !dbg !209
  %add.i.i784.1 = fadd contract float %add353.1, %cond.i.i783.1, !dbg !209
  %204 = tail call contract float @llvm.exp2.f32(float %add.i.i784.1), !dbg !209
  %cond2.i.i785.1 = select contract i1 %cmp.i.i782.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !209
  %mul.i.i786.1 = fmul contract float %cond2.i.i785.1, %204, !dbg !209
  %cmp.i.i787.1 = fcmp contract olt float %add357.1, -1.260000e+02, !dbg !211
  %cond.i.i788.1 = select contract i1 %cmp.i.i787.1, float 6.400000e+01, float 0.000000e+00, !dbg !211
  %add.i.i789.1 = fadd contract float %add357.1, %cond.i.i788.1, !dbg !211
  %205 = tail call contract float @llvm.exp2.f32(float %add.i.i789.1), !dbg !211
  %cond2.i.i790.1 = select contract i1 %cmp.i.i787.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !211
  %mul.i.i791.1 = fmul contract float %cond2.i.i790.1, %205, !dbg !211
  %cmp.i.i792.1 = fcmp contract olt float %add361.1, -1.260000e+02, !dbg !213
  %cond.i.i793.1 = select contract i1 %cmp.i.i792.1, float 6.400000e+01, float 0.000000e+00, !dbg !213
  %add.i.i794.1 = fadd contract float %add361.1, %cond.i.i793.1, !dbg !213
  %206 = tail call contract float @llvm.exp2.f32(float %add.i.i794.1), !dbg !213
  %cond2.i.i795.1 = select contract i1 %cmp.i.i792.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !213
  %mul.i.i796.1 = fmul contract float %cond2.i.i795.1, %206, !dbg !213
  %cmp.i.i797.1 = fcmp contract olt float %add365.1, -1.260000e+02, !dbg !215
  %cond.i.i798.1 = select contract i1 %cmp.i.i797.1, float 6.400000e+01, float 0.000000e+00, !dbg !215
  %add.i.i799.1 = fadd contract float %add365.1, %cond.i.i798.1, !dbg !215
  %207 = tail call contract float @llvm.exp2.f32(float %add.i.i799.1), !dbg !215
  %cond2.i.i800.1 = select contract i1 %cmp.i.i797.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !215
  %mul.i.i801.1 = fmul contract float %cond2.i.i800.1, %207, !dbg !215
  %208 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !217
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !217, !noalias !221
  %209 = fptrunc float %mul.i.i786.1 to half, !dbg !217
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %208), !dbg !217, !noalias !221
  %210 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !221
  %211 = fptrunc float %mul.i.i791.1 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %210), !dbg !226, !noalias !221
  %212 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !228
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !228, !noalias !232
  %213 = fptrunc float %mul.i.i796.1 to half, !dbg !228
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %212), !dbg !228, !noalias !232
  %214 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !232
  %215 = fptrunc float %mul.i.i801.1 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %214), !dbg !237, !noalias !232
  %216 = insertelement <4 x half> poison, half %209, i64 0, !dbg !239
  %217 = insertelement <4 x half> %216, half %211, i64 1, !dbg !239
  %218 = insertelement <4 x half> %217, half %213, i64 2, !dbg !239
  %219 = insertelement <4 x half> %218, half %215, i64 3, !dbg !239
  %conv.i.i.1916 = fpext half %209 to float, !dbg !240
  %add399.1917 = fadd contract float %conv.i.i.1916, 0.000000e+00, !dbg !245
  %conv.i.i.1.1 = fpext half %211 to float, !dbg !240
  %add399.1.1 = fadd contract float %add399.1917, %conv.i.i.1.1, !dbg !245
  %conv.i.i.2.1 = fpext half %213 to float, !dbg !240
  %add399.2.1 = fadd contract float %add399.1.1, %conv.i.i.2.1, !dbg !245
  %conv.i.i.3.1 = fpext half %215 to float, !dbg !240
  %add399.3.1 = fadd contract float %add399.2.1, %conv.i.i.3.1, !dbg !245
  %220 = bitcast float %add399.3.1 to i32, !dbg !246
  %221 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !248
  %222 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %221) #11, !dbg !251
  %xor.i.i807.1 = xor i32 %222, 32, !dbg !252
  %223 = and i32 %222, -64, !dbg !253
  %and.i.i808.1 = add nsw i32 %223, 64, !dbg !253
  %cmp.not.i.i809.1 = icmp slt i32 %xor.i.i807.1, %and.i.i808.1, !dbg !254
  %cond.i.i810.1 = select i1 %cmp.not.i.i809.1, i32 %xor.i.i807.1, i32 %222, !dbg !255
  %shl.i.i811.1 = shl i32 %cond.i.i810.1, 2, !dbg !256
  %224 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i811.1, i32 %220), !dbg !257
  %225 = bitcast i32 %224 to float, !dbg !258
  %add407.1 = fadd contract float %add399.3.1, %225, !dbg !259
  %226 = bitcast float %add407.1 to i32, !dbg !260
  %227 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !262
  %228 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %227) #11, !dbg !265
  %xor.i.i812.1 = xor i32 %228, 16, !dbg !266
  %229 = and i32 %228, -64, !dbg !267
  %and.i.i813.1 = add nsw i32 %229, 64, !dbg !267
  %cmp.not.i.i814.1 = icmp slt i32 %xor.i.i812.1, %and.i.i813.1, !dbg !268
  %cond.i.i815.1 = select i1 %cmp.not.i.i814.1, i32 %xor.i.i812.1, i32 %228, !dbg !269
  %shl.i.i816.1 = shl i32 %cond.i.i815.1, 2, !dbg !270
  %230 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i816.1, i32 %226), !dbg !271
  %231 = bitcast i32 %230 to float, !dbg !272
  %add412.1 = fadd contract float %add407.1, %231, !dbg !273
  fence syncscope("warp") release, !dbg !274
  tail call void @llvm.mxc.barrier.warp(), !dbg !277
  fence syncscope("warp") acquire, !dbg !278
  %232 = getelementptr inbounds i8, ptr addrspace(4) %29, i64 %.idx.1, !dbg !279
  %233 = load i64, ptr addrspace(4) %232, align 8, !dbg !280
  %add.ptr441.1.1 = getelementptr inbounds i8, ptr addrspace(4) %232, i64 128, !dbg !279
  %234 = load i64, ptr addrspace(4) %add.ptr441.1.1, align 8, !dbg !280
  %add.ptr441.2.1 = getelementptr inbounds i8, ptr addrspace(4) %232, i64 256, !dbg !279
  %235 = load i64, ptr addrspace(4) %add.ptr441.2.1, align 8, !dbg !280
  %add.ptr441.3.1 = getelementptr inbounds i8, ptr addrspace(4) %232, i64 384, !dbg !279
  %236 = load i64, ptr addrspace(4) %add.ptr441.3.1, align 8, !dbg !280
  %mul306.1 = fmul contract float %denominator.sroa.0.2, %mul.i.i.1, !dbg !281
  %v_column.sroa.66.0.insert.ext1239 = shl i64 %236, 48, !dbg !282
  %v_column.sroa.50.0.insert.ext1164 = shl i64 %235, 32, !dbg !282
  %v_column.sroa.50.0.insert.shift1165 = and i64 %v_column.sroa.50.0.insert.ext1164, 281470681743360, !dbg !282
  %v_column.sroa.50.0.insert.insert1167 = or disjoint i64 %v_column.sroa.66.0.insert.ext1239, %v_column.sroa.50.0.insert.shift1165, !dbg !282
  %v_column.sroa.34.0.insert.ext1089 = shl i64 %234, 16, !dbg !282
  %v_column.sroa.34.0.insert.shift1090 = and i64 %v_column.sroa.34.0.insert.ext1089, 4294901760, !dbg !282
  %v_column.sroa.34.0.insert.insert1092 = or disjoint i64 %v_column.sroa.50.0.insert.insert1167, %v_column.sroa.34.0.insert.shift1090, !dbg !282
  %v_column.sroa.0.0.insert.ext1026 = and i64 %233, 65535, !dbg !282
  %v_column.sroa.0.0.insert.insert1028 = or disjoint i64 %v_column.sroa.34.0.insert.insert1092, %v_column.sroa.0.0.insert.ext1026, !dbg !282
  store i64 %v_column.sroa.0.0.insert.insert1028, ptr addrspace(3) %add.ptr483.1926, align 8, !dbg !282
  %v_fetch.sroa.0.2.extract.shift1333 = lshr i64 %233, 16, !dbg !283
  %237 = shl i64 %236, 32, !dbg !282
  %v_column.sroa.66.0.insert.ext1244 = and i64 %237, -281474976710656, !dbg !282
  %238 = shl i64 %235, 16, !dbg !282
  %v_column.sroa.50.0.insert.shift1170 = and i64 %238, 281470681743360, !dbg !282
  %v_column.sroa.50.0.insert.insert1172 = or disjoint i64 %v_column.sroa.66.0.insert.ext1244, %v_column.sroa.50.0.insert.shift1170, !dbg !282
  %v_column.sroa.34.0.insert.ext1094 = and i64 %234, 4294901760, !dbg !282
  %v_column.sroa.34.0.insert.insert1097 = or disjoint i64 %v_column.sroa.50.0.insert.insert1172, %v_column.sroa.34.0.insert.ext1094, !dbg !282
  %v_column.sroa.0.0.insert.ext1030 = and i64 %v_fetch.sroa.0.2.extract.shift1333, 65535, !dbg !282
  %v_column.sroa.0.0.insert.insert1032 = or disjoint i64 %v_column.sroa.34.0.insert.insert1097, %v_column.sroa.0.0.insert.ext1030, !dbg !282
  store i64 %v_column.sroa.0.0.insert.insert1032, ptr addrspace(3) %add.ptr483.1.1, align 8, !dbg !282
  %v_fetch.sroa.0.4.extract.shift1342 = lshr i64 %233, 32, !dbg !283
  %239 = shl i64 %236, 16, !dbg !282
  %v_column.sroa.66.0.insert.ext1249 = and i64 %239, -281474976710656, !dbg !282
  %v_column.sroa.50.0.insert.ext1174 = and i64 %235, 281470681743360, !dbg !282
  %v_column.sroa.50.0.insert.insert1177 = or disjoint i64 %v_column.sroa.66.0.insert.ext1249, %v_column.sroa.50.0.insert.ext1174, !dbg !282
  %240 = lshr i64 %234, 16, !dbg !282
  %v_column.sroa.34.0.insert.shift1100 = and i64 %240, 4294901760, !dbg !282
  %v_column.sroa.34.0.insert.insert1102 = or disjoint i64 %v_column.sroa.50.0.insert.insert1177, %v_column.sroa.34.0.insert.shift1100, !dbg !282
  %v_column.sroa.0.0.insert.ext1034 = and i64 %v_fetch.sroa.0.4.extract.shift1342, 65535, !dbg !282
  %v_column.sroa.0.0.insert.insert1036 = or disjoint i64 %v_column.sroa.34.0.insert.insert1102, %v_column.sroa.0.0.insert.ext1034, !dbg !282
  store i64 %v_column.sroa.0.0.insert.insert1036, ptr addrspace(3) %add.ptr483.2.1, align 8, !dbg !282
  %v_fetch.sroa.0.6.extract.shift1351 = lshr i64 %233, 48, !dbg !283
  %v_fetch.sroa.62.30.extract.shift1450 = and i64 %236, -281474976710656, !dbg !282
  %241 = lshr i64 %235, 16, !dbg !282
  %v_column.sroa.50.0.insert.shift1180 = and i64 %241, 281470681743360, !dbg !282
  %v_column.sroa.50.0.insert.insert1182 = or disjoint i64 %v_fetch.sroa.62.30.extract.shift1450, %v_column.sroa.50.0.insert.shift1180, !dbg !282
  %242 = lshr i64 %234, 32, !dbg !282
  %v_column.sroa.34.0.insert.shift1105 = and i64 %242, 4294901760, !dbg !282
  %v_column.sroa.34.0.insert.insert1107 = or disjoint i64 %v_column.sroa.50.0.insert.insert1182, %v_column.sroa.34.0.insert.shift1105, !dbg !282
  %v_column.sroa.0.0.insert.insert1040 = or disjoint i64 %v_column.sroa.34.0.insert.insert1107, %v_fetch.sroa.0.6.extract.shift1351, !dbg !282
  store i64 %v_column.sroa.0.0.insert.insert1040, ptr addrspace(3) %add.ptr483.3.1, align 8, !dbg !282
  fence syncscope("warp") release, !dbg !284
  tail call void @llvm.mxc.barrier.warp(), !dbg !287
  fence syncscope("warp") acquire, !dbg !288
  %243 = load <4 x half>, ptr addrspace(3) %add.ptr510.1930, align 8, !dbg !289
  %244 = load <4 x half>, ptr addrspace(3) %add.ptr510.1.1, align 8, !dbg !289
  %245 = load <4 x half>, ptr addrspace(3) %add.ptr510.2.1, align 8, !dbg !289
  %246 = load <4 x half>, ptr addrspace(3) %add.ptr510.3.1, align 8, !dbg !289
  %247 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %243, <4 x half> %219, <4 x float> %numerator.sroa.0.12.vec.insert1715), !dbg !290
  %248 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %244, <4 x half> %219, <4 x float> %numerator.sroa.58.28.vec.insert1803), !dbg !290
  %249 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %245, <4 x half> %219, <4 x float> %numerator.sroa.114.44.vec.insert1891), !dbg !290
  %250 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %246, <4 x half> %219, <4 x float> %numerator.sroa.170.60.vec.insert1979), !dbg !290
  %add416.1 = fadd contract float %mul306.1, %add412.1, !dbg !291
  br label %if.end536.1, !dbg !292

if.end536.1:                                      ; preds = %if.then.1, %if.end536
  %numerator.sroa.170.2 = phi <4 x float> [ %numerator.sroa.170.1, %if.end536 ], [ %250, %if.then.1 ], !dbg !293
  %numerator.sroa.114.2 = phi <4 x float> [ %numerator.sroa.114.1, %if.end536 ], [ %249, %if.then.1 ], !dbg !293
  %numerator.sroa.58.2 = phi <4 x float> [ %numerator.sroa.58.1, %if.end536 ], [ %248, %if.then.1 ], !dbg !293
  %numerator.sroa.0.2 = phi <4 x float> [ %numerator.sroa.0.1, %if.end536 ], [ %247, %if.then.1 ], !dbg !293
  %maximum.sroa.0.2.1 = phi float [ %maximum.sroa.0.2, %if.end536 ], [ %202, %if.then.1 ], !dbg !293
  %denominator.sroa.0.2.1 = phi float [ %denominator.sroa.0.2, %if.end536 ], [ %add416.1, %if.then.1 ], !dbg !293
  %251 = or disjoint i64 %57, 2, !dbg !294
  %arrayidx110.2 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %251, !dbg !66
  %252 = load i32, ptr addrspace(1) %arrayidx110.2, align 4, !dbg !66, !tbaa !30
  %mul111.2 = shl nsw i32 %252, 4, !dbg !67
  %cmp112.2 = icmp slt i32 %252, 0, !dbg !68
  %cmp114.not.2 = icmp sgt i32 %mul111.2, %1
  %or.cond.2 = select i1 %cmp112.2, i1 true, i1 %cmp114.not.2, !dbg !69
  br i1 %or.cond.2, label %if.end536.2, label %if.then.2, !dbg !69

if.then.2:                                        ; preds = %if.end536.1
  fence syncscope("warp") release, !dbg !129
  tail call void @llvm.mxc.barrier.warp(), !dbg !132
  fence syncscope("warp") acquire, !dbg !133
  %conv124.2 = zext nneg i32 %mul111.2 to i64
  %.idx.2 = shl nuw nsw i64 %conv124.2, 7
  %gep2053 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep2052, i64 %.idx.2, !dbg !134
  %qk_fetch.sroa.0.0.copyload2024 = load i64, ptr addrspace(4) %gep2053, align 16, !dbg !135
  %qk_fetch.sroa.22.0..sroa_idx2034 = getelementptr inbounds i8, ptr addrspace(4) %gep2053, i64 8, !dbg !135
  %qk_fetch.sroa.22.0.copyload2035 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0..sroa_idx2034, align 8, !dbg !135
  store i64 %qk_fetch.sroa.0.0.copyload2024, ptr addrspace(3) %add.ptr39, align 8, !dbg !136
  store i64 %qk_fetch.sroa.22.0.copyload2035, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !136
  %gep842.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep2053, i64 1024, !dbg !134
  %qk_fetch.sroa.0.0.copyload2025 = load i64, ptr addrspace(4) %gep842.1.2, align 16, !dbg !135
  %qk_fetch.sroa.22.0.gep842.1.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep2053, i64 1032, !dbg !135
  %qk_fetch.sroa.22.0.copyload2036 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.gep842.1.2.sroa_idx, align 8, !dbg !135
  store i64 %qk_fetch.sroa.0.0.copyload2025, ptr addrspace(3) %add.ptr39.1876, align 8, !dbg !136
  store i64 %qk_fetch.sroa.22.0.copyload2036, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !136
  fence syncscope("warp") release, !dbg !137
  tail call void @llvm.mxc.barrier.warp(), !dbg !140
  fence syncscope("warp") acquire, !dbg !141
  %k_local.sroa.0.0.copyload.2936 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !142
  %253 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2936, <4 x half> %9, <4 x float> zeroinitializer), !dbg !143
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !142
  %254 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %10, <4 x float> %253), !dbg !143
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !142
  %255 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %11, <4 x float> %254), !dbg !143
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !142
  %256 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %12, <4 x float> %255), !dbg !143
  %add224.2 = add nuw nsw i32 %mul111.2, %mul223
  %cmp227.not.2937 = icmp sgt i32 %add224.2, %1, !dbg !144
  %scores.sroa.0.0.vec.extract1514 = extractelement <4 x float> %256, i64 0
  %spec.select2057 = select i1 %cmp227.not.2937, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1514, !dbg !145
  %cmp227.not.1.2.not = icmp slt i32 %add224.2, %1, !dbg !144
  %scores.sroa.0.4.vec.extract1557 = extractelement <4 x float> %256, i64 1, !dbg !145
  %condval.0.1.2 = select i1 %cmp227.not.1.2.not, float %scores.sroa.0.4.vec.extract1557, float 0xFFF0000000000000, !dbg !145
  %add225.2.2 = or disjoint i32 %add224.2, 2, !dbg !146
  %cmp227.not.2.2 = icmp sgt i32 %add225.2.2, %1, !dbg !144
  %scores.sroa.0.8.vec.extract1594 = extractelement <4 x float> %256, i64 2, !dbg !145
  %condval.0.2.2 = select i1 %cmp227.not.2.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1594, !dbg !145
  %add225.3.2 = or disjoint i32 %add224.2, 3, !dbg !146
  %cmp227.not.3.2 = icmp sgt i32 %add225.3.2, %1, !dbg !144
  %scores.sroa.0.12.vec.extract1631 = extractelement <4 x float> %256, i64 3, !dbg !145
  %condval.0.3.2 = select i1 %cmp227.not.3.2, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1631, !dbg !145
  %257 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2057, float 0xFFF0000000000000), !dbg !147
  %258 = tail call contract noundef float @llvm.maxnum.f32(float %257, float %condval.0.1.2), !dbg !147
  %259 = tail call contract noundef float @llvm.maxnum.f32(float %258, float %condval.0.2.2), !dbg !147
  %260 = tail call contract noundef float @llvm.maxnum.f32(float %259, float %condval.0.3.2), !dbg !147
  %261 = bitcast float %260 to i32, !dbg !151
  %262 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !154
  %263 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %262) #11, !dbg !159
  %xor.i.i.2 = xor i32 %263, 32, !dbg !160
  %264 = and i32 %263, -64, !dbg !161
  %and.i.i.2 = add nsw i32 %264, 64, !dbg !161
  %cmp.not.i.i.2 = icmp slt i32 %xor.i.i.2, %and.i.i.2, !dbg !162
  %cond.i.i.2 = select i1 %cmp.not.i.i.2, i32 %xor.i.i.2, i32 %263, !dbg !163
  %shl.i.i.2 = shl i32 %cond.i.i.2, 2, !dbg !164
  %265 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.2, i32 %261), !dbg !165
  %266 = bitcast i32 %265 to float, !dbg !166
  %267 = tail call contract noundef float @llvm.maxnum.f32(float %260, float %266), !dbg !167
  %268 = bitcast float %267 to i32, !dbg !169
  %269 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !171
  %270 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %269) #11, !dbg !174
  %xor.i.i776.2 = xor i32 %270, 16, !dbg !175
  %271 = and i32 %270, -64, !dbg !176
  %and.i.i777.2 = add nsw i32 %271, 64, !dbg !176
  %cmp.not.i.i778.2 = icmp slt i32 %xor.i.i776.2, %and.i.i777.2, !dbg !177
  %cond.i.i779.2 = select i1 %cmp.not.i.i778.2, i32 %xor.i.i776.2, i32 %270, !dbg !178
  %shl.i.i780.2 = shl i32 %cond.i.i779.2, 2, !dbg !179
  %272 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i780.2, i32 %268), !dbg !180
  %273 = bitcast i32 %272 to float, !dbg !181
  %274 = tail call contract noundef float @llvm.maxnum.f32(float %267, float %273), !dbg !182
  %275 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.2.1, float %274), !dbg !184
  %sub.2 = fsub contract float %maximum.sroa.0.2.1, %275, !dbg !186
  %mul269.2 = fmul contract float %sub.2, 0x3FC7154760000000, !dbg !187
  %cmp.i.i.2 = fcmp contract olt float %mul269.2, -1.260000e+02, !dbg !188
  %cond.i.i781.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !188
  %add.i.i.2 = fadd contract float %mul269.2, %cond.i.i781.2, !dbg !188
  %276 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !188
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !188
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %276, !dbg !188
  %numerator.sroa.0.0.vec.extract1654 = extractelement <4 x float> %numerator.sroa.0.2, i64 0, !dbg !191
  %numerator.sroa.0.4.vec.extract1675 = extractelement <4 x float> %numerator.sroa.0.2, i64 1, !dbg !191
  %numerator.sroa.0.8.vec.extract1696 = extractelement <4 x float> %numerator.sroa.0.2, i64 2, !dbg !191
  %numerator.sroa.0.12.vec.extract1717 = extractelement <4 x float> %numerator.sroa.0.2, i64 3, !dbg !191
  %mul286.2948 = fmul contract float %mul.i.i.2, %numerator.sroa.0.0.vec.extract1654, !dbg !192
  %mul289.2949 = fmul contract float %mul.i.i.2, %numerator.sroa.0.4.vec.extract1675, !dbg !193
  %mul292.2950 = fmul contract float %mul.i.i.2, %numerator.sroa.0.8.vec.extract1696, !dbg !194
  %mul295.2951 = fmul contract float %mul.i.i.2, %numerator.sroa.0.12.vec.extract1717, !dbg !195
  %numerator.sroa.0.0.vec.insert1656 = insertelement <4 x float> poison, float %mul286.2948, i64 0, !dbg !196
  %numerator.sroa.0.4.vec.insert1677 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert1656, float %mul289.2949, i64 1, !dbg !196
  %numerator.sroa.0.8.vec.insert1698 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert1677, float %mul292.2950, i64 2, !dbg !196
  %numerator.sroa.0.12.vec.insert1719 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert1698, float %mul295.2951, i64 3, !dbg !196
  %numerator.sroa.58.16.vec.extract1742 = extractelement <4 x float> %numerator.sroa.58.2, i64 0, !dbg !191
  %numerator.sroa.58.20.vec.extract1763 = extractelement <4 x float> %numerator.sroa.58.2, i64 1, !dbg !191
  %numerator.sroa.58.24.vec.extract1784 = extractelement <4 x float> %numerator.sroa.58.2, i64 2, !dbg !191
  %numerator.sroa.58.28.vec.extract1805 = extractelement <4 x float> %numerator.sroa.58.2, i64 3, !dbg !191
  %mul286.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.58.16.vec.extract1742, !dbg !192
  %mul289.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.58.20.vec.extract1763, !dbg !193
  %mul292.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.58.24.vec.extract1784, !dbg !194
  %mul295.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.58.28.vec.extract1805, !dbg !195
  %numerator.sroa.58.16.vec.insert1744 = insertelement <4 x float> poison, float %mul286.1.2, i64 0, !dbg !196
  %numerator.sroa.58.20.vec.insert1765 = insertelement <4 x float> %numerator.sroa.58.16.vec.insert1744, float %mul289.1.2, i64 1, !dbg !196
  %numerator.sroa.58.24.vec.insert1786 = insertelement <4 x float> %numerator.sroa.58.20.vec.insert1765, float %mul292.1.2, i64 2, !dbg !196
  %numerator.sroa.58.28.vec.insert1807 = insertelement <4 x float> %numerator.sroa.58.24.vec.insert1786, float %mul295.1.2, i64 3, !dbg !196
  %numerator.sroa.114.32.vec.extract1830 = extractelement <4 x float> %numerator.sroa.114.2, i64 0, !dbg !191
  %numerator.sroa.114.36.vec.extract1851 = extractelement <4 x float> %numerator.sroa.114.2, i64 1, !dbg !191
  %numerator.sroa.114.40.vec.extract1872 = extractelement <4 x float> %numerator.sroa.114.2, i64 2, !dbg !191
  %numerator.sroa.114.44.vec.extract1893 = extractelement <4 x float> %numerator.sroa.114.2, i64 3, !dbg !191
  %mul286.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.114.32.vec.extract1830, !dbg !192
  %mul289.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.114.36.vec.extract1851, !dbg !193
  %mul292.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.114.40.vec.extract1872, !dbg !194
  %mul295.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.114.44.vec.extract1893, !dbg !195
  %numerator.sroa.114.32.vec.insert1832 = insertelement <4 x float> poison, float %mul286.2.2, i64 0, !dbg !196
  %numerator.sroa.114.36.vec.insert1853 = insertelement <4 x float> %numerator.sroa.114.32.vec.insert1832, float %mul289.2.2, i64 1, !dbg !196
  %numerator.sroa.114.40.vec.insert1874 = insertelement <4 x float> %numerator.sroa.114.36.vec.insert1853, float %mul292.2.2, i64 2, !dbg !196
  %numerator.sroa.114.44.vec.insert1895 = insertelement <4 x float> %numerator.sroa.114.40.vec.insert1874, float %mul295.2.2, i64 3, !dbg !196
  %numerator.sroa.170.48.vec.extract1918 = extractelement <4 x float> %numerator.sroa.170.2, i64 0, !dbg !191
  %numerator.sroa.170.52.vec.extract1939 = extractelement <4 x float> %numerator.sroa.170.2, i64 1, !dbg !191
  %numerator.sroa.170.56.vec.extract1960 = extractelement <4 x float> %numerator.sroa.170.2, i64 2, !dbg !191
  %numerator.sroa.170.60.vec.extract1981 = extractelement <4 x float> %numerator.sroa.170.2, i64 3, !dbg !191
  %mul286.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.170.48.vec.extract1918, !dbg !192
  %mul289.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.170.52.vec.extract1939, !dbg !193
  %mul292.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.170.56.vec.extract1960, !dbg !194
  %mul295.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.170.60.vec.extract1981, !dbg !195
  %numerator.sroa.170.48.vec.insert1920 = insertelement <4 x float> poison, float %mul286.3.2, i64 0, !dbg !196
  %numerator.sroa.170.52.vec.insert1941 = insertelement <4 x float> %numerator.sroa.170.48.vec.insert1920, float %mul289.3.2, i64 1, !dbg !196
  %numerator.sroa.170.56.vec.insert1962 = insertelement <4 x float> %numerator.sroa.170.52.vec.insert1941, float %mul292.3.2, i64 2, !dbg !196
  %numerator.sroa.170.60.vec.insert1983 = insertelement <4 x float> %numerator.sroa.170.56.vec.insert1962, float %mul295.3.2, i64 3, !dbg !196
  %sub319.2 = fsub contract float %spec.select2057, %275, !dbg !197
  %sub323.2 = fsub contract float %condval.0.1.2, %275, !dbg !198
  %sub327.2 = fsub contract float %condval.0.2.2, %275, !dbg !199
  %sub331.2 = fsub contract float %condval.0.3.2, %275, !dbg !200
  %mul336.2 = fmul contract float %sub319.2, 0x3FC7154760000000, !dbg !201
  %mul340.2 = fmul contract float %sub323.2, 0x3FC7154760000000, !dbg !202
  %mul344.2 = fmul contract float %sub327.2, 0x3FC7154760000000, !dbg !203
  %mul348.2 = fmul contract float %sub331.2, 0x3FC7154760000000, !dbg !204
  %add353.2 = fadd contract float %mul336.2, 8.000000e+00, !dbg !205
  %add357.2 = fadd contract float %mul340.2, 8.000000e+00, !dbg !206
  %add361.2 = fadd contract float %mul344.2, 8.000000e+00, !dbg !207
  %add365.2 = fadd contract float %mul348.2, 8.000000e+00, !dbg !208
  %cmp.i.i782.2 = fcmp contract olt float %add353.2, -1.260000e+02, !dbg !209
  %cond.i.i783.2 = select contract i1 %cmp.i.i782.2, float 6.400000e+01, float 0.000000e+00, !dbg !209
  %add.i.i784.2 = fadd contract float %add353.2, %cond.i.i783.2, !dbg !209
  %277 = tail call contract float @llvm.exp2.f32(float %add.i.i784.2), !dbg !209
  %cond2.i.i785.2 = select contract i1 %cmp.i.i782.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !209
  %mul.i.i786.2 = fmul contract float %cond2.i.i785.2, %277, !dbg !209
  %cmp.i.i787.2 = fcmp contract olt float %add357.2, -1.260000e+02, !dbg !211
  %cond.i.i788.2 = select contract i1 %cmp.i.i787.2, float 6.400000e+01, float 0.000000e+00, !dbg !211
  %add.i.i789.2 = fadd contract float %add357.2, %cond.i.i788.2, !dbg !211
  %278 = tail call contract float @llvm.exp2.f32(float %add.i.i789.2), !dbg !211
  %cond2.i.i790.2 = select contract i1 %cmp.i.i787.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !211
  %mul.i.i791.2 = fmul contract float %cond2.i.i790.2, %278, !dbg !211
  %cmp.i.i792.2 = fcmp contract olt float %add361.2, -1.260000e+02, !dbg !213
  %cond.i.i793.2 = select contract i1 %cmp.i.i792.2, float 6.400000e+01, float 0.000000e+00, !dbg !213
  %add.i.i794.2 = fadd contract float %add361.2, %cond.i.i793.2, !dbg !213
  %279 = tail call contract float @llvm.exp2.f32(float %add.i.i794.2), !dbg !213
  %cond2.i.i795.2 = select contract i1 %cmp.i.i792.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !213
  %mul.i.i796.2 = fmul contract float %cond2.i.i795.2, %279, !dbg !213
  %cmp.i.i797.2 = fcmp contract olt float %add365.2, -1.260000e+02, !dbg !215
  %cond.i.i798.2 = select contract i1 %cmp.i.i797.2, float 6.400000e+01, float 0.000000e+00, !dbg !215
  %add.i.i799.2 = fadd contract float %add365.2, %cond.i.i798.2, !dbg !215
  %280 = tail call contract float @llvm.exp2.f32(float %add.i.i799.2), !dbg !215
  %cond2.i.i800.2 = select contract i1 %cmp.i.i797.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !215
  %mul.i.i801.2 = fmul contract float %cond2.i.i800.2, %280, !dbg !215
  %281 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !217
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !217, !noalias !221
  %282 = fptrunc float %mul.i.i786.2 to half, !dbg !217
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %281), !dbg !217, !noalias !221
  %283 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !221
  %284 = fptrunc float %mul.i.i791.2 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %283), !dbg !226, !noalias !221
  %285 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !228
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !228, !noalias !232
  %286 = fptrunc float %mul.i.i796.2 to half, !dbg !228
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %285), !dbg !228, !noalias !232
  %287 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !232
  %288 = fptrunc float %mul.i.i801.2 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %287), !dbg !237, !noalias !232
  %289 = insertelement <4 x half> poison, half %282, i64 0, !dbg !239
  %290 = insertelement <4 x half> %289, half %284, i64 1, !dbg !239
  %291 = insertelement <4 x half> %290, half %286, i64 2, !dbg !239
  %292 = insertelement <4 x half> %291, half %288, i64 3, !dbg !239
  %conv.i.i.2953 = fpext half %282 to float, !dbg !240
  %add399.2954 = fadd contract float %conv.i.i.2953, 0.000000e+00, !dbg !245
  %conv.i.i.1.2 = fpext half %284 to float, !dbg !240
  %add399.1.2 = fadd contract float %add399.2954, %conv.i.i.1.2, !dbg !245
  %conv.i.i.2.2 = fpext half %286 to float, !dbg !240
  %add399.2.2 = fadd contract float %add399.1.2, %conv.i.i.2.2, !dbg !245
  %conv.i.i.3.2 = fpext half %288 to float, !dbg !240
  %add399.3.2 = fadd contract float %add399.2.2, %conv.i.i.3.2, !dbg !245
  %293 = bitcast float %add399.3.2 to i32, !dbg !246
  %294 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !248
  %295 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %294) #11, !dbg !251
  %xor.i.i807.2 = xor i32 %295, 32, !dbg !252
  %296 = and i32 %295, -64, !dbg !253
  %and.i.i808.2 = add nsw i32 %296, 64, !dbg !253
  %cmp.not.i.i809.2 = icmp slt i32 %xor.i.i807.2, %and.i.i808.2, !dbg !254
  %cond.i.i810.2 = select i1 %cmp.not.i.i809.2, i32 %xor.i.i807.2, i32 %295, !dbg !255
  %shl.i.i811.2 = shl i32 %cond.i.i810.2, 2, !dbg !256
  %297 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i811.2, i32 %293), !dbg !257
  %298 = bitcast i32 %297 to float, !dbg !258
  %add407.2 = fadd contract float %add399.3.2, %298, !dbg !259
  %299 = bitcast float %add407.2 to i32, !dbg !260
  %300 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !262
  %301 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %300) #11, !dbg !265
  %xor.i.i812.2 = xor i32 %301, 16, !dbg !266
  %302 = and i32 %301, -64, !dbg !267
  %and.i.i813.2 = add nsw i32 %302, 64, !dbg !267
  %cmp.not.i.i814.2 = icmp slt i32 %xor.i.i812.2, %and.i.i813.2, !dbg !268
  %cond.i.i815.2 = select i1 %cmp.not.i.i814.2, i32 %xor.i.i812.2, i32 %301, !dbg !269
  %shl.i.i816.2 = shl i32 %cond.i.i815.2, 2, !dbg !270
  %303 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i816.2, i32 %299), !dbg !271
  %304 = bitcast i32 %303 to float, !dbg !272
  %add412.2 = fadd contract float %add407.2, %304, !dbg !273
  fence syncscope("warp") release, !dbg !274
  tail call void @llvm.mxc.barrier.warp(), !dbg !277
  fence syncscope("warp") acquire, !dbg !278
  %305 = getelementptr inbounds i8, ptr addrspace(4) %38, i64 %.idx.2, !dbg !279
  %306 = load i64, ptr addrspace(4) %305, align 8, !dbg !280
  %add.ptr441.1.2 = getelementptr inbounds i8, ptr addrspace(4) %305, i64 128, !dbg !279
  %307 = load i64, ptr addrspace(4) %add.ptr441.1.2, align 8, !dbg !280
  %add.ptr441.2.2 = getelementptr inbounds i8, ptr addrspace(4) %305, i64 256, !dbg !279
  %308 = load i64, ptr addrspace(4) %add.ptr441.2.2, align 8, !dbg !280
  %add.ptr441.3.2 = getelementptr inbounds i8, ptr addrspace(4) %305, i64 384, !dbg !279
  %309 = load i64, ptr addrspace(4) %add.ptr441.3.2, align 8, !dbg !280
  %mul306.2 = fmul contract float %denominator.sroa.0.2.1, %mul.i.i.2, !dbg !281
  %v_column.sroa.66.0.insert.ext1259 = shl i64 %309, 48, !dbg !282
  %v_column.sroa.50.0.insert.ext1184 = shl i64 %308, 32, !dbg !282
  %v_column.sroa.50.0.insert.shift1185 = and i64 %v_column.sroa.50.0.insert.ext1184, 281470681743360, !dbg !282
  %v_column.sroa.50.0.insert.insert1187 = or disjoint i64 %v_column.sroa.66.0.insert.ext1259, %v_column.sroa.50.0.insert.shift1185, !dbg !282
  %v_column.sroa.34.0.insert.ext1109 = shl i64 %307, 16, !dbg !282
  %v_column.sroa.34.0.insert.shift1110 = and i64 %v_column.sroa.34.0.insert.ext1109, 4294901760, !dbg !282
  %v_column.sroa.34.0.insert.insert1112 = or disjoint i64 %v_column.sroa.50.0.insert.insert1187, %v_column.sroa.34.0.insert.shift1110, !dbg !282
  %v_column.sroa.0.0.insert.ext1042 = and i64 %306, 65535, !dbg !282
  %v_column.sroa.0.0.insert.insert1044 = or disjoint i64 %v_column.sroa.34.0.insert.insert1112, %v_column.sroa.0.0.insert.ext1042, !dbg !282
  store i64 %v_column.sroa.0.0.insert.insert1044, ptr addrspace(3) %add.ptr483.2963, align 8, !dbg !282
  %v_fetch.sroa.0.2.extract.shift1336 = lshr i64 %306, 16, !dbg !283
  %310 = shl i64 %309, 32, !dbg !282
  %v_column.sroa.66.0.insert.ext1264 = and i64 %310, -281474976710656, !dbg !282
  %311 = shl i64 %308, 16, !dbg !282
  %v_column.sroa.50.0.insert.shift1190 = and i64 %311, 281470681743360, !dbg !282
  %v_column.sroa.50.0.insert.insert1192 = or disjoint i64 %v_column.sroa.66.0.insert.ext1264, %v_column.sroa.50.0.insert.shift1190, !dbg !282
  %v_column.sroa.34.0.insert.ext1114 = and i64 %307, 4294901760, !dbg !282
  %v_column.sroa.34.0.insert.insert1117 = or disjoint i64 %v_column.sroa.50.0.insert.insert1192, %v_column.sroa.34.0.insert.ext1114, !dbg !282
  %v_column.sroa.0.0.insert.ext1046 = and i64 %v_fetch.sroa.0.2.extract.shift1336, 65535, !dbg !282
  %v_column.sroa.0.0.insert.insert1048 = or disjoint i64 %v_column.sroa.34.0.insert.insert1117, %v_column.sroa.0.0.insert.ext1046, !dbg !282
  store i64 %v_column.sroa.0.0.insert.insert1048, ptr addrspace(3) %add.ptr483.1.2, align 8, !dbg !282
  %v_fetch.sroa.0.4.extract.shift1345 = lshr i64 %306, 32, !dbg !283
  %312 = shl i64 %309, 16, !dbg !282
  %v_column.sroa.66.0.insert.ext1269 = and i64 %312, -281474976710656, !dbg !282
  %v_column.sroa.50.0.insert.ext1194 = and i64 %308, 281470681743360, !dbg !282
  %v_column.sroa.50.0.insert.insert1197 = or disjoint i64 %v_column.sroa.66.0.insert.ext1269, %v_column.sroa.50.0.insert.ext1194, !dbg !282
  %313 = lshr i64 %307, 16, !dbg !282
  %v_column.sroa.34.0.insert.shift1120 = and i64 %313, 4294901760, !dbg !282
  %v_column.sroa.34.0.insert.insert1122 = or disjoint i64 %v_column.sroa.50.0.insert.insert1197, %v_column.sroa.34.0.insert.shift1120, !dbg !282
  %v_column.sroa.0.0.insert.ext1050 = and i64 %v_fetch.sroa.0.4.extract.shift1345, 65535, !dbg !282
  %v_column.sroa.0.0.insert.insert1052 = or disjoint i64 %v_column.sroa.34.0.insert.insert1122, %v_column.sroa.0.0.insert.ext1050, !dbg !282
  store i64 %v_column.sroa.0.0.insert.insert1052, ptr addrspace(3) %add.ptr483.2.2, align 8, !dbg !282
  %v_fetch.sroa.0.6.extract.shift1354 = lshr i64 %306, 48, !dbg !283
  %v_fetch.sroa.62.30.extract.shift1453 = and i64 %309, -281474976710656, !dbg !282
  %314 = lshr i64 %308, 16, !dbg !282
  %v_column.sroa.50.0.insert.shift1200 = and i64 %314, 281470681743360, !dbg !282
  %v_column.sroa.50.0.insert.insert1202 = or disjoint i64 %v_fetch.sroa.62.30.extract.shift1453, %v_column.sroa.50.0.insert.shift1200, !dbg !282
  %315 = lshr i64 %307, 32, !dbg !282
  %v_column.sroa.34.0.insert.shift1125 = and i64 %315, 4294901760, !dbg !282
  %v_column.sroa.34.0.insert.insert1127 = or disjoint i64 %v_column.sroa.50.0.insert.insert1202, %v_column.sroa.34.0.insert.shift1125, !dbg !282
  %v_column.sroa.0.0.insert.insert1056 = or disjoint i64 %v_column.sroa.34.0.insert.insert1127, %v_fetch.sroa.0.6.extract.shift1354, !dbg !282
  store i64 %v_column.sroa.0.0.insert.insert1056, ptr addrspace(3) %add.ptr483.3.2, align 8, !dbg !282
  fence syncscope("warp") release, !dbg !284
  tail call void @llvm.mxc.barrier.warp(), !dbg !287
  fence syncscope("warp") acquire, !dbg !288
  %316 = load <4 x half>, ptr addrspace(3) %add.ptr510.2967, align 8, !dbg !289
  %317 = load <4 x half>, ptr addrspace(3) %add.ptr510.1.2, align 8, !dbg !289
  %318 = load <4 x half>, ptr addrspace(3) %add.ptr510.2.2, align 8, !dbg !289
  %319 = load <4 x half>, ptr addrspace(3) %add.ptr510.3.2, align 8, !dbg !289
  %320 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %316, <4 x half> %292, <4 x float> %numerator.sroa.0.12.vec.insert1719), !dbg !290
  %321 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %317, <4 x half> %292, <4 x float> %numerator.sroa.58.28.vec.insert1807), !dbg !290
  %322 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %318, <4 x half> %292, <4 x float> %numerator.sroa.114.44.vec.insert1895), !dbg !290
  %323 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %319, <4 x half> %292, <4 x float> %numerator.sroa.170.60.vec.insert1983), !dbg !290
  %add416.2 = fadd contract float %mul306.2, %add412.2, !dbg !291
  br label %if.end536.2, !dbg !292

if.end536.2:                                      ; preds = %if.then.2, %if.end536.1
  %numerator.sroa.170.3 = phi <4 x float> [ %numerator.sroa.170.2, %if.end536.1 ], [ %323, %if.then.2 ], !dbg !293
  %numerator.sroa.114.3 = phi <4 x float> [ %numerator.sroa.114.2, %if.end536.1 ], [ %322, %if.then.2 ], !dbg !293
  %numerator.sroa.58.3 = phi <4 x float> [ %numerator.sroa.58.2, %if.end536.1 ], [ %321, %if.then.2 ], !dbg !293
  %numerator.sroa.0.3 = phi <4 x float> [ %numerator.sroa.0.2, %if.end536.1 ], [ %320, %if.then.2 ], !dbg !293
  %maximum.sroa.0.2.2 = phi float [ %maximum.sroa.0.2.1, %if.end536.1 ], [ %275, %if.then.2 ], !dbg !293
  %denominator.sroa.0.2.2 = phi float [ %denominator.sroa.0.2.1, %if.end536.1 ], [ %add416.2, %if.then.2 ], !dbg !293
  %324 = or disjoint i64 %57, 3, !dbg !294
  %arrayidx110.3 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %324, !dbg !66
  %325 = load i32, ptr addrspace(1) %arrayidx110.3, align 4, !dbg !66, !tbaa !30
  %mul111.3 = shl nsw i32 %325, 4, !dbg !67
  %cmp112.3 = icmp slt i32 %325, 0, !dbg !68
  %cmp114.not.3 = icmp sgt i32 %mul111.3, %1
  %or.cond.3 = select i1 %cmp112.3, i1 true, i1 %cmp114.not.3, !dbg !69
  br i1 %or.cond.3, label %if.end536.3, label %if.then.3, !dbg !69

if.then.3:                                        ; preds = %if.end536.2
  fence syncscope("warp") release, !dbg !129
  tail call void @llvm.mxc.barrier.warp(), !dbg !132
  fence syncscope("warp") acquire, !dbg !133
  %conv124.3 = zext nneg i32 %mul111.3 to i64
  %.idx.3 = shl nuw nsw i64 %conv124.3, 7
  %gep2055 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep2054, i64 %.idx.3, !dbg !134
  %qk_fetch.sroa.0.0.copyload2026 = load i64, ptr addrspace(4) %gep2055, align 16, !dbg !135
  %qk_fetch.sroa.22.0..sroa_idx2037 = getelementptr inbounds i8, ptr addrspace(4) %gep2055, i64 8, !dbg !135
  %qk_fetch.sroa.22.0.copyload2038 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0..sroa_idx2037, align 8, !dbg !135
  store i64 %qk_fetch.sroa.0.0.copyload2026, ptr addrspace(3) %add.ptr39, align 8, !dbg !136
  store i64 %qk_fetch.sroa.22.0.copyload2038, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !136
  %gep842.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep2055, i64 1024, !dbg !134
  %qk_fetch.sroa.0.0.copyload2027 = load i64, ptr addrspace(4) %gep842.1.3, align 16, !dbg !135
  %qk_fetch.sroa.22.0.gep842.1.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep2055, i64 1032, !dbg !135
  %qk_fetch.sroa.22.0.copyload2039 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.gep842.1.3.sroa_idx, align 8, !dbg !135
  store i64 %qk_fetch.sroa.0.0.copyload2027, ptr addrspace(3) %add.ptr39.1876, align 8, !dbg !136
  store i64 %qk_fetch.sroa.22.0.copyload2039, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !136
  fence syncscope("warp") release, !dbg !137
  tail call void @llvm.mxc.barrier.warp(), !dbg !140
  fence syncscope("warp") acquire, !dbg !141
  %k_local.sroa.0.0.copyload.3973 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !142
  %326 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3973, <4 x half> %9, <4 x float> zeroinitializer), !dbg !143
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !142
  %327 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %10, <4 x float> %326), !dbg !143
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !142
  %328 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %11, <4 x float> %327), !dbg !143
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !142
  %329 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %12, <4 x float> %328), !dbg !143
  %add224.3 = add nuw nsw i32 %mul111.3, %mul223
  %cmp227.not.3974 = icmp sgt i32 %add224.3, %1, !dbg !144
  %scores.sroa.0.0.vec.extract1524 = extractelement <4 x float> %329, i64 0
  %spec.select2058 = select i1 %cmp227.not.3974, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1524, !dbg !145
  %cmp227.not.1.3.not = icmp slt i32 %add224.3, %1, !dbg !144
  %scores.sroa.0.4.vec.extract1563 = extractelement <4 x float> %329, i64 1, !dbg !145
  %condval.0.1.3 = select i1 %cmp227.not.1.3.not, float %scores.sroa.0.4.vec.extract1563, float 0xFFF0000000000000, !dbg !145
  %add225.2.3 = or disjoint i32 %add224.3, 2, !dbg !146
  %cmp227.not.2.3 = icmp sgt i32 %add225.2.3, %1, !dbg !144
  %scores.sroa.0.8.vec.extract1600 = extractelement <4 x float> %329, i64 2, !dbg !145
  %condval.0.2.3 = select i1 %cmp227.not.2.3, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1600, !dbg !145
  %add225.3.3 = or disjoint i32 %add224.3, 3, !dbg !146
  %cmp227.not.3.3 = icmp sgt i32 %add225.3.3, %1, !dbg !144
  %scores.sroa.0.12.vec.extract1637 = extractelement <4 x float> %329, i64 3, !dbg !145
  %condval.0.3.3 = select i1 %cmp227.not.3.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1637, !dbg !145
  %330 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2058, float 0xFFF0000000000000), !dbg !147
  %331 = tail call contract noundef float @llvm.maxnum.f32(float %330, float %condval.0.1.3), !dbg !147
  %332 = tail call contract noundef float @llvm.maxnum.f32(float %331, float %condval.0.2.3), !dbg !147
  %333 = tail call contract noundef float @llvm.maxnum.f32(float %332, float %condval.0.3.3), !dbg !147
  %334 = bitcast float %333 to i32, !dbg !151
  %335 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !154
  %336 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %335) #11, !dbg !159
  %xor.i.i.3 = xor i32 %336, 32, !dbg !160
  %337 = and i32 %336, -64, !dbg !161
  %and.i.i.3 = add nsw i32 %337, 64, !dbg !161
  %cmp.not.i.i.3 = icmp slt i32 %xor.i.i.3, %and.i.i.3, !dbg !162
  %cond.i.i.3 = select i1 %cmp.not.i.i.3, i32 %xor.i.i.3, i32 %336, !dbg !163
  %shl.i.i.3 = shl i32 %cond.i.i.3, 2, !dbg !164
  %338 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.3, i32 %334), !dbg !165
  %339 = bitcast i32 %338 to float, !dbg !166
  %340 = tail call contract noundef float @llvm.maxnum.f32(float %333, float %339), !dbg !167
  %341 = bitcast float %340 to i32, !dbg !169
  %342 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !171
  %343 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %342) #11, !dbg !174
  %xor.i.i776.3 = xor i32 %343, 16, !dbg !175
  %344 = and i32 %343, -64, !dbg !176
  %and.i.i777.3 = add nsw i32 %344, 64, !dbg !176
  %cmp.not.i.i778.3 = icmp slt i32 %xor.i.i776.3, %and.i.i777.3, !dbg !177
  %cond.i.i779.3 = select i1 %cmp.not.i.i778.3, i32 %xor.i.i776.3, i32 %343, !dbg !178
  %shl.i.i780.3 = shl i32 %cond.i.i779.3, 2, !dbg !179
  %345 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i780.3, i32 %341), !dbg !180
  %346 = bitcast i32 %345 to float, !dbg !181
  %347 = tail call contract noundef float @llvm.maxnum.f32(float %340, float %346), !dbg !182
  %348 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.2.2, float %347), !dbg !184
  %sub.3 = fsub contract float %maximum.sroa.0.2.2, %348, !dbg !186
  %mul269.3 = fmul contract float %sub.3, 0x3FC7154760000000, !dbg !187
  %cmp.i.i.3 = fcmp contract olt float %mul269.3, -1.260000e+02, !dbg !188
  %cond.i.i781.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !188
  %add.i.i.3 = fadd contract float %mul269.3, %cond.i.i781.3, !dbg !188
  %349 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !188
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !188
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %349, !dbg !188
  %numerator.sroa.0.0.vec.extract1658 = extractelement <4 x float> %numerator.sroa.0.3, i64 0, !dbg !191
  %numerator.sroa.0.4.vec.extract1679 = extractelement <4 x float> %numerator.sroa.0.3, i64 1, !dbg !191
  %numerator.sroa.0.8.vec.extract1700 = extractelement <4 x float> %numerator.sroa.0.3, i64 2, !dbg !191
  %numerator.sroa.0.12.vec.extract1721 = extractelement <4 x float> %numerator.sroa.0.3, i64 3, !dbg !191
  %mul286.3985 = fmul contract float %mul.i.i.3, %numerator.sroa.0.0.vec.extract1658, !dbg !192
  %mul289.3986 = fmul contract float %mul.i.i.3, %numerator.sroa.0.4.vec.extract1679, !dbg !193
  %mul292.3987 = fmul contract float %mul.i.i.3, %numerator.sroa.0.8.vec.extract1700, !dbg !194
  %mul295.3988 = fmul contract float %mul.i.i.3, %numerator.sroa.0.12.vec.extract1721, !dbg !195
  %numerator.sroa.0.0.vec.insert1660 = insertelement <4 x float> poison, float %mul286.3985, i64 0, !dbg !196
  %numerator.sroa.0.4.vec.insert1681 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert1660, float %mul289.3986, i64 1, !dbg !196
  %numerator.sroa.0.8.vec.insert1702 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert1681, float %mul292.3987, i64 2, !dbg !196
  %numerator.sroa.0.12.vec.insert1723 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert1702, float %mul295.3988, i64 3, !dbg !196
  %numerator.sroa.58.16.vec.extract1746 = extractelement <4 x float> %numerator.sroa.58.3, i64 0, !dbg !191
  %numerator.sroa.58.20.vec.extract1767 = extractelement <4 x float> %numerator.sroa.58.3, i64 1, !dbg !191
  %numerator.sroa.58.24.vec.extract1788 = extractelement <4 x float> %numerator.sroa.58.3, i64 2, !dbg !191
  %numerator.sroa.58.28.vec.extract1809 = extractelement <4 x float> %numerator.sroa.58.3, i64 3, !dbg !191
  %mul286.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.58.16.vec.extract1746, !dbg !192
  %mul289.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.58.20.vec.extract1767, !dbg !193
  %mul292.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.58.24.vec.extract1788, !dbg !194
  %mul295.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.58.28.vec.extract1809, !dbg !195
  %numerator.sroa.58.16.vec.insert1748 = insertelement <4 x float> poison, float %mul286.1.3, i64 0, !dbg !196
  %numerator.sroa.58.20.vec.insert1769 = insertelement <4 x float> %numerator.sroa.58.16.vec.insert1748, float %mul289.1.3, i64 1, !dbg !196
  %numerator.sroa.58.24.vec.insert1790 = insertelement <4 x float> %numerator.sroa.58.20.vec.insert1769, float %mul292.1.3, i64 2, !dbg !196
  %numerator.sroa.58.28.vec.insert1811 = insertelement <4 x float> %numerator.sroa.58.24.vec.insert1790, float %mul295.1.3, i64 3, !dbg !196
  %numerator.sroa.114.32.vec.extract1834 = extractelement <4 x float> %numerator.sroa.114.3, i64 0, !dbg !191
  %numerator.sroa.114.36.vec.extract1855 = extractelement <4 x float> %numerator.sroa.114.3, i64 1, !dbg !191
  %numerator.sroa.114.40.vec.extract1876 = extractelement <4 x float> %numerator.sroa.114.3, i64 2, !dbg !191
  %numerator.sroa.114.44.vec.extract1897 = extractelement <4 x float> %numerator.sroa.114.3, i64 3, !dbg !191
  %mul286.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.114.32.vec.extract1834, !dbg !192
  %mul289.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.114.36.vec.extract1855, !dbg !193
  %mul292.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.114.40.vec.extract1876, !dbg !194
  %mul295.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.114.44.vec.extract1897, !dbg !195
  %numerator.sroa.114.32.vec.insert1836 = insertelement <4 x float> poison, float %mul286.2.3, i64 0, !dbg !196
  %numerator.sroa.114.36.vec.insert1857 = insertelement <4 x float> %numerator.sroa.114.32.vec.insert1836, float %mul289.2.3, i64 1, !dbg !196
  %numerator.sroa.114.40.vec.insert1878 = insertelement <4 x float> %numerator.sroa.114.36.vec.insert1857, float %mul292.2.3, i64 2, !dbg !196
  %numerator.sroa.114.44.vec.insert1899 = insertelement <4 x float> %numerator.sroa.114.40.vec.insert1878, float %mul295.2.3, i64 3, !dbg !196
  %numerator.sroa.170.48.vec.extract1922 = extractelement <4 x float> %numerator.sroa.170.3, i64 0, !dbg !191
  %numerator.sroa.170.52.vec.extract1943 = extractelement <4 x float> %numerator.sroa.170.3, i64 1, !dbg !191
  %numerator.sroa.170.56.vec.extract1964 = extractelement <4 x float> %numerator.sroa.170.3, i64 2, !dbg !191
  %numerator.sroa.170.60.vec.extract1985 = extractelement <4 x float> %numerator.sroa.170.3, i64 3, !dbg !191
  %mul286.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.170.48.vec.extract1922, !dbg !192
  %mul289.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.170.52.vec.extract1943, !dbg !193
  %mul292.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.170.56.vec.extract1964, !dbg !194
  %mul295.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.170.60.vec.extract1985, !dbg !195
  %numerator.sroa.170.48.vec.insert1924 = insertelement <4 x float> poison, float %mul286.3.3, i64 0, !dbg !196
  %numerator.sroa.170.52.vec.insert1945 = insertelement <4 x float> %numerator.sroa.170.48.vec.insert1924, float %mul289.3.3, i64 1, !dbg !196
  %numerator.sroa.170.56.vec.insert1966 = insertelement <4 x float> %numerator.sroa.170.52.vec.insert1945, float %mul292.3.3, i64 2, !dbg !196
  %numerator.sroa.170.60.vec.insert1987 = insertelement <4 x float> %numerator.sroa.170.56.vec.insert1966, float %mul295.3.3, i64 3, !dbg !196
  %sub319.3 = fsub contract float %spec.select2058, %348, !dbg !197
  %sub323.3 = fsub contract float %condval.0.1.3, %348, !dbg !198
  %sub327.3 = fsub contract float %condval.0.2.3, %348, !dbg !199
  %sub331.3 = fsub contract float %condval.0.3.3, %348, !dbg !200
  %mul336.3 = fmul contract float %sub319.3, 0x3FC7154760000000, !dbg !201
  %mul340.3 = fmul contract float %sub323.3, 0x3FC7154760000000, !dbg !202
  %mul344.3 = fmul contract float %sub327.3, 0x3FC7154760000000, !dbg !203
  %mul348.3 = fmul contract float %sub331.3, 0x3FC7154760000000, !dbg !204
  %add353.3 = fadd contract float %mul336.3, 8.000000e+00, !dbg !205
  %add357.3 = fadd contract float %mul340.3, 8.000000e+00, !dbg !206
  %add361.3 = fadd contract float %mul344.3, 8.000000e+00, !dbg !207
  %add365.3 = fadd contract float %mul348.3, 8.000000e+00, !dbg !208
  %cmp.i.i782.3 = fcmp contract olt float %add353.3, -1.260000e+02, !dbg !209
  %cond.i.i783.3 = select contract i1 %cmp.i.i782.3, float 6.400000e+01, float 0.000000e+00, !dbg !209
  %add.i.i784.3 = fadd contract float %add353.3, %cond.i.i783.3, !dbg !209
  %350 = tail call contract float @llvm.exp2.f32(float %add.i.i784.3), !dbg !209
  %cond2.i.i785.3 = select contract i1 %cmp.i.i782.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !209
  %mul.i.i786.3 = fmul contract float %cond2.i.i785.3, %350, !dbg !209
  %cmp.i.i787.3 = fcmp contract olt float %add357.3, -1.260000e+02, !dbg !211
  %cond.i.i788.3 = select contract i1 %cmp.i.i787.3, float 6.400000e+01, float 0.000000e+00, !dbg !211
  %add.i.i789.3 = fadd contract float %add357.3, %cond.i.i788.3, !dbg !211
  %351 = tail call contract float @llvm.exp2.f32(float %add.i.i789.3), !dbg !211
  %cond2.i.i790.3 = select contract i1 %cmp.i.i787.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !211
  %mul.i.i791.3 = fmul contract float %cond2.i.i790.3, %351, !dbg !211
  %cmp.i.i792.3 = fcmp contract olt float %add361.3, -1.260000e+02, !dbg !213
  %cond.i.i793.3 = select contract i1 %cmp.i.i792.3, float 6.400000e+01, float 0.000000e+00, !dbg !213
  %add.i.i794.3 = fadd contract float %add361.3, %cond.i.i793.3, !dbg !213
  %352 = tail call contract float @llvm.exp2.f32(float %add.i.i794.3), !dbg !213
  %cond2.i.i795.3 = select contract i1 %cmp.i.i792.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !213
  %mul.i.i796.3 = fmul contract float %cond2.i.i795.3, %352, !dbg !213
  %cmp.i.i797.3 = fcmp contract olt float %add365.3, -1.260000e+02, !dbg !215
  %cond.i.i798.3 = select contract i1 %cmp.i.i797.3, float 6.400000e+01, float 0.000000e+00, !dbg !215
  %add.i.i799.3 = fadd contract float %add365.3, %cond.i.i798.3, !dbg !215
  %353 = tail call contract float @llvm.exp2.f32(float %add.i.i799.3), !dbg !215
  %cond2.i.i800.3 = select contract i1 %cmp.i.i797.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !215
  %mul.i.i801.3 = fmul contract float %cond2.i.i800.3, %353, !dbg !215
  %354 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !217
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !217, !noalias !221
  %355 = fptrunc float %mul.i.i786.3 to half, !dbg !217
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %354), !dbg !217, !noalias !221
  %356 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !221
  %357 = fptrunc float %mul.i.i791.3 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %356), !dbg !226, !noalias !221
  %358 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !228
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !228, !noalias !232
  %359 = fptrunc float %mul.i.i796.3 to half, !dbg !228
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %358), !dbg !228, !noalias !232
  %360 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !232
  %361 = fptrunc float %mul.i.i801.3 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %360), !dbg !237, !noalias !232
  %362 = insertelement <4 x half> poison, half %355, i64 0, !dbg !239
  %363 = insertelement <4 x half> %362, half %357, i64 1, !dbg !239
  %364 = insertelement <4 x half> %363, half %359, i64 2, !dbg !239
  %365 = insertelement <4 x half> %364, half %361, i64 3, !dbg !239
  %conv.i.i.3990 = fpext half %355 to float, !dbg !240
  %add399.3991 = fadd contract float %conv.i.i.3990, 0.000000e+00, !dbg !245
  %conv.i.i.1.3 = fpext half %357 to float, !dbg !240
  %add399.1.3 = fadd contract float %add399.3991, %conv.i.i.1.3, !dbg !245
  %conv.i.i.2.3 = fpext half %359 to float, !dbg !240
  %add399.2.3 = fadd contract float %add399.1.3, %conv.i.i.2.3, !dbg !245
  %conv.i.i.3.3 = fpext half %361 to float, !dbg !240
  %add399.3.3 = fadd contract float %add399.2.3, %conv.i.i.3.3, !dbg !245
  %366 = bitcast float %add399.3.3 to i32, !dbg !246
  %367 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !248
  %368 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %367) #11, !dbg !251
  %xor.i.i807.3 = xor i32 %368, 32, !dbg !252
  %369 = and i32 %368, -64, !dbg !253
  %and.i.i808.3 = add nsw i32 %369, 64, !dbg !253
  %cmp.not.i.i809.3 = icmp slt i32 %xor.i.i807.3, %and.i.i808.3, !dbg !254
  %cond.i.i810.3 = select i1 %cmp.not.i.i809.3, i32 %xor.i.i807.3, i32 %368, !dbg !255
  %shl.i.i811.3 = shl i32 %cond.i.i810.3, 2, !dbg !256
  %370 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i811.3, i32 %366), !dbg !257
  %371 = bitcast i32 %370 to float, !dbg !258
  %add407.3 = fadd contract float %add399.3.3, %371, !dbg !259
  %372 = bitcast float %add407.3 to i32, !dbg !260
  %373 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !262
  %374 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %373) #11, !dbg !265
  %xor.i.i812.3 = xor i32 %374, 16, !dbg !266
  %375 = and i32 %374, -64, !dbg !267
  %and.i.i813.3 = add nsw i32 %375, 64, !dbg !267
  %cmp.not.i.i814.3 = icmp slt i32 %xor.i.i812.3, %and.i.i813.3, !dbg !268
  %cond.i.i815.3 = select i1 %cmp.not.i.i814.3, i32 %xor.i.i812.3, i32 %374, !dbg !269
  %shl.i.i816.3 = shl i32 %cond.i.i815.3, 2, !dbg !270
  %376 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i816.3, i32 %372), !dbg !271
  %377 = bitcast i32 %376 to float, !dbg !272
  %add412.3 = fadd contract float %add407.3, %377, !dbg !273
  fence syncscope("warp") release, !dbg !274
  tail call void @llvm.mxc.barrier.warp(), !dbg !277
  fence syncscope("warp") acquire, !dbg !278
  %378 = getelementptr inbounds i8, ptr addrspace(4) %47, i64 %.idx.3, !dbg !279
  %379 = load i64, ptr addrspace(4) %378, align 8, !dbg !280
  %add.ptr441.1.3 = getelementptr inbounds i8, ptr addrspace(4) %378, i64 128, !dbg !279
  %380 = load i64, ptr addrspace(4) %add.ptr441.1.3, align 8, !dbg !280
  %add.ptr441.2.3 = getelementptr inbounds i8, ptr addrspace(4) %378, i64 256, !dbg !279
  %381 = load i64, ptr addrspace(4) %add.ptr441.2.3, align 8, !dbg !280
  %add.ptr441.3.3 = getelementptr inbounds i8, ptr addrspace(4) %378, i64 384, !dbg !279
  %382 = load i64, ptr addrspace(4) %add.ptr441.3.3, align 8, !dbg !280
  %mul306.3 = fmul contract float %denominator.sroa.0.2.2, %mul.i.i.3, !dbg !281
  %v_column.sroa.66.0.insert.ext1279 = shl i64 %382, 48, !dbg !282
  %v_column.sroa.50.0.insert.ext1204 = shl i64 %381, 32, !dbg !282
  %v_column.sroa.50.0.insert.shift1205 = and i64 %v_column.sroa.50.0.insert.ext1204, 281470681743360, !dbg !282
  %v_column.sroa.50.0.insert.insert1207 = or disjoint i64 %v_column.sroa.66.0.insert.ext1279, %v_column.sroa.50.0.insert.shift1205, !dbg !282
  %v_column.sroa.34.0.insert.ext1129 = shl i64 %380, 16, !dbg !282
  %v_column.sroa.34.0.insert.shift1130 = and i64 %v_column.sroa.34.0.insert.ext1129, 4294901760, !dbg !282
  %v_column.sroa.34.0.insert.insert1132 = or disjoint i64 %v_column.sroa.50.0.insert.insert1207, %v_column.sroa.34.0.insert.shift1130, !dbg !282
  %v_column.sroa.0.0.insert.ext1058 = and i64 %379, 65535, !dbg !282
  %v_column.sroa.0.0.insert.insert1060 = or disjoint i64 %v_column.sroa.34.0.insert.insert1132, %v_column.sroa.0.0.insert.ext1058, !dbg !282
  store i64 %v_column.sroa.0.0.insert.insert1060, ptr addrspace(3) %add.ptr483.31000, align 8, !dbg !282
  %v_fetch.sroa.0.2.extract.shift1339 = lshr i64 %379, 16, !dbg !283
  %383 = shl i64 %382, 32, !dbg !282
  %v_column.sroa.66.0.insert.ext1284 = and i64 %383, -281474976710656, !dbg !282
  %384 = shl i64 %381, 16, !dbg !282
  %v_column.sroa.50.0.insert.shift1210 = and i64 %384, 281470681743360, !dbg !282
  %v_column.sroa.50.0.insert.insert1212 = or disjoint i64 %v_column.sroa.66.0.insert.ext1284, %v_column.sroa.50.0.insert.shift1210, !dbg !282
  %v_column.sroa.34.0.insert.ext1134 = and i64 %380, 4294901760, !dbg !282
  %v_column.sroa.34.0.insert.insert1137 = or disjoint i64 %v_column.sroa.50.0.insert.insert1212, %v_column.sroa.34.0.insert.ext1134, !dbg !282
  %v_column.sroa.0.0.insert.ext1062 = and i64 %v_fetch.sroa.0.2.extract.shift1339, 65535, !dbg !282
  %v_column.sroa.0.0.insert.insert1064 = or disjoint i64 %v_column.sroa.34.0.insert.insert1137, %v_column.sroa.0.0.insert.ext1062, !dbg !282
  store i64 %v_column.sroa.0.0.insert.insert1064, ptr addrspace(3) %add.ptr483.1.3, align 8, !dbg !282
  %v_fetch.sroa.0.4.extract.shift1348 = lshr i64 %379, 32, !dbg !283
  %385 = shl i64 %382, 16, !dbg !282
  %v_column.sroa.66.0.insert.ext1289 = and i64 %385, -281474976710656, !dbg !282
  %v_column.sroa.50.0.insert.ext1214 = and i64 %381, 281470681743360, !dbg !282
  %v_column.sroa.50.0.insert.insert1217 = or disjoint i64 %v_column.sroa.66.0.insert.ext1289, %v_column.sroa.50.0.insert.ext1214, !dbg !282
  %386 = lshr i64 %380, 16, !dbg !282
  %v_column.sroa.34.0.insert.shift1140 = and i64 %386, 4294901760, !dbg !282
  %v_column.sroa.34.0.insert.insert1142 = or disjoint i64 %v_column.sroa.50.0.insert.insert1217, %v_column.sroa.34.0.insert.shift1140, !dbg !282
  %v_column.sroa.0.0.insert.ext1066 = and i64 %v_fetch.sroa.0.4.extract.shift1348, 65535, !dbg !282
  %v_column.sroa.0.0.insert.insert1068 = or disjoint i64 %v_column.sroa.34.0.insert.insert1142, %v_column.sroa.0.0.insert.ext1066, !dbg !282
  store i64 %v_column.sroa.0.0.insert.insert1068, ptr addrspace(3) %add.ptr483.2.3, align 8, !dbg !282
  %v_fetch.sroa.0.6.extract.shift1357 = lshr i64 %379, 48, !dbg !283
  %v_fetch.sroa.62.30.extract.shift1456 = and i64 %382, -281474976710656, !dbg !282
  %387 = lshr i64 %381, 16, !dbg !282
  %v_column.sroa.50.0.insert.shift1220 = and i64 %387, 281470681743360, !dbg !282
  %v_column.sroa.50.0.insert.insert1222 = or disjoint i64 %v_fetch.sroa.62.30.extract.shift1456, %v_column.sroa.50.0.insert.shift1220, !dbg !282
  %388 = lshr i64 %380, 32, !dbg !282
  %v_column.sroa.34.0.insert.shift1145 = and i64 %388, 4294901760, !dbg !282
  %v_column.sroa.34.0.insert.insert1147 = or disjoint i64 %v_column.sroa.50.0.insert.insert1222, %v_column.sroa.34.0.insert.shift1145, !dbg !282
  %v_column.sroa.0.0.insert.insert1072 = or disjoint i64 %v_column.sroa.34.0.insert.insert1147, %v_fetch.sroa.0.6.extract.shift1357, !dbg !282
  store i64 %v_column.sroa.0.0.insert.insert1072, ptr addrspace(3) %add.ptr483.3.3, align 8, !dbg !282
  fence syncscope("warp") release, !dbg !284
  tail call void @llvm.mxc.barrier.warp(), !dbg !287
  fence syncscope("warp") acquire, !dbg !288
  %389 = load <4 x half>, ptr addrspace(3) %add.ptr510.31004, align 8, !dbg !289
  %390 = load <4 x half>, ptr addrspace(3) %add.ptr510.1.3, align 8, !dbg !289
  %391 = load <4 x half>, ptr addrspace(3) %add.ptr510.2.3, align 8, !dbg !289
  %392 = load <4 x half>, ptr addrspace(3) %add.ptr510.3.3, align 8, !dbg !289
  %393 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %389, <4 x half> %365, <4 x float> %numerator.sroa.0.12.vec.insert1723), !dbg !290
  %394 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %390, <4 x half> %365, <4 x float> %numerator.sroa.58.28.vec.insert1811), !dbg !290
  %395 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %391, <4 x half> %365, <4 x float> %numerator.sroa.114.44.vec.insert1899), !dbg !290
  %396 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %392, <4 x half> %365, <4 x float> %numerator.sroa.170.60.vec.insert1987), !dbg !290
  %add416.3 = fadd contract float %mul306.3, %add412.3, !dbg !291
  br label %if.end536.3, !dbg !292

if.end536.3:                                      ; preds = %if.then.3, %if.end536.2
  %numerator.sroa.170.4 = phi <4 x float> [ %numerator.sroa.170.3, %if.end536.2 ], [ %396, %if.then.3 ], !dbg !293
  %numerator.sroa.114.4 = phi <4 x float> [ %numerator.sroa.114.3, %if.end536.2 ], [ %395, %if.then.3 ], !dbg !293
  %numerator.sroa.58.4 = phi <4 x float> [ %numerator.sroa.58.3, %if.end536.2 ], [ %394, %if.then.3 ], !dbg !293
  %numerator.sroa.0.4 = phi <4 x float> [ %numerator.sroa.0.3, %if.end536.2 ], [ %393, %if.then.3 ], !dbg !293
  %maximum.sroa.0.2.3 = phi float [ %maximum.sroa.0.2.2, %if.end536.2 ], [ %348, %if.then.3 ], !dbg !293
  %denominator.sroa.0.2.3 = phi float [ %denominator.sroa.0.2.2, %if.end536.2 ], [ %add416.3, %if.then.3 ], !dbg !293
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !295
  %cmp95 = icmp eq i64 %indvars.iv, 0, !dbg !296
  br i1 %cmp95, label %for.cond98.preheader, label %for.cond543.preheader, !dbg !64, !llvm.loop !297
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v066_codex_power_s8_quad_loop_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v066_codex_power_s8_quad_loop_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!65 = !DILocation(line: 44, column: 37, scope: !40)
!66 = !DILocation(line: 51, column: 26, scope: !40)
!67 = !DILocation(line: 51, column: 132, scope: !40)
!68 = !DILocation(line: 52, column: 14, scope: !40)
!69 = !DILocation(line: 52, column: 30, scope: !40)
!70 = !DILocation(line: 175, column: 21, scope: !40)
!71 = !DILocation(line: 177, column: 22, scope: !40)
!72 = !DILocation(line: 178, column: 22, scope: !40)
!73 = !DILocation(line: 179, column: 22, scope: !40)
!74 = !DILocation(line: 180, column: 22, scope: !40)
!75 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !76)
!76 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !77)
!77 = distinct !DILocation(line: 183, column: 3, scope: !40)
!78 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !76)
!79 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !76)
!80 = !DILocation(line: 1007, column: 10, scope: !81, inlinedAt: !83)
!81 = distinct !DISubprogram(name: "__float2half_rn", scope: !82, file: !82, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!82 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!83 = distinct !DILocation(line: 1077, column: 18, scope: !84, inlinedAt: !85)
!84 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !82, file: !82, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!85 = distinct !DILocation(line: 1295, column: 23, scope: !86, inlinedAt: !87)
!86 = distinct !DISubprogram(name: "__float22half2_rn", scope: !82, file: !82, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!87 = distinct !DILocation(line: 188, column: 27, scope: !40)
!88 = !{!89, !91}
!89 = distinct !{!89, !90, !"_ZL17__floats2half2_rnff: %agg.result"}
!90 = distinct !{!90, !"_ZL17__floats2half2_rnff"}
!91 = distinct !{!91, !92, !"_ZL17__float22half2_rn6float2: %agg.result"}
!92 = distinct !{!92, !"_ZL17__float22half2_rn6float2"}
!93 = !DILocation(line: 1007, column: 10, scope: !81, inlinedAt: !94)
!94 = distinct !DILocation(line: 1077, column: 38, scope: !84, inlinedAt: !85)
!95 = !DILocation(line: 596, column: 67, scope: !96, inlinedAt: !97)
!96 = distinct !DISubprogram(name: "__half2", scope: !82, file: !82, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!97 = distinct !DILocation(line: 1077, column: 10, scope: !84, inlinedAt: !85)
!98 = !DILocation(line: 596, column: 73, scope: !96, inlinedAt: !97)
!99 = !DILocation(line: 1007, column: 10, scope: !81, inlinedAt: !100)
!100 = distinct !DILocation(line: 1077, column: 18, scope: !84, inlinedAt: !101)
!101 = distinct !DILocation(line: 1295, column: 23, scope: !86, inlinedAt: !102)
!102 = distinct !DILocation(line: 189, column: 27, scope: !40)
!103 = !{!104, !106}
!104 = distinct !{!104, !105, !"_ZL17__floats2half2_rnff: %agg.result"}
!105 = distinct !{!105, !"_ZL17__floats2half2_rnff"}
!106 = distinct !{!106, !107, !"_ZL17__float22half2_rn6float2: %agg.result"}
!107 = distinct !{!107, !"_ZL17__float22half2_rn6float2"}
!108 = !DILocation(line: 1007, column: 10, scope: !81, inlinedAt: !109)
!109 = distinct !DILocation(line: 1077, column: 38, scope: !84, inlinedAt: !101)
!110 = !DILocation(line: 596, column: 67, scope: !96, inlinedAt: !111)
!111 = distinct !DILocation(line: 1077, column: 10, scope: !84, inlinedAt: !101)
!112 = !DILocation(line: 596, column: 73, scope: !96, inlinedAt: !111)
!113 = !DILocation(line: 190, column: 38, scope: !40)
!114 = !DILocation(line: 191, column: 141, scope: !40)
!115 = !DILocation(line: 191, column: 22, scope: !40)
!116 = !DILocation(line: 191, column: 184, scope: !40)
!117 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !118)
!118 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !119)
!119 = distinct !DILocation(line: 193, column: 3, scope: !40)
!120 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !118)
!121 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !118)
!122 = !DILocation(line: 195, column: 8, scope: !40)
!123 = !DILocation(line: 196, column: 22, scope: !40)
!124 = !DILocation(line: 196, column: 134, scope: !40)
!125 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!126 = !{i32 2, i32 -1, i32 -1, i32 -1}
!127 = !DILocation(line: 196, column: 153, scope: !40)
!128 = !DILocation(line: 198, column: 1, scope: !40)
!129 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !130)
!130 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !131)
!131 = distinct !DILocation(line: 53, column: 9, scope: !40)
!132 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !130)
!133 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !130)
!134 = !DILocation(line: 56, column: 49, scope: !40)
!135 = !DILocation(line: 56, column: 35, scope: !40)
!136 = !DILocation(line: 59, column: 215, scope: !40)
!137 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !138)
!138 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !139)
!139 = distinct !DILocation(line: 62, column: 9, scope: !40)
!140 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !138)
!141 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !138)
!142 = !DILocation(line: 67, column: 34, scope: !40)
!143 = !DILocation(line: 69, column: 37, scope: !40)
!144 = !DILocation(line: 77, column: 76, scope: !40)
!145 = !DILocation(line: 77, column: 15, scope: !40)
!146 = !DILocation(line: 77, column: 65, scope: !40)
!147 = !DILocation(line: 351, column: 10, scope: !148, inlinedAt: !150)
!148 = distinct !DISubprogram(name: "max", scope: !149, file: !149, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!149 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!150 = distinct !DILocation(line: 87, column: 30, scope: !40)
!151 = !DILocation(line: 1018, column: 9, scope: !152, inlinedAt: !153)
!152 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!153 = distinct !DILocation(line: 89, column: 50, scope: !40)
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
!168 = distinct !DILocation(line: 89, column: 28, scope: !40)
!169 = !DILocation(line: 1018, column: 9, scope: !152, inlinedAt: !170)
!170 = distinct !DILocation(line: 90, column: 50, scope: !40)
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
!183 = distinct !DILocation(line: 90, column: 28, scope: !40)
!184 = !DILocation(line: 351, column: 10, scope: !148, inlinedAt: !185)
!185 = distinct !DILocation(line: 91, column: 26, scope: !40)
!186 = !DILocation(line: 92, column: 41, scope: !40)
!187 = !DILocation(line: 92, column: 59, scope: !40)
!188 = !DILocation(line: 285, column: 49, scope: !189, inlinedAt: !190)
!189 = distinct !DISubprogram(name: "exp2f", scope: !149, file: !149, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!190 = distinct !DILocation(line: 92, column: 22, scope: !40)
!191 = !DILocation(line: 96, column: 25, scope: !40)
!192 = !DILocation(line: 98, column: 26, scope: !40)
!193 = !DILocation(line: 99, column: 26, scope: !40)
!194 = !DILocation(line: 100, column: 26, scope: !40)
!195 = !DILocation(line: 101, column: 26, scope: !40)
!196 = !DILocation(line: 102, column: 49, scope: !40)
!197 = !DILocation(line: 115, column: 30, scope: !40)
!198 = !DILocation(line: 116, column: 30, scope: !40)
!199 = !DILocation(line: 117, column: 30, scope: !40)
!200 = !DILocation(line: 118, column: 30, scope: !40)
!201 = !DILocation(line: 120, column: 27, scope: !40)
!202 = !DILocation(line: 121, column: 27, scope: !40)
!203 = !DILocation(line: 122, column: 27, scope: !40)
!204 = !DILocation(line: 123, column: 27, scope: !40)
!205 = !DILocation(line: 125, column: 25, scope: !40)
!206 = !DILocation(line: 126, column: 25, scope: !40)
!207 = !DILocation(line: 127, column: 25, scope: !40)
!208 = !DILocation(line: 128, column: 25, scope: !40)
!209 = !DILocation(line: 285, column: 49, scope: !189, inlinedAt: !210)
!210 = distinct !DILocation(line: 129, column: 17, scope: !40)
!211 = !DILocation(line: 285, column: 49, scope: !189, inlinedAt: !212)
!212 = distinct !DILocation(line: 130, column: 17, scope: !40)
!213 = !DILocation(line: 285, column: 49, scope: !189, inlinedAt: !214)
!214 = distinct !DILocation(line: 131, column: 17, scope: !40)
!215 = !DILocation(line: 285, column: 49, scope: !189, inlinedAt: !216)
!216 = distinct !DILocation(line: 132, column: 17, scope: !40)
!217 = !DILocation(line: 1007, column: 10, scope: !81, inlinedAt: !218)
!218 = distinct !DILocation(line: 1077, column: 18, scope: !84, inlinedAt: !219)
!219 = distinct !DILocation(line: 1295, column: 23, scope: !86, inlinedAt: !220)
!220 = distinct !DILocation(line: 133, column: 31, scope: !40)
!221 = !{!222, !224}
!222 = distinct !{!222, !223, !"_ZL17__floats2half2_rnff: %agg.result"}
!223 = distinct !{!223, !"_ZL17__floats2half2_rnff"}
!224 = distinct !{!224, !225, !"_ZL17__float22half2_rn6float2: %agg.result"}
!225 = distinct !{!225, !"_ZL17__float22half2_rn6float2"}
!226 = !DILocation(line: 1007, column: 10, scope: !81, inlinedAt: !227)
!227 = distinct !DILocation(line: 1077, column: 38, scope: !84, inlinedAt: !219)
!228 = !DILocation(line: 1007, column: 10, scope: !81, inlinedAt: !229)
!229 = distinct !DILocation(line: 1077, column: 18, scope: !84, inlinedAt: !230)
!230 = distinct !DILocation(line: 1295, column: 23, scope: !86, inlinedAt: !231)
!231 = distinct !DILocation(line: 134, column: 31, scope: !40)
!232 = !{!233, !235}
!233 = distinct !{!233, !234, !"_ZL17__floats2half2_rnff: %agg.result"}
!234 = distinct !{!234, !"_ZL17__floats2half2_rnff"}
!235 = distinct !{!235, !236, !"_ZL17__float22half2_rn6float2: %agg.result"}
!236 = distinct !{!236, !"_ZL17__float22half2_rn6float2"}
!237 = !DILocation(line: 1007, column: 10, scope: !81, inlinedAt: !238)
!238 = distinct !DILocation(line: 1077, column: 38, scope: !84, inlinedAt: !230)
!239 = !DILocation(line: 135, column: 38, scope: !40)
!240 = !DILocation(line: 1082, column: 16, scope: !241, inlinedAt: !242)
!241 = distinct !DISubprogram(name: "__half2float", scope: !82, file: !82, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!242 = distinct !DILocation(line: 136, column: 55, scope: !243, inlinedAt: !244)
!243 = distinct !DISubprogram(name: "operator float", scope: !82, file: !82, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!244 = distinct !DILocation(line: 139, column: 54, scope: !40)
!245 = !DILocation(line: 139, column: 44, scope: !40)
!246 = !DILocation(line: 1018, column: 9, scope: !152, inlinedAt: !247)
!247 = distinct !DILocation(line: 141, column: 44, scope: !40)
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
!259 = !DILocation(line: 141, column: 42, scope: !40)
!260 = !DILocation(line: 1018, column: 9, scope: !152, inlinedAt: !261)
!261 = distinct !DILocation(line: 142, column: 44, scope: !40)
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
!273 = !DILocation(line: 142, column: 42, scope: !40)
!274 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !275)
!275 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !276)
!276 = distinct !DILocation(line: 144, column: 9, scope: !40)
!277 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !275)
!278 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !275)
!279 = !DILocation(line: 147, column: 56, scope: !40)
!280 = !DILocation(line: 147, column: 42, scope: !40)
!281 = !DILocation(line: 104, column: 42, scope: !40)
!282 = !DILocation(line: 154, column: 161, scope: !40)
!283 = !DILocation(line: 152, column: 29, scope: !40)
!284 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !285)
!285 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !286)
!286 = distinct !DILocation(line: 156, column: 9, scope: !40)
!287 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !285)
!288 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !285)
!289 = !DILocation(line: 159, column: 48, scope: !40)
!290 = !DILocation(line: 164, column: 46, scope: !40)
!291 = !DILocation(line: 143, column: 42, scope: !40)
!292 = !DILocation(line: 50, column: 50, scope: !40)
!293 = !DILocation(line: 0, scope: !40)
!294 = !DILocation(line: 51, column: 115, scope: !40)
!295 = !DILocation(line: 48, column: 52, scope: !40)
!296 = !DILocation(line: 48, column: 47, scope: !40)
!297 = distinct !{!297, !64, !298, !32}
!298 = !DILocation(line: 171, column: 3, scope: !40)
