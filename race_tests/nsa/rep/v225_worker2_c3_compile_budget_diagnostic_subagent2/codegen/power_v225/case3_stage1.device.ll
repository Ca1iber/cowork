; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v225_worker2_c3_compile_budget_diagnostic_subagent2/codegen/power_v225/case3_stage1.device.cpp'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v225_worker2_c3_compile_budget_diagnostic_subagent2/codegen/power_v225/case3_stage1.device.cpp"
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
  %qk_fetch.sroa.0.0.copyload1382 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %qk_fetch.sroa.18.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %qk_fetch.sroa.18.0.copyload1389 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.add.ptr.1.sroa_idx, align 8, !dbg !45
  %add28.1 = add nuw nsw i32 %shr27, 4
  %xor.1 = xor i32 %add28.1, %and
  %6 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @shared, i32 1024), i32 %mul21, !dbg !46
  %.idx.1935 = shl nuw nsw i32 %xor.1, 4, !dbg !46
  %7 = getelementptr inbounds i8, ptr addrspace(3) %6, i32 %.idx.1935, !dbg !46
  %add.ptr40.1937 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr40.idx, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1382, ptr addrspace(3) %add.ptr40.1937, align 8, !dbg !47
  %add.ptr40.1.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr40.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.18.0.copyload1389, ptr addrspace(3) %add.ptr40.1.1, align 8, !dbg !47
  %8 = add nuw nsw i64 %2, 1024, !dbg !48
  %add.ptr.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %8, !dbg !44
  %qk_fetch.sroa.0.0.copyload1383 = load i64, ptr addrspace(4) %add.ptr.2, align 16, !dbg !45
  %qk_fetch.sroa.18.0.add.ptr.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.2, i64 8, !dbg !45
  %qk_fetch.sroa.18.0.copyload1390 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.add.ptr.2.sroa_idx, align 8, !dbg !45
  %9 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @shared, i32 2048), i32 %mul21, !dbg !46
  %10 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 %.idx, !dbg !46
  %add.ptr40.2 = getelementptr inbounds i8, ptr addrspace(3) %10, i32 %add.ptr40.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1383, ptr addrspace(3) %add.ptr40.2, align 8, !dbg !47
  %add.ptr40.1.2 = getelementptr inbounds i8, ptr addrspace(3) %10, i32 %add.ptr40.idx, !dbg !46
  store i64 %qk_fetch.sroa.18.0.copyload1390, ptr addrspace(3) %add.ptr40.1.2, align 8, !dbg !47
  %11 = add nuw nsw i64 %2, 1536, !dbg !48
  %add.ptr.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %11, !dbg !44
  %qk_fetch.sroa.0.0.copyload1384 = load i64, ptr addrspace(4) %add.ptr.3, align 16, !dbg !45
  %qk_fetch.sroa.18.0.add.ptr.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.3, i64 8, !dbg !45
  %qk_fetch.sroa.18.0.copyload1391 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.add.ptr.3.sroa_idx, align 8, !dbg !45
  %12 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @shared, i32 3072), i32 %mul21, !dbg !46
  %13 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 %.idx.1935, !dbg !46
  %add.ptr40.3 = getelementptr inbounds i8, ptr addrspace(3) %13, i32 %add.ptr40.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1384, ptr addrspace(3) %add.ptr40.3, align 8, !dbg !47
  %add.ptr40.1.3 = getelementptr inbounds i8, ptr addrspace(3) %13, i32 %add.ptr40.idx, !dbg !46
  store i64 %qk_fetch.sroa.18.0.copyload1391, ptr addrspace(3) %add.ptr40.1.3, align 8, !dbg !47
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
  br i1 %or.cond, label %if.end569, label %if.then, !dbg !63

