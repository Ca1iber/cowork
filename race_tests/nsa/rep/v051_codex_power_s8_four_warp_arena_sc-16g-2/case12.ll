; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v051_codex_power_s8_four_warp_arena_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v051_codex_power_s8_four_warp_arena_sc-16g-2/codegen/case12.device.cpp"
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
  %shr14992 = xor i32 %and, %and16, !dbg !61
  %xor = shl nuw nsw i32 %shr14992, 3, !dbg !62
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
  %shr488997 = xor i32 %and16, %5
  %xor492 = and i32 %shr488997, 3
  %and509 = shl nuw nsw i32 %2, 8
  %mul510 = and i32 %and509, 768
  %add511 = or disjoint i32 %mul132, %mul510
  %mul517 = and i32 %mul9, 48
  %shr521996 = xor i32 %and16, %2
  %18 = and i32 %shr521996, 3
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
  %scores.sroa.0.0.vec.extract1484 = extractelement <4 x float> %33, i64 0
  %spec.select = select i1 %cmp210.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1484, !dbg !119
  %cmp210.not.1.not = icmp slt i32 %add207, %1, !dbg !118
  %scores.sroa.0.4.vec.extract1505 = extractelement <4 x float> %33, i64 1, !dbg !119
  %condval_1.0.1 = select i1 %cmp210.not.1.not, float %scores.sroa.0.4.vec.extract1505, float 0xFFF0000000000000, !dbg !119
  %add208.2 = or disjoint i32 %add207, 2, !dbg !120
  %cmp210.not.2 = icmp sgt i32 %add208.2, %1, !dbg !118
  %scores.sroa.0.8.vec.extract1522 = extractelement <4 x float> %33, i64 2, !dbg !119
  %condval_1.0.2 = select i1 %cmp210.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1522, !dbg !119
  %add208.3 = or disjoint i32 %add207, 3, !dbg !120
  %cmp210.not.3 = icmp sgt i32 %add208.3, %1, !dbg !118
  %scores.sroa.0.12.vec.extract1539 = extractelement <4 x float> %33, i64 3, !dbg !119
  %condval_1.0.3 = select i1 %cmp210.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1539, !dbg !119
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
  %xor.i.i1021 = xor i32 %47, 16, !dbg !149
  %48 = and i32 %47, -64, !dbg !150
  %and.i.i1022 = add nsw i32 %48, 64, !dbg !150
  %cmp.not.i.i1023 = icmp slt i32 %xor.i.i1021, %and.i.i1022, !dbg !151
  %cond.i.i1024 = select i1 %cmp.not.i.i1023, i32 %xor.i.i1021, i32 %47, !dbg !152
  %shl.i.i1025 = shl i32 %cond.i.i1024, 2, !dbg !153
  %49 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1025, i32 %45), !dbg !154
  %50 = bitcast i32 %49 to float, !dbg !155
  %51 = tail call contract noundef float @llvm.maxnum.f32(float %44, float %50), !dbg !156
  %52 = tail call contract noundef float @llvm.maxnum.f32(float %51, float 0xFFF0000000000000), !dbg !158
  %sub = fsub contract float 0xFFF0000000000000, %52, !dbg !160
  %mul254 = fmul contract float %sub, 0x3FC7154760000000, !dbg !161
  %cmp.i.i = fcmp contract olt float %mul254, -1.260000e+02, !dbg !162
  %cond.i.i1026 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i = fadd contract float %mul254, %cond.i.i1026, !dbg !162
  %53 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !162
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i = fmul contract float %cond2.i.i, %53, !dbg !162
  %mul271 = fmul contract float %mul.i.i, 0.000000e+00, !dbg !165
  %numerator.sroa.0.0.vec.insert1553 = insertelement <4 x float> poison, float %mul271, i64 0, !dbg !166
  %numerator.sroa.0.12.vec.insert1634 = shufflevector <4 x float> %numerator.sroa.0.0.vec.insert1553, <4 x float> poison, <4 x i32> zeroinitializer, !dbg !166
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
  %cmp.i.i1031 = fcmp contract olt float %add338, -1.260000e+02, !dbg !179
  %cond.i.i1032 = select contract i1 %cmp.i.i1031, float 6.400000e+01, float 0.000000e+00, !dbg !179
  %add.i.i1033 = fadd contract float %add338, %cond.i.i1032, !dbg !179
  %54 = tail call contract float @llvm.exp2.f32(float %add.i.i1033), !dbg !179
  %cond2.i.i1034 = select contract i1 %cmp.i.i1031, float 0x3BF0000000000000, float 1.000000e+00, !dbg !179
  %mul.i.i1035 = fmul contract float %cond2.i.i1034, %54, !dbg !179
  %cmp.i.i1036 = fcmp contract olt float %add342, -1.260000e+02, !dbg !181
  %cond.i.i1037 = select contract i1 %cmp.i.i1036, float 6.400000e+01, float 0.000000e+00, !dbg !181
  %add.i.i1038 = fadd contract float %add342, %cond.i.i1037, !dbg !181
  %55 = tail call contract float @llvm.exp2.f32(float %add.i.i1038), !dbg !181
  %cond2.i.i1039 = select contract i1 %cmp.i.i1036, float 0x3BF0000000000000, float 1.000000e+00, !dbg !181
  %mul.i.i1040 = fmul contract float %cond2.i.i1039, %55, !dbg !181
  %cmp.i.i1041 = fcmp contract olt float %add346, -1.260000e+02, !dbg !183
  %cond.i.i1042 = select contract i1 %cmp.i.i1041, float 6.400000e+01, float 0.000000e+00, !dbg !183
  %add.i.i1043 = fadd contract float %add346, %cond.i.i1042, !dbg !183
  %56 = tail call contract float @llvm.exp2.f32(float %add.i.i1043), !dbg !183
  %cond2.i.i1044 = select contract i1 %cmp.i.i1041, float 0x3BF0000000000000, float 1.000000e+00, !dbg !183
  %mul.i.i1045 = fmul contract float %cond2.i.i1044, %56, !dbg !183
  %cmp.i.i1046 = fcmp contract olt float %add350, -1.260000e+02, !dbg !185
  %cond.i.i1047 = select contract i1 %cmp.i.i1046, float 6.400000e+01, float 0.000000e+00, !dbg !185
  %add.i.i1048 = fadd contract float %add350, %cond.i.i1047, !dbg !185
  %57 = tail call contract float @llvm.exp2.f32(float %add.i.i1048), !dbg !185
  %cond2.i.i1049 = select contract i1 %cmp.i.i1046, float 0x3BF0000000000000, float 1.000000e+00, !dbg !185
  %mul.i.i1050 = fmul contract float %cond2.i.i1049, %57, !dbg !185
  %58 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !187, !noalias !195
  %59 = fptrunc float %mul.i.i1035 to half, !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %58), !dbg !187, !noalias !195
  %60 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !200
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !200, !noalias !195
  %61 = fptrunc float %mul.i.i1040 to half, !dbg !200
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %60), !dbg !200, !noalias !195
  %62 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !202, !noalias !206
  %63 = fptrunc float %mul.i.i1045 to half, !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %62), !dbg !202, !noalias !206
  %64 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !211
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !211, !noalias !206
  %65 = fptrunc float %mul.i.i1050 to half, !dbg !211
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
  %xor.i.i1056 = xor i32 %72, 32, !dbg !226
  %73 = and i32 %72, -64, !dbg !227
  %and.i.i1057 = add nsw i32 %73, 64, !dbg !227
  %cmp.not.i.i1058 = icmp slt i32 %xor.i.i1056, %and.i.i1057, !dbg !228
  %cond.i.i1059 = select i1 %cmp.not.i.i1058, i32 %xor.i.i1056, i32 %72, !dbg !229
  %shl.i.i1060 = shl i32 %cond.i.i1059, 2, !dbg !230
  %74 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1060, i32 %70), !dbg !231
  %75 = bitcast i32 %74 to float, !dbg !232
  %add393 = fadd contract float %add385.3, %75, !dbg !233
  %76 = bitcast float %add393 to i32, !dbg !234
  %77 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !236
  %78 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %77) #11, !dbg !239
  %xor.i.i1061 = xor i32 %78, 16, !dbg !240
  %79 = and i32 %78, -64, !dbg !241
  %and.i.i1062 = add nsw i32 %79, 64, !dbg !241
  %cmp.not.i.i1063 = icmp slt i32 %xor.i.i1061, %and.i.i1062, !dbg !242
  %cond.i.i1064 = select i1 %cmp.not.i.i1063, i32 %xor.i.i1061, i32 %78, !dbg !243
  %shl.i.i1065 = shl i32 %cond.i.i1064, 2, !dbg !244
  %80 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1065, i32 %76), !dbg !245
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
  %v_column.sroa.34.0.insert.shift1383 = shl nuw i64 %v_fetch.sroa.38.26.extract.trunc, 48, !dbg !258
  %v_column.sroa.26.0.insert.shift1348 = shl nuw nsw i64 %v_fetch.sroa.26.18.extract.trunc, 32, !dbg !258
  %v_column.sroa.26.0.insert.insert1350 = or disjoint i64 %v_column.sroa.34.0.insert.shift1383, %v_column.sroa.26.0.insert.shift1348, !dbg !258
  %v_column.sroa.18.0.insert.shift1313 = zext i32 %v_fetch.sroa.14.10.extract.shift to i64, !dbg !258
  %v_column.sroa.18.0.insert.insert1315 = or disjoint i64 %v_column.sroa.26.0.insert.insert1350, %v_column.sroa.18.0.insert.shift1313, !dbg !258
  %v_column.sroa.0.0.insert.insert1286 = or disjoint i64 %v_column.sroa.18.0.insert.insert1315, %v_fetch.sroa.0.2.extract.trunc, !dbg !258
  store i64 %v_column.sroa.0.0.insert.insert1286, ptr addrspace(3) %add.ptr497.1, align 8, !dbg !258
  %97 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 1024), i32 %17, !dbg !257
  %xor493.2 = shl nuw nsw i32 %xor492, 3, !dbg !257
  %add.ptr497.idx.2 = xor i32 %xor493.2, 16, !dbg !257
  %add.ptr497.2 = getelementptr inbounds i8, ptr addrspace(3) %97, i32 %add.ptr497.idx.2, !dbg !257
  %98 = and i32 %condval_2.sroa.5.0.3, 65535, !dbg !258
  %v_column.sroa.34.0.insert.ext1387 = zext nneg i32 %98 to i64, !dbg !258
  %v_column.sroa.34.0.insert.shift1388 = shl nuw i64 %v_column.sroa.34.0.insert.ext1387, 48, !dbg !258
  %99 = and i32 %condval_2.sroa.5.0.2, 65535, !dbg !258
  %v_column.sroa.26.0.insert.ext1352 = zext nneg i32 %99 to i64, !dbg !258
  %v_column.sroa.26.0.insert.shift1353 = shl nuw nsw i64 %v_column.sroa.26.0.insert.ext1352, 32, !dbg !258
  %v_column.sroa.26.0.insert.insert1355 = or disjoint i64 %v_column.sroa.34.0.insert.shift1388, %v_column.sroa.26.0.insert.shift1353, !dbg !258
  %100 = shl i32 %condval_2.sroa.5.0.1, 16, !dbg !258
  %v_column.sroa.18.0.insert.shift1318 = zext i32 %100 to i64, !dbg !258
  %v_column.sroa.18.0.insert.insert1320 = or disjoint i64 %v_column.sroa.26.0.insert.insert1355, %v_column.sroa.18.0.insert.shift1318, !dbg !258
  %101 = and i32 %condval_2.sroa.5.0, 65535, !dbg !258
  %v_column.sroa.0.0.insert.ext1288 = zext nneg i32 %101 to i64, !dbg !258
  %v_column.sroa.0.0.insert.insert1290 = or disjoint i64 %v_column.sroa.18.0.insert.insert1320, %v_column.sroa.0.0.insert.ext1288, !dbg !258
  store i64 %v_column.sroa.0.0.insert.insert1290, ptr addrspace(3) %add.ptr497.2, align 8, !dbg !258
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
  %v_column.sroa.34.0.insert.shift1393 = shl nuw i64 %v_fetch.sroa.44.30.extract.trunc, 48, !dbg !258
  %v_column.sroa.26.0.insert.shift1358 = shl nuw nsw i64 %v_fetch.sroa.32.22.extract.trunc, 32, !dbg !258
  %v_column.sroa.26.0.insert.insert1360 = or disjoint i64 %v_column.sroa.34.0.insert.shift1393, %v_column.sroa.26.0.insert.shift1358, !dbg !258
  %v_column.sroa.18.0.insert.shift1323 = zext i32 %v_fetch.sroa.20.14.extract.shift to i64, !dbg !258
  %v_column.sroa.18.0.insert.insert1325 = or disjoint i64 %v_column.sroa.26.0.insert.insert1360, %v_column.sroa.18.0.insert.shift1323, !dbg !258
  %v_column.sroa.0.0.insert.insert1294 = or disjoint i64 %v_column.sroa.18.0.insert.insert1325, %v_fetch.sroa.8.6.extract.trunc, !dbg !258
  store i64 %v_column.sroa.0.0.insert.insert1294, ptr addrspace(3) %add.ptr497.3, align 8, !dbg !258
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
  %111 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %104, <4 x half> %69, <4 x float> %numerator.sroa.0.12.vec.insert1634), !dbg !268
  %112 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %106, <4 x half> %69, <4 x float> %numerator.sroa.0.12.vec.insert1634), !dbg !268
  %113 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %108, <4 x half> %69, <4 x float> %numerator.sroa.0.12.vec.insert1634), !dbg !268
  %114 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %110, <4 x half> %69, <4 x float> %numerator.sroa.0.12.vec.insert1634), !dbg !268
  %add402 = fadd contract float %mul271, %add398, !dbg !269
  br label %if.end555, !dbg !270

if.end555:                                        ; preds = %if.end450.3, %entry
  %numerator.sroa.197.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %114, %if.end450.3 ], !dbg !103
  %numerator.sroa.132.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %113, %if.end450.3 ], !dbg !103
  %numerator.sroa.67.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %112, %if.end450.3 ], !dbg !103
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
  %cmp94.11141 = icmp ult i32 %mul80.1, 1024, !dbg !98
  br i1 %cmp94.11141, label %if.then95.11150, label %if.end.11159, !dbg !99

if.then95.11150:                                  ; preds = %if.then.1
  %117 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add100, !dbg !100
  %.idx.11142 = shl nuw nsw i64 %conv101.1, 7, !dbg !100
  %118 = getelementptr inbounds i8, ptr addrspace(4) %117, i64 %.idx.11142, !dbg !100
  %condval.sroa.0.0.copyload.11143 = load i32, ptr addrspace(4) %118, align 16, !dbg !101, !tbaa !30
  %condval.sroa.5.0.add.ptr109.sroa_idx.11144 = getelementptr inbounds i8, ptr addrspace(4) %118, i64 4, !dbg !101
  %condval.sroa.5.0.copyload.11145 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr109.sroa_idx.11144, align 4, !dbg !101, !tbaa !30
  %condval.sroa.6.0.add.ptr109.sroa_idx.11146 = getelementptr inbounds i8, ptr addrspace(4) %118, i64 8, !dbg !101
  %condval.sroa.6.0.copyload.11147 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr109.sroa_idx.11146, align 8, !dbg !101, !tbaa !30
  %condval.sroa.7.0.add.ptr109.sroa_idx.11148 = getelementptr inbounds i8, ptr addrspace(4) %118, i64 12, !dbg !101
  %condval.sroa.7.0.copyload.11149 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr109.sroa_idx.11148, align 4, !dbg !101, !tbaa !30
  br label %if.end.11159, !dbg !102

if.end.11159:                                     ; preds = %if.then95.11150, %if.then.1
  %condval.sroa.0.0.11151 = phi i32 [ %condval.sroa.0.0.copyload.11143, %if.then95.11150 ], [ 0, %if.then.1 ], !dbg !103
  %condval.sroa.5.0.11152 = phi i32 [ %condval.sroa.5.0.copyload.11145, %if.then95.11150 ], [ 0, %if.then.1 ], !dbg !103
  %condval.sroa.6.0.11153 = phi i32 [ %condval.sroa.6.0.copyload.11147, %if.then95.11150 ], [ 0, %if.then.1 ], !dbg !103
  %condval.sroa.7.0.11154 = phi i32 [ %condval.sroa.7.0.copyload.11149, %if.then95.11150 ], [ 0, %if.then.1 ], !dbg !103
  %119 = or disjoint i32 %mul132, %mul138, !dbg !104
  %120 = or disjoint i32 %119, %mul146, !dbg !105
  %add.ptr149.11155 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %120, !dbg !106
  store i32 %condval.sroa.0.0.11151, ptr addrspace(3) %add.ptr149.11155, align 16, !dbg !107, !tbaa !30
  %condval.sroa.5.0.add.ptr149.sroa_idx.11156 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr149.11155, i32 4, !dbg !107
  store i32 %condval.sroa.5.0.11152, ptr addrspace(3) %condval.sroa.5.0.add.ptr149.sroa_idx.11156, align 4, !dbg !107, !tbaa !30
  %condval.sroa.6.0.add.ptr149.sroa_idx.11157 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr149.11155, i32 8, !dbg !107
  store i32 %condval.sroa.6.0.11153, ptr addrspace(3) %condval.sroa.6.0.add.ptr149.sroa_idx.11157, align 8, !dbg !107, !tbaa !30
  %condval.sroa.7.0.add.ptr149.sroa_idx.11158 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr149.11155, i32 12, !dbg !107
  store i32 %condval.sroa.7.0.11154, ptr addrspace(3) %condval.sroa.7.0.add.ptr149.sroa_idx.11158, align 4, !dbg !107, !tbaa !30
  %cmp94.1.1 = icmp ult i32 %mul80.1, 1024, !dbg !98
  br i1 %cmp94.1.1, label %if.then95.1.1, label %if.end.1.1, !dbg !99

