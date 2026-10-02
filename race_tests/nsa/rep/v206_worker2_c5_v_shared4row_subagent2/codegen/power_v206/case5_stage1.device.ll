; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v206_worker2_c5_v_shared4row_subagent2/codegen/power_v206/case5_stage1.device.cpp'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v206_worker2_c5_v_shared4row_subagent2/codegen/power_v206/case5_stage1.device.cpp"
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
  %xor842 = and i32 %mul11, 56
  %call27.masked = and i32 %2, 1016
  %mul29 = xor i32 %xor842, %call27.masked
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
  %qk_fetch.sroa.0.0.copyload1261 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %qk_fetch.sroa.10.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %qk_fetch.sroa.10.0.copyload1264 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0.add.ptr.1.sroa_idx, align 8, !dbg !45
  %7 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 1024, !dbg !46
  %add.ptr39.1933 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1261, ptr addrspace(3) %add.ptr39.1933, align 8, !dbg !47
  %add.ptr39.1.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.10.0.copyload1264, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !47
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
  br i1 %or.cond, label %if.end565, label %if.then, !dbg !66

if.then:                                          ; preds = %entry
  %xor65841 = xor i32 %8, %2
  %xor68 = shl nuw nsw i32 %xor65841, 2
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
  %conv = zext nneg i32 %0 to i64
  %conv112 = zext nneg i32 %mul99 to i64
  %mul117 = zext nneg i32 %mul11 to i64
  %.idx = shl nuw nsw i64 %conv112, 7
  %invariant.gep = getelementptr inbounds i8, ptr addrspace(4) %K.coerce, i64 %.idx, !dbg !75
  %invariant.gep905 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %mul117, !dbg !75
  %.idx925 = shl nuw nsw i64 %conv, 17, !dbg !76
  %14 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep905, i64 %.idx925, !dbg !76
  %qk_fetch.sroa.0.0.copyload1260 = load i64, ptr addrspace(4) %14, align 16, !dbg !77
  %qk_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %14, i64 8, !dbg !77
  %qk_fetch.sroa.10.0.copyload1263 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0..sroa_idx, align 8, !dbg !77
  store i64 %qk_fetch.sroa.0.0.copyload1260, ptr addrspace(3) %add.ptr39, align 8, !dbg !78
  store i64 %qk_fetch.sroa.10.0.copyload1263, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !78
  %gep906.1 = getelementptr inbounds i8, ptr addrspace(4) %14, i64 1024, !dbg !76
  %qk_fetch.sroa.0.0.copyload1262 = load i64, ptr addrspace(4) %gep906.1, align 16, !dbg !77
  %qk_fetch.sroa.10.0.gep906.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %14, i64 1032, !dbg !77
  %qk_fetch.sroa.10.0.copyload1265 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0.gep906.1.sroa_idx, align 8, !dbg !77
  store i64 %qk_fetch.sroa.0.0.copyload1262, ptr addrspace(3) %add.ptr39.1933, align 8, !dbg !78
  store i64 %qk_fetch.sroa.10.0.copyload1265, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !78
  fence syncscope("warp") release, !dbg !79
  tail call void @llvm.mxc.barrier.warp(), !dbg !82
  fence syncscope("warp") acquire, !dbg !83
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !84
  %15 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %13, <4 x float> zeroinitializer), !dbg !85
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !84
  %16 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %12, <4 x float> %15), !dbg !85
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !84
  %17 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %11, <4 x float> %16), !dbg !85
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !84
  %18 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %10, <4 x float> %17), !dbg !85
  %19 = lshr i32 %2, 2
  %mul211 = and i32 %19, 252
  %add212 = add nuw nsw i32 %mul99, %mul211
  %cmp215.not = icmp sgt i32 %add212, %1, !dbg !86
  %scores.sroa.0.0.vec.extract1143 = extractelement <4 x float> %18, i64 0
  %spec.select = select i1 %cmp215.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1143, !dbg !87
  %cmp215.not.1.not = icmp slt i32 %add212, %1, !dbg !86
  %scores.sroa.0.4.vec.extract1150 = extractelement <4 x float> %18, i64 1, !dbg !87
  %condval.0.1 = select i1 %cmp215.not.1.not, float %scores.sroa.0.4.vec.extract1150, float 0xFFF0000000000000, !dbg !87
  %add213.2 = or disjoint i32 %add212, 2, !dbg !88
  %cmp215.not.2 = icmp sgt i32 %add213.2, %1, !dbg !86
  %scores.sroa.0.8.vec.extract1157 = extractelement <4 x float> %18, i64 2, !dbg !87
  %condval.0.2 = select i1 %cmp215.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1157, !dbg !87
  %add213.3 = or disjoint i32 %add212, 3, !dbg !88
  %cmp215.not.3 = icmp sgt i32 %add213.3, %1, !dbg !86
  %scores.sroa.0.12.vec.extract1164 = extractelement <4 x float> %18, i64 3, !dbg !87
  %condval.0.3 = select i1 %cmp215.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1164, !dbg !87
  %20 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !89
  %21 = tail call contract noundef float @llvm.maxnum.f32(float %20, float %condval.0.1), !dbg !89
  %22 = tail call contract noundef float @llvm.maxnum.f32(float %21, float %condval.0.2), !dbg !89
  %23 = tail call contract noundef float @llvm.maxnum.f32(float %22, float %condval.0.3), !dbg !89
  %24 = bitcast float %23 to i32, !dbg !93
  %25 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !96
  %26 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %25) #10, !dbg !101
  %xor.i.i = xor i32 %26, 32, !dbg !102
  %27 = and i32 %26, -64, !dbg !103
  %and.i.i = add nsw i32 %27, 64, !dbg !103
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !104
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %26, !dbg !105
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !106
  %28 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %24), !dbg !107
  %29 = bitcast i32 %28 to float, !dbg !108
  %30 = tail call contract noundef float @llvm.maxnum.f32(float %23, float %29), !dbg !109
  %31 = bitcast float %30 to i32, !dbg !111
  %32 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !113
  %33 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %32) #10, !dbg !116
  %xor.i.i844 = xor i32 %33, 16, !dbg !117
  %34 = and i32 %33, -64, !dbg !118
  %and.i.i845 = add nsw i32 %34, 64, !dbg !118
  %cmp.not.i.i846 = icmp slt i32 %xor.i.i844, %and.i.i845, !dbg !119
  %cond.i.i847 = select i1 %cmp.not.i.i846, i32 %xor.i.i844, i32 %33, !dbg !120
  %shl.i.i848 = shl i32 %cond.i.i847, 2, !dbg !121
  %35 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i848, i32 %31), !dbg !122
  %36 = bitcast i32 %35 to float, !dbg !123
  %37 = tail call contract noundef float @llvm.maxnum.f32(float %30, float %36), !dbg !124
  %sub = fsub contract float %spec.select, %37, !dbg !126
  %sub261 = fsub contract float %condval.0.1, %37, !dbg !127
  %sub264 = fsub contract float %condval.0.2, %37, !dbg !128
  %sub267 = fsub contract float %condval.0.3, %37, !dbg !129
  %mul272 = fmul contract float %sub, 0x3FC7154760000000, !dbg !130
  %mul276 = fmul contract float %sub261, 0x3FC7154760000000, !dbg !131
  %mul280 = fmul contract float %sub264, 0x3FC7154760000000, !dbg !132
  %mul284 = fmul contract float %sub267, 0x3FC7154760000000, !dbg !133
  %add289 = fadd contract float %mul272, 8.000000e+00, !dbg !134
  %add293 = fadd contract float %mul276, 8.000000e+00, !dbg !135
  %add297 = fadd contract float %mul280, 8.000000e+00, !dbg !136
  %add301 = fadd contract float %mul284, 8.000000e+00, !dbg !137
  %cmp.i.i = fcmp contract olt float %add289, -1.260000e+02, !dbg !138
  %cond.i.i849 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !138
  %add.i.i = fadd contract float %add289, %cond.i.i849, !dbg !138
  %38 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !138
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !138
  %mul.i.i = fmul contract float %cond2.i.i, %38, !dbg !138
  %cmp.i.i850 = fcmp contract olt float %add293, -1.260000e+02, !dbg !141
  %cond.i.i851 = select contract i1 %cmp.i.i850, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i852 = fadd contract float %add293, %cond.i.i851, !dbg !141
  %39 = tail call contract float @llvm.exp2.f32(float %add.i.i852), !dbg !141
  %cond2.i.i853 = select contract i1 %cmp.i.i850, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %mul.i.i854 = fmul contract float %cond2.i.i853, %39, !dbg !141
  %cmp.i.i855 = fcmp contract olt float %add297, -1.260000e+02, !dbg !143
  %cond.i.i856 = select contract i1 %cmp.i.i855, float 6.400000e+01, float 0.000000e+00, !dbg !143
  %add.i.i857 = fadd contract float %add297, %cond.i.i856, !dbg !143
  %40 = tail call contract float @llvm.exp2.f32(float %add.i.i857), !dbg !143
  %cond2.i.i858 = select contract i1 %cmp.i.i855, float 0x3BF0000000000000, float 1.000000e+00, !dbg !143
  %mul.i.i859 = fmul contract float %cond2.i.i858, %40, !dbg !143
  %cmp.i.i860 = fcmp contract olt float %add301, -1.260000e+02, !dbg !145
  %cond.i.i861 = select contract i1 %cmp.i.i860, float 6.400000e+01, float 0.000000e+00, !dbg !145
  %add.i.i862 = fadd contract float %add301, %cond.i.i861, !dbg !145
  %41 = tail call contract float @llvm.exp2.f32(float %add.i.i862), !dbg !145
  %cond2.i.i863 = select contract i1 %cmp.i.i860, float 0x3BF0000000000000, float 1.000000e+00, !dbg !145
  %mul.i.i864 = fmul contract float %cond2.i.i863, %41, !dbg !145
  %42 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !147
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !147, !noalias !155
  %43 = fptrunc float %mul.i.i to half, !dbg !147
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %42), !dbg !147, !noalias !155
  %44 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !160, !noalias !155
  %45 = fptrunc float %mul.i.i854 to half, !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %44), !dbg !160, !noalias !155
  %46 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !162
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !162, !noalias !166
  %47 = fptrunc float %mul.i.i859 to half, !dbg !162
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %46), !dbg !162, !noalias !166
  %48 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !166
  %49 = fptrunc float %mul.i.i864 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %48), !dbg !171, !noalias !166
  %50 = insertelement <4 x half> poison, half %43, i64 0, !dbg !173
  %51 = insertelement <4 x half> %50, half %45, i64 1, !dbg !173
  %52 = insertelement <4 x half> %51, half %47, i64 2, !dbg !173
  %53 = insertelement <4 x half> %52, half %49, i64 3, !dbg !173
  %conv.i.i = fpext half %43 to float, !dbg !174
  %add335 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !179
  %conv.i.i.1 = fpext half %45 to float, !dbg !174
  %add335.1 = fadd contract float %add335, %conv.i.i.1, !dbg !179
  %conv.i.i.2 = fpext half %47 to float, !dbg !174
  %add335.2 = fadd contract float %add335.1, %conv.i.i.2, !dbg !179
  %conv.i.i.3 = fpext half %49 to float, !dbg !174
  %add335.3 = fadd contract float %add335.2, %conv.i.i.3, !dbg !179
  fence syncscope("warp") release, !dbg !180
  tail call void @llvm.mxc.barrier.warp(), !dbg !183
  fence syncscope("warp") acquire, !dbg !184
  %mul350 = shl nuw nsw i64 %conv, 16
  %54 = shl nuw nsw i32 %2, 4
  %55 = and i32 %54, 16256
  %mul354 = zext nneg i32 %55 to i64
  %add355 = or disjoint i64 %mul350, %mul354
  %mul365 = zext nneg i32 %xor842 to i64
  %add358 = or disjoint i64 %add355, %mul365
  %56 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add358, !dbg !185
  %57 = getelementptr inbounds i8, ptr addrspace(4) %56, i64 %.idx, !dbg !185
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %57, align 16, !dbg !186
  %v_fetch.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %57, i64 2, !dbg !186
  %v_fetch.sroa.6.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.6.0..sroa_idx, align 2, !dbg !186, !tbaa !30
  %v_fetch.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %57, i64 4, !dbg !186
  %v_fetch.sroa.9.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.9.0..sroa_idx, align 4, !dbg !186
  %v_fetch.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %57, i64 6, !dbg !186
  %v_fetch.sroa.12.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.12.0..sroa_idx, align 2, !dbg !186, !tbaa !30
  %v_fetch.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %57, i64 8, !dbg !186
  %v_fetch.sroa.15.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.15.0..sroa_idx, align 8, !dbg !186
  %v_fetch.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %57, i64 10, !dbg !186
  %v_fetch.sroa.18.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx, align 2, !dbg !186, !tbaa !30
  %v_fetch.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %57, i64 12, !dbg !186
  %v_fetch.sroa.21.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.21.0..sroa_idx, align 4, !dbg !186
  %v_fetch.sroa.24.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %57, i64 14, !dbg !186
  %v_fetch.sroa.24.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.24.0..sroa_idx, align 2, !dbg !186, !tbaa !30
  %add.ptr367.1 = getelementptr inbounds i8, ptr addrspace(4) %57, i64 128, !dbg !185
  %v_fetch.sroa.27.16.copyload = load i16, ptr addrspace(4) %add.ptr367.1, align 16, !dbg !186
  %v_fetch.sroa.31.16.add.ptr367.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %57, i64 130, !dbg !186
  %v_fetch.sroa.31.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.31.16.add.ptr367.1.sroa_idx, align 2, !dbg !186, !tbaa !30
  %v_fetch.sroa.34.16.add.ptr367.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %57, i64 132, !dbg !186
  %v_fetch.sroa.34.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.34.16.add.ptr367.1.sroa_idx, align 4, !dbg !186
  %v_fetch.sroa.37.16.add.ptr367.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %57, i64 134, !dbg !186
  %v_fetch.sroa.37.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.37.16.add.ptr367.1.sroa_idx, align 2, !dbg !186, !tbaa !30
  %v_fetch.sroa.40.16.add.ptr367.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %57, i64 136, !dbg !186
  %v_fetch.sroa.40.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.40.16.add.ptr367.1.sroa_idx, align 8, !dbg !186
  %v_fetch.sroa.43.16.add.ptr367.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %57, i64 138, !dbg !186
  %v_fetch.sroa.43.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.43.16.add.ptr367.1.sroa_idx, align 2, !dbg !186, !tbaa !30
  %v_fetch.sroa.46.16.add.ptr367.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %57, i64 140, !dbg !186
  %v_fetch.sroa.46.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.add.ptr367.1.sroa_idx, align 4, !dbg !186
  %v_fetch.sroa.49.16.add.ptr367.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %57, i64 142, !dbg !186
  %v_fetch.sroa.49.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.49.16.add.ptr367.1.sroa_idx, align 2, !dbg !186, !tbaa !30
  %58 = and i32 %2, 8
  %cmp386 = icmp eq i32 %58, 0
  %idxprom392.pn.in.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.15.0.copyload, i16 %v_fetch.sroa.0.0.copyload, !dbg !187
  %idxprom410.pn.in.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.18.0.copyload, i16 %v_fetch.sroa.6.0.copyload, !dbg !188
  %conv420 = zext i16 %idxprom392.pn.in.sroa.phi.sroa.speculated to i32, !dbg !189
  %conv421 = zext i16 %idxprom410.pn.in.sroa.phi.sroa.speculated to i32, !dbg !190
  %shl = shl nuw i32 %conv421, 16, !dbg !191
  %or = or disjoint i32 %shl, %conv420, !dbg !192
  %59 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !193
  %60 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %59) #10, !dbg !198
  %xor.i.i866 = xor i32 %60, 8, !dbg !199
  %61 = and i32 %60, -64, !dbg !200
  %and.i.i867 = add nsw i32 %61, 64, !dbg !200
  %cmp.not.i.i868 = icmp slt i32 %xor.i.i866, %and.i.i867, !dbg !201
  %cond.i.i869 = select i1 %cmp.not.i.i868, i32 %xor.i.i866, i32 %60, !dbg !202
  %shl.i.i870 = shl i32 %cond.i.i869, 2, !dbg !203
  %62 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i870, i32 %or), !dbg !204
  %idxprom392.pn.in.1.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.21.0.copyload, i16 %v_fetch.sroa.9.0.copyload, !dbg !187
  %idxprom410.pn.in.1.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.24.0.copyload, i16 %v_fetch.sroa.12.0.copyload, !dbg !188
  %conv420.1 = zext i16 %idxprom392.pn.in.1.sroa.phi.sroa.speculated to i32, !dbg !189
  %conv421.1 = zext i16 %idxprom410.pn.in.1.sroa.phi.sroa.speculated to i32, !dbg !190
  %shl.1 = shl nuw i32 %conv421.1, 16, !dbg !191
  %or.1 = or disjoint i32 %shl.1, %conv420.1, !dbg !192
  %63 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !193
  %64 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %63) #10, !dbg !198
  %xor.i.i866.1 = xor i32 %64, 8, !dbg !199
  %65 = and i32 %64, -64, !dbg !200
  %and.i.i867.1 = add nsw i32 %65, 64, !dbg !200
  %cmp.not.i.i868.1 = icmp slt i32 %xor.i.i866.1, %and.i.i867.1, !dbg !201
  %cond.i.i869.1 = select i1 %cmp.not.i.i868.1, i32 %xor.i.i866.1, i32 %64, !dbg !202
  %shl.i.i870.1 = shl i32 %cond.i.i869.1, 2, !dbg !203
  %66 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i870.1, i32 %or.1), !dbg !204
  %idxprom392.pn.in.1942.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.40.16.copyload, i16 %v_fetch.sroa.27.16.copyload, !dbg !187
  %idxprom410.pn.in.1950.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.43.16.copyload, i16 %v_fetch.sroa.31.16.copyload, !dbg !188
  %conv420.1953 = zext i16 %idxprom392.pn.in.1942.sroa.phi.sroa.speculated to i32, !dbg !189
  %conv421.1954 = zext i16 %idxprom410.pn.in.1950.sroa.phi.sroa.speculated to i32, !dbg !190
  %shl.1955 = shl nuw i32 %conv421.1954, 16, !dbg !191
  %or.1956 = or disjoint i32 %shl.1955, %conv420.1953, !dbg !192
  %67 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !193
  %68 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %67) #10, !dbg !198
  %xor.i.i866.1957 = xor i32 %68, 8, !dbg !199
  %69 = and i32 %68, -64, !dbg !200
  %and.i.i867.1958 = add nsw i32 %69, 64, !dbg !200
  %cmp.not.i.i868.1959 = icmp slt i32 %xor.i.i866.1957, %and.i.i867.1958, !dbg !201
  %cond.i.i869.1960 = select i1 %cmp.not.i.i868.1959, i32 %xor.i.i866.1957, i32 %68, !dbg !202
  %shl.i.i870.1961 = shl i32 %cond.i.i869.1960, 2, !dbg !203
  %70 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i870.1961, i32 %or.1956), !dbg !204
  %idxprom392.pn.in.1.1.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.46.16.copyload, i16 %v_fetch.sroa.34.16.copyload, !dbg !187
  %idxprom410.pn.in.1.1.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.49.16.copyload, i16 %v_fetch.sroa.37.16.copyload, !dbg !188
  %conv420.1.1 = zext i16 %idxprom392.pn.in.1.1.sroa.phi.sroa.speculated to i32, !dbg !189
  %conv421.1.1 = zext i16 %idxprom410.pn.in.1.1.sroa.phi.sroa.speculated to i32, !dbg !190
  %shl.1.1 = shl nuw i32 %conv421.1.1, 16, !dbg !191
  %or.1.1 = or disjoint i32 %shl.1.1, %conv420.1.1, !dbg !192
  %71 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !193
  %72 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %71) #10, !dbg !198
  %xor.i.i866.1.1 = xor i32 %72, 8, !dbg !199
  %73 = and i32 %72, -64, !dbg !200
  %and.i.i867.1.1 = add nsw i32 %73, 64, !dbg !200
  %cmp.not.i.i868.1.1 = icmp slt i32 %xor.i.i866.1.1, %and.i.i867.1.1, !dbg !201
  %cond.i.i869.1.1 = select i1 %cmp.not.i.i868.1.1, i32 %xor.i.i866.1.1, i32 %72, !dbg !202
  %shl.i.i870.1.1 = shl i32 %cond.i.i869.1.1, 2, !dbg !203
  %74 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i870.1.1, i32 %or.1.1), !dbg !204
  %and486 = shl nuw nsw i32 %2, 1
  %mul487 = and i32 %and486, 14
  %call493.mask = and i32 %2, 16
  %and501 = lshr i32 %2, 1
  %shr502 = and i32 %and501, 3
  %xor503 = xor i32 %shr502, %and60
  %idxprom449.pn.in.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.0.0.copyload, i16 %v_fetch.sroa.15.0.copyload, !dbg !205
  %cmp473 = icmp eq i32 %shr34, 0, !dbg !206
  %conv468 = trunc i32 %62 to i16, !dbg !207
  %condval_4.sroa.0.0 = select i1 %cmp473, i16 %idxprom449.pn.in.sroa.phi.sroa.speculated, i16 %conv468, !dbg !207
  %idxprom449.pn.in.1.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.27.16.copyload, i16 %v_fetch.sroa.40.16.copyload, !dbg !205
  %conv468.1 = trunc i32 %70 to i16, !dbg !207
  %condval_4.sroa.0.0.1 = select i1 %cmp473, i16 %idxprom449.pn.in.1.sroa.phi.sroa.speculated, i16 %conv468.1, !dbg !207
  %idxprom449.pn.in.2.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.0.0.copyload, i16 %v_fetch.sroa.15.0.copyload, !dbg !205
  %cmp473.2.not = icmp eq i32 %shr34, 0, !dbg !206
  %condval_4.sroa.0.0.2 = select i1 %cmp473.2.not, i16 %conv468, i16 %idxprom449.pn.in.2.sroa.phi.sroa.speculated, !dbg !207
  %idxprom449.pn.in.3.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.27.16.copyload, i16 %v_fetch.sroa.40.16.copyload, !dbg !205
  %condval_4.sroa.0.0.3 = select i1 %cmp473.2.not, i16 %conv468.1, i16 %idxprom449.pn.in.3.sroa.phi.sroa.speculated, !dbg !207
  %add492 = or disjoint i32 %mul487, %shr34, !dbg !208
  %xor496835 = shl nuw nsw i32 %add492, 4, !dbg !209
  %mul497 = xor i32 %xor496835, %call493.mask, !dbg !209
  %75 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul497, !dbg !210
  %add.ptr508.idx = shl nuw nsw i32 %xor503, 3, !dbg !210
  %add.ptr508 = getelementptr inbounds i8, ptr addrspace(3) %75, i32 %add.ptr508.idx, !dbg !210
  %v_column.sroa.18.0.insert.ext = zext i16 %condval_4.sroa.0.0.3 to i64, !dbg !211
  %v_column.sroa.18.0.insert.shift = shl nuw i64 %v_column.sroa.18.0.insert.ext, 48, !dbg !211
  %v_column.sroa.14.0.insert.ext = zext i16 %condval_4.sroa.0.0.2 to i64, !dbg !211
  %v_column.sroa.14.0.insert.shift = shl nuw nsw i64 %v_column.sroa.14.0.insert.ext, 32, !dbg !211
  %v_column.sroa.14.0.insert.insert = or disjoint i64 %v_column.sroa.18.0.insert.shift, %v_column.sroa.14.0.insert.shift, !dbg !211
  %v_column.sroa.10.0.insert.ext = zext i16 %condval_4.sroa.0.0.1 to i64, !dbg !211
  %v_column.sroa.10.0.insert.shift = shl nuw nsw i64 %v_column.sroa.10.0.insert.ext, 16, !dbg !211
  %v_column.sroa.10.0.insert.insert = or disjoint i64 %v_column.sroa.14.0.insert.insert, %v_column.sroa.10.0.insert.shift, !dbg !211
  %v_column.sroa.0.0.insert.ext = zext i16 %condval_4.sroa.0.0 to i64, !dbg !211
  %v_column.sroa.0.0.insert.insert = or disjoint i64 %v_column.sroa.10.0.insert.insert, %v_column.sroa.0.0.insert.ext, !dbg !211
  store i64 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr508, align 8, !dbg !211
  %idxprom449.pn.in.1967.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.6.0.copyload, i16 %v_fetch.sroa.18.0.copyload, !dbg !205
  %shr467.1972 = lshr i32 %62, 16, !dbg !207
  %conv468.1973 = trunc nuw i32 %shr467.1972 to i16, !dbg !207
  %condval_4.sroa.0.0.1974 = select i1 %cmp473, i16 %idxprom449.pn.in.1967.sroa.phi.sroa.speculated, i16 %conv468.1973, !dbg !207
  %idxprom449.pn.in.1.1.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.31.16.copyload, i16 %v_fetch.sroa.43.16.copyload, !dbg !205
  %shr467.1.1 = lshr i32 %70, 16, !dbg !207
  %conv468.1.1 = trunc nuw i32 %shr467.1.1 to i16, !dbg !207
  %condval_4.sroa.0.0.1.1 = select i1 %cmp473, i16 %idxprom449.pn.in.1.1.sroa.phi.sroa.speculated, i16 %conv468.1.1, !dbg !207
  %idxprom449.pn.in.2.1.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.6.0.copyload, i16 %v_fetch.sroa.18.0.copyload, !dbg !205
  %condval_4.sroa.0.0.2.1 = select i1 %cmp473.2.not, i16 %conv468.1973, i16 %idxprom449.pn.in.2.1.sroa.phi.sroa.speculated, !dbg !207
  %idxprom449.pn.in.3.1.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.31.16.copyload, i16 %v_fetch.sroa.43.16.copyload, !dbg !205
  %condval_4.sroa.0.0.3.1 = select i1 %cmp473.2.not, i16 %conv468.1.1, i16 %idxprom449.pn.in.3.1.sroa.phi.sroa.speculated, !dbg !207
  %add488.1 = or disjoint i32 %mul487, %shr34, !dbg !208
  %add492.1 = shl nuw nsw i32 %add488.1, 4, !dbg !209
  %xor496835.1 = or disjoint i32 %add492.1, 256, !dbg !209
  %mul497.1 = xor i32 %xor496835.1, %call493.mask, !dbg !209
  %76 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul497.1, !dbg !210
  %xor504.1 = shl nuw nsw i32 %xor503, 3, !dbg !210
  %add.ptr508.idx.1 = xor i32 %xor504.1, 8, !dbg !210
  %add.ptr508.1 = getelementptr inbounds i8, ptr addrspace(3) %76, i32 %add.ptr508.idx.1, !dbg !210
  %v_column.sroa.18.0.insert.ext1052 = zext i16 %condval_4.sroa.0.0.3.1 to i64, !dbg !211
  %v_column.sroa.18.0.insert.shift1053 = shl nuw i64 %v_column.sroa.18.0.insert.ext1052, 48, !dbg !211
  %v_column.sroa.14.0.insert.ext1037 = zext i16 %condval_4.sroa.0.0.2.1 to i64, !dbg !211
  %v_column.sroa.14.0.insert.shift1038 = shl nuw nsw i64 %v_column.sroa.14.0.insert.ext1037, 32, !dbg !211
  %v_column.sroa.14.0.insert.insert1040 = or disjoint i64 %v_column.sroa.18.0.insert.shift1053, %v_column.sroa.14.0.insert.shift1038, !dbg !211
  %v_column.sroa.10.0.insert.ext1022 = zext i16 %condval_4.sroa.0.0.1.1 to i64, !dbg !211
  %v_column.sroa.10.0.insert.shift1023 = shl nuw nsw i64 %v_column.sroa.10.0.insert.ext1022, 16, !dbg !211
  %v_column.sroa.10.0.insert.insert1025 = or disjoint i64 %v_column.sroa.14.0.insert.insert1040, %v_column.sroa.10.0.insert.shift1023, !dbg !211
  %v_column.sroa.0.0.insert.ext1010 = zext i16 %condval_4.sroa.0.0.1974 to i64, !dbg !211
  %v_column.sroa.0.0.insert.insert1012 = or disjoint i64 %v_column.sroa.10.0.insert.insert1025, %v_column.sroa.0.0.insert.ext1010, !dbg !211
  store i64 %v_column.sroa.0.0.insert.insert1012, ptr addrspace(3) %add.ptr508.1, align 8, !dbg !211
  %idxprom449.pn.in.2979.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.9.0.copyload, i16 %v_fetch.sroa.21.0.copyload, !dbg !205
  %conv468.2985 = trunc i32 %66 to i16, !dbg !207
  %condval_4.sroa.0.0.2986 = select i1 %cmp473, i16 %idxprom449.pn.in.2979.sroa.phi.sroa.speculated, i16 %conv468.2985, !dbg !207
  %idxprom449.pn.in.1.2.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.34.16.copyload, i16 %v_fetch.sroa.46.16.copyload, !dbg !205
  %conv468.1.2 = trunc i32 %74 to i16, !dbg !207
  %condval_4.sroa.0.0.1.2 = select i1 %cmp473, i16 %idxprom449.pn.in.1.2.sroa.phi.sroa.speculated, i16 %conv468.1.2, !dbg !207
  %idxprom449.pn.in.2.2.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.9.0.copyload, i16 %v_fetch.sroa.21.0.copyload, !dbg !205
  %condval_4.sroa.0.0.2.2 = select i1 %cmp473.2.not, i16 %conv468.2985, i16 %idxprom449.pn.in.2.2.sroa.phi.sroa.speculated, !dbg !207
  %idxprom449.pn.in.3.2.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.34.16.copyload, i16 %v_fetch.sroa.46.16.copyload, !dbg !205
  %condval_4.sroa.0.0.3.2 = select i1 %cmp473.2.not, i16 %conv468.1.2, i16 %idxprom449.pn.in.3.2.sroa.phi.sroa.speculated, !dbg !207
  %add488.2 = or disjoint i32 %mul487, %shr34, !dbg !208
  %add492.2 = shl nuw nsw i32 %add488.2, 4, !dbg !209
  %xor496835.2 = or disjoint i32 %add492.2, 512, !dbg !209
  %mul497.2 = xor i32 %xor496835.2, %call493.mask, !dbg !209
  %77 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul497.2, !dbg !210
  %xor504.2 = shl nuw nsw i32 %xor503, 3, !dbg !210
  %add.ptr508.idx.2 = xor i32 %xor504.2, 16, !dbg !210
  %add.ptr508.2 = getelementptr inbounds i8, ptr addrspace(3) %77, i32 %add.ptr508.idx.2, !dbg !210
  %v_column.sroa.18.0.insert.ext1057 = zext i16 %condval_4.sroa.0.0.3.2 to i64, !dbg !211
  %v_column.sroa.18.0.insert.shift1058 = shl nuw i64 %v_column.sroa.18.0.insert.ext1057, 48, !dbg !211
  %v_column.sroa.14.0.insert.ext1042 = zext i16 %condval_4.sroa.0.0.2.2 to i64, !dbg !211
  %v_column.sroa.14.0.insert.shift1043 = shl nuw nsw i64 %v_column.sroa.14.0.insert.ext1042, 32, !dbg !211
  %v_column.sroa.14.0.insert.insert1045 = or disjoint i64 %v_column.sroa.18.0.insert.shift1058, %v_column.sroa.14.0.insert.shift1043, !dbg !211
  %v_column.sroa.10.0.insert.ext1027 = zext i16 %condval_4.sroa.0.0.1.2 to i64, !dbg !211
  %v_column.sroa.10.0.insert.shift1028 = shl nuw nsw i64 %v_column.sroa.10.0.insert.ext1027, 16, !dbg !211
  %v_column.sroa.10.0.insert.insert1030 = or disjoint i64 %v_column.sroa.14.0.insert.insert1045, %v_column.sroa.10.0.insert.shift1028, !dbg !211
  %v_column.sroa.0.0.insert.ext1014 = zext i16 %condval_4.sroa.0.0.2986 to i64, !dbg !211
  %v_column.sroa.0.0.insert.insert1016 = or disjoint i64 %v_column.sroa.10.0.insert.insert1030, %v_column.sroa.0.0.insert.ext1014, !dbg !211
  store i64 %v_column.sroa.0.0.insert.insert1016, ptr addrspace(3) %add.ptr508.2, align 8, !dbg !211
  %idxprom449.pn.in.3991.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.12.0.copyload, i16 %v_fetch.sroa.24.0.copyload, !dbg !205
  %shr467.3996 = lshr i32 %66, 16, !dbg !207
  %conv468.3997 = trunc nuw i32 %shr467.3996 to i16, !dbg !207
  %condval_4.sroa.0.0.3998 = select i1 %cmp473, i16 %idxprom449.pn.in.3991.sroa.phi.sroa.speculated, i16 %conv468.3997, !dbg !207
  %idxprom449.pn.in.1.3.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.37.16.copyload, i16 %v_fetch.sroa.49.16.copyload, !dbg !205
  %shr467.1.3 = lshr i32 %74, 16, !dbg !207
  %conv468.1.3 = trunc nuw i32 %shr467.1.3 to i16, !dbg !207
  %condval_4.sroa.0.0.1.3 = select i1 %cmp473, i16 %idxprom449.pn.in.1.3.sroa.phi.sroa.speculated, i16 %conv468.1.3, !dbg !207
  %idxprom449.pn.in.2.3.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.12.0.copyload, i16 %v_fetch.sroa.24.0.copyload, !dbg !205
  %condval_4.sroa.0.0.2.3 = select i1 %cmp473.2.not, i16 %conv468.3997, i16 %idxprom449.pn.in.2.3.sroa.phi.sroa.speculated, !dbg !207
  %idxprom449.pn.in.3.3.sroa.phi.sroa.speculated = select i1 %cmp386, i16 %v_fetch.sroa.37.16.copyload, i16 %v_fetch.sroa.49.16.copyload, !dbg !205
  %condval_4.sroa.0.0.3.3 = select i1 %cmp473.2.not, i16 %conv468.1.3, i16 %idxprom449.pn.in.3.3.sroa.phi.sroa.speculated, !dbg !207
  %add488.3 = or disjoint i32 %mul487, %shr34, !dbg !208
  %add492.3 = shl nuw nsw i32 %add488.3, 4, !dbg !209
  %xor496835.3 = or disjoint i32 %add492.3, 768, !dbg !209
  %mul497.3 = xor i32 %xor496835.3, %call493.mask, !dbg !209
  %78 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul497.3, !dbg !210
  %xor504.3 = shl nuw nsw i32 %xor503, 3, !dbg !210
  %add.ptr508.idx.3 = xor i32 %xor504.3, 24, !dbg !210
  %add.ptr508.3 = getelementptr inbounds i8, ptr addrspace(3) %78, i32 %add.ptr508.idx.3, !dbg !210
  %v_column.sroa.18.0.insert.ext1062 = zext i16 %condval_4.sroa.0.0.3.3 to i64, !dbg !211
  %v_column.sroa.18.0.insert.shift1063 = shl nuw i64 %v_column.sroa.18.0.insert.ext1062, 48, !dbg !211
  %v_column.sroa.14.0.insert.ext1047 = zext i16 %condval_4.sroa.0.0.2.3 to i64, !dbg !211
  %v_column.sroa.14.0.insert.shift1048 = shl nuw nsw i64 %v_column.sroa.14.0.insert.ext1047, 32, !dbg !211
  %v_column.sroa.14.0.insert.insert1050 = or disjoint i64 %v_column.sroa.18.0.insert.shift1063, %v_column.sroa.14.0.insert.shift1048, !dbg !211
  %v_column.sroa.10.0.insert.ext1032 = zext i16 %condval_4.sroa.0.0.1.3 to i64, !dbg !211
  %v_column.sroa.10.0.insert.shift1033 = shl nuw nsw i64 %v_column.sroa.10.0.insert.ext1032, 16, !dbg !211
  %v_column.sroa.10.0.insert.insert1035 = or disjoint i64 %v_column.sroa.14.0.insert.insert1050, %v_column.sroa.10.0.insert.shift1033, !dbg !211
  %v_column.sroa.0.0.insert.ext1018 = zext i16 %condval_4.sroa.0.0.3998 to i64, !dbg !211
  %v_column.sroa.0.0.insert.insert1020 = or disjoint i64 %v_column.sroa.10.0.insert.insert1035, %v_column.sroa.0.0.insert.ext1018, !dbg !211
  store i64 %v_column.sroa.0.0.insert.insert1020, ptr addrspace(3) %add.ptr508.3, align 8, !dbg !211
  fence syncscope("warp") release, !dbg !212
  tail call void @llvm.mxc.barrier.warp(), !dbg !215
  fence syncscope("warp") acquire, !dbg !216
  %mul518 = and i32 %54, 48
  %shr523 = and i32 %19, 3
  %79 = or disjoint i32 %mul518, %shr523
  %and534 = and i32 %2, 3
  %80 = xor i32 %and60, %and534
  %xor528834 = shl nuw nsw i32 %79, 4, !dbg !217
  %mul529 = xor i32 %xor528834, %call493.mask, !dbg !217
  %81 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul529, !dbg !218
  %add.ptr539.idx = shl nuw nsw i32 %80, 3, !dbg !218
  %add.ptr539 = getelementptr inbounds i8, ptr addrspace(3) %81, i32 %add.ptr539.idx, !dbg !218
  %82 = load <4 x half>, ptr addrspace(3) %add.ptr539, align 8, !dbg !219
  %add524.1 = shl nuw nsw i32 %79, 4, !dbg !217
  %xor528834.1 = or disjoint i32 %add524.1, 64, !dbg !217
  %mul529.1 = xor i32 %xor528834.1, %call493.mask, !dbg !217
  %83 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul529.1, !dbg !218
  %xor535.1 = shl nuw nsw i32 %80, 3, !dbg !218
  %add.ptr539.idx.1 = xor i32 %xor535.1, 8, !dbg !218
  %add.ptr539.1 = getelementptr inbounds i8, ptr addrspace(3) %83, i32 %add.ptr539.idx.1, !dbg !218
  %84 = load <4 x half>, ptr addrspace(3) %add.ptr539.1, align 8, !dbg !219
  %add524.2 = shl nuw nsw i32 %79, 4, !dbg !217
  %xor528834.2 = or disjoint i32 %add524.2, 128, !dbg !217
  %mul529.2 = xor i32 %xor528834.2, %call493.mask, !dbg !217
  %85 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul529.2, !dbg !218
  %xor535.2 = shl nuw nsw i32 %80, 3, !dbg !218
  %add.ptr539.idx.2 = xor i32 %xor535.2, 16, !dbg !218
  %add.ptr539.2 = getelementptr inbounds i8, ptr addrspace(3) %85, i32 %add.ptr539.idx.2, !dbg !218
  %86 = load <4 x half>, ptr addrspace(3) %add.ptr539.2, align 8, !dbg !219
  %add524.3 = shl nuw nsw i32 %79, 4, !dbg !217
  %xor528834.3 = or disjoint i32 %add524.3, 192, !dbg !217
  %mul529.3 = xor i32 %xor528834.3, %call493.mask, !dbg !217
  %87 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul529.3, !dbg !218
  %xor535.3 = shl nuw nsw i32 %80, 3, !dbg !218
  %add.ptr539.idx.3 = xor i32 %xor535.3, 24, !dbg !218
  %add.ptr539.3 = getelementptr inbounds i8, ptr addrspace(3) %87, i32 %add.ptr539.idx.3, !dbg !218
  %88 = load <4 x half>, ptr addrspace(3) %add.ptr539.3, align 8, !dbg !219
  %89 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %82, <4 x half> %53, <4 x float> zeroinitializer), !dbg !220
  %90 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %84, <4 x half> %53, <4 x float> zeroinitializer), !dbg !220
  %91 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %86, <4 x half> %53, <4 x float> zeroinitializer), !dbg !220
  %92 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %88, <4 x half> %53, <4 x float> zeroinitializer), !dbg !220
  %add342 = fadd contract float %add335.3, 0.000000e+00, !dbg !221
  br label %if.end565, !dbg !222

