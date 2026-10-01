; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v053_codex_power_s8_half_partial_stream_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v053_codex_power_s8_half_partial_stream_sc-16g-2/codegen/case12.device.cpp"
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
  %0 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.y(), !dbg !42, !range !29
  %mul = shl nsw i32 %0, 20, !dbg !46
  %1 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !dbg !47, !range !29
  %mul7 = shl nsw i32 %1, 10, !dbg !50
  %add = add nuw nsw i32 %mul, %mul7, !dbg !51
  %2 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !dbg !52, !range !55
  %mul9 = shl nuw nsw i32 %2, 2, !dbg !56
  %add10 = add nuw nsw i32 %add, %mul9, !dbg !57
  %idx.ext = zext nneg i32 %add10 to i64, !dbg !58
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %idx.ext, !dbg !58
  %and = lshr i32 %2, 1, !dbg !59
  %and16 = lshr i32 %2, 4, !dbg !60
  %shr141041 = xor i32 %and, %and16, !dbg !61
  %xor = shl nuw nsw i32 %shr141041, 3, !dbg !62
  %mul18 = and i32 %xor, 56, !dbg !62
  %3 = and i32 %mul9, 4036, !dbg !63
  %add23 = or disjoint i32 %mul18, %3, !dbg !63
  %add.ptr25 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add23, !dbg !64
  %4 = load i64, ptr addrspace(4) %add.ptr, align 8, !dbg !65
  store i64 %4, ptr addrspace(3) %add.ptr25, align 8, !dbg !65
  fence syncscope("block") release, !dbg !66
  tail call void @llvm.mxc.barrier(), !dbg !72
  fence syncscope("block") acquire, !dbg !73
  %and27 = shl nuw nsw i32 %2, 6
  %mul28 = and i32 %and27, 960
  %and31 = lshr i32 %2, 5
  %shr32 = and i32 %and31, 1
  %and35 = and i32 %2, 7
  %5 = lshr i32 %2, 2
  %mul42 = and i32 %5, 4
  %xor36 = xor i32 %shr32, %and35, !dbg !74
  %mul37 = shl nuw nsw i32 %xor36, 3, !dbg !75
  %add38 = or disjoint i32 %mul37, %mul28, !dbg !76
  %add43 = or disjoint i32 %add38, %mul42, !dbg !77
  %add.ptr45 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add43, !dbg !78
  %6 = load <4 x half>, ptr addrspace(3) %add.ptr45, align 8, !dbg !79
  %add33.1 = or disjoint i32 %shr32, 2, !dbg !80
  %xor36.1 = xor i32 %add33.1, %and35, !dbg !74
  %mul37.1 = shl nuw nsw i32 %xor36.1, 3, !dbg !75
  %add38.1 = or disjoint i32 %mul37.1, %mul28, !dbg !76
  %add43.1 = or disjoint i32 %add38.1, %mul42, !dbg !77
  %add.ptr45.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add43.1, !dbg !78
  %7 = load <4 x half>, ptr addrspace(3) %add.ptr45.1, align 8, !dbg !79
  %add33.2 = or disjoint i32 %shr32, 4, !dbg !80
  %xor36.2 = xor i32 %add33.2, %and35, !dbg !74
  %mul37.2 = shl nuw nsw i32 %xor36.2, 3, !dbg !75
  %add38.2 = or disjoint i32 %mul37.2, %mul28, !dbg !76
  %add43.2 = or disjoint i32 %add38.2, %mul42, !dbg !77
  %add.ptr45.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add43.2, !dbg !78
  %8 = load <4 x half>, ptr addrspace(3) %add.ptr45.2, align 8, !dbg !79
  %add33.3 = or disjoint i32 %shr32, 6, !dbg !80
  %xor36.3 = xor i32 %add33.3, %and35, !dbg !74
  %mul37.3 = shl nuw nsw i32 %xor36.3, 3, !dbg !75
  %add38.3 = or disjoint i32 %mul37.3, %mul28, !dbg !76
  %add43.3 = or disjoint i32 %add38.3, %mul42, !dbg !77
  %add.ptr45.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add43.3, !dbg !78
  %9 = load <4 x half>, ptr addrspace(3) %add.ptr45.3, align 8, !dbg !79
  fence syncscope("block") release, !dbg !81
  tail call void @llvm.mxc.barrier(), !dbg !84
  fence syncscope("block") acquire, !dbg !85
  %mul70 = shl nsw i32 %0, 13
  %mul72 = shl nsw i32 %1, 3
  %add73 = add nuw nsw i32 %mul70, %mul72
  %mul76 = and i32 %and31, 30
  %add77 = add nuw nsw i32 %add73, %mul76
  %10 = shl nuw nsw i32 %2, 4
  %mul132 = and i32 %10, 15360
  %11 = shl nuw nsw i32 %2, 3
  %mul138 = and i32 %11, 448
  %xor145 = xor i32 %11, %2
  %mul146 = and i32 %xor145, 56
  %conv = zext nneg i32 %0 to i64
  %mul97 = shl nuw nsw i64 %conv, 16
  %12 = and i32 %11, 504
  %mul107 = zext nneg i32 %12 to i64
  %add100 = or disjoint i64 %mul97, %mul107
  %add167 = or disjoint i32 %mul132, %mul28
  %mul206 = and i32 %5, 12
  %13 = and i32 %10, 768
  %14 = and i32 %mul9, 60
  %15 = or disjoint i32 %13, %14
  %16 = zext nneg i32 %15 to i64
  %add427 = or disjoint i64 %mul97, %16
  %17 = and i32 %10, 15600
  %shr4881046 = xor i32 %and16, %5
  %xor492 = and i32 %shr4881046, 3
  %and509 = shl nuw nsw i32 %2, 8
  %mul510 = and i32 %and509, 768
  %add511 = or disjoint i32 %mul132, %mul510
  %mul517 = and i32 %mul9, 48
  %shr5211045 = xor i32 %and16, %2
  %18 = and i32 %shr5211045, 3
  %19 = zext nneg i32 %add77 to i64, !dbg !86
  %arrayidx79 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %19, !dbg !87
  %20 = load i32, ptr addrspace(1) %arrayidx79, align 4, !dbg !87, !tbaa !30
  %mul80 = shl nsw i32 %20, 4, !dbg !88
  %cmp81 = icmp slt i32 %20, 0, !dbg !89
  %cmp83.not = icmp sgt i32 %mul80, %1
  %or.cond = select i1 %cmp81, i1 true, i1 %cmp83.not, !dbg !90
  br i1 %or.cond, label %if.end555, label %if.then, !dbg !90

if.then:                                          ; preds = %entry
  fence syncscope("warp") release, !dbg !91
  tail call void @llvm.mxc.barrier.warp(), !dbg !96
  fence syncscope("warp") acquire, !dbg !97
  %conv101 = zext nneg i32 %mul80 to i64
  %cmp94 = icmp ult i32 %mul80, 1024, !dbg !98
  br i1 %cmp94, label %if.then95, label %if.end, !dbg !99

if.then95:                                        ; preds = %if.then
  %21 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add100, !dbg !100
  %.idx = shl nuw nsw i64 %conv101, 7, !dbg !100
  %22 = getelementptr inbounds i8, ptr addrspace(4) %21, i64 %.idx, !dbg !100
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %22, align 16, !dbg !101, !tbaa !30
  %condval.sroa.5.0.add.ptr109.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %22, i64 4, !dbg !101
  %condval.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr109.sroa_idx, align 4, !dbg !101, !tbaa !30
  %condval.sroa.6.0.add.ptr109.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %22, i64 8, !dbg !101
  %condval.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr109.sroa_idx, align 8, !dbg !101, !tbaa !30
  %condval.sroa.7.0.add.ptr109.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %22, i64 12, !dbg !101
  %condval.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr109.sroa_idx, align 4, !dbg !101, !tbaa !30
  br label %if.end, !dbg !102

if.end:                                           ; preds = %if.then, %if.then95
  %condval.sroa.0.0 = phi i32 [ %condval.sroa.0.0.copyload, %if.then95 ], [ 0, %if.then ], !dbg !103
  %condval.sroa.5.0 = phi i32 [ %condval.sroa.5.0.copyload, %if.then95 ], [ 0, %if.then ], !dbg !103
  %condval.sroa.6.0 = phi i32 [ %condval.sroa.6.0.copyload, %if.then95 ], [ 0, %if.then ], !dbg !103
  %condval.sroa.7.0 = phi i32 [ %condval.sroa.7.0.copyload, %if.then95 ], [ 0, %if.then ], !dbg !103
  %23 = or disjoint i32 %mul132, %mul138, !dbg !104
  %24 = or disjoint i32 %23, %mul146, !dbg !105
  %add.ptr149 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %24, !dbg !106
  store i32 %condval.sroa.0.0, ptr addrspace(3) %add.ptr149, align 16, !dbg !107, !tbaa !30
  %condval.sroa.5.0.add.ptr149.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr149, i32 4, !dbg !107
  store i32 %condval.sroa.5.0, ptr addrspace(3) %condval.sroa.5.0.add.ptr149.sroa_idx, align 4, !dbg !107, !tbaa !30
  %condval.sroa.6.0.add.ptr149.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr149, i32 8, !dbg !107
  store i32 %condval.sroa.6.0, ptr addrspace(3) %condval.sroa.6.0.add.ptr149.sroa_idx, align 8, !dbg !107, !tbaa !30
  %condval.sroa.7.0.add.ptr149.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr149, i32 12, !dbg !107
  store i32 %condval.sroa.7.0, ptr addrspace(3) %condval.sroa.7.0.add.ptr149.sroa_idx, align 4, !dbg !107, !tbaa !30
  %cmp94.1 = icmp ult i32 %mul80, 1024, !dbg !98
  br i1 %cmp94.1, label %if.then95.1, label %if.end.1, !dbg !99

if.then95.1:                                      ; preds = %if.end
  %25 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add100, !dbg !100
  %.idx.1 = shl nuw nsw i64 %conv101, 7, !dbg !100
  %26 = getelementptr inbounds i8, ptr addrspace(4) %25, i64 %.idx.1, !dbg !100
  %add.ptr109.1 = getelementptr inbounds i8, ptr addrspace(4) %26, i64 1024, !dbg !100
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %add.ptr109.1, align 16, !dbg !101, !tbaa !30
  %condval.sroa.5.0.add.ptr109.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %26, i64 1028, !dbg !101
  %condval.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr109.sroa_idx.1, align 4, !dbg !101, !tbaa !30
  %condval.sroa.6.0.add.ptr109.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %26, i64 1032, !dbg !101
  %condval.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr109.sroa_idx.1, align 8, !dbg !101, !tbaa !30
  %condval.sroa.7.0.add.ptr109.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %26, i64 1036, !dbg !101
  %condval.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr109.sroa_idx.1, align 4, !dbg !101, !tbaa !30
  br label %if.end.1, !dbg !102

if.end.1:                                         ; preds = %if.then95.1, %if.end
  %condval.sroa.0.0.1 = phi i32 [ %condval.sroa.0.0.copyload.1, %if.then95.1 ], [ 0, %if.end ], !dbg !103
  %condval.sroa.5.0.1 = phi i32 [ %condval.sroa.5.0.copyload.1, %if.then95.1 ], [ 0, %if.end ], !dbg !103
  %condval.sroa.6.0.1 = phi i32 [ %condval.sroa.6.0.copyload.1, %if.then95.1 ], [ 0, %if.end ], !dbg !103
  %condval.sroa.7.0.1 = phi i32 [ %condval.sroa.7.0.copyload.1, %if.then95.1 ], [ 0, %if.end ], !dbg !103
  %27 = or disjoint i32 %mul132, %mul138, !dbg !104
  %28 = or disjoint i32 %27, %mul146, !dbg !105
  %29 = or disjoint i32 %28, 512, !dbg !105
  %add.ptr149.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %29, !dbg !106
  store i32 %condval.sroa.0.0.1, ptr addrspace(3) %add.ptr149.1, align 16, !dbg !107, !tbaa !30
  %condval.sroa.5.0.add.ptr149.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr149.1, i32 4, !dbg !107
  store i32 %condval.sroa.5.0.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr149.sroa_idx.1, align 4, !dbg !107, !tbaa !30
  %condval.sroa.6.0.add.ptr149.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr149.1, i32 8, !dbg !107
  store i32 %condval.sroa.6.0.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr149.sroa_idx.1, align 8, !dbg !107, !tbaa !30
  %condval.sroa.7.0.add.ptr149.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr149.1, i32 12, !dbg !107
  store i32 %condval.sroa.7.0.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr149.sroa_idx.1, align 4, !dbg !107, !tbaa !30
  fence syncscope("warp") release, !dbg !108
  tail call void @llvm.mxc.barrier.warp(), !dbg !111
  fence syncscope("warp") acquire, !dbg !112
  %add177 = or disjoint i32 %mul37, %add167, !dbg !113
  %add182 = or disjoint i32 %add177, %mul42, !dbg !114
  %add.ptr184 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add182, !dbg !115
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr184, align 8, !dbg !116
  %30 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %6, <4 x float> zeroinitializer), !dbg !117
  %add177.1 = or disjoint i32 %mul37.1, %add167, !dbg !113
  %add182.1 = or disjoint i32 %add177.1, %mul42, !dbg !114
  %add.ptr184.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add182.1, !dbg !115
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr184.1, align 8, !dbg !116
  %31 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %7, <4 x float> %30), !dbg !117
  %add177.2 = or disjoint i32 %mul37.2, %add167, !dbg !113
  %add182.2 = or disjoint i32 %add177.2, %mul42, !dbg !114
  %add.ptr184.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add182.2, !dbg !115
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr184.2, align 8, !dbg !116
  %32 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %8, <4 x float> %31), !dbg !117
  %add177.3 = or disjoint i32 %mul37.3, %add167, !dbg !113
  %add182.3 = or disjoint i32 %add177.3, %mul42, !dbg !114
  %add.ptr184.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add182.3, !dbg !115
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr184.3, align 8, !dbg !116
  %33 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %9, <4 x float> %32), !dbg !117
  %add207 = or disjoint i32 %mul80, %mul206
  %cmp210.not = icmp sgt i32 %add207, %1, !dbg !118
  %scores.sroa.0.0.vec.extract1545 = extractelement <4 x float> %33, i64 0
  %spec.select = select i1 %cmp210.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1545, !dbg !119
  %cmp210.not.1.not = icmp slt i32 %add207, %1, !dbg !118
  %scores.sroa.0.4.vec.extract1566 = extractelement <4 x float> %33, i64 1, !dbg !119
  %condval_1.0.1 = select i1 %cmp210.not.1.not, float %scores.sroa.0.4.vec.extract1566, float 0xFFF0000000000000, !dbg !119
  %add208.2 = or disjoint i32 %add207, 2, !dbg !120
  %cmp210.not.2 = icmp sgt i32 %add208.2, %1, !dbg !118
  %scores.sroa.0.8.vec.extract1583 = extractelement <4 x float> %33, i64 2, !dbg !119
  %condval_1.0.2 = select i1 %cmp210.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1583, !dbg !119
  %add208.3 = or disjoint i32 %add207, 3, !dbg !120
  %cmp210.not.3 = icmp sgt i32 %add208.3, %1, !dbg !118
  %scores.sroa.0.12.vec.extract1600 = extractelement <4 x float> %33, i64 3, !dbg !119
  %condval_1.0.3 = select i1 %cmp210.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1600, !dbg !119
  %34 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !121
  %35 = tail call contract noundef float @llvm.maxnum.f32(float %34, float %condval_1.0.1), !dbg !121
  %36 = tail call contract noundef float @llvm.maxnum.f32(float %35, float %condval_1.0.2), !dbg !121
  %37 = tail call contract noundef float @llvm.maxnum.f32(float %36, float %condval_1.0.3), !dbg !121
  %38 = bitcast float %37 to i32, !dbg !125
  %39 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !128
  %40 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %39) #11, !dbg !133
  %xor.i.i = xor i32 %40, 32, !dbg !134
  %41 = and i32 %40, -64, !dbg !135
  %and.i.i = add nsw i32 %41, 64, !dbg !135
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !136
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %40, !dbg !137
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !138
  %42 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %38), !dbg !139
  %43 = bitcast i32 %42 to float, !dbg !140
  %44 = tail call contract noundef float @llvm.maxnum.f32(float %37, float %43), !dbg !141
  %45 = bitcast float %44 to i32, !dbg !143
  %46 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !145
  %47 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %46) #11, !dbg !148
  %xor.i.i1070 = xor i32 %47, 16, !dbg !149
  %48 = and i32 %47, -64, !dbg !150
  %and.i.i1071 = add nsw i32 %48, 64, !dbg !150
  %cmp.not.i.i1072 = icmp slt i32 %xor.i.i1070, %and.i.i1071, !dbg !151
  %cond.i.i1073 = select i1 %cmp.not.i.i1072, i32 %xor.i.i1070, i32 %47, !dbg !152
  %shl.i.i1074 = shl i32 %cond.i.i1073, 2, !dbg !153
  %49 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1074, i32 %45), !dbg !154
  %50 = bitcast i32 %49 to float, !dbg !155
  %51 = tail call contract noundef float @llvm.maxnum.f32(float %44, float %50), !dbg !156
  %52 = tail call contract noundef float @llvm.maxnum.f32(float %51, float 0xFFF0000000000000), !dbg !158
  %sub = fsub contract float 0xFFF0000000000000, %52, !dbg !160
  %mul254 = fmul contract float %sub, 0x3FC7154760000000, !dbg !161
  %cmp.i.i = fcmp contract olt float %mul254, -1.260000e+02, !dbg !162
  %cond.i.i1075 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i = fadd contract float %mul254, %cond.i.i1075, !dbg !162
  %53 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !162
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i = fmul contract float %cond2.i.i, %53, !dbg !162
  %mul271 = fmul contract float %mul.i.i, 0.000000e+00, !dbg !165
  %numerator.sroa.0.0.vec.insert1614 = insertelement <4 x float> poison, float %mul271, i64 0, !dbg !166
  %numerator.sroa.0.12.vec.insert1641 = shufflevector <4 x float> %numerator.sroa.0.0.vec.insert1614, <4 x float> poison, <4 x i32> zeroinitializer, !dbg !166
  %sub304 = fsub contract float %spec.select, %52, !dbg !167
  %sub308 = fsub contract float %condval_1.0.1, %52, !dbg !168
  %sub312 = fsub contract float %condval_1.0.2, %52, !dbg !169
  %sub316 = fsub contract float %condval_1.0.3, %52, !dbg !170
  %mul321 = fmul contract float %sub304, 0x3FC7154760000000, !dbg !171
  %mul325 = fmul contract float %sub308, 0x3FC7154760000000, !dbg !172
  %mul329 = fmul contract float %sub312, 0x3FC7154760000000, !dbg !173
  %mul333 = fmul contract float %sub316, 0x3FC7154760000000, !dbg !174
  %add338 = fadd contract float %mul321, 8.000000e+00, !dbg !175
  %add342 = fadd contract float %mul325, 8.000000e+00, !dbg !176
  %add346 = fadd contract float %mul329, 8.000000e+00, !dbg !177
  %add350 = fadd contract float %mul333, 8.000000e+00, !dbg !178
  %cmp.i.i1080 = fcmp contract olt float %add338, -1.260000e+02, !dbg !179
  %cond.i.i1081 = select contract i1 %cmp.i.i1080, float 6.400000e+01, float 0.000000e+00, !dbg !179
  %add.i.i1082 = fadd contract float %add338, %cond.i.i1081, !dbg !179
  %54 = tail call contract float @llvm.exp2.f32(float %add.i.i1082), !dbg !179
  %cond2.i.i1083 = select contract i1 %cmp.i.i1080, float 0x3BF0000000000000, float 1.000000e+00, !dbg !179
  %mul.i.i1084 = fmul contract float %cond2.i.i1083, %54, !dbg !179
  %cmp.i.i1085 = fcmp contract olt float %add342, -1.260000e+02, !dbg !181
  %cond.i.i1086 = select contract i1 %cmp.i.i1085, float 6.400000e+01, float 0.000000e+00, !dbg !181
  %add.i.i1087 = fadd contract float %add342, %cond.i.i1086, !dbg !181
  %55 = tail call contract float @llvm.exp2.f32(float %add.i.i1087), !dbg !181
  %cond2.i.i1088 = select contract i1 %cmp.i.i1085, float 0x3BF0000000000000, float 1.000000e+00, !dbg !181
  %mul.i.i1089 = fmul contract float %cond2.i.i1088, %55, !dbg !181
  %cmp.i.i1090 = fcmp contract olt float %add346, -1.260000e+02, !dbg !183
  %cond.i.i1091 = select contract i1 %cmp.i.i1090, float 6.400000e+01, float 0.000000e+00, !dbg !183
  %add.i.i1092 = fadd contract float %add346, %cond.i.i1091, !dbg !183
  %56 = tail call contract float @llvm.exp2.f32(float %add.i.i1092), !dbg !183
  %cond2.i.i1093 = select contract i1 %cmp.i.i1090, float 0x3BF0000000000000, float 1.000000e+00, !dbg !183
  %mul.i.i1094 = fmul contract float %cond2.i.i1093, %56, !dbg !183
  %cmp.i.i1095 = fcmp contract olt float %add350, -1.260000e+02, !dbg !185
  %cond.i.i1096 = select contract i1 %cmp.i.i1095, float 6.400000e+01, float 0.000000e+00, !dbg !185
  %add.i.i1097 = fadd contract float %add350, %cond.i.i1096, !dbg !185
  %57 = tail call contract float @llvm.exp2.f32(float %add.i.i1097), !dbg !185
  %cond2.i.i1098 = select contract i1 %cmp.i.i1095, float 0x3BF0000000000000, float 1.000000e+00, !dbg !185
  %mul.i.i1099 = fmul contract float %cond2.i.i1098, %57, !dbg !185
  %58 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !187, !noalias !195
  %59 = fptrunc float %mul.i.i1084 to half, !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %58), !dbg !187, !noalias !195
  %60 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !200
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !200, !noalias !195
  %61 = fptrunc float %mul.i.i1089 to half, !dbg !200
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %60), !dbg !200, !noalias !195
  %62 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !202, !noalias !206
  %63 = fptrunc float %mul.i.i1094 to half, !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %62), !dbg !202, !noalias !206
  %64 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !211
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !211, !noalias !206
  %65 = fptrunc float %mul.i.i1099 to half, !dbg !211
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %64), !dbg !211, !noalias !206
  %66 = insertelement <4 x half> poison, half %59, i64 0, !dbg !213
  %67 = insertelement <4 x half> %66, half %61, i64 1, !dbg !213
  %68 = insertelement <4 x half> %67, half %63, i64 2, !dbg !213
  %69 = insertelement <4 x half> %68, half %65, i64 3, !dbg !213
  %conv.i.i = fpext half %59 to float, !dbg !214
  %add385 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !219
  %conv.i.i.1 = fpext half %61 to float, !dbg !214
  %add385.1 = fadd contract float %add385, %conv.i.i.1, !dbg !219
  %conv.i.i.2 = fpext half %63 to float, !dbg !214
  %add385.2 = fadd contract float %add385.1, %conv.i.i.2, !dbg !219
  %conv.i.i.3 = fpext half %65 to float, !dbg !214
  %add385.3 = fadd contract float %add385.2, %conv.i.i.3, !dbg !219
  %70 = bitcast float %add385.3 to i32, !dbg !220
  %71 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !222
  %72 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %71) #11, !dbg !225
  %xor.i.i1105 = xor i32 %72, 32, !dbg !226
  %73 = and i32 %72, -64, !dbg !227
  %and.i.i1106 = add nsw i32 %73, 64, !dbg !227
  %cmp.not.i.i1107 = icmp slt i32 %xor.i.i1105, %and.i.i1106, !dbg !228
  %cond.i.i1108 = select i1 %cmp.not.i.i1107, i32 %xor.i.i1105, i32 %72, !dbg !229
  %shl.i.i1109 = shl i32 %cond.i.i1108, 2, !dbg !230
  %74 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1109, i32 %70), !dbg !231
  %75 = bitcast i32 %74 to float, !dbg !232
  %add393 = fadd contract float %add385.3, %75, !dbg !233
  %76 = bitcast float %add393 to i32, !dbg !234
  %77 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !236
  %78 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %77) #11, !dbg !239
  %xor.i.i1110 = xor i32 %78, 16, !dbg !240
  %79 = and i32 %78, -64, !dbg !241
  %and.i.i1111 = add nsw i32 %79, 64, !dbg !241
  %cmp.not.i.i1112 = icmp slt i32 %xor.i.i1110, %and.i.i1111, !dbg !242
  %cond.i.i1113 = select i1 %cmp.not.i.i1112, i32 %xor.i.i1110, i32 %78, !dbg !243
  %shl.i.i1114 = shl i32 %cond.i.i1113, 2, !dbg !244
  %80 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1114, i32 %76), !dbg !245
  %81 = bitcast i32 %80 to float, !dbg !246
  %add398 = fadd contract float %add393, %81, !dbg !247
  fence syncscope("warp") release, !dbg !248
  tail call void @llvm.mxc.barrier.warp(), !dbg !251
  fence syncscope("warp") acquire, !dbg !252
  %cmp414 = icmp ult i32 %mul80, 1024
  %82 = shl i32 %20, 10
  %mul426 = zext i32 %82 to i64
  br i1 %cmp414, label %if.then415, label %if.end450, !dbg !253

