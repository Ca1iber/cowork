; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v068_codex_power_s8_final_den_reduce_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v068_codex_power_s8_final_den_reduce_sc-16g-2/codegen/case12.device.cpp"
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
  %mul408 = shl nuw nsw i64 %conv, 16
  %14 = shl nuw nsw i32 %2, 4
  %15 = and i32 %14, 16128
  %mul412 = zext nneg i32 %15 to i64
  %add413 = or disjoint i64 %mul408, %mul412
  %16 = shl nuw nsw i32 %2, 2
  %17 = and i32 %16, 60
  %mul423 = zext nneg i32 %17 to i64
  %add416 = or disjoint i64 %add413, %mul423
  %mul455 = and i32 %14, 240
  %shr461 = and i32 %13, 3
  %xor462 = xor i32 %shr461, %and60
  %and476 = shl nuw nsw i32 %2, 8
  %mul477 = and i32 %and476, 768
  %mul483 = and i32 %16, 48
  %and489 = and i32 %2, 3
  %18 = xor i32 %and60, %and489
  %19 = zext nneg i32 %add102 to i64, !dbg !64
  %arrayidx104 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %19, !dbg !65
  %20 = load i32, ptr addrspace(1) %arrayidx104, align 4, !dbg !65, !tbaa !30
  %mul105 = shl nsw i32 %20, 4, !dbg !66
  %cmp106 = icmp slt i32 %20, 0, !dbg !67
  %cmp108.not = icmp sgt i32 %mul105, %1
  %or.cond = select i1 %cmp106, i1 true, i1 %cmp108.not, !dbg !68
  br i1 %or.cond, label %if.end520, label %if.then, !dbg !68

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
  %xor.i.i770 = xor i32 %32, 32, !dbg !101
  %33 = and i32 %32, -64, !dbg !102
  %and.i.i771 = add nsw i32 %33, 64, !dbg !102
  %cmp.not.i.i772 = icmp slt i32 %xor.i.i770, %and.i.i771, !dbg !103
  %cond.i.i773 = select i1 %cmp.not.i.i772, i32 %xor.i.i770, i32 %32, !dbg !104
  %shl.i.i774 = shl i32 %cond.i.i773, 2, !dbg !105
  %34 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i774, i32 %30), !dbg !106
  %35 = bitcast i32 %34 to float, !dbg !107
  %36 = tail call contract noundef float @llvm.maxnum.f32(float %29, float %35), !dbg !108
  %37 = bitcast float %36 to i32, !dbg !110
  %38 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !112
  %39 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %38) #11, !dbg !115
  %xor.i.i775 = xor i32 %39, 16, !dbg !116
  %40 = and i32 %39, -64, !dbg !117
  %and.i.i776 = add nsw i32 %40, 64, !dbg !117
  %cmp.not.i.i777 = icmp slt i32 %xor.i.i775, %and.i.i776, !dbg !118
  %cond.i.i778 = select i1 %cmp.not.i.i777, i32 %xor.i.i775, i32 %39, !dbg !119
  %shl.i.i779 = shl i32 %cond.i.i778, 2, !dbg !120
  %41 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i779, i32 %37), !dbg !121
  %42 = bitcast i32 %41 to float, !dbg !122
  %43 = tail call contract noundef float @llvm.maxnum.f32(float %36, float %42), !dbg !123
  %44 = tail call contract noundef float @llvm.maxnum.f32(float %43, float 0xFFF0000000000000), !dbg !125
  %sub = fsub contract float 0xFFF0000000000000, %44, !dbg !127
  %mul263 = fmul contract float %sub, 0x3FC7154760000000, !dbg !128
  %cmp.i.i = fcmp contract olt float %mul263, -1.260000e+02, !dbg !129
  %cond.i.i780 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i = fadd contract float %mul263, %cond.i.i780, !dbg !129
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
  %cmp.i.i781 = fcmp contract olt float %add347, -1.260000e+02, !dbg !146
  %cond.i.i782 = select contract i1 %cmp.i.i781, float 6.400000e+01, float 0.000000e+00, !dbg !146
  %add.i.i783 = fadd contract float %add347, %cond.i.i782, !dbg !146
  %46 = tail call contract float @llvm.exp2.f32(float %add.i.i783), !dbg !146
  %cond2.i.i784 = select contract i1 %cmp.i.i781, float 0x3BF0000000000000, float 1.000000e+00, !dbg !146
  %mul.i.i785 = fmul contract float %cond2.i.i784, %46, !dbg !146
  %cmp.i.i786 = fcmp contract olt float %add351, -1.260000e+02, !dbg !148
  %cond.i.i787 = select contract i1 %cmp.i.i786, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i788 = fadd contract float %add351, %cond.i.i787, !dbg !148
  %47 = tail call contract float @llvm.exp2.f32(float %add.i.i788), !dbg !148
  %cond2.i.i789 = select contract i1 %cmp.i.i786, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i790 = fmul contract float %cond2.i.i789, %47, !dbg !148
  %cmp.i.i791 = fcmp contract olt float %add355, -1.260000e+02, !dbg !150
  %cond.i.i792 = select contract i1 %cmp.i.i791, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i793 = fadd contract float %add355, %cond.i.i792, !dbg !150
  %48 = tail call contract float @llvm.exp2.f32(float %add.i.i793), !dbg !150
  %cond2.i.i794 = select contract i1 %cmp.i.i791, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i795 = fmul contract float %cond2.i.i794, %48, !dbg !150
  %cmp.i.i796 = fcmp contract olt float %add359, -1.260000e+02, !dbg !152
  %cond.i.i797 = select contract i1 %cmp.i.i796, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i798 = fadd contract float %add359, %cond.i.i797, !dbg !152
  %49 = tail call contract float @llvm.exp2.f32(float %add.i.i798), !dbg !152
  %cond2.i.i799 = select contract i1 %cmp.i.i796, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i800 = fmul contract float %cond2.i.i799, %49, !dbg !152
  %50 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !154, !noalias !162
  %51 = fptrunc float %mul.i.i785 to half, !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %50), !dbg !154, !noalias !162
  %52 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !167, !noalias !162
  %53 = fptrunc float %mul.i.i790 to half, !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %52), !dbg !167, !noalias !162
  %54 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !173
  %55 = fptrunc float %mul.i.i795 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %54), !dbg !169, !noalias !173
  %56 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !173
  %57 = fptrunc float %mul.i.i800 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %56), !dbg !178, !noalias !173
  %58 = insertelement <4 x half> poison, half %51, i64 0, !dbg !180
  %59 = insertelement <4 x half> %58, half %53, i64 1, !dbg !180
  %60 = insertelement <4 x half> %59, half %55, i64 2, !dbg !180
  %61 = insertelement <4 x half> %60, half %57, i64 3, !dbg !180
  %conv.i.i = fpext half %51 to float, !dbg !181
  %conv.i.i.1 = fpext half %53 to float, !dbg !181
  %conv.i.i.2 = fpext half %55 to float, !dbg !181
  %conv.i.i.3 = fpext half %57 to float, !dbg !181
  fence syncscope("warp") release, !dbg !186
  tail call void @llvm.mxc.barrier.warp(), !dbg !189
  fence syncscope("warp") acquire, !dbg !190
  %62 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !191
  %63 = getelementptr inbounds i8, ptr addrspace(4) %62, i64 %.idx, !dbg !191
  %64 = load i64, ptr addrspace(4) %63, align 8, !dbg !192
  %add.ptr425.1 = getelementptr inbounds i8, ptr addrspace(4) %63, i64 128, !dbg !191
  %65 = load i64, ptr addrspace(4) %add.ptr425.1, align 8, !dbg !192
  %add.ptr425.2 = getelementptr inbounds i8, ptr addrspace(4) %63, i64 256, !dbg !191
  %66 = load i64, ptr addrspace(4) %add.ptr425.2, align 8, !dbg !192
  %add.ptr425.3 = getelementptr inbounds i8, ptr addrspace(4) %63, i64 384, !dbg !191
  %67 = load i64, ptr addrspace(4) %add.ptr425.3, align 8, !dbg !192
  %add393 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !193
  %add393.1 = fadd contract float %add393, %conv.i.i.1, !dbg !193
  %add393.2 = fadd contract float %add393.1, %conv.i.i.2, !dbg !193
  %add393.3 = fadd contract float %add393.2, %conv.i.i.3, !dbg !193
  %68 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul455, !dbg !194
  %add.ptr467.idx = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467 = getelementptr inbounds i8, ptr addrspace(3) %68, i32 %add.ptr467.idx, !dbg !194
  %v_column.sroa.130.0.insert.ext = shl i64 %67, 48, !dbg !195
  %v_column.sroa.98.0.insert.ext = shl i64 %66, 32, !dbg !195
  %v_column.sroa.98.0.insert.shift = and i64 %v_column.sroa.98.0.insert.ext, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert = or disjoint i64 %v_column.sroa.130.0.insert.ext, %v_column.sroa.98.0.insert.shift, !dbg !195
  %v_column.sroa.66.0.insert.ext = shl i64 %65, 16, !dbg !195
  %v_column.sroa.66.0.insert.shift = and i64 %v_column.sroa.66.0.insert.ext, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert = or disjoint i64 %v_column.sroa.98.0.insert.insert, %v_column.sroa.66.0.insert.shift, !dbg !195
  %v_column.sroa.0.0.insert.ext = and i64 %64, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert = or disjoint i64 %v_column.sroa.66.0.insert.insert, %v_column.sroa.0.0.insert.ext, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr467, align 8, !dbg !195
  %v_fetch.sroa.0.2.extract.shift = lshr i64 %64, 16, !dbg !196
  %add456.1 = or disjoint i32 %mul455, 256, !dbg !197
  %69 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.1, !dbg !194
  %xor463.1 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.1 = xor i32 %xor463.1, 8, !dbg !194
  %add.ptr467.1 = getelementptr inbounds i8, ptr addrspace(3) %69, i32 %add.ptr467.idx.1, !dbg !194
  %70 = shl i64 %67, 32, !dbg !195
  %v_column.sroa.130.0.insert.ext1429 = and i64 %70, -281474976710656, !dbg !195
  %71 = shl i64 %66, 16, !dbg !195
  %v_column.sroa.98.0.insert.shift1275 = and i64 %71, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1277 = or disjoint i64 %v_column.sroa.130.0.insert.ext1429, %v_column.sroa.98.0.insert.shift1275, !dbg !195
  %v_column.sroa.66.0.insert.ext1119 = and i64 %65, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1122 = or disjoint i64 %v_column.sroa.98.0.insert.insert1277, %v_column.sroa.66.0.insert.ext1119, !dbg !195
  %v_column.sroa.0.0.insert.ext995 = and i64 %v_fetch.sroa.0.2.extract.shift, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert997 = or disjoint i64 %v_column.sroa.66.0.insert.insert1122, %v_column.sroa.0.0.insert.ext995, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert997, ptr addrspace(3) %add.ptr467.1, align 8, !dbg !195
  %v_fetch.sroa.0.4.extract.shift = lshr i64 %64, 32, !dbg !196
  %add456.2 = or disjoint i32 %mul455, 512, !dbg !197
  %72 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.2, !dbg !194
  %xor463.2 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.2 = xor i32 %xor463.2, 16, !dbg !194
  %add.ptr467.2 = getelementptr inbounds i8, ptr addrspace(3) %72, i32 %add.ptr467.idx.2, !dbg !194
  %73 = shl i64 %67, 16, !dbg !195
  %v_column.sroa.130.0.insert.ext1434 = and i64 %73, -281474976710656, !dbg !195
  %v_column.sroa.98.0.insert.ext1279 = and i64 %66, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1282 = or disjoint i64 %v_column.sroa.130.0.insert.ext1434, %v_column.sroa.98.0.insert.ext1279, !dbg !195
  %74 = lshr i64 %65, 16, !dbg !195
  %v_column.sroa.66.0.insert.shift1125 = and i64 %74, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1127 = or disjoint i64 %v_column.sroa.98.0.insert.insert1282, %v_column.sroa.66.0.insert.shift1125, !dbg !195
  %v_column.sroa.0.0.insert.ext999 = and i64 %v_fetch.sroa.0.4.extract.shift, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert1001 = or disjoint i64 %v_column.sroa.66.0.insert.insert1127, %v_column.sroa.0.0.insert.ext999, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1001, ptr addrspace(3) %add.ptr467.2, align 8, !dbg !195
  %v_fetch.sroa.0.6.extract.shift = lshr i64 %64, 48, !dbg !196
  %v_fetch.sroa.122.30.extract.shift = and i64 %67, -281474976710656, !dbg !195
  %add456.3 = or disjoint i32 %mul455, 768, !dbg !197
  %75 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.3, !dbg !194
  %xor463.3 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.3 = xor i32 %xor463.3, 24, !dbg !194
  %add.ptr467.3 = getelementptr inbounds i8, ptr addrspace(3) %75, i32 %add.ptr467.idx.3, !dbg !194
  %76 = lshr i64 %66, 16, !dbg !195
  %v_column.sroa.98.0.insert.shift1285 = and i64 %76, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1287 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift, %v_column.sroa.98.0.insert.shift1285, !dbg !195
  %77 = lshr i64 %65, 32, !dbg !195
  %v_column.sroa.66.0.insert.shift1130 = and i64 %77, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1132 = or disjoint i64 %v_column.sroa.98.0.insert.insert1287, %v_column.sroa.66.0.insert.shift1130, !dbg !195
  %v_column.sroa.0.0.insert.insert1005 = or disjoint i64 %v_column.sroa.66.0.insert.insert1132, %v_fetch.sroa.0.6.extract.shift, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1005, ptr addrspace(3) %add.ptr467.3, align 8, !dbg !195
  fence syncscope("warp") release, !dbg !198
  tail call void @llvm.mxc.barrier.warp(), !dbg !201
  fence syncscope("warp") acquire, !dbg !202
  %add484 = or disjoint i32 %mul477, %mul483, !dbg !203
  %78 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484, !dbg !204
  %add.ptr494.idx = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494 = getelementptr inbounds i8, ptr addrspace(3) %78, i32 %add.ptr494.idx, !dbg !204
  %79 = load <4 x half>, ptr addrspace(3) %add.ptr494, align 8, !dbg !205
  %add479.1 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.1 = or disjoint i32 %add479.1, 64, !dbg !203
  %80 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.1, !dbg !204
  %xor490.1 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.1 = xor i32 %xor490.1, 8, !dbg !204
  %add.ptr494.1 = getelementptr inbounds i8, ptr addrspace(3) %80, i32 %add.ptr494.idx.1, !dbg !204
  %81 = load <4 x half>, ptr addrspace(3) %add.ptr494.1, align 8, !dbg !205
  %add479.2 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.2 = or disjoint i32 %add479.2, 128, !dbg !203
  %82 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.2, !dbg !204
  %xor490.2 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.2 = xor i32 %xor490.2, 16, !dbg !204
  %add.ptr494.2 = getelementptr inbounds i8, ptr addrspace(3) %82, i32 %add.ptr494.idx.2, !dbg !204
  %83 = load <4 x half>, ptr addrspace(3) %add.ptr494.2, align 8, !dbg !205
  %add479.3 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.3 = or disjoint i32 %add479.3, 192, !dbg !203
  %84 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.3, !dbg !204
  %xor490.3 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.3 = xor i32 %xor490.3, 24, !dbg !204
  %add.ptr494.3 = getelementptr inbounds i8, ptr addrspace(3) %84, i32 %add.ptr494.idx.3, !dbg !204
  %85 = load <4 x half>, ptr addrspace(3) %add.ptr494.3, align 8, !dbg !205
  %86 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %79, <4 x half> %61, <4 x float> %numerator.sroa.0.12.vec.insert2459), !dbg !206
  %87 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %81, <4 x half> %61, <4 x float> %numerator.sroa.0.12.vec.insert2459), !dbg !206
  %88 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %83, <4 x half> %61, <4 x float> %numerator.sroa.0.12.vec.insert2459), !dbg !206
  %89 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %85, <4 x half> %61, <4 x float> %numerator.sroa.0.12.vec.insert2459), !dbg !206
  %add400 = fadd contract float %mul280, %add393.3, !dbg !207
  br label %if.end520, !dbg !208

if.end520:                                        ; preds = %if.then, %entry
  %numerator.sroa.290.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %89, %if.then ], !dbg !209
  %numerator.sroa.194.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %88, %if.then ], !dbg !209
  %numerator.sroa.98.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %87, %if.then ], !dbg !209
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %86, %if.then ], !dbg !209
  %maximum.sroa.0.1 = phi float [ 0xFFF0000000000000, %entry ], [ %44, %if.then ], !dbg !209
  %denominator.sroa.0.1 = phi float [ 0.000000e+00, %entry ], [ %add400, %if.then ], !dbg !209
  %90 = or disjoint i64 %19, 1, !dbg !210
  %arrayidx104.1 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %90, !dbg !65
  %91 = load i32, ptr addrspace(1) %arrayidx104.1, align 4, !dbg !65, !tbaa !30
  %mul105.1 = shl nsw i32 %91, 4, !dbg !66
  %cmp106.1 = icmp slt i32 %91, 0, !dbg !67
  %cmp108.not.1 = icmp sgt i32 %mul105.1, %1
  %or.cond.1 = select i1 %cmp106.1, i1 true, i1 %cmp108.not.1, !dbg !68
  br i1 %or.cond.1, label %if.end520.1, label %if.then.1, !dbg !68

