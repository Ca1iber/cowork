; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v232_worker2_c5_bounded_kv_index_subagent2/codegen/power_v232/case5_stage1.device.cpp'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v232_worker2_c5_bounded_kv_index_subagent2/codegen/power_v232/case5_stage1.device.cpp"
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
  %xor731 = and i32 %mul11, 56
  %call27.masked = and i32 %2, 1016
  %mul29 = xor i32 %xor731, %call27.masked
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
  %qk_fetch.sroa.0.0.copyload1022 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %qk_fetch.sroa.10.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %qk_fetch.sroa.10.0.copyload1025 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0.add.ptr.1.sroa_idx, align 8, !dbg !45
  %7 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 1024, !dbg !46
  %add.ptr39.1812 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1022, ptr addrspace(3) %add.ptr39.1812, align 8, !dbg !47
  %add.ptr39.1.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.10.0.copyload1025, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !47
  fence syncscope("warp") release, !dbg !49
  tail call void @llvm.mxc.barrier.warp(), !dbg !55
  fence syncscope("warp") acquire, !dbg !56
  %and48 = shl nuw nsw i32 %2, 6
  %mul49 = and i32 %and48, 960
  %shr52 = lshr i32 %2, 5
  %and55 = and i32 %2, 7
  %and60 = lshr i32 %2, 4
  %8 = xor i32 %and33, %and60
  %xor56 = xor i32 %shr52, %and55, !dbg !57
  %mul57 = shl nuw nsw i32 %xor56, 3, !dbg !58
  %add58 = add nuw nsw i32 %mul57, %mul49, !dbg !59
  %add53.1 = add nuw nsw i32 %shr52, 2, !dbg !60
  %xor56.1 = xor i32 %add53.1, %and55, !dbg !57
  %mul57.1 = shl nuw nsw i32 %xor56.1, 3, !dbg !58
  %add58.1 = add nuw nsw i32 %mul57.1, %mul49, !dbg !59
  %add53.2 = add nuw nsw i32 %shr52, 4, !dbg !60
  %xor56.2 = xor i32 %add53.2, %and55, !dbg !57
  %mul57.2 = shl nuw nsw i32 %xor56.2, 3, !dbg !58
  %add58.2 = add nuw nsw i32 %mul57.2, %mul49, !dbg !59
  %add53.3 = add nuw nsw i32 %shr52, 6, !dbg !60
  %xor56.3 = xor i32 %add53.3, %and55, !dbg !57
  %mul57.3 = shl nuw nsw i32 %xor56.3, 3, !dbg !58
  %add58.3 = add nuw nsw i32 %mul57.3, %mul49, !dbg !59
  %mul95 = shl nsw i32 %0, 10, !dbg !61
  %add97 = add nuw nsw i32 %mul95, %1, !dbg !62
  %idxprom = zext nneg i32 %add97 to i64, !dbg !63
  %arrayidx98 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %idxprom, !dbg !63
  %9 = load i32, ptr addrspace(1) %arrayidx98, align 4, !dbg !63, !tbaa !30
  %mul99 = shl nsw i32 %9, 4, !dbg !64
  %cmp100 = icmp slt i32 %9, 0, !dbg !65
  %cmp102.not = icmp sgt i32 %mul99, %1
  %or.cond = select i1 %cmp100, i1 true, i1 %cmp102.not, !dbg !66
  br i1 %or.cond, label %if.end476, label %if.then, !dbg !66

