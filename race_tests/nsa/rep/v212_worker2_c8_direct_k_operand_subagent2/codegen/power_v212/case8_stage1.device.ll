; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v212_worker2_c8_direct_k_operand_subagent2/codegen/power_v212/case8_stage1.device.cpp'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v212_worker2_c8_direct_k_operand_subagent2/codegen/power_v212/case8_stage1.device.cpp"
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
  %mul = shl nsw i32 %0, 22
  %1 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !range !29
  %mul7 = shl nsw i32 %1, 10
  %add = add nuw nsw i32 %mul, %mul7
  %2 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !42
  %mul11 = shl nuw nsw i32 %2, 3
  %add9 = add nuw nsw i32 %add, %mul11
  %mul24 = and i32 %mul11, 8128
  %xor663 = and i32 %mul11, 56
  %call27.masked = and i32 %2, 1016
  %mul29 = xor i32 %xor663, %call27.masked
  %and33 = lshr i32 %2, 3
  %shr34 = and i32 %and33, 1
  %3 = zext nneg i32 %add9 to i64, !dbg !43
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %3, !dbg !44
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %add.ptr, align 16, !dbg !45
  %qk_fetch.sroa.6.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !45
  %qk_fetch.sroa.6.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.6.0.add.ptr.sroa_idx, align 8, !dbg !45
  %4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul29, !dbg !46
  %5 = getelementptr inbounds %struct.__half, ptr addrspace(3) %4, i32 %mul24, !dbg !46
  %add.ptr39.idx = shl nuw nsw i32 %shr34, 3, !dbg !46
  %add.ptr39 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr39, align 8, !dbg !47
  %xor35.1 = shl nuw nsw i32 %shr34, 3, !dbg !46
  %add.ptr39.idx.1 = xor i32 %xor35.1, 8, !dbg !46
  %add.ptr39.1 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.6.0.copyload, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !47
  %6 = add nuw nsw i64 %3, 512, !dbg !48
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %6, !dbg !44
  %qk_fetch.sroa.0.0.copyload942 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %qk_fetch.sroa.6.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %qk_fetch.sroa.6.0.copyload943 = load i64, ptr addrspace(4) %qk_fetch.sroa.6.0.add.ptr.1.sroa_idx, align 8, !dbg !45
  %7 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 1024, !dbg !46
  %add.ptr39.1741 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload942, ptr addrspace(3) %add.ptr39.1741, align 8, !dbg !47
  %add.ptr39.1.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.6.0.copyload943, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !47
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
  %mul95 = shl nsw i32 %0, 12, !dbg !61
  %add97 = add nuw nsw i32 %mul95, %1, !dbg !62
  %idxprom = zext nneg i32 %add97 to i64, !dbg !63
  %arrayidx98 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %idxprom, !dbg !63
  %9 = load i32, ptr addrspace(1) %arrayidx98, align 4, !dbg !63, !tbaa !30
  %mul99 = shl nsw i32 %9, 4, !dbg !64
  %cmp100 = icmp slt i32 %9, 0, !dbg !65
  %cmp102.not = icmp sgt i32 %mul99, %1
  %or.cond = select i1 %cmp100, i1 true, i1 %cmp102.not, !dbg !66
  br i1 %or.cond, label %if.end419, label %if.then, !dbg !66

