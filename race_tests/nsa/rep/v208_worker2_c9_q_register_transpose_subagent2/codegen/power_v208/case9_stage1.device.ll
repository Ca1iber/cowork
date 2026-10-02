; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v208_worker2_c9_q_register_transpose_subagent2/codegen/power_v208/case9_stage1.device.cpp'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v208_worker2_c9_q_register_transpose_subagent2/codegen/power_v208/case9_stage1.device.cpp"
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
  %mul = shl nsw i32 %0, 10
  %1 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !42
  %and = shl nuw nsw i32 %1, 6
  %mul7 = and i32 %and, 960
  %shr = and i32 %1, 1008
  %add = or disjoint i32 %shr, %mul
  %add10 = add nuw nsw i32 %add, %mul7
  %2 = zext nneg i32 %add10 to i64, !dbg !43
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %2, !dbg !44
  %q_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(4) %add.ptr, align 16, !dbg !45
  %q_local.sroa.20.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !45
  %q_local.sroa.20.0.copyload = load <4 x half>, ptr addrspace(4) %q_local.sroa.20.0.add.ptr.sroa_idx, align 8, !dbg !45
  %3 = or disjoint i64 %2, 8, !dbg !46
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %3, !dbg !44
  %q_local.sroa.37.16.copyload = load <4 x half>, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %q_local.sroa.55.16.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %q_local.sroa.55.16.copyload = load <4 x half>, ptr addrspace(4) %q_local.sroa.55.16.add.ptr.1.sroa_idx, align 8, !dbg !45
  %4 = and i32 %1, 16
  %cmp28 = icmp eq i32 %4, 0
  %5 = bitcast <4 x half> %q_local.sroa.0.0.copyload to i64, !dbg !47
  %bc = bitcast <4 x half> %q_local.sroa.0.0.copyload to <4 x i16>, !dbg !47
  %6 = extractelement <4 x i16> %bc, i64 1, !dbg !47
  %7 = bitcast <4 x half> %q_local.sroa.20.0.copyload to i64, !dbg !47
  %8 = lshr i64 %7, 32, !dbg !47
  %bc1422 = bitcast <4 x half> %q_local.sroa.20.0.copyload to <4 x i16>, !dbg !47
  %9 = extractelement <4 x i16> %bc1422, i64 3, !dbg !47
  %10 = bitcast <4 x half> %q_local.sroa.55.16.copyload to i64, !dbg !47
  %bc1423 = bitcast <4 x half> %q_local.sroa.55.16.copyload to <4 x i16>, !dbg !47
  %11 = extractelement <4 x i16> %bc1423, i64 1, !dbg !47
  %12 = lshr i64 %10, 32, !dbg !47
  %bc1424 = bitcast <4 x half> %q_local.sroa.55.16.copyload to <4 x i16>, !dbg !47
  %13 = extractelement <4 x i16> %bc1424, i64 3, !dbg !47
  %14 = trunc i64 %5 to i32, !dbg !47
  %15 = trunc nuw i64 %8 to i32, !dbg !47
  %16 = trunc i64 %10 to i32, !dbg !47
  %17 = trunc nuw i64 %12 to i32, !dbg !47
  %bc1425 = bitcast <4 x half> %q_local.sroa.20.0.copyload to <4 x i16>, !dbg !47
  %18 = extractelement <4 x i16> %bc1425, i64 1, !dbg !47
  %19 = lshr i64 %5, 32, !dbg !47
  %bc1426 = bitcast <4 x half> %q_local.sroa.0.0.copyload to <4 x i16>, !dbg !47
  %20 = extractelement <4 x i16> %bc1426, i64 3, !dbg !47
  %21 = bitcast <4 x half> %q_local.sroa.37.16.copyload to i64, !dbg !47
  %bc1427 = bitcast <4 x half> %q_local.sroa.37.16.copyload to <4 x i16>, !dbg !47
  %22 = extractelement <4 x i16> %bc1427, i64 1, !dbg !47
  %23 = lshr i64 %21, 32, !dbg !47
  %bc1428 = bitcast <4 x half> %q_local.sroa.37.16.copyload to <4 x i16>, !dbg !47
  %24 = extractelement <4 x i16> %bc1428, i64 3, !dbg !47
  %25 = trunc nuw i64 %19 to i32, !dbg !47
  %26 = trunc i64 %7 to i32, !dbg !47
  %27 = trunc i64 %21 to i32, !dbg !47
  %28 = trunc nuw i64 %23 to i32, !dbg !47
  %. = select i1 %cmp28, i64 %7, i64 %5
  %condval.sroa.0.0 = trunc i64 %. to i32, !dbg !48
  %condval_1.sroa.0.0 = select i1 %cmp28, i16 %18, i16 %6, !dbg !49
  %conv = and i32 %condval.sroa.0.0, 65535, !dbg !50
  %conv57 = zext i16 %condval_1.sroa.0.0 to i32, !dbg !51
  %shl = shl nuw i32 %conv57, 16, !dbg !52
  %or = or disjoint i32 %shl, %conv, !dbg !53
  %29 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !54
  %30 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %29) #10, !dbg !62
  %xor.i.i = xor i32 %30, 16, !dbg !63
  %31 = and i32 %30, -64, !dbg !64
  %and.i.i = add nsw i32 %31, 64, !dbg !64
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !65
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %30, !dbg !66
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !67
  %32 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %or), !dbg !68
  %condval.sroa.0.0.1.in = select i1 %cmp28, i64 %8, i64 %19, !dbg !47
  %condval.sroa.0.0.1 = trunc nuw i64 %condval.sroa.0.0.1.in to i32, !dbg !48
  %condval_1.sroa.0.0.1 = select i1 %cmp28, i16 %9, i16 %20, !dbg !49
  %conv.1 = and i32 %condval.sroa.0.0.1, 65535, !dbg !50
  %conv57.1 = zext i16 %condval_1.sroa.0.0.1 to i32, !dbg !51
  %shl.1 = shl nuw i32 %conv57.1, 16, !dbg !52
  %or.1 = or disjoint i32 %shl.1, %conv.1, !dbg !53
  %33 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !54
  %34 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %33) #10, !dbg !62
  %xor.i.i.1 = xor i32 %34, 16, !dbg !63
  %35 = and i32 %34, -64, !dbg !64
  %and.i.i.1 = add nsw i32 %35, 64, !dbg !64
  %cmp.not.i.i.1 = icmp slt i32 %xor.i.i.1, %and.i.i.1, !dbg !65
  %cond.i.i.1 = select i1 %cmp.not.i.i.1, i32 %xor.i.i.1, i32 %34, !dbg !66
  %shl.i.i.1 = shl i32 %cond.i.i.1, 2, !dbg !67
  %36 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.1, i32 %or.1), !dbg !68
  %condval.sroa.0.0.11031.in = select i1 %cmp28, i64 %10, i64 %21, !dbg !47
  %condval.sroa.0.0.11031 = trunc i64 %condval.sroa.0.0.11031.in to i32, !dbg !48
  %condval_1.sroa.0.0.11039 = select i1 %cmp28, i16 %11, i16 %22, !dbg !49
  %conv.11040 = and i32 %condval.sroa.0.0.11031, 65535, !dbg !50
  %conv57.11041 = zext i16 %condval_1.sroa.0.0.11039 to i32, !dbg !51
  %shl.11042 = shl nuw i32 %conv57.11041, 16, !dbg !52
  %or.11043 = or disjoint i32 %shl.11042, %conv.11040, !dbg !53
  %37 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !54
  %38 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %37) #10, !dbg !62
  %xor.i.i.11044 = xor i32 %38, 16, !dbg !63
  %39 = and i32 %38, -64, !dbg !64
  %and.i.i.11045 = add nsw i32 %39, 64, !dbg !64
  %cmp.not.i.i.11046 = icmp slt i32 %xor.i.i.11044, %and.i.i.11045, !dbg !65
  %cond.i.i.11047 = select i1 %cmp.not.i.i.11046, i32 %xor.i.i.11044, i32 %38, !dbg !66
  %shl.i.i.11048 = shl i32 %cond.i.i.11047, 2, !dbg !67
  %40 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.11048, i32 %or.11043), !dbg !68
  %condval.sroa.0.0.1.1.in = select i1 %cmp28, i64 %12, i64 %23, !dbg !47
  %condval.sroa.0.0.1.1 = trunc nuw i64 %condval.sroa.0.0.1.1.in to i32, !dbg !48
  %condval_1.sroa.0.0.1.1 = select i1 %cmp28, i16 %13, i16 %24, !dbg !49
  %conv.1.1 = and i32 %condval.sroa.0.0.1.1, 65535, !dbg !50
  %conv57.1.1 = zext i16 %condval_1.sroa.0.0.1.1 to i32, !dbg !51
  %shl.1.1 = shl nuw i32 %conv57.1.1, 16, !dbg !52
  %or.1.1 = or disjoint i32 %shl.1.1, %conv.1.1, !dbg !53
  %41 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !54
  %42 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %41) #10, !dbg !62
  %xor.i.i.1.1 = xor i32 %42, 16, !dbg !63
  %43 = and i32 %42, -64, !dbg !64
  %and.i.i.1.1 = add nsw i32 %43, 64, !dbg !64
  %cmp.not.i.i.1.1 = icmp slt i32 %xor.i.i.1.1, %and.i.i.1.1, !dbg !65
  %cond.i.i.1.1 = select i1 %cmp.not.i.i.1.1, i32 %xor.i.i.1.1, i32 %42, !dbg !66
  %shl.i.i.1.1 = shl i32 %cond.i.i.1.1, 2, !dbg !67
  %44 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.1.1, i32 %or.1.1), !dbg !68
  %and98 = lshr i32 %1, 4
  %45 = and i32 %1, 16
  %cmp100 = icmp eq i32 %45, 0
  %q_local.sroa.0.0.q_local.sroa.0.0.condval_5.sroa.0.0.in.sroa.speculate.load.if.then213 = select i1 %cmp100, i32 %14, i32 %32, !dbg !69
  %q_local.sroa.0.4.q_local.sroa.0.4.condval_5.sroa.0.0.in.1.sroa.speculate.load.if.then213.1 = select i1 %cmp100, i32 %25, i32 %36, !dbg !69
  %46 = and i32 %1, 16
  %cmp100.1.not = icmp eq i32 %46, 0
  %q_local.sroa.20.0.q_local.sroa.20.8.condval_5.sroa.0.0.in.11091.sroa.speculate.load.if.then213.11090 = select i1 %cmp100.1.not, i32 %32, i32 %26, !dbg !69
  %q_local.sroa.20.4.q_local.sroa.20.12.condval_5.sroa.0.0.in.1.1.sroa.speculate.load.if.then213.1.1 = select i1 %cmp100.1.not, i32 %36, i32 %15, !dbg !69
  %47 = and i32 %1, 16
  %cmp100.2 = icmp eq i32 %47, 0
  %q_local.sroa.37.0.q_local.sroa.37.16.condval_5.sroa.0.0.in.2.sroa.speculate.load.if.then213.2 = select i1 %cmp100.2, i32 %27, i32 %40, !dbg !69
  %q_local.sroa.37.4.q_local.sroa.37.20.condval_5.sroa.0.0.in.1.2.sroa.speculate.load.if.then213.1.2 = select i1 %cmp100.2, i32 %28, i32 %44, !dbg !69
  %48 = and i32 %1, 16
  %cmp100.3.not = icmp eq i32 %48, 0
  %q_local.sroa.55.0.q_local.sroa.55.24.condval_5.sroa.0.0.in.3.sroa.speculate.load.if.then213.3 = select i1 %cmp100.3.not, i32 %40, i32 %16, !dbg !69
  %q_local.sroa.55.4.q_local.sroa.55.28.condval_5.sroa.0.0.in.1.3.sroa.speculate.load.if.then213.1.3 = select i1 %cmp100.3.not, i32 %44, i32 %17, !dbg !69
  %cmp132 = icmp ult i32 %1, 32
  %condval_3.sroa.0.0.in = select i1 %cmp132, i32 %q_local.sroa.37.0.q_local.sroa.37.16.condval_5.sroa.0.0.in.2.sroa.speculate.load.if.then213.2, i32 %q_local.sroa.0.0.q_local.sroa.0.0.condval_5.sroa.0.0.in.sroa.speculate.load.if.then213, !dbg !70
  %condval_4.sroa.0.0.in.in = select i1 %cmp132, i32 %q_local.sroa.37.0.q_local.sroa.37.16.condval_5.sroa.0.0.in.2.sroa.speculate.load.if.then213.2, i32 %q_local.sroa.0.0.q_local.sroa.0.0.condval_5.sroa.0.0.in.sroa.speculate.load.if.then213, !dbg !71
  %condval_4.sroa.0.0.in = and i32 %condval_4.sroa.0.0.in.in, -65536, !dbg !72
  %conv165 = and i32 %condval_3.sroa.0.0.in, 65535, !dbg !73
  %or168 = or disjoint i32 %condval_4.sroa.0.0.in, %conv165, !dbg !74
  %49 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !75
  %50 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %49) #10, !dbg !79
  %xor.i.i925 = xor i32 %50, 32, !dbg !80
  %51 = and i32 %50, -64, !dbg !81
  %and.i.i926 = add nsw i32 %51, 64, !dbg !81
  %cmp.not.i.i927 = icmp slt i32 %xor.i.i925, %and.i.i926, !dbg !82
  %cond.i.i928 = select i1 %cmp.not.i.i927, i32 %xor.i.i925, i32 %50, !dbg !83
  %shl.i.i929 = shl i32 %cond.i.i928, 2, !dbg !84
  %52 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i929, i32 %or168), !dbg !85
  %condval_3.sroa.0.0.1.in = select i1 %cmp132, i32 %q_local.sroa.37.4.q_local.sroa.37.20.condval_5.sroa.0.0.in.1.2.sroa.speculate.load.if.then213.1.2, i32 %q_local.sroa.0.4.q_local.sroa.0.4.condval_5.sroa.0.0.in.1.sroa.speculate.load.if.then213.1, !dbg !70
  %condval_4.sroa.0.0.1.in.in = select i1 %cmp132, i32 %q_local.sroa.37.4.q_local.sroa.37.20.condval_5.sroa.0.0.in.1.2.sroa.speculate.load.if.then213.1.2, i32 %q_local.sroa.0.4.q_local.sroa.0.4.condval_5.sroa.0.0.in.1.sroa.speculate.load.if.then213.1, !dbg !71
  %condval_4.sroa.0.0.1.in = and i32 %condval_4.sroa.0.0.1.in.in, -65536, !dbg !72
  %conv165.1 = and i32 %condval_3.sroa.0.0.1.in, 65535, !dbg !73
  %or168.1 = or disjoint i32 %condval_4.sroa.0.0.1.in, %conv165.1, !dbg !74
  %53 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !75
  %54 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %53) #10, !dbg !79
  %xor.i.i925.1 = xor i32 %54, 32, !dbg !80
  %55 = and i32 %54, -64, !dbg !81
  %and.i.i926.1 = add nsw i32 %55, 64, !dbg !81
  %cmp.not.i.i927.1 = icmp slt i32 %xor.i.i925.1, %and.i.i926.1, !dbg !82
  %cond.i.i928.1 = select i1 %cmp.not.i.i927.1, i32 %xor.i.i925.1, i32 %54, !dbg !83
  %shl.i.i929.1 = shl i32 %cond.i.i928.1, 2, !dbg !84
  %56 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i929.1, i32 %or168.1), !dbg !85
  %condval_3.sroa.0.0.11066.in = select i1 %cmp132, i32 %q_local.sroa.55.0.q_local.sroa.55.24.condval_5.sroa.0.0.in.3.sroa.speculate.load.if.then213.3, i32 %q_local.sroa.20.0.q_local.sroa.20.8.condval_5.sroa.0.0.in.11091.sroa.speculate.load.if.then213.11090, !dbg !70
  %condval_4.sroa.0.0.11074.in.in = select i1 %cmp132, i32 %q_local.sroa.55.0.q_local.sroa.55.24.condval_5.sroa.0.0.in.3.sroa.speculate.load.if.then213.3, i32 %q_local.sroa.20.0.q_local.sroa.20.8.condval_5.sroa.0.0.in.11091.sroa.speculate.load.if.then213.11090, !dbg !71
  %condval_4.sroa.0.0.11074.in = and i32 %condval_4.sroa.0.0.11074.in.in, -65536, !dbg !72
  %conv165.11075 = and i32 %condval_3.sroa.0.0.11066.in, 65535, !dbg !73
  %or168.11078 = or disjoint i32 %condval_4.sroa.0.0.11074.in, %conv165.11075, !dbg !74
  %57 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !75
  %58 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %57) #10, !dbg !79
  %xor.i.i925.11079 = xor i32 %58, 32, !dbg !80
  %59 = and i32 %58, -64, !dbg !81
  %and.i.i926.11080 = add nsw i32 %59, 64, !dbg !81
  %cmp.not.i.i927.11081 = icmp slt i32 %xor.i.i925.11079, %and.i.i926.11080, !dbg !82
  %cond.i.i928.11082 = select i1 %cmp.not.i.i927.11081, i32 %xor.i.i925.11079, i32 %58, !dbg !83
  %shl.i.i929.11083 = shl i32 %cond.i.i928.11082, 2, !dbg !84
  %60 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i929.11083, i32 %or168.11078), !dbg !85
  %condval_3.sroa.0.0.1.1.in = select i1 %cmp132, i32 %q_local.sroa.55.4.q_local.sroa.55.28.condval_5.sroa.0.0.in.1.3.sroa.speculate.load.if.then213.1.3, i32 %q_local.sroa.20.4.q_local.sroa.20.12.condval_5.sroa.0.0.in.1.1.sroa.speculate.load.if.then213.1.1, !dbg !70
  %condval_4.sroa.0.0.1.1.in.in = select i1 %cmp132, i32 %q_local.sroa.55.4.q_local.sroa.55.28.condval_5.sroa.0.0.in.1.3.sroa.speculate.load.if.then213.1.3, i32 %q_local.sroa.20.4.q_local.sroa.20.12.condval_5.sroa.0.0.in.1.1.sroa.speculate.load.if.then213.1.1, !dbg !71
  %condval_4.sroa.0.0.1.1.in = and i32 %condval_4.sroa.0.0.1.1.in.in, -65536, !dbg !72
  %conv165.1.1 = and i32 %condval_3.sroa.0.0.1.1.in, 65535, !dbg !73
  %or168.1.1 = or disjoint i32 %condval_4.sroa.0.0.1.1.in, %conv165.1.1, !dbg !74
  %61 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !75
  %62 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %61) #10, !dbg !79
  %xor.i.i925.1.1 = xor i32 %62, 32, !dbg !80
  %63 = and i32 %62, -64, !dbg !81
  %and.i.i926.1.1 = add nsw i32 %63, 64, !dbg !81
  %cmp.not.i.i927.1.1 = icmp slt i32 %xor.i.i925.1.1, %and.i.i926.1.1, !dbg !82
  %cond.i.i928.1.1 = select i1 %cmp.not.i.i927.1.1, i32 %xor.i.i925.1.1, i32 %62, !dbg !83
  %shl.i.i929.1.1 = shl i32 %cond.i.i928.1.1, 2, !dbg !84
  %64 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i929.1.1, i32 %or168.1.1), !dbg !85
  %shr211 = lshr i32 %1, 5
  %idxprom250 = zext nneg i32 %0 to i64, !dbg !86
  %arrayidx251 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %idxprom250, !dbg !86
  %65 = load i32, ptr addrspace(1) %arrayidx251, align 4, !dbg !86, !tbaa !30
  %mul252 = shl nsw i32 %65, 4, !dbg !87
  %cmp253 = icmp slt i32 %65, 0, !dbg !88
  %cmp255.not = icmp sgt i32 %mul252, %0
  %or.cond = select i1 %cmp253, i1 true, i1 %cmp255.not, !dbg !89
  br i1 %or.cond, label %if.end221.1.3.if.end630_crit_edge, label %if.then256, !dbg !89