if.then.1:                                        ; preds = %if.end520
  fence syncscope("warp") release, !dbg !69
  tail call void @llvm.mxc.barrier.warp(), !dbg !72
  fence syncscope("warp") acquire, !dbg !73
  %conv118.1 = zext nneg i32 %mul105.1 to i64
  %.idx.1 = shl nuw nsw i64 %conv118.1, 7
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep848, i64 %.idx.1, !dbg !74
  %.idx855.1873 = shl nuw nsw i64 %conv, 17, !dbg !75
  %92 = getelementptr inbounds i8, ptr addrspace(4) %gep.1, i64 %.idx855.1873, !dbg !75
  %qk_fetch.sroa.0.0.copyload3015 = load i64, ptr addrspace(4) %92, align 16, !dbg !76
  %qk_fetch.sroa.38.0..sroa_idx3032 = getelementptr inbounds i8, ptr addrspace(4) %92, i64 8, !dbg !76
  %qk_fetch.sroa.38.0.copyload3033 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx3032, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3015, ptr addrspace(3) %add.ptr39, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3033, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !77
  %gep831.1.1 = getelementptr inbounds i8, ptr addrspace(4) %92, i64 1024, !dbg !75
  %qk_fetch.sroa.0.0.copyload3016 = load i64, ptr addrspace(4) %gep831.1.1, align 16, !dbg !76
  %qk_fetch.sroa.38.0.gep831.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %92, i64 1032, !dbg !76
  %qk_fetch.sroa.38.0.copyload3034 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep831.1.1.sroa_idx, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3016, ptr addrspace(3) %add.ptr39.1862, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3034, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !77
  fence syncscope("warp") release, !dbg !78
  tail call void @llvm.mxc.barrier.warp(), !dbg !81
  fence syncscope("warp") acquire, !dbg !82
  %k_local.sroa.0.0.copyload.1885 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !83
  %93 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1885, <4 x half> %9, <4 x float> zeroinitializer), !dbg !84
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !83
  %94 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %10, <4 x float> %93), !dbg !84
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !83
  %95 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %11, <4 x float> %94), !dbg !84
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !83
  %96 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %12, <4 x float> %95), !dbg !84
  %add218.1 = add nuw nsw i32 %mul105.1, %mul217
  %cmp221.not.1886 = icmp sgt i32 %add218.1, %1, !dbg !85
  %scores.sroa.0.0.vec.extract2041 = extractelement <4 x float> %96, i64 0
  %spec.select3070 = select i1 %cmp221.not.1886, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2041, !dbg !86
  %cmp221.not.1.1.not = icmp slt i32 %add218.1, %1, !dbg !85
  %scores.sroa.0.4.vec.extract2144 = extractelement <4 x float> %96, i64 1, !dbg !86
  %condval.0.1.1 = select i1 %cmp221.not.1.1.not, float %scores.sroa.0.4.vec.extract2144, float 0xFFF0000000000000, !dbg !86
  %add219.2.1 = or disjoint i32 %add218.1, 2, !dbg !87
  %cmp221.not.2.1 = icmp sgt i32 %add219.2.1, %1, !dbg !85
  %scores.sroa.0.8.vec.extract2221 = extractelement <4 x float> %96, i64 2, !dbg !86
  %condval.0.2.1 = select i1 %cmp221.not.2.1, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2221, !dbg !86
  %add219.3.1 = or disjoint i32 %add218.1, 3, !dbg !87
  %cmp221.not.3.1 = icmp sgt i32 %add219.3.1, %1, !dbg !85
  %scores.sroa.0.12.vec.extract2298 = extractelement <4 x float> %96, i64 3, !dbg !86
  %condval.0.3.1 = select i1 %cmp221.not.3.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2298, !dbg !86
  %97 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3070, float 0xFFF0000000000000), !dbg !88
  %98 = tail call contract noundef float @llvm.maxnum.f32(float %97, float %condval.0.1.1), !dbg !88
  %99 = tail call contract noundef float @llvm.maxnum.f32(float %98, float %condval.0.2.1), !dbg !88
  %100 = tail call contract noundef float @llvm.maxnum.f32(float %99, float %condval.0.3.1), !dbg !88
  %101 = bitcast float %100 to i32, !dbg !92
  %102 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !95
  %103 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %102) #11, !dbg !100
  %xor.i.i770.1 = xor i32 %103, 32, !dbg !101
  %104 = and i32 %103, -64, !dbg !102
  %and.i.i771.1 = add nsw i32 %104, 64, !dbg !102
  %cmp.not.i.i772.1 = icmp slt i32 %xor.i.i770.1, %and.i.i771.1, !dbg !103
  %cond.i.i773.1 = select i1 %cmp.not.i.i772.1, i32 %xor.i.i770.1, i32 %103, !dbg !104
  %shl.i.i774.1 = shl i32 %cond.i.i773.1, 2, !dbg !105
  %105 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i774.1, i32 %101), !dbg !106
  %106 = bitcast i32 %105 to float, !dbg !107
  %107 = tail call contract noundef float @llvm.maxnum.f32(float %100, float %106), !dbg !108
  %108 = bitcast float %107 to i32, !dbg !110
  %109 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !112
  %110 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %109) #11, !dbg !115
  %xor.i.i775.1 = xor i32 %110, 16, !dbg !116
  %111 = and i32 %110, -64, !dbg !117
  %and.i.i776.1 = add nsw i32 %111, 64, !dbg !117
  %cmp.not.i.i777.1 = icmp slt i32 %xor.i.i775.1, %and.i.i776.1, !dbg !118
  %cond.i.i778.1 = select i1 %cmp.not.i.i777.1, i32 %xor.i.i775.1, i32 %110, !dbg !119
  %shl.i.i779.1 = shl i32 %cond.i.i778.1, 2, !dbg !120
  %112 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i779.1, i32 %108), !dbg !121
  %113 = bitcast i32 %112 to float, !dbg !122
  %114 = tail call contract noundef float @llvm.maxnum.f32(float %107, float %113), !dbg !123
  %115 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1, float %114), !dbg !125
  %sub.1 = fsub contract float %maximum.sroa.0.1, %115, !dbg !127
  %mul263.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !128
  %cmp.i.i.1 = fcmp contract olt float %mul263.1, -1.260000e+02, !dbg !129
  %cond.i.i780.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i.1 = fadd contract float %mul263.1, %cond.i.i780.1, !dbg !129
  %116 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !129
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %116, !dbg !129
  %numerator.sroa.0.0.vec.extract2351 = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !211
  %numerator.sroa.0.4.vec.extract2388 = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !211
  %numerator.sroa.0.8.vec.extract2425 = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !211
  %numerator.sroa.0.12.vec.extract2462 = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !211
  %mul280.1897 = fmul contract float %mul.i.i.1, %numerator.sroa.0.0.vec.extract2351, !dbg !132
  %mul283.1898 = fmul contract float %mul.i.i.1, %numerator.sroa.0.4.vec.extract2388, !dbg !212
  %mul286.1899 = fmul contract float %mul.i.i.1, %numerator.sroa.0.8.vec.extract2425, !dbg !213
  %mul289.1900 = fmul contract float %mul.i.i.1, %numerator.sroa.0.12.vec.extract2462, !dbg !214
  %numerator.sroa.0.0.vec.insert2353 = insertelement <4 x float> poison, float %mul280.1897, i64 0, !dbg !133
  %numerator.sroa.0.4.vec.insert2390 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2353, float %mul283.1898, i64 1, !dbg !133
  %numerator.sroa.0.8.vec.insert2427 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2390, float %mul286.1899, i64 2, !dbg !133
  %numerator.sroa.0.12.vec.insert2464 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2427, float %mul289.1900, i64 3, !dbg !133
  %numerator.sroa.98.16.vec.extract2507 = extractelement <4 x float> %numerator.sroa.98.0, i64 0, !dbg !211
  %numerator.sroa.98.20.vec.extract2544 = extractelement <4 x float> %numerator.sroa.98.0, i64 1, !dbg !211
  %numerator.sroa.98.24.vec.extract2581 = extractelement <4 x float> %numerator.sroa.98.0, i64 2, !dbg !211
  %numerator.sroa.98.28.vec.extract2618 = extractelement <4 x float> %numerator.sroa.98.0, i64 3, !dbg !211
  %mul280.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.16.vec.extract2507, !dbg !132
  %mul283.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.20.vec.extract2544, !dbg !212
  %mul286.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.24.vec.extract2581, !dbg !213
  %mul289.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.28.vec.extract2618, !dbg !214
  %numerator.sroa.98.16.vec.insert2509 = insertelement <4 x float> poison, float %mul280.1.1, i64 0, !dbg !133
  %numerator.sroa.98.20.vec.insert2546 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2509, float %mul283.1.1, i64 1, !dbg !133
  %numerator.sroa.98.24.vec.insert2583 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2546, float %mul286.1.1, i64 2, !dbg !133
  %numerator.sroa.98.28.vec.insert2620 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2583, float %mul289.1.1, i64 3, !dbg !133
  %numerator.sroa.194.32.vec.extract2663 = extractelement <4 x float> %numerator.sroa.194.0, i64 0, !dbg !211
  %numerator.sroa.194.36.vec.extract2700 = extractelement <4 x float> %numerator.sroa.194.0, i64 1, !dbg !211
  %numerator.sroa.194.40.vec.extract2737 = extractelement <4 x float> %numerator.sroa.194.0, i64 2, !dbg !211
  %numerator.sroa.194.44.vec.extract2774 = extractelement <4 x float> %numerator.sroa.194.0, i64 3, !dbg !211
  %mul280.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.32.vec.extract2663, !dbg !132
  %mul283.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.36.vec.extract2700, !dbg !212
  %mul286.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.40.vec.extract2737, !dbg !213
  %mul289.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.44.vec.extract2774, !dbg !214
  %numerator.sroa.194.32.vec.insert2665 = insertelement <4 x float> poison, float %mul280.2.1, i64 0, !dbg !133
  %numerator.sroa.194.36.vec.insert2702 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2665, float %mul283.2.1, i64 1, !dbg !133
  %numerator.sroa.194.40.vec.insert2739 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2702, float %mul286.2.1, i64 2, !dbg !133
  %numerator.sroa.194.44.vec.insert2776 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2739, float %mul289.2.1, i64 3, !dbg !133
  %numerator.sroa.290.48.vec.extract2819 = extractelement <4 x float> %numerator.sroa.290.0, i64 0, !dbg !211
  %numerator.sroa.290.52.vec.extract2856 = extractelement <4 x float> %numerator.sroa.290.0, i64 1, !dbg !211
  %numerator.sroa.290.56.vec.extract2893 = extractelement <4 x float> %numerator.sroa.290.0, i64 2, !dbg !211
  %numerator.sroa.290.60.vec.extract2930 = extractelement <4 x float> %numerator.sroa.290.0, i64 3, !dbg !211
  %mul280.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.48.vec.extract2819, !dbg !132
  %mul283.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.52.vec.extract2856, !dbg !212
  %mul286.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.56.vec.extract2893, !dbg !213
  %mul289.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.60.vec.extract2930, !dbg !214
  %numerator.sroa.290.48.vec.insert2821 = insertelement <4 x float> poison, float %mul280.3.1, i64 0, !dbg !133
  %numerator.sroa.290.52.vec.insert2858 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2821, float %mul283.3.1, i64 1, !dbg !133
  %numerator.sroa.290.56.vec.insert2895 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2858, float %mul286.3.1, i64 2, !dbg !133
  %numerator.sroa.290.60.vec.insert2932 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2895, float %mul289.3.1, i64 3, !dbg !133
  %sub313.1 = fsub contract float %spec.select3070, %115, !dbg !134
  %sub317.1 = fsub contract float %condval.0.1.1, %115, !dbg !135
  %sub321.1 = fsub contract float %condval.0.2.1, %115, !dbg !136
  %sub325.1 = fsub contract float %condval.0.3.1, %115, !dbg !137
  %mul330.1 = fmul contract float %sub313.1, 0x3FC7154760000000, !dbg !138
  %mul334.1 = fmul contract float %sub317.1, 0x3FC7154760000000, !dbg !139
  %mul338.1 = fmul contract float %sub321.1, 0x3FC7154760000000, !dbg !140
  %mul342.1 = fmul contract float %sub325.1, 0x3FC7154760000000, !dbg !141
  %add347.1 = fadd contract float %mul330.1, 8.000000e+00, !dbg !142
  %add351.1 = fadd contract float %mul334.1, 8.000000e+00, !dbg !143
  %add355.1 = fadd contract float %mul338.1, 8.000000e+00, !dbg !144
  %add359.1 = fadd contract float %mul342.1, 8.000000e+00, !dbg !145
  %cmp.i.i781.1 = fcmp contract olt float %add347.1, -1.260000e+02, !dbg !146
  %cond.i.i782.1 = select contract i1 %cmp.i.i781.1, float 6.400000e+01, float 0.000000e+00, !dbg !146
  %add.i.i783.1 = fadd contract float %add347.1, %cond.i.i782.1, !dbg !146
  %117 = tail call contract float @llvm.exp2.f32(float %add.i.i783.1), !dbg !146
  %cond2.i.i784.1 = select contract i1 %cmp.i.i781.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !146
  %mul.i.i785.1 = fmul contract float %cond2.i.i784.1, %117, !dbg !146
  %cmp.i.i786.1 = fcmp contract olt float %add351.1, -1.260000e+02, !dbg !148
  %cond.i.i787.1 = select contract i1 %cmp.i.i786.1, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i788.1 = fadd contract float %add351.1, %cond.i.i787.1, !dbg !148
  %118 = tail call contract float @llvm.exp2.f32(float %add.i.i788.1), !dbg !148
  %cond2.i.i789.1 = select contract i1 %cmp.i.i786.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i790.1 = fmul contract float %cond2.i.i789.1, %118, !dbg !148
  %cmp.i.i791.1 = fcmp contract olt float %add355.1, -1.260000e+02, !dbg !150
  %cond.i.i792.1 = select contract i1 %cmp.i.i791.1, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i793.1 = fadd contract float %add355.1, %cond.i.i792.1, !dbg !150
  %119 = tail call contract float @llvm.exp2.f32(float %add.i.i793.1), !dbg !150
  %cond2.i.i794.1 = select contract i1 %cmp.i.i791.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i795.1 = fmul contract float %cond2.i.i794.1, %119, !dbg !150
  %cmp.i.i796.1 = fcmp contract olt float %add359.1, -1.260000e+02, !dbg !152
  %cond.i.i797.1 = select contract i1 %cmp.i.i796.1, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i798.1 = fadd contract float %add359.1, %cond.i.i797.1, !dbg !152
  %120 = tail call contract float @llvm.exp2.f32(float %add.i.i798.1), !dbg !152
  %cond2.i.i799.1 = select contract i1 %cmp.i.i796.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i800.1 = fmul contract float %cond2.i.i799.1, %120, !dbg !152
  %121 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !154, !noalias !162
  %122 = fptrunc float %mul.i.i785.1 to half, !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %121), !dbg !154, !noalias !162
  %123 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !167, !noalias !162
  %124 = fptrunc float %mul.i.i790.1 to half, !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %123), !dbg !167, !noalias !162
  %125 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !173
  %126 = fptrunc float %mul.i.i795.1 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %125), !dbg !169, !noalias !173
  %127 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !173
  %128 = fptrunc float %mul.i.i800.1 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %127), !dbg !178, !noalias !173
  %129 = insertelement <4 x half> poison, half %122, i64 0, !dbg !180
  %130 = insertelement <4 x half> %129, half %124, i64 1, !dbg !180
  %131 = insertelement <4 x half> %130, half %126, i64 2, !dbg !180
  %132 = insertelement <4 x half> %131, half %128, i64 3, !dbg !180
  %conv.i.i.1902 = fpext half %122 to float, !dbg !181
  %conv.i.i.1.1 = fpext half %124 to float, !dbg !181
  %conv.i.i.2.1 = fpext half %126 to float, !dbg !181
  %conv.i.i.3.1 = fpext half %128 to float, !dbg !181
  %mul300.1 = fmul contract float %denominator.sroa.0.1, %mul.i.i.1, !dbg !215
  fence syncscope("warp") release, !dbg !186
  tail call void @llvm.mxc.barrier.warp(), !dbg !189
  fence syncscope("warp") acquire, !dbg !190
  %133 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !191
  %134 = getelementptr inbounds i8, ptr addrspace(4) %133, i64 %.idx.1, !dbg !191
  %135 = load i64, ptr addrspace(4) %134, align 8, !dbg !192
  %add.ptr425.1.1 = getelementptr inbounds i8, ptr addrspace(4) %134, i64 128, !dbg !191
  %136 = load i64, ptr addrspace(4) %add.ptr425.1.1, align 8, !dbg !192
  %add.ptr425.2.1 = getelementptr inbounds i8, ptr addrspace(4) %134, i64 256, !dbg !191
  %137 = load i64, ptr addrspace(4) %add.ptr425.2.1, align 8, !dbg !192
  %add.ptr425.3.1 = getelementptr inbounds i8, ptr addrspace(4) %134, i64 384, !dbg !191
  %138 = load i64, ptr addrspace(4) %add.ptr425.3.1, align 8, !dbg !192
  %add393.1904 = fadd contract float %conv.i.i.1902, 0.000000e+00, !dbg !193
  %add393.1.1 = fadd contract float %add393.1904, %conv.i.i.1.1, !dbg !193
  %add393.2.1 = fadd contract float %add393.1.1, %conv.i.i.2.1, !dbg !193
  %add393.3.1 = fadd contract float %add393.2.1, %conv.i.i.3.1, !dbg !193
  %139 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul455, !dbg !194
  %add.ptr467.idx.1911 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.1912 = getelementptr inbounds i8, ptr addrspace(3) %139, i32 %add.ptr467.idx.1911, !dbg !194
  %v_column.sroa.130.0.insert.ext1444 = shl i64 %138, 48, !dbg !195
  %v_column.sroa.98.0.insert.ext1289 = shl i64 %137, 32, !dbg !195
  %v_column.sroa.98.0.insert.shift1290 = and i64 %v_column.sroa.98.0.insert.ext1289, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1292 = or disjoint i64 %v_column.sroa.130.0.insert.ext1444, %v_column.sroa.98.0.insert.shift1290, !dbg !195
  %v_column.sroa.66.0.insert.ext1134 = shl i64 %136, 16, !dbg !195
  %v_column.sroa.66.0.insert.shift1135 = and i64 %v_column.sroa.66.0.insert.ext1134, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1137 = or disjoint i64 %v_column.sroa.98.0.insert.insert1292, %v_column.sroa.66.0.insert.shift1135, !dbg !195
  %v_column.sroa.0.0.insert.ext1007 = and i64 %135, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert1009 = or disjoint i64 %v_column.sroa.66.0.insert.insert1137, %v_column.sroa.0.0.insert.ext1007, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1009, ptr addrspace(3) %add.ptr467.1912, align 8, !dbg !195
  %v_fetch.sroa.0.2.extract.shift1658 = lshr i64 %135, 16, !dbg !196
  %add456.1.1 = or disjoint i32 %mul455, 256, !dbg !197
  %140 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.1.1, !dbg !194
  %xor463.1.1 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.1.1 = xor i32 %xor463.1.1, 8, !dbg !194
  %add.ptr467.1.1 = getelementptr inbounds i8, ptr addrspace(3) %140, i32 %add.ptr467.idx.1.1, !dbg !194
  %141 = shl i64 %138, 32, !dbg !195
  %v_column.sroa.130.0.insert.ext1449 = and i64 %141, -281474976710656, !dbg !195
  %142 = shl i64 %137, 16, !dbg !195
  %v_column.sroa.98.0.insert.shift1295 = and i64 %142, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1297 = or disjoint i64 %v_column.sroa.130.0.insert.ext1449, %v_column.sroa.98.0.insert.shift1295, !dbg !195
  %v_column.sroa.66.0.insert.ext1139 = and i64 %136, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1142 = or disjoint i64 %v_column.sroa.98.0.insert.insert1297, %v_column.sroa.66.0.insert.ext1139, !dbg !195
  %v_column.sroa.0.0.insert.ext1011 = and i64 %v_fetch.sroa.0.2.extract.shift1658, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert1013 = or disjoint i64 %v_column.sroa.66.0.insert.insert1142, %v_column.sroa.0.0.insert.ext1011, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1013, ptr addrspace(3) %add.ptr467.1.1, align 8, !dbg !195
  %v_fetch.sroa.0.4.extract.shift1679 = lshr i64 %135, 32, !dbg !196
  %add456.2.1 = or disjoint i32 %mul455, 512, !dbg !197
  %143 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.2.1, !dbg !194
  %xor463.2.1 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.2.1 = xor i32 %xor463.2.1, 16, !dbg !194
  %add.ptr467.2.1 = getelementptr inbounds i8, ptr addrspace(3) %143, i32 %add.ptr467.idx.2.1, !dbg !194
  %144 = shl i64 %138, 16, !dbg !195
  %v_column.sroa.130.0.insert.ext1454 = and i64 %144, -281474976710656, !dbg !195
  %v_column.sroa.98.0.insert.ext1299 = and i64 %137, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1302 = or disjoint i64 %v_column.sroa.130.0.insert.ext1454, %v_column.sroa.98.0.insert.ext1299, !dbg !195
  %145 = lshr i64 %136, 16, !dbg !195
  %v_column.sroa.66.0.insert.shift1145 = and i64 %145, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1147 = or disjoint i64 %v_column.sroa.98.0.insert.insert1302, %v_column.sroa.66.0.insert.shift1145, !dbg !195
  %v_column.sroa.0.0.insert.ext1015 = and i64 %v_fetch.sroa.0.4.extract.shift1679, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert1017 = or disjoint i64 %v_column.sroa.66.0.insert.insert1147, %v_column.sroa.0.0.insert.ext1015, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1017, ptr addrspace(3) %add.ptr467.2.1, align 8, !dbg !195
  %v_fetch.sroa.0.6.extract.shift1700 = lshr i64 %135, 48, !dbg !196
  %v_fetch.sroa.122.30.extract.shift1931 = and i64 %138, -281474976710656, !dbg !195
  %add456.3.1 = or disjoint i32 %mul455, 768, !dbg !197
  %146 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.3.1, !dbg !194
  %xor463.3.1 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.3.1 = xor i32 %xor463.3.1, 24, !dbg !194
  %add.ptr467.3.1 = getelementptr inbounds i8, ptr addrspace(3) %146, i32 %add.ptr467.idx.3.1, !dbg !194
  %147 = lshr i64 %137, 16, !dbg !195
  %v_column.sroa.98.0.insert.shift1305 = and i64 %147, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1307 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1931, %v_column.sroa.98.0.insert.shift1305, !dbg !195
  %148 = lshr i64 %136, 32, !dbg !195
  %v_column.sroa.66.0.insert.shift1150 = and i64 %148, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1152 = or disjoint i64 %v_column.sroa.98.0.insert.insert1307, %v_column.sroa.66.0.insert.shift1150, !dbg !195
  %v_column.sroa.0.0.insert.insert1021 = or disjoint i64 %v_column.sroa.66.0.insert.insert1152, %v_fetch.sroa.0.6.extract.shift1700, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1021, ptr addrspace(3) %add.ptr467.3.1, align 8, !dbg !195
  fence syncscope("warp") release, !dbg !198
  tail call void @llvm.mxc.barrier.warp(), !dbg !201
  fence syncscope("warp") acquire, !dbg !202
  %add484.1914 = or disjoint i32 %mul477, %mul483, !dbg !203
  %149 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.1914, !dbg !204
  %add.ptr494.idx.1915 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.1916 = getelementptr inbounds i8, ptr addrspace(3) %149, i32 %add.ptr494.idx.1915, !dbg !204
  %150 = load <4 x half>, ptr addrspace(3) %add.ptr494.1916, align 8, !dbg !205
  %add479.1.1 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.1.1 = or disjoint i32 %add479.1.1, 64, !dbg !203
  %151 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.1.1, !dbg !204
  %xor490.1.1 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.1.1 = xor i32 %xor490.1.1, 8, !dbg !204
  %add.ptr494.1.1 = getelementptr inbounds i8, ptr addrspace(3) %151, i32 %add.ptr494.idx.1.1, !dbg !204
  %152 = load <4 x half>, ptr addrspace(3) %add.ptr494.1.1, align 8, !dbg !205
  %add479.2.1 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.2.1 = or disjoint i32 %add479.2.1, 128, !dbg !203
  %153 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.2.1, !dbg !204
  %xor490.2.1 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.2.1 = xor i32 %xor490.2.1, 16, !dbg !204
  %add.ptr494.2.1 = getelementptr inbounds i8, ptr addrspace(3) %153, i32 %add.ptr494.idx.2.1, !dbg !204
  %154 = load <4 x half>, ptr addrspace(3) %add.ptr494.2.1, align 8, !dbg !205
  %add479.3.1 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.3.1 = or disjoint i32 %add479.3.1, 192, !dbg !203
  %155 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.3.1, !dbg !204
  %xor490.3.1 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.3.1 = xor i32 %xor490.3.1, 24, !dbg !204
  %add.ptr494.3.1 = getelementptr inbounds i8, ptr addrspace(3) %155, i32 %add.ptr494.idx.3.1, !dbg !204
  %156 = load <4 x half>, ptr addrspace(3) %add.ptr494.3.1, align 8, !dbg !205
  %157 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %150, <4 x half> %132, <4 x float> %numerator.sroa.0.12.vec.insert2464), !dbg !206
  %158 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %152, <4 x half> %132, <4 x float> %numerator.sroa.98.28.vec.insert2620), !dbg !206
  %159 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %154, <4 x half> %132, <4 x float> %numerator.sroa.194.44.vec.insert2776), !dbg !206
  %160 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %156, <4 x half> %132, <4 x float> %numerator.sroa.290.60.vec.insert2932), !dbg !206
  %add400.1 = fadd contract float %mul300.1, %add393.3.1, !dbg !207
  br label %if.end520.1, !dbg !208

if.end520.1:                                      ; preds = %if.then.1, %if.end520
  %numerator.sroa.290.1 = phi <4 x float> [ %numerator.sroa.290.0, %if.end520 ], [ %160, %if.then.1 ], !dbg !209
  %numerator.sroa.194.1 = phi <4 x float> [ %numerator.sroa.194.0, %if.end520 ], [ %159, %if.then.1 ], !dbg !209
  %numerator.sroa.98.1 = phi <4 x float> [ %numerator.sroa.98.0, %if.end520 ], [ %158, %if.then.1 ], !dbg !209
  %numerator.sroa.0.1 = phi <4 x float> [ %numerator.sroa.0.0, %if.end520 ], [ %157, %if.then.1 ], !dbg !209
  %maximum.sroa.0.1.1 = phi float [ %maximum.sroa.0.1, %if.end520 ], [ %115, %if.then.1 ], !dbg !209
  %denominator.sroa.0.1.1 = phi float [ %denominator.sroa.0.1, %if.end520 ], [ %add400.1, %if.then.1 ], !dbg !209
  %161 = or disjoint i64 %19, 2, !dbg !210
  %arrayidx104.2 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %161, !dbg !65
  %162 = load i32, ptr addrspace(1) %arrayidx104.2, align 4, !dbg !65, !tbaa !30
  %mul105.2 = shl nsw i32 %162, 4, !dbg !66
  %cmp106.2 = icmp slt i32 %162, 0, !dbg !67
  %cmp108.not.2 = icmp sgt i32 %mul105.2, %1
  %or.cond.2 = select i1 %cmp106.2, i1 true, i1 %cmp108.not.2, !dbg !68
  br i1 %or.cond.2, label %if.end520.2, label %if.then.2, !dbg !68

if.then.2:                                        ; preds = %if.end520.1
  fence syncscope("warp") release, !dbg !69
  tail call void @llvm.mxc.barrier.warp(), !dbg !72
  fence syncscope("warp") acquire, !dbg !73
  %conv118.2 = zext nneg i32 %mul105.2 to i64
  %.idx.2 = shl nuw nsw i64 %conv118.2, 7
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep848, i64 %.idx.2, !dbg !74
  %.idx855.2 = shl nuw nsw i64 %conv, 17, !dbg !75
  %163 = getelementptr inbounds i8, ptr addrspace(4) %gep.2, i64 %.idx855.2, !dbg !75
  %qk_fetch.sroa.0.0.copyload3017 = load i64, ptr addrspace(4) %163, align 16, !dbg !76
  %qk_fetch.sroa.38.0..sroa_idx3035 = getelementptr inbounds i8, ptr addrspace(4) %163, i64 8, !dbg !76
  %qk_fetch.sroa.38.0.copyload3036 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx3035, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3017, ptr addrspace(3) %add.ptr39, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3036, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !77
  %gep831.1.2 = getelementptr inbounds i8, ptr addrspace(4) %163, i64 1024, !dbg !75
  %qk_fetch.sroa.0.0.copyload3018 = load i64, ptr addrspace(4) %gep831.1.2, align 16, !dbg !76
  %qk_fetch.sroa.38.0.gep831.1.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %163, i64 1032, !dbg !76
  %qk_fetch.sroa.38.0.copyload3037 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep831.1.2.sroa_idx, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3018, ptr addrspace(3) %add.ptr39.1862, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3037, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !77
  fence syncscope("warp") release, !dbg !78
  tail call void @llvm.mxc.barrier.warp(), !dbg !81
  fence syncscope("warp") acquire, !dbg !82
  %k_local.sroa.0.0.copyload.2922 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !83
  %164 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2922, <4 x half> %9, <4 x float> zeroinitializer), !dbg !84
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !83
  %165 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %10, <4 x float> %164), !dbg !84
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !83
  %166 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %11, <4 x float> %165), !dbg !84
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !83
  %167 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %12, <4 x float> %166), !dbg !84
  %add218.2 = add nuw nsw i32 %mul105.2, %mul217
  %cmp221.not.2923 = icmp sgt i32 %add218.2, %1, !dbg !85
  %scores.sroa.0.0.vec.extract2051 = extractelement <4 x float> %167, i64 0
  %spec.select3071 = select i1 %cmp221.not.2923, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2051, !dbg !86
  %cmp221.not.1.2.not = icmp slt i32 %add218.2, %1, !dbg !85
  %scores.sroa.0.4.vec.extract2150 = extractelement <4 x float> %167, i64 1, !dbg !86
  %condval.0.1.2 = select i1 %cmp221.not.1.2.not, float %scores.sroa.0.4.vec.extract2150, float 0xFFF0000000000000, !dbg !86
  %add219.2.2 = or disjoint i32 %add218.2, 2, !dbg !87
  %cmp221.not.2.2 = icmp sgt i32 %add219.2.2, %1, !dbg !85
  %scores.sroa.0.8.vec.extract2227 = extractelement <4 x float> %167, i64 2, !dbg !86
  %condval.0.2.2 = select i1 %cmp221.not.2.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2227, !dbg !86
  %add219.3.2 = or disjoint i32 %add218.2, 3, !dbg !87
  %cmp221.not.3.2 = icmp sgt i32 %add219.3.2, %1, !dbg !85
  %scores.sroa.0.12.vec.extract2304 = extractelement <4 x float> %167, i64 3, !dbg !86
  %condval.0.3.2 = select i1 %cmp221.not.3.2, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2304, !dbg !86
  %168 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3071, float 0xFFF0000000000000), !dbg !88
  %169 = tail call contract noundef float @llvm.maxnum.f32(float %168, float %condval.0.1.2), !dbg !88
  %170 = tail call contract noundef float @llvm.maxnum.f32(float %169, float %condval.0.2.2), !dbg !88
  %171 = tail call contract noundef float @llvm.maxnum.f32(float %170, float %condval.0.3.2), !dbg !88
  %172 = bitcast float %171 to i32, !dbg !92
  %173 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !95
  %174 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %173) #11, !dbg !100
  %xor.i.i770.2 = xor i32 %174, 32, !dbg !101
  %175 = and i32 %174, -64, !dbg !102
  %and.i.i771.2 = add nsw i32 %175, 64, !dbg !102
  %cmp.not.i.i772.2 = icmp slt i32 %xor.i.i770.2, %and.i.i771.2, !dbg !103
  %cond.i.i773.2 = select i1 %cmp.not.i.i772.2, i32 %xor.i.i770.2, i32 %174, !dbg !104
  %shl.i.i774.2 = shl i32 %cond.i.i773.2, 2, !dbg !105
  %176 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i774.2, i32 %172), !dbg !106
  %177 = bitcast i32 %176 to float, !dbg !107
  %178 = tail call contract noundef float @llvm.maxnum.f32(float %171, float %177), !dbg !108
  %179 = bitcast float %178 to i32, !dbg !110
  %180 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !112
  %181 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %180) #11, !dbg !115
  %xor.i.i775.2 = xor i32 %181, 16, !dbg !116
  %182 = and i32 %181, -64, !dbg !117
  %and.i.i776.2 = add nsw i32 %182, 64, !dbg !117
  %cmp.not.i.i777.2 = icmp slt i32 %xor.i.i775.2, %and.i.i776.2, !dbg !118
  %cond.i.i778.2 = select i1 %cmp.not.i.i777.2, i32 %xor.i.i775.2, i32 %181, !dbg !119
  %shl.i.i779.2 = shl i32 %cond.i.i778.2, 2, !dbg !120
  %183 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i779.2, i32 %179), !dbg !121
  %184 = bitcast i32 %183 to float, !dbg !122
  %185 = tail call contract noundef float @llvm.maxnum.f32(float %178, float %184), !dbg !123
  %186 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.1, float %185), !dbg !125
  %sub.2 = fsub contract float %maximum.sroa.0.1.1, %186, !dbg !127
  %mul263.2 = fmul contract float %sub.2, 0x3FC7154760000000, !dbg !128
  %cmp.i.i.2 = fcmp contract olt float %mul263.2, -1.260000e+02, !dbg !129
  %cond.i.i780.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i.2 = fadd contract float %mul263.2, %cond.i.i780.2, !dbg !129
  %187 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !129
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %187, !dbg !129
  %numerator.sroa.0.0.vec.extract2355 = extractelement <4 x float> %numerator.sroa.0.1, i64 0, !dbg !211
  %numerator.sroa.0.4.vec.extract2392 = extractelement <4 x float> %numerator.sroa.0.1, i64 1, !dbg !211
  %numerator.sroa.0.8.vec.extract2429 = extractelement <4 x float> %numerator.sroa.0.1, i64 2, !dbg !211
  %numerator.sroa.0.12.vec.extract2466 = extractelement <4 x float> %numerator.sroa.0.1, i64 3, !dbg !211
  %mul280.2934 = fmul contract float %mul.i.i.2, %numerator.sroa.0.0.vec.extract2355, !dbg !132
  %mul283.2935 = fmul contract float %mul.i.i.2, %numerator.sroa.0.4.vec.extract2392, !dbg !212
  %mul286.2936 = fmul contract float %mul.i.i.2, %numerator.sroa.0.8.vec.extract2429, !dbg !213
  %mul289.2937 = fmul contract float %mul.i.i.2, %numerator.sroa.0.12.vec.extract2466, !dbg !214
  %numerator.sroa.0.0.vec.insert2357 = insertelement <4 x float> poison, float %mul280.2934, i64 0, !dbg !133
  %numerator.sroa.0.4.vec.insert2394 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2357, float %mul283.2935, i64 1, !dbg !133
  %numerator.sroa.0.8.vec.insert2431 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2394, float %mul286.2936, i64 2, !dbg !133
  %numerator.sroa.0.12.vec.insert2468 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2431, float %mul289.2937, i64 3, !dbg !133
  %numerator.sroa.98.16.vec.extract2511 = extractelement <4 x float> %numerator.sroa.98.1, i64 0, !dbg !211
  %numerator.sroa.98.20.vec.extract2548 = extractelement <4 x float> %numerator.sroa.98.1, i64 1, !dbg !211
  %numerator.sroa.98.24.vec.extract2585 = extractelement <4 x float> %numerator.sroa.98.1, i64 2, !dbg !211
  %numerator.sroa.98.28.vec.extract2622 = extractelement <4 x float> %numerator.sroa.98.1, i64 3, !dbg !211
  %mul280.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.16.vec.extract2511, !dbg !132
  %mul283.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.20.vec.extract2548, !dbg !212
  %mul286.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.24.vec.extract2585, !dbg !213
  %mul289.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.28.vec.extract2622, !dbg !214
  %numerator.sroa.98.16.vec.insert2513 = insertelement <4 x float> poison, float %mul280.1.2, i64 0, !dbg !133
  %numerator.sroa.98.20.vec.insert2550 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2513, float %mul283.1.2, i64 1, !dbg !133
  %numerator.sroa.98.24.vec.insert2587 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2550, float %mul286.1.2, i64 2, !dbg !133
  %numerator.sroa.98.28.vec.insert2624 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2587, float %mul289.1.2, i64 3, !dbg !133
  %numerator.sroa.194.32.vec.extract2667 = extractelement <4 x float> %numerator.sroa.194.1, i64 0, !dbg !211
  %numerator.sroa.194.36.vec.extract2704 = extractelement <4 x float> %numerator.sroa.194.1, i64 1, !dbg !211
  %numerator.sroa.194.40.vec.extract2741 = extractelement <4 x float> %numerator.sroa.194.1, i64 2, !dbg !211
  %numerator.sroa.194.44.vec.extract2778 = extractelement <4 x float> %numerator.sroa.194.1, i64 3, !dbg !211
  %mul280.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.32.vec.extract2667, !dbg !132
  %mul283.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.36.vec.extract2704, !dbg !212
  %mul286.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.40.vec.extract2741, !dbg !213
  %mul289.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.44.vec.extract2778, !dbg !214
  %numerator.sroa.194.32.vec.insert2669 = insertelement <4 x float> poison, float %mul280.2.2, i64 0, !dbg !133
  %numerator.sroa.194.36.vec.insert2706 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2669, float %mul283.2.2, i64 1, !dbg !133
  %numerator.sroa.194.40.vec.insert2743 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2706, float %mul286.2.2, i64 2, !dbg !133
  %numerator.sroa.194.44.vec.insert2780 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2743, float %mul289.2.2, i64 3, !dbg !133
  %numerator.sroa.290.48.vec.extract2823 = extractelement <4 x float> %numerator.sroa.290.1, i64 0, !dbg !211
  %numerator.sroa.290.52.vec.extract2860 = extractelement <4 x float> %numerator.sroa.290.1, i64 1, !dbg !211
  %numerator.sroa.290.56.vec.extract2897 = extractelement <4 x float> %numerator.sroa.290.1, i64 2, !dbg !211
  %numerator.sroa.290.60.vec.extract2934 = extractelement <4 x float> %numerator.sroa.290.1, i64 3, !dbg !211
  %mul280.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.48.vec.extract2823, !dbg !132
  %mul283.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.52.vec.extract2860, !dbg !212
  %mul286.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.56.vec.extract2897, !dbg !213
  %mul289.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.60.vec.extract2934, !dbg !214
  %numerator.sroa.290.48.vec.insert2825 = insertelement <4 x float> poison, float %mul280.3.2, i64 0, !dbg !133
  %numerator.sroa.290.52.vec.insert2862 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2825, float %mul283.3.2, i64 1, !dbg !133
  %numerator.sroa.290.56.vec.insert2899 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2862, float %mul286.3.2, i64 2, !dbg !133
  %numerator.sroa.290.60.vec.insert2936 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2899, float %mul289.3.2, i64 3, !dbg !133
  %sub313.2 = fsub contract float %spec.select3071, %186, !dbg !134
  %sub317.2 = fsub contract float %condval.0.1.2, %186, !dbg !135
  %sub321.2 = fsub contract float %condval.0.2.2, %186, !dbg !136
  %sub325.2 = fsub contract float %condval.0.3.2, %186, !dbg !137
  %mul330.2 = fmul contract float %sub313.2, 0x3FC7154760000000, !dbg !138
  %mul334.2 = fmul contract float %sub317.2, 0x3FC7154760000000, !dbg !139
  %mul338.2 = fmul contract float %sub321.2, 0x3FC7154760000000, !dbg !140
  %mul342.2 = fmul contract float %sub325.2, 0x3FC7154760000000, !dbg !141
  %add347.2 = fadd contract float %mul330.2, 8.000000e+00, !dbg !142
  %add351.2 = fadd contract float %mul334.2, 8.000000e+00, !dbg !143
  %add355.2 = fadd contract float %mul338.2, 8.000000e+00, !dbg !144
  %add359.2 = fadd contract float %mul342.2, 8.000000e+00, !dbg !145
  %cmp.i.i781.2 = fcmp contract olt float %add347.2, -1.260000e+02, !dbg !146
  %cond.i.i782.2 = select contract i1 %cmp.i.i781.2, float 6.400000e+01, float 0.000000e+00, !dbg !146
  %add.i.i783.2 = fadd contract float %add347.2, %cond.i.i782.2, !dbg !146
  %188 = tail call contract float @llvm.exp2.f32(float %add.i.i783.2), !dbg !146
  %cond2.i.i784.2 = select contract i1 %cmp.i.i781.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !146
  %mul.i.i785.2 = fmul contract float %cond2.i.i784.2, %188, !dbg !146
  %cmp.i.i786.2 = fcmp contract olt float %add351.2, -1.260000e+02, !dbg !148
  %cond.i.i787.2 = select contract i1 %cmp.i.i786.2, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i788.2 = fadd contract float %add351.2, %cond.i.i787.2, !dbg !148
  %189 = tail call contract float @llvm.exp2.f32(float %add.i.i788.2), !dbg !148
  %cond2.i.i789.2 = select contract i1 %cmp.i.i786.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i790.2 = fmul contract float %cond2.i.i789.2, %189, !dbg !148
  %cmp.i.i791.2 = fcmp contract olt float %add355.2, -1.260000e+02, !dbg !150
  %cond.i.i792.2 = select contract i1 %cmp.i.i791.2, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i793.2 = fadd contract float %add355.2, %cond.i.i792.2, !dbg !150
  %190 = tail call contract float @llvm.exp2.f32(float %add.i.i793.2), !dbg !150
  %cond2.i.i794.2 = select contract i1 %cmp.i.i791.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i795.2 = fmul contract float %cond2.i.i794.2, %190, !dbg !150
  %cmp.i.i796.2 = fcmp contract olt float %add359.2, -1.260000e+02, !dbg !152
  %cond.i.i797.2 = select contract i1 %cmp.i.i796.2, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i798.2 = fadd contract float %add359.2, %cond.i.i797.2, !dbg !152
  %191 = tail call contract float @llvm.exp2.f32(float %add.i.i798.2), !dbg !152
  %cond2.i.i799.2 = select contract i1 %cmp.i.i796.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i800.2 = fmul contract float %cond2.i.i799.2, %191, !dbg !152
  %192 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !154, !noalias !162
  %193 = fptrunc float %mul.i.i785.2 to half, !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %192), !dbg !154, !noalias !162
  %194 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !167, !noalias !162
  %195 = fptrunc float %mul.i.i790.2 to half, !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %194), !dbg !167, !noalias !162
  %196 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !173
  %197 = fptrunc float %mul.i.i795.2 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %196), !dbg !169, !noalias !173
  %198 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !173
  %199 = fptrunc float %mul.i.i800.2 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %198), !dbg !178, !noalias !173
  %200 = insertelement <4 x half> poison, half %193, i64 0, !dbg !180
  %201 = insertelement <4 x half> %200, half %195, i64 1, !dbg !180
  %202 = insertelement <4 x half> %201, half %197, i64 2, !dbg !180
  %203 = insertelement <4 x half> %202, half %199, i64 3, !dbg !180
  %conv.i.i.2939 = fpext half %193 to float, !dbg !181
  %conv.i.i.1.2 = fpext half %195 to float, !dbg !181
  %conv.i.i.2.2 = fpext half %197 to float, !dbg !181
  %conv.i.i.3.2 = fpext half %199 to float, !dbg !181
  %mul300.2 = fmul contract float %denominator.sroa.0.1.1, %mul.i.i.2, !dbg !215
  fence syncscope("warp") release, !dbg !186
  tail call void @llvm.mxc.barrier.warp(), !dbg !189
  fence syncscope("warp") acquire, !dbg !190
  %204 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !191
  %205 = getelementptr inbounds i8, ptr addrspace(4) %204, i64 %.idx.2, !dbg !191
  %206 = load i64, ptr addrspace(4) %205, align 8, !dbg !192
  %add.ptr425.1.2 = getelementptr inbounds i8, ptr addrspace(4) %205, i64 128, !dbg !191
  %207 = load i64, ptr addrspace(4) %add.ptr425.1.2, align 8, !dbg !192
  %add.ptr425.2.2 = getelementptr inbounds i8, ptr addrspace(4) %205, i64 256, !dbg !191
  %208 = load i64, ptr addrspace(4) %add.ptr425.2.2, align 8, !dbg !192
  %add.ptr425.3.2 = getelementptr inbounds i8, ptr addrspace(4) %205, i64 384, !dbg !191
  %209 = load i64, ptr addrspace(4) %add.ptr425.3.2, align 8, !dbg !192
  %add393.2941 = fadd contract float %conv.i.i.2939, 0.000000e+00, !dbg !193
  %add393.1.2 = fadd contract float %add393.2941, %conv.i.i.1.2, !dbg !193
  %add393.2.2 = fadd contract float %add393.1.2, %conv.i.i.2.2, !dbg !193
  %add393.3.2 = fadd contract float %add393.2.2, %conv.i.i.3.2, !dbg !193
  %210 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul455, !dbg !194
  %add.ptr467.idx.2948 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.2949 = getelementptr inbounds i8, ptr addrspace(3) %210, i32 %add.ptr467.idx.2948, !dbg !194
  %v_column.sroa.130.0.insert.ext1464 = shl i64 %209, 48, !dbg !195
  %v_column.sroa.98.0.insert.ext1309 = shl i64 %208, 32, !dbg !195
  %v_column.sroa.98.0.insert.shift1310 = and i64 %v_column.sroa.98.0.insert.ext1309, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1312 = or disjoint i64 %v_column.sroa.130.0.insert.ext1464, %v_column.sroa.98.0.insert.shift1310, !dbg !195
  %v_column.sroa.66.0.insert.ext1154 = shl i64 %207, 16, !dbg !195
  %v_column.sroa.66.0.insert.shift1155 = and i64 %v_column.sroa.66.0.insert.ext1154, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1157 = or disjoint i64 %v_column.sroa.98.0.insert.insert1312, %v_column.sroa.66.0.insert.shift1155, !dbg !195
  %v_column.sroa.0.0.insert.ext1023 = and i64 %206, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert1025 = or disjoint i64 %v_column.sroa.66.0.insert.insert1157, %v_column.sroa.0.0.insert.ext1023, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1025, ptr addrspace(3) %add.ptr467.2949, align 8, !dbg !195
  %v_fetch.sroa.0.2.extract.shift1661 = lshr i64 %206, 16, !dbg !196
  %add456.1.2 = or disjoint i32 %mul455, 256, !dbg !197
  %211 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.1.2, !dbg !194
  %xor463.1.2 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.1.2 = xor i32 %xor463.1.2, 8, !dbg !194
  %add.ptr467.1.2 = getelementptr inbounds i8, ptr addrspace(3) %211, i32 %add.ptr467.idx.1.2, !dbg !194
  %212 = shl i64 %209, 32, !dbg !195
  %v_column.sroa.130.0.insert.ext1469 = and i64 %212, -281474976710656, !dbg !195
  %213 = shl i64 %208, 16, !dbg !195
  %v_column.sroa.98.0.insert.shift1315 = and i64 %213, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1317 = or disjoint i64 %v_column.sroa.130.0.insert.ext1469, %v_column.sroa.98.0.insert.shift1315, !dbg !195
  %v_column.sroa.66.0.insert.ext1159 = and i64 %207, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1162 = or disjoint i64 %v_column.sroa.98.0.insert.insert1317, %v_column.sroa.66.0.insert.ext1159, !dbg !195
  %v_column.sroa.0.0.insert.ext1027 = and i64 %v_fetch.sroa.0.2.extract.shift1661, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert1029 = or disjoint i64 %v_column.sroa.66.0.insert.insert1162, %v_column.sroa.0.0.insert.ext1027, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1029, ptr addrspace(3) %add.ptr467.1.2, align 8, !dbg !195
  %v_fetch.sroa.0.4.extract.shift1682 = lshr i64 %206, 32, !dbg !196
  %add456.2.2 = or disjoint i32 %mul455, 512, !dbg !197
  %214 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.2.2, !dbg !194
  %xor463.2.2 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.2.2 = xor i32 %xor463.2.2, 16, !dbg !194
  %add.ptr467.2.2 = getelementptr inbounds i8, ptr addrspace(3) %214, i32 %add.ptr467.idx.2.2, !dbg !194
  %215 = shl i64 %209, 16, !dbg !195
  %v_column.sroa.130.0.insert.ext1474 = and i64 %215, -281474976710656, !dbg !195
  %v_column.sroa.98.0.insert.ext1319 = and i64 %208, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1322 = or disjoint i64 %v_column.sroa.130.0.insert.ext1474, %v_column.sroa.98.0.insert.ext1319, !dbg !195
  %216 = lshr i64 %207, 16, !dbg !195
  %v_column.sroa.66.0.insert.shift1165 = and i64 %216, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1167 = or disjoint i64 %v_column.sroa.98.0.insert.insert1322, %v_column.sroa.66.0.insert.shift1165, !dbg !195
  %v_column.sroa.0.0.insert.ext1031 = and i64 %v_fetch.sroa.0.4.extract.shift1682, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert1033 = or disjoint i64 %v_column.sroa.66.0.insert.insert1167, %v_column.sroa.0.0.insert.ext1031, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1033, ptr addrspace(3) %add.ptr467.2.2, align 8, !dbg !195
  %v_fetch.sroa.0.6.extract.shift1703 = lshr i64 %206, 48, !dbg !196
  %v_fetch.sroa.122.30.extract.shift1934 = and i64 %209, -281474976710656, !dbg !195
  %add456.3.2 = or disjoint i32 %mul455, 768, !dbg !197
  %217 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.3.2, !dbg !194
  %xor463.3.2 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.3.2 = xor i32 %xor463.3.2, 24, !dbg !194
  %add.ptr467.3.2 = getelementptr inbounds i8, ptr addrspace(3) %217, i32 %add.ptr467.idx.3.2, !dbg !194
  %218 = lshr i64 %208, 16, !dbg !195
  %v_column.sroa.98.0.insert.shift1325 = and i64 %218, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1327 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1934, %v_column.sroa.98.0.insert.shift1325, !dbg !195
  %219 = lshr i64 %207, 32, !dbg !195
  %v_column.sroa.66.0.insert.shift1170 = and i64 %219, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1172 = or disjoint i64 %v_column.sroa.98.0.insert.insert1327, %v_column.sroa.66.0.insert.shift1170, !dbg !195
  %v_column.sroa.0.0.insert.insert1037 = or disjoint i64 %v_column.sroa.66.0.insert.insert1172, %v_fetch.sroa.0.6.extract.shift1703, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1037, ptr addrspace(3) %add.ptr467.3.2, align 8, !dbg !195
  fence syncscope("warp") release, !dbg !198
  tail call void @llvm.mxc.barrier.warp(), !dbg !201
  fence syncscope("warp") acquire, !dbg !202
  %add484.2951 = or disjoint i32 %mul477, %mul483, !dbg !203
  %220 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.2951, !dbg !204
  %add.ptr494.idx.2952 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.2953 = getelementptr inbounds i8, ptr addrspace(3) %220, i32 %add.ptr494.idx.2952, !dbg !204
  %221 = load <4 x half>, ptr addrspace(3) %add.ptr494.2953, align 8, !dbg !205
  %add479.1.2 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.1.2 = or disjoint i32 %add479.1.2, 64, !dbg !203
  %222 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.1.2, !dbg !204
  %xor490.1.2 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.1.2 = xor i32 %xor490.1.2, 8, !dbg !204
  %add.ptr494.1.2 = getelementptr inbounds i8, ptr addrspace(3) %222, i32 %add.ptr494.idx.1.2, !dbg !204
  %223 = load <4 x half>, ptr addrspace(3) %add.ptr494.1.2, align 8, !dbg !205
  %add479.2.2 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.2.2 = or disjoint i32 %add479.2.2, 128, !dbg !203
  %224 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.2.2, !dbg !204
  %xor490.2.2 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.2.2 = xor i32 %xor490.2.2, 16, !dbg !204
  %add.ptr494.2.2 = getelementptr inbounds i8, ptr addrspace(3) %224, i32 %add.ptr494.idx.2.2, !dbg !204
  %225 = load <4 x half>, ptr addrspace(3) %add.ptr494.2.2, align 8, !dbg !205
  %add479.3.2 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.3.2 = or disjoint i32 %add479.3.2, 192, !dbg !203
  %226 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.3.2, !dbg !204
  %xor490.3.2 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.3.2 = xor i32 %xor490.3.2, 24, !dbg !204
  %add.ptr494.3.2 = getelementptr inbounds i8, ptr addrspace(3) %226, i32 %add.ptr494.idx.3.2, !dbg !204
  %227 = load <4 x half>, ptr addrspace(3) %add.ptr494.3.2, align 8, !dbg !205
  %228 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %221, <4 x half> %203, <4 x float> %numerator.sroa.0.12.vec.insert2468), !dbg !206
  %229 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %223, <4 x half> %203, <4 x float> %numerator.sroa.98.28.vec.insert2624), !dbg !206
  %230 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %225, <4 x half> %203, <4 x float> %numerator.sroa.194.44.vec.insert2780), !dbg !206
  %231 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %227, <4 x half> %203, <4 x float> %numerator.sroa.290.60.vec.insert2936), !dbg !206
  %add400.2 = fadd contract float %mul300.2, %add393.3.2, !dbg !207
  br label %if.end520.2, !dbg !208