if.then:                                          ; preds = %entry
  %xor65662 = xor i32 %8, %2
  %xor68 = shl nuw nsw i32 %xor65662, 2
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
  %mul112 = shl nuw nsw i64 %conv, 18
  %conv113 = zext nneg i32 %mul99 to i64
  %mul114 = shl nuw nsw i64 %conv113, 6
  %add115 = add nuw nsw i64 %mul114, %mul112
  %mul119 = zext nneg i32 %mul49 to i64
  %add120 = or disjoint i64 %add115, %mul119
  %14 = lshr i32 %2, 2
  %15 = and i32 %14, 252
  %mul127 = zext nneg i32 %15 to i64
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul127, !dbg !70
  %16 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add120, !dbg !71
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(4) %16, align 8, !dbg !72
  %17 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %13, <4 x float> zeroinitializer), !dbg !73, !call_argsrelate !74
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %16, i64 32, !dbg !71
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(4) %gep.1, align 8, !dbg !72
  %18 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %12, <4 x float> %17), !dbg !73, !call_argsrelate !74
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %16, i64 64, !dbg !71
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(4) %gep.2, align 8, !dbg !72
  %19 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %11, <4 x float> %18), !dbg !73, !call_argsrelate !74
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %16, i64 96, !dbg !71
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(4) %gep.3, align 8, !dbg !72
  %20 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %10, <4 x float> %19), !dbg !73, !call_argsrelate !74
  %add151 = add nuw nsw i32 %mul99, %15
  %cmp154.not = icmp sgt i32 %add151, %1, !dbg !75
  %scores.sroa.0.0.vec.extract827 = extractelement <4 x float> %20, i64 0
  %spec.select = select i1 %cmp154.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract827, !dbg !76
  %cmp154.not.1.not = icmp slt i32 %add151, %1, !dbg !75
  %scores.sroa.0.4.vec.extract834 = extractelement <4 x float> %20, i64 1, !dbg !76
  %condval.0.1 = select i1 %cmp154.not.1.not, float %scores.sroa.0.4.vec.extract834, float 0xFFF0000000000000, !dbg !76
  %add152.2 = or disjoint i32 %add151, 2, !dbg !77
  %cmp154.not.2 = icmp sgt i32 %add152.2, %1, !dbg !75
  %scores.sroa.0.8.vec.extract841 = extractelement <4 x float> %20, i64 2, !dbg !76
  %condval.0.2 = select i1 %cmp154.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract841, !dbg !76
  %add152.3 = or disjoint i32 %add151, 3, !dbg !77
  %cmp154.not.3 = icmp sgt i32 %add152.3, %1, !dbg !75
  %scores.sroa.0.12.vec.extract848 = extractelement <4 x float> %20, i64 3, !dbg !76
  %condval.0.3 = select i1 %cmp154.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract848, !dbg !76
  %21 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !78
  %22 = tail call contract noundef float @llvm.maxnum.f32(float %21, float %condval.0.1), !dbg !78
  %23 = tail call contract noundef float @llvm.maxnum.f32(float %22, float %condval.0.2), !dbg !78
  %24 = tail call contract noundef float @llvm.maxnum.f32(float %23, float %condval.0.3), !dbg !78
  %25 = bitcast float %24 to i32, !dbg !82
  %26 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !85
  %27 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %26) #10, !dbg !90
  %xor.i.i = xor i32 %27, 32, !dbg !91
  %28 = and i32 %27, -64, !dbg !92
  %and.i.i = add nsw i32 %28, 64, !dbg !92
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !93
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %27, !dbg !94
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !95
  %29 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %25), !dbg !96
  %30 = bitcast i32 %29 to float, !dbg !97
  %31 = tail call contract noundef float @llvm.maxnum.f32(float %24, float %30), !dbg !98
  %32 = bitcast float %31 to i32, !dbg !100
  %33 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !102
  %34 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %33) #10, !dbg !105
  %xor.i.i665 = xor i32 %34, 16, !dbg !106
  %35 = and i32 %34, -64, !dbg !107
  %and.i.i666 = add nsw i32 %35, 64, !dbg !107
  %cmp.not.i.i667 = icmp slt i32 %xor.i.i665, %and.i.i666, !dbg !108
  %cond.i.i668 = select i1 %cmp.not.i.i667, i32 %xor.i.i665, i32 %34, !dbg !109
  %shl.i.i669 = shl i32 %cond.i.i668, 2, !dbg !110
  %36 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i669, i32 %32), !dbg !111
  %37 = bitcast i32 %36 to float, !dbg !112
  %38 = tail call contract noundef float @llvm.maxnum.f32(float %31, float %37), !dbg !113
  %sub = fsub contract float %spec.select, %38, !dbg !115
  %sub200 = fsub contract float %condval.0.1, %38, !dbg !116
  %sub203 = fsub contract float %condval.0.2, %38, !dbg !117
  %sub206 = fsub contract float %condval.0.3, %38, !dbg !118
  %mul211 = fmul contract float %sub, 0x3FC7154760000000, !dbg !119
  %mul215 = fmul contract float %sub200, 0x3FC7154760000000, !dbg !120
  %mul219 = fmul contract float %sub203, 0x3FC7154760000000, !dbg !121
  %mul223 = fmul contract float %sub206, 0x3FC7154760000000, !dbg !122
  %add228 = fadd contract float %mul211, 8.000000e+00, !dbg !123
  %add232 = fadd contract float %mul215, 8.000000e+00, !dbg !124
  %add236 = fadd contract float %mul219, 8.000000e+00, !dbg !125
  %add240 = fadd contract float %mul223, 8.000000e+00, !dbg !126
  %cmp.i.i = fcmp contract olt float %add228, -1.260000e+02, !dbg !127
  %cond.i.i670 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !127
  %add.i.i = fadd contract float %add228, %cond.i.i670, !dbg !127
  %39 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !127
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !127
  %mul.i.i = fmul contract float %cond2.i.i, %39, !dbg !127
  %cmp.i.i671 = fcmp contract olt float %add232, -1.260000e+02, !dbg !130
  %cond.i.i672 = select contract i1 %cmp.i.i671, float 6.400000e+01, float 0.000000e+00, !dbg !130
  %add.i.i673 = fadd contract float %add232, %cond.i.i672, !dbg !130
  %40 = tail call contract float @llvm.exp2.f32(float %add.i.i673), !dbg !130
  %cond2.i.i674 = select contract i1 %cmp.i.i671, float 0x3BF0000000000000, float 1.000000e+00, !dbg !130
  %mul.i.i675 = fmul contract float %cond2.i.i674, %40, !dbg !130
  %cmp.i.i676 = fcmp contract olt float %add236, -1.260000e+02, !dbg !132
  %cond.i.i677 = select contract i1 %cmp.i.i676, float 6.400000e+01, float 0.000000e+00, !dbg !132
  %add.i.i678 = fadd contract float %add236, %cond.i.i677, !dbg !132
  %41 = tail call contract float @llvm.exp2.f32(float %add.i.i678), !dbg !132
  %cond2.i.i679 = select contract i1 %cmp.i.i676, float 0x3BF0000000000000, float 1.000000e+00, !dbg !132
  %mul.i.i680 = fmul contract float %cond2.i.i679, %41, !dbg !132
  %cmp.i.i681 = fcmp contract olt float %add240, -1.260000e+02, !dbg !134
  %cond.i.i682 = select contract i1 %cmp.i.i681, float 6.400000e+01, float 0.000000e+00, !dbg !134
  %add.i.i683 = fadd contract float %add240, %cond.i.i682, !dbg !134
  %42 = tail call contract float @llvm.exp2.f32(float %add.i.i683), !dbg !134
  %cond2.i.i684 = select contract i1 %cmp.i.i681, float 0x3BF0000000000000, float 1.000000e+00, !dbg !134
  %mul.i.i685 = fmul contract float %cond2.i.i684, %42, !dbg !134
  %43 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !136
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !136, !noalias !144
  %44 = fptrunc float %mul.i.i to half, !dbg !136
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %43), !dbg !136, !noalias !144
  %45 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !149
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !149, !noalias !144
  %46 = fptrunc float %mul.i.i675 to half, !dbg !149
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %45), !dbg !149, !noalias !144
  %47 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !151, !noalias !155
  %48 = fptrunc float %mul.i.i680 to half, !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %47), !dbg !151, !noalias !155
  %49 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !160, !noalias !155
  %50 = fptrunc float %mul.i.i685 to half, !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %49), !dbg !160, !noalias !155
  %51 = insertelement <4 x half> poison, half %44, i64 0, !dbg !162
  %52 = insertelement <4 x half> %51, half %46, i64 1, !dbg !162
  %53 = insertelement <4 x half> %52, half %48, i64 2, !dbg !162
  %54 = insertelement <4 x half> %53, half %50, i64 3, !dbg !162
  %conv.i.i = fpext half %44 to float, !dbg !163
  %add274 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !168
  %conv.i.i.1 = fpext half %46 to float, !dbg !163
  %add274.1 = fadd contract float %add274, %conv.i.i.1, !dbg !168
  %conv.i.i.2 = fpext half %48 to float, !dbg !163
  %add274.2 = fadd contract float %add274.1, %conv.i.i.2, !dbg !168
  %conv.i.i.3 = fpext half %50 to float, !dbg !163
  %add274.3 = fadd contract float %add274.2, %conv.i.i.3, !dbg !168
  fence syncscope("warp") release, !dbg !169
  tail call void @llvm.mxc.barrier.warp(), !dbg !172
  fence syncscope("warp") acquire, !dbg !173
  %55 = shl nuw nsw i32 %2, 4
  %56 = and i32 %55, 16256
  %57 = or disjoint i32 %56, %xor663
  %58 = zext nneg i32 %57 to i64
  %add297 = or disjoint i64 %mul112, %58
  %59 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add297, !dbg !174
  %.idx = shl nuw nsw i64 %conv113, 7, !dbg !174
  %60 = getelementptr inbounds i8, ptr addrspace(4) %59, i64 %.idx, !dbg !174
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %60, align 16, !dbg !175
  %v_fetch.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 2, !dbg !175
  %v_fetch.sroa.4.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.4.0..sroa_idx, align 2, !dbg !175, !tbaa !30
  %v_fetch.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 4, !dbg !175
  %v_fetch.sroa.5.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.5.0..sroa_idx, align 4, !dbg !175
  %v_fetch.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 6, !dbg !175
  %v_fetch.sroa.6.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.6.0..sroa_idx, align 2, !dbg !175, !tbaa !30
  %v_fetch.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 8, !dbg !175
  %v_fetch.sroa.7.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.7.0..sroa_idx, align 8, !dbg !175
  %v_fetch.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 10, !dbg !175
  %v_fetch.sroa.8.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.8.0..sroa_idx, align 2, !dbg !175, !tbaa !30
  %v_fetch.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 12, !dbg !175
  %v_fetch.sroa.9.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.9.0..sroa_idx, align 4, !dbg !175
  %v_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 14, !dbg !175
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx, align 2, !dbg !175, !tbaa !30
  %add.ptr306.1 = getelementptr inbounds i8, ptr addrspace(4) %60, i64 128, !dbg !174
  %v_fetch.sroa.11.16.copyload = load i16, ptr addrspace(4) %add.ptr306.1, align 16, !dbg !175
  %v_fetch.sroa.13.16.add.ptr306.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 130, !dbg !175
  %v_fetch.sroa.13.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.13.16.add.ptr306.1.sroa_idx, align 2, !dbg !175, !tbaa !30
  %v_fetch.sroa.14.16.add.ptr306.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 132, !dbg !175
  %v_fetch.sroa.14.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.16.add.ptr306.1.sroa_idx, align 4, !dbg !175
  %v_fetch.sroa.15.16.add.ptr306.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 134, !dbg !175
  %v_fetch.sroa.15.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.15.16.add.ptr306.1.sroa_idx, align 2, !dbg !175, !tbaa !30
  %v_fetch.sroa.16.16.add.ptr306.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 136, !dbg !175
  %v_fetch.sroa.16.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.16.16.add.ptr306.1.sroa_idx, align 8, !dbg !175
  %v_fetch.sroa.17.16.add.ptr306.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 138, !dbg !175
  %v_fetch.sroa.17.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.17.16.add.ptr306.1.sroa_idx, align 2, !dbg !175, !tbaa !30
  %v_fetch.sroa.18.16.add.ptr306.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 140, !dbg !175
  %v_fetch.sroa.18.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.16.add.ptr306.1.sroa_idx, align 4, !dbg !175
  %v_fetch.sroa.19.16.add.ptr306.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 142, !dbg !175
  %v_fetch.sroa.19.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.19.16.add.ptr306.1.sroa_idx, align 2, !dbg !175, !tbaa !30
  %and336 = shl nuw nsw i32 %2, 1
  %mul337 = and i32 %and336, 14
  %call341.mask = and i32 %2, 16
  %and349 = lshr i32 %2, 1
  %shr350 = and i32 %and349, 3
  %xor351 = xor i32 %shr350, %and60
  %mul359 = and i32 %14, 2
  %xor344660 = shl nuw nsw i32 %mul337, 4, !dbg !176
  %mul345 = or disjoint i32 %xor344660, %call341.mask, !dbg !176
  %mul354 = shl nuw nsw i32 %xor351, 2, !dbg !177
  %add355 = add nuw nsw i32 %mul345, %mul354, !dbg !178
  %add360 = or disjoint i32 %add355, %mul359, !dbg !179
  %add.ptr362 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add360, !dbg !180
  %v_column.sroa.18.0.insert.ext = zext i16 %v_fetch.sroa.11.16.copyload to i32, !dbg !181
  %v_column.sroa.18.0.insert.shift = shl nuw i32 %v_column.sroa.18.0.insert.ext, 16, !dbg !181
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !181
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.18.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !181
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr362, align 4, !dbg !181, !tbaa !30
  %add338.1 = shl nuw nsw i32 %mul337, 4, !dbg !176
  %xor344660.1 = or disjoint i32 %add338.1, %call341.mask, !dbg !176
  %mul345.1 = or disjoint i32 %xor344660.1, 256, !dbg !176
  %xor353.1 = shl nuw nsw i32 %xor351, 2, !dbg !177
  %mul354.1 = xor i32 %xor353.1, 4, !dbg !177
  %add355.1 = add nuw nsw i32 %mul345.1, %mul354.1, !dbg !178
  %add360.1 = or disjoint i32 %add355.1, %mul359, !dbg !179
  %add.ptr362.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add360.1, !dbg !180
  %v_column.sroa.18.0.insert.ext784 = zext i16 %v_fetch.sroa.13.16.copyload to i32, !dbg !181
  %v_column.sroa.18.0.insert.shift785 = shl nuw i32 %v_column.sroa.18.0.insert.ext784, 16, !dbg !181
  %v_column.sroa.0.0.insert.ext756 = zext i16 %v_fetch.sroa.4.0.copyload to i32, !dbg !181
  %v_column.sroa.0.0.insert.insert758 = or disjoint i32 %v_column.sroa.18.0.insert.shift785, %v_column.sroa.0.0.insert.ext756, !dbg !181
  store i32 %v_column.sroa.0.0.insert.insert758, ptr addrspace(3) %add.ptr362.1, align 4, !dbg !181, !tbaa !30
  %add338.2 = shl nuw nsw i32 %mul337, 4, !dbg !176
  %xor344660.2 = or disjoint i32 %add338.2, %call341.mask, !dbg !176
  %mul345.2 = or disjoint i32 %xor344660.2, 512, !dbg !176
  %xor353.2 = shl nuw nsw i32 %xor351, 2, !dbg !177
  %mul354.2 = xor i32 %xor353.2, 8, !dbg !177
  %add355.2 = add nuw nsw i32 %mul345.2, %mul354.2, !dbg !178
  %add360.2 = or disjoint i32 %add355.2, %mul359, !dbg !179
  %add.ptr362.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add360.2, !dbg !180
  %v_column.sroa.18.0.insert.ext789 = zext i16 %v_fetch.sroa.14.16.copyload to i32, !dbg !181
  %v_column.sroa.18.0.insert.shift790 = shl nuw i32 %v_column.sroa.18.0.insert.ext789, 16, !dbg !181
  %v_column.sroa.0.0.insert.ext760 = zext i16 %v_fetch.sroa.5.0.copyload to i32, !dbg !181
  %v_column.sroa.0.0.insert.insert762 = or disjoint i32 %v_column.sroa.18.0.insert.shift790, %v_column.sroa.0.0.insert.ext760, !dbg !181
  store i32 %v_column.sroa.0.0.insert.insert762, ptr addrspace(3) %add.ptr362.2, align 4, !dbg !181, !tbaa !30
  %add338.3 = shl nuw nsw i32 %mul337, 4, !dbg !176
  %xor344660.3 = or disjoint i32 %add338.3, %call341.mask, !dbg !176
  %mul345.3 = or disjoint i32 %xor344660.3, 768, !dbg !176
  %xor353.3 = shl nuw nsw i32 %xor351, 2, !dbg !177
  %mul354.3 = xor i32 %xor353.3, 12, !dbg !177
  %add355.3 = add nuw nsw i32 %mul345.3, %mul354.3, !dbg !178
  %add360.3 = or disjoint i32 %add355.3, %mul359, !dbg !179
  %add.ptr362.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add360.3, !dbg !180
  %v_column.sroa.18.0.insert.ext794 = zext i16 %v_fetch.sroa.15.16.copyload to i32, !dbg !181
  %v_column.sroa.18.0.insert.shift795 = shl nuw i32 %v_column.sroa.18.0.insert.ext794, 16, !dbg !181
  %v_column.sroa.0.0.insert.ext764 = zext i16 %v_fetch.sroa.6.0.copyload to i32, !dbg !181
  %v_column.sroa.0.0.insert.insert766 = or disjoint i32 %v_column.sroa.18.0.insert.shift795, %v_column.sroa.0.0.insert.ext764, !dbg !181
  store i32 %v_column.sroa.0.0.insert.insert766, ptr addrspace(3) %add.ptr362.3, align 4, !dbg !181, !tbaa !30
  %add340.4 = shl nuw nsw i32 %mul337, 4, !dbg !176
  %xor344660.4 = or disjoint i32 %add340.4, 16, !dbg !176
  %mul345.4 = xor i32 %xor344660.4, %call341.mask, !dbg !176
  %add355.4 = add nuw nsw i32 %mul345.4, %mul354, !dbg !178
  %add360.4 = or disjoint i32 %add355.4, %mul359, !dbg !179
  %add.ptr362.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add360.4, !dbg !180
  %v_column.sroa.18.0.insert.ext799 = zext i16 %v_fetch.sroa.16.16.copyload to i32, !dbg !181
  %v_column.sroa.18.0.insert.shift800 = shl nuw i32 %v_column.sroa.18.0.insert.ext799, 16, !dbg !181
  %v_column.sroa.0.0.insert.ext768 = zext i16 %v_fetch.sroa.7.0.copyload to i32, !dbg !181
  %v_column.sroa.0.0.insert.insert770 = or disjoint i32 %v_column.sroa.18.0.insert.shift800, %v_column.sroa.0.0.insert.ext768, !dbg !181
  store i32 %v_column.sroa.0.0.insert.insert770, ptr addrspace(3) %add.ptr362.4, align 4, !dbg !181, !tbaa !30
  %add340.5 = shl nuw nsw i32 %mul337, 4, !dbg !176
  %xor344660.5 = or disjoint i32 %add340.5, 272, !dbg !176
  %mul345.5 = xor i32 %xor344660.5, %call341.mask, !dbg !176
  %add355.5 = add nuw nsw i32 %mul345.5, %mul354.1, !dbg !178
  %add360.5 = or disjoint i32 %add355.5, %mul359, !dbg !179
  %add.ptr362.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add360.5, !dbg !180
  %v_column.sroa.18.0.insert.ext804 = zext i16 %v_fetch.sroa.17.16.copyload to i32, !dbg !181
  %v_column.sroa.18.0.insert.shift805 = shl nuw i32 %v_column.sroa.18.0.insert.ext804, 16, !dbg !181
  %v_column.sroa.0.0.insert.ext772 = zext i16 %v_fetch.sroa.8.0.copyload to i32, !dbg !181
  %v_column.sroa.0.0.insert.insert774 = or disjoint i32 %v_column.sroa.18.0.insert.shift805, %v_column.sroa.0.0.insert.ext772, !dbg !181
  store i32 %v_column.sroa.0.0.insert.insert774, ptr addrspace(3) %add.ptr362.5, align 4, !dbg !181, !tbaa !30
  %add340.6 = shl nuw nsw i32 %mul337, 4, !dbg !176
  %xor344660.6 = or disjoint i32 %add340.6, 528, !dbg !176
  %mul345.6 = xor i32 %xor344660.6, %call341.mask, !dbg !176
  %add355.6 = add nuw nsw i32 %mul345.6, %mul354.2, !dbg !178
  %add360.6 = or disjoint i32 %add355.6, %mul359, !dbg !179
  %add.ptr362.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add360.6, !dbg !180
  %v_column.sroa.18.0.insert.ext809 = zext i16 %v_fetch.sroa.18.16.copyload to i32, !dbg !181
  %v_column.sroa.18.0.insert.shift810 = shl nuw i32 %v_column.sroa.18.0.insert.ext809, 16, !dbg !181
  %v_column.sroa.0.0.insert.ext776 = zext i16 %v_fetch.sroa.9.0.copyload to i32, !dbg !181
  %v_column.sroa.0.0.insert.insert778 = or disjoint i32 %v_column.sroa.18.0.insert.shift810, %v_column.sroa.0.0.insert.ext776, !dbg !181
  store i32 %v_column.sroa.0.0.insert.insert778, ptr addrspace(3) %add.ptr362.6, align 4, !dbg !181, !tbaa !30
  %add340.7 = shl nuw nsw i32 %mul337, 4, !dbg !176
  %xor344660.7 = or disjoint i32 %add340.7, 784, !dbg !176
  %mul345.7 = xor i32 %xor344660.7, %call341.mask, !dbg !176
  %add355.7 = add nuw nsw i32 %mul345.7, %mul354.3, !dbg !178
  %add360.7 = or disjoint i32 %add355.7, %mul359, !dbg !179
  %add.ptr362.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add360.7, !dbg !180
  %v_column.sroa.18.0.insert.ext814 = zext i16 %v_fetch.sroa.19.16.copyload to i32, !dbg !181
  %v_column.sroa.18.0.insert.shift815 = shl nuw i32 %v_column.sroa.18.0.insert.ext814, 16, !dbg !181
  %v_column.sroa.0.0.insert.ext780 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !181
  %v_column.sroa.0.0.insert.insert782 = or disjoint i32 %v_column.sroa.18.0.insert.shift815, %v_column.sroa.0.0.insert.ext780, !dbg !181
  store i32 %v_column.sroa.0.0.insert.insert782, ptr addrspace(3) %add.ptr362.7, align 4, !dbg !181, !tbaa !30
  fence syncscope("warp") release, !dbg !182
  tail call void @llvm.mxc.barrier.warp(), !dbg !185
  fence syncscope("warp") acquire, !dbg !186
  %mul372 = and i32 %55, 48
  %shr377 = and i32 %14, 3
  %61 = or disjoint i32 %mul372, %shr377
  %and388 = and i32 %2, 3
  %62 = xor i32 %and60, %and388
  %xor382659 = shl nuw nsw i32 %61, 4, !dbg !187
  %mul383 = xor i32 %xor382659, %call341.mask, !dbg !187
  %63 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul383, !dbg !188
  %add.ptr393.idx = shl nuw nsw i32 %62, 3, !dbg !188
  %add.ptr393 = getelementptr inbounds i8, ptr addrspace(3) %63, i32 %add.ptr393.idx, !dbg !188
  %64 = load <4 x half>, ptr addrspace(3) %add.ptr393, align 8, !dbg !189
  %add378.1 = shl nuw nsw i32 %61, 4, !dbg !187
  %xor382659.1 = or disjoint i32 %add378.1, 64, !dbg !187
  %mul383.1 = xor i32 %xor382659.1, %call341.mask, !dbg !187
  %65 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul383.1, !dbg !188
  %xor389.1 = shl nuw nsw i32 %62, 3, !dbg !188
  %add.ptr393.idx.1 = xor i32 %xor389.1, 8, !dbg !188
  %add.ptr393.1 = getelementptr inbounds i8, ptr addrspace(3) %65, i32 %add.ptr393.idx.1, !dbg !188
  %66 = load <4 x half>, ptr addrspace(3) %add.ptr393.1, align 8, !dbg !189
  %add378.2 = shl nuw nsw i32 %61, 4, !dbg !187
  %xor382659.2 = or disjoint i32 %add378.2, 128, !dbg !187
  %mul383.2 = xor i32 %xor382659.2, %call341.mask, !dbg !187
  %67 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul383.2, !dbg !188
  %xor389.2 = shl nuw nsw i32 %62, 3, !dbg !188
  %add.ptr393.idx.2 = xor i32 %xor389.2, 16, !dbg !188
  %add.ptr393.2 = getelementptr inbounds i8, ptr addrspace(3) %67, i32 %add.ptr393.idx.2, !dbg !188
  %68 = load <4 x half>, ptr addrspace(3) %add.ptr393.2, align 8, !dbg !189
  %add378.3 = shl nuw nsw i32 %61, 4, !dbg !187
  %xor382659.3 = or disjoint i32 %add378.3, 192, !dbg !187
  %mul383.3 = xor i32 %xor382659.3, %call341.mask, !dbg !187
  %69 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul383.3, !dbg !188
  %xor389.3 = shl nuw nsw i32 %62, 3, !dbg !188
  %add.ptr393.idx.3 = xor i32 %xor389.3, 24, !dbg !188
  %add.ptr393.3 = getelementptr inbounds i8, ptr addrspace(3) %69, i32 %add.ptr393.idx.3, !dbg !188
  %70 = load <4 x half>, ptr addrspace(3) %add.ptr393.3, align 8, !dbg !189
  %71 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %64, <4 x half> %54, <4 x float> zeroinitializer), !dbg !190
  %72 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %66, <4 x half> %54, <4 x float> zeroinitializer), !dbg !190
  %73 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %68, <4 x half> %54, <4 x float> zeroinitializer), !dbg !190
  %74 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %70, <4 x half> %54, <4 x float> zeroinitializer), !dbg !190
  %add281 = fadd contract float %add274.3, 0.000000e+00, !dbg !191
  br label %if.end419, !dbg !192

