; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v200_worker2_baseline_profile_subagent2/codegen/parent_v084/case3_stage1.device.cpp'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v200_worker2_baseline_profile_subagent2/codegen/parent_v084/case3_stage1.device.cpp"
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
  %0 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !range !29
  %mul = shl nsw i32 %0, 11
  %1 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !42
  %mul8 = shl nuw nsw i32 %1, 3
  %add = add nuw nsw i32 %mul8, %mul
  %mul21 = and i32 %mul8, 8128
  %and = and i32 %1, 7
  %shr27 = lshr i32 %1, 4
  %shr35 = and i32 %shr27, 1
  %2 = zext nneg i32 %add to i64, !dbg !43
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %2, !dbg !44
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %add.ptr, align 16, !dbg !45
  %qk_fetch.sroa.18.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !45
  %qk_fetch.sroa.18.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.add.ptr.sroa_idx, align 8, !dbg !45
  %xor = xor i32 %shr27, %and
  %3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul21, !dbg !46
  %.idx = shl nuw nsw i32 %xor, 4, !dbg !46
  %4 = getelementptr inbounds i8, ptr addrspace(3) %3, i32 %.idx, !dbg !46
  %add.ptr40.idx = shl nuw nsw i32 %shr35, 3, !dbg !46
  %add.ptr40 = getelementptr inbounds i8, ptr addrspace(3) %4, i32 %add.ptr40.idx, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr40, align 8, !dbg !47
  %xor36.1 = shl nuw nsw i32 %shr35, 3, !dbg !46
  %add.ptr40.idx.1 = xor i32 %xor36.1, 8, !dbg !46
  %add.ptr40.1 = getelementptr inbounds i8, ptr addrspace(3) %4, i32 %add.ptr40.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.18.0.copyload, ptr addrspace(3) %add.ptr40.1, align 8, !dbg !47
  %5 = add nuw nsw i64 %2, 512, !dbg !48
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %5, !dbg !44
  %qk_fetch.sroa.0.0.copyload1278 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %qk_fetch.sroa.18.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %qk_fetch.sroa.18.0.copyload1285 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.add.ptr.1.sroa_idx, align 8, !dbg !45
  %add28.1 = add nuw nsw i32 %shr27, 4
  %xor.1 = xor i32 %add28.1, %and
  %6 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @shared, i32 1024), i32 %mul21, !dbg !46
  %.idx.1847 = shl nuw nsw i32 %xor.1, 4, !dbg !46
  %7 = getelementptr inbounds i8, ptr addrspace(3) %6, i32 %.idx.1847, !dbg !46
  %add.ptr40.1849 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr40.idx, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1278, ptr addrspace(3) %add.ptr40.1849, align 8, !dbg !47
  %add.ptr40.1.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr40.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.18.0.copyload1285, ptr addrspace(3) %add.ptr40.1.1, align 8, !dbg !47
  %8 = add nuw nsw i64 %2, 1024, !dbg !48
  %add.ptr.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %8, !dbg !44
  %qk_fetch.sroa.0.0.copyload1279 = load i64, ptr addrspace(4) %add.ptr.2, align 16, !dbg !45
  %qk_fetch.sroa.18.0.add.ptr.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.2, i64 8, !dbg !45
  %qk_fetch.sroa.18.0.copyload1286 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.add.ptr.2.sroa_idx, align 8, !dbg !45
  %9 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @shared, i32 2048), i32 %mul21, !dbg !46
  %10 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 %.idx, !dbg !46
  %add.ptr40.2 = getelementptr inbounds i8, ptr addrspace(3) %10, i32 %add.ptr40.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1279, ptr addrspace(3) %add.ptr40.2, align 8, !dbg !47
  %add.ptr40.1.2 = getelementptr inbounds i8, ptr addrspace(3) %10, i32 %add.ptr40.idx, !dbg !46
  store i64 %qk_fetch.sroa.18.0.copyload1286, ptr addrspace(3) %add.ptr40.1.2, align 8, !dbg !47
  %11 = add nuw nsw i64 %2, 1536, !dbg !48
  %add.ptr.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %11, !dbg !44
  %qk_fetch.sroa.0.0.copyload1280 = load i64, ptr addrspace(4) %add.ptr.3, align 16, !dbg !45
  %qk_fetch.sroa.18.0.add.ptr.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.3, i64 8, !dbg !45
  %qk_fetch.sroa.18.0.copyload1287 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.add.ptr.3.sroa_idx, align 8, !dbg !45
  %12 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @shared, i32 3072), i32 %mul21, !dbg !46
  %13 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 %.idx.1847, !dbg !46
  %add.ptr40.3 = getelementptr inbounds i8, ptr addrspace(3) %13, i32 %add.ptr40.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1280, ptr addrspace(3) %add.ptr40.3, align 8, !dbg !47
  %add.ptr40.1.3 = getelementptr inbounds i8, ptr addrspace(3) %13, i32 %add.ptr40.idx, !dbg !46
  store i64 %qk_fetch.sroa.18.0.copyload1287, ptr addrspace(3) %add.ptr40.1.3, align 8, !dbg !47
  fence syncscope("warp") release, !dbg !49
  tail call void @llvm.mxc.barrier.warp(), !dbg !55
  fence syncscope("warp") acquire, !dbg !56
  %and49 = shl nuw nsw i32 %1, 7
  %mul50 = and i32 %and49, 1920
  %shr57 = lshr i32 %1, 5
  %and68 = lshr i32 %1, 3
  %14 = xor i32 %and68, %shr27
  %xor61 = xor i32 %shr57, %and, !dbg !57
  %add.ptr77.idx = shl nuw nsw i32 %xor61, 4, !dbg !58
  %add58.1 = add nuw nsw i32 %shr57, 2, !dbg !59
  %xor61.1 = xor i32 %add58.1, %and, !dbg !57
  %add.ptr77.idx.1 = shl nuw nsw i32 %xor61.1, 4, !dbg !58
  %add58.2 = add nuw nsw i32 %shr57, 4, !dbg !59
  %xor61.2 = xor i32 %add58.2, %and, !dbg !57
  %add.ptr77.idx.2 = shl nuw nsw i32 %xor61.2, 4, !dbg !58
  %add58.3 = add nuw nsw i32 %shr57, 6, !dbg !59
  %xor61.3 = xor i32 %add58.3, %and, !dbg !57
  %add.ptr77.idx.3 = shl nuw nsw i32 %xor61.3, 4, !dbg !58
  %idxprom = zext nneg i32 %0 to i64, !dbg !60
  %arrayidx100 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %idxprom, !dbg !60
  %15 = load i32, ptr addrspace(1) %arrayidx100, align 4, !dbg !60, !tbaa !30
  %mul101 = shl nsw i32 %15, 4, !dbg !61
  %cmp102 = icmp slt i32 %15, 0, !dbg !62
  %cmp104.not = icmp sgt i32 %mul101, %0
  %or.cond = select i1 %cmp102, i1 true, i1 %cmp104.not, !dbg !63
  br i1 %or.cond, label %if.end499, label %if.then, !dbg !63