if.then95.1.1:                                    ; preds = %if.end.11159
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

if.end.1.1:                                       ; preds = %if.then95.1.1, %if.end.11159
  %condval.sroa.0.0.1.1 = phi i32 [ %condval.sroa.0.0.copyload.1.1, %if.then95.1.1 ], [ 0, %if.end.11159 ], !dbg !103
  %condval.sroa.5.0.1.1 = phi i32 [ %condval.sroa.5.0.copyload.1.1, %if.then95.1.1 ], [ 0, %if.end.11159 ], !dbg !103
  %condval.sroa.6.0.1.1 = phi i32 [ %condval.sroa.6.0.copyload.1.1, %if.then95.1.1 ], [ 0, %if.end.11159 ], !dbg !103
  %condval.sroa.7.0.1.1 = phi i32 [ %condval.sroa.7.0.copyload.1.1, %if.then95.1.1 ], [ 0, %if.end.11159 ], !dbg !103
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
  %add177.11162 = or disjoint i32 %mul37, %add167, !dbg !113
  %add182.11163 = or disjoint i32 %add177.11162, %mul42, !dbg !114
  %add.ptr184.11164 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add182.11163, !dbg !115
  %k_local.sroa.0.0.copyload.11165 = load <4 x half>, ptr addrspace(3) %add.ptr184.11164, align 8, !dbg !116
  %126 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11165, <4 x half> %6, <4 x float> zeroinitializer), !dbg !117
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
  %cmp210.not.11166 = icmp sgt i32 %add207.1, %1, !dbg !118
  %scores.sroa.0.0.vec.extract1492 = extractelement <4 x float> %129, i64 0
  %spec.select1998 = select i1 %cmp210.not.11166, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1492, !dbg !119
  %cmp210.not.1.1.not = icmp slt i32 %add207.1, %1, !dbg !118
  %scores.sroa.0.4.vec.extract1511 = extractelement <4 x float> %129, i64 1, !dbg !119
  %condval_1.0.1.1 = select i1 %cmp210.not.1.1.not, float %scores.sroa.0.4.vec.extract1511, float 0xFFF0000000000000, !dbg !119
  %add208.2.1 = or disjoint i32 %add207.1, 2, !dbg !120
  %cmp210.not.2.1 = icmp sgt i32 %add208.2.1, %1, !dbg !118
  %scores.sroa.0.8.vec.extract1528 = extractelement <4 x float> %129, i64 2, !dbg !119
  %condval_1.0.2.1 = select i1 %cmp210.not.2.1, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1528, !dbg !119
  %add208.3.1 = or disjoint i32 %add207.1, 3, !dbg !120
  %cmp210.not.3.1 = icmp sgt i32 %add208.3.1, %1, !dbg !118
  %scores.sroa.0.12.vec.extract1545 = extractelement <4 x float> %129, i64 3, !dbg !119
  %condval_1.0.3.1 = select i1 %cmp210.not.3.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1545, !dbg !119
  %130 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select1998, float 0xFFF0000000000000), !dbg !121
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
  %xor.i.i1021.1 = xor i32 %143, 16, !dbg !149
  %144 = and i32 %143, -64, !dbg !150
  %and.i.i1022.1 = add nsw i32 %144, 64, !dbg !150
  %cmp.not.i.i1023.1 = icmp slt i32 %xor.i.i1021.1, %and.i.i1022.1, !dbg !151
  %cond.i.i1024.1 = select i1 %cmp.not.i.i1023.1, i32 %xor.i.i1021.1, i32 %143, !dbg !152
  %shl.i.i1025.1 = shl i32 %cond.i.i1024.1, 2, !dbg !153
  %145 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1025.1, i32 %141), !dbg !154
  %146 = bitcast i32 %145 to float, !dbg !155
  %147 = tail call contract noundef float @llvm.maxnum.f32(float %140, float %146), !dbg !156
  %148 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1, float %147), !dbg !158
  %sub.1 = fsub contract float %maximum.sroa.0.1, %148, !dbg !160
  %mul254.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !161
  %cmp.i.i.1 = fcmp contract olt float %mul254.1, -1.260000e+02, !dbg !162
  %cond.i.i1026.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i.1 = fadd contract float %mul254.1, %cond.i.i1026.1, !dbg !162
  %149 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !162
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %149, !dbg !162
  %numerator.sroa.0.0.vec.extract1556 = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !272
  %numerator.sroa.0.4.vec.extract1583 = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !272
  %numerator.sroa.0.8.vec.extract1610 = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !272
  %numerator.sroa.0.12.vec.extract1637 = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !272
  %mul271.11177 = fmul contract float %mul.i.i.1, %numerator.sroa.0.0.vec.extract1556, !dbg !165
  %mul274.11178 = fmul contract float %mul.i.i.1, %numerator.sroa.0.4.vec.extract1583, !dbg !273
  %mul277.11179 = fmul contract float %mul.i.i.1, %numerator.sroa.0.8.vec.extract1610, !dbg !274
  %mul280.11180 = fmul contract float %mul.i.i.1, %numerator.sroa.0.12.vec.extract1637, !dbg !275
  %numerator.sroa.0.0.vec.insert1558 = insertelement <4 x float> poison, float %mul271.11177, i64 0, !dbg !166
  %numerator.sroa.0.4.vec.insert1585 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert1558, float %mul274.11178, i64 1, !dbg !166
  %numerator.sroa.0.8.vec.insert1612 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert1585, float %mul277.11179, i64 2, !dbg !166
  %numerator.sroa.0.12.vec.insert1639 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert1612, float %mul280.11180, i64 3, !dbg !166
  %numerator.sroa.67.16.vec.extract1666 = extractelement <4 x float> %numerator.sroa.67.0, i64 0, !dbg !272
  %numerator.sroa.67.20.vec.extract1693 = extractelement <4 x float> %numerator.sroa.67.0, i64 1, !dbg !272
  %numerator.sroa.67.24.vec.extract1720 = extractelement <4 x float> %numerator.sroa.67.0, i64 2, !dbg !272
  %numerator.sroa.67.28.vec.extract1747 = extractelement <4 x float> %numerator.sroa.67.0, i64 3, !dbg !272
  %mul271.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.67.16.vec.extract1666, !dbg !165
  %mul274.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.67.20.vec.extract1693, !dbg !273
  %mul277.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.67.24.vec.extract1720, !dbg !274
  %mul280.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.67.28.vec.extract1747, !dbg !275
  %numerator.sroa.67.16.vec.insert1668 = insertelement <4 x float> poison, float %mul271.1.1, i64 0, !dbg !166
  %numerator.sroa.67.20.vec.insert1695 = insertelement <4 x float> %numerator.sroa.67.16.vec.insert1668, float %mul274.1.1, i64 1, !dbg !166
  %numerator.sroa.67.24.vec.insert1722 = insertelement <4 x float> %numerator.sroa.67.20.vec.insert1695, float %mul277.1.1, i64 2, !dbg !166
  %numerator.sroa.67.28.vec.insert1749 = insertelement <4 x float> %numerator.sroa.67.24.vec.insert1722, float %mul280.1.1, i64 3, !dbg !166
  %numerator.sroa.132.32.vec.extract1776 = extractelement <4 x float> %numerator.sroa.132.0, i64 0, !dbg !272
  %numerator.sroa.132.36.vec.extract1803 = extractelement <4 x float> %numerator.sroa.132.0, i64 1, !dbg !272
  %numerator.sroa.132.40.vec.extract1830 = extractelement <4 x float> %numerator.sroa.132.0, i64 2, !dbg !272
  %numerator.sroa.132.44.vec.extract1857 = extractelement <4 x float> %numerator.sroa.132.0, i64 3, !dbg !272
  %mul271.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.132.32.vec.extract1776, !dbg !165
  %mul274.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.132.36.vec.extract1803, !dbg !273
  %mul277.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.132.40.vec.extract1830, !dbg !274
  %mul280.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.132.44.vec.extract1857, !dbg !275
  %numerator.sroa.132.32.vec.insert1778 = insertelement <4 x float> poison, float %mul271.2.1, i64 0, !dbg !166
  %numerator.sroa.132.36.vec.insert1805 = insertelement <4 x float> %numerator.sroa.132.32.vec.insert1778, float %mul274.2.1, i64 1, !dbg !166
  %numerator.sroa.132.40.vec.insert1832 = insertelement <4 x float> %numerator.sroa.132.36.vec.insert1805, float %mul277.2.1, i64 2, !dbg !166
  %numerator.sroa.132.44.vec.insert1859 = insertelement <4 x float> %numerator.sroa.132.40.vec.insert1832, float %mul280.2.1, i64 3, !dbg !166
  %numerator.sroa.197.48.vec.extract1886 = extractelement <4 x float> %numerator.sroa.197.0, i64 0, !dbg !272
  %numerator.sroa.197.52.vec.extract1913 = extractelement <4 x float> %numerator.sroa.197.0, i64 1, !dbg !272
  %numerator.sroa.197.56.vec.extract1940 = extractelement <4 x float> %numerator.sroa.197.0, i64 2, !dbg !272
  %numerator.sroa.197.60.vec.extract1967 = extractelement <4 x float> %numerator.sroa.197.0, i64 3, !dbg !272
  %mul271.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.197.48.vec.extract1886, !dbg !165
  %mul274.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.197.52.vec.extract1913, !dbg !273
  %mul277.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.197.56.vec.extract1940, !dbg !274
  %mul280.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.197.60.vec.extract1967, !dbg !275
  %numerator.sroa.197.48.vec.insert1888 = insertelement <4 x float> poison, float %mul271.3.1, i64 0, !dbg !166
  %numerator.sroa.197.52.vec.insert1915 = insertelement <4 x float> %numerator.sroa.197.48.vec.insert1888, float %mul274.3.1, i64 1, !dbg !166
  %numerator.sroa.197.56.vec.insert1942 = insertelement <4 x float> %numerator.sroa.197.52.vec.insert1915, float %mul277.3.1, i64 2, !dbg !166
  %numerator.sroa.197.60.vec.insert1969 = insertelement <4 x float> %numerator.sroa.197.56.vec.insert1942, float %mul280.3.1, i64 3, !dbg !166
  %sub304.1 = fsub contract float %spec.select1998, %148, !dbg !167
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
  %cmp.i.i1031.1 = fcmp contract olt float %add338.1, -1.260000e+02, !dbg !179
  %cond.i.i1032.1 = select contract i1 %cmp.i.i1031.1, float 6.400000e+01, float 0.000000e+00, !dbg !179
  %add.i.i1033.1 = fadd contract float %add338.1, %cond.i.i1032.1, !dbg !179
  %150 = tail call contract float @llvm.exp2.f32(float %add.i.i1033.1), !dbg !179
  %cond2.i.i1034.1 = select contract i1 %cmp.i.i1031.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !179
  %mul.i.i1035.1 = fmul contract float %cond2.i.i1034.1, %150, !dbg !179
  %cmp.i.i1036.1 = fcmp contract olt float %add342.1, -1.260000e+02, !dbg !181
  %cond.i.i1037.1 = select contract i1 %cmp.i.i1036.1, float 6.400000e+01, float 0.000000e+00, !dbg !181
  %add.i.i1038.1 = fadd contract float %add342.1, %cond.i.i1037.1, !dbg !181
  %151 = tail call contract float @llvm.exp2.f32(float %add.i.i1038.1), !dbg !181
  %cond2.i.i1039.1 = select contract i1 %cmp.i.i1036.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !181
  %mul.i.i1040.1 = fmul contract float %cond2.i.i1039.1, %151, !dbg !181
  %cmp.i.i1041.1 = fcmp contract olt float %add346.1, -1.260000e+02, !dbg !183
  %cond.i.i1042.1 = select contract i1 %cmp.i.i1041.1, float 6.400000e+01, float 0.000000e+00, !dbg !183
  %add.i.i1043.1 = fadd contract float %add346.1, %cond.i.i1042.1, !dbg !183
  %152 = tail call contract float @llvm.exp2.f32(float %add.i.i1043.1), !dbg !183
  %cond2.i.i1044.1 = select contract i1 %cmp.i.i1041.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !183
  %mul.i.i1045.1 = fmul contract float %cond2.i.i1044.1, %152, !dbg !183
  %cmp.i.i1046.1 = fcmp contract olt float %add350.1, -1.260000e+02, !dbg !185
  %cond.i.i1047.1 = select contract i1 %cmp.i.i1046.1, float 6.400000e+01, float 0.000000e+00, !dbg !185
  %add.i.i1048.1 = fadd contract float %add350.1, %cond.i.i1047.1, !dbg !185
  %153 = tail call contract float @llvm.exp2.f32(float %add.i.i1048.1), !dbg !185
  %cond2.i.i1049.1 = select contract i1 %cmp.i.i1046.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !185
  %mul.i.i1050.1 = fmul contract float %cond2.i.i1049.1, %153, !dbg !185
  %154 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !187, !noalias !195
  %155 = fptrunc float %mul.i.i1035.1 to half, !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %154), !dbg !187, !noalias !195
  %156 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !200
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !200, !noalias !195
  %157 = fptrunc float %mul.i.i1040.1 to half, !dbg !200
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %156), !dbg !200, !noalias !195
  %158 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !202, !noalias !206
  %159 = fptrunc float %mul.i.i1045.1 to half, !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %158), !dbg !202, !noalias !206
  %160 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !211
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !211, !noalias !206
  %161 = fptrunc float %mul.i.i1050.1 to half, !dbg !211
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %160), !dbg !211, !noalias !206
  %162 = insertelement <4 x half> poison, half %155, i64 0, !dbg !213
  %163 = insertelement <4 x half> %162, half %157, i64 1, !dbg !213
  %164 = insertelement <4 x half> %163, half %159, i64 2, !dbg !213
  %165 = insertelement <4 x half> %164, half %161, i64 3, !dbg !213
  %conv.i.i.11182 = fpext half %155 to float, !dbg !214
  %add385.11183 = fadd contract float %conv.i.i.11182, 0.000000e+00, !dbg !219
  %conv.i.i.1.1 = fpext half %157 to float, !dbg !214
  %add385.1.1 = fadd contract float %add385.11183, %conv.i.i.1.1, !dbg !219
  %conv.i.i.2.1 = fpext half %159 to float, !dbg !214
  %add385.2.1 = fadd contract float %add385.1.1, %conv.i.i.2.1, !dbg !219
  %conv.i.i.3.1 = fpext half %161 to float, !dbg !214
  %add385.3.1 = fadd contract float %add385.2.1, %conv.i.i.3.1, !dbg !219
  %166 = bitcast float %add385.3.1 to i32, !dbg !220
  %167 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !222
  %168 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %167) #11, !dbg !225
  %xor.i.i1056.1 = xor i32 %168, 32, !dbg !226
  %169 = and i32 %168, -64, !dbg !227
  %and.i.i1057.1 = add nsw i32 %169, 64, !dbg !227
  %cmp.not.i.i1058.1 = icmp slt i32 %xor.i.i1056.1, %and.i.i1057.1, !dbg !228
  %cond.i.i1059.1 = select i1 %cmp.not.i.i1058.1, i32 %xor.i.i1056.1, i32 %168, !dbg !229
  %shl.i.i1060.1 = shl i32 %cond.i.i1059.1, 2, !dbg !230
  %170 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1060.1, i32 %166), !dbg !231
  %171 = bitcast i32 %170 to float, !dbg !232
  %add393.1 = fadd contract float %add385.3.1, %171, !dbg !233
  %172 = bitcast float %add393.1 to i32, !dbg !234
  %173 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !236
  %174 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %173) #11, !dbg !239
  %xor.i.i1061.1 = xor i32 %174, 16, !dbg !240
  %175 = and i32 %174, -64, !dbg !241
  %and.i.i1062.1 = add nsw i32 %175, 64, !dbg !241
  %cmp.not.i.i1063.1 = icmp slt i32 %xor.i.i1061.1, %and.i.i1062.1, !dbg !242
  %cond.i.i1064.1 = select i1 %cmp.not.i.i1063.1, i32 %xor.i.i1061.1, i32 %174, !dbg !243
  %shl.i.i1065.1 = shl i32 %cond.i.i1064.1, 2, !dbg !244
  %176 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1065.1, i32 %172), !dbg !245
  %177 = bitcast i32 %176 to float, !dbg !246
  %add398.1 = fadd contract float %add393.1, %177, !dbg !247
  fence syncscope("warp") release, !dbg !248
  tail call void @llvm.mxc.barrier.warp(), !dbg !251
  fence syncscope("warp") acquire, !dbg !252
  %cmp414.1 = icmp ult i32 %mul80.1, 1024
  %178 = shl i32 %116, 10
  %mul426.1 = zext i32 %178 to i64
  br i1 %cmp414.1, label %if.then415.11187, label %if.end450.11191, !dbg !253

