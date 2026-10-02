; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v223_worker2_c5_two_shared_slots_subagent2/codegen/power_v223/case5_stage1.device.cpp'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v223_worker2_c5_two_shared_slots_subagent2/codegen/power_v223/case5_stage1.device.cpp"
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
  %xor739 = and i32 %mul11, 56
  %call27.masked = and i32 %2, 1016
  %mul29 = xor i32 %xor739, %call27.masked
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
  %qk_fetch.sroa.0.0.copyload1033 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %qk_fetch.sroa.10.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %qk_fetch.sroa.10.0.copyload1036 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0.add.ptr.1.sroa_idx, align 8, !dbg !45
  %7 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 1024, !dbg !46
  %add.ptr39.1827 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1033, ptr addrspace(3) %add.ptr39.1827, align 8, !dbg !47
  %add.ptr39.1.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.10.0.copyload1036, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !47
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
  br i1 %or.cond, label %if.end482, label %for.cond103.preheader, !dbg !66

for.cond103.preheader:                            ; preds = %entry
  %xor65738 = xor i32 %8, %2
  %xor68 = shl nuw nsw i32 %xor65738, 2
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
  %conv = zext nneg i32 %0 to i64
  %conv112 = zext nneg i32 %mul99 to i64
  %mul117 = zext nneg i32 %mul11 to i64
  %.idx = shl nuw nsw i64 %conv112, 7
  %invariant.gep = getelementptr inbounds i8, ptr addrspace(4) %K.coerce, i64 %.idx, !dbg !70
  %invariant.gep798 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %mul117, !dbg !70
  %.idx819 = shl nuw nsw i64 %conv, 17, !dbg !71
  %14 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep798, i64 %.idx819, !dbg !71
  %qk_fetch.sroa.0.0.copyload1032 = load i64, ptr addrspace(4) %14, align 16, !dbg !72
  %qk_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %14, i64 8, !dbg !72
  %qk_fetch.sroa.10.0.copyload1035 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0..sroa_idx, align 8, !dbg !72
  %15 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @shared, i32 2048), i32 %mul29, !dbg !73
  %16 = getelementptr inbounds %struct.__half, ptr addrspace(3) %15, i32 %mul24, !dbg !73
  %gep = getelementptr inbounds i8, ptr addrspace(3) %16, i32 %add.ptr39.idx, !dbg !73
  store i64 %qk_fetch.sroa.0.0.copyload1032, ptr addrspace(3) %gep, align 8, !dbg !74
  %gep.1 = getelementptr inbounds i8, ptr addrspace(3) %16, i32 %add.ptr39.idx.1, !dbg !73
  store i64 %qk_fetch.sroa.10.0.copyload1035, ptr addrspace(3) %gep.1, align 8, !dbg !74
  %gep799.1 = getelementptr inbounds i8, ptr addrspace(4) %14, i64 1024, !dbg !71
  %qk_fetch.sroa.0.0.copyload1034 = load i64, ptr addrspace(4) %gep799.1, align 16, !dbg !72
  %qk_fetch.sroa.10.0.gep799.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %14, i64 1032, !dbg !72
  %qk_fetch.sroa.10.0.copyload1037 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0.gep799.1.sroa_idx, align 8, !dbg !72
  %17 = getelementptr inbounds i8, ptr addrspace(3) %16, i32 1024, !dbg !73
  %gep.1830 = getelementptr inbounds i8, ptr addrspace(3) %17, i32 %add.ptr39.idx.1, !dbg !73
  store i64 %qk_fetch.sroa.0.0.copyload1034, ptr addrspace(3) %gep.1830, align 8, !dbg !74
  %gep.1.1 = getelementptr inbounds i8, ptr addrspace(3) %17, i32 %add.ptr39.idx, !dbg !73
  store i64 %qk_fetch.sroa.10.0.copyload1037, ptr addrspace(3) %gep.1.1, align 8, !dbg !74
  fence syncscope("warp") release, !dbg !75
  tail call void @llvm.mxc.barrier.warp(), !dbg !78
  fence syncscope("warp") acquire, !dbg !79
  %gep801 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @shared, i32 2048), i32 %add70, !dbg !80
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %gep801, align 8, !dbg !81
  %18 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %13, <4 x float> zeroinitializer), !dbg !82
  %gep801.1 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @shared, i32 2048), i32 %add70.1, !dbg !80
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %gep801.1, align 8, !dbg !81
  %19 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %12, <4 x float> %18), !dbg !82
  %gep801.2 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @shared, i32 2048), i32 %add70.2, !dbg !80
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %gep801.2, align 8, !dbg !81
  %20 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %11, <4 x float> %19), !dbg !82
  %gep801.3 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @shared, i32 2048), i32 %add70.3, !dbg !80
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %gep801.3, align 8, !dbg !81
  %21 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %10, <4 x float> %20), !dbg !82
  %22 = lshr i32 %2, 2
  %mul213 = and i32 %22, 252
  %add214 = add nuw nsw i32 %mul99, %mul213
  %cmp217.not = icmp sgt i32 %add214, %1, !dbg !83
  %scores.sroa.0.0.vec.extract915 = extractelement <4 x float> %21, i64 0
  %spec.select = select i1 %cmp217.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract915, !dbg !84
  %cmp217.not.1.not = icmp slt i32 %add214, %1, !dbg !83
  %scores.sroa.0.4.vec.extract922 = extractelement <4 x float> %21, i64 1, !dbg !84
  %condval.0.1 = select i1 %cmp217.not.1.not, float %scores.sroa.0.4.vec.extract922, float 0xFFF0000000000000, !dbg !84
  %add215.2 = or disjoint i32 %add214, 2, !dbg !85
  %cmp217.not.2 = icmp sgt i32 %add215.2, %1, !dbg !83
  %scores.sroa.0.8.vec.extract929 = extractelement <4 x float> %21, i64 2, !dbg !84
  %condval.0.2 = select i1 %cmp217.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract929, !dbg !84
  %add215.3 = or disjoint i32 %add214, 3, !dbg !85
  %cmp217.not.3 = icmp sgt i32 %add215.3, %1, !dbg !83
  %scores.sroa.0.12.vec.extract936 = extractelement <4 x float> %21, i64 3, !dbg !84
  %condval.0.3 = select i1 %cmp217.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract936, !dbg !84
  %23 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !86
  %24 = tail call contract noundef float @llvm.maxnum.f32(float %23, float %condval.0.1), !dbg !86
  %25 = tail call contract noundef float @llvm.maxnum.f32(float %24, float %condval.0.2), !dbg !86
  %26 = tail call contract noundef float @llvm.maxnum.f32(float %25, float %condval.0.3), !dbg !86
  %27 = bitcast float %26 to i32, !dbg !90
  %28 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !93
  %29 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %28) #10, !dbg !98
  %xor.i.i = xor i32 %29, 32, !dbg !99
  %30 = and i32 %29, -64, !dbg !100
  %and.i.i = add nsw i32 %30, 64, !dbg !100
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !101
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %29, !dbg !102
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !103
  %31 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %27), !dbg !104
  %32 = bitcast i32 %31 to float, !dbg !105
  %33 = tail call contract noundef float @llvm.maxnum.f32(float %26, float %32), !dbg !106
  %34 = bitcast float %33 to i32, !dbg !108
  %35 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !110
  %36 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %35) #10, !dbg !113
  %xor.i.i741 = xor i32 %36, 16, !dbg !114
  %37 = and i32 %36, -64, !dbg !115
  %and.i.i742 = add nsw i32 %37, 64, !dbg !115
  %cmp.not.i.i743 = icmp slt i32 %xor.i.i741, %and.i.i742, !dbg !116
  %cond.i.i744 = select i1 %cmp.not.i.i743, i32 %xor.i.i741, i32 %36, !dbg !117
  %shl.i.i745 = shl i32 %cond.i.i744, 2, !dbg !118
  %38 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i745, i32 %34), !dbg !119
  %39 = bitcast i32 %38 to float, !dbg !120
  %40 = tail call contract noundef float @llvm.maxnum.f32(float %33, float %39), !dbg !121
  %sub = fsub contract float %spec.select, %40, !dbg !123
  %sub263 = fsub contract float %condval.0.1, %40, !dbg !124
  %sub266 = fsub contract float %condval.0.2, %40, !dbg !125
  %sub269 = fsub contract float %condval.0.3, %40, !dbg !126
  %mul274 = fmul contract float %sub, 0x3FC7154760000000, !dbg !127
  %mul278 = fmul contract float %sub263, 0x3FC7154760000000, !dbg !128
  %mul282 = fmul contract float %sub266, 0x3FC7154760000000, !dbg !129
  %mul286 = fmul contract float %sub269, 0x3FC7154760000000, !dbg !130
  %add291 = fadd contract float %mul274, 8.000000e+00, !dbg !131
  %add295 = fadd contract float %mul278, 8.000000e+00, !dbg !132
  %add299 = fadd contract float %mul282, 8.000000e+00, !dbg !133
  %add303 = fadd contract float %mul286, 8.000000e+00, !dbg !134
  %cmp.i.i = fcmp contract olt float %add291, -1.260000e+02, !dbg !135
  %cond.i.i746 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !135
  %add.i.i = fadd contract float %add291, %cond.i.i746, !dbg !135
  %41 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !135
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !135
  %mul.i.i = fmul contract float %cond2.i.i, %41, !dbg !135
  %cmp.i.i747 = fcmp contract olt float %add295, -1.260000e+02, !dbg !138
  %cond.i.i748 = select contract i1 %cmp.i.i747, float 6.400000e+01, float 0.000000e+00, !dbg !138
  %add.i.i749 = fadd contract float %add295, %cond.i.i748, !dbg !138
  %42 = tail call contract float @llvm.exp2.f32(float %add.i.i749), !dbg !138
  %cond2.i.i750 = select contract i1 %cmp.i.i747, float 0x3BF0000000000000, float 1.000000e+00, !dbg !138
  %mul.i.i751 = fmul contract float %cond2.i.i750, %42, !dbg !138
  %cmp.i.i752 = fcmp contract olt float %add299, -1.260000e+02, !dbg !140
  %cond.i.i753 = select contract i1 %cmp.i.i752, float 6.400000e+01, float 0.000000e+00, !dbg !140
  %add.i.i754 = fadd contract float %add299, %cond.i.i753, !dbg !140
  %43 = tail call contract float @llvm.exp2.f32(float %add.i.i754), !dbg !140
  %cond2.i.i755 = select contract i1 %cmp.i.i752, float 0x3BF0000000000000, float 1.000000e+00, !dbg !140
  %mul.i.i756 = fmul contract float %cond2.i.i755, %43, !dbg !140
  %cmp.i.i757 = fcmp contract olt float %add303, -1.260000e+02, !dbg !142
  %cond.i.i758 = select contract i1 %cmp.i.i757, float 6.400000e+01, float 0.000000e+00, !dbg !142
  %add.i.i759 = fadd contract float %add303, %cond.i.i758, !dbg !142
  %44 = tail call contract float @llvm.exp2.f32(float %add.i.i759), !dbg !142
  %cond2.i.i760 = select contract i1 %cmp.i.i757, float 0x3BF0000000000000, float 1.000000e+00, !dbg !142
  %mul.i.i761 = fmul contract float %cond2.i.i760, %44, !dbg !142
  %45 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !144
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !144, !noalias !152
  %46 = fptrunc float %mul.i.i to half, !dbg !144
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %45), !dbg !144, !noalias !152
  %47 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !152
  %48 = fptrunc float %mul.i.i751 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %47), !dbg !157, !noalias !152
  %49 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !159
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !159, !noalias !163
  %50 = fptrunc float %mul.i.i756 to half, !dbg !159
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %49), !dbg !159, !noalias !163
  %51 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !168, !noalias !163
  %52 = fptrunc float %mul.i.i761 to half, !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %51), !dbg !168, !noalias !163
  %53 = insertelement <4 x half> poison, half %46, i64 0, !dbg !170
  %54 = insertelement <4 x half> %53, half %48, i64 1, !dbg !170
  %55 = insertelement <4 x half> %54, half %50, i64 2, !dbg !170
  %56 = insertelement <4 x half> %55, half %52, i64 3, !dbg !170
  %conv.i.i = fpext half %46 to float, !dbg !171
  %add337 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !176
  %conv.i.i.1 = fpext half %48 to float, !dbg !171
  %add337.1 = fadd contract float %add337, %conv.i.i.1, !dbg !176
  %conv.i.i.2 = fpext half %50 to float, !dbg !171
  %add337.2 = fadd contract float %add337.1, %conv.i.i.2, !dbg !176
  %conv.i.i.3 = fpext half %52 to float, !dbg !171
  %add337.3 = fadd contract float %add337.2, %conv.i.i.3, !dbg !176
  %mul352 = shl nuw nsw i64 %conv, 16
  %57 = shl nuw nsw i32 %2, 4
  %58 = and i32 %57, 16256
  %mul356 = zext nneg i32 %58 to i64
  %add357 = or disjoint i64 %mul352, %mul356
  %mul367 = zext nneg i32 %xor739 to i64
  %add360 = or disjoint i64 %add357, %mul367
  %59 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add360, !dbg !177
  %60 = getelementptr inbounds i8, ptr addrspace(4) %59, i64 %.idx, !dbg !177
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %60, align 16, !dbg !178
  %v_fetch.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 2, !dbg !178
  %v_fetch.sroa.4.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.4.0..sroa_idx, align 2, !dbg !178, !tbaa !30
  %v_fetch.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 4, !dbg !178
  %v_fetch.sroa.5.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.5.0..sroa_idx, align 4, !dbg !178
  %v_fetch.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 6, !dbg !178
  %v_fetch.sroa.6.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.6.0..sroa_idx, align 2, !dbg !178, !tbaa !30
  %v_fetch.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 8, !dbg !178
  %v_fetch.sroa.7.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.7.0..sroa_idx, align 8, !dbg !178
  %v_fetch.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 10, !dbg !178
  %v_fetch.sroa.8.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.8.0..sroa_idx, align 2, !dbg !178, !tbaa !30
  %v_fetch.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 12, !dbg !178
  %v_fetch.sroa.9.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.9.0..sroa_idx, align 4, !dbg !178
  %v_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 14, !dbg !178
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx, align 2, !dbg !178, !tbaa !30
  %add.ptr369.1 = getelementptr inbounds i8, ptr addrspace(4) %60, i64 128, !dbg !177
  %v_fetch.sroa.11.16.copyload = load i16, ptr addrspace(4) %add.ptr369.1, align 16, !dbg !178
  %v_fetch.sroa.13.16.add.ptr369.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 130, !dbg !178
  %v_fetch.sroa.13.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.13.16.add.ptr369.1.sroa_idx, align 2, !dbg !178, !tbaa !30
  %v_fetch.sroa.14.16.add.ptr369.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 132, !dbg !178
  %v_fetch.sroa.14.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.16.add.ptr369.1.sroa_idx, align 4, !dbg !178
  %v_fetch.sroa.15.16.add.ptr369.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 134, !dbg !178
  %v_fetch.sroa.15.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.15.16.add.ptr369.1.sroa_idx, align 2, !dbg !178, !tbaa !30
  %v_fetch.sroa.16.16.add.ptr369.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 136, !dbg !178
  %v_fetch.sroa.16.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.16.16.add.ptr369.1.sroa_idx, align 8, !dbg !178
  %v_fetch.sroa.17.16.add.ptr369.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 138, !dbg !178
  %v_fetch.sroa.17.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.17.16.add.ptr369.1.sroa_idx, align 2, !dbg !178, !tbaa !30
  %v_fetch.sroa.18.16.add.ptr369.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 140, !dbg !178
  %v_fetch.sroa.18.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.16.add.ptr369.1.sroa_idx, align 4, !dbg !178
  %v_fetch.sroa.19.16.add.ptr369.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 142, !dbg !178
  %v_fetch.sroa.19.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.19.16.add.ptr369.1.sroa_idx, align 2, !dbg !178, !tbaa !30
  %and399 = shl nuw nsw i32 %2, 1
  %mul400 = and i32 %and399, 14
  %call404.mask = and i32 %2, 16
  %and412 = lshr i32 %2, 1
  %shr413 = and i32 %and412, 3
  %xor414 = xor i32 %shr413, %and60
  %mul422 = and i32 %22, 2
  %xor407732 = shl nuw nsw i32 %mul400, 4, !dbg !179
  %mul408 = or disjoint i32 %xor407732, %call404.mask, !dbg !179
  %mul417 = shl nuw nsw i32 %xor414, 2, !dbg !180
  %add418 = add nuw nsw i32 %mul408, %mul417, !dbg !181
  %add423 = or disjoint i32 %add418, %mul422, !dbg !182
  %add.ptr425 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add423, !dbg !183
  %v_column.sroa.18.0.insert.ext = zext i16 %v_fetch.sroa.11.16.copyload to i32, !dbg !184
  %v_column.sroa.18.0.insert.shift = shl nuw i32 %v_column.sroa.18.0.insert.ext, 16, !dbg !184
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !184
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.18.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !184
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr425, align 4, !dbg !184, !tbaa !30
  %add401.1 = shl nuw nsw i32 %mul400, 4, !dbg !179
  %xor407732.1 = or disjoint i32 %add401.1, %call404.mask, !dbg !179
  %mul408.1 = or disjoint i32 %xor407732.1, 256, !dbg !179
  %xor416.1 = shl nuw nsw i32 %xor414, 2, !dbg !180
  %mul417.1 = xor i32 %xor416.1, 4, !dbg !180
  %add418.1 = add nuw nsw i32 %mul408.1, %mul417.1, !dbg !181
  %add423.1 = or disjoint i32 %add418.1, %mul422, !dbg !182
  %add.ptr425.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add423.1, !dbg !183
  %v_column.sroa.18.0.insert.ext872 = zext i16 %v_fetch.sroa.13.16.copyload to i32, !dbg !184
  %v_column.sroa.18.0.insert.shift873 = shl nuw i32 %v_column.sroa.18.0.insert.ext872, 16, !dbg !184
  %v_column.sroa.0.0.insert.ext844 = zext i16 %v_fetch.sroa.4.0.copyload to i32, !dbg !184
  %v_column.sroa.0.0.insert.insert846 = or disjoint i32 %v_column.sroa.18.0.insert.shift873, %v_column.sroa.0.0.insert.ext844, !dbg !184
  store i32 %v_column.sroa.0.0.insert.insert846, ptr addrspace(3) %add.ptr425.1, align 4, !dbg !184, !tbaa !30
  %add401.2 = shl nuw nsw i32 %mul400, 4, !dbg !179
  %xor407732.2 = or disjoint i32 %add401.2, %call404.mask, !dbg !179
  %mul408.2 = or disjoint i32 %xor407732.2, 512, !dbg !179
  %xor416.2 = shl nuw nsw i32 %xor414, 2, !dbg !180
  %mul417.2 = xor i32 %xor416.2, 8, !dbg !180
  %add418.2 = add nuw nsw i32 %mul408.2, %mul417.2, !dbg !181
  %add423.2 = or disjoint i32 %add418.2, %mul422, !dbg !182
  %add.ptr425.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add423.2, !dbg !183
  %v_column.sroa.18.0.insert.ext877 = zext i16 %v_fetch.sroa.14.16.copyload to i32, !dbg !184
  %v_column.sroa.18.0.insert.shift878 = shl nuw i32 %v_column.sroa.18.0.insert.ext877, 16, !dbg !184
  %v_column.sroa.0.0.insert.ext848 = zext i16 %v_fetch.sroa.5.0.copyload to i32, !dbg !184
  %v_column.sroa.0.0.insert.insert850 = or disjoint i32 %v_column.sroa.18.0.insert.shift878, %v_column.sroa.0.0.insert.ext848, !dbg !184
  store i32 %v_column.sroa.0.0.insert.insert850, ptr addrspace(3) %add.ptr425.2, align 4, !dbg !184, !tbaa !30
  %add401.3 = shl nuw nsw i32 %mul400, 4, !dbg !179
  %xor407732.3 = or disjoint i32 %add401.3, %call404.mask, !dbg !179
  %mul408.3 = or disjoint i32 %xor407732.3, 768, !dbg !179
  %xor416.3 = shl nuw nsw i32 %xor414, 2, !dbg !180
  %mul417.3 = xor i32 %xor416.3, 12, !dbg !180
  %add418.3 = add nuw nsw i32 %mul408.3, %mul417.3, !dbg !181
  %add423.3 = or disjoint i32 %add418.3, %mul422, !dbg !182
  %add.ptr425.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add423.3, !dbg !183
  %v_column.sroa.18.0.insert.ext882 = zext i16 %v_fetch.sroa.15.16.copyload to i32, !dbg !184
  %v_column.sroa.18.0.insert.shift883 = shl nuw i32 %v_column.sroa.18.0.insert.ext882, 16, !dbg !184
  %v_column.sroa.0.0.insert.ext852 = zext i16 %v_fetch.sroa.6.0.copyload to i32, !dbg !184
  %v_column.sroa.0.0.insert.insert854 = or disjoint i32 %v_column.sroa.18.0.insert.shift883, %v_column.sroa.0.0.insert.ext852, !dbg !184
  store i32 %v_column.sroa.0.0.insert.insert854, ptr addrspace(3) %add.ptr425.3, align 4, !dbg !184, !tbaa !30
  %add403.4 = shl nuw nsw i32 %mul400, 4, !dbg !179
  %xor407732.4 = or disjoint i32 %add403.4, 16, !dbg !179
  %mul408.4 = xor i32 %xor407732.4, %call404.mask, !dbg !179
  %add418.4 = add nuw nsw i32 %mul408.4, %mul417, !dbg !181
  %add423.4 = or disjoint i32 %add418.4, %mul422, !dbg !182
  %add.ptr425.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add423.4, !dbg !183
  %v_column.sroa.18.0.insert.ext887 = zext i16 %v_fetch.sroa.16.16.copyload to i32, !dbg !184
  %v_column.sroa.18.0.insert.shift888 = shl nuw i32 %v_column.sroa.18.0.insert.ext887, 16, !dbg !184
  %v_column.sroa.0.0.insert.ext856 = zext i16 %v_fetch.sroa.7.0.copyload to i32, !dbg !184
  %v_column.sroa.0.0.insert.insert858 = or disjoint i32 %v_column.sroa.18.0.insert.shift888, %v_column.sroa.0.0.insert.ext856, !dbg !184
  store i32 %v_column.sroa.0.0.insert.insert858, ptr addrspace(3) %add.ptr425.4, align 4, !dbg !184, !tbaa !30
  %add403.5 = shl nuw nsw i32 %mul400, 4, !dbg !179
  %xor407732.5 = or disjoint i32 %add403.5, 272, !dbg !179
  %mul408.5 = xor i32 %xor407732.5, %call404.mask, !dbg !179
  %add418.5 = add nuw nsw i32 %mul408.5, %mul417.1, !dbg !181
  %add423.5 = or disjoint i32 %add418.5, %mul422, !dbg !182
  %add.ptr425.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add423.5, !dbg !183
  %v_column.sroa.18.0.insert.ext892 = zext i16 %v_fetch.sroa.17.16.copyload to i32, !dbg !184
  %v_column.sroa.18.0.insert.shift893 = shl nuw i32 %v_column.sroa.18.0.insert.ext892, 16, !dbg !184
  %v_column.sroa.0.0.insert.ext860 = zext i16 %v_fetch.sroa.8.0.copyload to i32, !dbg !184
  %v_column.sroa.0.0.insert.insert862 = or disjoint i32 %v_column.sroa.18.0.insert.shift893, %v_column.sroa.0.0.insert.ext860, !dbg !184
  store i32 %v_column.sroa.0.0.insert.insert862, ptr addrspace(3) %add.ptr425.5, align 4, !dbg !184, !tbaa !30
  %add403.6 = shl nuw nsw i32 %mul400, 4, !dbg !179
  %xor407732.6 = or disjoint i32 %add403.6, 528, !dbg !179
  %mul408.6 = xor i32 %xor407732.6, %call404.mask, !dbg !179
  %add418.6 = add nuw nsw i32 %mul408.6, %mul417.2, !dbg !181
  %add423.6 = or disjoint i32 %add418.6, %mul422, !dbg !182
  %add.ptr425.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add423.6, !dbg !183
  %v_column.sroa.18.0.insert.ext897 = zext i16 %v_fetch.sroa.18.16.copyload to i32, !dbg !184
  %v_column.sroa.18.0.insert.shift898 = shl nuw i32 %v_column.sroa.18.0.insert.ext897, 16, !dbg !184
  %v_column.sroa.0.0.insert.ext864 = zext i16 %v_fetch.sroa.9.0.copyload to i32, !dbg !184
  %v_column.sroa.0.0.insert.insert866 = or disjoint i32 %v_column.sroa.18.0.insert.shift898, %v_column.sroa.0.0.insert.ext864, !dbg !184
  store i32 %v_column.sroa.0.0.insert.insert866, ptr addrspace(3) %add.ptr425.6, align 4, !dbg !184, !tbaa !30
  %add403.7 = shl nuw nsw i32 %mul400, 4, !dbg !179
  %xor407732.7 = or disjoint i32 %add403.7, 784, !dbg !179
  %mul408.7 = xor i32 %xor407732.7, %call404.mask, !dbg !179
  %add418.7 = add nuw nsw i32 %mul408.7, %mul417.3, !dbg !181
  %add423.7 = or disjoint i32 %add418.7, %mul422, !dbg !182
  %add.ptr425.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add423.7, !dbg !183
  %v_column.sroa.18.0.insert.ext902 = zext i16 %v_fetch.sroa.19.16.copyload to i32, !dbg !184
  %v_column.sroa.18.0.insert.shift903 = shl nuw i32 %v_column.sroa.18.0.insert.ext902, 16, !dbg !184
  %v_column.sroa.0.0.insert.ext868 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !184
  %v_column.sroa.0.0.insert.insert870 = or disjoint i32 %v_column.sroa.18.0.insert.shift903, %v_column.sroa.0.0.insert.ext868, !dbg !184
  store i32 %v_column.sroa.0.0.insert.insert870, ptr addrspace(3) %add.ptr425.7, align 4, !dbg !184, !tbaa !30
  fence syncscope("warp") release, !dbg !185
  tail call void @llvm.mxc.barrier.warp(), !dbg !188
  fence syncscope("warp") acquire, !dbg !189
  %mul435 = and i32 %57, 48
  %shr440 = and i32 %22, 3
  %61 = or disjoint i32 %mul435, %shr440
  %and451 = and i32 %2, 3
  %62 = xor i32 %and60, %and451
  %xor445731 = shl nuw nsw i32 %61, 4, !dbg !190
  %mul446 = xor i32 %xor445731, %call404.mask, !dbg !190
  %63 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul446, !dbg !191
  %add.ptr456.idx = shl nuw nsw i32 %62, 3, !dbg !191
  %add.ptr456 = getelementptr inbounds i8, ptr addrspace(3) %63, i32 %add.ptr456.idx, !dbg !191
  %64 = load <4 x half>, ptr addrspace(3) %add.ptr456, align 8, !dbg !192
  %add441.1 = shl nuw nsw i32 %61, 4, !dbg !190
  %xor445731.1 = or disjoint i32 %add441.1, 64, !dbg !190
  %mul446.1 = xor i32 %xor445731.1, %call404.mask, !dbg !190
  %65 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul446.1, !dbg !191
  %xor452.1 = shl nuw nsw i32 %62, 3, !dbg !191
  %add.ptr456.idx.1 = xor i32 %xor452.1, 8, !dbg !191
  %add.ptr456.1 = getelementptr inbounds i8, ptr addrspace(3) %65, i32 %add.ptr456.idx.1, !dbg !191
  %66 = load <4 x half>, ptr addrspace(3) %add.ptr456.1, align 8, !dbg !192
  %add441.2 = shl nuw nsw i32 %61, 4, !dbg !190
  %xor445731.2 = or disjoint i32 %add441.2, 128, !dbg !190
  %mul446.2 = xor i32 %xor445731.2, %call404.mask, !dbg !190
  %67 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul446.2, !dbg !191
  %xor452.2 = shl nuw nsw i32 %62, 3, !dbg !191
  %add.ptr456.idx.2 = xor i32 %xor452.2, 16, !dbg !191
  %add.ptr456.2 = getelementptr inbounds i8, ptr addrspace(3) %67, i32 %add.ptr456.idx.2, !dbg !191
  %68 = load <4 x half>, ptr addrspace(3) %add.ptr456.2, align 8, !dbg !192
  %add441.3 = shl nuw nsw i32 %61, 4, !dbg !190
  %xor445731.3 = or disjoint i32 %add441.3, 192, !dbg !190
  %mul446.3 = xor i32 %xor445731.3, %call404.mask, !dbg !190
  %69 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul446.3, !dbg !191
  %xor452.3 = shl nuw nsw i32 %62, 3, !dbg !191
  %add.ptr456.idx.3 = xor i32 %xor452.3, 24, !dbg !191
  %add.ptr456.3 = getelementptr inbounds i8, ptr addrspace(3) %69, i32 %add.ptr456.idx.3, !dbg !191
  %70 = load <4 x half>, ptr addrspace(3) %add.ptr456.3, align 8, !dbg !192
  %71 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %64, <4 x half> %56, <4 x float> zeroinitializer), !dbg !193
  %72 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %66, <4 x half> %56, <4 x float> zeroinitializer), !dbg !193
  %73 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %68, <4 x half> %56, <4 x float> zeroinitializer), !dbg !193
  %74 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %70, <4 x half> %56, <4 x float> zeroinitializer), !dbg !193
  %add344 = fadd contract float %add337.3, 0.000000e+00, !dbg !194
  br label %if.end482, !dbg !195

