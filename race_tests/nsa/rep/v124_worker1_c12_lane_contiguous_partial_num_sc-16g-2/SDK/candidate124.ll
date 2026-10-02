; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v124_worker1_c12_lane_contiguous_partial_num_sc-16g-2/codegen/candidate124/case12.device.cpp'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v124_worker1_c12_lane_contiguous_partial_num_sc-16g-2/codegen/candidate124/case12.device.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "mxc-metax-macahca"

%struct.mcDevMallocInfo.0 = type { i32, i32, ptr }
%struct.__half = type { i16 }

@buf_dyn_shmem = external protected local_unnamed_addr addrspace(3) global [0 x i8], align 1024
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
  %0 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !dbg !42, !range !46
  %cmp = icmp ult i32 %0, 64, !dbg !47
  %1 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !range !29
  br i1 %cmp, label %for.cond.preheader, label %entry.if.end_crit_edge, !dbg !48

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre1922 = lshr i32 %0, 3
  %.pre1923 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.y(), !range !29
  %.pre1926 = shl nuw nsw i32 %0, 3
  %.pre1927 = and i32 %.pre1926, 448
  %.pre1928 = xor i32 %.pre1926, %0
  %.pre1929 = and i32 %.pre1928, 56
  %.pre1930 = and i32 %.pre1922, 1
  br label %if.end, !dbg !48

for.cond.preheader:                               ; preds = %entry
  %2 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.y(), !range !29
  %mul = shl nsw i32 %2, 20
  %mul9 = shl nsw i32 %1, 10
  %add = add nuw nsw i32 %mul, %mul9
  %and = shl nuw nsw i32 %0, 3
  %3 = or disjoint i32 %add, %and
  %mul28 = and i32 %and, 448
  %xor = xor i32 %and, %0
  %mul35 = and i32 %xor, 56
  %4 = or disjoint i32 %mul28, %mul35
  %and39 = lshr i32 %0, 3
  %shr40 = and i32 %and39, 1
  %5 = zext nneg i32 %3 to i64, !dbg !49
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %5, !dbg !50
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %add.ptr, align 16, !dbg !51
  %qk_fetch.sroa.22.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !51
  %qk_fetch.sroa.22.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.add.ptr.sroa_idx, align 8, !dbg !51
  %.idx = shl nuw nsw i32 %shr40, 3, !dbg !52
  %6 = getelementptr inbounds i8, ptr addrspace(3) @buf_dyn_shmem, i32 %.idx, !dbg !52
  %7 = getelementptr inbounds %struct.__half, ptr addrspace(3) %6, i32 %4, !dbg !52
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %7, align 8, !dbg !53
  %xor41.1 = shl nuw nsw i32 %shr40, 3, !dbg !52
  %.idx.1 = xor i32 %xor41.1, 8, !dbg !52
  %8 = getelementptr inbounds i8, ptr addrspace(3) @buf_dyn_shmem, i32 %.idx.1, !dbg !52
  %9 = getelementptr inbounds %struct.__half, ptr addrspace(3) %8, i32 %4, !dbg !52
  store i64 %qk_fetch.sroa.22.0.copyload, ptr addrspace(3) %9, align 8, !dbg !53
  %10 = or disjoint i64 %5, 512, !dbg !54
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %10, !dbg !50
  %qk_fetch.sroa.0.0.copyload1893 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !51
  %qk_fetch.sroa.22.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !51
  %qk_fetch.sroa.22.0.copyload1902 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.add.ptr.1.sroa_idx, align 8, !dbg !51
  %add.ptr45.11120 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 1024, !dbg !52
  store i64 %qk_fetch.sroa.0.0.copyload1893, ptr addrspace(3) %add.ptr45.11120, align 8, !dbg !53
  %add.ptr45.1.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 1024, !dbg !52
  store i64 %qk_fetch.sroa.22.0.copyload1902, ptr addrspace(3) %add.ptr45.1.1, align 8, !dbg !53
  br label %if.end, !dbg !55

if.end:                                           ; preds = %entry.if.end_crit_edge, %for.cond.preheader
  %shr190.pre-phi = phi i32 [ %.pre1930, %entry.if.end_crit_edge ], [ %shr40, %for.cond.preheader ]
  %mul185.pre-phi = phi i32 [ %.pre1929, %entry.if.end_crit_edge ], [ %mul35, %for.cond.preheader ]
  %mul177.pre-phi = phi i32 [ %.pre1927, %entry.if.end_crit_edge ], [ %mul28, %for.cond.preheader ]
  %and154.pre-phi = phi i32 [ %.pre1926, %entry.if.end_crit_edge ], [ %and, %for.cond.preheader ]
  %.pre-phi = phi i32 [ %.pre1923, %entry.if.end_crit_edge ], [ %2, %for.cond.preheader ]
  %and70.pre-phi = phi i32 [ %.pre1922, %entry.if.end_crit_edge ], [ %and39, %for.cond.preheader ]
  fence syncscope("block") release, !dbg !55
  tail call void @llvm.mxc.barrier(), !dbg !61
  fence syncscope("block") acquire, !dbg !62
  %and54 = shl nuw nsw i32 %0, 6
  %mul55 = and i32 %and54, 960
  %and58 = lshr i32 %0, 5
  %shr59 = and i32 %and58, 1
  %and62 = and i32 %0, 7
  %and67 = lshr i32 %0, 4
  %11 = xor i32 %and70.pre-phi, %and67
  %xor721012 = xor i32 %11, %0
  %xor75 = shl nuw nsw i32 %xor721012, 2
  %mul76 = and i32 %xor75, 4
  %xor63 = xor i32 %shr59, %and62, !dbg !63
  %mul64 = shl nuw nsw i32 %xor63, 3, !dbg !64
  %add65 = or disjoint i32 %mul64, %mul55, !dbg !65
  %add77 = or disjoint i32 %add65, %mul76, !dbg !66
  %add.ptr79 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add77, !dbg !67
  %12 = load <4 x half>, ptr addrspace(3) %add.ptr79, align 8, !dbg !68
  %add60.1 = or disjoint i32 %shr59, 2, !dbg !69
  %xor63.1 = xor i32 %add60.1, %and62, !dbg !63
  %mul64.1 = shl nuw nsw i32 %xor63.1, 3, !dbg !64
  %add65.1 = or disjoint i32 %mul64.1, %mul55, !dbg !65
  %add77.1 = or disjoint i32 %add65.1, %mul76, !dbg !66
  %add.ptr79.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add77.1, !dbg !67
  %13 = load <4 x half>, ptr addrspace(3) %add.ptr79.1, align 8, !dbg !68
  %add60.2 = or disjoint i32 %shr59, 4, !dbg !69
  %xor63.2 = xor i32 %add60.2, %and62, !dbg !63
  %mul64.2 = shl nuw nsw i32 %xor63.2, 3, !dbg !64
  %add65.2 = or disjoint i32 %mul64.2, %mul55, !dbg !65
  %add77.2 = or disjoint i32 %add65.2, %mul76, !dbg !66
  %add.ptr79.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add77.2, !dbg !67
  %14 = load <4 x half>, ptr addrspace(3) %add.ptr79.2, align 8, !dbg !68
  %add60.3 = or disjoint i32 %shr59, 6, !dbg !69
  %xor63.3 = xor i32 %add60.3, %and62, !dbg !63
  %mul64.3 = shl nuw nsw i32 %xor63.3, 3, !dbg !64
  %add65.3 = or disjoint i32 %mul64.3, %mul55, !dbg !65
  %add77.3 = or disjoint i32 %add65.3, %mul76, !dbg !66
  %add.ptr79.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add77.3, !dbg !67
  %15 = load <4 x half>, ptr addrspace(3) %add.ptr79.3, align 8, !dbg !68
  %mul126 = shl nsw i32 %.pre-phi, 13
  %mul128 = shl nsw i32 %1, 3
  %add129 = add nuw nsw i32 %mul126, %mul128
  %mul132 = and i32 %and67, 60
  %add133 = add nuw nsw i32 %add129, %mul132
  %shr140 = lshr i32 %1, 4
  %mul148 = shl nsw i32 %.pre-phi, 16
  %mul155 = and i32 %and154.pre-phi, 504
  %16 = shl nuw nsw i32 %0, 4
  %mul171 = and i32 %16, 15360
  %17 = or disjoint i32 %mul171, %mul177.pre-phi
  %18 = or disjoint i32 %17, %mul185.pre-phi
  %add224 = or disjoint i32 %mul171, %mul55
  %shr2371006 = xor i32 %and70.pre-phi, %0
  %xor2411007 = xor i32 %shr2371006, %and67
  %xor244 = shl nuw nsw i32 %xor2411007, 2
  %mul245 = and i32 %xor244, 4
  %19 = lshr i32 %0, 2
  %mul274 = and i32 %19, 12
  %20 = zext nneg i32 %add133 to i64, !dbg !70
  %arrayidx135 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %20, !dbg !71
  %21 = load i32, ptr addrspace(1) %arrayidx135, align 4, !dbg !71, !tbaa !30
  %or.cond = icmp ugt i32 %21, 63, !dbg !72
  %cmp141.not = icmp sgt i32 %21, %shr140
  %or.cond1073 = or i1 %or.cond, %cmp141.not, !dbg !72
  br i1 %or.cond1073, label %if.end294, label %if.then142, !dbg !72

if.then142:                                       ; preds = %if.end
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !78
  fence syncscope("warp") acquire, !dbg !79
  %mul149 = shl nuw nsw i32 %21, 10
  %add150 = or disjoint i32 %mul149, %mul148
  %22 = or disjoint i32 %add150, %mul155
  %23 = zext nneg i32 %22 to i64, !dbg !80
  %add.ptr158 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %23, !dbg !81
  %qk_fetch.sroa.0.0.copyload1892 = load i64, ptr addrspace(4) %add.ptr158, align 16, !dbg !82
  %qk_fetch.sroa.22.0.add.ptr158.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr158, i64 8, !dbg !82
  %qk_fetch.sroa.22.0.copyload1901 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.add.ptr158.sroa_idx, align 8, !dbg !82
  %24 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %18, !dbg !83
  %gep.idx = shl nuw nsw i32 %shr190.pre-phi, 3, !dbg !83
  %gep = getelementptr inbounds i8, ptr addrspace(3) %24, i32 %gep.idx, !dbg !83
  store i64 %qk_fetch.sroa.0.0.copyload1892, ptr addrspace(3) %gep, align 8, !dbg !84
  %xor191.1 = shl nuw nsw i32 %shr190.pre-phi, 3, !dbg !83
  %gep.idx.1 = xor i32 %xor191.1, 8, !dbg !83
  %gep.1 = getelementptr inbounds i8, ptr addrspace(3) %24, i32 %gep.idx.1, !dbg !83
  store i64 %qk_fetch.sroa.22.0.copyload1901, ptr addrspace(3) %gep.1, align 8, !dbg !84
  %25 = or disjoint i64 %23, 512, !dbg !85
  %add.ptr158.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %25, !dbg !81
  %qk_fetch.sroa.0.0.copyload1894 = load i64, ptr addrspace(4) %add.ptr158.1, align 16, !dbg !82
  %qk_fetch.sroa.22.0.add.ptr158.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr158.1, i64 8, !dbg !82
  %qk_fetch.sroa.22.0.copyload1903 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.add.ptr158.1.sroa_idx, align 8, !dbg !82
  %26 = getelementptr inbounds i8, ptr addrspace(3) %24, i32 1024, !dbg !83
  %gep.11125 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 %gep.idx.1, !dbg !83
  store i64 %qk_fetch.sroa.0.0.copyload1894, ptr addrspace(3) %gep.11125, align 8, !dbg !84
  %gep.1.1 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 %gep.idx, !dbg !83
  store i64 %qk_fetch.sroa.22.0.copyload1903, ptr addrspace(3) %gep.1.1, align 8, !dbg !84
  fence syncscope("warp") release, !dbg !86
  tail call void @llvm.mxc.barrier.warp(), !dbg !89
  fence syncscope("warp") acquire, !dbg !90
  %add234 = or disjoint i32 %mul64, %add224, !dbg !91
  %add246 = or disjoint i32 %add234, %mul245, !dbg !92
  %gep1088 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add246, !dbg !93
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %gep1088, align 8, !dbg !94
  %27 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %12, <4 x float> zeroinitializer), !dbg !95
  %add234.1 = or disjoint i32 %mul64.1, %add224, !dbg !91
  %add246.1 = or disjoint i32 %add234.1, %mul245, !dbg !92
  %gep1088.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add246.1, !dbg !93
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %gep1088.1, align 8, !dbg !94
  %28 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %13, <4 x float> %27), !dbg !95
  %add234.2 = or disjoint i32 %mul64.2, %add224, !dbg !91
  %add246.2 = or disjoint i32 %add234.2, %mul245, !dbg !92
  %gep1088.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add246.2, !dbg !93
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %gep1088.2, align 8, !dbg !94
  %29 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %14, <4 x float> %28), !dbg !95
  %add234.3 = or disjoint i32 %mul64.3, %add224, !dbg !91
  %add246.3 = or disjoint i32 %add234.3, %mul245, !dbg !92
  %gep1088.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add246.3, !dbg !93
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %gep1088.3, align 8, !dbg !94
  %30 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %15, <4 x float> %29), !dbg !95
  %mul270 = shl nuw nsw i32 %21, 4
  %add275 = or disjoint i32 %mul270, %mul274
  %cmp278.not = icmp ugt i32 %add275, %1, !dbg !96
  %31 = extractelement <4 x float> %30, i64 1, !dbg !97
  %32 = extractelement <4 x float> %30, i64 2, !dbg !97
  %33 = extractelement <4 x float> %30, i64 3, !dbg !97
  %34 = extractelement <4 x float> %30, i64 0
  %spec.select = select i1 %cmp278.not, float 0xFFF0000000000000, float %34, !dbg !97
  %scores.sroa.0.0.vec.insert1972 = insertelement <4 x float> poison, float %spec.select, i64 0, !dbg !98
  %cmp278.not.1.not = icmp ult i32 %add275, %1, !dbg !96
  %condval.0.1 = select i1 %cmp278.not.1.not, float %31, float 0xFFF0000000000000, !dbg !97
  %scores.sroa.0.4.vec.insert1981 = insertelement <4 x float> %scores.sroa.0.0.vec.insert1972, float %condval.0.1, i64 1, !dbg !98
  %add276.2 = or disjoint i32 %add275, 2, !dbg !99
  %cmp278.not.2 = icmp ugt i32 %add276.2, %1, !dbg !96
  %condval.0.2 = select i1 %cmp278.not.2, float 0xFFF0000000000000, float %32, !dbg !97
  %scores.sroa.0.8.vec.insert1988 = insertelement <4 x float> %scores.sroa.0.4.vec.insert1981, float %condval.0.2, i64 2, !dbg !98
  %add276.3 = or disjoint i32 %add275, 3, !dbg !99
  %cmp278.not.3 = icmp ugt i32 %add276.3, %1, !dbg !96
  %condval.0.3 = select i1 %cmp278.not.3, float 0xFFF0000000000000, float %33, !dbg !97
  %scores.sroa.0.12.vec.insert1995 = insertelement <4 x float> %scores.sroa.0.8.vec.insert1988, float %condval.0.3, i64 3, !dbg !98
  br label %if.end294, !dbg !100

if.end294:                                        ; preds = %if.then142, %if.end
  %scores.sroa.0.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end ], [ %scores.sroa.0.12.vec.insert1995, %if.then142 ], !dbg !101
  %35 = or disjoint i64 %20, 1, !dbg !102
  %arrayidx135.1 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %35, !dbg !71
  %36 = load i32, ptr addrspace(1) %arrayidx135.1, align 4, !dbg !71, !tbaa !30
  %or.cond.1 = icmp ugt i32 %36, 63, !dbg !72
  %cmp141.not.1 = icmp sgt i32 %36, %shr140
  %or.cond1073.1 = or i1 %or.cond.1, %cmp141.not.1, !dbg !72
  br i1 %or.cond1073.1, label %if.end294.1, label %if.then142.1, !dbg !72

if.then142.1:                                     ; preds = %if.end294
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !78
  fence syncscope("warp") acquire, !dbg !79
  %mul149.1 = shl nuw nsw i32 %36, 10
  %add150.1 = or disjoint i32 %mul149.1, %mul148
  %37 = or disjoint i32 %add150.1, %mul155
  %38 = zext nneg i32 %37 to i64, !dbg !80
  %add.ptr158.11140 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %38, !dbg !81
  %qk_fetch.sroa.0.0.copyload1895 = load i64, ptr addrspace(4) %add.ptr158.11140, align 16, !dbg !82
  %qk_fetch.sroa.22.0.add.ptr158.11140.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr158.11140, i64 8, !dbg !82
  %qk_fetch.sroa.22.0.copyload1904 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.add.ptr158.11140.sroa_idx, align 8, !dbg !82
  %39 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %18, !dbg !83
  %gep.idx.11141 = shl nuw nsw i32 %shr190.pre-phi, 3, !dbg !83
  %gep.11142 = getelementptr inbounds i8, ptr addrspace(3) %39, i32 %gep.idx.11141, !dbg !83
  store i64 %qk_fetch.sroa.0.0.copyload1895, ptr addrspace(3) %gep.11142, align 8, !dbg !84
  %xor191.1.1 = shl nuw nsw i32 %shr190.pre-phi, 3, !dbg !83
  %gep.idx.1.11144 = xor i32 %xor191.1.1, 8, !dbg !83
  %gep.1.11145 = getelementptr inbounds i8, ptr addrspace(3) %39, i32 %gep.idx.1.11144, !dbg !83
  store i64 %qk_fetch.sroa.22.0.copyload1904, ptr addrspace(3) %gep.1.11145, align 8, !dbg !84
  %40 = or disjoint i64 %38, 512, !dbg !85
  %add.ptr158.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %40, !dbg !81
  %qk_fetch.sroa.0.0.copyload1896 = load i64, ptr addrspace(4) %add.ptr158.1.1, align 16, !dbg !82
  %qk_fetch.sroa.22.0.add.ptr158.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr158.1.1, i64 8, !dbg !82
  %qk_fetch.sroa.22.0.copyload1905 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.add.ptr158.1.1.sroa_idx, align 8, !dbg !82
  %41 = getelementptr inbounds i8, ptr addrspace(3) %39, i32 1024, !dbg !83
  %gep.11125.1 = getelementptr inbounds i8, ptr addrspace(3) %41, i32 %gep.idx.1.11144, !dbg !83
  store i64 %qk_fetch.sroa.0.0.copyload1896, ptr addrspace(3) %gep.11125.1, align 8, !dbg !84
  %gep.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %41, i32 %gep.idx.11141, !dbg !83
  store i64 %qk_fetch.sroa.22.0.copyload1905, ptr addrspace(3) %gep.1.1.1, align 8, !dbg !84
  fence syncscope("warp") release, !dbg !86
  tail call void @llvm.mxc.barrier.warp(), !dbg !89
  fence syncscope("warp") acquire, !dbg !90
  %add234.11150 = or disjoint i32 %mul64, %add224, !dbg !91
  %add246.11151 = or disjoint i32 %add234.11150, %mul245, !dbg !92
  %gep1088.11152 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add246.11151, !dbg !93
  %k_local.sroa.0.0.copyload.11153 = load <4 x half>, ptr addrspace(3) %gep1088.11152, align 8, !dbg !94
  %42 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11153, <4 x half> %12, <4 x float> zeroinitializer), !dbg !95
  %add234.1.1 = or disjoint i32 %mul64.1, %add224, !dbg !91
  %add246.1.1 = or disjoint i32 %add234.1.1, %mul245, !dbg !92
  %gep1088.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add246.1.1, !dbg !93
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %gep1088.1.1, align 8, !dbg !94
  %43 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %13, <4 x float> %42), !dbg !95
  %add234.2.1 = or disjoint i32 %mul64.2, %add224, !dbg !91
  %add246.2.1 = or disjoint i32 %add234.2.1, %mul245, !dbg !92
  %gep1088.2.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add246.2.1, !dbg !93
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %gep1088.2.1, align 8, !dbg !94
  %44 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %14, <4 x float> %43), !dbg !95
  %add234.3.1 = or disjoint i32 %mul64.3, %add224, !dbg !91
  %add246.3.1 = or disjoint i32 %add234.3.1, %mul245, !dbg !92
  %gep1088.3.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add246.3.1, !dbg !93
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %gep1088.3.1, align 8, !dbg !94
  %45 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %15, <4 x float> %44), !dbg !95
  %mul270.1 = shl nuw nsw i32 %36, 4
  %add275.1 = or disjoint i32 %mul270.1, %mul274
  %cmp278.not.11154 = icmp ugt i32 %add275.1, %1, !dbg !96
  %46 = extractelement <4 x float> %45, i64 1, !dbg !97
  %47 = extractelement <4 x float> %45, i64 2, !dbg !97
  %48 = extractelement <4 x float> %45, i64 3, !dbg !97
  %49 = extractelement <4 x float> %45, i64 0
  %spec.select1967 = select i1 %cmp278.not.11154, float 0xFFF0000000000000, float %49, !dbg !97
  %scores.sroa.23.16.vec.insert2003 = insertelement <4 x float> poison, float %spec.select1967, i64 0, !dbg !98
  %cmp278.not.1.1.not = icmp ult i32 %add275.1, %1, !dbg !96
  %condval.0.1.1 = select i1 %cmp278.not.1.1.not, float %46, float 0xFFF0000000000000, !dbg !97
  %scores.sroa.23.20.vec.insert2009 = insertelement <4 x float> %scores.sroa.23.16.vec.insert2003, float %condval.0.1.1, i64 1, !dbg !98
  %add276.2.1 = or disjoint i32 %add275.1, 2, !dbg !99
  %cmp278.not.2.1 = icmp ugt i32 %add276.2.1, %1, !dbg !96
  %condval.0.2.1 = select i1 %cmp278.not.2.1, float 0xFFF0000000000000, float %47, !dbg !97
  %scores.sroa.23.24.vec.insert2016 = insertelement <4 x float> %scores.sroa.23.20.vec.insert2009, float %condval.0.2.1, i64 2, !dbg !98
  %add276.3.1 = or disjoint i32 %add275.1, 3, !dbg !99
  %cmp278.not.3.1 = icmp ugt i32 %add276.3.1, %1, !dbg !96
  %condval.0.3.1 = select i1 %cmp278.not.3.1, float 0xFFF0000000000000, float %48, !dbg !97
  %scores.sroa.23.28.vec.insert2023 = insertelement <4 x float> %scores.sroa.23.24.vec.insert2016, float %condval.0.3.1, i64 3, !dbg !98
  br label %if.end294.1, !dbg !100