if.then:                                          ; preds = %entry
  %xor65730 = xor i32 %8, %2
  %xor68 = shl nuw nsw i32 %xor65730, 2
  %mul69 = and i32 %xor68, 4
  %add70.3 = or disjoint i32 %add58.3, %mul69, !dbg !67
  %add.ptr72.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add70.3, !dbg !68
  %10 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !69
  %add70.2 = or disjoint i32 %add58.2, %mul69, !dbg !67
  %add.ptr72.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add70.2, !dbg !68
  %11 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !69
  %add70.1 = or disjoint i32 %add58.1, %mul69, !dbg !67
  %add.ptr72.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add70.1, !dbg !68
  %12 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !69
  %add70 = or disjoint i32 %add58, %mul69, !dbg !67
  %add.ptr72 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add70, !dbg !68
  %13 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !69
  fence syncscope("warp") release, !dbg !70
  tail call void @llvm.mxc.barrier.warp(), !dbg !73
  fence syncscope("warp") acquire, !dbg !74
  %mul108 = shl nsw i32 %0, 16
  %cond.i.i = tail call noundef range(i32 0, 1009) i32 @llvm.smin.i32(i32 %mul99, i32 1008)
  %mul112 = shl nuw nsw i32 %cond.i.i, 6
  %14 = or disjoint i32 %mul11, %mul108
  %add113 = add nuw nsw i32 %14, %mul112
  %15 = zext nneg i32 %add113 to i64, !dbg !75
  %add.ptr118 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %15, !dbg !76
  %qk_fetch.sroa.0.0.copyload1021 = load i64, ptr addrspace(4) %add.ptr118, align 16, !dbg !77
  %qk_fetch.sroa.10.0.add.ptr118.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr118, i64 8, !dbg !77
  %qk_fetch.sroa.10.0.copyload1024 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0.add.ptr118.sroa_idx, align 8, !dbg !77
  store i64 %qk_fetch.sroa.0.0.copyload1021, ptr addrspace(3) %add.ptr39, align 8, !dbg !78
  store i64 %qk_fetch.sroa.10.0.copyload1024, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !78
  %16 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %15, !dbg !76
  %add.ptr118.1 = getelementptr inbounds i8, ptr addrspace(4) %16, i64 1024, !dbg !76
  %qk_fetch.sroa.0.0.copyload1023 = load i64, ptr addrspace(4) %add.ptr118.1, align 16, !dbg !77
  %qk_fetch.sroa.10.0.add.ptr118.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %16, i64 1032, !dbg !77
  %qk_fetch.sroa.10.0.copyload1026 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0.add.ptr118.1.sroa_idx, align 8, !dbg !77
  store i64 %qk_fetch.sroa.0.0.copyload1023, ptr addrspace(3) %add.ptr39.1812, align 8, !dbg !78
  store i64 %qk_fetch.sroa.10.0.copyload1026, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !78
  fence syncscope("warp") release, !dbg !79
  tail call void @llvm.mxc.barrier.warp(), !dbg !82
  fence syncscope("warp") acquire, !dbg !83
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !84
  %17 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %13, <4 x float> zeroinitializer), !dbg !85
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !84
  %18 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %12, <4 x float> %17), !dbg !85
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !84
  %19 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %11, <4 x float> %18), !dbg !85
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !84
  %20 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %10, <4 x float> %19), !dbg !85
  %21 = lshr i32 %2, 2
  %mul210 = and i32 %21, 252
  %add211 = add nuw nsw i32 %mul99, %mul210
  %cmp214.not = icmp sgt i32 %add211, %1, !dbg !86
  %scores.sroa.0.0.vec.extract904 = extractelement <4 x float> %20, i64 0
  %spec.select = select i1 %cmp214.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract904, !dbg !87
  %cmp214.not.1.not = icmp slt i32 %add211, %1, !dbg !86
  %scores.sroa.0.4.vec.extract911 = extractelement <4 x float> %20, i64 1, !dbg !87
  %condval.0.1 = select i1 %cmp214.not.1.not, float %scores.sroa.0.4.vec.extract911, float 0xFFF0000000000000, !dbg !87
  %add212.2 = or disjoint i32 %add211, 2, !dbg !88
  %cmp214.not.2 = icmp sgt i32 %add212.2, %1, !dbg !86
  %scores.sroa.0.8.vec.extract918 = extractelement <4 x float> %20, i64 2, !dbg !87
  %condval.0.2 = select i1 %cmp214.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract918, !dbg !87
  %add212.3 = or disjoint i32 %add211, 3, !dbg !88
  %cmp214.not.3 = icmp sgt i32 %add212.3, %1, !dbg !86
  %scores.sroa.0.12.vec.extract925 = extractelement <4 x float> %20, i64 3, !dbg !87
  %condval.0.3 = select i1 %cmp214.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract925, !dbg !87
  %22 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !89
  %23 = tail call contract noundef float @llvm.maxnum.f32(float %22, float %condval.0.1), !dbg !89
  %24 = tail call contract noundef float @llvm.maxnum.f32(float %23, float %condval.0.2), !dbg !89
  %25 = tail call contract noundef float @llvm.maxnum.f32(float %24, float %condval.0.3), !dbg !89
  %26 = bitcast float %25 to i32, !dbg !93
  %27 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !96
  %28 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %27) #10, !dbg !101
  %xor.i.i = xor i32 %28, 32, !dbg !102
  %29 = and i32 %28, -64, !dbg !103
  %and.i.i = add nsw i32 %29, 64, !dbg !103
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !104
  %cond.i.i733 = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %28, !dbg !105
  %shl.i.i = shl i32 %cond.i.i733, 2, !dbg !106
  %30 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %26), !dbg !107
  %31 = bitcast i32 %30 to float, !dbg !108
  %32 = tail call contract noundef float @llvm.maxnum.f32(float %25, float %31), !dbg !109
  %33 = bitcast float %32 to i32, !dbg !111
  %34 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !113
  %35 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %34) #10, !dbg !116
  %xor.i.i734 = xor i32 %35, 16, !dbg !117
  %36 = and i32 %35, -64, !dbg !118
  %and.i.i735 = add nsw i32 %36, 64, !dbg !118
  %cmp.not.i.i736 = icmp slt i32 %xor.i.i734, %and.i.i735, !dbg !119
  %cond.i.i737 = select i1 %cmp.not.i.i736, i32 %xor.i.i734, i32 %35, !dbg !120
  %shl.i.i738 = shl i32 %cond.i.i737, 2, !dbg !121
  %37 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i738, i32 %33), !dbg !122
  %38 = bitcast i32 %37 to float, !dbg !123
  %39 = tail call contract noundef float @llvm.maxnum.f32(float %32, float %38), !dbg !124
  %sub = fsub contract float %spec.select, %39, !dbg !126
  %sub260 = fsub contract float %condval.0.1, %39, !dbg !127
  %sub263 = fsub contract float %condval.0.2, %39, !dbg !128
  %sub266 = fsub contract float %condval.0.3, %39, !dbg !129
  %mul271 = fmul contract float %sub, 0x3FC7154760000000, !dbg !130
  %mul275 = fmul contract float %sub260, 0x3FC7154760000000, !dbg !131
  %mul279 = fmul contract float %sub263, 0x3FC7154760000000, !dbg !132
  %mul283 = fmul contract float %sub266, 0x3FC7154760000000, !dbg !133
  %add288 = fadd contract float %mul271, 8.000000e+00, !dbg !134
  %add292 = fadd contract float %mul275, 8.000000e+00, !dbg !135
  %add296 = fadd contract float %mul279, 8.000000e+00, !dbg !136
  %add300 = fadd contract float %mul283, 8.000000e+00, !dbg !137
  %cmp.i.i = fcmp contract olt float %add288, -1.260000e+02, !dbg !138
  %cond.i.i739 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !138
  %add.i.i = fadd contract float %add288, %cond.i.i739, !dbg !138
  %40 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !138
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !138
  %mul.i.i = fmul contract float %cond2.i.i, %40, !dbg !138
  %cmp.i.i740 = fcmp contract olt float %add292, -1.260000e+02, !dbg !141
  %cond.i.i741 = select contract i1 %cmp.i.i740, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i742 = fadd contract float %add292, %cond.i.i741, !dbg !141
  %41 = tail call contract float @llvm.exp2.f32(float %add.i.i742), !dbg !141
  %cond2.i.i743 = select contract i1 %cmp.i.i740, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %mul.i.i744 = fmul contract float %cond2.i.i743, %41, !dbg !141
  %cmp.i.i745 = fcmp contract olt float %add296, -1.260000e+02, !dbg !143
  %cond.i.i746 = select contract i1 %cmp.i.i745, float 6.400000e+01, float 0.000000e+00, !dbg !143
  %add.i.i747 = fadd contract float %add296, %cond.i.i746, !dbg !143
  %42 = tail call contract float @llvm.exp2.f32(float %add.i.i747), !dbg !143
  %cond2.i.i748 = select contract i1 %cmp.i.i745, float 0x3BF0000000000000, float 1.000000e+00, !dbg !143
  %mul.i.i749 = fmul contract float %cond2.i.i748, %42, !dbg !143
  %cmp.i.i750 = fcmp contract olt float %add300, -1.260000e+02, !dbg !145
  %cond.i.i751 = select contract i1 %cmp.i.i750, float 6.400000e+01, float 0.000000e+00, !dbg !145
  %add.i.i752 = fadd contract float %add300, %cond.i.i751, !dbg !145
  %43 = tail call contract float @llvm.exp2.f32(float %add.i.i752), !dbg !145
  %cond2.i.i753 = select contract i1 %cmp.i.i750, float 0x3BF0000000000000, float 1.000000e+00, !dbg !145
  %mul.i.i754 = fmul contract float %cond2.i.i753, %43, !dbg !145
  %44 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !147
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !147, !noalias !155
  %45 = fptrunc float %mul.i.i to half, !dbg !147
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %44), !dbg !147, !noalias !155
  %46 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !160, !noalias !155
  %47 = fptrunc float %mul.i.i744 to half, !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %46), !dbg !160, !noalias !155
  %48 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !162
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !162, !noalias !166
  %49 = fptrunc float %mul.i.i749 to half, !dbg !162
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %48), !dbg !162, !noalias !166
  %50 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !166
  %51 = fptrunc float %mul.i.i754 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %50), !dbg !171, !noalias !166
  %52 = insertelement <4 x half> poison, half %45, i64 0, !dbg !173
  %53 = insertelement <4 x half> %52, half %47, i64 1, !dbg !173
  %54 = insertelement <4 x half> %53, half %49, i64 2, !dbg !173
  %55 = insertelement <4 x half> %54, half %51, i64 3, !dbg !173
  %conv.i.i = fpext half %45 to float, !dbg !174
  %add334 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !179
  %conv.i.i.1 = fpext half %47 to float, !dbg !174
  %add334.1 = fadd contract float %add334, %conv.i.i.1, !dbg !179
  %conv.i.i.2 = fpext half %49 to float, !dbg !174
  %add334.2 = fadd contract float %add334.1, %conv.i.i.2, !dbg !179
  %conv.i.i.3 = fpext half %51 to float, !dbg !174
  %add334.3 = fadd contract float %add334.2, %conv.i.i.3, !dbg !179
  fence syncscope("warp") release, !dbg !180
  tail call void @llvm.mxc.barrier.warp(), !dbg !183
  fence syncscope("warp") acquire, !dbg !184
  %56 = shl nuw nsw i32 %2, 4
  %mul351 = and i32 %56, 16256
  %add352 = or disjoint i32 %mul351, %mul108
  %add355 = or disjoint i32 %add352, %xor731
  %add357 = add nuw nsw i32 %add355, %mul112
  %57 = zext nneg i32 %add357 to i64, !dbg !185
  %add.ptr363 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %57, !dbg !186
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %add.ptr363, align 16, !dbg !187
  %v_fetch.sroa.4.0.add.ptr363.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr363, i64 2, !dbg !187
  %v_fetch.sroa.4.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.4.0.add.ptr363.sroa_idx, align 2, !dbg !187, !tbaa !30
  %v_fetch.sroa.5.0.add.ptr363.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr363, i64 4, !dbg !187
  %v_fetch.sroa.5.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.5.0.add.ptr363.sroa_idx, align 4, !dbg !187
  %v_fetch.sroa.6.0.add.ptr363.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr363, i64 6, !dbg !187
  %v_fetch.sroa.6.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.6.0.add.ptr363.sroa_idx, align 2, !dbg !187, !tbaa !30
  %v_fetch.sroa.7.0.add.ptr363.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr363, i64 8, !dbg !187
  %v_fetch.sroa.7.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.7.0.add.ptr363.sroa_idx, align 8, !dbg !187
  %v_fetch.sroa.8.0.add.ptr363.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr363, i64 10, !dbg !187
  %v_fetch.sroa.8.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.8.0.add.ptr363.sroa_idx, align 2, !dbg !187, !tbaa !30
  %v_fetch.sroa.9.0.add.ptr363.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr363, i64 12, !dbg !187
  %v_fetch.sroa.9.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.9.0.add.ptr363.sroa_idx, align 4, !dbg !187
  %v_fetch.sroa.10.0.add.ptr363.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr363, i64 14, !dbg !187
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0.add.ptr363.sroa_idx, align 2, !dbg !187, !tbaa !30
  %58 = or disjoint i64 %57, 64, !dbg !188
  %add.ptr363.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %58, !dbg !186
  %v_fetch.sroa.11.16.copyload = load i16, ptr addrspace(4) %add.ptr363.1, align 16, !dbg !187
  %v_fetch.sroa.13.16.add.ptr363.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr363.1, i64 2, !dbg !187
  %v_fetch.sroa.13.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.13.16.add.ptr363.1.sroa_idx, align 2, !dbg !187, !tbaa !30
  %v_fetch.sroa.14.16.add.ptr363.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr363.1, i64 4, !dbg !187
  %v_fetch.sroa.14.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.16.add.ptr363.1.sroa_idx, align 4, !dbg !187
  %v_fetch.sroa.15.16.add.ptr363.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr363.1, i64 6, !dbg !187
  %v_fetch.sroa.15.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.15.16.add.ptr363.1.sroa_idx, align 2, !dbg !187, !tbaa !30
  %v_fetch.sroa.16.16.add.ptr363.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr363.1, i64 8, !dbg !187
  %v_fetch.sroa.16.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.16.16.add.ptr363.1.sroa_idx, align 8, !dbg !187
  %v_fetch.sroa.17.16.add.ptr363.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr363.1, i64 10, !dbg !187
  %v_fetch.sroa.17.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.17.16.add.ptr363.1.sroa_idx, align 2, !dbg !187, !tbaa !30
  %v_fetch.sroa.18.16.add.ptr363.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr363.1, i64 12, !dbg !187
  %v_fetch.sroa.18.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.16.add.ptr363.1.sroa_idx, align 4, !dbg !187
  %v_fetch.sroa.19.16.add.ptr363.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr363.1, i64 14, !dbg !187
  %v_fetch.sroa.19.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.19.16.add.ptr363.1.sroa_idx, align 2, !dbg !187, !tbaa !30
  %and393 = shl nuw nsw i32 %2, 1
  %mul394 = and i32 %and393, 14
  %call398.mask = and i32 %2, 16
  %and406 = lshr i32 %2, 1
  %shr407 = and i32 %and406, 3
  %xor408 = xor i32 %shr407, %and60
  %mul416 = and i32 %21, 2
  %xor401724 = shl nuw nsw i32 %mul394, 4, !dbg !189
  %mul402 = or disjoint i32 %xor401724, %call398.mask, !dbg !189
  %mul411 = shl nuw nsw i32 %xor408, 2, !dbg !190
  %add412 = add nuw nsw i32 %mul402, %mul411, !dbg !191
  %add417 = or disjoint i32 %add412, %mul416, !dbg !192
  %add.ptr419 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add417, !dbg !193
  %v_column.sroa.18.0.insert.ext = zext i16 %v_fetch.sroa.11.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift = shl nuw i32 %v_column.sroa.18.0.insert.ext, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.18.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr419, align 4, !dbg !194, !tbaa !30
  %add395.1 = shl nuw nsw i32 %mul394, 4, !dbg !189
  %xor401724.1 = or disjoint i32 %add395.1, %call398.mask, !dbg !189
  %mul402.1 = or disjoint i32 %xor401724.1, 256, !dbg !189
  %xor410.1 = shl nuw nsw i32 %xor408, 2, !dbg !190
  %mul411.1 = xor i32 %xor410.1, 4, !dbg !190
  %add412.1 = add nuw nsw i32 %mul402.1, %mul411.1, !dbg !191
  %add417.1 = or disjoint i32 %add412.1, %mul416, !dbg !192
  %add.ptr419.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add417.1, !dbg !193
  %v_column.sroa.18.0.insert.ext861 = zext i16 %v_fetch.sroa.13.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift862 = shl nuw i32 %v_column.sroa.18.0.insert.ext861, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext833 = zext i16 %v_fetch.sroa.4.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert835 = or disjoint i32 %v_column.sroa.18.0.insert.shift862, %v_column.sroa.0.0.insert.ext833, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert835, ptr addrspace(3) %add.ptr419.1, align 4, !dbg !194, !tbaa !30
  %add395.2 = shl nuw nsw i32 %mul394, 4, !dbg !189
  %xor401724.2 = or disjoint i32 %add395.2, %call398.mask, !dbg !189
  %mul402.2 = or disjoint i32 %xor401724.2, 512, !dbg !189
  %xor410.2 = shl nuw nsw i32 %xor408, 2, !dbg !190
  %mul411.2 = xor i32 %xor410.2, 8, !dbg !190
  %add412.2 = add nuw nsw i32 %mul402.2, %mul411.2, !dbg !191
  %add417.2 = or disjoint i32 %add412.2, %mul416, !dbg !192
  %add.ptr419.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add417.2, !dbg !193
  %v_column.sroa.18.0.insert.ext866 = zext i16 %v_fetch.sroa.14.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift867 = shl nuw i32 %v_column.sroa.18.0.insert.ext866, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext837 = zext i16 %v_fetch.sroa.5.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert839 = or disjoint i32 %v_column.sroa.18.0.insert.shift867, %v_column.sroa.0.0.insert.ext837, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert839, ptr addrspace(3) %add.ptr419.2, align 4, !dbg !194, !tbaa !30
  %add395.3 = shl nuw nsw i32 %mul394, 4, !dbg !189
  %xor401724.3 = or disjoint i32 %add395.3, %call398.mask, !dbg !189
  %mul402.3 = or disjoint i32 %xor401724.3, 768, !dbg !189
  %xor410.3 = shl nuw nsw i32 %xor408, 2, !dbg !190
  %mul411.3 = xor i32 %xor410.3, 12, !dbg !190
  %add412.3 = add nuw nsw i32 %mul402.3, %mul411.3, !dbg !191
  %add417.3 = or disjoint i32 %add412.3, %mul416, !dbg !192
  %add.ptr419.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add417.3, !dbg !193
  %v_column.sroa.18.0.insert.ext871 = zext i16 %v_fetch.sroa.15.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift872 = shl nuw i32 %v_column.sroa.18.0.insert.ext871, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext841 = zext i16 %v_fetch.sroa.6.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert843 = or disjoint i32 %v_column.sroa.18.0.insert.shift872, %v_column.sroa.0.0.insert.ext841, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert843, ptr addrspace(3) %add.ptr419.3, align 4, !dbg !194, !tbaa !30
  %add397.4 = shl nuw nsw i32 %mul394, 4, !dbg !189
  %xor401724.4 = or disjoint i32 %add397.4, 16, !dbg !189
  %mul402.4 = xor i32 %xor401724.4, %call398.mask, !dbg !189
  %add412.4 = add nuw nsw i32 %mul402.4, %mul411, !dbg !191
  %add417.4 = or disjoint i32 %add412.4, %mul416, !dbg !192
  %add.ptr419.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add417.4, !dbg !193
  %v_column.sroa.18.0.insert.ext876 = zext i16 %v_fetch.sroa.16.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift877 = shl nuw i32 %v_column.sroa.18.0.insert.ext876, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext845 = zext i16 %v_fetch.sroa.7.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert847 = or disjoint i32 %v_column.sroa.18.0.insert.shift877, %v_column.sroa.0.0.insert.ext845, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert847, ptr addrspace(3) %add.ptr419.4, align 4, !dbg !194, !tbaa !30
  %add397.5 = shl nuw nsw i32 %mul394, 4, !dbg !189
  %xor401724.5 = or disjoint i32 %add397.5, 272, !dbg !189
  %mul402.5 = xor i32 %xor401724.5, %call398.mask, !dbg !189
  %add412.5 = add nuw nsw i32 %mul402.5, %mul411.1, !dbg !191
  %add417.5 = or disjoint i32 %add412.5, %mul416, !dbg !192
  %add.ptr419.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add417.5, !dbg !193
  %v_column.sroa.18.0.insert.ext881 = zext i16 %v_fetch.sroa.17.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift882 = shl nuw i32 %v_column.sroa.18.0.insert.ext881, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext849 = zext i16 %v_fetch.sroa.8.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert851 = or disjoint i32 %v_column.sroa.18.0.insert.shift882, %v_column.sroa.0.0.insert.ext849, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert851, ptr addrspace(3) %add.ptr419.5, align 4, !dbg !194, !tbaa !30
  %add397.6 = shl nuw nsw i32 %mul394, 4, !dbg !189
  %xor401724.6 = or disjoint i32 %add397.6, 528, !dbg !189
  %mul402.6 = xor i32 %xor401724.6, %call398.mask, !dbg !189
  %add412.6 = add nuw nsw i32 %mul402.6, %mul411.2, !dbg !191
  %add417.6 = or disjoint i32 %add412.6, %mul416, !dbg !192
  %add.ptr419.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add417.6, !dbg !193
  %v_column.sroa.18.0.insert.ext886 = zext i16 %v_fetch.sroa.18.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift887 = shl nuw i32 %v_column.sroa.18.0.insert.ext886, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext853 = zext i16 %v_fetch.sroa.9.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert855 = or disjoint i32 %v_column.sroa.18.0.insert.shift887, %v_column.sroa.0.0.insert.ext853, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert855, ptr addrspace(3) %add.ptr419.6, align 4, !dbg !194, !tbaa !30
  %add397.7 = shl nuw nsw i32 %mul394, 4, !dbg !189
  %xor401724.7 = or disjoint i32 %add397.7, 784, !dbg !189
  %mul402.7 = xor i32 %xor401724.7, %call398.mask, !dbg !189
  %add412.7 = add nuw nsw i32 %mul402.7, %mul411.3, !dbg !191
  %add417.7 = or disjoint i32 %add412.7, %mul416, !dbg !192
  %add.ptr419.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add417.7, !dbg !193
  %v_column.sroa.18.0.insert.ext891 = zext i16 %v_fetch.sroa.19.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift892 = shl nuw i32 %v_column.sroa.18.0.insert.ext891, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext857 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert859 = or disjoint i32 %v_column.sroa.18.0.insert.shift892, %v_column.sroa.0.0.insert.ext857, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert859, ptr addrspace(3) %add.ptr419.7, align 4, !dbg !194, !tbaa !30
  fence syncscope("warp") release, !dbg !195
  tail call void @llvm.mxc.barrier.warp(), !dbg !198
  fence syncscope("warp") acquire, !dbg !199
  %mul429 = and i32 %56, 48
  %shr434 = and i32 %21, 3
  %59 = or disjoint i32 %mul429, %shr434
  %and445 = and i32 %2, 3
  %60 = xor i32 %and60, %and445
  %xor439723 = shl nuw nsw i32 %59, 4, !dbg !200
  %mul440 = xor i32 %xor439723, %call398.mask, !dbg !200
  %61 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul440, !dbg !201
  %add.ptr450.idx = shl nuw nsw i32 %60, 3, !dbg !201
  %add.ptr450 = getelementptr inbounds i8, ptr addrspace(3) %61, i32 %add.ptr450.idx, !dbg !201
  %62 = load <4 x half>, ptr addrspace(3) %add.ptr450, align 8, !dbg !202
  %add435.1 = shl nuw nsw i32 %59, 4, !dbg !200
  %xor439723.1 = or disjoint i32 %add435.1, 64, !dbg !200
  %mul440.1 = xor i32 %xor439723.1, %call398.mask, !dbg !200
  %63 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul440.1, !dbg !201
  %xor446.1 = shl nuw nsw i32 %60, 3, !dbg !201
  %add.ptr450.idx.1 = xor i32 %xor446.1, 8, !dbg !201
  %add.ptr450.1 = getelementptr inbounds i8, ptr addrspace(3) %63, i32 %add.ptr450.idx.1, !dbg !201
  %64 = load <4 x half>, ptr addrspace(3) %add.ptr450.1, align 8, !dbg !202
  %add435.2 = shl nuw nsw i32 %59, 4, !dbg !200
  %xor439723.2 = or disjoint i32 %add435.2, 128, !dbg !200
  %mul440.2 = xor i32 %xor439723.2, %call398.mask, !dbg !200
  %65 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul440.2, !dbg !201
  %xor446.2 = shl nuw nsw i32 %60, 3, !dbg !201
  %add.ptr450.idx.2 = xor i32 %xor446.2, 16, !dbg !201
  %add.ptr450.2 = getelementptr inbounds i8, ptr addrspace(3) %65, i32 %add.ptr450.idx.2, !dbg !201
  %66 = load <4 x half>, ptr addrspace(3) %add.ptr450.2, align 8, !dbg !202
  %add435.3 = shl nuw nsw i32 %59, 4, !dbg !200
  %xor439723.3 = or disjoint i32 %add435.3, 192, !dbg !200
  %mul440.3 = xor i32 %xor439723.3, %call398.mask, !dbg !200
  %67 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul440.3, !dbg !201
  %xor446.3 = shl nuw nsw i32 %60, 3, !dbg !201
  %add.ptr450.idx.3 = xor i32 %xor446.3, 24, !dbg !201
  %add.ptr450.3 = getelementptr inbounds i8, ptr addrspace(3) %67, i32 %add.ptr450.idx.3, !dbg !201
  %68 = load <4 x half>, ptr addrspace(3) %add.ptr450.3, align 8, !dbg !202
  %69 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %62, <4 x half> %55, <4 x float> zeroinitializer), !dbg !203
  %70 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %64, <4 x half> %55, <4 x float> zeroinitializer), !dbg !203
  %71 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %66, <4 x half> %55, <4 x float> zeroinitializer), !dbg !203
  %72 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %68, <4 x half> %55, <4 x float> zeroinitializer), !dbg !203
  %add341 = fadd contract float %add334.3, 0.000000e+00, !dbg !204
  br label %if.end476, !dbg !205