if.then415:                                       ; preds = %if.end.1
  %83 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add427, !dbg !254
  %84 = getelementptr inbounds %struct.__half, ptr addrspace(4) %83, i64 %mul426, !dbg !254
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %84, align 8, !dbg !255, !tbaa !30
  %condval_2.sroa.5.0.add.ptr436.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %84, i64 4, !dbg !255
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr436.sroa_idx, align 4, !dbg !255, !tbaa !30
  br label %if.end450, !dbg !256

if.end450:                                        ; preds = %if.end.1, %if.then415
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then415 ], [ 0, %if.end.1 ], !dbg !103
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then415 ], [ 0, %if.end.1 ], !dbg !103
  br i1 %cmp414, label %if.then415.1, label %if.end450.1, !dbg !253

if.then415.1:                                     ; preds = %if.end450
  %85 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add427, !dbg !254
  %86 = getelementptr inbounds %struct.__half, ptr addrspace(4) %85, i64 %mul426, !dbg !254
  %add.ptr436.1 = getelementptr inbounds i8, ptr addrspace(4) %86, i64 128, !dbg !254
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %add.ptr436.1, align 8, !dbg !255, !tbaa !30
  %condval_2.sroa.5.0.add.ptr436.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %86, i64 132, !dbg !255
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr436.sroa_idx.1, align 4, !dbg !255, !tbaa !30
  br label %if.end450.1, !dbg !256

if.end450.1:                                      ; preds = %if.then415.1, %if.end450
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then415.1 ], [ 0, %if.end450 ], !dbg !103
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then415.1 ], [ 0, %if.end450 ], !dbg !103
  br i1 %cmp414, label %if.then415.2, label %if.end450.2, !dbg !253

if.then415.2:                                     ; preds = %if.end450.1
  %87 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add427, !dbg !254
  %88 = getelementptr inbounds %struct.__half, ptr addrspace(4) %87, i64 %mul426, !dbg !254
  %add.ptr436.2 = getelementptr inbounds i8, ptr addrspace(4) %88, i64 256, !dbg !254
  %condval_2.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %add.ptr436.2, align 8, !dbg !255, !tbaa !30
  %condval_2.sroa.5.0.add.ptr436.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %88, i64 260, !dbg !255
  %condval_2.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr436.sroa_idx.2, align 4, !dbg !255, !tbaa !30
  br label %if.end450.2, !dbg !256

if.end450.2:                                      ; preds = %if.then415.2, %if.end450.1
  %condval_2.sroa.0.0.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2, %if.then415.2 ], [ 0, %if.end450.1 ], !dbg !103
  %condval_2.sroa.5.0.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2, %if.then415.2 ], [ 0, %if.end450.1 ], !dbg !103
  br i1 %cmp414, label %if.then415.3, label %if.end450.3, !dbg !253

if.then415.3:                                     ; preds = %if.end450.2
  %89 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add427, !dbg !254
  %90 = getelementptr inbounds %struct.__half, ptr addrspace(4) %89, i64 %mul426, !dbg !254
  %add.ptr436.3 = getelementptr inbounds i8, ptr addrspace(4) %90, i64 384, !dbg !254
  %condval_2.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %add.ptr436.3, align 8, !dbg !255, !tbaa !30
  %condval_2.sroa.5.0.add.ptr436.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %90, i64 388, !dbg !255
  %condval_2.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr436.sroa_idx.3, align 4, !dbg !255, !tbaa !30
  br label %if.end450.3, !dbg !256

if.end450.3:                                      ; preds = %if.then415.3, %if.end450.2
  %condval_2.sroa.0.0.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3, %if.then415.3 ], [ 0, %if.end450.2 ], !dbg !103
  %condval_2.sroa.5.0.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3, %if.then415.3 ], [ 0, %if.end450.2 ], !dbg !103
  %91 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %17, !dbg !257
  %add.ptr497.idx = shl nuw nsw i32 %xor492, 3, !dbg !257
  %add.ptr497 = getelementptr inbounds i8, ptr addrspace(3) %91, i32 %add.ptr497.idx, !dbg !257
  %92 = and i32 %condval_2.sroa.0.0.3, 65535, !dbg !258
  %v_column.sroa.34.0.insert.ext = zext nneg i32 %92 to i64, !dbg !258
  %v_column.sroa.34.0.insert.shift = shl nuw i64 %v_column.sroa.34.0.insert.ext, 48, !dbg !258
  %93 = and i32 %condval_2.sroa.0.0.2, 65535, !dbg !258
  %v_column.sroa.26.0.insert.ext = zext nneg i32 %93 to i64, !dbg !258
  %v_column.sroa.26.0.insert.shift = shl nuw nsw i64 %v_column.sroa.26.0.insert.ext, 32, !dbg !258
  %v_column.sroa.26.0.insert.insert = or disjoint i64 %v_column.sroa.34.0.insert.shift, %v_column.sroa.26.0.insert.shift, !dbg !258
  %94 = shl i32 %condval_2.sroa.0.0.1, 16, !dbg !258
  %v_column.sroa.18.0.insert.shift = zext i32 %94 to i64, !dbg !258
  %v_column.sroa.18.0.insert.insert = or disjoint i64 %v_column.sroa.26.0.insert.insert, %v_column.sroa.18.0.insert.shift, !dbg !258
  %95 = and i32 %condval_2.sroa.0.0, 65535, !dbg !258
  %v_column.sroa.0.0.insert.ext = zext nneg i32 %95 to i64, !dbg !258
  %v_column.sroa.0.0.insert.insert = or disjoint i64 %v_column.sroa.18.0.insert.insert, %v_column.sroa.0.0.insert.ext, !dbg !258
  store i64 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr497, align 8, !dbg !258
  %v_fetch.sroa.0.2.extract.shift = lshr i32 %condval_2.sroa.0.0, 16, !dbg !259
  %v_fetch.sroa.0.2.extract.trunc = zext nneg i32 %v_fetch.sroa.0.2.extract.shift to i64, !dbg !259
  %v_fetch.sroa.14.10.extract.shift = and i32 %condval_2.sroa.0.0.1, -65536, !dbg !258
  %v_fetch.sroa.26.18.extract.shift = lshr i32 %condval_2.sroa.0.0.2, 16, !dbg !259
  %v_fetch.sroa.26.18.extract.trunc = zext nneg i32 %v_fetch.sroa.26.18.extract.shift to i64, !dbg !259
  %v_fetch.sroa.38.26.extract.shift = lshr i32 %condval_2.sroa.0.0.3, 16, !dbg !259
  %v_fetch.sroa.38.26.extract.trunc = zext nneg i32 %v_fetch.sroa.38.26.extract.shift to i64, !dbg !259
  %96 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 512), i32 %17, !dbg !257
  %xor493.1 = shl nuw nsw i32 %xor492, 3, !dbg !257
  %add.ptr497.idx.1 = xor i32 %xor493.1, 8, !dbg !257
  %add.ptr497.1 = getelementptr inbounds i8, ptr addrspace(3) %96, i32 %add.ptr497.idx.1, !dbg !257
  %v_column.sroa.34.0.insert.shift1444 = shl nuw i64 %v_fetch.sroa.38.26.extract.trunc, 48, !dbg !258
  %v_column.sroa.26.0.insert.shift1409 = shl nuw nsw i64 %v_fetch.sroa.26.18.extract.trunc, 32, !dbg !258
  %v_column.sroa.26.0.insert.insert1411 = or disjoint i64 %v_column.sroa.34.0.insert.shift1444, %v_column.sroa.26.0.insert.shift1409, !dbg !258
  %v_column.sroa.18.0.insert.shift1374 = zext i32 %v_fetch.sroa.14.10.extract.shift to i64, !dbg !258
  %v_column.sroa.18.0.insert.insert1376 = or disjoint i64 %v_column.sroa.26.0.insert.insert1411, %v_column.sroa.18.0.insert.shift1374, !dbg !258
  %v_column.sroa.0.0.insert.insert1347 = or disjoint i64 %v_column.sroa.18.0.insert.insert1376, %v_fetch.sroa.0.2.extract.trunc, !dbg !258
  store i64 %v_column.sroa.0.0.insert.insert1347, ptr addrspace(3) %add.ptr497.1, align 8, !dbg !258
  %97 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 1024), i32 %17, !dbg !257
  %xor493.2 = shl nuw nsw i32 %xor492, 3, !dbg !257
  %add.ptr497.idx.2 = xor i32 %xor493.2, 16, !dbg !257
  %add.ptr497.2 = getelementptr inbounds i8, ptr addrspace(3) %97, i32 %add.ptr497.idx.2, !dbg !257
  %98 = and i32 %condval_2.sroa.5.0.3, 65535, !dbg !258
  %v_column.sroa.34.0.insert.ext1448 = zext nneg i32 %98 to i64, !dbg !258
  %v_column.sroa.34.0.insert.shift1449 = shl nuw i64 %v_column.sroa.34.0.insert.ext1448, 48, !dbg !258
  %99 = and i32 %condval_2.sroa.5.0.2, 65535, !dbg !258
  %v_column.sroa.26.0.insert.ext1413 = zext nneg i32 %99 to i64, !dbg !258
  %v_column.sroa.26.0.insert.shift1414 = shl nuw nsw i64 %v_column.sroa.26.0.insert.ext1413, 32, !dbg !258
  %v_column.sroa.26.0.insert.insert1416 = or disjoint i64 %v_column.sroa.34.0.insert.shift1449, %v_column.sroa.26.0.insert.shift1414, !dbg !258
  %100 = shl i32 %condval_2.sroa.5.0.1, 16, !dbg !258
  %v_column.sroa.18.0.insert.shift1379 = zext i32 %100 to i64, !dbg !258
  %v_column.sroa.18.0.insert.insert1381 = or disjoint i64 %v_column.sroa.26.0.insert.insert1416, %v_column.sroa.18.0.insert.shift1379, !dbg !258
  %101 = and i32 %condval_2.sroa.5.0, 65535, !dbg !258
  %v_column.sroa.0.0.insert.ext1349 = zext nneg i32 %101 to i64, !dbg !258
  %v_column.sroa.0.0.insert.insert1351 = or disjoint i64 %v_column.sroa.18.0.insert.insert1381, %v_column.sroa.0.0.insert.ext1349, !dbg !258
  store i64 %v_column.sroa.0.0.insert.insert1351, ptr addrspace(3) %add.ptr497.2, align 8, !dbg !258
  %v_fetch.sroa.8.6.extract.shift = lshr i32 %condval_2.sroa.5.0, 16, !dbg !259
  %v_fetch.sroa.8.6.extract.trunc = zext nneg i32 %v_fetch.sroa.8.6.extract.shift to i64, !dbg !259
  %v_fetch.sroa.20.14.extract.shift = and i32 %condval_2.sroa.5.0.1, -65536, !dbg !258
  %v_fetch.sroa.32.22.extract.shift = lshr i32 %condval_2.sroa.5.0.2, 16, !dbg !259
  %v_fetch.sroa.32.22.extract.trunc = zext nneg i32 %v_fetch.sroa.32.22.extract.shift to i64, !dbg !259
  %v_fetch.sroa.44.30.extract.shift = lshr i32 %condval_2.sroa.5.0.3, 16, !dbg !259
  %v_fetch.sroa.44.30.extract.trunc = zext nneg i32 %v_fetch.sroa.44.30.extract.shift to i64, !dbg !259
  %102 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 1536), i32 %17, !dbg !257
  %xor493.3 = shl nuw nsw i32 %xor492, 3, !dbg !257
  %add.ptr497.idx.3 = xor i32 %xor493.3, 24, !dbg !257
  %add.ptr497.3 = getelementptr inbounds i8, ptr addrspace(3) %102, i32 %add.ptr497.idx.3, !dbg !257
  %v_column.sroa.34.0.insert.shift1454 = shl nuw i64 %v_fetch.sroa.44.30.extract.trunc, 48, !dbg !258
  %v_column.sroa.26.0.insert.shift1419 = shl nuw nsw i64 %v_fetch.sroa.32.22.extract.trunc, 32, !dbg !258
  %v_column.sroa.26.0.insert.insert1421 = or disjoint i64 %v_column.sroa.34.0.insert.shift1454, %v_column.sroa.26.0.insert.shift1419, !dbg !258
  %v_column.sroa.18.0.insert.shift1384 = zext i32 %v_fetch.sroa.20.14.extract.shift to i64, !dbg !258
  %v_column.sroa.18.0.insert.insert1386 = or disjoint i64 %v_column.sroa.26.0.insert.insert1421, %v_column.sroa.18.0.insert.shift1384, !dbg !258
  %v_column.sroa.0.0.insert.insert1355 = or disjoint i64 %v_column.sroa.18.0.insert.insert1386, %v_fetch.sroa.8.6.extract.trunc, !dbg !258
  store i64 %v_column.sroa.0.0.insert.insert1355, ptr addrspace(3) %add.ptr497.3, align 8, !dbg !258
  fence syncscope("warp") release, !dbg !260
  tail call void @llvm.mxc.barrier.warp(), !dbg !263
  fence syncscope("warp") acquire, !dbg !264
  %add518 = or disjoint i32 %add511, %mul517, !dbg !265
  %103 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add518, !dbg !266
  %add.ptr529.idx = shl nuw nsw i32 %18, 3, !dbg !266
  %add.ptr529 = getelementptr inbounds i8, ptr addrspace(3) %103, i32 %add.ptr529.idx, !dbg !266
  %104 = load <4 x half>, ptr addrspace(3) %add.ptr529, align 8, !dbg !267
  %add513.1 = or disjoint i32 %add511, %mul517, !dbg !265
  %add518.1 = or disjoint i32 %add513.1, 64, !dbg !265
  %105 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add518.1, !dbg !266
  %xor525.1 = shl nuw nsw i32 %18, 3, !dbg !266
  %add.ptr529.idx.1 = xor i32 %xor525.1, 8, !dbg !266
  %add.ptr529.1 = getelementptr inbounds i8, ptr addrspace(3) %105, i32 %add.ptr529.idx.1, !dbg !266
  %106 = load <4 x half>, ptr addrspace(3) %add.ptr529.1, align 8, !dbg !267
  %add513.2 = or disjoint i32 %add511, %mul517, !dbg !265
  %add518.2 = or disjoint i32 %add513.2, 128, !dbg !265
  %107 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add518.2, !dbg !266
  %xor525.2 = shl nuw nsw i32 %18, 3, !dbg !266
  %add.ptr529.idx.2 = xor i32 %xor525.2, 16, !dbg !266
  %add.ptr529.2 = getelementptr inbounds i8, ptr addrspace(3) %107, i32 %add.ptr529.idx.2, !dbg !266
  %108 = load <4 x half>, ptr addrspace(3) %add.ptr529.2, align 8, !dbg !267
  %add513.3 = or disjoint i32 %add511, %mul517, !dbg !265
  %add518.3 = or disjoint i32 %add513.3, 192, !dbg !265
  %109 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add518.3, !dbg !266
  %xor525.3 = shl nuw nsw i32 %18, 3, !dbg !266
  %add.ptr529.idx.3 = xor i32 %xor525.3, 24, !dbg !266
  %add.ptr529.3 = getelementptr inbounds i8, ptr addrspace(3) %109, i32 %add.ptr529.idx.3, !dbg !266
  %110 = load <4 x half>, ptr addrspace(3) %add.ptr529.3, align 8, !dbg !267
  %111 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %104, <4 x half> %69, <4 x float> %numerator.sroa.0.12.vec.insert1641), !dbg !268
  %112 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %106, <4 x half> %69, <4 x float> %numerator.sroa.0.12.vec.insert1641), !dbg !268
  %113 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %108, <4 x half> %69, <4 x float> %numerator.sroa.0.12.vec.insert1641), !dbg !268
  %114 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %110, <4 x half> %69, <4 x float> %numerator.sroa.0.12.vec.insert1641), !dbg !268
  %add402 = fadd contract float %mul271, %add398, !dbg !269
  br label %if.end555, !dbg !270

if.end555:                                        ; preds = %if.end450.3, %entry
  %numerator.sroa.86.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %114, %if.end450.3 ], !dbg !103
  %numerator.sroa.58.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %113, %if.end450.3 ], !dbg !103
  %numerator.sroa.30.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %112, %if.end450.3 ], !dbg !103
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %111, %if.end450.3 ], !dbg !103
  %maximum.sroa.0.1 = phi float [ 0xFFF0000000000000, %entry ], [ %52, %if.end450.3 ], !dbg !103
  %denominator.sroa.0.1 = phi float [ 0.000000e+00, %entry ], [ %add402, %if.end450.3 ], !dbg !103
  %115 = or disjoint i64 %19, 1, !dbg !271
  %arrayidx79.1 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %115, !dbg !87
  %116 = load i32, ptr addrspace(1) %arrayidx79.1, align 4, !dbg !87, !tbaa !30
  %mul80.1 = shl nsw i32 %116, 4, !dbg !88
  %cmp81.1 = icmp slt i32 %116, 0, !dbg !89
  %cmp83.not.1 = icmp sgt i32 %mul80.1, %1
  %or.cond.1 = select i1 %cmp81.1, i1 true, i1 %cmp83.not.1, !dbg !90
  br i1 %or.cond.1, label %if.end555.1, label %if.then.1, !dbg !90

if.then.1:                                        ; preds = %if.end555
  fence syncscope("warp") release, !dbg !91
  tail call void @llvm.mxc.barrier.warp(), !dbg !96
  fence syncscope("warp") acquire, !dbg !97
  %conv101.1 = zext nneg i32 %mul80.1 to i64
  %cmp94.11207 = icmp ult i32 %mul80.1, 1024, !dbg !98
  br i1 %cmp94.11207, label %if.then95.11216, label %if.end.11225, !dbg !99

if.then95.11216:                                  ; preds = %if.then.1
  %117 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add100, !dbg !100
  %.idx.11208 = shl nuw nsw i64 %conv101.1, 7, !dbg !100
  %118 = getelementptr inbounds i8, ptr addrspace(4) %117, i64 %.idx.11208, !dbg !100
  %condval.sroa.0.0.copyload.11209 = load i32, ptr addrspace(4) %118, align 16, !dbg !101, !tbaa !30
  %condval.sroa.5.0.add.ptr109.sroa_idx.11210 = getelementptr inbounds i8, ptr addrspace(4) %118, i64 4, !dbg !101
  %condval.sroa.5.0.copyload.11211 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr109.sroa_idx.11210, align 4, !dbg !101, !tbaa !30
  %condval.sroa.6.0.add.ptr109.sroa_idx.11212 = getelementptr inbounds i8, ptr addrspace(4) %118, i64 8, !dbg !101
  %condval.sroa.6.0.copyload.11213 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr109.sroa_idx.11212, align 8, !dbg !101, !tbaa !30
  %condval.sroa.7.0.add.ptr109.sroa_idx.11214 = getelementptr inbounds i8, ptr addrspace(4) %118, i64 12, !dbg !101
  %condval.sroa.7.0.copyload.11215 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr109.sroa_idx.11214, align 4, !dbg !101, !tbaa !30
  br label %if.end.11225, !dbg !102

if.end.11225:                                     ; preds = %if.then95.11216, %if.then.1
  %condval.sroa.0.0.11217 = phi i32 [ %condval.sroa.0.0.copyload.11209, %if.then95.11216 ], [ 0, %if.then.1 ], !dbg !103
  %condval.sroa.5.0.11218 = phi i32 [ %condval.sroa.5.0.copyload.11211, %if.then95.11216 ], [ 0, %if.then.1 ], !dbg !103
  %condval.sroa.6.0.11219 = phi i32 [ %condval.sroa.6.0.copyload.11213, %if.then95.11216 ], [ 0, %if.then.1 ], !dbg !103
  %condval.sroa.7.0.11220 = phi i32 [ %condval.sroa.7.0.copyload.11215, %if.then95.11216 ], [ 0, %if.then.1 ], !dbg !103
  %119 = or disjoint i32 %mul132, %mul138, !dbg !104
  %120 = or disjoint i32 %119, %mul146, !dbg !105
  %add.ptr149.11221 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %120, !dbg !106
  store i32 %condval.sroa.0.0.11217, ptr addrspace(3) %add.ptr149.11221, align 16, !dbg !107, !tbaa !30
  %condval.sroa.5.0.add.ptr149.sroa_idx.11222 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr149.11221, i32 4, !dbg !107
  store i32 %condval.sroa.5.0.11218, ptr addrspace(3) %condval.sroa.5.0.add.ptr149.sroa_idx.11222, align 4, !dbg !107, !tbaa !30
  %condval.sroa.6.0.add.ptr149.sroa_idx.11223 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr149.11221, i32 8, !dbg !107
  store i32 %condval.sroa.6.0.11219, ptr addrspace(3) %condval.sroa.6.0.add.ptr149.sroa_idx.11223, align 8, !dbg !107, !tbaa !30
  %condval.sroa.7.0.add.ptr149.sroa_idx.11224 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr149.11221, i32 12, !dbg !107
  store i32 %condval.sroa.7.0.11220, ptr addrspace(3) %condval.sroa.7.0.add.ptr149.sroa_idx.11224, align 4, !dbg !107, !tbaa !30
  %cmp94.1.1 = icmp ult i32 %mul80.1, 1024, !dbg !98
  br i1 %cmp94.1.1, label %if.then95.1.1, label %if.end.1.1, !dbg !99