if.end294.1:                                      ; preds = %if.then142.1, %if.end294
  %scores.sroa.23.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end294 ], [ %scores.sroa.23.28.vec.insert2023, %if.then142.1 ], !dbg !101
  %50 = or disjoint i64 %20, 2, !dbg !102
  %arrayidx135.2 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %50, !dbg !71
  %51 = load i32, ptr addrspace(1) %arrayidx135.2, align 4, !dbg !71, !tbaa !30
  %or.cond.2 = icmp ugt i32 %51, 63, !dbg !72
  %cmp141.not.2 = icmp sgt i32 %51, %shr140
  %or.cond1073.2 = or i1 %or.cond.2, %cmp141.not.2, !dbg !72
  br i1 %or.cond1073.2, label %if.end294.2, label %if.then142.2, !dbg !72

if.then142.2:                                     ; preds = %if.end294.1
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !78
  fence syncscope("warp") acquire, !dbg !79
  %mul149.2 = shl nuw nsw i32 %51, 10
  %add150.2 = or disjoint i32 %mul149.2, %mul148
  %52 = or disjoint i32 %add150.2, %mul155
  %53 = zext nneg i32 %52 to i64, !dbg !80
  %add.ptr158.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %53, !dbg !81
  %qk_fetch.sroa.0.0.copyload1897 = load i64, ptr addrspace(4) %add.ptr158.2, align 16, !dbg !82
  %qk_fetch.sroa.22.0.add.ptr158.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr158.2, i64 8, !dbg !82
  %qk_fetch.sroa.22.0.copyload1906 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.add.ptr158.2.sroa_idx, align 8, !dbg !82
  %54 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %18, !dbg !83
  %gep.idx.2 = shl nuw nsw i32 %shr190.pre-phi, 3, !dbg !83
  %gep.2 = getelementptr inbounds i8, ptr addrspace(3) %54, i32 %gep.idx.2, !dbg !83
  store i64 %qk_fetch.sroa.0.0.copyload1897, ptr addrspace(3) %gep.2, align 8, !dbg !84
  %xor191.1.2 = shl nuw nsw i32 %shr190.pre-phi, 3, !dbg !83
  %gep.idx.1.2 = xor i32 %xor191.1.2, 8, !dbg !83
  %gep.1.2 = getelementptr inbounds i8, ptr addrspace(3) %54, i32 %gep.idx.1.2, !dbg !83
  store i64 %qk_fetch.sroa.22.0.copyload1906, ptr addrspace(3) %gep.1.2, align 8, !dbg !84
  %55 = or disjoint i64 %53, 512, !dbg !85
  %add.ptr158.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %55, !dbg !81
  %qk_fetch.sroa.0.0.copyload1898 = load i64, ptr addrspace(4) %add.ptr158.1.2, align 16, !dbg !82
  %qk_fetch.sroa.22.0.add.ptr158.1.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr158.1.2, i64 8, !dbg !82
  %qk_fetch.sroa.22.0.copyload1907 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.add.ptr158.1.2.sroa_idx, align 8, !dbg !82
  %56 = getelementptr inbounds i8, ptr addrspace(3) %54, i32 1024, !dbg !83
  %gep.11125.2 = getelementptr inbounds i8, ptr addrspace(3) %56, i32 %gep.idx.1.2, !dbg !83
  store i64 %qk_fetch.sroa.0.0.copyload1898, ptr addrspace(3) %gep.11125.2, align 8, !dbg !84
  %gep.1.1.2 = getelementptr inbounds i8, ptr addrspace(3) %56, i32 %gep.idx.2, !dbg !83
  store i64 %qk_fetch.sroa.22.0.copyload1907, ptr addrspace(3) %gep.1.1.2, align 8, !dbg !84
  fence syncscope("warp") release, !dbg !86
  tail call void @llvm.mxc.barrier.warp(), !dbg !89
  fence syncscope("warp") acquire, !dbg !90
  %add234.21163 = or disjoint i32 %mul64, %add224, !dbg !91
  %add246.21164 = or disjoint i32 %add234.21163, %mul245, !dbg !92
  %gep1088.21165 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add246.21164, !dbg !93
  %k_local.sroa.0.0.copyload.21166 = load <4 x half>, ptr addrspace(3) %gep1088.21165, align 8, !dbg !94
  %57 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.21166, <4 x half> %12, <4 x float> zeroinitializer), !dbg !95
  %add234.1.2 = or disjoint i32 %mul64.1, %add224, !dbg !91
  %add246.1.2 = or disjoint i32 %add234.1.2, %mul245, !dbg !92
  %gep1088.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add246.1.2, !dbg !93
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %gep1088.1.2, align 8, !dbg !94
  %58 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %13, <4 x float> %57), !dbg !95
  %add234.2.2 = or disjoint i32 %mul64.2, %add224, !dbg !91
  %add246.2.2 = or disjoint i32 %add234.2.2, %mul245, !dbg !92
  %gep1088.2.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add246.2.2, !dbg !93
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %gep1088.2.2, align 8, !dbg !94
  %59 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %14, <4 x float> %58), !dbg !95
  %add234.3.2 = or disjoint i32 %mul64.3, %add224, !dbg !91
  %add246.3.2 = or disjoint i32 %add234.3.2, %mul245, !dbg !92
  %gep1088.3.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add246.3.2, !dbg !93
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %gep1088.3.2, align 8, !dbg !94
  %60 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %15, <4 x float> %59), !dbg !95
  %mul270.2 = shl nuw nsw i32 %51, 4
  %add275.2 = or disjoint i32 %mul270.2, %mul274
  %cmp278.not.21167 = icmp ugt i32 %add275.2, %1, !dbg !96
  %61 = extractelement <4 x float> %60, i64 1, !dbg !97
  %62 = extractelement <4 x float> %60, i64 2, !dbg !97
  %63 = extractelement <4 x float> %60, i64 3, !dbg !97
  %64 = extractelement <4 x float> %60, i64 0
  %spec.select1968 = select i1 %cmp278.not.21167, float 0xFFF0000000000000, float %64, !dbg !97
  %scores.sroa.44.32.vec.insert2032 = insertelement <4 x float> poison, float %spec.select1968, i64 0, !dbg !98
  %cmp278.not.1.2.not = icmp ult i32 %add275.2, %1, !dbg !96
  %condval.0.1.2 = select i1 %cmp278.not.1.2.not, float %61, float 0xFFF0000000000000, !dbg !97
  %scores.sroa.44.36.vec.insert2038 = insertelement <4 x float> %scores.sroa.44.32.vec.insert2032, float %condval.0.1.2, i64 1, !dbg !98
  %add276.2.2 = or disjoint i32 %add275.2, 2, !dbg !99
  %cmp278.not.2.2 = icmp ugt i32 %add276.2.2, %1, !dbg !96
  %condval.0.2.2 = select i1 %cmp278.not.2.2, float 0xFFF0000000000000, float %62, !dbg !97
  %scores.sroa.44.40.vec.insert2045 = insertelement <4 x float> %scores.sroa.44.36.vec.insert2038, float %condval.0.2.2, i64 2, !dbg !98
  %add276.3.2 = or disjoint i32 %add275.2, 3, !dbg !99
  %cmp278.not.3.2 = icmp ugt i32 %add276.3.2, %1, !dbg !96
  %condval.0.3.2 = select i1 %cmp278.not.3.2, float 0xFFF0000000000000, float %63, !dbg !97
  %scores.sroa.44.44.vec.insert2052 = insertelement <4 x float> %scores.sroa.44.40.vec.insert2045, float %condval.0.3.2, i64 3, !dbg !98
  br label %if.end294.2, !dbg !100

if.end294.2:                                      ; preds = %if.then142.2, %if.end294.1
  %scores.sroa.44.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end294.1 ], [ %scores.sroa.44.44.vec.insert2052, %if.then142.2 ], !dbg !101
  %65 = or disjoint i64 %20, 3, !dbg !102
  %arrayidx135.3 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %65, !dbg !71
  %66 = load i32, ptr addrspace(1) %arrayidx135.3, align 4, !dbg !71, !tbaa !30
  %or.cond.3 = icmp ugt i32 %66, 63, !dbg !72
  %cmp141.not.3 = icmp sgt i32 %66, %shr140
  %or.cond1073.3 = or i1 %or.cond.3, %cmp141.not.3, !dbg !72
  br i1 %or.cond1073.3, label %if.end294.3, label %if.then142.3, !dbg !72

if.then142.3:                                     ; preds = %if.end294.2
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !78
  fence syncscope("warp") acquire, !dbg !79
  %mul149.3 = shl nuw nsw i32 %66, 10
  %add150.3 = or disjoint i32 %mul149.3, %mul148
  %67 = or disjoint i32 %add150.3, %mul155
  %68 = zext nneg i32 %67 to i64, !dbg !80
  %add.ptr158.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %68, !dbg !81
  %qk_fetch.sroa.0.0.copyload1899 = load i64, ptr addrspace(4) %add.ptr158.3, align 16, !dbg !82
  %qk_fetch.sroa.22.0.add.ptr158.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr158.3, i64 8, !dbg !82
  %qk_fetch.sroa.22.0.copyload1908 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.add.ptr158.3.sroa_idx, align 8, !dbg !82
  %69 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %18, !dbg !83
  %gep.idx.3 = shl nuw nsw i32 %shr190.pre-phi, 3, !dbg !83
  %gep.3 = getelementptr inbounds i8, ptr addrspace(3) %69, i32 %gep.idx.3, !dbg !83
  store i64 %qk_fetch.sroa.0.0.copyload1899, ptr addrspace(3) %gep.3, align 8, !dbg !84
  %xor191.1.3 = shl nuw nsw i32 %shr190.pre-phi, 3, !dbg !83
  %gep.idx.1.3 = xor i32 %xor191.1.3, 8, !dbg !83
  %gep.1.3 = getelementptr inbounds i8, ptr addrspace(3) %69, i32 %gep.idx.1.3, !dbg !83
  store i64 %qk_fetch.sroa.22.0.copyload1908, ptr addrspace(3) %gep.1.3, align 8, !dbg !84
  %70 = or disjoint i64 %68, 512, !dbg !85
  %add.ptr158.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %70, !dbg !81
  %qk_fetch.sroa.0.0.copyload1900 = load i64, ptr addrspace(4) %add.ptr158.1.3, align 16, !dbg !82
  %qk_fetch.sroa.22.0.add.ptr158.1.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr158.1.3, i64 8, !dbg !82
  %qk_fetch.sroa.22.0.copyload1909 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.add.ptr158.1.3.sroa_idx, align 8, !dbg !82
  %71 = getelementptr inbounds i8, ptr addrspace(3) %69, i32 1024, !dbg !83
  %gep.11125.3 = getelementptr inbounds i8, ptr addrspace(3) %71, i32 %gep.idx.1.3, !dbg !83
  store i64 %qk_fetch.sroa.0.0.copyload1900, ptr addrspace(3) %gep.11125.3, align 8, !dbg !84
  %gep.1.1.3 = getelementptr inbounds i8, ptr addrspace(3) %71, i32 %gep.idx.3, !dbg !83
  store i64 %qk_fetch.sroa.22.0.copyload1909, ptr addrspace(3) %gep.1.1.3, align 8, !dbg !84
  fence syncscope("warp") release, !dbg !86
  tail call void @llvm.mxc.barrier.warp(), !dbg !89
  fence syncscope("warp") acquire, !dbg !90
  %add234.31176 = or disjoint i32 %mul64, %add224, !dbg !91
  %add246.31177 = or disjoint i32 %add234.31176, %mul245, !dbg !92
  %gep1088.31178 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add246.31177, !dbg !93
  %k_local.sroa.0.0.copyload.31179 = load <4 x half>, ptr addrspace(3) %gep1088.31178, align 8, !dbg !94
  %72 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.31179, <4 x half> %12, <4 x float> zeroinitializer), !dbg !95
  %add234.1.3 = or disjoint i32 %mul64.1, %add224, !dbg !91
  %add246.1.3 = or disjoint i32 %add234.1.3, %mul245, !dbg !92
  %gep1088.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add246.1.3, !dbg !93
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %gep1088.1.3, align 8, !dbg !94
  %73 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %13, <4 x float> %72), !dbg !95
  %add234.2.3 = or disjoint i32 %mul64.2, %add224, !dbg !91
  %add246.2.3 = or disjoint i32 %add234.2.3, %mul245, !dbg !92
  %gep1088.2.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add246.2.3, !dbg !93
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %gep1088.2.3, align 8, !dbg !94
  %74 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %14, <4 x float> %73), !dbg !95
  %add234.3.3 = or disjoint i32 %mul64.3, %add224, !dbg !91
  %add246.3.3 = or disjoint i32 %add234.3.3, %mul245, !dbg !92
  %gep1088.3.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add246.3.3, !dbg !93
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %gep1088.3.3, align 8, !dbg !94
  %75 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %15, <4 x float> %74), !dbg !95
  %mul270.3 = shl nuw nsw i32 %66, 4
  %add275.3 = or disjoint i32 %mul270.3, %mul274
  %cmp278.not.31180 = icmp ugt i32 %add275.3, %1, !dbg !96
  %76 = extractelement <4 x float> %75, i64 1, !dbg !97
  %77 = extractelement <4 x float> %75, i64 2, !dbg !97
  %78 = extractelement <4 x float> %75, i64 3, !dbg !97
  %79 = extractelement <4 x float> %75, i64 0
  %spec.select1969 = select i1 %cmp278.not.31180, float 0xFFF0000000000000, float %79, !dbg !97
  %scores.sroa.65.48.vec.insert2061 = insertelement <4 x float> poison, float %spec.select1969, i64 0, !dbg !98
  %cmp278.not.1.3.not = icmp ult i32 %add275.3, %1, !dbg !96
  %condval.0.1.3 = select i1 %cmp278.not.1.3.not, float %76, float 0xFFF0000000000000, !dbg !97
  %scores.sroa.65.52.vec.insert2067 = insertelement <4 x float> %scores.sroa.65.48.vec.insert2061, float %condval.0.1.3, i64 1, !dbg !98
  %add276.2.3 = or disjoint i32 %add275.3, 2, !dbg !99
  %cmp278.not.2.3 = icmp ugt i32 %add276.2.3, %1, !dbg !96
  %condval.0.2.3 = select i1 %cmp278.not.2.3, float 0xFFF0000000000000, float %77, !dbg !97
  %scores.sroa.65.56.vec.insert2074 = insertelement <4 x float> %scores.sroa.65.52.vec.insert2067, float %condval.0.2.3, i64 2, !dbg !98
  %add276.3.3 = or disjoint i32 %add275.3, 3, !dbg !99
  %cmp278.not.3.3 = icmp ugt i32 %add276.3.3, %1, !dbg !96
  %condval.0.3.3 = select i1 %cmp278.not.3.3, float 0xFFF0000000000000, float %78, !dbg !97
  %scores.sroa.65.60.vec.insert2081 = insertelement <4 x float> %scores.sroa.65.56.vec.insert2074, float %condval.0.3.3, i64 3, !dbg !98
  br label %if.end294.3, !dbg !100

if.end294.3:                                      ; preds = %if.end294.2, %if.then142.3
  %scores.sroa.65.0 = phi <4 x float> [ %scores.sroa.65.60.vec.insert2081, %if.then142.3 ], [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end294.2 ], !dbg !101
  %80 = phi float [ %condval.0.3.3, %if.then142.3 ], [ 0xFFF0000000000000, %if.end294.2 ], !dbg !103
  %81 = phi float [ %condval.0.2.3, %if.then142.3 ], [ 0xFFF0000000000000, %if.end294.2 ], !dbg !103
  %82 = phi float [ %condval.0.1.3, %if.then142.3 ], [ 0xFFF0000000000000, %if.end294.2 ], !dbg !103
  %83 = phi float [ %spec.select1969, %if.then142.3 ], [ 0xFFF0000000000000, %if.end294.2 ], !dbg !103
  %scores.sroa.0.0.vec.extract = extractelement <4 x float> %scores.sroa.0.0, i64 0, !dbg !103
  %84 = tail call contract noundef float @llvm.maxnum.f32(float %scores.sroa.0.0.vec.extract, float 0xFFF0000000000000), !dbg !104
  %scores.sroa.0.4.vec.extract = extractelement <4 x float> %scores.sroa.0.0, i64 1, !dbg !103
  %85 = tail call contract noundef float @llvm.maxnum.f32(float %84, float %scores.sroa.0.4.vec.extract), !dbg !104
  %scores.sroa.0.8.vec.extract = extractelement <4 x float> %scores.sroa.0.0, i64 2, !dbg !103
  %86 = tail call contract noundef float @llvm.maxnum.f32(float %85, float %scores.sroa.0.8.vec.extract), !dbg !104
  %scores.sroa.0.12.vec.extract = extractelement <4 x float> %scores.sroa.0.0, i64 3, !dbg !103
  %87 = tail call contract noundef float @llvm.maxnum.f32(float %86, float %scores.sroa.0.12.vec.extract), !dbg !104
  %scores.sroa.23.16.vec.extract = extractelement <4 x float> %scores.sroa.23.0, i64 0, !dbg !103
  %88 = tail call contract noundef float @llvm.maxnum.f32(float %87, float %scores.sroa.23.16.vec.extract), !dbg !104
  %scores.sroa.23.20.vec.extract2013 = extractelement <4 x float> %scores.sroa.23.0, i64 1, !dbg !103
  %89 = tail call contract noundef float @llvm.maxnum.f32(float %88, float %scores.sroa.23.20.vec.extract2013), !dbg !104
  %scores.sroa.23.24.vec.extract2020 = extractelement <4 x float> %scores.sroa.23.0, i64 2, !dbg !103
  %90 = tail call contract noundef float @llvm.maxnum.f32(float %89, float %scores.sroa.23.24.vec.extract2020), !dbg !104
  %scores.sroa.23.28.vec.extract2027 = extractelement <4 x float> %scores.sroa.23.0, i64 3, !dbg !103
  %91 = tail call contract noundef float @llvm.maxnum.f32(float %90, float %scores.sroa.23.28.vec.extract2027), !dbg !104
  %scores.sroa.44.32.vec.extract = extractelement <4 x float> %scores.sroa.44.0, i64 0, !dbg !103
  %92 = tail call contract noundef float @llvm.maxnum.f32(float %91, float %scores.sroa.44.32.vec.extract), !dbg !104
  %scores.sroa.44.36.vec.extract2042 = extractelement <4 x float> %scores.sroa.44.0, i64 1, !dbg !103
  %93 = tail call contract noundef float @llvm.maxnum.f32(float %92, float %scores.sroa.44.36.vec.extract2042), !dbg !104
  %scores.sroa.44.40.vec.extract2049 = extractelement <4 x float> %scores.sroa.44.0, i64 2, !dbg !103
  %94 = tail call contract noundef float @llvm.maxnum.f32(float %93, float %scores.sroa.44.40.vec.extract2049), !dbg !104
  %scores.sroa.44.44.vec.extract2056 = extractelement <4 x float> %scores.sroa.44.0, i64 3, !dbg !103
  %95 = tail call contract noundef float @llvm.maxnum.f32(float %94, float %scores.sroa.44.44.vec.extract2056), !dbg !104
  %96 = tail call contract noundef float @llvm.maxnum.f32(float %95, float %83), !dbg !104
  %97 = tail call contract noundef float @llvm.maxnum.f32(float %96, float %82), !dbg !104
  %98 = tail call contract noundef float @llvm.maxnum.f32(float %97, float %81), !dbg !104
  %99 = tail call contract noundef float @llvm.maxnum.f32(float %98, float %80), !dbg !104
  %100 = bitcast float %99 to i32, !dbg !108
  %101 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !111
  %102 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %101) #10, !dbg !116
  %xor.i.i = xor i32 %102, 32, !dbg !117
  %103 = and i32 %102, -64, !dbg !118
  %and.i.i = add nsw i32 %103, 64, !dbg !118
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !119
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %102, !dbg !120
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !121
  %104 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %100), !dbg !122
  %105 = bitcast i32 %104 to float, !dbg !123
  %106 = tail call contract noundef float @llvm.maxnum.f32(float %99, float %105), !dbg !124
  %107 = bitcast float %106 to i32, !dbg !126
  %108 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !128
  %109 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %108) #10, !dbg !131
  %xor.i.i1022 = xor i32 %109, 16, !dbg !132
  %110 = and i32 %109, -64, !dbg !133
  %and.i.i1023 = add nsw i32 %110, 64, !dbg !133
  %cmp.not.i.i1024 = icmp slt i32 %xor.i.i1022, %and.i.i1023, !dbg !134
  %cond.i.i1025 = select i1 %cmp.not.i.i1024, i32 %xor.i.i1022, i32 %109, !dbg !135
  %shl.i.i1026 = shl i32 %cond.i.i1025, 2, !dbg !136
  %111 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1026, i32 %107), !dbg !137
  %and324 = and i32 %0, 48, !dbg !138
  %cmp325 = icmp eq i32 %and324, 0, !dbg !139
  br i1 %cmp325, label %if.then326, label %if.end294.3.if.end337_crit_edge, !dbg !140