if.then415.11187:                                 ; preds = %if.end.1.1
  %179 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add427, !dbg !254
  %180 = getelementptr inbounds %struct.__half, ptr addrspace(4) %179, i64 %mul426.1, !dbg !254
  %condval_2.sroa.0.0.copyload.11184 = load i32, ptr addrspace(4) %180, align 8, !dbg !255, !tbaa !30
  %condval_2.sroa.5.0.add.ptr436.sroa_idx.11185 = getelementptr inbounds i8, ptr addrspace(4) %180, i64 4, !dbg !255
  %condval_2.sroa.5.0.copyload.11186 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr436.sroa_idx.11185, align 4, !dbg !255, !tbaa !30
  br label %if.end450.11191, !dbg !256

if.end450.11191:                                  ; preds = %if.then415.11187, %if.end.1.1
  %condval_2.sroa.0.0.11188 = phi i32 [ %condval_2.sroa.0.0.copyload.11184, %if.then415.11187 ], [ 0, %if.end.1.1 ], !dbg !103
  %condval_2.sroa.5.0.11189 = phi i32 [ %condval_2.sroa.5.0.copyload.11186, %if.then415.11187 ], [ 0, %if.end.1.1 ], !dbg !103
  br i1 %cmp414.1, label %if.then415.1.1, label %if.end450.1.1, !dbg !253

if.then415.1.1:                                   ; preds = %if.end450.11191
  %181 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add427, !dbg !254
  %182 = getelementptr inbounds %struct.__half, ptr addrspace(4) %181, i64 %mul426.1, !dbg !254
  %add.ptr436.1.1 = getelementptr inbounds i8, ptr addrspace(4) %182, i64 128, !dbg !254
  %condval_2.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %add.ptr436.1.1, align 8, !dbg !255, !tbaa !30
  %condval_2.sroa.5.0.add.ptr436.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %182, i64 132, !dbg !255
  %condval_2.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr436.sroa_idx.1.1, align 4, !dbg !255, !tbaa !30
  br label %if.end450.1.1, !dbg !256

if.end450.1.1:                                    ; preds = %if.then415.1.1, %if.end450.11191
  %condval_2.sroa.0.0.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1, %if.then415.1.1 ], [ 0, %if.end450.11191 ], !dbg !103
  %condval_2.sroa.5.0.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1, %if.then415.1.1 ], [ 0, %if.end450.11191 ], !dbg !103
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
  %add.ptr497.idx.11198 = shl nuw nsw i32 %xor492, 3, !dbg !257
  %add.ptr497.11199 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 %add.ptr497.idx.11198, !dbg !257
  %188 = and i32 %condval_2.sroa.0.0.3.1, 65535, !dbg !258
  %v_column.sroa.34.0.insert.ext1397 = zext nneg i32 %188 to i64, !dbg !258
  %v_column.sroa.34.0.insert.shift1398 = shl nuw i64 %v_column.sroa.34.0.insert.ext1397, 48, !dbg !258
  %189 = and i32 %condval_2.sroa.0.0.2.1, 65535, !dbg !258
  %v_column.sroa.26.0.insert.ext1362 = zext nneg i32 %189 to i64, !dbg !258
  %v_column.sroa.26.0.insert.shift1363 = shl nuw nsw i64 %v_column.sroa.26.0.insert.ext1362, 32, !dbg !258
  %v_column.sroa.26.0.insert.insert1365 = or disjoint i64 %v_column.sroa.34.0.insert.shift1398, %v_column.sroa.26.0.insert.shift1363, !dbg !258
  %190 = shl i32 %condval_2.sroa.0.0.1.1, 16, !dbg !258
  %v_column.sroa.18.0.insert.shift1328 = zext i32 %190 to i64, !dbg !258
  %v_column.sroa.18.0.insert.insert1330 = or disjoint i64 %v_column.sroa.26.0.insert.insert1365, %v_column.sroa.18.0.insert.shift1328, !dbg !258
  %191 = and i32 %condval_2.sroa.0.0.11188, 65535, !dbg !258
  %v_column.sroa.0.0.insert.ext1296 = zext nneg i32 %191 to i64, !dbg !258
  %v_column.sroa.0.0.insert.insert1298 = or disjoint i64 %v_column.sroa.18.0.insert.insert1330, %v_column.sroa.0.0.insert.ext1296, !dbg !258
  store i64 %v_column.sroa.0.0.insert.insert1298, ptr addrspace(3) %add.ptr497.11199, align 8, !dbg !258
  %v_fetch.sroa.0.2.extract.shift1431 = lshr i32 %condval_2.sroa.0.0.11188, 16, !dbg !259
  %v_fetch.sroa.0.2.extract.trunc1432 = zext nneg i32 %v_fetch.sroa.0.2.extract.shift1431 to i64, !dbg !259
  %v_fetch.sroa.14.10.extract.shift1441 = and i32 %condval_2.sroa.0.0.1.1, -65536, !dbg !258
  %v_fetch.sroa.26.18.extract.shift1451 = lshr i32 %condval_2.sroa.0.0.2.1, 16, !dbg !259
  %v_fetch.sroa.26.18.extract.trunc1452 = zext nneg i32 %v_fetch.sroa.26.18.extract.shift1451 to i64, !dbg !259
  %v_fetch.sroa.38.26.extract.shift1461 = lshr i32 %condval_2.sroa.0.0.3.1, 16, !dbg !259
  %v_fetch.sroa.38.26.extract.trunc1462 = zext nneg i32 %v_fetch.sroa.38.26.extract.shift1461 to i64, !dbg !259
  %192 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 512), i32 %17, !dbg !257
  %xor493.1.1 = shl nuw nsw i32 %xor492, 3, !dbg !257
  %add.ptr497.idx.1.1 = xor i32 %xor493.1.1, 8, !dbg !257
  %add.ptr497.1.1 = getelementptr inbounds i8, ptr addrspace(3) %192, i32 %add.ptr497.idx.1.1, !dbg !257
  %v_column.sroa.34.0.insert.shift1403 = shl nuw i64 %v_fetch.sroa.38.26.extract.trunc1462, 48, !dbg !258
  %v_column.sroa.26.0.insert.shift1368 = shl nuw nsw i64 %v_fetch.sroa.26.18.extract.trunc1452, 32, !dbg !258
  %v_column.sroa.26.0.insert.insert1370 = or disjoint i64 %v_column.sroa.34.0.insert.shift1403, %v_column.sroa.26.0.insert.shift1368, !dbg !258
  %v_column.sroa.18.0.insert.shift1333 = zext i32 %v_fetch.sroa.14.10.extract.shift1441 to i64, !dbg !258
  %v_column.sroa.18.0.insert.insert1335 = or disjoint i64 %v_column.sroa.26.0.insert.insert1370, %v_column.sroa.18.0.insert.shift1333, !dbg !258
  %v_column.sroa.0.0.insert.insert1302 = or disjoint i64 %v_column.sroa.18.0.insert.insert1335, %v_fetch.sroa.0.2.extract.trunc1432, !dbg !258
  store i64 %v_column.sroa.0.0.insert.insert1302, ptr addrspace(3) %add.ptr497.1.1, align 8, !dbg !258
  %193 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 1024), i32 %17, !dbg !257
  %xor493.2.1 = shl nuw nsw i32 %xor492, 3, !dbg !257
  %add.ptr497.idx.2.1 = xor i32 %xor493.2.1, 16, !dbg !257
  %add.ptr497.2.1 = getelementptr inbounds i8, ptr addrspace(3) %193, i32 %add.ptr497.idx.2.1, !dbg !257
  %194 = and i32 %condval_2.sroa.5.0.3.1, 65535, !dbg !258
  %v_column.sroa.34.0.insert.ext1407 = zext nneg i32 %194 to i64, !dbg !258
  %v_column.sroa.34.0.insert.shift1408 = shl nuw i64 %v_column.sroa.34.0.insert.ext1407, 48, !dbg !258
  %195 = and i32 %condval_2.sroa.5.0.2.1, 65535, !dbg !258
  %v_column.sroa.26.0.insert.ext1372 = zext nneg i32 %195 to i64, !dbg !258
  %v_column.sroa.26.0.insert.shift1373 = shl nuw nsw i64 %v_column.sroa.26.0.insert.ext1372, 32, !dbg !258
  %v_column.sroa.26.0.insert.insert1375 = or disjoint i64 %v_column.sroa.34.0.insert.shift1408, %v_column.sroa.26.0.insert.shift1373, !dbg !258
  %196 = shl i32 %condval_2.sroa.5.0.1.1, 16, !dbg !258
  %v_column.sroa.18.0.insert.shift1338 = zext i32 %196 to i64, !dbg !258
  %v_column.sroa.18.0.insert.insert1340 = or disjoint i64 %v_column.sroa.26.0.insert.insert1375, %v_column.sroa.18.0.insert.shift1338, !dbg !258
  %197 = and i32 %condval_2.sroa.5.0.11189, 65535, !dbg !258
  %v_column.sroa.0.0.insert.ext1304 = zext nneg i32 %197 to i64, !dbg !258
  %v_column.sroa.0.0.insert.insert1306 = or disjoint i64 %v_column.sroa.18.0.insert.insert1340, %v_column.sroa.0.0.insert.ext1304, !dbg !258
  store i64 %v_column.sroa.0.0.insert.insert1306, ptr addrspace(3) %add.ptr497.2.1, align 8, !dbg !258
  %v_fetch.sroa.8.6.extract.shift1436 = lshr i32 %condval_2.sroa.5.0.11189, 16, !dbg !259
  %v_fetch.sroa.8.6.extract.trunc1437 = zext nneg i32 %v_fetch.sroa.8.6.extract.shift1436 to i64, !dbg !259
  %v_fetch.sroa.20.14.extract.shift1446 = and i32 %condval_2.sroa.5.0.1.1, -65536, !dbg !258
  %v_fetch.sroa.32.22.extract.shift1456 = lshr i32 %condval_2.sroa.5.0.2.1, 16, !dbg !259
  %v_fetch.sroa.32.22.extract.trunc1457 = zext nneg i32 %v_fetch.sroa.32.22.extract.shift1456 to i64, !dbg !259
  %v_fetch.sroa.44.30.extract.shift1466 = lshr i32 %condval_2.sroa.5.0.3.1, 16, !dbg !259
  %v_fetch.sroa.44.30.extract.trunc1467 = zext nneg i32 %v_fetch.sroa.44.30.extract.shift1466 to i64, !dbg !259
  %198 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 1536), i32 %17, !dbg !257
  %xor493.3.1 = shl nuw nsw i32 %xor492, 3, !dbg !257
  %add.ptr497.idx.3.1 = xor i32 %xor493.3.1, 24, !dbg !257
  %add.ptr497.3.1 = getelementptr inbounds i8, ptr addrspace(3) %198, i32 %add.ptr497.idx.3.1, !dbg !257
  %v_column.sroa.34.0.insert.shift1413 = shl nuw i64 %v_fetch.sroa.44.30.extract.trunc1467, 48, !dbg !258
  %v_column.sroa.26.0.insert.shift1378 = shl nuw nsw i64 %v_fetch.sroa.32.22.extract.trunc1457, 32, !dbg !258
  %v_column.sroa.26.0.insert.insert1380 = or disjoint i64 %v_column.sroa.34.0.insert.shift1413, %v_column.sroa.26.0.insert.shift1378, !dbg !258
  %v_column.sroa.18.0.insert.shift1343 = zext i32 %v_fetch.sroa.20.14.extract.shift1446 to i64, !dbg !258
  %v_column.sroa.18.0.insert.insert1345 = or disjoint i64 %v_column.sroa.26.0.insert.insert1380, %v_column.sroa.18.0.insert.shift1343, !dbg !258
  %v_column.sroa.0.0.insert.insert1310 = or disjoint i64 %v_column.sroa.18.0.insert.insert1345, %v_fetch.sroa.8.6.extract.trunc1437, !dbg !258
  store i64 %v_column.sroa.0.0.insert.insert1310, ptr addrspace(3) %add.ptr497.3.1, align 8, !dbg !258
  fence syncscope("warp") release, !dbg !260
  tail call void @llvm.mxc.barrier.warp(), !dbg !263
  fence syncscope("warp") acquire, !dbg !264
  %add518.11201 = or disjoint i32 %add511, %mul517, !dbg !265
  %199 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add518.11201, !dbg !266
  %add.ptr529.idx.11202 = shl nuw nsw i32 %18, 3, !dbg !266
  %add.ptr529.11203 = getelementptr inbounds i8, ptr addrspace(3) %199, i32 %add.ptr529.idx.11202, !dbg !266
  %200 = load <4 x half>, ptr addrspace(3) %add.ptr529.11203, align 8, !dbg !267
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
  %207 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %200, <4 x half> %165, <4 x float> %numerator.sroa.0.12.vec.insert1639), !dbg !268
  %208 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %202, <4 x half> %165, <4 x float> %numerator.sroa.67.28.vec.insert1749), !dbg !268
  %209 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %204, <4 x half> %165, <4 x float> %numerator.sroa.132.44.vec.insert1859), !dbg !268
  %210 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %206, <4 x half> %165, <4 x float> %numerator.sroa.197.60.vec.insert1969), !dbg !268
  %add402.1 = fadd contract float %mul291.1, %add398.1, !dbg !269
  br label %if.end555.1, !dbg !270

if.end555.1:                                      ; preds = %if.end450.3.1, %if.end555
  %numerator.sroa.197.1 = phi <4 x float> [ %numerator.sroa.197.0, %if.end555 ], [ %210, %if.end450.3.1 ], !dbg !103
  %numerator.sroa.132.1 = phi <4 x float> [ %numerator.sroa.132.0, %if.end555 ], [ %209, %if.end450.3.1 ], !dbg !103
  %numerator.sroa.67.1 = phi <4 x float> [ %numerator.sroa.67.0, %if.end555 ], [ %208, %if.end450.3.1 ], !dbg !103
  %numerator.sroa.0.1 = phi <4 x float> [ %numerator.sroa.0.0, %if.end555 ], [ %207, %if.end450.3.1 ], !dbg !103
  %maximum.sroa.0.1.1 = phi float [ %maximum.sroa.0.1, %if.end555 ], [ %148, %if.end450.3.1 ], !dbg !103
  %denominator.sroa.0.1.1 = phi float [ %denominator.sroa.0.1, %if.end555 ], [ %add402.1, %if.end450.3.1 ], !dbg !103
  fence syncscope("block") release, !dbg !277
  tail call void @llvm.mxc.barrier(), !dbg !280
  fence syncscope("block") acquire, !dbg !281
  %shr577 = and i32 %and16, 3
  %and580 = and i32 %2, 15
  %xor581 = xor i32 %shr577, %and580, !dbg !282
  %.idx1124 = shl nuw nsw i32 %xor581, 4, !dbg !283
  %211 = getelementptr inbounds i8, ptr addrspace(3) @buf_dyn_shmem, i32 %.idx1124, !dbg !283
  %add.ptr585 = getelementptr inbounds float, ptr addrspace(3) %211, i32 %add167, !dbg !283
  store <4 x float> %numerator.sroa.0.1, ptr addrspace(3) %add.ptr585, align 16, !dbg !284
  %add578.1 = or disjoint i32 %shr577, 4, !dbg !285
  %xor581.1 = xor i32 %add578.1, %and580, !dbg !282
  %.idx1124.1 = shl nuw nsw i32 %xor581.1, 4, !dbg !283
  %212 = getelementptr inbounds i8, ptr addrspace(3) @buf_dyn_shmem, i32 %.idx1124.1, !dbg !283
  %add.ptr585.1 = getelementptr inbounds float, ptr addrspace(3) %212, i32 %add167, !dbg !283
  store <4 x float> %numerator.sroa.67.1, ptr addrspace(3) %add.ptr585.1, align 16, !dbg !284
  %add578.2 = or disjoint i32 %shr577, 8, !dbg !285
  %xor581.2 = xor i32 %add578.2, %and580, !dbg !282
  %.idx1124.2 = shl nuw nsw i32 %xor581.2, 4, !dbg !283
  %213 = getelementptr inbounds i8, ptr addrspace(3) @buf_dyn_shmem, i32 %.idx1124.2, !dbg !283
  %add.ptr585.2 = getelementptr inbounds float, ptr addrspace(3) %213, i32 %add167, !dbg !283
  store <4 x float> %numerator.sroa.132.1, ptr addrspace(3) %add.ptr585.2, align 16, !dbg !284
  %add578.3 = or disjoint i32 %shr577, 12, !dbg !285
  %xor581.3 = xor i32 %add578.3, %and580, !dbg !282
  %.idx1124.3 = shl nuw nsw i32 %xor581.3, 4, !dbg !283
  %214 = getelementptr inbounds i8, ptr addrspace(3) @buf_dyn_shmem, i32 %.idx1124.3, !dbg !283
  %add.ptr585.3 = getelementptr inbounds float, ptr addrspace(3) %214, i32 %add167, !dbg !283
  store <4 x float> %numerator.sroa.197.1, ptr addrspace(3) %add.ptr585.3, align 16, !dbg !284
  %and590 = and i32 %2, 48, !dbg !286
  %cmp591 = icmp eq i32 %and590, 0, !dbg !287
  br i1 %cmp591, label %if.then592, label %if.end613, !dbg !288