if.end565:                                        ; preds = %if.then, %entry
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %89, %if.then ], !dbg !224
  %numerator.sroa.20.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %90, %if.then ], !dbg !224
  %numerator.sroa.38.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %91, %if.then ], !dbg !224
  %numerator.sroa.56.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %92, %if.then ], !dbg !224
  %denominator.sroa.0.0 = phi float [ 0.000000e+00, %entry ], [ %add342, %if.then ], !dbg !224
  %93 = bitcast float %denominator.sroa.0.0 to i32, !dbg !222
  %94 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !225
  %95 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %94) #10, !dbg !228
  %xor.i.i871 = xor i32 %95, 32, !dbg !229
  %96 = and i32 %95, -64, !dbg !230
  %and.i.i872 = add nsw i32 %96, 64, !dbg !230
  %cmp.not.i.i873 = icmp slt i32 %xor.i.i871, %and.i.i872, !dbg !231
  %cond.i.i874 = select i1 %cmp.not.i.i873, i32 %xor.i.i871, i32 %95, !dbg !232
  %shl.i.i875 = shl i32 %cond.i.i874, 2, !dbg !233
  %97 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i875, i32 %93), !dbg !234
  %98 = bitcast i32 %97 to float, !dbg !235
  %add569 = fadd contract float %denominator.sroa.0.0, %98, !dbg !236
  %99 = bitcast float %add569 to i32, !dbg !237
  %100 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !239
  %101 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %100) #10, !dbg !242
  %xor.i.i876 = xor i32 %101, 16, !dbg !243
  %102 = and i32 %101, -64, !dbg !244
  %and.i.i877 = add nsw i32 %102, 64, !dbg !244
  %cmp.not.i.i878 = icmp slt i32 %xor.i.i876, %and.i.i877, !dbg !245
  %cond.i.i879 = select i1 %cmp.not.i.i878, i32 %xor.i.i876, i32 %101, !dbg !246
  %shl.i.i880 = shl i32 %cond.i.i879, 2, !dbg !247
  %103 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i880, i32 %99), !dbg !248
  %104 = bitcast i32 %103 to float, !dbg !249
  %add574 = fadd contract float %add569, %104, !dbg !250
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !251
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !251
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !251
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !251
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %add574, !dbg !252
  %div594 = fdiv contract float %numerator.sroa.0.4.vec.extract, %add574, !dbg !253
  %div598 = fdiv contract float %numerator.sroa.0.8.vec.extract, %add574, !dbg !254
  %div602 = fdiv contract float %numerator.sroa.0.12.vec.extract, %add574, !dbg !255
  %numerator.sroa.20.16.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 0, !dbg !251
  %numerator.sroa.20.20.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 1, !dbg !251
  %numerator.sroa.20.24.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 2, !dbg !251
  %numerator.sroa.20.28.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 3, !dbg !251
  %div.1 = fdiv contract float %numerator.sroa.20.16.vec.extract, %add574, !dbg !252
  %div594.1 = fdiv contract float %numerator.sroa.20.20.vec.extract, %add574, !dbg !253
  %div598.1 = fdiv contract float %numerator.sroa.20.24.vec.extract, %add574, !dbg !254
  %div602.1 = fdiv contract float %numerator.sroa.20.28.vec.extract, %add574, !dbg !255
  %numerator.sroa.38.32.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 0, !dbg !251
  %numerator.sroa.38.36.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 1, !dbg !251
  %numerator.sroa.38.40.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 2, !dbg !251
  %numerator.sroa.38.44.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 3, !dbg !251
  %div.2 = fdiv contract float %numerator.sroa.38.32.vec.extract, %add574, !dbg !252
  %div594.2 = fdiv contract float %numerator.sroa.38.36.vec.extract, %add574, !dbg !253
  %div598.2 = fdiv contract float %numerator.sroa.38.40.vec.extract, %add574, !dbg !254
  %div602.2 = fdiv contract float %numerator.sroa.38.44.vec.extract, %add574, !dbg !255
  %numerator.sroa.56.48.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 0, !dbg !251
  %numerator.sroa.56.52.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 1, !dbg !251
  %numerator.sroa.56.56.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 2, !dbg !251
  %numerator.sroa.56.60.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 3, !dbg !251
  %div.3 = fdiv contract float %numerator.sroa.56.48.vec.extract, %add574, !dbg !252
  %div594.3 = fdiv contract float %numerator.sroa.56.52.vec.extract, %add574, !dbg !253
  %div598.3 = fdiv contract float %numerator.sroa.56.56.vec.extract, %add574, !dbg !254
  %div602.3 = fdiv contract float %numerator.sroa.56.60.vec.extract, %add574, !dbg !255
  fence syncscope("warp") release, !dbg !256
  tail call void @llvm.mxc.barrier.warp(), !dbg !259
  fence syncscope("warp") acquire, !dbg !260
  %xor651 = shl nuw nsw i32 %8, 2
  %mul652 = and i32 %xor651, 4
  %105 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !265
  %106 = fptrunc float %div to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %105), !dbg !261, !noalias !265
  %107 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !265
  %108 = fptrunc float %div594 to half, !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %107), !dbg !270, !noalias !265
  %109 = bitcast half %106 to i16, !dbg !272
  %110 = bitcast half %108 to i16, !dbg !275
  %111 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !280
  %112 = fptrunc float %div598 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %111), !dbg !276, !noalias !280
  %113 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !285, !noalias !280
  %114 = fptrunc float %div602 to half, !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %113), !dbg !285, !noalias !280
  %115 = bitcast half %112 to i16, !dbg !287
  %116 = bitcast half %114 to i16, !dbg !289
  %__7.sroa.6.0.insert.ext = zext i16 %116 to i64, !dbg !290
  %__7.sroa.6.0.insert.shift = shl nuw i64 %__7.sroa.6.0.insert.ext, 48, !dbg !290
  %__7.sroa.5.0.insert.ext = zext i16 %115 to i64, !dbg !290
  %__7.sroa.5.0.insert.shift = shl nuw nsw i64 %__7.sroa.5.0.insert.ext, 32, !dbg !290
  %__7.sroa.5.0.insert.insert = or disjoint i64 %__7.sroa.6.0.insert.shift, %__7.sroa.5.0.insert.shift, !dbg !290
  %__7.sroa.4.0.insert.ext = zext i16 %110 to i64, !dbg !290
  %__7.sroa.4.0.insert.shift = shl nuw nsw i64 %__7.sroa.4.0.insert.ext, 16, !dbg !290
  %__7.sroa.4.0.insert.insert = or disjoint i64 %__7.sroa.5.0.insert.insert, %__7.sroa.4.0.insert.shift, !dbg !290
  %__7.sroa.0.0.insert.ext = zext i16 %109 to i64, !dbg !290
  %__7.sroa.0.0.insert.insert = or disjoint i64 %__7.sroa.4.0.insert.insert, %__7.sroa.0.0.insert.ext, !dbg !290
  %add653 = or disjoint i32 %add58, %mul652, !dbg !291
  %add.ptr655 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add653, !dbg !292
  store i64 %__7.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr655, align 8, !dbg !293
  %117 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !265
  %118 = fptrunc float %div.1 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %117), !dbg !261, !noalias !265
  %119 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !265
  %120 = fptrunc float %div594.1 to half, !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %119), !dbg !270, !noalias !265
  %121 = bitcast half %118 to i16, !dbg !272
  %122 = bitcast half %120 to i16, !dbg !275
  %123 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !280
  %124 = fptrunc float %div598.1 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %123), !dbg !276, !noalias !280
  %125 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !285, !noalias !280
  %126 = fptrunc float %div602.1 to half, !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %125), !dbg !285, !noalias !280
  %127 = bitcast half %124 to i16, !dbg !287
  %128 = bitcast half %126 to i16, !dbg !289
  %__7.sroa.6.0.insert.ext.1 = zext i16 %128 to i64, !dbg !290
  %__7.sroa.6.0.insert.shift.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.1, 48, !dbg !290
  %__7.sroa.5.0.insert.ext.1 = zext i16 %127 to i64, !dbg !290
  %__7.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1, 32, !dbg !290
  %__7.sroa.5.0.insert.insert.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.1, %__7.sroa.5.0.insert.shift.1, !dbg !290
  %__7.sroa.4.0.insert.ext.1 = zext i16 %122 to i64, !dbg !290
  %__7.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1, 16, !dbg !290
  %__7.sroa.4.0.insert.insert.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.1, %__7.sroa.4.0.insert.shift.1, !dbg !290
  %__7.sroa.0.0.insert.ext.1 = zext i16 %121 to i64, !dbg !290
  %__7.sroa.0.0.insert.insert.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.1, %__7.sroa.0.0.insert.ext.1, !dbg !290
  %add653.1 = or disjoint i32 %add58.1, %mul652, !dbg !291
  %add.ptr655.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add653.1, !dbg !292
  store i64 %__7.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr655.1, align 8, !dbg !293
  %129 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !265
  %130 = fptrunc float %div.2 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %129), !dbg !261, !noalias !265
  %131 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !265
  %132 = fptrunc float %div594.2 to half, !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %131), !dbg !270, !noalias !265
  %133 = bitcast half %130 to i16, !dbg !272
  %134 = bitcast half %132 to i16, !dbg !275
  %135 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !280
  %136 = fptrunc float %div598.2 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %135), !dbg !276, !noalias !280
  %137 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !285, !noalias !280
  %138 = fptrunc float %div602.2 to half, !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %137), !dbg !285, !noalias !280
  %139 = bitcast half %136 to i16, !dbg !287
  %140 = bitcast half %138 to i16, !dbg !289
  %__7.sroa.6.0.insert.ext.2 = zext i16 %140 to i64, !dbg !290
  %__7.sroa.6.0.insert.shift.2 = shl nuw i64 %__7.sroa.6.0.insert.ext.2, 48, !dbg !290
  %__7.sroa.5.0.insert.ext.2 = zext i16 %139 to i64, !dbg !290
  %__7.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.2, 32, !dbg !290
  %__7.sroa.5.0.insert.insert.2 = or disjoint i64 %__7.sroa.6.0.insert.shift.2, %__7.sroa.5.0.insert.shift.2, !dbg !290
  %__7.sroa.4.0.insert.ext.2 = zext i16 %134 to i64, !dbg !290
  %__7.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.2, 16, !dbg !290
  %__7.sroa.4.0.insert.insert.2 = or disjoint i64 %__7.sroa.5.0.insert.insert.2, %__7.sroa.4.0.insert.shift.2, !dbg !290
  %__7.sroa.0.0.insert.ext.2 = zext i16 %133 to i64, !dbg !290
  %__7.sroa.0.0.insert.insert.2 = or disjoint i64 %__7.sroa.4.0.insert.insert.2, %__7.sroa.0.0.insert.ext.2, !dbg !290
  %add653.2 = or disjoint i32 %add58.2, %mul652, !dbg !291
  %add.ptr655.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add653.2, !dbg !292
  store i64 %__7.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr655.2, align 8, !dbg !293
  %141 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !265
  %142 = fptrunc float %div.3 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %141), !dbg !261, !noalias !265
  %143 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !265
  %144 = fptrunc float %div594.3 to half, !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %143), !dbg !270, !noalias !265
  %145 = bitcast half %142 to i16, !dbg !272
  %146 = bitcast half %144 to i16, !dbg !275
  %147 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !280
  %148 = fptrunc float %div598.3 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %147), !dbg !276, !noalias !280
  %149 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !285, !noalias !280
  %150 = fptrunc float %div602.3 to half, !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %149), !dbg !285, !noalias !280
  %151 = bitcast half %148 to i16, !dbg !287
  %152 = bitcast half %150 to i16, !dbg !289
  %__7.sroa.6.0.insert.ext.3 = zext i16 %152 to i64, !dbg !290
  %__7.sroa.6.0.insert.shift.3 = shl nuw i64 %__7.sroa.6.0.insert.ext.3, 48, !dbg !290
  %__7.sroa.5.0.insert.ext.3 = zext i16 %151 to i64, !dbg !290
  %__7.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.3, 32, !dbg !290
  %__7.sroa.5.0.insert.insert.3 = or disjoint i64 %__7.sroa.6.0.insert.shift.3, %__7.sroa.5.0.insert.shift.3, !dbg !290
  %__7.sroa.4.0.insert.ext.3 = zext i16 %146 to i64, !dbg !290
  %__7.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.3, 16, !dbg !290
  %__7.sroa.4.0.insert.insert.3 = or disjoint i64 %__7.sroa.5.0.insert.insert.3, %__7.sroa.4.0.insert.shift.3, !dbg !290
  %__7.sroa.0.0.insert.ext.3 = zext i16 %145 to i64, !dbg !290
  %__7.sroa.0.0.insert.insert.3 = or disjoint i64 %__7.sroa.4.0.insert.insert.3, %__7.sroa.0.0.insert.ext.3, !dbg !290
  %add653.3 = or disjoint i32 %add58.3, %mul652, !dbg !291
  %add.ptr655.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add653.3, !dbg !292
  store i64 %__7.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr655.3, align 8, !dbg !293
  fence syncscope("warp") release, !dbg !294
  tail call void @llvm.mxc.barrier.warp(), !dbg !297
  fence syncscope("warp") acquire, !dbg !298
  %153 = load i64, ptr addrspace(3) %5, align 16, !dbg !299
  %add.ptr683.1 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 8, !dbg !300
  %154 = load i64, ptr addrspace(3) %add.ptr683.1, align 8, !dbg !299
  %add.ptr704 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !301
  store i64 %153, ptr addrspace(1) %add.ptr704, align 16, !dbg !302
  %output_fetch.sroa.6.0.add.ptr704.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr704, i64 8, !dbg !302
  store i64 %154, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr704.sroa_idx, align 8, !dbg !302
  %add.ptr683.11006 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 1032, !dbg !300
  %155 = load i64, ptr addrspace(3) %add.ptr683.11006, align 8, !dbg !299
  %156 = load i64, ptr addrspace(3) %7, align 16, !dbg !299
  %add.ptr704.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %6, !dbg !301
  store i64 %155, ptr addrspace(1) %add.ptr704.1, align 16, !dbg !302
  %output_fetch.sroa.6.0.add.ptr704.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr704.1, i64 8, !dbg !302
  store i64 %156, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr704.1.sroa_idx, align 8, !dbg !302
  ret void, !dbg !303
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v206_worker2_c5_v_shared4row_subagent2/codegen/power_v206/case5_stage1.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v206_worker2_c5_v_shared4row_subagent2/codegen/power_v206/case5_stage1.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 28, column: 3, scope: !40)
!44 = !DILocation(line: 29, column: 43, scope: !40)
!45 = !DILocation(line: 29, column: 29, scope: !40)
!46 = !DILocation(line: 32, column: 24, scope: !40)
!47 = !DILocation(line: 32, column: 203, scope: !40)
!48 = !DILocation(line: 29, column: 124, scope: !40)
!49 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !52)
!50 = distinct !DISubprogram(name: "__barrier_warp", scope: !51, file: !51, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!51 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!52 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !54)
!53 = distinct !DISubprogram(name: "__syncwarp", scope: !51, file: !51, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!54 = distinct !DILocation(line: 35, column: 3, scope: !40)
!55 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !52)
!56 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !52)
!57 = !DILocation(line: 38, column: 140, scope: !40)
!58 = !DILocation(line: 38, column: 168, scope: !40)
!59 = !DILocation(line: 38, column: 94, scope: !40)
!60 = !DILocation(line: 38, column: 111, scope: !40)
!61 = !DILocation(line: 47, column: 50, scope: !40)
!62 = !DILocation(line: 47, column: 58, scope: !40)
!63 = !DILocation(line: 47, column: 22, scope: !40)
!64 = !DILocation(line: 47, column: 80, scope: !40)
!65 = !DILocation(line: 48, column: 10, scope: !40)
!66 = !DILocation(line: 48, column: 26, scope: !40)
!67 = !DILocation(line: 38, column: 174, scope: !40)
!68 = !DILocation(line: 38, column: 57, scope: !40)
!69 = !DILocation(line: 38, column: 38, scope: !40)
!70 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !71)
!71 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !72)
!72 = distinct !DILocation(line: 49, column: 5, scope: !40)
!73 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !71)
!74 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !71)
!75 = !DILocation(line: 51, column: 10, scope: !40)
!76 = !DILocation(line: 52, column: 45, scope: !40)
!77 = !DILocation(line: 52, column: 31, scope: !40)
!78 = !DILocation(line: 55, column: 211, scope: !40)
!79 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !80)
!80 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !81)
!81 = distinct !DILocation(line: 58, column: 5, scope: !40)
!82 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !80)
!83 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !80)
!84 = !DILocation(line: 63, column: 30, scope: !40)
!85 = !DILocation(line: 65, column: 37, scope: !40)
!86 = !DILocation(line: 73, column: 72, scope: !40)
!87 = !DILocation(line: 73, column: 11, scope: !40)
!88 = !DILocation(line: 73, column: 61, scope: !40)
!89 = !DILocation(line: 351, column: 10, scope: !90, inlinedAt: !92)
!90 = distinct !DISubprogram(name: "max", scope: !91, file: !91, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!91 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!92 = distinct !DILocation(line: 83, column: 20, scope: !40)
!93 = !DILocation(line: 1018, column: 9, scope: !94, inlinedAt: !95)
!94 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!95 = distinct !DILocation(line: 85, column: 34, scope: !40)
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
!110 = distinct !DILocation(line: 85, column: 18, scope: !40)
!111 = !DILocation(line: 1018, column: 9, scope: !94, inlinedAt: !112)
!112 = distinct !DILocation(line: 86, column: 34, scope: !40)
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
!125 = distinct !DILocation(line: 86, column: 18, scope: !40)
!126 = !DILocation(line: 96, column: 24, scope: !40)
!127 = !DILocation(line: 97, column: 24, scope: !40)
!128 = !DILocation(line: 98, column: 24, scope: !40)
!129 = !DILocation(line: 99, column: 24, scope: !40)
!130 = !DILocation(line: 101, column: 23, scope: !40)
!131 = !DILocation(line: 102, column: 23, scope: !40)
!132 = !DILocation(line: 103, column: 23, scope: !40)
!133 = !DILocation(line: 104, column: 23, scope: !40)
!134 = !DILocation(line: 106, column: 21, scope: !40)
!135 = !DILocation(line: 107, column: 21, scope: !40)
!136 = !DILocation(line: 108, column: 21, scope: !40)
!137 = !DILocation(line: 109, column: 21, scope: !40)
!138 = !DILocation(line: 285, column: 49, scope: !139, inlinedAt: !140)
!139 = distinct !DISubprogram(name: "exp2f", scope: !91, file: !91, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!140 = distinct !DILocation(line: 110, column: 13, scope: !40)
!141 = !DILocation(line: 285, column: 49, scope: !139, inlinedAt: !142)
!142 = distinct !DILocation(line: 111, column: 13, scope: !40)
!143 = !DILocation(line: 285, column: 49, scope: !139, inlinedAt: !144)
!144 = distinct !DILocation(line: 112, column: 13, scope: !40)
!145 = !DILocation(line: 285, column: 49, scope: !139, inlinedAt: !146)
!146 = distinct !DILocation(line: 113, column: 13, scope: !40)
!147 = !DILocation(line: 1007, column: 10, scope: !148, inlinedAt: !150)
!148 = distinct !DISubprogram(name: "__float2half_rn", scope: !149, file: !149, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!149 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!150 = distinct !DILocation(line: 1077, column: 18, scope: !151, inlinedAt: !152)
!151 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !149, file: !149, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!152 = distinct !DILocation(line: 1295, column: 23, scope: !153, inlinedAt: !154)
!153 = distinct !DISubprogram(name: "__float22half2_rn", scope: !149, file: !149, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!154 = distinct !DILocation(line: 114, column: 27, scope: !40)
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
!165 = distinct !DILocation(line: 115, column: 27, scope: !40)
!166 = !{!167, !169}
!167 = distinct !{!167, !168, !"_ZL17__floats2half2_rnff: %agg.result"}
!168 = distinct !{!168, !"_ZL17__floats2half2_rnff"}
!169 = distinct !{!169, !170, !"_ZL17__float22half2_rn6float2: %agg.result"}
!170 = distinct !{!170, !"_ZL17__float22half2_rn6float2"}
!171 = !DILocation(line: 1007, column: 10, scope: !148, inlinedAt: !172)
!172 = distinct !DILocation(line: 1077, column: 38, scope: !151, inlinedAt: !164)
!173 = !DILocation(line: 116, column: 34, scope: !40)
!174 = !DILocation(line: 1082, column: 16, scope: !175, inlinedAt: !176)
!175 = distinct !DISubprogram(name: "__half2float", scope: !149, file: !149, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!176 = distinct !DILocation(line: 136, column: 55, scope: !177, inlinedAt: !178)
!177 = distinct !DISubprogram(name: "operator float", scope: !149, file: !149, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!178 = distinct !DILocation(line: 120, column: 50, scope: !40)
!179 = !DILocation(line: 120, column: 40, scope: !40)
!180 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !181)
!181 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !182)
!182 = distinct !DILocation(line: 123, column: 5, scope: !40)
!183 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !181)
!184 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !181)
!185 = !DILocation(line: 126, column: 52, scope: !40)
!186 = !DILocation(line: 126, column: 38, scope: !40)
!187 = !DILocation(line: 133, column: 13, scope: !40)
!188 = !DILocation(line: 140, column: 13, scope: !40)
!189 = !DILocation(line: 146, column: 34, scope: !40)
!190 = !DILocation(line: 146, column: 71, scope: !40)
!191 = !DILocation(line: 146, column: 98, scope: !40)
!192 = !DILocation(line: 146, column: 61, scope: !40)
!193 = !DILocation(line: 171, column: 37, scope: !97, inlinedAt: !194)
!194 = distinct !DILocation(line: 990, column: 14, scope: !99, inlinedAt: !195)
!195 = distinct !DILocation(line: 1006, column: 11, scope: !196, inlinedAt: !197)
!196 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 996, type: !7, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!197 = distinct !DILocation(line: 147, column: 48, scope: !40)
!198 = !DILocation(line: 171, column: 10, scope: !97, inlinedAt: !194)
!199 = !DILocation(line: 991, column: 20, scope: !99, inlinedAt: !195)
!200 = !DILocation(line: 992, column: 36, scope: !99, inlinedAt: !195)
!201 = !DILocation(line: 992, column: 17, scope: !99, inlinedAt: !195)
!202 = !DILocation(line: 992, column: 11, scope: !99, inlinedAt: !195)
!203 = !DILocation(line: 993, column: 43, scope: !99, inlinedAt: !195)
!204 = !DILocation(line: 993, column: 10, scope: !99, inlinedAt: !195)
!205 = !DILocation(line: 154, column: 13, scope: !40)
!206 = !DILocation(line: 164, column: 27, scope: !40)
!207 = !DILocation(line: 164, column: 13, scope: !40)
!208 = !DILocation(line: 171, column: 76, scope: !40)
!209 = !DILocation(line: 171, column: 148, scope: !40)
!210 = !DILocation(line: 171, column: 24, scope: !40)
!211 = !DILocation(line: 171, column: 234, scope: !40)
!212 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !213)
!213 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !214)
!214 = distinct !DILocation(line: 173, column: 5, scope: !40)
!215 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !213)
!216 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !213)
!217 = !DILocation(line: 176, column: 191, scope: !40)
!218 = !DILocation(line: 176, column: 63, scope: !40)
!219 = !DILocation(line: 176, column: 44, scope: !40)
!220 = !DILocation(line: 181, column: 46, scope: !40)
!221 = !DILocation(line: 122, column: 38, scope: !40)
!222 = !DILocation(line: 1018, column: 9, scope: !94, inlinedAt: !223)
!223 = distinct !DILocation(line: 187, column: 38, scope: !40)
!224 = !DILocation(line: 0, scope: !40)
!225 = !DILocation(line: 171, column: 37, scope: !97, inlinedAt: !226)
!226 = distinct !DILocation(line: 990, column: 14, scope: !99, inlinedAt: !227)
!227 = distinct !DILocation(line: 1019, column: 11, scope: !94, inlinedAt: !223)
!228 = !DILocation(line: 171, column: 10, scope: !97, inlinedAt: !226)
!229 = !DILocation(line: 991, column: 20, scope: !99, inlinedAt: !227)
!230 = !DILocation(line: 992, column: 36, scope: !99, inlinedAt: !227)
!231 = !DILocation(line: 992, column: 17, scope: !99, inlinedAt: !227)
!232 = !DILocation(line: 992, column: 11, scope: !99, inlinedAt: !227)
!233 = !DILocation(line: 993, column: 43, scope: !99, inlinedAt: !227)
!234 = !DILocation(line: 993, column: 10, scope: !99, inlinedAt: !227)
!235 = !DILocation(line: 1020, column: 14, scope: !94, inlinedAt: !223)
!236 = !DILocation(line: 187, column: 36, scope: !40)
!237 = !DILocation(line: 1018, column: 9, scope: !94, inlinedAt: !238)
!238 = distinct !DILocation(line: 188, column: 38, scope: !40)
!239 = !DILocation(line: 171, column: 37, scope: !97, inlinedAt: !240)
!240 = distinct !DILocation(line: 990, column: 14, scope: !99, inlinedAt: !241)
!241 = distinct !DILocation(line: 1019, column: 11, scope: !94, inlinedAt: !238)
!242 = !DILocation(line: 171, column: 10, scope: !97, inlinedAt: !240)
!243 = !DILocation(line: 991, column: 20, scope: !99, inlinedAt: !241)
!244 = !DILocation(line: 992, column: 36, scope: !99, inlinedAt: !241)
!245 = !DILocation(line: 992, column: 17, scope: !99, inlinedAt: !241)
!246 = !DILocation(line: 992, column: 11, scope: !99, inlinedAt: !241)
!247 = !DILocation(line: 993, column: 43, scope: !99, inlinedAt: !241)
!248 = !DILocation(line: 993, column: 10, scope: !99, inlinedAt: !241)
!249 = !DILocation(line: 1020, column: 14, scope: !94, inlinedAt: !238)
!250 = !DILocation(line: 188, column: 36, scope: !40)
!251 = !DILocation(line: 192, column: 21, scope: !40)
!252 = !DILocation(line: 194, column: 22, scope: !40)
!253 = !DILocation(line: 195, column: 22, scope: !40)
!254 = !DILocation(line: 196, column: 22, scope: !40)
!255 = !DILocation(line: 197, column: 22, scope: !40)
!256 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !257)
!257 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !258)
!258 = distinct !DILocation(line: 200, column: 3, scope: !40)
!259 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !257)
!260 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !257)
!261 = !DILocation(line: 1007, column: 10, scope: !148, inlinedAt: !262)
!262 = distinct !DILocation(line: 1077, column: 18, scope: !151, inlinedAt: !263)
!263 = distinct !DILocation(line: 1295, column: 23, scope: !153, inlinedAt: !264)
!264 = distinct !DILocation(line: 205, column: 27, scope: !40)
!265 = !{!266, !268}
!266 = distinct !{!266, !267, !"_ZL17__floats2half2_rnff: %agg.result"}
!267 = distinct !{!267, !"_ZL17__floats2half2_rnff"}
!268 = distinct !{!268, !269, !"_ZL17__float22half2_rn6float2: %agg.result"}
!269 = distinct !{!269, !"_ZL17__float22half2_rn6float2"}
!270 = !DILocation(line: 1007, column: 10, scope: !148, inlinedAt: !271)
!271 = distinct !DILocation(line: 1077, column: 38, scope: !151, inlinedAt: !263)
!272 = !DILocation(line: 596, column: 67, scope: !273, inlinedAt: !274)
!273 = distinct !DISubprogram(name: "__half2", scope: !149, file: !149, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!274 = distinct !DILocation(line: 1077, column: 10, scope: !151, inlinedAt: !263)
!275 = !DILocation(line: 596, column: 73, scope: !273, inlinedAt: !274)
!276 = !DILocation(line: 1007, column: 10, scope: !148, inlinedAt: !277)
!277 = distinct !DILocation(line: 1077, column: 18, scope: !151, inlinedAt: !278)
!278 = distinct !DILocation(line: 1295, column: 23, scope: !153, inlinedAt: !279)
!279 = distinct !DILocation(line: 206, column: 27, scope: !40)
!280 = !{!281, !283}
!281 = distinct !{!281, !282, !"_ZL17__floats2half2_rnff: %agg.result"}
!282 = distinct !{!282, !"_ZL17__floats2half2_rnff"}
!283 = distinct !{!283, !284, !"_ZL17__float22half2_rn6float2: %agg.result"}
!284 = distinct !{!284, !"_ZL17__float22half2_rn6float2"}
!285 = !DILocation(line: 1007, column: 10, scope: !148, inlinedAt: !286)
!286 = distinct !DILocation(line: 1077, column: 38, scope: !151, inlinedAt: !278)
!287 = !DILocation(line: 596, column: 67, scope: !273, inlinedAt: !288)
!288 = distinct !DILocation(line: 1077, column: 10, scope: !151, inlinedAt: !278)
!289 = !DILocation(line: 596, column: 73, scope: !273, inlinedAt: !288)
!290 = !DILocation(line: 207, column: 38, scope: !40)
!291 = !DILocation(line: 208, column: 141, scope: !40)
!292 = !DILocation(line: 208, column: 22, scope: !40)
!293 = !DILocation(line: 208, column: 221, scope: !40)
!294 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !295)
!295 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !296)
!296 = distinct !DILocation(line: 210, column: 3, scope: !40)
!297 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !295)
!298 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !295)
!299 = !DILocation(line: 215, column: 46, scope: !40)
!300 = !DILocation(line: 215, column: 65, scope: !40)
!301 = !DILocation(line: 217, column: 22, scope: !40)
!302 = !DILocation(line: 217, column: 134, scope: !40)
!303 = !DILocation(line: 219, column: 1, scope: !40)