if.end520.2:                                      ; preds = %if.then.2, %if.end520.1
  %numerator.sroa.290.2 = phi <4 x float> [ %numerator.sroa.290.1, %if.end520.1 ], [ %231, %if.then.2 ], !dbg !209
  %numerator.sroa.194.2 = phi <4 x float> [ %numerator.sroa.194.1, %if.end520.1 ], [ %230, %if.then.2 ], !dbg !209
  %numerator.sroa.98.2 = phi <4 x float> [ %numerator.sroa.98.1, %if.end520.1 ], [ %229, %if.then.2 ], !dbg !209
  %numerator.sroa.0.2 = phi <4 x float> [ %numerator.sroa.0.1, %if.end520.1 ], [ %228, %if.then.2 ], !dbg !209
  %maximum.sroa.0.1.2 = phi float [ %maximum.sroa.0.1.1, %if.end520.1 ], [ %186, %if.then.2 ], !dbg !209
  %denominator.sroa.0.1.2 = phi float [ %denominator.sroa.0.1.1, %if.end520.1 ], [ %add400.2, %if.then.2 ], !dbg !209
  %232 = or disjoint i64 %19, 3, !dbg !210
  %arrayidx104.3 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %232, !dbg !65
  %233 = load i32, ptr addrspace(1) %arrayidx104.3, align 4, !dbg !65, !tbaa !30
  %mul105.3 = shl nsw i32 %233, 4, !dbg !66
  %cmp106.3 = icmp slt i32 %233, 0, !dbg !67
  %cmp108.not.3 = icmp sgt i32 %mul105.3, %1
  %or.cond.3 = select i1 %cmp106.3, i1 true, i1 %cmp108.not.3, !dbg !68
  br i1 %or.cond.3, label %if.end520.3, label %if.then.3, !dbg !68

if.then.3:                                        ; preds = %if.end520.2
  fence syncscope("warp") release, !dbg !69
  tail call void @llvm.mxc.barrier.warp(), !dbg !72
  fence syncscope("warp") acquire, !dbg !73
  %conv118.3 = zext nneg i32 %mul105.3 to i64
  %.idx.3 = shl nuw nsw i64 %conv118.3, 7
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep848, i64 %.idx.3, !dbg !74
  %.idx855.3 = shl nuw nsw i64 %conv, 17, !dbg !75
  %234 = getelementptr inbounds i8, ptr addrspace(4) %gep.3, i64 %.idx855.3, !dbg !75
  %qk_fetch.sroa.0.0.copyload3019 = load i64, ptr addrspace(4) %234, align 16, !dbg !76
  %qk_fetch.sroa.38.0..sroa_idx3038 = getelementptr inbounds i8, ptr addrspace(4) %234, i64 8, !dbg !76
  %qk_fetch.sroa.38.0.copyload3039 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx3038, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3019, ptr addrspace(3) %add.ptr39, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3039, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !77
  %gep831.1.3 = getelementptr inbounds i8, ptr addrspace(4) %234, i64 1024, !dbg !75
  %qk_fetch.sroa.0.0.copyload3020 = load i64, ptr addrspace(4) %gep831.1.3, align 16, !dbg !76
  %qk_fetch.sroa.38.0.gep831.1.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %234, i64 1032, !dbg !76
  %qk_fetch.sroa.38.0.copyload3040 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep831.1.3.sroa_idx, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3020, ptr addrspace(3) %add.ptr39.1862, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3040, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !77
  fence syncscope("warp") release, !dbg !78
  tail call void @llvm.mxc.barrier.warp(), !dbg !81
  fence syncscope("warp") acquire, !dbg !82
  %k_local.sroa.0.0.copyload.3959 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !83
  %235 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3959, <4 x half> %9, <4 x float> zeroinitializer), !dbg !84
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !83
  %236 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %10, <4 x float> %235), !dbg !84
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !83
  %237 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %11, <4 x float> %236), !dbg !84
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !83
  %238 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %12, <4 x float> %237), !dbg !84
  %add218.3 = add nuw nsw i32 %mul105.3, %mul217
  %cmp221.not.3960 = icmp sgt i32 %add218.3, %1, !dbg !85
  %scores.sroa.0.0.vec.extract2061 = extractelement <4 x float> %238, i64 0
  %spec.select3072 = select i1 %cmp221.not.3960, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2061, !dbg !86
  %cmp221.not.1.3.not = icmp slt i32 %add218.3, %1, !dbg !85
  %scores.sroa.0.4.vec.extract2156 = extractelement <4 x float> %238, i64 1, !dbg !86
  %condval.0.1.3 = select i1 %cmp221.not.1.3.not, float %scores.sroa.0.4.vec.extract2156, float 0xFFF0000000000000, !dbg !86
  %add219.2.3 = or disjoint i32 %add218.3, 2, !dbg !87
  %cmp221.not.2.3 = icmp sgt i32 %add219.2.3, %1, !dbg !85
  %scores.sroa.0.8.vec.extract2233 = extractelement <4 x float> %238, i64 2, !dbg !86
  %condval.0.2.3 = select i1 %cmp221.not.2.3, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2233, !dbg !86
  %add219.3.3 = or disjoint i32 %add218.3, 3, !dbg !87
  %cmp221.not.3.3 = icmp sgt i32 %add219.3.3, %1, !dbg !85
  %scores.sroa.0.12.vec.extract2310 = extractelement <4 x float> %238, i64 3, !dbg !86
  %condval.0.3.3 = select i1 %cmp221.not.3.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2310, !dbg !86
  %239 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3072, float 0xFFF0000000000000), !dbg !88
  %240 = tail call contract noundef float @llvm.maxnum.f32(float %239, float %condval.0.1.3), !dbg !88
  %241 = tail call contract noundef float @llvm.maxnum.f32(float %240, float %condval.0.2.3), !dbg !88
  %242 = tail call contract noundef float @llvm.maxnum.f32(float %241, float %condval.0.3.3), !dbg !88
  %243 = bitcast float %242 to i32, !dbg !92
  %244 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !95
  %245 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %244) #11, !dbg !100
  %xor.i.i770.3 = xor i32 %245, 32, !dbg !101
  %246 = and i32 %245, -64, !dbg !102
  %and.i.i771.3 = add nsw i32 %246, 64, !dbg !102
  %cmp.not.i.i772.3 = icmp slt i32 %xor.i.i770.3, %and.i.i771.3, !dbg !103
  %cond.i.i773.3 = select i1 %cmp.not.i.i772.3, i32 %xor.i.i770.3, i32 %245, !dbg !104
  %shl.i.i774.3 = shl i32 %cond.i.i773.3, 2, !dbg !105
  %247 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i774.3, i32 %243), !dbg !106
  %248 = bitcast i32 %247 to float, !dbg !107
  %249 = tail call contract noundef float @llvm.maxnum.f32(float %242, float %248), !dbg !108
  %250 = bitcast float %249 to i32, !dbg !110
  %251 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !112
  %252 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %251) #11, !dbg !115
  %xor.i.i775.3 = xor i32 %252, 16, !dbg !116
  %253 = and i32 %252, -64, !dbg !117
  %and.i.i776.3 = add nsw i32 %253, 64, !dbg !117
  %cmp.not.i.i777.3 = icmp slt i32 %xor.i.i775.3, %and.i.i776.3, !dbg !118
  %cond.i.i778.3 = select i1 %cmp.not.i.i777.3, i32 %xor.i.i775.3, i32 %252, !dbg !119
  %shl.i.i779.3 = shl i32 %cond.i.i778.3, 2, !dbg !120
  %254 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i779.3, i32 %250), !dbg !121
  %255 = bitcast i32 %254 to float, !dbg !122
  %256 = tail call contract noundef float @llvm.maxnum.f32(float %249, float %255), !dbg !123
  %257 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.2, float %256), !dbg !125
  %sub.3 = fsub contract float %maximum.sroa.0.1.2, %257, !dbg !127
  %mul263.3 = fmul contract float %sub.3, 0x3FC7154760000000, !dbg !128
  %cmp.i.i.3 = fcmp contract olt float %mul263.3, -1.260000e+02, !dbg !129
  %cond.i.i780.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i.3 = fadd contract float %mul263.3, %cond.i.i780.3, !dbg !129
  %258 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !129
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %258, !dbg !129
  %numerator.sroa.0.0.vec.extract2359 = extractelement <4 x float> %numerator.sroa.0.2, i64 0, !dbg !211
  %numerator.sroa.0.4.vec.extract2396 = extractelement <4 x float> %numerator.sroa.0.2, i64 1, !dbg !211
  %numerator.sroa.0.8.vec.extract2433 = extractelement <4 x float> %numerator.sroa.0.2, i64 2, !dbg !211
  %numerator.sroa.0.12.vec.extract2470 = extractelement <4 x float> %numerator.sroa.0.2, i64 3, !dbg !211
  %mul280.3971 = fmul contract float %mul.i.i.3, %numerator.sroa.0.0.vec.extract2359, !dbg !132
  %mul283.3972 = fmul contract float %mul.i.i.3, %numerator.sroa.0.4.vec.extract2396, !dbg !212
  %mul286.3973 = fmul contract float %mul.i.i.3, %numerator.sroa.0.8.vec.extract2433, !dbg !213
  %mul289.3974 = fmul contract float %mul.i.i.3, %numerator.sroa.0.12.vec.extract2470, !dbg !214
  %numerator.sroa.0.0.vec.insert2361 = insertelement <4 x float> poison, float %mul280.3971, i64 0, !dbg !133
  %numerator.sroa.0.4.vec.insert2398 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2361, float %mul283.3972, i64 1, !dbg !133
  %numerator.sroa.0.8.vec.insert2435 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2398, float %mul286.3973, i64 2, !dbg !133
  %numerator.sroa.0.12.vec.insert2472 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2435, float %mul289.3974, i64 3, !dbg !133
  %numerator.sroa.98.16.vec.extract2515 = extractelement <4 x float> %numerator.sroa.98.2, i64 0, !dbg !211
  %numerator.sroa.98.20.vec.extract2552 = extractelement <4 x float> %numerator.sroa.98.2, i64 1, !dbg !211
  %numerator.sroa.98.24.vec.extract2589 = extractelement <4 x float> %numerator.sroa.98.2, i64 2, !dbg !211
  %numerator.sroa.98.28.vec.extract2626 = extractelement <4 x float> %numerator.sroa.98.2, i64 3, !dbg !211
  %mul280.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.16.vec.extract2515, !dbg !132
  %mul283.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.20.vec.extract2552, !dbg !212
  %mul286.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.24.vec.extract2589, !dbg !213
  %mul289.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.28.vec.extract2626, !dbg !214
  %numerator.sroa.98.16.vec.insert2517 = insertelement <4 x float> poison, float %mul280.1.3, i64 0, !dbg !133
  %numerator.sroa.98.20.vec.insert2554 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2517, float %mul283.1.3, i64 1, !dbg !133
  %numerator.sroa.98.24.vec.insert2591 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2554, float %mul286.1.3, i64 2, !dbg !133
  %numerator.sroa.98.28.vec.insert2628 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2591, float %mul289.1.3, i64 3, !dbg !133
  %numerator.sroa.194.32.vec.extract2671 = extractelement <4 x float> %numerator.sroa.194.2, i64 0, !dbg !211
  %numerator.sroa.194.36.vec.extract2708 = extractelement <4 x float> %numerator.sroa.194.2, i64 1, !dbg !211
  %numerator.sroa.194.40.vec.extract2745 = extractelement <4 x float> %numerator.sroa.194.2, i64 2, !dbg !211
  %numerator.sroa.194.44.vec.extract2782 = extractelement <4 x float> %numerator.sroa.194.2, i64 3, !dbg !211
  %mul280.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.32.vec.extract2671, !dbg !132
  %mul283.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.36.vec.extract2708, !dbg !212
  %mul286.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.40.vec.extract2745, !dbg !213
  %mul289.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.44.vec.extract2782, !dbg !214
  %numerator.sroa.194.32.vec.insert2673 = insertelement <4 x float> poison, float %mul280.2.3, i64 0, !dbg !133
  %numerator.sroa.194.36.vec.insert2710 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2673, float %mul283.2.3, i64 1, !dbg !133
  %numerator.sroa.194.40.vec.insert2747 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2710, float %mul286.2.3, i64 2, !dbg !133
  %numerator.sroa.194.44.vec.insert2784 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2747, float %mul289.2.3, i64 3, !dbg !133
  %numerator.sroa.290.48.vec.extract2827 = extractelement <4 x float> %numerator.sroa.290.2, i64 0, !dbg !211
  %numerator.sroa.290.52.vec.extract2864 = extractelement <4 x float> %numerator.sroa.290.2, i64 1, !dbg !211
  %numerator.sroa.290.56.vec.extract2901 = extractelement <4 x float> %numerator.sroa.290.2, i64 2, !dbg !211
  %numerator.sroa.290.60.vec.extract2938 = extractelement <4 x float> %numerator.sroa.290.2, i64 3, !dbg !211
  %mul280.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.48.vec.extract2827, !dbg !132
  %mul283.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.52.vec.extract2864, !dbg !212
  %mul286.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.56.vec.extract2901, !dbg !213
  %mul289.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.60.vec.extract2938, !dbg !214
  %numerator.sroa.290.48.vec.insert2829 = insertelement <4 x float> poison, float %mul280.3.3, i64 0, !dbg !133
  %numerator.sroa.290.52.vec.insert2866 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2829, float %mul283.3.3, i64 1, !dbg !133
  %numerator.sroa.290.56.vec.insert2903 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2866, float %mul286.3.3, i64 2, !dbg !133
  %numerator.sroa.290.60.vec.insert2940 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2903, float %mul289.3.3, i64 3, !dbg !133
  %sub313.3 = fsub contract float %spec.select3072, %257, !dbg !134
  %sub317.3 = fsub contract float %condval.0.1.3, %257, !dbg !135
  %sub321.3 = fsub contract float %condval.0.2.3, %257, !dbg !136
  %sub325.3 = fsub contract float %condval.0.3.3, %257, !dbg !137
  %mul330.3 = fmul contract float %sub313.3, 0x3FC7154760000000, !dbg !138
  %mul334.3 = fmul contract float %sub317.3, 0x3FC7154760000000, !dbg !139
  %mul338.3 = fmul contract float %sub321.3, 0x3FC7154760000000, !dbg !140
  %mul342.3 = fmul contract float %sub325.3, 0x3FC7154760000000, !dbg !141
  %add347.3 = fadd contract float %mul330.3, 8.000000e+00, !dbg !142
  %add351.3 = fadd contract float %mul334.3, 8.000000e+00, !dbg !143
  %add355.3 = fadd contract float %mul338.3, 8.000000e+00, !dbg !144
  %add359.3 = fadd contract float %mul342.3, 8.000000e+00, !dbg !145
  %cmp.i.i781.3 = fcmp contract olt float %add347.3, -1.260000e+02, !dbg !146
  %cond.i.i782.3 = select contract i1 %cmp.i.i781.3, float 6.400000e+01, float 0.000000e+00, !dbg !146
  %add.i.i783.3 = fadd contract float %add347.3, %cond.i.i782.3, !dbg !146
  %259 = tail call contract float @llvm.exp2.f32(float %add.i.i783.3), !dbg !146
  %cond2.i.i784.3 = select contract i1 %cmp.i.i781.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !146
  %mul.i.i785.3 = fmul contract float %cond2.i.i784.3, %259, !dbg !146
  %cmp.i.i786.3 = fcmp contract olt float %add351.3, -1.260000e+02, !dbg !148
  %cond.i.i787.3 = select contract i1 %cmp.i.i786.3, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i788.3 = fadd contract float %add351.3, %cond.i.i787.3, !dbg !148
  %260 = tail call contract float @llvm.exp2.f32(float %add.i.i788.3), !dbg !148
  %cond2.i.i789.3 = select contract i1 %cmp.i.i786.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i790.3 = fmul contract float %cond2.i.i789.3, %260, !dbg !148
  %cmp.i.i791.3 = fcmp contract olt float %add355.3, -1.260000e+02, !dbg !150
  %cond.i.i792.3 = select contract i1 %cmp.i.i791.3, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i793.3 = fadd contract float %add355.3, %cond.i.i792.3, !dbg !150
  %261 = tail call contract float @llvm.exp2.f32(float %add.i.i793.3), !dbg !150
  %cond2.i.i794.3 = select contract i1 %cmp.i.i791.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i795.3 = fmul contract float %cond2.i.i794.3, %261, !dbg !150
  %cmp.i.i796.3 = fcmp contract olt float %add359.3, -1.260000e+02, !dbg !152
  %cond.i.i797.3 = select contract i1 %cmp.i.i796.3, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i798.3 = fadd contract float %add359.3, %cond.i.i797.3, !dbg !152
  %262 = tail call contract float @llvm.exp2.f32(float %add.i.i798.3), !dbg !152
  %cond2.i.i799.3 = select contract i1 %cmp.i.i796.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i800.3 = fmul contract float %cond2.i.i799.3, %262, !dbg !152
  %263 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !154, !noalias !162
  %264 = fptrunc float %mul.i.i785.3 to half, !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %263), !dbg !154, !noalias !162
  %265 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !167, !noalias !162
  %266 = fptrunc float %mul.i.i790.3 to half, !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %265), !dbg !167, !noalias !162
  %267 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !173
  %268 = fptrunc float %mul.i.i795.3 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %267), !dbg !169, !noalias !173
  %269 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !173
  %270 = fptrunc float %mul.i.i800.3 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %269), !dbg !178, !noalias !173
  %271 = insertelement <4 x half> poison, half %264, i64 0, !dbg !180
  %272 = insertelement <4 x half> %271, half %266, i64 1, !dbg !180
  %273 = insertelement <4 x half> %272, half %268, i64 2, !dbg !180
  %274 = insertelement <4 x half> %273, half %270, i64 3, !dbg !180
  %conv.i.i.3976 = fpext half %264 to float, !dbg !181
  %conv.i.i.1.3 = fpext half %266 to float, !dbg !181
  %conv.i.i.2.3 = fpext half %268 to float, !dbg !181
  %conv.i.i.3.3 = fpext half %270 to float, !dbg !181
  %mul300.3 = fmul contract float %denominator.sroa.0.1.2, %mul.i.i.3, !dbg !215
  fence syncscope("warp") release, !dbg !186
  tail call void @llvm.mxc.barrier.warp(), !dbg !189
  fence syncscope("warp") acquire, !dbg !190
  %275 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !191
  %276 = getelementptr inbounds i8, ptr addrspace(4) %275, i64 %.idx.3, !dbg !191
  %277 = load i64, ptr addrspace(4) %276, align 8, !dbg !192
  %add.ptr425.1.3 = getelementptr inbounds i8, ptr addrspace(4) %276, i64 128, !dbg !191
  %278 = load i64, ptr addrspace(4) %add.ptr425.1.3, align 8, !dbg !192
  %add.ptr425.2.3 = getelementptr inbounds i8, ptr addrspace(4) %276, i64 256, !dbg !191
  %279 = load i64, ptr addrspace(4) %add.ptr425.2.3, align 8, !dbg !192
  %add.ptr425.3.3 = getelementptr inbounds i8, ptr addrspace(4) %276, i64 384, !dbg !191
  %280 = load i64, ptr addrspace(4) %add.ptr425.3.3, align 8, !dbg !192
  %add393.3978 = fadd contract float %conv.i.i.3976, 0.000000e+00, !dbg !193
  %add393.1.3 = fadd contract float %add393.3978, %conv.i.i.1.3, !dbg !193
  %add393.2.3 = fadd contract float %add393.1.3, %conv.i.i.2.3, !dbg !193
  %add393.3.3 = fadd contract float %add393.2.3, %conv.i.i.3.3, !dbg !193
  %281 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul455, !dbg !194
  %add.ptr467.idx.3985 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.3986 = getelementptr inbounds i8, ptr addrspace(3) %281, i32 %add.ptr467.idx.3985, !dbg !194
  %v_column.sroa.130.0.insert.ext1484 = shl i64 %280, 48, !dbg !195
  %v_column.sroa.98.0.insert.ext1329 = shl i64 %279, 32, !dbg !195
  %v_column.sroa.98.0.insert.shift1330 = and i64 %v_column.sroa.98.0.insert.ext1329, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1332 = or disjoint i64 %v_column.sroa.130.0.insert.ext1484, %v_column.sroa.98.0.insert.shift1330, !dbg !195
  %v_column.sroa.66.0.insert.ext1174 = shl i64 %278, 16, !dbg !195
  %v_column.sroa.66.0.insert.shift1175 = and i64 %v_column.sroa.66.0.insert.ext1174, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1177 = or disjoint i64 %v_column.sroa.98.0.insert.insert1332, %v_column.sroa.66.0.insert.shift1175, !dbg !195
  %v_column.sroa.0.0.insert.ext1039 = and i64 %277, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert1041 = or disjoint i64 %v_column.sroa.66.0.insert.insert1177, %v_column.sroa.0.0.insert.ext1039, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1041, ptr addrspace(3) %add.ptr467.3986, align 8, !dbg !195
  %v_fetch.sroa.0.2.extract.shift1664 = lshr i64 %277, 16, !dbg !196
  %add456.1.3 = or disjoint i32 %mul455, 256, !dbg !197
  %282 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.1.3, !dbg !194
  %xor463.1.3 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.1.3 = xor i32 %xor463.1.3, 8, !dbg !194
  %add.ptr467.1.3 = getelementptr inbounds i8, ptr addrspace(3) %282, i32 %add.ptr467.idx.1.3, !dbg !194
  %283 = shl i64 %280, 32, !dbg !195
  %v_column.sroa.130.0.insert.ext1489 = and i64 %283, -281474976710656, !dbg !195
  %284 = shl i64 %279, 16, !dbg !195
  %v_column.sroa.98.0.insert.shift1335 = and i64 %284, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1337 = or disjoint i64 %v_column.sroa.130.0.insert.ext1489, %v_column.sroa.98.0.insert.shift1335, !dbg !195
  %v_column.sroa.66.0.insert.ext1179 = and i64 %278, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1182 = or disjoint i64 %v_column.sroa.98.0.insert.insert1337, %v_column.sroa.66.0.insert.ext1179, !dbg !195
  %v_column.sroa.0.0.insert.ext1043 = and i64 %v_fetch.sroa.0.2.extract.shift1664, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert1045 = or disjoint i64 %v_column.sroa.66.0.insert.insert1182, %v_column.sroa.0.0.insert.ext1043, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1045, ptr addrspace(3) %add.ptr467.1.3, align 8, !dbg !195
  %v_fetch.sroa.0.4.extract.shift1685 = lshr i64 %277, 32, !dbg !196
  %add456.2.3 = or disjoint i32 %mul455, 512, !dbg !197
  %285 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.2.3, !dbg !194
  %xor463.2.3 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.2.3 = xor i32 %xor463.2.3, 16, !dbg !194
  %add.ptr467.2.3 = getelementptr inbounds i8, ptr addrspace(3) %285, i32 %add.ptr467.idx.2.3, !dbg !194
  %286 = shl i64 %280, 16, !dbg !195
  %v_column.sroa.130.0.insert.ext1494 = and i64 %286, -281474976710656, !dbg !195
  %v_column.sroa.98.0.insert.ext1339 = and i64 %279, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1342 = or disjoint i64 %v_column.sroa.130.0.insert.ext1494, %v_column.sroa.98.0.insert.ext1339, !dbg !195
  %287 = lshr i64 %278, 16, !dbg !195
  %v_column.sroa.66.0.insert.shift1185 = and i64 %287, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1187 = or disjoint i64 %v_column.sroa.98.0.insert.insert1342, %v_column.sroa.66.0.insert.shift1185, !dbg !195
  %v_column.sroa.0.0.insert.ext1047 = and i64 %v_fetch.sroa.0.4.extract.shift1685, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert1049 = or disjoint i64 %v_column.sroa.66.0.insert.insert1187, %v_column.sroa.0.0.insert.ext1047, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1049, ptr addrspace(3) %add.ptr467.2.3, align 8, !dbg !195
  %v_fetch.sroa.0.6.extract.shift1706 = lshr i64 %277, 48, !dbg !196
  %v_fetch.sroa.122.30.extract.shift1937 = and i64 %280, -281474976710656, !dbg !195
  %add456.3.3 = or disjoint i32 %mul455, 768, !dbg !197
  %288 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.3.3, !dbg !194
  %xor463.3.3 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.3.3 = xor i32 %xor463.3.3, 24, !dbg !194
  %add.ptr467.3.3 = getelementptr inbounds i8, ptr addrspace(3) %288, i32 %add.ptr467.idx.3.3, !dbg !194
  %289 = lshr i64 %279, 16, !dbg !195
  %v_column.sroa.98.0.insert.shift1345 = and i64 %289, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1347 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1937, %v_column.sroa.98.0.insert.shift1345, !dbg !195
  %290 = lshr i64 %278, 32, !dbg !195
  %v_column.sroa.66.0.insert.shift1190 = and i64 %290, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1192 = or disjoint i64 %v_column.sroa.98.0.insert.insert1347, %v_column.sroa.66.0.insert.shift1190, !dbg !195
  %v_column.sroa.0.0.insert.insert1053 = or disjoint i64 %v_column.sroa.66.0.insert.insert1192, %v_fetch.sroa.0.6.extract.shift1706, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1053, ptr addrspace(3) %add.ptr467.3.3, align 8, !dbg !195
  fence syncscope("warp") release, !dbg !198
  tail call void @llvm.mxc.barrier.warp(), !dbg !201
  fence syncscope("warp") acquire, !dbg !202
  %add484.3988 = or disjoint i32 %mul477, %mul483, !dbg !203
  %291 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.3988, !dbg !204
  %add.ptr494.idx.3989 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.3990 = getelementptr inbounds i8, ptr addrspace(3) %291, i32 %add.ptr494.idx.3989, !dbg !204
  %292 = load <4 x half>, ptr addrspace(3) %add.ptr494.3990, align 8, !dbg !205
  %add479.1.3 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.1.3 = or disjoint i32 %add479.1.3, 64, !dbg !203
  %293 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.1.3, !dbg !204
  %xor490.1.3 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.1.3 = xor i32 %xor490.1.3, 8, !dbg !204
  %add.ptr494.1.3 = getelementptr inbounds i8, ptr addrspace(3) %293, i32 %add.ptr494.idx.1.3, !dbg !204
  %294 = load <4 x half>, ptr addrspace(3) %add.ptr494.1.3, align 8, !dbg !205
  %add479.2.3 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.2.3 = or disjoint i32 %add479.2.3, 128, !dbg !203
  %295 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.2.3, !dbg !204
  %xor490.2.3 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.2.3 = xor i32 %xor490.2.3, 16, !dbg !204
  %add.ptr494.2.3 = getelementptr inbounds i8, ptr addrspace(3) %295, i32 %add.ptr494.idx.2.3, !dbg !204
  %296 = load <4 x half>, ptr addrspace(3) %add.ptr494.2.3, align 8, !dbg !205
  %add479.3.3 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.3.3 = or disjoint i32 %add479.3.3, 192, !dbg !203
  %297 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.3.3, !dbg !204
  %xor490.3.3 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.3.3 = xor i32 %xor490.3.3, 24, !dbg !204
  %add.ptr494.3.3 = getelementptr inbounds i8, ptr addrspace(3) %297, i32 %add.ptr494.idx.3.3, !dbg !204
  %298 = load <4 x half>, ptr addrspace(3) %add.ptr494.3.3, align 8, !dbg !205
  %299 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %292, <4 x half> %274, <4 x float> %numerator.sroa.0.12.vec.insert2472), !dbg !206
  %300 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %294, <4 x half> %274, <4 x float> %numerator.sroa.98.28.vec.insert2628), !dbg !206
  %301 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %296, <4 x half> %274, <4 x float> %numerator.sroa.194.44.vec.insert2784), !dbg !206
  %302 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %298, <4 x half> %274, <4 x float> %numerator.sroa.290.60.vec.insert2940), !dbg !206
  %add400.3 = fadd contract float %mul300.3, %add393.3.3, !dbg !207
  br label %if.end520.3, !dbg !208