if.then:                                          ; preds = %entry
  %xor70849 = xor i32 %14, %1
  %xor73 = shl nuw nsw i32 %xor70849, 2
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
  %.idx925 = shl nuw nsw i64 %conv110, 8, !dbg !72
  %26 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep, i64 %.idx925, !dbg !72
  %qk_fetch.sroa.0.0.copyload1381 = load i64, ptr addrspace(4) %26, align 16, !dbg !73
  %qk_fetch.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %26, i64 8, !dbg !73
  %qk_fetch.sroa.18.0.copyload1388 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0..sroa_idx, align 8, !dbg !73
  store i64 %qk_fetch.sroa.0.0.copyload1381, ptr addrspace(3) %add.ptr40, align 8, !dbg !74
  store i64 %qk_fetch.sroa.18.0.copyload1388, ptr addrspace(3) %add.ptr40.1, align 8, !dbg !74
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %26, i64 1024, !dbg !72
  %qk_fetch.sroa.0.0.copyload1385 = load i64, ptr addrspace(4) %gep.1, align 16, !dbg !73
  %qk_fetch.sroa.18.0.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %26, i64 1032, !dbg !73
  %qk_fetch.sroa.18.0.copyload1392 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.gep.1.sroa_idx, align 8, !dbg !73
  store i64 %qk_fetch.sroa.0.0.copyload1385, ptr addrspace(3) %add.ptr40.1937, align 8, !dbg !74
  store i64 %qk_fetch.sroa.18.0.copyload1392, ptr addrspace(3) %add.ptr40.1.1, align 8, !dbg !74
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %26, i64 2048, !dbg !72
  %qk_fetch.sroa.0.0.copyload1386 = load i64, ptr addrspace(4) %gep.2, align 16, !dbg !73
  %qk_fetch.sroa.18.0.gep.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %26, i64 2056, !dbg !73
  %qk_fetch.sroa.18.0.copyload1393 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.gep.2.sroa_idx, align 8, !dbg !73
  store i64 %qk_fetch.sroa.0.0.copyload1386, ptr addrspace(3) %add.ptr40.2, align 8, !dbg !74
  store i64 %qk_fetch.sroa.18.0.copyload1393, ptr addrspace(3) %add.ptr40.1.2, align 8, !dbg !74
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %26, i64 3072, !dbg !72
  %qk_fetch.sroa.0.0.copyload1387 = load i64, ptr addrspace(4) %gep.3, align 16, !dbg !73
  %qk_fetch.sroa.18.0.gep.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %26, i64 3080, !dbg !73
  %qk_fetch.sroa.18.0.copyload1394 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.gep.3.sroa_idx, align 8, !dbg !73
  store i64 %qk_fetch.sroa.0.0.copyload1387, ptr addrspace(3) %add.ptr40.3, align 8, !dbg !74
  store i64 %qk_fetch.sroa.18.0.copyload1394, ptr addrspace(3) %add.ptr40.1.3, align 8, !dbg !74
  fence syncscope("warp") release, !dbg !75
  tail call void @llvm.mxc.barrier.warp(), !dbg !78
  fence syncscope("warp") acquire, !dbg !79
  %mul177 = shl nuw nsw i32 %xor61, 3, !dbg !80
  %add178 = add nuw nsw i32 %mul177, %mul50, !dbg !81
  %add190 = or disjoint i32 %add178, %mul74, !dbg !82
  %add.ptr192 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add190, !dbg !83
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr192, align 8, !dbg !84
  %27 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %25, <4 x float> zeroinitializer), !dbg !85
  %mul177.1 = shl nuw nsw i32 %xor61.1, 3, !dbg !80
  %add178.1 = add nuw nsw i32 %mul177.1, %mul50, !dbg !81
  %add190.1 = or disjoint i32 %add178.1, %mul74, !dbg !82
  %add.ptr192.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add190.1, !dbg !83
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr192.1, align 8, !dbg !84
  %28 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %24, <4 x float> %27), !dbg !85
  %mul177.2 = shl nuw nsw i32 %xor61.2, 3, !dbg !80
  %add178.2 = add nuw nsw i32 %mul177.2, %mul50, !dbg !81
  %add190.2 = or disjoint i32 %add178.2, %mul74, !dbg !82
  %add.ptr192.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add190.2, !dbg !83
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr192.2, align 8, !dbg !84
  %29 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %23, <4 x float> %28), !dbg !85
  %mul177.3 = shl nuw nsw i32 %xor61.3, 3, !dbg !80
  %add178.3 = add nuw nsw i32 %mul177.3, %mul50, !dbg !81
  %add190.3 = or disjoint i32 %add178.3, %mul74, !dbg !82
  %add.ptr192.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add190.3, !dbg !83
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr192.3, align 8, !dbg !84
  %30 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %22, <4 x float> %29), !dbg !85
  %k_local.sroa.0.0.copyload824 = load <4 x half>, ptr addrspace(3) %add.ptr77.4, align 8, !dbg !86
  %31 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload824, <4 x half> %20, <4 x float> zeroinitializer), !dbg !87
  %k_local.sroa.0.0.copyload824.1 = load <4 x half>, ptr addrspace(3) %add.ptr77.5, align 8, !dbg !86
  %32 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload824.1, <4 x half> %19, <4 x float> %31), !dbg !87
  %k_local.sroa.0.0.copyload824.2 = load <4 x half>, ptr addrspace(3) %add.ptr77.6, align 8, !dbg !86
  %33 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload824.2, <4 x half> %18, <4 x float> %32), !dbg !87
  %k_local.sroa.0.0.copyload824.3 = load <4 x half>, ptr addrspace(3) %add.ptr77.7, align 8, !dbg !86
  %34 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload824.3, <4 x half> %17, <4 x float> %33), !dbg !87
  %scores.sroa.0.4.vec.extract1167 = extractelement <4 x float> %30, i64 1, !dbg !88
  %scores.sroa.0.8.vec.extract1178 = extractelement <4 x float> %30, i64 2, !dbg !88
  %scores.sroa.0.12.vec.extract1189 = extractelement <4 x float> %30, i64 3, !dbg !88
  %scores_second.sroa.0.4.vec.extract = extractelement <4 x float> %34, i64 1, !dbg !89
  %scores_second.sroa.0.8.vec.extract = extractelement <4 x float> %34, i64 2, !dbg !89
  %scores_second.sroa.0.12.vec.extract = extractelement <4 x float> %34, i64 3, !dbg !89
  %add267 = fadd contract float %scores_second.sroa.0.4.vec.extract, %scores.sroa.0.4.vec.extract1167, !dbg !90
  %add270 = fadd contract float %scores_second.sroa.0.8.vec.extract, %scores.sroa.0.8.vec.extract1178, !dbg !91
  %add273 = fadd contract float %scores_second.sroa.0.12.vec.extract, %scores.sroa.0.12.vec.extract1189, !dbg !92
  %35 = lshr i32 %1, 2
  %mul283 = and i32 %35, 252
  %add284 = add nuw nsw i32 %mul101, %mul283
  %cmp287.not = icmp sgt i32 %add284, %0, !dbg !93
  %scores_second.sroa.0.0.vec.extract = extractelement <4 x float> %34, i64 0, !dbg !94
  %scores.sroa.0.0.vec.extract1156 = extractelement <4 x float> %30, i64 0, !dbg !94
  %add264 = fadd contract float %scores_second.sroa.0.0.vec.extract, %scores.sroa.0.0.vec.extract1156, !dbg !94
  %condval.0 = select i1 %cmp287.not, float 0xFFF0000000000000, float %add264, !dbg !94
  %cmp287.not.1.not = icmp slt i32 %add284, %0, !dbg !93
  %condval.0.1 = select i1 %cmp287.not.1.not, float %add267, float 0xFFF0000000000000, !dbg !94
  %add285.2 = or disjoint i32 %add284, 2, !dbg !95
  %cmp287.not.2 = icmp sgt i32 %add285.2, %0, !dbg !93
  %condval.0.2 = select i1 %cmp287.not.2, float 0xFFF0000000000000, float %add270, !dbg !94
  %add285.3 = or disjoint i32 %add284, 3, !dbg !95
  %cmp287.not.3 = icmp sgt i32 %add285.3, %0, !dbg !93
  %condval.0.3 = select i1 %cmp287.not.3, float 0xFFF0000000000000, float %add273, !dbg !94
  %36 = tail call contract noundef float @llvm.maxnum.f32(float %condval.0, float 0xFFF0000000000000), !dbg !96
  %37 = tail call contract noundef float @llvm.maxnum.f32(float %36, float %condval.0.1), !dbg !96
  %38 = tail call contract noundef float @llvm.maxnum.f32(float %37, float %condval.0.2), !dbg !96
  %39 = tail call contract noundef float @llvm.maxnum.f32(float %38, float %condval.0.3), !dbg !96
  %40 = bitcast float %39 to i32, !dbg !100
  %41 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !103
  %42 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %41) #10, !dbg !108
  %xor.i.i = xor i32 %42, 32, !dbg !109
  %43 = and i32 %42, -64, !dbg !110
  %and.i.i = add nsw i32 %43, 64, !dbg !110
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !111
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %42, !dbg !112
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !113
  %44 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %40), !dbg !114
  %45 = bitcast i32 %44 to float, !dbg !115
  %46 = tail call contract noundef float @llvm.maxnum.f32(float %39, float %45), !dbg !116
  %47 = bitcast float %46 to i32, !dbg !118
  %48 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !120
  %49 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %48) #10, !dbg !123
  %xor.i.i850 = xor i32 %49, 16, !dbg !124
  %50 = and i32 %49, -64, !dbg !125
  %and.i.i851 = add nsw i32 %50, 64, !dbg !125
  %cmp.not.i.i852 = icmp slt i32 %xor.i.i850, %and.i.i851, !dbg !126
  %cond.i.i853 = select i1 %cmp.not.i.i852, i32 %xor.i.i850, i32 %49, !dbg !127
  %shl.i.i854 = shl i32 %cond.i.i853, 2, !dbg !128
  %51 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i854, i32 %47), !dbg !129
  %52 = bitcast i32 %51 to float, !dbg !130
  %53 = tail call contract noundef float @llvm.maxnum.f32(float %46, float %52), !dbg !131
  %sub = fsub contract float %condval.0, %53, !dbg !133
  %sub335 = fsub contract float %condval.0.1, %53, !dbg !134
  %sub339 = fsub contract float %condval.0.2, %53, !dbg !135
  %sub343 = fsub contract float %condval.0.3, %53, !dbg !136
  %mul348 = fmul contract float %sub, 0x3FC0527DC0000000, !dbg !137
  %mul352 = fmul contract float %sub335, 0x3FC0527DC0000000, !dbg !138
  %mul356 = fmul contract float %sub339, 0x3FC0527DC0000000, !dbg !139
  %mul360 = fmul contract float %sub343, 0x3FC0527DC0000000, !dbg !140
  %add365 = fadd contract float %mul348, 8.000000e+00, !dbg !141
  %add369 = fadd contract float %mul352, 8.000000e+00, !dbg !142
  %add373 = fadd contract float %mul356, 8.000000e+00, !dbg !143
  %add377 = fadd contract float %mul360, 8.000000e+00, !dbg !144
  %cmp.i.i = fcmp contract olt float %add365, -1.260000e+02, !dbg !145
  %cond.i.i855 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !145
  %add.i.i = fadd contract float %add365, %cond.i.i855, !dbg !145
  %54 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !145
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !145
  %mul.i.i = fmul contract float %cond2.i.i, %54, !dbg !145
  %cmp.i.i856 = fcmp contract olt float %add369, -1.260000e+02, !dbg !148
  %cond.i.i857 = select contract i1 %cmp.i.i856, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i858 = fadd contract float %add369, %cond.i.i857, !dbg !148
  %55 = tail call contract float @llvm.exp2.f32(float %add.i.i858), !dbg !148
  %cond2.i.i859 = select contract i1 %cmp.i.i856, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i860 = fmul contract float %cond2.i.i859, %55, !dbg !148
  %cmp.i.i861 = fcmp contract olt float %add373, -1.260000e+02, !dbg !150
  %cond.i.i862 = select contract i1 %cmp.i.i861, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i863 = fadd contract float %add373, %cond.i.i862, !dbg !150
  %56 = tail call contract float @llvm.exp2.f32(float %add.i.i863), !dbg !150
  %cond2.i.i864 = select contract i1 %cmp.i.i861, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i865 = fmul contract float %cond2.i.i864, %56, !dbg !150
  %cmp.i.i866 = fcmp contract olt float %add377, -1.260000e+02, !dbg !152
  %cond.i.i867 = select contract i1 %cmp.i.i866, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i868 = fadd contract float %add377, %cond.i.i867, !dbg !152
  %57 = tail call contract float @llvm.exp2.f32(float %add.i.i868), !dbg !152
  %cond2.i.i869 = select contract i1 %cmp.i.i866, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i870 = fmul contract float %cond2.i.i869, %57, !dbg !152
  %58 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !154, !noalias !162
  %59 = fptrunc float %mul.i.i to half, !dbg !154
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %58), !dbg !154, !noalias !162
  %60 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !167, !noalias !162
  %61 = fptrunc float %mul.i.i860 to half, !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %60), !dbg !167, !noalias !162
  %62 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !173
  %63 = fptrunc float %mul.i.i865 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %62), !dbg !169, !noalias !173
  %64 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !173
  %65 = fptrunc float %mul.i.i870 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %64), !dbg !178, !noalias !173
  %66 = insertelement <4 x half> poison, half %59, i64 0, !dbg !180
  %67 = insertelement <4 x half> %66, half %61, i64 1, !dbg !180
  %68 = insertelement <4 x half> %67, half %63, i64 2, !dbg !180
  %69 = insertelement <4 x half> %68, half %65, i64 3, !dbg !180
  %conv.i.i = fpext half %59 to float, !dbg !181
  %add411 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !186
  %conv.i.i.1 = fpext half %61 to float, !dbg !181
  %add411.1 = fadd contract float %add411, %conv.i.i.1, !dbg !186
  %conv.i.i.2 = fpext half %63 to float, !dbg !181
  %add411.2 = fadd contract float %add411.1, %conv.i.i.2, !dbg !186
  %conv.i.i.3 = fpext half %65 to float, !dbg !181
  %add411.3 = fadd contract float %add411.2, %conv.i.i.3, !dbg !186
  fence syncscope("warp") release, !dbg !187
  tail call void @llvm.mxc.barrier.warp(), !dbg !190
  fence syncscope("warp") acquire, !dbg !191
  %70 = shl nuw nsw i32 %1, 5
  %71 = and i32 %70, 32512
  %mul431 = zext nneg i32 %71 to i64
  %mul433 = shl nuw nsw i64 %conv110, 7
  %add434 = add nuw nsw i64 %mul433, %mul431
  %72 = and i32 %mul8, 56
  %mul444 = zext nneg i32 %72 to i64
  %and477 = shl nuw nsw i32 %1, 1
  %mul478 = and i32 %and477, 14
  %call482.mask = and i32 %1, 16
  %and491 = lshr i32 %1, 1
  %shr492 = and i32 %and491, 3
  %xor493 = xor i32 %shr492, %shr27
  %mul501 = and i32 %35, 2
  %add445 = or disjoint i64 %add434, %mul444, !dbg !192
  %add.ptr446 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add445, !dbg !193
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %add.ptr446, align 16, !dbg !194
  %v_fetch.sroa.6.0.add.ptr446.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446, i64 2, !dbg !194
  %v_fetch.sroa.6.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.6.0.add.ptr446.sroa_idx, align 2, !dbg !194, !tbaa !30
  %v_fetch.sroa.8.0.add.ptr446.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446, i64 4, !dbg !194
  %v_fetch.sroa.8.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.8.0.add.ptr446.sroa_idx, align 4, !dbg !194
  %v_fetch.sroa.10.0.add.ptr446.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446, i64 6, !dbg !194
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0.add.ptr446.sroa_idx, align 2, !dbg !194, !tbaa !30
  %v_fetch.sroa.12.0.add.ptr446.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446, i64 8, !dbg !194
  %v_fetch.sroa.12.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.12.0.add.ptr446.sroa_idx, align 8, !dbg !194
  %v_fetch.sroa.14.0.add.ptr446.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446, i64 10, !dbg !194
  %v_fetch.sroa.14.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.0.add.ptr446.sroa_idx, align 2, !dbg !194, !tbaa !30
  %v_fetch.sroa.16.0.add.ptr446.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446, i64 12, !dbg !194
  %v_fetch.sroa.16.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.16.0.add.ptr446.sroa_idx, align 4, !dbg !194
  %v_fetch.sroa.18.0.add.ptr446.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446, i64 14, !dbg !194
  %v_fetch.sroa.18.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.0.add.ptr446.sroa_idx, align 2, !dbg !194, !tbaa !30
  %add437.1 = or disjoint i64 %add434, %mul444, !dbg !192
  %add445.1 = or disjoint i64 %add437.1, 128, !dbg !192
  %add.ptr446.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add445.1, !dbg !193
  %v_fetch.sroa.20.16.copyload = load i16, ptr addrspace(4) %add.ptr446.1, align 16, !dbg !194
  %v_fetch.sroa.24.16.add.ptr446.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446.1, i64 2, !dbg !194
  %v_fetch.sroa.24.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.24.16.add.ptr446.1.sroa_idx, align 2, !dbg !194, !tbaa !30
  %v_fetch.sroa.26.16.add.ptr446.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446.1, i64 4, !dbg !194
  %v_fetch.sroa.26.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.26.16.add.ptr446.1.sroa_idx, align 4, !dbg !194
  %v_fetch.sroa.28.16.add.ptr446.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446.1, i64 6, !dbg !194
  %v_fetch.sroa.28.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.28.16.add.ptr446.1.sroa_idx, align 2, !dbg !194, !tbaa !30
  %v_fetch.sroa.30.16.add.ptr446.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446.1, i64 8, !dbg !194
  %v_fetch.sroa.30.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.30.16.add.ptr446.1.sroa_idx, align 8, !dbg !194
  %v_fetch.sroa.32.16.add.ptr446.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446.1, i64 10, !dbg !194
  %v_fetch.sroa.32.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.32.16.add.ptr446.1.sroa_idx, align 2, !dbg !194, !tbaa !30
  %v_fetch.sroa.34.16.add.ptr446.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446.1, i64 12, !dbg !194
  %v_fetch.sroa.34.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.34.16.add.ptr446.1.sroa_idx, align 4, !dbg !194
  %v_fetch.sroa.36.16.add.ptr446.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446.1, i64 14, !dbg !194
  %v_fetch.sroa.36.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.36.16.add.ptr446.1.sroa_idx, align 2, !dbg !194, !tbaa !30
  %xor485843 = shl nuw nsw i32 %mul478, 4, !dbg !195
  %mul486 = or disjoint i32 %xor485843, %call482.mask, !dbg !195
  %mul496 = shl nuw nsw i32 %xor493, 2, !dbg !196
  %73 = or disjoint i32 %mul501, %mul496, !dbg !197
  %74 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %73, !dbg !198
  %add.ptr504 = getelementptr inbounds %struct.__half, ptr addrspace(3) %74, i32 %mul486, !dbg !198
  %v_column.sroa.34.0.insert.ext = zext i16 %v_fetch.sroa.20.16.copyload to i32, !dbg !199
  %v_column.sroa.34.0.insert.shift = shl nuw i32 %v_column.sroa.34.0.insert.ext, 16, !dbg !199
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !199
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.34.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !199
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr504, align 4, !dbg !199, !tbaa !30
  %add479.1 = shl nuw nsw i32 %mul478, 4, !dbg !195
  %xor485843.1 = or disjoint i32 %add479.1, %call482.mask, !dbg !195
  %mul486.1 = or disjoint i32 %xor485843.1, 256, !dbg !195
  %xor495.1 = shl nuw nsw i32 %xor493, 2, !dbg !196
  %mul496.1 = xor i32 %xor495.1, 4, !dbg !196
  %add497.1 = or disjoint i32 %mul501, %mul496.1, !dbg !197
  %75 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add497.1, !dbg !198
  %add.ptr504.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %75, i32 %mul486.1, !dbg !198
  %v_column.sroa.34.0.insert.ext1037 = zext i16 %v_fetch.sroa.24.16.copyload to i32, !dbg !199
  %v_column.sroa.34.0.insert.shift1038 = shl nuw i32 %v_column.sroa.34.0.insert.ext1037, 16, !dbg !199
  %v_column.sroa.0.0.insert.ext977 = zext i16 %v_fetch.sroa.6.0.copyload to i32, !dbg !199
  %v_column.sroa.0.0.insert.insert979 = or disjoint i32 %v_column.sroa.34.0.insert.shift1038, %v_column.sroa.0.0.insert.ext977, !dbg !199
  store i32 %v_column.sroa.0.0.insert.insert979, ptr addrspace(3) %add.ptr504.1, align 4, !dbg !199, !tbaa !30
  %add479.2 = shl nuw nsw i32 %mul478, 4, !dbg !195
  %xor485843.2 = or disjoint i32 %add479.2, %call482.mask, !dbg !195
  %mul486.2 = or disjoint i32 %xor485843.2, 512, !dbg !195
  %xor495.2 = shl nuw nsw i32 %xor493, 2, !dbg !196
  %mul496.2 = xor i32 %xor495.2, 8, !dbg !196
  %add497.2 = or disjoint i32 %mul501, %mul496.2, !dbg !197
  %76 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add497.2, !dbg !198
  %add.ptr504.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) %76, i32 %mul486.2, !dbg !198
  %v_column.sroa.34.0.insert.ext1042 = zext i16 %v_fetch.sroa.26.16.copyload to i32, !dbg !199
  %v_column.sroa.34.0.insert.shift1043 = shl nuw i32 %v_column.sroa.34.0.insert.ext1042, 16, !dbg !199
  %v_column.sroa.0.0.insert.ext981 = zext i16 %v_fetch.sroa.8.0.copyload to i32, !dbg !199
  %v_column.sroa.0.0.insert.insert983 = or disjoint i32 %v_column.sroa.34.0.insert.shift1043, %v_column.sroa.0.0.insert.ext981, !dbg !199
  store i32 %v_column.sroa.0.0.insert.insert983, ptr addrspace(3) %add.ptr504.2, align 4, !dbg !199, !tbaa !30
  %add479.3 = shl nuw nsw i32 %mul478, 4, !dbg !195
  %xor485843.3 = or disjoint i32 %add479.3, %call482.mask, !dbg !195
  %mul486.3 = or disjoint i32 %xor485843.3, 768, !dbg !195
  %xor495.3 = shl nuw nsw i32 %xor493, 2, !dbg !196
  %mul496.3 = xor i32 %xor495.3, 12, !dbg !196
  %add497.3 = or disjoint i32 %mul501, %mul496.3, !dbg !197
  %77 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add497.3, !dbg !198
  %add.ptr504.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) %77, i32 %mul486.3, !dbg !198
  %v_column.sroa.34.0.insert.ext1047 = zext i16 %v_fetch.sroa.28.16.copyload to i32, !dbg !199
  %v_column.sroa.34.0.insert.shift1048 = shl nuw i32 %v_column.sroa.34.0.insert.ext1047, 16, !dbg !199
  %v_column.sroa.0.0.insert.ext985 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !199
  %v_column.sroa.0.0.insert.insert987 = or disjoint i32 %v_column.sroa.34.0.insert.shift1048, %v_column.sroa.0.0.insert.ext985, !dbg !199
  store i32 %v_column.sroa.0.0.insert.insert987, ptr addrspace(3) %add.ptr504.3, align 4, !dbg !199, !tbaa !30
  %add481.4 = shl nuw nsw i32 %mul478, 4, !dbg !195
  %xor485843.4 = or disjoint i32 %add481.4, 16, !dbg !195
  %mul486.4 = xor i32 %xor485843.4, %call482.mask, !dbg !195
  %add.ptr504.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) %74, i32 %mul486.4, !dbg !198
  %v_column.sroa.34.0.insert.ext1052 = zext i16 %v_fetch.sroa.30.16.copyload to i32, !dbg !199
  %v_column.sroa.34.0.insert.shift1053 = shl nuw i32 %v_column.sroa.34.0.insert.ext1052, 16, !dbg !199
  %v_column.sroa.0.0.insert.ext989 = zext i16 %v_fetch.sroa.12.0.copyload to i32, !dbg !199
  %v_column.sroa.0.0.insert.insert991 = or disjoint i32 %v_column.sroa.34.0.insert.shift1053, %v_column.sroa.0.0.insert.ext989, !dbg !199
  store i32 %v_column.sroa.0.0.insert.insert991, ptr addrspace(3) %add.ptr504.4, align 4, !dbg !199, !tbaa !30
  %add481.5 = shl nuw nsw i32 %mul478, 4, !dbg !195
  %xor485843.5 = or disjoint i32 %add481.5, 272, !dbg !195
  %mul486.5 = xor i32 %xor485843.5, %call482.mask, !dbg !195
  %add.ptr504.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) %75, i32 %mul486.5, !dbg !198
  %v_column.sroa.34.0.insert.ext1057 = zext i16 %v_fetch.sroa.32.16.copyload to i32, !dbg !199
  %v_column.sroa.34.0.insert.shift1058 = shl nuw i32 %v_column.sroa.34.0.insert.ext1057, 16, !dbg !199
  %v_column.sroa.0.0.insert.ext993 = zext i16 %v_fetch.sroa.14.0.copyload to i32, !dbg !199
  %v_column.sroa.0.0.insert.insert995 = or disjoint i32 %v_column.sroa.34.0.insert.shift1058, %v_column.sroa.0.0.insert.ext993, !dbg !199
  store i32 %v_column.sroa.0.0.insert.insert995, ptr addrspace(3) %add.ptr504.5, align 4, !dbg !199, !tbaa !30
  %add481.6 = shl nuw nsw i32 %mul478, 4, !dbg !195
  %xor485843.6 = or disjoint i32 %add481.6, 528, !dbg !195
  %mul486.6 = xor i32 %xor485843.6, %call482.mask, !dbg !195
  %add.ptr504.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) %76, i32 %mul486.6, !dbg !198
  %v_column.sroa.34.0.insert.ext1062 = zext i16 %v_fetch.sroa.34.16.copyload to i32, !dbg !199
  %v_column.sroa.34.0.insert.shift1063 = shl nuw i32 %v_column.sroa.34.0.insert.ext1062, 16, !dbg !199
  %v_column.sroa.0.0.insert.ext997 = zext i16 %v_fetch.sroa.16.0.copyload to i32, !dbg !199
  %v_column.sroa.0.0.insert.insert999 = or disjoint i32 %v_column.sroa.34.0.insert.shift1063, %v_column.sroa.0.0.insert.ext997, !dbg !199
  store i32 %v_column.sroa.0.0.insert.insert999, ptr addrspace(3) %add.ptr504.6, align 4, !dbg !199, !tbaa !30
  %add481.7 = shl nuw nsw i32 %mul478, 4, !dbg !195
  %xor485843.7 = or disjoint i32 %add481.7, 784, !dbg !195
  %mul486.7 = xor i32 %xor485843.7, %call482.mask, !dbg !195
  %add.ptr504.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) %77, i32 %mul486.7, !dbg !198
  %v_column.sroa.34.0.insert.ext1067 = zext i16 %v_fetch.sroa.36.16.copyload to i32, !dbg !199
  %v_column.sroa.34.0.insert.shift1068 = shl nuw i32 %v_column.sroa.34.0.insert.ext1067, 16, !dbg !199
  %v_column.sroa.0.0.insert.ext1001 = zext i16 %v_fetch.sroa.18.0.copyload to i32, !dbg !199
  %v_column.sroa.0.0.insert.insert1003 = or disjoint i32 %v_column.sroa.34.0.insert.shift1068, %v_column.sroa.0.0.insert.ext1001, !dbg !199
  store i32 %v_column.sroa.0.0.insert.insert1003, ptr addrspace(3) %add.ptr504.7, align 4, !dbg !199, !tbaa !30
  %add440.1951 = or disjoint i64 %add434, %mul444, !dbg !192
  %add445.1952 = or disjoint i64 %add440.1951, 64, !dbg !192
  %add.ptr446.1953 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add445.1952, !dbg !193
  %v_fetch.sroa.0.0.copyload1112 = load i16, ptr addrspace(4) %add.ptr446.1953, align 16, !dbg !194
  %v_fetch.sroa.6.0.add.ptr446.1953.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446.1953, i64 2, !dbg !194
  %v_fetch.sroa.6.0.copyload1113 = load i16, ptr addrspace(4) %v_fetch.sroa.6.0.add.ptr446.1953.sroa_idx, align 2, !dbg !194, !tbaa !30
  %v_fetch.sroa.8.0.add.ptr446.1953.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446.1953, i64 4, !dbg !194
  %v_fetch.sroa.8.0.copyload1115 = load i16, ptr addrspace(4) %v_fetch.sroa.8.0.add.ptr446.1953.sroa_idx, align 4, !dbg !194
  %v_fetch.sroa.10.0.add.ptr446.1953.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446.1953, i64 6, !dbg !194
  %v_fetch.sroa.10.0.copyload1117 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0.add.ptr446.1953.sroa_idx, align 2, !dbg !194, !tbaa !30
  %v_fetch.sroa.12.0.add.ptr446.1953.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446.1953, i64 8, !dbg !194
  %v_fetch.sroa.12.0.copyload1119 = load i16, ptr addrspace(4) %v_fetch.sroa.12.0.add.ptr446.1953.sroa_idx, align 8, !dbg !194
  %v_fetch.sroa.14.0.add.ptr446.1953.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446.1953, i64 10, !dbg !194
  %v_fetch.sroa.14.0.copyload1121 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0.add.ptr446.1953.sroa_idx, align 2, !dbg !194, !tbaa !30
  %v_fetch.sroa.16.0.add.ptr446.1953.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446.1953, i64 12, !dbg !194
  %v_fetch.sroa.16.0.copyload1123 = load i16, ptr addrspace(4) %v_fetch.sroa.16.0.add.ptr446.1953.sroa_idx, align 4, !dbg !194
  %v_fetch.sroa.18.0.add.ptr446.1953.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446.1953, i64 14, !dbg !194
  %v_fetch.sroa.18.0.copyload1125 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0.add.ptr446.1953.sroa_idx, align 2, !dbg !194, !tbaa !30
  %add440.1.1 = or disjoint i64 %add434, %mul444, !dbg !192
  %add445.1.1 = or disjoint i64 %add440.1.1, 192, !dbg !192
  %add.ptr446.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add445.1.1, !dbg !193
  %v_fetch.sroa.20.16.copyload1128 = load i16, ptr addrspace(4) %add.ptr446.1.1, align 16, !dbg !194
  %v_fetch.sroa.24.16.add.ptr446.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446.1.1, i64 2, !dbg !194
  %v_fetch.sroa.24.16.copyload1129 = load i16, ptr addrspace(4) %v_fetch.sroa.24.16.add.ptr446.1.1.sroa_idx, align 2, !dbg !194, !tbaa !30
  %v_fetch.sroa.26.16.add.ptr446.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446.1.1, i64 4, !dbg !194
  %v_fetch.sroa.26.16.copyload1131 = load i16, ptr addrspace(4) %v_fetch.sroa.26.16.add.ptr446.1.1.sroa_idx, align 4, !dbg !194
  %v_fetch.sroa.28.16.add.ptr446.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446.1.1, i64 6, !dbg !194
  %v_fetch.sroa.28.16.copyload1133 = load i16, ptr addrspace(4) %v_fetch.sroa.28.16.add.ptr446.1.1.sroa_idx, align 2, !dbg !194, !tbaa !30
  %v_fetch.sroa.30.16.add.ptr446.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446.1.1, i64 8, !dbg !194
  %v_fetch.sroa.30.16.copyload1135 = load i16, ptr addrspace(4) %v_fetch.sroa.30.16.add.ptr446.1.1.sroa_idx, align 8, !dbg !194
  %v_fetch.sroa.32.16.add.ptr446.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446.1.1, i64 10, !dbg !194
  %v_fetch.sroa.32.16.copyload1137 = load i16, ptr addrspace(4) %v_fetch.sroa.32.16.add.ptr446.1.1.sroa_idx, align 2, !dbg !194, !tbaa !30
  %v_fetch.sroa.34.16.add.ptr446.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446.1.1, i64 12, !dbg !194
  %v_fetch.sroa.34.16.copyload1139 = load i16, ptr addrspace(4) %v_fetch.sroa.34.16.add.ptr446.1.1.sroa_idx, align 4, !dbg !194
  %v_fetch.sroa.36.16.add.ptr446.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr446.1.1, i64 14, !dbg !194
  %v_fetch.sroa.36.16.copyload1141 = load i16, ptr addrspace(4) %v_fetch.sroa.36.16.add.ptr446.1.1.sroa_idx, align 2, !dbg !194, !tbaa !30
  %78 = or disjoint i32 %mul501, 1024
  %79 = or disjoint i32 %78, %mul496, !dbg !197
  %80 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %79, !dbg !198
  %add.ptr504.1959 = getelementptr inbounds %struct.__half, ptr addrspace(3) %80, i32 %mul486, !dbg !198
  %v_column.sroa.34.0.insert.ext1072 = zext i16 %v_fetch.sroa.20.16.copyload1128 to i32, !dbg !199
  %v_column.sroa.34.0.insert.shift1073 = shl nuw i32 %v_column.sroa.34.0.insert.ext1072, 16, !dbg !199
  %v_column.sroa.0.0.insert.ext1005 = zext i16 %v_fetch.sroa.0.0.copyload1112 to i32, !dbg !199
  %v_column.sroa.0.0.insert.insert1007 = or disjoint i32 %v_column.sroa.34.0.insert.shift1073, %v_column.sroa.0.0.insert.ext1005, !dbg !199
  store i32 %v_column.sroa.0.0.insert.insert1007, ptr addrspace(3) %add.ptr504.1959, align 4, !dbg !199, !tbaa !30
  %add497.1.1 = or disjoint i32 %78, %mul496.1, !dbg !197
  %81 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add497.1.1, !dbg !198
  %add.ptr504.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %81, i32 %mul486.1, !dbg !198
  %v_column.sroa.34.0.insert.ext1077 = zext i16 %v_fetch.sroa.24.16.copyload1129 to i32, !dbg !199
  %v_column.sroa.34.0.insert.shift1078 = shl nuw i32 %v_column.sroa.34.0.insert.ext1077, 16, !dbg !199
  %v_column.sroa.0.0.insert.ext1009 = zext i16 %v_fetch.sroa.6.0.copyload1113 to i32, !dbg !199
  %v_column.sroa.0.0.insert.insert1011 = or disjoint i32 %v_column.sroa.34.0.insert.shift1078, %v_column.sroa.0.0.insert.ext1009, !dbg !199
  store i32 %v_column.sroa.0.0.insert.insert1011, ptr addrspace(3) %add.ptr504.1.1, align 4, !dbg !199, !tbaa !30
  %add497.2.1 = or disjoint i32 %78, %mul496.2, !dbg !197
  %82 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add497.2.1, !dbg !198
  %add.ptr504.2.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %82, i32 %mul486.2, !dbg !198
  %v_column.sroa.34.0.insert.ext1082 = zext i16 %v_fetch.sroa.26.16.copyload1131 to i32, !dbg !199
  %v_column.sroa.34.0.insert.shift1083 = shl nuw i32 %v_column.sroa.34.0.insert.ext1082, 16, !dbg !199
  %v_column.sroa.0.0.insert.ext1013 = zext i16 %v_fetch.sroa.8.0.copyload1115 to i32, !dbg !199
  %v_column.sroa.0.0.insert.insert1015 = or disjoint i32 %v_column.sroa.34.0.insert.shift1083, %v_column.sroa.0.0.insert.ext1013, !dbg !199
  store i32 %v_column.sroa.0.0.insert.insert1015, ptr addrspace(3) %add.ptr504.2.1, align 4, !dbg !199, !tbaa !30
  %add497.3.1 = or disjoint i32 %78, %mul496.3, !dbg !197
  %83 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add497.3.1, !dbg !198
  %add.ptr504.3.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %83, i32 %mul486.3, !dbg !198
  %v_column.sroa.34.0.insert.ext1087 = zext i16 %v_fetch.sroa.28.16.copyload1133 to i32, !dbg !199
  %v_column.sroa.34.0.insert.shift1088 = shl nuw i32 %v_column.sroa.34.0.insert.ext1087, 16, !dbg !199
  %v_column.sroa.0.0.insert.ext1017 = zext i16 %v_fetch.sroa.10.0.copyload1117 to i32, !dbg !199
  %v_column.sroa.0.0.insert.insert1019 = or disjoint i32 %v_column.sroa.34.0.insert.shift1088, %v_column.sroa.0.0.insert.ext1017, !dbg !199
  store i32 %v_column.sroa.0.0.insert.insert1019, ptr addrspace(3) %add.ptr504.3.1, align 4, !dbg !199, !tbaa !30
  %add.ptr504.4.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %80, i32 %mul486.4, !dbg !198
  %v_column.sroa.34.0.insert.ext1092 = zext i16 %v_fetch.sroa.30.16.copyload1135 to i32, !dbg !199
  %v_column.sroa.34.0.insert.shift1093 = shl nuw i32 %v_column.sroa.34.0.insert.ext1092, 16, !dbg !199
  %v_column.sroa.0.0.insert.ext1021 = zext i16 %v_fetch.sroa.12.0.copyload1119 to i32, !dbg !199
  %v_column.sroa.0.0.insert.insert1023 = or disjoint i32 %v_column.sroa.34.0.insert.shift1093, %v_column.sroa.0.0.insert.ext1021, !dbg !199
  store i32 %v_column.sroa.0.0.insert.insert1023, ptr addrspace(3) %add.ptr504.4.1, align 4, !dbg !199, !tbaa !30
  %add.ptr504.5.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %81, i32 %mul486.5, !dbg !198
  %v_column.sroa.34.0.insert.ext1097 = zext i16 %v_fetch.sroa.32.16.copyload1137 to i32, !dbg !199
  %v_column.sroa.34.0.insert.shift1098 = shl nuw i32 %v_column.sroa.34.0.insert.ext1097, 16, !dbg !199
  %v_column.sroa.0.0.insert.ext1025 = zext i16 %v_fetch.sroa.14.0.copyload1121 to i32, !dbg !199
  %v_column.sroa.0.0.insert.insert1027 = or disjoint i32 %v_column.sroa.34.0.insert.shift1098, %v_column.sroa.0.0.insert.ext1025, !dbg !199
  store i32 %v_column.sroa.0.0.insert.insert1027, ptr addrspace(3) %add.ptr504.5.1, align 4, !dbg !199, !tbaa !30
  %add.ptr504.6.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %82, i32 %mul486.6, !dbg !198
  %v_column.sroa.34.0.insert.ext1102 = zext i16 %v_fetch.sroa.34.16.copyload1139 to i32, !dbg !199
  %v_column.sroa.34.0.insert.shift1103 = shl nuw i32 %v_column.sroa.34.0.insert.ext1102, 16, !dbg !199
  %v_column.sroa.0.0.insert.ext1029 = zext i16 %v_fetch.sroa.16.0.copyload1123 to i32, !dbg !199
  %v_column.sroa.0.0.insert.insert1031 = or disjoint i32 %v_column.sroa.34.0.insert.shift1103, %v_column.sroa.0.0.insert.ext1029, !dbg !199
  store i32 %v_column.sroa.0.0.insert.insert1031, ptr addrspace(3) %add.ptr504.6.1, align 4, !dbg !199, !tbaa !30
  %add.ptr504.7.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %83, i32 %mul486.7, !dbg !198
  %v_column.sroa.34.0.insert.ext1107 = zext i16 %v_fetch.sroa.36.16.copyload1141 to i32, !dbg !199
  %v_column.sroa.34.0.insert.shift1108 = shl nuw i32 %v_column.sroa.34.0.insert.ext1107, 16, !dbg !199
  %v_column.sroa.0.0.insert.ext1033 = zext i16 %v_fetch.sroa.18.0.copyload1125 to i32, !dbg !199
  %v_column.sroa.0.0.insert.insert1035 = or disjoint i32 %v_column.sroa.34.0.insert.shift1108, %v_column.sroa.0.0.insert.ext1033, !dbg !199
  store i32 %v_column.sroa.0.0.insert.insert1035, ptr addrspace(3) %add.ptr504.7.1, align 4, !dbg !199, !tbaa !30
  fence syncscope("warp") release, !dbg !200
  tail call void @llvm.mxc.barrier.warp(), !dbg !203
  fence syncscope("warp") acquire, !dbg !204
  %and518 = shl nuw nsw i32 %1, 4
  %mul519 = and i32 %and518, 48
  %shr525 = and i32 %35, 3
  %and538 = and i32 %1, 3
  %84 = xor i32 %shr27, %and538
  %add526 = or disjoint i32 %mul519, %shr525, !dbg !205
  %xor530842 = shl nuw nsw i32 %add526, 4, !dbg !206
  %mul531 = xor i32 %xor530842, %call482.mask, !dbg !206
  %85 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul531, !dbg !207
  %add.ptr543.idx = shl nuw nsw i32 %84, 3, !dbg !207
  %add.ptr543 = getelementptr inbounds i8, ptr addrspace(3) %85, i32 %add.ptr543.idx, !dbg !207
  %86 = load <4 x half>, ptr addrspace(3) %add.ptr543, align 8, !dbg !208
  %add522.1 = or disjoint i32 %mul519, %shr525, !dbg !205
  %add526.1 = shl nuw nsw i32 %add522.1, 4, !dbg !206
  %xor530842.1 = or disjoint i32 %add526.1, 64, !dbg !206
  %mul531.1 = xor i32 %xor530842.1, %call482.mask, !dbg !206
  %87 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul531.1, !dbg !207
  %xor539.1 = shl nuw nsw i32 %84, 3, !dbg !207
  %add.ptr543.idx.1 = xor i32 %xor539.1, 8, !dbg !207
  %add.ptr543.1 = getelementptr inbounds i8, ptr addrspace(3) %87, i32 %add.ptr543.idx.1, !dbg !207
  %88 = load <4 x half>, ptr addrspace(3) %add.ptr543.1, align 8, !dbg !208
  %add522.2 = or disjoint i32 %mul519, %shr525, !dbg !205
  %add526.2 = shl nuw nsw i32 %add522.2, 4, !dbg !206
  %xor530842.2 = or disjoint i32 %add526.2, 128, !dbg !206
  %mul531.2 = xor i32 %xor530842.2, %call482.mask, !dbg !206
  %89 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul531.2, !dbg !207
  %xor539.2 = shl nuw nsw i32 %84, 3, !dbg !207
  %add.ptr543.idx.2 = xor i32 %xor539.2, 16, !dbg !207
  %add.ptr543.2 = getelementptr inbounds i8, ptr addrspace(3) %89, i32 %add.ptr543.idx.2, !dbg !207
  %90 = load <4 x half>, ptr addrspace(3) %add.ptr543.2, align 8, !dbg !208
  %add522.3 = or disjoint i32 %mul519, %shr525, !dbg !205
  %add526.3 = shl nuw nsw i32 %add522.3, 4, !dbg !206
  %xor530842.3 = or disjoint i32 %add526.3, 192, !dbg !206
  %mul531.3 = xor i32 %xor530842.3, %call482.mask, !dbg !206
  %91 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul531.3, !dbg !207
  %xor539.3 = shl nuw nsw i32 %84, 3, !dbg !207
  %add.ptr543.idx.3 = xor i32 %xor539.3, 24, !dbg !207
  %add.ptr543.3 = getelementptr inbounds i8, ptr addrspace(3) %91, i32 %add.ptr543.idx.3, !dbg !207
  %92 = load <4 x half>, ptr addrspace(3) %add.ptr543.3, align 8, !dbg !208
  %add532.4 = or disjoint i32 %mul531, 1024, !dbg !209
  %93 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add532.4, !dbg !207
  %add.ptr543.4 = getelementptr inbounds i8, ptr addrspace(3) %93, i32 %add.ptr543.idx, !dbg !207
  %94 = load <4 x half>, ptr addrspace(3) %add.ptr543.4, align 8, !dbg !208
  %add532.5 = or disjoint i32 %mul531.1, 1024, !dbg !209
  %95 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add532.5, !dbg !207
  %add.ptr543.5 = getelementptr inbounds i8, ptr addrspace(3) %95, i32 %add.ptr543.idx.1, !dbg !207
  %96 = load <4 x half>, ptr addrspace(3) %add.ptr543.5, align 8, !dbg !208
  %add532.6 = or disjoint i32 %mul531.2, 1024, !dbg !209
  %97 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add532.6, !dbg !207
  %add.ptr543.6 = getelementptr inbounds i8, ptr addrspace(3) %97, i32 %add.ptr543.idx.2, !dbg !207
  %98 = load <4 x half>, ptr addrspace(3) %add.ptr543.6, align 8, !dbg !208
  %add532.7 = or disjoint i32 %mul531.3, 1024, !dbg !209
  %99 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add532.7, !dbg !207
  %add.ptr543.7 = getelementptr inbounds i8, ptr addrspace(3) %99, i32 %add.ptr543.idx.3, !dbg !207
  %100 = load <4 x half>, ptr addrspace(3) %add.ptr543.7, align 8, !dbg !208
  %101 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %86, <4 x half> %69, <4 x float> zeroinitializer), !dbg !210
  %102 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %88, <4 x half> %69, <4 x float> zeroinitializer), !dbg !210
  %103 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %90, <4 x half> %69, <4 x float> zeroinitializer), !dbg !210
  %104 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %92, <4 x half> %69, <4 x float> zeroinitializer), !dbg !210
  %105 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %94, <4 x half> %69, <4 x float> zeroinitializer), !dbg !210
  %106 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %96, <4 x half> %69, <4 x float> zeroinitializer), !dbg !210
  %107 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %98, <4 x half> %69, <4 x float> zeroinitializer), !dbg !210
  %108 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %100, <4 x half> %69, <4 x float> zeroinitializer), !dbg !210
  %add418 = fadd contract float %add411.3, 0.000000e+00, !dbg !211
  br label %if.end569, !dbg !212