if.end294.3.if.end337_crit_edge:                  ; preds = %if.end294.3
  %.pre1931 = and i32 %0, 15, !dbg !141
  br label %if.end337, !dbg !140

if.then326:                                       ; preds = %if.end294.3
  %mul330 = and i32 %19, 240
  %and332 = and i32 %0, 15
  %add333 = or disjoint i32 %mul330, %and332
  %add334 = or disjoint i32 %add333, 1536
  %arrayidx336 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add334
  %112 = bitcast i32 %111 to float, !dbg !142
  %113 = tail call contract noundef float @llvm.maxnum.f32(float %106, float %112), !dbg !143
  store float %113, ptr addrspace(3) %arrayidx336, align 4, !dbg !145, !tbaa !146
  br label %if.end337, !dbg !148

if.end337:                                        ; preds = %if.end294.3.if.end337_crit_edge, %if.then326
  %and339.pre-phi = phi i32 [ %.pre1931, %if.end294.3.if.end337_crit_edge ], [ %and332, %if.then326 ], !dbg !141
  fence syncscope("block") release, !dbg !149
  tail call void @llvm.mxc.barrier(), !dbg !152
  fence syncscope("block") acquire, !dbg !153
  %add340 = or disjoint i32 %and339.pre-phi, 1536, !dbg !154
  %arrayidx342 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add340, !dbg !155
  %114 = load float, ptr addrspace(3) %arrayidx342, align 4, !dbg !155, !tbaa !146
  %add345 = or disjoint i32 %and339.pre-phi, 1552, !dbg !156
  %arrayidx347 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add345, !dbg !157
  %115 = load float, ptr addrspace(3) %arrayidx347, align 4, !dbg !157, !tbaa !146
  %116 = tail call contract noundef float @llvm.maxnum.f32(float %114, float %115), !dbg !158
  %cmp353 = fcmp contract ueq float %116, 0xFFF0000000000000, !dbg !160
  br i1 %cmp353, label %if.end442, label %for.body358.preheader, !dbg !161

for.body358.preheader:                            ; preds = %if.end337
  %scores.sroa.0.0.vec.extract1975 = extractelement <4 x float> %scores.sroa.0.0, i64 0, !dbg !162
  %scores.sroa.0.4.vec.extract1984 = extractelement <4 x float> %scores.sroa.0.0, i64 1, !dbg !162
  %scores.sroa.0.8.vec.extract1991 = extractelement <4 x float> %scores.sroa.0.0, i64 2, !dbg !162
  %scores.sroa.0.12.vec.extract1998 = extractelement <4 x float> %scores.sroa.0.0, i64 3, !dbg !162
  %sub = fsub contract float %scores.sroa.0.0.vec.extract1975, %116, !dbg !163
  %sub371 = fsub contract float %scores.sroa.0.4.vec.extract1984, %116, !dbg !164
  %sub374 = fsub contract float %scores.sroa.0.8.vec.extract1991, %116, !dbg !165
  %sub377 = fsub contract float %scores.sroa.0.12.vec.extract1998, %116, !dbg !166
  %mul382 = fmul contract float %sub, 0x3FC7154760000000, !dbg !167
  %mul386 = fmul contract float %sub371, 0x3FC7154760000000, !dbg !168
  %mul390 = fmul contract float %sub374, 0x3FC7154760000000, !dbg !169
  %mul394 = fmul contract float %sub377, 0x3FC7154760000000, !dbg !170
  %add399 = fadd contract float %mul382, 8.000000e+00, !dbg !171
  %add403 = fadd contract float %mul386, 8.000000e+00, !dbg !172
  %add407 = fadd contract float %mul390, 8.000000e+00, !dbg !173
  %add411 = fadd contract float %mul394, 8.000000e+00, !dbg !174
  %cmp.i.i = fcmp contract olt float %add399, -1.260000e+02, !dbg !175
  %cond.i.i1031 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !175
  %add.i.i = fadd contract float %add399, %cond.i.i1031, !dbg !175
  %117 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !175
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !175
  %mul.i.i = fmul contract float %cond2.i.i, %117, !dbg !175
  %cmp.i.i1032 = fcmp contract olt float %add403, -1.260000e+02, !dbg !178
  %cond.i.i1033 = select contract i1 %cmp.i.i1032, float 6.400000e+01, float 0.000000e+00, !dbg !178
  %add.i.i1034 = fadd contract float %add403, %cond.i.i1033, !dbg !178
  %118 = tail call contract float @llvm.exp2.f32(float %add.i.i1034), !dbg !178
  %cond2.i.i1035 = select contract i1 %cmp.i.i1032, float 0x3BF0000000000000, float 1.000000e+00, !dbg !178
  %mul.i.i1036 = fmul contract float %cond2.i.i1035, %118, !dbg !178
  %cmp.i.i1037 = fcmp contract olt float %add407, -1.260000e+02, !dbg !180
  %cond.i.i1038 = select contract i1 %cmp.i.i1037, float 6.400000e+01, float 0.000000e+00, !dbg !180
  %add.i.i1039 = fadd contract float %add407, %cond.i.i1038, !dbg !180
  %119 = tail call contract float @llvm.exp2.f32(float %add.i.i1039), !dbg !180
  %cond2.i.i1040 = select contract i1 %cmp.i.i1037, float 0x3BF0000000000000, float 1.000000e+00, !dbg !180
  %mul.i.i1041 = fmul contract float %cond2.i.i1040, %119, !dbg !180
  %cmp.i.i1042 = fcmp contract olt float %add411, -1.260000e+02, !dbg !182
  %cond.i.i1043 = select contract i1 %cmp.i.i1042, float 6.400000e+01, float 0.000000e+00, !dbg !182
  %add.i.i1044 = fadd contract float %add411, %cond.i.i1043, !dbg !182
  %120 = tail call contract float @llvm.exp2.f32(float %add.i.i1044), !dbg !182
  %cond2.i.i1045 = select contract i1 %cmp.i.i1042, float 0x3BF0000000000000, float 1.000000e+00, !dbg !182
  %mul.i.i1046 = fmul contract float %cond2.i.i1045, %120, !dbg !182
  %121 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !184, !noalias !192
  %122 = fptrunc float %mul.i.i to half, !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %121), !dbg !184, !noalias !192
  %123 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !197
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !197, !noalias !192
  %124 = fptrunc float %mul.i.i1036 to half, !dbg !197
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %123), !dbg !197, !noalias !192
  %125 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !199
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !199, !noalias !203
  %126 = fptrunc float %mul.i.i1041 to half, !dbg !199
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %125), !dbg !199, !noalias !203
  %127 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !208
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !208, !noalias !203
  %128 = fptrunc float %mul.i.i1046 to half, !dbg !208
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %127), !dbg !208, !noalias !203
  %129 = insertelement <4 x half> poison, half %122, i64 0, !dbg !210
  %130 = insertelement <4 x half> %129, half %124, i64 1, !dbg !210
  %131 = insertelement <4 x half> %130, half %126, i64 2, !dbg !210
  %132 = insertelement <4 x half> %131, half %128, i64 3, !dbg !210
  %scores.sroa.23.16.vec.extract2006 = extractelement <4 x float> %scores.sroa.23.0, i64 0, !dbg !162
  %scores.sroa.23.20.vec.extract = extractelement <4 x float> %scores.sroa.23.0, i64 1, !dbg !162
  %scores.sroa.23.24.vec.extract = extractelement <4 x float> %scores.sroa.23.0, i64 2, !dbg !162
  %scores.sroa.23.28.vec.extract = extractelement <4 x float> %scores.sroa.23.0, i64 3, !dbg !162
  %sub.1 = fsub contract float %scores.sroa.23.16.vec.extract2006, %116, !dbg !163
  %sub371.1 = fsub contract float %scores.sroa.23.20.vec.extract, %116, !dbg !164
  %sub374.1 = fsub contract float %scores.sroa.23.24.vec.extract, %116, !dbg !165
  %sub377.1 = fsub contract float %scores.sroa.23.28.vec.extract, %116, !dbg !166
  %mul382.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !167
  %mul386.1 = fmul contract float %sub371.1, 0x3FC7154760000000, !dbg !168
  %mul390.1 = fmul contract float %sub374.1, 0x3FC7154760000000, !dbg !169
  %mul394.1 = fmul contract float %sub377.1, 0x3FC7154760000000, !dbg !170
  %add399.1 = fadd contract float %mul382.1, 8.000000e+00, !dbg !171
  %add403.1 = fadd contract float %mul386.1, 8.000000e+00, !dbg !172
  %add407.1 = fadd contract float %mul390.1, 8.000000e+00, !dbg !173
  %add411.1 = fadd contract float %mul394.1, 8.000000e+00, !dbg !174
  %cmp.i.i.1 = fcmp contract olt float %add399.1, -1.260000e+02, !dbg !175
  %cond.i.i1031.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !175
  %add.i.i.1 = fadd contract float %add399.1, %cond.i.i1031.1, !dbg !175
  %133 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !175
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !175
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %133, !dbg !175
  %cmp.i.i1032.1 = fcmp contract olt float %add403.1, -1.260000e+02, !dbg !178
  %cond.i.i1033.1 = select contract i1 %cmp.i.i1032.1, float 6.400000e+01, float 0.000000e+00, !dbg !178
  %add.i.i1034.1 = fadd contract float %add403.1, %cond.i.i1033.1, !dbg !178
  %134 = tail call contract float @llvm.exp2.f32(float %add.i.i1034.1), !dbg !178
  %cond2.i.i1035.1 = select contract i1 %cmp.i.i1032.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !178
  %mul.i.i1036.1 = fmul contract float %cond2.i.i1035.1, %134, !dbg !178
  %cmp.i.i1037.1 = fcmp contract olt float %add407.1, -1.260000e+02, !dbg !180
  %cond.i.i1038.1 = select contract i1 %cmp.i.i1037.1, float 6.400000e+01, float 0.000000e+00, !dbg !180
  %add.i.i1039.1 = fadd contract float %add407.1, %cond.i.i1038.1, !dbg !180
  %135 = tail call contract float @llvm.exp2.f32(float %add.i.i1039.1), !dbg !180
  %cond2.i.i1040.1 = select contract i1 %cmp.i.i1037.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !180
  %mul.i.i1041.1 = fmul contract float %cond2.i.i1040.1, %135, !dbg !180
  %cmp.i.i1042.1 = fcmp contract olt float %add411.1, -1.260000e+02, !dbg !182
  %cond.i.i1043.1 = select contract i1 %cmp.i.i1042.1, float 6.400000e+01, float 0.000000e+00, !dbg !182
  %add.i.i1044.1 = fadd contract float %add411.1, %cond.i.i1043.1, !dbg !182
  %136 = tail call contract float @llvm.exp2.f32(float %add.i.i1044.1), !dbg !182
  %cond2.i.i1045.1 = select contract i1 %cmp.i.i1042.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !182
  %mul.i.i1046.1 = fmul contract float %cond2.i.i1045.1, %136, !dbg !182
  %137 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !184, !noalias !192
  %138 = fptrunc float %mul.i.i.1 to half, !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %137), !dbg !184, !noalias !192
  %139 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !197
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !197, !noalias !192
  %140 = fptrunc float %mul.i.i1036.1 to half, !dbg !197
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %139), !dbg !197, !noalias !192
  %141 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !199
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !199, !noalias !203
  %142 = fptrunc float %mul.i.i1041.1 to half, !dbg !199
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %141), !dbg !199, !noalias !203
  %143 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !208
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !208, !noalias !203
  %144 = fptrunc float %mul.i.i1046.1 to half, !dbg !208
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %143), !dbg !208, !noalias !203
  %145 = insertelement <4 x half> poison, half %138, i64 0, !dbg !210
  %146 = insertelement <4 x half> %145, half %140, i64 1, !dbg !210
  %147 = insertelement <4 x half> %146, half %142, i64 2, !dbg !210
  %148 = insertelement <4 x half> %147, half %144, i64 3, !dbg !210
  %scores.sroa.44.32.vec.extract2035 = extractelement <4 x float> %scores.sroa.44.0, i64 0, !dbg !162
  %scores.sroa.44.36.vec.extract = extractelement <4 x float> %scores.sroa.44.0, i64 1, !dbg !162
  %scores.sroa.44.40.vec.extract = extractelement <4 x float> %scores.sroa.44.0, i64 2, !dbg !162
  %scores.sroa.44.44.vec.extract = extractelement <4 x float> %scores.sroa.44.0, i64 3, !dbg !162
  %sub.2 = fsub contract float %scores.sroa.44.32.vec.extract2035, %116, !dbg !163
  %sub371.2 = fsub contract float %scores.sroa.44.36.vec.extract, %116, !dbg !164
  %sub374.2 = fsub contract float %scores.sroa.44.40.vec.extract, %116, !dbg !165
  %sub377.2 = fsub contract float %scores.sroa.44.44.vec.extract, %116, !dbg !166
  %mul382.2 = fmul contract float %sub.2, 0x3FC7154760000000, !dbg !167
  %mul386.2 = fmul contract float %sub371.2, 0x3FC7154760000000, !dbg !168
  %mul390.2 = fmul contract float %sub374.2, 0x3FC7154760000000, !dbg !169
  %mul394.2 = fmul contract float %sub377.2, 0x3FC7154760000000, !dbg !170
  %add399.2 = fadd contract float %mul382.2, 8.000000e+00, !dbg !171
  %add403.2 = fadd contract float %mul386.2, 8.000000e+00, !dbg !172
  %add407.2 = fadd contract float %mul390.2, 8.000000e+00, !dbg !173
  %add411.2 = fadd contract float %mul394.2, 8.000000e+00, !dbg !174
  %cmp.i.i.2 = fcmp contract olt float %add399.2, -1.260000e+02, !dbg !175
  %cond.i.i1031.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !175
  %add.i.i.2 = fadd contract float %add399.2, %cond.i.i1031.2, !dbg !175
  %149 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !175
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !175
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %149, !dbg !175
  %cmp.i.i1032.2 = fcmp contract olt float %add403.2, -1.260000e+02, !dbg !178
  %cond.i.i1033.2 = select contract i1 %cmp.i.i1032.2, float 6.400000e+01, float 0.000000e+00, !dbg !178
  %add.i.i1034.2 = fadd contract float %add403.2, %cond.i.i1033.2, !dbg !178
  %150 = tail call contract float @llvm.exp2.f32(float %add.i.i1034.2), !dbg !178
  %cond2.i.i1035.2 = select contract i1 %cmp.i.i1032.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !178
  %mul.i.i1036.2 = fmul contract float %cond2.i.i1035.2, %150, !dbg !178
  %cmp.i.i1037.2 = fcmp contract olt float %add407.2, -1.260000e+02, !dbg !180
  %cond.i.i1038.2 = select contract i1 %cmp.i.i1037.2, float 6.400000e+01, float 0.000000e+00, !dbg !180
  %add.i.i1039.2 = fadd contract float %add407.2, %cond.i.i1038.2, !dbg !180
  %151 = tail call contract float @llvm.exp2.f32(float %add.i.i1039.2), !dbg !180
  %cond2.i.i1040.2 = select contract i1 %cmp.i.i1037.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !180
  %mul.i.i1041.2 = fmul contract float %cond2.i.i1040.2, %151, !dbg !180
  %cmp.i.i1042.2 = fcmp contract olt float %add411.2, -1.260000e+02, !dbg !182
  %cond.i.i1043.2 = select contract i1 %cmp.i.i1042.2, float 6.400000e+01, float 0.000000e+00, !dbg !182
  %add.i.i1044.2 = fadd contract float %add411.2, %cond.i.i1043.2, !dbg !182
  %152 = tail call contract float @llvm.exp2.f32(float %add.i.i1044.2), !dbg !182
  %cond2.i.i1045.2 = select contract i1 %cmp.i.i1042.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !182
  %mul.i.i1046.2 = fmul contract float %cond2.i.i1045.2, %152, !dbg !182
  %153 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !184, !noalias !192
  %154 = fptrunc float %mul.i.i.2 to half, !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %153), !dbg !184, !noalias !192
  %155 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !197
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !197, !noalias !192
  %156 = fptrunc float %mul.i.i1036.2 to half, !dbg !197
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %155), !dbg !197, !noalias !192
  %157 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !199
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !199, !noalias !203
  %158 = fptrunc float %mul.i.i1041.2 to half, !dbg !199
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %157), !dbg !199, !noalias !203
  %159 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !208
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !208, !noalias !203
  %160 = fptrunc float %mul.i.i1046.2 to half, !dbg !208
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %159), !dbg !208, !noalias !203
  %161 = insertelement <4 x half> poison, half %154, i64 0, !dbg !210
  %162 = insertelement <4 x half> %161, half %156, i64 1, !dbg !210
  %163 = insertelement <4 x half> %162, half %158, i64 2, !dbg !210
  %164 = insertelement <4 x half> %163, half %160, i64 3, !dbg !210
  %scores.sroa.65.48.vec.extract2064 = extractelement <4 x float> %scores.sroa.65.0, i64 0, !dbg !162
  %scores.sroa.65.52.vec.extract = extractelement <4 x float> %scores.sroa.65.0, i64 1, !dbg !162
  %scores.sroa.65.56.vec.extract = extractelement <4 x float> %scores.sroa.65.0, i64 2, !dbg !162
  %scores.sroa.65.60.vec.extract = extractelement <4 x float> %scores.sroa.65.0, i64 3, !dbg !162
  %sub.3 = fsub contract float %scores.sroa.65.48.vec.extract2064, %116, !dbg !163
  %sub371.3 = fsub contract float %scores.sroa.65.52.vec.extract, %116, !dbg !164
  %sub374.3 = fsub contract float %scores.sroa.65.56.vec.extract, %116, !dbg !165
  %sub377.3 = fsub contract float %scores.sroa.65.60.vec.extract, %116, !dbg !166
  %mul382.3 = fmul contract float %sub.3, 0x3FC7154760000000, !dbg !167
  %mul386.3 = fmul contract float %sub371.3, 0x3FC7154760000000, !dbg !168
  %mul390.3 = fmul contract float %sub374.3, 0x3FC7154760000000, !dbg !169
  %mul394.3 = fmul contract float %sub377.3, 0x3FC7154760000000, !dbg !170
  %add399.3 = fadd contract float %mul382.3, 8.000000e+00, !dbg !171
  %add403.3 = fadd contract float %mul386.3, 8.000000e+00, !dbg !172
  %add407.3 = fadd contract float %mul390.3, 8.000000e+00, !dbg !173
  %add411.3 = fadd contract float %mul394.3, 8.000000e+00, !dbg !174
  %cmp.i.i.3 = fcmp contract olt float %add399.3, -1.260000e+02, !dbg !175
  %cond.i.i1031.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !175
  %add.i.i.3 = fadd contract float %add399.3, %cond.i.i1031.3, !dbg !175
  %165 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !175
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !175
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %165, !dbg !175
  %cmp.i.i1032.3 = fcmp contract olt float %add403.3, -1.260000e+02, !dbg !178
  %cond.i.i1033.3 = select contract i1 %cmp.i.i1032.3, float 6.400000e+01, float 0.000000e+00, !dbg !178
  %add.i.i1034.3 = fadd contract float %add403.3, %cond.i.i1033.3, !dbg !178
  %166 = tail call contract float @llvm.exp2.f32(float %add.i.i1034.3), !dbg !178
  %cond2.i.i1035.3 = select contract i1 %cmp.i.i1032.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !178
  %mul.i.i1036.3 = fmul contract float %cond2.i.i1035.3, %166, !dbg !178
  %cmp.i.i1037.3 = fcmp contract olt float %add407.3, -1.260000e+02, !dbg !180
  %cond.i.i1038.3 = select contract i1 %cmp.i.i1037.3, float 6.400000e+01, float 0.000000e+00, !dbg !180
  %add.i.i1039.3 = fadd contract float %add407.3, %cond.i.i1038.3, !dbg !180
  %167 = tail call contract float @llvm.exp2.f32(float %add.i.i1039.3), !dbg !180
  %cond2.i.i1040.3 = select contract i1 %cmp.i.i1037.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !180
  %mul.i.i1041.3 = fmul contract float %cond2.i.i1040.3, %167, !dbg !180
  %cmp.i.i1042.3 = fcmp contract olt float %add411.3, -1.260000e+02, !dbg !182
  %cond.i.i1043.3 = select contract i1 %cmp.i.i1042.3, float 6.400000e+01, float 0.000000e+00, !dbg !182
  %add.i.i1044.3 = fadd contract float %add411.3, %cond.i.i1043.3, !dbg !182
  %168 = tail call contract float @llvm.exp2.f32(float %add.i.i1044.3), !dbg !182
  %cond2.i.i1045.3 = select contract i1 %cmp.i.i1042.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !182
  %mul.i.i1046.3 = fmul contract float %cond2.i.i1045.3, %168, !dbg !182
  %169 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !184, !noalias !192
  %170 = fptrunc float %mul.i.i.3 to half, !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %169), !dbg !184, !noalias !192
  %171 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !197
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !197, !noalias !192
  %172 = fptrunc float %mul.i.i1036.3 to half, !dbg !197
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %171), !dbg !197, !noalias !192
  %173 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !199
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !199, !noalias !203
  %174 = fptrunc float %mul.i.i1041.3 to half, !dbg !199
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %173), !dbg !199, !noalias !203
  %175 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !208
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !208, !noalias !203
  %176 = fptrunc float %mul.i.i1046.3 to half, !dbg !208
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %175), !dbg !208, !noalias !203
  %177 = insertelement <4 x half> poison, half %170, i64 0, !dbg !210
  %178 = insertelement <4 x half> %177, half %172, i64 1, !dbg !210
  %179 = insertelement <4 x half> %178, half %174, i64 2, !dbg !210
  %180 = insertelement <4 x half> %179, half %176, i64 3, !dbg !210
  br label %if.end442, !dbg !211