if.then592:                                       ; preds = %if.end555.1
  %mul596 = and i32 %5, 240
  %add599 = or disjoint i32 %mul596, %and580
  %215 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add599
  %arrayidx612 = getelementptr inbounds i8, ptr addrspace(3) %215, i32 16640
  %add600 = or disjoint i32 %add599, 4096
  %arrayidx602 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add600
  store float %maximum.sroa.0.1.1, ptr addrspace(3) %arrayidx602, align 4, !dbg !289, !tbaa !290
  store float %denominator.sroa.0.1.1, ptr addrspace(3) %arrayidx612, align 4, !dbg !292, !tbaa !290
  br label %if.end613, !dbg !293

if.end613:                                        ; preds = %if.then592, %if.end555.1
  fence syncscope("block") release, !dbg !294
  tail call void @llvm.mxc.barrier(), !dbg !297
  fence syncscope("block") acquire, !dbg !298
  %cmp616 = icmp ult i32 %2, 64, !dbg !299
  br i1 %cmp616, label %for.cond621.preheader, label %if.end752, !dbg !300

for.cond621.preheader:                            ; preds = %if.end613
  %216 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %and580, !dbg !301
  %arrayidx632 = getelementptr inbounds i8, ptr addrspace(3) %216, i32 16384, !dbg !301
  %217 = load float, ptr addrspace(3) %arrayidx632, align 4, !dbg !301, !tbaa !290
  %add629.1 = or disjoint i32 %and580, 16, !dbg !302
  %218 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add629.1, !dbg !301
  %arrayidx632.1 = getelementptr inbounds i8, ptr addrspace(3) %218, i32 16384, !dbg !301
  %219 = load float, ptr addrspace(3) %arrayidx632.1, align 4, !dbg !301, !tbaa !290
  %add629.2 = or disjoint i32 %and580, 32, !dbg !302
  %220 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add629.2, !dbg !301
  %arrayidx632.2 = getelementptr inbounds i8, ptr addrspace(3) %220, i32 16384, !dbg !301
  %221 = load float, ptr addrspace(3) %arrayidx632.2, align 4, !dbg !301, !tbaa !290
  %add629.3 = or i32 %2, 48, !dbg !302
  %222 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add629.3, !dbg !301
  %arrayidx632.3 = getelementptr inbounds i8, ptr addrspace(3) %222, i32 16384, !dbg !301
  %223 = load float, ptr addrspace(3) %arrayidx632.3, align 4, !dbg !301, !tbaa !290
  %224 = tail call contract noundef float @llvm.maxnum.f32(float %217, float 0xFFF0000000000000), !dbg !303
  %225 = tail call contract noundef float @llvm.maxnum.f32(float %224, float %219), !dbg !303
  %226 = tail call contract noundef float @llvm.maxnum.f32(float %225, float %221), !dbg !303
  %227 = tail call contract noundef float @llvm.maxnum.f32(float %226, float %223), !dbg !303
  %sub664 = fsub contract float %217, %227, !dbg !305
  %mul665 = fmul contract float %sub664, 0x3FC7154760000000, !dbg !306
  %cmp.i.i1068 = fcmp contract olt float %mul665, -1.260000e+02, !dbg !307
  %cond.i.i1069 = select contract i1 %cmp.i.i1068, float 6.400000e+01, float 0.000000e+00, !dbg !307
  %add.i.i1070 = fadd contract float %mul665, %cond.i.i1069, !dbg !307
  %228 = tail call contract float @llvm.exp2.f32(float %add.i.i1070), !dbg !307
  %cond2.i.i1071 = select contract i1 %cmp.i.i1068, float 0x3BF0000000000000, float 1.000000e+00, !dbg !307
  %mul.i.i1072 = fmul contract float %cond2.i.i1071, %228, !dbg !307
  %add673 = or disjoint i32 %and580, 4160, !dbg !309
  %arrayidx675 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add673, !dbg !310
  %229 = load float, ptr addrspace(3) %arrayidx675, align 4, !dbg !310, !tbaa !290
  %mul677 = fmul contract float %229, %mul.i.i1072, !dbg !311
  %xor700 = xor i32 %and16, %and580, !dbg !312
  %.idx1125 = shl nuw nsw i32 %xor700, 4, !dbg !313
  %230 = getelementptr inbounds i8, ptr addrspace(3) @buf_dyn_shmem, i32 %.idx1125, !dbg !313
  %add.ptr704 = getelementptr inbounds float, ptr addrspace(3) %230, i32 %mul28, !dbg !313
  %v__7.sroa.0.0.copyload = load float, ptr addrspace(3) %add.ptr704, align 16, !dbg !314, !tbaa !290
  %v__7.sroa.4.0.add.ptr704.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704, i32 4, !dbg !314
  %v__7.sroa.4.0.copyload = load float, ptr addrspace(3) %v__7.sroa.4.0.add.ptr704.sroa_idx, align 4, !dbg !314, !tbaa !290
  %v__7.sroa.5.0.add.ptr704.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704, i32 8, !dbg !314
  %v__7.sroa.5.0.copyload = load float, ptr addrspace(3) %v__7.sroa.5.0.add.ptr704.sroa_idx, align 8, !dbg !314, !tbaa !290
  %v__7.sroa.6.0.add.ptr704.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704, i32 12, !dbg !314
  %v__7.sroa.6.0.copyload = load float, ptr addrspace(3) %v__7.sroa.6.0.add.ptr704.sroa_idx, align 4, !dbg !314, !tbaa !290
  %mul712 = fmul contract float %mul.i.i1072, %v__7.sroa.0.0.copyload, !dbg !315
  %mul716 = fmul contract float %mul.i.i1072, %v__7.sroa.4.0.copyload, !dbg !316
  %mul720 = fmul contract float %mul.i.i1072, %v__7.sroa.5.0.copyload, !dbg !317
  %mul724 = fmul contract float %mul.i.i1072, %v__7.sroa.6.0.copyload, !dbg !318
  %add728 = fadd contract float %mul712, 0.000000e+00, !dbg !319
  %add732 = fadd contract float %mul716, 0.000000e+00, !dbg !320
  %add736 = fadd contract float %mul720, 0.000000e+00, !dbg !321
  %add740 = fadd contract float %mul724, 0.000000e+00, !dbg !322
  %add697.1 = or disjoint i32 %and16, 4, !dbg !323
  %xor700.1 = xor i32 %add697.1, %and580, !dbg !312
  %.idx1125.1 = shl nuw nsw i32 %xor700.1, 4, !dbg !313
  %231 = getelementptr inbounds i8, ptr addrspace(3) @buf_dyn_shmem, i32 %.idx1125.1, !dbg !313
  %add.ptr704.1 = getelementptr inbounds float, ptr addrspace(3) %231, i32 %mul28, !dbg !313
  %v__7.sroa.0.0.copyload.1 = load float, ptr addrspace(3) %add.ptr704.1, align 16, !dbg !314, !tbaa !290
  %v__7.sroa.4.0.add.ptr704.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.1, i32 4, !dbg !314
  %v__7.sroa.4.0.copyload.1 = load float, ptr addrspace(3) %v__7.sroa.4.0.add.ptr704.sroa_idx.1, align 4, !dbg !314, !tbaa !290
  %v__7.sroa.5.0.add.ptr704.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.1, i32 8, !dbg !314
  %v__7.sroa.5.0.copyload.1 = load float, ptr addrspace(3) %v__7.sroa.5.0.add.ptr704.sroa_idx.1, align 8, !dbg !314, !tbaa !290
  %v__7.sroa.6.0.add.ptr704.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.1, i32 12, !dbg !314
  %v__7.sroa.6.0.copyload.1 = load float, ptr addrspace(3) %v__7.sroa.6.0.add.ptr704.sroa_idx.1, align 4, !dbg !314, !tbaa !290
  %mul712.1 = fmul contract float %mul.i.i1072, %v__7.sroa.0.0.copyload.1, !dbg !315
  %mul716.1 = fmul contract float %mul.i.i1072, %v__7.sroa.4.0.copyload.1, !dbg !316
  %mul720.1 = fmul contract float %mul.i.i1072, %v__7.sroa.5.0.copyload.1, !dbg !317
  %mul724.1 = fmul contract float %mul.i.i1072, %v__7.sroa.6.0.copyload.1, !dbg !318
  %add728.1 = fadd contract float %mul712.1, 0.000000e+00, !dbg !319
  %add732.1 = fadd contract float %mul716.1, 0.000000e+00, !dbg !320
  %add736.1 = fadd contract float %mul720.1, 0.000000e+00, !dbg !321
  %add740.1 = fadd contract float %mul724.1, 0.000000e+00, !dbg !322
  %add697.2 = or disjoint i32 %and16, 8, !dbg !323
  %xor700.2 = xor i32 %add697.2, %and580, !dbg !312
  %.idx1125.2 = shl nuw nsw i32 %xor700.2, 4, !dbg !313
  %232 = getelementptr inbounds i8, ptr addrspace(3) @buf_dyn_shmem, i32 %.idx1125.2, !dbg !313
  %add.ptr704.2 = getelementptr inbounds float, ptr addrspace(3) %232, i32 %mul28, !dbg !313
  %v__7.sroa.0.0.copyload.2 = load float, ptr addrspace(3) %add.ptr704.2, align 16, !dbg !314, !tbaa !290
  %v__7.sroa.4.0.add.ptr704.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.2, i32 4, !dbg !314
  %v__7.sroa.4.0.copyload.2 = load float, ptr addrspace(3) %v__7.sroa.4.0.add.ptr704.sroa_idx.2, align 4, !dbg !314, !tbaa !290
  %v__7.sroa.5.0.add.ptr704.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.2, i32 8, !dbg !314
  %v__7.sroa.5.0.copyload.2 = load float, ptr addrspace(3) %v__7.sroa.5.0.add.ptr704.sroa_idx.2, align 8, !dbg !314, !tbaa !290
  %v__7.sroa.6.0.add.ptr704.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.2, i32 12, !dbg !314
  %v__7.sroa.6.0.copyload.2 = load float, ptr addrspace(3) %v__7.sroa.6.0.add.ptr704.sroa_idx.2, align 4, !dbg !314, !tbaa !290
  %mul712.2 = fmul contract float %mul.i.i1072, %v__7.sroa.0.0.copyload.2, !dbg !315
  %mul716.2 = fmul contract float %mul.i.i1072, %v__7.sroa.4.0.copyload.2, !dbg !316
  %mul720.2 = fmul contract float %mul.i.i1072, %v__7.sroa.5.0.copyload.2, !dbg !317
  %mul724.2 = fmul contract float %mul.i.i1072, %v__7.sroa.6.0.copyload.2, !dbg !318
  %add728.2 = fadd contract float %mul712.2, 0.000000e+00, !dbg !319
  %add732.2 = fadd contract float %mul716.2, 0.000000e+00, !dbg !320
  %add736.2 = fadd contract float %mul720.2, 0.000000e+00, !dbg !321
  %add740.2 = fadd contract float %mul724.2, 0.000000e+00, !dbg !322
  %add697.3 = or disjoint i32 %and16, 12, !dbg !323
  %xor700.3 = xor i32 %add697.3, %and580, !dbg !312
  %.idx1125.3 = shl nuw nsw i32 %xor700.3, 4, !dbg !313
  %233 = getelementptr inbounds i8, ptr addrspace(3) @buf_dyn_shmem, i32 %.idx1125.3, !dbg !313
  %add.ptr704.3 = getelementptr inbounds float, ptr addrspace(3) %233, i32 %mul28, !dbg !313
  %v__7.sroa.0.0.copyload.3 = load float, ptr addrspace(3) %add.ptr704.3, align 16, !dbg !314, !tbaa !290
  %v__7.sroa.4.0.add.ptr704.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.3, i32 4, !dbg !314
  %v__7.sroa.4.0.copyload.3 = load float, ptr addrspace(3) %v__7.sroa.4.0.add.ptr704.sroa_idx.3, align 4, !dbg !314, !tbaa !290
  %v__7.sroa.5.0.add.ptr704.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.3, i32 8, !dbg !314
  %v__7.sroa.5.0.copyload.3 = load float, ptr addrspace(3) %v__7.sroa.5.0.add.ptr704.sroa_idx.3, align 8, !dbg !314, !tbaa !290
  %v__7.sroa.6.0.add.ptr704.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.3, i32 12, !dbg !314
  %v__7.sroa.6.0.copyload.3 = load float, ptr addrspace(3) %v__7.sroa.6.0.add.ptr704.sroa_idx.3, align 4, !dbg !314, !tbaa !290
  %mul712.3 = fmul contract float %mul.i.i1072, %v__7.sroa.0.0.copyload.3, !dbg !315
  %mul716.3 = fmul contract float %mul.i.i1072, %v__7.sroa.4.0.copyload.3, !dbg !316
  %mul720.3 = fmul contract float %mul.i.i1072, %v__7.sroa.5.0.copyload.3, !dbg !317
  %mul724.3 = fmul contract float %mul.i.i1072, %v__7.sroa.6.0.copyload.3, !dbg !318
  %add728.3 = fadd contract float %mul712.3, 0.000000e+00, !dbg !319
  %add732.3 = fadd contract float %mul716.3, 0.000000e+00, !dbg !320
  %add736.3 = fadd contract float %mul720.3, 0.000000e+00, !dbg !321
  %add740.3 = fadd contract float %mul724.3, 0.000000e+00, !dbg !322
  %add678 = fadd contract float %mul677, 0.000000e+00, !dbg !324
  %add660.1 = or disjoint i32 %and580, 4112, !dbg !325
  %arrayidx662.1 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add660.1, !dbg !326
  %234 = load float, ptr addrspace(3) %arrayidx662.1, align 4, !dbg !326, !tbaa !290
  %sub664.1 = fsub contract float %234, %227, !dbg !305
  %mul665.1 = fmul contract float %sub664.1, 0x3FC7154760000000, !dbg !306
  %cmp.i.i1068.1 = fcmp contract olt float %mul665.1, -1.260000e+02, !dbg !307
  %cond.i.i1069.1 = select contract i1 %cmp.i.i1068.1, float 6.400000e+01, float 0.000000e+00, !dbg !307
  %add.i.i1070.1 = fadd contract float %mul665.1, %cond.i.i1069.1, !dbg !307
  %235 = tail call contract float @llvm.exp2.f32(float %add.i.i1070.1), !dbg !307
  %cond2.i.i1071.1 = select contract i1 %cmp.i.i1068.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !307
  %mul.i.i1072.1 = fmul contract float %cond2.i.i1071.1, %235, !dbg !307
  %add673.1 = or disjoint i32 %and580, 4176, !dbg !309
  %arrayidx675.1 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add673.1, !dbg !310
  %236 = load float, ptr addrspace(3) %arrayidx675.1, align 4, !dbg !310, !tbaa !290
  %mul677.1 = fmul contract float %236, %mul.i.i1072.1, !dbg !311
  %add692.1 = or disjoint i32 %mul28, 1024
  %add.ptr704.11213 = getelementptr inbounds float, ptr addrspace(3) %230, i32 %add692.1, !dbg !313
  %v__7.sroa.0.0.copyload.11214 = load float, ptr addrspace(3) %add.ptr704.11213, align 16, !dbg !314, !tbaa !290
  %v__7.sroa.4.0.add.ptr704.sroa_idx.11215 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.11213, i32 4, !dbg !314
  %v__7.sroa.4.0.copyload.11216 = load float, ptr addrspace(3) %v__7.sroa.4.0.add.ptr704.sroa_idx.11215, align 4, !dbg !314, !tbaa !290
  %v__7.sroa.5.0.add.ptr704.sroa_idx.11217 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.11213, i32 8, !dbg !314
  %v__7.sroa.5.0.copyload.11218 = load float, ptr addrspace(3) %v__7.sroa.5.0.add.ptr704.sroa_idx.11217, align 8, !dbg !314, !tbaa !290
  %v__7.sroa.6.0.add.ptr704.sroa_idx.11219 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.11213, i32 12, !dbg !314
  %v__7.sroa.6.0.copyload.11220 = load float, ptr addrspace(3) %v__7.sroa.6.0.add.ptr704.sroa_idx.11219, align 4, !dbg !314, !tbaa !290
  %mul712.11221 = fmul contract float %mul.i.i1072.1, %v__7.sroa.0.0.copyload.11214, !dbg !315
  %mul716.11222 = fmul contract float %mul.i.i1072.1, %v__7.sroa.4.0.copyload.11216, !dbg !316
  %mul720.11223 = fmul contract float %mul.i.i1072.1, %v__7.sroa.5.0.copyload.11218, !dbg !317
  %mul724.11224 = fmul contract float %mul.i.i1072.1, %v__7.sroa.6.0.copyload.11220, !dbg !318
  %add728.11225 = fadd contract float %add728, %mul712.11221, !dbg !319
  %add732.11226 = fadd contract float %add732, %mul716.11222, !dbg !320
  %add736.11227 = fadd contract float %add736, %mul720.11223, !dbg !321
  %add740.11228 = fadd contract float %add740, %mul724.11224, !dbg !322
  %add.ptr704.1.1 = getelementptr inbounds float, ptr addrspace(3) %231, i32 %add692.1, !dbg !313
  %v__7.sroa.0.0.copyload.1.1 = load float, ptr addrspace(3) %add.ptr704.1.1, align 16, !dbg !314, !tbaa !290
  %v__7.sroa.4.0.add.ptr704.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.1.1, i32 4, !dbg !314
  %v__7.sroa.4.0.copyload.1.1 = load float, ptr addrspace(3) %v__7.sroa.4.0.add.ptr704.sroa_idx.1.1, align 4, !dbg !314, !tbaa !290
  %v__7.sroa.5.0.add.ptr704.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.1.1, i32 8, !dbg !314
  %v__7.sroa.5.0.copyload.1.1 = load float, ptr addrspace(3) %v__7.sroa.5.0.add.ptr704.sroa_idx.1.1, align 8, !dbg !314, !tbaa !290
  %v__7.sroa.6.0.add.ptr704.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.1.1, i32 12, !dbg !314
  %v__7.sroa.6.0.copyload.1.1 = load float, ptr addrspace(3) %v__7.sroa.6.0.add.ptr704.sroa_idx.1.1, align 4, !dbg !314, !tbaa !290
  %mul712.1.1 = fmul contract float %mul.i.i1072.1, %v__7.sroa.0.0.copyload.1.1, !dbg !315
  %mul716.1.1 = fmul contract float %mul.i.i1072.1, %v__7.sroa.4.0.copyload.1.1, !dbg !316
  %mul720.1.1 = fmul contract float %mul.i.i1072.1, %v__7.sroa.5.0.copyload.1.1, !dbg !317
  %mul724.1.1 = fmul contract float %mul.i.i1072.1, %v__7.sroa.6.0.copyload.1.1, !dbg !318
  %add728.1.1 = fadd contract float %add728.1, %mul712.1.1, !dbg !319
  %add732.1.1 = fadd contract float %add732.1, %mul716.1.1, !dbg !320
  %add736.1.1 = fadd contract float %add736.1, %mul720.1.1, !dbg !321
  %add740.1.1 = fadd contract float %add740.1, %mul724.1.1, !dbg !322
  %add.ptr704.2.1 = getelementptr inbounds float, ptr addrspace(3) %232, i32 %add692.1, !dbg !313
  %v__7.sroa.0.0.copyload.2.1 = load float, ptr addrspace(3) %add.ptr704.2.1, align 16, !dbg !314, !tbaa !290
  %v__7.sroa.4.0.add.ptr704.sroa_idx.2.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.2.1, i32 4, !dbg !314
  %v__7.sroa.4.0.copyload.2.1 = load float, ptr addrspace(3) %v__7.sroa.4.0.add.ptr704.sroa_idx.2.1, align 4, !dbg !314, !tbaa !290
  %v__7.sroa.5.0.add.ptr704.sroa_idx.2.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.2.1, i32 8, !dbg !314
  %v__7.sroa.5.0.copyload.2.1 = load float, ptr addrspace(3) %v__7.sroa.5.0.add.ptr704.sroa_idx.2.1, align 8, !dbg !314, !tbaa !290
  %v__7.sroa.6.0.add.ptr704.sroa_idx.2.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.2.1, i32 12, !dbg !314
  %v__7.sroa.6.0.copyload.2.1 = load float, ptr addrspace(3) %v__7.sroa.6.0.add.ptr704.sroa_idx.2.1, align 4, !dbg !314, !tbaa !290
  %mul712.2.1 = fmul contract float %mul.i.i1072.1, %v__7.sroa.0.0.copyload.2.1, !dbg !315
  %mul716.2.1 = fmul contract float %mul.i.i1072.1, %v__7.sroa.4.0.copyload.2.1, !dbg !316
  %mul720.2.1 = fmul contract float %mul.i.i1072.1, %v__7.sroa.5.0.copyload.2.1, !dbg !317
  %mul724.2.1 = fmul contract float %mul.i.i1072.1, %v__7.sroa.6.0.copyload.2.1, !dbg !318
  %add728.2.1 = fadd contract float %add728.2, %mul712.2.1, !dbg !319
  %add732.2.1 = fadd contract float %add732.2, %mul716.2.1, !dbg !320
  %add736.2.1 = fadd contract float %add736.2, %mul720.2.1, !dbg !321
  %add740.2.1 = fadd contract float %add740.2, %mul724.2.1, !dbg !322
  %add.ptr704.3.1 = getelementptr inbounds float, ptr addrspace(3) %233, i32 %add692.1, !dbg !313
  %v__7.sroa.0.0.copyload.3.1 = load float, ptr addrspace(3) %add.ptr704.3.1, align 16, !dbg !314, !tbaa !290
  %v__7.sroa.4.0.add.ptr704.sroa_idx.3.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.3.1, i32 4, !dbg !314
  %v__7.sroa.4.0.copyload.3.1 = load float, ptr addrspace(3) %v__7.sroa.4.0.add.ptr704.sroa_idx.3.1, align 4, !dbg !314, !tbaa !290
  %v__7.sroa.5.0.add.ptr704.sroa_idx.3.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.3.1, i32 8, !dbg !314
  %v__7.sroa.5.0.copyload.3.1 = load float, ptr addrspace(3) %v__7.sroa.5.0.add.ptr704.sroa_idx.3.1, align 8, !dbg !314, !tbaa !290
  %v__7.sroa.6.0.add.ptr704.sroa_idx.3.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.3.1, i32 12, !dbg !314
  %v__7.sroa.6.0.copyload.3.1 = load float, ptr addrspace(3) %v__7.sroa.6.0.add.ptr704.sroa_idx.3.1, align 4, !dbg !314, !tbaa !290
  %mul712.3.1 = fmul contract float %mul.i.i1072.1, %v__7.sroa.0.0.copyload.3.1, !dbg !315
  %mul716.3.1 = fmul contract float %mul.i.i1072.1, %v__7.sroa.4.0.copyload.3.1, !dbg !316
  %mul720.3.1 = fmul contract float %mul.i.i1072.1, %v__7.sroa.5.0.copyload.3.1, !dbg !317
  %mul724.3.1 = fmul contract float %mul.i.i1072.1, %v__7.sroa.6.0.copyload.3.1, !dbg !318
  %add728.3.1 = fadd contract float %add728.3, %mul712.3.1, !dbg !319
  %add732.3.1 = fadd contract float %add732.3, %mul716.3.1, !dbg !320
  %add736.3.1 = fadd contract float %add736.3, %mul720.3.1, !dbg !321
  %add740.3.1 = fadd contract float %add740.3, %mul724.3.1, !dbg !322
  %add678.1 = fadd contract float %add678, %mul677.1, !dbg !324
  %add660.2 = or disjoint i32 %and580, 4128, !dbg !325
  %arrayidx662.2 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add660.2, !dbg !326
  %237 = load float, ptr addrspace(3) %arrayidx662.2, align 4, !dbg !326, !tbaa !290
  %sub664.2 = fsub contract float %237, %227, !dbg !305
  %mul665.2 = fmul contract float %sub664.2, 0x3FC7154760000000, !dbg !306
  %cmp.i.i1068.2 = fcmp contract olt float %mul665.2, -1.260000e+02, !dbg !307
  %cond.i.i1069.2 = select contract i1 %cmp.i.i1068.2, float 6.400000e+01, float 0.000000e+00, !dbg !307
  %add.i.i1070.2 = fadd contract float %mul665.2, %cond.i.i1069.2, !dbg !307
  %238 = tail call contract float @llvm.exp2.f32(float %add.i.i1070.2), !dbg !307
  %cond2.i.i1071.2 = select contract i1 %cmp.i.i1068.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !307
  %mul.i.i1072.2 = fmul contract float %cond2.i.i1071.2, %238, !dbg !307
  %add673.2 = or disjoint i32 %and580, 4192, !dbg !309
  %arrayidx675.2 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add673.2, !dbg !310
  %239 = load float, ptr addrspace(3) %arrayidx675.2, align 4, !dbg !310, !tbaa !290
  %mul677.2 = fmul contract float %239, %mul.i.i1072.2, !dbg !311
  %add692.2 = or disjoint i32 %mul28, 2048
  %add.ptr704.21238 = getelementptr inbounds float, ptr addrspace(3) %230, i32 %add692.2, !dbg !313
  %v__7.sroa.0.0.copyload.21239 = load float, ptr addrspace(3) %add.ptr704.21238, align 16, !dbg !314, !tbaa !290
  %v__7.sroa.4.0.add.ptr704.sroa_idx.21240 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.21238, i32 4, !dbg !314
  %v__7.sroa.4.0.copyload.21241 = load float, ptr addrspace(3) %v__7.sroa.4.0.add.ptr704.sroa_idx.21240, align 4, !dbg !314, !tbaa !290
  %v__7.sroa.5.0.add.ptr704.sroa_idx.21242 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.21238, i32 8, !dbg !314
  %v__7.sroa.5.0.copyload.21243 = load float, ptr addrspace(3) %v__7.sroa.5.0.add.ptr704.sroa_idx.21242, align 8, !dbg !314, !tbaa !290
  %v__7.sroa.6.0.add.ptr704.sroa_idx.21244 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.21238, i32 12, !dbg !314
  %v__7.sroa.6.0.copyload.21245 = load float, ptr addrspace(3) %v__7.sroa.6.0.add.ptr704.sroa_idx.21244, align 4, !dbg !314, !tbaa !290
  %mul712.21246 = fmul contract float %mul.i.i1072.2, %v__7.sroa.0.0.copyload.21239, !dbg !315
  %mul716.21247 = fmul contract float %mul.i.i1072.2, %v__7.sroa.4.0.copyload.21241, !dbg !316
  %mul720.21248 = fmul contract float %mul.i.i1072.2, %v__7.sroa.5.0.copyload.21243, !dbg !317
  %mul724.21249 = fmul contract float %mul.i.i1072.2, %v__7.sroa.6.0.copyload.21245, !dbg !318
  %add728.21250 = fadd contract float %add728.11225, %mul712.21246, !dbg !319
  %add732.21251 = fadd contract float %add732.11226, %mul716.21247, !dbg !320
  %add736.21252 = fadd contract float %add736.11227, %mul720.21248, !dbg !321
  %add740.21253 = fadd contract float %add740.11228, %mul724.21249, !dbg !322
  %add.ptr704.1.2 = getelementptr inbounds float, ptr addrspace(3) %231, i32 %add692.2, !dbg !313
  %v__7.sroa.0.0.copyload.1.2 = load float, ptr addrspace(3) %add.ptr704.1.2, align 16, !dbg !314, !tbaa !290
  %v__7.sroa.4.0.add.ptr704.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.1.2, i32 4, !dbg !314
  %v__7.sroa.4.0.copyload.1.2 = load float, ptr addrspace(3) %v__7.sroa.4.0.add.ptr704.sroa_idx.1.2, align 4, !dbg !314, !tbaa !290
  %v__7.sroa.5.0.add.ptr704.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.1.2, i32 8, !dbg !314
  %v__7.sroa.5.0.copyload.1.2 = load float, ptr addrspace(3) %v__7.sroa.5.0.add.ptr704.sroa_idx.1.2, align 8, !dbg !314, !tbaa !290
  %v__7.sroa.6.0.add.ptr704.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.1.2, i32 12, !dbg !314
  %v__7.sroa.6.0.copyload.1.2 = load float, ptr addrspace(3) %v__7.sroa.6.0.add.ptr704.sroa_idx.1.2, align 4, !dbg !314, !tbaa !290
  %mul712.1.2 = fmul contract float %mul.i.i1072.2, %v__7.sroa.0.0.copyload.1.2, !dbg !315
  %mul716.1.2 = fmul contract float %mul.i.i1072.2, %v__7.sroa.4.0.copyload.1.2, !dbg !316
  %mul720.1.2 = fmul contract float %mul.i.i1072.2, %v__7.sroa.5.0.copyload.1.2, !dbg !317
  %mul724.1.2 = fmul contract float %mul.i.i1072.2, %v__7.sroa.6.0.copyload.1.2, !dbg !318
  %add728.1.2 = fadd contract float %add728.1.1, %mul712.1.2, !dbg !319
  %add732.1.2 = fadd contract float %add732.1.1, %mul716.1.2, !dbg !320
  %add736.1.2 = fadd contract float %add736.1.1, %mul720.1.2, !dbg !321
  %add740.1.2 = fadd contract float %add740.1.1, %mul724.1.2, !dbg !322
  %add.ptr704.2.2 = getelementptr inbounds float, ptr addrspace(3) %232, i32 %add692.2, !dbg !313
  %v__7.sroa.0.0.copyload.2.2 = load float, ptr addrspace(3) %add.ptr704.2.2, align 16, !dbg !314, !tbaa !290
  %v__7.sroa.4.0.add.ptr704.sroa_idx.2.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.2.2, i32 4, !dbg !314
  %v__7.sroa.4.0.copyload.2.2 = load float, ptr addrspace(3) %v__7.sroa.4.0.add.ptr704.sroa_idx.2.2, align 4, !dbg !314, !tbaa !290
  %v__7.sroa.5.0.add.ptr704.sroa_idx.2.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.2.2, i32 8, !dbg !314
  %v__7.sroa.5.0.copyload.2.2 = load float, ptr addrspace(3) %v__7.sroa.5.0.add.ptr704.sroa_idx.2.2, align 8, !dbg !314, !tbaa !290
  %v__7.sroa.6.0.add.ptr704.sroa_idx.2.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.2.2, i32 12, !dbg !314
  %v__7.sroa.6.0.copyload.2.2 = load float, ptr addrspace(3) %v__7.sroa.6.0.add.ptr704.sroa_idx.2.2, align 4, !dbg !314, !tbaa !290
  %mul712.2.2 = fmul contract float %mul.i.i1072.2, %v__7.sroa.0.0.copyload.2.2, !dbg !315
  %mul716.2.2 = fmul contract float %mul.i.i1072.2, %v__7.sroa.4.0.copyload.2.2, !dbg !316
  %mul720.2.2 = fmul contract float %mul.i.i1072.2, %v__7.sroa.5.0.copyload.2.2, !dbg !317
  %mul724.2.2 = fmul contract float %mul.i.i1072.2, %v__7.sroa.6.0.copyload.2.2, !dbg !318
  %add728.2.2 = fadd contract float %add728.2.1, %mul712.2.2, !dbg !319
  %add732.2.2 = fadd contract float %add732.2.1, %mul716.2.2, !dbg !320
  %add736.2.2 = fadd contract float %add736.2.1, %mul720.2.2, !dbg !321
  %add740.2.2 = fadd contract float %add740.2.1, %mul724.2.2, !dbg !322
  %add.ptr704.3.2 = getelementptr inbounds float, ptr addrspace(3) %233, i32 %add692.2, !dbg !313
  %v__7.sroa.0.0.copyload.3.2 = load float, ptr addrspace(3) %add.ptr704.3.2, align 16, !dbg !314, !tbaa !290
  %v__7.sroa.4.0.add.ptr704.sroa_idx.3.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.3.2, i32 4, !dbg !314
  %v__7.sroa.4.0.copyload.3.2 = load float, ptr addrspace(3) %v__7.sroa.4.0.add.ptr704.sroa_idx.3.2, align 4, !dbg !314, !tbaa !290
  %v__7.sroa.5.0.add.ptr704.sroa_idx.3.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.3.2, i32 8, !dbg !314
  %v__7.sroa.5.0.copyload.3.2 = load float, ptr addrspace(3) %v__7.sroa.5.0.add.ptr704.sroa_idx.3.2, align 8, !dbg !314, !tbaa !290
  %v__7.sroa.6.0.add.ptr704.sroa_idx.3.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.3.2, i32 12, !dbg !314
  %v__7.sroa.6.0.copyload.3.2 = load float, ptr addrspace(3) %v__7.sroa.6.0.add.ptr704.sroa_idx.3.2, align 4, !dbg !314, !tbaa !290
  %mul712.3.2 = fmul contract float %mul.i.i1072.2, %v__7.sroa.0.0.copyload.3.2, !dbg !315
  %mul716.3.2 = fmul contract float %mul.i.i1072.2, %v__7.sroa.4.0.copyload.3.2, !dbg !316
  %mul720.3.2 = fmul contract float %mul.i.i1072.2, %v__7.sroa.5.0.copyload.3.2, !dbg !317
  %mul724.3.2 = fmul contract float %mul.i.i1072.2, %v__7.sroa.6.0.copyload.3.2, !dbg !318
  %add728.3.2 = fadd contract float %add728.3.1, %mul712.3.2, !dbg !319
  %add732.3.2 = fadd contract float %add732.3.1, %mul716.3.2, !dbg !320
  %add736.3.2 = fadd contract float %add736.3.1, %mul720.3.2, !dbg !321
  %add740.3.2 = fadd contract float %add740.3.1, %mul724.3.2, !dbg !322
  %add678.2 = fadd contract float %add678.1, %mul677.2, !dbg !324
  %add660.3 = or i32 %2, 4144, !dbg !325
  %arrayidx662.3 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add660.3, !dbg !326
  %240 = load float, ptr addrspace(3) %arrayidx662.3, align 4, !dbg !326, !tbaa !290
  %sub664.3 = fsub contract float %240, %227, !dbg !305
  %mul665.3 = fmul contract float %sub664.3, 0x3FC7154760000000, !dbg !306
  %cmp.i.i1068.3 = fcmp contract olt float %mul665.3, -1.260000e+02, !dbg !307
  %cond.i.i1069.3 = select contract i1 %cmp.i.i1068.3, float 6.400000e+01, float 0.000000e+00, !dbg !307
  %add.i.i1070.3 = fadd contract float %mul665.3, %cond.i.i1069.3, !dbg !307
  %241 = tail call contract float @llvm.exp2.f32(float %add.i.i1070.3), !dbg !307
  %cond2.i.i1071.3 = select contract i1 %cmp.i.i1068.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !307
  %mul.i.i1072.3 = fmul contract float %cond2.i.i1071.3, %241, !dbg !307
  %add673.3 = or i32 %2, 4208, !dbg !309
  %arrayidx675.3 = getelementptr inbounds float, ptr addrspace(3) @buf_dyn_shmem, i32 %add673.3, !dbg !310
  %242 = load float, ptr addrspace(3) %arrayidx675.3, align 4, !dbg !310, !tbaa !290
  %mul677.3 = fmul contract float %242, %mul.i.i1072.3, !dbg !311
  %add692.3 = or i32 %and27, 3072
  %add.ptr704.31263 = getelementptr inbounds float, ptr addrspace(3) %230, i32 %add692.3, !dbg !313
  %v__7.sroa.0.0.copyload.31264 = load float, ptr addrspace(3) %add.ptr704.31263, align 16, !dbg !314, !tbaa !290
  %v__7.sroa.4.0.add.ptr704.sroa_idx.31265 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.31263, i32 4, !dbg !314
  %v__7.sroa.4.0.copyload.31266 = load float, ptr addrspace(3) %v__7.sroa.4.0.add.ptr704.sroa_idx.31265, align 4, !dbg !314, !tbaa !290
  %v__7.sroa.5.0.add.ptr704.sroa_idx.31267 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.31263, i32 8, !dbg !314
  %v__7.sroa.5.0.copyload.31268 = load float, ptr addrspace(3) %v__7.sroa.5.0.add.ptr704.sroa_idx.31267, align 8, !dbg !314, !tbaa !290
  %v__7.sroa.6.0.add.ptr704.sroa_idx.31269 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.31263, i32 12, !dbg !314
  %v__7.sroa.6.0.copyload.31270 = load float, ptr addrspace(3) %v__7.sroa.6.0.add.ptr704.sroa_idx.31269, align 4, !dbg !314, !tbaa !290
  %mul712.31271 = fmul contract float %mul.i.i1072.3, %v__7.sroa.0.0.copyload.31264, !dbg !315
  %mul716.31272 = fmul contract float %mul.i.i1072.3, %v__7.sroa.4.0.copyload.31266, !dbg !316
  %mul720.31273 = fmul contract float %mul.i.i1072.3, %v__7.sroa.5.0.copyload.31268, !dbg !317
  %mul724.31274 = fmul contract float %mul.i.i1072.3, %v__7.sroa.6.0.copyload.31270, !dbg !318
  %add728.31275 = fadd contract float %add728.21250, %mul712.31271, !dbg !319
  %add732.31276 = fadd contract float %add732.21251, %mul716.31272, !dbg !320
  %add736.31277 = fadd contract float %add736.21252, %mul720.31273, !dbg !321
  %add740.31278 = fadd contract float %add740.21253, %mul724.31274, !dbg !322
  %243 = insertelement <4 x float> poison, float %add728.31275, i64 0, !dbg !327
  %244 = insertelement <4 x float> %243, float %add732.31276, i64 1, !dbg !327
  %245 = insertelement <4 x float> %244, float %add736.31277, i64 2, !dbg !327
  %numerator.sroa.0.12.vec.insert1657 = insertelement <4 x float> %245, float %add740.31278, i64 3, !dbg !327
  %add.ptr704.1.3 = getelementptr inbounds float, ptr addrspace(3) %231, i32 %add692.3, !dbg !313
  %v__7.sroa.0.0.copyload.1.3 = load float, ptr addrspace(3) %add.ptr704.1.3, align 16, !dbg !314, !tbaa !290
  %v__7.sroa.4.0.add.ptr704.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.1.3, i32 4, !dbg !314
  %v__7.sroa.4.0.copyload.1.3 = load float, ptr addrspace(3) %v__7.sroa.4.0.add.ptr704.sroa_idx.1.3, align 4, !dbg !314, !tbaa !290
  %v__7.sroa.5.0.add.ptr704.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.1.3, i32 8, !dbg !314
  %v__7.sroa.5.0.copyload.1.3 = load float, ptr addrspace(3) %v__7.sroa.5.0.add.ptr704.sroa_idx.1.3, align 8, !dbg !314, !tbaa !290
  %v__7.sroa.6.0.add.ptr704.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.1.3, i32 12, !dbg !314
  %v__7.sroa.6.0.copyload.1.3 = load float, ptr addrspace(3) %v__7.sroa.6.0.add.ptr704.sroa_idx.1.3, align 4, !dbg !314, !tbaa !290
  %mul712.1.3 = fmul contract float %mul.i.i1072.3, %v__7.sroa.0.0.copyload.1.3, !dbg !315
  %mul716.1.3 = fmul contract float %mul.i.i1072.3, %v__7.sroa.4.0.copyload.1.3, !dbg !316
  %mul720.1.3 = fmul contract float %mul.i.i1072.3, %v__7.sroa.5.0.copyload.1.3, !dbg !317
  %mul724.1.3 = fmul contract float %mul.i.i1072.3, %v__7.sroa.6.0.copyload.1.3, !dbg !318
  %add728.1.3 = fadd contract float %add728.1.2, %mul712.1.3, !dbg !319
  %add732.1.3 = fadd contract float %add732.1.2, %mul716.1.3, !dbg !320
  %add736.1.3 = fadd contract float %add736.1.2, %mul720.1.3, !dbg !321
  %add740.1.3 = fadd contract float %add740.1.2, %mul724.1.3, !dbg !322
  %246 = insertelement <4 x float> poison, float %add728.1.3, i64 0, !dbg !327
  %247 = insertelement <4 x float> %246, float %add732.1.3, i64 1, !dbg !327
  %248 = insertelement <4 x float> %247, float %add736.1.3, i64 2, !dbg !327
  %numerator.sroa.67.28.vec.insert1767 = insertelement <4 x float> %248, float %add740.1.3, i64 3, !dbg !327
  %add.ptr704.2.3 = getelementptr inbounds float, ptr addrspace(3) %232, i32 %add692.3, !dbg !313
  %v__7.sroa.0.0.copyload.2.3 = load float, ptr addrspace(3) %add.ptr704.2.3, align 16, !dbg !314, !tbaa !290
  %v__7.sroa.4.0.add.ptr704.sroa_idx.2.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.2.3, i32 4, !dbg !314
  %v__7.sroa.4.0.copyload.2.3 = load float, ptr addrspace(3) %v__7.sroa.4.0.add.ptr704.sroa_idx.2.3, align 4, !dbg !314, !tbaa !290
  %v__7.sroa.5.0.add.ptr704.sroa_idx.2.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.2.3, i32 8, !dbg !314
  %v__7.sroa.5.0.copyload.2.3 = load float, ptr addrspace(3) %v__7.sroa.5.0.add.ptr704.sroa_idx.2.3, align 8, !dbg !314, !tbaa !290
  %v__7.sroa.6.0.add.ptr704.sroa_idx.2.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.2.3, i32 12, !dbg !314
  %v__7.sroa.6.0.copyload.2.3 = load float, ptr addrspace(3) %v__7.sroa.6.0.add.ptr704.sroa_idx.2.3, align 4, !dbg !314, !tbaa !290
  %mul712.2.3 = fmul contract float %mul.i.i1072.3, %v__7.sroa.0.0.copyload.2.3, !dbg !315
  %mul716.2.3 = fmul contract float %mul.i.i1072.3, %v__7.sroa.4.0.copyload.2.3, !dbg !316
  %mul720.2.3 = fmul contract float %mul.i.i1072.3, %v__7.sroa.5.0.copyload.2.3, !dbg !317
  %mul724.2.3 = fmul contract float %mul.i.i1072.3, %v__7.sroa.6.0.copyload.2.3, !dbg !318
  %add728.2.3 = fadd contract float %add728.2.2, %mul712.2.3, !dbg !319
  %add732.2.3 = fadd contract float %add732.2.2, %mul716.2.3, !dbg !320
  %add736.2.3 = fadd contract float %add736.2.2, %mul720.2.3, !dbg !321
  %add740.2.3 = fadd contract float %add740.2.2, %mul724.2.3, !dbg !322
  %249 = insertelement <4 x float> poison, float %add728.2.3, i64 0, !dbg !327
  %250 = insertelement <4 x float> %249, float %add732.2.3, i64 1, !dbg !327
  %251 = insertelement <4 x float> %250, float %add736.2.3, i64 2, !dbg !327
  %numerator.sroa.132.44.vec.insert1877 = insertelement <4 x float> %251, float %add740.2.3, i64 3, !dbg !327
  %add.ptr704.3.3 = getelementptr inbounds float, ptr addrspace(3) %233, i32 %add692.3, !dbg !313
  %v__7.sroa.0.0.copyload.3.3 = load float, ptr addrspace(3) %add.ptr704.3.3, align 16, !dbg !314, !tbaa !290
  %v__7.sroa.4.0.add.ptr704.sroa_idx.3.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.3.3, i32 4, !dbg !314
  %v__7.sroa.4.0.copyload.3.3 = load float, ptr addrspace(3) %v__7.sroa.4.0.add.ptr704.sroa_idx.3.3, align 4, !dbg !314, !tbaa !290
  %v__7.sroa.5.0.add.ptr704.sroa_idx.3.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.3.3, i32 8, !dbg !314
  %v__7.sroa.5.0.copyload.3.3 = load float, ptr addrspace(3) %v__7.sroa.5.0.add.ptr704.sroa_idx.3.3, align 8, !dbg !314, !tbaa !290
  %v__7.sroa.6.0.add.ptr704.sroa_idx.3.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr704.3.3, i32 12, !dbg !314
  %v__7.sroa.6.0.copyload.3.3 = load float, ptr addrspace(3) %v__7.sroa.6.0.add.ptr704.sroa_idx.3.3, align 4, !dbg !314, !tbaa !290
  %mul712.3.3 = fmul contract float %mul.i.i1072.3, %v__7.sroa.0.0.copyload.3.3, !dbg !315
  %mul716.3.3 = fmul contract float %mul.i.i1072.3, %v__7.sroa.4.0.copyload.3.3, !dbg !316
  %mul720.3.3 = fmul contract float %mul.i.i1072.3, %v__7.sroa.5.0.copyload.3.3, !dbg !317
  %mul724.3.3 = fmul contract float %mul.i.i1072.3, %v__7.sroa.6.0.copyload.3.3, !dbg !318
  %add728.3.3 = fadd contract float %add728.3.2, %mul712.3.3, !dbg !319
  %add732.3.3 = fadd contract float %add732.3.2, %mul716.3.3, !dbg !320
  %add736.3.3 = fadd contract float %add736.3.2, %mul720.3.3, !dbg !321
  %add740.3.3 = fadd contract float %add740.3.2, %mul724.3.3, !dbg !322
  %252 = insertelement <4 x float> poison, float %add728.3.3, i64 0, !dbg !327
  %253 = insertelement <4 x float> %252, float %add732.3.3, i64 1, !dbg !327
  %254 = insertelement <4 x float> %253, float %add736.3.3, i64 2, !dbg !327
  %numerator.sroa.197.60.vec.insert1987 = insertelement <4 x float> %254, float %add740.3.3, i64 3, !dbg !327
  %add678.3 = fadd contract float %add678.2, %mul677.3, !dbg !324
  br label %if.end752, !dbg !328