if.then95.1.1:                                    ; preds = %if.end.11225
  %121 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add100, !dbg !100
  %.idx.1.1 = shl nuw nsw i64 %conv101.1, 7, !dbg !100
  %122 = getelementptr inbounds i8, ptr addrspace(4) %121, i64 %.idx.1.1, !dbg !100
  %add.ptr109.1.1 = getelementptr inbounds i8, ptr addrspace(4) %122, i64 1024, !dbg !100
  %condval.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %add.ptr109.1.1, align 16, !dbg !101, !tbaa !30
  %condval.sroa.5.0.add.ptr109.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %122, i64 1028, !dbg !101
  %condval.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr109.sroa_idx.1.1, align 4, !dbg !101, !tbaa !30
  %condval.sroa.6.0.add.ptr109.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %122, i64 1032, !dbg !101
  %condval.sroa.6.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr109.sroa_idx.1.1, align 8, !dbg !101, !tbaa !30
  %condval.sroa.7.0.add.ptr109.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %122, i64 1036, !dbg !101
  %condval.sroa.7.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr109.sroa_idx.1.1, align 4, !dbg !101, !tbaa !30
  br label %if.end.1.1, !dbg !102

if.end.1.1:                                       ; preds = %if.then95.1.1, %if.end.11225
  %condval.sroa.0.0.1.1 = phi i32 [ %condval.sroa.0.0.copyload.1.1, %if.then95.1.1 ], [ 0, %if.end.11225 ], !dbg !103
  %condval.sroa.5.0.1.1 = phi i32 [ %condval.sroa.5.0.copyload.1.1, %if.then95.1.1 ], [ 0, %if.end.11225 ], !dbg !103
  %condval.sroa.6.0.1.1 = phi i32 [ %condval.sroa.6.0.copyload.1.1, %if.then95.1.1 ], [ 0, %if.end.11225 ], !dbg !103
  %condval.sroa.7.0.1.1 = phi i32 [ %condval.sroa.7.0.copyload.1.1, %if.then95.1.1 ], [ 0, %if.end.11225 ], !dbg !103
  %123 = or disjoint i32 %mul132, %mul138, !dbg !104
  %124 = or disjoint i32 %123, %mul146, !dbg !105
  %125 = or disjoint i32 %124, 512, !dbg !105
  %add.ptr149.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %125, !dbg !106
  store i32 %condval.sroa.0.0.1.1, ptr addrspace(3) %add.ptr149.1.1, align 16, !dbg !107, !tbaa !30
  %condval.sroa.5.0.add.ptr149.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr149.1.1, i32 4, !dbg !107
  store i32 %condval.sroa.5.0.1.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr149.sroa_idx.1.1, align 4, !dbg !107, !tbaa !30
  %condval.sroa.6.0.add.ptr149.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr149.1.1, i32 8, !dbg !107
  store i32 %condval.sroa.6.0.1.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr149.sroa_idx.1.1, align 8, !dbg !107, !tbaa !30
  %condval.sroa.7.0.add.ptr149.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr149.1.1, i32 12, !dbg !107
  store i32 %condval.sroa.7.0.1.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr149.sroa_idx.1.1, align 4, !dbg !107, !tbaa !30
  fence syncscope("warp") release, !dbg !108
  tail call void @llvm.mxc.barrier.warp(), !dbg !111
  fence syncscope("warp") acquire, !dbg !112
  %add177.11228 = or disjoint i32 %mul37, %add167, !dbg !113
  %add182.11229 = or disjoint i32 %add177.11228, %mul42, !dbg !114
  %add.ptr184.11230 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add182.11229, !dbg !115
  %k_local.sroa.0.0.copyload.11231 = load <4 x half>, ptr addrspace(3) %add.ptr184.11230, align 8, !dbg !116
  %126 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11231, <4 x half> %6, <4 x float> zeroinitializer), !dbg !117
  %add177.1.1 = or disjoint i32 %mul37.1, %add167, !dbg !113
  %add182.1.1 = or disjoint i32 %add177.1.1, %mul42, !dbg !114
  %add.ptr184.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add182.1.1, !dbg !115
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr184.1.1, align 8, !dbg !116
  %127 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %7, <4 x float> %126), !dbg !117
  %add177.2.1 = or disjoint i32 %mul37.2, %add167, !dbg !113
  %add182.2.1 = or disjoint i32 %add177.2.1, %mul42, !dbg !114
  %add.ptr184.2.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add182.2.1, !dbg !115
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr184.2.1, align 8, !dbg !116
  %128 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %8, <4 x float> %127), !dbg !117
  %add177.3.1 = or disjoint i32 %mul37.3, %add167, !dbg !113
  %add182.3.1 = or disjoint i32 %add177.3.1, %mul42, !dbg !114
  %add.ptr184.3.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add182.3.1, !dbg !115
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr184.3.1, align 8, !dbg !116
  %129 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %9, <4 x float> %128), !dbg !117
  %add207.1 = or disjoint i32 %mul80.1, %mul206
  %cmp210.not.11232 = icmp sgt i32 %add207.1, %1, !dbg !118
  %scores.sroa.0.0.vec.extract1553 = extractelement <4 x float> %129, i64 0
  %spec.select1771 = select i1 %cmp210.not.11232, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1553, !dbg !119
  %cmp210.not.1.1.not = icmp slt i32 %add207.1, %1, !dbg !118
  %scores.sroa.0.4.vec.extract1572 = extractelement <4 x float> %129, i64 1, !dbg !119
  %condval_1.0.1.1 = select i1 %cmp210.not.1.1.not, float %scores.sroa.0.4.vec.extract1572, float 0xFFF0000000000000, !dbg !119
  %add208.2.1 = or disjoint i32 %add207.1, 2, !dbg !120
  %cmp210.not.2.1 = icmp sgt i32 %add208.2.1, %1, !dbg !118
  %scores.sroa.0.8.vec.extract1589 = extractelement <4 x float> %129, i64 2, !dbg !119
  %condval_1.0.2.1 = select i1 %cmp210.not.2.1, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1589, !dbg !119
  %add208.3.1 = or disjoint i32 %add207.1, 3, !dbg !120
  %cmp210.not.3.1 = icmp sgt i32 %add208.3.1, %1, !dbg !118
  %scores.sroa.0.12.vec.extract1606 = extractelement <4 x float> %129, i64 3, !dbg !119
  %condval_1.0.3.1 = select i1 %cmp210.not.3.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1606, !dbg !119
  %130 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select1771, float 0xFFF0000000000000), !dbg !121
  %131 = tail call contract noundef float @llvm.maxnum.f32(float %130, float %condval_1.0.1.1), !dbg !121
  %132 = tail call contract noundef float @llvm.maxnum.f32(float %131, float %condval_1.0.2.1), !dbg !121
  %133 = tail call contract noundef float @llvm.maxnum.f32(float %132, float %condval_1.0.3.1), !dbg !121
  %134 = bitcast float %133 to i32, !dbg !125
  %135 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !128
  %136 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %135) #11, !dbg !133
  %xor.i.i.1 = xor i32 %136, 32, !dbg !134
  %137 = and i32 %136, -64, !dbg !135
  %and.i.i.1 = add nsw i32 %137, 64, !dbg !135
  %cmp.not.i.i.1 = icmp slt i32 %xor.i.i.1, %and.i.i.1, !dbg !136
  %cond.i.i.1 = select i1 %cmp.not.i.i.1, i32 %xor.i.i.1, i32 %136, !dbg !137
  %shl.i.i.1 = shl i32 %cond.i.i.1, 2, !dbg !138
  %138 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.1, i32 %134), !dbg !139
  %139 = bitcast i32 %138 to float, !dbg !140
  %140 = tail call contract noundef float @llvm.maxnum.f32(float %133, float %139), !dbg !141
  %141 = bitcast float %140 to i32, !dbg !143
  %142 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !145
  %143 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %142) #11, !dbg !148
  %xor.i.i1070.1 = xor i32 %143, 16, !dbg !149
  %144 = and i32 %143, -64, !dbg !150
  %and.i.i1071.1 = add nsw i32 %144, 64, !dbg !150
  %cmp.not.i.i1072.1 = icmp slt i32 %xor.i.i1070.1, %and.i.i1071.1, !dbg !151
  %cond.i.i1073.1 = select i1 %cmp.not.i.i1072.1, i32 %xor.i.i1070.1, i32 %143, !dbg !152
  %shl.i.i1074.1 = shl i32 %cond.i.i1073.1, 2, !dbg !153
  %145 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1074.1, i32 %141), !dbg !154
  %146 = bitcast i32 %145 to float, !dbg !155
  %147 = tail call contract noundef float @llvm.maxnum.f32(float %140, float %146), !dbg !156
  %148 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1, float %147), !dbg !158
  %sub.1 = fsub contract float %maximum.sroa.0.1, %148, !dbg !160
  %mul254.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !161
  %cmp.i.i.1 = fcmp contract olt float %mul254.1, -1.260000e+02, !dbg !162
  %cond.i.i1075.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i.1 = fadd contract float %mul254.1, %cond.i.i1075.1, !dbg !162
  %149 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !162
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %149, !dbg !162
  %numerator.sroa.0.0.vec.extract1617 = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !272
  %numerator.sroa.0.4.vec.extract1626 = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !272
  %numerator.sroa.0.8.vec.extract1635 = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !272
  %numerator.sroa.0.12.vec.extract1644 = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !272
  %mul271.11243 = fmul contract float %mul.i.i.1, %numerator.sroa.0.0.vec.extract1617, !dbg !165
  %mul274.11244 = fmul contract float %mul.i.i.1, %numerator.sroa.0.4.vec.extract1626, !dbg !273
  %mul277.11245 = fmul contract float %mul.i.i.1, %numerator.sroa.0.8.vec.extract1635, !dbg !274
  %mul280.11246 = fmul contract float %mul.i.i.1, %numerator.sroa.0.12.vec.extract1644, !dbg !275
  %numerator.sroa.0.0.vec.insert1619 = insertelement <4 x float> poison, float %mul271.11243, i64 0, !dbg !166
  %numerator.sroa.0.4.vec.insert1628 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert1619, float %mul274.11244, i64 1, !dbg !166
  %numerator.sroa.0.8.vec.insert1637 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert1628, float %mul277.11245, i64 2, !dbg !166
  %numerator.sroa.0.12.vec.insert1646 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert1637, float %mul280.11246, i64 3, !dbg !166
  %numerator.sroa.30.16.vec.extract1655 = extractelement <4 x float> %numerator.sroa.30.0, i64 0, !dbg !272
  %numerator.sroa.30.20.vec.extract1664 = extractelement <4 x float> %numerator.sroa.30.0, i64 1, !dbg !272
  %numerator.sroa.30.24.vec.extract1673 = extractelement <4 x float> %numerator.sroa.30.0, i64 2, !dbg !272
  %numerator.sroa.30.28.vec.extract1682 = extractelement <4 x float> %numerator.sroa.30.0, i64 3, !dbg !272
  %mul271.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.30.16.vec.extract1655, !dbg !165
  %mul274.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.30.20.vec.extract1664, !dbg !273
  %mul277.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.30.24.vec.extract1673, !dbg !274
  %mul280.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.30.28.vec.extract1682, !dbg !275
  %numerator.sroa.30.16.vec.insert1657 = insertelement <4 x float> poison, float %mul271.1.1, i64 0, !dbg !166
  %numerator.sroa.30.20.vec.insert1666 = insertelement <4 x float> %numerator.sroa.30.16.vec.insert1657, float %mul274.1.1, i64 1, !dbg !166
  %numerator.sroa.30.24.vec.insert1675 = insertelement <4 x float> %numerator.sroa.30.20.vec.insert1666, float %mul277.1.1, i64 2, !dbg !166
  %numerator.sroa.30.28.vec.insert1684 = insertelement <4 x float> %numerator.sroa.30.24.vec.insert1675, float %mul280.1.1, i64 3, !dbg !166
  %numerator.sroa.58.32.vec.extract1693 = extractelement <4 x float> %numerator.sroa.58.0, i64 0, !dbg !272
  %numerator.sroa.58.36.vec.extract1702 = extractelement <4 x float> %numerator.sroa.58.0, i64 1, !dbg !272
  %numerator.sroa.58.40.vec.extract1711 = extractelement <4 x float> %numerator.sroa.58.0, i64 2, !dbg !272
  %numerator.sroa.58.44.vec.extract1720 = extractelement <4 x float> %numerator.sroa.58.0, i64 3, !dbg !272
  %mul271.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.58.32.vec.extract1693, !dbg !165
  %mul274.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.58.36.vec.extract1702, !dbg !273
  %mul277.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.58.40.vec.extract1711, !dbg !274
  %mul280.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.58.44.vec.extract1720, !dbg !275
  %numerator.sroa.58.32.vec.insert1695 = insertelement <4 x float> poison, float %mul271.2.1, i64 0, !dbg !166
  %numerator.sroa.58.36.vec.insert1704 = insertelement <4 x float> %numerator.sroa.58.32.vec.insert1695, float %mul274.2.1, i64 1, !dbg !166
  %numerator.sroa.58.40.vec.insert1713 = insertelement <4 x float> %numerator.sroa.58.36.vec.insert1704, float %mul277.2.1, i64 2, !dbg !166
  %numerator.sroa.58.44.vec.insert1722 = insertelement <4 x float> %numerator.sroa.58.40.vec.insert1713, float %mul280.2.1, i64 3, !dbg !166
  %numerator.sroa.86.48.vec.extract1731 = extractelement <4 x float> %numerator.sroa.86.0, i64 0, !dbg !272
  %numerator.sroa.86.52.vec.extract1740 = extractelement <4 x float> %numerator.sroa.86.0, i64 1, !dbg !272
  %numerator.sroa.86.56.vec.extract1749 = extractelement <4 x float> %numerator.sroa.86.0, i64 2, !dbg !272
  %numerator.sroa.86.60.vec.extract1758 = extractelement <4 x float> %numerator.sroa.86.0, i64 3, !dbg !272
  %mul271.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.86.48.vec.extract1731, !dbg !165
  %mul274.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.86.52.vec.extract1740, !dbg !273
  %mul277.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.86.56.vec.extract1749, !dbg !274
  %mul280.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.86.60.vec.extract1758, !dbg !275
  %numerator.sroa.86.48.vec.insert1733 = insertelement <4 x float> poison, float %mul271.3.1, i64 0, !dbg !166
  %numerator.sroa.86.52.vec.insert1742 = insertelement <4 x float> %numerator.sroa.86.48.vec.insert1733, float %mul274.3.1, i64 1, !dbg !166
  %numerator.sroa.86.56.vec.insert1751 = insertelement <4 x float> %numerator.sroa.86.52.vec.insert1742, float %mul277.3.1, i64 2, !dbg !166
  %numerator.sroa.86.60.vec.insert1760 = insertelement <4 x float> %numerator.sroa.86.56.vec.insert1751, float %mul280.3.1, i64 3, !dbg !166
  %sub304.1 = fsub contract float %spec.select1771, %148, !dbg !167
  %sub308.1 = fsub contract float %condval_1.0.1.1, %148, !dbg !168
  %sub312.1 = fsub contract float %condval_1.0.2.1, %148, !dbg !169
  %sub316.1 = fsub contract float %condval_1.0.3.1, %148, !dbg !170
  %mul321.1 = fmul contract float %sub304.1, 0x3FC7154760000000, !dbg !171
  %mul325.1 = fmul contract float %sub308.1, 0x3FC7154760000000, !dbg !172
  %mul329.1 = fmul contract float %sub312.1, 0x3FC7154760000000, !dbg !173
  %mul333.1 = fmul contract float %sub316.1, 0x3FC7154760000000, !dbg !174
  %add338.1 = fadd contract float %mul321.1, 8.000000e+00, !dbg !175
  %add342.1 = fadd contract float %mul325.1, 8.000000e+00, !dbg !176
  %add346.1 = fadd contract float %mul329.1, 8.000000e+00, !dbg !177
  %add350.1 = fadd contract float %mul333.1, 8.000000e+00, !dbg !178
  %cmp.i.i1080.1 = fcmp contract olt float %add338.1, -1.260000e+02, !dbg !179
  %cond.i.i1081.1 = select contract i1 %cmp.i.i1080.1, float 6.400000e+01, float 0.000000e+00, !dbg !179
  %add.i.i1082.1 = fadd contract float %add338.1, %cond.i.i1081.1, !dbg !179
  %150 = tail call contract float @llvm.exp2.f32(float %add.i.i1082.1), !dbg !179
  %cond2.i.i1083.1 = select contract i1 %cmp.i.i1080.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !179
  %mul.i.i1084.1 = fmul contract float %cond2.i.i1083.1, %150, !dbg !179
  %cmp.i.i1085.1 = fcmp contract olt float %add342.1, -1.260000e+02, !dbg !181
  %cond.i.i1086.1 = select contract i1 %cmp.i.i1085.1, float 6.400000e+01, float 0.000000e+00, !dbg !181
  %add.i.i1087.1 = fadd contract float %add342.1, %cond.i.i1086.1, !dbg !181
  %151 = tail call contract float @llvm.exp2.f32(float %add.i.i1087.1), !dbg !181
  %cond2.i.i1088.1 = select contract i1 %cmp.i.i1085.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !181
  %mul.i.i1089.1 = fmul contract float %cond2.i.i1088.1, %151, !dbg !181
  %cmp.i.i1090.1 = fcmp contract olt float %add346.1, -1.260000e+02, !dbg !183
  %cond.i.i1091.1 = select contract i1 %cmp.i.i1090.1, float 6.400000e+01, float 0.000000e+00, !dbg !183
  %add.i.i1092.1 = fadd contract float %add346.1, %cond.i.i1091.1, !dbg !183
  %152 = tail call contract float @llvm.exp2.f32(float %add.i.i1092.1), !dbg !183
  %cond2.i.i1093.1 = select contract i1 %cmp.i.i1090.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !183
  %mul.i.i1094.1 = fmul contract float %cond2.i.i1093.1, %152, !dbg !183
  %cmp.i.i1095.1 = fcmp contract olt float %add350.1, -1.260000e+02, !dbg !185
  %cond.i.i1096.1 = select contract i1 %cmp.i.i1095.1, float 6.400000e+01, float 0.000000e+00, !dbg !185
  %add.i.i1097.1 = fadd contract float %add350.1, %cond.i.i1096.1, !dbg !185
  %153 = tail call contract float @llvm.exp2.f32(float %add.i.i1097.1), !dbg !185
  %cond2.i.i1098.1 = select contract i1 %cmp.i.i1095.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !185
  %mul.i.i1099.1 = fmul contract float %cond2.i.i1098.1, %153, !dbg !185
  %154 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !187, !noalias !195
  %155 = fptrunc float %mul.i.i1084.1 to half, !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %154), !dbg !187, !noalias !195
  %156 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !200
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !200, !noalias !195
  %157 = fptrunc float %mul.i.i1089.1 to half, !dbg !200
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %156), !dbg !200, !noalias !195
  %158 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !202, !noalias !206
  %159 = fptrunc float %mul.i.i1094.1 to half, !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %158), !dbg !202, !noalias !206
  %160 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !211
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !211, !noalias !206
  %161 = fptrunc float %mul.i.i1099.1 to half, !dbg !211
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %160), !dbg !211, !noalias !206
  %162 = insertelement <4 x half> poison, half %155, i64 0, !dbg !213
  %163 = insertelement <4 x half> %162, half %157, i64 1, !dbg !213
  %164 = insertelement <4 x half> %163, half %159, i64 2, !dbg !213
  %165 = insertelement <4 x half> %164, half %161, i64 3, !dbg !213
  %conv.i.i.11248 = fpext half %155 to float, !dbg !214
  %add385.11249 = fadd contract float %conv.i.i.11248, 0.000000e+00, !dbg !219
  %conv.i.i.1.1 = fpext half %157 to float, !dbg !214
  %add385.1.1 = fadd contract float %add385.11249, %conv.i.i.1.1, !dbg !219
  %conv.i.i.2.1 = fpext half %159 to float, !dbg !214
  %add385.2.1 = fadd contract float %add385.1.1, %conv.i.i.2.1, !dbg !219
  %conv.i.i.3.1 = fpext half %161 to float, !dbg !214
  %add385.3.1 = fadd contract float %add385.2.1, %conv.i.i.3.1, !dbg !219
  %166 = bitcast float %add385.3.1 to i32, !dbg !220
  %167 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !222
  %168 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %167) #11, !dbg !225
  %xor.i.i1105.1 = xor i32 %168, 32, !dbg !226
  %169 = and i32 %168, -64, !dbg !227
  %and.i.i1106.1 = add nsw i32 %169, 64, !dbg !227
  %cmp.not.i.i1107.1 = icmp slt i32 %xor.i.i1105.1, %and.i.i1106.1, !dbg !228
  %cond.i.i1108.1 = select i1 %cmp.not.i.i1107.1, i32 %xor.i.i1105.1, i32 %168, !dbg !229
  %shl.i.i1109.1 = shl i32 %cond.i.i1108.1, 2, !dbg !230
  %170 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1109.1, i32 %166), !dbg !231
  %171 = bitcast i32 %170 to float, !dbg !232
  %add393.1 = fadd contract float %add385.3.1, %171, !dbg !233
  %172 = bitcast float %add393.1 to i32, !dbg !234
  %173 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !236
  %174 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %173) #11, !dbg !239
  %xor.i.i1110.1 = xor i32 %174, 16, !dbg !240
  %175 = and i32 %174, -64, !dbg !241
  %and.i.i1111.1 = add nsw i32 %175, 64, !dbg !241
  %cmp.not.i.i1112.1 = icmp slt i32 %xor.i.i1110.1, %and.i.i1111.1, !dbg !242
  %cond.i.i1113.1 = select i1 %cmp.not.i.i1112.1, i32 %xor.i.i1110.1, i32 %174, !dbg !243
  %shl.i.i1114.1 = shl i32 %cond.i.i1113.1, 2, !dbg !244
  %176 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1114.1, i32 %172), !dbg !245
  %177 = bitcast i32 %176 to float, !dbg !246
  %add398.1 = fadd contract float %add393.1, %177, !dbg !247
  fence syncscope("warp") release, !dbg !248
  tail call void @llvm.mxc.barrier.warp(), !dbg !251
  fence syncscope("warp") acquire, !dbg !252
  %cmp414.1 = icmp ult i32 %mul80.1, 1024
  %178 = shl i32 %116, 10
  %mul426.1 = zext i32 %178 to i64
  br i1 %cmp414.1, label %if.then415.11253, label %if.end450.11257, !dbg !253

if.then415.11253:                                 ; preds = %if.end.1.1
  %179 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add427, !dbg !254
  %180 = getelementptr inbounds %struct.__half, ptr addrspace(4) %179, i64 %mul426.1, !dbg !254
  %condval_2.sroa.0.0.copyload.11250 = load i32, ptr addrspace(4) %180, align 8, !dbg !255, !tbaa !30
  %condval_2.sroa.5.0.add.ptr436.sroa_idx.11251 = getelementptr inbounds i8, ptr addrspace(4) %180, i64 4, !dbg !255
  %condval_2.sroa.5.0.copyload.11252 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr436.sroa_idx.11251, align 4, !dbg !255, !tbaa !30
  br label %if.end450.11257, !dbg !256