if.end442:                                        ; preds = %for.body358.preheader, %if.end337
  %bc1966 = phi <4 x half> [ zeroinitializer, %if.end337 ], [ %180, %for.body358.preheader ], !dbg !101
  %bc1962 = phi <4 x half> [ zeroinitializer, %if.end337 ], [ %164, %for.body358.preheader ], !dbg !101
  %bc1958 = phi <4 x half> [ zeroinitializer, %if.end337 ], [ %148, %for.body358.preheader ], !dbg !101
  %bc1954 = phi <4 x half> [ zeroinitializer, %if.end337 ], [ %132, %for.body358.preheader ], !dbg !101
  %181 = extractelement <4 x half> %bc1954, i64 0, !dbg !212
  %conv.i.i = fpext half %181 to float, !dbg !213
  %add451 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !218
  %182 = extractelement <4 x half> %bc1954, i64 1, !dbg !212
  %conv.i.i.1 = fpext half %182 to float, !dbg !213
  %add451.1 = fadd contract float %add451, %conv.i.i.1, !dbg !218
  %183 = extractelement <4 x half> %bc1954, i64 2, !dbg !212
  %conv.i.i.2 = fpext half %183 to float, !dbg !213
  %add451.2 = fadd contract float %add451.1, %conv.i.i.2, !dbg !218
  %184 = extractelement <4 x half> %bc1954, i64 3, !dbg !212
  %conv.i.i.3 = fpext half %184 to float, !dbg !213
  %add451.3 = fadd contract float %add451.2, %conv.i.i.3, !dbg !218
  %185 = extractelement <4 x half> %bc1958, i64 0, !dbg !212
  %conv.i.i.4 = fpext half %185 to float, !dbg !213
  %add451.4 = fadd contract float %add451.3, %conv.i.i.4, !dbg !218
  %186 = extractelement <4 x half> %bc1958, i64 1, !dbg !212
  %conv.i.i.5 = fpext half %186 to float, !dbg !213
  %add451.5 = fadd contract float %add451.4, %conv.i.i.5, !dbg !218
  %187 = extractelement <4 x half> %bc1958, i64 2, !dbg !212
  %conv.i.i.6 = fpext half %187 to float, !dbg !213
  %add451.6 = fadd contract float %add451.5, %conv.i.i.6, !dbg !218
  %188 = extractelement <4 x half> %bc1958, i64 3, !dbg !212
  %conv.i.i.7 = fpext half %188 to float, !dbg !213
  %add451.7 = fadd contract float %add451.6, %conv.i.i.7, !dbg !218
  %189 = extractelement <4 x half> %bc1962, i64 0, !dbg !212
  %conv.i.i.8 = fpext half %189 to float, !dbg !213
  %add451.8 = fadd contract float %add451.7, %conv.i.i.8, !dbg !218
  %190 = extractelement <4 x half> %bc1962, i64 1, !dbg !212
  %conv.i.i.9 = fpext half %190 to float, !dbg !213
  %add451.9 = fadd contract float %add451.8, %conv.i.i.9, !dbg !218
  %191 = extractelement <4 x half> %bc1962, i64 2, !dbg !212
  %conv.i.i.10 = fpext half %191 to float, !dbg !213
  %add451.10 = fadd contract float %add451.9, %conv.i.i.10, !dbg !218
  %192 = extractelement <4 x half> %bc1962, i64 3, !dbg !212
  %conv.i.i.11 = fpext half %192 to float, !dbg !213
  %add451.11 = fadd contract float %add451.10, %conv.i.i.11, !dbg !218
  %193 = extractelement <4 x half> %bc1966, i64 0, !dbg !212
  %conv.i.i.12 = fpext half %193 to float, !dbg !213
  %add451.12 = fadd contract float %add451.11, %conv.i.i.12, !dbg !218
  %194 = extractelement <4 x half> %bc1966, i64 1, !dbg !212
  %conv.i.i.13 = fpext half %194 to float, !dbg !213
  %add451.13 = fadd contract float %add451.12, %conv.i.i.13, !dbg !218
  %195 = extractelement <4 x half> %bc1966, i64 2, !dbg !212
  %conv.i.i.14 = fpext half %195 to float, !dbg !213
  %add451.14 = fadd contract float %add451.13, %conv.i.i.14, !dbg !218
  %196 = extractelement <4 x half> %bc1966, i64 3, !dbg !212
  %conv.i.i.15 = fpext half %196 to float, !dbg !213
  %add451.15 = fadd contract float %add451.14, %conv.i.i.15, !dbg !218
  %197 = bitcast float %add451.15 to i32, !dbg !219
  %198 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !221
  %199 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %198) #10, !dbg !224
  %xor.i.i1048 = xor i32 %199, 32, !dbg !225
  %200 = and i32 %199, -64, !dbg !226
  %and.i.i1049 = add nsw i32 %200, 64, !dbg !226
  %cmp.not.i.i1050 = icmp slt i32 %xor.i.i1048, %and.i.i1049, !dbg !227
  %cond.i.i1051 = select i1 %cmp.not.i.i1050, i32 %xor.i.i1048, i32 %199, !dbg !228
  %shl.i.i1052 = shl i32 %cond.i.i1051, 2, !dbg !229
  %201 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1052, i32 %197), !dbg !230
  %202 = bitcast i32 %201 to float, !dbg !231
  %add459 = fadd contract float %add451.15, %202, !dbg !232
  %203 = bitcast float %add459 to i32, !dbg !233
  %204 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !235
  %205 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %204) #10, !dbg !238
  %xor.i.i1053 = xor i32 %205, 16, !dbg !239
  %206 = and i32 %205, -64, !dbg !240
  %and.i.i1054 = add nsw i32 %206, 64, !dbg !240
  %cmp.not.i.i1055 = icmp slt i32 %xor.i.i1053, %and.i.i1054, !dbg !241
  %cond.i.i1056 = select i1 %cmp.not.i.i1055, i32 %xor.i.i1053, i32 %205, !dbg !242
  %shl.i.i1057 = shl i32 %cond.i.i1056, 2, !dbg !243
  %207 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1057, i32 %203), !dbg !244
  br i1 %cmp325, label %if.then469, label %if.end480, !dbg !245

if.then469:                                       ; preds = %if.end442
  %mul473 = and i32 %19, 240
  %208 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %mul473
  %209 = getelementptr inbounds float, ptr addrspace(3) %208, i32 %and339.pre-phi
  %arrayidx479 = getelementptr inbounds i8, ptr addrspace(3) %209, i32 6272
  %210 = bitcast i32 %207 to float, !dbg !246
  %add464 = fadd contract float %add459, %210
  store float %add464, ptr addrspace(3) %arrayidx479, align 4, !dbg !247, !tbaa !146
  br label %if.end480, !dbg !248

if.end480:                                        ; preds = %if.then469, %if.end442
  fence syncscope("block") release, !dbg !249
  tail call void @llvm.mxc.barrier(), !dbg !252
  fence syncscope("block") acquire, !dbg !253
  %mul529 = and i32 %16, 768
  %and534 = shl nuw nsw i32 %0, 2
  %mul535 = and i32 %and534, 60
  %211 = and i32 %16, 15600
  %shr5761005 = xor i32 %and67, %19
  %xor580 = and i32 %shr5761005, 3
  %and598 = shl nuw nsw i32 %0, 8
  %mul599 = and i32 %and598, 768
  %add600 = or disjoint i32 %mul171, %mul599
  %mul606 = and i32 %and534, 48
  %shr6101004 = xor i32 %and67, %0
  %212 = and i32 %shr6101004, 3
  %213 = zext nneg i32 %mul535 to i64, !dbg !254
  %214 = load i32, ptr addrspace(1) %arrayidx135, align 4, !dbg !255, !tbaa !30
  %or.cond866 = icmp ugt i32 %214, 63, !dbg !256
  %cmp516.not = icmp sgt i32 %214, %shr140
  %or.cond1074 = or i1 %or.cond866, %cmp516.not, !dbg !256
  br i1 %or.cond1074, label %if.end646, label %if.then517, !dbg !256

for.cond654.preheader:                            ; preds = %if.end646.3
  %mul665 = and i32 %and534, 252
  %gep1106 = getelementptr inbounds float, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 6400), i32 %mul665, !dbg !257
  store <4 x float> %numerator.sroa.0.3, ptr addrspace(3) %gep1106, align 16, !dbg !258
  %gep1106.1 = getelementptr inbounds float, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 6400), i32 %and534, !dbg !257
  store <4 x float> %numerator.sroa.35.3, ptr addrspace(3) %gep1106.1, align 16, !dbg !258
  %add666.2 = or disjoint i32 %mul665, 512, !dbg !259
  %gep1106.2 = getelementptr inbounds float, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 6400), i32 %add666.2, !dbg !257
  store <4 x float> %numerator.sroa.68.3, ptr addrspace(3) %gep1106.2, align 16, !dbg !258
  %add666.3 = or i32 %and534, 768, !dbg !259
  %gep1106.3 = getelementptr inbounds float, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 6400), i32 %add666.3, !dbg !257
  store <4 x float> %numerator.sroa.101.3, ptr addrspace(3) %gep1106.3, align 16, !dbg !258
  br label %if.end673, !dbg !260

if.then517:                                       ; preds = %if.end480
  fence syncscope("warp") release, !dbg !263
  tail call void @llvm.mxc.barrier.warp(), !dbg !266
  fence syncscope("warp") acquire, !dbg !267
  %mul524 = shl nuw nsw i32 %214, 10
  %add525 = or disjoint i32 %mul524, %mul148
  %add530 = or disjoint i32 %add525, %mul529
  %215 = zext nneg i32 %add530 to i64, !dbg !268
  %216 = or disjoint i64 %215, %213, !dbg !269
  %add.ptr538 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %216, !dbg !270
  %217 = load i64, ptr addrspace(4) %add.ptr538, align 8, !dbg !271
  %218 = or disjoint i64 %215, %213, !dbg !269
  %219 = or disjoint i64 %218, 64, !dbg !269
  %add.ptr538.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %219, !dbg !270
  %220 = load i64, ptr addrspace(4) %add.ptr538.1, align 8, !dbg !271
  %221 = or disjoint i64 %215, %213, !dbg !269
  %222 = or disjoint i64 %221, 128, !dbg !269
  %add.ptr538.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %222, !dbg !270
  %223 = load i64, ptr addrspace(4) %add.ptr538.2, align 8, !dbg !271
  %224 = or disjoint i64 %215, %213, !dbg !269
  %225 = or disjoint i64 %224, 192, !dbg !269
  %add.ptr538.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %225, !dbg !270
  %226 = load i64, ptr addrspace(4) %add.ptr538.3, align 8, !dbg !271
  %227 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %211, !dbg !272
  %gep1100.idx = shl nuw nsw i32 %xor580, 3, !dbg !272
  %gep1100 = getelementptr inbounds i8, ptr addrspace(3) %227, i32 %gep1100.idx, !dbg !272
  %v_column.sroa.66.0.insert.ext = shl i64 %226, 48, !dbg !273
  %v_column.sroa.50.0.insert.ext = shl i64 %223, 32, !dbg !273
  %v_column.sroa.50.0.insert.shift = and i64 %v_column.sroa.50.0.insert.ext, 281470681743360, !dbg !273
  %v_column.sroa.50.0.insert.insert = or disjoint i64 %v_column.sroa.66.0.insert.ext, %v_column.sroa.50.0.insert.shift, !dbg !273
  %v_column.sroa.34.0.insert.ext = shl i64 %220, 16, !dbg !273
  %v_column.sroa.34.0.insert.shift = and i64 %v_column.sroa.34.0.insert.ext, 4294901760, !dbg !273
  %v_column.sroa.34.0.insert.insert = or disjoint i64 %v_column.sroa.50.0.insert.insert, %v_column.sroa.34.0.insert.shift, !dbg !273
  %v_column.sroa.0.0.insert.ext = and i64 %217, 65535, !dbg !273
  %v_column.sroa.0.0.insert.insert = or disjoint i64 %v_column.sroa.34.0.insert.insert, %v_column.sroa.0.0.insert.ext, !dbg !273
  store i64 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %gep1100, align 8, !dbg !273
  %v_fetch.sroa.0.2.extract.shift = lshr i64 %217, 16, !dbg !274
  %228 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2560), i32 %211, !dbg !272
  %xor581.1 = shl nuw nsw i32 %xor580, 3, !dbg !272
  %gep1100.idx.1 = xor i32 %xor581.1, 8, !dbg !272
  %gep1100.1 = getelementptr inbounds i8, ptr addrspace(3) %228, i32 %gep1100.idx.1, !dbg !272
  %229 = shl i64 %226, 32, !dbg !273
  %v_column.sroa.66.0.insert.ext1457 = and i64 %229, -281474976710656, !dbg !273
  %230 = shl i64 %223, 16, !dbg !273
  %v_column.sroa.50.0.insert.shift1383 = and i64 %230, 281470681743360, !dbg !273
  %v_column.sroa.50.0.insert.insert1385 = or disjoint i64 %v_column.sroa.66.0.insert.ext1457, %v_column.sroa.50.0.insert.shift1383, !dbg !273
  %v_column.sroa.34.0.insert.ext1307 = and i64 %220, 4294901760, !dbg !273
  %v_column.sroa.34.0.insert.insert1310 = or disjoint i64 %v_column.sroa.50.0.insert.insert1385, %v_column.sroa.34.0.insert.ext1307, !dbg !273
  %v_column.sroa.0.0.insert.ext1247 = and i64 %v_fetch.sroa.0.2.extract.shift, 65535, !dbg !273
  %v_column.sroa.0.0.insert.insert1249 = or disjoint i64 %v_column.sroa.34.0.insert.insert1310, %v_column.sroa.0.0.insert.ext1247, !dbg !273
  store i64 %v_column.sroa.0.0.insert.insert1249, ptr addrspace(3) %gep1100.1, align 8, !dbg !273
  %v_fetch.sroa.0.4.extract.shift = lshr i64 %217, 32, !dbg !274
  %231 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 3072), i32 %211, !dbg !272
  %xor581.2 = shl nuw nsw i32 %xor580, 3, !dbg !272
  %gep1100.idx.2 = xor i32 %xor581.2, 16, !dbg !272
  %gep1100.2 = getelementptr inbounds i8, ptr addrspace(3) %231, i32 %gep1100.idx.2, !dbg !272
  %232 = shl i64 %226, 16, !dbg !273
  %v_column.sroa.66.0.insert.ext1462 = and i64 %232, -281474976710656, !dbg !273
  %v_column.sroa.50.0.insert.ext1387 = and i64 %223, 281470681743360, !dbg !273
  %v_column.sroa.50.0.insert.insert1390 = or disjoint i64 %v_column.sroa.66.0.insert.ext1462, %v_column.sroa.50.0.insert.ext1387, !dbg !273
  %233 = lshr i64 %220, 16, !dbg !273
  %v_column.sroa.34.0.insert.shift1313 = and i64 %233, 4294901760, !dbg !273
  %v_column.sroa.34.0.insert.insert1315 = or disjoint i64 %v_column.sroa.50.0.insert.insert1390, %v_column.sroa.34.0.insert.shift1313, !dbg !273
  %v_column.sroa.0.0.insert.ext1251 = and i64 %v_fetch.sroa.0.4.extract.shift, 65535, !dbg !273
  %v_column.sroa.0.0.insert.insert1253 = or disjoint i64 %v_column.sroa.34.0.insert.insert1315, %v_column.sroa.0.0.insert.ext1251, !dbg !273
  store i64 %v_column.sroa.0.0.insert.insert1253, ptr addrspace(3) %gep1100.2, align 8, !dbg !273
  %v_fetch.sroa.0.6.extract.shift = lshr i64 %217, 48, !dbg !274
  %v_fetch.sroa.62.30.extract.shift = and i64 %226, -281474976710656, !dbg !273
  %234 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 3584), i32 %211, !dbg !272
  %xor581.3 = shl nuw nsw i32 %xor580, 3, !dbg !272
  %gep1100.idx.3 = xor i32 %xor581.3, 24, !dbg !272
  %gep1100.3 = getelementptr inbounds i8, ptr addrspace(3) %234, i32 %gep1100.idx.3, !dbg !272
  %235 = lshr i64 %223, 16, !dbg !273
  %v_column.sroa.50.0.insert.shift1393 = and i64 %235, 281470681743360, !dbg !273
  %v_column.sroa.50.0.insert.insert1395 = or disjoint i64 %v_fetch.sroa.62.30.extract.shift, %v_column.sroa.50.0.insert.shift1393, !dbg !273
  %236 = lshr i64 %220, 32, !dbg !273
  %v_column.sroa.34.0.insert.shift1318 = and i64 %236, 4294901760, !dbg !273
  %v_column.sroa.34.0.insert.insert1320 = or disjoint i64 %v_column.sroa.50.0.insert.insert1395, %v_column.sroa.34.0.insert.shift1318, !dbg !273
  %v_column.sroa.0.0.insert.insert1257 = or disjoint i64 %v_column.sroa.34.0.insert.insert1320, %v_fetch.sroa.0.6.extract.shift, !dbg !273
  store i64 %v_column.sroa.0.0.insert.insert1257, ptr addrspace(3) %gep1100.3, align 8, !dbg !273
  fence syncscope("warp") release, !dbg !275
  tail call void @llvm.mxc.barrier.warp(), !dbg !278
  fence syncscope("warp") acquire, !dbg !279
  %add607 = or disjoint i32 %add600, %mul606, !dbg !280
  %237 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add607, !dbg !281
  %gep1102.idx = shl nuw nsw i32 %212, 3, !dbg !281
  %gep1102 = getelementptr inbounds i8, ptr addrspace(3) %237, i32 %gep1102.idx, !dbg !281
  %238 = load <4 x half>, ptr addrspace(3) %gep1102, align 8, !dbg !282
  %add602.1 = or disjoint i32 %add600, %mul606, !dbg !280
  %add607.1 = or disjoint i32 %add602.1, 64, !dbg !280
  %239 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add607.1, !dbg !281
  %xor614.1 = shl nuw nsw i32 %212, 3, !dbg !281
  %gep1102.idx.1 = xor i32 %xor614.1, 8, !dbg !281
  %gep1102.1 = getelementptr inbounds i8, ptr addrspace(3) %239, i32 %gep1102.idx.1, !dbg !281
  %240 = load <4 x half>, ptr addrspace(3) %gep1102.1, align 8, !dbg !282
  %add602.2 = or disjoint i32 %add600, %mul606, !dbg !280
  %add607.2 = or disjoint i32 %add602.2, 128, !dbg !280
  %241 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add607.2, !dbg !281
  %xor614.2 = shl nuw nsw i32 %212, 3, !dbg !281
  %gep1102.idx.2 = xor i32 %xor614.2, 16, !dbg !281
  %gep1102.2 = getelementptr inbounds i8, ptr addrspace(3) %241, i32 %gep1102.idx.2, !dbg !281
  %242 = load <4 x half>, ptr addrspace(3) %gep1102.2, align 8, !dbg !282
  %add602.3 = or disjoint i32 %add600, %mul606, !dbg !280
  %add607.3 = or disjoint i32 %add602.3, 192, !dbg !280
  %243 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add607.3, !dbg !281
  %xor614.3 = shl nuw nsw i32 %212, 3, !dbg !281
  %gep1102.idx.3 = xor i32 %xor614.3, 24, !dbg !281
  %gep1102.3 = getelementptr inbounds i8, ptr addrspace(3) %243, i32 %gep1102.idx.3, !dbg !281
  %244 = load <4 x half>, ptr addrspace(3) %gep1102.3, align 8, !dbg !282
  %245 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %238, <4 x half> %bc1954, <4 x float> zeroinitializer), !dbg !283
  %246 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %240, <4 x half> %bc1954, <4 x float> zeroinitializer), !dbg !283
  %247 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %242, <4 x half> %bc1954, <4 x float> zeroinitializer), !dbg !283
  %248 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %244, <4 x half> %bc1954, <4 x float> zeroinitializer), !dbg !283
  br label %if.end646, !dbg !284

if.end646:                                        ; preds = %if.then517, %if.end480
  %numerator.sroa.101.0 = phi <4 x float> [ zeroinitializer, %if.end480 ], [ %248, %if.then517 ], !dbg !101
  %numerator.sroa.68.0 = phi <4 x float> [ zeroinitializer, %if.end480 ], [ %247, %if.then517 ], !dbg !101
  %numerator.sroa.35.0 = phi <4 x float> [ zeroinitializer, %if.end480 ], [ %246, %if.then517 ], !dbg !101
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %if.end480 ], [ %245, %if.then517 ], !dbg !101
  %249 = load i32, ptr addrspace(1) %arrayidx135.1, align 4, !dbg !255, !tbaa !30
  %or.cond866.1 = icmp ugt i32 %249, 63, !dbg !256
  %cmp516.not.1 = icmp sgt i32 %249, %shr140
  %or.cond1074.1 = or i1 %or.cond866.1, %cmp516.not.1, !dbg !256
  br i1 %or.cond1074.1, label %if.end646.1, label %if.then517.1, !dbg !256