if.end569:                                        ; preds = %if.then, %entry
  %numerator.sroa.128.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %108, %if.then ], !dbg !214
  %numerator.sroa.110.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %107, %if.then ], !dbg !214
  %numerator.sroa.92.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %106, %if.then ], !dbg !214
  %numerator.sroa.74.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %105, %if.then ], !dbg !214
  %numerator.sroa.56.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %104, %if.then ], !dbg !214
  %numerator.sroa.38.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %103, %if.then ], !dbg !214
  %numerator.sroa.20.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %102, %if.then ], !dbg !214
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %101, %if.then ], !dbg !214
  %denominator.sroa.0.0 = phi float [ 0.000000e+00, %entry ], [ %add418, %if.then ], !dbg !214
  %109 = bitcast float %denominator.sroa.0.0 to i32, !dbg !212
  %110 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !215
  %111 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %110) #10, !dbg !218
  %xor.i.i872 = xor i32 %111, 32, !dbg !219
  %112 = and i32 %111, -64, !dbg !220
  %and.i.i873 = add nsw i32 %112, 64, !dbg !220
  %cmp.not.i.i874 = icmp slt i32 %xor.i.i872, %and.i.i873, !dbg !221
  %cond.i.i875 = select i1 %cmp.not.i.i874, i32 %xor.i.i872, i32 %111, !dbg !222
  %shl.i.i876 = shl i32 %cond.i.i875, 2, !dbg !223
  %113 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i876, i32 %109), !dbg !224
  %114 = bitcast i32 %113 to float, !dbg !225
  %add573 = fadd contract float %denominator.sroa.0.0, %114, !dbg !226
  %115 = bitcast float %add573 to i32, !dbg !227
  %116 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !229
  %117 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %116) #10, !dbg !232
  %xor.i.i877 = xor i32 %117, 16, !dbg !233
  %118 = and i32 %117, -64, !dbg !234
  %and.i.i878 = add nsw i32 %118, 64, !dbg !234
  %cmp.not.i.i879 = icmp slt i32 %xor.i.i877, %and.i.i878, !dbg !235
  %cond.i.i880 = select i1 %cmp.not.i.i879, i32 %xor.i.i877, i32 %117, !dbg !236
  %shl.i.i881 = shl i32 %cond.i.i880, 2, !dbg !237
  %119 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i881, i32 %115), !dbg !238
  %120 = bitcast i32 %119 to float, !dbg !239
  %add578 = fadd contract float %add573, %120, !dbg !240
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !241
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !241
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !241
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !241
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %add578, !dbg !242
  %div598 = fdiv contract float %numerator.sroa.0.4.vec.extract, %add578, !dbg !243
  %div602 = fdiv contract float %numerator.sroa.0.8.vec.extract, %add578, !dbg !244
  %div606 = fdiv contract float %numerator.sroa.0.12.vec.extract, %add578, !dbg !245
  %numerator.sroa.20.16.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 0, !dbg !241
  %numerator.sroa.20.20.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 1, !dbg !241
  %numerator.sroa.20.24.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 2, !dbg !241
  %numerator.sroa.20.28.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 3, !dbg !241
  %div.1 = fdiv contract float %numerator.sroa.20.16.vec.extract, %add578, !dbg !242
  %div598.1 = fdiv contract float %numerator.sroa.20.20.vec.extract, %add578, !dbg !243
  %div602.1 = fdiv contract float %numerator.sroa.20.24.vec.extract, %add578, !dbg !244
  %div606.1 = fdiv contract float %numerator.sroa.20.28.vec.extract, %add578, !dbg !245
  %numerator.sroa.38.32.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 0, !dbg !241
  %numerator.sroa.38.36.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 1, !dbg !241
  %numerator.sroa.38.40.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 2, !dbg !241
  %numerator.sroa.38.44.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 3, !dbg !241
  %div.2 = fdiv contract float %numerator.sroa.38.32.vec.extract, %add578, !dbg !242
  %div598.2 = fdiv contract float %numerator.sroa.38.36.vec.extract, %add578, !dbg !243
  %div602.2 = fdiv contract float %numerator.sroa.38.40.vec.extract, %add578, !dbg !244
  %div606.2 = fdiv contract float %numerator.sroa.38.44.vec.extract, %add578, !dbg !245
  %numerator.sroa.56.48.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 0, !dbg !241
  %numerator.sroa.56.52.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 1, !dbg !241
  %numerator.sroa.56.56.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 2, !dbg !241
  %numerator.sroa.56.60.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 3, !dbg !241
  %div.3 = fdiv contract float %numerator.sroa.56.48.vec.extract, %add578, !dbg !242
  %div598.3 = fdiv contract float %numerator.sroa.56.52.vec.extract, %add578, !dbg !243
  %div602.3 = fdiv contract float %numerator.sroa.56.56.vec.extract, %add578, !dbg !244
  %div606.3 = fdiv contract float %numerator.sroa.56.60.vec.extract, %add578, !dbg !245
  %numerator.sroa.74.64.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 0, !dbg !241
  %numerator.sroa.74.68.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 1, !dbg !241
  %numerator.sroa.74.72.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 2, !dbg !241
  %numerator.sroa.74.76.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 3, !dbg !241
  %div.4 = fdiv contract float %numerator.sroa.74.64.vec.extract, %add578, !dbg !242
  %div598.4 = fdiv contract float %numerator.sroa.74.68.vec.extract, %add578, !dbg !243
  %div602.4 = fdiv contract float %numerator.sroa.74.72.vec.extract, %add578, !dbg !244
  %div606.4 = fdiv contract float %numerator.sroa.74.76.vec.extract, %add578, !dbg !245
  %numerator.sroa.92.80.vec.extract = extractelement <4 x float> %numerator.sroa.92.0, i64 0, !dbg !241
  %numerator.sroa.92.84.vec.extract = extractelement <4 x float> %numerator.sroa.92.0, i64 1, !dbg !241
  %numerator.sroa.92.88.vec.extract = extractelement <4 x float> %numerator.sroa.92.0, i64 2, !dbg !241
  %numerator.sroa.92.92.vec.extract = extractelement <4 x float> %numerator.sroa.92.0, i64 3, !dbg !241
  %div.5 = fdiv contract float %numerator.sroa.92.80.vec.extract, %add578, !dbg !242
  %div598.5 = fdiv contract float %numerator.sroa.92.84.vec.extract, %add578, !dbg !243
  %div602.5 = fdiv contract float %numerator.sroa.92.88.vec.extract, %add578, !dbg !244
  %div606.5 = fdiv contract float %numerator.sroa.92.92.vec.extract, %add578, !dbg !245
  %numerator.sroa.110.96.vec.extract = extractelement <4 x float> %numerator.sroa.110.0, i64 0, !dbg !241
  %numerator.sroa.110.100.vec.extract = extractelement <4 x float> %numerator.sroa.110.0, i64 1, !dbg !241
  %numerator.sroa.110.104.vec.extract = extractelement <4 x float> %numerator.sroa.110.0, i64 2, !dbg !241
  %numerator.sroa.110.108.vec.extract = extractelement <4 x float> %numerator.sroa.110.0, i64 3, !dbg !241
  %div.6 = fdiv contract float %numerator.sroa.110.96.vec.extract, %add578, !dbg !242
  %div598.6 = fdiv contract float %numerator.sroa.110.100.vec.extract, %add578, !dbg !243
  %div602.6 = fdiv contract float %numerator.sroa.110.104.vec.extract, %add578, !dbg !244
  %div606.6 = fdiv contract float %numerator.sroa.110.108.vec.extract, %add578, !dbg !245
  %numerator.sroa.128.112.vec.extract = extractelement <4 x float> %numerator.sroa.128.0, i64 0, !dbg !241
  %numerator.sroa.128.116.vec.extract = extractelement <4 x float> %numerator.sroa.128.0, i64 1, !dbg !241
  %numerator.sroa.128.120.vec.extract = extractelement <4 x float> %numerator.sroa.128.0, i64 2, !dbg !241
  %numerator.sroa.128.124.vec.extract = extractelement <4 x float> %numerator.sroa.128.0, i64 3, !dbg !241
  %div.7 = fdiv contract float %numerator.sroa.128.112.vec.extract, %add578, !dbg !242
  %div598.7 = fdiv contract float %numerator.sroa.128.116.vec.extract, %add578, !dbg !243
  %div602.7 = fdiv contract float %numerator.sroa.128.120.vec.extract, %add578, !dbg !244
  %div606.7 = fdiv contract float %numerator.sroa.128.124.vec.extract, %add578, !dbg !245
  fence syncscope("warp") release, !dbg !246
  tail call void @llvm.mxc.barrier.warp(), !dbg !249
  fence syncscope("warp") acquire, !dbg !250
  %xor659 = shl nuw nsw i32 %14, 2
  %mul660 = and i32 %xor659, 4
  %add642 = or disjoint i32 %mul660, %mul50
  %121 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !255
  %122 = fptrunc float %div to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %121), !dbg !251, !noalias !255
  %123 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !255
  %124 = fptrunc float %div598 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %123), !dbg !260, !noalias !255
  %125 = bitcast half %122 to i16, !dbg !262
  %126 = bitcast half %124 to i16, !dbg !265
  %127 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !270
  %128 = fptrunc float %div602 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %127), !dbg !266, !noalias !270
  %129 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !270
  %130 = fptrunc float %div606 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %129), !dbg !275, !noalias !270
  %131 = bitcast half %128 to i16, !dbg !277
  %132 = bitcast half %130 to i16, !dbg !279
  %__8.sroa.6.0.insert.ext = zext i16 %132 to i64, !dbg !280
  %__8.sroa.6.0.insert.shift = shl nuw i64 %__8.sroa.6.0.insert.ext, 48, !dbg !280
  %__8.sroa.5.0.insert.ext = zext i16 %131 to i64, !dbg !280
  %__8.sroa.5.0.insert.shift = shl nuw nsw i64 %__8.sroa.5.0.insert.ext, 32, !dbg !280
  %__8.sroa.5.0.insert.insert = or disjoint i64 %__8.sroa.6.0.insert.shift, %__8.sroa.5.0.insert.shift, !dbg !280
  %__8.sroa.4.0.insert.ext = zext i16 %126 to i64, !dbg !280
  %__8.sroa.4.0.insert.shift = shl nuw nsw i64 %__8.sroa.4.0.insert.ext, 16, !dbg !280
  %__8.sroa.4.0.insert.insert = or disjoint i64 %__8.sroa.5.0.insert.insert, %__8.sroa.4.0.insert.shift, !dbg !280
  %__8.sroa.0.0.insert.ext = zext i16 %125 to i64, !dbg !280
  %__8.sroa.0.0.insert.insert = or disjoint i64 %__8.sroa.4.0.insert.insert, %__8.sroa.0.0.insert.ext, !dbg !280
  %133 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add642, !dbg !281
  %add.ptr663 = getelementptr inbounds i8, ptr addrspace(3) %133, i32 %add.ptr77.idx, !dbg !281
  store i64 %__8.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr663, align 8, !dbg !282
  %134 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !255
  %135 = fptrunc float %div.1 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %134), !dbg !251, !noalias !255
  %136 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !255
  %137 = fptrunc float %div598.1 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %136), !dbg !260, !noalias !255
  %138 = bitcast half %135 to i16, !dbg !262
  %139 = bitcast half %137 to i16, !dbg !265
  %140 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !270
  %141 = fptrunc float %div602.1 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %140), !dbg !266, !noalias !270
  %142 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !270
  %143 = fptrunc float %div606.1 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %142), !dbg !275, !noalias !270
  %144 = bitcast half %141 to i16, !dbg !277
  %145 = bitcast half %143 to i16, !dbg !279
  %__8.sroa.6.0.insert.ext.1 = zext i16 %145 to i64, !dbg !280
  %__8.sroa.6.0.insert.shift.1 = shl nuw i64 %__8.sroa.6.0.insert.ext.1, 48, !dbg !280
  %__8.sroa.5.0.insert.ext.1 = zext i16 %144 to i64, !dbg !280
  %__8.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.1, 32, !dbg !280
  %__8.sroa.5.0.insert.insert.1 = or disjoint i64 %__8.sroa.6.0.insert.shift.1, %__8.sroa.5.0.insert.shift.1, !dbg !280
  %__8.sroa.4.0.insert.ext.1 = zext i16 %139 to i64, !dbg !280
  %__8.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.1, 16, !dbg !280
  %__8.sroa.4.0.insert.insert.1 = or disjoint i64 %__8.sroa.5.0.insert.insert.1, %__8.sroa.4.0.insert.shift.1, !dbg !280
  %__8.sroa.0.0.insert.ext.1 = zext i16 %138 to i64, !dbg !280
  %__8.sroa.0.0.insert.insert.1 = or disjoint i64 %__8.sroa.4.0.insert.insert.1, %__8.sroa.0.0.insert.ext.1, !dbg !280
  %add.ptr663.1 = getelementptr inbounds i8, ptr addrspace(3) %133, i32 %add.ptr77.idx.1, !dbg !281
  store i64 %__8.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr663.1, align 8, !dbg !282
  %146 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !255
  %147 = fptrunc float %div.2 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %146), !dbg !251, !noalias !255
  %148 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !255
  %149 = fptrunc float %div598.2 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %148), !dbg !260, !noalias !255
  %150 = bitcast half %147 to i16, !dbg !262
  %151 = bitcast half %149 to i16, !dbg !265
  %152 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !270
  %153 = fptrunc float %div602.2 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %152), !dbg !266, !noalias !270
  %154 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !270
  %155 = fptrunc float %div606.2 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %154), !dbg !275, !noalias !270
  %156 = bitcast half %153 to i16, !dbg !277
  %157 = bitcast half %155 to i16, !dbg !279
  %__8.sroa.6.0.insert.ext.2 = zext i16 %157 to i64, !dbg !280
  %__8.sroa.6.0.insert.shift.2 = shl nuw i64 %__8.sroa.6.0.insert.ext.2, 48, !dbg !280
  %__8.sroa.5.0.insert.ext.2 = zext i16 %156 to i64, !dbg !280
  %__8.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.2, 32, !dbg !280
  %__8.sroa.5.0.insert.insert.2 = or disjoint i64 %__8.sroa.6.0.insert.shift.2, %__8.sroa.5.0.insert.shift.2, !dbg !280
  %__8.sroa.4.0.insert.ext.2 = zext i16 %151 to i64, !dbg !280
  %__8.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.2, 16, !dbg !280
  %__8.sroa.4.0.insert.insert.2 = or disjoint i64 %__8.sroa.5.0.insert.insert.2, %__8.sroa.4.0.insert.shift.2, !dbg !280
  %__8.sroa.0.0.insert.ext.2 = zext i16 %150 to i64, !dbg !280
  %__8.sroa.0.0.insert.insert.2 = or disjoint i64 %__8.sroa.4.0.insert.insert.2, %__8.sroa.0.0.insert.ext.2, !dbg !280
  %add.ptr663.2 = getelementptr inbounds i8, ptr addrspace(3) %133, i32 %add.ptr77.idx.2, !dbg !281
  store i64 %__8.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr663.2, align 8, !dbg !282
  %158 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !255
  %159 = fptrunc float %div.3 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %158), !dbg !251, !noalias !255
  %160 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !255
  %161 = fptrunc float %div598.3 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %160), !dbg !260, !noalias !255
  %162 = bitcast half %159 to i16, !dbg !262
  %163 = bitcast half %161 to i16, !dbg !265
  %164 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !270
  %165 = fptrunc float %div602.3 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %164), !dbg !266, !noalias !270
  %166 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !270
  %167 = fptrunc float %div606.3 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %166), !dbg !275, !noalias !270
  %168 = bitcast half %165 to i16, !dbg !277
  %169 = bitcast half %167 to i16, !dbg !279
  %__8.sroa.6.0.insert.ext.3 = zext i16 %169 to i64, !dbg !280
  %__8.sroa.6.0.insert.shift.3 = shl nuw i64 %__8.sroa.6.0.insert.ext.3, 48, !dbg !280
  %__8.sroa.5.0.insert.ext.3 = zext i16 %168 to i64, !dbg !280
  %__8.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.3, 32, !dbg !280
  %__8.sroa.5.0.insert.insert.3 = or disjoint i64 %__8.sroa.6.0.insert.shift.3, %__8.sroa.5.0.insert.shift.3, !dbg !280
  %__8.sroa.4.0.insert.ext.3 = zext i16 %163 to i64, !dbg !280
  %__8.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.3, 16, !dbg !280
  %__8.sroa.4.0.insert.insert.3 = or disjoint i64 %__8.sroa.5.0.insert.insert.3, %__8.sroa.4.0.insert.shift.3, !dbg !280
  %__8.sroa.0.0.insert.ext.3 = zext i16 %162 to i64, !dbg !280
  %__8.sroa.0.0.insert.insert.3 = or disjoint i64 %__8.sroa.4.0.insert.insert.3, %__8.sroa.0.0.insert.ext.3, !dbg !280
  %add.ptr663.3 = getelementptr inbounds i8, ptr addrspace(3) %133, i32 %add.ptr77.idx.3, !dbg !281
  store i64 %__8.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr663.3, align 8, !dbg !282
  %170 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !255
  %171 = fptrunc float %div.4 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %170), !dbg !251, !noalias !255
  %172 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !255
  %173 = fptrunc float %div598.4 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %172), !dbg !260, !noalias !255
  %174 = bitcast half %171 to i16, !dbg !262
  %175 = bitcast half %173 to i16, !dbg !265
  %176 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !270
  %177 = fptrunc float %div602.4 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %176), !dbg !266, !noalias !270
  %178 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !270
  %179 = fptrunc float %div606.4 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %178), !dbg !275, !noalias !270
  %180 = bitcast half %177 to i16, !dbg !277
  %181 = bitcast half %179 to i16, !dbg !279
  %__8.sroa.6.0.insert.ext.4 = zext i16 %181 to i64, !dbg !280
  %__8.sroa.6.0.insert.shift.4 = shl nuw i64 %__8.sroa.6.0.insert.ext.4, 48, !dbg !280
  %__8.sroa.5.0.insert.ext.4 = zext i16 %180 to i64, !dbg !280
  %__8.sroa.5.0.insert.shift.4 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.4, 32, !dbg !280
  %__8.sroa.5.0.insert.insert.4 = or disjoint i64 %__8.sroa.6.0.insert.shift.4, %__8.sroa.5.0.insert.shift.4, !dbg !280
  %__8.sroa.4.0.insert.ext.4 = zext i16 %175 to i64, !dbg !280
  %__8.sroa.4.0.insert.shift.4 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.4, 16, !dbg !280
  %__8.sroa.4.0.insert.insert.4 = or disjoint i64 %__8.sroa.5.0.insert.insert.4, %__8.sroa.4.0.insert.shift.4, !dbg !280
  %__8.sroa.0.0.insert.ext.4 = zext i16 %174 to i64, !dbg !280
  %__8.sroa.0.0.insert.insert.4 = or disjoint i64 %__8.sroa.4.0.insert.insert.4, %__8.sroa.0.0.insert.ext.4, !dbg !280
  %add652.4 = or disjoint i32 %add642, 64, !dbg !283
  %182 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add652.4, !dbg !281
  %add.ptr663.4 = getelementptr inbounds i8, ptr addrspace(3) %182, i32 %add.ptr77.idx, !dbg !281
  store i64 %__8.sroa.0.0.insert.insert.4, ptr addrspace(3) %add.ptr663.4, align 8, !dbg !282
  %183 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !255
  %184 = fptrunc float %div.5 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %183), !dbg !251, !noalias !255
  %185 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !255
  %186 = fptrunc float %div598.5 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %185), !dbg !260, !noalias !255
  %187 = bitcast half %184 to i16, !dbg !262
  %188 = bitcast half %186 to i16, !dbg !265
  %189 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !270
  %190 = fptrunc float %div602.5 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %189), !dbg !266, !noalias !270
  %191 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !270
  %192 = fptrunc float %div606.5 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %191), !dbg !275, !noalias !270
  %193 = bitcast half %190 to i16, !dbg !277
  %194 = bitcast half %192 to i16, !dbg !279
  %__8.sroa.6.0.insert.ext.5 = zext i16 %194 to i64, !dbg !280
  %__8.sroa.6.0.insert.shift.5 = shl nuw i64 %__8.sroa.6.0.insert.ext.5, 48, !dbg !280
  %__8.sroa.5.0.insert.ext.5 = zext i16 %193 to i64, !dbg !280
  %__8.sroa.5.0.insert.shift.5 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.5, 32, !dbg !280
  %__8.sroa.5.0.insert.insert.5 = or disjoint i64 %__8.sroa.6.0.insert.shift.5, %__8.sroa.5.0.insert.shift.5, !dbg !280
  %__8.sroa.4.0.insert.ext.5 = zext i16 %188 to i64, !dbg !280
  %__8.sroa.4.0.insert.shift.5 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.5, 16, !dbg !280
  %__8.sroa.4.0.insert.insert.5 = or disjoint i64 %__8.sroa.5.0.insert.insert.5, %__8.sroa.4.0.insert.shift.5, !dbg !280
  %__8.sroa.0.0.insert.ext.5 = zext i16 %187 to i64, !dbg !280
  %__8.sroa.0.0.insert.insert.5 = or disjoint i64 %__8.sroa.4.0.insert.insert.5, %__8.sroa.0.0.insert.ext.5, !dbg !280
  %add.ptr663.5 = getelementptr inbounds i8, ptr addrspace(3) %182, i32 %add.ptr77.idx.1, !dbg !281
  store i64 %__8.sroa.0.0.insert.insert.5, ptr addrspace(3) %add.ptr663.5, align 8, !dbg !282
  %195 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !255
  %196 = fptrunc float %div.6 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %195), !dbg !251, !noalias !255
  %197 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !255
  %198 = fptrunc float %div598.6 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %197), !dbg !260, !noalias !255
  %199 = bitcast half %196 to i16, !dbg !262
  %200 = bitcast half %198 to i16, !dbg !265
  %201 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !270
  %202 = fptrunc float %div602.6 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %201), !dbg !266, !noalias !270
  %203 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !270
  %204 = fptrunc float %div606.6 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %203), !dbg !275, !noalias !270
  %205 = bitcast half %202 to i16, !dbg !277
  %206 = bitcast half %204 to i16, !dbg !279
  %__8.sroa.6.0.insert.ext.6 = zext i16 %206 to i64, !dbg !280
  %__8.sroa.6.0.insert.shift.6 = shl nuw i64 %__8.sroa.6.0.insert.ext.6, 48, !dbg !280
  %__8.sroa.5.0.insert.ext.6 = zext i16 %205 to i64, !dbg !280
  %__8.sroa.5.0.insert.shift.6 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.6, 32, !dbg !280
  %__8.sroa.5.0.insert.insert.6 = or disjoint i64 %__8.sroa.6.0.insert.shift.6, %__8.sroa.5.0.insert.shift.6, !dbg !280
  %__8.sroa.4.0.insert.ext.6 = zext i16 %200 to i64, !dbg !280
  %__8.sroa.4.0.insert.shift.6 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.6, 16, !dbg !280
  %__8.sroa.4.0.insert.insert.6 = or disjoint i64 %__8.sroa.5.0.insert.insert.6, %__8.sroa.4.0.insert.shift.6, !dbg !280
  %__8.sroa.0.0.insert.ext.6 = zext i16 %199 to i64, !dbg !280
  %__8.sroa.0.0.insert.insert.6 = or disjoint i64 %__8.sroa.4.0.insert.insert.6, %__8.sroa.0.0.insert.ext.6, !dbg !280
  %add.ptr663.6 = getelementptr inbounds i8, ptr addrspace(3) %182, i32 %add.ptr77.idx.2, !dbg !281
  store i64 %__8.sroa.0.0.insert.insert.6, ptr addrspace(3) %add.ptr663.6, align 8, !dbg !282
  %207 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !255
  %208 = fptrunc float %div.7 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %207), !dbg !251, !noalias !255
  %209 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !255
  %210 = fptrunc float %div598.7 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %209), !dbg !260, !noalias !255
  %211 = bitcast half %208 to i16, !dbg !262
  %212 = bitcast half %210 to i16, !dbg !265
  %213 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !270
  %214 = fptrunc float %div602.7 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %213), !dbg !266, !noalias !270
  %215 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !270
  %216 = fptrunc float %div606.7 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %215), !dbg !275, !noalias !270
  %217 = bitcast half %214 to i16, !dbg !277
  %218 = bitcast half %216 to i16, !dbg !279
  %__8.sroa.6.0.insert.ext.7 = zext i16 %218 to i64, !dbg !280
  %__8.sroa.6.0.insert.shift.7 = shl nuw i64 %__8.sroa.6.0.insert.ext.7, 48, !dbg !280
  %__8.sroa.5.0.insert.ext.7 = zext i16 %217 to i64, !dbg !280
  %__8.sroa.5.0.insert.shift.7 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.7, 32, !dbg !280
  %__8.sroa.5.0.insert.insert.7 = or disjoint i64 %__8.sroa.6.0.insert.shift.7, %__8.sroa.5.0.insert.shift.7, !dbg !280
  %__8.sroa.4.0.insert.ext.7 = zext i16 %212 to i64, !dbg !280
  %__8.sroa.4.0.insert.shift.7 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.7, 16, !dbg !280
  %__8.sroa.4.0.insert.insert.7 = or disjoint i64 %__8.sroa.5.0.insert.insert.7, %__8.sroa.4.0.insert.shift.7, !dbg !280
  %__8.sroa.0.0.insert.ext.7 = zext i16 %211 to i64, !dbg !280
  %__8.sroa.0.0.insert.insert.7 = or disjoint i64 %__8.sroa.4.0.insert.insert.7, %__8.sroa.0.0.insert.ext.7, !dbg !280
  %add.ptr663.7 = getelementptr inbounds i8, ptr addrspace(3) %182, i32 %add.ptr77.idx.3, !dbg !281
  store i64 %__8.sroa.0.0.insert.insert.7, ptr addrspace(3) %add.ptr663.7, align 8, !dbg !282
  fence syncscope("warp") release, !dbg !284
  tail call void @llvm.mxc.barrier.warp(), !dbg !287
  fence syncscope("warp") acquire, !dbg !288
  %219 = load i64, ptr addrspace(3) %4, align 16, !dbg !289
  %add.ptr695.1 = getelementptr inbounds i8, ptr addrspace(3) %4, i32 8, !dbg !290
  %220 = load i64, ptr addrspace(3) %add.ptr695.1, align 8, !dbg !289
  %add.ptr713 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %2, !dbg !291
  store i64 %219, ptr addrspace(1) %add.ptr713, align 16, !dbg !292
  %output_fetch.sroa.10.0.add.ptr713.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr713, i64 8, !dbg !292
  store i64 %220, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr713.sroa_idx, align 8, !dbg !292
  %221 = load i64, ptr addrspace(3) %7, align 16, !dbg !289
  %add.ptr695.1.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 8, !dbg !290
  %222 = load i64, ptr addrspace(3) %add.ptr695.1.1, align 8, !dbg !289
  %add.ptr713.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %5, !dbg !291
  store i64 %221, ptr addrspace(1) %add.ptr713.1, align 16, !dbg !292
  %output_fetch.sroa.10.0.add.ptr713.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr713.1, i64 8, !dbg !292
  store i64 %222, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr713.1.sroa_idx, align 8, !dbg !292
  %add.ptr695.2 = getelementptr inbounds i8, ptr addrspace(3) %10, i32 8, !dbg !290
  %223 = load i64, ptr addrspace(3) %add.ptr695.2, align 8, !dbg !289
  %224 = load i64, ptr addrspace(3) %10, align 16, !dbg !289
  %add.ptr713.2 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %8, !dbg !291
  store i64 %223, ptr addrspace(1) %add.ptr713.2, align 16, !dbg !292
  %output_fetch.sroa.10.0.add.ptr713.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr713.2, i64 8, !dbg !292
  store i64 %224, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr713.2.sroa_idx, align 8, !dbg !292
  %add.ptr695.3 = getelementptr inbounds i8, ptr addrspace(3) %13, i32 8, !dbg !290
  %225 = load i64, ptr addrspace(3) %add.ptr695.3, align 8, !dbg !289
  %226 = load i64, ptr addrspace(3) %13, align 16, !dbg !289
  %add.ptr713.3 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %11, !dbg !291
  store i64 %225, ptr addrspace(1) %add.ptr713.3, align 16, !dbg !292
  %output_fetch.sroa.10.0.add.ptr713.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr713.3, i64 8, !dbg !292
  store i64 %226, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr713.3.sroa_idx, align 8, !dbg !292
  ret void, !dbg !293
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v225_worker2_c3_compile_budget_diagnostic_subagent2/codegen/power_v225/case3_stage1.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v225_worker2_c3_compile_budget_diagnostic_subagent2/codegen/power_v225/case3_stage1.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 28, column: 3, scope: !40)
!44 = !DILocation(line: 29, column: 43, scope: !40)
!45 = !DILocation(line: 29, column: 29, scope: !40)
!46 = !DILocation(line: 32, column: 24, scope: !40)
!47 = !DILocation(line: 32, column: 231, scope: !40)
!48 = !DILocation(line: 29, column: 90, scope: !40)
!49 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !52)
!50 = distinct !DISubprogram(name: "__barrier_warp", scope: !51, file: !51, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!51 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!52 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !54)
!53 = distinct !DISubprogram(name: "__syncwarp", scope: !51, file: !51, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!54 = distinct !DILocation(line: 35, column: 3, scope: !40)
!55 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !52)
!56 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !52)
!57 = !DILocation(line: 38, column: 171, scope: !40)
!58 = !DILocation(line: 38, column: 57, scope: !40)
!59 = !DILocation(line: 38, column: 142, scope: !40)
!60 = !DILocation(line: 47, column: 22, scope: !40)
!61 = !DILocation(line: 47, column: 49, scope: !40)
!62 = !DILocation(line: 48, column: 10, scope: !40)
!63 = !DILocation(line: 48, column: 26, scope: !40)
!64 = !DILocation(line: 38, column: 119, scope: !40)
!65 = !DILocation(line: 38, column: 38, scope: !40)
!66 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !67)
!67 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !68)
!68 = distinct !DILocation(line: 49, column: 5, scope: !40)
!69 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !67)
!70 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !67)
!71 = !DILocation(line: 51, column: 10, scope: !40)
!72 = !DILocation(line: 52, column: 45, scope: !40)
!73 = !DILocation(line: 52, column: 31, scope: !40)
!74 = !DILocation(line: 55, column: 241, scope: !40)
!75 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !76)
!76 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !77)
!77 = distinct !DILocation(line: 58, column: 5, scope: !40)
!78 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !76)
!79 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !76)
!80 = !DILocation(line: 63, column: 163, scope: !40)
!81 = !DILocation(line: 63, column: 87, scope: !40)
!82 = !DILocation(line: 63, column: 169, scope: !40)
!83 = !DILocation(line: 63, column: 49, scope: !40)
!84 = !DILocation(line: 63, column: 30, scope: !40)
!85 = !DILocation(line: 65, column: 37, scope: !40)
!86 = !DILocation(line: 74, column: 30, scope: !40)
!87 = !DILocation(line: 76, column: 44, scope: !40)
!88 = !DILocation(line: 82, column: 19, scope: !40)
!89 = !DILocation(line: 83, column: 21, scope: !40)
!90 = !DILocation(line: 85, column: 20, scope: !40)
!91 = !DILocation(line: 86, column: 20, scope: !40)
!92 = !DILocation(line: 87, column: 20, scope: !40)
!93 = !DILocation(line: 92, column: 72, scope: !40)
!94 = !DILocation(line: 92, column: 11, scope: !40)
!95 = !DILocation(line: 92, column: 61, scope: !40)
!96 = !DILocation(line: 351, column: 10, scope: !97, inlinedAt: !99)
!97 = distinct !DISubprogram(name: "max", scope: !98, file: !98, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!98 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!99 = distinct !DILocation(line: 102, column: 20, scope: !40)
!100 = !DILocation(line: 1018, column: 9, scope: !101, inlinedAt: !102)
!101 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!102 = distinct !DILocation(line: 104, column: 34, scope: !40)
!103 = !DILocation(line: 171, column: 37, scope: !104, inlinedAt: !105)
!104 = distinct !DISubprogram(name: "__lane_id", scope: !51, file: !51, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!105 = distinct !DILocation(line: 990, column: 14, scope: !106, inlinedAt: !107)
!106 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!107 = distinct !DILocation(line: 1019, column: 11, scope: !101, inlinedAt: !102)
!108 = !DILocation(line: 171, column: 10, scope: !104, inlinedAt: !105)
!109 = !DILocation(line: 991, column: 20, scope: !106, inlinedAt: !107)
!110 = !DILocation(line: 992, column: 36, scope: !106, inlinedAt: !107)
!111 = !DILocation(line: 992, column: 17, scope: !106, inlinedAt: !107)
!112 = !DILocation(line: 992, column: 11, scope: !106, inlinedAt: !107)
!113 = !DILocation(line: 993, column: 43, scope: !106, inlinedAt: !107)
!114 = !DILocation(line: 993, column: 10, scope: !106, inlinedAt: !107)
!115 = !DILocation(line: 1020, column: 14, scope: !101, inlinedAt: !102)
!116 = !DILocation(line: 351, column: 10, scope: !97, inlinedAt: !117)
!117 = distinct !DILocation(line: 104, column: 18, scope: !40)
!118 = !DILocation(line: 1018, column: 9, scope: !101, inlinedAt: !119)
!119 = distinct !DILocation(line: 105, column: 34, scope: !40)
!120 = !DILocation(line: 171, column: 37, scope: !104, inlinedAt: !121)
!121 = distinct !DILocation(line: 990, column: 14, scope: !106, inlinedAt: !122)
!122 = distinct !DILocation(line: 1019, column: 11, scope: !101, inlinedAt: !119)
!123 = !DILocation(line: 171, column: 10, scope: !104, inlinedAt: !121)
!124 = !DILocation(line: 991, column: 20, scope: !106, inlinedAt: !122)
!125 = !DILocation(line: 992, column: 36, scope: !106, inlinedAt: !122)
!126 = !DILocation(line: 992, column: 17, scope: !106, inlinedAt: !122)
!127 = !DILocation(line: 992, column: 11, scope: !106, inlinedAt: !122)
!128 = !DILocation(line: 993, column: 43, scope: !106, inlinedAt: !122)
!129 = !DILocation(line: 993, column: 10, scope: !106, inlinedAt: !122)
!130 = !DILocation(line: 1020, column: 14, scope: !101, inlinedAt: !119)
!131 = !DILocation(line: 351, column: 10, scope: !97, inlinedAt: !132)
!132 = distinct !DILocation(line: 105, column: 18, scope: !40)
!133 = !DILocation(line: 115, column: 26, scope: !40)
!134 = !DILocation(line: 116, column: 26, scope: !40)
!135 = !DILocation(line: 117, column: 26, scope: !40)
!136 = !DILocation(line: 118, column: 26, scope: !40)
!137 = !DILocation(line: 120, column: 23, scope: !40)
!138 = !DILocation(line: 121, column: 23, scope: !40)
!139 = !DILocation(line: 122, column: 23, scope: !40)
!140 = !DILocation(line: 123, column: 23, scope: !40)
!141 = !DILocation(line: 125, column: 21, scope: !40)
!142 = !DILocation(line: 126, column: 21, scope: !40)
!143 = !DILocation(line: 127, column: 21, scope: !40)
!144 = !DILocation(line: 128, column: 21, scope: !40)
!145 = !DILocation(line: 285, column: 49, scope: !146, inlinedAt: !147)
!146 = distinct !DISubprogram(name: "exp2f", scope: !98, file: !98, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!147 = distinct !DILocation(line: 129, column: 13, scope: !40)
!148 = !DILocation(line: 285, column: 49, scope: !146, inlinedAt: !149)
!149 = distinct !DILocation(line: 130, column: 13, scope: !40)
!150 = !DILocation(line: 285, column: 49, scope: !146, inlinedAt: !151)
!151 = distinct !DILocation(line: 131, column: 13, scope: !40)
!152 = !DILocation(line: 285, column: 49, scope: !146, inlinedAt: !153)
!153 = distinct !DILocation(line: 132, column: 13, scope: !40)
!154 = !DILocation(line: 1007, column: 10, scope: !155, inlinedAt: !157)
!155 = distinct !DISubprogram(name: "__float2half_rn", scope: !156, file: !156, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!156 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!157 = distinct !DILocation(line: 1077, column: 18, scope: !158, inlinedAt: !159)
!158 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !156, file: !156, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!159 = distinct !DILocation(line: 1295, column: 23, scope: !160, inlinedAt: !161)
!160 = distinct !DISubprogram(name: "__float22half2_rn", scope: !156, file: !156, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!161 = distinct !DILocation(line: 133, column: 27, scope: !40)
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
!172 = distinct !DILocation(line: 134, column: 27, scope: !40)
!173 = !{!174, !176}
!174 = distinct !{!174, !175, !"_ZL17__floats2half2_rnff: %agg.result"}
!175 = distinct !{!175, !"_ZL17__floats2half2_rnff"}
!176 = distinct !{!176, !177, !"_ZL17__float22half2_rn6float2: %agg.result"}
!177 = distinct !{!177, !"_ZL17__float22half2_rn6float2"}
!178 = !DILocation(line: 1007, column: 10, scope: !155, inlinedAt: !179)
!179 = distinct !DILocation(line: 1077, column: 38, scope: !158, inlinedAt: !171)
!180 = !DILocation(line: 135, column: 34, scope: !40)
!181 = !DILocation(line: 1082, column: 16, scope: !182, inlinedAt: !183)
!182 = distinct !DISubprogram(name: "__half2float", scope: !156, file: !156, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!183 = distinct !DILocation(line: 136, column: 55, scope: !184, inlinedAt: !185)
!184 = distinct !DISubprogram(name: "operator float", scope: !156, file: !156, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!185 = distinct !DILocation(line: 139, column: 50, scope: !40)
!186 = !DILocation(line: 139, column: 40, scope: !40)
!187 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !188)
!188 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !189)
!189 = distinct !DILocation(line: 142, column: 5, scope: !40)
!190 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !188)
!191 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !188)
!192 = !DILocation(line: 147, column: 237, scope: !40)
!193 = !DILocation(line: 147, column: 54, scope: !40)
!194 = !DILocation(line: 147, column: 40, scope: !40)
!195 = !DILocation(line: 154, column: 153, scope: !40)
!196 = !DILocation(line: 154, column: 239, scope: !40)
!197 = !DILocation(line: 154, column: 160, scope: !40)
!198 = !DILocation(line: 154, column: 26, scope: !40)
!199 = !DILocation(line: 154, column: 288, scope: !40)
!200 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !201)
!201 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !202)
!202 = distinct !DILocation(line: 157, column: 5, scope: !40)
!203 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !201)
!204 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !201)
!205 = !DILocation(line: 160, column: 152, scope: !40)
!206 = !DILocation(line: 160, column: 224, scope: !40)
!207 = !DILocation(line: 160, column: 63, scope: !40)
!208 = !DILocation(line: 160, column: 44, scope: !40)
!209 = !DILocation(line: 160, column: 91, scope: !40)
!210 = !DILocation(line: 165, column: 46, scope: !40)
!211 = !DILocation(line: 141, column: 38, scope: !40)
!212 = !DILocation(line: 1018, column: 9, scope: !101, inlinedAt: !213)
!213 = distinct !DILocation(line: 171, column: 38, scope: !40)
!214 = !DILocation(line: 0, scope: !40)
!215 = !DILocation(line: 171, column: 37, scope: !104, inlinedAt: !216)
!216 = distinct !DILocation(line: 990, column: 14, scope: !106, inlinedAt: !217)
!217 = distinct !DILocation(line: 1019, column: 11, scope: !101, inlinedAt: !213)
!218 = !DILocation(line: 171, column: 10, scope: !104, inlinedAt: !216)
!219 = !DILocation(line: 991, column: 20, scope: !106, inlinedAt: !217)
!220 = !DILocation(line: 992, column: 36, scope: !106, inlinedAt: !217)
!221 = !DILocation(line: 992, column: 17, scope: !106, inlinedAt: !217)
!222 = !DILocation(line: 992, column: 11, scope: !106, inlinedAt: !217)
!223 = !DILocation(line: 993, column: 43, scope: !106, inlinedAt: !217)
!224 = !DILocation(line: 993, column: 10, scope: !106, inlinedAt: !217)
!225 = !DILocation(line: 1020, column: 14, scope: !101, inlinedAt: !213)
!226 = !DILocation(line: 171, column: 36, scope: !40)
!227 = !DILocation(line: 1018, column: 9, scope: !101, inlinedAt: !228)
!228 = distinct !DILocation(line: 172, column: 38, scope: !40)
!229 = !DILocation(line: 171, column: 37, scope: !104, inlinedAt: !230)
!230 = distinct !DILocation(line: 990, column: 14, scope: !106, inlinedAt: !231)
!231 = distinct !DILocation(line: 1019, column: 11, scope: !101, inlinedAt: !228)
!232 = !DILocation(line: 171, column: 10, scope: !104, inlinedAt: !230)
!233 = !DILocation(line: 991, column: 20, scope: !106, inlinedAt: !231)
!234 = !DILocation(line: 992, column: 36, scope: !106, inlinedAt: !231)
!235 = !DILocation(line: 992, column: 17, scope: !106, inlinedAt: !231)
!236 = !DILocation(line: 992, column: 11, scope: !106, inlinedAt: !231)
!237 = !DILocation(line: 993, column: 43, scope: !106, inlinedAt: !231)
!238 = !DILocation(line: 993, column: 10, scope: !106, inlinedAt: !231)
!239 = !DILocation(line: 1020, column: 14, scope: !101, inlinedAt: !228)
!240 = !DILocation(line: 172, column: 36, scope: !40)
!241 = !DILocation(line: 176, column: 21, scope: !40)
!242 = !DILocation(line: 178, column: 22, scope: !40)
!243 = !DILocation(line: 179, column: 22, scope: !40)
!244 = !DILocation(line: 180, column: 22, scope: !40)
!245 = !DILocation(line: 181, column: 22, scope: !40)
!246 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !247)
!247 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !248)
!248 = distinct !DILocation(line: 184, column: 3, scope: !40)
!249 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !247)
!250 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !247)
!251 = !DILocation(line: 1007, column: 10, scope: !155, inlinedAt: !252)
!252 = distinct !DILocation(line: 1077, column: 18, scope: !158, inlinedAt: !253)
!253 = distinct !DILocation(line: 1295, column: 23, scope: !160, inlinedAt: !254)
!254 = distinct !DILocation(line: 189, column: 27, scope: !40)
!255 = !{!256, !258}
!256 = distinct !{!256, !257, !"_ZL17__floats2half2_rnff: %agg.result"}
!257 = distinct !{!257, !"_ZL17__floats2half2_rnff"}
!258 = distinct !{!258, !259, !"_ZL17__float22half2_rn6float2: %agg.result"}
!259 = distinct !{!259, !"_ZL17__float22half2_rn6float2"}
!260 = !DILocation(line: 1007, column: 10, scope: !155, inlinedAt: !261)
!261 = distinct !DILocation(line: 1077, column: 38, scope: !158, inlinedAt: !253)
!262 = !DILocation(line: 596, column: 67, scope: !263, inlinedAt: !264)
!263 = distinct !DISubprogram(name: "__half2", scope: !156, file: !156, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!264 = distinct !DILocation(line: 1077, column: 10, scope: !158, inlinedAt: !253)
!265 = !DILocation(line: 596, column: 73, scope: !263, inlinedAt: !264)
!266 = !DILocation(line: 1007, column: 10, scope: !155, inlinedAt: !267)
!267 = distinct !DILocation(line: 1077, column: 18, scope: !158, inlinedAt: !268)
!268 = distinct !DILocation(line: 1295, column: 23, scope: !160, inlinedAt: !269)
!269 = distinct !DILocation(line: 190, column: 27, scope: !40)
!270 = !{!271, !273}
!271 = distinct !{!271, !272, !"_ZL17__floats2half2_rnff: %agg.result"}
!272 = distinct !{!272, !"_ZL17__floats2half2_rnff"}
!273 = distinct !{!273, !274, !"_ZL17__float22half2_rn6float2: %agg.result"}
!274 = distinct !{!274, !"_ZL17__float22half2_rn6float2"}
!275 = !DILocation(line: 1007, column: 10, scope: !155, inlinedAt: !276)
!276 = distinct !DILocation(line: 1077, column: 38, scope: !158, inlinedAt: !268)
!277 = !DILocation(line: 596, column: 67, scope: !263, inlinedAt: !278)
!278 = distinct !DILocation(line: 1077, column: 10, scope: !158, inlinedAt: !268)
!279 = !DILocation(line: 596, column: 73, scope: !263, inlinedAt: !278)
!280 = !DILocation(line: 191, column: 38, scope: !40)
!281 = !DILocation(line: 192, column: 22, scope: !40)
!282 = !DILocation(line: 192, column: 254, scope: !40)
!283 = !DILocation(line: 192, column: 86, scope: !40)
!284 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !285)
!285 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !286)
!286 = distinct !DILocation(line: 194, column: 3, scope: !40)
!287 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !285)
!288 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !285)
!289 = !DILocation(line: 199, column: 46, scope: !40)
!290 = !DILocation(line: 199, column: 65, scope: !40)
!291 = !DILocation(line: 201, column: 22, scope: !40)
!292 = !DILocation(line: 201, column: 100, scope: !40)
!293 = !DILocation(line: 203, column: 1, scope: !40)