if.end752:                                        ; preds = %for.cond621.preheader, %if.end613
  %numerator.sroa.197.2 = phi <4 x float> [ %numerator.sroa.197.60.vec.insert1987, %for.cond621.preheader ], [ %numerator.sroa.197.1, %if.end613 ], !dbg !103
  %numerator.sroa.132.2 = phi <4 x float> [ %numerator.sroa.132.44.vec.insert1877, %for.cond621.preheader ], [ %numerator.sroa.132.1, %if.end613 ], !dbg !103
  %numerator.sroa.67.2 = phi <4 x float> [ %numerator.sroa.67.28.vec.insert1767, %for.cond621.preheader ], [ %numerator.sroa.67.1, %if.end613 ], !dbg !103
  %numerator.sroa.0.2 = phi <4 x float> [ %numerator.sroa.0.12.vec.insert1657, %for.cond621.preheader ], [ %numerator.sroa.0.1, %if.end613 ], !dbg !103
  %denominator.sroa.0.3 = phi float [ %add678.3, %for.cond621.preheader ], [ %denominator.sroa.0.1.1, %if.end613 ], !dbg !103
  fence syncscope("block") release, !dbg !328
  tail call void @llvm.mxc.barrier(), !dbg !331
  fence syncscope("block") acquire, !dbg !332
  br i1 %cmp616, label %for.cond757.preheader, label %if.end858, !dbg !333