if.then517.1:                                     ; preds = %if.end646
  fence syncscope("warp") release, !dbg !263
  tail call void @llvm.mxc.barrier.warp(), !dbg !266
  fence syncscope("warp") acquire, !dbg !267
  %mul524.1 = shl nuw nsw i32 %249, 10
  %add525.1 = or disjoint i32 %mul524.1, %mul148
  %add530.1 = or disjoint i32 %add525.1, %mul529
  %250 = zext nneg i32 %add530.1 to i64, !dbg !268
  %251 = or disjoint i64 %250, %213, !dbg !269
  %add.ptr538.11196 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %251, !dbg !270
  %252 = load i64, ptr addrspace(4) %add.ptr538.11196, align 8, !dbg !271
  %253 = or disjoint i64 %250, %213, !dbg !269
  %254 = or disjoint i64 %253, 64, !dbg !269
  %add.ptr538.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %254, !dbg !270
  %255 = load i64, ptr addrspace(4) %add.ptr538.1.1, align 8, !dbg !271
  %256 = or disjoint i64 %250, %213, !dbg !269
  %257 = or disjoint i64 %256, 128, !dbg !269
  %add.ptr538.2.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %257, !dbg !270
  %258 = load i64, ptr addrspace(4) %add.ptr538.2.1, align 8, !dbg !271
  %259 = or disjoint i64 %250, %213, !dbg !269
  %260 = or disjoint i64 %259, 192, !dbg !269
  %add.ptr538.3.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %260, !dbg !270
  %261 = load i64, ptr addrspace(4) %add.ptr538.3.1, align 8, !dbg !271
  %262 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %211, !dbg !272
  %gep1100.idx.11203 = shl nuw nsw i32 %xor580, 3, !dbg !272
  %gep1100.11204 = getelementptr inbounds i8, ptr addrspace(3) %262, i32 %gep1100.idx.11203, !dbg !272
  %v_column.sroa.66.0.insert.ext1472 = shl i64 %261, 48, !dbg !273
  %v_column.sroa.50.0.insert.ext1397 = shl i64 %258, 32, !dbg !273
  %v_column.sroa.50.0.insert.shift1398 = and i64 %v_column.sroa.50.0.insert.ext1397, 281470681743360, !dbg !273
  %v_column.sroa.50.0.insert.insert1400 = or disjoint i64 %v_column.sroa.66.0.insert.ext1472, %v_column.sroa.50.0.insert.shift1398, !dbg !273
  %v_column.sroa.34.0.insert.ext1322 = shl i64 %255, 16, !dbg !273
  %v_column.sroa.34.0.insert.shift1323 = and i64 %v_column.sroa.34.0.insert.ext1322, 4294901760, !dbg !273
  %v_column.sroa.34.0.insert.insert1325 = or disjoint i64 %v_column.sroa.50.0.insert.insert1400, %v_column.sroa.34.0.insert.shift1323, !dbg !273
  %v_column.sroa.0.0.insert.ext1259 = and i64 %252, 65535, !dbg !273
  %v_column.sroa.0.0.insert.insert1261 = or disjoint i64 %v_column.sroa.34.0.insert.insert1325, %v_column.sroa.0.0.insert.ext1259, !dbg !273
  store i64 %v_column.sroa.0.0.insert.insert1261, ptr addrspace(3) %gep1100.11204, align 8, !dbg !273
  %v_fetch.sroa.0.2.extract.shift1566 = lshr i64 %252, 16, !dbg !274
  %263 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2560), i32 %211, !dbg !272
  %xor581.1.1 = shl nuw nsw i32 %xor580, 3, !dbg !272
  %gep1100.idx.1.1 = xor i32 %xor581.1.1, 8, !dbg !272
  %gep1100.1.1 = getelementptr inbounds i8, ptr addrspace(3) %263, i32 %gep1100.idx.1.1, !dbg !272
  %264 = shl i64 %261, 32, !dbg !273
  %v_column.sroa.66.0.insert.ext1477 = and i64 %264, -281474976710656, !dbg !273
  %265 = shl i64 %258, 16, !dbg !273
  %v_column.sroa.50.0.insert.shift1403 = and i64 %265, 281470681743360, !dbg !273
  %v_column.sroa.50.0.insert.insert1405 = or disjoint i64 %v_column.sroa.66.0.insert.ext1477, %v_column.sroa.50.0.insert.shift1403, !dbg !273
  %v_column.sroa.34.0.insert.ext1327 = and i64 %255, 4294901760, !dbg !273
  %v_column.sroa.34.0.insert.insert1330 = or disjoint i64 %v_column.sroa.50.0.insert.insert1405, %v_column.sroa.34.0.insert.ext1327, !dbg !273
  %v_column.sroa.0.0.insert.ext1263 = and i64 %v_fetch.sroa.0.2.extract.shift1566, 65535, !dbg !273
  %v_column.sroa.0.0.insert.insert1265 = or disjoint i64 %v_column.sroa.34.0.insert.insert1330, %v_column.sroa.0.0.insert.ext1263, !dbg !273
  store i64 %v_column.sroa.0.0.insert.insert1265, ptr addrspace(3) %gep1100.1.1, align 8, !dbg !273
  %v_fetch.sroa.0.4.extract.shift1575 = lshr i64 %252, 32, !dbg !274
  %266 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 3072), i32 %211, !dbg !272
  %xor581.2.1 = shl nuw nsw i32 %xor580, 3, !dbg !272
  %gep1100.idx.2.1 = xor i32 %xor581.2.1, 16, !dbg !272
  %gep1100.2.1 = getelementptr inbounds i8, ptr addrspace(3) %266, i32 %gep1100.idx.2.1, !dbg !272
  %267 = shl i64 %261, 16, !dbg !273
  %v_column.sroa.66.0.insert.ext1482 = and i64 %267, -281474976710656, !dbg !273
  %v_column.sroa.50.0.insert.ext1407 = and i64 %258, 281470681743360, !dbg !273
  %v_column.sroa.50.0.insert.insert1410 = or disjoint i64 %v_column.sroa.66.0.insert.ext1482, %v_column.sroa.50.0.insert.ext1407, !dbg !273
  %268 = lshr i64 %255, 16, !dbg !273
  %v_column.sroa.34.0.insert.shift1333 = and i64 %268, 4294901760, !dbg !273
  %v_column.sroa.34.0.insert.insert1335 = or disjoint i64 %v_column.sroa.50.0.insert.insert1410, %v_column.sroa.34.0.insert.shift1333, !dbg !273
  %v_column.sroa.0.0.insert.ext1267 = and i64 %v_fetch.sroa.0.4.extract.shift1575, 65535, !dbg !273
  %v_column.sroa.0.0.insert.insert1269 = or disjoint i64 %v_column.sroa.34.0.insert.insert1335, %v_column.sroa.0.0.insert.ext1267, !dbg !273
  store i64 %v_column.sroa.0.0.insert.insert1269, ptr addrspace(3) %gep1100.2.1, align 8, !dbg !273
  %v_fetch.sroa.0.6.extract.shift1584 = lshr i64 %252, 48, !dbg !274
  %v_fetch.sroa.62.30.extract.shift1683 = and i64 %261, -281474976710656, !dbg !273
  %269 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 3584), i32 %211, !dbg !272
  %xor581.3.1 = shl nuw nsw i32 %xor580, 3, !dbg !272
  %gep1100.idx.3.1 = xor i32 %xor581.3.1, 24, !dbg !272
  %gep1100.3.1 = getelementptr inbounds i8, ptr addrspace(3) %269, i32 %gep1100.idx.3.1, !dbg !272
  %270 = lshr i64 %258, 16, !dbg !273
  %v_column.sroa.50.0.insert.shift1413 = and i64 %270, 281470681743360, !dbg !273
  %v_column.sroa.50.0.insert.insert1415 = or disjoint i64 %v_fetch.sroa.62.30.extract.shift1683, %v_column.sroa.50.0.insert.shift1413, !dbg !273
  %271 = lshr i64 %255, 32, !dbg !273
  %v_column.sroa.34.0.insert.shift1338 = and i64 %271, 4294901760, !dbg !273
  %v_column.sroa.34.0.insert.insert1340 = or disjoint i64 %v_column.sroa.50.0.insert.insert1415, %v_column.sroa.34.0.insert.shift1338, !dbg !273
  %v_column.sroa.0.0.insert.insert1273 = or disjoint i64 %v_column.sroa.34.0.insert.insert1340, %v_fetch.sroa.0.6.extract.shift1584, !dbg !273
  store i64 %v_column.sroa.0.0.insert.insert1273, ptr addrspace(3) %gep1100.3.1, align 8, !dbg !273
  fence syncscope("warp") release, !dbg !275
  tail call void @llvm.mxc.barrier.warp(), !dbg !278
  fence syncscope("warp") acquire, !dbg !279
  %add607.11206 = or disjoint i32 %add600, %mul606, !dbg !280
  %272 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add607.11206, !dbg !281
  %gep1102.idx.11207 = shl nuw nsw i32 %212, 3, !dbg !281
  %gep1102.11208 = getelementptr inbounds i8, ptr addrspace(3) %272, i32 %gep1102.idx.11207, !dbg !281
  %273 = load <4 x half>, ptr addrspace(3) %gep1102.11208, align 8, !dbg !282
  %add602.1.1 = or disjoint i32 %add600, %mul606, !dbg !280
  %add607.1.1 = or disjoint i32 %add602.1.1, 64, !dbg !280
  %274 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add607.1.1, !dbg !281
  %xor614.1.1 = shl nuw nsw i32 %212, 3, !dbg !281
  %gep1102.idx.1.1 = xor i32 %xor614.1.1, 8, !dbg !281
  %gep1102.1.1 = getelementptr inbounds i8, ptr addrspace(3) %274, i32 %gep1102.idx.1.1, !dbg !281
  %275 = load <4 x half>, ptr addrspace(3) %gep1102.1.1, align 8, !dbg !282
  %add602.2.1 = or disjoint i32 %add600, %mul606, !dbg !280
  %add607.2.1 = or disjoint i32 %add602.2.1, 128, !dbg !280
  %276 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add607.2.1, !dbg !281
  %xor614.2.1 = shl nuw nsw i32 %212, 3, !dbg !281
  %gep1102.idx.2.1 = xor i32 %xor614.2.1, 16, !dbg !281
  %gep1102.2.1 = getelementptr inbounds i8, ptr addrspace(3) %276, i32 %gep1102.idx.2.1, !dbg !281
  %277 = load <4 x half>, ptr addrspace(3) %gep1102.2.1, align 8, !dbg !282
  %add602.3.1 = or disjoint i32 %add600, %mul606, !dbg !280
  %add607.3.1 = or disjoint i32 %add602.3.1, 192, !dbg !280
  %278 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add607.3.1, !dbg !281
  %xor614.3.1 = shl nuw nsw i32 %212, 3, !dbg !281
  %gep1102.idx.3.1 = xor i32 %xor614.3.1, 24, !dbg !281
  %gep1102.3.1 = getelementptr inbounds i8, ptr addrspace(3) %278, i32 %gep1102.idx.3.1, !dbg !281
  %279 = load <4 x half>, ptr addrspace(3) %gep1102.3.1, align 8, !dbg !282
  %280 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %273, <4 x half> %bc1958, <4 x float> %numerator.sroa.0.0), !dbg !283
  %281 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %275, <4 x half> %bc1958, <4 x float> %numerator.sroa.35.0), !dbg !283
  %282 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %277, <4 x half> %bc1958, <4 x float> %numerator.sroa.68.0), !dbg !283
  %283 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %279, <4 x half> %bc1958, <4 x float> %numerator.sroa.101.0), !dbg !283
  br label %if.end646.1, !dbg !284

if.end646.1:                                      ; preds = %if.then517.1, %if.end646
  %numerator.sroa.101.1 = phi <4 x float> [ %numerator.sroa.101.0, %if.end646 ], [ %283, %if.then517.1 ], !dbg !101
  %numerator.sroa.68.1 = phi <4 x float> [ %numerator.sroa.68.0, %if.end646 ], [ %282, %if.then517.1 ], !dbg !101
  %numerator.sroa.35.1 = phi <4 x float> [ %numerator.sroa.35.0, %if.end646 ], [ %281, %if.then517.1 ], !dbg !101
  %numerator.sroa.0.1 = phi <4 x float> [ %numerator.sroa.0.0, %if.end646 ], [ %280, %if.then517.1 ], !dbg !101
  %284 = load i32, ptr addrspace(1) %arrayidx135.2, align 4, !dbg !255, !tbaa !30
  %or.cond866.2 = icmp ugt i32 %284, 63, !dbg !256
  %cmp516.not.2 = icmp sgt i32 %284, %shr140
  %or.cond1074.2 = or i1 %or.cond866.2, %cmp516.not.2, !dbg !256
  br i1 %or.cond1074.2, label %if.end646.2, label %if.then517.2, !dbg !256

if.then517.2:                                     ; preds = %if.end646.1
  fence syncscope("warp") release, !dbg !263
  tail call void @llvm.mxc.barrier.warp(), !dbg !266
  fence syncscope("warp") acquire, !dbg !267
  %mul524.2 = shl nuw nsw i32 %284, 10
  %add525.2 = or disjoint i32 %mul524.2, %mul148
  %add530.2 = or disjoint i32 %add525.2, %mul529
  %285 = zext nneg i32 %add530.2 to i64, !dbg !268
  %286 = or disjoint i64 %285, %213, !dbg !269
  %add.ptr538.21209 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %286, !dbg !270
  %287 = load i64, ptr addrspace(4) %add.ptr538.21209, align 8, !dbg !271
  %288 = or disjoint i64 %285, %213, !dbg !269
  %289 = or disjoint i64 %288, 64, !dbg !269
  %add.ptr538.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %289, !dbg !270
  %290 = load i64, ptr addrspace(4) %add.ptr538.1.2, align 8, !dbg !271
  %291 = or disjoint i64 %285, %213, !dbg !269
  %292 = or disjoint i64 %291, 128, !dbg !269
  %add.ptr538.2.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %292, !dbg !270
  %293 = load i64, ptr addrspace(4) %add.ptr538.2.2, align 8, !dbg !271
  %294 = or disjoint i64 %285, %213, !dbg !269
  %295 = or disjoint i64 %294, 192, !dbg !269
  %add.ptr538.3.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %295, !dbg !270
  %296 = load i64, ptr addrspace(4) %add.ptr538.3.2, align 8, !dbg !271
  %297 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %211, !dbg !272
  %gep1100.idx.21216 = shl nuw nsw i32 %xor580, 3, !dbg !272
  %gep1100.21217 = getelementptr inbounds i8, ptr addrspace(3) %297, i32 %gep1100.idx.21216, !dbg !272
  %v_column.sroa.66.0.insert.ext1492 = shl i64 %296, 48, !dbg !273
  %v_column.sroa.50.0.insert.ext1417 = shl i64 %293, 32, !dbg !273
  %v_column.sroa.50.0.insert.shift1418 = and i64 %v_column.sroa.50.0.insert.ext1417, 281470681743360, !dbg !273
  %v_column.sroa.50.0.insert.insert1420 = or disjoint i64 %v_column.sroa.66.0.insert.ext1492, %v_column.sroa.50.0.insert.shift1418, !dbg !273
  %v_column.sroa.34.0.insert.ext1342 = shl i64 %290, 16, !dbg !273
  %v_column.sroa.34.0.insert.shift1343 = and i64 %v_column.sroa.34.0.insert.ext1342, 4294901760, !dbg !273
  %v_column.sroa.34.0.insert.insert1345 = or disjoint i64 %v_column.sroa.50.0.insert.insert1420, %v_column.sroa.34.0.insert.shift1343, !dbg !273
  %v_column.sroa.0.0.insert.ext1275 = and i64 %287, 65535, !dbg !273
  %v_column.sroa.0.0.insert.insert1277 = or disjoint i64 %v_column.sroa.34.0.insert.insert1345, %v_column.sroa.0.0.insert.ext1275, !dbg !273
  store i64 %v_column.sroa.0.0.insert.insert1277, ptr addrspace(3) %gep1100.21217, align 8, !dbg !273
  %v_fetch.sroa.0.2.extract.shift1569 = lshr i64 %287, 16, !dbg !274
  %298 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2560), i32 %211, !dbg !272
  %xor581.1.2 = shl nuw nsw i32 %xor580, 3, !dbg !272
  %gep1100.idx.1.2 = xor i32 %xor581.1.2, 8, !dbg !272
  %gep1100.1.2 = getelementptr inbounds i8, ptr addrspace(3) %298, i32 %gep1100.idx.1.2, !dbg !272
  %299 = shl i64 %296, 32, !dbg !273
  %v_column.sroa.66.0.insert.ext1497 = and i64 %299, -281474976710656, !dbg !273
  %300 = shl i64 %293, 16, !dbg !273
  %v_column.sroa.50.0.insert.shift1423 = and i64 %300, 281470681743360, !dbg !273
  %v_column.sroa.50.0.insert.insert1425 = or disjoint i64 %v_column.sroa.66.0.insert.ext1497, %v_column.sroa.50.0.insert.shift1423, !dbg !273
  %v_column.sroa.34.0.insert.ext1347 = and i64 %290, 4294901760, !dbg !273
  %v_column.sroa.34.0.insert.insert1350 = or disjoint i64 %v_column.sroa.50.0.insert.insert1425, %v_column.sroa.34.0.insert.ext1347, !dbg !273
  %v_column.sroa.0.0.insert.ext1279 = and i64 %v_fetch.sroa.0.2.extract.shift1569, 65535, !dbg !273
  %v_column.sroa.0.0.insert.insert1281 = or disjoint i64 %v_column.sroa.34.0.insert.insert1350, %v_column.sroa.0.0.insert.ext1279, !dbg !273
  store i64 %v_column.sroa.0.0.insert.insert1281, ptr addrspace(3) %gep1100.1.2, align 8, !dbg !273
  %v_fetch.sroa.0.4.extract.shift1578 = lshr i64 %287, 32, !dbg !274
  %301 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 3072), i32 %211, !dbg !272
  %xor581.2.2 = shl nuw nsw i32 %xor580, 3, !dbg !272
  %gep1100.idx.2.2 = xor i32 %xor581.2.2, 16, !dbg !272
  %gep1100.2.2 = getelementptr inbounds i8, ptr addrspace(3) %301, i32 %gep1100.idx.2.2, !dbg !272
  %302 = shl i64 %296, 16, !dbg !273
  %v_column.sroa.66.0.insert.ext1502 = and i64 %302, -281474976710656, !dbg !273
  %v_column.sroa.50.0.insert.ext1427 = and i64 %293, 281470681743360, !dbg !273
  %v_column.sroa.50.0.insert.insert1430 = or disjoint i64 %v_column.sroa.66.0.insert.ext1502, %v_column.sroa.50.0.insert.ext1427, !dbg !273
  %303 = lshr i64 %290, 16, !dbg !273
  %v_column.sroa.34.0.insert.shift1353 = and i64 %303, 4294901760, !dbg !273
  %v_column.sroa.34.0.insert.insert1355 = or disjoint i64 %v_column.sroa.50.0.insert.insert1430, %v_column.sroa.34.0.insert.shift1353, !dbg !273
  %v_column.sroa.0.0.insert.ext1283 = and i64 %v_fetch.sroa.0.4.extract.shift1578, 65535, !dbg !273
  %v_column.sroa.0.0.insert.insert1285 = or disjoint i64 %v_column.sroa.34.0.insert.insert1355, %v_column.sroa.0.0.insert.ext1283, !dbg !273
  store i64 %v_column.sroa.0.0.insert.insert1285, ptr addrspace(3) %gep1100.2.2, align 8, !dbg !273
  %v_fetch.sroa.0.6.extract.shift1587 = lshr i64 %287, 48, !dbg !274
  %v_fetch.sroa.62.30.extract.shift1686 = and i64 %296, -281474976710656, !dbg !273
  %304 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 3584), i32 %211, !dbg !272
  %xor581.3.2 = shl nuw nsw i32 %xor580, 3, !dbg !272
  %gep1100.idx.3.2 = xor i32 %xor581.3.2, 24, !dbg !272
  %gep1100.3.2 = getelementptr inbounds i8, ptr addrspace(3) %304, i32 %gep1100.idx.3.2, !dbg !272
  %305 = lshr i64 %293, 16, !dbg !273
  %v_column.sroa.50.0.insert.shift1433 = and i64 %305, 281470681743360, !dbg !273
  %v_column.sroa.50.0.insert.insert1435 = or disjoint i64 %v_fetch.sroa.62.30.extract.shift1686, %v_column.sroa.50.0.insert.shift1433, !dbg !273
  %306 = lshr i64 %290, 32, !dbg !273
  %v_column.sroa.34.0.insert.shift1358 = and i64 %306, 4294901760, !dbg !273
  %v_column.sroa.34.0.insert.insert1360 = or disjoint i64 %v_column.sroa.50.0.insert.insert1435, %v_column.sroa.34.0.insert.shift1358, !dbg !273
  %v_column.sroa.0.0.insert.insert1289 = or disjoint i64 %v_column.sroa.34.0.insert.insert1360, %v_fetch.sroa.0.6.extract.shift1587, !dbg !273
  store i64 %v_column.sroa.0.0.insert.insert1289, ptr addrspace(3) %gep1100.3.2, align 8, !dbg !273
  fence syncscope("warp") release, !dbg !275
  tail call void @llvm.mxc.barrier.warp(), !dbg !278
  fence syncscope("warp") acquire, !dbg !279
  %add607.21219 = or disjoint i32 %add600, %mul606, !dbg !280
  %307 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add607.21219, !dbg !281
  %gep1102.idx.21220 = shl nuw nsw i32 %212, 3, !dbg !281
  %gep1102.21221 = getelementptr inbounds i8, ptr addrspace(3) %307, i32 %gep1102.idx.21220, !dbg !281
  %308 = load <4 x half>, ptr addrspace(3) %gep1102.21221, align 8, !dbg !282
  %add602.1.2 = or disjoint i32 %add600, %mul606, !dbg !280
  %add607.1.2 = or disjoint i32 %add602.1.2, 64, !dbg !280
  %309 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add607.1.2, !dbg !281
  %xor614.1.2 = shl nuw nsw i32 %212, 3, !dbg !281
  %gep1102.idx.1.2 = xor i32 %xor614.1.2, 8, !dbg !281
  %gep1102.1.2 = getelementptr inbounds i8, ptr addrspace(3) %309, i32 %gep1102.idx.1.2, !dbg !281
  %310 = load <4 x half>, ptr addrspace(3) %gep1102.1.2, align 8, !dbg !282
  %add602.2.2 = or disjoint i32 %add600, %mul606, !dbg !280
  %add607.2.2 = or disjoint i32 %add602.2.2, 128, !dbg !280
  %311 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add607.2.2, !dbg !281
  %xor614.2.2 = shl nuw nsw i32 %212, 3, !dbg !281
  %gep1102.idx.2.2 = xor i32 %xor614.2.2, 16, !dbg !281
  %gep1102.2.2 = getelementptr inbounds i8, ptr addrspace(3) %311, i32 %gep1102.idx.2.2, !dbg !281
  %312 = load <4 x half>, ptr addrspace(3) %gep1102.2.2, align 8, !dbg !282
  %add602.3.2 = or disjoint i32 %add600, %mul606, !dbg !280
  %add607.3.2 = or disjoint i32 %add602.3.2, 192, !dbg !280
  %313 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add607.3.2, !dbg !281
  %xor614.3.2 = shl nuw nsw i32 %212, 3, !dbg !281
  %gep1102.idx.3.2 = xor i32 %xor614.3.2, 24, !dbg !281
  %gep1102.3.2 = getelementptr inbounds i8, ptr addrspace(3) %313, i32 %gep1102.idx.3.2, !dbg !281
  %314 = load <4 x half>, ptr addrspace(3) %gep1102.3.2, align 8, !dbg !282
  %315 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %308, <4 x half> %bc1962, <4 x float> %numerator.sroa.0.1), !dbg !283
  %316 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %310, <4 x half> %bc1962, <4 x float> %numerator.sroa.35.1), !dbg !283
  %317 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %312, <4 x half> %bc1962, <4 x float> %numerator.sroa.68.1), !dbg !283
  %318 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %314, <4 x half> %bc1962, <4 x float> %numerator.sroa.101.1), !dbg !283
  br label %if.end646.2, !dbg !284

