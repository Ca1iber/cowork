; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v222_worker2_c3_v_4row_producer_subagent2/codegen/power_v222/case3_stage1.device.cpp'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v222_worker2_c3_v_4row_producer_subagent2/codegen/power_v222/case3_stage1.device.cpp"
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
  %qk_fetch.sroa.0.0.copyload1283 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %qk_fetch.sroa.18.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %qk_fetch.sroa.18.0.copyload1290 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.add.ptr.1.sroa_idx, align 8, !dbg !45
  %add28.1 = add nuw nsw i32 %shr27, 4
  %xor.1 = xor i32 %add28.1, %and
  %6 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @shared, i32 1024), i32 %mul21, !dbg !46
  %.idx.1837 = shl nuw nsw i32 %xor.1, 4, !dbg !46
  %7 = getelementptr inbounds i8, ptr addrspace(3) %6, i32 %.idx.1837, !dbg !46
  %add.ptr40.1839 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr40.idx, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1283, ptr addrspace(3) %add.ptr40.1839, align 8, !dbg !47
  %add.ptr40.1.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr40.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.18.0.copyload1290, ptr addrspace(3) %add.ptr40.1.1, align 8, !dbg !47
  %8 = add nuw nsw i64 %2, 1024, !dbg !48
  %add.ptr.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %8, !dbg !44
  %qk_fetch.sroa.0.0.copyload1284 = load i64, ptr addrspace(4) %add.ptr.2, align 16, !dbg !45
  %qk_fetch.sroa.18.0.add.ptr.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.2, i64 8, !dbg !45
  %qk_fetch.sroa.18.0.copyload1291 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.add.ptr.2.sroa_idx, align 8, !dbg !45
  %9 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @shared, i32 2048), i32 %mul21, !dbg !46
  %10 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 %.idx, !dbg !46
  %add.ptr40.2 = getelementptr inbounds i8, ptr addrspace(3) %10, i32 %add.ptr40.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1284, ptr addrspace(3) %add.ptr40.2, align 8, !dbg !47
  %add.ptr40.1.2 = getelementptr inbounds i8, ptr addrspace(3) %10, i32 %add.ptr40.idx, !dbg !46
  store i64 %qk_fetch.sroa.18.0.copyload1291, ptr addrspace(3) %add.ptr40.1.2, align 8, !dbg !47
  %11 = add nuw nsw i64 %2, 1536, !dbg !48
  %add.ptr.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %11, !dbg !44
  %qk_fetch.sroa.0.0.copyload1285 = load i64, ptr addrspace(4) %add.ptr.3, align 16, !dbg !45
  %qk_fetch.sroa.18.0.add.ptr.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.3, i64 8, !dbg !45
  %qk_fetch.sroa.18.0.copyload1292 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.add.ptr.3.sroa_idx, align 8, !dbg !45
  %12 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @shared, i32 3072), i32 %mul21, !dbg !46
  %13 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 %.idx.1837, !dbg !46
  %add.ptr40.3 = getelementptr inbounds i8, ptr addrspace(3) %13, i32 %add.ptr40.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1285, ptr addrspace(3) %add.ptr40.3, align 8, !dbg !47
  %add.ptr40.1.3 = getelementptr inbounds i8, ptr addrspace(3) %13, i32 %add.ptr40.idx, !dbg !46
  store i64 %qk_fetch.sroa.18.0.copyload1292, ptr addrspace(3) %add.ptr40.1.3, align 8, !dbg !47
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
  br i1 %or.cond, label %if.end489, label %if.then, !dbg !63