if.end419:                                        ; preds = %if.then, %entry
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %71, %if.then ], !dbg !194
  %numerator.sroa.20.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %72, %if.then ], !dbg !194
  %numerator.sroa.38.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %73, %if.then ], !dbg !194
  %numerator.sroa.56.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %74, %if.then ], !dbg !194
  %denominator.sroa.0.0 = phi float [ 0.000000e+00, %entry ], [ %add281, %if.then ], !dbg !194
  %75 = bitcast float %denominator.sroa.0.0 to i32, !dbg !192
  %76 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !195
  %77 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %76) #10, !dbg !198
  %xor.i.i687 = xor i32 %77, 32, !dbg !199
  %78 = and i32 %77, -64, !dbg !200
  %and.i.i688 = add nsw i32 %78, 64, !dbg !200
  %cmp.not.i.i689 = icmp slt i32 %xor.i.i687, %and.i.i688, !dbg !201
  %cond.i.i690 = select i1 %cmp.not.i.i689, i32 %xor.i.i687, i32 %77, !dbg !202
  %shl.i.i691 = shl i32 %cond.i.i690, 2, !dbg !203
  %79 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i691, i32 %75), !dbg !204
  %80 = bitcast i32 %79 to float, !dbg !205
  %add423 = fadd contract float %denominator.sroa.0.0, %80, !dbg !206
  %81 = bitcast float %add423 to i32, !dbg !207
  %82 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !209
  %83 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %82) #10, !dbg !212
  %xor.i.i692 = xor i32 %83, 16, !dbg !213
  %84 = and i32 %83, -64, !dbg !214
  %and.i.i693 = add nsw i32 %84, 64, !dbg !214
  %cmp.not.i.i694 = icmp slt i32 %xor.i.i692, %and.i.i693, !dbg !215
  %cond.i.i695 = select i1 %cmp.not.i.i694, i32 %xor.i.i692, i32 %83, !dbg !216
  %shl.i.i696 = shl i32 %cond.i.i695, 2, !dbg !217
  %85 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i696, i32 %81), !dbg !218
  %86 = bitcast i32 %85 to float, !dbg !219
  %add428 = fadd contract float %add423, %86, !dbg !220
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !221
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !221
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !221
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !221
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %add428, !dbg !222
  %div448 = fdiv contract float %numerator.sroa.0.4.vec.extract, %add428, !dbg !223
  %div452 = fdiv contract float %numerator.sroa.0.8.vec.extract, %add428, !dbg !224
  %div456 = fdiv contract float %numerator.sroa.0.12.vec.extract, %add428, !dbg !225
  %numerator.sroa.20.16.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 0, !dbg !221
  %numerator.sroa.20.20.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 1, !dbg !221
  %numerator.sroa.20.24.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 2, !dbg !221
  %numerator.sroa.20.28.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 3, !dbg !221
  %div.1 = fdiv contract float %numerator.sroa.20.16.vec.extract, %add428, !dbg !222
  %div448.1 = fdiv contract float %numerator.sroa.20.20.vec.extract, %add428, !dbg !223
  %div452.1 = fdiv contract float %numerator.sroa.20.24.vec.extract, %add428, !dbg !224
  %div456.1 = fdiv contract float %numerator.sroa.20.28.vec.extract, %add428, !dbg !225
  %numerator.sroa.38.32.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 0, !dbg !221
  %numerator.sroa.38.36.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 1, !dbg !221
  %numerator.sroa.38.40.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 2, !dbg !221
  %numerator.sroa.38.44.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 3, !dbg !221
  %div.2 = fdiv contract float %numerator.sroa.38.32.vec.extract, %add428, !dbg !222
  %div448.2 = fdiv contract float %numerator.sroa.38.36.vec.extract, %add428, !dbg !223
  %div452.2 = fdiv contract float %numerator.sroa.38.40.vec.extract, %add428, !dbg !224
  %div456.2 = fdiv contract float %numerator.sroa.38.44.vec.extract, %add428, !dbg !225
  %numerator.sroa.56.48.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 0, !dbg !221
  %numerator.sroa.56.52.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 1, !dbg !221
  %numerator.sroa.56.56.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 2, !dbg !221
  %numerator.sroa.56.60.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 3, !dbg !221
  %div.3 = fdiv contract float %numerator.sroa.56.48.vec.extract, %add428, !dbg !222
  %div448.3 = fdiv contract float %numerator.sroa.56.52.vec.extract, %add428, !dbg !223
  %div452.3 = fdiv contract float %numerator.sroa.56.56.vec.extract, %add428, !dbg !224
  %div456.3 = fdiv contract float %numerator.sroa.56.60.vec.extract, %add428, !dbg !225
  fence syncscope("warp") release, !dbg !226
  tail call void @llvm.mxc.barrier.warp(), !dbg !229
  fence syncscope("warp") acquire, !dbg !230
  %xor505 = shl nuw nsw i32 %8, 2
  %mul506 = and i32 %xor505, 4
  %87 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !231
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !231, !noalias !235
  %88 = fptrunc float %div to half, !dbg !231
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %87), !dbg !231, !noalias !235
  %89 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !235
  %90 = fptrunc float %div448 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %89), !dbg !240, !noalias !235
  %91 = bitcast half %88 to i16, !dbg !242
  %92 = bitcast half %90 to i16, !dbg !245
  %93 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !250
  %94 = fptrunc float %div452 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %93), !dbg !246, !noalias !250
  %95 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !250
  %96 = fptrunc float %div456 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %95), !dbg !255, !noalias !250
  %97 = bitcast half %94 to i16, !dbg !257
  %98 = bitcast half %96 to i16, !dbg !259
  %__7.sroa.6.0.insert.ext = zext i16 %98 to i64, !dbg !260
  %__7.sroa.6.0.insert.shift = shl nuw i64 %__7.sroa.6.0.insert.ext, 48, !dbg !260
  %__7.sroa.5.0.insert.ext = zext i16 %97 to i64, !dbg !260
  %__7.sroa.5.0.insert.shift = shl nuw nsw i64 %__7.sroa.5.0.insert.ext, 32, !dbg !260
  %__7.sroa.5.0.insert.insert = or disjoint i64 %__7.sroa.6.0.insert.shift, %__7.sroa.5.0.insert.shift, !dbg !260
  %__7.sroa.4.0.insert.ext = zext i16 %92 to i64, !dbg !260
  %__7.sroa.4.0.insert.shift = shl nuw nsw i64 %__7.sroa.4.0.insert.ext, 16, !dbg !260
  %__7.sroa.4.0.insert.insert = or disjoint i64 %__7.sroa.5.0.insert.insert, %__7.sroa.4.0.insert.shift, !dbg !260
  %__7.sroa.0.0.insert.ext = zext i16 %91 to i64, !dbg !260
  %__7.sroa.0.0.insert.insert = or disjoint i64 %__7.sroa.4.0.insert.insert, %__7.sroa.0.0.insert.ext, !dbg !260
  %add507 = or disjoint i32 %add58, %mul506, !dbg !261
  %add.ptr509 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add507, !dbg !262
  store i64 %__7.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr509, align 8, !dbg !263
  %99 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !231
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !231, !noalias !235
  %100 = fptrunc float %div.1 to half, !dbg !231
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %99), !dbg !231, !noalias !235
  %101 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !235
  %102 = fptrunc float %div448.1 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %101), !dbg !240, !noalias !235
  %103 = bitcast half %100 to i16, !dbg !242
  %104 = bitcast half %102 to i16, !dbg !245
  %105 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !250
  %106 = fptrunc float %div452.1 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %105), !dbg !246, !noalias !250
  %107 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !250
  %108 = fptrunc float %div456.1 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %107), !dbg !255, !noalias !250
  %109 = bitcast half %106 to i16, !dbg !257
  %110 = bitcast half %108 to i16, !dbg !259
  %__7.sroa.6.0.insert.ext.1 = zext i16 %110 to i64, !dbg !260
  %__7.sroa.6.0.insert.shift.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.1, 48, !dbg !260
  %__7.sroa.5.0.insert.ext.1 = zext i16 %109 to i64, !dbg !260
  %__7.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1, 32, !dbg !260
  %__7.sroa.5.0.insert.insert.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.1, %__7.sroa.5.0.insert.shift.1, !dbg !260
  %__7.sroa.4.0.insert.ext.1 = zext i16 %104 to i64, !dbg !260
  %__7.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1, 16, !dbg !260
  %__7.sroa.4.0.insert.insert.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.1, %__7.sroa.4.0.insert.shift.1, !dbg !260
  %__7.sroa.0.0.insert.ext.1 = zext i16 %103 to i64, !dbg !260
  %__7.sroa.0.0.insert.insert.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.1, %__7.sroa.0.0.insert.ext.1, !dbg !260
  %add507.1 = or disjoint i32 %add58.1, %mul506, !dbg !261
  %add.ptr509.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add507.1, !dbg !262
  store i64 %__7.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr509.1, align 8, !dbg !263
  %111 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !231
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !231, !noalias !235
  %112 = fptrunc float %div.2 to half, !dbg !231
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %111), !dbg !231, !noalias !235
  %113 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !235
  %114 = fptrunc float %div448.2 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %113), !dbg !240, !noalias !235
  %115 = bitcast half %112 to i16, !dbg !242
  %116 = bitcast half %114 to i16, !dbg !245
  %117 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !250
  %118 = fptrunc float %div452.2 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %117), !dbg !246, !noalias !250
  %119 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !250
  %120 = fptrunc float %div456.2 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %119), !dbg !255, !noalias !250
  %121 = bitcast half %118 to i16, !dbg !257
  %122 = bitcast half %120 to i16, !dbg !259
  %__7.sroa.6.0.insert.ext.2 = zext i16 %122 to i64, !dbg !260
  %__7.sroa.6.0.insert.shift.2 = shl nuw i64 %__7.sroa.6.0.insert.ext.2, 48, !dbg !260
  %__7.sroa.5.0.insert.ext.2 = zext i16 %121 to i64, !dbg !260
  %__7.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.2, 32, !dbg !260
  %__7.sroa.5.0.insert.insert.2 = or disjoint i64 %__7.sroa.6.0.insert.shift.2, %__7.sroa.5.0.insert.shift.2, !dbg !260
  %__7.sroa.4.0.insert.ext.2 = zext i16 %116 to i64, !dbg !260
  %__7.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.2, 16, !dbg !260
  %__7.sroa.4.0.insert.insert.2 = or disjoint i64 %__7.sroa.5.0.insert.insert.2, %__7.sroa.4.0.insert.shift.2, !dbg !260
  %__7.sroa.0.0.insert.ext.2 = zext i16 %115 to i64, !dbg !260
  %__7.sroa.0.0.insert.insert.2 = or disjoint i64 %__7.sroa.4.0.insert.insert.2, %__7.sroa.0.0.insert.ext.2, !dbg !260
  %add507.2 = or disjoint i32 %add58.2, %mul506, !dbg !261
  %add.ptr509.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add507.2, !dbg !262
  store i64 %__7.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr509.2, align 8, !dbg !263
  %123 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !231
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !231, !noalias !235
  %124 = fptrunc float %div.3 to half, !dbg !231
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %123), !dbg !231, !noalias !235
  %125 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !235
  %126 = fptrunc float %div448.3 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %125), !dbg !240, !noalias !235
  %127 = bitcast half %124 to i16, !dbg !242
  %128 = bitcast half %126 to i16, !dbg !245
  %129 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !250
  %130 = fptrunc float %div452.3 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %129), !dbg !246, !noalias !250
  %131 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !250
  %132 = fptrunc float %div456.3 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %131), !dbg !255, !noalias !250
  %133 = bitcast half %130 to i16, !dbg !257
  %134 = bitcast half %132 to i16, !dbg !259
  %__7.sroa.6.0.insert.ext.3 = zext i16 %134 to i64, !dbg !260
  %__7.sroa.6.0.insert.shift.3 = shl nuw i64 %__7.sroa.6.0.insert.ext.3, 48, !dbg !260
  %__7.sroa.5.0.insert.ext.3 = zext i16 %133 to i64, !dbg !260
  %__7.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.3, 32, !dbg !260
  %__7.sroa.5.0.insert.insert.3 = or disjoint i64 %__7.sroa.6.0.insert.shift.3, %__7.sroa.5.0.insert.shift.3, !dbg !260
  %__7.sroa.4.0.insert.ext.3 = zext i16 %128 to i64, !dbg !260
  %__7.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.3, 16, !dbg !260
  %__7.sroa.4.0.insert.insert.3 = or disjoint i64 %__7.sroa.5.0.insert.insert.3, %__7.sroa.4.0.insert.shift.3, !dbg !260
  %__7.sroa.0.0.insert.ext.3 = zext i16 %127 to i64, !dbg !260
  %__7.sroa.0.0.insert.insert.3 = or disjoint i64 %__7.sroa.4.0.insert.insert.3, %__7.sroa.0.0.insert.ext.3, !dbg !260
  %add507.3 = or disjoint i32 %add58.3, %mul506, !dbg !261
  %add.ptr509.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add507.3, !dbg !262
  store i64 %__7.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr509.3, align 8, !dbg !263
  fence syncscope("warp") release, !dbg !264
  tail call void @llvm.mxc.barrier.warp(), !dbg !267
  fence syncscope("warp") acquire, !dbg !268
  %135 = load i64, ptr addrspace(3) %5, align 16, !dbg !269
  %add.ptr537.1 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 8, !dbg !270
  %136 = load i64, ptr addrspace(3) %add.ptr537.1, align 8, !dbg !269
  %add.ptr558 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !271
  store i64 %135, ptr addrspace(1) %add.ptr558, align 16, !dbg !272
  %output_fetch.sroa.6.0.add.ptr558.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr558, i64 8, !dbg !272
  store i64 %136, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr558.sroa_idx, align 8, !dbg !272
  %add.ptr537.1752 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 1032, !dbg !270
  %137 = load i64, ptr addrspace(3) %add.ptr537.1752, align 8, !dbg !269
  %138 = load i64, ptr addrspace(3) %7, align 16, !dbg !269
  %add.ptr558.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %6, !dbg !271
  store i64 %137, ptr addrspace(1) %add.ptr558.1, align 16, !dbg !272
  %output_fetch.sroa.6.0.add.ptr558.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr558.1, i64 8, !dbg !272
  store i64 %138, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr558.1.sroa_idx, align 8, !dbg !272
  ret void, !dbg !273
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v212_worker2_c8_direct_k_operand_subagent2/codegen/power_v212/case8_stage1.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v212_worker2_c8_direct_k_operand_subagent2/codegen/power_v212/case8_stage1.device.cpp", directory: "/root/tilelang-metax")
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
!70 = !DILocation(line: 51, column: 10, scope: !40)
!71 = !DILocation(line: 52, column: 44, scope: !40)
!72 = !DILocation(line: 52, column: 30, scope: !40)
!73 = !DILocation(line: 54, column: 37, scope: !40)
!74 = !{i32 1, i32 -1, i32 -1}
!75 = !DILocation(line: 62, column: 72, scope: !40)
!76 = !DILocation(line: 62, column: 11, scope: !40)
!77 = !DILocation(line: 62, column: 61, scope: !40)
!78 = !DILocation(line: 351, column: 10, scope: !79, inlinedAt: !81)
!79 = distinct !DISubprogram(name: "max", scope: !80, file: !80, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!80 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!81 = distinct !DILocation(line: 72, column: 20, scope: !40)
!82 = !DILocation(line: 1018, column: 9, scope: !83, inlinedAt: !84)
!83 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!84 = distinct !DILocation(line: 74, column: 34, scope: !40)
!85 = !DILocation(line: 171, column: 37, scope: !86, inlinedAt: !87)
!86 = distinct !DISubprogram(name: "__lane_id", scope: !51, file: !51, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!87 = distinct !DILocation(line: 990, column: 14, scope: !88, inlinedAt: !89)
!88 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!89 = distinct !DILocation(line: 1019, column: 11, scope: !83, inlinedAt: !84)
!90 = !DILocation(line: 171, column: 10, scope: !86, inlinedAt: !87)
!91 = !DILocation(line: 991, column: 20, scope: !88, inlinedAt: !89)
!92 = !DILocation(line: 992, column: 36, scope: !88, inlinedAt: !89)
!93 = !DILocation(line: 992, column: 17, scope: !88, inlinedAt: !89)
!94 = !DILocation(line: 992, column: 11, scope: !88, inlinedAt: !89)
!95 = !DILocation(line: 993, column: 43, scope: !88, inlinedAt: !89)
!96 = !DILocation(line: 993, column: 10, scope: !88, inlinedAt: !89)
!97 = !DILocation(line: 1020, column: 14, scope: !83, inlinedAt: !84)
!98 = !DILocation(line: 351, column: 10, scope: !79, inlinedAt: !99)
!99 = distinct !DILocation(line: 74, column: 18, scope: !40)
!100 = !DILocation(line: 1018, column: 9, scope: !83, inlinedAt: !101)
!101 = distinct !DILocation(line: 75, column: 34, scope: !40)
!102 = !DILocation(line: 171, column: 37, scope: !86, inlinedAt: !103)
!103 = distinct !DILocation(line: 990, column: 14, scope: !88, inlinedAt: !104)
!104 = distinct !DILocation(line: 1019, column: 11, scope: !83, inlinedAt: !101)
!105 = !DILocation(line: 171, column: 10, scope: !86, inlinedAt: !103)
!106 = !DILocation(line: 991, column: 20, scope: !88, inlinedAt: !104)
!107 = !DILocation(line: 992, column: 36, scope: !88, inlinedAt: !104)
!108 = !DILocation(line: 992, column: 17, scope: !88, inlinedAt: !104)
!109 = !DILocation(line: 992, column: 11, scope: !88, inlinedAt: !104)
!110 = !DILocation(line: 993, column: 43, scope: !88, inlinedAt: !104)
!111 = !DILocation(line: 993, column: 10, scope: !88, inlinedAt: !104)
!112 = !DILocation(line: 1020, column: 14, scope: !83, inlinedAt: !101)
!113 = !DILocation(line: 351, column: 10, scope: !79, inlinedAt: !114)
!114 = distinct !DILocation(line: 75, column: 18, scope: !40)
!115 = !DILocation(line: 85, column: 24, scope: !40)
!116 = !DILocation(line: 86, column: 24, scope: !40)
!117 = !DILocation(line: 87, column: 24, scope: !40)
!118 = !DILocation(line: 88, column: 24, scope: !40)
!119 = !DILocation(line: 90, column: 23, scope: !40)
!120 = !DILocation(line: 91, column: 23, scope: !40)
!121 = !DILocation(line: 92, column: 23, scope: !40)
!122 = !DILocation(line: 93, column: 23, scope: !40)
!123 = !DILocation(line: 95, column: 21, scope: !40)
!124 = !DILocation(line: 96, column: 21, scope: !40)
!125 = !DILocation(line: 97, column: 21, scope: !40)
!126 = !DILocation(line: 98, column: 21, scope: !40)
!127 = !DILocation(line: 285, column: 49, scope: !128, inlinedAt: !129)
!128 = distinct !DISubprogram(name: "exp2f", scope: !80, file: !80, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!129 = distinct !DILocation(line: 99, column: 13, scope: !40)
!130 = !DILocation(line: 285, column: 49, scope: !128, inlinedAt: !131)
!131 = distinct !DILocation(line: 100, column: 13, scope: !40)
!132 = !DILocation(line: 285, column: 49, scope: !128, inlinedAt: !133)
!133 = distinct !DILocation(line: 101, column: 13, scope: !40)
!134 = !DILocation(line: 285, column: 49, scope: !128, inlinedAt: !135)
!135 = distinct !DILocation(line: 102, column: 13, scope: !40)
!136 = !DILocation(line: 1007, column: 10, scope: !137, inlinedAt: !139)
!137 = distinct !DISubprogram(name: "__float2half_rn", scope: !138, file: !138, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!138 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!139 = distinct !DILocation(line: 1077, column: 18, scope: !140, inlinedAt: !141)
!140 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !138, file: !138, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!141 = distinct !DILocation(line: 1295, column: 23, scope: !142, inlinedAt: !143)
!142 = distinct !DISubprogram(name: "__float22half2_rn", scope: !138, file: !138, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!143 = distinct !DILocation(line: 103, column: 27, scope: !40)
!144 = !{!145, !147}
!145 = distinct !{!145, !146, !"_ZL17__floats2half2_rnff: %agg.result"}
!146 = distinct !{!146, !"_ZL17__floats2half2_rnff"}
!147 = distinct !{!147, !148, !"_ZL17__float22half2_rn6float2: %agg.result"}
!148 = distinct !{!148, !"_ZL17__float22half2_rn6float2"}
!149 = !DILocation(line: 1007, column: 10, scope: !137, inlinedAt: !150)
!150 = distinct !DILocation(line: 1077, column: 38, scope: !140, inlinedAt: !141)
!151 = !DILocation(line: 1007, column: 10, scope: !137, inlinedAt: !152)
!152 = distinct !DILocation(line: 1077, column: 18, scope: !140, inlinedAt: !153)
!153 = distinct !DILocation(line: 1295, column: 23, scope: !142, inlinedAt: !154)
!154 = distinct !DILocation(line: 104, column: 27, scope: !40)
!155 = !{!156, !158}
!156 = distinct !{!156, !157, !"_ZL17__floats2half2_rnff: %agg.result"}
!157 = distinct !{!157, !"_ZL17__floats2half2_rnff"}
!158 = distinct !{!158, !159, !"_ZL17__float22half2_rn6float2: %agg.result"}
!159 = distinct !{!159, !"_ZL17__float22half2_rn6float2"}
!160 = !DILocation(line: 1007, column: 10, scope: !137, inlinedAt: !161)
!161 = distinct !DILocation(line: 1077, column: 38, scope: !140, inlinedAt: !153)
!162 = !DILocation(line: 105, column: 34, scope: !40)
!163 = !DILocation(line: 1082, column: 16, scope: !164, inlinedAt: !165)
!164 = distinct !DISubprogram(name: "__half2float", scope: !138, file: !138, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!165 = distinct !DILocation(line: 136, column: 55, scope: !166, inlinedAt: !167)
!166 = distinct !DISubprogram(name: "operator float", scope: !138, file: !138, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!167 = distinct !DILocation(line: 109, column: 50, scope: !40)
!168 = !DILocation(line: 109, column: 40, scope: !40)
!169 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !170)
!170 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !171)
!171 = distinct !DILocation(line: 112, column: 5, scope: !40)
!172 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !170)
!173 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !170)
!174 = !DILocation(line: 115, column: 52, scope: !40)
!175 = !DILocation(line: 115, column: 38, scope: !40)
!176 = !DILocation(line: 122, column: 133, scope: !40)
!177 = !DILocation(line: 122, column: 218, scope: !40)
!178 = !DILocation(line: 122, column: 139, scope: !40)
!179 = !DILocation(line: 122, column: 224, scope: !40)
!180 = !DILocation(line: 122, column: 24, scope: !40)
!181 = !DILocation(line: 122, column: 267, scope: !40)
!182 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !183)
!183 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !184)
!184 = distinct !DILocation(line: 124, column: 5, scope: !40)
!185 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !183)
!186 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !183)
!187 = !DILocation(line: 127, column: 191, scope: !40)
!188 = !DILocation(line: 127, column: 63, scope: !40)
!189 = !DILocation(line: 127, column: 44, scope: !40)
!190 = !DILocation(line: 132, column: 46, scope: !40)
!191 = !DILocation(line: 111, column: 38, scope: !40)
!192 = !DILocation(line: 1018, column: 9, scope: !83, inlinedAt: !193)
!193 = distinct !DILocation(line: 138, column: 38, scope: !40)
!194 = !DILocation(line: 0, scope: !40)
!195 = !DILocation(line: 171, column: 37, scope: !86, inlinedAt: !196)
!196 = distinct !DILocation(line: 990, column: 14, scope: !88, inlinedAt: !197)
!197 = distinct !DILocation(line: 1019, column: 11, scope: !83, inlinedAt: !193)
!198 = !DILocation(line: 171, column: 10, scope: !86, inlinedAt: !196)
!199 = !DILocation(line: 991, column: 20, scope: !88, inlinedAt: !197)
!200 = !DILocation(line: 992, column: 36, scope: !88, inlinedAt: !197)
!201 = !DILocation(line: 992, column: 17, scope: !88, inlinedAt: !197)
!202 = !DILocation(line: 992, column: 11, scope: !88, inlinedAt: !197)
!203 = !DILocation(line: 993, column: 43, scope: !88, inlinedAt: !197)
!204 = !DILocation(line: 993, column: 10, scope: !88, inlinedAt: !197)
!205 = !DILocation(line: 1020, column: 14, scope: !83, inlinedAt: !193)
!206 = !DILocation(line: 138, column: 36, scope: !40)
!207 = !DILocation(line: 1018, column: 9, scope: !83, inlinedAt: !208)
!208 = distinct !DILocation(line: 139, column: 38, scope: !40)
!209 = !DILocation(line: 171, column: 37, scope: !86, inlinedAt: !210)
!210 = distinct !DILocation(line: 990, column: 14, scope: !88, inlinedAt: !211)
!211 = distinct !DILocation(line: 1019, column: 11, scope: !83, inlinedAt: !208)
!212 = !DILocation(line: 171, column: 10, scope: !86, inlinedAt: !210)
!213 = !DILocation(line: 991, column: 20, scope: !88, inlinedAt: !211)
!214 = !DILocation(line: 992, column: 36, scope: !88, inlinedAt: !211)
!215 = !DILocation(line: 992, column: 17, scope: !88, inlinedAt: !211)
!216 = !DILocation(line: 992, column: 11, scope: !88, inlinedAt: !211)
!217 = !DILocation(line: 993, column: 43, scope: !88, inlinedAt: !211)
!218 = !DILocation(line: 993, column: 10, scope: !88, inlinedAt: !211)
!219 = !DILocation(line: 1020, column: 14, scope: !83, inlinedAt: !208)
!220 = !DILocation(line: 139, column: 36, scope: !40)
!221 = !DILocation(line: 143, column: 21, scope: !40)
!222 = !DILocation(line: 145, column: 22, scope: !40)
!223 = !DILocation(line: 146, column: 22, scope: !40)
!224 = !DILocation(line: 147, column: 22, scope: !40)
!225 = !DILocation(line: 148, column: 22, scope: !40)
!226 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !227)
!227 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !228)
!228 = distinct !DILocation(line: 151, column: 3, scope: !40)
!229 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !227)
!230 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !227)
!231 = !DILocation(line: 1007, column: 10, scope: !137, inlinedAt: !232)
!232 = distinct !DILocation(line: 1077, column: 18, scope: !140, inlinedAt: !233)
!233 = distinct !DILocation(line: 1295, column: 23, scope: !142, inlinedAt: !234)
!234 = distinct !DILocation(line: 156, column: 27, scope: !40)
!235 = !{!236, !238}
!236 = distinct !{!236, !237, !"_ZL17__floats2half2_rnff: %agg.result"}
!237 = distinct !{!237, !"_ZL17__floats2half2_rnff"}
!238 = distinct !{!238, !239, !"_ZL17__float22half2_rn6float2: %agg.result"}
!239 = distinct !{!239, !"_ZL17__float22half2_rn6float2"}
!240 = !DILocation(line: 1007, column: 10, scope: !137, inlinedAt: !241)
!241 = distinct !DILocation(line: 1077, column: 38, scope: !140, inlinedAt: !233)
!242 = !DILocation(line: 596, column: 67, scope: !243, inlinedAt: !244)
!243 = distinct !DISubprogram(name: "__half2", scope: !138, file: !138, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!244 = distinct !DILocation(line: 1077, column: 10, scope: !140, inlinedAt: !233)
!245 = !DILocation(line: 596, column: 73, scope: !243, inlinedAt: !244)
!246 = !DILocation(line: 1007, column: 10, scope: !137, inlinedAt: !247)
!247 = distinct !DILocation(line: 1077, column: 18, scope: !140, inlinedAt: !248)
!248 = distinct !DILocation(line: 1295, column: 23, scope: !142, inlinedAt: !249)
!249 = distinct !DILocation(line: 157, column: 27, scope: !40)
!250 = !{!251, !253}
!251 = distinct !{!251, !252, !"_ZL17__floats2half2_rnff: %agg.result"}
!252 = distinct !{!252, !"_ZL17__floats2half2_rnff"}
!253 = distinct !{!253, !254, !"_ZL17__float22half2_rn6float2: %agg.result"}
!254 = distinct !{!254, !"_ZL17__float22half2_rn6float2"}
!255 = !DILocation(line: 1007, column: 10, scope: !137, inlinedAt: !256)
!256 = distinct !DILocation(line: 1077, column: 38, scope: !140, inlinedAt: !248)
!257 = !DILocation(line: 596, column: 67, scope: !243, inlinedAt: !258)
!258 = distinct !DILocation(line: 1077, column: 10, scope: !140, inlinedAt: !248)
!259 = !DILocation(line: 596, column: 73, scope: !243, inlinedAt: !258)
!260 = !DILocation(line: 158, column: 38, scope: !40)
!261 = !DILocation(line: 159, column: 141, scope: !40)
!262 = !DILocation(line: 159, column: 22, scope: !40)
!263 = !DILocation(line: 159, column: 221, scope: !40)
!264 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !265)
!265 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !266)
!266 = distinct !DILocation(line: 161, column: 3, scope: !40)
!267 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !265)
!268 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !265)
!269 = !DILocation(line: 166, column: 46, scope: !40)
!270 = !DILocation(line: 166, column: 65, scope: !40)
!271 = !DILocation(line: 168, column: 22, scope: !40)
!272 = !DILocation(line: 168, column: 134, scope: !40)
!273 = !DILocation(line: 170, column: 1, scope: !40)