if.end221.1.3.if.end630_crit_edge:                ; preds = %entry
  %.pre = and i32 %1, 7
  %.pre1400 = lshr i32 %1, 3
  %.pre1401 = xor i32 %and98, %.pre1400
  %.pre1402 = xor i32 %shr211, %.pre, !dbg !90
  %.pre1403 = shl nuw nsw i32 %.pre1402, 3, !dbg !91
  %.pre1404 = add nuw nsw i32 %.pre1403, %mul7, !dbg !92
  %.pre1405 = add nuw nsw i32 %shr211, 2, !dbg !93
  %.pre1406 = xor i32 %.pre1405, %.pre, !dbg !90
  %.pre1407 = shl nuw nsw i32 %.pre1406, 3, !dbg !91
  %.pre1408 = add nuw nsw i32 %.pre1407, %mul7, !dbg !92
  %.pre1409 = add nuw nsw i32 %shr211, 4, !dbg !93
  %.pre1410 = xor i32 %.pre1409, %.pre, !dbg !90
  %.pre1411 = shl nuw nsw i32 %.pre1410, 3, !dbg !91
  %.pre1412 = add nuw nsw i32 %.pre1411, %mul7, !dbg !92
  %.pre1413 = add nuw nsw i32 %shr211, 6, !dbg !93
  %.pre1414 = xor i32 %.pre1413, %.pre, !dbg !90
  %.pre1415 = shl nuw nsw i32 %.pre1414, 3, !dbg !91
  %.pre1416 = add nuw nsw i32 %.pre1415, %mul7, !dbg !92
  %.pre1417 = shl nuw nsw i32 %1, 3
  %.pre1418 = and i32 %.pre1417, 8128
  %.pre1419 = and i32 %.pre1417, 56
  %.pre1420 = and i32 %1, 1016
  %.pre1421 = xor i32 %.pre1419, %.pre1420
  br label %if.end630, !dbg !89