if.end520.3:                                      ; preds = %if.then.3, %if.end520.2
  %numerator.sroa.290.3 = phi <4 x float> [ %numerator.sroa.290.2, %if.end520.2 ], [ %302, %if.then.3 ], !dbg !209
  %numerator.sroa.194.3 = phi <4 x float> [ %numerator.sroa.194.2, %if.end520.2 ], [ %301, %if.then.3 ], !dbg !209
  %numerator.sroa.98.3 = phi <4 x float> [ %numerator.sroa.98.2, %if.end520.2 ], [ %300, %if.then.3 ], !dbg !209
  %numerator.sroa.0.3 = phi <4 x float> [ %numerator.sroa.0.2, %if.end520.2 ], [ %299, %if.then.3 ], !dbg !209
  %maximum.sroa.0.1.3 = phi float [ %maximum.sroa.0.1.2, %if.end520.2 ], [ %257, %if.then.3 ], !dbg !209
  %denominator.sroa.0.1.3 = phi float [ %denominator.sroa.0.1.2, %if.end520.2 ], [ %add400.3, %if.then.3 ], !dbg !209
  %303 = or disjoint i64 %19, 4, !dbg !210
  %arrayidx104.4 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %303, !dbg !65
  %304 = load i32, ptr addrspace(1) %arrayidx104.4, align 4, !dbg !65, !tbaa !30
  %mul105.4 = shl nsw i32 %304, 4, !dbg !66
  %cmp106.4 = icmp slt i32 %304, 0, !dbg !67
  %cmp108.not.4 = icmp sgt i32 %mul105.4, %1
  %or.cond.4 = select i1 %cmp106.4, i1 true, i1 %cmp108.not.4, !dbg !68
  br i1 %or.cond.4, label %if.end520.4, label %if.then.4, !dbg !68

if.then.4:                                        ; preds = %if.end520.3
  fence syncscope("warp") release, !dbg !69
  tail call void @llvm.mxc.barrier.warp(), !dbg !72
  fence syncscope("warp") acquire, !dbg !73
  %conv118.4 = zext nneg i32 %mul105.4 to i64
  %.idx.4 = shl nuw nsw i64 %conv118.4, 7
  %gep.4 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep848, i64 %.idx.4, !dbg !74
  %.idx855.4 = shl nuw nsw i64 %conv, 17, !dbg !75
  %305 = getelementptr inbounds i8, ptr addrspace(4) %gep.4, i64 %.idx855.4, !dbg !75
  %qk_fetch.sroa.0.0.copyload3021 = load i64, ptr addrspace(4) %305, align 16, !dbg !76
  %qk_fetch.sroa.38.0..sroa_idx3041 = getelementptr inbounds i8, ptr addrspace(4) %305, i64 8, !dbg !76
  %qk_fetch.sroa.38.0.copyload3042 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx3041, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3021, ptr addrspace(3) %add.ptr39, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3042, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !77
  %gep831.1.4 = getelementptr inbounds i8, ptr addrspace(4) %305, i64 1024, !dbg !75
  %qk_fetch.sroa.0.0.copyload3022 = load i64, ptr addrspace(4) %gep831.1.4, align 16, !dbg !76
  %qk_fetch.sroa.38.0.gep831.1.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %305, i64 1032, !dbg !76
  %qk_fetch.sroa.38.0.copyload3043 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep831.1.4.sroa_idx, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3022, ptr addrspace(3) %add.ptr39.1862, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3043, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !77
  fence syncscope("warp") release, !dbg !78
  tail call void @llvm.mxc.barrier.warp(), !dbg !81
  fence syncscope("warp") acquire, !dbg !82
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !83
  %306 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %9, <4 x float> zeroinitializer), !dbg !84
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !83
  %307 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %10, <4 x float> %306), !dbg !84
  %k_local.sroa.0.0.copyload.2.4 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !83
  %308 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.4, <4 x half> %11, <4 x float> %307), !dbg !84
  %k_local.sroa.0.0.copyload.3.4 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !83
  %309 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.4, <4 x half> %12, <4 x float> %308), !dbg !84
  %add218.4 = add nuw nsw i32 %mul105.4, %mul217
  %cmp221.not.4 = icmp sgt i32 %add218.4, %1, !dbg !85
  %scores.sroa.0.0.vec.extract2071 = extractelement <4 x float> %309, i64 0
  %spec.select3073 = select i1 %cmp221.not.4, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2071, !dbg !86
  %cmp221.not.1.4.not = icmp slt i32 %add218.4, %1, !dbg !85
  %scores.sroa.0.4.vec.extract2162 = extractelement <4 x float> %309, i64 1, !dbg !86
  %condval.0.1.4 = select i1 %cmp221.not.1.4.not, float %scores.sroa.0.4.vec.extract2162, float 0xFFF0000000000000, !dbg !86
  %add219.2.4 = or disjoint i32 %add218.4, 2, !dbg !87
  %cmp221.not.2.4 = icmp sgt i32 %add219.2.4, %1, !dbg !85
  %scores.sroa.0.8.vec.extract2239 = extractelement <4 x float> %309, i64 2, !dbg !86
  %condval.0.2.4 = select i1 %cmp221.not.2.4, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2239, !dbg !86
  %add219.3.4 = or disjoint i32 %add218.4, 3, !dbg !87
  %cmp221.not.3.4 = icmp sgt i32 %add219.3.4, %1, !dbg !85
  %scores.sroa.0.12.vec.extract2316 = extractelement <4 x float> %309, i64 3, !dbg !86
  %condval.0.3.4 = select i1 %cmp221.not.3.4, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2316, !dbg !86
  %310 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3073, float 0xFFF0000000000000), !dbg !88
  %311 = tail call contract noundef float @llvm.maxnum.f32(float %310, float %condval.0.1.4), !dbg !88
  %312 = tail call contract noundef float @llvm.maxnum.f32(float %311, float %condval.0.2.4), !dbg !88
  %313 = tail call contract noundef float @llvm.maxnum.f32(float %312, float %condval.0.3.4), !dbg !88
  %314 = bitcast float %313 to i32, !dbg !92
  %315 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !95
  %316 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %315) #11, !dbg !100
  %xor.i.i770.4 = xor i32 %316, 32, !dbg !101
  %317 = and i32 %316, -64, !dbg !102
  %and.i.i771.4 = add nsw i32 %317, 64, !dbg !102
  %cmp.not.i.i772.4 = icmp slt i32 %xor.i.i770.4, %and.i.i771.4, !dbg !103
  %cond.i.i773.4 = select i1 %cmp.not.i.i772.4, i32 %xor.i.i770.4, i32 %316, !dbg !104
  %shl.i.i774.4 = shl i32 %cond.i.i773.4, 2, !dbg !105
  %318 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i774.4, i32 %314), !dbg !106
  %319 = bitcast i32 %318 to float, !dbg !107
  %320 = tail call contract noundef float @llvm.maxnum.f32(float %313, float %319), !dbg !108
  %321 = bitcast float %320 to i32, !dbg !110
  %322 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !112
  %323 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %322) #11, !dbg !115
  %xor.i.i775.4 = xor i32 %323, 16, !dbg !116
  %324 = and i32 %323, -64, !dbg !117
  %and.i.i776.4 = add nsw i32 %324, 64, !dbg !117
  %cmp.not.i.i777.4 = icmp slt i32 %xor.i.i775.4, %and.i.i776.4, !dbg !118
  %cond.i.i778.4 = select i1 %cmp.not.i.i777.4, i32 %xor.i.i775.4, i32 %323, !dbg !119
  %shl.i.i779.4 = shl i32 %cond.i.i778.4, 2, !dbg !120
  %325 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i779.4, i32 %321), !dbg !121
  %326 = bitcast i32 %325 to float, !dbg !122
  %327 = tail call contract noundef float @llvm.maxnum.f32(float %320, float %326), !dbg !123
  %328 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.3, float %327), !dbg !125
  %sub.4 = fsub contract float %maximum.sroa.0.1.3, %328, !dbg !127
  %mul263.4 = fmul contract float %sub.4, 0x3FC7154760000000, !dbg !128
  %cmp.i.i.4 = fcmp contract olt float %mul263.4, -1.260000e+02, !dbg !129
  %cond.i.i780.4 = select contract i1 %cmp.i.i.4, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i.4 = fadd contract float %mul263.4, %cond.i.i780.4, !dbg !129
  %329 = tail call contract float @llvm.exp2.f32(float %add.i.i.4), !dbg !129
  %cond2.i.i.4 = select contract i1 %cmp.i.i.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i.4 = fmul contract float %cond2.i.i.4, %329, !dbg !129
  %numerator.sroa.0.0.vec.extract2363 = extractelement <4 x float> %numerator.sroa.0.3, i64 0, !dbg !211
  %numerator.sroa.0.4.vec.extract2400 = extractelement <4 x float> %numerator.sroa.0.3, i64 1, !dbg !211
  %numerator.sroa.0.8.vec.extract2437 = extractelement <4 x float> %numerator.sroa.0.3, i64 2, !dbg !211
  %numerator.sroa.0.12.vec.extract2474 = extractelement <4 x float> %numerator.sroa.0.3, i64 3, !dbg !211
  %mul280.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.0.vec.extract2363, !dbg !132
  %mul283.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.4.vec.extract2400, !dbg !212
  %mul286.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.8.vec.extract2437, !dbg !213
  %mul289.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.12.vec.extract2474, !dbg !214
  %numerator.sroa.0.0.vec.insert2365 = insertelement <4 x float> poison, float %mul280.4, i64 0, !dbg !133
  %numerator.sroa.0.4.vec.insert2402 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2365, float %mul283.4, i64 1, !dbg !133
  %numerator.sroa.0.8.vec.insert2439 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2402, float %mul286.4, i64 2, !dbg !133
  %numerator.sroa.0.12.vec.insert2476 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2439, float %mul289.4, i64 3, !dbg !133
  %numerator.sroa.98.16.vec.extract2519 = extractelement <4 x float> %numerator.sroa.98.3, i64 0, !dbg !211
  %numerator.sroa.98.20.vec.extract2556 = extractelement <4 x float> %numerator.sroa.98.3, i64 1, !dbg !211
  %numerator.sroa.98.24.vec.extract2593 = extractelement <4 x float> %numerator.sroa.98.3, i64 2, !dbg !211
  %numerator.sroa.98.28.vec.extract2630 = extractelement <4 x float> %numerator.sroa.98.3, i64 3, !dbg !211
  %mul280.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.16.vec.extract2519, !dbg !132
  %mul283.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.20.vec.extract2556, !dbg !212
  %mul286.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.24.vec.extract2593, !dbg !213
  %mul289.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.28.vec.extract2630, !dbg !214
  %numerator.sroa.98.16.vec.insert2521 = insertelement <4 x float> poison, float %mul280.1.4, i64 0, !dbg !133
  %numerator.sroa.98.20.vec.insert2558 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2521, float %mul283.1.4, i64 1, !dbg !133
  %numerator.sroa.98.24.vec.insert2595 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2558, float %mul286.1.4, i64 2, !dbg !133
  %numerator.sroa.98.28.vec.insert2632 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2595, float %mul289.1.4, i64 3, !dbg !133
  %numerator.sroa.194.32.vec.extract2675 = extractelement <4 x float> %numerator.sroa.194.3, i64 0, !dbg !211
  %numerator.sroa.194.36.vec.extract2712 = extractelement <4 x float> %numerator.sroa.194.3, i64 1, !dbg !211
  %numerator.sroa.194.40.vec.extract2749 = extractelement <4 x float> %numerator.sroa.194.3, i64 2, !dbg !211
  %numerator.sroa.194.44.vec.extract2786 = extractelement <4 x float> %numerator.sroa.194.3, i64 3, !dbg !211
  %mul280.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.32.vec.extract2675, !dbg !132
  %mul283.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.36.vec.extract2712, !dbg !212
  %mul286.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.40.vec.extract2749, !dbg !213
  %mul289.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.44.vec.extract2786, !dbg !214
  %numerator.sroa.194.32.vec.insert2677 = insertelement <4 x float> poison, float %mul280.2.4, i64 0, !dbg !133
  %numerator.sroa.194.36.vec.insert2714 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2677, float %mul283.2.4, i64 1, !dbg !133
  %numerator.sroa.194.40.vec.insert2751 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2714, float %mul286.2.4, i64 2, !dbg !133
  %numerator.sroa.194.44.vec.insert2788 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2751, float %mul289.2.4, i64 3, !dbg !133
  %numerator.sroa.290.48.vec.extract2831 = extractelement <4 x float> %numerator.sroa.290.3, i64 0, !dbg !211
  %numerator.sroa.290.52.vec.extract2868 = extractelement <4 x float> %numerator.sroa.290.3, i64 1, !dbg !211
  %numerator.sroa.290.56.vec.extract2905 = extractelement <4 x float> %numerator.sroa.290.3, i64 2, !dbg !211
  %numerator.sroa.290.60.vec.extract2942 = extractelement <4 x float> %numerator.sroa.290.3, i64 3, !dbg !211
  %mul280.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.48.vec.extract2831, !dbg !132
  %mul283.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.52.vec.extract2868, !dbg !212
  %mul286.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.56.vec.extract2905, !dbg !213
  %mul289.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.60.vec.extract2942, !dbg !214
  %numerator.sroa.290.48.vec.insert2833 = insertelement <4 x float> poison, float %mul280.3.4, i64 0, !dbg !133
  %numerator.sroa.290.52.vec.insert2870 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2833, float %mul283.3.4, i64 1, !dbg !133
  %numerator.sroa.290.56.vec.insert2907 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2870, float %mul286.3.4, i64 2, !dbg !133
  %numerator.sroa.290.60.vec.insert2944 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2907, float %mul289.3.4, i64 3, !dbg !133
  %sub313.4 = fsub contract float %spec.select3073, %328, !dbg !134
  %sub317.4 = fsub contract float %condval.0.1.4, %328, !dbg !135
  %sub321.4 = fsub contract float %condval.0.2.4, %328, !dbg !136
  %sub325.4 = fsub contract float %condval.0.3.4, %328, !dbg !137
  %mul330.4 = fmul contract float %sub313.4, 0x3FC7154760000000, !dbg !138
  %mul334.4 = fmul contract float %sub317.4, 0x3FC7154760000000, !dbg !139
  %mul338.4 = fmul contract float %sub321.4, 0x3FC7154760000000, !dbg !140
  %mul342.4 = fmul contract float %sub325.4, 0x3FC7154760000000, !dbg !141
  %add347.4 = fadd contract float %mul330.4, 8.000000e+00, !dbg !142
  %add351.4 = fadd contract float %mul334.4, 8.000000e+00, !dbg !143
  %add355.4 = fadd contract float %mul338.4, 8.000000e+00, !dbg !144
  %add359.4 = fadd contract float %mul342.4, 8.000000e+00, !dbg !145
  %cmp.i.i781.4 = fcmp contract olt float %add347.4, -1.260000e+02, !dbg !146
  %cond.i.i782.4 = select contract i1 %cmp.i.i781.4, float 6.400000e+01, float 0.000000e+00, !dbg !146
  %add.i.i783.4 = fadd contract float %add347.4, %cond.i.i782.4, !dbg !146
  %330 = tail call contract float @llvm.exp2.f32(float %add.i.i783.4), !dbg !146
  %cond2.i.i784.4 = select contract i1 %cmp.i.i781.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !146
  %mul.i.i785.4 = fmul contract float %cond2.i.i784.4, %330, !dbg !146
  %cmp.i.i786.4 = fcmp contract olt float %add351.4, -1.260000e+02, !dbg !148
  %cond.i.i787.4 = select contract i1 %cmp.i.i786.4, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i788.4 = fadd contract float %add351.4, %cond.i.i787.4, !dbg !148
  %331 = tail call contract float @llvm.exp2.f32(float %add.i.i788.4), !dbg !148
  %cond2.i.i789.4 = select contract i1 %cmp.i.i786.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i790.4 = fmul contract float %cond2.i.i789.4, %331, !dbg !148
  %cmp.i.i791.4 = fcmp contract olt float %add355.4, -1.260000e+02, !dbg !150
  %cond.i.i792.4 = select contract i1 %cmp.i.i791.4, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i793.4 = fadd contract float %add355.4, %cond.i.i792.4, !dbg !150
  %332 = tail call contract float @llvm.exp2.f32(float %add.i.i793.4), !dbg !150
  %cond2.i.i794.4 = select contract i1 %cmp.i.i791.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i795.4 = fmul contract float %cond2.i.i794.4, %332, !dbg !150
  %cmp.i.i796.4 = fcmp contract olt float %add359.4, -1.260000e+02, !dbg !152
  %cond.i.i797.4 = select contract i1 %cmp.i.i796.4, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i798.4 = fadd contract float %add359.4, %cond.i.i797.4, !dbg !152
  %333 = tail call contract float @llvm.exp2.f32(float %add.i.i798.4), !dbg !152
  %cond2.i.i799.4 = select contract i1 %cmp.i.i796.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i800.4 = fmul contract float %cond2.i.i799.4, %333, !dbg !152
  %334 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !154, !noalias !162
  %335 = fptrunc float %mul.i.i785.4 to half, !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %334), !dbg !154, !noalias !162
  %336 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !167, !noalias !162
  %337 = fptrunc float %mul.i.i790.4 to half, !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %336), !dbg !167, !noalias !162
  %338 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !173
  %339 = fptrunc float %mul.i.i795.4 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %338), !dbg !169, !noalias !173
  %340 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !173
  %341 = fptrunc float %mul.i.i800.4 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %340), !dbg !178, !noalias !173
  %342 = insertelement <4 x half> poison, half %335, i64 0, !dbg !180
  %343 = insertelement <4 x half> %342, half %337, i64 1, !dbg !180
  %344 = insertelement <4 x half> %343, half %339, i64 2, !dbg !180
  %345 = insertelement <4 x half> %344, half %341, i64 3, !dbg !180
  %conv.i.i.4 = fpext half %335 to float, !dbg !181
  %conv.i.i.1.4 = fpext half %337 to float, !dbg !181
  %conv.i.i.2.4 = fpext half %339 to float, !dbg !181
  %conv.i.i.3.4 = fpext half %341 to float, !dbg !181
  %mul300.4 = fmul contract float %denominator.sroa.0.1.3, %mul.i.i.4, !dbg !215
  fence syncscope("warp") release, !dbg !186
  tail call void @llvm.mxc.barrier.warp(), !dbg !189
  fence syncscope("warp") acquire, !dbg !190
  %346 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !191
  %347 = getelementptr inbounds i8, ptr addrspace(4) %346, i64 %.idx.4, !dbg !191
  %348 = load i64, ptr addrspace(4) %347, align 8, !dbg !192
  %add.ptr425.1.4 = getelementptr inbounds i8, ptr addrspace(4) %347, i64 128, !dbg !191
  %349 = load i64, ptr addrspace(4) %add.ptr425.1.4, align 8, !dbg !192
  %add.ptr425.2.4 = getelementptr inbounds i8, ptr addrspace(4) %347, i64 256, !dbg !191
  %350 = load i64, ptr addrspace(4) %add.ptr425.2.4, align 8, !dbg !192
  %add.ptr425.3.4 = getelementptr inbounds i8, ptr addrspace(4) %347, i64 384, !dbg !191
  %351 = load i64, ptr addrspace(4) %add.ptr425.3.4, align 8, !dbg !192
  %add393.4 = fadd contract float %conv.i.i.4, 0.000000e+00, !dbg !193
  %add393.1.4 = fadd contract float %add393.4, %conv.i.i.1.4, !dbg !193
  %add393.2.4 = fadd contract float %add393.1.4, %conv.i.i.2.4, !dbg !193
  %add393.3.4 = fadd contract float %add393.2.4, %conv.i.i.3.4, !dbg !193
  %352 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul455, !dbg !194
  %add.ptr467.idx.4 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.4 = getelementptr inbounds i8, ptr addrspace(3) %352, i32 %add.ptr467.idx.4, !dbg !194
  %v_column.sroa.130.0.insert.ext1504 = shl i64 %351, 48, !dbg !195
  %v_column.sroa.98.0.insert.ext1349 = shl i64 %350, 32, !dbg !195
  %v_column.sroa.98.0.insert.shift1350 = and i64 %v_column.sroa.98.0.insert.ext1349, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1352 = or disjoint i64 %v_column.sroa.130.0.insert.ext1504, %v_column.sroa.98.0.insert.shift1350, !dbg !195
  %v_column.sroa.66.0.insert.ext1194 = shl i64 %349, 16, !dbg !195
  %v_column.sroa.66.0.insert.shift1195 = and i64 %v_column.sroa.66.0.insert.ext1194, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1197 = or disjoint i64 %v_column.sroa.98.0.insert.insert1352, %v_column.sroa.66.0.insert.shift1195, !dbg !195
  %v_column.sroa.0.0.insert.ext1055 = and i64 %348, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert1057 = or disjoint i64 %v_column.sroa.66.0.insert.insert1197, %v_column.sroa.0.0.insert.ext1055, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1057, ptr addrspace(3) %add.ptr467.4, align 8, !dbg !195
  %v_fetch.sroa.0.2.extract.shift1667 = lshr i64 %348, 16, !dbg !196
  %add456.1.4 = or disjoint i32 %mul455, 256, !dbg !197
  %353 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.1.4, !dbg !194
  %xor463.1.4 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.1.4 = xor i32 %xor463.1.4, 8, !dbg !194
  %add.ptr467.1.4 = getelementptr inbounds i8, ptr addrspace(3) %353, i32 %add.ptr467.idx.1.4, !dbg !194
  %354 = shl i64 %351, 32, !dbg !195
  %v_column.sroa.130.0.insert.ext1509 = and i64 %354, -281474976710656, !dbg !195
  %355 = shl i64 %350, 16, !dbg !195
  %v_column.sroa.98.0.insert.shift1355 = and i64 %355, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1357 = or disjoint i64 %v_column.sroa.130.0.insert.ext1509, %v_column.sroa.98.0.insert.shift1355, !dbg !195
  %v_column.sroa.66.0.insert.ext1199 = and i64 %349, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1202 = or disjoint i64 %v_column.sroa.98.0.insert.insert1357, %v_column.sroa.66.0.insert.ext1199, !dbg !195
  %v_column.sroa.0.0.insert.ext1059 = and i64 %v_fetch.sroa.0.2.extract.shift1667, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert1061 = or disjoint i64 %v_column.sroa.66.0.insert.insert1202, %v_column.sroa.0.0.insert.ext1059, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1061, ptr addrspace(3) %add.ptr467.1.4, align 8, !dbg !195
  %v_fetch.sroa.0.4.extract.shift1688 = lshr i64 %348, 32, !dbg !196
  %add456.2.4 = or disjoint i32 %mul455, 512, !dbg !197
  %356 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.2.4, !dbg !194
  %xor463.2.4 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.2.4 = xor i32 %xor463.2.4, 16, !dbg !194
  %add.ptr467.2.4 = getelementptr inbounds i8, ptr addrspace(3) %356, i32 %add.ptr467.idx.2.4, !dbg !194
  %357 = shl i64 %351, 16, !dbg !195
  %v_column.sroa.130.0.insert.ext1514 = and i64 %357, -281474976710656, !dbg !195
  %v_column.sroa.98.0.insert.ext1359 = and i64 %350, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1362 = or disjoint i64 %v_column.sroa.130.0.insert.ext1514, %v_column.sroa.98.0.insert.ext1359, !dbg !195
  %358 = lshr i64 %349, 16, !dbg !195
  %v_column.sroa.66.0.insert.shift1205 = and i64 %358, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1207 = or disjoint i64 %v_column.sroa.98.0.insert.insert1362, %v_column.sroa.66.0.insert.shift1205, !dbg !195
  %v_column.sroa.0.0.insert.ext1063 = and i64 %v_fetch.sroa.0.4.extract.shift1688, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert1065 = or disjoint i64 %v_column.sroa.66.0.insert.insert1207, %v_column.sroa.0.0.insert.ext1063, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1065, ptr addrspace(3) %add.ptr467.2.4, align 8, !dbg !195
  %v_fetch.sroa.0.6.extract.shift1709 = lshr i64 %348, 48, !dbg !196
  %v_fetch.sroa.122.30.extract.shift1940 = and i64 %351, -281474976710656, !dbg !195
  %add456.3.4 = or disjoint i32 %mul455, 768, !dbg !197
  %359 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.3.4, !dbg !194
  %xor463.3.4 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.3.4 = xor i32 %xor463.3.4, 24, !dbg !194
  %add.ptr467.3.4 = getelementptr inbounds i8, ptr addrspace(3) %359, i32 %add.ptr467.idx.3.4, !dbg !194
  %360 = lshr i64 %350, 16, !dbg !195
  %v_column.sroa.98.0.insert.shift1365 = and i64 %360, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1367 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1940, %v_column.sroa.98.0.insert.shift1365, !dbg !195
  %361 = lshr i64 %349, 32, !dbg !195
  %v_column.sroa.66.0.insert.shift1210 = and i64 %361, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1212 = or disjoint i64 %v_column.sroa.98.0.insert.insert1367, %v_column.sroa.66.0.insert.shift1210, !dbg !195
  %v_column.sroa.0.0.insert.insert1069 = or disjoint i64 %v_column.sroa.66.0.insert.insert1212, %v_fetch.sroa.0.6.extract.shift1709, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1069, ptr addrspace(3) %add.ptr467.3.4, align 8, !dbg !195
  fence syncscope("warp") release, !dbg !198
  tail call void @llvm.mxc.barrier.warp(), !dbg !201
  fence syncscope("warp") acquire, !dbg !202
  %add484.4 = or disjoint i32 %mul477, %mul483, !dbg !203
  %362 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.4, !dbg !204
  %add.ptr494.idx.4 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.4 = getelementptr inbounds i8, ptr addrspace(3) %362, i32 %add.ptr494.idx.4, !dbg !204
  %363 = load <4 x half>, ptr addrspace(3) %add.ptr494.4, align 8, !dbg !205
  %add479.1.4 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.1.4 = or disjoint i32 %add479.1.4, 64, !dbg !203
  %364 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.1.4, !dbg !204
  %xor490.1.4 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.1.4 = xor i32 %xor490.1.4, 8, !dbg !204
  %add.ptr494.1.4 = getelementptr inbounds i8, ptr addrspace(3) %364, i32 %add.ptr494.idx.1.4, !dbg !204
  %365 = load <4 x half>, ptr addrspace(3) %add.ptr494.1.4, align 8, !dbg !205
  %add479.2.4 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.2.4 = or disjoint i32 %add479.2.4, 128, !dbg !203
  %366 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.2.4, !dbg !204
  %xor490.2.4 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.2.4 = xor i32 %xor490.2.4, 16, !dbg !204
  %add.ptr494.2.4 = getelementptr inbounds i8, ptr addrspace(3) %366, i32 %add.ptr494.idx.2.4, !dbg !204
  %367 = load <4 x half>, ptr addrspace(3) %add.ptr494.2.4, align 8, !dbg !205
  %add479.3.4 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.3.4 = or disjoint i32 %add479.3.4, 192, !dbg !203
  %368 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.3.4, !dbg !204
  %xor490.3.4 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.3.4 = xor i32 %xor490.3.4, 24, !dbg !204
  %add.ptr494.3.4 = getelementptr inbounds i8, ptr addrspace(3) %368, i32 %add.ptr494.idx.3.4, !dbg !204
  %369 = load <4 x half>, ptr addrspace(3) %add.ptr494.3.4, align 8, !dbg !205
  %370 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %363, <4 x half> %345, <4 x float> %numerator.sroa.0.12.vec.insert2476), !dbg !206
  %371 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %365, <4 x half> %345, <4 x float> %numerator.sroa.98.28.vec.insert2632), !dbg !206
  %372 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %367, <4 x half> %345, <4 x float> %numerator.sroa.194.44.vec.insert2788), !dbg !206
  %373 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %369, <4 x half> %345, <4 x float> %numerator.sroa.290.60.vec.insert2944), !dbg !206
  %add400.4 = fadd contract float %mul300.4, %add393.3.4, !dbg !207
  br label %if.end520.4, !dbg !208