if.end646.2:                                      ; preds = %if.then517.2, %if.end646.1
  %numerator.sroa.101.2 = phi <4 x float> [ %numerator.sroa.101.1, %if.end646.1 ], [ %318, %if.then517.2 ], !dbg !101
  %numerator.sroa.68.2 = phi <4 x float> [ %numerator.sroa.68.1, %if.end646.1 ], [ %317, %if.then517.2 ], !dbg !101
  %numerator.sroa.35.2 = phi <4 x float> [ %numerator.sroa.35.1, %if.end646.1 ], [ %316, %if.then517.2 ], !dbg !101
  %numerator.sroa.0.2 = phi <4 x float> [ %numerator.sroa.0.1, %if.end646.1 ], [ %315, %if.then517.2 ], !dbg !101
  %319 = load i32, ptr addrspace(1) %arrayidx135.3, align 4, !dbg !255, !tbaa !30
  %or.cond866.3 = icmp ugt i32 %319, 63, !dbg !256
  %cmp516.not.3 = icmp sgt i32 %319, %shr140
  %or.cond1074.3 = or i1 %or.cond866.3, %cmp516.not.3, !dbg !256
  br i1 %or.cond1074.3, label %if.end646.3, label %if.then517.3, !dbg !256

if.then517.3:                                     ; preds = %if.end646.2
  fence syncscope("warp") release, !dbg !263
  tail call void @llvm.mxc.barrier.warp(), !dbg !266
  fence syncscope("warp") acquire, !dbg !267
  %mul524.3 = shl nuw nsw i32 %319, 10
  %add525.3 = or disjoint i32 %mul524.3, %mul148
  %add530.3 = or disjoint i32 %add525.3, %mul529
  %320 = zext nneg i32 %add530.3 to i64, !dbg !268
  %321 = or disjoint i64 %320, %213, !dbg !269
  %add.ptr538.31222 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %321, !dbg !270
  %322 = load i64, ptr addrspace(4) %add.ptr538.31222, align 8, !dbg !271
  %323 = or disjoint i64 %320, %213, !dbg !269
  %324 = or disjoint i64 %323, 64, !dbg !269
  %add.ptr538.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %324, !dbg !270
  %325 = load i64, ptr addrspace(4) %add.ptr538.1.3, align 8, !dbg !271
  %326 = or disjoint i64 %320, %213, !dbg !269
  %327 = or disjoint i64 %326, 128, !dbg !269
  %add.ptr538.2.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %327, !dbg !270
  %328 = load i64, ptr addrspace(4) %add.ptr538.2.3, align 8, !dbg !271
  %329 = or disjoint i64 %320, %213, !dbg !269
  %330 = or disjoint i64 %329, 192, !dbg !269
  %add.ptr538.3.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %330, !dbg !270
  %331 = load i64, ptr addrspace(4) %add.ptr538.3.3, align 8, !dbg !271
  %332 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %211, !dbg !272
  %gep1100.idx.31229 = shl nuw nsw i32 %xor580, 3, !dbg !272
  %gep1100.31230 = getelementptr inbounds i8, ptr addrspace(3) %332, i32 %gep1100.idx.31229, !dbg !272
  %v_column.sroa.66.0.insert.ext1512 = shl i64 %331, 48, !dbg !273
  %v_column.sroa.50.0.insert.ext1437 = shl i64 %328, 32, !dbg !273
  %v_column.sroa.50.0.insert.shift1438 = and i64 %v_column.sroa.50.0.insert.ext1437, 281470681743360, !dbg !273
  %v_column.sroa.50.0.insert.insert1440 = or disjoint i64 %v_column.sroa.66.0.insert.ext1512, %v_column.sroa.50.0.insert.shift1438, !dbg !273
  %v_column.sroa.34.0.insert.ext1362 = shl i64 %325, 16, !dbg !273
  %v_column.sroa.34.0.insert.shift1363 = and i64 %v_column.sroa.34.0.insert.ext1362, 4294901760, !dbg !273
  %v_column.sroa.34.0.insert.insert1365 = or disjoint i64 %v_column.sroa.50.0.insert.insert1440, %v_column.sroa.34.0.insert.shift1363, !dbg !273
  %v_column.sroa.0.0.insert.ext1291 = and i64 %322, 65535, !dbg !273
  %v_column.sroa.0.0.insert.insert1293 = or disjoint i64 %v_column.sroa.34.0.insert.insert1365, %v_column.sroa.0.0.insert.ext1291, !dbg !273
  store i64 %v_column.sroa.0.0.insert.insert1293, ptr addrspace(3) %gep1100.31230, align 8, !dbg !273
  %v_fetch.sroa.0.2.extract.shift1572 = lshr i64 %322, 16, !dbg !274
  %333 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2560), i32 %211, !dbg !272
  %xor581.1.3 = shl nuw nsw i32 %xor580, 3, !dbg !272
  %gep1100.idx.1.3 = xor i32 %xor581.1.3, 8, !dbg !272
  %gep1100.1.3 = getelementptr inbounds i8, ptr addrspace(3) %333, i32 %gep1100.idx.1.3, !dbg !272
  %334 = shl i64 %331, 32, !dbg !273
  %v_column.sroa.66.0.insert.ext1517 = and i64 %334, -281474976710656, !dbg !273
  %335 = shl i64 %328, 16, !dbg !273
  %v_column.sroa.50.0.insert.shift1443 = and i64 %335, 281470681743360, !dbg !273
  %v_column.sroa.50.0.insert.insert1445 = or disjoint i64 %v_column.sroa.66.0.insert.ext1517, %v_column.sroa.50.0.insert.shift1443, !dbg !273
  %v_column.sroa.34.0.insert.ext1367 = and i64 %325, 4294901760, !dbg !273
  %v_column.sroa.34.0.insert.insert1370 = or disjoint i64 %v_column.sroa.50.0.insert.insert1445, %v_column.sroa.34.0.insert.ext1367, !dbg !273
  %v_column.sroa.0.0.insert.ext1295 = and i64 %v_fetch.sroa.0.2.extract.shift1572, 65535, !dbg !273
  %v_column.sroa.0.0.insert.insert1297 = or disjoint i64 %v_column.sroa.34.0.insert.insert1370, %v_column.sroa.0.0.insert.ext1295, !dbg !273
  store i64 %v_column.sroa.0.0.insert.insert1297, ptr addrspace(3) %gep1100.1.3, align 8, !dbg !273
  %v_fetch.sroa.0.4.extract.shift1581 = lshr i64 %322, 32, !dbg !274
  %336 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 3072), i32 %211, !dbg !272
  %xor581.2.3 = shl nuw nsw i32 %xor580, 3, !dbg !272
  %gep1100.idx.2.3 = xor i32 %xor581.2.3, 16, !dbg !272
  %gep1100.2.3 = getelementptr inbounds i8, ptr addrspace(3) %336, i32 %gep1100.idx.2.3, !dbg !272
  %337 = shl i64 %331, 16, !dbg !273
  %v_column.sroa.66.0.insert.ext1522 = and i64 %337, -281474976710656, !dbg !273
  %v_column.sroa.50.0.insert.ext1447 = and i64 %328, 281470681743360, !dbg !273
  %v_column.sroa.50.0.insert.insert1450 = or disjoint i64 %v_column.sroa.66.0.insert.ext1522, %v_column.sroa.50.0.insert.ext1447, !dbg !273
  %338 = lshr i64 %325, 16, !dbg !273
  %v_column.sroa.34.0.insert.shift1373 = and i64 %338, 4294901760, !dbg !273
  %v_column.sroa.34.0.insert.insert1375 = or disjoint i64 %v_column.sroa.50.0.insert.insert1450, %v_column.sroa.34.0.insert.shift1373, !dbg !273
  %v_column.sroa.0.0.insert.ext1299 = and i64 %v_fetch.sroa.0.4.extract.shift1581, 65535, !dbg !273
  %v_column.sroa.0.0.insert.insert1301 = or disjoint i64 %v_column.sroa.34.0.insert.insert1375, %v_column.sroa.0.0.insert.ext1299, !dbg !273
  store i64 %v_column.sroa.0.0.insert.insert1301, ptr addrspace(3) %gep1100.2.3, align 8, !dbg !273
  %v_fetch.sroa.0.6.extract.shift1590 = lshr i64 %322, 48, !dbg !274
  %v_fetch.sroa.62.30.extract.shift1689 = and i64 %331, -281474976710656, !dbg !273
  %339 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 3584), i32 %211, !dbg !272
  %xor581.3.3 = shl nuw nsw i32 %xor580, 3, !dbg !272
  %gep1100.idx.3.3 = xor i32 %xor581.3.3, 24, !dbg !272
  %gep1100.3.3 = getelementptr inbounds i8, ptr addrspace(3) %339, i32 %gep1100.idx.3.3, !dbg !272
  %340 = lshr i64 %328, 16, !dbg !273
  %v_column.sroa.50.0.insert.shift1453 = and i64 %340, 281470681743360, !dbg !273
  %v_column.sroa.50.0.insert.insert1455 = or disjoint i64 %v_fetch.sroa.62.30.extract.shift1689, %v_column.sroa.50.0.insert.shift1453, !dbg !273
  %341 = lshr i64 %325, 32, !dbg !273
  %v_column.sroa.34.0.insert.shift1378 = and i64 %341, 4294901760, !dbg !273
  %v_column.sroa.34.0.insert.insert1380 = or disjoint i64 %v_column.sroa.50.0.insert.insert1455, %v_column.sroa.34.0.insert.shift1378, !dbg !273
  %v_column.sroa.0.0.insert.insert1305 = or disjoint i64 %v_column.sroa.34.0.insert.insert1380, %v_fetch.sroa.0.6.extract.shift1590, !dbg !273
  store i64 %v_column.sroa.0.0.insert.insert1305, ptr addrspace(3) %gep1100.3.3, align 8, !dbg !273
  fence syncscope("warp") release, !dbg !275
  tail call void @llvm.mxc.barrier.warp(), !dbg !278
  fence syncscope("warp") acquire, !dbg !279
  %add607.31232 = or disjoint i32 %add600, %mul606, !dbg !280
  %342 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add607.31232, !dbg !281
  %gep1102.idx.31233 = shl nuw nsw i32 %212, 3, !dbg !281
  %gep1102.31234 = getelementptr inbounds i8, ptr addrspace(3) %342, i32 %gep1102.idx.31233, !dbg !281
  %343 = load <4 x half>, ptr addrspace(3) %gep1102.31234, align 8, !dbg !282
  %add602.1.3 = or disjoint i32 %add600, %mul606, !dbg !280
  %add607.1.3 = or disjoint i32 %add602.1.3, 64, !dbg !280
  %344 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add607.1.3, !dbg !281
  %xor614.1.3 = shl nuw nsw i32 %212, 3, !dbg !281
  %gep1102.idx.1.3 = xor i32 %xor614.1.3, 8, !dbg !281
  %gep1102.1.3 = getelementptr inbounds i8, ptr addrspace(3) %344, i32 %gep1102.idx.1.3, !dbg !281
  %345 = load <4 x half>, ptr addrspace(3) %gep1102.1.3, align 8, !dbg !282
  %add602.2.3 = or disjoint i32 %add600, %mul606, !dbg !280
  %add607.2.3 = or disjoint i32 %add602.2.3, 128, !dbg !280
  %346 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add607.2.3, !dbg !281
  %xor614.2.3 = shl nuw nsw i32 %212, 3, !dbg !281
  %gep1102.idx.2.3 = xor i32 %xor614.2.3, 16, !dbg !281
  %gep1102.2.3 = getelementptr inbounds i8, ptr addrspace(3) %346, i32 %gep1102.idx.2.3, !dbg !281
  %347 = load <4 x half>, ptr addrspace(3) %gep1102.2.3, align 8, !dbg !282
  %add602.3.3 = or disjoint i32 %add600, %mul606, !dbg !280
  %add607.3.3 = or disjoint i32 %add602.3.3, 192, !dbg !280
  %348 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add607.3.3, !dbg !281
  %xor614.3.3 = shl nuw nsw i32 %212, 3, !dbg !281
  %gep1102.idx.3.3 = xor i32 %xor614.3.3, 24, !dbg !281
  %gep1102.3.3 = getelementptr inbounds i8, ptr addrspace(3) %348, i32 %gep1102.idx.3.3, !dbg !281
  %349 = load <4 x half>, ptr addrspace(3) %gep1102.3.3, align 8, !dbg !282
  %350 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %343, <4 x half> %bc1966, <4 x float> %numerator.sroa.0.2), !dbg !283
  %351 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %345, <4 x half> %bc1966, <4 x float> %numerator.sroa.35.2), !dbg !283
  %352 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %347, <4 x half> %bc1966, <4 x float> %numerator.sroa.68.2), !dbg !283
  %353 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %349, <4 x half> %bc1966, <4 x float> %numerator.sroa.101.2), !dbg !283
  br label %if.end646.3, !dbg !284

if.end646.3:                                      ; preds = %if.then517.3, %if.end646.2
  %numerator.sroa.101.3 = phi <4 x float> [ %numerator.sroa.101.2, %if.end646.2 ], [ %353, %if.then517.3 ], !dbg !101
  %numerator.sroa.68.3 = phi <4 x float> [ %numerator.sroa.68.2, %if.end646.2 ], [ %352, %if.then517.3 ], !dbg !101
  %numerator.sroa.35.3 = phi <4 x float> [ %numerator.sroa.35.2, %if.end646.2 ], [ %351, %if.then517.3 ], !dbg !101
  %numerator.sroa.0.3 = phi <4 x float> [ %numerator.sroa.0.2, %if.end646.2 ], [ %350, %if.then517.3 ], !dbg !101
  %shr651.mask = and i32 %0, 960, !dbg !285
  %cmp652 = icmp eq i32 %shr651.mask, 64, !dbg !285
  br i1 %cmp652, label %for.cond654.preheader, label %if.end673, !dbg !286

if.end673:                                        ; preds = %for.cond654.preheader, %if.end646.3
  fence syncscope("block") release, !dbg !260
  tail call void @llvm.mxc.barrier(), !dbg !287
  fence syncscope("block") acquire, !dbg !288
  br i1 %cmp, label %if.then677, label %if.end865, !dbg !289