if.end450.11257:                                  ; preds = %if.then415.11253, %if.end.1.1
  %condval_2.sroa.0.0.11254 = phi i32 [ %condval_2.sroa.0.0.copyload.11250, %if.then415.11253 ], [ 0, %if.end.1.1 ], !dbg !103
  %condval_2.sroa.5.0.11255 = phi i32 [ %condval_2.sroa.5.0.copyload.11252, %if.then415.11253 ], [ 0, %if.end.1.1 ], !dbg !103
  br i1 %cmp414.1, label %if.then415.1.1, label %if.end450.1.1, !dbg !253

if.then415.1.1:                                   ; preds = %if.end450.11257
  %181 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add427, !dbg !254
  %182 = getelementptr inbounds %struct.__half, ptr addrspace(4) %181, i64 %mul426.1, !dbg !254
  %add.ptr436.1.1 = getelementptr inbounds i8, ptr addrspace(4) %182, i64 128, !dbg !254
  %condval_2.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %add.ptr436.1.1, align 8, !dbg !255, !tbaa !30
  %condval_2.sroa.5.0.add.ptr436.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %182, i64 132, !dbg !255
  %condval_2.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr436.sroa_idx.1.1, align 4, !dbg !255, !tbaa !30
  br label %if.end450.1.1, !dbg !256

if.end450.1.1:                                    ; preds = %if.then415.1.1, %if.end450.11257
  %condval_2.sroa.0.0.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1, %if.then415.1.1 ], [ 0, %if.end450.11257 ], !dbg !103
  %condval_2.sroa.5.0.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1, %if.then415.1.1 ], [ 0, %if.end450.11257 ], !dbg !103
  br i1 %cmp414.1, label %if.then415.2.1, label %if.end450.2.1, !dbg !253

if.then415.2.1:                                   ; preds = %if.end450.1.1
  %183 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add427, !dbg !254
  %184 = getelementptr inbounds %struct.__half, ptr addrspace(4) %183, i64 %mul426.1, !dbg !254
  %add.ptr436.2.1 = getelementptr inbounds i8, ptr addrspace(4) %184, i64 256, !dbg !254
  %condval_2.sroa.0.0.copyload.2.1 = load i32, ptr addrspace(4) %add.ptr436.2.1, align 8, !dbg !255, !tbaa !30
  %condval_2.sroa.5.0.add.ptr436.sroa_idx.2.1 = getelementptr inbounds i8, ptr addrspace(4) %184, i64 260, !dbg !255
  %condval_2.sroa.5.0.copyload.2.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr436.sroa_idx.2.1, align 4, !dbg !255, !tbaa !30
  br label %if.end450.2.1, !dbg !256

if.end450.2.1:                                    ; preds = %if.then415.2.1, %if.end450.1.1
  %condval_2.sroa.0.0.2.1 = phi i32 [ %condval_2.sroa.0.0.copyload.2.1, %if.then415.2.1 ], [ 0, %if.end450.1.1 ], !dbg !103
  %condval_2.sroa.5.0.2.1 = phi i32 [ %condval_2.sroa.5.0.copyload.2.1, %if.then415.2.1 ], [ 0, %if.end450.1.1 ], !dbg !103
  br i1 %cmp414.1, label %if.then415.3.1, label %if.end450.3.1, !dbg !253

if.then415.3.1:                                   ; preds = %if.end450.2.1
  %185 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add427, !dbg !254
  %186 = getelementptr inbounds %struct.__half, ptr addrspace(4) %185, i64 %mul426.1, !dbg !254
  %add.ptr436.3.1 = getelementptr inbounds i8, ptr addrspace(4) %186, i64 384, !dbg !254
  %condval_2.sroa.0.0.copyload.3.1 = load i32, ptr addrspace(4) %add.ptr436.3.1, align 8, !dbg !255, !tbaa !30
  %condval_2.sroa.5.0.add.ptr436.sroa_idx.3.1 = getelementptr inbounds i8, ptr addrspace(4) %186, i64 388, !dbg !255
  %condval_2.sroa.5.0.copyload.3.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr436.sroa_idx.3.1, align 4, !dbg !255, !tbaa !30
  br label %if.end450.3.1, !dbg !256

if.end450.3.1:                                    ; preds = %if.then415.3.1, %if.end450.2.1
  %condval_2.sroa.0.0.3.1 = phi i32 [ %condval_2.sroa.0.0.copyload.3.1, %if.then415.3.1 ], [ 0, %if.end450.2.1 ], !dbg !103
  %condval_2.sroa.5.0.3.1 = phi i32 [ %condval_2.sroa.5.0.copyload.3.1, %if.then415.3.1 ], [ 0, %if.end450.2.1 ], !dbg !103
  %mul291.1 = fmul contract float %denominator.sroa.0.1, %mul.i.i.1, !dbg !276
  %187 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %17, !dbg !257
  %add.ptr497.idx.11264 = shl nuw nsw i32 %xor492, 3, !dbg !257
  %add.ptr497.11265 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 %add.ptr497.idx.11264, !dbg !257
  %188 = and i32 %condval_2.sroa.0.0.3.1, 65535, !dbg !258
  %v_column.sroa.34.0.insert.ext1458 = zext nneg i32 %188 to i64, !dbg !258
  %v_column.sroa.34.0.insert.shift1459 = shl nuw i64 %v_column.sroa.34.0.insert.ext1458, 48, !dbg !258
  %189 = and i32 %condval_2.sroa.0.0.2.1, 65535, !dbg !258
  %v_column.sroa.26.0.insert.ext1423 = zext nneg i32 %189 to i64, !dbg !258
  %v_column.sroa.26.0.insert.shift1424 = shl nuw nsw i64 %v_column.sroa.26.0.insert.ext1423, 32, !dbg !258
  %v_column.sroa.26.0.insert.insert1426 = or disjoint i64 %v_column.sroa.34.0.insert.shift1459, %v_column.sroa.26.0.insert.shift1424, !dbg !258
  %190 = shl i32 %condval_2.sroa.0.0.1.1, 16, !dbg !258
  %v_column.sroa.18.0.insert.shift1389 = zext i32 %190 to i64, !dbg !258
  %v_column.sroa.18.0.insert.insert1391 = or disjoint i64 %v_column.sroa.26.0.insert.insert1426, %v_column.sroa.18.0.insert.shift1389, !dbg !258
  %191 = and i32 %condval_2.sroa.0.0.11254, 65535, !dbg !258
  %v_column.sroa.0.0.insert.ext1357 = zext nneg i32 %191 to i64, !dbg !258
  %v_column.sroa.0.0.insert.insert1359 = or disjoint i64 %v_column.sroa.18.0.insert.insert1391, %v_column.sroa.0.0.insert.ext1357, !dbg !258
  store i64 %v_column.sroa.0.0.insert.insert1359, ptr addrspace(3) %add.ptr497.11265, align 8, !dbg !258
  %v_fetch.sroa.0.2.extract.shift1492 = lshr i32 %condval_2.sroa.0.0.11254, 16, !dbg !259
  %v_fetch.sroa.0.2.extract.trunc1493 = zext nneg i32 %v_fetch.sroa.0.2.extract.shift1492 to i64, !dbg !259
  %v_fetch.sroa.14.10.extract.shift1502 = and i32 %condval_2.sroa.0.0.1.1, -65536, !dbg !258
  %v_fetch.sroa.26.18.extract.shift1512 = lshr i32 %condval_2.sroa.0.0.2.1, 16, !dbg !259
  %v_fetch.sroa.26.18.extract.trunc1513 = zext nneg i32 %v_fetch.sroa.26.18.extract.shift1512 to i64, !dbg !259
  %v_fetch.sroa.38.26.extract.shift1522 = lshr i32 %condval_2.sroa.0.0.3.1, 16, !dbg !259
  %v_fetch.sroa.38.26.extract.trunc1523 = zext nneg i32 %v_fetch.sroa.38.26.extract.shift1522 to i64, !dbg !259
  %192 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 512), i32 %17, !dbg !257
  %xor493.1.1 = shl nuw nsw i32 %xor492, 3, !dbg !257
  %add.ptr497.idx.1.1 = xor i32 %xor493.1.1, 8, !dbg !257
  %add.ptr497.1.1 = getelementptr inbounds i8, ptr addrspace(3) %192, i32 %add.ptr497.idx.1.1, !dbg !257
  %v_column.sroa.34.0.insert.shift1464 = shl nuw i64 %v_fetch.sroa.38.26.extract.trunc1523, 48, !dbg !258
  %v_column.sroa.26.0.insert.shift1429 = shl nuw nsw i64 %v_fetch.sroa.26.18.extract.trunc1513, 32, !dbg !258
  %v_column.sroa.26.0.insert.insert1431 = or disjoint i64 %v_column.sroa.34.0.insert.shift1464, %v_column.sroa.26.0.insert.shift1429, !dbg !258
  %v_column.sroa.18.0.insert.shift1394 = zext i32 %v_fetch.sroa.14.10.extract.shift1502 to i64, !dbg !258
  %v_column.sroa.18.0.insert.insert1396 = or disjoint i64 %v_column.sroa.26.0.insert.insert1431, %v_column.sroa.18.0.insert.shift1394, !dbg !258
  %v_column.sroa.0.0.insert.insert1363 = or disjoint i64 %v_column.sroa.18.0.insert.insert1396, %v_fetch.sroa.0.2.extract.trunc1493, !dbg !258
  store i64 %v_column.sroa.0.0.insert.insert1363, ptr addrspace(3) %add.ptr497.1.1, align 8, !dbg !258
  %193 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 1024), i32 %17, !dbg !257
  %xor493.2.1 = shl nuw nsw i32 %xor492, 3, !dbg !257
  %add.ptr497.idx.2.1 = xor i32 %xor493.2.1, 16, !dbg !257
  %add.ptr497.2.1 = getelementptr inbounds i8, ptr addrspace(3) %193, i32 %add.ptr497.idx.2.1, !dbg !257
  %194 = and i32 %condval_2.sroa.5.0.3.1, 65535, !dbg !258
  %v_column.sroa.34.0.insert.ext1468 = zext nneg i32 %194 to i64, !dbg !258
  %v_column.sroa.34.0.insert.shift1469 = shl nuw i64 %v_column.sroa.34.0.insert.ext1468, 48, !dbg !258
  %195 = and i32 %condval_2.sroa.5.0.2.1, 65535, !dbg !258
  %v_column.sroa.26.0.insert.ext1433 = zext nneg i32 %195 to i64, !dbg !258
  %v_column.sroa.26.0.insert.shift1434 = shl nuw nsw i64 %v_column.sroa.26.0.insert.ext1433, 32, !dbg !258
  %v_column.sroa.26.0.insert.insert1436 = or disjoint i64 %v_column.sroa.34.0.insert.shift1469, %v_column.sroa.26.0.insert.shift1434, !dbg !258
  %196 = shl i32 %condval_2.sroa.5.0.1.1, 16, !dbg !258
  %v_column.sroa.18.0.insert.shift1399 = zext i32 %196 to i64, !dbg !258
  %v_column.sroa.18.0.insert.insert1401 = or disjoint i64 %v_column.sroa.26.0.insert.insert1436, %v_column.sroa.18.0.insert.shift1399, !dbg !258
  %197 = and i32 %condval_2.sroa.5.0.11255, 65535, !dbg !258
  %v_column.sroa.0.0.insert.ext1365 = zext nneg i32 %197 to i64, !dbg !258
  %v_column.sroa.0.0.insert.insert1367 = or disjoint i64 %v_column.sroa.18.0.insert.insert1401, %v_column.sroa.0.0.insert.ext1365, !dbg !258
  store i64 %v_column.sroa.0.0.insert.insert1367, ptr addrspace(3) %add.ptr497.2.1, align 8, !dbg !258
  %v_fetch.sroa.8.6.extract.shift1497 = lshr i32 %condval_2.sroa.5.0.11255, 16, !dbg !259
  %v_fetch.sroa.8.6.extract.trunc1498 = zext nneg i32 %v_fetch.sroa.8.6.extract.shift1497 to i64, !dbg !259
  %v_fetch.sroa.20.14.extract.shift1507 = and i32 %condval_2.sroa.5.0.1.1, -65536, !dbg !258
  %v_fetch.sroa.32.22.extract.shift1517 = lshr i32 %condval_2.sroa.5.0.2.1, 16, !dbg !259
  %v_fetch.sroa.32.22.extract.trunc1518 = zext nneg i32 %v_fetch.sroa.32.22.extract.shift1517 to i64, !dbg !259
  %v_fetch.sroa.44.30.extract.shift1527 = lshr i32 %condval_2.sroa.5.0.3.1, 16, !dbg !259
  %v_fetch.sroa.44.30.extract.trunc1528 = zext nneg i32 %v_fetch.sroa.44.30.extract.shift1527 to i64, !dbg !259
  %198 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 1536), i32 %17, !dbg !257
  %xor493.3.1 = shl nuw nsw i32 %xor492, 3, !dbg !257
  %add.ptr497.idx.3.1 = xor i32 %xor493.3.1, 24, !dbg !257
  %add.ptr497.3.1 = getelementptr inbounds i8, ptr addrspace(3) %198, i32 %add.ptr497.idx.3.1, !dbg !257
  %v_column.sroa.34.0.insert.shift1474 = shl nuw i64 %v_fetch.sroa.44.30.extract.trunc1528, 48, !dbg !258
  %v_column.sroa.26.0.insert.shift1439 = shl nuw nsw i64 %v_fetch.sroa.32.22.extract.trunc1518, 32, !dbg !258
  %v_column.sroa.26.0.insert.insert1441 = or disjoint i64 %v_column.sroa.34.0.insert.shift1474, %v_column.sroa.26.0.insert.shift1439, !dbg !258
  %v_column.sroa.18.0.insert.shift1404 = zext i32 %v_fetch.sroa.20.14.extract.shift1507 to i64, !dbg !258
  %v_column.sroa.18.0.insert.insert1406 = or disjoint i64 %v_column.sroa.26.0.insert.insert1441, %v_column.sroa.18.0.insert.shift1404, !dbg !258
  %v_column.sroa.0.0.insert.insert1371 = or disjoint i64 %v_column.sroa.18.0.insert.insert1406, %v_fetch.sroa.8.6.extract.trunc1498, !dbg !258
  store i64 %v_column.sroa.0.0.insert.insert1371, ptr addrspace(3) %add.ptr497.3.1, align 8, !dbg !258
  fence syncscope("warp") release, !dbg !260
  tail call void @llvm.mxc.barrier.warp(), !dbg !263
  fence syncscope("warp") acquire, !dbg !264
  %add518.11267 = or disjoint i32 %add511, %mul517, !dbg !265
  %199 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add518.11267, !dbg !266
  %add.ptr529.idx.11268 = shl nuw nsw i32 %18, 3, !dbg !266
  %add.ptr529.11269 = getelementptr inbounds i8, ptr addrspace(3) %199, i32 %add.ptr529.idx.11268, !dbg !266
  %200 = load <4 x half>, ptr addrspace(3) %add.ptr529.11269, align 8, !dbg !267
  %add513.1.1 = or disjoint i32 %add511, %mul517, !dbg !265
  %add518.1.1 = or disjoint i32 %add513.1.1, 64, !dbg !265
  %201 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add518.1.1, !dbg !266
  %xor525.1.1 = shl nuw nsw i32 %18, 3, !dbg !266
  %add.ptr529.idx.1.1 = xor i32 %xor525.1.1, 8, !dbg !266
  %add.ptr529.1.1 = getelementptr inbounds i8, ptr addrspace(3) %201, i32 %add.ptr529.idx.1.1, !dbg !266
  %202 = load <4 x half>, ptr addrspace(3) %add.ptr529.1.1, align 8, !dbg !267
  %add513.2.1 = or disjoint i32 %add511, %mul517, !dbg !265
  %add518.2.1 = or disjoint i32 %add513.2.1, 128, !dbg !265
  %203 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add518.2.1, !dbg !266
  %xor525.2.1 = shl nuw nsw i32 %18, 3, !dbg !266
  %add.ptr529.idx.2.1 = xor i32 %xor525.2.1, 16, !dbg !266
  %add.ptr529.2.1 = getelementptr inbounds i8, ptr addrspace(3) %203, i32 %add.ptr529.idx.2.1, !dbg !266
  %204 = load <4 x half>, ptr addrspace(3) %add.ptr529.2.1, align 8, !dbg !267
  %add513.3.1 = or disjoint i32 %add511, %mul517, !dbg !265
  %add518.3.1 = or disjoint i32 %add513.3.1, 192, !dbg !265
  %205 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add518.3.1, !dbg !266
  %xor525.3.1 = shl nuw nsw i32 %18, 3, !dbg !266
  %add.ptr529.idx.3.1 = xor i32 %xor525.3.1, 24, !dbg !266
  %add.ptr529.3.1 = getelementptr inbounds i8, ptr addrspace(3) %205, i32 %add.ptr529.idx.3.1, !dbg !266
  %206 = load <4 x half>, ptr addrspace(3) %add.ptr529.3.1, align 8, !dbg !267
  %207 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %200, <4 x half> %165, <4 x float> %numerator.sroa.0.12.vec.insert1646), !dbg !268
  %208 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %202, <4 x half> %165, <4 x float> %numerator.sroa.30.28.vec.insert1684), !dbg !268
  %209 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %204, <4 x half> %165, <4 x float> %numerator.sroa.58.44.vec.insert1722), !dbg !268
  %210 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %206, <4 x half> %165, <4 x float> %numerator.sroa.86.60.vec.insert1760), !dbg !268
  %add402.1 = fadd contract float %mul291.1, %add398.1, !dbg !269
  br label %if.end555.1, !dbg !270