if.end520.4:                                      ; preds = %if.then.4, %if.end520.3
  %numerator.sroa.290.4 = phi <4 x float> [ %numerator.sroa.290.3, %if.end520.3 ], [ %373, %if.then.4 ], !dbg !209
  %numerator.sroa.194.4 = phi <4 x float> [ %numerator.sroa.194.3, %if.end520.3 ], [ %372, %if.then.4 ], !dbg !209
  %numerator.sroa.98.4 = phi <4 x float> [ %numerator.sroa.98.3, %if.end520.3 ], [ %371, %if.then.4 ], !dbg !209
  %numerator.sroa.0.4 = phi <4 x float> [ %numerator.sroa.0.3, %if.end520.3 ], [ %370, %if.then.4 ], !dbg !209
  %maximum.sroa.0.1.4 = phi float [ %maximum.sroa.0.1.3, %if.end520.3 ], [ %328, %if.then.4 ], !dbg !209
  %denominator.sroa.0.1.4 = phi float [ %denominator.sroa.0.1.3, %if.end520.3 ], [ %add400.4, %if.then.4 ], !dbg !209
  %374 = or disjoint i64 %19, 5, !dbg !210
  %arrayidx104.5 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %374, !dbg !65
  %375 = load i32, ptr addrspace(1) %arrayidx104.5, align 4, !dbg !65, !tbaa !30
  %mul105.5 = shl nsw i32 %375, 4, !dbg !66
  %cmp106.5 = icmp slt i32 %375, 0, !dbg !67
  %cmp108.not.5 = icmp sgt i32 %mul105.5, %1
  %or.cond.5 = select i1 %cmp106.5, i1 true, i1 %cmp108.not.5, !dbg !68
  br i1 %or.cond.5, label %if.end520.5, label %if.then.5, !dbg !68

if.then.5:                                        ; preds = %if.end520.4
  fence syncscope("warp") release, !dbg !69
  tail call void @llvm.mxc.barrier.warp(), !dbg !72
  fence syncscope("warp") acquire, !dbg !73
  %conv118.5 = zext nneg i32 %mul105.5 to i64
  %.idx.5 = shl nuw nsw i64 %conv118.5, 7
  %gep.5 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep848, i64 %.idx.5, !dbg !74
  %.idx855.5 = shl nuw nsw i64 %conv, 17, !dbg !75
  %376 = getelementptr inbounds i8, ptr addrspace(4) %gep.5, i64 %.idx855.5, !dbg !75
  %qk_fetch.sroa.0.0.copyload3023 = load i64, ptr addrspace(4) %376, align 16, !dbg !76
  %qk_fetch.sroa.38.0..sroa_idx3044 = getelementptr inbounds i8, ptr addrspace(4) %376, i64 8, !dbg !76
  %qk_fetch.sroa.38.0.copyload3045 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx3044, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3023, ptr addrspace(3) %add.ptr39, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3045, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !77
  %gep831.1.5 = getelementptr inbounds i8, ptr addrspace(4) %376, i64 1024, !dbg !75
  %qk_fetch.sroa.0.0.copyload3024 = load i64, ptr addrspace(4) %gep831.1.5, align 16, !dbg !76
  %qk_fetch.sroa.38.0.gep831.1.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %376, i64 1032, !dbg !76
  %qk_fetch.sroa.38.0.copyload3046 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep831.1.5.sroa_idx, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3024, ptr addrspace(3) %add.ptr39.1862, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3046, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !77
  fence syncscope("warp") release, !dbg !78
  tail call void @llvm.mxc.barrier.warp(), !dbg !81
  fence syncscope("warp") acquire, !dbg !82
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !83
  %377 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %9, <4 x float> zeroinitializer), !dbg !84
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !83
  %378 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %10, <4 x float> %377), !dbg !84
  %k_local.sroa.0.0.copyload.2.5 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !83
  %379 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.5, <4 x half> %11, <4 x float> %378), !dbg !84
  %k_local.sroa.0.0.copyload.3.5 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !83
  %380 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.5, <4 x half> %12, <4 x float> %379), !dbg !84
  %add218.5 = add nuw nsw i32 %mul105.5, %mul217
  %cmp221.not.5 = icmp sgt i32 %add218.5, %1, !dbg !85
  %scores.sroa.0.0.vec.extract2081 = extractelement <4 x float> %380, i64 0
  %spec.select3074 = select i1 %cmp221.not.5, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2081, !dbg !86
  %cmp221.not.1.5.not = icmp slt i32 %add218.5, %1, !dbg !85
  %scores.sroa.0.4.vec.extract2168 = extractelement <4 x float> %380, i64 1, !dbg !86
  %condval.0.1.5 = select i1 %cmp221.not.1.5.not, float %scores.sroa.0.4.vec.extract2168, float 0xFFF0000000000000, !dbg !86
  %add219.2.5 = or disjoint i32 %add218.5, 2, !dbg !87
  %cmp221.not.2.5 = icmp sgt i32 %add219.2.5, %1, !dbg !85
  %scores.sroa.0.8.vec.extract2245 = extractelement <4 x float> %380, i64 2, !dbg !86
  %condval.0.2.5 = select i1 %cmp221.not.2.5, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2245, !dbg !86
  %add219.3.5 = or disjoint i32 %add218.5, 3, !dbg !87
  %cmp221.not.3.5 = icmp sgt i32 %add219.3.5, %1, !dbg !85
  %scores.sroa.0.12.vec.extract2322 = extractelement <4 x float> %380, i64 3, !dbg !86
  %condval.0.3.5 = select i1 %cmp221.not.3.5, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2322, !dbg !86
  %381 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3074, float 0xFFF0000000000000), !dbg !88
  %382 = tail call contract noundef float @llvm.maxnum.f32(float %381, float %condval.0.1.5), !dbg !88
  %383 = tail call contract noundef float @llvm.maxnum.f32(float %382, float %condval.0.2.5), !dbg !88
  %384 = tail call contract noundef float @llvm.maxnum.f32(float %383, float %condval.0.3.5), !dbg !88
  %385 = bitcast float %384 to i32, !dbg !92
  %386 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !95
  %387 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %386) #11, !dbg !100
  %xor.i.i770.5 = xor i32 %387, 32, !dbg !101
  %388 = and i32 %387, -64, !dbg !102
  %and.i.i771.5 = add nsw i32 %388, 64, !dbg !102
  %cmp.not.i.i772.5 = icmp slt i32 %xor.i.i770.5, %and.i.i771.5, !dbg !103
  %cond.i.i773.5 = select i1 %cmp.not.i.i772.5, i32 %xor.i.i770.5, i32 %387, !dbg !104
  %shl.i.i774.5 = shl i32 %cond.i.i773.5, 2, !dbg !105
  %389 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i774.5, i32 %385), !dbg !106
  %390 = bitcast i32 %389 to float, !dbg !107
  %391 = tail call contract noundef float @llvm.maxnum.f32(float %384, float %390), !dbg !108
  %392 = bitcast float %391 to i32, !dbg !110
  %393 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !112
  %394 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %393) #11, !dbg !115
  %xor.i.i775.5 = xor i32 %394, 16, !dbg !116
  %395 = and i32 %394, -64, !dbg !117
  %and.i.i776.5 = add nsw i32 %395, 64, !dbg !117
  %cmp.not.i.i777.5 = icmp slt i32 %xor.i.i775.5, %and.i.i776.5, !dbg !118
  %cond.i.i778.5 = select i1 %cmp.not.i.i777.5, i32 %xor.i.i775.5, i32 %394, !dbg !119
  %shl.i.i779.5 = shl i32 %cond.i.i778.5, 2, !dbg !120
  %396 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i779.5, i32 %392), !dbg !121
  %397 = bitcast i32 %396 to float, !dbg !122
  %398 = tail call contract noundef float @llvm.maxnum.f32(float %391, float %397), !dbg !123
  %399 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.4, float %398), !dbg !125
  %sub.5 = fsub contract float %maximum.sroa.0.1.4, %399, !dbg !127
  %mul263.5 = fmul contract float %sub.5, 0x3FC7154760000000, !dbg !128
  %cmp.i.i.5 = fcmp contract olt float %mul263.5, -1.260000e+02, !dbg !129
  %cond.i.i780.5 = select contract i1 %cmp.i.i.5, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i.5 = fadd contract float %mul263.5, %cond.i.i780.5, !dbg !129
  %400 = tail call contract float @llvm.exp2.f32(float %add.i.i.5), !dbg !129
  %cond2.i.i.5 = select contract i1 %cmp.i.i.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i.5 = fmul contract float %cond2.i.i.5, %400, !dbg !129
  %numerator.sroa.0.0.vec.extract2367 = extractelement <4 x float> %numerator.sroa.0.4, i64 0, !dbg !211
  %numerator.sroa.0.4.vec.extract2404 = extractelement <4 x float> %numerator.sroa.0.4, i64 1, !dbg !211
  %numerator.sroa.0.8.vec.extract2441 = extractelement <4 x float> %numerator.sroa.0.4, i64 2, !dbg !211
  %numerator.sroa.0.12.vec.extract2478 = extractelement <4 x float> %numerator.sroa.0.4, i64 3, !dbg !211
  %mul280.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.0.vec.extract2367, !dbg !132
  %mul283.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.4.vec.extract2404, !dbg !212
  %mul286.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.8.vec.extract2441, !dbg !213
  %mul289.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.12.vec.extract2478, !dbg !214
  %numerator.sroa.0.0.vec.insert2369 = insertelement <4 x float> poison, float %mul280.5, i64 0, !dbg !133
  %numerator.sroa.0.4.vec.insert2406 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2369, float %mul283.5, i64 1, !dbg !133
  %numerator.sroa.0.8.vec.insert2443 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2406, float %mul286.5, i64 2, !dbg !133
  %numerator.sroa.0.12.vec.insert2480 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2443, float %mul289.5, i64 3, !dbg !133
  %numerator.sroa.98.16.vec.extract2523 = extractelement <4 x float> %numerator.sroa.98.4, i64 0, !dbg !211
  %numerator.sroa.98.20.vec.extract2560 = extractelement <4 x float> %numerator.sroa.98.4, i64 1, !dbg !211
  %numerator.sroa.98.24.vec.extract2597 = extractelement <4 x float> %numerator.sroa.98.4, i64 2, !dbg !211
  %numerator.sroa.98.28.vec.extract2634 = extractelement <4 x float> %numerator.sroa.98.4, i64 3, !dbg !211
  %mul280.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.16.vec.extract2523, !dbg !132
  %mul283.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.20.vec.extract2560, !dbg !212
  %mul286.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.24.vec.extract2597, !dbg !213
  %mul289.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.28.vec.extract2634, !dbg !214
  %numerator.sroa.98.16.vec.insert2525 = insertelement <4 x float> poison, float %mul280.1.5, i64 0, !dbg !133
  %numerator.sroa.98.20.vec.insert2562 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2525, float %mul283.1.5, i64 1, !dbg !133
  %numerator.sroa.98.24.vec.insert2599 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2562, float %mul286.1.5, i64 2, !dbg !133
  %numerator.sroa.98.28.vec.insert2636 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2599, float %mul289.1.5, i64 3, !dbg !133
  %numerator.sroa.194.32.vec.extract2679 = extractelement <4 x float> %numerator.sroa.194.4, i64 0, !dbg !211
  %numerator.sroa.194.36.vec.extract2716 = extractelement <4 x float> %numerator.sroa.194.4, i64 1, !dbg !211
  %numerator.sroa.194.40.vec.extract2753 = extractelement <4 x float> %numerator.sroa.194.4, i64 2, !dbg !211
  %numerator.sroa.194.44.vec.extract2790 = extractelement <4 x float> %numerator.sroa.194.4, i64 3, !dbg !211
  %mul280.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.32.vec.extract2679, !dbg !132
  %mul283.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.36.vec.extract2716, !dbg !212
  %mul286.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.40.vec.extract2753, !dbg !213
  %mul289.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.44.vec.extract2790, !dbg !214
  %numerator.sroa.194.32.vec.insert2681 = insertelement <4 x float> poison, float %mul280.2.5, i64 0, !dbg !133
  %numerator.sroa.194.36.vec.insert2718 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2681, float %mul283.2.5, i64 1, !dbg !133
  %numerator.sroa.194.40.vec.insert2755 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2718, float %mul286.2.5, i64 2, !dbg !133
  %numerator.sroa.194.44.vec.insert2792 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2755, float %mul289.2.5, i64 3, !dbg !133
  %numerator.sroa.290.48.vec.extract2835 = extractelement <4 x float> %numerator.sroa.290.4, i64 0, !dbg !211
  %numerator.sroa.290.52.vec.extract2872 = extractelement <4 x float> %numerator.sroa.290.4, i64 1, !dbg !211
  %numerator.sroa.290.56.vec.extract2909 = extractelement <4 x float> %numerator.sroa.290.4, i64 2, !dbg !211
  %numerator.sroa.290.60.vec.extract2946 = extractelement <4 x float> %numerator.sroa.290.4, i64 3, !dbg !211
  %mul280.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.48.vec.extract2835, !dbg !132
  %mul283.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.52.vec.extract2872, !dbg !212
  %mul286.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.56.vec.extract2909, !dbg !213
  %mul289.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.60.vec.extract2946, !dbg !214
  %numerator.sroa.290.48.vec.insert2837 = insertelement <4 x float> poison, float %mul280.3.5, i64 0, !dbg !133
  %numerator.sroa.290.52.vec.insert2874 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2837, float %mul283.3.5, i64 1, !dbg !133
  %numerator.sroa.290.56.vec.insert2911 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2874, float %mul286.3.5, i64 2, !dbg !133
  %numerator.sroa.290.60.vec.insert2948 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2911, float %mul289.3.5, i64 3, !dbg !133
  %sub313.5 = fsub contract float %spec.select3074, %399, !dbg !134
  %sub317.5 = fsub contract float %condval.0.1.5, %399, !dbg !135
  %sub321.5 = fsub contract float %condval.0.2.5, %399, !dbg !136
  %sub325.5 = fsub contract float %condval.0.3.5, %399, !dbg !137
  %mul330.5 = fmul contract float %sub313.5, 0x3FC7154760000000, !dbg !138
  %mul334.5 = fmul contract float %sub317.5, 0x3FC7154760000000, !dbg !139
  %mul338.5 = fmul contract float %sub321.5, 0x3FC7154760000000, !dbg !140
  %mul342.5 = fmul contract float %sub325.5, 0x3FC7154760000000, !dbg !141
  %add347.5 = fadd contract float %mul330.5, 8.000000e+00, !dbg !142
  %add351.5 = fadd contract float %mul334.5, 8.000000e+00, !dbg !143
  %add355.5 = fadd contract float %mul338.5, 8.000000e+00, !dbg !144
  %add359.5 = fadd contract float %mul342.5, 8.000000e+00, !dbg !145
  %cmp.i.i781.5 = fcmp contract olt float %add347.5, -1.260000e+02, !dbg !146
  %cond.i.i782.5 = select contract i1 %cmp.i.i781.5, float 6.400000e+01, float 0.000000e+00, !dbg !146
  %add.i.i783.5 = fadd contract float %add347.5, %cond.i.i782.5, !dbg !146
  %401 = tail call contract float @llvm.exp2.f32(float %add.i.i783.5), !dbg !146
  %cond2.i.i784.5 = select contract i1 %cmp.i.i781.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !146
  %mul.i.i785.5 = fmul contract float %cond2.i.i784.5, %401, !dbg !146
  %cmp.i.i786.5 = fcmp contract olt float %add351.5, -1.260000e+02, !dbg !148
  %cond.i.i787.5 = select contract i1 %cmp.i.i786.5, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i788.5 = fadd contract float %add351.5, %cond.i.i787.5, !dbg !148
  %402 = tail call contract float @llvm.exp2.f32(float %add.i.i788.5), !dbg !148
  %cond2.i.i789.5 = select contract i1 %cmp.i.i786.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i790.5 = fmul contract float %cond2.i.i789.5, %402, !dbg !148
  %cmp.i.i791.5 = fcmp contract olt float %add355.5, -1.260000e+02, !dbg !150
  %cond.i.i792.5 = select contract i1 %cmp.i.i791.5, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i793.5 = fadd contract float %add355.5, %cond.i.i792.5, !dbg !150
  %403 = tail call contract float @llvm.exp2.f32(float %add.i.i793.5), !dbg !150
  %cond2.i.i794.5 = select contract i1 %cmp.i.i791.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i795.5 = fmul contract float %cond2.i.i794.5, %403, !dbg !150
  %cmp.i.i796.5 = fcmp contract olt float %add359.5, -1.260000e+02, !dbg !152
  %cond.i.i797.5 = select contract i1 %cmp.i.i796.5, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i798.5 = fadd contract float %add359.5, %cond.i.i797.5, !dbg !152
  %404 = tail call contract float @llvm.exp2.f32(float %add.i.i798.5), !dbg !152
  %cond2.i.i799.5 = select contract i1 %cmp.i.i796.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i800.5 = fmul contract float %cond2.i.i799.5, %404, !dbg !152
  %405 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !154, !noalias !162
  %406 = fptrunc float %mul.i.i785.5 to half, !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %405), !dbg !154, !noalias !162
  %407 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !167, !noalias !162
  %408 = fptrunc float %mul.i.i790.5 to half, !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %407), !dbg !167, !noalias !162
  %409 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !173
  %410 = fptrunc float %mul.i.i795.5 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %409), !dbg !169, !noalias !173
  %411 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !173
  %412 = fptrunc float %mul.i.i800.5 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %411), !dbg !178, !noalias !173
  %413 = insertelement <4 x half> poison, half %406, i64 0, !dbg !180
  %414 = insertelement <4 x half> %413, half %408, i64 1, !dbg !180
  %415 = insertelement <4 x half> %414, half %410, i64 2, !dbg !180
  %416 = insertelement <4 x half> %415, half %412, i64 3, !dbg !180
  %conv.i.i.5 = fpext half %406 to float, !dbg !181
  %conv.i.i.1.5 = fpext half %408 to float, !dbg !181
  %conv.i.i.2.5 = fpext half %410 to float, !dbg !181
  %conv.i.i.3.5 = fpext half %412 to float, !dbg !181
  %mul300.5 = fmul contract float %denominator.sroa.0.1.4, %mul.i.i.5, !dbg !215
  fence syncscope("warp") release, !dbg !186
  tail call void @llvm.mxc.barrier.warp(), !dbg !189
  fence syncscope("warp") acquire, !dbg !190
  %417 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !191
  %418 = getelementptr inbounds i8, ptr addrspace(4) %417, i64 %.idx.5, !dbg !191
  %419 = load i64, ptr addrspace(4) %418, align 8, !dbg !192
  %add.ptr425.1.5 = getelementptr inbounds i8, ptr addrspace(4) %418, i64 128, !dbg !191
  %420 = load i64, ptr addrspace(4) %add.ptr425.1.5, align 8, !dbg !192
  %add.ptr425.2.5 = getelementptr inbounds i8, ptr addrspace(4) %418, i64 256, !dbg !191
  %421 = load i64, ptr addrspace(4) %add.ptr425.2.5, align 8, !dbg !192
  %add.ptr425.3.5 = getelementptr inbounds i8, ptr addrspace(4) %418, i64 384, !dbg !191
  %422 = load i64, ptr addrspace(4) %add.ptr425.3.5, align 8, !dbg !192
  %add393.5 = fadd contract float %conv.i.i.5, 0.000000e+00, !dbg !193
  %add393.1.5 = fadd contract float %add393.5, %conv.i.i.1.5, !dbg !193
  %add393.2.5 = fadd contract float %add393.1.5, %conv.i.i.2.5, !dbg !193
  %add393.3.5 = fadd contract float %add393.2.5, %conv.i.i.3.5, !dbg !193
  %423 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul455, !dbg !194
  %add.ptr467.idx.5 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.5 = getelementptr inbounds i8, ptr addrspace(3) %423, i32 %add.ptr467.idx.5, !dbg !194
  %v_column.sroa.130.0.insert.ext1524 = shl i64 %422, 48, !dbg !195
  %v_column.sroa.98.0.insert.ext1369 = shl i64 %421, 32, !dbg !195
  %v_column.sroa.98.0.insert.shift1370 = and i64 %v_column.sroa.98.0.insert.ext1369, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1372 = or disjoint i64 %v_column.sroa.130.0.insert.ext1524, %v_column.sroa.98.0.insert.shift1370, !dbg !195
  %v_column.sroa.66.0.insert.ext1214 = shl i64 %420, 16, !dbg !195
  %v_column.sroa.66.0.insert.shift1215 = and i64 %v_column.sroa.66.0.insert.ext1214, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1217 = or disjoint i64 %v_column.sroa.98.0.insert.insert1372, %v_column.sroa.66.0.insert.shift1215, !dbg !195
  %v_column.sroa.0.0.insert.ext1071 = and i64 %419, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert1073 = or disjoint i64 %v_column.sroa.66.0.insert.insert1217, %v_column.sroa.0.0.insert.ext1071, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1073, ptr addrspace(3) %add.ptr467.5, align 8, !dbg !195
  %v_fetch.sroa.0.2.extract.shift1670 = lshr i64 %419, 16, !dbg !196
  %add456.1.5 = or disjoint i32 %mul455, 256, !dbg !197
  %424 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.1.5, !dbg !194
  %xor463.1.5 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.1.5 = xor i32 %xor463.1.5, 8, !dbg !194
  %add.ptr467.1.5 = getelementptr inbounds i8, ptr addrspace(3) %424, i32 %add.ptr467.idx.1.5, !dbg !194
  %425 = shl i64 %422, 32, !dbg !195
  %v_column.sroa.130.0.insert.ext1529 = and i64 %425, -281474976710656, !dbg !195
  %426 = shl i64 %421, 16, !dbg !195
  %v_column.sroa.98.0.insert.shift1375 = and i64 %426, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1377 = or disjoint i64 %v_column.sroa.130.0.insert.ext1529, %v_column.sroa.98.0.insert.shift1375, !dbg !195
  %v_column.sroa.66.0.insert.ext1219 = and i64 %420, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1222 = or disjoint i64 %v_column.sroa.98.0.insert.insert1377, %v_column.sroa.66.0.insert.ext1219, !dbg !195
  %v_column.sroa.0.0.insert.ext1075 = and i64 %v_fetch.sroa.0.2.extract.shift1670, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert1077 = or disjoint i64 %v_column.sroa.66.0.insert.insert1222, %v_column.sroa.0.0.insert.ext1075, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1077, ptr addrspace(3) %add.ptr467.1.5, align 8, !dbg !195
  %v_fetch.sroa.0.4.extract.shift1691 = lshr i64 %419, 32, !dbg !196
  %add456.2.5 = or disjoint i32 %mul455, 512, !dbg !197
  %427 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.2.5, !dbg !194
  %xor463.2.5 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.2.5 = xor i32 %xor463.2.5, 16, !dbg !194
  %add.ptr467.2.5 = getelementptr inbounds i8, ptr addrspace(3) %427, i32 %add.ptr467.idx.2.5, !dbg !194
  %428 = shl i64 %422, 16, !dbg !195
  %v_column.sroa.130.0.insert.ext1534 = and i64 %428, -281474976710656, !dbg !195
  %v_column.sroa.98.0.insert.ext1379 = and i64 %421, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1382 = or disjoint i64 %v_column.sroa.130.0.insert.ext1534, %v_column.sroa.98.0.insert.ext1379, !dbg !195
  %429 = lshr i64 %420, 16, !dbg !195
  %v_column.sroa.66.0.insert.shift1225 = and i64 %429, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1227 = or disjoint i64 %v_column.sroa.98.0.insert.insert1382, %v_column.sroa.66.0.insert.shift1225, !dbg !195
  %v_column.sroa.0.0.insert.ext1079 = and i64 %v_fetch.sroa.0.4.extract.shift1691, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert1081 = or disjoint i64 %v_column.sroa.66.0.insert.insert1227, %v_column.sroa.0.0.insert.ext1079, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1081, ptr addrspace(3) %add.ptr467.2.5, align 8, !dbg !195
  %v_fetch.sroa.0.6.extract.shift1712 = lshr i64 %419, 48, !dbg !196
  %v_fetch.sroa.122.30.extract.shift1943 = and i64 %422, -281474976710656, !dbg !195
  %add456.3.5 = or disjoint i32 %mul455, 768, !dbg !197
  %430 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.3.5, !dbg !194
  %xor463.3.5 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.3.5 = xor i32 %xor463.3.5, 24, !dbg !194
  %add.ptr467.3.5 = getelementptr inbounds i8, ptr addrspace(3) %430, i32 %add.ptr467.idx.3.5, !dbg !194
  %431 = lshr i64 %421, 16, !dbg !195
  %v_column.sroa.98.0.insert.shift1385 = and i64 %431, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1387 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1943, %v_column.sroa.98.0.insert.shift1385, !dbg !195
  %432 = lshr i64 %420, 32, !dbg !195
  %v_column.sroa.66.0.insert.shift1230 = and i64 %432, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1232 = or disjoint i64 %v_column.sroa.98.0.insert.insert1387, %v_column.sroa.66.0.insert.shift1230, !dbg !195
  %v_column.sroa.0.0.insert.insert1085 = or disjoint i64 %v_column.sroa.66.0.insert.insert1232, %v_fetch.sroa.0.6.extract.shift1712, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1085, ptr addrspace(3) %add.ptr467.3.5, align 8, !dbg !195
  fence syncscope("warp") release, !dbg !198
  tail call void @llvm.mxc.barrier.warp(), !dbg !201
  fence syncscope("warp") acquire, !dbg !202
  %add484.5 = or disjoint i32 %mul477, %mul483, !dbg !203
  %433 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.5, !dbg !204
  %add.ptr494.idx.5 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.5 = getelementptr inbounds i8, ptr addrspace(3) %433, i32 %add.ptr494.idx.5, !dbg !204
  %434 = load <4 x half>, ptr addrspace(3) %add.ptr494.5, align 8, !dbg !205
  %add479.1.5 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.1.5 = or disjoint i32 %add479.1.5, 64, !dbg !203
  %435 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.1.5, !dbg !204
  %xor490.1.5 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.1.5 = xor i32 %xor490.1.5, 8, !dbg !204
  %add.ptr494.1.5 = getelementptr inbounds i8, ptr addrspace(3) %435, i32 %add.ptr494.idx.1.5, !dbg !204
  %436 = load <4 x half>, ptr addrspace(3) %add.ptr494.1.5, align 8, !dbg !205
  %add479.2.5 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.2.5 = or disjoint i32 %add479.2.5, 128, !dbg !203
  %437 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.2.5, !dbg !204
  %xor490.2.5 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.2.5 = xor i32 %xor490.2.5, 16, !dbg !204
  %add.ptr494.2.5 = getelementptr inbounds i8, ptr addrspace(3) %437, i32 %add.ptr494.idx.2.5, !dbg !204
  %438 = load <4 x half>, ptr addrspace(3) %add.ptr494.2.5, align 8, !dbg !205
  %add479.3.5 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.3.5 = or disjoint i32 %add479.3.5, 192, !dbg !203
  %439 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.3.5, !dbg !204
  %xor490.3.5 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.3.5 = xor i32 %xor490.3.5, 24, !dbg !204
  %add.ptr494.3.5 = getelementptr inbounds i8, ptr addrspace(3) %439, i32 %add.ptr494.idx.3.5, !dbg !204
  %440 = load <4 x half>, ptr addrspace(3) %add.ptr494.3.5, align 8, !dbg !205
  %441 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %434, <4 x half> %416, <4 x float> %numerator.sroa.0.12.vec.insert2480), !dbg !206
  %442 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %436, <4 x half> %416, <4 x float> %numerator.sroa.98.28.vec.insert2636), !dbg !206
  %443 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %438, <4 x half> %416, <4 x float> %numerator.sroa.194.44.vec.insert2792), !dbg !206
  %444 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %440, <4 x half> %416, <4 x float> %numerator.sroa.290.60.vec.insert2948), !dbg !206
  %add400.5 = fadd contract float %mul300.5, %add393.3.5, !dbg !207
  br label %if.end520.5, !dbg !208