if.then256:                                       ; preds = %entry
  %cmp212.2 = icmp eq i32 %shr211, 1
  %condval_5.sroa.0.0.in.3.sroa.speculated = select i1 %cmp212.2, i32 %q_local.sroa.55.0.q_local.sroa.55.24.condval_5.sroa.0.0.in.3.sroa.speculate.load.if.then213.3, i32 %60, !dbg !94
  %q_local.sroa.55.sroa.0.0.vec.insert = insertelement <2 x i32> poison, i32 %condval_5.sroa.0.0.in.3.sroa.speculated, i64 0, !dbg !95
  %condval_5.sroa.0.0.in.1.3.sroa.speculated = select i1 %cmp212.2, i32 %q_local.sroa.55.4.q_local.sroa.55.28.condval_5.sroa.0.0.in.1.3.sroa.speculate.load.if.then213.1.3, i32 %64, !dbg !94
  %q_local.sroa.55.sroa.0.4.vec.insert = insertelement <2 x i32> %q_local.sroa.55.sroa.0.0.vec.insert, i32 %condval_5.sroa.0.0.in.1.3.sroa.speculated, i64 1, !dbg !95
  %condval_5.sroa.0.0.in.2.sroa.speculated = select i1 %cmp212.2, i32 %q_local.sroa.37.0.q_local.sroa.37.16.condval_5.sroa.0.0.in.2.sroa.speculate.load.if.then213.2, i32 %52, !dbg !94
  %q_local.sroa.37.sroa.0.0.vec.insert = insertelement <2 x i32> poison, i32 %condval_5.sroa.0.0.in.2.sroa.speculated, i64 0, !dbg !95
  %condval_5.sroa.0.0.in.1.2.sroa.speculated = select i1 %cmp212.2, i32 %q_local.sroa.37.4.q_local.sroa.37.20.condval_5.sroa.0.0.in.1.2.sroa.speculate.load.if.then213.1.2, i32 %56, !dbg !94
  %q_local.sroa.37.sroa.0.4.vec.insert = insertelement <2 x i32> %q_local.sroa.37.sroa.0.0.vec.insert, i32 %condval_5.sroa.0.0.in.1.2.sroa.speculated, i64 1, !dbg !95
  %cmp212 = icmp ult i32 %1, 32
  %condval_5.sroa.0.0.in.11091.sroa.speculated = select i1 %cmp212, i32 %q_local.sroa.20.0.q_local.sroa.20.8.condval_5.sroa.0.0.in.11091.sroa.speculate.load.if.then213.11090, i32 %60, !dbg !94
  %q_local.sroa.20.sroa.0.0.vec.insert = insertelement <2 x i32> poison, i32 %condval_5.sroa.0.0.in.11091.sroa.speculated, i64 0, !dbg !95
  %condval_5.sroa.0.0.in.1.1.sroa.speculated = select i1 %cmp212, i32 %q_local.sroa.20.4.q_local.sroa.20.12.condval_5.sroa.0.0.in.1.1.sroa.speculate.load.if.then213.1.1, i32 %64, !dbg !94
  %q_local.sroa.20.sroa.0.4.vec.insert = insertelement <2 x i32> %q_local.sroa.20.sroa.0.0.vec.insert, i32 %condval_5.sroa.0.0.in.1.1.sroa.speculated, i64 1, !dbg !95
  %condval_5.sroa.0.0.in.sroa.speculated = select i1 %cmp212, i32 %q_local.sroa.0.0.q_local.sroa.0.0.condval_5.sroa.0.0.in.sroa.speculate.load.if.then213, i32 %52, !dbg !94
  %q_local.sroa.0.sroa.0.0.vec.insert = insertelement <2 x i32> poison, i32 %condval_5.sroa.0.0.in.sroa.speculated, i64 0, !dbg !95
  %condval_5.sroa.0.0.in.1.sroa.speculated = select i1 %cmp212, i32 %q_local.sroa.0.4.q_local.sroa.0.4.condval_5.sroa.0.0.in.1.sroa.speculate.load.if.then213.1, i32 %56, !dbg !94
  %q_local.sroa.0.sroa.0.4.vec.insert = insertelement <2 x i32> %q_local.sroa.0.sroa.0.0.vec.insert, i32 %condval_5.sroa.0.0.in.1.sroa.speculated, i64 1, !dbg !95
  fence syncscope("warp") release, !dbg !96
  tail call void @llvm.mxc.barrier.warp(), !dbg !101
  fence syncscope("warp") acquire, !dbg !102
  %conv263 = zext nneg i32 %mul252 to i64
  %66 = shl nuw nsw i32 %1, 3
  %mul268 = zext nneg i32 %66 to i64
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul268, !dbg !103
  %mul284 = and i32 %66, 8128
  %xor923 = and i32 %66, 56
  %call288.masked = and i32 %1, 1016
  %mul290 = xor i32 %xor923, %call288.masked
  %and294 = lshr i32 %1, 3
  %shr295 = and i32 %and294, 1
  %.idx1020 = shl nuw nsw i64 %conv263, 7, !dbg !104
  %67 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep, i64 %.idx1020, !dbg !104
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %67, align 16, !dbg !105
  %qk_fetch.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %67, i64 8, !dbg !105
  %qk_fetch.sroa.6.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.6.0..sroa_idx, align 8, !dbg !105
  %68 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul290, !dbg !106
  %69 = getelementptr inbounds %struct.__half, ptr addrspace(3) %68, i32 %mul284, !dbg !106
  %add.ptr300.idx = shl nuw nsw i32 %shr295, 3, !dbg !106
  %add.ptr300 = getelementptr inbounds i8, ptr addrspace(3) %69, i32 %add.ptr300.idx, !dbg !106
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr300, align 8, !dbg !107
  %xor296.1 = shl nuw nsw i32 %shr295, 3, !dbg !106
  %add.ptr300.idx.1 = xor i32 %xor296.1, 8, !dbg !106
  %add.ptr300.1 = getelementptr inbounds i8, ptr addrspace(3) %69, i32 %add.ptr300.idx.1, !dbg !106
  store i64 %qk_fetch.sroa.6.0.copyload, ptr addrspace(3) %add.ptr300.1, align 8, !dbg !107
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %67, i64 1024, !dbg !104
  %qk_fetch.sroa.0.0.copyload1175 = load i64, ptr addrspace(4) %gep.1, align 16, !dbg !105
  %qk_fetch.sroa.6.0.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %67, i64 1032, !dbg !105
  %qk_fetch.sroa.6.0.copyload1176 = load i64, ptr addrspace(4) %qk_fetch.sroa.6.0.gep.1.sroa_idx, align 8, !dbg !105
  %70 = getelementptr inbounds i8, ptr addrspace(3) %69, i32 1024, !dbg !106
  %add.ptr300.11098 = getelementptr inbounds i8, ptr addrspace(3) %70, i32 %add.ptr300.idx.1, !dbg !106
  store i64 %qk_fetch.sroa.0.0.copyload1175, ptr addrspace(3) %add.ptr300.11098, align 8, !dbg !107
  %add.ptr300.1.1 = getelementptr inbounds i8, ptr addrspace(3) %70, i32 %add.ptr300.idx, !dbg !106
  store i64 %qk_fetch.sroa.6.0.copyload1176, ptr addrspace(3) %add.ptr300.1.1, align 8, !dbg !107
  fence syncscope("warp") release, !dbg !108
  tail call void @llvm.mxc.barrier.warp(), !dbg !111
  fence syncscope("warp") acquire, !dbg !112
  %and323 = and i32 %1, 7
  %71 = xor i32 %and294, %and98
  %xor333922 = xor i32 %71, %1
  %xor336 = shl nuw nsw i32 %xor333922, 2
  %mul337 = and i32 %xor336, 4
  %xor324 = xor i32 %shr211, %and323, !dbg !113
  %mul325 = shl nuw nsw i32 %xor324, 3, !dbg !114
  %add326 = add nuw nsw i32 %mul325, %mul7, !dbg !115
  %add338 = or disjoint i32 %add326, %mul337, !dbg !116
  %add.ptr340 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add338, !dbg !117
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr340, align 8, !dbg !118
  %72 = bitcast <2 x i32> %q_local.sroa.0.sroa.0.4.vec.insert to <4 x half>, !dbg !119
  %73 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %72, <4 x float> zeroinitializer), !dbg !120
  %add321.1 = add nuw nsw i32 %shr211, 2, !dbg !121
  %xor324.1 = xor i32 %add321.1, %and323, !dbg !113
  %mul325.1 = shl nuw nsw i32 %xor324.1, 3, !dbg !114
  %add326.1 = add nuw nsw i32 %mul325.1, %mul7, !dbg !115
  %add338.1 = or disjoint i32 %add326.1, %mul337, !dbg !116
  %add.ptr340.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add338.1, !dbg !117
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr340.1, align 8, !dbg !118
  %74 = bitcast <2 x i32> %q_local.sroa.20.sroa.0.4.vec.insert to <4 x half>, !dbg !119
  %75 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %74, <4 x float> %73), !dbg !120
  %add321.2 = add nuw nsw i32 %shr211, 4, !dbg !121
  %xor324.2 = xor i32 %add321.2, %and323, !dbg !113
  %mul325.2 = shl nuw nsw i32 %xor324.2, 3, !dbg !114
  %add326.2 = add nuw nsw i32 %mul325.2, %mul7, !dbg !115
  %add338.2 = or disjoint i32 %add326.2, %mul337, !dbg !116
  %add.ptr340.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add338.2, !dbg !117
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr340.2, align 8, !dbg !118
  %76 = bitcast <2 x i32> %q_local.sroa.37.sroa.0.4.vec.insert to <4 x half>, !dbg !119
  %77 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %76, <4 x float> %75), !dbg !120
  %add321.3 = add nuw nsw i32 %shr211, 6, !dbg !121
  %xor324.3 = xor i32 %add321.3, %and323, !dbg !113
  %mul325.3 = shl nuw nsw i32 %xor324.3, 3, !dbg !114
  %add326.3 = add nuw nsw i32 %mul325.3, %mul7, !dbg !115
  %add338.3 = or disjoint i32 %add326.3, %mul337, !dbg !116
  %add.ptr340.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add338.3, !dbg !117
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr340.3, align 8, !dbg !118
  %78 = bitcast <2 x i32> %q_local.sroa.55.sroa.0.4.vec.insert to <4 x half>, !dbg !119
  %79 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %78, <4 x float> %77), !dbg !120
  %80 = lshr i32 %1, 2
  %mul361 = and i32 %80, 252
  %add362 = add nuw nsw i32 %mul252, %mul361
  %cmp365.not = icmp sgt i32 %add362, %0, !dbg !122
  %scores.sroa.0.0.vec.extract1187 = extractelement <4 x float> %79, i64 0
  %spec.select = select i1 %cmp365.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1187, !dbg !123
  %cmp365.not.1.not = icmp slt i32 %add362, %0, !dbg !122
  %scores.sroa.0.4.vec.extract1194 = extractelement <4 x float> %79, i64 1, !dbg !123
  %condval_6.0.1 = select i1 %cmp365.not.1.not, float %scores.sroa.0.4.vec.extract1194, float 0xFFF0000000000000, !dbg !123
  %add363.2 = or disjoint i32 %add362, 2, !dbg !124
  %cmp365.not.2 = icmp sgt i32 %add363.2, %0, !dbg !122
  %scores.sroa.0.8.vec.extract1201 = extractelement <4 x float> %79, i64 2, !dbg !123
  %condval_6.0.2 = select i1 %cmp365.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1201, !dbg !123
  %add363.3 = or disjoint i32 %add362, 3, !dbg !124
  %cmp365.not.3 = icmp sgt i32 %add363.3, %0, !dbg !122
  %scores.sroa.0.12.vec.extract1208 = extractelement <4 x float> %79, i64 3, !dbg !123
  %condval_6.0.3 = select i1 %cmp365.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1208, !dbg !123
  %81 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !125
  %82 = tail call contract noundef float @llvm.maxnum.f32(float %81, float %condval_6.0.1), !dbg !125
  %83 = tail call contract noundef float @llvm.maxnum.f32(float %82, float %condval_6.0.2), !dbg !125
  %84 = tail call contract noundef float @llvm.maxnum.f32(float %83, float %condval_6.0.3), !dbg !125
  %85 = bitcast float %84 to i32, !dbg !129
  %86 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !132
  %87 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %86) #10, !dbg !135
  %xor.i.i932 = xor i32 %87, 32, !dbg !136
  %88 = and i32 %87, -64, !dbg !137
  %and.i.i933 = add nsw i32 %88, 64, !dbg !137
  %cmp.not.i.i934 = icmp slt i32 %xor.i.i932, %and.i.i933, !dbg !138
  %cond.i.i935 = select i1 %cmp.not.i.i934, i32 %xor.i.i932, i32 %87, !dbg !139
  %shl.i.i936 = shl i32 %cond.i.i935, 2, !dbg !140
  %89 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i936, i32 %85), !dbg !141
  %90 = bitcast i32 %89 to float, !dbg !142
  %91 = tail call contract noundef float @llvm.maxnum.f32(float %84, float %90), !dbg !143
  %92 = bitcast float %91 to i32, !dbg !145
  %93 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !147
  %94 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %93) #10, !dbg !150
  %xor.i.i937 = xor i32 %94, 16, !dbg !151
  %95 = and i32 %94, -64, !dbg !152
  %and.i.i938 = add nsw i32 %95, 64, !dbg !152
  %cmp.not.i.i939 = icmp slt i32 %xor.i.i937, %and.i.i938, !dbg !153
  %cond.i.i940 = select i1 %cmp.not.i.i939, i32 %xor.i.i937, i32 %94, !dbg !154
  %shl.i.i941 = shl i32 %cond.i.i940, 2, !dbg !155
  %96 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i941, i32 %92), !dbg !156
  %97 = bitcast i32 %96 to float, !dbg !157
  %98 = tail call contract noundef float @llvm.maxnum.f32(float %91, float %97), !dbg !158
  %sub = fsub contract float %spec.select, %98, !dbg !160
  %sub415 = fsub contract float %condval_6.0.1, %98, !dbg !161
  %sub418 = fsub contract float %condval_6.0.2, %98, !dbg !162
  %sub421 = fsub contract float %condval_6.0.3, %98, !dbg !163
  %mul426 = fmul contract float %sub, 0x3FC7154760000000, !dbg !164
  %mul430 = fmul contract float %sub415, 0x3FC7154760000000, !dbg !165
  %mul434 = fmul contract float %sub418, 0x3FC7154760000000, !dbg !166
  %mul438 = fmul contract float %sub421, 0x3FC7154760000000, !dbg !167
  %add443 = fadd contract float %mul426, 8.000000e+00, !dbg !168
  %add447 = fadd contract float %mul430, 8.000000e+00, !dbg !169
  %add451 = fadd contract float %mul434, 8.000000e+00, !dbg !170
  %add455 = fadd contract float %mul438, 8.000000e+00, !dbg !171
  %cmp.i.i = fcmp contract olt float %add443, -1.260000e+02, !dbg !172
  %cond.i.i944 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !172
  %add.i.i = fadd contract float %add443, %cond.i.i944, !dbg !172
  %99 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !172
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !172
  %mul.i.i = fmul contract float %cond2.i.i, %99, !dbg !172
  %cmp.i.i945 = fcmp contract olt float %add447, -1.260000e+02, !dbg !175
  %cond.i.i946 = select contract i1 %cmp.i.i945, float 6.400000e+01, float 0.000000e+00, !dbg !175
  %add.i.i947 = fadd contract float %add447, %cond.i.i946, !dbg !175
  %100 = tail call contract float @llvm.exp2.f32(float %add.i.i947), !dbg !175
  %cond2.i.i948 = select contract i1 %cmp.i.i945, float 0x3BF0000000000000, float 1.000000e+00, !dbg !175
  %mul.i.i949 = fmul contract float %cond2.i.i948, %100, !dbg !175
  %cmp.i.i950 = fcmp contract olt float %add451, -1.260000e+02, !dbg !177
  %cond.i.i951 = select contract i1 %cmp.i.i950, float 6.400000e+01, float 0.000000e+00, !dbg !177
  %add.i.i952 = fadd contract float %add451, %cond.i.i951, !dbg !177
  %101 = tail call contract float @llvm.exp2.f32(float %add.i.i952), !dbg !177
  %cond2.i.i953 = select contract i1 %cmp.i.i950, float 0x3BF0000000000000, float 1.000000e+00, !dbg !177
  %mul.i.i954 = fmul contract float %cond2.i.i953, %101, !dbg !177
  %cmp.i.i955 = fcmp contract olt float %add455, -1.260000e+02, !dbg !179
  %cond.i.i956 = select contract i1 %cmp.i.i955, float 6.400000e+01, float 0.000000e+00, !dbg !179
  %add.i.i957 = fadd contract float %add455, %cond.i.i956, !dbg !179
  %102 = tail call contract float @llvm.exp2.f32(float %add.i.i957), !dbg !179
  %cond2.i.i958 = select contract i1 %cmp.i.i955, float 0x3BF0000000000000, float 1.000000e+00, !dbg !179
  %mul.i.i959 = fmul contract float %cond2.i.i958, %102, !dbg !179
  %103 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !189
  %104 = fptrunc float %mul.i.i to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %103), !dbg !181, !noalias !189
  %105 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !194
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !194, !noalias !189
  %106 = fptrunc float %mul.i.i949 to half, !dbg !194
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %105), !dbg !194, !noalias !189
  %107 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !196
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !196, !noalias !200
  %108 = fptrunc float %mul.i.i954 to half, !dbg !196
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %107), !dbg !196, !noalias !200
  %109 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !205
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !205, !noalias !200
  %110 = fptrunc float %mul.i.i959 to half, !dbg !205
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %109), !dbg !205, !noalias !200
  %111 = insertelement <4 x half> poison, half %104, i64 0, !dbg !207
  %112 = insertelement <4 x half> %111, half %106, i64 1, !dbg !207
  %113 = insertelement <4 x half> %112, half %108, i64 2, !dbg !207
  %114 = insertelement <4 x half> %113, half %110, i64 3, !dbg !207
  %conv.i.i = fpext half %104 to float, !dbg !208
  %add489 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !213
  %conv.i.i.1 = fpext half %106 to float, !dbg !208
  %add489.1 = fadd contract float %add489, %conv.i.i.1, !dbg !213
  %conv.i.i.2 = fpext half %108 to float, !dbg !208
  %add489.2 = fadd contract float %add489.1, %conv.i.i.2, !dbg !213
  %conv.i.i.3 = fpext half %110 to float, !dbg !208
  %add489.3 = fadd contract float %add489.2, %conv.i.i.3, !dbg !213
  fence syncscope("warp") release, !dbg !214
  tail call void @llvm.mxc.barrier.warp(), !dbg !217
  fence syncscope("warp") acquire, !dbg !218
  %115 = shl nuw nsw i32 %1, 4
  %116 = and i32 %115, 16256
  %mul505 = zext nneg i32 %116 to i64
  %mul507 = shl nuw nsw i64 %conv263, 6
  %add508 = add nuw nsw i64 %mul507, %mul505
  %mul515 = zext nneg i32 %xor923 to i64
  %add516 = or disjoint i64 %add508, %mul515, !dbg !219
  %add.ptr517 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add516, !dbg !220
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %add.ptr517, align 16, !dbg !221
  %v_fetch.sroa.4.0.add.ptr517.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr517, i64 2, !dbg !221
  %v_fetch.sroa.4.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.4.0.add.ptr517.sroa_idx, align 2, !dbg !221, !tbaa !30
  %v_fetch.sroa.5.0.add.ptr517.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr517, i64 4, !dbg !221
  %v_fetch.sroa.5.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.5.0.add.ptr517.sroa_idx, align 4, !dbg !221
  %v_fetch.sroa.6.0.add.ptr517.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr517, i64 6, !dbg !221
  %v_fetch.sroa.6.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.6.0.add.ptr517.sroa_idx, align 2, !dbg !221, !tbaa !30
  %v_fetch.sroa.7.0.add.ptr517.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr517, i64 8, !dbg !221
  %v_fetch.sroa.7.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.7.0.add.ptr517.sroa_idx, align 8, !dbg !221
  %v_fetch.sroa.8.0.add.ptr517.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr517, i64 10, !dbg !221
  %v_fetch.sroa.8.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.8.0.add.ptr517.sroa_idx, align 2, !dbg !221, !tbaa !30
  %v_fetch.sroa.9.0.add.ptr517.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr517, i64 12, !dbg !221
  %v_fetch.sroa.9.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.9.0.add.ptr517.sroa_idx, align 4, !dbg !221
  %v_fetch.sroa.10.0.add.ptr517.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr517, i64 14, !dbg !221
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0.add.ptr517.sroa_idx, align 2, !dbg !221, !tbaa !30
  %add511.1 = or disjoint i64 %add508, %mul515, !dbg !219
  %add516.1 = or disjoint i64 %add511.1, 64, !dbg !219
  %add.ptr517.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add516.1, !dbg !220
  %v_fetch.sroa.11.16.copyload = load i16, ptr addrspace(4) %add.ptr517.1, align 16, !dbg !221
  %v_fetch.sroa.13.16.add.ptr517.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr517.1, i64 2, !dbg !221
  %v_fetch.sroa.13.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.13.16.add.ptr517.1.sroa_idx, align 2, !dbg !221, !tbaa !30
  %v_fetch.sroa.14.16.add.ptr517.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr517.1, i64 4, !dbg !221
  %v_fetch.sroa.14.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.16.add.ptr517.1.sroa_idx, align 4, !dbg !221
  %v_fetch.sroa.15.16.add.ptr517.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr517.1, i64 6, !dbg !221
  %v_fetch.sroa.15.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.15.16.add.ptr517.1.sroa_idx, align 2, !dbg !221, !tbaa !30
  %v_fetch.sroa.16.16.add.ptr517.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr517.1, i64 8, !dbg !221
  %v_fetch.sroa.16.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.16.16.add.ptr517.1.sroa_idx, align 8, !dbg !221
  %v_fetch.sroa.17.16.add.ptr517.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr517.1, i64 10, !dbg !221
  %v_fetch.sroa.17.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.17.16.add.ptr517.1.sroa_idx, align 2, !dbg !221, !tbaa !30
  %v_fetch.sroa.18.16.add.ptr517.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr517.1, i64 12, !dbg !221
  %v_fetch.sroa.18.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.16.add.ptr517.1.sroa_idx, align 4, !dbg !221
  %v_fetch.sroa.19.16.add.ptr517.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr517.1, i64 14, !dbg !221
  %v_fetch.sroa.19.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.19.16.add.ptr517.1.sroa_idx, align 2, !dbg !221, !tbaa !30
  %and547 = shl nuw nsw i32 %1, 1
  %mul548 = and i32 %and547, 14
  %and560 = lshr i32 %1, 1
  %shr561 = and i32 %and560, 3
  %xor562 = xor i32 %shr561, %and98
  %mul570 = and i32 %80, 2
  %xor555920 = shl nuw nsw i32 %mul548, 4, !dbg !222
  %mul556 = or disjoint i32 %xor555920, %4, !dbg !222
  %mul565 = shl nuw nsw i32 %xor562, 2, !dbg !223
  %add566 = add nuw nsw i32 %mul556, %mul565, !dbg !224
  %add571 = or disjoint i32 %add566, %mul570, !dbg !225
  %add.ptr573 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add571, !dbg !226
  %v_column.sroa.18.0.insert.ext = zext i16 %v_fetch.sroa.11.16.copyload to i32, !dbg !227
  %v_column.sroa.18.0.insert.shift = shl nuw i32 %v_column.sroa.18.0.insert.ext, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.18.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr573, align 4, !dbg !227, !tbaa !30
  %add549.1 = shl nuw nsw i32 %mul548, 4, !dbg !222
  %xor555920.1 = or disjoint i32 %add549.1, %4, !dbg !222
  %mul556.1 = or disjoint i32 %xor555920.1, 256, !dbg !222
  %xor564.1 = shl nuw nsw i32 %xor562, 2, !dbg !223
  %mul565.1 = xor i32 %xor564.1, 4, !dbg !223
  %add566.1 = add nuw nsw i32 %mul556.1, %mul565.1, !dbg !224
  %add571.1 = or disjoint i32 %add566.1, %mul570, !dbg !225
  %add.ptr573.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add571.1, !dbg !226
  %v_column.sroa.18.0.insert.ext1140 = zext i16 %v_fetch.sroa.13.16.copyload to i32, !dbg !227
  %v_column.sroa.18.0.insert.shift1141 = shl nuw i32 %v_column.sroa.18.0.insert.ext1140, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1112 = zext i16 %v_fetch.sroa.4.0.copyload to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1114 = or disjoint i32 %v_column.sroa.18.0.insert.shift1141, %v_column.sroa.0.0.insert.ext1112, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1114, ptr addrspace(3) %add.ptr573.1, align 4, !dbg !227, !tbaa !30
  %add549.2 = shl nuw nsw i32 %mul548, 4, !dbg !222
  %xor555920.2 = or disjoint i32 %add549.2, %4, !dbg !222
  %mul556.2 = or disjoint i32 %xor555920.2, 512, !dbg !222
  %xor564.2 = shl nuw nsw i32 %xor562, 2, !dbg !223
  %mul565.2 = xor i32 %xor564.2, 8, !dbg !223
  %add566.2 = add nuw nsw i32 %mul556.2, %mul565.2, !dbg !224
  %add571.2 = or disjoint i32 %add566.2, %mul570, !dbg !225
  %add.ptr573.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add571.2, !dbg !226
  %v_column.sroa.18.0.insert.ext1145 = zext i16 %v_fetch.sroa.14.16.copyload to i32, !dbg !227
  %v_column.sroa.18.0.insert.shift1146 = shl nuw i32 %v_column.sroa.18.0.insert.ext1145, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1116 = zext i16 %v_fetch.sroa.5.0.copyload to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1118 = or disjoint i32 %v_column.sroa.18.0.insert.shift1146, %v_column.sroa.0.0.insert.ext1116, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1118, ptr addrspace(3) %add.ptr573.2, align 4, !dbg !227, !tbaa !30
  %add549.3 = shl nuw nsw i32 %mul548, 4, !dbg !222
  %xor555920.3 = or disjoint i32 %add549.3, %4, !dbg !222
  %mul556.3 = or disjoint i32 %xor555920.3, 768, !dbg !222
  %xor564.3 = shl nuw nsw i32 %xor562, 2, !dbg !223
  %mul565.3 = xor i32 %xor564.3, 12, !dbg !223
  %add566.3 = add nuw nsw i32 %mul556.3, %mul565.3, !dbg !224
  %add571.3 = or disjoint i32 %add566.3, %mul570, !dbg !225
  %add.ptr573.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add571.3, !dbg !226
  %v_column.sroa.18.0.insert.ext1150 = zext i16 %v_fetch.sroa.15.16.copyload to i32, !dbg !227
  %v_column.sroa.18.0.insert.shift1151 = shl nuw i32 %v_column.sroa.18.0.insert.ext1150, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1120 = zext i16 %v_fetch.sroa.6.0.copyload to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1122 = or disjoint i32 %v_column.sroa.18.0.insert.shift1151, %v_column.sroa.0.0.insert.ext1120, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1122, ptr addrspace(3) %add.ptr573.3, align 4, !dbg !227, !tbaa !30
  %add551.4 = shl nuw nsw i32 %mul548, 4, !dbg !222
  %xor555920.4 = or disjoint i32 %add551.4, 16, !dbg !222
  %mul556.4 = xor i32 %xor555920.4, %4, !dbg !222
  %add566.4 = add nuw nsw i32 %mul556.4, %mul565, !dbg !224
  %add571.4 = or disjoint i32 %add566.4, %mul570, !dbg !225
  %add.ptr573.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add571.4, !dbg !226
  %v_column.sroa.18.0.insert.ext1155 = zext i16 %v_fetch.sroa.16.16.copyload to i32, !dbg !227
  %v_column.sroa.18.0.insert.shift1156 = shl nuw i32 %v_column.sroa.18.0.insert.ext1155, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1124 = zext i16 %v_fetch.sroa.7.0.copyload to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1126 = or disjoint i32 %v_column.sroa.18.0.insert.shift1156, %v_column.sroa.0.0.insert.ext1124, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1126, ptr addrspace(3) %add.ptr573.4, align 4, !dbg !227, !tbaa !30
  %add551.5 = shl nuw nsw i32 %mul548, 4, !dbg !222
  %xor555920.5 = or disjoint i32 %add551.5, 272, !dbg !222
  %mul556.5 = xor i32 %xor555920.5, %4, !dbg !222
  %add566.5 = add nuw nsw i32 %mul556.5, %mul565.1, !dbg !224
  %add571.5 = or disjoint i32 %add566.5, %mul570, !dbg !225
  %add.ptr573.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add571.5, !dbg !226
  %v_column.sroa.18.0.insert.ext1160 = zext i16 %v_fetch.sroa.17.16.copyload to i32, !dbg !227
  %v_column.sroa.18.0.insert.shift1161 = shl nuw i32 %v_column.sroa.18.0.insert.ext1160, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1128 = zext i16 %v_fetch.sroa.8.0.copyload to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1130 = or disjoint i32 %v_column.sroa.18.0.insert.shift1161, %v_column.sroa.0.0.insert.ext1128, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1130, ptr addrspace(3) %add.ptr573.5, align 4, !dbg !227, !tbaa !30
  %add551.6 = shl nuw nsw i32 %mul548, 4, !dbg !222
  %xor555920.6 = or disjoint i32 %add551.6, 528, !dbg !222
  %mul556.6 = xor i32 %xor555920.6, %4, !dbg !222
  %add566.6 = add nuw nsw i32 %mul556.6, %mul565.2, !dbg !224
  %add571.6 = or disjoint i32 %add566.6, %mul570, !dbg !225
  %add.ptr573.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add571.6, !dbg !226
  %v_column.sroa.18.0.insert.ext1165 = zext i16 %v_fetch.sroa.18.16.copyload to i32, !dbg !227
  %v_column.sroa.18.0.insert.shift1166 = shl nuw i32 %v_column.sroa.18.0.insert.ext1165, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1132 = zext i16 %v_fetch.sroa.9.0.copyload to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1134 = or disjoint i32 %v_column.sroa.18.0.insert.shift1166, %v_column.sroa.0.0.insert.ext1132, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1134, ptr addrspace(3) %add.ptr573.6, align 4, !dbg !227, !tbaa !30
  %add551.7 = shl nuw nsw i32 %mul548, 4, !dbg !222
  %xor555920.7 = or disjoint i32 %add551.7, 784, !dbg !222
  %mul556.7 = xor i32 %xor555920.7, %4, !dbg !222
  %add566.7 = add nuw nsw i32 %mul556.7, %mul565.3, !dbg !224
  %add571.7 = or disjoint i32 %add566.7, %mul570, !dbg !225
  %add.ptr573.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add571.7, !dbg !226
  %v_column.sroa.18.0.insert.ext1170 = zext i16 %v_fetch.sroa.19.16.copyload to i32, !dbg !227
  %v_column.sroa.18.0.insert.shift1171 = shl nuw i32 %v_column.sroa.18.0.insert.ext1170, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1136 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1138 = or disjoint i32 %v_column.sroa.18.0.insert.shift1171, %v_column.sroa.0.0.insert.ext1136, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1138, ptr addrspace(3) %add.ptr573.7, align 4, !dbg !227, !tbaa !30
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %mul583 = and i32 %115, 48
  %shr588 = and i32 %80, 3
  %117 = or disjoint i32 %mul583, %shr588
  %and599 = and i32 %1, 3
  %118 = xor i32 %and98, %and599
  %xor593919 = shl nuw nsw i32 %117, 4, !dbg !233
  %mul594 = xor i32 %xor593919, %4, !dbg !233
  %119 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul594, !dbg !234
  %add.ptr604.idx = shl nuw nsw i32 %118, 3, !dbg !234
  %add.ptr604 = getelementptr inbounds i8, ptr addrspace(3) %119, i32 %add.ptr604.idx, !dbg !234
  %120 = load <4 x half>, ptr addrspace(3) %add.ptr604, align 8, !dbg !235
  %add589.1 = shl nuw nsw i32 %117, 4, !dbg !233
  %xor593919.1 = or disjoint i32 %add589.1, 64, !dbg !233
  %mul594.1 = xor i32 %xor593919.1, %4, !dbg !233
  %121 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul594.1, !dbg !234
  %xor600.1 = shl nuw nsw i32 %118, 3, !dbg !234
  %add.ptr604.idx.1 = xor i32 %xor600.1, 8, !dbg !234
  %add.ptr604.1 = getelementptr inbounds i8, ptr addrspace(3) %121, i32 %add.ptr604.idx.1, !dbg !234
  %122 = load <4 x half>, ptr addrspace(3) %add.ptr604.1, align 8, !dbg !235
  %add589.2 = shl nuw nsw i32 %117, 4, !dbg !233
  %xor593919.2 = or disjoint i32 %add589.2, 128, !dbg !233
  %mul594.2 = xor i32 %xor593919.2, %4, !dbg !233
  %123 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul594.2, !dbg !234
  %xor600.2 = shl nuw nsw i32 %118, 3, !dbg !234
  %add.ptr604.idx.2 = xor i32 %xor600.2, 16, !dbg !234
  %add.ptr604.2 = getelementptr inbounds i8, ptr addrspace(3) %123, i32 %add.ptr604.idx.2, !dbg !234
  %124 = load <4 x half>, ptr addrspace(3) %add.ptr604.2, align 8, !dbg !235
  %add589.3 = shl nuw nsw i32 %117, 4, !dbg !233
  %xor593919.3 = or disjoint i32 %add589.3, 192, !dbg !233
  %mul594.3 = xor i32 %xor593919.3, %4, !dbg !233
  %125 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul594.3, !dbg !234
  %xor600.3 = shl nuw nsw i32 %118, 3, !dbg !234
  %add.ptr604.idx.3 = xor i32 %xor600.3, 24, !dbg !234
  %add.ptr604.3 = getelementptr inbounds i8, ptr addrspace(3) %125, i32 %add.ptr604.idx.3, !dbg !234
  %126 = load <4 x half>, ptr addrspace(3) %add.ptr604.3, align 8, !dbg !235
  %127 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %120, <4 x half> %114, <4 x float> zeroinitializer), !dbg !236
  %128 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %122, <4 x half> %114, <4 x float> zeroinitializer), !dbg !236
  %129 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %124, <4 x half> %114, <4 x float> zeroinitializer), !dbg !236
  %130 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %126, <4 x half> %114, <4 x float> zeroinitializer), !dbg !236
  %add496 = fadd contract float %add489.3, 0.000000e+00, !dbg !237
  br label %if.end630, !dbg !238