if.end482:                                        ; preds = %for.cond103.preheader, %entry
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %71, %for.cond103.preheader ], !dbg !197
  %numerator.sroa.20.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %72, %for.cond103.preheader ], !dbg !197
  %numerator.sroa.38.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %73, %for.cond103.preheader ], !dbg !197
  %numerator.sroa.56.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %74, %for.cond103.preheader ], !dbg !197
  %denominator.sroa.0.0 = phi float [ 0.000000e+00, %entry ], [ %add344, %for.cond103.preheader ], !dbg !197
  %75 = bitcast float %denominator.sroa.0.0 to i32, !dbg !195
  %76 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !198
  %77 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %76) #10, !dbg !201
  %xor.i.i763 = xor i32 %77, 32, !dbg !202
  %78 = and i32 %77, -64, !dbg !203
  %and.i.i764 = add nsw i32 %78, 64, !dbg !203
  %cmp.not.i.i765 = icmp slt i32 %xor.i.i763, %and.i.i764, !dbg !204
  %cond.i.i766 = select i1 %cmp.not.i.i765, i32 %xor.i.i763, i32 %77, !dbg !205
  %shl.i.i767 = shl i32 %cond.i.i766, 2, !dbg !206
  %79 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i767, i32 %75), !dbg !207
  %80 = bitcast i32 %79 to float, !dbg !208
  %add486 = fadd contract float %denominator.sroa.0.0, %80, !dbg !209
  %81 = bitcast float %add486 to i32, !dbg !210
  %82 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !212
  %83 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %82) #10, !dbg !215
  %xor.i.i768 = xor i32 %83, 16, !dbg !216
  %84 = and i32 %83, -64, !dbg !217
  %and.i.i769 = add nsw i32 %84, 64, !dbg !217
  %cmp.not.i.i770 = icmp slt i32 %xor.i.i768, %and.i.i769, !dbg !218
  %cond.i.i771 = select i1 %cmp.not.i.i770, i32 %xor.i.i768, i32 %83, !dbg !219
  %shl.i.i772 = shl i32 %cond.i.i771, 2, !dbg !220
  %85 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i772, i32 %81), !dbg !221
  %86 = bitcast i32 %85 to float, !dbg !222
  %add491 = fadd contract float %add486, %86, !dbg !223
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !224
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !224
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !224
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !224
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %add491, !dbg !225
  %div511 = fdiv contract float %numerator.sroa.0.4.vec.extract, %add491, !dbg !226
  %div515 = fdiv contract float %numerator.sroa.0.8.vec.extract, %add491, !dbg !227
  %div519 = fdiv contract float %numerator.sroa.0.12.vec.extract, %add491, !dbg !228
  %numerator.sroa.20.16.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 0, !dbg !224
  %numerator.sroa.20.20.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 1, !dbg !224
  %numerator.sroa.20.24.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 2, !dbg !224
  %numerator.sroa.20.28.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 3, !dbg !224
  %div.1 = fdiv contract float %numerator.sroa.20.16.vec.extract, %add491, !dbg !225
  %div511.1 = fdiv contract float %numerator.sroa.20.20.vec.extract, %add491, !dbg !226
  %div515.1 = fdiv contract float %numerator.sroa.20.24.vec.extract, %add491, !dbg !227
  %div519.1 = fdiv contract float %numerator.sroa.20.28.vec.extract, %add491, !dbg !228
  %numerator.sroa.38.32.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 0, !dbg !224
  %numerator.sroa.38.36.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 1, !dbg !224
  %numerator.sroa.38.40.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 2, !dbg !224
  %numerator.sroa.38.44.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 3, !dbg !224
  %div.2 = fdiv contract float %numerator.sroa.38.32.vec.extract, %add491, !dbg !225
  %div511.2 = fdiv contract float %numerator.sroa.38.36.vec.extract, %add491, !dbg !226
  %div515.2 = fdiv contract float %numerator.sroa.38.40.vec.extract, %add491, !dbg !227
  %div519.2 = fdiv contract float %numerator.sroa.38.44.vec.extract, %add491, !dbg !228
  %numerator.sroa.56.48.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 0, !dbg !224
  %numerator.sroa.56.52.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 1, !dbg !224
  %numerator.sroa.56.56.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 2, !dbg !224
  %numerator.sroa.56.60.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 3, !dbg !224
  %div.3 = fdiv contract float %numerator.sroa.56.48.vec.extract, %add491, !dbg !225
  %div511.3 = fdiv contract float %numerator.sroa.56.52.vec.extract, %add491, !dbg !226
  %div515.3 = fdiv contract float %numerator.sroa.56.56.vec.extract, %add491, !dbg !227
  %div519.3 = fdiv contract float %numerator.sroa.56.60.vec.extract, %add491, !dbg !228
  %xor568 = shl nuw nsw i32 %8, 2
  %mul569 = and i32 %xor568, 4
  %87 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !229
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !229, !noalias !233
  %88 = fptrunc float %div to half, !dbg !229
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %87), !dbg !229, !noalias !233
  %89 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !238, !noalias !233
  %90 = fptrunc float %div511 to half, !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %89), !dbg !238, !noalias !233
  %91 = bitcast half %88 to i16, !dbg !240
  %92 = bitcast half %90 to i16, !dbg !243
  %93 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !244, !noalias !248
  %94 = fptrunc float %div515 to half, !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %93), !dbg !244, !noalias !248
  %95 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !248
  %96 = fptrunc float %div519 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %95), !dbg !253, !noalias !248
  %97 = bitcast half %94 to i16, !dbg !255
  %98 = bitcast half %96 to i16, !dbg !257
  %__7.sroa.6.0.insert.ext = zext i16 %98 to i64, !dbg !258
  %__7.sroa.6.0.insert.shift = shl nuw i64 %__7.sroa.6.0.insert.ext, 48, !dbg !258
  %__7.sroa.5.0.insert.ext = zext i16 %97 to i64, !dbg !258
  %__7.sroa.5.0.insert.shift = shl nuw nsw i64 %__7.sroa.5.0.insert.ext, 32, !dbg !258
  %__7.sroa.5.0.insert.insert = or disjoint i64 %__7.sroa.6.0.insert.shift, %__7.sroa.5.0.insert.shift, !dbg !258
  %__7.sroa.4.0.insert.ext = zext i16 %92 to i64, !dbg !258
  %__7.sroa.4.0.insert.shift = shl nuw nsw i64 %__7.sroa.4.0.insert.ext, 16, !dbg !258
  %__7.sroa.4.0.insert.insert = or disjoint i64 %__7.sroa.5.0.insert.insert, %__7.sroa.4.0.insert.shift, !dbg !258
  %__7.sroa.0.0.insert.ext = zext i16 %91 to i64, !dbg !258
  %__7.sroa.0.0.insert.insert = or disjoint i64 %__7.sroa.4.0.insert.insert, %__7.sroa.0.0.insert.ext, !dbg !258
  %add570 = or disjoint i32 %add58, %mul569, !dbg !259
  %gep814 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @shared, i32 2048), i32 %add570, !dbg !260
  store i64 %__7.sroa.0.0.insert.insert, ptr addrspace(3) %gep814, align 8, !dbg !261
  %99 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !229
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !229, !noalias !233
  %100 = fptrunc float %div.1 to half, !dbg !229
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %99), !dbg !229, !noalias !233
  %101 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !238, !noalias !233
  %102 = fptrunc float %div511.1 to half, !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %101), !dbg !238, !noalias !233
  %103 = bitcast half %100 to i16, !dbg !240
  %104 = bitcast half %102 to i16, !dbg !243
  %105 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !244, !noalias !248
  %106 = fptrunc float %div515.1 to half, !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %105), !dbg !244, !noalias !248
  %107 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !248
  %108 = fptrunc float %div519.1 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %107), !dbg !253, !noalias !248
  %109 = bitcast half %106 to i16, !dbg !255
  %110 = bitcast half %108 to i16, !dbg !257
  %__7.sroa.6.0.insert.ext.1 = zext i16 %110 to i64, !dbg !258
  %__7.sroa.6.0.insert.shift.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.1, 48, !dbg !258
  %__7.sroa.5.0.insert.ext.1 = zext i16 %109 to i64, !dbg !258
  %__7.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1, 32, !dbg !258
  %__7.sroa.5.0.insert.insert.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.1, %__7.sroa.5.0.insert.shift.1, !dbg !258
  %__7.sroa.4.0.insert.ext.1 = zext i16 %104 to i64, !dbg !258
  %__7.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1, 16, !dbg !258
  %__7.sroa.4.0.insert.insert.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.1, %__7.sroa.4.0.insert.shift.1, !dbg !258
  %__7.sroa.0.0.insert.ext.1 = zext i16 %103 to i64, !dbg !258
  %__7.sroa.0.0.insert.insert.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.1, %__7.sroa.0.0.insert.ext.1, !dbg !258
  %add570.1 = or disjoint i32 %add58.1, %mul569, !dbg !259
  %gep814.1 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @shared, i32 2048), i32 %add570.1, !dbg !260
  store i64 %__7.sroa.0.0.insert.insert.1, ptr addrspace(3) %gep814.1, align 8, !dbg !261
  %111 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !229
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !229, !noalias !233
  %112 = fptrunc float %div.2 to half, !dbg !229
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %111), !dbg !229, !noalias !233
  %113 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !238, !noalias !233
  %114 = fptrunc float %div511.2 to half, !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %113), !dbg !238, !noalias !233
  %115 = bitcast half %112 to i16, !dbg !240
  %116 = bitcast half %114 to i16, !dbg !243
  %117 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !244, !noalias !248
  %118 = fptrunc float %div515.2 to half, !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %117), !dbg !244, !noalias !248
  %119 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !248
  %120 = fptrunc float %div519.2 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %119), !dbg !253, !noalias !248
  %121 = bitcast half %118 to i16, !dbg !255
  %122 = bitcast half %120 to i16, !dbg !257
  %__7.sroa.6.0.insert.ext.2 = zext i16 %122 to i64, !dbg !258
  %__7.sroa.6.0.insert.shift.2 = shl nuw i64 %__7.sroa.6.0.insert.ext.2, 48, !dbg !258
  %__7.sroa.5.0.insert.ext.2 = zext i16 %121 to i64, !dbg !258
  %__7.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.2, 32, !dbg !258
  %__7.sroa.5.0.insert.insert.2 = or disjoint i64 %__7.sroa.6.0.insert.shift.2, %__7.sroa.5.0.insert.shift.2, !dbg !258
  %__7.sroa.4.0.insert.ext.2 = zext i16 %116 to i64, !dbg !258
  %__7.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.2, 16, !dbg !258
  %__7.sroa.4.0.insert.insert.2 = or disjoint i64 %__7.sroa.5.0.insert.insert.2, %__7.sroa.4.0.insert.shift.2, !dbg !258
  %__7.sroa.0.0.insert.ext.2 = zext i16 %115 to i64, !dbg !258
  %__7.sroa.0.0.insert.insert.2 = or disjoint i64 %__7.sroa.4.0.insert.insert.2, %__7.sroa.0.0.insert.ext.2, !dbg !258
  %add570.2 = or disjoint i32 %add58.2, %mul569, !dbg !259
  %gep814.2 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @shared, i32 2048), i32 %add570.2, !dbg !260
  store i64 %__7.sroa.0.0.insert.insert.2, ptr addrspace(3) %gep814.2, align 8, !dbg !261
  %123 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !229
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !229, !noalias !233
  %124 = fptrunc float %div.3 to half, !dbg !229
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %123), !dbg !229, !noalias !233
  %125 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !238, !noalias !233
  %126 = fptrunc float %div511.3 to half, !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %125), !dbg !238, !noalias !233
  %127 = bitcast half %124 to i16, !dbg !240
  %128 = bitcast half %126 to i16, !dbg !243
  %129 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !244, !noalias !248
  %130 = fptrunc float %div515.3 to half, !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %129), !dbg !244, !noalias !248
  %131 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !248
  %132 = fptrunc float %div519.3 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %131), !dbg !253, !noalias !248
  %133 = bitcast half %130 to i16, !dbg !255
  %134 = bitcast half %132 to i16, !dbg !257
  %__7.sroa.6.0.insert.ext.3 = zext i16 %134 to i64, !dbg !258
  %__7.sroa.6.0.insert.shift.3 = shl nuw i64 %__7.sroa.6.0.insert.ext.3, 48, !dbg !258
  %__7.sroa.5.0.insert.ext.3 = zext i16 %133 to i64, !dbg !258
  %__7.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.3, 32, !dbg !258
  %__7.sroa.5.0.insert.insert.3 = or disjoint i64 %__7.sroa.6.0.insert.shift.3, %__7.sroa.5.0.insert.shift.3, !dbg !258
  %__7.sroa.4.0.insert.ext.3 = zext i16 %128 to i64, !dbg !258
  %__7.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.3, 16, !dbg !258
  %__7.sroa.4.0.insert.insert.3 = or disjoint i64 %__7.sroa.5.0.insert.insert.3, %__7.sroa.4.0.insert.shift.3, !dbg !258
  %__7.sroa.0.0.insert.ext.3 = zext i16 %127 to i64, !dbg !258
  %__7.sroa.0.0.insert.insert.3 = or disjoint i64 %__7.sroa.4.0.insert.insert.3, %__7.sroa.0.0.insert.ext.3, !dbg !258
  %add570.3 = or disjoint i32 %add58.3, %mul569, !dbg !259
  %gep814.3 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @shared, i32 2048), i32 %add570.3, !dbg !260
  store i64 %__7.sroa.0.0.insert.insert.3, ptr addrspace(3) %gep814.3, align 8, !dbg !261
  fence syncscope("warp") release, !dbg !262
  tail call void @llvm.mxc.barrier.warp(), !dbg !265
  fence syncscope("warp") acquire, !dbg !266
  %135 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @shared, i32 2048), i32 %mul29, !dbg !267
  %136 = getelementptr inbounds %struct.__half, ptr addrspace(3) %135, i32 %mul24, !dbg !267
  %137 = load i64, ptr addrspace(3) %136, align 16, !dbg !268
  %gep816.1 = getelementptr inbounds i8, ptr addrspace(3) %136, i32 8, !dbg !267
  %138 = load i64, ptr addrspace(3) %gep816.1, align 8, !dbg !268
  %add.ptr623 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !269
  store i64 %137, ptr addrspace(1) %add.ptr623, align 16, !dbg !270
  %output_fetch.sroa.6.0.add.ptr623.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr623, i64 8, !dbg !270
  store i64 %138, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr623.sroa_idx, align 8, !dbg !270
  %139 = getelementptr inbounds i8, ptr addrspace(3) %136, i32 1024, !dbg !267
  %gep816.1840 = getelementptr inbounds i8, ptr addrspace(3) %136, i32 1032, !dbg !267
  %140 = load i64, ptr addrspace(3) %gep816.1840, align 8, !dbg !268
  %141 = load i64, ptr addrspace(3) %139, align 16, !dbg !268
  %add.ptr623.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %6, !dbg !269
  store i64 %140, ptr addrspace(1) %add.ptr623.1, align 16, !dbg !270
  %output_fetch.sroa.6.0.add.ptr623.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr623.1, i64 8, !dbg !270
  store i64 %141, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr623.1.sroa_idx, align 8, !dbg !270
  ret void, !dbg !271
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v223_worker2_c5_two_shared_slots_subagent2/codegen/power_v223/case5_stage1.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v223_worker2_c5_two_shared_slots_subagent2/codegen/power_v223/case5_stage1.device.cpp", directory: "/root/tilelang-metax")
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
!70 = !DILocation(line: 49, column: 5, scope: !40)
!71 = !DILocation(line: 50, column: 45, scope: !40)
!72 = !DILocation(line: 50, column: 31, scope: !40)
!73 = !DILocation(line: 53, column: 26, scope: !40)
!74 = !DILocation(line: 53, column: 220, scope: !40)
!75 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !76)
!76 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !77)
!77 = distinct !DILocation(line: 56, column: 5, scope: !40)
!78 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !76)
!79 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !76)
!80 = !DILocation(line: 61, column: 49, scope: !40)
!81 = !DILocation(line: 61, column: 30, scope: !40)
!82 = !DILocation(line: 63, column: 37, scope: !40)
!83 = !DILocation(line: 71, column: 72, scope: !40)
!84 = !DILocation(line: 71, column: 11, scope: !40)
!85 = !DILocation(line: 71, column: 61, scope: !40)
!86 = !DILocation(line: 351, column: 10, scope: !87, inlinedAt: !89)
!87 = distinct !DISubprogram(name: "max", scope: !88, file: !88, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!88 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!89 = distinct !DILocation(line: 81, column: 20, scope: !40)
!90 = !DILocation(line: 1018, column: 9, scope: !91, inlinedAt: !92)
!91 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!92 = distinct !DILocation(line: 83, column: 34, scope: !40)
!93 = !DILocation(line: 171, column: 37, scope: !94, inlinedAt: !95)
!94 = distinct !DISubprogram(name: "__lane_id", scope: !51, file: !51, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!95 = distinct !DILocation(line: 990, column: 14, scope: !96, inlinedAt: !97)
!96 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!97 = distinct !DILocation(line: 1019, column: 11, scope: !91, inlinedAt: !92)
!98 = !DILocation(line: 171, column: 10, scope: !94, inlinedAt: !95)
!99 = !DILocation(line: 991, column: 20, scope: !96, inlinedAt: !97)
!100 = !DILocation(line: 992, column: 36, scope: !96, inlinedAt: !97)
!101 = !DILocation(line: 992, column: 17, scope: !96, inlinedAt: !97)
!102 = !DILocation(line: 992, column: 11, scope: !96, inlinedAt: !97)
!103 = !DILocation(line: 993, column: 43, scope: !96, inlinedAt: !97)
!104 = !DILocation(line: 993, column: 10, scope: !96, inlinedAt: !97)
!105 = !DILocation(line: 1020, column: 14, scope: !91, inlinedAt: !92)
!106 = !DILocation(line: 351, column: 10, scope: !87, inlinedAt: !107)
!107 = distinct !DILocation(line: 83, column: 18, scope: !40)
!108 = !DILocation(line: 1018, column: 9, scope: !91, inlinedAt: !109)
!109 = distinct !DILocation(line: 84, column: 34, scope: !40)
!110 = !DILocation(line: 171, column: 37, scope: !94, inlinedAt: !111)
!111 = distinct !DILocation(line: 990, column: 14, scope: !96, inlinedAt: !112)
!112 = distinct !DILocation(line: 1019, column: 11, scope: !91, inlinedAt: !109)
!113 = !DILocation(line: 171, column: 10, scope: !94, inlinedAt: !111)
!114 = !DILocation(line: 991, column: 20, scope: !96, inlinedAt: !112)
!115 = !DILocation(line: 992, column: 36, scope: !96, inlinedAt: !112)
!116 = !DILocation(line: 992, column: 17, scope: !96, inlinedAt: !112)
!117 = !DILocation(line: 992, column: 11, scope: !96, inlinedAt: !112)
!118 = !DILocation(line: 993, column: 43, scope: !96, inlinedAt: !112)
!119 = !DILocation(line: 993, column: 10, scope: !96, inlinedAt: !112)
!120 = !DILocation(line: 1020, column: 14, scope: !91, inlinedAt: !109)
!121 = !DILocation(line: 351, column: 10, scope: !87, inlinedAt: !122)
!122 = distinct !DILocation(line: 84, column: 18, scope: !40)
!123 = !DILocation(line: 94, column: 24, scope: !40)
!124 = !DILocation(line: 95, column: 24, scope: !40)
!125 = !DILocation(line: 96, column: 24, scope: !40)
!126 = !DILocation(line: 97, column: 24, scope: !40)
!127 = !DILocation(line: 99, column: 23, scope: !40)
!128 = !DILocation(line: 100, column: 23, scope: !40)
!129 = !DILocation(line: 101, column: 23, scope: !40)
!130 = !DILocation(line: 102, column: 23, scope: !40)
!131 = !DILocation(line: 104, column: 21, scope: !40)
!132 = !DILocation(line: 105, column: 21, scope: !40)
!133 = !DILocation(line: 106, column: 21, scope: !40)
!134 = !DILocation(line: 107, column: 21, scope: !40)
!135 = !DILocation(line: 285, column: 49, scope: !136, inlinedAt: !137)
!136 = distinct !DISubprogram(name: "exp2f", scope: !88, file: !88, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!137 = distinct !DILocation(line: 108, column: 13, scope: !40)
!138 = !DILocation(line: 285, column: 49, scope: !136, inlinedAt: !139)
!139 = distinct !DILocation(line: 109, column: 13, scope: !40)
!140 = !DILocation(line: 285, column: 49, scope: !136, inlinedAt: !141)
!141 = distinct !DILocation(line: 110, column: 13, scope: !40)
!142 = !DILocation(line: 285, column: 49, scope: !136, inlinedAt: !143)
!143 = distinct !DILocation(line: 111, column: 13, scope: !40)
!144 = !DILocation(line: 1007, column: 10, scope: !145, inlinedAt: !147)
!145 = distinct !DISubprogram(name: "__float2half_rn", scope: !146, file: !146, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!146 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!147 = distinct !DILocation(line: 1077, column: 18, scope: !148, inlinedAt: !149)
!148 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !146, file: !146, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!149 = distinct !DILocation(line: 1295, column: 23, scope: !150, inlinedAt: !151)
!150 = distinct !DISubprogram(name: "__float22half2_rn", scope: !146, file: !146, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!151 = distinct !DILocation(line: 112, column: 27, scope: !40)
!152 = !{!153, !155}
!153 = distinct !{!153, !154, !"_ZL17__floats2half2_rnff: %agg.result"}
!154 = distinct !{!154, !"_ZL17__floats2half2_rnff"}
!155 = distinct !{!155, !156, !"_ZL17__float22half2_rn6float2: %agg.result"}
!156 = distinct !{!156, !"_ZL17__float22half2_rn6float2"}
!157 = !DILocation(line: 1007, column: 10, scope: !145, inlinedAt: !158)
!158 = distinct !DILocation(line: 1077, column: 38, scope: !148, inlinedAt: !149)
!159 = !DILocation(line: 1007, column: 10, scope: !145, inlinedAt: !160)
!160 = distinct !DILocation(line: 1077, column: 18, scope: !148, inlinedAt: !161)
!161 = distinct !DILocation(line: 1295, column: 23, scope: !150, inlinedAt: !162)
!162 = distinct !DILocation(line: 113, column: 27, scope: !40)
!163 = !{!164, !166}
!164 = distinct !{!164, !165, !"_ZL17__floats2half2_rnff: %agg.result"}
!165 = distinct !{!165, !"_ZL17__floats2half2_rnff"}
!166 = distinct !{!166, !167, !"_ZL17__float22half2_rn6float2: %agg.result"}
!167 = distinct !{!167, !"_ZL17__float22half2_rn6float2"}
!168 = !DILocation(line: 1007, column: 10, scope: !145, inlinedAt: !169)
!169 = distinct !DILocation(line: 1077, column: 38, scope: !148, inlinedAt: !161)
!170 = !DILocation(line: 114, column: 34, scope: !40)
!171 = !DILocation(line: 1082, column: 16, scope: !172, inlinedAt: !173)
!172 = distinct !DISubprogram(name: "__half2float", scope: !146, file: !146, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!173 = distinct !DILocation(line: 136, column: 55, scope: !174, inlinedAt: !175)
!174 = distinct !DISubprogram(name: "operator float", scope: !146, file: !146, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!175 = distinct !DILocation(line: 118, column: 50, scope: !40)
!176 = !DILocation(line: 118, column: 40, scope: !40)
!177 = !DILocation(line: 123, column: 52, scope: !40)
!178 = !DILocation(line: 123, column: 38, scope: !40)
!179 = !DILocation(line: 130, column: 133, scope: !40)
!180 = !DILocation(line: 130, column: 218, scope: !40)
!181 = !DILocation(line: 130, column: 139, scope: !40)
!182 = !DILocation(line: 130, column: 224, scope: !40)
!183 = !DILocation(line: 130, column: 24, scope: !40)
!184 = !DILocation(line: 130, column: 267, scope: !40)
!185 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !186)
!186 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !187)
!187 = distinct !DILocation(line: 132, column: 5, scope: !40)
!188 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !186)
!189 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !186)
!190 = !DILocation(line: 135, column: 191, scope: !40)
!191 = !DILocation(line: 135, column: 63, scope: !40)
!192 = !DILocation(line: 135, column: 44, scope: !40)
!193 = !DILocation(line: 140, column: 46, scope: !40)
!194 = !DILocation(line: 120, column: 38, scope: !40)
!195 = !DILocation(line: 1018, column: 9, scope: !91, inlinedAt: !196)
!196 = distinct !DILocation(line: 146, column: 38, scope: !40)
!197 = !DILocation(line: 0, scope: !40)
!198 = !DILocation(line: 171, column: 37, scope: !94, inlinedAt: !199)
!199 = distinct !DILocation(line: 990, column: 14, scope: !96, inlinedAt: !200)
!200 = distinct !DILocation(line: 1019, column: 11, scope: !91, inlinedAt: !196)
!201 = !DILocation(line: 171, column: 10, scope: !94, inlinedAt: !199)
!202 = !DILocation(line: 991, column: 20, scope: !96, inlinedAt: !200)
!203 = !DILocation(line: 992, column: 36, scope: !96, inlinedAt: !200)
!204 = !DILocation(line: 992, column: 17, scope: !96, inlinedAt: !200)
!205 = !DILocation(line: 992, column: 11, scope: !96, inlinedAt: !200)
!206 = !DILocation(line: 993, column: 43, scope: !96, inlinedAt: !200)
!207 = !DILocation(line: 993, column: 10, scope: !96, inlinedAt: !200)
!208 = !DILocation(line: 1020, column: 14, scope: !91, inlinedAt: !196)
!209 = !DILocation(line: 146, column: 36, scope: !40)
!210 = !DILocation(line: 1018, column: 9, scope: !91, inlinedAt: !211)
!211 = distinct !DILocation(line: 147, column: 38, scope: !40)
!212 = !DILocation(line: 171, column: 37, scope: !94, inlinedAt: !213)
!213 = distinct !DILocation(line: 990, column: 14, scope: !96, inlinedAt: !214)
!214 = distinct !DILocation(line: 1019, column: 11, scope: !91, inlinedAt: !211)
!215 = !DILocation(line: 171, column: 10, scope: !94, inlinedAt: !213)
!216 = !DILocation(line: 991, column: 20, scope: !96, inlinedAt: !214)
!217 = !DILocation(line: 992, column: 36, scope: !96, inlinedAt: !214)
!218 = !DILocation(line: 992, column: 17, scope: !96, inlinedAt: !214)
!219 = !DILocation(line: 992, column: 11, scope: !96, inlinedAt: !214)
!220 = !DILocation(line: 993, column: 43, scope: !96, inlinedAt: !214)
!221 = !DILocation(line: 993, column: 10, scope: !96, inlinedAt: !214)
!222 = !DILocation(line: 1020, column: 14, scope: !91, inlinedAt: !211)
!223 = !DILocation(line: 147, column: 36, scope: !40)
!224 = !DILocation(line: 151, column: 21, scope: !40)
!225 = !DILocation(line: 153, column: 22, scope: !40)
!226 = !DILocation(line: 154, column: 22, scope: !40)
!227 = !DILocation(line: 155, column: 22, scope: !40)
!228 = !DILocation(line: 156, column: 22, scope: !40)
!229 = !DILocation(line: 1007, column: 10, scope: !145, inlinedAt: !230)
!230 = distinct !DILocation(line: 1077, column: 18, scope: !148, inlinedAt: !231)
!231 = distinct !DILocation(line: 1295, column: 23, scope: !150, inlinedAt: !232)
!232 = distinct !DILocation(line: 163, column: 27, scope: !40)
!233 = !{!234, !236}
!234 = distinct !{!234, !235, !"_ZL17__floats2half2_rnff: %agg.result"}
!235 = distinct !{!235, !"_ZL17__floats2half2_rnff"}
!236 = distinct !{!236, !237, !"_ZL17__float22half2_rn6float2: %agg.result"}
!237 = distinct !{!237, !"_ZL17__float22half2_rn6float2"}
!238 = !DILocation(line: 1007, column: 10, scope: !145, inlinedAt: !239)
!239 = distinct !DILocation(line: 1077, column: 38, scope: !148, inlinedAt: !231)
!240 = !DILocation(line: 596, column: 67, scope: !241, inlinedAt: !242)
!241 = distinct !DISubprogram(name: "__half2", scope: !146, file: !146, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!242 = distinct !DILocation(line: 1077, column: 10, scope: !148, inlinedAt: !231)
!243 = !DILocation(line: 596, column: 73, scope: !241, inlinedAt: !242)
!244 = !DILocation(line: 1007, column: 10, scope: !145, inlinedAt: !245)
!245 = distinct !DILocation(line: 1077, column: 18, scope: !148, inlinedAt: !246)
!246 = distinct !DILocation(line: 1295, column: 23, scope: !150, inlinedAt: !247)
!247 = distinct !DILocation(line: 164, column: 27, scope: !40)
!248 = !{!249, !251}
!249 = distinct !{!249, !250, !"_ZL17__floats2half2_rnff: %agg.result"}
!250 = distinct !{!250, !"_ZL17__floats2half2_rnff"}
!251 = distinct !{!251, !252, !"_ZL17__float22half2_rn6float2: %agg.result"}
!252 = distinct !{!252, !"_ZL17__float22half2_rn6float2"}
!253 = !DILocation(line: 1007, column: 10, scope: !145, inlinedAt: !254)
!254 = distinct !DILocation(line: 1077, column: 38, scope: !148, inlinedAt: !246)
!255 = !DILocation(line: 596, column: 67, scope: !241, inlinedAt: !256)
!256 = distinct !DILocation(line: 1077, column: 10, scope: !148, inlinedAt: !246)
!257 = !DILocation(line: 596, column: 73, scope: !241, inlinedAt: !256)
!258 = !DILocation(line: 165, column: 38, scope: !40)
!259 = !DILocation(line: 166, column: 142, scope: !40)
!260 = !DILocation(line: 166, column: 22, scope: !40)
!261 = !DILocation(line: 166, column: 230, scope: !40)
!262 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !263)
!263 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !264)
!264 = distinct !DILocation(line: 168, column: 3, scope: !40)
!265 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !263)
!266 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !263)
!267 = !DILocation(line: 173, column: 65, scope: !40)
!268 = !DILocation(line: 173, column: 46, scope: !40)
!269 = !DILocation(line: 175, column: 22, scope: !40)
!270 = !DILocation(line: 175, column: 134, scope: !40)
!271 = !DILocation(line: 177, column: 1, scope: !40)