if.end520.5:                                      ; preds = %if.then.5, %if.end520.4
  %numerator.sroa.290.5 = phi <4 x float> [ %numerator.sroa.290.4, %if.end520.4 ], [ %444, %if.then.5 ], !dbg !209
  %numerator.sroa.194.5 = phi <4 x float> [ %numerator.sroa.194.4, %if.end520.4 ], [ %443, %if.then.5 ], !dbg !209
  %numerator.sroa.98.5 = phi <4 x float> [ %numerator.sroa.98.4, %if.end520.4 ], [ %442, %if.then.5 ], !dbg !209
  %numerator.sroa.0.5 = phi <4 x float> [ %numerator.sroa.0.4, %if.end520.4 ], [ %441, %if.then.5 ], !dbg !209
  %maximum.sroa.0.1.5 = phi float [ %maximum.sroa.0.1.4, %if.end520.4 ], [ %399, %if.then.5 ], !dbg !209
  %denominator.sroa.0.1.5 = phi float [ %denominator.sroa.0.1.4, %if.end520.4 ], [ %add400.5, %if.then.5 ], !dbg !209
  %445 = or disjoint i64 %19, 6, !dbg !210
  %arrayidx104.6 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %445, !dbg !65
  %446 = load i32, ptr addrspace(1) %arrayidx104.6, align 4, !dbg !65, !tbaa !30
  %mul105.6 = shl nsw i32 %446, 4, !dbg !66
  %cmp106.6 = icmp slt i32 %446, 0, !dbg !67
  %cmp108.not.6 = icmp sgt i32 %mul105.6, %1
  %or.cond.6 = select i1 %cmp106.6, i1 true, i1 %cmp108.not.6, !dbg !68
  br i1 %or.cond.6, label %if.end520.6, label %if.then.6, !dbg !68

if.then.6:                                        ; preds = %if.end520.5
  fence syncscope("warp") release, !dbg !69
  tail call void @llvm.mxc.barrier.warp(), !dbg !72
  fence syncscope("warp") acquire, !dbg !73
  %conv118.6 = zext nneg i32 %mul105.6 to i64
  %.idx.6 = shl nuw nsw i64 %conv118.6, 7
  %gep.6 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep848, i64 %.idx.6, !dbg !74
  %.idx855.6 = shl nuw nsw i64 %conv, 17, !dbg !75
  %447 = getelementptr inbounds i8, ptr addrspace(4) %gep.6, i64 %.idx855.6, !dbg !75
  %qk_fetch.sroa.0.0.copyload3025 = load i64, ptr addrspace(4) %447, align 16, !dbg !76
  %qk_fetch.sroa.38.0..sroa_idx3047 = getelementptr inbounds i8, ptr addrspace(4) %447, i64 8, !dbg !76
  %qk_fetch.sroa.38.0.copyload3048 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx3047, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3025, ptr addrspace(3) %add.ptr39, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3048, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !77
  %gep831.1.6 = getelementptr inbounds i8, ptr addrspace(4) %447, i64 1024, !dbg !75
  %qk_fetch.sroa.0.0.copyload3026 = load i64, ptr addrspace(4) %gep831.1.6, align 16, !dbg !76
  %qk_fetch.sroa.38.0.gep831.1.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %447, i64 1032, !dbg !76
  %qk_fetch.sroa.38.0.copyload3049 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep831.1.6.sroa_idx, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3026, ptr addrspace(3) %add.ptr39.1862, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3049, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !77
  fence syncscope("warp") release, !dbg !78
  tail call void @llvm.mxc.barrier.warp(), !dbg !81
  fence syncscope("warp") acquire, !dbg !82
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !83
  %448 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %9, <4 x float> zeroinitializer), !dbg !84
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !83
  %449 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %10, <4 x float> %448), !dbg !84
  %k_local.sroa.0.0.copyload.2.6 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !83
  %450 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.6, <4 x half> %11, <4 x float> %449), !dbg !84
  %k_local.sroa.0.0.copyload.3.6 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !83
  %451 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.6, <4 x half> %12, <4 x float> %450), !dbg !84
  %add218.6 = add nuw nsw i32 %mul105.6, %mul217
  %cmp221.not.6 = icmp sgt i32 %add218.6, %1, !dbg !85
  %scores.sroa.0.0.vec.extract2091 = extractelement <4 x float> %451, i64 0
  %spec.select3075 = select i1 %cmp221.not.6, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2091, !dbg !86
  %cmp221.not.1.6.not = icmp slt i32 %add218.6, %1, !dbg !85
  %scores.sroa.0.4.vec.extract2174 = extractelement <4 x float> %451, i64 1, !dbg !86
  %condval.0.1.6 = select i1 %cmp221.not.1.6.not, float %scores.sroa.0.4.vec.extract2174, float 0xFFF0000000000000, !dbg !86
  %add219.2.6 = or disjoint i32 %add218.6, 2, !dbg !87
  %cmp221.not.2.6 = icmp sgt i32 %add219.2.6, %1, !dbg !85
  %scores.sroa.0.8.vec.extract2251 = extractelement <4 x float> %451, i64 2, !dbg !86
  %condval.0.2.6 = select i1 %cmp221.not.2.6, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2251, !dbg !86
  %add219.3.6 = or disjoint i32 %add218.6, 3, !dbg !87
  %cmp221.not.3.6 = icmp sgt i32 %add219.3.6, %1, !dbg !85
  %scores.sroa.0.12.vec.extract2328 = extractelement <4 x float> %451, i64 3, !dbg !86
  %condval.0.3.6 = select i1 %cmp221.not.3.6, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2328, !dbg !86
  %452 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3075, float 0xFFF0000000000000), !dbg !88
  %453 = tail call contract noundef float @llvm.maxnum.f32(float %452, float %condval.0.1.6), !dbg !88
  %454 = tail call contract noundef float @llvm.maxnum.f32(float %453, float %condval.0.2.6), !dbg !88
  %455 = tail call contract noundef float @llvm.maxnum.f32(float %454, float %condval.0.3.6), !dbg !88
  %456 = bitcast float %455 to i32, !dbg !92
  %457 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !95
  %458 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %457) #11, !dbg !100
  %xor.i.i770.6 = xor i32 %458, 32, !dbg !101
  %459 = and i32 %458, -64, !dbg !102
  %and.i.i771.6 = add nsw i32 %459, 64, !dbg !102
  %cmp.not.i.i772.6 = icmp slt i32 %xor.i.i770.6, %and.i.i771.6, !dbg !103
  %cond.i.i773.6 = select i1 %cmp.not.i.i772.6, i32 %xor.i.i770.6, i32 %458, !dbg !104
  %shl.i.i774.6 = shl i32 %cond.i.i773.6, 2, !dbg !105
  %460 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i774.6, i32 %456), !dbg !106
  %461 = bitcast i32 %460 to float, !dbg !107
  %462 = tail call contract noundef float @llvm.maxnum.f32(float %455, float %461), !dbg !108
  %463 = bitcast float %462 to i32, !dbg !110
  %464 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !112
  %465 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %464) #11, !dbg !115
  %xor.i.i775.6 = xor i32 %465, 16, !dbg !116
  %466 = and i32 %465, -64, !dbg !117
  %and.i.i776.6 = add nsw i32 %466, 64, !dbg !117
  %cmp.not.i.i777.6 = icmp slt i32 %xor.i.i775.6, %and.i.i776.6, !dbg !118
  %cond.i.i778.6 = select i1 %cmp.not.i.i777.6, i32 %xor.i.i775.6, i32 %465, !dbg !119
  %shl.i.i779.6 = shl i32 %cond.i.i778.6, 2, !dbg !120
  %467 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i779.6, i32 %463), !dbg !121
  %468 = bitcast i32 %467 to float, !dbg !122
  %469 = tail call contract noundef float @llvm.maxnum.f32(float %462, float %468), !dbg !123
  %470 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.5, float %469), !dbg !125
  %sub.6 = fsub contract float %maximum.sroa.0.1.5, %470, !dbg !127
  %mul263.6 = fmul contract float %sub.6, 0x3FC7154760000000, !dbg !128
  %cmp.i.i.6 = fcmp contract olt float %mul263.6, -1.260000e+02, !dbg !129
  %cond.i.i780.6 = select contract i1 %cmp.i.i.6, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i.6 = fadd contract float %mul263.6, %cond.i.i780.6, !dbg !129
  %471 = tail call contract float @llvm.exp2.f32(float %add.i.i.6), !dbg !129
  %cond2.i.i.6 = select contract i1 %cmp.i.i.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i.6 = fmul contract float %cond2.i.i.6, %471, !dbg !129
  %numerator.sroa.0.0.vec.extract2371 = extractelement <4 x float> %numerator.sroa.0.5, i64 0, !dbg !211
  %numerator.sroa.0.4.vec.extract2408 = extractelement <4 x float> %numerator.sroa.0.5, i64 1, !dbg !211
  %numerator.sroa.0.8.vec.extract2445 = extractelement <4 x float> %numerator.sroa.0.5, i64 2, !dbg !211
  %numerator.sroa.0.12.vec.extract2482 = extractelement <4 x float> %numerator.sroa.0.5, i64 3, !dbg !211
  %mul280.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.0.vec.extract2371, !dbg !132
  %mul283.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.4.vec.extract2408, !dbg !212
  %mul286.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.8.vec.extract2445, !dbg !213
  %mul289.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.12.vec.extract2482, !dbg !214
  %numerator.sroa.0.0.vec.insert2373 = insertelement <4 x float> poison, float %mul280.6, i64 0, !dbg !133
  %numerator.sroa.0.4.vec.insert2410 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2373, float %mul283.6, i64 1, !dbg !133
  %numerator.sroa.0.8.vec.insert2447 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2410, float %mul286.6, i64 2, !dbg !133
  %numerator.sroa.0.12.vec.insert2484 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2447, float %mul289.6, i64 3, !dbg !133
  %numerator.sroa.98.16.vec.extract2527 = extractelement <4 x float> %numerator.sroa.98.5, i64 0, !dbg !211
  %numerator.sroa.98.20.vec.extract2564 = extractelement <4 x float> %numerator.sroa.98.5, i64 1, !dbg !211
  %numerator.sroa.98.24.vec.extract2601 = extractelement <4 x float> %numerator.sroa.98.5, i64 2, !dbg !211
  %numerator.sroa.98.28.vec.extract2638 = extractelement <4 x float> %numerator.sroa.98.5, i64 3, !dbg !211
  %mul280.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.16.vec.extract2527, !dbg !132
  %mul283.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.20.vec.extract2564, !dbg !212
  %mul286.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.24.vec.extract2601, !dbg !213
  %mul289.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.28.vec.extract2638, !dbg !214
  %numerator.sroa.98.16.vec.insert2529 = insertelement <4 x float> poison, float %mul280.1.6, i64 0, !dbg !133
  %numerator.sroa.98.20.vec.insert2566 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2529, float %mul283.1.6, i64 1, !dbg !133
  %numerator.sroa.98.24.vec.insert2603 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2566, float %mul286.1.6, i64 2, !dbg !133
  %numerator.sroa.98.28.vec.insert2640 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2603, float %mul289.1.6, i64 3, !dbg !133
  %numerator.sroa.194.32.vec.extract2683 = extractelement <4 x float> %numerator.sroa.194.5, i64 0, !dbg !211
  %numerator.sroa.194.36.vec.extract2720 = extractelement <4 x float> %numerator.sroa.194.5, i64 1, !dbg !211
  %numerator.sroa.194.40.vec.extract2757 = extractelement <4 x float> %numerator.sroa.194.5, i64 2, !dbg !211
  %numerator.sroa.194.44.vec.extract2794 = extractelement <4 x float> %numerator.sroa.194.5, i64 3, !dbg !211
  %mul280.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.32.vec.extract2683, !dbg !132
  %mul283.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.36.vec.extract2720, !dbg !212
  %mul286.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.40.vec.extract2757, !dbg !213
  %mul289.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.44.vec.extract2794, !dbg !214
  %numerator.sroa.194.32.vec.insert2685 = insertelement <4 x float> poison, float %mul280.2.6, i64 0, !dbg !133
  %numerator.sroa.194.36.vec.insert2722 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2685, float %mul283.2.6, i64 1, !dbg !133
  %numerator.sroa.194.40.vec.insert2759 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2722, float %mul286.2.6, i64 2, !dbg !133
  %numerator.sroa.194.44.vec.insert2796 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2759, float %mul289.2.6, i64 3, !dbg !133
  %numerator.sroa.290.48.vec.extract2839 = extractelement <4 x float> %numerator.sroa.290.5, i64 0, !dbg !211
  %numerator.sroa.290.52.vec.extract2876 = extractelement <4 x float> %numerator.sroa.290.5, i64 1, !dbg !211
  %numerator.sroa.290.56.vec.extract2913 = extractelement <4 x float> %numerator.sroa.290.5, i64 2, !dbg !211
  %numerator.sroa.290.60.vec.extract2950 = extractelement <4 x float> %numerator.sroa.290.5, i64 3, !dbg !211
  %mul280.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.48.vec.extract2839, !dbg !132
  %mul283.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.52.vec.extract2876, !dbg !212
  %mul286.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.56.vec.extract2913, !dbg !213
  %mul289.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.60.vec.extract2950, !dbg !214
  %numerator.sroa.290.48.vec.insert2841 = insertelement <4 x float> poison, float %mul280.3.6, i64 0, !dbg !133
  %numerator.sroa.290.52.vec.insert2878 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2841, float %mul283.3.6, i64 1, !dbg !133
  %numerator.sroa.290.56.vec.insert2915 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2878, float %mul286.3.6, i64 2, !dbg !133
  %numerator.sroa.290.60.vec.insert2952 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2915, float %mul289.3.6, i64 3, !dbg !133
  %sub313.6 = fsub contract float %spec.select3075, %470, !dbg !134
  %sub317.6 = fsub contract float %condval.0.1.6, %470, !dbg !135
  %sub321.6 = fsub contract float %condval.0.2.6, %470, !dbg !136
  %sub325.6 = fsub contract float %condval.0.3.6, %470, !dbg !137
  %mul330.6 = fmul contract float %sub313.6, 0x3FC7154760000000, !dbg !138
  %mul334.6 = fmul contract float %sub317.6, 0x3FC7154760000000, !dbg !139
  %mul338.6 = fmul contract float %sub321.6, 0x3FC7154760000000, !dbg !140
  %mul342.6 = fmul contract float %sub325.6, 0x3FC7154760000000, !dbg !141
  %add347.6 = fadd contract float %mul330.6, 8.000000e+00, !dbg !142
  %add351.6 = fadd contract float %mul334.6, 8.000000e+00, !dbg !143
  %add355.6 = fadd contract float %mul338.6, 8.000000e+00, !dbg !144
  %add359.6 = fadd contract float %mul342.6, 8.000000e+00, !dbg !145
  %cmp.i.i781.6 = fcmp contract olt float %add347.6, -1.260000e+02, !dbg !146
  %cond.i.i782.6 = select contract i1 %cmp.i.i781.6, float 6.400000e+01, float 0.000000e+00, !dbg !146
  %add.i.i783.6 = fadd contract float %add347.6, %cond.i.i782.6, !dbg !146
  %472 = tail call contract float @llvm.exp2.f32(float %add.i.i783.6), !dbg !146
  %cond2.i.i784.6 = select contract i1 %cmp.i.i781.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !146
  %mul.i.i785.6 = fmul contract float %cond2.i.i784.6, %472, !dbg !146
  %cmp.i.i786.6 = fcmp contract olt float %add351.6, -1.260000e+02, !dbg !148
  %cond.i.i787.6 = select contract i1 %cmp.i.i786.6, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i788.6 = fadd contract float %add351.6, %cond.i.i787.6, !dbg !148
  %473 = tail call contract float @llvm.exp2.f32(float %add.i.i788.6), !dbg !148
  %cond2.i.i789.6 = select contract i1 %cmp.i.i786.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i790.6 = fmul contract float %cond2.i.i789.6, %473, !dbg !148
  %cmp.i.i791.6 = fcmp contract olt float %add355.6, -1.260000e+02, !dbg !150
  %cond.i.i792.6 = select contract i1 %cmp.i.i791.6, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i793.6 = fadd contract float %add355.6, %cond.i.i792.6, !dbg !150
  %474 = tail call contract float @llvm.exp2.f32(float %add.i.i793.6), !dbg !150
  %cond2.i.i794.6 = select contract i1 %cmp.i.i791.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i795.6 = fmul contract float %cond2.i.i794.6, %474, !dbg !150
  %cmp.i.i796.6 = fcmp contract olt float %add359.6, -1.260000e+02, !dbg !152
  %cond.i.i797.6 = select contract i1 %cmp.i.i796.6, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i798.6 = fadd contract float %add359.6, %cond.i.i797.6, !dbg !152
  %475 = tail call contract float @llvm.exp2.f32(float %add.i.i798.6), !dbg !152
  %cond2.i.i799.6 = select contract i1 %cmp.i.i796.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i800.6 = fmul contract float %cond2.i.i799.6, %475, !dbg !152
  %476 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !154, !noalias !162
  %477 = fptrunc float %mul.i.i785.6 to half, !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %476), !dbg !154, !noalias !162
  %478 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !167, !noalias !162
  %479 = fptrunc float %mul.i.i790.6 to half, !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %478), !dbg !167, !noalias !162
  %480 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !173
  %481 = fptrunc float %mul.i.i795.6 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %480), !dbg !169, !noalias !173
  %482 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !173
  %483 = fptrunc float %mul.i.i800.6 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %482), !dbg !178, !noalias !173
  %484 = insertelement <4 x half> poison, half %477, i64 0, !dbg !180
  %485 = insertelement <4 x half> %484, half %479, i64 1, !dbg !180
  %486 = insertelement <4 x half> %485, half %481, i64 2, !dbg !180
  %487 = insertelement <4 x half> %486, half %483, i64 3, !dbg !180
  %conv.i.i.6 = fpext half %477 to float, !dbg !181
  %conv.i.i.1.6 = fpext half %479 to float, !dbg !181
  %conv.i.i.2.6 = fpext half %481 to float, !dbg !181
  %conv.i.i.3.6 = fpext half %483 to float, !dbg !181
  %mul300.6 = fmul contract float %denominator.sroa.0.1.5, %mul.i.i.6, !dbg !215
  fence syncscope("warp") release, !dbg !186
  tail call void @llvm.mxc.barrier.warp(), !dbg !189
  fence syncscope("warp") acquire, !dbg !190
  %488 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !191
  %489 = getelementptr inbounds i8, ptr addrspace(4) %488, i64 %.idx.6, !dbg !191
  %490 = load i64, ptr addrspace(4) %489, align 8, !dbg !192
  %add.ptr425.1.6 = getelementptr inbounds i8, ptr addrspace(4) %489, i64 128, !dbg !191
  %491 = load i64, ptr addrspace(4) %add.ptr425.1.6, align 8, !dbg !192
  %add.ptr425.2.6 = getelementptr inbounds i8, ptr addrspace(4) %489, i64 256, !dbg !191
  %492 = load i64, ptr addrspace(4) %add.ptr425.2.6, align 8, !dbg !192
  %add.ptr425.3.6 = getelementptr inbounds i8, ptr addrspace(4) %489, i64 384, !dbg !191
  %493 = load i64, ptr addrspace(4) %add.ptr425.3.6, align 8, !dbg !192
  %add393.6 = fadd contract float %conv.i.i.6, 0.000000e+00, !dbg !193
  %add393.1.6 = fadd contract float %add393.6, %conv.i.i.1.6, !dbg !193
  %add393.2.6 = fadd contract float %add393.1.6, %conv.i.i.2.6, !dbg !193
  %add393.3.6 = fadd contract float %add393.2.6, %conv.i.i.3.6, !dbg !193
  %494 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul455, !dbg !194
  %add.ptr467.idx.6 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.6 = getelementptr inbounds i8, ptr addrspace(3) %494, i32 %add.ptr467.idx.6, !dbg !194
  %v_column.sroa.130.0.insert.ext1544 = shl i64 %493, 48, !dbg !195
  %v_column.sroa.98.0.insert.ext1389 = shl i64 %492, 32, !dbg !195
  %v_column.sroa.98.0.insert.shift1390 = and i64 %v_column.sroa.98.0.insert.ext1389, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1392 = or disjoint i64 %v_column.sroa.130.0.insert.ext1544, %v_column.sroa.98.0.insert.shift1390, !dbg !195
  %v_column.sroa.66.0.insert.ext1234 = shl i64 %491, 16, !dbg !195
  %v_column.sroa.66.0.insert.shift1235 = and i64 %v_column.sroa.66.0.insert.ext1234, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1237 = or disjoint i64 %v_column.sroa.98.0.insert.insert1392, %v_column.sroa.66.0.insert.shift1235, !dbg !195
  %v_column.sroa.0.0.insert.ext1087 = and i64 %490, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert1089 = or disjoint i64 %v_column.sroa.66.0.insert.insert1237, %v_column.sroa.0.0.insert.ext1087, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1089, ptr addrspace(3) %add.ptr467.6, align 8, !dbg !195
  %v_fetch.sroa.0.2.extract.shift1673 = lshr i64 %490, 16, !dbg !196
  %add456.1.6 = or disjoint i32 %mul455, 256, !dbg !197
  %495 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.1.6, !dbg !194
  %xor463.1.6 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.1.6 = xor i32 %xor463.1.6, 8, !dbg !194
  %add.ptr467.1.6 = getelementptr inbounds i8, ptr addrspace(3) %495, i32 %add.ptr467.idx.1.6, !dbg !194
  %496 = shl i64 %493, 32, !dbg !195
  %v_column.sroa.130.0.insert.ext1549 = and i64 %496, -281474976710656, !dbg !195
  %497 = shl i64 %492, 16, !dbg !195
  %v_column.sroa.98.0.insert.shift1395 = and i64 %497, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1397 = or disjoint i64 %v_column.sroa.130.0.insert.ext1549, %v_column.sroa.98.0.insert.shift1395, !dbg !195
  %v_column.sroa.66.0.insert.ext1239 = and i64 %491, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1242 = or disjoint i64 %v_column.sroa.98.0.insert.insert1397, %v_column.sroa.66.0.insert.ext1239, !dbg !195
  %v_column.sroa.0.0.insert.ext1091 = and i64 %v_fetch.sroa.0.2.extract.shift1673, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert1093 = or disjoint i64 %v_column.sroa.66.0.insert.insert1242, %v_column.sroa.0.0.insert.ext1091, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1093, ptr addrspace(3) %add.ptr467.1.6, align 8, !dbg !195
  %v_fetch.sroa.0.4.extract.shift1694 = lshr i64 %490, 32, !dbg !196
  %add456.2.6 = or disjoint i32 %mul455, 512, !dbg !197
  %498 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.2.6, !dbg !194
  %xor463.2.6 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.2.6 = xor i32 %xor463.2.6, 16, !dbg !194
  %add.ptr467.2.6 = getelementptr inbounds i8, ptr addrspace(3) %498, i32 %add.ptr467.idx.2.6, !dbg !194
  %499 = shl i64 %493, 16, !dbg !195
  %v_column.sroa.130.0.insert.ext1554 = and i64 %499, -281474976710656, !dbg !195
  %v_column.sroa.98.0.insert.ext1399 = and i64 %492, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1402 = or disjoint i64 %v_column.sroa.130.0.insert.ext1554, %v_column.sroa.98.0.insert.ext1399, !dbg !195
  %500 = lshr i64 %491, 16, !dbg !195
  %v_column.sroa.66.0.insert.shift1245 = and i64 %500, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1247 = or disjoint i64 %v_column.sroa.98.0.insert.insert1402, %v_column.sroa.66.0.insert.shift1245, !dbg !195
  %v_column.sroa.0.0.insert.ext1095 = and i64 %v_fetch.sroa.0.4.extract.shift1694, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert1097 = or disjoint i64 %v_column.sroa.66.0.insert.insert1247, %v_column.sroa.0.0.insert.ext1095, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1097, ptr addrspace(3) %add.ptr467.2.6, align 8, !dbg !195
  %v_fetch.sroa.0.6.extract.shift1715 = lshr i64 %490, 48, !dbg !196
  %v_fetch.sroa.122.30.extract.shift1946 = and i64 %493, -281474976710656, !dbg !195
  %add456.3.6 = or disjoint i32 %mul455, 768, !dbg !197
  %501 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.3.6, !dbg !194
  %xor463.3.6 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.3.6 = xor i32 %xor463.3.6, 24, !dbg !194
  %add.ptr467.3.6 = getelementptr inbounds i8, ptr addrspace(3) %501, i32 %add.ptr467.idx.3.6, !dbg !194
  %502 = lshr i64 %492, 16, !dbg !195
  %v_column.sroa.98.0.insert.shift1405 = and i64 %502, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1407 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1946, %v_column.sroa.98.0.insert.shift1405, !dbg !195
  %503 = lshr i64 %491, 32, !dbg !195
  %v_column.sroa.66.0.insert.shift1250 = and i64 %503, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1252 = or disjoint i64 %v_column.sroa.98.0.insert.insert1407, %v_column.sroa.66.0.insert.shift1250, !dbg !195
  %v_column.sroa.0.0.insert.insert1101 = or disjoint i64 %v_column.sroa.66.0.insert.insert1252, %v_fetch.sroa.0.6.extract.shift1715, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1101, ptr addrspace(3) %add.ptr467.3.6, align 8, !dbg !195
  fence syncscope("warp") release, !dbg !198
  tail call void @llvm.mxc.barrier.warp(), !dbg !201
  fence syncscope("warp") acquire, !dbg !202
  %add484.6 = or disjoint i32 %mul477, %mul483, !dbg !203
  %504 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.6, !dbg !204
  %add.ptr494.idx.6 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.6 = getelementptr inbounds i8, ptr addrspace(3) %504, i32 %add.ptr494.idx.6, !dbg !204
  %505 = load <4 x half>, ptr addrspace(3) %add.ptr494.6, align 8, !dbg !205
  %add479.1.6 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.1.6 = or disjoint i32 %add479.1.6, 64, !dbg !203
  %506 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.1.6, !dbg !204
  %xor490.1.6 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.1.6 = xor i32 %xor490.1.6, 8, !dbg !204
  %add.ptr494.1.6 = getelementptr inbounds i8, ptr addrspace(3) %506, i32 %add.ptr494.idx.1.6, !dbg !204
  %507 = load <4 x half>, ptr addrspace(3) %add.ptr494.1.6, align 8, !dbg !205
  %add479.2.6 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.2.6 = or disjoint i32 %add479.2.6, 128, !dbg !203
  %508 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.2.6, !dbg !204
  %xor490.2.6 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.2.6 = xor i32 %xor490.2.6, 16, !dbg !204
  %add.ptr494.2.6 = getelementptr inbounds i8, ptr addrspace(3) %508, i32 %add.ptr494.idx.2.6, !dbg !204
  %509 = load <4 x half>, ptr addrspace(3) %add.ptr494.2.6, align 8, !dbg !205
  %add479.3.6 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.3.6 = or disjoint i32 %add479.3.6, 192, !dbg !203
  %510 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.3.6, !dbg !204
  %xor490.3.6 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.3.6 = xor i32 %xor490.3.6, 24, !dbg !204
  %add.ptr494.3.6 = getelementptr inbounds i8, ptr addrspace(3) %510, i32 %add.ptr494.idx.3.6, !dbg !204
  %511 = load <4 x half>, ptr addrspace(3) %add.ptr494.3.6, align 8, !dbg !205
  %512 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %505, <4 x half> %487, <4 x float> %numerator.sroa.0.12.vec.insert2484), !dbg !206
  %513 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %507, <4 x half> %487, <4 x float> %numerator.sroa.98.28.vec.insert2640), !dbg !206
  %514 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %509, <4 x half> %487, <4 x float> %numerator.sroa.194.44.vec.insert2796), !dbg !206
  %515 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %511, <4 x half> %487, <4 x float> %numerator.sroa.290.60.vec.insert2952), !dbg !206
  %add400.6 = fadd contract float %mul300.6, %add393.3.6, !dbg !207
  br label %if.end520.6, !dbg !208