if.then:                                          ; preds = %entry
  %xor70764 = xor i32 %14, %1
  %xor73 = shl nuw nsw i32 %xor70764, 2
  %mul74 = and i32 %xor73, 4
  %add53 = or disjoint i32 %mul74, %mul50
  %add63.4 = or disjoint i32 %add53, 64, !dbg !64
  %16 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add63.4, !dbg !58
  %add.ptr77.7 = getelementptr inbounds i8, ptr addrspace(3) %16, i32 %add.ptr77.idx.3, !dbg !58
  %17 = load <4 x half>, ptr addrspace(3) %add.ptr77.7, align 8, !dbg !65
  %add.ptr77.6 = getelementptr inbounds i8, ptr addrspace(3) %16, i32 %add.ptr77.idx.2, !dbg !58
  %18 = load <4 x half>, ptr addrspace(3) %add.ptr77.6, align 8, !dbg !65
  %add.ptr77.5 = getelementptr inbounds i8, ptr addrspace(3) %16, i32 %add.ptr77.idx.1, !dbg !58
  %19 = load <4 x half>, ptr addrspace(3) %add.ptr77.5, align 8, !dbg !65
  %add.ptr77.4 = getelementptr inbounds i8, ptr addrspace(3) %16, i32 %add.ptr77.idx, !dbg !58
  %20 = load <4 x half>, ptr addrspace(3) %add.ptr77.4, align 8, !dbg !65
  %21 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add53, !dbg !58
  %add.ptr77.3 = getelementptr inbounds i8, ptr addrspace(3) %21, i32 %add.ptr77.idx.3, !dbg !58
  %22 = load <4 x half>, ptr addrspace(3) %add.ptr77.3, align 8, !dbg !65
  %add.ptr77.2 = getelementptr inbounds i8, ptr addrspace(3) %21, i32 %add.ptr77.idx.2, !dbg !58
  %23 = load <4 x half>, ptr addrspace(3) %add.ptr77.2, align 8, !dbg !65
  %add.ptr77.1 = getelementptr inbounds i8, ptr addrspace(3) %21, i32 %add.ptr77.idx.1, !dbg !58
  %24 = load <4 x half>, ptr addrspace(3) %add.ptr77.1, align 8, !dbg !65
  %add.ptr77 = getelementptr inbounds i8, ptr addrspace(3) %21, i32 %add.ptr77.idx, !dbg !58
  %25 = load <4 x half>, ptr addrspace(3) %add.ptr77, align 8, !dbg !65
  fence syncscope("warp") release, !dbg !66
  tail call void @llvm.mxc.barrier.warp(), !dbg !69
  fence syncscope("warp") acquire, !dbg !70
  %conv110 = zext nneg i32 %mul101 to i64
  %mul115 = zext nneg i32 %mul8 to i64
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul115, !dbg !71
  %.idx838 = shl nuw nsw i64 %conv110, 8, !dbg !72
  %26 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep, i64 %.idx838, !dbg !72
  %qk_fetch.sroa.0.0.copyload1277 = load i64, ptr addrspace(4) %26, align 16, !dbg !73
  %qk_fetch.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %26, i64 8, !dbg !73
  %qk_fetch.sroa.18.0.copyload1284 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0..sroa_idx, align 8, !dbg !73
  store i64 %qk_fetch.sroa.0.0.copyload1277, ptr addrspace(3) %add.ptr40, align 8, !dbg !74
  store i64 %qk_fetch.sroa.18.0.copyload1284, ptr addrspace(3) %add.ptr40.1, align 8, !dbg !74
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %26, i64 1024, !dbg !72
  %qk_fetch.sroa.0.0.copyload1281 = load i64, ptr addrspace(4) %gep.1, align 16, !dbg !73
  %qk_fetch.sroa.18.0.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %26, i64 1032, !dbg !73
  %qk_fetch.sroa.18.0.copyload1288 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.gep.1.sroa_idx, align 8, !dbg !73
  store i64 %qk_fetch.sroa.0.0.copyload1281, ptr addrspace(3) %add.ptr40.1849, align 8, !dbg !74
  store i64 %qk_fetch.sroa.18.0.copyload1288, ptr addrspace(3) %add.ptr40.1.1, align 8, !dbg !74
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %26, i64 2048, !dbg !72
  %qk_fetch.sroa.0.0.copyload1282 = load i64, ptr addrspace(4) %gep.2, align 16, !dbg !73
  %qk_fetch.sroa.18.0.gep.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %26, i64 2056, !dbg !73
  %qk_fetch.sroa.18.0.copyload1289 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.gep.2.sroa_idx, align 8, !dbg !73
  store i64 %qk_fetch.sroa.0.0.copyload1282, ptr addrspace(3) %add.ptr40.2, align 8, !dbg !74
  store i64 %qk_fetch.sroa.18.0.copyload1289, ptr addrspace(3) %add.ptr40.1.2, align 8, !dbg !74
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %26, i64 3072, !dbg !72
  %qk_fetch.sroa.0.0.copyload1283 = load i64, ptr addrspace(4) %gep.3, align 16, !dbg !73
  %qk_fetch.sroa.18.0.gep.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %26, i64 3080, !dbg !73
  %qk_fetch.sroa.18.0.copyload1290 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.gep.3.sroa_idx, align 8, !dbg !73
  store i64 %qk_fetch.sroa.0.0.copyload1283, ptr addrspace(3) %add.ptr40.3, align 8, !dbg !74
  store i64 %qk_fetch.sroa.18.0.copyload1290, ptr addrspace(3) %add.ptr40.1.3, align 8, !dbg !74
  fence syncscope("warp") release, !dbg !75
  tail call void @llvm.mxc.barrier.warp(), !dbg !78
  fence syncscope("warp") acquire, !dbg !79
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr77, align 8, !dbg !80
  %27 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %25, <4 x float> zeroinitializer), !dbg !81
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr77.1, align 8, !dbg !80
  %28 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %24, <4 x float> %27), !dbg !81
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr77.2, align 8, !dbg !80
  %29 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %23, <4 x float> %28), !dbg !81
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr77.3, align 8, !dbg !80
  %30 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %22, <4 x float> %29), !dbg !81
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %add.ptr77.4, align 8, !dbg !80
  %31 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %20, <4 x float> %30), !dbg !81
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %add.ptr77.5, align 8, !dbg !80
  %32 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %19, <4 x float> %31), !dbg !81
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %add.ptr77.6, align 8, !dbg !80
  %33 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %18, <4 x float> %32), !dbg !81
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %add.ptr77.7, align 8, !dbg !80
  %34 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %17, <4 x float> %33), !dbg !81
  %35 = lshr i32 %1, 2
  %mul217 = and i32 %35, 252
  %add218 = add nuw nsw i32 %mul101, %mul217
  %cmp221.not = icmp sgt i32 %add218, %0, !dbg !82
  %scores.sroa.0.0.vec.extract1068 = extractelement <4 x float> %34, i64 0
  %spec.select = select i1 %cmp221.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1068, !dbg !83
  %cmp221.not.1.not = icmp slt i32 %add218, %0, !dbg !82
  %scores.sroa.0.4.vec.extract1075 = extractelement <4 x float> %34, i64 1, !dbg !83
  %condval.0.1 = select i1 %cmp221.not.1.not, float %scores.sroa.0.4.vec.extract1075, float 0xFFF0000000000000, !dbg !83
  %add219.2 = or disjoint i32 %add218, 2, !dbg !84
  %cmp221.not.2 = icmp sgt i32 %add219.2, %0, !dbg !82
  %scores.sroa.0.8.vec.extract1082 = extractelement <4 x float> %34, i64 2, !dbg !83
  %condval.0.2 = select i1 %cmp221.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1082, !dbg !83
  %add219.3 = or disjoint i32 %add218, 3, !dbg !84
  %cmp221.not.3 = icmp sgt i32 %add219.3, %0, !dbg !82
  %scores.sroa.0.12.vec.extract1089 = extractelement <4 x float> %34, i64 3, !dbg !83
  %condval.0.3 = select i1 %cmp221.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1089, !dbg !83
  %36 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !85
  %37 = tail call contract noundef float @llvm.maxnum.f32(float %36, float %condval.0.1), !dbg !85
  %38 = tail call contract noundef float @llvm.maxnum.f32(float %37, float %condval.0.2), !dbg !85
  %39 = tail call contract noundef float @llvm.maxnum.f32(float %38, float %condval.0.3), !dbg !85
  %40 = bitcast float %39 to i32, !dbg !89
  %41 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !92
  %42 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %41) #10, !dbg !97
  %xor.i.i = xor i32 %42, 32, !dbg !98
  %43 = and i32 %42, -64, !dbg !99
  %and.i.i = add nsw i32 %43, 64, !dbg !99
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !100
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %42, !dbg !101
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !102
  %44 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %40), !dbg !103
  %45 = bitcast i32 %44 to float, !dbg !104
  %46 = tail call contract noundef float @llvm.maxnum.f32(float %39, float %45), !dbg !105
  %47 = bitcast float %46 to i32, !dbg !107
  %48 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !109
  %49 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %48) #10, !dbg !112
  %xor.i.i765 = xor i32 %49, 16, !dbg !113
  %50 = and i32 %49, -64, !dbg !114
  %and.i.i766 = add nsw i32 %50, 64, !dbg !114
  %cmp.not.i.i767 = icmp slt i32 %xor.i.i765, %and.i.i766, !dbg !115
  %cond.i.i768 = select i1 %cmp.not.i.i767, i32 %xor.i.i765, i32 %49, !dbg !116
  %shl.i.i769 = shl i32 %cond.i.i768, 2, !dbg !117
  %51 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i769, i32 %47), !dbg !118
  %52 = bitcast i32 %51 to float, !dbg !119
  %53 = tail call contract noundef float @llvm.maxnum.f32(float %46, float %52), !dbg !120
  %sub = fsub contract float %spec.select, %53, !dbg !122
  %sub267 = fsub contract float %condval.0.1, %53, !dbg !123
  %sub270 = fsub contract float %condval.0.2, %53, !dbg !124
  %sub273 = fsub contract float %condval.0.3, %53, !dbg !125
  %mul278 = fmul contract float %sub, 0x3FC0527DC0000000, !dbg !126
  %mul282 = fmul contract float %sub267, 0x3FC0527DC0000000, !dbg !127
  %mul286 = fmul contract float %sub270, 0x3FC0527DC0000000, !dbg !128
  %mul290 = fmul contract float %sub273, 0x3FC0527DC0000000, !dbg !129
  %add295 = fadd contract float %mul278, 8.000000e+00, !dbg !130
  %add299 = fadd contract float %mul282, 8.000000e+00, !dbg !131
  %add303 = fadd contract float %mul286, 8.000000e+00, !dbg !132
  %add307 = fadd contract float %mul290, 8.000000e+00, !dbg !133
  %cmp.i.i = fcmp contract olt float %add295, -1.260000e+02, !dbg !134
  %cond.i.i770 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !134
  %add.i.i = fadd contract float %add295, %cond.i.i770, !dbg !134
  %54 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !134
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !134
  %mul.i.i = fmul contract float %cond2.i.i, %54, !dbg !134
  %cmp.i.i771 = fcmp contract olt float %add299, -1.260000e+02, !dbg !137
  %cond.i.i772 = select contract i1 %cmp.i.i771, float 6.400000e+01, float 0.000000e+00, !dbg !137
  %add.i.i773 = fadd contract float %add299, %cond.i.i772, !dbg !137
  %55 = tail call contract float @llvm.exp2.f32(float %add.i.i773), !dbg !137
  %cond2.i.i774 = select contract i1 %cmp.i.i771, float 0x3BF0000000000000, float 1.000000e+00, !dbg !137
  %mul.i.i775 = fmul contract float %cond2.i.i774, %55, !dbg !137
  %cmp.i.i776 = fcmp contract olt float %add303, -1.260000e+02, !dbg !139
  %cond.i.i777 = select contract i1 %cmp.i.i776, float 6.400000e+01, float 0.000000e+00, !dbg !139
  %add.i.i778 = fadd contract float %add303, %cond.i.i777, !dbg !139
  %56 = tail call contract float @llvm.exp2.f32(float %add.i.i778), !dbg !139
  %cond2.i.i779 = select contract i1 %cmp.i.i776, float 0x3BF0000000000000, float 1.000000e+00, !dbg !139
  %mul.i.i780 = fmul contract float %cond2.i.i779, %56, !dbg !139
  %cmp.i.i781 = fcmp contract olt float %add307, -1.260000e+02, !dbg !141
  %cond.i.i782 = select contract i1 %cmp.i.i781, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i783 = fadd contract float %add307, %cond.i.i782, !dbg !141
  %57 = tail call contract float @llvm.exp2.f32(float %add.i.i783), !dbg !141
  %cond2.i.i784 = select contract i1 %cmp.i.i781, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %mul.i.i785 = fmul contract float %cond2.i.i784, %57, !dbg !141
  %58 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !143
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !143, !noalias !151
  %59 = fptrunc float %mul.i.i to half, !dbg !143
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %58), !dbg !143, !noalias !151
  %60 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !156, !noalias !151
  %61 = fptrunc float %mul.i.i775 to half, !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %60), !dbg !156, !noalias !151
  %62 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !158, !noalias !162
  %63 = fptrunc float %mul.i.i780 to half, !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %62), !dbg !158, !noalias !162
  %64 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !167, !noalias !162
  %65 = fptrunc float %mul.i.i785 to half, !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %64), !dbg !167, !noalias !162
  %66 = insertelement <4 x half> poison, half %59, i64 0, !dbg !169
  %67 = insertelement <4 x half> %66, half %61, i64 1, !dbg !169
  %68 = insertelement <4 x half> %67, half %63, i64 2, !dbg !169
  %69 = insertelement <4 x half> %68, half %65, i64 3, !dbg !169
  %conv.i.i = fpext half %59 to float, !dbg !170
  %add341 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !175
  %conv.i.i.1 = fpext half %61 to float, !dbg !170
  %add341.1 = fadd contract float %add341, %conv.i.i.1, !dbg !175
  %conv.i.i.2 = fpext half %63 to float, !dbg !170
  %add341.2 = fadd contract float %add341.1, %conv.i.i.2, !dbg !175
  %conv.i.i.3 = fpext half %65 to float, !dbg !170
  %add341.3 = fadd contract float %add341.2, %conv.i.i.3, !dbg !175
  fence syncscope("warp") release, !dbg !176
  tail call void @llvm.mxc.barrier.warp(), !dbg !179
  fence syncscope("warp") acquire, !dbg !180
  %70 = shl nuw nsw i32 %1, 5
  %71 = and i32 %70, 32512
  %mul361 = zext nneg i32 %71 to i64
  %mul363 = shl nuw nsw i64 %conv110, 7
  %add364 = add nuw nsw i64 %mul363, %mul361
  %72 = and i32 %mul8, 56
  %mul374 = zext nneg i32 %72 to i64
  %and407 = shl nuw nsw i32 %1, 1
  %mul408 = and i32 %and407, 14
  %call412.mask = and i32 %1, 16
  %and421 = lshr i32 %1, 1
  %shr422 = and i32 %and421, 3
  %xor423 = xor i32 %shr422, %shr27
  %mul431 = and i32 %35, 2
  %add375 = or disjoint i64 %add364, %mul374, !dbg !181
  %add.ptr376 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add375, !dbg !182
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %add.ptr376, align 16, !dbg !183
  %v_fetch.sroa.6.0.add.ptr376.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376, i64 2, !dbg !183
  %v_fetch.sroa.6.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.6.0.add.ptr376.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.8.0.add.ptr376.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376, i64 4, !dbg !183
  %v_fetch.sroa.8.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.8.0.add.ptr376.sroa_idx, align 4, !dbg !183
  %v_fetch.sroa.10.0.add.ptr376.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376, i64 6, !dbg !183
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0.add.ptr376.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.12.0.add.ptr376.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376, i64 8, !dbg !183
  %v_fetch.sroa.12.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.12.0.add.ptr376.sroa_idx, align 8, !dbg !183
  %v_fetch.sroa.14.0.add.ptr376.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376, i64 10, !dbg !183
  %v_fetch.sroa.14.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.0.add.ptr376.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.16.0.add.ptr376.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376, i64 12, !dbg !183
  %v_fetch.sroa.16.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.16.0.add.ptr376.sroa_idx, align 4, !dbg !183
  %v_fetch.sroa.18.0.add.ptr376.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376, i64 14, !dbg !183
  %v_fetch.sroa.18.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.0.add.ptr376.sroa_idx, align 2, !dbg !183, !tbaa !30
  %add367.1 = or disjoint i64 %add364, %mul374, !dbg !181
  %add375.1 = or disjoint i64 %add367.1, 128, !dbg !181
  %add.ptr376.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add375.1, !dbg !182
  %v_fetch.sroa.20.16.copyload = load i16, ptr addrspace(4) %add.ptr376.1, align 16, !dbg !183
  %v_fetch.sroa.24.16.add.ptr376.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376.1, i64 2, !dbg !183
  %v_fetch.sroa.24.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.24.16.add.ptr376.1.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.26.16.add.ptr376.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376.1, i64 4, !dbg !183
  %v_fetch.sroa.26.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.26.16.add.ptr376.1.sroa_idx, align 4, !dbg !183
  %v_fetch.sroa.28.16.add.ptr376.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376.1, i64 6, !dbg !183
  %v_fetch.sroa.28.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.28.16.add.ptr376.1.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.30.16.add.ptr376.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376.1, i64 8, !dbg !183
  %v_fetch.sroa.30.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.30.16.add.ptr376.1.sroa_idx, align 8, !dbg !183
  %v_fetch.sroa.32.16.add.ptr376.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376.1, i64 10, !dbg !183
  %v_fetch.sroa.32.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.32.16.add.ptr376.1.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.34.16.add.ptr376.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376.1, i64 12, !dbg !183
  %v_fetch.sroa.34.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.34.16.add.ptr376.1.sroa_idx, align 4, !dbg !183
  %v_fetch.sroa.36.16.add.ptr376.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376.1, i64 14, !dbg !183
  %v_fetch.sroa.36.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.36.16.add.ptr376.1.sroa_idx, align 2, !dbg !183, !tbaa !30
  %xor415760 = shl nuw nsw i32 %mul408, 4, !dbg !184
  %mul416 = or disjoint i32 %xor415760, %call412.mask, !dbg !184
  %mul426 = shl nuw nsw i32 %xor423, 2, !dbg !185
  %73 = or disjoint i32 %mul431, %mul426, !dbg !186
  %74 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %73, !dbg !187
  %add.ptr434 = getelementptr inbounds %struct.__half, ptr addrspace(3) %74, i32 %mul416, !dbg !187
  %v_column.sroa.34.0.insert.ext = zext i16 %v_fetch.sroa.20.16.copyload to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift = shl nuw i32 %v_column.sroa.34.0.insert.ext, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.34.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr434, align 4, !dbg !188, !tbaa !30
  %add409.1 = shl nuw nsw i32 %mul408, 4, !dbg !184
  %xor415760.1 = or disjoint i32 %add409.1, %call412.mask, !dbg !184
  %mul416.1 = or disjoint i32 %xor415760.1, 256, !dbg !184
  %xor425.1 = shl nuw nsw i32 %xor423, 2, !dbg !185
  %mul426.1 = xor i32 %xor425.1, 4, !dbg !185
  %add427.1 = or disjoint i32 %mul431, %mul426.1, !dbg !186
  %75 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add427.1, !dbg !187
  %add.ptr434.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %75, i32 %mul416.1, !dbg !187
  %v_column.sroa.34.0.insert.ext949 = zext i16 %v_fetch.sroa.24.16.copyload to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift950 = shl nuw i32 %v_column.sroa.34.0.insert.ext949, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext889 = zext i16 %v_fetch.sroa.6.0.copyload to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert891 = or disjoint i32 %v_column.sroa.34.0.insert.shift950, %v_column.sroa.0.0.insert.ext889, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert891, ptr addrspace(3) %add.ptr434.1, align 4, !dbg !188, !tbaa !30
  %add409.2 = shl nuw nsw i32 %mul408, 4, !dbg !184
  %xor415760.2 = or disjoint i32 %add409.2, %call412.mask, !dbg !184
  %mul416.2 = or disjoint i32 %xor415760.2, 512, !dbg !184
  %xor425.2 = shl nuw nsw i32 %xor423, 2, !dbg !185
  %mul426.2 = xor i32 %xor425.2, 8, !dbg !185
  %add427.2 = or disjoint i32 %mul431, %mul426.2, !dbg !186
  %76 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add427.2, !dbg !187
  %add.ptr434.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) %76, i32 %mul416.2, !dbg !187
  %v_column.sroa.34.0.insert.ext954 = zext i16 %v_fetch.sroa.26.16.copyload to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift955 = shl nuw i32 %v_column.sroa.34.0.insert.ext954, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext893 = zext i16 %v_fetch.sroa.8.0.copyload to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert895 = or disjoint i32 %v_column.sroa.34.0.insert.shift955, %v_column.sroa.0.0.insert.ext893, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert895, ptr addrspace(3) %add.ptr434.2, align 4, !dbg !188, !tbaa !30
  %add409.3 = shl nuw nsw i32 %mul408, 4, !dbg !184
  %xor415760.3 = or disjoint i32 %add409.3, %call412.mask, !dbg !184
  %mul416.3 = or disjoint i32 %xor415760.3, 768, !dbg !184
  %xor425.3 = shl nuw nsw i32 %xor423, 2, !dbg !185
  %mul426.3 = xor i32 %xor425.3, 12, !dbg !185
  %add427.3 = or disjoint i32 %mul431, %mul426.3, !dbg !186
  %77 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add427.3, !dbg !187
  %add.ptr434.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) %77, i32 %mul416.3, !dbg !187
  %v_column.sroa.34.0.insert.ext959 = zext i16 %v_fetch.sroa.28.16.copyload to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift960 = shl nuw i32 %v_column.sroa.34.0.insert.ext959, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext897 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert899 = or disjoint i32 %v_column.sroa.34.0.insert.shift960, %v_column.sroa.0.0.insert.ext897, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert899, ptr addrspace(3) %add.ptr434.3, align 4, !dbg !188, !tbaa !30
  %add411.4 = shl nuw nsw i32 %mul408, 4, !dbg !184
  %xor415760.4 = or disjoint i32 %add411.4, 16, !dbg !184
  %mul416.4 = xor i32 %xor415760.4, %call412.mask, !dbg !184
  %add.ptr434.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) %74, i32 %mul416.4, !dbg !187
  %v_column.sroa.34.0.insert.ext964 = zext i16 %v_fetch.sroa.30.16.copyload to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift965 = shl nuw i32 %v_column.sroa.34.0.insert.ext964, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext901 = zext i16 %v_fetch.sroa.12.0.copyload to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert903 = or disjoint i32 %v_column.sroa.34.0.insert.shift965, %v_column.sroa.0.0.insert.ext901, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert903, ptr addrspace(3) %add.ptr434.4, align 4, !dbg !188, !tbaa !30
  %add411.5 = shl nuw nsw i32 %mul408, 4, !dbg !184
  %xor415760.5 = or disjoint i32 %add411.5, 272, !dbg !184
  %mul416.5 = xor i32 %xor415760.5, %call412.mask, !dbg !184
  %add.ptr434.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) %75, i32 %mul416.5, !dbg !187
  %v_column.sroa.34.0.insert.ext969 = zext i16 %v_fetch.sroa.32.16.copyload to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift970 = shl nuw i32 %v_column.sroa.34.0.insert.ext969, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext905 = zext i16 %v_fetch.sroa.14.0.copyload to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert907 = or disjoint i32 %v_column.sroa.34.0.insert.shift970, %v_column.sroa.0.0.insert.ext905, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert907, ptr addrspace(3) %add.ptr434.5, align 4, !dbg !188, !tbaa !30
  %add411.6 = shl nuw nsw i32 %mul408, 4, !dbg !184
  %xor415760.6 = or disjoint i32 %add411.6, 528, !dbg !184
  %mul416.6 = xor i32 %xor415760.6, %call412.mask, !dbg !184
  %add.ptr434.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) %76, i32 %mul416.6, !dbg !187
  %v_column.sroa.34.0.insert.ext974 = zext i16 %v_fetch.sroa.34.16.copyload to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift975 = shl nuw i32 %v_column.sroa.34.0.insert.ext974, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext909 = zext i16 %v_fetch.sroa.16.0.copyload to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert911 = or disjoint i32 %v_column.sroa.34.0.insert.shift975, %v_column.sroa.0.0.insert.ext909, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert911, ptr addrspace(3) %add.ptr434.6, align 4, !dbg !188, !tbaa !30
  %add411.7 = shl nuw nsw i32 %mul408, 4, !dbg !184
  %xor415760.7 = or disjoint i32 %add411.7, 784, !dbg !184
  %mul416.7 = xor i32 %xor415760.7, %call412.mask, !dbg !184
  %add.ptr434.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) %77, i32 %mul416.7, !dbg !187
  %v_column.sroa.34.0.insert.ext979 = zext i16 %v_fetch.sroa.36.16.copyload to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift980 = shl nuw i32 %v_column.sroa.34.0.insert.ext979, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext913 = zext i16 %v_fetch.sroa.18.0.copyload to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert915 = or disjoint i32 %v_column.sroa.34.0.insert.shift980, %v_column.sroa.0.0.insert.ext913, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert915, ptr addrspace(3) %add.ptr434.7, align 4, !dbg !188, !tbaa !30
  %add370.1863 = or disjoint i64 %add364, %mul374, !dbg !181
  %add375.1864 = or disjoint i64 %add370.1863, 64, !dbg !181
  %add.ptr376.1865 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add375.1864, !dbg !182
  %v_fetch.sroa.0.0.copyload1024 = load i16, ptr addrspace(4) %add.ptr376.1865, align 16, !dbg !183
  %v_fetch.sroa.6.0.add.ptr376.1865.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376.1865, i64 2, !dbg !183
  %v_fetch.sroa.6.0.copyload1025 = load i16, ptr addrspace(4) %v_fetch.sroa.6.0.add.ptr376.1865.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.8.0.add.ptr376.1865.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376.1865, i64 4, !dbg !183
  %v_fetch.sroa.8.0.copyload1027 = load i16, ptr addrspace(4) %v_fetch.sroa.8.0.add.ptr376.1865.sroa_idx, align 4, !dbg !183
  %v_fetch.sroa.10.0.add.ptr376.1865.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376.1865, i64 6, !dbg !183
  %v_fetch.sroa.10.0.copyload1029 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0.add.ptr376.1865.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.12.0.add.ptr376.1865.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376.1865, i64 8, !dbg !183
  %v_fetch.sroa.12.0.copyload1031 = load i16, ptr addrspace(4) %v_fetch.sroa.12.0.add.ptr376.1865.sroa_idx, align 8, !dbg !183
  %v_fetch.sroa.14.0.add.ptr376.1865.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376.1865, i64 10, !dbg !183
  %v_fetch.sroa.14.0.copyload1033 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0.add.ptr376.1865.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.16.0.add.ptr376.1865.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376.1865, i64 12, !dbg !183
  %v_fetch.sroa.16.0.copyload1035 = load i16, ptr addrspace(4) %v_fetch.sroa.16.0.add.ptr376.1865.sroa_idx, align 4, !dbg !183
  %v_fetch.sroa.18.0.add.ptr376.1865.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376.1865, i64 14, !dbg !183
  %v_fetch.sroa.18.0.copyload1037 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0.add.ptr376.1865.sroa_idx, align 2, !dbg !183, !tbaa !30
  %add370.1.1 = or disjoint i64 %add364, %mul374, !dbg !181
  %add375.1.1 = or disjoint i64 %add370.1.1, 192, !dbg !181
  %add.ptr376.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add375.1.1, !dbg !182
  %v_fetch.sroa.20.16.copyload1040 = load i16, ptr addrspace(4) %add.ptr376.1.1, align 16, !dbg !183
  %v_fetch.sroa.24.16.add.ptr376.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376.1.1, i64 2, !dbg !183
  %v_fetch.sroa.24.16.copyload1041 = load i16, ptr addrspace(4) %v_fetch.sroa.24.16.add.ptr376.1.1.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.26.16.add.ptr376.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376.1.1, i64 4, !dbg !183
  %v_fetch.sroa.26.16.copyload1043 = load i16, ptr addrspace(4) %v_fetch.sroa.26.16.add.ptr376.1.1.sroa_idx, align 4, !dbg !183
  %v_fetch.sroa.28.16.add.ptr376.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376.1.1, i64 6, !dbg !183
  %v_fetch.sroa.28.16.copyload1045 = load i16, ptr addrspace(4) %v_fetch.sroa.28.16.add.ptr376.1.1.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.30.16.add.ptr376.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376.1.1, i64 8, !dbg !183
  %v_fetch.sroa.30.16.copyload1047 = load i16, ptr addrspace(4) %v_fetch.sroa.30.16.add.ptr376.1.1.sroa_idx, align 8, !dbg !183
  %v_fetch.sroa.32.16.add.ptr376.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376.1.1, i64 10, !dbg !183
  %v_fetch.sroa.32.16.copyload1049 = load i16, ptr addrspace(4) %v_fetch.sroa.32.16.add.ptr376.1.1.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.34.16.add.ptr376.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376.1.1, i64 12, !dbg !183
  %v_fetch.sroa.34.16.copyload1051 = load i16, ptr addrspace(4) %v_fetch.sroa.34.16.add.ptr376.1.1.sroa_idx, align 4, !dbg !183
  %v_fetch.sroa.36.16.add.ptr376.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr376.1.1, i64 14, !dbg !183
  %v_fetch.sroa.36.16.copyload1053 = load i16, ptr addrspace(4) %v_fetch.sroa.36.16.add.ptr376.1.1.sroa_idx, align 2, !dbg !183, !tbaa !30
  %78 = or disjoint i32 %mul431, 1024
  %79 = or disjoint i32 %78, %mul426, !dbg !186
  %80 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %79, !dbg !187
  %add.ptr434.1871 = getelementptr inbounds %struct.__half, ptr addrspace(3) %80, i32 %mul416, !dbg !187
  %v_column.sroa.34.0.insert.ext984 = zext i16 %v_fetch.sroa.20.16.copyload1040 to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift985 = shl nuw i32 %v_column.sroa.34.0.insert.ext984, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext917 = zext i16 %v_fetch.sroa.0.0.copyload1024 to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert919 = or disjoint i32 %v_column.sroa.34.0.insert.shift985, %v_column.sroa.0.0.insert.ext917, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert919, ptr addrspace(3) %add.ptr434.1871, align 4, !dbg !188, !tbaa !30
  %add427.1.1 = or disjoint i32 %78, %mul426.1, !dbg !186
  %81 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add427.1.1, !dbg !187
  %add.ptr434.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %81, i32 %mul416.1, !dbg !187
  %v_column.sroa.34.0.insert.ext989 = zext i16 %v_fetch.sroa.24.16.copyload1041 to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift990 = shl nuw i32 %v_column.sroa.34.0.insert.ext989, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext921 = zext i16 %v_fetch.sroa.6.0.copyload1025 to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert923 = or disjoint i32 %v_column.sroa.34.0.insert.shift990, %v_column.sroa.0.0.insert.ext921, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert923, ptr addrspace(3) %add.ptr434.1.1, align 4, !dbg !188, !tbaa !30
  %add427.2.1 = or disjoint i32 %78, %mul426.2, !dbg !186
  %82 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add427.2.1, !dbg !187
  %add.ptr434.2.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %82, i32 %mul416.2, !dbg !187
  %v_column.sroa.34.0.insert.ext994 = zext i16 %v_fetch.sroa.26.16.copyload1043 to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift995 = shl nuw i32 %v_column.sroa.34.0.insert.ext994, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext925 = zext i16 %v_fetch.sroa.8.0.copyload1027 to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert927 = or disjoint i32 %v_column.sroa.34.0.insert.shift995, %v_column.sroa.0.0.insert.ext925, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert927, ptr addrspace(3) %add.ptr434.2.1, align 4, !dbg !188, !tbaa !30
  %add427.3.1 = or disjoint i32 %78, %mul426.3, !dbg !186
  %83 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add427.3.1, !dbg !187
  %add.ptr434.3.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %83, i32 %mul416.3, !dbg !187
  %v_column.sroa.34.0.insert.ext999 = zext i16 %v_fetch.sroa.28.16.copyload1045 to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift1000 = shl nuw i32 %v_column.sroa.34.0.insert.ext999, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext929 = zext i16 %v_fetch.sroa.10.0.copyload1029 to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert931 = or disjoint i32 %v_column.sroa.34.0.insert.shift1000, %v_column.sroa.0.0.insert.ext929, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert931, ptr addrspace(3) %add.ptr434.3.1, align 4, !dbg !188, !tbaa !30
  %add.ptr434.4.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %80, i32 %mul416.4, !dbg !187
  %v_column.sroa.34.0.insert.ext1004 = zext i16 %v_fetch.sroa.30.16.copyload1047 to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift1005 = shl nuw i32 %v_column.sroa.34.0.insert.ext1004, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext933 = zext i16 %v_fetch.sroa.12.0.copyload1031 to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert935 = or disjoint i32 %v_column.sroa.34.0.insert.shift1005, %v_column.sroa.0.0.insert.ext933, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert935, ptr addrspace(3) %add.ptr434.4.1, align 4, !dbg !188, !tbaa !30
  %add.ptr434.5.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %81, i32 %mul416.5, !dbg !187
  %v_column.sroa.34.0.insert.ext1009 = zext i16 %v_fetch.sroa.32.16.copyload1049 to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift1010 = shl nuw i32 %v_column.sroa.34.0.insert.ext1009, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext937 = zext i16 %v_fetch.sroa.14.0.copyload1033 to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert939 = or disjoint i32 %v_column.sroa.34.0.insert.shift1010, %v_column.sroa.0.0.insert.ext937, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert939, ptr addrspace(3) %add.ptr434.5.1, align 4, !dbg !188, !tbaa !30
  %add.ptr434.6.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %82, i32 %mul416.6, !dbg !187
  %v_column.sroa.34.0.insert.ext1014 = zext i16 %v_fetch.sroa.34.16.copyload1051 to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift1015 = shl nuw i32 %v_column.sroa.34.0.insert.ext1014, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext941 = zext i16 %v_fetch.sroa.16.0.copyload1035 to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert943 = or disjoint i32 %v_column.sroa.34.0.insert.shift1015, %v_column.sroa.0.0.insert.ext941, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert943, ptr addrspace(3) %add.ptr434.6.1, align 4, !dbg !188, !tbaa !30
  %add.ptr434.7.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %83, i32 %mul416.7, !dbg !187
  %v_column.sroa.34.0.insert.ext1019 = zext i16 %v_fetch.sroa.36.16.copyload1053 to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift1020 = shl nuw i32 %v_column.sroa.34.0.insert.ext1019, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext945 = zext i16 %v_fetch.sroa.18.0.copyload1037 to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert947 = or disjoint i32 %v_column.sroa.34.0.insert.shift1020, %v_column.sroa.0.0.insert.ext945, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert947, ptr addrspace(3) %add.ptr434.7.1, align 4, !dbg !188, !tbaa !30
  fence syncscope("warp") release, !dbg !189
  tail call void @llvm.mxc.barrier.warp(), !dbg !192
  fence syncscope("warp") acquire, !dbg !193
  %and448 = shl nuw nsw i32 %1, 4
  %mul449 = and i32 %and448, 48
  %shr455 = and i32 %35, 3
  %and468 = and i32 %1, 3
  %84 = xor i32 %shr27, %and468
  %add456 = or disjoint i32 %mul449, %shr455, !dbg !194
  %xor460759 = shl nuw nsw i32 %add456, 4, !dbg !195
  %mul461 = xor i32 %xor460759, %call412.mask, !dbg !195
  %85 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul461, !dbg !196
  %add.ptr473.idx = shl nuw nsw i32 %84, 3, !dbg !196
  %add.ptr473 = getelementptr inbounds i8, ptr addrspace(3) %85, i32 %add.ptr473.idx, !dbg !196
  %86 = load <4 x half>, ptr addrspace(3) %add.ptr473, align 8, !dbg !197
  %add452.1 = or disjoint i32 %mul449, %shr455, !dbg !194
  %add456.1 = shl nuw nsw i32 %add452.1, 4, !dbg !195
  %xor460759.1 = or disjoint i32 %add456.1, 64, !dbg !195
  %mul461.1 = xor i32 %xor460759.1, %call412.mask, !dbg !195
  %87 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul461.1, !dbg !196
  %xor469.1 = shl nuw nsw i32 %84, 3, !dbg !196
  %add.ptr473.idx.1 = xor i32 %xor469.1, 8, !dbg !196
  %add.ptr473.1 = getelementptr inbounds i8, ptr addrspace(3) %87, i32 %add.ptr473.idx.1, !dbg !196
  %88 = load <4 x half>, ptr addrspace(3) %add.ptr473.1, align 8, !dbg !197
  %add452.2 = or disjoint i32 %mul449, %shr455, !dbg !194
  %add456.2 = shl nuw nsw i32 %add452.2, 4, !dbg !195
  %xor460759.2 = or disjoint i32 %add456.2, 128, !dbg !195
  %mul461.2 = xor i32 %xor460759.2, %call412.mask, !dbg !195
  %89 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul461.2, !dbg !196
  %xor469.2 = shl nuw nsw i32 %84, 3, !dbg !196
  %add.ptr473.idx.2 = xor i32 %xor469.2, 16, !dbg !196
  %add.ptr473.2 = getelementptr inbounds i8, ptr addrspace(3) %89, i32 %add.ptr473.idx.2, !dbg !196
  %90 = load <4 x half>, ptr addrspace(3) %add.ptr473.2, align 8, !dbg !197
  %add452.3 = or disjoint i32 %mul449, %shr455, !dbg !194
  %add456.3 = shl nuw nsw i32 %add452.3, 4, !dbg !195
  %xor460759.3 = or disjoint i32 %add456.3, 192, !dbg !195
  %mul461.3 = xor i32 %xor460759.3, %call412.mask, !dbg !195
  %91 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul461.3, !dbg !196
  %xor469.3 = shl nuw nsw i32 %84, 3, !dbg !196
  %add.ptr473.idx.3 = xor i32 %xor469.3, 24, !dbg !196
  %add.ptr473.3 = getelementptr inbounds i8, ptr addrspace(3) %91, i32 %add.ptr473.idx.3, !dbg !196
  %92 = load <4 x half>, ptr addrspace(3) %add.ptr473.3, align 8, !dbg !197
  %add462.4 = or disjoint i32 %mul461, 1024, !dbg !198
  %93 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add462.4, !dbg !196
  %add.ptr473.4 = getelementptr inbounds i8, ptr addrspace(3) %93, i32 %add.ptr473.idx, !dbg !196
  %94 = load <4 x half>, ptr addrspace(3) %add.ptr473.4, align 8, !dbg !197
  %add462.5 = or disjoint i32 %mul461.1, 1024, !dbg !198
  %95 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add462.5, !dbg !196
  %add.ptr473.5 = getelementptr inbounds i8, ptr addrspace(3) %95, i32 %add.ptr473.idx.1, !dbg !196
  %96 = load <4 x half>, ptr addrspace(3) %add.ptr473.5, align 8, !dbg !197
  %add462.6 = or disjoint i32 %mul461.2, 1024, !dbg !198
  %97 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add462.6, !dbg !196
  %add.ptr473.6 = getelementptr inbounds i8, ptr addrspace(3) %97, i32 %add.ptr473.idx.2, !dbg !196
  %98 = load <4 x half>, ptr addrspace(3) %add.ptr473.6, align 8, !dbg !197
  %add462.7 = or disjoint i32 %mul461.3, 1024, !dbg !198
  %99 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add462.7, !dbg !196
  %add.ptr473.7 = getelementptr inbounds i8, ptr addrspace(3) %99, i32 %add.ptr473.idx.3, !dbg !196
  %100 = load <4 x half>, ptr addrspace(3) %add.ptr473.7, align 8, !dbg !197
  %101 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %86, <4 x half> %69, <4 x float> zeroinitializer), !dbg !199
  %102 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %88, <4 x half> %69, <4 x float> zeroinitializer), !dbg !199
  %103 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %90, <4 x half> %69, <4 x float> zeroinitializer), !dbg !199
  %104 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %92, <4 x half> %69, <4 x float> zeroinitializer), !dbg !199
  %105 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %94, <4 x half> %69, <4 x float> zeroinitializer), !dbg !199
  %106 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %96, <4 x half> %69, <4 x float> zeroinitializer), !dbg !199
  %107 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %98, <4 x half> %69, <4 x float> zeroinitializer), !dbg !199
  %108 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %100, <4 x half> %69, <4 x float> zeroinitializer), !dbg !199
  %add348 = fadd contract float %add341.3, 0.000000e+00, !dbg !200
  br label %if.end499, !dbg !201