if.then:                                          ; preds = %entry
  %xor70753 = xor i32 %14, %1
  %xor73 = shl nuw nsw i32 %xor70753, 2
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
  %.idx827 = shl nuw nsw i64 %conv110, 8, !dbg !72
  %26 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep, i64 %.idx827, !dbg !72
  %qk_fetch.sroa.0.0.copyload1282 = load i64, ptr addrspace(4) %26, align 16, !dbg !73
  %qk_fetch.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %26, i64 8, !dbg !73
  %qk_fetch.sroa.18.0.copyload1289 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0..sroa_idx, align 8, !dbg !73
  store i64 %qk_fetch.sroa.0.0.copyload1282, ptr addrspace(3) %add.ptr40, align 8, !dbg !74
  store i64 %qk_fetch.sroa.18.0.copyload1289, ptr addrspace(3) %add.ptr40.1, align 8, !dbg !74
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %26, i64 1024, !dbg !72
  %qk_fetch.sroa.0.0.copyload1286 = load i64, ptr addrspace(4) %gep.1, align 16, !dbg !73
  %qk_fetch.sroa.18.0.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %26, i64 1032, !dbg !73
  %qk_fetch.sroa.18.0.copyload1293 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.gep.1.sroa_idx, align 8, !dbg !73
  store i64 %qk_fetch.sroa.0.0.copyload1286, ptr addrspace(3) %add.ptr40.1839, align 8, !dbg !74
  store i64 %qk_fetch.sroa.18.0.copyload1293, ptr addrspace(3) %add.ptr40.1.1, align 8, !dbg !74
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %26, i64 2048, !dbg !72
  %qk_fetch.sroa.0.0.copyload1287 = load i64, ptr addrspace(4) %gep.2, align 16, !dbg !73
  %qk_fetch.sroa.18.0.gep.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %26, i64 2056, !dbg !73
  %qk_fetch.sroa.18.0.copyload1294 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.gep.2.sroa_idx, align 8, !dbg !73
  store i64 %qk_fetch.sroa.0.0.copyload1287, ptr addrspace(3) %add.ptr40.2, align 8, !dbg !74
  store i64 %qk_fetch.sroa.18.0.copyload1294, ptr addrspace(3) %add.ptr40.1.2, align 8, !dbg !74
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %26, i64 3072, !dbg !72
  %qk_fetch.sroa.0.0.copyload1288 = load i64, ptr addrspace(4) %gep.3, align 16, !dbg !73
  %qk_fetch.sroa.18.0.gep.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %26, i64 3080, !dbg !73
  %qk_fetch.sroa.18.0.copyload1295 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.gep.3.sroa_idx, align 8, !dbg !73
  store i64 %qk_fetch.sroa.0.0.copyload1288, ptr addrspace(3) %add.ptr40.3, align 8, !dbg !74
  store i64 %qk_fetch.sroa.18.0.copyload1295, ptr addrspace(3) %add.ptr40.1.3, align 8, !dbg !74
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
  %scores.sroa.0.0.vec.extract1073 = extractelement <4 x float> %34, i64 0
  %spec.select = select i1 %cmp221.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1073, !dbg !83
  %cmp221.not.1.not = icmp slt i32 %add218, %0, !dbg !82
  %scores.sroa.0.4.vec.extract1080 = extractelement <4 x float> %34, i64 1, !dbg !83
  %condval.0.1 = select i1 %cmp221.not.1.not, float %scores.sroa.0.4.vec.extract1080, float 0xFFF0000000000000, !dbg !83
  %add219.2 = or disjoint i32 %add218, 2, !dbg !84
  %cmp221.not.2 = icmp sgt i32 %add219.2, %0, !dbg !82
  %scores.sroa.0.8.vec.extract1087 = extractelement <4 x float> %34, i64 2, !dbg !83
  %condval.0.2 = select i1 %cmp221.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1087, !dbg !83
  %add219.3 = or disjoint i32 %add218, 3, !dbg !84
  %cmp221.not.3 = icmp sgt i32 %add219.3, %0, !dbg !82
  %scores.sroa.0.12.vec.extract1094 = extractelement <4 x float> %34, i64 3, !dbg !83
  %condval.0.3 = select i1 %cmp221.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1094, !dbg !83
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
  %xor.i.i754 = xor i32 %49, 16, !dbg !113
  %50 = and i32 %49, -64, !dbg !114
  %and.i.i755 = add nsw i32 %50, 64, !dbg !114
  %cmp.not.i.i756 = icmp slt i32 %xor.i.i754, %and.i.i755, !dbg !115
  %cond.i.i757 = select i1 %cmp.not.i.i756, i32 %xor.i.i754, i32 %49, !dbg !116
  %shl.i.i758 = shl i32 %cond.i.i757, 2, !dbg !117
  %51 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i758, i32 %47), !dbg !118
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
  %cond.i.i759 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !134
  %add.i.i = fadd contract float %add295, %cond.i.i759, !dbg !134
  %54 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !134
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !134
  %mul.i.i = fmul contract float %cond2.i.i, %54, !dbg !134
  %cmp.i.i760 = fcmp contract olt float %add299, -1.260000e+02, !dbg !137
  %cond.i.i761 = select contract i1 %cmp.i.i760, float 6.400000e+01, float 0.000000e+00, !dbg !137
  %add.i.i762 = fadd contract float %add299, %cond.i.i761, !dbg !137
  %55 = tail call contract float @llvm.exp2.f32(float %add.i.i762), !dbg !137
  %cond2.i.i763 = select contract i1 %cmp.i.i760, float 0x3BF0000000000000, float 1.000000e+00, !dbg !137
  %mul.i.i764 = fmul contract float %cond2.i.i763, %55, !dbg !137
  %cmp.i.i765 = fcmp contract olt float %add303, -1.260000e+02, !dbg !139
  %cond.i.i766 = select contract i1 %cmp.i.i765, float 6.400000e+01, float 0.000000e+00, !dbg !139
  %add.i.i767 = fadd contract float %add303, %cond.i.i766, !dbg !139
  %56 = tail call contract float @llvm.exp2.f32(float %add.i.i767), !dbg !139
  %cond2.i.i768 = select contract i1 %cmp.i.i765, float 0x3BF0000000000000, float 1.000000e+00, !dbg !139
  %mul.i.i769 = fmul contract float %cond2.i.i768, %56, !dbg !139
  %cmp.i.i770 = fcmp contract olt float %add307, -1.260000e+02, !dbg !141
  %cond.i.i771 = select contract i1 %cmp.i.i770, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i772 = fadd contract float %add307, %cond.i.i771, !dbg !141
  %57 = tail call contract float @llvm.exp2.f32(float %add.i.i772), !dbg !141
  %cond2.i.i773 = select contract i1 %cmp.i.i770, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %mul.i.i774 = fmul contract float %cond2.i.i773, %57, !dbg !141
  %58 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !143
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !143, !noalias !151
  %59 = fptrunc float %mul.i.i to half, !dbg !143
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %58), !dbg !143, !noalias !151
  %60 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !156, !noalias !151
  %61 = fptrunc float %mul.i.i764 to half, !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %60), !dbg !156, !noalias !151
  %62 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !158, !noalias !162
  %63 = fptrunc float %mul.i.i769 to half, !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %62), !dbg !158, !noalias !162
  %64 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !167, !noalias !162
  %65 = fptrunc float %mul.i.i774 to half, !dbg !167
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
  %71 = and i32 %70, 32256
  %mul361 = zext nneg i32 %71 to i64
  %mul363 = shl nuw nsw i64 %conv110, 7
  %add364 = add nuw nsw i64 %mul363, %mul361
  %72 = shl nuw nsw i32 %1, 2
  %73 = and i32 %72, 60
  %mul374 = zext nneg i32 %73 to i64
  %and406 = shl nuw nsw i32 %1, 4
  %74 = and i32 %and406, 240
  %call408.mask = and i32 %1, 16
  %shr418 = and i32 %35, 3
  %xor419 = xor i32 %shr418, %shr27
  %add375 = or disjoint i64 %add364, %mul374, !dbg !181
  %add.ptr376 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add375, !dbg !182
  %75 = load i64, ptr addrspace(4) %add.ptr376, align 8, !dbg !183
  %add367.1 = or disjoint i64 %add364, %mul374, !dbg !181
  %add375.1 = or disjoint i64 %add367.1, 128, !dbg !181
  %add.ptr376.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add375.1, !dbg !182
  %76 = load i64, ptr addrspace(4) %add.ptr376.1, align 8, !dbg !183
  %add367.2 = or disjoint i64 %add364, %mul374, !dbg !181
  %add375.2 = or disjoint i64 %add367.2, 256, !dbg !181
  %add.ptr376.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add375.2, !dbg !182
  %77 = load i64, ptr addrspace(4) %add.ptr376.2, align 8, !dbg !183
  %add367.3 = or disjoint i64 %add364, %mul374, !dbg !181
  %add375.3 = or disjoint i64 %add367.3, 384, !dbg !181
  %add.ptr376.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add375.3, !dbg !182
  %78 = load i64, ptr addrspace(4) %add.ptr376.3, align 8, !dbg !183
  %mul412 = xor i32 %74, %call408.mask, !dbg !184
  %79 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul412, !dbg !185
  %add.ptr424.idx = shl nuw nsw i32 %xor419, 3, !dbg !185
  %add.ptr424 = getelementptr inbounds i8, ptr addrspace(3) %79, i32 %add.ptr424.idx, !dbg !185
  %v_column.sroa.34.0.insert.ext = shl i64 %78, 48, !dbg !186
  %v_column.sroa.26.0.insert.ext = shl i64 %77, 32, !dbg !186
  %v_column.sroa.26.0.insert.shift = and i64 %v_column.sroa.26.0.insert.ext, 281470681743360, !dbg !186
  %v_column.sroa.26.0.insert.insert = or disjoint i64 %v_column.sroa.34.0.insert.ext, %v_column.sroa.26.0.insert.shift, !dbg !186
  %v_column.sroa.18.0.insert.ext = shl i64 %76, 16, !dbg !186
  %v_column.sroa.18.0.insert.shift = and i64 %v_column.sroa.18.0.insert.ext, 4294901760, !dbg !186
  %v_column.sroa.18.0.insert.insert = or disjoint i64 %v_column.sroa.26.0.insert.insert, %v_column.sroa.18.0.insert.shift, !dbg !186
  %v_column.sroa.0.0.insert.ext = and i64 %75, 65535, !dbg !186
  %v_column.sroa.0.0.insert.insert = or disjoint i64 %v_column.sroa.18.0.insert.insert, %v_column.sroa.0.0.insert.ext, !dbg !186
  store i64 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr424, align 8, !dbg !186
  %v_fetch.sroa.0.2.extract.shift = lshr i64 %75, 16, !dbg !187
  %xor411749.1 = or disjoint i32 %74, 256, !dbg !184
  %mul412.1 = xor i32 %xor411749.1, %call408.mask, !dbg !184
  %80 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul412.1, !dbg !185
  %xor420.1 = shl nuw nsw i32 %xor419, 3, !dbg !185
  %add.ptr424.idx.1 = xor i32 %xor420.1, 8, !dbg !185
  %add.ptr424.1 = getelementptr inbounds i8, ptr addrspace(3) %80, i32 %add.ptr424.idx.1, !dbg !185
  %81 = shl i64 %78, 32, !dbg !186
  %v_column.sroa.34.0.insert.ext982 = and i64 %81, -281474976710656, !dbg !186
  %82 = shl i64 %77, 16, !dbg !186
  %v_column.sroa.26.0.insert.shift948 = and i64 %82, 281470681743360, !dbg !186
  %v_column.sroa.26.0.insert.insert950 = or disjoint i64 %v_column.sroa.34.0.insert.ext982, %v_column.sroa.26.0.insert.shift948, !dbg !186
  %v_column.sroa.18.0.insert.ext912 = and i64 %76, 4294901760, !dbg !186
  %v_column.sroa.18.0.insert.insert915 = or disjoint i64 %v_column.sroa.26.0.insert.insert950, %v_column.sroa.18.0.insert.ext912, !dbg !186
  %v_column.sroa.0.0.insert.ext884 = and i64 %v_fetch.sroa.0.2.extract.shift, 65535, !dbg !186
  %v_column.sroa.0.0.insert.insert886 = or disjoint i64 %v_column.sroa.18.0.insert.insert915, %v_column.sroa.0.0.insert.ext884, !dbg !186
  store i64 %v_column.sroa.0.0.insert.insert886, ptr addrspace(3) %add.ptr424.1, align 8, !dbg !186
  %v_fetch.sroa.0.4.extract.shift = lshr i64 %75, 32, !dbg !187
  %xor411749.2 = or disjoint i32 %74, 512, !dbg !184
  %mul412.2 = xor i32 %xor411749.2, %call408.mask, !dbg !184
  %83 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul412.2, !dbg !185
  %xor420.2 = shl nuw nsw i32 %xor419, 3, !dbg !185
  %add.ptr424.idx.2 = xor i32 %xor420.2, 16, !dbg !185
  %add.ptr424.2 = getelementptr inbounds i8, ptr addrspace(3) %83, i32 %add.ptr424.idx.2, !dbg !185
  %84 = shl i64 %78, 16, !dbg !186
  %v_column.sroa.34.0.insert.ext987 = and i64 %84, -281474976710656, !dbg !186
  %v_column.sroa.26.0.insert.ext952 = and i64 %77, 281470681743360, !dbg !186
  %v_column.sroa.26.0.insert.insert955 = or disjoint i64 %v_column.sroa.34.0.insert.ext987, %v_column.sroa.26.0.insert.ext952, !dbg !186
  %85 = lshr i64 %76, 16, !dbg !186
  %v_column.sroa.18.0.insert.shift918 = and i64 %85, 4294901760, !dbg !186
  %v_column.sroa.18.0.insert.insert920 = or disjoint i64 %v_column.sroa.26.0.insert.insert955, %v_column.sroa.18.0.insert.shift918, !dbg !186
  %v_column.sroa.0.0.insert.ext888 = and i64 %v_fetch.sroa.0.4.extract.shift, 65535, !dbg !186
  %v_column.sroa.0.0.insert.insert890 = or disjoint i64 %v_column.sroa.18.0.insert.insert920, %v_column.sroa.0.0.insert.ext888, !dbg !186
  store i64 %v_column.sroa.0.0.insert.insert890, ptr addrspace(3) %add.ptr424.2, align 8, !dbg !186
  %v_fetch.sroa.0.6.extract.shift = lshr i64 %75, 48, !dbg !187
  %v_fetch.sroa.32.30.extract.shift = and i64 %78, -281474976710656, !dbg !186
  %xor411749.3 = or disjoint i32 %74, 768, !dbg !184
  %mul412.3 = xor i32 %xor411749.3, %call408.mask, !dbg !184
  %86 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul412.3, !dbg !185
  %xor420.3 = shl nuw nsw i32 %xor419, 3, !dbg !185
  %add.ptr424.idx.3 = xor i32 %xor420.3, 24, !dbg !185
  %add.ptr424.3 = getelementptr inbounds i8, ptr addrspace(3) %86, i32 %add.ptr424.idx.3, !dbg !185
  %87 = lshr i64 %77, 16, !dbg !186
  %v_column.sroa.26.0.insert.shift958 = and i64 %87, 281470681743360, !dbg !186
  %v_column.sroa.26.0.insert.insert960 = or disjoint i64 %v_fetch.sroa.32.30.extract.shift, %v_column.sroa.26.0.insert.shift958, !dbg !186
  %88 = lshr i64 %76, 32, !dbg !186
  %v_column.sroa.18.0.insert.shift923 = and i64 %88, 4294901760, !dbg !186
  %v_column.sroa.18.0.insert.insert925 = or disjoint i64 %v_column.sroa.26.0.insert.insert960, %v_column.sroa.18.0.insert.shift923, !dbg !186
  %v_column.sroa.0.0.insert.insert894 = or disjoint i64 %v_column.sroa.18.0.insert.insert925, %v_fetch.sroa.0.6.extract.shift, !dbg !186
  store i64 %v_column.sroa.0.0.insert.insert894, ptr addrspace(3) %add.ptr424.3, align 8, !dbg !186
  %add370.1855 = or disjoint i64 %add364, %mul374, !dbg !181
  %add375.1856 = or disjoint i64 %add370.1855, 64, !dbg !181
  %add.ptr376.1857 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add375.1856, !dbg !182
  %89 = load i64, ptr addrspace(4) %add.ptr376.1857, align 8, !dbg !183
  %add370.1.1 = or disjoint i64 %add364, %mul374, !dbg !181
  %add375.1.1 = or disjoint i64 %add370.1.1, 192, !dbg !181
  %add.ptr376.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add375.1.1, !dbg !182
  %90 = load i64, ptr addrspace(4) %add.ptr376.1.1, align 8, !dbg !183
  %add370.2.1 = or disjoint i64 %add364, %mul374, !dbg !181
  %add375.2.1 = or disjoint i64 %add370.2.1, 320, !dbg !181
  %add.ptr376.2.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add375.2.1, !dbg !182
  %91 = load i64, ptr addrspace(4) %add.ptr376.2.1, align 8, !dbg !183
  %add370.3.1 = or disjoint i64 %add364, %mul374, !dbg !181
  %add375.3.1 = or disjoint i64 %add370.3.1, 448, !dbg !181
  %add.ptr376.3.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add375.3.1, !dbg !182
  %92 = load i64, ptr addrspace(4) %add.ptr376.3.1, align 8, !dbg !183
  %93 = getelementptr inbounds i8, ptr addrspace(3) %79, i32 2048, !dbg !185
  %add.ptr424.1866 = getelementptr inbounds i8, ptr addrspace(3) %93, i32 %add.ptr424.idx, !dbg !185
  %v_column.sroa.34.0.insert.ext997 = shl i64 %92, 48, !dbg !186
  %v_column.sroa.26.0.insert.ext962 = shl i64 %91, 32, !dbg !186
  %v_column.sroa.26.0.insert.shift963 = and i64 %v_column.sroa.26.0.insert.ext962, 281470681743360, !dbg !186
  %v_column.sroa.26.0.insert.insert965 = or disjoint i64 %v_column.sroa.34.0.insert.ext997, %v_column.sroa.26.0.insert.shift963, !dbg !186
  %v_column.sroa.18.0.insert.ext927 = shl i64 %90, 16, !dbg !186
  %v_column.sroa.18.0.insert.shift928 = and i64 %v_column.sroa.18.0.insert.ext927, 4294901760, !dbg !186
  %v_column.sroa.18.0.insert.insert930 = or disjoint i64 %v_column.sroa.26.0.insert.insert965, %v_column.sroa.18.0.insert.shift928, !dbg !186
  %v_column.sroa.0.0.insert.ext896 = and i64 %89, 65535, !dbg !186
  %v_column.sroa.0.0.insert.insert898 = or disjoint i64 %v_column.sroa.18.0.insert.insert930, %v_column.sroa.0.0.insert.ext896, !dbg !186
  store i64 %v_column.sroa.0.0.insert.insert898, ptr addrspace(3) %add.ptr424.1866, align 8, !dbg !186
  %v_fetch.sroa.0.2.extract.shift1019 = lshr i64 %89, 16, !dbg !187
  %94 = getelementptr inbounds i8, ptr addrspace(3) %80, i32 2048, !dbg !185
  %add.ptr424.1.1 = getelementptr inbounds i8, ptr addrspace(3) %94, i32 %add.ptr424.idx.1, !dbg !185
  %95 = shl i64 %92, 32, !dbg !186
  %v_column.sroa.34.0.insert.ext1002 = and i64 %95, -281474976710656, !dbg !186
  %96 = shl i64 %91, 16, !dbg !186
  %v_column.sroa.26.0.insert.shift968 = and i64 %96, 281470681743360, !dbg !186
  %v_column.sroa.26.0.insert.insert970 = or disjoint i64 %v_column.sroa.34.0.insert.ext1002, %v_column.sroa.26.0.insert.shift968, !dbg !186
  %v_column.sroa.18.0.insert.ext932 = and i64 %90, 4294901760, !dbg !186
  %v_column.sroa.18.0.insert.insert935 = or disjoint i64 %v_column.sroa.26.0.insert.insert970, %v_column.sroa.18.0.insert.ext932, !dbg !186
  %v_column.sroa.0.0.insert.ext900 = and i64 %v_fetch.sroa.0.2.extract.shift1019, 65535, !dbg !186
  %v_column.sroa.0.0.insert.insert902 = or disjoint i64 %v_column.sroa.18.0.insert.insert935, %v_column.sroa.0.0.insert.ext900, !dbg !186
  store i64 %v_column.sroa.0.0.insert.insert902, ptr addrspace(3) %add.ptr424.1.1, align 8, !dbg !186
  %v_fetch.sroa.0.4.extract.shift1022 = lshr i64 %89, 32, !dbg !187
  %97 = getelementptr inbounds i8, ptr addrspace(3) %83, i32 2048, !dbg !185
  %add.ptr424.2.1 = getelementptr inbounds i8, ptr addrspace(3) %97, i32 %add.ptr424.idx.2, !dbg !185
  %98 = shl i64 %92, 16, !dbg !186
  %v_column.sroa.34.0.insert.ext1007 = and i64 %98, -281474976710656, !dbg !186
  %v_column.sroa.26.0.insert.ext972 = and i64 %91, 281470681743360, !dbg !186
  %v_column.sroa.26.0.insert.insert975 = or disjoint i64 %v_column.sroa.34.0.insert.ext1007, %v_column.sroa.26.0.insert.ext972, !dbg !186
  %99 = lshr i64 %90, 16, !dbg !186
  %v_column.sroa.18.0.insert.shift938 = and i64 %99, 4294901760, !dbg !186
  %v_column.sroa.18.0.insert.insert940 = or disjoint i64 %v_column.sroa.26.0.insert.insert975, %v_column.sroa.18.0.insert.shift938, !dbg !186
  %v_column.sroa.0.0.insert.ext904 = and i64 %v_fetch.sroa.0.4.extract.shift1022, 65535, !dbg !186
  %v_column.sroa.0.0.insert.insert906 = or disjoint i64 %v_column.sroa.18.0.insert.insert940, %v_column.sroa.0.0.insert.ext904, !dbg !186
  store i64 %v_column.sroa.0.0.insert.insert906, ptr addrspace(3) %add.ptr424.2.1, align 8, !dbg !186
  %v_fetch.sroa.0.6.extract.shift1025 = lshr i64 %89, 48, !dbg !187
  %v_fetch.sroa.32.30.extract.shift1058 = and i64 %92, -281474976710656, !dbg !186
  %100 = getelementptr inbounds i8, ptr addrspace(3) %86, i32 2048, !dbg !185
  %add.ptr424.3.1 = getelementptr inbounds i8, ptr addrspace(3) %100, i32 %add.ptr424.idx.3, !dbg !185
  %101 = lshr i64 %91, 16, !dbg !186
  %v_column.sroa.26.0.insert.shift978 = and i64 %101, 281470681743360, !dbg !186
  %v_column.sroa.26.0.insert.insert980 = or disjoint i64 %v_fetch.sroa.32.30.extract.shift1058, %v_column.sroa.26.0.insert.shift978, !dbg !186
  %102 = lshr i64 %90, 32, !dbg !186
  %v_column.sroa.18.0.insert.shift943 = and i64 %102, 4294901760, !dbg !186
  %v_column.sroa.18.0.insert.insert945 = or disjoint i64 %v_column.sroa.26.0.insert.insert980, %v_column.sroa.18.0.insert.shift943, !dbg !186
  %v_column.sroa.0.0.insert.insert910 = or disjoint i64 %v_column.sroa.18.0.insert.insert945, %v_fetch.sroa.0.6.extract.shift1025, !dbg !186
  store i64 %v_column.sroa.0.0.insert.insert910, ptr addrspace(3) %add.ptr424.3.1, align 8, !dbg !186
  fence syncscope("warp") release, !dbg !188
  tail call void @llvm.mxc.barrier.warp(), !dbg !191
  fence syncscope("warp") acquire, !dbg !192
  %mul439 = and i32 %and406, 48
  %and458 = and i32 %1, 3
  %103 = xor i32 %shr27, %and458
  %add446 = or disjoint i32 %mul439, %shr418, !dbg !193
  %xor450748 = shl nuw nsw i32 %add446, 4, !dbg !194
  %mul451 = xor i32 %xor450748, %call408.mask, !dbg !194
  %104 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul451, !dbg !195
  %add.ptr463.idx = shl nuw nsw i32 %103, 3, !dbg !195
  %add.ptr463 = getelementptr inbounds i8, ptr addrspace(3) %104, i32 %add.ptr463.idx, !dbg !195
  %105 = load <4 x half>, ptr addrspace(3) %add.ptr463, align 8, !dbg !196
  %add442.1 = or disjoint i32 %mul439, %shr418, !dbg !193
  %add446.1 = shl nuw nsw i32 %add442.1, 4, !dbg !194
  %xor450748.1 = or disjoint i32 %add446.1, 64, !dbg !194
  %mul451.1 = xor i32 %xor450748.1, %call408.mask, !dbg !194
  %106 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul451.1, !dbg !195
  %xor459.1 = shl nuw nsw i32 %103, 3, !dbg !195
  %add.ptr463.idx.1 = xor i32 %xor459.1, 8, !dbg !195
  %add.ptr463.1 = getelementptr inbounds i8, ptr addrspace(3) %106, i32 %add.ptr463.idx.1, !dbg !195
  %107 = load <4 x half>, ptr addrspace(3) %add.ptr463.1, align 8, !dbg !196
  %add442.2 = or disjoint i32 %mul439, %shr418, !dbg !193
  %add446.2 = shl nuw nsw i32 %add442.2, 4, !dbg !194
  %xor450748.2 = or disjoint i32 %add446.2, 128, !dbg !194
  %mul451.2 = xor i32 %xor450748.2, %call408.mask, !dbg !194
  %108 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul451.2, !dbg !195
  %xor459.2 = shl nuw nsw i32 %103, 3, !dbg !195
  %add.ptr463.idx.2 = xor i32 %xor459.2, 16, !dbg !195
  %add.ptr463.2 = getelementptr inbounds i8, ptr addrspace(3) %108, i32 %add.ptr463.idx.2, !dbg !195
  %109 = load <4 x half>, ptr addrspace(3) %add.ptr463.2, align 8, !dbg !196
  %add442.3 = or disjoint i32 %mul439, %shr418, !dbg !193
  %add446.3 = shl nuw nsw i32 %add442.3, 4, !dbg !194
  %xor450748.3 = or disjoint i32 %add446.3, 192, !dbg !194
  %mul451.3 = xor i32 %xor450748.3, %call408.mask, !dbg !194
  %110 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul451.3, !dbg !195
  %xor459.3 = shl nuw nsw i32 %103, 3, !dbg !195
  %add.ptr463.idx.3 = xor i32 %xor459.3, 24, !dbg !195
  %add.ptr463.3 = getelementptr inbounds i8, ptr addrspace(3) %110, i32 %add.ptr463.idx.3, !dbg !195
  %111 = load <4 x half>, ptr addrspace(3) %add.ptr463.3, align 8, !dbg !196
  %add452.4 = or disjoint i32 %mul451, 1024, !dbg !197
  %112 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add452.4, !dbg !195
  %add.ptr463.4 = getelementptr inbounds i8, ptr addrspace(3) %112, i32 %add.ptr463.idx, !dbg !195
  %113 = load <4 x half>, ptr addrspace(3) %add.ptr463.4, align 8, !dbg !196
  %add452.5 = or disjoint i32 %mul451.1, 1024, !dbg !197
  %114 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add452.5, !dbg !195
  %add.ptr463.5 = getelementptr inbounds i8, ptr addrspace(3) %114, i32 %add.ptr463.idx.1, !dbg !195
  %115 = load <4 x half>, ptr addrspace(3) %add.ptr463.5, align 8, !dbg !196
  %add452.6 = or disjoint i32 %mul451.2, 1024, !dbg !197
  %116 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add452.6, !dbg !195
  %add.ptr463.6 = getelementptr inbounds i8, ptr addrspace(3) %116, i32 %add.ptr463.idx.2, !dbg !195
  %117 = load <4 x half>, ptr addrspace(3) %add.ptr463.6, align 8, !dbg !196
  %add452.7 = or disjoint i32 %mul451.3, 1024, !dbg !197
  %118 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add452.7, !dbg !195
  %add.ptr463.7 = getelementptr inbounds i8, ptr addrspace(3) %118, i32 %add.ptr463.idx.3, !dbg !195
  %119 = load <4 x half>, ptr addrspace(3) %add.ptr463.7, align 8, !dbg !196
  %120 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %105, <4 x half> %69, <4 x float> zeroinitializer), !dbg !198
  %121 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %107, <4 x half> %69, <4 x float> zeroinitializer), !dbg !198
  %122 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %109, <4 x half> %69, <4 x float> zeroinitializer), !dbg !198
  %123 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %111, <4 x half> %69, <4 x float> zeroinitializer), !dbg !198
  %124 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %113, <4 x half> %69, <4 x float> zeroinitializer), !dbg !198
  %125 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %115, <4 x half> %69, <4 x float> zeroinitializer), !dbg !198
  %126 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %117, <4 x half> %69, <4 x float> zeroinitializer), !dbg !198
  %127 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %119, <4 x half> %69, <4 x float> zeroinitializer), !dbg !198
  %add348 = fadd contract float %add341.3, 0.000000e+00, !dbg !199
  br label %if.end489, !dbg !200