for.cond757.preheader:                            ; preds = %if.end752
  %numerator.sroa.0.0.vec.extract1578 = extractelement <4 x float> %numerator.sroa.0.2, i64 0, !dbg !334
  %numerator.sroa.0.4.vec.extract1605 = extractelement <4 x float> %numerator.sroa.0.2, i64 1, !dbg !334
  %numerator.sroa.0.8.vec.extract1632 = extractelement <4 x float> %numerator.sroa.0.2, i64 2, !dbg !334
  %numerator.sroa.0.12.vec.extract1659 = extractelement <4 x float> %numerator.sroa.0.2, i64 3, !dbg !334
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract1578, %denominator.sroa.0.3, !dbg !335
  %div775 = fdiv contract float %numerator.sroa.0.4.vec.extract1605, %denominator.sroa.0.3, !dbg !336
  %div779 = fdiv contract float %numerator.sroa.0.8.vec.extract1632, %denominator.sroa.0.3, !dbg !337
  %div783 = fdiv contract float %numerator.sroa.0.12.vec.extract1659, %denominator.sroa.0.3, !dbg !338
  %255 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !339
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !339, !noalias !343
  %256 = fptrunc float %div to half, !dbg !339
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %255), !dbg !339, !noalias !343
  %257 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !348
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !348, !noalias !343
  %258 = fptrunc float %div775 to half, !dbg !348
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %257), !dbg !348, !noalias !343
  %259 = bitcast half %256 to i16, !dbg !350
  %260 = bitcast half %258 to i16, !dbg !353
  %261 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !354
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !354, !noalias !358
  %262 = fptrunc float %div779 to half, !dbg !354
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %261), !dbg !354, !noalias !358
  %263 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !363
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !363, !noalias !358
  %264 = fptrunc float %div783 to half, !dbg !363
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %263), !dbg !363, !noalias !358
  %265 = bitcast half %262 to i16, !dbg !365
  %266 = bitcast half %264 to i16, !dbg !367
  %__9.sroa.6.0.insert.ext = zext i16 %266 to i64, !dbg !368
  %__9.sroa.6.0.insert.shift = shl nuw i64 %__9.sroa.6.0.insert.ext, 48, !dbg !368
  %__9.sroa.5.0.insert.ext = zext i16 %265 to i64, !dbg !368
  %__9.sroa.5.0.insert.shift = shl nuw nsw i64 %__9.sroa.5.0.insert.ext, 32, !dbg !368
  %__9.sroa.5.0.insert.insert = or disjoint i64 %__9.sroa.6.0.insert.shift, %__9.sroa.5.0.insert.shift, !dbg !368
  %__9.sroa.4.0.insert.ext = zext i16 %260 to i64, !dbg !368
  %__9.sroa.4.0.insert.shift = shl nuw nsw i64 %__9.sroa.4.0.insert.ext, 16, !dbg !368
  %__9.sroa.4.0.insert.insert = or disjoint i64 %__9.sroa.5.0.insert.insert, %__9.sroa.4.0.insert.shift, !dbg !368
  %__9.sroa.0.0.insert.ext = zext i16 %259 to i64, !dbg !368
  %__9.sroa.0.0.insert.insert = or disjoint i64 %__9.sroa.4.0.insert.insert, %__9.sroa.0.0.insert.ext, !dbg !368
  %xor809 = xor i32 %and31, %and35, !dbg !369
  %mul810 = shl nuw nsw i32 %xor809, 3, !dbg !370
  %add811 = or disjoint i32 %mul810, %mul28, !dbg !371
  %add816 = or disjoint i32 %add811, %mul42, !dbg !372
  %add.ptr818 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add816, !dbg !373
  store i64 %__9.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr818, align 8, !dbg !374
  %numerator.sroa.67.16.vec.extract1688 = extractelement <4 x float> %numerator.sroa.67.2, i64 0, !dbg !334
  %numerator.sroa.67.20.vec.extract1715 = extractelement <4 x float> %numerator.sroa.67.2, i64 1, !dbg !334
  %numerator.sroa.67.24.vec.extract1742 = extractelement <4 x float> %numerator.sroa.67.2, i64 2, !dbg !334
  %numerator.sroa.67.28.vec.extract1769 = extractelement <4 x float> %numerator.sroa.67.2, i64 3, !dbg !334
  %div.1 = fdiv contract float %numerator.sroa.67.16.vec.extract1688, %denominator.sroa.0.3, !dbg !335
  %div775.1 = fdiv contract float %numerator.sroa.67.20.vec.extract1715, %denominator.sroa.0.3, !dbg !336
  %div779.1 = fdiv contract float %numerator.sroa.67.24.vec.extract1742, %denominator.sroa.0.3, !dbg !337
  %div783.1 = fdiv contract float %numerator.sroa.67.28.vec.extract1769, %denominator.sroa.0.3, !dbg !338
  %267 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !339
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !339, !noalias !343
  %268 = fptrunc float %div.1 to half, !dbg !339
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %267), !dbg !339, !noalias !343
  %269 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !348
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !348, !noalias !343
  %270 = fptrunc float %div775.1 to half, !dbg !348
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %269), !dbg !348, !noalias !343
  %271 = bitcast half %268 to i16, !dbg !350
  %272 = bitcast half %270 to i16, !dbg !353
  %273 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !354
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !354, !noalias !358
  %274 = fptrunc float %div779.1 to half, !dbg !354
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %273), !dbg !354, !noalias !358
  %275 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !363
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !363, !noalias !358
  %276 = fptrunc float %div783.1 to half, !dbg !363
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %275), !dbg !363, !noalias !358
  %277 = bitcast half %274 to i16, !dbg !365
  %278 = bitcast half %276 to i16, !dbg !367
  %__9.sroa.6.0.insert.ext.1 = zext i16 %278 to i64, !dbg !368
  %__9.sroa.6.0.insert.shift.1 = shl nuw i64 %__9.sroa.6.0.insert.ext.1, 48, !dbg !368
  %__9.sroa.5.0.insert.ext.1 = zext i16 %277 to i64, !dbg !368
  %__9.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__9.sroa.5.0.insert.ext.1, 32, !dbg !368
  %__9.sroa.5.0.insert.insert.1 = or disjoint i64 %__9.sroa.6.0.insert.shift.1, %__9.sroa.5.0.insert.shift.1, !dbg !368
  %__9.sroa.4.0.insert.ext.1 = zext i16 %272 to i64, !dbg !368
  %__9.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__9.sroa.4.0.insert.ext.1, 16, !dbg !368
  %__9.sroa.4.0.insert.insert.1 = or disjoint i64 %__9.sroa.5.0.insert.insert.1, %__9.sroa.4.0.insert.shift.1, !dbg !368
  %__9.sroa.0.0.insert.ext.1 = zext i16 %271 to i64, !dbg !368
  %__9.sroa.0.0.insert.insert.1 = or disjoint i64 %__9.sroa.4.0.insert.insert.1, %__9.sroa.0.0.insert.ext.1, !dbg !368
  %add806.1 = or disjoint i32 %and31, 2, !dbg !375
  %xor809.1 = xor i32 %add806.1, %and35, !dbg !369
  %mul810.1 = shl nuw nsw i32 %xor809.1, 3, !dbg !370
  %add811.1 = or disjoint i32 %mul810.1, %mul28, !dbg !371
  %add816.1 = or disjoint i32 %add811.1, %mul42, !dbg !372
  %add.ptr818.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add816.1, !dbg !373
  store i64 %__9.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr818.1, align 8, !dbg !374
  %numerator.sroa.132.32.vec.extract1798 = extractelement <4 x float> %numerator.sroa.132.2, i64 0, !dbg !334
  %numerator.sroa.132.36.vec.extract1825 = extractelement <4 x float> %numerator.sroa.132.2, i64 1, !dbg !334
  %numerator.sroa.132.40.vec.extract1852 = extractelement <4 x float> %numerator.sroa.132.2, i64 2, !dbg !334
  %numerator.sroa.132.44.vec.extract1879 = extractelement <4 x float> %numerator.sroa.132.2, i64 3, !dbg !334
  %div.2 = fdiv contract float %numerator.sroa.132.32.vec.extract1798, %denominator.sroa.0.3, !dbg !335
  %div775.2 = fdiv contract float %numerator.sroa.132.36.vec.extract1825, %denominator.sroa.0.3, !dbg !336
  %div779.2 = fdiv contract float %numerator.sroa.132.40.vec.extract1852, %denominator.sroa.0.3, !dbg !337
  %div783.2 = fdiv contract float %numerator.sroa.132.44.vec.extract1879, %denominator.sroa.0.3, !dbg !338
  %279 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !339
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !339, !noalias !343
  %280 = fptrunc float %div.2 to half, !dbg !339
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %279), !dbg !339, !noalias !343
  %281 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !348
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !348, !noalias !343
  %282 = fptrunc float %div775.2 to half, !dbg !348
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %281), !dbg !348, !noalias !343
  %283 = bitcast half %280 to i16, !dbg !350
  %284 = bitcast half %282 to i16, !dbg !353
  %285 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !354
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !354, !noalias !358
  %286 = fptrunc float %div779.2 to half, !dbg !354
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %285), !dbg !354, !noalias !358
  %287 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !363
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !363, !noalias !358
  %288 = fptrunc float %div783.2 to half, !dbg !363
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %287), !dbg !363, !noalias !358
  %289 = bitcast half %286 to i16, !dbg !365
  %290 = bitcast half %288 to i16, !dbg !367
  %__9.sroa.6.0.insert.ext.2 = zext i16 %290 to i64, !dbg !368
  %__9.sroa.6.0.insert.shift.2 = shl nuw i64 %__9.sroa.6.0.insert.ext.2, 48, !dbg !368
  %__9.sroa.5.0.insert.ext.2 = zext i16 %289 to i64, !dbg !368
  %__9.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__9.sroa.5.0.insert.ext.2, 32, !dbg !368
  %__9.sroa.5.0.insert.insert.2 = or disjoint i64 %__9.sroa.6.0.insert.shift.2, %__9.sroa.5.0.insert.shift.2, !dbg !368
  %__9.sroa.4.0.insert.ext.2 = zext i16 %284 to i64, !dbg !368
  %__9.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__9.sroa.4.0.insert.ext.2, 16, !dbg !368
  %__9.sroa.4.0.insert.insert.2 = or disjoint i64 %__9.sroa.5.0.insert.insert.2, %__9.sroa.4.0.insert.shift.2, !dbg !368
  %__9.sroa.0.0.insert.ext.2 = zext i16 %283 to i64, !dbg !368
  %__9.sroa.0.0.insert.insert.2 = or disjoint i64 %__9.sroa.4.0.insert.insert.2, %__9.sroa.0.0.insert.ext.2, !dbg !368
  %add806.2 = or disjoint i32 %and31, 4, !dbg !375
  %xor809.2 = xor i32 %add806.2, %and35, !dbg !369
  %mul810.2 = shl nuw nsw i32 %xor809.2, 3, !dbg !370
  %add811.2 = or disjoint i32 %mul810.2, %mul28, !dbg !371
  %add816.2 = or disjoint i32 %add811.2, %mul42, !dbg !372
  %add.ptr818.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add816.2, !dbg !373
  store i64 %__9.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr818.2, align 8, !dbg !374
  %numerator.sroa.197.48.vec.extract1908 = extractelement <4 x float> %numerator.sroa.197.2, i64 0, !dbg !334
  %numerator.sroa.197.52.vec.extract1935 = extractelement <4 x float> %numerator.sroa.197.2, i64 1, !dbg !334
  %numerator.sroa.197.56.vec.extract1962 = extractelement <4 x float> %numerator.sroa.197.2, i64 2, !dbg !334
  %numerator.sroa.197.60.vec.extract1989 = extractelement <4 x float> %numerator.sroa.197.2, i64 3, !dbg !334
  %div.3 = fdiv contract float %numerator.sroa.197.48.vec.extract1908, %denominator.sroa.0.3, !dbg !335
  %div775.3 = fdiv contract float %numerator.sroa.197.52.vec.extract1935, %denominator.sroa.0.3, !dbg !336
  %div779.3 = fdiv contract float %numerator.sroa.197.56.vec.extract1962, %denominator.sroa.0.3, !dbg !337
  %div783.3 = fdiv contract float %numerator.sroa.197.60.vec.extract1989, %denominator.sroa.0.3, !dbg !338
  %291 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !339
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !339, !noalias !343
  %292 = fptrunc float %div.3 to half, !dbg !339
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %291), !dbg !339, !noalias !343
  %293 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !348
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !348, !noalias !343
  %294 = fptrunc float %div775.3 to half, !dbg !348
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %293), !dbg !348, !noalias !343
  %295 = bitcast half %292 to i16, !dbg !350
  %296 = bitcast half %294 to i16, !dbg !353
  %297 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !354
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !354, !noalias !358
  %298 = fptrunc float %div779.3 to half, !dbg !354
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %297), !dbg !354, !noalias !358
  %299 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !363
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !363, !noalias !358
  %300 = fptrunc float %div783.3 to half, !dbg !363
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %299), !dbg !363, !noalias !358
  %301 = bitcast half %298 to i16, !dbg !365
  %302 = bitcast half %300 to i16, !dbg !367
  %__9.sroa.6.0.insert.ext.3 = zext i16 %302 to i64, !dbg !368
  %__9.sroa.6.0.insert.shift.3 = shl nuw i64 %__9.sroa.6.0.insert.ext.3, 48, !dbg !368
  %__9.sroa.5.0.insert.ext.3 = zext i16 %301 to i64, !dbg !368
  %__9.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__9.sroa.5.0.insert.ext.3, 32, !dbg !368
  %__9.sroa.5.0.insert.insert.3 = or disjoint i64 %__9.sroa.6.0.insert.shift.3, %__9.sroa.5.0.insert.shift.3, !dbg !368
  %__9.sroa.4.0.insert.ext.3 = zext i16 %296 to i64, !dbg !368
  %__9.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__9.sroa.4.0.insert.ext.3, 16, !dbg !368
  %__9.sroa.4.0.insert.insert.3 = or disjoint i64 %__9.sroa.5.0.insert.insert.3, %__9.sroa.4.0.insert.shift.3, !dbg !368
  %__9.sroa.0.0.insert.ext.3 = zext i16 %295 to i64, !dbg !368
  %__9.sroa.0.0.insert.insert.3 = or disjoint i64 %__9.sroa.4.0.insert.insert.3, %__9.sroa.0.0.insert.ext.3, !dbg !368
  %add806.3 = or disjoint i32 %and31, 6, !dbg !375
  %xor809.3 = xor i32 %add806.3, %and35, !dbg !369
  %mul810.3 = shl nuw nsw i32 %xor809.3, 3, !dbg !370
  %add811.3 = or disjoint i32 %mul810.3, %mul28, !dbg !371
  %add816.3 = or disjoint i32 %add811.3, %mul42, !dbg !372
  %add.ptr818.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add816.3, !dbg !373
  store i64 %__9.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr818.3, align 8, !dbg !374
  fence syncscope("warp") release, !dbg !376
  tail call void @llvm.mxc.barrier.warp(), !dbg !379
  fence syncscope("warp") acquire, !dbg !380
  %303 = or disjoint i32 %mul146, %mul138
  %304 = or disjoint i32 %add, %11
  %305 = zext nneg i32 %304 to i64, !dbg !381
  %add.ptr841 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %303, !dbg !382
  %add.ptr854 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %305, !dbg !383
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr854, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr841, i64 16, i1 false), !dbg !384, !tbaa.struct !385, !call_argsrelate !386
  %306 = or disjoint i32 %303, 512, !dbg !387
  %add.ptr841.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %306, !dbg !382
  %307 = or disjoint i64 %305, 512, !dbg !388
  %add.ptr854.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %307, !dbg !383
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr854.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr841.1, i64 16, i1 false), !dbg !384, !tbaa.struct !385, !call_argsrelate !386
  br label %if.end858, !dbg !389