if.then677:                                       ; preds = %if.end673
  %add680 = or disjoint i32 %and339.pre-phi, 1568, !dbg !290
  %arrayidx682 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add680, !dbg !291
  %354 = load float, ptr addrspace(3) %arrayidx682, align 4, !dbg !291, !tbaa !146
  %add685 = or i32 %0, 1584, !dbg !292
  %arrayidx687 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add685, !dbg !293
  %355 = load float, ptr addrspace(3) %arrayidx687, align 4, !dbg !293, !tbaa !146
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.3, i64 0, !dbg !294
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.3, i64 1, !dbg !294
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.3, i64 2, !dbg !294
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.3, i64 3, !dbg !294
  %356 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %and534, !dbg !295
  %add.ptr705 = getelementptr inbounds i8, ptr addrspace(3) %356, i32 6400, !dbg !295
  %v__5.sroa.0.0.copyload = load float, ptr addrspace(3) %add.ptr705, align 16, !dbg !296, !tbaa !146
  %v__5.sroa.4.0.add.ptr705.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %356, i32 6404, !dbg !296
  %v__5.sroa.4.0.copyload = load float, ptr addrspace(3) %v__5.sroa.4.0.add.ptr705.sroa_idx, align 4, !dbg !296, !tbaa !146
  %v__5.sroa.5.0.add.ptr705.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %356, i32 6408, !dbg !296
  %v__5.sroa.5.0.copyload = load float, ptr addrspace(3) %v__5.sroa.5.0.add.ptr705.sroa_idx, align 8, !dbg !296, !tbaa !146
  %v__5.sroa.6.0.add.ptr705.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %356, i32 6412, !dbg !296
  %v__5.sroa.6.0.copyload = load float, ptr addrspace(3) %v__5.sroa.6.0.add.ptr705.sroa_idx, align 4, !dbg !296, !tbaa !146
  %add708 = fadd contract float %numerator.sroa.0.0.vec.extract, %v__5.sroa.0.0.copyload, !dbg !297
  %add712 = fadd contract float %numerator.sroa.0.4.vec.extract, %v__5.sroa.4.0.copyload, !dbg !298
  %add716 = fadd contract float %numerator.sroa.0.8.vec.extract, %v__5.sroa.5.0.copyload, !dbg !299
  %add720 = fadd contract float %numerator.sroa.0.12.vec.extract, %v__5.sroa.6.0.copyload, !dbg !300
  %numerator.sroa.35.16.vec.extract = extractelement <4 x float> %numerator.sroa.35.3, i64 0, !dbg !294
  %numerator.sroa.35.20.vec.extract = extractelement <4 x float> %numerator.sroa.35.3, i64 1, !dbg !294
  %numerator.sroa.35.24.vec.extract = extractelement <4 x float> %numerator.sroa.35.3, i64 2, !dbg !294
  %numerator.sroa.35.28.vec.extract = extractelement <4 x float> %numerator.sroa.35.3, i64 3, !dbg !294
  %add702.1 = or disjoint i32 %and534, 256, !dbg !301
  %357 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add702.1, !dbg !295
  %add.ptr705.1 = getelementptr inbounds i8, ptr addrspace(3) %357, i32 6400, !dbg !295
  %v__5.sroa.0.0.copyload.1 = load float, ptr addrspace(3) %add.ptr705.1, align 16, !dbg !296, !tbaa !146
  %v__5.sroa.4.0.add.ptr705.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %357, i32 6404, !dbg !296
  %v__5.sroa.4.0.copyload.1 = load float, ptr addrspace(3) %v__5.sroa.4.0.add.ptr705.sroa_idx.1, align 4, !dbg !296, !tbaa !146
  %v__5.sroa.5.0.add.ptr705.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %357, i32 6408, !dbg !296
  %v__5.sroa.5.0.copyload.1 = load float, ptr addrspace(3) %v__5.sroa.5.0.add.ptr705.sroa_idx.1, align 8, !dbg !296, !tbaa !146
  %v__5.sroa.6.0.add.ptr705.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %357, i32 6412, !dbg !296
  %v__5.sroa.6.0.copyload.1 = load float, ptr addrspace(3) %v__5.sroa.6.0.add.ptr705.sroa_idx.1, align 4, !dbg !296, !tbaa !146
  %add708.1 = fadd contract float %numerator.sroa.35.16.vec.extract, %v__5.sroa.0.0.copyload.1, !dbg !297
  %add712.1 = fadd contract float %numerator.sroa.35.20.vec.extract, %v__5.sroa.4.0.copyload.1, !dbg !298
  %add716.1 = fadd contract float %numerator.sroa.35.24.vec.extract, %v__5.sroa.5.0.copyload.1, !dbg !299
  %add720.1 = fadd contract float %numerator.sroa.35.28.vec.extract, %v__5.sroa.6.0.copyload.1, !dbg !300
  %numerator.sroa.68.32.vec.extract = extractelement <4 x float> %numerator.sroa.68.3, i64 0, !dbg !294
  %numerator.sroa.68.36.vec.extract = extractelement <4 x float> %numerator.sroa.68.3, i64 1, !dbg !294
  %numerator.sroa.68.40.vec.extract = extractelement <4 x float> %numerator.sroa.68.3, i64 2, !dbg !294
  %numerator.sroa.68.44.vec.extract = extractelement <4 x float> %numerator.sroa.68.3, i64 3, !dbg !294
  %add702.2 = or disjoint i32 %and534, 512, !dbg !301
  %358 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add702.2, !dbg !295
  %add.ptr705.2 = getelementptr inbounds i8, ptr addrspace(3) %358, i32 6400, !dbg !295
  %v__5.sroa.0.0.copyload.2 = load float, ptr addrspace(3) %add.ptr705.2, align 16, !dbg !296, !tbaa !146
  %v__5.sroa.4.0.add.ptr705.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %358, i32 6404, !dbg !296
  %v__5.sroa.4.0.copyload.2 = load float, ptr addrspace(3) %v__5.sroa.4.0.add.ptr705.sroa_idx.2, align 4, !dbg !296, !tbaa !146
  %v__5.sroa.5.0.add.ptr705.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %358, i32 6408, !dbg !296
  %v__5.sroa.5.0.copyload.2 = load float, ptr addrspace(3) %v__5.sroa.5.0.add.ptr705.sroa_idx.2, align 8, !dbg !296, !tbaa !146
  %v__5.sroa.6.0.add.ptr705.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %358, i32 6412, !dbg !296
  %v__5.sroa.6.0.copyload.2 = load float, ptr addrspace(3) %v__5.sroa.6.0.add.ptr705.sroa_idx.2, align 4, !dbg !296, !tbaa !146
  %add708.2 = fadd contract float %numerator.sroa.68.32.vec.extract, %v__5.sroa.0.0.copyload.2, !dbg !297
  %add712.2 = fadd contract float %numerator.sroa.68.36.vec.extract, %v__5.sroa.4.0.copyload.2, !dbg !298
  %add716.2 = fadd contract float %numerator.sroa.68.40.vec.extract, %v__5.sroa.5.0.copyload.2, !dbg !299
  %add720.2 = fadd contract float %numerator.sroa.68.44.vec.extract, %v__5.sroa.6.0.copyload.2, !dbg !300
  %numerator.sroa.101.48.vec.extract = extractelement <4 x float> %numerator.sroa.101.3, i64 0, !dbg !294
  %numerator.sroa.101.52.vec.extract = extractelement <4 x float> %numerator.sroa.101.3, i64 1, !dbg !294
  %numerator.sroa.101.56.vec.extract = extractelement <4 x float> %numerator.sroa.101.3, i64 2, !dbg !294
  %numerator.sroa.101.60.vec.extract = extractelement <4 x float> %numerator.sroa.101.3, i64 3, !dbg !294
  %add702.3 = or disjoint i32 %and534, 768, !dbg !301
  %359 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add702.3, !dbg !295
  %add.ptr705.3 = getelementptr inbounds i8, ptr addrspace(3) %359, i32 6400, !dbg !295
  %v__5.sroa.0.0.copyload.3 = load float, ptr addrspace(3) %add.ptr705.3, align 16, !dbg !296, !tbaa !146
  %v__5.sroa.4.0.add.ptr705.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %359, i32 6404, !dbg !296
  %v__5.sroa.4.0.copyload.3 = load float, ptr addrspace(3) %v__5.sroa.4.0.add.ptr705.sroa_idx.3, align 4, !dbg !296, !tbaa !146
  %v__5.sroa.5.0.add.ptr705.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %359, i32 6408, !dbg !296
  %v__5.sroa.5.0.copyload.3 = load float, ptr addrspace(3) %v__5.sroa.5.0.add.ptr705.sroa_idx.3, align 8, !dbg !296, !tbaa !146
  %v__5.sroa.6.0.add.ptr705.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %359, i32 6412, !dbg !296
  %v__5.sroa.6.0.copyload.3 = load float, ptr addrspace(3) %v__5.sroa.6.0.add.ptr705.sroa_idx.3, align 4, !dbg !296, !tbaa !146
  %add708.3 = fadd contract float %numerator.sroa.101.48.vec.extract, %v__5.sroa.0.0.copyload.3, !dbg !297
  %add712.3 = fadd contract float %numerator.sroa.101.52.vec.extract, %v__5.sroa.4.0.copyload.3, !dbg !298
  %add716.3 = fadd contract float %numerator.sroa.101.56.vec.extract, %v__5.sroa.5.0.copyload.3, !dbg !299
  %add720.3 = fadd contract float %numerator.sroa.101.60.vec.extract, %v__5.sroa.6.0.copyload.3, !dbg !300
  %add688 = fadd contract float %354, %355, !dbg !302
  %div = fdiv contract float %add708, %add688, !dbg !303
  %div747 = fdiv contract float %add712, %add688, !dbg !304
  %div751 = fdiv contract float %add716, %add688, !dbg !305
  %div755 = fdiv contract float %add720, %add688, !dbg !306
  %div.1 = fdiv contract float %add708.1, %add688, !dbg !303
  %div747.1 = fdiv contract float %add712.1, %add688, !dbg !304
  %div751.1 = fdiv contract float %add716.1, %add688, !dbg !305
  %div755.1 = fdiv contract float %add720.1, %add688, !dbg !306
  %div.2 = fdiv contract float %add708.2, %add688, !dbg !303
  %div747.2 = fdiv contract float %add712.2, %add688, !dbg !304
  %div751.2 = fdiv contract float %add716.2, %add688, !dbg !305
  %div755.2 = fdiv contract float %add720.2, %add688, !dbg !306
  %div.3 = fdiv contract float %add708.3, %add688, !dbg !303
  %div747.3 = fdiv contract float %add712.3, %add688, !dbg !304
  %div751.3 = fdiv contract float %add716.3, %add688, !dbg !305
  %div755.3 = fdiv contract float %add720.3, %add688, !dbg !306
  fence syncscope("warp") release, !dbg !307
  tail call void @llvm.mxc.barrier.warp(), !dbg !310
  fence syncscope("warp") acquire, !dbg !311
  %xor805 = shl nuw nsw i32 %11, 2
  %mul806 = and i32 %xor805, 4
  %360 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !312, !noalias !316
  %361 = fptrunc float %div to half, !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %360), !dbg !312, !noalias !316
  %362 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !321, !noalias !316
  %363 = fptrunc float %div747 to half, !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %362), !dbg !321, !noalias !316
  %364 = bitcast half %361 to i16, !dbg !323
  %365 = bitcast half %363 to i16, !dbg !326
  %366 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !327
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !327, !noalias !331
  %367 = fptrunc float %div751 to half, !dbg !327
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %366), !dbg !327, !noalias !331
  %368 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !336
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !336, !noalias !331
  %369 = fptrunc float %div755 to half, !dbg !336
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %368), !dbg !336, !noalias !331
  %370 = bitcast half %367 to i16, !dbg !338
  %371 = bitcast half %369 to i16, !dbg !340
  %__8.sroa.6.0.insert.ext = zext i16 %371 to i64, !dbg !341
  %__8.sroa.6.0.insert.shift = shl nuw i64 %__8.sroa.6.0.insert.ext, 48, !dbg !341
  %__8.sroa.5.0.insert.ext = zext i16 %370 to i64, !dbg !341
  %__8.sroa.5.0.insert.shift = shl nuw nsw i64 %__8.sroa.5.0.insert.ext, 32, !dbg !341
  %__8.sroa.5.0.insert.insert = or disjoint i64 %__8.sroa.6.0.insert.shift, %__8.sroa.5.0.insert.shift, !dbg !341
  %__8.sroa.4.0.insert.ext = zext i16 %365 to i64, !dbg !341
  %__8.sroa.4.0.insert.shift = shl nuw nsw i64 %__8.sroa.4.0.insert.ext, 16, !dbg !341
  %__8.sroa.4.0.insert.insert = or disjoint i64 %__8.sroa.5.0.insert.insert, %__8.sroa.4.0.insert.shift, !dbg !341
  %__8.sroa.0.0.insert.ext = zext i16 %364 to i64, !dbg !341
  %__8.sroa.0.0.insert.insert = or disjoint i64 %__8.sroa.4.0.insert.insert, %__8.sroa.0.0.insert.ext, !dbg !341
  %xor796 = xor i32 %and58, %and62, !dbg !342
  %mul797 = shl nuw nsw i32 %xor796, 3, !dbg !343
  %add798 = or disjoint i32 %mul797, %mul55, !dbg !344
  %add807 = or disjoint i32 %add798, %mul806, !dbg !345
  %add.ptr809 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add807, !dbg !346
  store i64 %__8.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr809, align 8, !dbg !347
  %372 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !312, !noalias !316
  %373 = fptrunc float %div.1 to half, !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %372), !dbg !312, !noalias !316
  %374 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !321, !noalias !316
  %375 = fptrunc float %div747.1 to half, !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %374), !dbg !321, !noalias !316
  %376 = bitcast half %373 to i16, !dbg !323
  %377 = bitcast half %375 to i16, !dbg !326
  %378 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !327
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !327, !noalias !331
  %379 = fptrunc float %div751.1 to half, !dbg !327
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %378), !dbg !327, !noalias !331
  %380 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !336
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !336, !noalias !331
  %381 = fptrunc float %div755.1 to half, !dbg !336
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %380), !dbg !336, !noalias !331
  %382 = bitcast half %379 to i16, !dbg !338
  %383 = bitcast half %381 to i16, !dbg !340
  %__8.sroa.6.0.insert.ext.1 = zext i16 %383 to i64, !dbg !341
  %__8.sroa.6.0.insert.shift.1 = shl nuw i64 %__8.sroa.6.0.insert.ext.1, 48, !dbg !341
  %__8.sroa.5.0.insert.ext.1 = zext i16 %382 to i64, !dbg !341
  %__8.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.1, 32, !dbg !341
  %__8.sroa.5.0.insert.insert.1 = or disjoint i64 %__8.sroa.6.0.insert.shift.1, %__8.sroa.5.0.insert.shift.1, !dbg !341
  %__8.sroa.4.0.insert.ext.1 = zext i16 %377 to i64, !dbg !341
  %__8.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.1, 16, !dbg !341
  %__8.sroa.4.0.insert.insert.1 = or disjoint i64 %__8.sroa.5.0.insert.insert.1, %__8.sroa.4.0.insert.shift.1, !dbg !341
  %__8.sroa.0.0.insert.ext.1 = zext i16 %376 to i64, !dbg !341
  %__8.sroa.0.0.insert.insert.1 = or disjoint i64 %__8.sroa.4.0.insert.insert.1, %__8.sroa.0.0.insert.ext.1, !dbg !341
  %add793.1 = or disjoint i32 %and58, 2, !dbg !348
  %xor796.1 = xor i32 %add793.1, %and62, !dbg !342
  %mul797.1 = shl nuw nsw i32 %xor796.1, 3, !dbg !343
  %add798.1 = or disjoint i32 %mul797.1, %mul55, !dbg !344
  %add807.1 = or disjoint i32 %add798.1, %mul806, !dbg !345
  %add.ptr809.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add807.1, !dbg !346
  store i64 %__8.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr809.1, align 8, !dbg !347
  %384 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !312, !noalias !316
  %385 = fptrunc float %div.2 to half, !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %384), !dbg !312, !noalias !316
  %386 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !321, !noalias !316
  %387 = fptrunc float %div747.2 to half, !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %386), !dbg !321, !noalias !316
  %388 = bitcast half %385 to i16, !dbg !323
  %389 = bitcast half %387 to i16, !dbg !326
  %390 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !327
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !327, !noalias !331
  %391 = fptrunc float %div751.2 to half, !dbg !327
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %390), !dbg !327, !noalias !331
  %392 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !336
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !336, !noalias !331
  %393 = fptrunc float %div755.2 to half, !dbg !336
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %392), !dbg !336, !noalias !331
  %394 = bitcast half %391 to i16, !dbg !338
  %395 = bitcast half %393 to i16, !dbg !340
  %__8.sroa.6.0.insert.ext.2 = zext i16 %395 to i64, !dbg !341
  %__8.sroa.6.0.insert.shift.2 = shl nuw i64 %__8.sroa.6.0.insert.ext.2, 48, !dbg !341
  %__8.sroa.5.0.insert.ext.2 = zext i16 %394 to i64, !dbg !341
  %__8.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.2, 32, !dbg !341
  %__8.sroa.5.0.insert.insert.2 = or disjoint i64 %__8.sroa.6.0.insert.shift.2, %__8.sroa.5.0.insert.shift.2, !dbg !341
  %__8.sroa.4.0.insert.ext.2 = zext i16 %389 to i64, !dbg !341
  %__8.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.2, 16, !dbg !341
  %__8.sroa.4.0.insert.insert.2 = or disjoint i64 %__8.sroa.5.0.insert.insert.2, %__8.sroa.4.0.insert.shift.2, !dbg !341
  %__8.sroa.0.0.insert.ext.2 = zext i16 %388 to i64, !dbg !341
  %__8.sroa.0.0.insert.insert.2 = or disjoint i64 %__8.sroa.4.0.insert.insert.2, %__8.sroa.0.0.insert.ext.2, !dbg !341
  %add793.2 = or disjoint i32 %and58, 4, !dbg !348
  %xor796.2 = xor i32 %add793.2, %and62, !dbg !342
  %mul797.2 = shl nuw nsw i32 %xor796.2, 3, !dbg !343
  %add798.2 = or disjoint i32 %mul797.2, %mul55, !dbg !344
  %add807.2 = or disjoint i32 %add798.2, %mul806, !dbg !345
  %add.ptr809.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add807.2, !dbg !346
  store i64 %__8.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr809.2, align 8, !dbg !347
  %396 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !312, !noalias !316
  %397 = fptrunc float %div.3 to half, !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %396), !dbg !312, !noalias !316
  %398 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !321, !noalias !316
  %399 = fptrunc float %div747.3 to half, !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %398), !dbg !321, !noalias !316
  %400 = bitcast half %397 to i16, !dbg !323
  %401 = bitcast half %399 to i16, !dbg !326
  %402 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !327
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !327, !noalias !331
  %403 = fptrunc float %div751.3 to half, !dbg !327
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %402), !dbg !327, !noalias !331
  %404 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !336
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !336, !noalias !331
  %405 = fptrunc float %div755.3 to half, !dbg !336
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %404), !dbg !336, !noalias !331
  %406 = bitcast half %403 to i16, !dbg !338
  %407 = bitcast half %405 to i16, !dbg !340
  %__8.sroa.6.0.insert.ext.3 = zext i16 %407 to i64, !dbg !341
  %__8.sroa.6.0.insert.shift.3 = shl nuw i64 %__8.sroa.6.0.insert.ext.3, 48, !dbg !341
  %__8.sroa.5.0.insert.ext.3 = zext i16 %406 to i64, !dbg !341
  %__8.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.3, 32, !dbg !341
  %__8.sroa.5.0.insert.insert.3 = or disjoint i64 %__8.sroa.6.0.insert.shift.3, %__8.sroa.5.0.insert.shift.3, !dbg !341
  %__8.sroa.4.0.insert.ext.3 = zext i16 %401 to i64, !dbg !341
  %__8.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.3, 16, !dbg !341
  %__8.sroa.4.0.insert.insert.3 = or disjoint i64 %__8.sroa.5.0.insert.insert.3, %__8.sroa.4.0.insert.shift.3, !dbg !341
  %__8.sroa.0.0.insert.ext.3 = zext i16 %400 to i64, !dbg !341
  %__8.sroa.0.0.insert.insert.3 = or disjoint i64 %__8.sroa.4.0.insert.insert.3, %__8.sroa.0.0.insert.ext.3, !dbg !341
  %add793.3 = or disjoint i32 %and58, 6, !dbg !348
  %xor796.3 = xor i32 %add793.3, %and62, !dbg !342
  %mul797.3 = shl nuw nsw i32 %xor796.3, 3, !dbg !343
  %add798.3 = or disjoint i32 %mul797.3, %mul55, !dbg !344
  %add807.3 = or disjoint i32 %add798.3, %mul806, !dbg !345
  %add.ptr809.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add807.3, !dbg !346
  store i64 %__8.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr809.3, align 8, !dbg !347
  fence syncscope("warp") release, !dbg !349
  tail call void @llvm.mxc.barrier.warp(), !dbg !352
  fence syncscope("warp") acquire, !dbg !353
  %mul850 = shl nsw i32 %.pre-phi, 20
  %mul852 = shl nsw i32 %1, 10
  %add853 = add nuw nsw i32 %mul850, %mul852
  %408 = zext nneg i32 %add853 to i64, !dbg !354
  %409 = zext nneg i32 %and154.pre-phi to i64, !dbg !354
  %410 = or disjoint i32 %mul177.pre-phi, %mul185.pre-phi
  %add.ptr839 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %410, !dbg !355
  %411 = load i64, ptr addrspace(3) %add.ptr839, align 16, !dbg !356
  %add.ptr839.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 8), i32 %410, !dbg !355
  %412 = load i64, ptr addrspace(3) %add.ptr839.1, align 8, !dbg !356
  %413 = or disjoint i64 %408, %409, !dbg !357
  %add.ptr861 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %413, !dbg !358
  store i64 %411, ptr addrspace(1) %add.ptr861, align 16, !dbg !359
  %output_fetch.sroa.6.0.add.ptr861.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr861, i64 8, !dbg !359
  store i64 %412, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr861.sroa_idx, align 8, !dbg !359
  %414 = or disjoint i32 %mul177.pre-phi, %mul185.pre-phi
  %415 = or disjoint i32 %414, 512
  %add.ptr839.11243 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 8), i32 %415, !dbg !355
  %416 = load i64, ptr addrspace(3) %add.ptr839.11243, align 8, !dbg !356
  %add.ptr839.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %415, !dbg !355
  %417 = load i64, ptr addrspace(3) %add.ptr839.1.1, align 16, !dbg !356
  %418 = or i64 %408, %409, !dbg !357
  %419 = or i64 %418, 512, !dbg !357
  %add.ptr861.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %419, !dbg !358
  store i64 %416, ptr addrspace(1) %add.ptr861.1, align 16, !dbg !359
  %output_fetch.sroa.6.0.add.ptr861.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr861.1, i64 8, !dbg !359
  store i64 %417, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr861.1.sroa_idx, align 8, !dbg !359
  br label %if.end865, !dbg !360