if.end555.1:                                      ; preds = %if.end450.3.1, %if.end555
  %numerator.sroa.86.1 = phi <4 x float> [ %numerator.sroa.86.0, %if.end555 ], [ %210, %if.end450.3.1 ], !dbg !103
  %numerator.sroa.58.1 = phi <4 x float> [ %numerator.sroa.58.0, %if.end555 ], [ %209, %if.end450.3.1 ], !dbg !103
  %numerator.sroa.30.1 = phi <4 x float> [ %numerator.sroa.30.0, %if.end555 ], [ %208, %if.end450.3.1 ], !dbg !103
  %numerator.sroa.0.1 = phi <4 x float> [ %numerator.sroa.0.0, %if.end555 ], [ %207, %if.end450.3.1 ], !dbg !103
  %maximum.sroa.0.1.1 = phi float [ %maximum.sroa.0.1, %if.end555 ], [ %148, %if.end450.3.1 ], !dbg !103
  %denominator.sroa.0.1.1 = phi float [ %denominator.sroa.0.1, %if.end555 ], [ %add402.1, %if.end450.3.1 ], !dbg !103
  fence syncscope("block") release, !dbg !277
  tail call void @llvm.mxc.barrier(), !dbg !280
  fence syncscope("block") acquire, !dbg !281
  %cmp560 = fcmp contract ogt float %denominator.sroa.0.1.1, 0.000000e+00, !dbg !282
  %denominator.sroa.0.0. = select i1 %cmp560, float %denominator.sroa.0.1.1, float 1.000000e+00
  %numerator.sroa.0.0.vec.extract1621 = extractelement <4 x float> %numerator.sroa.0.1, i64 0, !dbg !283
  %numerator.sroa.0.4.vec.extract1630 = extractelement <4 x float> %numerator.sroa.0.1, i64 1, !dbg !283
  %numerator.sroa.0.8.vec.extract1639 = extractelement <4 x float> %numerator.sroa.0.1, i64 2, !dbg !283
  %numerator.sroa.0.12.vec.extract1648 = extractelement <4 x float> %numerator.sroa.0.1, i64 3, !dbg !283
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract1621, %denominator.sroa.0.0., !dbg !284
  %div584 = fdiv contract float %numerator.sroa.0.4.vec.extract1630, %denominator.sroa.0.0., !dbg !285
  %div588 = fdiv contract float %numerator.sroa.0.8.vec.extract1639, %denominator.sroa.0.0., !dbg !286
  %div592 = fdiv contract float %numerator.sroa.0.12.vec.extract1648, %denominator.sroa.0.0., !dbg !287
  %211 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !288, !noalias !292
  %212 = fptrunc float %div to half, !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %211), !dbg !288, !noalias !292
  %213 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !297, !noalias !292
  %214 = fptrunc float %div584 to half, !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %213), !dbg !297, !noalias !292
  %215 = bitcast half %212 to i16, !dbg !299
  %216 = bitcast half %214 to i16, !dbg !302
  %217 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !303
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !303, !noalias !307
  %218 = fptrunc float %div588 to half, !dbg !303
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %217), !dbg !303, !noalias !307
  %219 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !312, !noalias !307
  %220 = fptrunc float %div592 to half, !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %219), !dbg !312, !noalias !307
  %221 = bitcast half %218 to i16, !dbg !314
  %222 = bitcast half %220 to i16, !dbg !316
  %__7.sroa.6.0.insert.ext = zext i16 %222 to i64, !dbg !317
  %__7.sroa.6.0.insert.shift = shl nuw i64 %__7.sroa.6.0.insert.ext, 48, !dbg !317
  %__7.sroa.5.0.insert.ext = zext i16 %221 to i64, !dbg !317
  %__7.sroa.5.0.insert.shift = shl nuw nsw i64 %__7.sroa.5.0.insert.ext, 32, !dbg !317
  %__7.sroa.5.0.insert.insert = or disjoint i64 %__7.sroa.6.0.insert.shift, %__7.sroa.5.0.insert.shift, !dbg !317
  %__7.sroa.4.0.insert.ext = zext i16 %216 to i64, !dbg !317
  %__7.sroa.4.0.insert.shift = shl nuw nsw i64 %__7.sroa.4.0.insert.ext, 16, !dbg !317
  %__7.sroa.4.0.insert.insert = or disjoint i64 %__7.sroa.5.0.insert.insert, %__7.sroa.4.0.insert.shift, !dbg !317
  %__7.sroa.0.0.insert.ext = zext i16 %215 to i64, !dbg !317
  %__7.sroa.0.0.insert.insert = or disjoint i64 %__7.sroa.4.0.insert.insert, %__7.sroa.0.0.insert.ext, !dbg !317
  %add624 = or disjoint i32 %mul37, %add167, !dbg !318
  %add629 = or disjoint i32 %add624, %mul42, !dbg !319
  %add.ptr631 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add629, !dbg !320
  store i64 %__7.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr631, align 8, !dbg !321
  %numerator.sroa.30.16.vec.extract1659 = extractelement <4 x float> %numerator.sroa.30.1, i64 0, !dbg !283
  %numerator.sroa.30.20.vec.extract1668 = extractelement <4 x float> %numerator.sroa.30.1, i64 1, !dbg !283
  %numerator.sroa.30.24.vec.extract1677 = extractelement <4 x float> %numerator.sroa.30.1, i64 2, !dbg !283
  %numerator.sroa.30.28.vec.extract1686 = extractelement <4 x float> %numerator.sroa.30.1, i64 3, !dbg !283
  %div.1 = fdiv contract float %numerator.sroa.30.16.vec.extract1659, %denominator.sroa.0.0., !dbg !284
  %div584.1 = fdiv contract float %numerator.sroa.30.20.vec.extract1668, %denominator.sroa.0.0., !dbg !285
  %div588.1 = fdiv contract float %numerator.sroa.30.24.vec.extract1677, %denominator.sroa.0.0., !dbg !286
  %div592.1 = fdiv contract float %numerator.sroa.30.28.vec.extract1686, %denominator.sroa.0.0., !dbg !287
  %223 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !288, !noalias !292
  %224 = fptrunc float %div.1 to half, !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %223), !dbg !288, !noalias !292
  %225 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !297, !noalias !292
  %226 = fptrunc float %div584.1 to half, !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %225), !dbg !297, !noalias !292
  %227 = bitcast half %224 to i16, !dbg !299
  %228 = bitcast half %226 to i16, !dbg !302
  %229 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !303
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !303, !noalias !307
  %230 = fptrunc float %div588.1 to half, !dbg !303
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %229), !dbg !303, !noalias !307
  %231 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !312, !noalias !307
  %232 = fptrunc float %div592.1 to half, !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %231), !dbg !312, !noalias !307
  %233 = bitcast half %230 to i16, !dbg !314
  %234 = bitcast half %232 to i16, !dbg !316
  %__7.sroa.6.0.insert.ext.1 = zext i16 %234 to i64, !dbg !317
  %__7.sroa.6.0.insert.shift.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.1, 48, !dbg !317
  %__7.sroa.5.0.insert.ext.1 = zext i16 %233 to i64, !dbg !317
  %__7.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1, 32, !dbg !317
  %__7.sroa.5.0.insert.insert.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.1, %__7.sroa.5.0.insert.shift.1, !dbg !317
  %__7.sroa.4.0.insert.ext.1 = zext i16 %228 to i64, !dbg !317
  %__7.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1, 16, !dbg !317
  %__7.sroa.4.0.insert.insert.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.1, %__7.sroa.4.0.insert.shift.1, !dbg !317
  %__7.sroa.0.0.insert.ext.1 = zext i16 %227 to i64, !dbg !317
  %__7.sroa.0.0.insert.insert.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.1, %__7.sroa.0.0.insert.ext.1, !dbg !317
  %add624.1 = or disjoint i32 %mul37.1, %add167, !dbg !318
  %add629.1 = or disjoint i32 %add624.1, %mul42, !dbg !319
  %add.ptr631.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add629.1, !dbg !320
  store i64 %__7.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr631.1, align 8, !dbg !321
  %numerator.sroa.58.32.vec.extract1697 = extractelement <4 x float> %numerator.sroa.58.1, i64 0, !dbg !283
  %numerator.sroa.58.36.vec.extract1706 = extractelement <4 x float> %numerator.sroa.58.1, i64 1, !dbg !283
  %numerator.sroa.58.40.vec.extract1715 = extractelement <4 x float> %numerator.sroa.58.1, i64 2, !dbg !283
  %numerator.sroa.58.44.vec.extract1724 = extractelement <4 x float> %numerator.sroa.58.1, i64 3, !dbg !283
  %div.2 = fdiv contract float %numerator.sroa.58.32.vec.extract1697, %denominator.sroa.0.0., !dbg !284
  %div584.2 = fdiv contract float %numerator.sroa.58.36.vec.extract1706, %denominator.sroa.0.0., !dbg !285
  %div588.2 = fdiv contract float %numerator.sroa.58.40.vec.extract1715, %denominator.sroa.0.0., !dbg !286
  %div592.2 = fdiv contract float %numerator.sroa.58.44.vec.extract1724, %denominator.sroa.0.0., !dbg !287
  %235 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !288, !noalias !292
  %236 = fptrunc float %div.2 to half, !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %235), !dbg !288, !noalias !292
  %237 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !297, !noalias !292
  %238 = fptrunc float %div584.2 to half, !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %237), !dbg !297, !noalias !292
  %239 = bitcast half %236 to i16, !dbg !299
  %240 = bitcast half %238 to i16, !dbg !302
  %241 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !303
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !303, !noalias !307
  %242 = fptrunc float %div588.2 to half, !dbg !303
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %241), !dbg !303, !noalias !307
  %243 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !312, !noalias !307
  %244 = fptrunc float %div592.2 to half, !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %243), !dbg !312, !noalias !307
  %245 = bitcast half %242 to i16, !dbg !314
  %246 = bitcast half %244 to i16, !dbg !316
  %__7.sroa.6.0.insert.ext.2 = zext i16 %246 to i64, !dbg !317
  %__7.sroa.6.0.insert.shift.2 = shl nuw i64 %__7.sroa.6.0.insert.ext.2, 48, !dbg !317
  %__7.sroa.5.0.insert.ext.2 = zext i16 %245 to i64, !dbg !317
  %__7.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.2, 32, !dbg !317
  %__7.sroa.5.0.insert.insert.2 = or disjoint i64 %__7.sroa.6.0.insert.shift.2, %__7.sroa.5.0.insert.shift.2, !dbg !317
  %__7.sroa.4.0.insert.ext.2 = zext i16 %240 to i64, !dbg !317
  %__7.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.2, 16, !dbg !317
  %__7.sroa.4.0.insert.insert.2 = or disjoint i64 %__7.sroa.5.0.insert.insert.2, %__7.sroa.4.0.insert.shift.2, !dbg !317
  %__7.sroa.0.0.insert.ext.2 = zext i16 %239 to i64, !dbg !317
  %__7.sroa.0.0.insert.insert.2 = or disjoint i64 %__7.sroa.4.0.insert.insert.2, %__7.sroa.0.0.insert.ext.2, !dbg !317
  %add624.2 = or disjoint i32 %mul37.2, %add167, !dbg !318
  %add629.2 = or disjoint i32 %add624.2, %mul42, !dbg !319
  %add.ptr631.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add629.2, !dbg !320
  store i64 %__7.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr631.2, align 8, !dbg !321
  %numerator.sroa.86.48.vec.extract1735 = extractelement <4 x float> %numerator.sroa.86.1, i64 0, !dbg !283
  %numerator.sroa.86.52.vec.extract1744 = extractelement <4 x float> %numerator.sroa.86.1, i64 1, !dbg !283
  %numerator.sroa.86.56.vec.extract1753 = extractelement <4 x float> %numerator.sroa.86.1, i64 2, !dbg !283
  %numerator.sroa.86.60.vec.extract1762 = extractelement <4 x float> %numerator.sroa.86.1, i64 3, !dbg !283
  %div.3 = fdiv contract float %numerator.sroa.86.48.vec.extract1735, %denominator.sroa.0.0., !dbg !284
  %div584.3 = fdiv contract float %numerator.sroa.86.52.vec.extract1744, %denominator.sroa.0.0., !dbg !285
  %div588.3 = fdiv contract float %numerator.sroa.86.56.vec.extract1753, %denominator.sroa.0.0., !dbg !286
  %div592.3 = fdiv contract float %numerator.sroa.86.60.vec.extract1762, %denominator.sroa.0.0., !dbg !287
  %247 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !288, !noalias !292
  %248 = fptrunc float %div.3 to half, !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %247), !dbg !288, !noalias !292
  %249 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !297, !noalias !292
  %250 = fptrunc float %div584.3 to half, !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %249), !dbg !297, !noalias !292
  %251 = bitcast half %248 to i16, !dbg !299
  %252 = bitcast half %250 to i16, !dbg !302
  %253 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !303
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !303, !noalias !307
  %254 = fptrunc float %div588.3 to half, !dbg !303
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %253), !dbg !303, !noalias !307
  %255 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !312, !noalias !307
  %256 = fptrunc float %div592.3 to half, !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %255), !dbg !312, !noalias !307
  %257 = bitcast half %254 to i16, !dbg !314
  %258 = bitcast half %256 to i16, !dbg !316
  %__7.sroa.6.0.insert.ext.3 = zext i16 %258 to i64, !dbg !317
  %__7.sroa.6.0.insert.shift.3 = shl nuw i64 %__7.sroa.6.0.insert.ext.3, 48, !dbg !317
  %__7.sroa.5.0.insert.ext.3 = zext i16 %257 to i64, !dbg !317
  %__7.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.3, 32, !dbg !317
  %__7.sroa.5.0.insert.insert.3 = or disjoint i64 %__7.sroa.6.0.insert.shift.3, %__7.sroa.5.0.insert.shift.3, !dbg !317
  %__7.sroa.4.0.insert.ext.3 = zext i16 %252 to i64, !dbg !317
  %__7.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.3, 16, !dbg !317
  %__7.sroa.4.0.insert.insert.3 = or disjoint i64 %__7.sroa.5.0.insert.insert.3, %__7.sroa.4.0.insert.shift.3, !dbg !317
  %__7.sroa.0.0.insert.ext.3 = zext i16 %251 to i64, !dbg !317
  %__7.sroa.0.0.insert.insert.3 = or disjoint i64 %__7.sroa.4.0.insert.insert.3, %__7.sroa.0.0.insert.ext.3, !dbg !317
  %add624.3 = or disjoint i32 %mul37.3, %add167, !dbg !318
  %add629.3 = or disjoint i32 %add624.3, %mul42, !dbg !319
  %add.ptr631.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add629.3, !dbg !320
  store i64 %__7.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr631.3, align 8, !dbg !321
  %and636 = and i32 %2, 48, !dbg !322
  %cmp637 = icmp eq i32 %and636, 0, !dbg !323
  br i1 %cmp637, label %if.then638, label %if.end659, !dbg !324

if.then638:                                       ; preds = %if.end555.1
  %mul642 = and i32 %5, 240
  %and644 = and i32 %2, 15
  %add645 = or disjoint i32 %mul642, %and644
  %259 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add645
  %arrayidx658 = getelementptr inbounds i8, ptr addrspace(3) %259, i32 8448
  %add646 = or disjoint i32 %add645, 2048
  %arrayidx648 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add646
  store float %maximum.sroa.0.1.1, ptr addrspace(3) %arrayidx648, align 4, !dbg !325, !tbaa !326
  store float %denominator.sroa.0.1.1, ptr addrspace(3) %arrayidx658, align 4, !dbg !328, !tbaa !326
  br label %if.end659, !dbg !329

if.end659:                                        ; preds = %if.then638, %if.end555.1
  fence syncscope("block") release, !dbg !330
  tail call void @llvm.mxc.barrier(), !dbg !333
  fence syncscope("block") acquire, !dbg !334
  %cmp662 = icmp ult i32 %2, 64, !dbg !335
  br i1 %cmp662, label %for.cond667.preheader, label %if.end904, !dbg !336