if.end489:                                        ; preds = %if.then, %entry
  %numerator.sroa.128.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %127, %if.then ], !dbg !202
  %numerator.sroa.110.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %126, %if.then ], !dbg !202
  %numerator.sroa.92.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %125, %if.then ], !dbg !202
  %numerator.sroa.74.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %124, %if.then ], !dbg !202
  %numerator.sroa.56.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %123, %if.then ], !dbg !202
  %numerator.sroa.38.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %122, %if.then ], !dbg !202
  %numerator.sroa.20.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %121, %if.then ], !dbg !202
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %120, %if.then ], !dbg !202
  %denominator.sroa.0.0 = phi float [ 0.000000e+00, %entry ], [ %add348, %if.then ], !dbg !202
  %128 = bitcast float %denominator.sroa.0.0 to i32, !dbg !200
  %129 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !203
  %130 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %129) #10, !dbg !206
  %xor.i.i776 = xor i32 %130, 32, !dbg !207
  %131 = and i32 %130, -64, !dbg !208
  %and.i.i777 = add nsw i32 %131, 64, !dbg !208
  %cmp.not.i.i778 = icmp slt i32 %xor.i.i776, %and.i.i777, !dbg !209
  %cond.i.i779 = select i1 %cmp.not.i.i778, i32 %xor.i.i776, i32 %130, !dbg !210
  %shl.i.i780 = shl i32 %cond.i.i779, 2, !dbg !211
  %132 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i780, i32 %128), !dbg !212
  %133 = bitcast i32 %132 to float, !dbg !213
  %add493 = fadd contract float %denominator.sroa.0.0, %133, !dbg !214
  %134 = bitcast float %add493 to i32, !dbg !215
  %135 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !217
  %136 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %135) #10, !dbg !220
  %xor.i.i781 = xor i32 %136, 16, !dbg !221
  %137 = and i32 %136, -64, !dbg !222
  %and.i.i782 = add nsw i32 %137, 64, !dbg !222
  %cmp.not.i.i783 = icmp slt i32 %xor.i.i781, %and.i.i782, !dbg !223
  %cond.i.i784 = select i1 %cmp.not.i.i783, i32 %xor.i.i781, i32 %136, !dbg !224
  %shl.i.i785 = shl i32 %cond.i.i784, 2, !dbg !225
  %138 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i785, i32 %134), !dbg !226
  %139 = bitcast i32 %138 to float, !dbg !227
  %add498 = fadd contract float %add493, %139, !dbg !228
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !229
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !229
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !229
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !229
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %add498, !dbg !230
  %div518 = fdiv contract float %numerator.sroa.0.4.vec.extract, %add498, !dbg !231
  %div522 = fdiv contract float %numerator.sroa.0.8.vec.extract, %add498, !dbg !232
  %div526 = fdiv contract float %numerator.sroa.0.12.vec.extract, %add498, !dbg !233
  %numerator.sroa.20.16.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 0, !dbg !229
  %numerator.sroa.20.20.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 1, !dbg !229
  %numerator.sroa.20.24.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 2, !dbg !229
  %numerator.sroa.20.28.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 3, !dbg !229
  %div.1 = fdiv contract float %numerator.sroa.20.16.vec.extract, %add498, !dbg !230
  %div518.1 = fdiv contract float %numerator.sroa.20.20.vec.extract, %add498, !dbg !231
  %div522.1 = fdiv contract float %numerator.sroa.20.24.vec.extract, %add498, !dbg !232
  %div526.1 = fdiv contract float %numerator.sroa.20.28.vec.extract, %add498, !dbg !233
  %numerator.sroa.38.32.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 0, !dbg !229
  %numerator.sroa.38.36.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 1, !dbg !229
  %numerator.sroa.38.40.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 2, !dbg !229
  %numerator.sroa.38.44.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 3, !dbg !229
  %div.2 = fdiv contract float %numerator.sroa.38.32.vec.extract, %add498, !dbg !230
  %div518.2 = fdiv contract float %numerator.sroa.38.36.vec.extract, %add498, !dbg !231
  %div522.2 = fdiv contract float %numerator.sroa.38.40.vec.extract, %add498, !dbg !232
  %div526.2 = fdiv contract float %numerator.sroa.38.44.vec.extract, %add498, !dbg !233
  %numerator.sroa.56.48.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 0, !dbg !229
  %numerator.sroa.56.52.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 1, !dbg !229
  %numerator.sroa.56.56.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 2, !dbg !229
  %numerator.sroa.56.60.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 3, !dbg !229
  %div.3 = fdiv contract float %numerator.sroa.56.48.vec.extract, %add498, !dbg !230
  %div518.3 = fdiv contract float %numerator.sroa.56.52.vec.extract, %add498, !dbg !231
  %div522.3 = fdiv contract float %numerator.sroa.56.56.vec.extract, %add498, !dbg !232
  %div526.3 = fdiv contract float %numerator.sroa.56.60.vec.extract, %add498, !dbg !233
  %numerator.sroa.74.64.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 0, !dbg !229
  %numerator.sroa.74.68.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 1, !dbg !229
  %numerator.sroa.74.72.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 2, !dbg !229
  %numerator.sroa.74.76.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 3, !dbg !229
  %div.4 = fdiv contract float %numerator.sroa.74.64.vec.extract, %add498, !dbg !230
  %div518.4 = fdiv contract float %numerator.sroa.74.68.vec.extract, %add498, !dbg !231
  %div522.4 = fdiv contract float %numerator.sroa.74.72.vec.extract, %add498, !dbg !232
  %div526.4 = fdiv contract float %numerator.sroa.74.76.vec.extract, %add498, !dbg !233
  %numerator.sroa.92.80.vec.extract = extractelement <4 x float> %numerator.sroa.92.0, i64 0, !dbg !229
  %numerator.sroa.92.84.vec.extract = extractelement <4 x float> %numerator.sroa.92.0, i64 1, !dbg !229
  %numerator.sroa.92.88.vec.extract = extractelement <4 x float> %numerator.sroa.92.0, i64 2, !dbg !229
  %numerator.sroa.92.92.vec.extract = extractelement <4 x float> %numerator.sroa.92.0, i64 3, !dbg !229
  %div.5 = fdiv contract float %numerator.sroa.92.80.vec.extract, %add498, !dbg !230
  %div518.5 = fdiv contract float %numerator.sroa.92.84.vec.extract, %add498, !dbg !231
  %div522.5 = fdiv contract float %numerator.sroa.92.88.vec.extract, %add498, !dbg !232
  %div526.5 = fdiv contract float %numerator.sroa.92.92.vec.extract, %add498, !dbg !233
  %numerator.sroa.110.96.vec.extract = extractelement <4 x float> %numerator.sroa.110.0, i64 0, !dbg !229
  %numerator.sroa.110.100.vec.extract = extractelement <4 x float> %numerator.sroa.110.0, i64 1, !dbg !229
  %numerator.sroa.110.104.vec.extract = extractelement <4 x float> %numerator.sroa.110.0, i64 2, !dbg !229
  %numerator.sroa.110.108.vec.extract = extractelement <4 x float> %numerator.sroa.110.0, i64 3, !dbg !229
  %div.6 = fdiv contract float %numerator.sroa.110.96.vec.extract, %add498, !dbg !230
  %div518.6 = fdiv contract float %numerator.sroa.110.100.vec.extract, %add498, !dbg !231
  %div522.6 = fdiv contract float %numerator.sroa.110.104.vec.extract, %add498, !dbg !232
  %div526.6 = fdiv contract float %numerator.sroa.110.108.vec.extract, %add498, !dbg !233
  %numerator.sroa.128.112.vec.extract = extractelement <4 x float> %numerator.sroa.128.0, i64 0, !dbg !229
  %numerator.sroa.128.116.vec.extract = extractelement <4 x float> %numerator.sroa.128.0, i64 1, !dbg !229
  %numerator.sroa.128.120.vec.extract = extractelement <4 x float> %numerator.sroa.128.0, i64 2, !dbg !229
  %numerator.sroa.128.124.vec.extract = extractelement <4 x float> %numerator.sroa.128.0, i64 3, !dbg !229
  %div.7 = fdiv contract float %numerator.sroa.128.112.vec.extract, %add498, !dbg !230
  %div518.7 = fdiv contract float %numerator.sroa.128.116.vec.extract, %add498, !dbg !231
  %div522.7 = fdiv contract float %numerator.sroa.128.120.vec.extract, %add498, !dbg !232
  %div526.7 = fdiv contract float %numerator.sroa.128.124.vec.extract, %add498, !dbg !233
  fence syncscope("warp") release, !dbg !234
  tail call void @llvm.mxc.barrier.warp(), !dbg !237
  fence syncscope("warp") acquire, !dbg !238
  %xor579 = shl nuw nsw i32 %14, 2
  %mul580 = and i32 %xor579, 4
  %add562 = or disjoint i32 %mul580, %mul50
  %140 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !239, !noalias !243
  %141 = fptrunc float %div to half, !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %140), !dbg !239, !noalias !243
  %142 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !248, !noalias !243
  %143 = fptrunc float %div518 to half, !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %142), !dbg !248, !noalias !243
  %144 = bitcast half %141 to i16, !dbg !250
  %145 = bitcast half %143 to i16, !dbg !253
  %146 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !254, !noalias !258
  %147 = fptrunc float %div522 to half, !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %146), !dbg !254, !noalias !258
  %148 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !258
  %149 = fptrunc float %div526 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %148), !dbg !263, !noalias !258
  %150 = bitcast half %147 to i16, !dbg !265
  %151 = bitcast half %149 to i16, !dbg !267
  %__7.sroa.6.0.insert.ext = zext i16 %151 to i64, !dbg !268
  %__7.sroa.6.0.insert.shift = shl nuw i64 %__7.sroa.6.0.insert.ext, 48, !dbg !268
  %__7.sroa.5.0.insert.ext = zext i16 %150 to i64, !dbg !268
  %__7.sroa.5.0.insert.shift = shl nuw nsw i64 %__7.sroa.5.0.insert.ext, 32, !dbg !268
  %__7.sroa.5.0.insert.insert = or disjoint i64 %__7.sroa.6.0.insert.shift, %__7.sroa.5.0.insert.shift, !dbg !268
  %__7.sroa.4.0.insert.ext = zext i16 %145 to i64, !dbg !268
  %__7.sroa.4.0.insert.shift = shl nuw nsw i64 %__7.sroa.4.0.insert.ext, 16, !dbg !268
  %__7.sroa.4.0.insert.insert = or disjoint i64 %__7.sroa.5.0.insert.insert, %__7.sroa.4.0.insert.shift, !dbg !268
  %__7.sroa.0.0.insert.ext = zext i16 %144 to i64, !dbg !268
  %__7.sroa.0.0.insert.insert = or disjoint i64 %__7.sroa.4.0.insert.insert, %__7.sroa.0.0.insert.ext, !dbg !268
  %152 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add562, !dbg !269
  %add.ptr583 = getelementptr inbounds i8, ptr addrspace(3) %152, i32 %add.ptr77.idx, !dbg !269
  store i64 %__7.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr583, align 8, !dbg !270
  %153 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !239, !noalias !243
  %154 = fptrunc float %div.1 to half, !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %153), !dbg !239, !noalias !243
  %155 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !248, !noalias !243
  %156 = fptrunc float %div518.1 to half, !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %155), !dbg !248, !noalias !243
  %157 = bitcast half %154 to i16, !dbg !250
  %158 = bitcast half %156 to i16, !dbg !253
  %159 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !254, !noalias !258
  %160 = fptrunc float %div522.1 to half, !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %159), !dbg !254, !noalias !258
  %161 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !258
  %162 = fptrunc float %div526.1 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %161), !dbg !263, !noalias !258
  %163 = bitcast half %160 to i16, !dbg !265
  %164 = bitcast half %162 to i16, !dbg !267
  %__7.sroa.6.0.insert.ext.1 = zext i16 %164 to i64, !dbg !268
  %__7.sroa.6.0.insert.shift.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.1, 48, !dbg !268
  %__7.sroa.5.0.insert.ext.1 = zext i16 %163 to i64, !dbg !268
  %__7.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1, 32, !dbg !268
  %__7.sroa.5.0.insert.insert.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.1, %__7.sroa.5.0.insert.shift.1, !dbg !268
  %__7.sroa.4.0.insert.ext.1 = zext i16 %158 to i64, !dbg !268
  %__7.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1, 16, !dbg !268
  %__7.sroa.4.0.insert.insert.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.1, %__7.sroa.4.0.insert.shift.1, !dbg !268
  %__7.sroa.0.0.insert.ext.1 = zext i16 %157 to i64, !dbg !268
  %__7.sroa.0.0.insert.insert.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.1, %__7.sroa.0.0.insert.ext.1, !dbg !268
  %add.ptr583.1 = getelementptr inbounds i8, ptr addrspace(3) %152, i32 %add.ptr77.idx.1, !dbg !269
  store i64 %__7.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr583.1, align 8, !dbg !270
  %165 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !239, !noalias !243
  %166 = fptrunc float %div.2 to half, !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %165), !dbg !239, !noalias !243
  %167 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !248, !noalias !243
  %168 = fptrunc float %div518.2 to half, !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %167), !dbg !248, !noalias !243
  %169 = bitcast half %166 to i16, !dbg !250
  %170 = bitcast half %168 to i16, !dbg !253
  %171 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !254, !noalias !258
  %172 = fptrunc float %div522.2 to half, !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %171), !dbg !254, !noalias !258
  %173 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !258
  %174 = fptrunc float %div526.2 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %173), !dbg !263, !noalias !258
  %175 = bitcast half %172 to i16, !dbg !265
  %176 = bitcast half %174 to i16, !dbg !267
  %__7.sroa.6.0.insert.ext.2 = zext i16 %176 to i64, !dbg !268
  %__7.sroa.6.0.insert.shift.2 = shl nuw i64 %__7.sroa.6.0.insert.ext.2, 48, !dbg !268
  %__7.sroa.5.0.insert.ext.2 = zext i16 %175 to i64, !dbg !268
  %__7.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.2, 32, !dbg !268
  %__7.sroa.5.0.insert.insert.2 = or disjoint i64 %__7.sroa.6.0.insert.shift.2, %__7.sroa.5.0.insert.shift.2, !dbg !268
  %__7.sroa.4.0.insert.ext.2 = zext i16 %170 to i64, !dbg !268
  %__7.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.2, 16, !dbg !268
  %__7.sroa.4.0.insert.insert.2 = or disjoint i64 %__7.sroa.5.0.insert.insert.2, %__7.sroa.4.0.insert.shift.2, !dbg !268
  %__7.sroa.0.0.insert.ext.2 = zext i16 %169 to i64, !dbg !268
  %__7.sroa.0.0.insert.insert.2 = or disjoint i64 %__7.sroa.4.0.insert.insert.2, %__7.sroa.0.0.insert.ext.2, !dbg !268
  %add.ptr583.2 = getelementptr inbounds i8, ptr addrspace(3) %152, i32 %add.ptr77.idx.2, !dbg !269
  store i64 %__7.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr583.2, align 8, !dbg !270
  %177 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !239, !noalias !243
  %178 = fptrunc float %div.3 to half, !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %177), !dbg !239, !noalias !243
  %179 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !248, !noalias !243
  %180 = fptrunc float %div518.3 to half, !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %179), !dbg !248, !noalias !243
  %181 = bitcast half %178 to i16, !dbg !250
  %182 = bitcast half %180 to i16, !dbg !253
  %183 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !254, !noalias !258
  %184 = fptrunc float %div522.3 to half, !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %183), !dbg !254, !noalias !258
  %185 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !258
  %186 = fptrunc float %div526.3 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %185), !dbg !263, !noalias !258
  %187 = bitcast half %184 to i16, !dbg !265
  %188 = bitcast half %186 to i16, !dbg !267
  %__7.sroa.6.0.insert.ext.3 = zext i16 %188 to i64, !dbg !268
  %__7.sroa.6.0.insert.shift.3 = shl nuw i64 %__7.sroa.6.0.insert.ext.3, 48, !dbg !268
  %__7.sroa.5.0.insert.ext.3 = zext i16 %187 to i64, !dbg !268
  %__7.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.3, 32, !dbg !268
  %__7.sroa.5.0.insert.insert.3 = or disjoint i64 %__7.sroa.6.0.insert.shift.3, %__7.sroa.5.0.insert.shift.3, !dbg !268
  %__7.sroa.4.0.insert.ext.3 = zext i16 %182 to i64, !dbg !268
  %__7.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.3, 16, !dbg !268
  %__7.sroa.4.0.insert.insert.3 = or disjoint i64 %__7.sroa.5.0.insert.insert.3, %__7.sroa.4.0.insert.shift.3, !dbg !268
  %__7.sroa.0.0.insert.ext.3 = zext i16 %181 to i64, !dbg !268
  %__7.sroa.0.0.insert.insert.3 = or disjoint i64 %__7.sroa.4.0.insert.insert.3, %__7.sroa.0.0.insert.ext.3, !dbg !268
  %add.ptr583.3 = getelementptr inbounds i8, ptr addrspace(3) %152, i32 %add.ptr77.idx.3, !dbg !269
  store i64 %__7.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr583.3, align 8, !dbg !270
  %189 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !239, !noalias !243
  %190 = fptrunc float %div.4 to half, !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %189), !dbg !239, !noalias !243
  %191 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !248, !noalias !243
  %192 = fptrunc float %div518.4 to half, !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %191), !dbg !248, !noalias !243
  %193 = bitcast half %190 to i16, !dbg !250
  %194 = bitcast half %192 to i16, !dbg !253
  %195 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !254, !noalias !258
  %196 = fptrunc float %div522.4 to half, !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %195), !dbg !254, !noalias !258
  %197 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !258
  %198 = fptrunc float %div526.4 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %197), !dbg !263, !noalias !258
  %199 = bitcast half %196 to i16, !dbg !265
  %200 = bitcast half %198 to i16, !dbg !267
  %__7.sroa.6.0.insert.ext.4 = zext i16 %200 to i64, !dbg !268
  %__7.sroa.6.0.insert.shift.4 = shl nuw i64 %__7.sroa.6.0.insert.ext.4, 48, !dbg !268
  %__7.sroa.5.0.insert.ext.4 = zext i16 %199 to i64, !dbg !268
  %__7.sroa.5.0.insert.shift.4 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.4, 32, !dbg !268
  %__7.sroa.5.0.insert.insert.4 = or disjoint i64 %__7.sroa.6.0.insert.shift.4, %__7.sroa.5.0.insert.shift.4, !dbg !268
  %__7.sroa.4.0.insert.ext.4 = zext i16 %194 to i64, !dbg !268
  %__7.sroa.4.0.insert.shift.4 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.4, 16, !dbg !268
  %__7.sroa.4.0.insert.insert.4 = or disjoint i64 %__7.sroa.5.0.insert.insert.4, %__7.sroa.4.0.insert.shift.4, !dbg !268
  %__7.sroa.0.0.insert.ext.4 = zext i16 %193 to i64, !dbg !268
  %__7.sroa.0.0.insert.insert.4 = or disjoint i64 %__7.sroa.4.0.insert.insert.4, %__7.sroa.0.0.insert.ext.4, !dbg !268
  %add572.4 = or disjoint i32 %add562, 64, !dbg !271
  %201 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add572.4, !dbg !269
  %add.ptr583.4 = getelementptr inbounds i8, ptr addrspace(3) %201, i32 %add.ptr77.idx, !dbg !269
  store i64 %__7.sroa.0.0.insert.insert.4, ptr addrspace(3) %add.ptr583.4, align 8, !dbg !270
  %202 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !239, !noalias !243
  %203 = fptrunc float %div.5 to half, !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %202), !dbg !239, !noalias !243
  %204 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !248, !noalias !243
  %205 = fptrunc float %div518.5 to half, !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %204), !dbg !248, !noalias !243
  %206 = bitcast half %203 to i16, !dbg !250
  %207 = bitcast half %205 to i16, !dbg !253
  %208 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !254, !noalias !258
  %209 = fptrunc float %div522.5 to half, !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %208), !dbg !254, !noalias !258
  %210 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !258
  %211 = fptrunc float %div526.5 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %210), !dbg !263, !noalias !258
  %212 = bitcast half %209 to i16, !dbg !265
  %213 = bitcast half %211 to i16, !dbg !267
  %__7.sroa.6.0.insert.ext.5 = zext i16 %213 to i64, !dbg !268
  %__7.sroa.6.0.insert.shift.5 = shl nuw i64 %__7.sroa.6.0.insert.ext.5, 48, !dbg !268
  %__7.sroa.5.0.insert.ext.5 = zext i16 %212 to i64, !dbg !268
  %__7.sroa.5.0.insert.shift.5 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.5, 32, !dbg !268
  %__7.sroa.5.0.insert.insert.5 = or disjoint i64 %__7.sroa.6.0.insert.shift.5, %__7.sroa.5.0.insert.shift.5, !dbg !268
  %__7.sroa.4.0.insert.ext.5 = zext i16 %207 to i64, !dbg !268
  %__7.sroa.4.0.insert.shift.5 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.5, 16, !dbg !268
  %__7.sroa.4.0.insert.insert.5 = or disjoint i64 %__7.sroa.5.0.insert.insert.5, %__7.sroa.4.0.insert.shift.5, !dbg !268
  %__7.sroa.0.0.insert.ext.5 = zext i16 %206 to i64, !dbg !268
  %__7.sroa.0.0.insert.insert.5 = or disjoint i64 %__7.sroa.4.0.insert.insert.5, %__7.sroa.0.0.insert.ext.5, !dbg !268
  %add.ptr583.5 = getelementptr inbounds i8, ptr addrspace(3) %201, i32 %add.ptr77.idx.1, !dbg !269
  store i64 %__7.sroa.0.0.insert.insert.5, ptr addrspace(3) %add.ptr583.5, align 8, !dbg !270
  %214 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !239, !noalias !243
  %215 = fptrunc float %div.6 to half, !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %214), !dbg !239, !noalias !243
  %216 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !248, !noalias !243
  %217 = fptrunc float %div518.6 to half, !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %216), !dbg !248, !noalias !243
  %218 = bitcast half %215 to i16, !dbg !250
  %219 = bitcast half %217 to i16, !dbg !253
  %220 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !254, !noalias !258
  %221 = fptrunc float %div522.6 to half, !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %220), !dbg !254, !noalias !258
  %222 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !258
  %223 = fptrunc float %div526.6 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %222), !dbg !263, !noalias !258
  %224 = bitcast half %221 to i16, !dbg !265
  %225 = bitcast half %223 to i16, !dbg !267
  %__7.sroa.6.0.insert.ext.6 = zext i16 %225 to i64, !dbg !268
  %__7.sroa.6.0.insert.shift.6 = shl nuw i64 %__7.sroa.6.0.insert.ext.6, 48, !dbg !268
  %__7.sroa.5.0.insert.ext.6 = zext i16 %224 to i64, !dbg !268
  %__7.sroa.5.0.insert.shift.6 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.6, 32, !dbg !268
  %__7.sroa.5.0.insert.insert.6 = or disjoint i64 %__7.sroa.6.0.insert.shift.6, %__7.sroa.5.0.insert.shift.6, !dbg !268
  %__7.sroa.4.0.insert.ext.6 = zext i16 %219 to i64, !dbg !268
  %__7.sroa.4.0.insert.shift.6 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.6, 16, !dbg !268
  %__7.sroa.4.0.insert.insert.6 = or disjoint i64 %__7.sroa.5.0.insert.insert.6, %__7.sroa.4.0.insert.shift.6, !dbg !268
  %__7.sroa.0.0.insert.ext.6 = zext i16 %218 to i64, !dbg !268
  %__7.sroa.0.0.insert.insert.6 = or disjoint i64 %__7.sroa.4.0.insert.insert.6, %__7.sroa.0.0.insert.ext.6, !dbg !268
  %add.ptr583.6 = getelementptr inbounds i8, ptr addrspace(3) %201, i32 %add.ptr77.idx.2, !dbg !269
  store i64 %__7.sroa.0.0.insert.insert.6, ptr addrspace(3) %add.ptr583.6, align 8, !dbg !270
  %226 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !239, !noalias !243
  %227 = fptrunc float %div.7 to half, !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %226), !dbg !239, !noalias !243
  %228 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !248, !noalias !243
  %229 = fptrunc float %div518.7 to half, !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %228), !dbg !248, !noalias !243
  %230 = bitcast half %227 to i16, !dbg !250
  %231 = bitcast half %229 to i16, !dbg !253
  %232 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !254, !noalias !258
  %233 = fptrunc float %div522.7 to half, !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %232), !dbg !254, !noalias !258
  %234 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !258
  %235 = fptrunc float %div526.7 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %234), !dbg !263, !noalias !258
  %236 = bitcast half %233 to i16, !dbg !265
  %237 = bitcast half %235 to i16, !dbg !267
  %__7.sroa.6.0.insert.ext.7 = zext i16 %237 to i64, !dbg !268
  %__7.sroa.6.0.insert.shift.7 = shl nuw i64 %__7.sroa.6.0.insert.ext.7, 48, !dbg !268
  %__7.sroa.5.0.insert.ext.7 = zext i16 %236 to i64, !dbg !268
  %__7.sroa.5.0.insert.shift.7 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.7, 32, !dbg !268
  %__7.sroa.5.0.insert.insert.7 = or disjoint i64 %__7.sroa.6.0.insert.shift.7, %__7.sroa.5.0.insert.shift.7, !dbg !268
  %__7.sroa.4.0.insert.ext.7 = zext i16 %231 to i64, !dbg !268
  %__7.sroa.4.0.insert.shift.7 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.7, 16, !dbg !268
  %__7.sroa.4.0.insert.insert.7 = or disjoint i64 %__7.sroa.5.0.insert.insert.7, %__7.sroa.4.0.insert.shift.7, !dbg !268
  %__7.sroa.0.0.insert.ext.7 = zext i16 %230 to i64, !dbg !268
  %__7.sroa.0.0.insert.insert.7 = or disjoint i64 %__7.sroa.4.0.insert.insert.7, %__7.sroa.0.0.insert.ext.7, !dbg !268
  %add.ptr583.7 = getelementptr inbounds i8, ptr addrspace(3) %201, i32 %add.ptr77.idx.3, !dbg !269
  store i64 %__7.sroa.0.0.insert.insert.7, ptr addrspace(3) %add.ptr583.7, align 8, !dbg !270
  fence syncscope("warp") release, !dbg !272
  tail call void @llvm.mxc.barrier.warp(), !dbg !275
  fence syncscope("warp") acquire, !dbg !276
  %238 = load i64, ptr addrspace(3) %4, align 16, !dbg !277
  %add.ptr615.1 = getelementptr inbounds i8, ptr addrspace(3) %4, i32 8, !dbg !278
  %239 = load i64, ptr addrspace(3) %add.ptr615.1, align 8, !dbg !277
  %add.ptr633 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %2, !dbg !279
  store i64 %238, ptr addrspace(1) %add.ptr633, align 16, !dbg !280
  %output_fetch.sroa.10.0.add.ptr633.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr633, i64 8, !dbg !280
  store i64 %239, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr633.sroa_idx, align 8, !dbg !280
  %240 = load i64, ptr addrspace(3) %7, align 16, !dbg !277
  %add.ptr615.1.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 8, !dbg !278
  %241 = load i64, ptr addrspace(3) %add.ptr615.1.1, align 8, !dbg !277
  %add.ptr633.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %5, !dbg !279
  store i64 %240, ptr addrspace(1) %add.ptr633.1, align 16, !dbg !280
  %output_fetch.sroa.10.0.add.ptr633.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr633.1, i64 8, !dbg !280
  store i64 %241, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr633.1.sroa_idx, align 8, !dbg !280
  %add.ptr615.2 = getelementptr inbounds i8, ptr addrspace(3) %10, i32 8, !dbg !278
  %242 = load i64, ptr addrspace(3) %add.ptr615.2, align 8, !dbg !277
  %243 = load i64, ptr addrspace(3) %10, align 16, !dbg !277
  %add.ptr633.2 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %8, !dbg !279
  store i64 %242, ptr addrspace(1) %add.ptr633.2, align 16, !dbg !280
  %output_fetch.sroa.10.0.add.ptr633.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr633.2, i64 8, !dbg !280
  store i64 %243, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr633.2.sroa_idx, align 8, !dbg !280
  %add.ptr615.3 = getelementptr inbounds i8, ptr addrspace(3) %13, i32 8, !dbg !278
  %244 = load i64, ptr addrspace(3) %add.ptr615.3, align 8, !dbg !277
  %245 = load i64, ptr addrspace(3) %13, align 16, !dbg !277
  %add.ptr633.3 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %11, !dbg !279
  store i64 %244, ptr addrspace(1) %add.ptr633.3, align 16, !dbg !280
  %output_fetch.sroa.10.0.add.ptr633.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr633.3, i64 8, !dbg !280
  store i64 %245, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr633.3.sroa_idx, align 8, !dbg !280
  ret void, !dbg !281
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v222_worker2_c3_v_4row_producer_subagent2/codegen/power_v222/case3_stage1.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v222_worker2_c3_v_4row_producer_subagent2/codegen/power_v222/case3_stage1.device.cpp", directory: "/root/tilelang-metax")
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
!184 = !DILocation(line: 134, column: 126, scope: !40)
!185 = !DILocation(line: 134, column: 26, scope: !40)
!186 = !DILocation(line: 134, column: 214, scope: !40)
!187 = !DILocation(line: 132, column: 27, scope: !40)
!188 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !189)
!189 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !190)
!190 = distinct !DILocation(line: 137, column: 5, scope: !40)
!191 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !189)
!192 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !189)
!193 = !DILocation(line: 140, column: 152, scope: !40)
!194 = !DILocation(line: 140, column: 224, scope: !40)
!195 = !DILocation(line: 140, column: 63, scope: !40)
!196 = !DILocation(line: 140, column: 44, scope: !40)
!197 = !DILocation(line: 140, column: 91, scope: !40)
!198 = !DILocation(line: 145, column: 46, scope: !40)
!199 = !DILocation(line: 121, column: 38, scope: !40)
!200 = !DILocation(line: 1018, column: 9, scope: !90, inlinedAt: !201)
!201 = distinct !DILocation(line: 151, column: 38, scope: !40)
!202 = !DILocation(line: 0, scope: !40)
!203 = !DILocation(line: 171, column: 37, scope: !93, inlinedAt: !204)
!204 = distinct !DILocation(line: 990, column: 14, scope: !95, inlinedAt: !205)
!205 = distinct !DILocation(line: 1019, column: 11, scope: !90, inlinedAt: !201)
!206 = !DILocation(line: 171, column: 10, scope: !93, inlinedAt: !204)
!207 = !DILocation(line: 991, column: 20, scope: !95, inlinedAt: !205)
!208 = !DILocation(line: 992, column: 36, scope: !95, inlinedAt: !205)
!209 = !DILocation(line: 992, column: 17, scope: !95, inlinedAt: !205)
!210 = !DILocation(line: 992, column: 11, scope: !95, inlinedAt: !205)
!211 = !DILocation(line: 993, column: 43, scope: !95, inlinedAt: !205)
!212 = !DILocation(line: 993, column: 10, scope: !95, inlinedAt: !205)
!213 = !DILocation(line: 1020, column: 14, scope: !90, inlinedAt: !201)
!214 = !DILocation(line: 151, column: 36, scope: !40)
!215 = !DILocation(line: 1018, column: 9, scope: !90, inlinedAt: !216)
!216 = distinct !DILocation(line: 152, column: 38, scope: !40)
!217 = !DILocation(line: 171, column: 37, scope: !93, inlinedAt: !218)
!218 = distinct !DILocation(line: 990, column: 14, scope: !95, inlinedAt: !219)
!219 = distinct !DILocation(line: 1019, column: 11, scope: !90, inlinedAt: !216)
!220 = !DILocation(line: 171, column: 10, scope: !93, inlinedAt: !218)
!221 = !DILocation(line: 991, column: 20, scope: !95, inlinedAt: !219)
!222 = !DILocation(line: 992, column: 36, scope: !95, inlinedAt: !219)
!223 = !DILocation(line: 992, column: 17, scope: !95, inlinedAt: !219)
!224 = !DILocation(line: 992, column: 11, scope: !95, inlinedAt: !219)
!225 = !DILocation(line: 993, column: 43, scope: !95, inlinedAt: !219)
!226 = !DILocation(line: 993, column: 10, scope: !95, inlinedAt: !219)
!227 = !DILocation(line: 1020, column: 14, scope: !90, inlinedAt: !216)
!228 = !DILocation(line: 152, column: 36, scope: !40)
!229 = !DILocation(line: 156, column: 21, scope: !40)
!230 = !DILocation(line: 158, column: 22, scope: !40)
!231 = !DILocation(line: 159, column: 22, scope: !40)
!232 = !DILocation(line: 160, column: 22, scope: !40)
!233 = !DILocation(line: 161, column: 22, scope: !40)
!234 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !235)
!235 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !236)
!236 = distinct !DILocation(line: 164, column: 3, scope: !40)
!237 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !235)
!238 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !235)
!239 = !DILocation(line: 1007, column: 10, scope: !144, inlinedAt: !240)
!240 = distinct !DILocation(line: 1077, column: 18, scope: !147, inlinedAt: !241)
!241 = distinct !DILocation(line: 1295, column: 23, scope: !149, inlinedAt: !242)
!242 = distinct !DILocation(line: 169, column: 27, scope: !40)
!243 = !{!244, !246}
!244 = distinct !{!244, !245, !"_ZL17__floats2half2_rnff: %agg.result"}
!245 = distinct !{!245, !"_ZL17__floats2half2_rnff"}
!246 = distinct !{!246, !247, !"_ZL17__float22half2_rn6float2: %agg.result"}
!247 = distinct !{!247, !"_ZL17__float22half2_rn6float2"}
!248 = !DILocation(line: 1007, column: 10, scope: !144, inlinedAt: !249)
!249 = distinct !DILocation(line: 1077, column: 38, scope: !147, inlinedAt: !241)
!250 = !DILocation(line: 596, column: 67, scope: !251, inlinedAt: !252)
!251 = distinct !DISubprogram(name: "__half2", scope: !145, file: !145, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!252 = distinct !DILocation(line: 1077, column: 10, scope: !147, inlinedAt: !241)
!253 = !DILocation(line: 596, column: 73, scope: !251, inlinedAt: !252)
!254 = !DILocation(line: 1007, column: 10, scope: !144, inlinedAt: !255)
!255 = distinct !DILocation(line: 1077, column: 18, scope: !147, inlinedAt: !256)
!256 = distinct !DILocation(line: 1295, column: 23, scope: !149, inlinedAt: !257)
!257 = distinct !DILocation(line: 170, column: 27, scope: !40)
!258 = !{!259, !261}
!259 = distinct !{!259, !260, !"_ZL17__floats2half2_rnff: %agg.result"}
!260 = distinct !{!260, !"_ZL17__floats2half2_rnff"}
!261 = distinct !{!261, !262, !"_ZL17__float22half2_rn6float2: %agg.result"}
!262 = distinct !{!262, !"_ZL17__float22half2_rn6float2"}
!263 = !DILocation(line: 1007, column: 10, scope: !144, inlinedAt: !264)
!264 = distinct !DILocation(line: 1077, column: 38, scope: !147, inlinedAt: !256)
!265 = !DILocation(line: 596, column: 67, scope: !251, inlinedAt: !266)
!266 = distinct !DILocation(line: 1077, column: 10, scope: !147, inlinedAt: !256)
!267 = !DILocation(line: 596, column: 73, scope: !251, inlinedAt: !266)
!268 = !DILocation(line: 171, column: 38, scope: !40)
!269 = !DILocation(line: 172, column: 22, scope: !40)
!270 = !DILocation(line: 172, column: 254, scope: !40)
!271 = !DILocation(line: 172, column: 86, scope: !40)
!272 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !273)
!273 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !274)
!274 = distinct !DILocation(line: 174, column: 3, scope: !40)
!275 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !273)
!276 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !273)
!277 = !DILocation(line: 179, column: 46, scope: !40)
!278 = !DILocation(line: 179, column: 65, scope: !40)
!279 = !DILocation(line: 181, column: 22, scope: !40)
!280 = !DILocation(line: 181, column: 100, scope: !40)
!281 = !DILocation(line: 183, column: 1, scope: !40)