if.end865:                                        ; preds = %if.then677, %if.end673
  ret void, !dbg !360
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
declare void @llvm.mxc.barrier() #6

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
attributes #3 = { convergent mustprogress norecurse nounwind willreturn "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-implicitarg-num-bytes"="80" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="128" "metaxgpu-min-blocks"="1" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" "uniform-work-group-size"="true" }
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v124_worker1_c12_lane_contiguous_partial_num_sc-16g-2/codegen/candidate124/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v124_worker1_c12_lane_contiguous_partial_num_sc-16g-2/codegen/candidate124/case12.device.cpp", directory: "/root/tilelang-metax")
!42 = !DILocation(line: 67, column: 3, scope: !43, inlinedAt: !45)
!43 = distinct !DISubprogram(name: "__fetch_builtin_x", scope: !44, file: !44, line: 67, type: !7, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!44 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_builtin_vars.h", directory: "")
!45 = distinct !DILocation(line: 25, column: 14, scope: !40)
!46 = !{i32 0, i32 1024}
!47 = !DILocation(line: 25, column: 33, scope: !40)
!48 = !DILocation(line: 25, column: 7, scope: !40)
!49 = !DILocation(line: 27, column: 5, scope: !40)
!50 = !DILocation(line: 28, column: 45, scope: !40)
!51 = !DILocation(line: 28, column: 31, scope: !40)
!52 = !DILocation(line: 31, column: 44, scope: !40)
!53 = !DILocation(line: 31, column: 237, scope: !40)
!54 = !DILocation(line: 28, column: 126, scope: !40)
!55 = !DILocation(line: 60, column: 3, scope: !56, inlinedAt: !58)
!56 = distinct !DISubprogram(name: "__barrier", scope: !57, file: !57, line: 57, type: !7, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!57 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!58 = distinct !DILocation(line: 74, column: 3, scope: !59, inlinedAt: !60)
!59 = distinct !DISubprogram(name: "__syncthreads", scope: !57, file: !57, line: 73, type: !7, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!60 = distinct !DILocation(line: 35, column: 3, scope: !40)
!61 = !DILocation(line: 61, column: 3, scope: !56, inlinedAt: !58)
!62 = !DILocation(line: 62, column: 3, scope: !56, inlinedAt: !58)
!63 = !DILocation(line: 38, column: 165, scope: !40)
!64 = !DILocation(line: 38, column: 193, scope: !40)
!65 = !DILocation(line: 38, column: 112, scope: !40)
!66 = !DILocation(line: 38, column: 199, scope: !40)
!67 = !DILocation(line: 38, column: 75, scope: !40)
!68 = !DILocation(line: 38, column: 38, scope: !40)
!69 = !DILocation(line: 38, column: 129, scope: !40)
!70 = !DILocation(line: 52, column: 3, scope: !40)
!71 = !DILocation(line: 53, column: 21, scope: !40)
!72 = !DILocation(line: 54, column: 27, scope: !40)
!73 = !DILocation(line: 68, column: 3, scope: !74, inlinedAt: !75)
!74 = distinct !DISubprogram(name: "__barrier_warp", scope: !57, file: !57, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!75 = distinct !DILocation(line: 192, column: 3, scope: !76, inlinedAt: !77)
!76 = distinct !DISubprogram(name: "__syncwarp", scope: !57, file: !57, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!77 = distinct !DILocation(line: 55, column: 7, scope: !40)
!78 = !DILocation(line: 69, column: 3, scope: !74, inlinedAt: !75)
!79 = !DILocation(line: 70, column: 3, scope: !74, inlinedAt: !75)
!80 = !DILocation(line: 57, column: 7, scope: !40)
!81 = !DILocation(line: 58, column: 47, scope: !40)
!82 = !DILocation(line: 58, column: 33, scope: !40)
!83 = !DILocation(line: 61, column: 46, scope: !40)
!84 = !DILocation(line: 61, column: 293, scope: !40)
!85 = !DILocation(line: 58, column: 120, scope: !40)
!86 = !DILocation(line: 68, column: 3, scope: !74, inlinedAt: !87)
!87 = distinct !DILocation(line: 192, column: 3, scope: !76, inlinedAt: !88)
!88 = distinct !DILocation(line: 64, column: 7, scope: !40)
!89 = !DILocation(line: 69, column: 3, scope: !74, inlinedAt: !87)
!90 = !DILocation(line: 70, column: 3, scope: !74, inlinedAt: !87)
!91 = !DILocation(line: 71, column: 146, scope: !40)
!92 = !DILocation(line: 71, column: 235, scope: !40)
!93 = !DILocation(line: 71, column: 69, scope: !40)
!94 = !DILocation(line: 71, column: 32, scope: !40)
!95 = !DILocation(line: 73, column: 44, scope: !40)
!96 = !DILocation(line: 81, column: 88, scope: !40)
!97 = !DILocation(line: 81, column: 13, scope: !40)
!98 = !DILocation(line: 86, column: 46, scope: !40)
!99 = !DILocation(line: 81, column: 75, scope: !40)
!100 = !DILocation(line: 52, column: 40, scope: !40)
!101 = !DILocation(line: 0, scope: !40)
!102 = !DILocation(line: 53, column: 121, scope: !40)
!103 = !DILocation(line: 93, column: 34, scope: !40)
!104 = !DILocation(line: 351, column: 10, scope: !105, inlinedAt: !107)
!105 = distinct !DISubprogram(name: "max", scope: !106, file: !106, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!106 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!107 = distinct !DILocation(line: 93, column: 18, scope: !40)
!108 = !DILocation(line: 1018, column: 9, scope: !109, inlinedAt: !110)
!109 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !57, file: !57, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!110 = distinct !DILocation(line: 95, column: 32, scope: !40)
!111 = !DILocation(line: 171, column: 37, scope: !112, inlinedAt: !113)
!112 = distinct !DISubprogram(name: "__lane_id", scope: !57, file: !57, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!113 = distinct !DILocation(line: 990, column: 14, scope: !114, inlinedAt: !115)
!114 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !57, file: !57, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!115 = distinct !DILocation(line: 1019, column: 11, scope: !109, inlinedAt: !110)
!116 = !DILocation(line: 171, column: 10, scope: !112, inlinedAt: !113)
!117 = !DILocation(line: 991, column: 20, scope: !114, inlinedAt: !115)
!118 = !DILocation(line: 992, column: 36, scope: !114, inlinedAt: !115)
!119 = !DILocation(line: 992, column: 17, scope: !114, inlinedAt: !115)
!120 = !DILocation(line: 992, column: 11, scope: !114, inlinedAt: !115)
!121 = !DILocation(line: 993, column: 43, scope: !114, inlinedAt: !115)
!122 = !DILocation(line: 993, column: 10, scope: !114, inlinedAt: !115)
!123 = !DILocation(line: 1020, column: 14, scope: !109, inlinedAt: !110)
!124 = !DILocation(line: 351, column: 10, scope: !105, inlinedAt: !125)
!125 = distinct !DILocation(line: 95, column: 16, scope: !40)
!126 = !DILocation(line: 1018, column: 9, scope: !109, inlinedAt: !127)
!127 = distinct !DILocation(line: 96, column: 32, scope: !40)
!128 = !DILocation(line: 171, column: 37, scope: !112, inlinedAt: !129)
!129 = distinct !DILocation(line: 990, column: 14, scope: !114, inlinedAt: !130)
!130 = distinct !DILocation(line: 1019, column: 11, scope: !109, inlinedAt: !127)
!131 = !DILocation(line: 171, column: 10, scope: !112, inlinedAt: !129)
!132 = !DILocation(line: 991, column: 20, scope: !114, inlinedAt: !130)
!133 = !DILocation(line: 992, column: 36, scope: !114, inlinedAt: !130)
!134 = !DILocation(line: 992, column: 17, scope: !114, inlinedAt: !130)
!135 = !DILocation(line: 992, column: 11, scope: !114, inlinedAt: !130)
!136 = !DILocation(line: 993, column: 43, scope: !114, inlinedAt: !130)
!137 = !DILocation(line: 993, column: 10, scope: !114, inlinedAt: !130)
!138 = !DILocation(line: 97, column: 27, scope: !40)
!139 = !DILocation(line: 97, column: 33, scope: !40)
!140 = !DILocation(line: 97, column: 7, scope: !40)
!141 = !DILocation(line: 101, column: 65, scope: !40)
!142 = !DILocation(line: 1020, column: 14, scope: !109, inlinedAt: !127)
!143 = !DILocation(line: 351, column: 10, scope: !105, inlinedAt: !144)
!144 = distinct !DILocation(line: 96, column: 16, scope: !40)
!145 = !DILocation(line: 98, column: 102, scope: !40)
!146 = !{!147, !147, i64 0}
!147 = !{!"float", !19, i64 0}
!148 = !DILocation(line: 99, column: 3, scope: !40)
!149 = !DILocation(line: 60, column: 3, scope: !56, inlinedAt: !150)
!150 = distinct !DILocation(line: 74, column: 3, scope: !59, inlinedAt: !151)
!151 = distinct !DILocation(line: 100, column: 3, scope: !40)
!152 = !DILocation(line: 61, column: 3, scope: !56, inlinedAt: !150)
!153 = !DILocation(line: 62, column: 3, scope: !56, inlinedAt: !150)
!154 = !DILocation(line: 101, column: 71, scope: !40)
!155 = !DILocation(line: 101, column: 20, scope: !40)
!156 = !DILocation(line: 101, column: 132, scope: !40)
!157 = !DILocation(line: 101, column: 81, scope: !40)
!158 = !DILocation(line: 351, column: 10, scope: !105, inlinedAt: !159)
!159 = distinct !DILocation(line: 101, column: 16, scope: !40)
!160 = !DILocation(line: 102, column: 21, scope: !40)
!161 = !DILocation(line: 102, column: 7, scope: !40)
!162 = !DILocation(line: 112, column: 25, scope: !40)
!163 = !DILocation(line: 114, column: 26, scope: !40)
!164 = !DILocation(line: 115, column: 26, scope: !40)
!165 = !DILocation(line: 116, column: 26, scope: !40)
!166 = !DILocation(line: 117, column: 26, scope: !40)
!167 = !DILocation(line: 119, column: 25, scope: !40)
!168 = !DILocation(line: 120, column: 25, scope: !40)
!169 = !DILocation(line: 121, column: 25, scope: !40)
!170 = !DILocation(line: 122, column: 25, scope: !40)
!171 = !DILocation(line: 124, column: 23, scope: !40)
!172 = !DILocation(line: 125, column: 23, scope: !40)
!173 = !DILocation(line: 126, column: 23, scope: !40)
!174 = !DILocation(line: 127, column: 23, scope: !40)
!175 = !DILocation(line: 285, column: 49, scope: !176, inlinedAt: !177)
!176 = distinct !DISubprogram(name: "exp2f", scope: !106, file: !106, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!177 = distinct !DILocation(line: 128, column: 15, scope: !40)
!178 = !DILocation(line: 285, column: 49, scope: !176, inlinedAt: !179)
!179 = distinct !DILocation(line: 129, column: 15, scope: !40)
!180 = !DILocation(line: 285, column: 49, scope: !176, inlinedAt: !181)
!181 = distinct !DILocation(line: 130, column: 15, scope: !40)
!182 = !DILocation(line: 285, column: 49, scope: !176, inlinedAt: !183)
!183 = distinct !DILocation(line: 131, column: 15, scope: !40)
!184 = !DILocation(line: 1007, column: 10, scope: !185, inlinedAt: !187)
!185 = distinct !DISubprogram(name: "__float2half_rn", scope: !186, file: !186, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!186 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!187 = distinct !DILocation(line: 1077, column: 18, scope: !188, inlinedAt: !189)
!188 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !186, file: !186, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!189 = distinct !DILocation(line: 1295, column: 23, scope: !190, inlinedAt: !191)
!190 = distinct !DISubprogram(name: "__float22half2_rn", scope: !186, file: !186, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!191 = distinct !DILocation(line: 132, column: 29, scope: !40)
!192 = !{!193, !195}
!193 = distinct !{!193, !194, !"_ZL17__floats2half2_rnff: %agg.result"}
!194 = distinct !{!194, !"_ZL17__floats2half2_rnff"}
!195 = distinct !{!195, !196, !"_ZL17__float22half2_rn6float2: %agg.result"}
!196 = distinct !{!196, !"_ZL17__float22half2_rn6float2"}
!197 = !DILocation(line: 1007, column: 10, scope: !185, inlinedAt: !198)
!198 = distinct !DILocation(line: 1077, column: 38, scope: !188, inlinedAt: !189)
!199 = !DILocation(line: 1007, column: 10, scope: !185, inlinedAt: !200)
!200 = distinct !DILocation(line: 1077, column: 18, scope: !188, inlinedAt: !201)
!201 = distinct !DILocation(line: 1295, column: 23, scope: !190, inlinedAt: !202)
!202 = distinct !DILocation(line: 133, column: 29, scope: !40)
!203 = !{!204, !206}
!204 = distinct !{!204, !205, !"_ZL17__floats2half2_rnff: %agg.result"}
!205 = distinct !{!205, !"_ZL17__floats2half2_rnff"}
!206 = distinct !{!206, !207, !"_ZL17__float22half2_rn6float2: %agg.result"}
!207 = distinct !{!207, !"_ZL17__float22half2_rn6float2"}
!208 = !DILocation(line: 1007, column: 10, scope: !185, inlinedAt: !209)
!209 = distinct !DILocation(line: 1077, column: 38, scope: !188, inlinedAt: !201)
!210 = !DILocation(line: 134, column: 51, scope: !40)
!211 = !DILocation(line: 138, column: 3, scope: !40)
!212 = !DILocation(line: 139, column: 48, scope: !40)
!213 = !DILocation(line: 1082, column: 16, scope: !214, inlinedAt: !215)
!214 = distinct !DISubprogram(name: "__half2float", scope: !186, file: !186, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!215 = distinct !DILocation(line: 136, column: 55, scope: !216, inlinedAt: !217)
!216 = distinct !DISubprogram(name: "operator float", scope: !186, file: !186, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!217 = distinct !DILocation(line: 139, column: 48, scope: !40)
!218 = !DILocation(line: 139, column: 38, scope: !40)
!219 = !DILocation(line: 1018, column: 9, scope: !109, inlinedAt: !220)
!220 = distinct !DILocation(line: 141, column: 38, scope: !40)
!221 = !DILocation(line: 171, column: 37, scope: !112, inlinedAt: !222)
!222 = distinct !DILocation(line: 990, column: 14, scope: !114, inlinedAt: !223)
!223 = distinct !DILocation(line: 1019, column: 11, scope: !109, inlinedAt: !220)
!224 = !DILocation(line: 171, column: 10, scope: !112, inlinedAt: !222)
!225 = !DILocation(line: 991, column: 20, scope: !114, inlinedAt: !223)
!226 = !DILocation(line: 992, column: 36, scope: !114, inlinedAt: !223)
!227 = !DILocation(line: 992, column: 17, scope: !114, inlinedAt: !223)
!228 = !DILocation(line: 992, column: 11, scope: !114, inlinedAt: !223)
!229 = !DILocation(line: 993, column: 43, scope: !114, inlinedAt: !223)
!230 = !DILocation(line: 993, column: 10, scope: !114, inlinedAt: !223)
!231 = !DILocation(line: 1020, column: 14, scope: !109, inlinedAt: !220)
!232 = !DILocation(line: 141, column: 36, scope: !40)
!233 = !DILocation(line: 1018, column: 9, scope: !109, inlinedAt: !234)
!234 = distinct !DILocation(line: 142, column: 38, scope: !40)
!235 = !DILocation(line: 171, column: 37, scope: !112, inlinedAt: !236)
!236 = distinct !DILocation(line: 990, column: 14, scope: !114, inlinedAt: !237)
!237 = distinct !DILocation(line: 1019, column: 11, scope: !109, inlinedAt: !234)
!238 = !DILocation(line: 171, column: 10, scope: !112, inlinedAt: !236)
!239 = !DILocation(line: 991, column: 20, scope: !114, inlinedAt: !237)
!240 = !DILocation(line: 992, column: 36, scope: !114, inlinedAt: !237)
!241 = !DILocation(line: 992, column: 17, scope: !114, inlinedAt: !237)
!242 = !DILocation(line: 992, column: 11, scope: !114, inlinedAt: !237)
!243 = !DILocation(line: 993, column: 43, scope: !114, inlinedAt: !237)
!244 = !DILocation(line: 993, column: 10, scope: !114, inlinedAt: !237)
!245 = !DILocation(line: 143, column: 7, scope: !40)
!246 = !DILocation(line: 1020, column: 14, scope: !109, inlinedAt: !234)
!247 = !DILocation(line: 144, column: 102, scope: !40)
!248 = !DILocation(line: 145, column: 3, scope: !40)
!249 = !DILocation(line: 60, column: 3, scope: !56, inlinedAt: !250)
!250 = distinct !DILocation(line: 74, column: 3, scope: !59, inlinedAt: !251)
!251 = distinct !DILocation(line: 146, column: 3, scope: !40)
!252 = !DILocation(line: 61, column: 3, scope: !56, inlinedAt: !250)
!253 = !DILocation(line: 62, column: 3, scope: !56, inlinedAt: !250)
!254 = !DILocation(line: 153, column: 3, scope: !40)
!255 = !DILocation(line: 154, column: 23, scope: !40)
!256 = !DILocation(line: 155, column: 29, scope: !40)
!257 = !DILocation(line: 186, column: 42, scope: !40)
!258 = !DILocation(line: 186, column: 106, scope: !40)
!259 = !DILocation(line: 186, column: 62, scope: !40)
!260 = !DILocation(line: 60, column: 3, scope: !56, inlinedAt: !261)
!261 = distinct !DILocation(line: 74, column: 3, scope: !59, inlinedAt: !262)
!262 = distinct !DILocation(line: 189, column: 3, scope: !40)
!263 = !DILocation(line: 68, column: 3, scope: !74, inlinedAt: !264)
!264 = distinct !DILocation(line: 192, column: 3, scope: !76, inlinedAt: !265)
!265 = distinct !DILocation(line: 156, column: 7, scope: !40)
!266 = !DILocation(line: 69, column: 3, scope: !74, inlinedAt: !264)
!267 = !DILocation(line: 70, column: 3, scope: !74, inlinedAt: !264)
!268 = !DILocation(line: 158, column: 7, scope: !40)
!269 = !DILocation(line: 159, column: 170, scope: !40)
!270 = !DILocation(line: 159, column: 54, scope: !40)
!271 = !DILocation(line: 159, column: 40, scope: !40)
!272 = !DILocation(line: 166, column: 44, scope: !40)
!273 = !DILocation(line: 166, column: 232, scope: !40)
!274 = !DILocation(line: 164, column: 27, scope: !40)
!275 = !DILocation(line: 68, column: 3, scope: !74, inlinedAt: !276)
!276 = distinct !DILocation(line: 192, column: 3, scope: !76, inlinedAt: !277)
!277 = distinct !DILocation(line: 168, column: 7, scope: !40)
!278 = !DILocation(line: 69, column: 3, scope: !74, inlinedAt: !276)
!279 = !DILocation(line: 70, column: 3, scope: !74, inlinedAt: !276)
!280 = !DILocation(line: 171, column: 179, scope: !40)
!281 = !DILocation(line: 171, column: 83, scope: !40)
!282 = !DILocation(line: 171, column: 46, scope: !40)
!283 = !DILocation(line: 176, column: 46, scope: !40)
!284 = !DILocation(line: 153, column: 44, scope: !40)
!285 = !DILocation(line: 183, column: 33, scope: !40)
!286 = !DILocation(line: 183, column: 7, scope: !40)
!287 = !DILocation(line: 61, column: 3, scope: !56, inlinedAt: !261)
!288 = !DILocation(line: 62, column: 3, scope: !56, inlinedAt: !261)
!289 = !DILocation(line: 190, column: 7, scope: !40)
!290 = !DILocation(line: 191, column: 74, scope: !40)
!291 = !DILocation(line: 191, column: 23, scope: !40)
!292 = !DILocation(line: 191, column: 136, scope: !40)
!293 = !DILocation(line: 191, column: 85, scope: !40)
!294 = !DILocation(line: 195, column: 23, scope: !40)
!295 = !DILocation(line: 196, column: 58, scope: !40)
!296 = !DILocation(line: 196, column: 23, scope: !40)
!297 = !DILocation(line: 197, column: 24, scope: !40)
!298 = !DILocation(line: 198, column: 24, scope: !40)
!299 = !DILocation(line: 199, column: 24, scope: !40)
!300 = !DILocation(line: 200, column: 24, scope: !40)
!301 = !DILocation(line: 196, column: 78, scope: !40)
!302 = !DILocation(line: 191, column: 83, scope: !40)
!303 = !DILocation(line: 208, column: 24, scope: !40)
!304 = !DILocation(line: 209, column: 24, scope: !40)
!305 = !DILocation(line: 210, column: 24, scope: !40)
!306 = !DILocation(line: 211, column: 24, scope: !40)
!307 = !DILocation(line: 68, column: 3, scope: !74, inlinedAt: !308)
!308 = distinct !DILocation(line: 192, column: 3, scope: !76, inlinedAt: !309)
!309 = distinct !DILocation(line: 214, column: 5, scope: !40)
!310 = !DILocation(line: 69, column: 3, scope: !74, inlinedAt: !308)
!311 = !DILocation(line: 70, column: 3, scope: !74, inlinedAt: !308)
!312 = !DILocation(line: 1007, column: 10, scope: !185, inlinedAt: !313)
!313 = distinct !DILocation(line: 1077, column: 18, scope: !188, inlinedAt: !314)
!314 = distinct !DILocation(line: 1295, column: 23, scope: !190, inlinedAt: !315)
!315 = distinct !DILocation(line: 219, column: 29, scope: !40)
!316 = !{!317, !319}
!317 = distinct !{!317, !318, !"_ZL17__floats2half2_rnff: %agg.result"}
!318 = distinct !{!318, !"_ZL17__floats2half2_rnff"}
!319 = distinct !{!319, !320, !"_ZL17__float22half2_rn6float2: %agg.result"}
!320 = distinct !{!320, !"_ZL17__float22half2_rn6float2"}
!321 = !DILocation(line: 1007, column: 10, scope: !185, inlinedAt: !322)
!322 = distinct !DILocation(line: 1077, column: 38, scope: !188, inlinedAt: !314)
!323 = !DILocation(line: 596, column: 67, scope: !324, inlinedAt: !325)
!324 = distinct !DISubprogram(name: "__half2", scope: !186, file: !186, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!325 = distinct !DILocation(line: 1077, column: 10, scope: !188, inlinedAt: !314)
!326 = !DILocation(line: 596, column: 73, scope: !324, inlinedAt: !325)
!327 = !DILocation(line: 1007, column: 10, scope: !185, inlinedAt: !328)
!328 = distinct !DILocation(line: 1077, column: 18, scope: !188, inlinedAt: !329)
!329 = distinct !DILocation(line: 1295, column: 23, scope: !190, inlinedAt: !330)
!330 = distinct !DILocation(line: 220, column: 29, scope: !40)
!331 = !{!332, !334}
!332 = distinct !{!332, !333, !"_ZL17__floats2half2_rnff: %agg.result"}
!333 = distinct !{!333, !"_ZL17__floats2half2_rnff"}
!334 = distinct !{!334, !335, !"_ZL17__float22half2_rn6float2: %agg.result"}
!335 = distinct !{!335, !"_ZL17__float22half2_rn6float2"}
!336 = !DILocation(line: 1007, column: 10, scope: !185, inlinedAt: !337)
!337 = distinct !DILocation(line: 1077, column: 38, scope: !188, inlinedAt: !329)
!338 = !DILocation(line: 596, column: 67, scope: !324, inlinedAt: !339)
!339 = distinct !DILocation(line: 1077, column: 10, scope: !188, inlinedAt: !329)
!340 = !DILocation(line: 596, column: 73, scope: !324, inlinedAt: !339)
!341 = !DILocation(line: 221, column: 40, scope: !40)
!342 = !DILocation(line: 222, column: 134, scope: !40)
!343 = !DILocation(line: 222, column: 162, scope: !40)
!344 = !DILocation(line: 222, column: 79, scope: !40)
!345 = !DILocation(line: 222, column: 168, scope: !40)
!346 = !DILocation(line: 222, column: 42, scope: !40)
!347 = !DILocation(line: 222, column: 248, scope: !40)
!348 = !DILocation(line: 222, column: 98, scope: !40)
!349 = !DILocation(line: 68, column: 3, scope: !74, inlinedAt: !350)
!350 = distinct !DILocation(line: 192, column: 3, scope: !76, inlinedAt: !351)
!351 = distinct !DILocation(line: 224, column: 5, scope: !40)
!352 = !DILocation(line: 69, column: 3, scope: !74, inlinedAt: !350)
!353 = !DILocation(line: 70, column: 3, scope: !74, inlinedAt: !350)
!354 = !DILocation(line: 226, column: 5, scope: !40)
!355 = !DILocation(line: 229, column: 85, scope: !40)
!356 = !DILocation(line: 229, column: 48, scope: !40)
!357 = !DILocation(line: 231, column: 107, scope: !40)
!358 = !DILocation(line: 231, column: 24, scope: !40)
!359 = !DILocation(line: 231, column: 143, scope: !40)
!360 = !DILocation(line: 234, column: 1, scope: !40)