for.cond667.preheader:                            ; preds = %if.end659
  %and674 = and i32 %2, 15
  %260 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %and674, !dbg !337
  %arrayidx678 = getelementptr inbounds i8, ptr addrspace(3) %260, i32 8192, !dbg !337
  %261 = load float, ptr addrspace(3) %arrayidx678, align 4, !dbg !337, !tbaa !326
  %262 = tail call contract noundef float @llvm.maxnum.f32(float %261, float 0xFFF0000000000000), !dbg !338
  %add675.1 = or disjoint i32 %and674, 16, !dbg !340
  %263 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add675.1, !dbg !337
  %arrayidx678.1 = getelementptr inbounds i8, ptr addrspace(3) %263, i32 8192, !dbg !337
  %264 = load float, ptr addrspace(3) %arrayidx678.1, align 4, !dbg !337, !tbaa !326
  %265 = tail call contract noundef float @llvm.maxnum.f32(float %262, float %264), !dbg !338
  %add675.2 = or disjoint i32 %and674, 32, !dbg !340
  %266 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add675.2, !dbg !337
  %arrayidx678.2 = getelementptr inbounds i8, ptr addrspace(3) %266, i32 8192, !dbg !337
  %267 = load float, ptr addrspace(3) %arrayidx678.2, align 4, !dbg !337, !tbaa !326
  %268 = tail call contract noundef float @llvm.maxnum.f32(float %265, float %267), !dbg !338
  %add675.3 = or i32 %2, 48, !dbg !340
  %269 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add675.3, !dbg !337
  %arrayidx678.3 = getelementptr inbounds i8, ptr addrspace(3) %269, i32 8192, !dbg !337
  %270 = load float, ptr addrspace(3) %arrayidx678.3, align 4, !dbg !337, !tbaa !326
  %271 = tail call contract noundef float @llvm.maxnum.f32(float %268, float %270), !dbg !338
  %sub697 = fsub contract float %261, %271, !dbg !341
  %mul698 = fmul contract float %sub697, 0x3FC7154760000000, !dbg !342
  %cmp.i.i1123 = fcmp contract olt float %mul698, -1.260000e+02, !dbg !343
  %cond.i.i1124 = select contract i1 %cmp.i.i1123, float 6.400000e+01, float 0.000000e+00, !dbg !343
  %add.i.i1125 = fadd contract float %mul698, %cond.i.i1124, !dbg !343
  %272 = tail call contract float @llvm.exp2.f32(float %add.i.i1125), !dbg !343
  %cond2.i.i1126 = select contract i1 %cmp.i.i1123, float 0x3BF0000000000000, float 1.000000e+00, !dbg !343
  %mul.i.i1127 = fmul contract float %cond2.i.i1126, %272, !dbg !343
  %add705 = or disjoint i32 %and674, 2112, !dbg !345
  %arrayidx707 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add705, !dbg !346
  %273 = load float, ptr addrspace(3) %arrayidx707, align 4, !dbg !346, !tbaa !326
  %mul709 = fmul contract float %273, %mul.i.i1127, !dbg !347
  %add715 = fadd contract float %mul709, 0.000000e+00, !dbg !348
  %sub697.1 = fsub contract float %264, %271, !dbg !341
  %mul698.1 = fmul contract float %sub697.1, 0x3FC7154760000000, !dbg !342
  %cmp.i.i1123.1 = fcmp contract olt float %mul698.1, -1.260000e+02, !dbg !343
  %cond.i.i1124.1 = select contract i1 %cmp.i.i1123.1, float 6.400000e+01, float 0.000000e+00, !dbg !343
  %add.i.i1125.1 = fadd contract float %mul698.1, %cond.i.i1124.1, !dbg !343
  %274 = tail call contract float @llvm.exp2.f32(float %add.i.i1125.1), !dbg !343
  %cond2.i.i1126.1 = select contract i1 %cmp.i.i1123.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !343
  %mul.i.i1127.1 = fmul contract float %cond2.i.i1126.1, %274, !dbg !343
  %add705.1 = or disjoint i32 %and674, 2128, !dbg !345
  %arrayidx707.1 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add705.1, !dbg !346
  %275 = load float, ptr addrspace(3) %arrayidx707.1, align 4, !dbg !346, !tbaa !326
  %mul709.1 = fmul contract float %275, %mul.i.i1127.1, !dbg !347
  %add715.1 = fadd contract float %add715, %mul709.1, !dbg !348
  %sub697.2 = fsub contract float %267, %271, !dbg !341
  %mul698.2 = fmul contract float %sub697.2, 0x3FC7154760000000, !dbg !342
  %cmp.i.i1123.2 = fcmp contract olt float %mul698.2, -1.260000e+02, !dbg !343
  %cond.i.i1124.2 = select contract i1 %cmp.i.i1123.2, float 6.400000e+01, float 0.000000e+00, !dbg !343
  %add.i.i1125.2 = fadd contract float %mul698.2, %cond.i.i1124.2, !dbg !343
  %276 = tail call contract float @llvm.exp2.f32(float %add.i.i1125.2), !dbg !343
  %cond2.i.i1126.2 = select contract i1 %cmp.i.i1123.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !343
  %mul.i.i1127.2 = fmul contract float %cond2.i.i1126.2, %276, !dbg !343
  %add705.2 = or disjoint i32 %and674, 2144, !dbg !345
  %arrayidx707.2 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add705.2, !dbg !346
  %277 = load float, ptr addrspace(3) %arrayidx707.2, align 4, !dbg !346, !tbaa !326
  %mul709.2 = fmul contract float %277, %mul.i.i1127.2, !dbg !347
  %add715.2 = fadd contract float %add715.1, %mul709.2, !dbg !348
  %sub697.3 = fsub contract float %270, %271, !dbg !341
  %mul698.3 = fmul contract float %sub697.3, 0x3FC7154760000000, !dbg !342
  %cmp.i.i1123.3 = fcmp contract olt float %mul698.3, -1.260000e+02, !dbg !343
  %cond.i.i1124.3 = select contract i1 %cmp.i.i1123.3, float 6.400000e+01, float 0.000000e+00, !dbg !343
  %add.i.i1125.3 = fadd contract float %mul698.3, %cond.i.i1124.3, !dbg !343
  %278 = tail call contract float @llvm.exp2.f32(float %add.i.i1125.3), !dbg !343
  %cond2.i.i1126.3 = select contract i1 %cmp.i.i1123.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !343
  %mul.i.i1127.3 = fmul contract float %cond2.i.i1126.3, %278, !dbg !343
  %add705.3 = or i32 %2, 2160, !dbg !345
  %arrayidx707.3 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add705.3, !dbg !346
  %279 = load float, ptr addrspace(3) %arrayidx707.3, align 4, !dbg !346, !tbaa !326
  %mul709.3 = fmul contract float %279, %mul.i.i1127.3, !dbg !347
  %add715.3 = fadd contract float %add715.2, %mul709.3, !dbg !348
  %div727 = fdiv contract float %mul709, %add715.3, !dbg !349
  %div727.1 = fdiv contract float %mul709.1, %add715.3, !dbg !349
  %div727.2 = fdiv contract float %mul709.2, %add715.3, !dbg !349
  %div727.3 = fdiv contract float %mul709.3, %add715.3, !dbg !349
  %xor757 = xor i32 %and31, %and35
  %mul758 = shl nuw nsw i32 %xor757, 3
  %add759 = or disjoint i32 %mul28, %mul758, !dbg !350
  %add764 = or disjoint i32 %add759, %mul42, !dbg !351
  %add.ptr766 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add764, !dbg !352
  %280 = load i64, ptr addrspace(3) %add.ptr766, align 8, !dbg !353
  %v__9.sroa.4.0.extract.shift = lshr i64 %280, 32, !dbg !354
  %281 = trunc i64 %280 to i16, !dbg !355
  %282 = bitcast i16 %281 to half, !dbg !355
  %conv.i1130 = fpext half %282 to float, !dbg !355
  %extelt.offset.i1157 = lshr i64 %280, 16, !dbg !358
  %283 = trunc i64 %extelt.offset.i1157 to i16, !dbg !358
  %284 = bitcast i16 %283 to half, !dbg !358
  %conv6.i = fpext half %284 to float, !dbg !358
  %285 = trunc i64 %v__9.sroa.4.0.extract.shift to i16, !dbg !359
  %286 = bitcast i16 %285 to half, !dbg !359
  %conv.i1132 = fpext half %286 to float, !dbg !359
  %sum.shift = lshr i64 %280, 48, !dbg !361
  %287 = trunc nuw i64 %sum.shift to i16, !dbg !361
  %288 = bitcast i16 %287 to half, !dbg !361
  %conv6.i1134 = fpext half %288 to float, !dbg !361
  %mul794 = fmul contract float %div727, %conv.i1130, !dbg !362
  %mul798 = fmul contract float %div727, %conv6.i, !dbg !363
  %mul802 = fmul contract float %div727, %conv.i1132, !dbg !364
  %mul806 = fmul contract float %div727, %conv6.i1134, !dbg !365
  %add810 = fadd contract float %mul794, 0.000000e+00, !dbg !366
  %add814 = fadd contract float %mul798, 0.000000e+00, !dbg !367
  %add818 = fadd contract float %mul802, 0.000000e+00, !dbg !368
  %add822 = fadd contract float %mul806, 0.000000e+00, !dbg !369
  %add749.1 = or disjoint i32 %mul28, 1024, !dbg !370
  %add759.1 = or disjoint i32 %add749.1, %mul758, !dbg !350
  %add764.1 = or disjoint i32 %add759.1, %mul42, !dbg !351
  %add.ptr766.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add764.1, !dbg !352
  %289 = load i64, ptr addrspace(3) %add.ptr766.1, align 8, !dbg !353
  %v__9.sroa.4.0.extract.shift.1 = lshr i64 %289, 32, !dbg !354
  %290 = trunc i64 %289 to i16, !dbg !355
  %291 = bitcast i16 %290 to half, !dbg !355
  %conv.i1130.1 = fpext half %291 to float, !dbg !355
  %extelt.offset.i1157.1 = lshr i64 %289, 16, !dbg !358
  %292 = trunc i64 %extelt.offset.i1157.1 to i16, !dbg !358
  %293 = bitcast i16 %292 to half, !dbg !358
  %conv6.i.1 = fpext half %293 to float, !dbg !358
  %294 = trunc i64 %v__9.sroa.4.0.extract.shift.1 to i16, !dbg !359
  %295 = bitcast i16 %294 to half, !dbg !359
  %conv.i1132.1 = fpext half %295 to float, !dbg !359
  %sum.shift.1 = lshr i64 %289, 48, !dbg !361
  %296 = trunc nuw i64 %sum.shift.1 to i16, !dbg !361
  %297 = bitcast i16 %296 to half, !dbg !361
  %conv6.i1134.1 = fpext half %297 to float, !dbg !361
  %mul794.1 = fmul contract float %div727.1, %conv.i1130.1, !dbg !362
  %mul798.1 = fmul contract float %div727.1, %conv6.i.1, !dbg !363
  %mul802.1 = fmul contract float %div727.1, %conv.i1132.1, !dbg !364
  %mul806.1 = fmul contract float %div727.1, %conv6.i1134.1, !dbg !365
  %add810.1 = fadd contract float %add810, %mul794.1, !dbg !366
  %add814.1 = fadd contract float %add814, %mul798.1, !dbg !367
  %add818.1 = fadd contract float %add818, %mul802.1, !dbg !368
  %add822.1 = fadd contract float %add822, %mul806.1, !dbg !369
  %add749.2 = or disjoint i32 %mul28, 2048, !dbg !370
  %add759.2 = or disjoint i32 %add749.2, %mul758, !dbg !350
  %add764.2 = or disjoint i32 %add759.2, %mul42, !dbg !351
  %add.ptr766.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add764.2, !dbg !352
  %298 = load i64, ptr addrspace(3) %add.ptr766.2, align 8, !dbg !353
  %v__9.sroa.4.0.extract.shift.2 = lshr i64 %298, 32, !dbg !354
  %299 = trunc i64 %298 to i16, !dbg !355
  %300 = bitcast i16 %299 to half, !dbg !355
  %conv.i1130.2 = fpext half %300 to float, !dbg !355
  %extelt.offset.i1157.2 = lshr i64 %298, 16, !dbg !358
  %301 = trunc i64 %extelt.offset.i1157.2 to i16, !dbg !358
  %302 = bitcast i16 %301 to half, !dbg !358
  %conv6.i.2 = fpext half %302 to float, !dbg !358
  %303 = trunc i64 %v__9.sroa.4.0.extract.shift.2 to i16, !dbg !359
  %304 = bitcast i16 %303 to half, !dbg !359
  %conv.i1132.2 = fpext half %304 to float, !dbg !359
  %sum.shift.2 = lshr i64 %298, 48, !dbg !361
  %305 = trunc nuw i64 %sum.shift.2 to i16, !dbg !361
  %306 = bitcast i16 %305 to half, !dbg !361
  %conv6.i1134.2 = fpext half %306 to float, !dbg !361
  %mul794.2 = fmul contract float %div727.2, %conv.i1130.2, !dbg !362
  %mul798.2 = fmul contract float %div727.2, %conv6.i.2, !dbg !363
  %mul802.2 = fmul contract float %div727.2, %conv.i1132.2, !dbg !364
  %mul806.2 = fmul contract float %div727.2, %conv6.i1134.2, !dbg !365
  %add810.2 = fadd contract float %add810.1, %mul794.2, !dbg !366
  %add814.2 = fadd contract float %add814.1, %mul798.2, !dbg !367
  %add818.2 = fadd contract float %add818.1, %mul802.2, !dbg !368
  %add822.2 = fadd contract float %add822.1, %mul806.2, !dbg !369
  %add749.3 = or i32 %and27, 3072, !dbg !370
  %add759.3 = or disjoint i32 %add749.3, %mul758, !dbg !350
  %add764.3 = or disjoint i32 %add759.3, %mul42, !dbg !351
  %add.ptr766.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add764.3, !dbg !352
  %307 = load i64, ptr addrspace(3) %add.ptr766.3, align 8, !dbg !353
  %v__9.sroa.4.0.extract.shift.3 = lshr i64 %307, 32, !dbg !354
  %308 = trunc i64 %307 to i16, !dbg !355
  %309 = bitcast i16 %308 to half, !dbg !355
  %conv.i1130.3 = fpext half %309 to float, !dbg !355
  %extelt.offset.i1157.3 = lshr i64 %307, 16, !dbg !358
  %310 = trunc i64 %extelt.offset.i1157.3 to i16, !dbg !358
  %311 = bitcast i16 %310 to half, !dbg !358
  %conv6.i.3 = fpext half %311 to float, !dbg !358
  %312 = trunc i64 %v__9.sroa.4.0.extract.shift.3 to i16, !dbg !359
  %313 = bitcast i16 %312 to half, !dbg !359
  %conv.i1132.3 = fpext half %313 to float, !dbg !359
  %sum.shift.3 = lshr i64 %307, 48, !dbg !361
  %314 = trunc nuw i64 %sum.shift.3 to i16, !dbg !361
  %315 = bitcast i16 %314 to half, !dbg !361
  %conv6.i1134.3 = fpext half %315 to float, !dbg !361
  %mul794.3 = fmul contract float %div727.3, %conv.i1130.3, !dbg !362
  %mul798.3 = fmul contract float %div727.3, %conv6.i.3, !dbg !363
  %mul802.3 = fmul contract float %div727.3, %conv.i1132.3, !dbg !364
  %mul806.3 = fmul contract float %div727.3, %conv6.i1134.3, !dbg !365
  %add810.3 = fadd contract float %add810.2, %mul794.3, !dbg !366
  %add814.3 = fadd contract float %add814.2, %mul798.3, !dbg !367
  %add818.3 = fadd contract float %add818.2, %mul802.3, !dbg !368
  %add822.3 = fadd contract float %add822.2, %mul806.3, !dbg !369
  %316 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !371
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !371, !noalias !375
  %317 = fptrunc float %add810.3 to half, !dbg !371
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %316), !dbg !371, !noalias !375
  %318 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !380
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !380, !noalias !375
  %319 = fptrunc float %add814.3 to half, !dbg !380
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %318), !dbg !380, !noalias !375
  %320 = bitcast half %317 to i16, !dbg !382
  %321 = bitcast half %319 to i16, !dbg !384
  %322 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !385
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !385, !noalias !389
  %323 = fptrunc float %add818.3 to half, !dbg !385
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %322), !dbg !385, !noalias !389
  %324 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !394
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !394, !noalias !389
  %325 = fptrunc float %add822.3 to half, !dbg !394
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %324), !dbg !394, !noalias !389
  %326 = bitcast half %323 to i16, !dbg !396
  %327 = bitcast half %325 to i16, !dbg !398
  %__12.sroa.6.0.insert.ext = zext i16 %327 to i64, !dbg !399
  %__12.sroa.6.0.insert.shift = shl nuw i64 %__12.sroa.6.0.insert.ext, 48, !dbg !399
  %__12.sroa.5.0.insert.ext = zext i16 %326 to i64, !dbg !399
  %__12.sroa.5.0.insert.shift = shl nuw nsw i64 %__12.sroa.5.0.insert.ext, 32, !dbg !399
  %__12.sroa.5.0.insert.insert = or disjoint i64 %__12.sroa.6.0.insert.shift, %__12.sroa.5.0.insert.shift, !dbg !399
  %__12.sroa.4.0.insert.ext = zext i16 %321 to i64, !dbg !399
  %__12.sroa.4.0.insert.shift = shl nuw nsw i64 %__12.sroa.4.0.insert.ext, 16, !dbg !399
  %__12.sroa.4.0.insert.insert = or disjoint i64 %__12.sroa.5.0.insert.insert, %__12.sroa.4.0.insert.shift, !dbg !399
  %__12.sroa.0.0.insert.ext = zext i16 %320 to i64, !dbg !399
  %__12.sroa.0.0.insert.insert = or disjoint i64 %__12.sroa.4.0.insert.insert, %__12.sroa.0.0.insert.ext, !dbg !399
  store i64 %__12.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr766, align 8, !dbg !400
  %add754.1 = or disjoint i32 %and31, 2
  %xor757.1 = xor i32 %add754.1, %and35
  %mul758.1 = shl nuw nsw i32 %xor757.1, 3
  %add759.11270 = or disjoint i32 %mul28, %mul758.1, !dbg !350
  %add764.11271 = or disjoint i32 %add759.11270, %mul42, !dbg !351
  %add.ptr766.11272 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add764.11271, !dbg !352
  %328 = load i64, ptr addrspace(3) %add.ptr766.11272, align 8, !dbg !353
  %v__9.sroa.4.0.extract.shift.11273 = lshr i64 %328, 32, !dbg !354
  %329 = trunc i64 %328 to i16, !dbg !355
  %330 = bitcast i16 %329 to half, !dbg !355
  %conv.i1130.11274 = fpext half %330 to float, !dbg !355
  %extelt.offset.i1157.11275 = lshr i64 %328, 16, !dbg !358
  %331 = trunc i64 %extelt.offset.i1157.11275 to i16, !dbg !358
  %332 = bitcast i16 %331 to half, !dbg !358
  %conv6.i.11276 = fpext half %332 to float, !dbg !358
  %333 = trunc i64 %v__9.sroa.4.0.extract.shift.11273 to i16, !dbg !359
  %334 = bitcast i16 %333 to half, !dbg !359
  %conv.i1132.11277 = fpext half %334 to float, !dbg !359
  %sum.shift.11278 = lshr i64 %328, 48, !dbg !361
  %335 = trunc nuw i64 %sum.shift.11278 to i16, !dbg !361
  %336 = bitcast i16 %335 to half, !dbg !361
  %conv6.i1134.11279 = fpext half %336 to float, !dbg !361
  %mul794.11280 = fmul contract float %div727, %conv.i1130.11274, !dbg !362
  %mul798.11281 = fmul contract float %div727, %conv6.i.11276, !dbg !363
  %mul802.11282 = fmul contract float %div727, %conv.i1132.11277, !dbg !364
  %mul806.11283 = fmul contract float %div727, %conv6.i1134.11279, !dbg !365
  %add810.11284 = fadd contract float %mul794.11280, 0.000000e+00, !dbg !366
  %add814.11285 = fadd contract float %mul798.11281, 0.000000e+00, !dbg !367
  %add818.11286 = fadd contract float %mul802.11282, 0.000000e+00, !dbg !368
  %add822.11287 = fadd contract float %mul806.11283, 0.000000e+00, !dbg !369
  %add759.1.1 = or disjoint i32 %add749.1, %mul758.1, !dbg !350
  %add764.1.1 = or disjoint i32 %add759.1.1, %mul42, !dbg !351
  %add.ptr766.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add764.1.1, !dbg !352
  %337 = load i64, ptr addrspace(3) %add.ptr766.1.1, align 8, !dbg !353
  %v__9.sroa.4.0.extract.shift.1.1 = lshr i64 %337, 32, !dbg !354
  %338 = trunc i64 %337 to i16, !dbg !355
  %339 = bitcast i16 %338 to half, !dbg !355
  %conv.i1130.1.1 = fpext half %339 to float, !dbg !355
  %extelt.offset.i1157.1.1 = lshr i64 %337, 16, !dbg !358
  %340 = trunc i64 %extelt.offset.i1157.1.1 to i16, !dbg !358
  %341 = bitcast i16 %340 to half, !dbg !358
  %conv6.i.1.1 = fpext half %341 to float, !dbg !358
  %342 = trunc i64 %v__9.sroa.4.0.extract.shift.1.1 to i16, !dbg !359
  %343 = bitcast i16 %342 to half, !dbg !359
  %conv.i1132.1.1 = fpext half %343 to float, !dbg !359
  %sum.shift.1.1 = lshr i64 %337, 48, !dbg !361
  %344 = trunc nuw i64 %sum.shift.1.1 to i16, !dbg !361
  %345 = bitcast i16 %344 to half, !dbg !361
  %conv6.i1134.1.1 = fpext half %345 to float, !dbg !361
  %mul794.1.1 = fmul contract float %div727.1, %conv.i1130.1.1, !dbg !362
  %mul798.1.1 = fmul contract float %div727.1, %conv6.i.1.1, !dbg !363
  %mul802.1.1 = fmul contract float %div727.1, %conv.i1132.1.1, !dbg !364
  %mul806.1.1 = fmul contract float %div727.1, %conv6.i1134.1.1, !dbg !365
  %add810.1.1 = fadd contract float %add810.11284, %mul794.1.1, !dbg !366
  %add814.1.1 = fadd contract float %add814.11285, %mul798.1.1, !dbg !367
  %add818.1.1 = fadd contract float %add818.11286, %mul802.1.1, !dbg !368
  %add822.1.1 = fadd contract float %add822.11287, %mul806.1.1, !dbg !369
  %add759.2.1 = or disjoint i32 %add749.2, %mul758.1, !dbg !350
  %add764.2.1 = or disjoint i32 %add759.2.1, %mul42, !dbg !351
  %add.ptr766.2.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add764.2.1, !dbg !352
  %346 = load i64, ptr addrspace(3) %add.ptr766.2.1, align 8, !dbg !353
  %v__9.sroa.4.0.extract.shift.2.1 = lshr i64 %346, 32, !dbg !354
  %347 = trunc i64 %346 to i16, !dbg !355
  %348 = bitcast i16 %347 to half, !dbg !355
  %conv.i1130.2.1 = fpext half %348 to float, !dbg !355
  %extelt.offset.i1157.2.1 = lshr i64 %346, 16, !dbg !358
  %349 = trunc i64 %extelt.offset.i1157.2.1 to i16, !dbg !358
  %350 = bitcast i16 %349 to half, !dbg !358
  %conv6.i.2.1 = fpext half %350 to float, !dbg !358
  %351 = trunc i64 %v__9.sroa.4.0.extract.shift.2.1 to i16, !dbg !359
  %352 = bitcast i16 %351 to half, !dbg !359
  %conv.i1132.2.1 = fpext half %352 to float, !dbg !359
  %sum.shift.2.1 = lshr i64 %346, 48, !dbg !361
  %353 = trunc nuw i64 %sum.shift.2.1 to i16, !dbg !361
  %354 = bitcast i16 %353 to half, !dbg !361
  %conv6.i1134.2.1 = fpext half %354 to float, !dbg !361
  %mul794.2.1 = fmul contract float %div727.2, %conv.i1130.2.1, !dbg !362
  %mul798.2.1 = fmul contract float %div727.2, %conv6.i.2.1, !dbg !363
  %mul802.2.1 = fmul contract float %div727.2, %conv.i1132.2.1, !dbg !364
  %mul806.2.1 = fmul contract float %div727.2, %conv6.i1134.2.1, !dbg !365
  %add810.2.1 = fadd contract float %add810.1.1, %mul794.2.1, !dbg !366
  %add814.2.1 = fadd contract float %add814.1.1, %mul798.2.1, !dbg !367
  %add818.2.1 = fadd contract float %add818.1.1, %mul802.2.1, !dbg !368
  %add822.2.1 = fadd contract float %add822.1.1, %mul806.2.1, !dbg !369
  %add759.3.1 = or disjoint i32 %add749.3, %mul758.1, !dbg !350
  %add764.3.1 = or disjoint i32 %add759.3.1, %mul42, !dbg !351
  %add.ptr766.3.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add764.3.1, !dbg !352
  %355 = load i64, ptr addrspace(3) %add.ptr766.3.1, align 8, !dbg !353
  %v__9.sroa.4.0.extract.shift.3.1 = lshr i64 %355, 32, !dbg !354
  %356 = trunc i64 %355 to i16, !dbg !355
  %357 = bitcast i16 %356 to half, !dbg !355
  %conv.i1130.3.1 = fpext half %357 to float, !dbg !355
  %extelt.offset.i1157.3.1 = lshr i64 %355, 16, !dbg !358
  %358 = trunc i64 %extelt.offset.i1157.3.1 to i16, !dbg !358
  %359 = bitcast i16 %358 to half, !dbg !358
  %conv6.i.3.1 = fpext half %359 to float, !dbg !358
  %360 = trunc i64 %v__9.sroa.4.0.extract.shift.3.1 to i16, !dbg !359
  %361 = bitcast i16 %360 to half, !dbg !359
  %conv.i1132.3.1 = fpext half %361 to float, !dbg !359
  %sum.shift.3.1 = lshr i64 %355, 48, !dbg !361
  %362 = trunc nuw i64 %sum.shift.3.1 to i16, !dbg !361
  %363 = bitcast i16 %362 to half, !dbg !361
  %conv6.i1134.3.1 = fpext half %363 to float, !dbg !361
  %mul794.3.1 = fmul contract float %div727.3, %conv.i1130.3.1, !dbg !362
  %mul798.3.1 = fmul contract float %div727.3, %conv6.i.3.1, !dbg !363
  %mul802.3.1 = fmul contract float %div727.3, %conv.i1132.3.1, !dbg !364
  %mul806.3.1 = fmul contract float %div727.3, %conv6.i1134.3.1, !dbg !365
  %add810.3.1 = fadd contract float %add810.2.1, %mul794.3.1, !dbg !366
  %add814.3.1 = fadd contract float %add814.2.1, %mul798.3.1, !dbg !367
  %add818.3.1 = fadd contract float %add818.2.1, %mul802.3.1, !dbg !368
  %add822.3.1 = fadd contract float %add822.2.1, %mul806.3.1, !dbg !369
  %364 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !371
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !371, !noalias !375
  %365 = fptrunc float %add810.3.1 to half, !dbg !371
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %364), !dbg !371, !noalias !375
  %366 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !380
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !380, !noalias !375
  %367 = fptrunc float %add814.3.1 to half, !dbg !380
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %366), !dbg !380, !noalias !375
  %368 = bitcast half %365 to i16, !dbg !382
  %369 = bitcast half %367 to i16, !dbg !384
  %370 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !385
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !385, !noalias !389
  %371 = fptrunc float %add818.3.1 to half, !dbg !385
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %370), !dbg !385, !noalias !389
  %372 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !394
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !394, !noalias !389
  %373 = fptrunc float %add822.3.1 to half, !dbg !394
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %372), !dbg !394, !noalias !389
  %374 = bitcast half %371 to i16, !dbg !396
  %375 = bitcast half %373 to i16, !dbg !398
  %__12.sroa.6.0.insert.ext.1 = zext i16 %375 to i64, !dbg !399
  %__12.sroa.6.0.insert.shift.1 = shl nuw i64 %__12.sroa.6.0.insert.ext.1, 48, !dbg !399
  %__12.sroa.5.0.insert.ext.1 = zext i16 %374 to i64, !dbg !399
  %__12.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__12.sroa.5.0.insert.ext.1, 32, !dbg !399
  %__12.sroa.5.0.insert.insert.1 = or disjoint i64 %__12.sroa.6.0.insert.shift.1, %__12.sroa.5.0.insert.shift.1, !dbg !399
  %__12.sroa.4.0.insert.ext.1 = zext i16 %369 to i64, !dbg !399
  %__12.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__12.sroa.4.0.insert.ext.1, 16, !dbg !399
  %__12.sroa.4.0.insert.insert.1 = or disjoint i64 %__12.sroa.5.0.insert.insert.1, %__12.sroa.4.0.insert.shift.1, !dbg !399
  %__12.sroa.0.0.insert.ext.1 = zext i16 %368 to i64, !dbg !399
  %__12.sroa.0.0.insert.insert.1 = or disjoint i64 %__12.sroa.4.0.insert.insert.1, %__12.sroa.0.0.insert.ext.1, !dbg !399
  store i64 %__12.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr766.11272, align 8, !dbg !400
  %add754.2 = or disjoint i32 %and31, 4
  %xor757.2 = xor i32 %add754.2, %and35
  %mul758.2 = shl nuw nsw i32 %xor757.2, 3
  %add759.21288 = or disjoint i32 %mul28, %mul758.2, !dbg !350
  %add764.21289 = or disjoint i32 %add759.21288, %mul42, !dbg !351
  %add.ptr766.21290 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add764.21289, !dbg !352
  %376 = load i64, ptr addrspace(3) %add.ptr766.21290, align 8, !dbg !353
  %v__9.sroa.4.0.extract.shift.21291 = lshr i64 %376, 32, !dbg !354
  %377 = trunc i64 %376 to i16, !dbg !355
  %378 = bitcast i16 %377 to half, !dbg !355
  %conv.i1130.21292 = fpext half %378 to float, !dbg !355
  %extelt.offset.i1157.21293 = lshr i64 %376, 16, !dbg !358
  %379 = trunc i64 %extelt.offset.i1157.21293 to i16, !dbg !358
  %380 = bitcast i16 %379 to half, !dbg !358
  %conv6.i.21294 = fpext half %380 to float, !dbg !358
  %381 = trunc i64 %v__9.sroa.4.0.extract.shift.21291 to i16, !dbg !359
  %382 = bitcast i16 %381 to half, !dbg !359
  %conv.i1132.21295 = fpext half %382 to float, !dbg !359
  %sum.shift.21296 = lshr i64 %376, 48, !dbg !361
  %383 = trunc nuw i64 %sum.shift.21296 to i16, !dbg !361
  %384 = bitcast i16 %383 to half, !dbg !361
  %conv6.i1134.21297 = fpext half %384 to float, !dbg !361
  %mul794.21298 = fmul contract float %div727, %conv.i1130.21292, !dbg !362
  %mul798.21299 = fmul contract float %div727, %conv6.i.21294, !dbg !363
  %mul802.21300 = fmul contract float %div727, %conv.i1132.21295, !dbg !364
  %mul806.21301 = fmul contract float %div727, %conv6.i1134.21297, !dbg !365
  %add810.21302 = fadd contract float %mul794.21298, 0.000000e+00, !dbg !366
  %add814.21303 = fadd contract float %mul798.21299, 0.000000e+00, !dbg !367
  %add818.21304 = fadd contract float %mul802.21300, 0.000000e+00, !dbg !368
  %add822.21305 = fadd contract float %mul806.21301, 0.000000e+00, !dbg !369
  %add759.1.2 = or disjoint i32 %add749.1, %mul758.2, !dbg !350
  %add764.1.2 = or disjoint i32 %add759.1.2, %mul42, !dbg !351
  %add.ptr766.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add764.1.2, !dbg !352
  %385 = load i64, ptr addrspace(3) %add.ptr766.1.2, align 8, !dbg !353
  %v__9.sroa.4.0.extract.shift.1.2 = lshr i64 %385, 32, !dbg !354
  %386 = trunc i64 %385 to i16, !dbg !355
  %387 = bitcast i16 %386 to half, !dbg !355
  %conv.i1130.1.2 = fpext half %387 to float, !dbg !355
  %extelt.offset.i1157.1.2 = lshr i64 %385, 16, !dbg !358
  %388 = trunc i64 %extelt.offset.i1157.1.2 to i16, !dbg !358
  %389 = bitcast i16 %388 to half, !dbg !358
  %conv6.i.1.2 = fpext half %389 to float, !dbg !358
  %390 = trunc i64 %v__9.sroa.4.0.extract.shift.1.2 to i16, !dbg !359
  %391 = bitcast i16 %390 to half, !dbg !359
  %conv.i1132.1.2 = fpext half %391 to float, !dbg !359
  %sum.shift.1.2 = lshr i64 %385, 48, !dbg !361
  %392 = trunc nuw i64 %sum.shift.1.2 to i16, !dbg !361
  %393 = bitcast i16 %392 to half, !dbg !361
  %conv6.i1134.1.2 = fpext half %393 to float, !dbg !361
  %mul794.1.2 = fmul contract float %div727.1, %conv.i1130.1.2, !dbg !362
  %mul798.1.2 = fmul contract float %div727.1, %conv6.i.1.2, !dbg !363
  %mul802.1.2 = fmul contract float %div727.1, %conv.i1132.1.2, !dbg !364
  %mul806.1.2 = fmul contract float %div727.1, %conv6.i1134.1.2, !dbg !365
  %add810.1.2 = fadd contract float %add810.21302, %mul794.1.2, !dbg !366
  %add814.1.2 = fadd contract float %add814.21303, %mul798.1.2, !dbg !367
  %add818.1.2 = fadd contract float %add818.21304, %mul802.1.2, !dbg !368
  %add822.1.2 = fadd contract float %add822.21305, %mul806.1.2, !dbg !369
  %add759.2.2 = or disjoint i32 %add749.2, %mul758.2, !dbg !350
  %add764.2.2 = or disjoint i32 %add759.2.2, %mul42, !dbg !351
  %add.ptr766.2.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add764.2.2, !dbg !352
  %394 = load i64, ptr addrspace(3) %add.ptr766.2.2, align 8, !dbg !353
  %v__9.sroa.4.0.extract.shift.2.2 = lshr i64 %394, 32, !dbg !354
  %395 = trunc i64 %394 to i16, !dbg !355
  %396 = bitcast i16 %395 to half, !dbg !355
  %conv.i1130.2.2 = fpext half %396 to float, !dbg !355
  %extelt.offset.i1157.2.2 = lshr i64 %394, 16, !dbg !358
  %397 = trunc i64 %extelt.offset.i1157.2.2 to i16, !dbg !358
  %398 = bitcast i16 %397 to half, !dbg !358
  %conv6.i.2.2 = fpext half %398 to float, !dbg !358
  %399 = trunc i64 %v__9.sroa.4.0.extract.shift.2.2 to i16, !dbg !359
  %400 = bitcast i16 %399 to half, !dbg !359
  %conv.i1132.2.2 = fpext half %400 to float, !dbg !359
  %sum.shift.2.2 = lshr i64 %394, 48, !dbg !361
  %401 = trunc nuw i64 %sum.shift.2.2 to i16, !dbg !361
  %402 = bitcast i16 %401 to half, !dbg !361
  %conv6.i1134.2.2 = fpext half %402 to float, !dbg !361
  %mul794.2.2 = fmul contract float %div727.2, %conv.i1130.2.2, !dbg !362
  %mul798.2.2 = fmul contract float %div727.2, %conv6.i.2.2, !dbg !363
  %mul802.2.2 = fmul contract float %div727.2, %conv.i1132.2.2, !dbg !364
  %mul806.2.2 = fmul contract float %div727.2, %conv6.i1134.2.2, !dbg !365
  %add810.2.2 = fadd contract float %add810.1.2, %mul794.2.2, !dbg !366
  %add814.2.2 = fadd contract float %add814.1.2, %mul798.2.2, !dbg !367
  %add818.2.2 = fadd contract float %add818.1.2, %mul802.2.2, !dbg !368
  %add822.2.2 = fadd contract float %add822.1.2, %mul806.2.2, !dbg !369
  %add759.3.2 = or disjoint i32 %add749.3, %mul758.2, !dbg !350
  %add764.3.2 = or disjoint i32 %add759.3.2, %mul42, !dbg !351
  %add.ptr766.3.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add764.3.2, !dbg !352
  %403 = load i64, ptr addrspace(3) %add.ptr766.3.2, align 8, !dbg !353
  %v__9.sroa.4.0.extract.shift.3.2 = lshr i64 %403, 32, !dbg !354
  %404 = trunc i64 %403 to i16, !dbg !355
  %405 = bitcast i16 %404 to half, !dbg !355
  %conv.i1130.3.2 = fpext half %405 to float, !dbg !355
  %extelt.offset.i1157.3.2 = lshr i64 %403, 16, !dbg !358
  %406 = trunc i64 %extelt.offset.i1157.3.2 to i16, !dbg !358
  %407 = bitcast i16 %406 to half, !dbg !358
  %conv6.i.3.2 = fpext half %407 to float, !dbg !358
  %408 = trunc i64 %v__9.sroa.4.0.extract.shift.3.2 to i16, !dbg !359
  %409 = bitcast i16 %408 to half, !dbg !359
  %conv.i1132.3.2 = fpext half %409 to float, !dbg !359
  %sum.shift.3.2 = lshr i64 %403, 48, !dbg !361
  %410 = trunc nuw i64 %sum.shift.3.2 to i16, !dbg !361
  %411 = bitcast i16 %410 to half, !dbg !361
  %conv6.i1134.3.2 = fpext half %411 to float, !dbg !361
  %mul794.3.2 = fmul contract float %div727.3, %conv.i1130.3.2, !dbg !362
  %mul798.3.2 = fmul contract float %div727.3, %conv6.i.3.2, !dbg !363
  %mul802.3.2 = fmul contract float %div727.3, %conv.i1132.3.2, !dbg !364
  %mul806.3.2 = fmul contract float %div727.3, %conv6.i1134.3.2, !dbg !365
  %add810.3.2 = fadd contract float %add810.2.2, %mul794.3.2, !dbg !366
  %add814.3.2 = fadd contract float %add814.2.2, %mul798.3.2, !dbg !367
  %add818.3.2 = fadd contract float %add818.2.2, %mul802.3.2, !dbg !368
  %add822.3.2 = fadd contract float %add822.2.2, %mul806.3.2, !dbg !369
  %412 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !371
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !371, !noalias !375
  %413 = fptrunc float %add810.3.2 to half, !dbg !371
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %412), !dbg !371, !noalias !375
  %414 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !380
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !380, !noalias !375
  %415 = fptrunc float %add814.3.2 to half, !dbg !380
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %414), !dbg !380, !noalias !375
  %416 = bitcast half %413 to i16, !dbg !382
  %417 = bitcast half %415 to i16, !dbg !384
  %418 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !385
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !385, !noalias !389
  %419 = fptrunc float %add818.3.2 to half, !dbg !385
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %418), !dbg !385, !noalias !389
  %420 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !394
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !394, !noalias !389
  %421 = fptrunc float %add822.3.2 to half, !dbg !394
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %420), !dbg !394, !noalias !389
  %422 = bitcast half %419 to i16, !dbg !396
  %423 = bitcast half %421 to i16, !dbg !398
  %__12.sroa.6.0.insert.ext.2 = zext i16 %423 to i64, !dbg !399
  %__12.sroa.6.0.insert.shift.2 = shl nuw i64 %__12.sroa.6.0.insert.ext.2, 48, !dbg !399
  %__12.sroa.5.0.insert.ext.2 = zext i16 %422 to i64, !dbg !399
  %__12.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__12.sroa.5.0.insert.ext.2, 32, !dbg !399
  %__12.sroa.5.0.insert.insert.2 = or disjoint i64 %__12.sroa.6.0.insert.shift.2, %__12.sroa.5.0.insert.shift.2, !dbg !399
  %__12.sroa.4.0.insert.ext.2 = zext i16 %417 to i64, !dbg !399
  %__12.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__12.sroa.4.0.insert.ext.2, 16, !dbg !399
  %__12.sroa.4.0.insert.insert.2 = or disjoint i64 %__12.sroa.5.0.insert.insert.2, %__12.sroa.4.0.insert.shift.2, !dbg !399
  %__12.sroa.0.0.insert.ext.2 = zext i16 %416 to i64, !dbg !399
  %__12.sroa.0.0.insert.insert.2 = or disjoint i64 %__12.sroa.4.0.insert.insert.2, %__12.sroa.0.0.insert.ext.2, !dbg !399
  store i64 %__12.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr766.21290, align 8, !dbg !400
  %add754.3 = or disjoint i32 %and31, 6
  %xor757.3 = xor i32 %add754.3, %and35
  %mul758.3 = shl nuw nsw i32 %xor757.3, 3
  %add759.31306 = or disjoint i32 %mul28, %mul758.3, !dbg !350
  %add764.31307 = or disjoint i32 %add759.31306, %mul42, !dbg !351
  %add.ptr766.31308 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add764.31307, !dbg !352
  %424 = load i64, ptr addrspace(3) %add.ptr766.31308, align 8, !dbg !353
  %v__9.sroa.4.0.extract.shift.31309 = lshr i64 %424, 32, !dbg !354
  %425 = trunc i64 %424 to i16, !dbg !355
  %426 = bitcast i16 %425 to half, !dbg !355
  %conv.i1130.31310 = fpext half %426 to float, !dbg !355
  %extelt.offset.i1157.31311 = lshr i64 %424, 16, !dbg !358
  %427 = trunc i64 %extelt.offset.i1157.31311 to i16, !dbg !358
  %428 = bitcast i16 %427 to half, !dbg !358
  %conv6.i.31312 = fpext half %428 to float, !dbg !358
  %429 = trunc i64 %v__9.sroa.4.0.extract.shift.31309 to i16, !dbg !359
  %430 = bitcast i16 %429 to half, !dbg !359
  %conv.i1132.31313 = fpext half %430 to float, !dbg !359
  %sum.shift.31314 = lshr i64 %424, 48, !dbg !361
  %431 = trunc nuw i64 %sum.shift.31314 to i16, !dbg !361
  %432 = bitcast i16 %431 to half, !dbg !361
  %conv6.i1134.31315 = fpext half %432 to float, !dbg !361
  %mul794.31316 = fmul contract float %div727, %conv.i1130.31310, !dbg !362
  %mul798.31317 = fmul contract float %div727, %conv6.i.31312, !dbg !363
  %mul802.31318 = fmul contract float %div727, %conv.i1132.31313, !dbg !364
  %mul806.31319 = fmul contract float %div727, %conv6.i1134.31315, !dbg !365
  %add810.31320 = fadd contract float %mul794.31316, 0.000000e+00, !dbg !366
  %add814.31321 = fadd contract float %mul798.31317, 0.000000e+00, !dbg !367
  %add818.31322 = fadd contract float %mul802.31318, 0.000000e+00, !dbg !368
  %add822.31323 = fadd contract float %mul806.31319, 0.000000e+00, !dbg !369
  %add759.1.3 = or disjoint i32 %add749.1, %mul758.3, !dbg !350
  %add764.1.3 = or disjoint i32 %add759.1.3, %mul42, !dbg !351
  %add.ptr766.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add764.1.3, !dbg !352
  %433 = load i64, ptr addrspace(3) %add.ptr766.1.3, align 8, !dbg !353
  %v__9.sroa.4.0.extract.shift.1.3 = lshr i64 %433, 32, !dbg !354
  %434 = trunc i64 %433 to i16, !dbg !355
  %435 = bitcast i16 %434 to half, !dbg !355
  %conv.i1130.1.3 = fpext half %435 to float, !dbg !355
  %extelt.offset.i1157.1.3 = lshr i64 %433, 16, !dbg !358
  %436 = trunc i64 %extelt.offset.i1157.1.3 to i16, !dbg !358
  %437 = bitcast i16 %436 to half, !dbg !358
  %conv6.i.1.3 = fpext half %437 to float, !dbg !358
  %438 = trunc i64 %v__9.sroa.4.0.extract.shift.1.3 to i16, !dbg !359
  %439 = bitcast i16 %438 to half, !dbg !359
  %conv.i1132.1.3 = fpext half %439 to float, !dbg !359
  %sum.shift.1.3 = lshr i64 %433, 48, !dbg !361
  %440 = trunc nuw i64 %sum.shift.1.3 to i16, !dbg !361
  %441 = bitcast i16 %440 to half, !dbg !361
  %conv6.i1134.1.3 = fpext half %441 to float, !dbg !361
  %mul794.1.3 = fmul contract float %div727.1, %conv.i1130.1.3, !dbg !362
  %mul798.1.3 = fmul contract float %div727.1, %conv6.i.1.3, !dbg !363
  %mul802.1.3 = fmul contract float %div727.1, %conv.i1132.1.3, !dbg !364
  %mul806.1.3 = fmul contract float %div727.1, %conv6.i1134.1.3, !dbg !365
  %add810.1.3 = fadd contract float %add810.31320, %mul794.1.3, !dbg !366
  %add814.1.3 = fadd contract float %add814.31321, %mul798.1.3, !dbg !367
  %add818.1.3 = fadd contract float %add818.31322, %mul802.1.3, !dbg !368
  %add822.1.3 = fadd contract float %add822.31323, %mul806.1.3, !dbg !369
  %add759.2.3 = or disjoint i32 %add749.2, %mul758.3, !dbg !350
  %add764.2.3 = or disjoint i32 %add759.2.3, %mul42, !dbg !351
  %add.ptr766.2.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add764.2.3, !dbg !352
  %442 = load i64, ptr addrspace(3) %add.ptr766.2.3, align 8, !dbg !353
  %v__9.sroa.4.0.extract.shift.2.3 = lshr i64 %442, 32, !dbg !354
  %443 = trunc i64 %442 to i16, !dbg !355
  %444 = bitcast i16 %443 to half, !dbg !355
  %conv.i1130.2.3 = fpext half %444 to float, !dbg !355
  %extelt.offset.i1157.2.3 = lshr i64 %442, 16, !dbg !358
  %445 = trunc i64 %extelt.offset.i1157.2.3 to i16, !dbg !358
  %446 = bitcast i16 %445 to half, !dbg !358
  %conv6.i.2.3 = fpext half %446 to float, !dbg !358
  %447 = trunc i64 %v__9.sroa.4.0.extract.shift.2.3 to i16, !dbg !359
  %448 = bitcast i16 %447 to half, !dbg !359
  %conv.i1132.2.3 = fpext half %448 to float, !dbg !359
  %sum.shift.2.3 = lshr i64 %442, 48, !dbg !361
  %449 = trunc nuw i64 %sum.shift.2.3 to i16, !dbg !361
  %450 = bitcast i16 %449 to half, !dbg !361
  %conv6.i1134.2.3 = fpext half %450 to float, !dbg !361
  %mul794.2.3 = fmul contract float %div727.2, %conv.i1130.2.3, !dbg !362
  %mul798.2.3 = fmul contract float %div727.2, %conv6.i.2.3, !dbg !363
  %mul802.2.3 = fmul contract float %div727.2, %conv.i1132.2.3, !dbg !364
  %mul806.2.3 = fmul contract float %div727.2, %conv6.i1134.2.3, !dbg !365
  %add810.2.3 = fadd contract float %add810.1.3, %mul794.2.3, !dbg !366
  %add814.2.3 = fadd contract float %add814.1.3, %mul798.2.3, !dbg !367
  %add818.2.3 = fadd contract float %add818.1.3, %mul802.2.3, !dbg !368
  %add822.2.3 = fadd contract float %add822.1.3, %mul806.2.3, !dbg !369
  %add759.3.3 = or disjoint i32 %add749.3, %mul758.3, !dbg !350
  %add764.3.3 = or disjoint i32 %add759.3.3, %mul42, !dbg !351
  %add.ptr766.3.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add764.3.3, !dbg !352
  %451 = load i64, ptr addrspace(3) %add.ptr766.3.3, align 8, !dbg !353
  %v__9.sroa.4.0.extract.shift.3.3 = lshr i64 %451, 32, !dbg !354
  %452 = trunc i64 %451 to i16, !dbg !355
  %453 = bitcast i16 %452 to half, !dbg !355
  %conv.i1130.3.3 = fpext half %453 to float, !dbg !355
  %extelt.offset.i1157.3.3 = lshr i64 %451, 16, !dbg !358
  %454 = trunc i64 %extelt.offset.i1157.3.3 to i16, !dbg !358
  %455 = bitcast i16 %454 to half, !dbg !358
  %conv6.i.3.3 = fpext half %455 to float, !dbg !358
  %456 = trunc i64 %v__9.sroa.4.0.extract.shift.3.3 to i16, !dbg !359
  %457 = bitcast i16 %456 to half, !dbg !359
  %conv.i1132.3.3 = fpext half %457 to float, !dbg !359
  %sum.shift.3.3 = lshr i64 %451, 48, !dbg !361
  %458 = trunc nuw i64 %sum.shift.3.3 to i16, !dbg !361
  %459 = bitcast i16 %458 to half, !dbg !361
  %conv6.i1134.3.3 = fpext half %459 to float, !dbg !361
  %mul794.3.3 = fmul contract float %div727.3, %conv.i1130.3.3, !dbg !362
  %mul798.3.3 = fmul contract float %div727.3, %conv6.i.3.3, !dbg !363
  %mul802.3.3 = fmul contract float %div727.3, %conv.i1132.3.3, !dbg !364
  %mul806.3.3 = fmul contract float %div727.3, %conv6.i1134.3.3, !dbg !365
  %add810.3.3 = fadd contract float %add810.2.3, %mul794.3.3, !dbg !366
  %add814.3.3 = fadd contract float %add814.2.3, %mul798.3.3, !dbg !367
  %add818.3.3 = fadd contract float %add818.2.3, %mul802.3.3, !dbg !368
  %add822.3.3 = fadd contract float %add822.2.3, %mul806.3.3, !dbg !369
  %460 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !371
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !371, !noalias !375
  %461 = fptrunc float %add810.3.3 to half, !dbg !371
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %460), !dbg !371, !noalias !375
  %462 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !380
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !380, !noalias !375
  %463 = fptrunc float %add814.3.3 to half, !dbg !380
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %462), !dbg !380, !noalias !375
  %464 = bitcast half %461 to i16, !dbg !382
  %465 = bitcast half %463 to i16, !dbg !384
  %466 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !385
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !385, !noalias !389
  %467 = fptrunc float %add818.3.3 to half, !dbg !385
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %466), !dbg !385, !noalias !389
  %468 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !394
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !394, !noalias !389
  %469 = fptrunc float %add822.3.3 to half, !dbg !394
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %468), !dbg !394, !noalias !389
  %470 = bitcast half %467 to i16, !dbg !396
  %471 = bitcast half %469 to i16, !dbg !398
  %__12.sroa.6.0.insert.ext.3 = zext i16 %471 to i64, !dbg !399
  %__12.sroa.6.0.insert.shift.3 = shl nuw i64 %__12.sroa.6.0.insert.ext.3, 48, !dbg !399
  %__12.sroa.5.0.insert.ext.3 = zext i16 %470 to i64, !dbg !399
  %__12.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__12.sroa.5.0.insert.ext.3, 32, !dbg !399
  %__12.sroa.5.0.insert.insert.3 = or disjoint i64 %__12.sroa.6.0.insert.shift.3, %__12.sroa.5.0.insert.shift.3, !dbg !399
  %__12.sroa.4.0.insert.ext.3 = zext i16 %465 to i64, !dbg !399
  %__12.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__12.sroa.4.0.insert.ext.3, 16, !dbg !399
  %__12.sroa.4.0.insert.insert.3 = or disjoint i64 %__12.sroa.5.0.insert.insert.3, %__12.sroa.4.0.insert.shift.3, !dbg !399
  %__12.sroa.0.0.insert.ext.3 = zext i16 %464 to i64, !dbg !399
  %__12.sroa.0.0.insert.insert.3 = or disjoint i64 %__12.sroa.4.0.insert.insert.3, %__12.sroa.0.0.insert.ext.3, !dbg !399
  store i64 %__12.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr766.31308, align 8, !dbg !400
  fence syncscope("warp") release, !dbg !401
  tail call void @llvm.mxc.barrier.warp(), !dbg !404
  fence syncscope("warp") acquire, !dbg !405
  %472 = or disjoint i32 %mul146, %mul138
  %473 = or disjoint i32 %add, %11
  %474 = zext nneg i32 %473 to i64, !dbg !406
  %add.ptr887 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %472, !dbg !407
  %add.ptr900 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %474, !dbg !408
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr900, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr887, i64 16, i1 false), !dbg !409, !tbaa.struct !410, !call_argsrelate !411
  %475 = or disjoint i32 %472, 512, !dbg !412
  %add.ptr887.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %475, !dbg !407
  %476 = or disjoint i64 %474, 512, !dbg !413
  %add.ptr900.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %476, !dbg !408
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr900.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr887.1, i64 16, i1 false), !dbg !409, !tbaa.struct !410, !call_argsrelate !411
  br label %if.end904, !dbg !414