if.end520.6:                                      ; preds = %if.then.6, %if.end520.5
  %numerator.sroa.290.6 = phi <4 x float> [ %numerator.sroa.290.5, %if.end520.5 ], [ %515, %if.then.6 ], !dbg !209
  %numerator.sroa.194.6 = phi <4 x float> [ %numerator.sroa.194.5, %if.end520.5 ], [ %514, %if.then.6 ], !dbg !209
  %numerator.sroa.98.6 = phi <4 x float> [ %numerator.sroa.98.5, %if.end520.5 ], [ %513, %if.then.6 ], !dbg !209
  %numerator.sroa.0.6 = phi <4 x float> [ %numerator.sroa.0.5, %if.end520.5 ], [ %512, %if.then.6 ], !dbg !209
  %maximum.sroa.0.1.6 = phi float [ %maximum.sroa.0.1.5, %if.end520.5 ], [ %470, %if.then.6 ], !dbg !209
  %denominator.sroa.0.1.6 = phi float [ %denominator.sroa.0.1.5, %if.end520.5 ], [ %add400.6, %if.then.6 ], !dbg !209
  %516 = or disjoint i64 %19, 7, !dbg !210
  %arrayidx104.7 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %516, !dbg !65
  %517 = load i32, ptr addrspace(1) %arrayidx104.7, align 4, !dbg !65, !tbaa !30
  %mul105.7 = shl nsw i32 %517, 4, !dbg !66
  %cmp106.7 = icmp slt i32 %517, 0, !dbg !67
  %cmp108.not.7 = icmp sgt i32 %mul105.7, %1
  %or.cond.7 = select i1 %cmp106.7, i1 true, i1 %cmp108.not.7, !dbg !68
  br i1 %or.cond.7, label %if.end520.7, label %if.then.7, !dbg !68

if.then.7:                                        ; preds = %if.end520.6
  fence syncscope("warp") release, !dbg !69
  tail call void @llvm.mxc.barrier.warp(), !dbg !72
  fence syncscope("warp") acquire, !dbg !73
  %conv118.7 = zext nneg i32 %mul105.7 to i64
  %.idx.7 = shl nuw nsw i64 %conv118.7, 7
  %gep.7 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep848, i64 %.idx.7, !dbg !74
  %.idx855.7 = shl nuw nsw i64 %conv, 17, !dbg !75
  %518 = getelementptr inbounds i8, ptr addrspace(4) %gep.7, i64 %.idx855.7, !dbg !75
  %qk_fetch.sroa.0.0.copyload3027 = load i64, ptr addrspace(4) %518, align 16, !dbg !76
  %qk_fetch.sroa.38.0..sroa_idx3050 = getelementptr inbounds i8, ptr addrspace(4) %518, i64 8, !dbg !76
  %qk_fetch.sroa.38.0.copyload3051 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx3050, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3027, ptr addrspace(3) %add.ptr39, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3051, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !77
  %gep831.1.7 = getelementptr inbounds i8, ptr addrspace(4) %518, i64 1024, !dbg !75
  %qk_fetch.sroa.0.0.copyload3028 = load i64, ptr addrspace(4) %gep831.1.7, align 16, !dbg !76
  %qk_fetch.sroa.38.0.gep831.1.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %518, i64 1032, !dbg !76
  %qk_fetch.sroa.38.0.copyload3052 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.gep831.1.7.sroa_idx, align 8, !dbg !76
  store i64 %qk_fetch.sroa.0.0.copyload3028, ptr addrspace(3) %add.ptr39.1862, align 8, !dbg !77
  store i64 %qk_fetch.sroa.38.0.copyload3052, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !77
  fence syncscope("warp") release, !dbg !78
  tail call void @llvm.mxc.barrier.warp(), !dbg !81
  fence syncscope("warp") acquire, !dbg !82
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !83
  %519 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %9, <4 x float> zeroinitializer), !dbg !84
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !83
  %520 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %10, <4 x float> %519), !dbg !84
  %k_local.sroa.0.0.copyload.2.7 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !83
  %521 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.7, <4 x half> %11, <4 x float> %520), !dbg !84
  %k_local.sroa.0.0.copyload.3.7 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !83
  %522 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.7, <4 x half> %12, <4 x float> %521), !dbg !84
  %add218.7 = add nuw nsw i32 %mul105.7, %mul217
  %cmp221.not.7 = icmp sgt i32 %add218.7, %1, !dbg !85
  %scores.sroa.0.0.vec.extract2101 = extractelement <4 x float> %522, i64 0
  %spec.select3076 = select i1 %cmp221.not.7, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2101, !dbg !86
  %cmp221.not.1.7.not = icmp slt i32 %add218.7, %1, !dbg !85
  %scores.sroa.0.4.vec.extract2180 = extractelement <4 x float> %522, i64 1, !dbg !86
  %condval.0.1.7 = select i1 %cmp221.not.1.7.not, float %scores.sroa.0.4.vec.extract2180, float 0xFFF0000000000000, !dbg !86
  %add219.2.7 = or disjoint i32 %add218.7, 2, !dbg !87
  %cmp221.not.2.7 = icmp sgt i32 %add219.2.7, %1, !dbg !85
  %scores.sroa.0.8.vec.extract2257 = extractelement <4 x float> %522, i64 2, !dbg !86
  %condval.0.2.7 = select i1 %cmp221.not.2.7, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2257, !dbg !86
  %add219.3.7 = or disjoint i32 %add218.7, 3, !dbg !87
  %cmp221.not.3.7 = icmp sgt i32 %add219.3.7, %1, !dbg !85
  %scores.sroa.0.12.vec.extract2334 = extractelement <4 x float> %522, i64 3, !dbg !86
  %condval.0.3.7 = select i1 %cmp221.not.3.7, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2334, !dbg !86
  %523 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3076, float 0xFFF0000000000000), !dbg !88
  %524 = tail call contract noundef float @llvm.maxnum.f32(float %523, float %condval.0.1.7), !dbg !88
  %525 = tail call contract noundef float @llvm.maxnum.f32(float %524, float %condval.0.2.7), !dbg !88
  %526 = tail call contract noundef float @llvm.maxnum.f32(float %525, float %condval.0.3.7), !dbg !88
  %527 = bitcast float %526 to i32, !dbg !92
  %528 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !95
  %529 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %528) #11, !dbg !100
  %xor.i.i770.7 = xor i32 %529, 32, !dbg !101
  %530 = and i32 %529, -64, !dbg !102
  %and.i.i771.7 = add nsw i32 %530, 64, !dbg !102
  %cmp.not.i.i772.7 = icmp slt i32 %xor.i.i770.7, %and.i.i771.7, !dbg !103
  %cond.i.i773.7 = select i1 %cmp.not.i.i772.7, i32 %xor.i.i770.7, i32 %529, !dbg !104
  %shl.i.i774.7 = shl i32 %cond.i.i773.7, 2, !dbg !105
  %531 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i774.7, i32 %527), !dbg !106
  %532 = bitcast i32 %531 to float, !dbg !107
  %533 = tail call contract noundef float @llvm.maxnum.f32(float %526, float %532), !dbg !108
  %534 = bitcast float %533 to i32, !dbg !110
  %535 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !112
  %536 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %535) #11, !dbg !115
  %xor.i.i775.7 = xor i32 %536, 16, !dbg !116
  %537 = and i32 %536, -64, !dbg !117
  %and.i.i776.7 = add nsw i32 %537, 64, !dbg !117
  %cmp.not.i.i777.7 = icmp slt i32 %xor.i.i775.7, %and.i.i776.7, !dbg !118
  %cond.i.i778.7 = select i1 %cmp.not.i.i777.7, i32 %xor.i.i775.7, i32 %536, !dbg !119
  %shl.i.i779.7 = shl i32 %cond.i.i778.7, 2, !dbg !120
  %538 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i779.7, i32 %534), !dbg !121
  %539 = bitcast i32 %538 to float, !dbg !122
  %540 = tail call contract noundef float @llvm.maxnum.f32(float %533, float %539), !dbg !123
  %541 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.6, float %540), !dbg !125
  %sub.7 = fsub contract float %maximum.sroa.0.1.6, %541, !dbg !127
  %mul263.7 = fmul contract float %sub.7, 0x3FC7154760000000, !dbg !128
  %cmp.i.i.7 = fcmp contract olt float %mul263.7, -1.260000e+02, !dbg !129
  %cond.i.i780.7 = select contract i1 %cmp.i.i.7, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i.7 = fadd contract float %mul263.7, %cond.i.i780.7, !dbg !129
  %542 = tail call contract float @llvm.exp2.f32(float %add.i.i.7), !dbg !129
  %cond2.i.i.7 = select contract i1 %cmp.i.i.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i.7 = fmul contract float %cond2.i.i.7, %542, !dbg !129
  %numerator.sroa.0.0.vec.extract2375 = extractelement <4 x float> %numerator.sroa.0.6, i64 0, !dbg !211
  %numerator.sroa.0.4.vec.extract2412 = extractelement <4 x float> %numerator.sroa.0.6, i64 1, !dbg !211
  %numerator.sroa.0.8.vec.extract2449 = extractelement <4 x float> %numerator.sroa.0.6, i64 2, !dbg !211
  %numerator.sroa.0.12.vec.extract2486 = extractelement <4 x float> %numerator.sroa.0.6, i64 3, !dbg !211
  %mul280.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.0.vec.extract2375, !dbg !132
  %mul283.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.4.vec.extract2412, !dbg !212
  %mul286.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.8.vec.extract2449, !dbg !213
  %mul289.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.12.vec.extract2486, !dbg !214
  %numerator.sroa.0.0.vec.insert2377 = insertelement <4 x float> poison, float %mul280.7, i64 0, !dbg !133
  %numerator.sroa.0.4.vec.insert2414 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2377, float %mul283.7, i64 1, !dbg !133
  %numerator.sroa.0.8.vec.insert2451 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2414, float %mul286.7, i64 2, !dbg !133
  %numerator.sroa.0.12.vec.insert2488 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2451, float %mul289.7, i64 3, !dbg !133
  %numerator.sroa.98.16.vec.extract2531 = extractelement <4 x float> %numerator.sroa.98.6, i64 0, !dbg !211
  %numerator.sroa.98.20.vec.extract2568 = extractelement <4 x float> %numerator.sroa.98.6, i64 1, !dbg !211
  %numerator.sroa.98.24.vec.extract2605 = extractelement <4 x float> %numerator.sroa.98.6, i64 2, !dbg !211
  %numerator.sroa.98.28.vec.extract2642 = extractelement <4 x float> %numerator.sroa.98.6, i64 3, !dbg !211
  %mul280.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.16.vec.extract2531, !dbg !132
  %mul283.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.20.vec.extract2568, !dbg !212
  %mul286.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.24.vec.extract2605, !dbg !213
  %mul289.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.28.vec.extract2642, !dbg !214
  %numerator.sroa.98.16.vec.insert2533 = insertelement <4 x float> poison, float %mul280.1.7, i64 0, !dbg !133
  %numerator.sroa.98.20.vec.insert2570 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2533, float %mul283.1.7, i64 1, !dbg !133
  %numerator.sroa.98.24.vec.insert2607 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2570, float %mul286.1.7, i64 2, !dbg !133
  %numerator.sroa.98.28.vec.insert2644 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2607, float %mul289.1.7, i64 3, !dbg !133
  %numerator.sroa.194.32.vec.extract2687 = extractelement <4 x float> %numerator.sroa.194.6, i64 0, !dbg !211
  %numerator.sroa.194.36.vec.extract2724 = extractelement <4 x float> %numerator.sroa.194.6, i64 1, !dbg !211
  %numerator.sroa.194.40.vec.extract2761 = extractelement <4 x float> %numerator.sroa.194.6, i64 2, !dbg !211
  %numerator.sroa.194.44.vec.extract2798 = extractelement <4 x float> %numerator.sroa.194.6, i64 3, !dbg !211
  %mul280.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.32.vec.extract2687, !dbg !132
  %mul283.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.36.vec.extract2724, !dbg !212
  %mul286.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.40.vec.extract2761, !dbg !213
  %mul289.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.44.vec.extract2798, !dbg !214
  %numerator.sroa.194.32.vec.insert2689 = insertelement <4 x float> poison, float %mul280.2.7, i64 0, !dbg !133
  %numerator.sroa.194.36.vec.insert2726 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2689, float %mul283.2.7, i64 1, !dbg !133
  %numerator.sroa.194.40.vec.insert2763 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2726, float %mul286.2.7, i64 2, !dbg !133
  %numerator.sroa.194.44.vec.insert2800 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2763, float %mul289.2.7, i64 3, !dbg !133
  %numerator.sroa.290.48.vec.extract2843 = extractelement <4 x float> %numerator.sroa.290.6, i64 0, !dbg !211
  %numerator.sroa.290.52.vec.extract2880 = extractelement <4 x float> %numerator.sroa.290.6, i64 1, !dbg !211
  %numerator.sroa.290.56.vec.extract2917 = extractelement <4 x float> %numerator.sroa.290.6, i64 2, !dbg !211
  %numerator.sroa.290.60.vec.extract2954 = extractelement <4 x float> %numerator.sroa.290.6, i64 3, !dbg !211
  %mul280.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.48.vec.extract2843, !dbg !132
  %mul283.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.52.vec.extract2880, !dbg !212
  %mul286.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.56.vec.extract2917, !dbg !213
  %mul289.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.60.vec.extract2954, !dbg !214
  %numerator.sroa.290.48.vec.insert2845 = insertelement <4 x float> poison, float %mul280.3.7, i64 0, !dbg !133
  %numerator.sroa.290.52.vec.insert2882 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2845, float %mul283.3.7, i64 1, !dbg !133
  %numerator.sroa.290.56.vec.insert2919 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2882, float %mul286.3.7, i64 2, !dbg !133
  %numerator.sroa.290.60.vec.insert2956 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2919, float %mul289.3.7, i64 3, !dbg !133
  %sub313.7 = fsub contract float %spec.select3076, %541, !dbg !134
  %sub317.7 = fsub contract float %condval.0.1.7, %541, !dbg !135
  %sub321.7 = fsub contract float %condval.0.2.7, %541, !dbg !136
  %sub325.7 = fsub contract float %condval.0.3.7, %541, !dbg !137
  %mul330.7 = fmul contract float %sub313.7, 0x3FC7154760000000, !dbg !138
  %mul334.7 = fmul contract float %sub317.7, 0x3FC7154760000000, !dbg !139
  %mul338.7 = fmul contract float %sub321.7, 0x3FC7154760000000, !dbg !140
  %mul342.7 = fmul contract float %sub325.7, 0x3FC7154760000000, !dbg !141
  %add347.7 = fadd contract float %mul330.7, 8.000000e+00, !dbg !142
  %add351.7 = fadd contract float %mul334.7, 8.000000e+00, !dbg !143
  %add355.7 = fadd contract float %mul338.7, 8.000000e+00, !dbg !144
  %add359.7 = fadd contract float %mul342.7, 8.000000e+00, !dbg !145
  %cmp.i.i781.7 = fcmp contract olt float %add347.7, -1.260000e+02, !dbg !146
  %cond.i.i782.7 = select contract i1 %cmp.i.i781.7, float 6.400000e+01, float 0.000000e+00, !dbg !146
  %add.i.i783.7 = fadd contract float %add347.7, %cond.i.i782.7, !dbg !146
  %543 = tail call contract float @llvm.exp2.f32(float %add.i.i783.7), !dbg !146
  %cond2.i.i784.7 = select contract i1 %cmp.i.i781.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !146
  %mul.i.i785.7 = fmul contract float %cond2.i.i784.7, %543, !dbg !146
  %cmp.i.i786.7 = fcmp contract olt float %add351.7, -1.260000e+02, !dbg !148
  %cond.i.i787.7 = select contract i1 %cmp.i.i786.7, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i788.7 = fadd contract float %add351.7, %cond.i.i787.7, !dbg !148
  %544 = tail call contract float @llvm.exp2.f32(float %add.i.i788.7), !dbg !148
  %cond2.i.i789.7 = select contract i1 %cmp.i.i786.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i790.7 = fmul contract float %cond2.i.i789.7, %544, !dbg !148
  %cmp.i.i791.7 = fcmp contract olt float %add355.7, -1.260000e+02, !dbg !150
  %cond.i.i792.7 = select contract i1 %cmp.i.i791.7, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i793.7 = fadd contract float %add355.7, %cond.i.i792.7, !dbg !150
  %545 = tail call contract float @llvm.exp2.f32(float %add.i.i793.7), !dbg !150
  %cond2.i.i794.7 = select contract i1 %cmp.i.i791.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i795.7 = fmul contract float %cond2.i.i794.7, %545, !dbg !150
  %cmp.i.i796.7 = fcmp contract olt float %add359.7, -1.260000e+02, !dbg !152
  %cond.i.i797.7 = select contract i1 %cmp.i.i796.7, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i798.7 = fadd contract float %add359.7, %cond.i.i797.7, !dbg !152
  %546 = tail call contract float @llvm.exp2.f32(float %add.i.i798.7), !dbg !152
  %cond2.i.i799.7 = select contract i1 %cmp.i.i796.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i800.7 = fmul contract float %cond2.i.i799.7, %546, !dbg !152
  %547 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !154, !noalias !162
  %548 = fptrunc float %mul.i.i785.7 to half, !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %547), !dbg !154, !noalias !162
  %549 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !167, !noalias !162
  %550 = fptrunc float %mul.i.i790.7 to half, !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %549), !dbg !167, !noalias !162
  %551 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !173
  %552 = fptrunc float %mul.i.i795.7 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %551), !dbg !169, !noalias !173
  %553 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !173
  %554 = fptrunc float %mul.i.i800.7 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %553), !dbg !178, !noalias !173
  %555 = insertelement <4 x half> poison, half %548, i64 0, !dbg !180
  %556 = insertelement <4 x half> %555, half %550, i64 1, !dbg !180
  %557 = insertelement <4 x half> %556, half %552, i64 2, !dbg !180
  %558 = insertelement <4 x half> %557, half %554, i64 3, !dbg !180
  %conv.i.i.7 = fpext half %548 to float, !dbg !181
  %conv.i.i.1.7 = fpext half %550 to float, !dbg !181
  %conv.i.i.2.7 = fpext half %552 to float, !dbg !181
  %conv.i.i.3.7 = fpext half %554 to float, !dbg !181
  %mul300.7 = fmul contract float %denominator.sroa.0.1.6, %mul.i.i.7, !dbg !215
  fence syncscope("warp") release, !dbg !186
  tail call void @llvm.mxc.barrier.warp(), !dbg !189
  fence syncscope("warp") acquire, !dbg !190
  %559 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !191
  %560 = getelementptr inbounds i8, ptr addrspace(4) %559, i64 %.idx.7, !dbg !191
  %561 = load i64, ptr addrspace(4) %560, align 8, !dbg !192
  %add.ptr425.1.7 = getelementptr inbounds i8, ptr addrspace(4) %560, i64 128, !dbg !191
  %562 = load i64, ptr addrspace(4) %add.ptr425.1.7, align 8, !dbg !192
  %add.ptr425.2.7 = getelementptr inbounds i8, ptr addrspace(4) %560, i64 256, !dbg !191
  %563 = load i64, ptr addrspace(4) %add.ptr425.2.7, align 8, !dbg !192
  %add.ptr425.3.7 = getelementptr inbounds i8, ptr addrspace(4) %560, i64 384, !dbg !191
  %564 = load i64, ptr addrspace(4) %add.ptr425.3.7, align 8, !dbg !192
  %add393.7 = fadd contract float %conv.i.i.7, 0.000000e+00, !dbg !193
  %add393.1.7 = fadd contract float %add393.7, %conv.i.i.1.7, !dbg !193
  %add393.2.7 = fadd contract float %add393.1.7, %conv.i.i.2.7, !dbg !193
  %add393.3.7 = fadd contract float %add393.2.7, %conv.i.i.3.7, !dbg !193
  %565 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul455, !dbg !194
  %add.ptr467.idx.7 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.7 = getelementptr inbounds i8, ptr addrspace(3) %565, i32 %add.ptr467.idx.7, !dbg !194
  %v_column.sroa.130.0.insert.ext1564 = shl i64 %564, 48, !dbg !195
  %v_column.sroa.98.0.insert.ext1409 = shl i64 %563, 32, !dbg !195
  %v_column.sroa.98.0.insert.shift1410 = and i64 %v_column.sroa.98.0.insert.ext1409, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1412 = or disjoint i64 %v_column.sroa.130.0.insert.ext1564, %v_column.sroa.98.0.insert.shift1410, !dbg !195
  %v_column.sroa.66.0.insert.ext1254 = shl i64 %562, 16, !dbg !195
  %v_column.sroa.66.0.insert.shift1255 = and i64 %v_column.sroa.66.0.insert.ext1254, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1257 = or disjoint i64 %v_column.sroa.98.0.insert.insert1412, %v_column.sroa.66.0.insert.shift1255, !dbg !195
  %v_column.sroa.0.0.insert.ext1103 = and i64 %561, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert1105 = or disjoint i64 %v_column.sroa.66.0.insert.insert1257, %v_column.sroa.0.0.insert.ext1103, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1105, ptr addrspace(3) %add.ptr467.7, align 8, !dbg !195
  %v_fetch.sroa.0.2.extract.shift1676 = lshr i64 %561, 16, !dbg !196
  %add456.1.7 = or disjoint i32 %mul455, 256, !dbg !197
  %566 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.1.7, !dbg !194
  %xor463.1.7 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.1.7 = xor i32 %xor463.1.7, 8, !dbg !194
  %add.ptr467.1.7 = getelementptr inbounds i8, ptr addrspace(3) %566, i32 %add.ptr467.idx.1.7, !dbg !194
  %567 = shl i64 %564, 32, !dbg !195
  %v_column.sroa.130.0.insert.ext1569 = and i64 %567, -281474976710656, !dbg !195
  %568 = shl i64 %563, 16, !dbg !195
  %v_column.sroa.98.0.insert.shift1415 = and i64 %568, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1417 = or disjoint i64 %v_column.sroa.130.0.insert.ext1569, %v_column.sroa.98.0.insert.shift1415, !dbg !195
  %v_column.sroa.66.0.insert.ext1259 = and i64 %562, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1262 = or disjoint i64 %v_column.sroa.98.0.insert.insert1417, %v_column.sroa.66.0.insert.ext1259, !dbg !195
  %v_column.sroa.0.0.insert.ext1107 = and i64 %v_fetch.sroa.0.2.extract.shift1676, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert1109 = or disjoint i64 %v_column.sroa.66.0.insert.insert1262, %v_column.sroa.0.0.insert.ext1107, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1109, ptr addrspace(3) %add.ptr467.1.7, align 8, !dbg !195
  %v_fetch.sroa.0.4.extract.shift1697 = lshr i64 %561, 32, !dbg !196
  %add456.2.7 = or disjoint i32 %mul455, 512, !dbg !197
  %569 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.2.7, !dbg !194
  %xor463.2.7 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.2.7 = xor i32 %xor463.2.7, 16, !dbg !194
  %add.ptr467.2.7 = getelementptr inbounds i8, ptr addrspace(3) %569, i32 %add.ptr467.idx.2.7, !dbg !194
  %570 = shl i64 %564, 16, !dbg !195
  %v_column.sroa.130.0.insert.ext1574 = and i64 %570, -281474976710656, !dbg !195
  %v_column.sroa.98.0.insert.ext1419 = and i64 %563, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1422 = or disjoint i64 %v_column.sroa.130.0.insert.ext1574, %v_column.sroa.98.0.insert.ext1419, !dbg !195
  %571 = lshr i64 %562, 16, !dbg !195
  %v_column.sroa.66.0.insert.shift1265 = and i64 %571, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1267 = or disjoint i64 %v_column.sroa.98.0.insert.insert1422, %v_column.sroa.66.0.insert.shift1265, !dbg !195
  %v_column.sroa.0.0.insert.ext1111 = and i64 %v_fetch.sroa.0.4.extract.shift1697, 65535, !dbg !195
  %v_column.sroa.0.0.insert.insert1113 = or disjoint i64 %v_column.sroa.66.0.insert.insert1267, %v_column.sroa.0.0.insert.ext1111, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1113, ptr addrspace(3) %add.ptr467.2.7, align 8, !dbg !195
  %v_fetch.sroa.0.6.extract.shift1718 = lshr i64 %561, 48, !dbg !196
  %v_fetch.sroa.122.30.extract.shift1949 = and i64 %564, -281474976710656, !dbg !195
  %add456.3.7 = or disjoint i32 %mul455, 768, !dbg !197
  %572 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.3.7, !dbg !194
  %xor463.3.7 = shl nuw nsw i32 %xor462, 3, !dbg !194
  %add.ptr467.idx.3.7 = xor i32 %xor463.3.7, 24, !dbg !194
  %add.ptr467.3.7 = getelementptr inbounds i8, ptr addrspace(3) %572, i32 %add.ptr467.idx.3.7, !dbg !194
  %573 = lshr i64 %563, 16, !dbg !195
  %v_column.sroa.98.0.insert.shift1425 = and i64 %573, 281470681743360, !dbg !195
  %v_column.sroa.98.0.insert.insert1427 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1949, %v_column.sroa.98.0.insert.shift1425, !dbg !195
  %574 = lshr i64 %562, 32, !dbg !195
  %v_column.sroa.66.0.insert.shift1270 = and i64 %574, 4294901760, !dbg !195
  %v_column.sroa.66.0.insert.insert1272 = or disjoint i64 %v_column.sroa.98.0.insert.insert1427, %v_column.sroa.66.0.insert.shift1270, !dbg !195
  %v_column.sroa.0.0.insert.insert1117 = or disjoint i64 %v_column.sroa.66.0.insert.insert1272, %v_fetch.sroa.0.6.extract.shift1718, !dbg !195
  store i64 %v_column.sroa.0.0.insert.insert1117, ptr addrspace(3) %add.ptr467.3.7, align 8, !dbg !195
  fence syncscope("warp") release, !dbg !198
  tail call void @llvm.mxc.barrier.warp(), !dbg !201
  fence syncscope("warp") acquire, !dbg !202
  %add484.7 = or disjoint i32 %mul477, %mul483, !dbg !203
  %575 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.7, !dbg !204
  %add.ptr494.idx.7 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.7 = getelementptr inbounds i8, ptr addrspace(3) %575, i32 %add.ptr494.idx.7, !dbg !204
  %576 = load <4 x half>, ptr addrspace(3) %add.ptr494.7, align 8, !dbg !205
  %add479.1.7 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.1.7 = or disjoint i32 %add479.1.7, 64, !dbg !203
  %577 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.1.7, !dbg !204
  %xor490.1.7 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.1.7 = xor i32 %xor490.1.7, 8, !dbg !204
  %add.ptr494.1.7 = getelementptr inbounds i8, ptr addrspace(3) %577, i32 %add.ptr494.idx.1.7, !dbg !204
  %578 = load <4 x half>, ptr addrspace(3) %add.ptr494.1.7, align 8, !dbg !205
  %add479.2.7 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.2.7 = or disjoint i32 %add479.2.7, 128, !dbg !203
  %579 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.2.7, !dbg !204
  %xor490.2.7 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.2.7 = xor i32 %xor490.2.7, 16, !dbg !204
  %add.ptr494.2.7 = getelementptr inbounds i8, ptr addrspace(3) %579, i32 %add.ptr494.idx.2.7, !dbg !204
  %580 = load <4 x half>, ptr addrspace(3) %add.ptr494.2.7, align 8, !dbg !205
  %add479.3.7 = or disjoint i32 %mul477, %mul483, !dbg !203
  %add484.3.7 = or disjoint i32 %add479.3.7, 192, !dbg !203
  %581 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.3.7, !dbg !204
  %xor490.3.7 = shl nuw nsw i32 %18, 3, !dbg !204
  %add.ptr494.idx.3.7 = xor i32 %xor490.3.7, 24, !dbg !204
  %add.ptr494.3.7 = getelementptr inbounds i8, ptr addrspace(3) %581, i32 %add.ptr494.idx.3.7, !dbg !204
  %582 = load <4 x half>, ptr addrspace(3) %add.ptr494.3.7, align 8, !dbg !205
  %583 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %576, <4 x half> %558, <4 x float> %numerator.sroa.0.12.vec.insert2488), !dbg !206
  %584 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %578, <4 x half> %558, <4 x float> %numerator.sroa.98.28.vec.insert2644), !dbg !206
  %585 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %580, <4 x half> %558, <4 x float> %numerator.sroa.194.44.vec.insert2800), !dbg !206
  %586 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %582, <4 x half> %558, <4 x float> %numerator.sroa.290.60.vec.insert2956), !dbg !206
  %add400.7 = fadd contract float %mul300.7, %add393.3.7, !dbg !207
  br label %if.end520.7, !dbg !208