if.end499:                                        ; preds = %if.then, %entry
  %numerator.sroa.128.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %108, %if.then ], !dbg !203
  %numerator.sroa.110.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %107, %if.then ], !dbg !203
  %numerator.sroa.92.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %106, %if.then ], !dbg !203
  %numerator.sroa.74.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %105, %if.then ], !dbg !203
  %numerator.sroa.56.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %104, %if.then ], !dbg !203
  %numerator.sroa.38.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %103, %if.then ], !dbg !203
  %numerator.sroa.20.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %102, %if.then ], !dbg !203
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %101, %if.then ], !dbg !203
  %denominator.sroa.0.0 = phi float [ 0.000000e+00, %entry ], [ %add348, %if.then ], !dbg !203
  %109 = bitcast float %denominator.sroa.0.0 to i32, !dbg !201
  %110 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !204
  %111 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %110) #10, !dbg !207
  %xor.i.i787 = xor i32 %111, 32, !dbg !208
  %112 = and i32 %111, -64, !dbg !209
  %and.i.i788 = add nsw i32 %112, 64, !dbg !209
  %cmp.not.i.i789 = icmp slt i32 %xor.i.i787, %and.i.i788, !dbg !210
  %cond.i.i790 = select i1 %cmp.not.i.i789, i32 %xor.i.i787, i32 %111, !dbg !211
  %shl.i.i791 = shl i32 %cond.i.i790, 2, !dbg !212
  %113 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i791, i32 %109), !dbg !213
  %114 = bitcast i32 %113 to float, !dbg !214
  %add503 = fadd contract float %denominator.sroa.0.0, %114, !dbg !215
  %115 = bitcast float %add503 to i32, !dbg !216
  %116 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !218
  %117 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %116) #10, !dbg !221
  %xor.i.i792 = xor i32 %117, 16, !dbg !222
  %118 = and i32 %117, -64, !dbg !223
  %and.i.i793 = add nsw i32 %118, 64, !dbg !223
  %cmp.not.i.i794 = icmp slt i32 %xor.i.i792, %and.i.i793, !dbg !224
  %cond.i.i795 = select i1 %cmp.not.i.i794, i32 %xor.i.i792, i32 %117, !dbg !225
  %shl.i.i796 = shl i32 %cond.i.i795, 2, !dbg !226
  %119 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i796, i32 %115), !dbg !227
  %120 = bitcast i32 %119 to float, !dbg !228
  %add508 = fadd contract float %add503, %120, !dbg !229
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !230
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !230
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !230
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !230
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %add508, !dbg !231
  %div528 = fdiv contract float %numerator.sroa.0.4.vec.extract, %add508, !dbg !232
  %div532 = fdiv contract float %numerator.sroa.0.8.vec.extract, %add508, !dbg !233
  %div536 = fdiv contract float %numerator.sroa.0.12.vec.extract, %add508, !dbg !234
  %numerator.sroa.20.16.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 0, !dbg !230
  %numerator.sroa.20.20.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 1, !dbg !230
  %numerator.sroa.20.24.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 2, !dbg !230
  %numerator.sroa.20.28.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 3, !dbg !230
  %div.1 = fdiv contract float %numerator.sroa.20.16.vec.extract, %add508, !dbg !231
  %div528.1 = fdiv contract float %numerator.sroa.20.20.vec.extract, %add508, !dbg !232
  %div532.1 = fdiv contract float %numerator.sroa.20.24.vec.extract, %add508, !dbg !233
  %div536.1 = fdiv contract float %numerator.sroa.20.28.vec.extract, %add508, !dbg !234
  %numerator.sroa.38.32.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 0, !dbg !230
  %numerator.sroa.38.36.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 1, !dbg !230
  %numerator.sroa.38.40.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 2, !dbg !230
  %numerator.sroa.38.44.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 3, !dbg !230
  %div.2 = fdiv contract float %numerator.sroa.38.32.vec.extract, %add508, !dbg !231
  %div528.2 = fdiv contract float %numerator.sroa.38.36.vec.extract, %add508, !dbg !232
  %div532.2 = fdiv contract float %numerator.sroa.38.40.vec.extract, %add508, !dbg !233
  %div536.2 = fdiv contract float %numerator.sroa.38.44.vec.extract, %add508, !dbg !234
  %numerator.sroa.56.48.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 0, !dbg !230
  %numerator.sroa.56.52.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 1, !dbg !230
  %numerator.sroa.56.56.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 2, !dbg !230
  %numerator.sroa.56.60.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 3, !dbg !230
  %div.3 = fdiv contract float %numerator.sroa.56.48.vec.extract, %add508, !dbg !231
  %div528.3 = fdiv contract float %numerator.sroa.56.52.vec.extract, %add508, !dbg !232
  %div532.3 = fdiv contract float %numerator.sroa.56.56.vec.extract, %add508, !dbg !233
  %div536.3 = fdiv contract float %numerator.sroa.56.60.vec.extract, %add508, !dbg !234
  %numerator.sroa.74.64.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 0, !dbg !230
  %numerator.sroa.74.68.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 1, !dbg !230
  %numerator.sroa.74.72.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 2, !dbg !230
  %numerator.sroa.74.76.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 3, !dbg !230
  %div.4 = fdiv contract float %numerator.sroa.74.64.vec.extract, %add508, !dbg !231
  %div528.4 = fdiv contract float %numerator.sroa.74.68.vec.extract, %add508, !dbg !232
  %div532.4 = fdiv contract float %numerator.sroa.74.72.vec.extract, %add508, !dbg !233
  %div536.4 = fdiv contract float %numerator.sroa.74.76.vec.extract, %add508, !dbg !234
  %numerator.sroa.92.80.vec.extract = extractelement <4 x float> %numerator.sroa.92.0, i64 0, !dbg !230
  %numerator.sroa.92.84.vec.extract = extractelement <4 x float> %numerator.sroa.92.0, i64 1, !dbg !230
  %numerator.sroa.92.88.vec.extract = extractelement <4 x float> %numerator.sroa.92.0, i64 2, !dbg !230
  %numerator.sroa.92.92.vec.extract = extractelement <4 x float> %numerator.sroa.92.0, i64 3, !dbg !230
  %div.5 = fdiv contract float %numerator.sroa.92.80.vec.extract, %add508, !dbg !231
  %div528.5 = fdiv contract float %numerator.sroa.92.84.vec.extract, %add508, !dbg !232
  %div532.5 = fdiv contract float %numerator.sroa.92.88.vec.extract, %add508, !dbg !233
  %div536.5 = fdiv contract float %numerator.sroa.92.92.vec.extract, %add508, !dbg !234
  %numerator.sroa.110.96.vec.extract = extractelement <4 x float> %numerator.sroa.110.0, i64 0, !dbg !230
  %numerator.sroa.110.100.vec.extract = extractelement <4 x float> %numerator.sroa.110.0, i64 1, !dbg !230
  %numerator.sroa.110.104.vec.extract = extractelement <4 x float> %numerator.sroa.110.0, i64 2, !dbg !230
  %numerator.sroa.110.108.vec.extract = extractelement <4 x float> %numerator.sroa.110.0, i64 3, !dbg !230
  %div.6 = fdiv contract float %numerator.sroa.110.96.vec.extract, %add508, !dbg !231
  %div528.6 = fdiv contract float %numerator.sroa.110.100.vec.extract, %add508, !dbg !232
  %div532.6 = fdiv contract float %numerator.sroa.110.104.vec.extract, %add508, !dbg !233
  %div536.6 = fdiv contract float %numerator.sroa.110.108.vec.extract, %add508, !dbg !234
  %numerator.sroa.128.112.vec.extract = extractelement <4 x float> %numerator.sroa.128.0, i64 0, !dbg !230
  %numerator.sroa.128.116.vec.extract = extractelement <4 x float> %numerator.sroa.128.0, i64 1, !dbg !230
  %numerator.sroa.128.120.vec.extract = extractelement <4 x float> %numerator.sroa.128.0, i64 2, !dbg !230
  %numerator.sroa.128.124.vec.extract = extractelement <4 x float> %numerator.sroa.128.0, i64 3, !dbg !230
  %div.7 = fdiv contract float %numerator.sroa.128.112.vec.extract, %add508, !dbg !231
  %div528.7 = fdiv contract float %numerator.sroa.128.116.vec.extract, %add508, !dbg !232
  %div532.7 = fdiv contract float %numerator.sroa.128.120.vec.extract, %add508, !dbg !233
  %div536.7 = fdiv contract float %numerator.sroa.128.124.vec.extract, %add508, !dbg !234
  fence syncscope("warp") release, !dbg !235
  tail call void @llvm.mxc.barrier.warp(), !dbg !238
  fence syncscope("warp") acquire, !dbg !239
  %xor589 = shl nuw nsw i32 %14, 2
  %mul590 = and i32 %xor589, 4
  %add572 = or disjoint i32 %mul590, %mul50
  %121 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %122 = fptrunc float %div to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %121), !dbg !240, !noalias !244
  %123 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %124 = fptrunc float %div528 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %123), !dbg !249, !noalias !244
  %125 = bitcast half %122 to i16, !dbg !251
  %126 = bitcast half %124 to i16, !dbg !254
  %127 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %128 = fptrunc float %div532 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %127), !dbg !255, !noalias !259
  %129 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %130 = fptrunc float %div536 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %129), !dbg !264, !noalias !259
  %131 = bitcast half %128 to i16, !dbg !266
  %132 = bitcast half %130 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext = zext i16 %132 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift = shl nuw i64 %__7.sroa.6.0.insert.ext, 48, !dbg !269
  %__7.sroa.5.0.insert.ext = zext i16 %131 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift = shl nuw nsw i64 %__7.sroa.5.0.insert.ext, 32, !dbg !269
  %__7.sroa.5.0.insert.insert = or disjoint i64 %__7.sroa.6.0.insert.shift, %__7.sroa.5.0.insert.shift, !dbg !269
  %__7.sroa.4.0.insert.ext = zext i16 %126 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift = shl nuw nsw i64 %__7.sroa.4.0.insert.ext, 16, !dbg !269
  %__7.sroa.4.0.insert.insert = or disjoint i64 %__7.sroa.5.0.insert.insert, %__7.sroa.4.0.insert.shift, !dbg !269
  %__7.sroa.0.0.insert.ext = zext i16 %125 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert = or disjoint i64 %__7.sroa.4.0.insert.insert, %__7.sroa.0.0.insert.ext, !dbg !269
  %133 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add572, !dbg !270
  %add.ptr593 = getelementptr inbounds i8, ptr addrspace(3) %133, i32 %add.ptr77.idx, !dbg !270
  store i64 %__7.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr593, align 8, !dbg !271
  %134 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %135 = fptrunc float %div.1 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %134), !dbg !240, !noalias !244
  %136 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %137 = fptrunc float %div528.1 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %136), !dbg !249, !noalias !244
  %138 = bitcast half %135 to i16, !dbg !251
  %139 = bitcast half %137 to i16, !dbg !254
  %140 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %141 = fptrunc float %div532.1 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %140), !dbg !255, !noalias !259
  %142 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %143 = fptrunc float %div536.1 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %142), !dbg !264, !noalias !259
  %144 = bitcast half %141 to i16, !dbg !266
  %145 = bitcast half %143 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext.1 = zext i16 %145 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.1, 48, !dbg !269
  %__7.sroa.5.0.insert.ext.1 = zext i16 %144 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1, 32, !dbg !269
  %__7.sroa.5.0.insert.insert.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.1, %__7.sroa.5.0.insert.shift.1, !dbg !269
  %__7.sroa.4.0.insert.ext.1 = zext i16 %139 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1, 16, !dbg !269
  %__7.sroa.4.0.insert.insert.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.1, %__7.sroa.4.0.insert.shift.1, !dbg !269
  %__7.sroa.0.0.insert.ext.1 = zext i16 %138 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.1, %__7.sroa.0.0.insert.ext.1, !dbg !269
  %add.ptr593.1 = getelementptr inbounds i8, ptr addrspace(3) %133, i32 %add.ptr77.idx.1, !dbg !270
  store i64 %__7.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr593.1, align 8, !dbg !271
  %146 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %147 = fptrunc float %div.2 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %146), !dbg !240, !noalias !244
  %148 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %149 = fptrunc float %div528.2 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %148), !dbg !249, !noalias !244
  %150 = bitcast half %147 to i16, !dbg !251
  %151 = bitcast half %149 to i16, !dbg !254
  %152 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %153 = fptrunc float %div532.2 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %152), !dbg !255, !noalias !259
  %154 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %155 = fptrunc float %div536.2 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %154), !dbg !264, !noalias !259
  %156 = bitcast half %153 to i16, !dbg !266
  %157 = bitcast half %155 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext.2 = zext i16 %157 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift.2 = shl nuw i64 %__7.sroa.6.0.insert.ext.2, 48, !dbg !269
  %__7.sroa.5.0.insert.ext.2 = zext i16 %156 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.2, 32, !dbg !269
  %__7.sroa.5.0.insert.insert.2 = or disjoint i64 %__7.sroa.6.0.insert.shift.2, %__7.sroa.5.0.insert.shift.2, !dbg !269
  %__7.sroa.4.0.insert.ext.2 = zext i16 %151 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.2, 16, !dbg !269
  %__7.sroa.4.0.insert.insert.2 = or disjoint i64 %__7.sroa.5.0.insert.insert.2, %__7.sroa.4.0.insert.shift.2, !dbg !269
  %__7.sroa.0.0.insert.ext.2 = zext i16 %150 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert.2 = or disjoint i64 %__7.sroa.4.0.insert.insert.2, %__7.sroa.0.0.insert.ext.2, !dbg !269
  %add.ptr593.2 = getelementptr inbounds i8, ptr addrspace(3) %133, i32 %add.ptr77.idx.2, !dbg !270
  store i64 %__7.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr593.2, align 8, !dbg !271
  %158 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %159 = fptrunc float %div.3 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %158), !dbg !240, !noalias !244
  %160 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %161 = fptrunc float %div528.3 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %160), !dbg !249, !noalias !244
  %162 = bitcast half %159 to i16, !dbg !251
  %163 = bitcast half %161 to i16, !dbg !254
  %164 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %165 = fptrunc float %div532.3 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %164), !dbg !255, !noalias !259
  %166 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %167 = fptrunc float %div536.3 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %166), !dbg !264, !noalias !259
  %168 = bitcast half %165 to i16, !dbg !266
  %169 = bitcast half %167 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext.3 = zext i16 %169 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift.3 = shl nuw i64 %__7.sroa.6.0.insert.ext.3, 48, !dbg !269
  %__7.sroa.5.0.insert.ext.3 = zext i16 %168 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.3, 32, !dbg !269
  %__7.sroa.5.0.insert.insert.3 = or disjoint i64 %__7.sroa.6.0.insert.shift.3, %__7.sroa.5.0.insert.shift.3, !dbg !269
  %__7.sroa.4.0.insert.ext.3 = zext i16 %163 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.3, 16, !dbg !269
  %__7.sroa.4.0.insert.insert.3 = or disjoint i64 %__7.sroa.5.0.insert.insert.3, %__7.sroa.4.0.insert.shift.3, !dbg !269
  %__7.sroa.0.0.insert.ext.3 = zext i16 %162 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert.3 = or disjoint i64 %__7.sroa.4.0.insert.insert.3, %__7.sroa.0.0.insert.ext.3, !dbg !269
  %add.ptr593.3 = getelementptr inbounds i8, ptr addrspace(3) %133, i32 %add.ptr77.idx.3, !dbg !270
  store i64 %__7.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr593.3, align 8, !dbg !271
  %170 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %171 = fptrunc float %div.4 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %170), !dbg !240, !noalias !244
  %172 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %173 = fptrunc float %div528.4 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %172), !dbg !249, !noalias !244
  %174 = bitcast half %171 to i16, !dbg !251
  %175 = bitcast half %173 to i16, !dbg !254
  %176 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %177 = fptrunc float %div532.4 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %176), !dbg !255, !noalias !259
  %178 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %179 = fptrunc float %div536.4 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %178), !dbg !264, !noalias !259
  %180 = bitcast half %177 to i16, !dbg !266
  %181 = bitcast half %179 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext.4 = zext i16 %181 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift.4 = shl nuw i64 %__7.sroa.6.0.insert.ext.4, 48, !dbg !269
  %__7.sroa.5.0.insert.ext.4 = zext i16 %180 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift.4 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.4, 32, !dbg !269
  %__7.sroa.5.0.insert.insert.4 = or disjoint i64 %__7.sroa.6.0.insert.shift.4, %__7.sroa.5.0.insert.shift.4, !dbg !269
  %__7.sroa.4.0.insert.ext.4 = zext i16 %175 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift.4 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.4, 16, !dbg !269
  %__7.sroa.4.0.insert.insert.4 = or disjoint i64 %__7.sroa.5.0.insert.insert.4, %__7.sroa.4.0.insert.shift.4, !dbg !269
  %__7.sroa.0.0.insert.ext.4 = zext i16 %174 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert.4 = or disjoint i64 %__7.sroa.4.0.insert.insert.4, %__7.sroa.0.0.insert.ext.4, !dbg !269
  %add582.4 = or disjoint i32 %add572, 64, !dbg !272
  %182 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add582.4, !dbg !270
  %add.ptr593.4 = getelementptr inbounds i8, ptr addrspace(3) %182, i32 %add.ptr77.idx, !dbg !270
  store i64 %__7.sroa.0.0.insert.insert.4, ptr addrspace(3) %add.ptr593.4, align 8, !dbg !271
  %183 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %184 = fptrunc float %div.5 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %183), !dbg !240, !noalias !244
  %185 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %186 = fptrunc float %div528.5 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %185), !dbg !249, !noalias !244
  %187 = bitcast half %184 to i16, !dbg !251
  %188 = bitcast half %186 to i16, !dbg !254
  %189 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %190 = fptrunc float %div532.5 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %189), !dbg !255, !noalias !259
  %191 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %192 = fptrunc float %div536.5 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %191), !dbg !264, !noalias !259
  %193 = bitcast half %190 to i16, !dbg !266
  %194 = bitcast half %192 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext.5 = zext i16 %194 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift.5 = shl nuw i64 %__7.sroa.6.0.insert.ext.5, 48, !dbg !269
  %__7.sroa.5.0.insert.ext.5 = zext i16 %193 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift.5 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.5, 32, !dbg !269
  %__7.sroa.5.0.insert.insert.5 = or disjoint i64 %__7.sroa.6.0.insert.shift.5, %__7.sroa.5.0.insert.shift.5, !dbg !269
  %__7.sroa.4.0.insert.ext.5 = zext i16 %188 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift.5 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.5, 16, !dbg !269
  %__7.sroa.4.0.insert.insert.5 = or disjoint i64 %__7.sroa.5.0.insert.insert.5, %__7.sroa.4.0.insert.shift.5, !dbg !269
  %__7.sroa.0.0.insert.ext.5 = zext i16 %187 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert.5 = or disjoint i64 %__7.sroa.4.0.insert.insert.5, %__7.sroa.0.0.insert.ext.5, !dbg !269
  %add.ptr593.5 = getelementptr inbounds i8, ptr addrspace(3) %182, i32 %add.ptr77.idx.1, !dbg !270
  store i64 %__7.sroa.0.0.insert.insert.5, ptr addrspace(3) %add.ptr593.5, align 8, !dbg !271
  %195 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %196 = fptrunc float %div.6 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %195), !dbg !240, !noalias !244
  %197 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %198 = fptrunc float %div528.6 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %197), !dbg !249, !noalias !244
  %199 = bitcast half %196 to i16, !dbg !251
  %200 = bitcast half %198 to i16, !dbg !254
  %201 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %202 = fptrunc float %div532.6 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %201), !dbg !255, !noalias !259
  %203 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %204 = fptrunc float %div536.6 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %203), !dbg !264, !noalias !259
  %205 = bitcast half %202 to i16, !dbg !266
  %206 = bitcast half %204 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext.6 = zext i16 %206 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift.6 = shl nuw i64 %__7.sroa.6.0.insert.ext.6, 48, !dbg !269
  %__7.sroa.5.0.insert.ext.6 = zext i16 %205 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift.6 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.6, 32, !dbg !269
  %__7.sroa.5.0.insert.insert.6 = or disjoint i64 %__7.sroa.6.0.insert.shift.6, %__7.sroa.5.0.insert.shift.6, !dbg !269
  %__7.sroa.4.0.insert.ext.6 = zext i16 %200 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift.6 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.6, 16, !dbg !269
  %__7.sroa.4.0.insert.insert.6 = or disjoint i64 %__7.sroa.5.0.insert.insert.6, %__7.sroa.4.0.insert.shift.6, !dbg !269
  %__7.sroa.0.0.insert.ext.6 = zext i16 %199 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert.6 = or disjoint i64 %__7.sroa.4.0.insert.insert.6, %__7.sroa.0.0.insert.ext.6, !dbg !269
  %add.ptr593.6 = getelementptr inbounds i8, ptr addrspace(3) %182, i32 %add.ptr77.idx.2, !dbg !270
  store i64 %__7.sroa.0.0.insert.insert.6, ptr addrspace(3) %add.ptr593.6, align 8, !dbg !271
  %207 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %208 = fptrunc float %div.7 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %207), !dbg !240, !noalias !244
  %209 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %210 = fptrunc float %div528.7 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %209), !dbg !249, !noalias !244
  %211 = bitcast half %208 to i16, !dbg !251
  %212 = bitcast half %210 to i16, !dbg !254
  %213 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %214 = fptrunc float %div532.7 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %213), !dbg !255, !noalias !259
  %215 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %216 = fptrunc float %div536.7 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %215), !dbg !264, !noalias !259
  %217 = bitcast half %214 to i16, !dbg !266
  %218 = bitcast half %216 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext.7 = zext i16 %218 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift.7 = shl nuw i64 %__7.sroa.6.0.insert.ext.7, 48, !dbg !269
  %__7.sroa.5.0.insert.ext.7 = zext i16 %217 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift.7 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.7, 32, !dbg !269
  %__7.sroa.5.0.insert.insert.7 = or disjoint i64 %__7.sroa.6.0.insert.shift.7, %__7.sroa.5.0.insert.shift.7, !dbg !269
  %__7.sroa.4.0.insert.ext.7 = zext i16 %212 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift.7 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.7, 16, !dbg !269
  %__7.sroa.4.0.insert.insert.7 = or disjoint i64 %__7.sroa.5.0.insert.insert.7, %__7.sroa.4.0.insert.shift.7, !dbg !269
  %__7.sroa.0.0.insert.ext.7 = zext i16 %211 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert.7 = or disjoint i64 %__7.sroa.4.0.insert.insert.7, %__7.sroa.0.0.insert.ext.7, !dbg !269
  %add.ptr593.7 = getelementptr inbounds i8, ptr addrspace(3) %182, i32 %add.ptr77.idx.3, !dbg !270
  store i64 %__7.sroa.0.0.insert.insert.7, ptr addrspace(3) %add.ptr593.7, align 8, !dbg !271
  fence syncscope("warp") release, !dbg !273
  tail call void @llvm.mxc.barrier.warp(), !dbg !276
  fence syncscope("warp") acquire, !dbg !277
  %219 = load i64, ptr addrspace(3) %4, align 16, !dbg !278
  %add.ptr625.1 = getelementptr inbounds i8, ptr addrspace(3) %4, i32 8, !dbg !279
  %220 = load i64, ptr addrspace(3) %add.ptr625.1, align 8, !dbg !278
  %add.ptr643 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %2, !dbg !280
  store i64 %219, ptr addrspace(1) %add.ptr643, align 16, !dbg !281
  %output_fetch.sroa.10.0.add.ptr643.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr643, i64 8, !dbg !281
  store i64 %220, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr643.sroa_idx, align 8, !dbg !281
  %221 = load i64, ptr addrspace(3) %7, align 16, !dbg !278
  %add.ptr625.1.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 8, !dbg !279
  %222 = load i64, ptr addrspace(3) %add.ptr625.1.1, align 8, !dbg !278
  %add.ptr643.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %5, !dbg !280
  store i64 %221, ptr addrspace(1) %add.ptr643.1, align 16, !dbg !281
  %output_fetch.sroa.10.0.add.ptr643.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr643.1, i64 8, !dbg !281
  store i64 %222, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr643.1.sroa_idx, align 8, !dbg !281
  %add.ptr625.2 = getelementptr inbounds i8, ptr addrspace(3) %10, i32 8, !dbg !279
  %223 = load i64, ptr addrspace(3) %add.ptr625.2, align 8, !dbg !278
  %224 = load i64, ptr addrspace(3) %10, align 16, !dbg !278
  %add.ptr643.2 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %8, !dbg !280
  store i64 %223, ptr addrspace(1) %add.ptr643.2, align 16, !dbg !281
  %output_fetch.sroa.10.0.add.ptr643.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr643.2, i64 8, !dbg !281
  store i64 %224, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr643.2.sroa_idx, align 8, !dbg !281
  %add.ptr625.3 = getelementptr inbounds i8, ptr addrspace(3) %13, i32 8, !dbg !279
  %225 = load i64, ptr addrspace(3) %add.ptr625.3, align 8, !dbg !278
  %226 = load i64, ptr addrspace(3) %13, align 16, !dbg !278
  %add.ptr643.3 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %11, !dbg !280
  store i64 %225, ptr addrspace(1) %add.ptr643.3, align 16, !dbg !281
  %output_fetch.sroa.10.0.add.ptr643.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr643.3, i64 8, !dbg !281
  store i64 %226, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr643.3.sroa_idx, align 8, !dbg !281
  ret void, !dbg !282
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v200_worker2_baseline_profile_subagent2/codegen/parent_v084/case3_stage1.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v200_worker2_baseline_profile_subagent2/codegen/parent_v084/case3_stage1.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 27, column: 3, scope: !40)
!44 = !DILocation(line: 28, column: 43, scope: !40)
!45 = !DILocation(line: 28, column: 29, scope: !40)
!46 = !DILocation(line: 31, column: 24, scope: !40)
!47 = !DILocation(line: 31, column: 231, scope: !40)
!48 = !DILocation(line: 28, column: 90, scope: !40)
!49 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !52)
!50 = distinct !DISubprogram(name: "__barrier_warp", scope: !51, file: !51, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!51 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!52 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !54)
!53 = distinct !DISubprogram(name: "__syncwarp", scope: !51, file: !51, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!54 = distinct !DILocation(line: 34, column: 3, scope: !40)
!55 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !52)
!56 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !52)
!57 = !DILocation(line: 37, column: 171, scope: !40)
!58 = !DILocation(line: 37, column: 57, scope: !40)
!59 = !DILocation(line: 37, column: 142, scope: !40)
!60 = !DILocation(line: 46, column: 22, scope: !40)
!61 = !DILocation(line: 46, column: 49, scope: !40)
!62 = !DILocation(line: 47, column: 10, scope: !40)
!63 = !DILocation(line: 47, column: 26, scope: !40)
!64 = !DILocation(line: 37, column: 119, scope: !40)
!65 = !DILocation(line: 37, column: 38, scope: !40)
!66 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !67)
!67 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !68)
!68 = distinct !DILocation(line: 48, column: 5, scope: !40)
!69 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !67)
!70 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !67)
!71 = !DILocation(line: 50, column: 10, scope: !40)
!72 = !DILocation(line: 51, column: 45, scope: !40)
!73 = !DILocation(line: 51, column: 31, scope: !40)
!74 = !DILocation(line: 54, column: 241, scope: !40)
!75 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !76)
!76 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !77)
!77 = distinct !DILocation(line: 57, column: 5, scope: !40)
!78 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !76)
!79 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !76)
!80 = !DILocation(line: 62, column: 30, scope: !40)
!81 = !DILocation(line: 64, column: 37, scope: !40)
!82 = !DILocation(line: 72, column: 72, scope: !40)
!83 = !DILocation(line: 72, column: 11, scope: !40)
!84 = !DILocation(line: 72, column: 61, scope: !40)
!85 = !DILocation(line: 351, column: 10, scope: !86, inlinedAt: !88)
!86 = distinct !DISubprogram(name: "max", scope: !87, file: !87, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!87 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!88 = distinct !DILocation(line: 82, column: 20, scope: !40)
!89 = !DILocation(line: 1018, column: 9, scope: !90, inlinedAt: !91)
!90 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!91 = distinct !DILocation(line: 84, column: 34, scope: !40)
!92 = !DILocation(line: 171, column: 37, scope: !93, inlinedAt: !94)
!93 = distinct !DISubprogram(name: "__lane_id", scope: !51, file: !51, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!94 = distinct !DILocation(line: 990, column: 14, scope: !95, inlinedAt: !96)
!95 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!96 = distinct !DILocation(line: 1019, column: 11, scope: !90, inlinedAt: !91)
!97 = !DILocation(line: 171, column: 10, scope: !93, inlinedAt: !94)
!98 = !DILocation(line: 991, column: 20, scope: !95, inlinedAt: !96)
!99 = !DILocation(line: 992, column: 36, scope: !95, inlinedAt: !96)
!100 = !DILocation(line: 992, column: 17, scope: !95, inlinedAt: !96)
!101 = !DILocation(line: 992, column: 11, scope: !95, inlinedAt: !96)
!102 = !DILocation(line: 993, column: 43, scope: !95, inlinedAt: !96)
!103 = !DILocation(line: 993, column: 10, scope: !95, inlinedAt: !96)
!104 = !DILocation(line: 1020, column: 14, scope: !90, inlinedAt: !91)
!105 = !DILocation(line: 351, column: 10, scope: !86, inlinedAt: !106)
!106 = distinct !DILocation(line: 84, column: 18, scope: !40)
!107 = !DILocation(line: 1018, column: 9, scope: !90, inlinedAt: !108)
!108 = distinct !DILocation(line: 85, column: 34, scope: !40)
!109 = !DILocation(line: 171, column: 37, scope: !93, inlinedAt: !110)
!110 = distinct !DILocation(line: 990, column: 14, scope: !95, inlinedAt: !111)
!111 = distinct !DILocation(line: 1019, column: 11, scope: !90, inlinedAt: !108)
!112 = !DILocation(line: 171, column: 10, scope: !93, inlinedAt: !110)
!113 = !DILocation(line: 991, column: 20, scope: !95, inlinedAt: !111)
!114 = !DILocation(line: 992, column: 36, scope: !95, inlinedAt: !111)
!115 = !DILocation(line: 992, column: 17, scope: !95, inlinedAt: !111)
!116 = !DILocation(line: 992, column: 11, scope: !95, inlinedAt: !111)
!117 = !DILocation(line: 993, column: 43, scope: !95, inlinedAt: !111)
!118 = !DILocation(line: 993, column: 10, scope: !95, inlinedAt: !111)
!119 = !DILocation(line: 1020, column: 14, scope: !90, inlinedAt: !108)
!120 = !DILocation(line: 351, column: 10, scope: !86, inlinedAt: !121)
!121 = distinct !DILocation(line: 85, column: 18, scope: !40)
!122 = !DILocation(line: 95, column: 24, scope: !40)
!123 = !DILocation(line: 96, column: 24, scope: !40)
!124 = !DILocation(line: 97, column: 24, scope: !40)
!125 = !DILocation(line: 98, column: 24, scope: !40)
!126 = !DILocation(line: 100, column: 23, scope: !40)
!127 = !DILocation(line: 101, column: 23, scope: !40)
!128 = !DILocation(line: 102, column: 23, scope: !40)
!129 = !DILocation(line: 103, column: 23, scope: !40)
!130 = !DILocation(line: 105, column: 21, scope: !40)
!131 = !DILocation(line: 106, column: 21, scope: !40)
!132 = !DILocation(line: 107, column: 21, scope: !40)
!133 = !DILocation(line: 108, column: 21, scope: !40)
!134 = !DILocation(line: 285, column: 49, scope: !135, inlinedAt: !136)
!135 = distinct !DISubprogram(name: "exp2f", scope: !87, file: !87, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!136 = distinct !DILocation(line: 109, column: 13, scope: !40)
!137 = !DILocation(line: 285, column: 49, scope: !135, inlinedAt: !138)
!138 = distinct !DILocation(line: 110, column: 13, scope: !40)
!139 = !DILocation(line: 285, column: 49, scope: !135, inlinedAt: !140)
!140 = distinct !DILocation(line: 111, column: 13, scope: !40)
!141 = !DILocation(line: 285, column: 49, scope: !135, inlinedAt: !142)
!142 = distinct !DILocation(line: 112, column: 13, scope: !40)
!143 = !DILocation(line: 1007, column: 10, scope: !144, inlinedAt: !146)
!144 = distinct !DISubprogram(name: "__float2half_rn", scope: !145, file: !145, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!145 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!146 = distinct !DILocation(line: 1077, column: 18, scope: !147, inlinedAt: !148)
!147 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !145, file: !145, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!148 = distinct !DILocation(line: 1295, column: 23, scope: !149, inlinedAt: !150)
!149 = distinct !DISubprogram(name: "__float22half2_rn", scope: !145, file: !145, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!150 = distinct !DILocation(line: 113, column: 27, scope: !40)
!151 = !{!152, !154}
!152 = distinct !{!152, !153, !"_ZL17__floats2half2_rnff: %agg.result"}
!153 = distinct !{!153, !"_ZL17__floats2half2_rnff"}
!154 = distinct !{!154, !155, !"_ZL17__float22half2_rn6float2: %agg.result"}
!155 = distinct !{!155, !"_ZL17__float22half2_rn6float2"}
!156 = !DILocation(line: 1007, column: 10, scope: !144, inlinedAt: !157)
!157 = distinct !DILocation(line: 1077, column: 38, scope: !147, inlinedAt: !148)
!158 = !DILocation(line: 1007, column: 10, scope: !144, inlinedAt: !159)
!159 = distinct !DILocation(line: 1077, column: 18, scope: !147, inlinedAt: !160)
!160 = distinct !DILocation(line: 1295, column: 23, scope: !149, inlinedAt: !161)
!161 = distinct !DILocation(line: 114, column: 27, scope: !40)
!162 = !{!163, !165}
!163 = distinct !{!163, !164, !"_ZL17__floats2half2_rnff: %agg.result"}
!164 = distinct !{!164, !"_ZL17__floats2half2_rnff"}
!165 = distinct !{!165, !166, !"_ZL17__float22half2_rn6float2: %agg.result"}
!166 = distinct !{!166, !"_ZL17__float22half2_rn6float2"}
!167 = !DILocation(line: 1007, column: 10, scope: !144, inlinedAt: !168)
!168 = distinct !DILocation(line: 1077, column: 38, scope: !147, inlinedAt: !160)
!169 = !DILocation(line: 115, column: 34, scope: !40)
!170 = !DILocation(line: 1082, column: 16, scope: !171, inlinedAt: !172)
!171 = distinct !DISubprogram(name: "__half2float", scope: !145, file: !145, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!172 = distinct !DILocation(line: 136, column: 55, scope: !173, inlinedAt: !174)
!173 = distinct !DISubprogram(name: "operator float", scope: !145, file: !145, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!174 = distinct !DILocation(line: 119, column: 50, scope: !40)
!175 = !DILocation(line: 119, column: 40, scope: !40)
!176 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !177)
!177 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !178)
!178 = distinct !DILocation(line: 122, column: 5, scope: !40)
!179 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !177)
!180 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !177)
!181 = !DILocation(line: 127, column: 237, scope: !40)
!182 = !DILocation(line: 127, column: 54, scope: !40)
!183 = !DILocation(line: 127, column: 40, scope: !40)
!184 = !DILocation(line: 134, column: 153, scope: !40)
!185 = !DILocation(line: 134, column: 239, scope: !40)
!186 = !DILocation(line: 134, column: 160, scope: !40)
!187 = !DILocation(line: 134, column: 26, scope: !40)
!188 = !DILocation(line: 134, column: 288, scope: !40)
!189 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !190)
!190 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !191)
!191 = distinct !DILocation(line: 137, column: 5, scope: !40)
!192 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !190)
!193 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !190)
!194 = !DILocation(line: 140, column: 152, scope: !40)
!195 = !DILocation(line: 140, column: 224, scope: !40)
!196 = !DILocation(line: 140, column: 63, scope: !40)
!197 = !DILocation(line: 140, column: 44, scope: !40)
!198 = !DILocation(line: 140, column: 91, scope: !40)
!199 = !DILocation(line: 145, column: 46, scope: !40)
!200 = !DILocation(line: 121, column: 38, scope: !40)
!201 = !DILocation(line: 1018, column: 9, scope: !90, inlinedAt: !202)
!202 = distinct !DILocation(line: 151, column: 38, scope: !40)
!203 = !DILocation(line: 0, scope: !40)
!204 = !DILocation(line: 171, column: 37, scope: !93, inlinedAt: !205)
!205 = distinct !DILocation(line: 990, column: 14, scope: !95, inlinedAt: !206)
!206 = distinct !DILocation(line: 1019, column: 11, scope: !90, inlinedAt: !202)
!207 = !DILocation(line: 171, column: 10, scope: !93, inlinedAt: !205)
!208 = !DILocation(line: 991, column: 20, scope: !95, inlinedAt: !206)
!209 = !DILocation(line: 992, column: 36, scope: !95, inlinedAt: !206)
!210 = !DILocation(line: 992, column: 17, scope: !95, inlinedAt: !206)
!211 = !DILocation(line: 992, column: 11, scope: !95, inlinedAt: !206)
!212 = !DILocation(line: 993, column: 43, scope: !95, inlinedAt: !206)
!213 = !DILocation(line: 993, column: 10, scope: !95, inlinedAt: !206)
!214 = !DILocation(line: 1020, column: 14, scope: !90, inlinedAt: !202)
!215 = !DILocation(line: 151, column: 36, scope: !40)
!216 = !DILocation(line: 1018, column: 9, scope: !90, inlinedAt: !217)
!217 = distinct !DILocation(line: 152, column: 38, scope: !40)
!218 = !DILocation(line: 171, column: 37, scope: !93, inlinedAt: !219)
!219 = distinct !DILocation(line: 990, column: 14, scope: !95, inlinedAt: !220)
!220 = distinct !DILocation(line: 1019, column: 11, scope: !90, inlinedAt: !217)
!221 = !DILocation(line: 171, column: 10, scope: !93, inlinedAt: !219)
!222 = !DILocation(line: 991, column: 20, scope: !95, inlinedAt: !220)
!223 = !DILocation(line: 992, column: 36, scope: !95, inlinedAt: !220)
!224 = !DILocation(line: 992, column: 17, scope: !95, inlinedAt: !220)
!225 = !DILocation(line: 992, column: 11, scope: !95, inlinedAt: !220)
!226 = !DILocation(line: 993, column: 43, scope: !95, inlinedAt: !220)
!227 = !DILocation(line: 993, column: 10, scope: !95, inlinedAt: !220)
!228 = !DILocation(line: 1020, column: 14, scope: !90, inlinedAt: !217)
!229 = !DILocation(line: 152, column: 36, scope: !40)
!230 = !DILocation(line: 156, column: 21, scope: !40)
!231 = !DILocation(line: 158, column: 22, scope: !40)
!232 = !DILocation(line: 159, column: 22, scope: !40)
!233 = !DILocation(line: 160, column: 22, scope: !40)
!234 = !DILocation(line: 161, column: 22, scope: !40)
!235 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !236)
!236 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !237)
!237 = distinct !DILocation(line: 164, column: 3, scope: !40)
!238 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !236)
!239 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !236)
!240 = !DILocation(line: 1007, column: 10, scope: !144, inlinedAt: !241)
!241 = distinct !DILocation(line: 1077, column: 18, scope: !147, inlinedAt: !242)
!242 = distinct !DILocation(line: 1295, column: 23, scope: !149, inlinedAt: !243)
!243 = distinct !DILocation(line: 169, column: 27, scope: !40)
!244 = !{!245, !247}
!245 = distinct !{!245, !246, !"_ZL17__floats2half2_rnff: %agg.result"}
!246 = distinct !{!246, !"_ZL17__floats2half2_rnff"}
!247 = distinct !{!247, !248, !"_ZL17__float22half2_rn6float2: %agg.result"}
!248 = distinct !{!248, !"_ZL17__float22half2_rn6float2"}
!249 = !DILocation(line: 1007, column: 10, scope: !144, inlinedAt: !250)
!250 = distinct !DILocation(line: 1077, column: 38, scope: !147, inlinedAt: !242)
!251 = !DILocation(line: 596, column: 67, scope: !252, inlinedAt: !253)
!252 = distinct !DISubprogram(name: "__half2", scope: !145, file: !145, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!253 = distinct !DILocation(line: 1077, column: 10, scope: !147, inlinedAt: !242)
!254 = !DILocation(line: 596, column: 73, scope: !252, inlinedAt: !253)
!255 = !DILocation(line: 1007, column: 10, scope: !144, inlinedAt: !256)
!256 = distinct !DILocation(line: 1077, column: 18, scope: !147, inlinedAt: !257)
!257 = distinct !DILocation(line: 1295, column: 23, scope: !149, inlinedAt: !258)
!258 = distinct !DILocation(line: 170, column: 27, scope: !40)
!259 = !{!260, !262}
!260 = distinct !{!260, !261, !"_ZL17__floats2half2_rnff: %agg.result"}
!261 = distinct !{!261, !"_ZL17__floats2half2_rnff"}
!262 = distinct !{!262, !263, !"_ZL17__float22half2_rn6float2: %agg.result"}
!263 = distinct !{!263, !"_ZL17__float22half2_rn6float2"}
!264 = !DILocation(line: 1007, column: 10, scope: !144, inlinedAt: !265)
!265 = distinct !DILocation(line: 1077, column: 38, scope: !147, inlinedAt: !257)
!266 = !DILocation(line: 596, column: 67, scope: !252, inlinedAt: !267)
!267 = distinct !DILocation(line: 1077, column: 10, scope: !147, inlinedAt: !257)
!268 = !DILocation(line: 596, column: 73, scope: !252, inlinedAt: !267)
!269 = !DILocation(line: 171, column: 38, scope: !40)
!270 = !DILocation(line: 172, column: 22, scope: !40)
!271 = !DILocation(line: 172, column: 254, scope: !40)
!272 = !DILocation(line: 172, column: 86, scope: !40)
!273 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !274)
!274 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !275)
!275 = distinct !DILocation(line: 174, column: 3, scope: !40)
!276 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !274)
!277 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !274)
!278 = !DILocation(line: 179, column: 46, scope: !40)
!279 = !DILocation(line: 179, column: 65, scope: !40)
!280 = !DILocation(line: 181, column: 22, scope: !40)
!281 = !DILocation(line: 181, column: 100, scope: !40)
!282 = !DILocation(line: 183, column: 1, scope: !40)