if.end904:                                        ; preds = %for.cond667.preheader, %if.end659
  ret void, !dbg !414
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
declare void @llvm.mxc.barrier() #6

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
attributes #3 = { convergent mustprogress norecurse nounwind willreturn "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-implicitarg-num-bytes"="80" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="256" "metaxgpu-min-blocks"="1" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" "uniform-work-group-size"="true" }
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v053_codex_power_s8_half_partial_stream_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v053_codex_power_s8_half_partial_stream_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
!42 = !DILocation(line: 78, column: 3, scope: !43, inlinedAt: !45)
!43 = distinct !DISubprogram(name: "__fetch_builtin_y", scope: !44, file: !44, line: 78, type: !7, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!44 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_builtin_vars.h", directory: "")
!45 = distinct !DILocation(line: 35, column: 215, scope: !40)
!46 = !DILocation(line: 35, column: 227, scope: !40)
!47 = !DILocation(line: 77, column: 3, scope: !48, inlinedAt: !49)
!48 = distinct !DISubprogram(name: "__fetch_builtin_x", scope: !44, file: !44, line: 77, type: !7, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!49 = distinct !DILocation(line: 35, column: 247, scope: !40)
!50 = !DILocation(line: 35, column: 259, scope: !40)
!51 = !DILocation(line: 35, column: 238, scope: !40)
!52 = !DILocation(line: 67, column: 3, scope: !53, inlinedAt: !54)
!53 = distinct !DISubprogram(name: "__fetch_builtin_x", scope: !44, file: !44, line: 67, type: !7, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!54 = distinct !DILocation(line: 35, column: 277, scope: !40)
!55 = !{i32 0, i32 1024}
!56 = !DILocation(line: 35, column: 290, scope: !40)
!57 = !DILocation(line: 35, column: 268, scope: !40)
!58 = !DILocation(line: 35, column: 204, scope: !40)
!59 = !DILocation(line: 35, column: 106, scope: !40)
!60 = !DILocation(line: 35, column: 142, scope: !40)
!61 = !DILocation(line: 35, column: 112, scope: !40)
!62 = !DILocation(line: 35, column: 149, scope: !40)
!63 = !DILocation(line: 35, column: 155, scope: !40)
!64 = !DILocation(line: 35, column: 38, scope: !40)
!65 = !DILocation(line: 35, column: 190, scope: !40)
!66 = !DILocation(line: 60, column: 3, scope: !67, inlinedAt: !69)
!67 = distinct !DISubprogram(name: "__barrier", scope: !68, file: !68, line: 57, type: !7, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!68 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!69 = distinct !DILocation(line: 74, column: 3, scope: !70, inlinedAt: !71)
!70 = distinct !DISubprogram(name: "__syncthreads", scope: !68, file: !68, line: 73, type: !7, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!71 = distinct !DILocation(line: 36, column: 3, scope: !40)
!72 = !DILocation(line: 61, column: 3, scope: !67, inlinedAt: !69)
!73 = !DILocation(line: 62, column: 3, scope: !67, inlinedAt: !69)
!74 = !DILocation(line: 39, column: 165, scope: !40)
!75 = !DILocation(line: 39, column: 193, scope: !40)
!76 = !DILocation(line: 39, column: 112, scope: !40)
!77 = !DILocation(line: 39, column: 199, scope: !40)
!78 = !DILocation(line: 39, column: 75, scope: !40)
!79 = !DILocation(line: 39, column: 38, scope: !40)
!80 = !DILocation(line: 39, column: 129, scope: !40)
!81 = !DILocation(line: 60, column: 3, scope: !67, inlinedAt: !82)
!82 = distinct !DILocation(line: 74, column: 3, scope: !70, inlinedAt: !83)
!83 = distinct !DILocation(line: 41, column: 3, scope: !40)
!84 = !DILocation(line: 61, column: 3, scope: !67, inlinedAt: !82)
!85 = !DILocation(line: 62, column: 3, scope: !67, inlinedAt: !82)
!86 = !DILocation(line: 50, column: 3, scope: !40)
!87 = !DILocation(line: 51, column: 24, scope: !40)
!88 = !DILocation(line: 51, column: 143, scope: !40)
!89 = !DILocation(line: 52, column: 12, scope: !40)
!90 = !DILocation(line: 52, column: 28, scope: !40)
!91 = !DILocation(line: 68, column: 3, scope: !92, inlinedAt: !93)
!92 = distinct !DISubprogram(name: "__barrier_warp", scope: !68, file: !68, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!93 = distinct !DILocation(line: 192, column: 3, scope: !94, inlinedAt: !95)
!94 = distinct !DISubprogram(name: "__syncwarp", scope: !68, file: !68, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!95 = distinct !DILocation(line: 53, column: 7, scope: !40)
!96 = !DILocation(line: 69, column: 3, scope: !92, inlinedAt: !93)
!97 = !DILocation(line: 70, column: 3, scope: !92, inlinedAt: !93)
!98 = !DILocation(line: 58, column: 79, scope: !40)
!99 = !DILocation(line: 58, column: 13, scope: !40)
!100 = !DILocation(line: 59, column: 33, scope: !40)
!101 = !DILocation(line: 59, column: 19, scope: !40)
!102 = !DILocation(line: 60, column: 9, scope: !40)
!103 = !DILocation(line: 0, scope: !40)
!104 = !DILocation(line: 63, column: 100, scope: !40)
!105 = !DILocation(line: 63, column: 143, scope: !40)
!106 = !DILocation(line: 63, column: 44, scope: !40)
!107 = !DILocation(line: 63, column: 215, scope: !40)
!108 = !DILocation(line: 68, column: 3, scope: !92, inlinedAt: !109)
!109 = distinct !DILocation(line: 192, column: 3, scope: !94, inlinedAt: !110)
!110 = distinct !DILocation(line: 65, column: 7, scope: !40)
!111 = !DILocation(line: 69, column: 3, scope: !92, inlinedAt: !109)
!112 = !DILocation(line: 70, column: 3, scope: !92, inlinedAt: !109)
!113 = !DILocation(line: 70, column: 145, scope: !40)
!114 = !DILocation(line: 70, column: 234, scope: !40)
!115 = !DILocation(line: 70, column: 69, scope: !40)
!116 = !DILocation(line: 70, column: 32, scope: !40)
!117 = !DILocation(line: 72, column: 37, scope: !40)
!118 = !DILocation(line: 80, column: 81, scope: !40)
!119 = !DILocation(line: 80, column: 13, scope: !40)
!120 = !DILocation(line: 80, column: 70, scope: !40)
!121 = !DILocation(line: 351, column: 10, scope: !122, inlinedAt: !124)
!122 = distinct !DISubprogram(name: "max", scope: !123, file: !123, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!123 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!124 = distinct !DILocation(line: 90, column: 28, scope: !40)
!125 = !DILocation(line: 1018, column: 9, scope: !126, inlinedAt: !127)
!126 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !68, file: !68, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!127 = distinct !DILocation(line: 92, column: 48, scope: !40)
!128 = !DILocation(line: 171, column: 37, scope: !129, inlinedAt: !130)
!129 = distinct !DISubprogram(name: "__lane_id", scope: !68, file: !68, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!130 = distinct !DILocation(line: 990, column: 14, scope: !131, inlinedAt: !132)
!131 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !68, file: !68, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!132 = distinct !DILocation(line: 1019, column: 11, scope: !126, inlinedAt: !127)
!133 = !DILocation(line: 171, column: 10, scope: !129, inlinedAt: !130)
!134 = !DILocation(line: 991, column: 20, scope: !131, inlinedAt: !132)
!135 = !DILocation(line: 992, column: 36, scope: !131, inlinedAt: !132)
!136 = !DILocation(line: 992, column: 17, scope: !131, inlinedAt: !132)
!137 = !DILocation(line: 992, column: 11, scope: !131, inlinedAt: !132)
!138 = !DILocation(line: 993, column: 43, scope: !131, inlinedAt: !132)
!139 = !DILocation(line: 993, column: 10, scope: !131, inlinedAt: !132)
!140 = !DILocation(line: 1020, column: 14, scope: !126, inlinedAt: !127)
!141 = !DILocation(line: 351, column: 10, scope: !122, inlinedAt: !142)
!142 = distinct !DILocation(line: 92, column: 26, scope: !40)
!143 = !DILocation(line: 1018, column: 9, scope: !126, inlinedAt: !144)
!144 = distinct !DILocation(line: 93, column: 48, scope: !40)
!145 = !DILocation(line: 171, column: 37, scope: !129, inlinedAt: !146)
!146 = distinct !DILocation(line: 990, column: 14, scope: !131, inlinedAt: !147)
!147 = distinct !DILocation(line: 1019, column: 11, scope: !126, inlinedAt: !144)
!148 = !DILocation(line: 171, column: 10, scope: !129, inlinedAt: !146)
!149 = !DILocation(line: 991, column: 20, scope: !131, inlinedAt: !147)
!150 = !DILocation(line: 992, column: 36, scope: !131, inlinedAt: !147)
!151 = !DILocation(line: 992, column: 17, scope: !131, inlinedAt: !147)
!152 = !DILocation(line: 992, column: 11, scope: !131, inlinedAt: !147)
!153 = !DILocation(line: 993, column: 43, scope: !131, inlinedAt: !147)
!154 = !DILocation(line: 993, column: 10, scope: !131, inlinedAt: !147)
!155 = !DILocation(line: 1020, column: 14, scope: !126, inlinedAt: !144)
!156 = !DILocation(line: 351, column: 10, scope: !122, inlinedAt: !157)
!157 = distinct !DILocation(line: 93, column: 26, scope: !40)
!158 = !DILocation(line: 351, column: 10, scope: !122, inlinedAt: !159)
!159 = distinct !DILocation(line: 94, column: 24, scope: !40)
!160 = !DILocation(line: 95, column: 39, scope: !40)
!161 = !DILocation(line: 95, column: 57, scope: !40)
!162 = !DILocation(line: 285, column: 49, scope: !163, inlinedAt: !164)
!163 = distinct !DISubprogram(name: "exp2f", scope: !123, file: !123, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!164 = distinct !DILocation(line: 95, column: 20, scope: !40)
!165 = !DILocation(line: 101, column: 24, scope: !40)
!166 = !DILocation(line: 105, column: 47, scope: !40)
!167 = !DILocation(line: 118, column: 28, scope: !40)
!168 = !DILocation(line: 119, column: 28, scope: !40)
!169 = !DILocation(line: 120, column: 28, scope: !40)
!170 = !DILocation(line: 121, column: 28, scope: !40)
!171 = !DILocation(line: 123, column: 25, scope: !40)
!172 = !DILocation(line: 124, column: 25, scope: !40)
!173 = !DILocation(line: 125, column: 25, scope: !40)
!174 = !DILocation(line: 126, column: 25, scope: !40)
!175 = !DILocation(line: 128, column: 23, scope: !40)
!176 = !DILocation(line: 129, column: 23, scope: !40)
!177 = !DILocation(line: 130, column: 23, scope: !40)
!178 = !DILocation(line: 131, column: 23, scope: !40)
!179 = !DILocation(line: 285, column: 49, scope: !163, inlinedAt: !180)
!180 = distinct !DILocation(line: 132, column: 15, scope: !40)
!181 = !DILocation(line: 285, column: 49, scope: !163, inlinedAt: !182)
!182 = distinct !DILocation(line: 133, column: 15, scope: !40)
!183 = !DILocation(line: 285, column: 49, scope: !163, inlinedAt: !184)
!184 = distinct !DILocation(line: 134, column: 15, scope: !40)
!185 = !DILocation(line: 285, column: 49, scope: !163, inlinedAt: !186)
!186 = distinct !DILocation(line: 135, column: 15, scope: !40)
!187 = !DILocation(line: 1007, column: 10, scope: !188, inlinedAt: !190)
!188 = distinct !DISubprogram(name: "__float2half_rn", scope: !189, file: !189, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!189 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!190 = distinct !DILocation(line: 1077, column: 18, scope: !191, inlinedAt: !192)
!191 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !189, file: !189, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!192 = distinct !DILocation(line: 1295, column: 23, scope: !193, inlinedAt: !194)
!193 = distinct !DISubprogram(name: "__float22half2_rn", scope: !189, file: !189, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!194 = distinct !DILocation(line: 136, column: 29, scope: !40)
!195 = !{!196, !198}
!196 = distinct !{!196, !197, !"_ZL17__floats2half2_rnff: %agg.result"}
!197 = distinct !{!197, !"_ZL17__floats2half2_rnff"}
!198 = distinct !{!198, !199, !"_ZL17__float22half2_rn6float2: %agg.result"}
!199 = distinct !{!199, !"_ZL17__float22half2_rn6float2"}
!200 = !DILocation(line: 1007, column: 10, scope: !188, inlinedAt: !201)
!201 = distinct !DILocation(line: 1077, column: 38, scope: !191, inlinedAt: !192)
!202 = !DILocation(line: 1007, column: 10, scope: !188, inlinedAt: !203)
!203 = distinct !DILocation(line: 1077, column: 18, scope: !191, inlinedAt: !204)
!204 = distinct !DILocation(line: 1295, column: 23, scope: !193, inlinedAt: !205)
!205 = distinct !DILocation(line: 137, column: 29, scope: !40)
!206 = !{!207, !209}
!207 = distinct !{!207, !208, !"_ZL17__floats2half2_rnff: %agg.result"}
!208 = distinct !{!208, !"_ZL17__floats2half2_rnff"}
!209 = distinct !{!209, !210, !"_ZL17__float22half2_rn6float2: %agg.result"}
!210 = distinct !{!210, !"_ZL17__float22half2_rn6float2"}
!211 = !DILocation(line: 1007, column: 10, scope: !188, inlinedAt: !212)
!212 = distinct !DILocation(line: 1077, column: 38, scope: !191, inlinedAt: !204)
!213 = !DILocation(line: 138, column: 36, scope: !40)
!214 = !DILocation(line: 1082, column: 16, scope: !215, inlinedAt: !216)
!215 = distinct !DISubprogram(name: "__half2float", scope: !189, file: !189, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!216 = distinct !DILocation(line: 136, column: 55, scope: !217, inlinedAt: !218)
!217 = distinct !DISubprogram(name: "operator float", scope: !189, file: !189, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!218 = distinct !DILocation(line: 142, column: 52, scope: !40)
!219 = !DILocation(line: 142, column: 42, scope: !40)
!220 = !DILocation(line: 1018, column: 9, scope: !126, inlinedAt: !221)
!221 = distinct !DILocation(line: 144, column: 42, scope: !40)
!222 = !DILocation(line: 171, column: 37, scope: !129, inlinedAt: !223)
!223 = distinct !DILocation(line: 990, column: 14, scope: !131, inlinedAt: !224)
!224 = distinct !DILocation(line: 1019, column: 11, scope: !126, inlinedAt: !221)
!225 = !DILocation(line: 171, column: 10, scope: !129, inlinedAt: !223)
!226 = !DILocation(line: 991, column: 20, scope: !131, inlinedAt: !224)
!227 = !DILocation(line: 992, column: 36, scope: !131, inlinedAt: !224)
!228 = !DILocation(line: 992, column: 17, scope: !131, inlinedAt: !224)
!229 = !DILocation(line: 992, column: 11, scope: !131, inlinedAt: !224)
!230 = !DILocation(line: 993, column: 43, scope: !131, inlinedAt: !224)
!231 = !DILocation(line: 993, column: 10, scope: !131, inlinedAt: !224)
!232 = !DILocation(line: 1020, column: 14, scope: !126, inlinedAt: !221)
!233 = !DILocation(line: 144, column: 40, scope: !40)
!234 = !DILocation(line: 1018, column: 9, scope: !126, inlinedAt: !235)
!235 = distinct !DILocation(line: 145, column: 42, scope: !40)
!236 = !DILocation(line: 171, column: 37, scope: !129, inlinedAt: !237)
!237 = distinct !DILocation(line: 990, column: 14, scope: !131, inlinedAt: !238)
!238 = distinct !DILocation(line: 1019, column: 11, scope: !126, inlinedAt: !235)
!239 = !DILocation(line: 171, column: 10, scope: !129, inlinedAt: !237)
!240 = !DILocation(line: 991, column: 20, scope: !131, inlinedAt: !238)
!241 = !DILocation(line: 992, column: 36, scope: !131, inlinedAt: !238)
!242 = !DILocation(line: 992, column: 17, scope: !131, inlinedAt: !238)
!243 = !DILocation(line: 992, column: 11, scope: !131, inlinedAt: !238)
!244 = !DILocation(line: 993, column: 43, scope: !131, inlinedAt: !238)
!245 = !DILocation(line: 993, column: 10, scope: !131, inlinedAt: !238)
!246 = !DILocation(line: 1020, column: 14, scope: !126, inlinedAt: !235)
!247 = !DILocation(line: 145, column: 40, scope: !40)
!248 = !DILocation(line: 68, column: 3, scope: !92, inlinedAt: !249)
!249 = distinct !DILocation(line: 192, column: 3, scope: !94, inlinedAt: !250)
!250 = distinct !DILocation(line: 147, column: 7, scope: !40)
!251 = !DILocation(line: 69, column: 3, scope: !92, inlinedAt: !249)
!252 = !DILocation(line: 70, column: 3, scope: !92, inlinedAt: !249)
!253 = !DILocation(line: 152, column: 13, scope: !40)
!254 = !DILocation(line: 153, column: 35, scope: !40)
!255 = !DILocation(line: 153, column: 21, scope: !40)
!256 = !DILocation(line: 154, column: 9, scope: !40)
!257 = !DILocation(line: 164, column: 44, scope: !40)
!258 = !DILocation(line: 164, column: 223, scope: !40)
!259 = !DILocation(line: 162, column: 27, scope: !40)
!260 = !DILocation(line: 68, column: 3, scope: !92, inlinedAt: !261)
!261 = distinct !DILocation(line: 192, column: 3, scope: !94, inlinedAt: !262)
!262 = distinct !DILocation(line: 166, column: 7, scope: !40)
!263 = !DILocation(line: 69, column: 3, scope: !92, inlinedAt: !261)
!264 = !DILocation(line: 70, column: 3, scope: !92, inlinedAt: !261)
!265 = !DILocation(line: 169, column: 178, scope: !40)
!266 = !DILocation(line: 169, column: 83, scope: !40)
!267 = !DILocation(line: 169, column: 46, scope: !40)
!268 = !DILocation(line: 174, column: 46, scope: !40)
!269 = !DILocation(line: 146, column: 40, scope: !40)
!270 = !DILocation(line: 50, column: 52, scope: !40)
!271 = !DILocation(line: 51, column: 124, scope: !40)
!272 = !DILocation(line: 99, column: 23, scope: !40)
!273 = !DILocation(line: 102, column: 24, scope: !40)
!274 = !DILocation(line: 103, column: 24, scope: !40)
!275 = !DILocation(line: 104, column: 24, scope: !40)
!276 = !DILocation(line: 107, column: 40, scope: !40)
!277 = !DILocation(line: 60, column: 3, scope: !67, inlinedAt: !278)
!278 = distinct !DILocation(line: 74, column: 3, scope: !70, inlinedAt: !279)
!279 = distinct !DILocation(line: 181, column: 3, scope: !40)
!280 = !DILocation(line: 61, column: 3, scope: !67, inlinedAt: !278)
!281 = !DILocation(line: 62, column: 3, scope: !67, inlinedAt: !278)
!282 = !DILocation(line: 183, column: 32, scope: !40)
!283 = !DILocation(line: 193, column: 21, scope: !40)
!284 = !DILocation(line: 195, column: 22, scope: !40)
!285 = !DILocation(line: 196, column: 22, scope: !40)
!286 = !DILocation(line: 197, column: 22, scope: !40)
!287 = !DILocation(line: 198, column: 22, scope: !40)
!288 = !DILocation(line: 1007, column: 10, scope: !188, inlinedAt: !289)
!289 = distinct !DILocation(line: 1077, column: 18, scope: !191, inlinedAt: !290)
!290 = distinct !DILocation(line: 1295, column: 23, scope: !193, inlinedAt: !291)
!291 = distinct !DILocation(line: 199, column: 27, scope: !40)
!292 = !{!293, !295}
!293 = distinct !{!293, !294, !"_ZL17__floats2half2_rnff: %agg.result"}
!294 = distinct !{!294, !"_ZL17__floats2half2_rnff"}
!295 = distinct !{!295, !296, !"_ZL17__float22half2_rn6float2: %agg.result"}
!296 = distinct !{!296, !"_ZL17__float22half2_rn6float2"}
!297 = !DILocation(line: 1007, column: 10, scope: !188, inlinedAt: !298)
!298 = distinct !DILocation(line: 1077, column: 38, scope: !191, inlinedAt: !290)
!299 = !DILocation(line: 596, column: 67, scope: !300, inlinedAt: !301)
!300 = distinct !DISubprogram(name: "__half2", scope: !189, file: !189, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!301 = distinct !DILocation(line: 1077, column: 10, scope: !191, inlinedAt: !290)
!302 = !DILocation(line: 596, column: 73, scope: !300, inlinedAt: !301)
!303 = !DILocation(line: 1007, column: 10, scope: !188, inlinedAt: !304)
!304 = distinct !DILocation(line: 1077, column: 18, scope: !191, inlinedAt: !305)
!305 = distinct !DILocation(line: 1295, column: 23, scope: !193, inlinedAt: !306)
!306 = distinct !DILocation(line: 200, column: 27, scope: !40)
!307 = !{!308, !310}
!308 = distinct !{!308, !309, !"_ZL17__floats2half2_rnff: %agg.result"}
!309 = distinct !{!309, !"_ZL17__floats2half2_rnff"}
!310 = distinct !{!310, !311, !"_ZL17__float22half2_rn6float2: %agg.result"}
!311 = distinct !{!311, !"_ZL17__float22half2_rn6float2"}
!312 = !DILocation(line: 1007, column: 10, scope: !188, inlinedAt: !313)
!313 = distinct !DILocation(line: 1077, column: 38, scope: !191, inlinedAt: !305)
!314 = !DILocation(line: 596, column: 67, scope: !300, inlinedAt: !315)
!315 = distinct !DILocation(line: 1077, column: 10, scope: !191, inlinedAt: !305)
!316 = !DILocation(line: 596, column: 73, scope: !300, inlinedAt: !315)
!317 = !DILocation(line: 201, column: 42, scope: !40)
!318 = !DILocation(line: 202, column: 116, scope: !40)
!319 = !DILocation(line: 202, column: 205, scope: !40)
!320 = !DILocation(line: 202, column: 40, scope: !40)
!321 = !DILocation(line: 202, column: 248, scope: !40)
!322 = !DILocation(line: 204, column: 27, scope: !40)
!323 = !DILocation(line: 204, column: 33, scope: !40)
!324 = !DILocation(line: 204, column: 7, scope: !40)
!325 = !DILocation(line: 205, column: 102, scope: !40)
!326 = !{!327, !327, i64 0}
!327 = !{!"float", !19, i64 0}
!328 = !DILocation(line: 206, column: 102, scope: !40)
!329 = !DILocation(line: 207, column: 3, scope: !40)
!330 = !DILocation(line: 60, column: 3, scope: !67, inlinedAt: !331)
!331 = distinct !DILocation(line: 74, column: 3, scope: !70, inlinedAt: !332)
!332 = distinct !DILocation(line: 208, column: 3, scope: !40)
!333 = !DILocation(line: 61, column: 3, scope: !67, inlinedAt: !331)
!334 = !DILocation(line: 62, column: 3, scope: !67, inlinedAt: !331)
!335 = !DILocation(line: 209, column: 33, scope: !40)
!336 = !DILocation(line: 209, column: 7, scope: !40)
!337 = !DILocation(line: 213, column: 50, scope: !40)
!338 = !DILocation(line: 351, column: 10, scope: !122, inlinedAt: !339)
!339 = distinct !DILocation(line: 213, column: 27, scope: !40)
!340 = !DILocation(line: 213, column: 90, scope: !40)
!341 = !DILocation(line: 218, column: 113, scope: !40)
!342 = !DILocation(line: 218, column: 134, scope: !40)
!343 = !DILocation(line: 285, column: 49, scope: !163, inlinedAt: !344)
!344 = distinct !DILocation(line: 218, column: 27, scope: !40)
!345 = !DILocation(line: 219, column: 101, scope: !40)
!346 = !DILocation(line: 219, column: 32, scope: !40)
!347 = !DILocation(line: 219, column: 110, scope: !40)
!348 = !DILocation(line: 220, column: 54, scope: !40)
!349 = !DILocation(line: 224, column: 54, scope: !40)
!350 = !DILocation(line: 231, column: 142, scope: !40)
!351 = !DILocation(line: 231, column: 231, scope: !40)
!352 = !DILocation(line: 231, column: 85, scope: !40)
!353 = !DILocation(line: 231, column: 48, scope: !40)
!354 = !DILocation(line: 236, column: 26, scope: !40)
!355 = !DILocation(line: 1301, column: 28, scope: !356, inlinedAt: !357)
!356 = distinct !DISubprogram(name: "__half22float2", scope: !189, file: !189, line: 1299, type: !7, scopeLine: 1299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!357 = distinct !DILocation(line: 237, column: 37, scope: !40)
!358 = !DILocation(line: 1302, column: 28, scope: !356, inlinedAt: !357)
!359 = !DILocation(line: 1301, column: 28, scope: !356, inlinedAt: !360)
!360 = distinct !DILocation(line: 238, column: 37, scope: !40)
!361 = !DILocation(line: 1302, column: 28, scope: !356, inlinedAt: !360)
!362 = !DILocation(line: 240, column: 29, scope: !40)
!363 = !DILocation(line: 241, column: 29, scope: !40)
!364 = !DILocation(line: 242, column: 29, scope: !40)
!365 = !DILocation(line: 243, column: 29, scope: !40)
!366 = !DILocation(line: 244, column: 26, scope: !40)
!367 = !DILocation(line: 245, column: 26, scope: !40)
!368 = !DILocation(line: 246, column: 26, scope: !40)
!369 = !DILocation(line: 247, column: 26, scope: !40)
!370 = !DILocation(line: 231, column: 106, scope: !40)
!371 = !DILocation(line: 1007, column: 10, scope: !188, inlinedAt: !372)
!372 = distinct !DILocation(line: 1077, column: 18, scope: !191, inlinedAt: !373)
!373 = distinct !DILocation(line: 1295, column: 23, scope: !193, inlinedAt: !374)
!374 = distinct !DILocation(line: 252, column: 30, scope: !40)
!375 = !{!376, !378}
!376 = distinct !{!376, !377, !"_ZL17__floats2half2_rnff: %agg.result"}
!377 = distinct !{!377, !"_ZL17__floats2half2_rnff"}
!378 = distinct !{!378, !379, !"_ZL17__float22half2_rn6float2: %agg.result"}
!379 = distinct !{!379, !"_ZL17__float22half2_rn6float2"}
!380 = !DILocation(line: 1007, column: 10, scope: !188, inlinedAt: !381)
!381 = distinct !DILocation(line: 1077, column: 38, scope: !191, inlinedAt: !373)
!382 = !DILocation(line: 596, column: 67, scope: !300, inlinedAt: !383)
!383 = distinct !DILocation(line: 1077, column: 10, scope: !191, inlinedAt: !373)
!384 = !DILocation(line: 596, column: 73, scope: !300, inlinedAt: !383)
!385 = !DILocation(line: 1007, column: 10, scope: !188, inlinedAt: !386)
!386 = distinct !DILocation(line: 1077, column: 18, scope: !191, inlinedAt: !387)
!387 = distinct !DILocation(line: 1295, column: 23, scope: !193, inlinedAt: !388)
!388 = distinct !DILocation(line: 253, column: 30, scope: !40)
!389 = !{!390, !392}
!390 = distinct !{!390, !391, !"_ZL17__floats2half2_rnff: %agg.result"}
!391 = distinct !{!391, !"_ZL17__floats2half2_rnff"}
!392 = distinct !{!392, !393, !"_ZL17__float22half2_rn6float2: %agg.result"}
!393 = distinct !{!393, !"_ZL17__float22half2_rn6float2"}
!394 = !DILocation(line: 1007, column: 10, scope: !188, inlinedAt: !395)
!395 = distinct !DILocation(line: 1077, column: 38, scope: !191, inlinedAt: !387)
!396 = !DILocation(line: 596, column: 67, scope: !300, inlinedAt: !397)
!397 = distinct !DILocation(line: 1077, column: 10, scope: !191, inlinedAt: !387)
!398 = !DILocation(line: 596, column: 73, scope: !300, inlinedAt: !397)
!399 = !DILocation(line: 254, column: 46, scope: !40)
!400 = !DILocation(line: 255, column: 211, scope: !40)
!401 = !DILocation(line: 68, column: 3, scope: !92, inlinedAt: !402)
!402 = distinct !DILocation(line: 192, column: 3, scope: !94, inlinedAt: !403)
!403 = distinct !DILocation(line: 257, column: 5, scope: !40)
!404 = !DILocation(line: 69, column: 3, scope: !92, inlinedAt: !402)
!405 = !DILocation(line: 70, column: 3, scope: !92, inlinedAt: !402)
!406 = !DILocation(line: 259, column: 5, scope: !40)
!407 = !DILocation(line: 260, column: 180, scope: !40)
!408 = !DILocation(line: 260, column: 24, scope: !40)
!409 = !DILocation(line: 260, column: 143, scope: !40)
!410 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!411 = !{i32 2, i32 -1, i32 -1, i32 -1}
!412 = !DILocation(line: 260, column: 242, scope: !40)
!413 = !DILocation(line: 260, column: 107, scope: !40)
!414 = !DILocation(line: 263, column: 1, scope: !40)