if.end520.7:                                      ; preds = %if.then.7, %if.end520.6
  %numerator.sroa.290.7 = phi <4 x float> [ %numerator.sroa.290.6, %if.end520.6 ], [ %586, %if.then.7 ], !dbg !209
  %numerator.sroa.194.7 = phi <4 x float> [ %numerator.sroa.194.6, %if.end520.6 ], [ %585, %if.then.7 ], !dbg !209
  %numerator.sroa.98.7 = phi <4 x float> [ %numerator.sroa.98.6, %if.end520.6 ], [ %584, %if.then.7 ], !dbg !209
  %numerator.sroa.0.7 = phi <4 x float> [ %numerator.sroa.0.6, %if.end520.6 ], [ %583, %if.then.7 ], !dbg !209
  %denominator.sroa.0.1.7 = phi float [ %denominator.sroa.0.1.6, %if.end520.6 ], [ %add400.7, %if.then.7 ], !dbg !209
  %587 = bitcast float %denominator.sroa.0.1.7 to i32, !dbg !216
  %588 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !218
  %589 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %588) #11, !dbg !221
  %xor.i.i = xor i32 %589, 32, !dbg !222
  %590 = and i32 %589, -64, !dbg !223
  %and.i.i = add nsw i32 %590, 64, !dbg !223
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !224
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %589, !dbg !225
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !226
  %591 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %587), !dbg !227
  %592 = bitcast i32 %591 to float, !dbg !228
  %add527 = fadd contract float %denominator.sroa.0.1.7, %592, !dbg !229
  %593 = bitcast float %add527 to i32, !dbg !230
  %594 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !232
  %595 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %594) #11, !dbg !235
  %xor.i.i765 = xor i32 %595, 16, !dbg !236
  %596 = and i32 %595, -64, !dbg !237
  %and.i.i766 = add nsw i32 %596, 64, !dbg !237
  %cmp.not.i.i767 = icmp slt i32 %xor.i.i765, %and.i.i766, !dbg !238
  %cond.i.i768 = select i1 %cmp.not.i.i767, i32 %xor.i.i765, i32 %595, !dbg !239
  %shl.i.i769 = shl i32 %cond.i.i768, 2, !dbg !240
  %597 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i769, i32 %593), !dbg !241
  %598 = bitcast i32 %597 to float, !dbg !242
  %add532 = fadd contract float %add527, %598, !dbg !243
  %numerator.sroa.0.0.vec.extract2381 = extractelement <4 x float> %numerator.sroa.0.7, i64 0, !dbg !244
  %numerator.sroa.0.4.vec.extract2418 = extractelement <4 x float> %numerator.sroa.0.7, i64 1, !dbg !244
  %numerator.sroa.0.8.vec.extract2455 = extractelement <4 x float> %numerator.sroa.0.7, i64 2, !dbg !244
  %numerator.sroa.0.12.vec.extract2492 = extractelement <4 x float> %numerator.sroa.0.7, i64 3, !dbg !244
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract2381, %add532, !dbg !245
  %div552 = fdiv contract float %numerator.sroa.0.4.vec.extract2418, %add532, !dbg !246
  %div556 = fdiv contract float %numerator.sroa.0.8.vec.extract2455, %add532, !dbg !247
  %div560 = fdiv contract float %numerator.sroa.0.12.vec.extract2492, %add532, !dbg !248
  %numerator.sroa.98.16.vec.extract2535 = extractelement <4 x float> %numerator.sroa.98.7, i64 0, !dbg !244
  %numerator.sroa.98.20.vec.extract2572 = extractelement <4 x float> %numerator.sroa.98.7, i64 1, !dbg !244
  %numerator.sroa.98.24.vec.extract2609 = extractelement <4 x float> %numerator.sroa.98.7, i64 2, !dbg !244
  %numerator.sroa.98.28.vec.extract2646 = extractelement <4 x float> %numerator.sroa.98.7, i64 3, !dbg !244
  %div.1 = fdiv contract float %numerator.sroa.98.16.vec.extract2535, %add532, !dbg !245
  %div552.1 = fdiv contract float %numerator.sroa.98.20.vec.extract2572, %add532, !dbg !246
  %div556.1 = fdiv contract float %numerator.sroa.98.24.vec.extract2609, %add532, !dbg !247
  %div560.1 = fdiv contract float %numerator.sroa.98.28.vec.extract2646, %add532, !dbg !248
  %numerator.sroa.194.32.vec.extract2691 = extractelement <4 x float> %numerator.sroa.194.7, i64 0, !dbg !244
  %numerator.sroa.194.36.vec.extract2728 = extractelement <4 x float> %numerator.sroa.194.7, i64 1, !dbg !244
  %numerator.sroa.194.40.vec.extract2765 = extractelement <4 x float> %numerator.sroa.194.7, i64 2, !dbg !244
  %numerator.sroa.194.44.vec.extract2802 = extractelement <4 x float> %numerator.sroa.194.7, i64 3, !dbg !244
  %div.2 = fdiv contract float %numerator.sroa.194.32.vec.extract2691, %add532, !dbg !245
  %div552.2 = fdiv contract float %numerator.sroa.194.36.vec.extract2728, %add532, !dbg !246
  %div556.2 = fdiv contract float %numerator.sroa.194.40.vec.extract2765, %add532, !dbg !247
  %div560.2 = fdiv contract float %numerator.sroa.194.44.vec.extract2802, %add532, !dbg !248
  %numerator.sroa.290.48.vec.extract2847 = extractelement <4 x float> %numerator.sroa.290.7, i64 0, !dbg !244
  %numerator.sroa.290.52.vec.extract2884 = extractelement <4 x float> %numerator.sroa.290.7, i64 1, !dbg !244
  %numerator.sroa.290.56.vec.extract2921 = extractelement <4 x float> %numerator.sroa.290.7, i64 2, !dbg !244
  %numerator.sroa.290.60.vec.extract2958 = extractelement <4 x float> %numerator.sroa.290.7, i64 3, !dbg !244
  %div.3 = fdiv contract float %numerator.sroa.290.48.vec.extract2847, %add532, !dbg !245
  %div552.3 = fdiv contract float %numerator.sroa.290.52.vec.extract2884, %add532, !dbg !246
  %div556.3 = fdiv contract float %numerator.sroa.290.56.vec.extract2921, %add532, !dbg !247
  %div560.3 = fdiv contract float %numerator.sroa.290.60.vec.extract2958, %add532, !dbg !248
  fence syncscope("warp") release, !dbg !249
  tail call void @llvm.mxc.barrier.warp(), !dbg !252
  fence syncscope("warp") acquire, !dbg !253
  %mul606 = and i32 %13, 4
  %599 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !254, !noalias !258
  %600 = fptrunc float %div to half, !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %599), !dbg !254, !noalias !258
  %601 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !258
  %602 = fptrunc float %div552 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %601), !dbg !263, !noalias !258
  %603 = bitcast half %600 to i16, !dbg !265
  %604 = bitcast half %602 to i16, !dbg !268
  %605 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !273
  %606 = fptrunc float %div556 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %605), !dbg !269, !noalias !273
  %607 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !278, !noalias !273
  %608 = fptrunc float %div560 to half, !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %607), !dbg !278, !noalias !273
  %609 = bitcast half %606 to i16, !dbg !280
  %610 = bitcast half %608 to i16, !dbg !282
  %__8.sroa.6.0.insert.ext = zext i16 %610 to i64, !dbg !283
  %__8.sroa.6.0.insert.shift = shl nuw i64 %__8.sroa.6.0.insert.ext, 48, !dbg !283
  %__8.sroa.5.0.insert.ext = zext i16 %609 to i64, !dbg !283
  %__8.sroa.5.0.insert.shift = shl nuw nsw i64 %__8.sroa.5.0.insert.ext, 32, !dbg !283
  %__8.sroa.5.0.insert.insert = or disjoint i64 %__8.sroa.6.0.insert.shift, %__8.sroa.5.0.insert.shift, !dbg !283
  %__8.sroa.4.0.insert.ext = zext i16 %604 to i64, !dbg !283
  %__8.sroa.4.0.insert.shift = shl nuw nsw i64 %__8.sroa.4.0.insert.ext, 16, !dbg !283
  %__8.sroa.4.0.insert.insert = or disjoint i64 %__8.sroa.5.0.insert.insert, %__8.sroa.4.0.insert.shift, !dbg !283
  %__8.sroa.0.0.insert.ext = zext i16 %603 to i64, !dbg !283
  %__8.sroa.0.0.insert.insert = or disjoint i64 %__8.sroa.4.0.insert.insert, %__8.sroa.0.0.insert.ext, !dbg !283
  %add607 = or disjoint i32 %add58, %mul606, !dbg !284
  %add.ptr609 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add607, !dbg !285
  store i64 %__8.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr609, align 8, !dbg !286
  %611 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !254, !noalias !258
  %612 = fptrunc float %div.1 to half, !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %611), !dbg !254, !noalias !258
  %613 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !258
  %614 = fptrunc float %div552.1 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %613), !dbg !263, !noalias !258
  %615 = bitcast half %612 to i16, !dbg !265
  %616 = bitcast half %614 to i16, !dbg !268
  %617 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !273
  %618 = fptrunc float %div556.1 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %617), !dbg !269, !noalias !273
  %619 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !278, !noalias !273
  %620 = fptrunc float %div560.1 to half, !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %619), !dbg !278, !noalias !273
  %621 = bitcast half %618 to i16, !dbg !280
  %622 = bitcast half %620 to i16, !dbg !282
  %__8.sroa.6.0.insert.ext.1 = zext i16 %622 to i64, !dbg !283
  %__8.sroa.6.0.insert.shift.1 = shl nuw i64 %__8.sroa.6.0.insert.ext.1, 48, !dbg !283
  %__8.sroa.5.0.insert.ext.1 = zext i16 %621 to i64, !dbg !283
  %__8.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.1, 32, !dbg !283
  %__8.sroa.5.0.insert.insert.1 = or disjoint i64 %__8.sroa.6.0.insert.shift.1, %__8.sroa.5.0.insert.shift.1, !dbg !283
  %__8.sroa.4.0.insert.ext.1 = zext i16 %616 to i64, !dbg !283
  %__8.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.1, 16, !dbg !283
  %__8.sroa.4.0.insert.insert.1 = or disjoint i64 %__8.sroa.5.0.insert.insert.1, %__8.sroa.4.0.insert.shift.1, !dbg !283
  %__8.sroa.0.0.insert.ext.1 = zext i16 %615 to i64, !dbg !283
  %__8.sroa.0.0.insert.insert.1 = or disjoint i64 %__8.sroa.4.0.insert.insert.1, %__8.sroa.0.0.insert.ext.1, !dbg !283
  %add607.1 = or disjoint i32 %add58.1, %mul606, !dbg !284
  %add.ptr609.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add607.1, !dbg !285
  store i64 %__8.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr609.1, align 8, !dbg !286
  %623 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !254, !noalias !258
  %624 = fptrunc float %div.2 to half, !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %623), !dbg !254, !noalias !258
  %625 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !258
  %626 = fptrunc float %div552.2 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %625), !dbg !263, !noalias !258
  %627 = bitcast half %624 to i16, !dbg !265
  %628 = bitcast half %626 to i16, !dbg !268
  %629 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !273
  %630 = fptrunc float %div556.2 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %629), !dbg !269, !noalias !273
  %631 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !278, !noalias !273
  %632 = fptrunc float %div560.2 to half, !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %631), !dbg !278, !noalias !273
  %633 = bitcast half %630 to i16, !dbg !280
  %634 = bitcast half %632 to i16, !dbg !282
  %__8.sroa.6.0.insert.ext.2 = zext i16 %634 to i64, !dbg !283
  %__8.sroa.6.0.insert.shift.2 = shl nuw i64 %__8.sroa.6.0.insert.ext.2, 48, !dbg !283
  %__8.sroa.5.0.insert.ext.2 = zext i16 %633 to i64, !dbg !283
  %__8.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.2, 32, !dbg !283
  %__8.sroa.5.0.insert.insert.2 = or disjoint i64 %__8.sroa.6.0.insert.shift.2, %__8.sroa.5.0.insert.shift.2, !dbg !283
  %__8.sroa.4.0.insert.ext.2 = zext i16 %628 to i64, !dbg !283
  %__8.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.2, 16, !dbg !283
  %__8.sroa.4.0.insert.insert.2 = or disjoint i64 %__8.sroa.5.0.insert.insert.2, %__8.sroa.4.0.insert.shift.2, !dbg !283
  %__8.sroa.0.0.insert.ext.2 = zext i16 %627 to i64, !dbg !283
  %__8.sroa.0.0.insert.insert.2 = or disjoint i64 %__8.sroa.4.0.insert.insert.2, %__8.sroa.0.0.insert.ext.2, !dbg !283
  %add607.2 = or disjoint i32 %add58.2, %mul606, !dbg !284
  %add.ptr609.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add607.2, !dbg !285
  store i64 %__8.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr609.2, align 8, !dbg !286
  %635 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !254, !noalias !258
  %636 = fptrunc float %div.3 to half, !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %635), !dbg !254, !noalias !258
  %637 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !258
  %638 = fptrunc float %div552.3 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %637), !dbg !263, !noalias !258
  %639 = bitcast half %636 to i16, !dbg !265
  %640 = bitcast half %638 to i16, !dbg !268
  %641 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !273
  %642 = fptrunc float %div556.3 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %641), !dbg !269, !noalias !273
  %643 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !278, !noalias !273
  %644 = fptrunc float %div560.3 to half, !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %643), !dbg !278, !noalias !273
  %645 = bitcast half %642 to i16, !dbg !280
  %646 = bitcast half %644 to i16, !dbg !282
  %__8.sroa.6.0.insert.ext.3 = zext i16 %646 to i64, !dbg !283
  %__8.sroa.6.0.insert.shift.3 = shl nuw i64 %__8.sroa.6.0.insert.ext.3, 48, !dbg !283
  %__8.sroa.5.0.insert.ext.3 = zext i16 %645 to i64, !dbg !283
  %__8.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.3, 32, !dbg !283
  %__8.sroa.5.0.insert.insert.3 = or disjoint i64 %__8.sroa.6.0.insert.shift.3, %__8.sroa.5.0.insert.shift.3, !dbg !283
  %__8.sroa.4.0.insert.ext.3 = zext i16 %640 to i64, !dbg !283
  %__8.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.3, 16, !dbg !283
  %__8.sroa.4.0.insert.insert.3 = or disjoint i64 %__8.sroa.5.0.insert.insert.3, %__8.sroa.4.0.insert.shift.3, !dbg !283
  %__8.sroa.0.0.insert.ext.3 = zext i16 %639 to i64, !dbg !283
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v068_codex_power_s8_final_den_reduce_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v068_codex_power_s8_final_den_reduce_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!65 = !DILocation(line: 49, column: 24, scope: !40)
!66 = !DILocation(line: 49, column: 101, scope: !40)
!67 = !DILocation(line: 50, column: 12, scope: !40)
!68 = !DILocation(line: 50, column: 28, scope: !40)
!69 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !70)
!70 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !71)
!71 = distinct !DILocation(line: 51, column: 7, scope: !40)
!72 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !70)
!73 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !70)
!74 = !DILocation(line: 53, column: 12, scope: !40)
!75 = !DILocation(line: 54, column: 47, scope: !40)
!76 = !DILocation(line: 54, column: 33, scope: !40)
!77 = !DILocation(line: 57, column: 213, scope: !40)
!78 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !79)
!79 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !80)
!80 = distinct !DILocation(line: 60, column: 7, scope: !40)
!81 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !79)
!82 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !79)
!83 = !DILocation(line: 65, column: 32, scope: !40)
!84 = !DILocation(line: 67, column: 37, scope: !40)
!85 = !DILocation(line: 75, column: 74, scope: !40)
!86 = !DILocation(line: 75, column: 13, scope: !40)
!87 = !DILocation(line: 75, column: 63, scope: !40)
!88 = !DILocation(line: 351, column: 10, scope: !89, inlinedAt: !91)
!89 = distinct !DISubprogram(name: "max", scope: !90, file: !90, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!90 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!91 = distinct !DILocation(line: 85, column: 28, scope: !40)
!92 = !DILocation(line: 1018, column: 9, scope: !93, inlinedAt: !94)
!93 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!94 = distinct !DILocation(line: 87, column: 48, scope: !40)
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
!109 = distinct !DILocation(line: 87, column: 26, scope: !40)
!110 = !DILocation(line: 1018, column: 9, scope: !93, inlinedAt: !111)
!111 = distinct !DILocation(line: 88, column: 48, scope: !40)
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
!124 = distinct !DILocation(line: 88, column: 26, scope: !40)
!125 = !DILocation(line: 351, column: 10, scope: !89, inlinedAt: !126)
!126 = distinct !DILocation(line: 89, column: 24, scope: !40)
!127 = !DILocation(line: 90, column: 39, scope: !40)
!128 = !DILocation(line: 90, column: 57, scope: !40)
!129 = !DILocation(line: 285, column: 49, scope: !130, inlinedAt: !131)
!130 = distinct !DISubprogram(name: "exp2f", scope: !90, file: !90, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!131 = distinct !DILocation(line: 90, column: 20, scope: !40)
!132 = !DILocation(line: 96, column: 24, scope: !40)
!133 = !DILocation(line: 100, column: 47, scope: !40)
!134 = !DILocation(line: 113, column: 28, scope: !40)
!135 = !DILocation(line: 114, column: 28, scope: !40)
!136 = !DILocation(line: 115, column: 28, scope: !40)
!137 = !DILocation(line: 116, column: 28, scope: !40)
!138 = !DILocation(line: 118, column: 25, scope: !40)
!139 = !DILocation(line: 119, column: 25, scope: !40)
!140 = !DILocation(line: 120, column: 25, scope: !40)
!141 = !DILocation(line: 121, column: 25, scope: !40)
!142 = !DILocation(line: 123, column: 23, scope: !40)
!143 = !DILocation(line: 124, column: 23, scope: !40)
!144 = !DILocation(line: 125, column: 23, scope: !40)
!145 = !DILocation(line: 126, column: 23, scope: !40)
!146 = !DILocation(line: 285, column: 49, scope: !130, inlinedAt: !147)
!147 = distinct !DILocation(line: 127, column: 15, scope: !40)
!148 = !DILocation(line: 285, column: 49, scope: !130, inlinedAt: !149)
!149 = distinct !DILocation(line: 128, column: 15, scope: !40)
!150 = !DILocation(line: 285, column: 49, scope: !130, inlinedAt: !151)
!151 = distinct !DILocation(line: 129, column: 15, scope: !40)
!152 = !DILocation(line: 285, column: 49, scope: !130, inlinedAt: !153)
!153 = distinct !DILocation(line: 130, column: 15, scope: !40)
!154 = !DILocation(line: 1007, column: 10, scope: !155, inlinedAt: !157)
!155 = distinct !DISubprogram(name: "__float2half_rn", scope: !156, file: !156, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!156 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!157 = distinct !DILocation(line: 1077, column: 18, scope: !158, inlinedAt: !159)
!158 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !156, file: !156, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!159 = distinct !DILocation(line: 1295, column: 23, scope: !160, inlinedAt: !161)
!160 = distinct !DISubprogram(name: "__float22half2_rn", scope: !156, file: !156, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!161 = distinct !DILocation(line: 131, column: 29, scope: !40)
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
!172 = distinct !DILocation(line: 132, column: 29, scope: !40)
!173 = !{!174, !176}
!174 = distinct !{!174, !175, !"_ZL17__floats2half2_rnff: %agg.result"}
!175 = distinct !{!175, !"_ZL17__floats2half2_rnff"}
!176 = distinct !{!176, !177, !"_ZL17__float22half2_rn6float2: %agg.result"}
!177 = distinct !{!177, !"_ZL17__float22half2_rn6float2"}
!178 = !DILocation(line: 1007, column: 10, scope: !155, inlinedAt: !179)
!179 = distinct !DILocation(line: 1077, column: 38, scope: !158, inlinedAt: !171)
!180 = !DILocation(line: 133, column: 36, scope: !40)
!181 = !DILocation(line: 1082, column: 16, scope: !182, inlinedAt: !183)
!182 = distinct !DISubprogram(name: "__half2float", scope: !156, file: !156, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!183 = distinct !DILocation(line: 136, column: 55, scope: !184, inlinedAt: !185)
!184 = distinct !DISubprogram(name: "operator float", scope: !156, file: !156, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!185 = distinct !DILocation(line: 137, column: 52, scope: !40)
!186 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !187)
!187 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !188)
!188 = distinct !DILocation(line: 140, column: 7, scope: !40)
!189 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !187)
!190 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !187)
!191 = !DILocation(line: 143, column: 54, scope: !40)
!192 = !DILocation(line: 143, column: 40, scope: !40)
!193 = !DILocation(line: 137, column: 42, scope: !40)
!194 = !DILocation(line: 150, column: 26, scope: !40)
!195 = !DILocation(line: 150, column: 159, scope: !40)
!196 = !DILocation(line: 148, column: 27, scope: !40)
!197 = !DILocation(line: 150, column: 42, scope: !40)
!198 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !199)
!199 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !200)
!200 = distinct !DILocation(line: 152, column: 7, scope: !40)
!201 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !199)
!202 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !199)
!203 = !DILocation(line: 155, column: 121, scope: !40)
!204 = !DILocation(line: 155, column: 65, scope: !40)
!205 = !DILocation(line: 155, column: 46, scope: !40)
!206 = !DILocation(line: 160, column: 46, scope: !40)
!207 = !DILocation(line: 139, column: 40, scope: !40)
!208 = !DILocation(line: 48, column: 40, scope: !40)
!209 = !DILocation(line: 0, scope: !40)
!210 = !DILocation(line: 49, column: 88, scope: !40)
!211 = !DILocation(line: 94, column: 23, scope: !40)
!212 = !DILocation(line: 97, column: 24, scope: !40)
!213 = !DILocation(line: 98, column: 24, scope: !40)
!214 = !DILocation(line: 99, column: 24, scope: !40)
!215 = !DILocation(line: 102, column: 40, scope: !40)
!216 = !DILocation(line: 1018, column: 9, scope: !93, inlinedAt: !217)
!217 = distinct !DILocation(line: 167, column: 38, scope: !40)
!218 = !DILocation(line: 171, column: 37, scope: !96, inlinedAt: !219)
!219 = distinct !DILocation(line: 990, column: 14, scope: !98, inlinedAt: !220)
!220 = distinct !DILocation(line: 1019, column: 11, scope: !93, inlinedAt: !217)
!221 = !DILocation(line: 171, column: 10, scope: !96, inlinedAt: !219)
!222 = !DILocation(line: 991, column: 20, scope: !98, inlinedAt: !220)
!223 = !DILocation(line: 992, column: 36, scope: !98, inlinedAt: !220)
!224 = !DILocation(line: 992, column: 17, scope: !98, inlinedAt: !220)
!225 = !DILocation(line: 992, column: 11, scope: !98, inlinedAt: !220)
!226 = !DILocation(line: 993, column: 43, scope: !98, inlinedAt: !220)
!227 = !DILocation(line: 993, column: 10, scope: !98, inlinedAt: !220)
!228 = !DILocation(line: 1020, column: 14, scope: !93, inlinedAt: !217)
!229 = !DILocation(line: 167, column: 36, scope: !40)
!230 = !DILocation(line: 1018, column: 9, scope: !93, inlinedAt: !231)
!231 = distinct !DILocation(line: 168, column: 38, scope: !40)
!232 = !DILocation(line: 171, column: 37, scope: !96, inlinedAt: !233)
!233 = distinct !DILocation(line: 990, column: 14, scope: !98, inlinedAt: !234)
!234 = distinct !DILocation(line: 1019, column: 11, scope: !93, inlinedAt: !231)
!235 = !DILocation(line: 171, column: 10, scope: !96, inlinedAt: !233)
!236 = !DILocation(line: 991, column: 20, scope: !98, inlinedAt: !234)
!237 = !DILocation(line: 992, column: 36, scope: !98, inlinedAt: !234)
!238 = !DILocation(line: 992, column: 17, scope: !98, inlinedAt: !234)
!239 = !DILocation(line: 992, column: 11, scope: !98, inlinedAt: !234)
!240 = !DILocation(line: 993, column: 43, scope: !98, inlinedAt: !234)
!241 = !DILocation(line: 993, column: 10, scope: !98, inlinedAt: !234)
!242 = !DILocation(line: 1020, column: 14, scope: !93, inlinedAt: !231)
!243 = !DILocation(line: 168, column: 36, scope: !40)
!244 = !DILocation(line: 172, column: 21, scope: !40)
!245 = !DILocation(line: 174, column: 22, scope: !40)
!246 = !DILocation(line: 175, column: 22, scope: !40)
!247 = !DILocation(line: 176, column: 22, scope: !40)
!248 = !DILocation(line: 177, column: 22, scope: !40)
!249 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !250)
!250 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !251)
!251 = distinct !DILocation(line: 180, column: 3, scope: !40)
!252 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !250)
!253 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !250)
!254 = !DILocation(line: 1007, column: 10, scope: !155, inlinedAt: !255)
!255 = distinct !DILocation(line: 1077, column: 18, scope: !158, inlinedAt: !256)
!256 = distinct !DILocation(line: 1295, column: 23, scope: !160, inlinedAt: !257)
!257 = distinct !DILocation(line: 185, column: 27, scope: !40)
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
!272 = distinct !DILocation(line: 186, column: 27, scope: !40)
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
!283 = !DILocation(line: 187, column: 38, scope: !40)
!284 = !DILocation(line: 188, column: 141, scope: !40)
!285 = !DILocation(line: 188, column: 22, scope: !40)
!286 = !DILocation(line: 188, column: 184, scope: !40)
!287 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !288)
!288 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !289)
!289 = distinct !DILocation(line: 190, column: 3, scope: !40)
!290 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !288)
!291 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !288)
!292 = !DILocation(line: 192, column: 8, scope: !40)
!293 = !DILocation(line: 193, column: 22, scope: !40)
!294 = !DILocation(line: 193, column: 134, scope: !40)
!295 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!296 = !{i32 2, i32 -1, i32 -1, i32 -1}
!297 = !DILocation(line: 193, column: 153, scope: !40)
!298 = !DILocation(line: 195, column: 1, scope: !40)