if.end858:                                        ; preds = %for.cond757.preheader, %if.end752
  ret void, !dbg !389
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v051_codex_power_s8_four_warp_arena_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v051_codex_power_s8_four_warp_arena_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
!42 = !DILocation(line: 78, column: 3, scope: !43, inlinedAt: !45)
!43 = distinct !DISubprogram(name: "__fetch_builtin_y", scope: !44, file: !44, line: 78, type: !7, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!44 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_builtin_vars.h", directory: "")
!45 = distinct !DILocation(line: 27, column: 215, scope: !40)
!46 = !DILocation(line: 27, column: 227, scope: !40)
!47 = !DILocation(line: 77, column: 3, scope: !48, inlinedAt: !49)
!48 = distinct !DISubprogram(name: "__fetch_builtin_x", scope: !44, file: !44, line: 77, type: !7, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!49 = distinct !DILocation(line: 27, column: 247, scope: !40)
!50 = !DILocation(line: 27, column: 259, scope: !40)
!51 = !DILocation(line: 27, column: 238, scope: !40)
!52 = !DILocation(line: 67, column: 3, scope: !53, inlinedAt: !54)
!53 = distinct !DISubprogram(name: "__fetch_builtin_x", scope: !44, file: !44, line: 67, type: !7, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!54 = distinct !DILocation(line: 27, column: 277, scope: !40)
!55 = !{i32 0, i32 1024}
!56 = !DILocation(line: 27, column: 290, scope: !40)
!57 = !DILocation(line: 27, column: 268, scope: !40)
!58 = !DILocation(line: 27, column: 204, scope: !40)
!59 = !DILocation(line: 27, column: 106, scope: !40)
!60 = !DILocation(line: 27, column: 142, scope: !40)
!61 = !DILocation(line: 27, column: 112, scope: !40)
!62 = !DILocation(line: 27, column: 149, scope: !40)
!63 = !DILocation(line: 27, column: 155, scope: !40)
!64 = !DILocation(line: 27, column: 38, scope: !40)
!65 = !DILocation(line: 27, column: 190, scope: !40)
!66 = !DILocation(line: 60, column: 3, scope: !67, inlinedAt: !69)
!67 = distinct !DISubprogram(name: "__barrier", scope: !68, file: !68, line: 57, type: !7, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!68 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!69 = distinct !DILocation(line: 74, column: 3, scope: !70, inlinedAt: !71)
!70 = distinct !DISubprogram(name: "__syncthreads", scope: !68, file: !68, line: 73, type: !7, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!71 = distinct !DILocation(line: 28, column: 3, scope: !40)
!72 = !DILocation(line: 61, column: 3, scope: !67, inlinedAt: !69)
!73 = !DILocation(line: 62, column: 3, scope: !67, inlinedAt: !69)
!74 = !DILocation(line: 31, column: 165, scope: !40)
!75 = !DILocation(line: 31, column: 193, scope: !40)
!76 = !DILocation(line: 31, column: 112, scope: !40)
!77 = !DILocation(line: 31, column: 199, scope: !40)
!78 = !DILocation(line: 31, column: 75, scope: !40)
!79 = !DILocation(line: 31, column: 38, scope: !40)
!80 = !DILocation(line: 31, column: 129, scope: !40)
!81 = !DILocation(line: 60, column: 3, scope: !67, inlinedAt: !82)
!82 = distinct !DILocation(line: 74, column: 3, scope: !70, inlinedAt: !83)
!83 = distinct !DILocation(line: 33, column: 3, scope: !40)
!84 = !DILocation(line: 61, column: 3, scope: !67, inlinedAt: !82)
!85 = !DILocation(line: 62, column: 3, scope: !67, inlinedAt: !82)
!86 = !DILocation(line: 42, column: 3, scope: !40)
!87 = !DILocation(line: 43, column: 24, scope: !40)
!88 = !DILocation(line: 43, column: 143, scope: !40)
!89 = !DILocation(line: 44, column: 12, scope: !40)
!90 = !DILocation(line: 44, column: 28, scope: !40)
!91 = !DILocation(line: 68, column: 3, scope: !92, inlinedAt: !93)
!92 = distinct !DISubprogram(name: "__barrier_warp", scope: !68, file: !68, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!93 = distinct !DILocation(line: 192, column: 3, scope: !94, inlinedAt: !95)
!94 = distinct !DISubprogram(name: "__syncwarp", scope: !68, file: !68, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!95 = distinct !DILocation(line: 45, column: 7, scope: !40)
!96 = !DILocation(line: 69, column: 3, scope: !92, inlinedAt: !93)
!97 = !DILocation(line: 70, column: 3, scope: !92, inlinedAt: !93)
!98 = !DILocation(line: 50, column: 79, scope: !40)
!99 = !DILocation(line: 50, column: 13, scope: !40)
!100 = !DILocation(line: 51, column: 33, scope: !40)
!101 = !DILocation(line: 51, column: 19, scope: !40)
!102 = !DILocation(line: 52, column: 9, scope: !40)
!103 = !DILocation(line: 0, scope: !40)
!104 = !DILocation(line: 55, column: 100, scope: !40)
!105 = !DILocation(line: 55, column: 143, scope: !40)
!106 = !DILocation(line: 55, column: 44, scope: !40)
!107 = !DILocation(line: 55, column: 215, scope: !40)
!108 = !DILocation(line: 68, column: 3, scope: !92, inlinedAt: !109)
!109 = distinct !DILocation(line: 192, column: 3, scope: !94, inlinedAt: !110)
!110 = distinct !DILocation(line: 57, column: 7, scope: !40)
!111 = !DILocation(line: 69, column: 3, scope: !92, inlinedAt: !109)
!112 = !DILocation(line: 70, column: 3, scope: !92, inlinedAt: !109)
!113 = !DILocation(line: 62, column: 145, scope: !40)
!114 = !DILocation(line: 62, column: 234, scope: !40)
!115 = !DILocation(line: 62, column: 69, scope: !40)
!116 = !DILocation(line: 62, column: 32, scope: !40)
!117 = !DILocation(line: 64, column: 37, scope: !40)
!118 = !DILocation(line: 72, column: 81, scope: !40)
!119 = !DILocation(line: 72, column: 13, scope: !40)
!120 = !DILocation(line: 72, column: 70, scope: !40)
!121 = !DILocation(line: 351, column: 10, scope: !122, inlinedAt: !124)
!122 = distinct !DISubprogram(name: "max", scope: !123, file: !123, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!123 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!124 = distinct !DILocation(line: 82, column: 28, scope: !40)
!125 = !DILocation(line: 1018, column: 9, scope: !126, inlinedAt: !127)
!126 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !68, file: !68, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!127 = distinct !DILocation(line: 84, column: 48, scope: !40)
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
!142 = distinct !DILocation(line: 84, column: 26, scope: !40)
!143 = !DILocation(line: 1018, column: 9, scope: !126, inlinedAt: !144)
!144 = distinct !DILocation(line: 85, column: 48, scope: !40)
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
!157 = distinct !DILocation(line: 85, column: 26, scope: !40)
!158 = !DILocation(line: 351, column: 10, scope: !122, inlinedAt: !159)
!159 = distinct !DILocation(line: 86, column: 24, scope: !40)
!160 = !DILocation(line: 87, column: 39, scope: !40)
!161 = !DILocation(line: 87, column: 57, scope: !40)
!162 = !DILocation(line: 285, column: 49, scope: !163, inlinedAt: !164)
!163 = distinct !DISubprogram(name: "exp2f", scope: !123, file: !123, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!164 = distinct !DILocation(line: 87, column: 20, scope: !40)
!165 = !DILocation(line: 93, column: 24, scope: !40)
!166 = !DILocation(line: 97, column: 47, scope: !40)
!167 = !DILocation(line: 110, column: 28, scope: !40)
!168 = !DILocation(line: 111, column: 28, scope: !40)
!169 = !DILocation(line: 112, column: 28, scope: !40)
!170 = !DILocation(line: 113, column: 28, scope: !40)
!171 = !DILocation(line: 115, column: 25, scope: !40)
!172 = !DILocation(line: 116, column: 25, scope: !40)
!173 = !DILocation(line: 117, column: 25, scope: !40)
!174 = !DILocation(line: 118, column: 25, scope: !40)
!175 = !DILocation(line: 120, column: 23, scope: !40)
!176 = !DILocation(line: 121, column: 23, scope: !40)
!177 = !DILocation(line: 122, column: 23, scope: !40)
!178 = !DILocation(line: 123, column: 23, scope: !40)
!179 = !DILocation(line: 285, column: 49, scope: !163, inlinedAt: !180)
!180 = distinct !DILocation(line: 124, column: 15, scope: !40)
!181 = !DILocation(line: 285, column: 49, scope: !163, inlinedAt: !182)
!182 = distinct !DILocation(line: 125, column: 15, scope: !40)
!183 = !DILocation(line: 285, column: 49, scope: !163, inlinedAt: !184)
!184 = distinct !DILocation(line: 126, column: 15, scope: !40)
!185 = !DILocation(line: 285, column: 49, scope: !163, inlinedAt: !186)
!186 = distinct !DILocation(line: 127, column: 15, scope: !40)
!187 = !DILocation(line: 1007, column: 10, scope: !188, inlinedAt: !190)
!188 = distinct !DISubprogram(name: "__float2half_rn", scope: !189, file: !189, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!189 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!190 = distinct !DILocation(line: 1077, column: 18, scope: !191, inlinedAt: !192)
!191 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !189, file: !189, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!192 = distinct !DILocation(line: 1295, column: 23, scope: !193, inlinedAt: !194)
!193 = distinct !DISubprogram(name: "__float22half2_rn", scope: !189, file: !189, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!194 = distinct !DILocation(line: 128, column: 29, scope: !40)
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
!205 = distinct !DILocation(line: 129, column: 29, scope: !40)
!206 = !{!207, !209}
!207 = distinct !{!207, !208, !"_ZL17__floats2half2_rnff: %agg.result"}
!208 = distinct !{!208, !"_ZL17__floats2half2_rnff"}
!209 = distinct !{!209, !210, !"_ZL17__float22half2_rn6float2: %agg.result"}
!210 = distinct !{!210, !"_ZL17__float22half2_rn6float2"}
!211 = !DILocation(line: 1007, column: 10, scope: !188, inlinedAt: !212)
!212 = distinct !DILocation(line: 1077, column: 38, scope: !191, inlinedAt: !204)
!213 = !DILocation(line: 130, column: 36, scope: !40)
!214 = !DILocation(line: 1082, column: 16, scope: !215, inlinedAt: !216)
!215 = distinct !DISubprogram(name: "__half2float", scope: !189, file: !189, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!216 = distinct !DILocation(line: 136, column: 55, scope: !217, inlinedAt: !218)
!217 = distinct !DISubprogram(name: "operator float", scope: !189, file: !189, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!218 = distinct !DILocation(line: 134, column: 52, scope: !40)
!219 = !DILocation(line: 134, column: 42, scope: !40)
!220 = !DILocation(line: 1018, column: 9, scope: !126, inlinedAt: !221)
!221 = distinct !DILocation(line: 136, column: 42, scope: !40)
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
!233 = !DILocation(line: 136, column: 40, scope: !40)
!234 = !DILocation(line: 1018, column: 9, scope: !126, inlinedAt: !235)
!235 = distinct !DILocation(line: 137, column: 42, scope: !40)
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
!247 = !DILocation(line: 137, column: 40, scope: !40)
!248 = !DILocation(line: 68, column: 3, scope: !92, inlinedAt: !249)
!249 = distinct !DILocation(line: 192, column: 3, scope: !94, inlinedAt: !250)
!250 = distinct !DILocation(line: 139, column: 7, scope: !40)
!251 = !DILocation(line: 69, column: 3, scope: !92, inlinedAt: !249)
!252 = !DILocation(line: 70, column: 3, scope: !92, inlinedAt: !249)
!253 = !DILocation(line: 144, column: 13, scope: !40)
!254 = !DILocation(line: 145, column: 35, scope: !40)
!255 = !DILocation(line: 145, column: 21, scope: !40)
!256 = !DILocation(line: 146, column: 9, scope: !40)
!257 = !DILocation(line: 156, column: 44, scope: !40)
!258 = !DILocation(line: 156, column: 223, scope: !40)
!259 = !DILocation(line: 154, column: 27, scope: !40)
!260 = !DILocation(line: 68, column: 3, scope: !92, inlinedAt: !261)
!261 = distinct !DILocation(line: 192, column: 3, scope: !94, inlinedAt: !262)
!262 = distinct !DILocation(line: 158, column: 7, scope: !40)
!263 = !DILocation(line: 69, column: 3, scope: !92, inlinedAt: !261)
!264 = !DILocation(line: 70, column: 3, scope: !92, inlinedAt: !261)
!265 = !DILocation(line: 161, column: 178, scope: !40)
!266 = !DILocation(line: 161, column: 83, scope: !40)
!267 = !DILocation(line: 161, column: 46, scope: !40)
!268 = !DILocation(line: 166, column: 46, scope: !40)
!269 = !DILocation(line: 138, column: 40, scope: !40)
!270 = !DILocation(line: 42, column: 52, scope: !40)
!271 = !DILocation(line: 43, column: 124, scope: !40)
!272 = !DILocation(line: 91, column: 23, scope: !40)
!273 = !DILocation(line: 94, column: 24, scope: !40)
!274 = !DILocation(line: 95, column: 24, scope: !40)
!275 = !DILocation(line: 96, column: 24, scope: !40)
!276 = !DILocation(line: 99, column: 40, scope: !40)
!277 = !DILocation(line: 60, column: 3, scope: !67, inlinedAt: !278)
!278 = distinct !DILocation(line: 74, column: 3, scope: !70, inlinedAt: !279)
!279 = distinct !DILocation(line: 173, column: 3, scope: !40)
!280 = !DILocation(line: 61, column: 3, scope: !67, inlinedAt: !278)
!281 = !DILocation(line: 62, column: 3, scope: !67, inlinedAt: !278)
!282 = !DILocation(line: 176, column: 170, scope: !40)
!283 = !DILocation(line: 176, column: 40, scope: !40)
!284 = !DILocation(line: 176, column: 206, scope: !40)
!285 = !DILocation(line: 176, column: 134, scope: !40)
!286 = !DILocation(line: 178, column: 27, scope: !40)
!287 = !DILocation(line: 178, column: 33, scope: !40)
!288 = !DILocation(line: 178, column: 7, scope: !40)
!289 = !DILocation(line: 179, column: 102, scope: !40)
!290 = !{!291, !291, i64 0}
!291 = !{!"float", !19, i64 0}
!292 = !DILocation(line: 180, column: 102, scope: !40)
!293 = !DILocation(line: 181, column: 3, scope: !40)
!294 = !DILocation(line: 60, column: 3, scope: !67, inlinedAt: !295)
!295 = distinct !DILocation(line: 74, column: 3, scope: !70, inlinedAt: !296)
!296 = distinct !DILocation(line: 182, column: 3, scope: !40)
!297 = !DILocation(line: 61, column: 3, scope: !67, inlinedAt: !295)
!298 = !DILocation(line: 62, column: 3, scope: !67, inlinedAt: !295)
!299 = !DILocation(line: 183, column: 33, scope: !40)
!300 = !DILocation(line: 183, column: 7, scope: !40)
!301 = !DILocation(line: 187, column: 36, scope: !40)
!302 = !DILocation(line: 187, column: 76, scope: !40)
!303 = !DILocation(line: 351, column: 10, scope: !122, inlinedAt: !304)
!304 = distinct !DILocation(line: 187, column: 20, scope: !40)
!305 = !DILocation(line: 197, column: 106, scope: !40)
!306 = !DILocation(line: 197, column: 120, scope: !40)
!307 = !DILocation(line: 285, column: 49, scope: !163, inlinedAt: !308)
!308 = distinct !DILocation(line: 197, column: 20, scope: !40)
!309 = !DILocation(line: 198, column: 112, scope: !40)
!310 = !DILocation(line: 198, column: 43, scope: !40)
!311 = !DILocation(line: 198, column: 121, scope: !40)
!312 = !DILocation(line: 204, column: 173, scope: !40)
!313 = !DILocation(line: 204, column: 62, scope: !40)
!314 = !DILocation(line: 204, column: 27, scope: !40)
!315 = !DILocation(line: 206, column: 28, scope: !40)
!316 = !DILocation(line: 207, column: 28, scope: !40)
!317 = !DILocation(line: 208, column: 28, scope: !40)
!318 = !DILocation(line: 209, column: 28, scope: !40)
!319 = !DILocation(line: 210, column: 26, scope: !40)
!320 = !DILocation(line: 211, column: 26, scope: !40)
!321 = !DILocation(line: 212, column: 26, scope: !40)
!322 = !DILocation(line: 213, column: 26, scope: !40)
!323 = !DILocation(line: 204, column: 137, scope: !40)
!324 = !DILocation(line: 198, column: 40, scope: !40)
!325 = !DILocation(line: 197, column: 97, scope: !40)
!326 = !DILocation(line: 197, column: 28, scope: !40)
!327 = !DILocation(line: 214, column: 47, scope: !40)
!328 = !DILocation(line: 60, column: 3, scope: !67, inlinedAt: !329)
!329 = distinct !DILocation(line: 74, column: 3, scope: !70, inlinedAt: !330)
!330 = distinct !DILocation(line: 218, column: 3, scope: !40)
!331 = !DILocation(line: 61, column: 3, scope: !67, inlinedAt: !329)
!332 = !DILocation(line: 62, column: 3, scope: !67, inlinedAt: !329)
!333 = !DILocation(line: 219, column: 7, scope: !40)
!334 = !DILocation(line: 224, column: 23, scope: !40)
!335 = !DILocation(line: 226, column: 25, scope: !40)
!336 = !DILocation(line: 227, column: 25, scope: !40)
!337 = !DILocation(line: 228, column: 25, scope: !40)
!338 = !DILocation(line: 229, column: 25, scope: !40)
!339 = !DILocation(line: 1007, column: 10, scope: !188, inlinedAt: !340)
!340 = distinct !DILocation(line: 1077, column: 18, scope: !191, inlinedAt: !341)
!341 = distinct !DILocation(line: 1295, column: 23, scope: !193, inlinedAt: !342)
!342 = distinct !DILocation(line: 230, column: 29, scope: !40)
!343 = !{!344, !346}
!344 = distinct !{!344, !345, !"_ZL17__floats2half2_rnff: %agg.result"}
!345 = distinct !{!345, !"_ZL17__floats2half2_rnff"}
!346 = distinct !{!346, !347, !"_ZL17__float22half2_rn6float2: %agg.result"}
!347 = distinct !{!347, !"_ZL17__float22half2_rn6float2"}
!348 = !DILocation(line: 1007, column: 10, scope: !188, inlinedAt: !349)
!349 = distinct !DILocation(line: 1077, column: 38, scope: !191, inlinedAt: !341)
!350 = !DILocation(line: 596, column: 67, scope: !351, inlinedAt: !352)
!351 = distinct !DISubprogram(name: "__half2", scope: !189, file: !189, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!352 = distinct !DILocation(line: 1077, column: 10, scope: !191, inlinedAt: !341)
!353 = !DILocation(line: 596, column: 73, scope: !351, inlinedAt: !352)
!354 = !DILocation(line: 1007, column: 10, scope: !188, inlinedAt: !355)
!355 = distinct !DILocation(line: 1077, column: 18, scope: !191, inlinedAt: !356)
!356 = distinct !DILocation(line: 1295, column: 23, scope: !193, inlinedAt: !357)
!357 = distinct !DILocation(line: 231, column: 29, scope: !40)
!358 = !{!359, !361}
!359 = distinct !{!359, !360, !"_ZL17__floats2half2_rnff: %agg.result"}
!360 = distinct !{!360, !"_ZL17__floats2half2_rnff"}
!361 = distinct !{!361, !362, !"_ZL17__float22half2_rn6float2: %agg.result"}
!362 = distinct !{!362, !"_ZL17__float22half2_rn6float2"}
!363 = !DILocation(line: 1007, column: 10, scope: !188, inlinedAt: !364)
!364 = distinct !DILocation(line: 1077, column: 38, scope: !191, inlinedAt: !356)
!365 = !DILocation(line: 596, column: 67, scope: !351, inlinedAt: !366)
!366 = distinct !DILocation(line: 1077, column: 10, scope: !191, inlinedAt: !356)
!367 = !DILocation(line: 596, column: 73, scope: !351, inlinedAt: !366)
!368 = !DILocation(line: 232, column: 44, scope: !40)
!369 = !DILocation(line: 233, column: 134, scope: !40)
!370 = !DILocation(line: 233, column: 162, scope: !40)
!371 = !DILocation(line: 233, column: 79, scope: !40)
!372 = !DILocation(line: 233, column: 168, scope: !40)
!373 = !DILocation(line: 233, column: 42, scope: !40)
!374 = !DILocation(line: 233, column: 211, scope: !40)
!375 = !DILocation(line: 233, column: 98, scope: !40)
!376 = !DILocation(line: 68, column: 3, scope: !92, inlinedAt: !377)
!377 = distinct !DILocation(line: 192, column: 3, scope: !94, inlinedAt: !378)
!378 = distinct !DILocation(line: 235, column: 5, scope: !40)
!379 = !DILocation(line: 69, column: 3, scope: !92, inlinedAt: !377)
!380 = !DILocation(line: 70, column: 3, scope: !92, inlinedAt: !377)
!381 = !DILocation(line: 237, column: 5, scope: !40)
!382 = !DILocation(line: 238, column: 180, scope: !40)
!383 = !DILocation(line: 238, column: 24, scope: !40)
!384 = !DILocation(line: 238, column: 143, scope: !40)
!385 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!386 = !{i32 2, i32 -1, i32 -1, i32 -1}
!387 = !DILocation(line: 238, column: 242, scope: !40)
!388 = !DILocation(line: 238, column: 107, scope: !40)
!389 = !DILocation(line: 241, column: 1, scope: !40)