if.end630:                                        ; preds = %if.end221.1.3.if.end630_crit_edge, %if.then256
  %mul742.pre-phi = phi i32 [ %.pre1421, %if.end221.1.3.if.end630_crit_edge ], [ %mul290, %if.then256 ]
  %mul735.pre-phi = phi i32 [ %.pre1418, %if.end221.1.3.if.end630_crit_edge ], [ %mul284, %if.then256 ]
  %.pre-phi = phi i32 [ %.pre1417, %if.end221.1.3.if.end630_crit_edge ], [ %66, %if.then256 ]
  %add709.3.pre-phi = phi i32 [ %.pre1416, %if.end221.1.3.if.end630_crit_edge ], [ %add326.3, %if.then256 ], !dbg !92
  %add709.2.pre-phi = phi i32 [ %.pre1412, %if.end221.1.3.if.end630_crit_edge ], [ %add326.2, %if.then256 ], !dbg !92
  %add709.1.pre-phi = phi i32 [ %.pre1408, %if.end221.1.3.if.end630_crit_edge ], [ %add326.1, %if.then256 ], !dbg !92
  %add709.pre-phi = phi i32 [ %.pre1404, %if.end221.1.3.if.end630_crit_edge ], [ %add326, %if.then256 ], !dbg !92
  %shr712918.pre-phi = phi i32 [ %.pre1401, %if.end221.1.3.if.end630_crit_edge ], [ %71, %if.then256 ]
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %if.end221.1.3.if.end630_crit_edge ], [ %127, %if.then256 ], !dbg !48
  %numerator.sroa.20.0 = phi <4 x float> [ zeroinitializer, %if.end221.1.3.if.end630_crit_edge ], [ %128, %if.then256 ], !dbg !48
  %numerator.sroa.38.0 = phi <4 x float> [ zeroinitializer, %if.end221.1.3.if.end630_crit_edge ], [ %129, %if.then256 ], !dbg !48
  %numerator.sroa.56.0 = phi <4 x float> [ zeroinitializer, %if.end221.1.3.if.end630_crit_edge ], [ %130, %if.then256 ], !dbg !48
  %denominator.sroa.0.0 = phi float [ 0.000000e+00, %if.end221.1.3.if.end630_crit_edge ], [ %add496, %if.then256 ], !dbg !48
  %131 = bitcast float %denominator.sroa.0.0 to i32, !dbg !238
  %132 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !240
  %133 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %132) #10, !dbg !243
  %xor.i.i961 = xor i32 %133, 32, !dbg !244
  %134 = and i32 %133, -64, !dbg !245
  %and.i.i962 = add nsw i32 %134, 64, !dbg !245
  %cmp.not.i.i963 = icmp slt i32 %xor.i.i961, %and.i.i962, !dbg !246
  %cond.i.i964 = select i1 %cmp.not.i.i963, i32 %xor.i.i961, i32 %133, !dbg !247
  %shl.i.i965 = shl i32 %cond.i.i964, 2, !dbg !248
  %135 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i965, i32 %131), !dbg !249
  %136 = bitcast i32 %135 to float, !dbg !250
  %add634 = fadd contract float %denominator.sroa.0.0, %136, !dbg !251
  %137 = bitcast float %add634 to i32, !dbg !252
  %138 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !254
  %139 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %138) #10, !dbg !257
  %xor.i.i966 = xor i32 %139, 16, !dbg !258
  %140 = and i32 %139, -64, !dbg !259
  %and.i.i967 = add nsw i32 %140, 64, !dbg !259
  %cmp.not.i.i968 = icmp slt i32 %xor.i.i966, %and.i.i967, !dbg !260
  %cond.i.i969 = select i1 %cmp.not.i.i968, i32 %xor.i.i966, i32 %139, !dbg !261
  %shl.i.i970 = shl i32 %cond.i.i969, 2, !dbg !262
  %141 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i970, i32 %137), !dbg !263
  %142 = bitcast i32 %141 to float, !dbg !264
  %add639 = fadd contract float %add634, %142, !dbg !265
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !266
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !266
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !266
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !266
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %add639, !dbg !267
  %div659 = fdiv contract float %numerator.sroa.0.4.vec.extract, %add639, !dbg !268
  %div663 = fdiv contract float %numerator.sroa.0.8.vec.extract, %add639, !dbg !269
  %div667 = fdiv contract float %numerator.sroa.0.12.vec.extract, %add639, !dbg !270
  %numerator.sroa.20.16.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 0, !dbg !266
  %numerator.sroa.20.20.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 1, !dbg !266
  %numerator.sroa.20.24.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 2, !dbg !266
  %numerator.sroa.20.28.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 3, !dbg !266
  %div.1 = fdiv contract float %numerator.sroa.20.16.vec.extract, %add639, !dbg !267
  %div659.1 = fdiv contract float %numerator.sroa.20.20.vec.extract, %add639, !dbg !268
  %div663.1 = fdiv contract float %numerator.sroa.20.24.vec.extract, %add639, !dbg !269
  %div667.1 = fdiv contract float %numerator.sroa.20.28.vec.extract, %add639, !dbg !270
  %numerator.sroa.38.32.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 0, !dbg !266
  %numerator.sroa.38.36.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 1, !dbg !266
  %numerator.sroa.38.40.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 2, !dbg !266
  %numerator.sroa.38.44.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 3, !dbg !266
  %div.2 = fdiv contract float %numerator.sroa.38.32.vec.extract, %add639, !dbg !267
  %div659.2 = fdiv contract float %numerator.sroa.38.36.vec.extract, %add639, !dbg !268
  %div663.2 = fdiv contract float %numerator.sroa.38.40.vec.extract, %add639, !dbg !269
  %div667.2 = fdiv contract float %numerator.sroa.38.44.vec.extract, %add639, !dbg !270
  %numerator.sroa.56.48.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 0, !dbg !266
  %numerator.sroa.56.52.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 1, !dbg !266
  %numerator.sroa.56.56.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 2, !dbg !266
  %numerator.sroa.56.60.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 3, !dbg !266
  %div.3 = fdiv contract float %numerator.sroa.56.48.vec.extract, %add639, !dbg !267
  %div659.3 = fdiv contract float %numerator.sroa.56.52.vec.extract, %add639, !dbg !268
  %div663.3 = fdiv contract float %numerator.sroa.56.56.vec.extract, %add639, !dbg !269
  %div667.3 = fdiv contract float %numerator.sroa.56.60.vec.extract, %add639, !dbg !270
  fence syncscope("warp") release, !dbg !271
  tail call void @llvm.mxc.barrier.warp(), !dbg !274
  fence syncscope("warp") acquire, !dbg !275
  %xor716 = shl nuw nsw i32 %shr712918.pre-phi, 2
  %mul717 = and i32 %xor716, 4
  %143 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !280
  %144 = fptrunc float %div to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %143), !dbg !276, !noalias !280
  %145 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !285, !noalias !280
  %146 = fptrunc float %div659 to half, !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %145), !dbg !285, !noalias !280
  %147 = bitcast half %144 to i16, !dbg !287
  %148 = bitcast half %146 to i16, !dbg !290
  %149 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !291, !noalias !295
  %150 = fptrunc float %div663 to half, !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %149), !dbg !291, !noalias !295
  %151 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !300
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !300, !noalias !295
  %152 = fptrunc float %div667 to half, !dbg !300
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %151), !dbg !300, !noalias !295
  %153 = bitcast half %150 to i16, !dbg !302
  %154 = bitcast half %152 to i16, !dbg !304
  %__11.sroa.6.0.insert.ext = zext i16 %154 to i64, !dbg !305
  %__11.sroa.6.0.insert.shift = shl nuw i64 %__11.sroa.6.0.insert.ext, 48, !dbg !305
  %__11.sroa.5.0.insert.ext = zext i16 %153 to i64, !dbg !305
  %__11.sroa.5.0.insert.shift = shl nuw nsw i64 %__11.sroa.5.0.insert.ext, 32, !dbg !305
  %__11.sroa.5.0.insert.insert = or disjoint i64 %__11.sroa.6.0.insert.shift, %__11.sroa.5.0.insert.shift, !dbg !305
  %__11.sroa.4.0.insert.ext = zext i16 %148 to i64, !dbg !305
  %__11.sroa.4.0.insert.shift = shl nuw nsw i64 %__11.sroa.4.0.insert.ext, 16, !dbg !305
  %__11.sroa.4.0.insert.insert = or disjoint i64 %__11.sroa.5.0.insert.insert, %__11.sroa.4.0.insert.shift, !dbg !305
  %__11.sroa.0.0.insert.ext = zext i16 %147 to i64, !dbg !305
  %__11.sroa.0.0.insert.insert = or disjoint i64 %__11.sroa.4.0.insert.insert, %__11.sroa.0.0.insert.ext, !dbg !305
  %add718 = or disjoint i32 %add709.pre-phi, %mul717, !dbg !306
  %add.ptr720 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add718, !dbg !307
  store i64 %__11.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr720, align 8, !dbg !308
  %155 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !280
  %156 = fptrunc float %div.1 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %155), !dbg !276, !noalias !280
  %157 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !285, !noalias !280
  %158 = fptrunc float %div659.1 to half, !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %157), !dbg !285, !noalias !280
  %159 = bitcast half %156 to i16, !dbg !287
  %160 = bitcast half %158 to i16, !dbg !290
  %161 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !291, !noalias !295
  %162 = fptrunc float %div663.1 to half, !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %161), !dbg !291, !noalias !295
  %163 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !300
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !300, !noalias !295
  %164 = fptrunc float %div667.1 to half, !dbg !300
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %163), !dbg !300, !noalias !295
  %165 = bitcast half %162 to i16, !dbg !302
  %166 = bitcast half %164 to i16, !dbg !304
  %__11.sroa.6.0.insert.ext.1 = zext i16 %166 to i64, !dbg !305
  %__11.sroa.6.0.insert.shift.1 = shl nuw i64 %__11.sroa.6.0.insert.ext.1, 48, !dbg !305
  %__11.sroa.5.0.insert.ext.1 = zext i16 %165 to i64, !dbg !305
  %__11.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__11.sroa.5.0.insert.ext.1, 32, !dbg !305
  %__11.sroa.5.0.insert.insert.1 = or disjoint i64 %__11.sroa.6.0.insert.shift.1, %__11.sroa.5.0.insert.shift.1, !dbg !305
  %__11.sroa.4.0.insert.ext.1 = zext i16 %160 to i64, !dbg !305
  %__11.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__11.sroa.4.0.insert.ext.1, 16, !dbg !305
  %__11.sroa.4.0.insert.insert.1 = or disjoint i64 %__11.sroa.5.0.insert.insert.1, %__11.sroa.4.0.insert.shift.1, !dbg !305
  %__11.sroa.0.0.insert.ext.1 = zext i16 %159 to i64, !dbg !305
  %__11.sroa.0.0.insert.insert.1 = or disjoint i64 %__11.sroa.4.0.insert.insert.1, %__11.sroa.0.0.insert.ext.1, !dbg !305
  %add718.1 = or disjoint i32 %add709.1.pre-phi, %mul717, !dbg !306
  %add.ptr720.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add718.1, !dbg !307
  store i64 %__11.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr720.1, align 8, !dbg !308
  %167 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !280
  %168 = fptrunc float %div.2 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %167), !dbg !276, !noalias !280
  %169 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !285, !noalias !280
  %170 = fptrunc float %div659.2 to half, !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %169), !dbg !285, !noalias !280
  %171 = bitcast half %168 to i16, !dbg !287
  %172 = bitcast half %170 to i16, !dbg !290
  %173 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !291, !noalias !295
  %174 = fptrunc float %div663.2 to half, !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %173), !dbg !291, !noalias !295
  %175 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !300
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !300, !noalias !295
  %176 = fptrunc float %div667.2 to half, !dbg !300
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %175), !dbg !300, !noalias !295
  %177 = bitcast half %174 to i16, !dbg !302
  %178 = bitcast half %176 to i16, !dbg !304
  %__11.sroa.6.0.insert.ext.2 = zext i16 %178 to i64, !dbg !305
  %__11.sroa.6.0.insert.shift.2 = shl nuw i64 %__11.sroa.6.0.insert.ext.2, 48, !dbg !305
  %__11.sroa.5.0.insert.ext.2 = zext i16 %177 to i64, !dbg !305
  %__11.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__11.sroa.5.0.insert.ext.2, 32, !dbg !305
  %__11.sroa.5.0.insert.insert.2 = or disjoint i64 %__11.sroa.6.0.insert.shift.2, %__11.sroa.5.0.insert.shift.2, !dbg !305
  %__11.sroa.4.0.insert.ext.2 = zext i16 %172 to i64, !dbg !305
  %__11.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__11.sroa.4.0.insert.ext.2, 16, !dbg !305
  %__11.sroa.4.0.insert.insert.2 = or disjoint i64 %__11.sroa.5.0.insert.insert.2, %__11.sroa.4.0.insert.shift.2, !dbg !305
  %__11.sroa.0.0.insert.ext.2 = zext i16 %171 to i64, !dbg !305
  %__11.sroa.0.0.insert.insert.2 = or disjoint i64 %__11.sroa.4.0.insert.insert.2, %__11.sroa.0.0.insert.ext.2, !dbg !305
  %add718.2 = or disjoint i32 %add709.2.pre-phi, %mul717, !dbg !306
  %add.ptr720.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add718.2, !dbg !307
  store i64 %__11.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr720.2, align 8, !dbg !308
  %179 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !280
  %180 = fptrunc float %div.3 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %179), !dbg !276, !noalias !280
  %181 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !285, !noalias !280
  %182 = fptrunc float %div659.3 to half, !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %181), !dbg !285, !noalias !280
  %183 = bitcast half %180 to i16, !dbg !287
  %184 = bitcast half %182 to i16, !dbg !290
  %185 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !291, !noalias !295
  %186 = fptrunc float %div663.3 to half, !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %185), !dbg !291, !noalias !295
  %187 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !300
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !300, !noalias !295
  %188 = fptrunc float %div667.3 to half, !dbg !300
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %187), !dbg !300, !noalias !295
  %189 = bitcast half %186 to i16, !dbg !302
  %190 = bitcast half %188 to i16, !dbg !304
  %__11.sroa.6.0.insert.ext.3 = zext i16 %190 to i64, !dbg !305
  %__11.sroa.6.0.insert.shift.3 = shl nuw i64 %__11.sroa.6.0.insert.ext.3, 48, !dbg !305
  %__11.sroa.5.0.insert.ext.3 = zext i16 %189 to i64, !dbg !305
  %__11.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__11.sroa.5.0.insert.ext.3, 32, !dbg !305
  %__11.sroa.5.0.insert.insert.3 = or disjoint i64 %__11.sroa.6.0.insert.shift.3, %__11.sroa.5.0.insert.shift.3, !dbg !305
  %__11.sroa.4.0.insert.ext.3 = zext i16 %184 to i64, !dbg !305
  %__11.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__11.sroa.4.0.insert.ext.3, 16, !dbg !305
  %__11.sroa.4.0.insert.insert.3 = or disjoint i64 %__11.sroa.5.0.insert.insert.3, %__11.sroa.4.0.insert.shift.3, !dbg !305
  %__11.sroa.0.0.insert.ext.3 = zext i16 %183 to i64, !dbg !305
  %__11.sroa.0.0.insert.insert.3 = or disjoint i64 %__11.sroa.4.0.insert.insert.3, %__11.sroa.0.0.insert.ext.3, !dbg !305
  %add718.3 = or disjoint i32 %add709.3.pre-phi, %mul717, !dbg !306
  %add.ptr720.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add718.3, !dbg !307
  store i64 %__11.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr720.3, align 8, !dbg !308
  fence syncscope("warp") release, !dbg !309
  tail call void @llvm.mxc.barrier.warp(), !dbg !312
  fence syncscope("warp") acquire, !dbg !313
  %add761 = add nuw nsw i32 %.pre-phi, %mul
  %191 = zext nneg i32 %add761 to i64, !dbg !314
  %192 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul742.pre-phi, !dbg !315
  %193 = getelementptr inbounds %struct.__half, ptr addrspace(3) %192, i32 %mul735.pre-phi, !dbg !315
  %194 = load i64, ptr addrspace(3) %193, align 8, !dbg !316
  %add.ptr748.1 = getelementptr inbounds i8, ptr addrspace(3) %193, i32 8, !dbg !315
  %195 = load i64, ptr addrspace(3) %add.ptr748.1, align 8, !dbg !316
  %add.ptr766 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %191, !dbg !317
  store i64 %194, ptr addrspace(1) %add.ptr766, align 16, !dbg !318
  %output_fetch.sroa.6.0.add.ptr766.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr766, i64 8, !dbg !318
  store i64 %195, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr766.sroa_idx, align 8, !dbg !318
  %196 = getelementptr inbounds i8, ptr addrspace(3) %193, i32 1024, !dbg !315
  %add.ptr748.11108 = getelementptr inbounds i8, ptr addrspace(3) %193, i32 1032, !dbg !315
  %197 = load i64, ptr addrspace(3) %add.ptr748.11108, align 8, !dbg !316
  %198 = load i64, ptr addrspace(3) %196, align 8, !dbg !316
  %199 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %191, !dbg !317
  %add.ptr766.1 = getelementptr inbounds i8, ptr addrspace(1) %199, i64 1024, !dbg !317
  store i64 %197, ptr addrspace(1) %add.ptr766.1, align 16, !dbg !318
  %output_fetch.sroa.6.0.add.ptr766.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %199, i64 1032, !dbg !318
  store i64 %198, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr766.1.sroa_idx, align 8, !dbg !318
  ret void, !dbg !319
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

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare i32 @llvm.mxc.bsm.bpermute(i32, i32) #4

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare i32 @llvm.mxc.mbcnt.lo(i32, i32) #4

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare i32 @llvm.mxc.mbcnt.hi(i32, i32) #4

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.mxc.barrier.warp() #6

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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v208_worker2_c9_q_register_transpose_subagent2/codegen/power_v208/case9_stage1.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v208_worker2_c9_q_register_transpose_subagent2/codegen/power_v208/case9_stage1.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 28, column: 3, scope: !40)
!44 = !DILocation(line: 29, column: 51, scope: !40)
!45 = !DILocation(line: 29, column: 37, scope: !40)
!46 = !DILocation(line: 29, column: 155, scope: !40)
!47 = !DILocation(line: 36, column: 11, scope: !40)
!48 = !DILocation(line: 0, scope: !40)
!49 = !DILocation(line: 43, column: 11, scope: !40)
!50 = !DILocation(line: 49, column: 32, scope: !40)
!51 = !DILocation(line: 49, column: 69, scope: !40)
!52 = !DILocation(line: 49, column: 96, scope: !40)
!53 = !DILocation(line: 49, column: 59, scope: !40)
!54 = !DILocation(line: 171, column: 37, scope: !55, inlinedAt: !57)
!55 = distinct !DISubprogram(name: "__lane_id", scope: !56, file: !56, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!56 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!57 = distinct !DILocation(line: 990, column: 14, scope: !58, inlinedAt: !59)
!58 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !56, file: !56, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!59 = distinct !DILocation(line: 1006, column: 11, scope: !60, inlinedAt: !61)
!60 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !56, file: !56, line: 996, type: !7, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!61 = distinct !DILocation(line: 50, column: 41, scope: !40)
!62 = !DILocation(line: 171, column: 10, scope: !55, inlinedAt: !57)
!63 = !DILocation(line: 991, column: 20, scope: !58, inlinedAt: !59)
!64 = !DILocation(line: 992, column: 36, scope: !58, inlinedAt: !59)
!65 = !DILocation(line: 992, column: 17, scope: !58, inlinedAt: !59)
!66 = !DILocation(line: 992, column: 11, scope: !58, inlinedAt: !59)
!67 = !DILocation(line: 993, column: 43, scope: !58, inlinedAt: !59)
!68 = !DILocation(line: 993, column: 10, scope: !58, inlinedAt: !59)
!69 = !DILocation(line: 67, column: 11, scope: !40)
!70 = !DILocation(line: 80, column: 11, scope: !40)
!71 = !DILocation(line: 87, column: 11, scope: !40)
!72 = !DILocation(line: 93, column: 102, scope: !40)
!73 = !DILocation(line: 93, column: 34, scope: !40)
!74 = !DILocation(line: 93, column: 63, scope: !40)
!75 = !DILocation(line: 171, column: 37, scope: !55, inlinedAt: !76)
!76 = distinct !DILocation(line: 990, column: 14, scope: !58, inlinedAt: !77)
!77 = distinct !DILocation(line: 1006, column: 11, scope: !60, inlinedAt: !78)
!78 = distinct !DILocation(line: 94, column: 45, scope: !40)
!79 = !DILocation(line: 171, column: 10, scope: !55, inlinedAt: !76)
!80 = !DILocation(line: 991, column: 20, scope: !58, inlinedAt: !77)
!81 = !DILocation(line: 992, column: 36, scope: !58, inlinedAt: !77)
!82 = !DILocation(line: 992, column: 17, scope: !58, inlinedAt: !77)
!83 = !DILocation(line: 992, column: 11, scope: !58, inlinedAt: !77)
!84 = !DILocation(line: 993, column: 43, scope: !58, inlinedAt: !77)
!85 = !DILocation(line: 993, column: 10, scope: !58, inlinedAt: !77)
!86 = !DILocation(line: 126, column: 22, scope: !40)
!87 = !DILocation(line: 126, column: 49, scope: !40)
!88 = !DILocation(line: 127, column: 10, scope: !40)
!89 = !DILocation(line: 127, column: 26, scope: !40)
!90 = !DILocation(line: 249, column: 107, scope: !40)
!91 = !DILocation(line: 249, column: 135, scope: !40)
!92 = !DILocation(line: 249, column: 59, scope: !40)
!93 = !DILocation(line: 249, column: 78, scope: !40)
!94 = !DILocation(line: 111, column: 11, scope: !40)
!95 = !DILocation(line: 116, column: 61, scope: !40)
!96 = !DILocation(line: 68, column: 3, scope: !97, inlinedAt: !98)
!97 = distinct !DISubprogram(name: "__barrier_warp", scope: !56, file: !56, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!98 = distinct !DILocation(line: 192, column: 3, scope: !99, inlinedAt: !100)
!99 = distinct !DISubprogram(name: "__syncwarp", scope: !56, file: !56, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!100 = distinct !DILocation(line: 128, column: 5, scope: !40)
!101 = !DILocation(line: 69, column: 3, scope: !97, inlinedAt: !98)
!102 = !DILocation(line: 70, column: 3, scope: !97, inlinedAt: !98)
!103 = !DILocation(line: 130, column: 10, scope: !40)
!104 = !DILocation(line: 131, column: 45, scope: !40)
!105 = !DILocation(line: 131, column: 31, scope: !40)
!106 = !DILocation(line: 134, column: 26, scope: !40)
!107 = !DILocation(line: 134, column: 209, scope: !40)
!108 = !DILocation(line: 68, column: 3, scope: !97, inlinedAt: !109)
!109 = distinct !DILocation(line: 192, column: 3, scope: !99, inlinedAt: !110)
!110 = distinct !DILocation(line: 137, column: 5, scope: !40)
!111 = !DILocation(line: 69, column: 3, scope: !97, inlinedAt: !109)
!112 = !DILocation(line: 70, column: 3, scope: !97, inlinedAt: !109)
!113 = !DILocation(line: 142, column: 132, scope: !40)
!114 = !DILocation(line: 142, column: 160, scope: !40)
!115 = !DILocation(line: 142, column: 86, scope: !40)
!116 = !DILocation(line: 142, column: 166, scope: !40)
!117 = !DILocation(line: 142, column: 49, scope: !40)
!118 = !DILocation(line: 142, column: 30, scope: !40)
!119 = !DILocation(line: 145, column: 21, scope: !40)
!120 = !DILocation(line: 144, column: 37, scope: !40)
!121 = !DILocation(line: 142, column: 103, scope: !40)
!122 = !DILocation(line: 152, column: 74, scope: !40)
!123 = !DILocation(line: 152, column: 11, scope: !40)
!124 = !DILocation(line: 152, column: 61, scope: !40)
!125 = !DILocation(line: 351, column: 10, scope: !126, inlinedAt: !128)
!126 = distinct !DISubprogram(name: "max", scope: !127, file: !127, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!127 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!128 = distinct !DILocation(line: 162, column: 20, scope: !40)
!129 = !DILocation(line: 1018, column: 9, scope: !130, inlinedAt: !131)
!130 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !56, file: !56, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!131 = distinct !DILocation(line: 164, column: 34, scope: !40)
!132 = !DILocation(line: 171, column: 37, scope: !55, inlinedAt: !133)
!133 = distinct !DILocation(line: 990, column: 14, scope: !58, inlinedAt: !134)
!134 = distinct !DILocation(line: 1019, column: 11, scope: !130, inlinedAt: !131)
!135 = !DILocation(line: 171, column: 10, scope: !55, inlinedAt: !133)
!136 = !DILocation(line: 991, column: 20, scope: !58, inlinedAt: !134)
!137 = !DILocation(line: 992, column: 36, scope: !58, inlinedAt: !134)
!138 = !DILocation(line: 992, column: 17, scope: !58, inlinedAt: !134)
!139 = !DILocation(line: 992, column: 11, scope: !58, inlinedAt: !134)
!140 = !DILocation(line: 993, column: 43, scope: !58, inlinedAt: !134)
!141 = !DILocation(line: 993, column: 10, scope: !58, inlinedAt: !134)
!142 = !DILocation(line: 1020, column: 14, scope: !130, inlinedAt: !131)
!143 = !DILocation(line: 351, column: 10, scope: !126, inlinedAt: !144)
!144 = distinct !DILocation(line: 164, column: 18, scope: !40)
!145 = !DILocation(line: 1018, column: 9, scope: !130, inlinedAt: !146)
!146 = distinct !DILocation(line: 165, column: 34, scope: !40)
!147 = !DILocation(line: 171, column: 37, scope: !55, inlinedAt: !148)
!148 = distinct !DILocation(line: 990, column: 14, scope: !58, inlinedAt: !149)
!149 = distinct !DILocation(line: 1019, column: 11, scope: !130, inlinedAt: !146)
!150 = !DILocation(line: 171, column: 10, scope: !55, inlinedAt: !148)
!151 = !DILocation(line: 991, column: 20, scope: !58, inlinedAt: !149)
!152 = !DILocation(line: 992, column: 36, scope: !58, inlinedAt: !149)
!153 = !DILocation(line: 992, column: 17, scope: !58, inlinedAt: !149)
!154 = !DILocation(line: 992, column: 11, scope: !58, inlinedAt: !149)
!155 = !DILocation(line: 993, column: 43, scope: !58, inlinedAt: !149)
!156 = !DILocation(line: 993, column: 10, scope: !58, inlinedAt: !149)
!157 = !DILocation(line: 1020, column: 14, scope: !130, inlinedAt: !146)
!158 = !DILocation(line: 351, column: 10, scope: !126, inlinedAt: !159)
!159 = distinct !DILocation(line: 165, column: 18, scope: !40)
!160 = !DILocation(line: 175, column: 26, scope: !40)
!161 = !DILocation(line: 176, column: 26, scope: !40)
!162 = !DILocation(line: 177, column: 26, scope: !40)
!163 = !DILocation(line: 178, column: 26, scope: !40)
!164 = !DILocation(line: 180, column: 23, scope: !40)
!165 = !DILocation(line: 181, column: 23, scope: !40)
!166 = !DILocation(line: 182, column: 23, scope: !40)
!167 = !DILocation(line: 183, column: 23, scope: !40)
!168 = !DILocation(line: 185, column: 21, scope: !40)
!169 = !DILocation(line: 186, column: 21, scope: !40)
!170 = !DILocation(line: 187, column: 21, scope: !40)
!171 = !DILocation(line: 188, column: 21, scope: !40)
!172 = !DILocation(line: 285, column: 49, scope: !173, inlinedAt: !174)
!173 = distinct !DISubprogram(name: "exp2f", scope: !127, file: !127, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!174 = distinct !DILocation(line: 189, column: 13, scope: !40)
!175 = !DILocation(line: 285, column: 49, scope: !173, inlinedAt: !176)
!176 = distinct !DILocation(line: 190, column: 13, scope: !40)
!177 = !DILocation(line: 285, column: 49, scope: !173, inlinedAt: !178)
!178 = distinct !DILocation(line: 191, column: 13, scope: !40)
!179 = !DILocation(line: 285, column: 49, scope: !173, inlinedAt: !180)
!180 = distinct !DILocation(line: 192, column: 13, scope: !40)
!181 = !DILocation(line: 1007, column: 10, scope: !182, inlinedAt: !184)
!182 = distinct !DISubprogram(name: "__float2half_rn", scope: !183, file: !183, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!183 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!184 = distinct !DILocation(line: 1077, column: 18, scope: !185, inlinedAt: !186)
!185 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !183, file: !183, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!186 = distinct !DILocation(line: 1295, column: 23, scope: !187, inlinedAt: !188)
!187 = distinct !DISubprogram(name: "__float22half2_rn", scope: !183, file: !183, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!188 = distinct !DILocation(line: 193, column: 27, scope: !40)
!189 = !{!190, !192}
!190 = distinct !{!190, !191, !"_ZL17__floats2half2_rnff: %agg.result"}
!191 = distinct !{!191, !"_ZL17__floats2half2_rnff"}
!192 = distinct !{!192, !193, !"_ZL17__float22half2_rn6float2: %agg.result"}
!193 = distinct !{!193, !"_ZL17__float22half2_rn6float2"}
!194 = !DILocation(line: 1007, column: 10, scope: !182, inlinedAt: !195)
!195 = distinct !DILocation(line: 1077, column: 38, scope: !185, inlinedAt: !186)
!196 = !DILocation(line: 1007, column: 10, scope: !182, inlinedAt: !197)
!197 = distinct !DILocation(line: 1077, column: 18, scope: !185, inlinedAt: !198)
!198 = distinct !DILocation(line: 1295, column: 23, scope: !187, inlinedAt: !199)
!199 = distinct !DILocation(line: 194, column: 27, scope: !40)
!200 = !{!201, !203}
!201 = distinct !{!201, !202, !"_ZL17__floats2half2_rnff: %agg.result"}
!202 = distinct !{!202, !"_ZL17__floats2half2_rnff"}
!203 = distinct !{!203, !204, !"_ZL17__float22half2_rn6float2: %agg.result"}
!204 = distinct !{!204, !"_ZL17__float22half2_rn6float2"}
!205 = !DILocation(line: 1007, column: 10, scope: !182, inlinedAt: !206)
!206 = distinct !DILocation(line: 1077, column: 38, scope: !185, inlinedAt: !198)
!207 = !DILocation(line: 195, column: 34, scope: !40)
!208 = !DILocation(line: 1082, column: 16, scope: !209, inlinedAt: !210)
!209 = distinct !DISubprogram(name: "__half2float", scope: !183, file: !183, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!210 = distinct !DILocation(line: 136, column: 55, scope: !211, inlinedAt: !212)
!211 = distinct !DISubprogram(name: "operator float", scope: !183, file: !183, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!212 = distinct !DILocation(line: 199, column: 50, scope: !40)
!213 = !DILocation(line: 199, column: 40, scope: !40)
!214 = !DILocation(line: 68, column: 3, scope: !97, inlinedAt: !215)
!215 = distinct !DILocation(line: 192, column: 3, scope: !99, inlinedAt: !216)
!216 = distinct !DILocation(line: 202, column: 5, scope: !40)
!217 = !DILocation(line: 69, column: 3, scope: !97, inlinedAt: !215)
!218 = !DILocation(line: 70, column: 3, scope: !97, inlinedAt: !215)
!219 = !DILocation(line: 205, column: 196, scope: !40)
!220 = !DILocation(line: 205, column: 52, scope: !40)
!221 = !DILocation(line: 205, column: 38, scope: !40)
!222 = !DILocation(line: 212, column: 133, scope: !40)
!223 = !DILocation(line: 212, column: 218, scope: !40)
!224 = !DILocation(line: 212, column: 139, scope: !40)
!225 = !DILocation(line: 212, column: 224, scope: !40)
!226 = !DILocation(line: 212, column: 24, scope: !40)
!227 = !DILocation(line: 212, column: 267, scope: !40)
!228 = !DILocation(line: 68, column: 3, scope: !97, inlinedAt: !229)
!229 = distinct !DILocation(line: 192, column: 3, scope: !99, inlinedAt: !230)
!230 = distinct !DILocation(line: 214, column: 5, scope: !40)
!231 = !DILocation(line: 69, column: 3, scope: !97, inlinedAt: !229)
!232 = !DILocation(line: 70, column: 3, scope: !97, inlinedAt: !229)
!233 = !DILocation(line: 217, column: 191, scope: !40)
!234 = !DILocation(line: 217, column: 63, scope: !40)
!235 = !DILocation(line: 217, column: 44, scope: !40)
!236 = !DILocation(line: 222, column: 46, scope: !40)
!237 = !DILocation(line: 201, column: 38, scope: !40)
!238 = !DILocation(line: 1018, column: 9, scope: !130, inlinedAt: !239)
!239 = distinct !DILocation(line: 228, column: 38, scope: !40)
!240 = !DILocation(line: 171, column: 37, scope: !55, inlinedAt: !241)
!241 = distinct !DILocation(line: 990, column: 14, scope: !58, inlinedAt: !242)
!242 = distinct !DILocation(line: 1019, column: 11, scope: !130, inlinedAt: !239)
!243 = !DILocation(line: 171, column: 10, scope: !55, inlinedAt: !241)
!244 = !DILocation(line: 991, column: 20, scope: !58, inlinedAt: !242)
!245 = !DILocation(line: 992, column: 36, scope: !58, inlinedAt: !242)
!246 = !DILocation(line: 992, column: 17, scope: !58, inlinedAt: !242)
!247 = !DILocation(line: 992, column: 11, scope: !58, inlinedAt: !242)
!248 = !DILocation(line: 993, column: 43, scope: !58, inlinedAt: !242)
!249 = !DILocation(line: 993, column: 10, scope: !58, inlinedAt: !242)
!250 = !DILocation(line: 1020, column: 14, scope: !130, inlinedAt: !239)
!251 = !DILocation(line: 228, column: 36, scope: !40)
!252 = !DILocation(line: 1018, column: 9, scope: !130, inlinedAt: !253)
!253 = distinct !DILocation(line: 229, column: 38, scope: !40)
!254 = !DILocation(line: 171, column: 37, scope: !55, inlinedAt: !255)
!255 = distinct !DILocation(line: 990, column: 14, scope: !58, inlinedAt: !256)
!256 = distinct !DILocation(line: 1019, column: 11, scope: !130, inlinedAt: !253)
!257 = !DILocation(line: 171, column: 10, scope: !55, inlinedAt: !255)
!258 = !DILocation(line: 991, column: 20, scope: !58, inlinedAt: !256)
!259 = !DILocation(line: 992, column: 36, scope: !58, inlinedAt: !256)
!260 = !DILocation(line: 992, column: 17, scope: !58, inlinedAt: !256)
!261 = !DILocation(line: 992, column: 11, scope: !58, inlinedAt: !256)
!262 = !DILocation(line: 993, column: 43, scope: !58, inlinedAt: !256)
!263 = !DILocation(line: 993, column: 10, scope: !58, inlinedAt: !256)
!264 = !DILocation(line: 1020, column: 14, scope: !130, inlinedAt: !253)
!265 = !DILocation(line: 229, column: 36, scope: !40)
!266 = !DILocation(line: 233, column: 21, scope: !40)
!267 = !DILocation(line: 235, column: 23, scope: !40)
!268 = !DILocation(line: 236, column: 23, scope: !40)
!269 = !DILocation(line: 237, column: 23, scope: !40)
!270 = !DILocation(line: 238, column: 23, scope: !40)
!271 = !DILocation(line: 68, column: 3, scope: !97, inlinedAt: !272)
!272 = distinct !DILocation(line: 192, column: 3, scope: !99, inlinedAt: !273)
!273 = distinct !DILocation(line: 241, column: 3, scope: !40)
!274 = !DILocation(line: 69, column: 3, scope: !97, inlinedAt: !272)
!275 = !DILocation(line: 70, column: 3, scope: !97, inlinedAt: !272)
!276 = !DILocation(line: 1007, column: 10, scope: !182, inlinedAt: !277)
!277 = distinct !DILocation(line: 1077, column: 18, scope: !185, inlinedAt: !278)
!278 = distinct !DILocation(line: 1295, column: 23, scope: !187, inlinedAt: !279)
!279 = distinct !DILocation(line: 246, column: 28, scope: !40)
!280 = !{!281, !283}
!281 = distinct !{!281, !282, !"_ZL17__floats2half2_rnff: %agg.result"}
!282 = distinct !{!282, !"_ZL17__floats2half2_rnff"}
!283 = distinct !{!283, !284, !"_ZL17__float22half2_rn6float2: %agg.result"}
!284 = distinct !{!284, !"_ZL17__float22half2_rn6float2"}
!285 = !DILocation(line: 1007, column: 10, scope: !182, inlinedAt: !286)
!286 = distinct !DILocation(line: 1077, column: 38, scope: !185, inlinedAt: !278)
!287 = !DILocation(line: 596, column: 67, scope: !288, inlinedAt: !289)
!288 = distinct !DISubprogram(name: "__half2", scope: !183, file: !183, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!289 = distinct !DILocation(line: 1077, column: 10, scope: !185, inlinedAt: !278)
!290 = !DILocation(line: 596, column: 73, scope: !288, inlinedAt: !289)
!291 = !DILocation(line: 1007, column: 10, scope: !182, inlinedAt: !292)
!292 = distinct !DILocation(line: 1077, column: 18, scope: !185, inlinedAt: !293)
!293 = distinct !DILocation(line: 1295, column: 23, scope: !187, inlinedAt: !294)
!294 = distinct !DILocation(line: 247, column: 28, scope: !40)
!295 = !{!296, !298}
!296 = distinct !{!296, !297, !"_ZL17__floats2half2_rnff: %agg.result"}
!297 = distinct !{!297, !"_ZL17__floats2half2_rnff"}
!298 = distinct !{!298, !299, !"_ZL17__float22half2_rn6float2: %agg.result"}
!299 = distinct !{!299, !"_ZL17__float22half2_rn6float2"}
!300 = !DILocation(line: 1007, column: 10, scope: !182, inlinedAt: !301)
!301 = distinct !DILocation(line: 1077, column: 38, scope: !185, inlinedAt: !293)
!302 = !DILocation(line: 596, column: 67, scope: !288, inlinedAt: !303)
!303 = distinct !DILocation(line: 1077, column: 10, scope: !185, inlinedAt: !293)
!304 = !DILocation(line: 596, column: 73, scope: !288, inlinedAt: !303)
!305 = !DILocation(line: 248, column: 38, scope: !40)
!306 = !DILocation(line: 249, column: 141, scope: !40)
!307 = !DILocation(line: 249, column: 22, scope: !40)
!308 = !DILocation(line: 249, column: 221, scope: !40)
!309 = !DILocation(line: 68, column: 3, scope: !97, inlinedAt: !310)
!310 = distinct !DILocation(line: 192, column: 3, scope: !99, inlinedAt: !311)
!311 = distinct !DILocation(line: 251, column: 3, scope: !40)
!312 = !DILocation(line: 69, column: 3, scope: !97, inlinedAt: !310)
!313 = !DILocation(line: 70, column: 3, scope: !97, inlinedAt: !310)
!314 = !DILocation(line: 253, column: 3, scope: !40)
!315 = !DILocation(line: 256, column: 65, scope: !40)
!316 = !DILocation(line: 256, column: 46, scope: !40)
!317 = !DILocation(line: 258, column: 22, scope: !40)
!318 = !DILocation(line: 258, column: 100, scope: !40)
!319 = !DILocation(line: 260, column: 1, scope: !40)