if.end476:                                        ; preds = %if.then, %entry
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %69, %if.then ], !dbg !207
  %numerator.sroa.20.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %70, %if.then ], !dbg !207
  %numerator.sroa.38.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %71, %if.then ], !dbg !207
  %numerator.sroa.56.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %72, %if.then ], !dbg !207
  %denominator.sroa.0.0 = phi float [ 0.000000e+00, %entry ], [ %add341, %if.then ], !dbg !207
  %73 = bitcast float %denominator.sroa.0.0 to i32, !dbg !205
  %74 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !208
  %75 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %74) #10, !dbg !211
  %xor.i.i757 = xor i32 %75, 32, !dbg !212
  %76 = and i32 %75, -64, !dbg !213
  %and.i.i758 = add nsw i32 %76, 64, !dbg !213
  %cmp.not.i.i759 = icmp slt i32 %xor.i.i757, %and.i.i758, !dbg !214
  %cond.i.i760 = select i1 %cmp.not.i.i759, i32 %xor.i.i757, i32 %75, !dbg !215
  %shl.i.i761 = shl i32 %cond.i.i760, 2, !dbg !216
  %77 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i761, i32 %73), !dbg !217
  %78 = bitcast i32 %77 to float, !dbg !218
  %add480 = fadd contract float %denominator.sroa.0.0, %78, !dbg !219
  %79 = bitcast float %add480 to i32, !dbg !220
  %80 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !222
  %81 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %80) #10, !dbg !225
  %xor.i.i762 = xor i32 %81, 16, !dbg !226
  %82 = and i32 %81, -64, !dbg !227
  %and.i.i763 = add nsw i32 %82, 64, !dbg !227
  %cmp.not.i.i764 = icmp slt i32 %xor.i.i762, %and.i.i763, !dbg !228
  %cond.i.i765 = select i1 %cmp.not.i.i764, i32 %xor.i.i762, i32 %81, !dbg !229
  %shl.i.i766 = shl i32 %cond.i.i765, 2, !dbg !230
  %83 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i766, i32 %79), !dbg !231
  %84 = bitcast i32 %83 to float, !dbg !232
  %add485 = fadd contract float %add480, %84, !dbg !233
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !234
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !234
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !234
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !234
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %add485, !dbg !235
  %div505 = fdiv contract float %numerator.sroa.0.4.vec.extract, %add485, !dbg !236
  %div509 = fdiv contract float %numerator.sroa.0.8.vec.extract, %add485, !dbg !237
  %div513 = fdiv contract float %numerator.sroa.0.12.vec.extract, %add485, !dbg !238
  %numerator.sroa.20.16.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 0, !dbg !234
  %numerator.sroa.20.20.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 1, !dbg !234
  %numerator.sroa.20.24.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 2, !dbg !234
  %numerator.sroa.20.28.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 3, !dbg !234
  %div.1 = fdiv contract float %numerator.sroa.20.16.vec.extract, %add485, !dbg !235
  %div505.1 = fdiv contract float %numerator.sroa.20.20.vec.extract, %add485, !dbg !236
  %div509.1 = fdiv contract float %numerator.sroa.20.24.vec.extract, %add485, !dbg !237
  %div513.1 = fdiv contract float %numerator.sroa.20.28.vec.extract, %add485, !dbg !238
  %numerator.sroa.38.32.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 0, !dbg !234
  %numerator.sroa.38.36.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 1, !dbg !234
  %numerator.sroa.38.40.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 2, !dbg !234
  %numerator.sroa.38.44.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 3, !dbg !234
  %div.2 = fdiv contract float %numerator.sroa.38.32.vec.extract, %add485, !dbg !235
  %div505.2 = fdiv contract float %numerator.sroa.38.36.vec.extract, %add485, !dbg !236
  %div509.2 = fdiv contract float %numerator.sroa.38.40.vec.extract, %add485, !dbg !237
  %div513.2 = fdiv contract float %numerator.sroa.38.44.vec.extract, %add485, !dbg !238
  %numerator.sroa.56.48.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 0, !dbg !234
  %numerator.sroa.56.52.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 1, !dbg !234
  %numerator.sroa.56.56.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 2, !dbg !234
  %numerator.sroa.56.60.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 3, !dbg !234
  %div.3 = fdiv contract float %numerator.sroa.56.48.vec.extract, %add485, !dbg !235
  %div505.3 = fdiv contract float %numerator.sroa.56.52.vec.extract, %add485, !dbg !236
  %div509.3 = fdiv contract float %numerator.sroa.56.56.vec.extract, %add485, !dbg !237
  %div513.3 = fdiv contract float %numerator.sroa.56.60.vec.extract, %add485, !dbg !238
  fence syncscope("warp") release, !dbg !239
  tail call void @llvm.mxc.barrier.warp(), !dbg !242
  fence syncscope("warp") acquire, !dbg !243
  %xor562 = shl nuw nsw i32 %8, 2
  %mul563 = and i32 %xor562, 4
  %85 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !244, !noalias !248
  %86 = fptrunc float %div to half, !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %85), !dbg !244, !noalias !248
  %87 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !248
  %88 = fptrunc float %div505 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %87), !dbg !253, !noalias !248
  %89 = bitcast half %86 to i16, !dbg !255
  %90 = bitcast half %88 to i16, !dbg !258
  %91 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !263
  %92 = fptrunc float %div509 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %91), !dbg !259, !noalias !263
  %93 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !263
  %94 = fptrunc float %div513 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %93), !dbg !268, !noalias !263
  %95 = bitcast half %92 to i16, !dbg !270
  %96 = bitcast half %94 to i16, !dbg !272
  %__7.sroa.6.0.insert.ext = zext i16 %96 to i64, !dbg !273
  %__7.sroa.6.0.insert.shift = shl nuw i64 %__7.sroa.6.0.insert.ext, 48, !dbg !273
  %__7.sroa.5.0.insert.ext = zext i16 %95 to i64, !dbg !273
  %__7.sroa.5.0.insert.shift = shl nuw nsw i64 %__7.sroa.5.0.insert.ext, 32, !dbg !273
  %__7.sroa.5.0.insert.insert = or disjoint i64 %__7.sroa.6.0.insert.shift, %__7.sroa.5.0.insert.shift, !dbg !273
  %__7.sroa.4.0.insert.ext = zext i16 %90 to i64, !dbg !273
  %__7.sroa.4.0.insert.shift = shl nuw nsw i64 %__7.sroa.4.0.insert.ext, 16, !dbg !273
  %__7.sroa.4.0.insert.insert = or disjoint i64 %__7.sroa.5.0.insert.insert, %__7.sroa.4.0.insert.shift, !dbg !273
  %__7.sroa.0.0.insert.ext = zext i16 %89 to i64, !dbg !273
  %__7.sroa.0.0.insert.insert = or disjoint i64 %__7.sroa.4.0.insert.insert, %__7.sroa.0.0.insert.ext, !dbg !273
  %add564 = or disjoint i32 %add58, %mul563, !dbg !274
  %add.ptr566 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add564, !dbg !275
  store i64 %__7.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr566, align 8, !dbg !276
  %97 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !244, !noalias !248
  %98 = fptrunc float %div.1 to half, !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %97), !dbg !244, !noalias !248
  %99 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !248
  %100 = fptrunc float %div505.1 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %99), !dbg !253, !noalias !248
  %101 = bitcast half %98 to i16, !dbg !255
  %102 = bitcast half %100 to i16, !dbg !258
  %103 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !263
  %104 = fptrunc float %div509.1 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %103), !dbg !259, !noalias !263
  %105 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !263
  %106 = fptrunc float %div513.1 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %105), !dbg !268, !noalias !263
  %107 = bitcast half %104 to i16, !dbg !270
  %108 = bitcast half %106 to i16, !dbg !272
  %__7.sroa.6.0.insert.ext.1 = zext i16 %108 to i64, !dbg !273
  %__7.sroa.6.0.insert.shift.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.1, 48, !dbg !273
  %__7.sroa.5.0.insert.ext.1 = zext i16 %107 to i64, !dbg !273
  %__7.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1, 32, !dbg !273
  %__7.sroa.5.0.insert.insert.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.1, %__7.sroa.5.0.insert.shift.1, !dbg !273
  %__7.sroa.4.0.insert.ext.1 = zext i16 %102 to i64, !dbg !273
  %__7.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1, 16, !dbg !273
  %__7.sroa.4.0.insert.insert.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.1, %__7.sroa.4.0.insert.shift.1, !dbg !273
  %__7.sroa.0.0.insert.ext.1 = zext i16 %101 to i64, !dbg !273
  %__7.sroa.0.0.insert.insert.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.1, %__7.sroa.0.0.insert.ext.1, !dbg !273
  %add564.1 = or disjoint i32 %add58.1, %mul563, !dbg !274
  %add.ptr566.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add564.1, !dbg !275
  store i64 %__7.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr566.1, align 8, !dbg !276
  %109 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !244, !noalias !248
  %110 = fptrunc float %div.2 to half, !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %109), !dbg !244, !noalias !248
  %111 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !248
  %112 = fptrunc float %div505.2 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %111), !dbg !253, !noalias !248
  %113 = bitcast half %110 to i16, !dbg !255
  %114 = bitcast half %112 to i16, !dbg !258
  %115 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !263
  %116 = fptrunc float %div509.2 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %115), !dbg !259, !noalias !263
  %117 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !263
  %118 = fptrunc float %div513.2 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %117), !dbg !268, !noalias !263
  %119 = bitcast half %116 to i16, !dbg !270
  %120 = bitcast half %118 to i16, !dbg !272
  %__7.sroa.6.0.insert.ext.2 = zext i16 %120 to i64, !dbg !273
  %__7.sroa.6.0.insert.shift.2 = shl nuw i64 %__7.sroa.6.0.insert.ext.2, 48, !dbg !273
  %__7.sroa.5.0.insert.ext.2 = zext i16 %119 to i64, !dbg !273
  %__7.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.2, 32, !dbg !273
  %__7.sroa.5.0.insert.insert.2 = or disjoint i64 %__7.sroa.6.0.insert.shift.2, %__7.sroa.5.0.insert.shift.2, !dbg !273
  %__7.sroa.4.0.insert.ext.2 = zext i16 %114 to i64, !dbg !273
  %__7.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.2, 16, !dbg !273
  %__7.sroa.4.0.insert.insert.2 = or disjoint i64 %__7.sroa.5.0.insert.insert.2, %__7.sroa.4.0.insert.shift.2, !dbg !273
  %__7.sroa.0.0.insert.ext.2 = zext i16 %113 to i64, !dbg !273
  %__7.sroa.0.0.insert.insert.2 = or disjoint i64 %__7.sroa.4.0.insert.insert.2, %__7.sroa.0.0.insert.ext.2, !dbg !273
  %add564.2 = or disjoint i32 %add58.2, %mul563, !dbg !274
  %add.ptr566.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add564.2, !dbg !275
  store i64 %__7.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr566.2, align 8, !dbg !276
  %121 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !244, !noalias !248
  %122 = fptrunc float %div.3 to half, !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %121), !dbg !244, !noalias !248
  %123 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !248
  %124 = fptrunc float %div505.3 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %123), !dbg !253, !noalias !248
  %125 = bitcast half %122 to i16, !dbg !255
  %126 = bitcast half %124 to i16, !dbg !258
  %127 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !263
  %128 = fptrunc float %div509.3 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %127), !dbg !259, !noalias !263
  %129 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !263
  %130 = fptrunc float %div513.3 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %129), !dbg !268, !noalias !263
  %131 = bitcast half %128 to i16, !dbg !270
  %132 = bitcast half %130 to i16, !dbg !272
  %__7.sroa.6.0.insert.ext.3 = zext i16 %132 to i64, !dbg !273
  %__7.sroa.6.0.insert.shift.3 = shl nuw i64 %__7.sroa.6.0.insert.ext.3, 48, !dbg !273
  %__7.sroa.5.0.insert.ext.3 = zext i16 %131 to i64, !dbg !273
  %__7.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.3, 32, !dbg !273
  %__7.sroa.5.0.insert.insert.3 = or disjoint i64 %__7.sroa.6.0.insert.shift.3, %__7.sroa.5.0.insert.shift.3, !dbg !273
  %__7.sroa.4.0.insert.ext.3 = zext i16 %126 to i64, !dbg !273
  %__7.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.3, 16, !dbg !273
  %__7.sroa.4.0.insert.insert.3 = or disjoint i64 %__7.sroa.5.0.insert.insert.3, %__7.sroa.4.0.insert.shift.3, !dbg !273
  %__7.sroa.0.0.insert.ext.3 = zext i16 %125 to i64, !dbg !273
  %__7.sroa.0.0.insert.insert.3 = or disjoint i64 %__7.sroa.4.0.insert.insert.3, %__7.sroa.0.0.insert.ext.3, !dbg !273
  %add564.3 = or disjoint i32 %add58.3, %mul563, !dbg !274
  %add.ptr566.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add564.3, !dbg !275
  store i64 %__7.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr566.3, align 8, !dbg !276
  fence syncscope("warp") release, !dbg !277
  tail call void @llvm.mxc.barrier.warp(), !dbg !280
  fence syncscope("warp") acquire, !dbg !281
  %133 = load i64, ptr addrspace(3) %5, align 16, !dbg !282
  %add.ptr594.1 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 8, !dbg !283
  %134 = load i64, ptr addrspace(3) %add.ptr594.1, align 8, !dbg !282
  %add.ptr615 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !284
  store i64 %133, ptr addrspace(1) %add.ptr615, align 16, !dbg !285
  %output_fetch.sroa.6.0.add.ptr615.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr615, i64 8, !dbg !285
  store i64 %134, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr615.sroa_idx, align 8, !dbg !285
  %add.ptr594.1829 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 1032, !dbg !283
  %135 = load i64, ptr addrspace(3) %add.ptr594.1829, align 8, !dbg !282
  %136 = load i64, ptr addrspace(3) %7, align 16, !dbg !282
  %add.ptr615.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %6, !dbg !284
  store i64 %135, ptr addrspace(1) %add.ptr615.1, align 16, !dbg !285
  %output_fetch.sroa.6.0.add.ptr615.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr615.1, i64 8, !dbg !285
  store i64 %136, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr615.1.sroa_idx, align 8, !dbg !285
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v232_worker2_c5_bounded_kv_index_subagent2/codegen/power_v232/case5_stage1.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v232_worker2_c5_bounded_kv_index_subagent2/codegen/power_v232/case5_stage1.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 27, column: 3, scope: !40)
!44 = !DILocation(line: 28, column: 43, scope: !40)
!45 = !DILocation(line: 28, column: 29, scope: !40)
!46 = !DILocation(line: 31, column: 24, scope: !40)
!47 = !DILocation(line: 31, column: 203, scope: !40)
!48 = !DILocation(line: 28, column: 124, scope: !40)
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
!61 = !DILocation(line: 46, column: 50, scope: !40)
!62 = !DILocation(line: 46, column: 58, scope: !40)
!63 = !DILocation(line: 46, column: 22, scope: !40)
!64 = !DILocation(line: 46, column: 80, scope: !40)
!65 = !DILocation(line: 47, column: 10, scope: !40)
!66 = !DILocation(line: 47, column: 26, scope: !40)
!67 = !DILocation(line: 37, column: 174, scope: !40)
!68 = !DILocation(line: 37, column: 57, scope: !40)
!69 = !DILocation(line: 37, column: 38, scope: !40)
!70 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !71)
!71 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !72)
!72 = distinct !DILocation(line: 48, column: 5, scope: !40)
!73 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !71)
!74 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !71)
!75 = !DILocation(line: 50, column: 5, scope: !40)
!76 = !DILocation(line: 51, column: 45, scope: !40)
!77 = !DILocation(line: 51, column: 31, scope: !40)
!78 = !DILocation(line: 54, column: 211, scope: !40)
!79 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !80)
!80 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !81)
!81 = distinct !DILocation(line: 57, column: 5, scope: !40)
!82 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !80)
!83 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !80)
!84 = !DILocation(line: 62, column: 30, scope: !40)
!85 = !DILocation(line: 64, column: 37, scope: !40)
!86 = !DILocation(line: 72, column: 72, scope: !40)
!87 = !DILocation(line: 72, column: 11, scope: !40)
!88 = !DILocation(line: 72, column: 61, scope: !40)
!89 = !DILocation(line: 351, column: 10, scope: !90, inlinedAt: !92)
!90 = distinct !DISubprogram(name: "max", scope: !91, file: !91, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!91 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!92 = distinct !DILocation(line: 82, column: 20, scope: !40)
!93 = !DILocation(line: 1018, column: 9, scope: !94, inlinedAt: !95)
!94 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!95 = distinct !DILocation(line: 84, column: 34, scope: !40)
!96 = !DILocation(line: 171, column: 37, scope: !97, inlinedAt: !98)
!97 = distinct !DISubprogram(name: "__lane_id", scope: !51, file: !51, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!98 = distinct !DILocation(line: 990, column: 14, scope: !99, inlinedAt: !100)
!99 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!100 = distinct !DILocation(line: 1019, column: 11, scope: !94, inlinedAt: !95)
!101 = !DILocation(line: 171, column: 10, scope: !97, inlinedAt: !98)
!102 = !DILocation(line: 991, column: 20, scope: !99, inlinedAt: !100)
!103 = !DILocation(line: 992, column: 36, scope: !99, inlinedAt: !100)
!104 = !DILocation(line: 992, column: 17, scope: !99, inlinedAt: !100)
!105 = !DILocation(line: 992, column: 11, scope: !99, inlinedAt: !100)
!106 = !DILocation(line: 993, column: 43, scope: !99, inlinedAt: !100)
!107 = !DILocation(line: 993, column: 10, scope: !99, inlinedAt: !100)
!108 = !DILocation(line: 1020, column: 14, scope: !94, inlinedAt: !95)
!109 = !DILocation(line: 351, column: 10, scope: !90, inlinedAt: !110)
!110 = distinct !DILocation(line: 84, column: 18, scope: !40)
!111 = !DILocation(line: 1018, column: 9, scope: !94, inlinedAt: !112)
!112 = distinct !DILocation(line: 85, column: 34, scope: !40)
!113 = !DILocation(line: 171, column: 37, scope: !97, inlinedAt: !114)
!114 = distinct !DILocation(line: 990, column: 14, scope: !99, inlinedAt: !115)
!115 = distinct !DILocation(line: 1019, column: 11, scope: !94, inlinedAt: !112)
!116 = !DILocation(line: 171, column: 10, scope: !97, inlinedAt: !114)
!117 = !DILocation(line: 991, column: 20, scope: !99, inlinedAt: !115)
!118 = !DILocation(line: 992, column: 36, scope: !99, inlinedAt: !115)
!119 = !DILocation(line: 992, column: 17, scope: !99, inlinedAt: !115)
!120 = !DILocation(line: 992, column: 11, scope: !99, inlinedAt: !115)
!121 = !DILocation(line: 993, column: 43, scope: !99, inlinedAt: !115)
!122 = !DILocation(line: 993, column: 10, scope: !99, inlinedAt: !115)
!123 = !DILocation(line: 1020, column: 14, scope: !94, inlinedAt: !112)
!124 = !DILocation(line: 351, column: 10, scope: !90, inlinedAt: !125)
!125 = distinct !DILocation(line: 85, column: 18, scope: !40)
!126 = !DILocation(line: 95, column: 24, scope: !40)
!127 = !DILocation(line: 96, column: 24, scope: !40)
!128 = !DILocation(line: 97, column: 24, scope: !40)
!129 = !DILocation(line: 98, column: 24, scope: !40)
!130 = !DILocation(line: 100, column: 23, scope: !40)
!131 = !DILocation(line: 101, column: 23, scope: !40)
!132 = !DILocation(line: 102, column: 23, scope: !40)
!133 = !DILocation(line: 103, column: 23, scope: !40)
!134 = !DILocation(line: 105, column: 21, scope: !40)
!135 = !DILocation(line: 106, column: 21, scope: !40)
!136 = !DILocation(line: 107, column: 21, scope: !40)
!137 = !DILocation(line: 108, column: 21, scope: !40)
!138 = !DILocation(line: 285, column: 49, scope: !139, inlinedAt: !140)
!139 = distinct !DISubprogram(name: "exp2f", scope: !91, file: !91, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!140 = distinct !DILocation(line: 109, column: 13, scope: !40)
!141 = !DILocation(line: 285, column: 49, scope: !139, inlinedAt: !142)
!142 = distinct !DILocation(line: 110, column: 13, scope: !40)
!143 = !DILocation(line: 285, column: 49, scope: !139, inlinedAt: !144)
!144 = distinct !DILocation(line: 111, column: 13, scope: !40)
!145 = !DILocation(line: 285, column: 49, scope: !139, inlinedAt: !146)
!146 = distinct !DILocation(line: 112, column: 13, scope: !40)
!147 = !DILocation(line: 1007, column: 10, scope: !148, inlinedAt: !150)
!148 = distinct !DISubprogram(name: "__float2half_rn", scope: !149, file: !149, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!149 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!150 = distinct !DILocation(line: 1077, column: 18, scope: !151, inlinedAt: !152)
!151 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !149, file: !149, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!152 = distinct !DILocation(line: 1295, column: 23, scope: !153, inlinedAt: !154)
!153 = distinct !DISubprogram(name: "__float22half2_rn", scope: !149, file: !149, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!154 = distinct !DILocation(line: 113, column: 27, scope: !40)
!155 = !{!156, !158}
!156 = distinct !{!156, !157, !"_ZL17__floats2half2_rnff: %agg.result"}
!157 = distinct !{!157, !"_ZL17__floats2half2_rnff"}
!158 = distinct !{!158, !159, !"_ZL17__float22half2_rn6float2: %agg.result"}
!159 = distinct !{!159, !"_ZL17__float22half2_rn6float2"}
!160 = !DILocation(line: 1007, column: 10, scope: !148, inlinedAt: !161)
!161 = distinct !DILocation(line: 1077, column: 38, scope: !151, inlinedAt: !152)
!162 = !DILocation(line: 1007, column: 10, scope: !148, inlinedAt: !163)
!163 = distinct !DILocation(line: 1077, column: 18, scope: !151, inlinedAt: !164)
!164 = distinct !DILocation(line: 1295, column: 23, scope: !153, inlinedAt: !165)
!165 = distinct !DILocation(line: 114, column: 27, scope: !40)
!166 = !{!167, !169}
!167 = distinct !{!167, !168, !"_ZL17__floats2half2_rnff: %agg.result"}
!168 = distinct !{!168, !"_ZL17__floats2half2_rnff"}
!169 = distinct !{!169, !170, !"_ZL17__float22half2_rn6float2: %agg.result"}
!170 = distinct !{!170, !"_ZL17__float22half2_rn6float2"}
!171 = !DILocation(line: 1007, column: 10, scope: !148, inlinedAt: !172)
!172 = distinct !DILocation(line: 1077, column: 38, scope: !151, inlinedAt: !164)
!173 = !DILocation(line: 115, column: 34, scope: !40)
!174 = !DILocation(line: 1082, column: 16, scope: !175, inlinedAt: !176)
!175 = distinct !DISubprogram(name: "__half2float", scope: !149, file: !149, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!176 = distinct !DILocation(line: 136, column: 55, scope: !177, inlinedAt: !178)
!177 = distinct !DISubprogram(name: "operator float", scope: !149, file: !149, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!178 = distinct !DILocation(line: 119, column: 50, scope: !40)
!179 = !DILocation(line: 119, column: 40, scope: !40)
!180 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !181)
!181 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !182)
!182 = distinct !DILocation(line: 122, column: 5, scope: !40)
!183 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !181)
!184 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !181)
!185 = !DILocation(line: 124, column: 5, scope: !40)
!186 = !DILocation(line: 125, column: 52, scope: !40)
!187 = !DILocation(line: 125, column: 38, scope: !40)
!188 = !DILocation(line: 125, column: 170, scope: !40)
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
!205 = !DILocation(line: 1018, column: 9, scope: !94, inlinedAt: !206)
!206 = distinct !DILocation(line: 148, column: 38, scope: !40)
!207 = !DILocation(line: 0, scope: !40)
!208 = !DILocation(line: 171, column: 37, scope: !97, inlinedAt: !209)
!209 = distinct !DILocation(line: 990, column: 14, scope: !99, inlinedAt: !210)
!210 = distinct !DILocation(line: 1019, column: 11, scope: !94, inlinedAt: !206)
!211 = !DILocation(line: 171, column: 10, scope: !97, inlinedAt: !209)
!212 = !DILocation(line: 991, column: 20, scope: !99, inlinedAt: !210)
!213 = !DILocation(line: 992, column: 36, scope: !99, inlinedAt: !210)
!214 = !DILocation(line: 992, column: 17, scope: !99, inlinedAt: !210)
!215 = !DILocation(line: 992, column: 11, scope: !99, inlinedAt: !210)
!216 = !DILocation(line: 993, column: 43, scope: !99, inlinedAt: !210)
!217 = !DILocation(line: 993, column: 10, scope: !99, inlinedAt: !210)
!218 = !DILocation(line: 1020, column: 14, scope: !94, inlinedAt: !206)
!219 = !DILocation(line: 148, column: 36, scope: !40)
!220 = !DILocation(line: 1018, column: 9, scope: !94, inlinedAt: !221)
!221 = distinct !DILocation(line: 149, column: 38, scope: !40)
!222 = !DILocation(line: 171, column: 37, scope: !97, inlinedAt: !223)
!223 = distinct !DILocation(line: 990, column: 14, scope: !99, inlinedAt: !224)
!224 = distinct !DILocation(line: 1019, column: 11, scope: !94, inlinedAt: !221)
!225 = !DILocation(line: 171, column: 10, scope: !97, inlinedAt: !223)
!226 = !DILocation(line: 991, column: 20, scope: !99, inlinedAt: !224)
!227 = !DILocation(line: 992, column: 36, scope: !99, inlinedAt: !224)
!228 = !DILocation(line: 992, column: 17, scope: !99, inlinedAt: !224)
!229 = !DILocation(line: 992, column: 11, scope: !99, inlinedAt: !224)
!230 = !DILocation(line: 993, column: 43, scope: !99, inlinedAt: !224)
!231 = !DILocation(line: 993, column: 10, scope: !99, inlinedAt: !224)
!232 = !DILocation(line: 1020, column: 14, scope: !94, inlinedAt: !221)
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
!244 = !DILocation(line: 1007, column: 10, scope: !148, inlinedAt: !245)
!245 = distinct !DILocation(line: 1077, column: 18, scope: !151, inlinedAt: !246)
!246 = distinct !DILocation(line: 1295, column: 23, scope: !153, inlinedAt: !247)
!247 = distinct !DILocation(line: 166, column: 27, scope: !40)
!248 = !{!249, !251}
!249 = distinct !{!249, !250, !"_ZL17__floats2half2_rnff: %agg.result"}
!250 = distinct !{!250, !"_ZL17__floats2half2_rnff"}
!251 = distinct !{!251, !252, !"_ZL17__float22half2_rn6float2: %agg.result"}
!252 = distinct !{!252, !"_ZL17__float22half2_rn6float2"}
!253 = !DILocation(line: 1007, column: 10, scope: !148, inlinedAt: !254)
!254 = distinct !DILocation(line: 1077, column: 38, scope: !151, inlinedAt: !246)
!255 = !DILocation(line: 596, column: 67, scope: !256, inlinedAt: !257)
!256 = distinct !DISubprogram(name: "__half2", scope: !149, file: !149, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!257 = distinct !DILocation(line: 1077, column: 10, scope: !151, inlinedAt: !246)
!258 = !DILocation(line: 596, column: 73, scope: !256, inlinedAt: !257)
!259 = !DILocation(line: 1007, column: 10, scope: !148, inlinedAt: !260)
!260 = distinct !DILocation(line: 1077, column: 18, scope: !151, inlinedAt: !261)
!261 = distinct !DILocation(line: 1295, column: 23, scope: !153, inlinedAt: !262)
!262 = distinct !DILocation(line: 167, column: 27, scope: !40)
!263 = !{!264, !266}
!264 = distinct !{!264, !265, !"_ZL17__floats2half2_rnff: %agg.result"}
!265 = distinct !{!265, !"_ZL17__floats2half2_rnff"}
!266 = distinct !{!266, !267, !"_ZL17__float22half2_rn6float2: %agg.result"}
!267 = distinct !{!267, !"_ZL17__float22half2_rn6float2"}
!268 = !DILocation(line: 1007, column: 10, scope: !148, inlinedAt: !269)
!269 = distinct !DILocation(line: 1077, column: 38, scope: !151, inlinedAt: !261)
!270 = !DILocation(line: 596, column: 67, scope: !256, inlinedAt: !271)
!271 = distinct !DILocation(line: 1077, column: 10, scope: !151, inlinedAt: !261)
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
!285 = !DILocation(line: 178, column: 134, scope: !40)
!286 = !DILocation(line: 180, column: 1, scope: !40)
