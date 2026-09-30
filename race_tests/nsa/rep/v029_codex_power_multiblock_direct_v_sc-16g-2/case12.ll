; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v029_codex_power_multiblock_direct_v_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v029_codex_power_multiblock_direct_v_sc-16g-2/codegen/case12.device.cpp"
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
define protected metaxgpu_kernel void @native_sparse_attention_kernel(ptr addrspace(1) noalias nocapture noundef readonly %BlockIndices.coerce, ptr addrspace(4) noalias noundef readonly %K.coerce, ptr addrspace(1) noalias nocapture noundef writeonly %Output.coerce, ptr addrspace(4) noalias nocapture noundef readonly %Q.coerce, ptr addrspace(4) noalias noundef readonly %V.coerce) local_unnamed_addr #3 !dbg !40 {
entry:
  %0 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.y(), !range !29
  %mul = shl nsw i32 %0, 20
  %1 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !range !29
  %mul7 = shl nsw i32 %1, 10
  %add = add nuw nsw i32 %mul, %mul7
  %2 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !42
  %and = shl nuw nsw i32 %2, 6
  %mul9 = and i32 %and, 960
  %add10 = or disjoint i32 %add, %mul9
  %3 = lshr i32 %2, 2
  %mul14 = and i32 %3, 252
  %add12 = add nuw nsw i32 %add10, %mul14
  %4 = zext nneg i32 %add12 to i64, !dbg !43
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %4, !dbg !44
  %5 = load <4 x half>, ptr addrspace(4) %add.ptr, align 8, !dbg !45
  %6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %4, !dbg !44
  %add.ptr.1 = getelementptr inbounds i8, ptr addrspace(4) %6, i64 32, !dbg !44
  %7 = load <4 x half>, ptr addrspace(4) %add.ptr.1, align 8, !dbg !45
  %8 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %4, !dbg !44
  %add.ptr.2 = getelementptr inbounds i8, ptr addrspace(4) %8, i64 64, !dbg !44
  %9 = load <4 x half>, ptr addrspace(4) %add.ptr.2, align 8, !dbg !45
  %10 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %4, !dbg !44
  %add.ptr.3 = getelementptr inbounds i8, ptr addrspace(4) %10, i64 96, !dbg !44
  %11 = load <4 x half>, ptr addrspace(4) %add.ptr.3, align 8, !dbg !45
  %mul40 = shl nsw i32 %0, 13
  %mul42 = shl nsw i32 %1, 3
  %add43 = add nuw nsw i32 %mul40, %mul42
  %shr55 = lshr i32 %2, 3
  %12 = shl nuw nsw i32 %2, 3
  %mul97 = and i32 %12, 8128
  %add104541 = and i32 %12, 32
  %shr100542 = add nuw nsw i32 %add104541, %2
  %mul106 = and i32 %shr100542, 32
  %add114543 = and i32 %12, 16
  %and109544 = add nuw nsw i32 %add114543, %2
  %mul116 = and i32 %and109544, 16
  %and119546 = mul nuw nsw i32 %2, 9
  %mul125 = and i32 %and119546, 8
  %conv = zext nneg i32 %0 to i64
  %mul62 = shl nuw nsw i64 %conv, 16
  %mul71 = zext nneg i32 %12 to i64
  %invariant.gep616 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul71, !dbg !46
  %and152 = lshr i32 %2, 1
  %shr160 = lshr i32 %2, 5
  %add163 = add nuw nsw i32 %shr160, %2
  %and164 = shl nuw nsw i32 %add163, 3
  %mul165 = and i32 %and164, 8
  %mul170 = and i32 %3, 4
  %13 = or disjoint i32 %mul170, %mul165
  %add158 = or disjoint i32 %13, %mul9
  %shr332 = lshr i32 %2, 4
  %14 = shl nuw nsw i32 %2, 4
  %15 = and i32 %14, 16128
  %16 = and i32 %2, 15
  %17 = or disjoint i32 %16, %15
  %18 = zext nneg i32 %17 to i64
  %add348 = or disjoint i64 %mul62, %18
  %19 = zext nneg i32 %add43 to i64, !dbg !46
  %arrayidx45 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %19, !dbg !47
  %20 = load i32, ptr addrspace(1) %arrayidx45, align 4, !dbg !47, !tbaa !30
  %mul46 = shl nsw i32 %20, 4, !dbg !48
  %cmp47 = icmp slt i32 %20, 0, !dbg !49
  %cmp49.not = icmp sgt i32 %mul46, %1
  %or.cond = select i1 %cmp47, i1 true, i1 %cmp49.not, !dbg !50
  br i1 %or.cond, label %if.end381, label %if.then, !dbg !50

if.then:                                          ; preds = %entry
  fence syncscope("warp") release, !dbg !51
  tail call void @llvm.mxc.barrier.warp(), !dbg !57
  fence syncscope("warp") acquire, !dbg !58
  %add56 = add nuw nsw i32 %mul46, %shr55
  %conv66 = zext nneg i32 %mul46 to i64
  %.idx = shl nuw nsw i64 %conv66, 7
  %gep = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep616, i64 %.idx, !dbg !59
  %cmp59 = icmp ult i32 %add56, 1024, !dbg !60
  br i1 %cmp59, label %if.then60, label %if.end, !dbg !61

if.then60:                                        ; preds = %if.then
  %gep602 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %mul62
  %condval.sroa.7.0.add.ptr73.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep602, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep602, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep602, i64 4
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep602, align 16, !dbg !62, !tbaa !30
  %condval.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr73.sroa_idx, align 4, !dbg !62, !tbaa !30
  %condval.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr73.sroa_idx, align 8, !dbg !62, !tbaa !30
  %condval.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr73.sroa_idx, align 4, !dbg !62, !tbaa !30
  br label %if.end, !dbg !63

if.end:                                           ; preds = %if.then, %if.then60
  %condval.sroa.0.0 = phi i32 [ %condval.sroa.0.0.copyload, %if.then60 ], [ 0, %if.then ], !dbg !64
  %condval.sroa.5.0 = phi i32 [ %condval.sroa.5.0.copyload, %if.then60 ], [ 0, %if.then ], !dbg !64
  %condval.sroa.6.0 = phi i32 [ %condval.sroa.6.0.copyload, %if.then60 ], [ 0, %if.then ], !dbg !64
  %condval.sroa.7.0 = phi i32 [ %condval.sroa.7.0.copyload, %if.then60 ], [ 0, %if.then ], !dbg !64
  %21 = or disjoint i32 %mul97, %mul106, !dbg !65
  %22 = or disjoint i32 %21, %mul116, !dbg !66
  %23 = or disjoint i32 %22, %mul125, !dbg !67
  %add.ptr128 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %23, !dbg !68
  store i32 %condval.sroa.0.0, ptr addrspace(3) %add.ptr128, align 16, !dbg !69, !tbaa !30
  %condval.sroa.5.0.add.ptr128.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128, i32 4, !dbg !69
  store i32 %condval.sroa.5.0, ptr addrspace(3) %condval.sroa.5.0.add.ptr128.sroa_idx, align 4, !dbg !69, !tbaa !30
  %condval.sroa.6.0.add.ptr128.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128, i32 8, !dbg !69
  store i32 %condval.sroa.6.0, ptr addrspace(3) %condval.sroa.6.0.add.ptr128.sroa_idx, align 8, !dbg !69, !tbaa !30
  %condval.sroa.7.0.add.ptr128.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128, i32 12, !dbg !69
  store i32 %condval.sroa.7.0, ptr addrspace(3) %condval.sroa.7.0.add.ptr128.sroa_idx, align 4, !dbg !69, !tbaa !30
  %cmp59.1 = icmp ult i32 %add56, 1016, !dbg !60
  br i1 %cmp59.1, label %if.then60.1, label %if.end.1, !dbg !61

if.then60.1:                                      ; preds = %if.end
  %add65.1 = or disjoint i64 %mul62, 512
  %gep602.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %add65.1
  %condval.sroa.7.0.add.ptr73.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1, i64 4
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep602.1, align 16, !dbg !62, !tbaa !30
  %condval.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr73.sroa_idx.1, align 4, !dbg !62, !tbaa !30
  %condval.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr73.sroa_idx.1, align 8, !dbg !62, !tbaa !30
  %condval.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr73.sroa_idx.1, align 4, !dbg !62, !tbaa !30
  br label %if.end.1, !dbg !63

if.end.1:                                         ; preds = %if.then60.1, %if.end
  %condval.sroa.0.0.1 = phi i32 [ %condval.sroa.0.0.copyload.1, %if.then60.1 ], [ 0, %if.end ], !dbg !64
  %condval.sroa.5.0.1 = phi i32 [ %condval.sroa.5.0.copyload.1, %if.then60.1 ], [ 0, %if.end ], !dbg !64
  %condval.sroa.6.0.1 = phi i32 [ %condval.sroa.6.0.copyload.1, %if.then60.1 ], [ 0, %if.end ], !dbg !64
  %condval.sroa.7.0.1 = phi i32 [ %condval.sroa.7.0.copyload.1, %if.then60.1 ], [ 0, %if.end ], !dbg !64
  %24 = add nuw nsw i32 %mul97, 512, !dbg !70
  %25 = or disjoint i32 %24, %mul106, !dbg !65
  %26 = or disjoint i32 %25, %mul116, !dbg !66
  %27 = or disjoint i32 %26, %mul125, !dbg !67
  %add.ptr128.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %27, !dbg !68
  store i32 %condval.sroa.0.0.1, ptr addrspace(3) %add.ptr128.1, align 16, !dbg !69, !tbaa !30
  %condval.sroa.5.0.add.ptr128.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1, i32 4, !dbg !69
  store i32 %condval.sroa.5.0.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr128.sroa_idx.1, align 4, !dbg !69, !tbaa !30
  %condval.sroa.6.0.add.ptr128.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1, i32 8, !dbg !69
  store i32 %condval.sroa.6.0.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr128.sroa_idx.1, align 8, !dbg !69, !tbaa !30
  %condval.sroa.7.0.add.ptr128.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1, i32 12, !dbg !69
  store i32 %condval.sroa.7.0.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr128.sroa_idx.1, align 4, !dbg !69, !tbaa !30
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %and148 = shl nuw nsw i32 %3, 5, !dbg !76
  %mul149 = and i32 %and148, 32, !dbg !76
  %and156 = shl nuw nsw i32 %and152, 4, !dbg !77
  %mul157 = and i32 %and156, 16, !dbg !77
  %add166 = or disjoint i32 %add158, %mul157, !dbg !78
  %add171 = or disjoint i32 %add166, %mul149, !dbg !79
  %add.ptr173 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171, !dbg !80
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr173, align 8, !dbg !81
  %28 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %5, <4 x float> zeroinitializer), !dbg !82, !call_argsrelate !83
  %add155.1 = shl nuw nsw i32 %and152, 4, !dbg !77
  %29 = and i32 %add155.1, 16, !dbg !77
  %30 = or disjoint i32 %29, %add158, !dbg !78
  %31 = or disjoint i32 %30, %mul149, !dbg !79
  %add171.1 = xor i32 %31, 16, !dbg !79
  %add.ptr173.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.1, !dbg !80
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr173.1, align 8, !dbg !81
  %32 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %7, <4 x float> %28), !dbg !82, !call_argsrelate !83
  %add147.2 = shl nuw nsw i32 %3, 5, !dbg !76
  %33 = and i32 %add147.2, 32, !dbg !76
  %mul149.2 = xor i32 %33, 32, !dbg !76
  %add155.2 = shl nuw nsw i32 %and152, 4, !dbg !77
  %mul157.2 = and i32 %add155.2, 16, !dbg !77
  %add166.2 = or disjoint i32 %add158, %mul157.2, !dbg !78
  %add171.2 = or disjoint i32 %add166.2, %mul149.2, !dbg !79
  %add.ptr173.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.2, !dbg !80
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr173.2, align 8, !dbg !81
  %34 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %9, <4 x float> %32), !dbg !82, !call_argsrelate !83
  %add155.3 = shl nuw nsw i32 %and152, 4, !dbg !77
  %35 = and i32 %add155.3, 16, !dbg !77
  %36 = or disjoint i32 %35, %add158, !dbg !78
  %37 = or disjoint i32 %36, %mul149.2, !dbg !79
  %add171.3 = xor i32 %37, 16, !dbg !79
  %add.ptr173.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.3, !dbg !80
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr173.3, align 8, !dbg !81
  %38 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %11, <4 x float> %34), !dbg !82, !call_argsrelate !83
  %add195 = add nuw nsw i32 %mul46, %mul14
  %cmp198.not = icmp sgt i32 %add195, %1, !dbg !84
  %scores.sroa.0.0.vec.extract1119 = extractelement <4 x float> %38, i64 0
  %spec.select = select i1 %cmp198.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1119, !dbg !85
  %cmp198.not.1.not = icmp slt i32 %add195, %1, !dbg !84
  %scores.sroa.0.4.vec.extract1272 = extractelement <4 x float> %38, i64 1, !dbg !85
  %condval_1.0.1 = select i1 %cmp198.not.1.not, float %scores.sroa.0.4.vec.extract1272, float 0xFFF0000000000000, !dbg !85
  %add196.2 = or disjoint i32 %add195, 2, !dbg !86
  %cmp198.not.2 = icmp sgt i32 %add196.2, %1, !dbg !84
  %scores.sroa.0.8.vec.extract1397 = extractelement <4 x float> %38, i64 2, !dbg !85
  %condval_1.0.2 = select i1 %cmp198.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1397, !dbg !85
  %add196.3 = or disjoint i32 %add195, 3, !dbg !86
  %cmp198.not.3 = icmp sgt i32 %add196.3, %1, !dbg !84
  %scores.sroa.0.12.vec.extract1522 = extractelement <4 x float> %38, i64 3, !dbg !85
  %condval_1.0.3 = select i1 %cmp198.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1522, !dbg !85
  %39 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !87
  %40 = tail call contract noundef float @llvm.maxnum.f32(float %39, float %condval_1.0.1), !dbg !87
  %41 = tail call contract noundef float @llvm.maxnum.f32(float %40, float %condval_1.0.2), !dbg !87
  %42 = tail call contract noundef float @llvm.maxnum.f32(float %41, float %condval_1.0.3), !dbg !87
  %43 = bitcast float %42 to i32, !dbg !91
  %44 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %45 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %44) #11, !dbg !105
  %xor.i.i.i = xor i32 %45, 32, !dbg !106
  %46 = and i32 %45, -64, !dbg !107
  %and.i.i.i = add nsw i32 %46, 64, !dbg !107
  %cmp.not.i.i.i = icmp slt i32 %xor.i.i.i, %and.i.i.i, !dbg !108
  %cond.i.i.i = select i1 %cmp.not.i.i.i, i32 %xor.i.i.i, i32 %45, !dbg !109
  %shl.i.i.i = shl i32 %cond.i.i.i, 2, !dbg !110
  %47 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i, i32 %43), !dbg !111
  %48 = bitcast i32 %47 to float, !dbg !112
  %49 = tail call contract noundef float @llvm.maxnum.f32(float %42, float %48), !dbg !113
  %50 = bitcast float %49 to i32, !dbg !121
  %51 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !126
  %52 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %51) #11, !dbg !129
  %xor.i.i.i.i = xor i32 %52, 16, !dbg !130
  %53 = and i32 %52, -64, !dbg !131
  %and.i.i.i.i = add nsw i32 %53, 64, !dbg !131
  %cmp.not.i.i.i.i = icmp slt i32 %xor.i.i.i.i, %and.i.i.i.i, !dbg !132
  %cond.i.i.i.i = select i1 %cmp.not.i.i.i.i, i32 %xor.i.i.i.i, i32 %52, !dbg !133
  %shl.i.i.i.i = shl i32 %cond.i.i.i.i, 2, !dbg !134
  %54 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i, i32 %50), !dbg !135
  %55 = bitcast i32 %54 to float, !dbg !136
  %56 = tail call contract noundef float @llvm.maxnum.f32(float %49, float %55), !dbg !137
  %sub = fadd contract float %56, 0x7FF0000000000000, !dbg !141
  %mul234 = fmul contract float %sub, 0x3FC7154760000000, !dbg !142
  %cmp235 = fcmp contract ogt float %mul234, 7.000000e+00, !dbg !143
  %sub239 = fsub contract float 0xFFF0000000000000, %56
  %mul240 = fmul contract float %sub239, 0x3FC7154760000000
  %cmp.i.i = fcmp contract olt float %mul240, -1.260000e+02
  %cond.i.i = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00
  %add.i.i = fadd contract float %mul240, %cond.i.i
  %57 = tail call contract float @llvm.exp2.f32(float %add.i.i)
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i = fmul contract float %cond2.i.i, %57
  %normalizer.sroa.0.1 = select i1 %cmp235, float %56, float 0xFFF0000000000000, !dbg !144
  %sub255 = fsub contract float %spec.select, %normalizer.sroa.0.1, !dbg !145
  %mul256 = fmul contract float %sub255, 0x3FC7154760000000, !dbg !146
  %add257 = fadd contract float %mul256, 8.000000e+00, !dbg !147
  %cmp.i.i559 = fcmp contract olt float %add257, -1.260000e+02, !dbg !148
  %cond.i.i560 = select contract i1 %cmp.i.i559, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561 = fadd contract float %add257, %cond.i.i560, !dbg !148
  %58 = tail call contract float @llvm.exp2.f32(float %add.i.i561), !dbg !148
  %cond2.i.i562 = select contract i1 %cmp.i.i559, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563 = fmul contract float %cond2.i.i562, %58, !dbg !148
  %sub255.1 = fsub contract float %condval_1.0.1, %normalizer.sroa.0.1, !dbg !145
  %mul256.1 = fmul contract float %sub255.1, 0x3FC7154760000000, !dbg !146
  %add257.1 = fadd contract float %mul256.1, 8.000000e+00, !dbg !147
  %cmp.i.i559.1 = fcmp contract olt float %add257.1, -1.260000e+02, !dbg !148
  %cond.i.i560.1 = select contract i1 %cmp.i.i559.1, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.1 = fadd contract float %add257.1, %cond.i.i560.1, !dbg !148
  %59 = tail call contract float @llvm.exp2.f32(float %add.i.i561.1), !dbg !148
  %cond2.i.i562.1 = select contract i1 %cmp.i.i559.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.1 = fmul contract float %cond2.i.i562.1, %59, !dbg !148
  %sub255.2 = fsub contract float %condval_1.0.2, %normalizer.sroa.0.1, !dbg !145
  %mul256.2 = fmul contract float %sub255.2, 0x3FC7154760000000, !dbg !146
  %add257.2 = fadd contract float %mul256.2, 8.000000e+00, !dbg !147
  %cmp.i.i559.2 = fcmp contract olt float %add257.2, -1.260000e+02, !dbg !148
  %cond.i.i560.2 = select contract i1 %cmp.i.i559.2, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.2 = fadd contract float %add257.2, %cond.i.i560.2, !dbg !148
  %60 = tail call contract float @llvm.exp2.f32(float %add.i.i561.2), !dbg !148
  %cond2.i.i562.2 = select contract i1 %cmp.i.i559.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.2 = fmul contract float %cond2.i.i562.2, %60, !dbg !148
  %sub255.3 = fsub contract float %condval_1.0.3, %normalizer.sroa.0.1, !dbg !145
  %mul256.3 = fmul contract float %sub255.3, 0x3FC7154760000000, !dbg !146
  %add257.3 = fadd contract float %mul256.3, 8.000000e+00, !dbg !147
  %cmp.i.i559.3 = fcmp contract olt float %add257.3, -1.260000e+02, !dbg !148
  %cond.i.i560.3 = select contract i1 %cmp.i.i559.3, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.3 = fadd contract float %add257.3, %cond.i.i560.3, !dbg !148
  %61 = tail call contract float @llvm.exp2.f32(float %add.i.i561.3), !dbg !148
  %cond2.i.i562.3 = select contract i1 %cmp.i.i559.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.3 = fmul contract float %cond2.i.i562.3, %61, !dbg !148
  %add272 = fadd contract float %mul.i.i563, 0.000000e+00, !dbg !151
  %add272.1 = fadd contract float %add272, %mul.i.i563.1, !dbg !151
  %add272.2 = fadd contract float %add272.1, %mul.i.i563.2, !dbg !151
  %add272.3 = fadd contract float %add272.2, %mul.i.i563.3, !dbg !151
  %rescale.sroa.0.0 = select i1 %cmp235, float %mul.i.i, float 1.000000e+00, !dbg !144
  %62 = bitcast float %add272.3 to i32, !dbg !152
  %63 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !157
  %64 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %63) #11, !dbg !160
  %xor.i.i.i564 = xor i32 %64, 32, !dbg !161
  %65 = and i32 %64, -64, !dbg !162
  %and.i.i.i565 = add nsw i32 %65, 64, !dbg !162
  %cmp.not.i.i.i566 = icmp slt i32 %xor.i.i.i564, %and.i.i.i565, !dbg !163
  %cond.i.i.i567 = select i1 %cmp.not.i.i.i566, i32 %xor.i.i.i564, i32 %64, !dbg !164
  %shl.i.i.i568 = shl i32 %cond.i.i.i567, 2, !dbg !165
  %66 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i568, i32 %62), !dbg !166
  %67 = bitcast i32 %66 to float, !dbg !167
  %add.i.i569 = fadd contract float %add272.3, %67, !dbg !168
  %68 = bitcast float %add.i.i569 to i32, !dbg !171
  %69 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !176
  %70 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %69) #11, !dbg !179
  %xor.i.i.i.i570 = xor i32 %70, 16, !dbg !180
  %71 = and i32 %70, -64, !dbg !181
  %and.i.i.i.i571 = add nsw i32 %71, 64, !dbg !181
  %cmp.not.i.i.i.i572 = icmp slt i32 %xor.i.i.i.i570, %and.i.i.i.i571, !dbg !182
  %cond.i.i.i.i573 = select i1 %cmp.not.i.i.i.i572, i32 %xor.i.i.i.i570, i32 %70, !dbg !183
  %shl.i.i.i.i574 = shl i32 %cond.i.i.i.i573, 2, !dbg !184
  %72 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i574, i32 %68), !dbg !185
  %73 = bitcast i32 %72 to float, !dbg !186
  %add.i.i.i = fadd contract float %add.i.i569, %73, !dbg !187
  %cmp281 = fcmp contract une float %rescale.sroa.0.0, 1.000000e+00, !dbg !189
  %mul285 = fmul contract float %rescale.sroa.0.0, 0.000000e+00, !dbg !190
  %denominator.sroa.0.1 = select i1 %cmp281, float %mul285, float 0.000000e+00, !dbg !190
  %add290 = fadd contract float %denominator.sroa.0.1, %add.i.i.i, !dbg !191
  %74 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !192, !noalias !200
  %75 = fptrunc float %mul.i.i563 to half, !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %74), !dbg !192, !noalias !200
  %76 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !205
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !205, !noalias !200
  %77 = fptrunc float %mul.i.i563.1 to half, !dbg !205
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %76), !dbg !205, !noalias !200
  %__1.sroa.0.0.vec.insert = insertelement <4 x half> poison, half %75, i64 0, !dbg !207
  %__1.sroa.0.2.vec.insert = insertelement <4 x half> %__1.sroa.0.0.vec.insert, half %77, i64 1, !dbg !207
  %78 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !210
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !210, !noalias !214
  %79 = fptrunc float %mul.i.i563.2 to half, !dbg !210
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %78), !dbg !210, !noalias !214
  %80 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !219
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !219, !noalias !214
  %81 = fptrunc float %mul.i.i563.3 to half, !dbg !219
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %80), !dbg !219, !noalias !214
  %__1.sroa.0.4.vec.insert = insertelement <4 x half> %__1.sroa.0.2.vec.insert, half %79, i64 2, !dbg !221
  %__1.sroa.0.6.vec.insert = insertelement <4 x half> %__1.sroa.0.4.vec.insert, half %81, i64 3, !dbg !221
  %output_acc.sroa.0.0.vec.insert1627 = insertelement <4 x float> poison, float %mul285, i64 0, !dbg !223
  %output_acc.sroa.0.12.vec.insert1738 = shufflevector <4 x float> %output_acc.sroa.0.0.vec.insert1627, <4 x float> poison, <4 x i32> zeroinitializer, !dbg !223
  %output_acc.sroa.290.0 = select i1 %cmp281, <4 x float> %output_acc.sroa.0.12.vec.insert1738, <4 x float> zeroinitializer, !dbg !223
  %shr334 = lshr exact i32 %mul46, 2
  %add335 = add nuw nsw i32 %shr334, %shr332
  %cmp336 = icmp ult i32 %add335, 256
  br i1 %cmp336, label %if.then337, label %if.end362, !dbg !224

if.then337:                                       ; preds = %if.end.1
  %82 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %83 = getelementptr inbounds i8, ptr addrspace(4) %82, i64 %.idx, !dbg !225
  %condval_2.sroa.0.0.copyload2273 = load half, ptr addrspace(4) %83, align 2, !dbg !226, !tbaa !227
  br label %if.end362, !dbg !228

if.end362:                                        ; preds = %if.end.1, %if.then337
  %84 = phi half [ %condval_2.sroa.0.0.copyload2273, %if.then337 ], [ 0xH0000, %if.end.1 ], !dbg !64
  %v_local.sroa.0.0.vec.insert = insertelement <4 x half> poison, half %84, i64 0, !dbg !229
  br i1 %cmp336, label %if.then337.1, label %if.end362.1, !dbg !224

if.then337.1:                                     ; preds = %if.end362
  %85 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %86 = getelementptr inbounds i8, ptr addrspace(4) %85, i64 %.idx, !dbg !225
  %arrayidx359.1 = getelementptr inbounds i8, ptr addrspace(4) %86, i64 128, !dbg !225
  %condval_2.sroa.0.0.copyload.12274 = load half, ptr addrspace(4) %arrayidx359.1, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1, !dbg !228

if.end362.1:                                      ; preds = %if.then337.1, %if.end362
  %87 = phi half [ %condval_2.sroa.0.0.copyload.12274, %if.then337.1 ], [ 0xH0000, %if.end362 ], !dbg !64
  %v_local.sroa.0.2.vec.insert = insertelement <4 x half> %v_local.sroa.0.0.vec.insert, half %87, i64 1, !dbg !229
  br i1 %cmp336, label %if.then337.2, label %if.end362.2, !dbg !224

if.then337.2:                                     ; preds = %if.end362.1
  %88 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %89 = getelementptr inbounds i8, ptr addrspace(4) %88, i64 %.idx, !dbg !225
  %arrayidx359.2 = getelementptr inbounds i8, ptr addrspace(4) %89, i64 256, !dbg !225
  %condval_2.sroa.0.0.copyload.22275 = load half, ptr addrspace(4) %arrayidx359.2, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2, !dbg !228

if.end362.2:                                      ; preds = %if.then337.2, %if.end362.1
  %90 = phi half [ %condval_2.sroa.0.0.copyload.22275, %if.then337.2 ], [ 0xH0000, %if.end362.1 ], !dbg !64
  %v_local.sroa.0.4.vec.insert = insertelement <4 x half> %v_local.sroa.0.2.vec.insert, half %90, i64 2, !dbg !229
  br i1 %cmp336, label %if.then337.3, label %if.end362.3, !dbg !224

if.then337.3:                                     ; preds = %if.end362.2
  %91 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %92 = getelementptr inbounds i8, ptr addrspace(4) %91, i64 %.idx, !dbg !225
  %arrayidx359.3 = getelementptr inbounds i8, ptr addrspace(4) %92, i64 384, !dbg !225
  %condval_2.sroa.0.0.copyload.32276 = load half, ptr addrspace(4) %arrayidx359.3, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3, !dbg !228

if.end362.3:                                      ; preds = %if.then337.3, %if.end362.2
  %93 = phi half [ %condval_2.sroa.0.0.copyload.32276, %if.then337.3 ], [ 0xH0000, %if.end362.2 ], !dbg !64
  %v_local.sroa.0.6.vec.insert = insertelement <4 x half> %v_local.sroa.0.4.vec.insert, half %93, i64 3, !dbg !229
  %94 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.290.0), !dbg !230
  br i1 %cmp336, label %if.then337.1641, label %if.end362.1643, !dbg !224

if.then337.1641:                                  ; preds = %if.end362.3
  %95 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %96 = getelementptr inbounds i8, ptr addrspace(4) %95, i64 %.idx, !dbg !225
  %97 = getelementptr inbounds i8, ptr addrspace(4) %96, i64 32, !dbg !225
  %condval_2.sroa.0.0.copyload.16402277 = load half, ptr addrspace(4) %97, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1643, !dbg !228

if.end362.1643:                                   ; preds = %if.then337.1641, %if.end362.3
  %98 = phi half [ %condval_2.sroa.0.0.copyload.16402277, %if.then337.1641 ], [ 0xH0000, %if.end362.3 ], !dbg !64
  %v_local.sroa.0.0.vec.insert862 = insertelement <4 x half> poison, half %98, i64 0, !dbg !229
  br i1 %cmp336, label %if.then337.1.1, label %if.end362.1.1, !dbg !224

if.then337.1.1:                                   ; preds = %if.end362.1643
  %99 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %100 = getelementptr inbounds i8, ptr addrspace(4) %99, i64 %.idx, !dbg !225
  %arrayidx359.1.1 = getelementptr inbounds i8, ptr addrspace(4) %100, i64 160, !dbg !225
  %condval_2.sroa.0.0.copyload.1.12278 = load half, ptr addrspace(4) %arrayidx359.1.1, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.1, !dbg !228

if.end362.1.1:                                    ; preds = %if.then337.1.1, %if.end362.1643
  %101 = phi half [ %condval_2.sroa.0.0.copyload.1.12278, %if.then337.1.1 ], [ 0xH0000, %if.end362.1643 ], !dbg !64
  %v_local.sroa.0.2.vec.insert924 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert862, half %101, i64 1, !dbg !229
  br i1 %cmp336, label %if.then337.2.1, label %if.end362.2.1, !dbg !224

if.then337.2.1:                                   ; preds = %if.end362.1.1
  %102 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %103 = getelementptr inbounds i8, ptr addrspace(4) %102, i64 %.idx, !dbg !225
  %arrayidx359.2.1 = getelementptr inbounds i8, ptr addrspace(4) %103, i64 288, !dbg !225
  %condval_2.sroa.0.0.copyload.2.12279 = load half, ptr addrspace(4) %arrayidx359.2.1, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.1, !dbg !228

if.end362.2.1:                                    ; preds = %if.then337.2.1, %if.end362.1.1
  %104 = phi half [ %condval_2.sroa.0.0.copyload.2.12279, %if.then337.2.1 ], [ 0xH0000, %if.end362.1.1 ], !dbg !64
  %v_local.sroa.0.4.vec.insert986 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert924, half %104, i64 2, !dbg !229
  br i1 %cmp336, label %if.then337.3.1, label %if.end362.3.1, !dbg !224

if.then337.3.1:                                   ; preds = %if.end362.2.1
  %105 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %106 = getelementptr inbounds i8, ptr addrspace(4) %105, i64 %.idx, !dbg !225
  %arrayidx359.3.1 = getelementptr inbounds i8, ptr addrspace(4) %106, i64 416, !dbg !225
  %condval_2.sroa.0.0.copyload.3.12280 = load half, ptr addrspace(4) %arrayidx359.3.1, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.1, !dbg !228

if.end362.3.1:                                    ; preds = %if.then337.3.1, %if.end362.2.1
  %107 = phi half [ %condval_2.sroa.0.0.copyload.3.12280, %if.then337.3.1 ], [ 0xH0000, %if.end362.2.1 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1048 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert986, half %107, i64 3, !dbg !229
  %108 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1048, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.290.0), !dbg !230
  br i1 %cmp336, label %if.then337.2646, label %if.end362.2648, !dbg !224

if.then337.2646:                                  ; preds = %if.end362.3.1
  %109 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %110 = getelementptr inbounds i8, ptr addrspace(4) %109, i64 %.idx, !dbg !225
  %111 = getelementptr inbounds i8, ptr addrspace(4) %110, i64 64, !dbg !225
  %condval_2.sroa.0.0.copyload.26452281 = load half, ptr addrspace(4) %111, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2648, !dbg !228

if.end362.2648:                                   ; preds = %if.then337.2646, %if.end362.3.1
  %112 = phi half [ %condval_2.sroa.0.0.copyload.26452281, %if.then337.2646 ], [ 0xH0000, %if.end362.3.1 ], !dbg !64
  %v_local.sroa.0.0.vec.insert864 = insertelement <4 x half> poison, half %112, i64 0, !dbg !229
  br i1 %cmp336, label %if.then337.1.2, label %if.end362.1.2, !dbg !224

if.then337.1.2:                                   ; preds = %if.end362.2648
  %113 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %114 = getelementptr inbounds i8, ptr addrspace(4) %113, i64 %.idx, !dbg !225
  %arrayidx359.1.2 = getelementptr inbounds i8, ptr addrspace(4) %114, i64 192, !dbg !225
  %condval_2.sroa.0.0.copyload.1.22282 = load half, ptr addrspace(4) %arrayidx359.1.2, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.2, !dbg !228

if.end362.1.2:                                    ; preds = %if.then337.1.2, %if.end362.2648
  %115 = phi half [ %condval_2.sroa.0.0.copyload.1.22282, %if.then337.1.2 ], [ 0xH0000, %if.end362.2648 ], !dbg !64
  %v_local.sroa.0.2.vec.insert926 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert864, half %115, i64 1, !dbg !229
  br i1 %cmp336, label %if.then337.2.2, label %if.end362.2.2, !dbg !224

if.then337.2.2:                                   ; preds = %if.end362.1.2
  %116 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %117 = getelementptr inbounds i8, ptr addrspace(4) %116, i64 %.idx, !dbg !225
  %arrayidx359.2.2 = getelementptr inbounds i8, ptr addrspace(4) %117, i64 320, !dbg !225
  %condval_2.sroa.0.0.copyload.2.22283 = load half, ptr addrspace(4) %arrayidx359.2.2, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.2, !dbg !228

if.end362.2.2:                                    ; preds = %if.then337.2.2, %if.end362.1.2
  %118 = phi half [ %condval_2.sroa.0.0.copyload.2.22283, %if.then337.2.2 ], [ 0xH0000, %if.end362.1.2 ], !dbg !64
  %v_local.sroa.0.4.vec.insert988 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert926, half %118, i64 2, !dbg !229
  br i1 %cmp336, label %if.then337.3.2, label %if.end362.3.2, !dbg !224

if.then337.3.2:                                   ; preds = %if.end362.2.2
  %119 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %120 = getelementptr inbounds i8, ptr addrspace(4) %119, i64 %.idx, !dbg !225
  %arrayidx359.3.2 = getelementptr inbounds i8, ptr addrspace(4) %120, i64 448, !dbg !225
  %condval_2.sroa.0.0.copyload.3.22284 = load half, ptr addrspace(4) %arrayidx359.3.2, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.2, !dbg !228

if.end362.3.2:                                    ; preds = %if.then337.3.2, %if.end362.2.2
  %121 = phi half [ %condval_2.sroa.0.0.copyload.3.22284, %if.then337.3.2 ], [ 0xH0000, %if.end362.2.2 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1050 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert988, half %121, i64 3, !dbg !229
  %122 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1050, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.290.0), !dbg !230
  br i1 %cmp336, label %if.then337.3651, label %if.end362.3653, !dbg !224

if.then337.3651:                                  ; preds = %if.end362.3.2
  %123 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %124 = getelementptr inbounds i8, ptr addrspace(4) %123, i64 %.idx, !dbg !225
  %125 = getelementptr inbounds i8, ptr addrspace(4) %124, i64 96, !dbg !225
  %condval_2.sroa.0.0.copyload.36502285 = load half, ptr addrspace(4) %125, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3653, !dbg !228

if.end362.3653:                                   ; preds = %if.then337.3651, %if.end362.3.2
  %126 = phi half [ %condval_2.sroa.0.0.copyload.36502285, %if.then337.3651 ], [ 0xH0000, %if.end362.3.2 ], !dbg !64
  %v_local.sroa.0.0.vec.insert866 = insertelement <4 x half> poison, half %126, i64 0, !dbg !229
  br i1 %cmp336, label %if.then337.1.3, label %if.end362.1.3, !dbg !224

if.then337.1.3:                                   ; preds = %if.end362.3653
  %127 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %128 = getelementptr inbounds i8, ptr addrspace(4) %127, i64 %.idx, !dbg !225
  %arrayidx359.1.3 = getelementptr inbounds i8, ptr addrspace(4) %128, i64 224, !dbg !225
  %condval_2.sroa.0.0.copyload.1.32286 = load half, ptr addrspace(4) %arrayidx359.1.3, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.3, !dbg !228

if.end362.1.3:                                    ; preds = %if.then337.1.3, %if.end362.3653
  %129 = phi half [ %condval_2.sroa.0.0.copyload.1.32286, %if.then337.1.3 ], [ 0xH0000, %if.end362.3653 ], !dbg !64
  %v_local.sroa.0.2.vec.insert928 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert866, half %129, i64 1, !dbg !229
  br i1 %cmp336, label %if.then337.2.3, label %if.end362.2.3, !dbg !224

if.then337.2.3:                                   ; preds = %if.end362.1.3
  %130 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %131 = getelementptr inbounds i8, ptr addrspace(4) %130, i64 %.idx, !dbg !225
  %arrayidx359.2.3 = getelementptr inbounds i8, ptr addrspace(4) %131, i64 352, !dbg !225
  %condval_2.sroa.0.0.copyload.2.32287 = load half, ptr addrspace(4) %arrayidx359.2.3, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.3, !dbg !228

if.end362.2.3:                                    ; preds = %if.then337.2.3, %if.end362.1.3
  %132 = phi half [ %condval_2.sroa.0.0.copyload.2.32287, %if.then337.2.3 ], [ 0xH0000, %if.end362.1.3 ], !dbg !64
  %v_local.sroa.0.4.vec.insert990 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert928, half %132, i64 2, !dbg !229
  br i1 %cmp336, label %if.then337.3.3, label %if.end362.3.3, !dbg !224

if.then337.3.3:                                   ; preds = %if.end362.2.3
  %133 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %134 = getelementptr inbounds i8, ptr addrspace(4) %133, i64 %.idx, !dbg !225
  %arrayidx359.3.3 = getelementptr inbounds i8, ptr addrspace(4) %134, i64 480, !dbg !225
  %condval_2.sroa.0.0.copyload.3.32288 = load half, ptr addrspace(4) %arrayidx359.3.3, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.3, !dbg !228

if.end362.3.3:                                    ; preds = %if.then337.3.3, %if.end362.2.3
  %135 = phi half [ %condval_2.sroa.0.0.copyload.3.32288, %if.then337.3.3 ], [ 0xH0000, %if.end362.2.3 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1052 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert990, half %135, i64 3, !dbg !229
  %136 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1052, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.290.0), !dbg !230
  br label %if.end381, !dbg !231

if.end381:                                        ; preds = %if.end362.3.3, %entry
  %output_acc.sroa.290.1 = phi <4 x float> [ zeroinitializer, %entry ], [ %136, %if.end362.3.3 ], !dbg !64
  %output_acc.sroa.194.1 = phi <4 x float> [ zeroinitializer, %entry ], [ %122, %if.end362.3.3 ], !dbg !64
  %output_acc.sroa.98.1 = phi <4 x float> [ zeroinitializer, %entry ], [ %108, %if.end362.3.3 ], !dbg !64
  %output_acc.sroa.0.1 = phi <4 x float> [ zeroinitializer, %entry ], [ %94, %if.end362.3.3 ], !dbg !64
  %normalizer.sroa.0.2 = phi float [ 0xFFF0000000000000, %entry ], [ %normalizer.sroa.0.1, %if.end362.3.3 ], !dbg !64
  %denominator.sroa.0.2 = phi float [ 0.000000e+00, %entry ], [ %add290, %if.end362.3.3 ], !dbg !64
  %137 = or disjoint i64 %19, 1, !dbg !232
  %arrayidx45.1 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %137, !dbg !47
  %138 = load i32, ptr addrspace(1) %arrayidx45.1, align 4, !dbg !47, !tbaa !30
  %mul46.1 = shl nsw i32 %138, 4, !dbg !48
  %cmp47.1 = icmp slt i32 %138, 0, !dbg !49
  %cmp49.not.1 = icmp sgt i32 %mul46.1, %1
  %or.cond.1 = select i1 %cmp47.1, i1 true, i1 %cmp49.not.1, !dbg !50
  br i1 %or.cond.1, label %if.end381.1, label %if.then.1, !dbg !50

if.then.1:                                        ; preds = %if.end381
  fence syncscope("warp") release, !dbg !51
  tail call void @llvm.mxc.barrier.warp(), !dbg !57
  fence syncscope("warp") acquire, !dbg !58
  %add56.1 = add nuw nsw i32 %mul46.1, %shr55
  %conv66.1 = zext nneg i32 %mul46.1 to i64
  %.idx.1 = shl nuw nsw i64 %conv66.1, 7
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep616, i64 %.idx.1, !dbg !59
  %cmp59.1656 = icmp ult i32 %add56.1, 1024, !dbg !60
  br i1 %cmp59.1656, label %if.then60.1665, label %if.end.1674, !dbg !61

if.then60.1665:                                   ; preds = %if.then.1
  %gep602.1657 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.1, i64 %mul62
  %condval.sroa.7.0.add.ptr73.sroa_idx.1658 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1657, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx.1659 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1657, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx.1660 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1657, i64 4
  %condval.sroa.0.0.copyload.1661 = load i32, ptr addrspace(4) %gep602.1657, align 16, !dbg !62, !tbaa !30
  %condval.sroa.5.0.copyload.1662 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr73.sroa_idx.1660, align 4, !dbg !62, !tbaa !30
  %condval.sroa.6.0.copyload.1663 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr73.sroa_idx.1659, align 8, !dbg !62, !tbaa !30
  %condval.sroa.7.0.copyload.1664 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr73.sroa_idx.1658, align 4, !dbg !62, !tbaa !30
  br label %if.end.1674, !dbg !63

if.end.1674:                                      ; preds = %if.then60.1665, %if.then.1
  %condval.sroa.0.0.1666 = phi i32 [ %condval.sroa.0.0.copyload.1661, %if.then60.1665 ], [ 0, %if.then.1 ], !dbg !64
  %condval.sroa.5.0.1667 = phi i32 [ %condval.sroa.5.0.copyload.1662, %if.then60.1665 ], [ 0, %if.then.1 ], !dbg !64
  %condval.sroa.6.0.1668 = phi i32 [ %condval.sroa.6.0.copyload.1663, %if.then60.1665 ], [ 0, %if.then.1 ], !dbg !64
  %condval.sroa.7.0.1669 = phi i32 [ %condval.sroa.7.0.copyload.1664, %if.then60.1665 ], [ 0, %if.then.1 ], !dbg !64
  %139 = or disjoint i32 %mul97, %mul106, !dbg !65
  %140 = or disjoint i32 %139, %mul116, !dbg !66
  %141 = or disjoint i32 %140, %mul125, !dbg !67
  %add.ptr128.1670 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %141, !dbg !68
  store i32 %condval.sroa.0.0.1666, ptr addrspace(3) %add.ptr128.1670, align 16, !dbg !69, !tbaa !30
  %condval.sroa.5.0.add.ptr128.sroa_idx.1671 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1670, i32 4, !dbg !69
  store i32 %condval.sroa.5.0.1667, ptr addrspace(3) %condval.sroa.5.0.add.ptr128.sroa_idx.1671, align 4, !dbg !69, !tbaa !30
  %condval.sroa.6.0.add.ptr128.sroa_idx.1672 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1670, i32 8, !dbg !69
  store i32 %condval.sroa.6.0.1668, ptr addrspace(3) %condval.sroa.6.0.add.ptr128.sroa_idx.1672, align 8, !dbg !69, !tbaa !30
  %condval.sroa.7.0.add.ptr128.sroa_idx.1673 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1670, i32 12, !dbg !69
  store i32 %condval.sroa.7.0.1669, ptr addrspace(3) %condval.sroa.7.0.add.ptr128.sroa_idx.1673, align 4, !dbg !69, !tbaa !30
  %cmp59.1.1 = icmp ult i32 %add56.1, 1016, !dbg !60
  br i1 %cmp59.1.1, label %if.then60.1.1, label %if.end.1.1, !dbg !61

if.then60.1.1:                                    ; preds = %if.end.1674
  %add65.1.1 = or disjoint i64 %mul62, 512
  %gep602.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.1, i64 %add65.1.1
  %condval.sroa.7.0.add.ptr73.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1.1, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1.1, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1.1, i64 4
  %condval.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %gep602.1.1, align 16, !dbg !62, !tbaa !30
  %condval.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr73.sroa_idx.1.1, align 4, !dbg !62, !tbaa !30
  %condval.sroa.6.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr73.sroa_idx.1.1, align 8, !dbg !62, !tbaa !30
  %condval.sroa.7.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr73.sroa_idx.1.1, align 4, !dbg !62, !tbaa !30
  br label %if.end.1.1, !dbg !63

if.end.1.1:                                       ; preds = %if.then60.1.1, %if.end.1674
  %condval.sroa.0.0.1.1 = phi i32 [ %condval.sroa.0.0.copyload.1.1, %if.then60.1.1 ], [ 0, %if.end.1674 ], !dbg !64
  %condval.sroa.5.0.1.1 = phi i32 [ %condval.sroa.5.0.copyload.1.1, %if.then60.1.1 ], [ 0, %if.end.1674 ], !dbg !64
  %condval.sroa.6.0.1.1 = phi i32 [ %condval.sroa.6.0.copyload.1.1, %if.then60.1.1 ], [ 0, %if.end.1674 ], !dbg !64
  %condval.sroa.7.0.1.1 = phi i32 [ %condval.sroa.7.0.copyload.1.1, %if.then60.1.1 ], [ 0, %if.end.1674 ], !dbg !64
  %142 = add nuw nsw i32 %mul97, 512, !dbg !70
  %143 = or disjoint i32 %142, %mul106, !dbg !65
  %144 = or disjoint i32 %143, %mul116, !dbg !66
  %145 = or disjoint i32 %144, %mul125, !dbg !67
  %add.ptr128.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %145, !dbg !68
  store i32 %condval.sroa.0.0.1.1, ptr addrspace(3) %add.ptr128.1.1, align 16, !dbg !69, !tbaa !30
  %condval.sroa.5.0.add.ptr128.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1.1, i32 4, !dbg !69
  store i32 %condval.sroa.5.0.1.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr128.sroa_idx.1.1, align 4, !dbg !69, !tbaa !30
  %condval.sroa.6.0.add.ptr128.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1.1, i32 8, !dbg !69
  store i32 %condval.sroa.6.0.1.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr128.sroa_idx.1.1, align 8, !dbg !69, !tbaa !30
  %condval.sroa.7.0.add.ptr128.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1.1, i32 12, !dbg !69
  store i32 %condval.sroa.7.0.1.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr128.sroa_idx.1.1, align 4, !dbg !69, !tbaa !30
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %and148.1675 = shl nuw nsw i32 %3, 5, !dbg !76
  %mul149.1676 = and i32 %and148.1675, 32, !dbg !76
  %and156.1677 = shl nuw nsw i32 %and152, 4, !dbg !77
  %mul157.1678 = and i32 %and156.1677, 16, !dbg !77
  %add166.1679 = or disjoint i32 %add158, %mul157.1678, !dbg !78
  %add171.1680 = or disjoint i32 %add166.1679, %mul149.1676, !dbg !79
  %add.ptr173.1681 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.1680, !dbg !80
  %k_local.sroa.0.0.copyload.1682 = load <4 x half>, ptr addrspace(3) %add.ptr173.1681, align 8, !dbg !81
  %146 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1682, <4 x half> %5, <4 x float> zeroinitializer), !dbg !82, !call_argsrelate !83
  %add155.1.1 = shl nuw nsw i32 %and152, 4, !dbg !77
  %147 = and i32 %add155.1.1, 16, !dbg !77
  %148 = or disjoint i32 %147, %add158, !dbg !78
  %149 = or disjoint i32 %148, %mul149.1676, !dbg !79
  %add171.1.1 = xor i32 %149, 16, !dbg !79
  %add.ptr173.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.1.1, !dbg !80
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr173.1.1, align 8, !dbg !81
  %150 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %7, <4 x float> %146), !dbg !82, !call_argsrelate !83
  %add147.2.1 = shl nuw nsw i32 %3, 5, !dbg !76
  %151 = and i32 %add147.2.1, 32, !dbg !76
  %mul149.2.1 = xor i32 %151, 32, !dbg !76
  %add155.2.1 = shl nuw nsw i32 %and152, 4, !dbg !77
  %mul157.2.1 = and i32 %add155.2.1, 16, !dbg !77
  %add166.2.1 = or disjoint i32 %add158, %mul157.2.1, !dbg !78
  %add171.2.1 = or disjoint i32 %add166.2.1, %mul149.2.1, !dbg !79
  %add.ptr173.2.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.2.1, !dbg !80
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr173.2.1, align 8, !dbg !81
  %152 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %9, <4 x float> %150), !dbg !82, !call_argsrelate !83
  %add155.3.1 = shl nuw nsw i32 %and152, 4, !dbg !77
  %153 = and i32 %add155.3.1, 16, !dbg !77
  %154 = or disjoint i32 %153, %add158, !dbg !78
  %155 = or disjoint i32 %154, %mul149.2.1, !dbg !79
  %add171.3.1 = xor i32 %155, 16, !dbg !79
  %add.ptr173.3.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.3.1, !dbg !80
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr173.3.1, align 8, !dbg !81
  %156 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %11, <4 x float> %152), !dbg !82, !call_argsrelate !83
  %add195.1 = add nuw nsw i32 %mul46.1, %mul14
  %cmp198.not.1683 = icmp sgt i32 %add195.1, %1, !dbg !84
  %scores.sroa.0.0.vec.extract1133 = extractelement <4 x float> %156, i64 0
  %spec.select2401 = select i1 %cmp198.not.1683, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1133, !dbg !85
  %cmp198.not.1.1.not = icmp slt i32 %add195.1, %1, !dbg !84
  %scores.sroa.0.4.vec.extract1284 = extractelement <4 x float> %156, i64 1, !dbg !85
  %condval_1.0.1.1 = select i1 %cmp198.not.1.1.not, float %scores.sroa.0.4.vec.extract1284, float 0xFFF0000000000000, !dbg !85
  %add196.2.1 = or disjoint i32 %add195.1, 2, !dbg !86
  %cmp198.not.2.1 = icmp sgt i32 %add196.2.1, %1, !dbg !84
  %scores.sroa.0.8.vec.extract1409 = extractelement <4 x float> %156, i64 2, !dbg !85
  %condval_1.0.2.1 = select i1 %cmp198.not.2.1, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1409, !dbg !85
  %add196.3.1 = or disjoint i32 %add195.1, 3, !dbg !86
  %cmp198.not.3.1 = icmp sgt i32 %add196.3.1, %1, !dbg !84
  %scores.sroa.0.12.vec.extract1534 = extractelement <4 x float> %156, i64 3, !dbg !85
  %condval_1.0.3.1 = select i1 %cmp198.not.3.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1534, !dbg !85
  %157 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2401, float 0xFFF0000000000000), !dbg !87
  %158 = tail call contract noundef float @llvm.maxnum.f32(float %157, float %condval_1.0.1.1), !dbg !87
  %159 = tail call contract noundef float @llvm.maxnum.f32(float %158, float %condval_1.0.2.1), !dbg !87
  %160 = tail call contract noundef float @llvm.maxnum.f32(float %159, float %condval_1.0.3.1), !dbg !87
  %161 = bitcast float %160 to i32, !dbg !91
  %162 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %163 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %162) #11, !dbg !105
  %xor.i.i.i.1 = xor i32 %163, 32, !dbg !106
  %164 = and i32 %163, -64, !dbg !107
  %and.i.i.i.1 = add nsw i32 %164, 64, !dbg !107
  %cmp.not.i.i.i.1 = icmp slt i32 %xor.i.i.i.1, %and.i.i.i.1, !dbg !108
  %cond.i.i.i.1 = select i1 %cmp.not.i.i.i.1, i32 %xor.i.i.i.1, i32 %163, !dbg !109
  %shl.i.i.i.1 = shl i32 %cond.i.i.i.1, 2, !dbg !110
  %165 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.1, i32 %161), !dbg !111
  %166 = bitcast i32 %165 to float, !dbg !112
  %167 = tail call contract noundef float @llvm.maxnum.f32(float %160, float %166), !dbg !113
  %168 = bitcast float %167 to i32, !dbg !121
  %169 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !126
  %170 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %169) #11, !dbg !129
  %xor.i.i.i.i.1 = xor i32 %170, 16, !dbg !130
  %171 = and i32 %170, -64, !dbg !131
  %and.i.i.i.i.1 = add nsw i32 %171, 64, !dbg !131
  %cmp.not.i.i.i.i.1 = icmp slt i32 %xor.i.i.i.i.1, %and.i.i.i.i.1, !dbg !132
  %cond.i.i.i.i.1 = select i1 %cmp.not.i.i.i.i.1, i32 %xor.i.i.i.i.1, i32 %170, !dbg !133
  %shl.i.i.i.i.1 = shl i32 %cond.i.i.i.i.1, 2, !dbg !134
  %172 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.1, i32 %168), !dbg !135
  %173 = bitcast i32 %172 to float, !dbg !136
  %174 = tail call contract noundef float @llvm.maxnum.f32(float %167, float %173), !dbg !137
  %sub.1 = fsub contract float %174, %normalizer.sroa.0.2, !dbg !141
  %mul234.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !142
  %cmp235.1 = fcmp contract ogt float %mul234.1, 7.000000e+00, !dbg !143
  %sub239.1 = fsub contract float %normalizer.sroa.0.2, %174
  %mul240.1 = fmul contract float %sub239.1, 0x3FC7154760000000
  %cmp.i.i.1 = fcmp contract olt float %mul240.1, -1.260000e+02
  %cond.i.i.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00
  %add.i.i.1 = fadd contract float %mul240.1, %cond.i.i.1
  %175 = tail call contract float @llvm.exp2.f32(float %add.i.i.1)
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %175
  %normalizer.sroa.0.1.1 = select i1 %cmp235.1, float %174, float %normalizer.sroa.0.2, !dbg !144
  %sub255.1687 = fsub contract float %spec.select2401, %normalizer.sroa.0.1.1, !dbg !145
  %mul256.1688 = fmul contract float %sub255.1687, 0x3FC7154760000000, !dbg !146
  %add257.1689 = fadd contract float %mul256.1688, 8.000000e+00, !dbg !147
  %cmp.i.i559.1690 = fcmp contract olt float %add257.1689, -1.260000e+02, !dbg !148
  %cond.i.i560.1691 = select contract i1 %cmp.i.i559.1690, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.1692 = fadd contract float %add257.1689, %cond.i.i560.1691, !dbg !148
  %176 = tail call contract float @llvm.exp2.f32(float %add.i.i561.1692), !dbg !148
  %cond2.i.i562.1693 = select contract i1 %cmp.i.i559.1690, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.1694 = fmul contract float %cond2.i.i562.1693, %176, !dbg !148
  %sub255.1.1 = fsub contract float %condval_1.0.1.1, %normalizer.sroa.0.1.1, !dbg !145
  %mul256.1.1 = fmul contract float %sub255.1.1, 0x3FC7154760000000, !dbg !146
  %add257.1.1 = fadd contract float %mul256.1.1, 8.000000e+00, !dbg !147
  %cmp.i.i559.1.1 = fcmp contract olt float %add257.1.1, -1.260000e+02, !dbg !148
  %cond.i.i560.1.1 = select contract i1 %cmp.i.i559.1.1, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.1.1 = fadd contract float %add257.1.1, %cond.i.i560.1.1, !dbg !148
  %177 = tail call contract float @llvm.exp2.f32(float %add.i.i561.1.1), !dbg !148
  %cond2.i.i562.1.1 = select contract i1 %cmp.i.i559.1.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.1.1 = fmul contract float %cond2.i.i562.1.1, %177, !dbg !148
  %sub255.2.1 = fsub contract float %condval_1.0.2.1, %normalizer.sroa.0.1.1, !dbg !145
  %mul256.2.1 = fmul contract float %sub255.2.1, 0x3FC7154760000000, !dbg !146
  %add257.2.1 = fadd contract float %mul256.2.1, 8.000000e+00, !dbg !147
  %cmp.i.i559.2.1 = fcmp contract olt float %add257.2.1, -1.260000e+02, !dbg !148
  %cond.i.i560.2.1 = select contract i1 %cmp.i.i559.2.1, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.2.1 = fadd contract float %add257.2.1, %cond.i.i560.2.1, !dbg !148
  %178 = tail call contract float @llvm.exp2.f32(float %add.i.i561.2.1), !dbg !148
  %cond2.i.i562.2.1 = select contract i1 %cmp.i.i559.2.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.2.1 = fmul contract float %cond2.i.i562.2.1, %178, !dbg !148
  %sub255.3.1 = fsub contract float %condval_1.0.3.1, %normalizer.sroa.0.1.1, !dbg !145
  %mul256.3.1 = fmul contract float %sub255.3.1, 0x3FC7154760000000, !dbg !146
  %add257.3.1 = fadd contract float %mul256.3.1, 8.000000e+00, !dbg !147
  %cmp.i.i559.3.1 = fcmp contract olt float %add257.3.1, -1.260000e+02, !dbg !148
  %cond.i.i560.3.1 = select contract i1 %cmp.i.i559.3.1, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.3.1 = fadd contract float %add257.3.1, %cond.i.i560.3.1, !dbg !148
  %179 = tail call contract float @llvm.exp2.f32(float %add.i.i561.3.1), !dbg !148
  %cond2.i.i562.3.1 = select contract i1 %cmp.i.i559.3.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.3.1 = fmul contract float %cond2.i.i562.3.1, %179, !dbg !148
  %add272.1695 = fadd contract float %mul.i.i563.1694, 0.000000e+00, !dbg !151
  %add272.1.1 = fadd contract float %add272.1695, %mul.i.i563.1.1, !dbg !151
  %add272.2.1 = fadd contract float %add272.1.1, %mul.i.i563.2.1, !dbg !151
  %add272.3.1 = fadd contract float %add272.2.1, %mul.i.i563.3.1, !dbg !151
  %rescale.sroa.0.0.1 = select i1 %cmp235.1, float %mul.i.i.1, float 1.000000e+00, !dbg !144
  %180 = bitcast float %add272.3.1 to i32, !dbg !152
  %181 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !157
  %182 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %181) #11, !dbg !160
  %xor.i.i.i564.1 = xor i32 %182, 32, !dbg !161
  %183 = and i32 %182, -64, !dbg !162
  %and.i.i.i565.1 = add nsw i32 %183, 64, !dbg !162
  %cmp.not.i.i.i566.1 = icmp slt i32 %xor.i.i.i564.1, %and.i.i.i565.1, !dbg !163
  %cond.i.i.i567.1 = select i1 %cmp.not.i.i.i566.1, i32 %xor.i.i.i564.1, i32 %182, !dbg !164
  %shl.i.i.i568.1 = shl i32 %cond.i.i.i567.1, 2, !dbg !165
  %184 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i568.1, i32 %180), !dbg !166
  %185 = bitcast i32 %184 to float, !dbg !167
  %add.i.i569.1 = fadd contract float %add272.3.1, %185, !dbg !168
  %186 = bitcast float %add.i.i569.1 to i32, !dbg !171
  %187 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !176
  %188 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %187) #11, !dbg !179
  %xor.i.i.i.i570.1 = xor i32 %188, 16, !dbg !180
  %189 = and i32 %188, -64, !dbg !181
  %and.i.i.i.i571.1 = add nsw i32 %189, 64, !dbg !181
  %cmp.not.i.i.i.i572.1 = icmp slt i32 %xor.i.i.i.i570.1, %and.i.i.i.i571.1, !dbg !182
  %cond.i.i.i.i573.1 = select i1 %cmp.not.i.i.i.i572.1, i32 %xor.i.i.i.i570.1, i32 %188, !dbg !183
  %shl.i.i.i.i574.1 = shl i32 %cond.i.i.i.i573.1, 2, !dbg !184
  %190 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i574.1, i32 %186), !dbg !185
  %191 = bitcast i32 %190 to float, !dbg !186
  %add.i.i.i.1 = fadd contract float %add.i.i569.1, %191, !dbg !187
  %cmp281.1 = fcmp contract une float %rescale.sroa.0.0.1, 1.000000e+00, !dbg !189
  %mul285.1 = fmul contract float %denominator.sroa.0.2, %rescale.sroa.0.0.1, !dbg !190
  %denominator.sroa.0.1.1 = select i1 %cmp281.1, float %mul285.1, float %denominator.sroa.0.2, !dbg !190
  %add290.1 = fadd contract float %denominator.sroa.0.1.1, %add.i.i.i.1, !dbg !191
  %192 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !192, !noalias !200
  %193 = fptrunc float %mul.i.i563.1694 to half, !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %192), !dbg !192, !noalias !200
  %194 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !205
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !205, !noalias !200
  %195 = fptrunc float %mul.i.i563.1.1 to half, !dbg !205
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %194), !dbg !205, !noalias !200
  %__1.sroa.0.0.vec.insert.1 = insertelement <4 x half> poison, half %193, i64 0, !dbg !207
  %__1.sroa.0.2.vec.insert.1 = insertelement <4 x half> %__1.sroa.0.0.vec.insert.1, half %195, i64 1, !dbg !207
  %196 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !210
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !210, !noalias !214
  %197 = fptrunc float %mul.i.i563.2.1 to half, !dbg !210
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %196), !dbg !210, !noalias !214
  %198 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !219
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !219, !noalias !214
  %199 = fptrunc float %mul.i.i563.3.1 to half, !dbg !219
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %198), !dbg !219, !noalias !214
  %__1.sroa.0.4.vec.insert.1 = insertelement <4 x half> %__1.sroa.0.2.vec.insert.1, half %197, i64 2, !dbg !221
  %__1.sroa.0.6.vec.insert.1 = insertelement <4 x half> %__1.sroa.0.4.vec.insert.1, half %199, i64 3, !dbg !221
  br i1 %cmp281.1, label %for.body312.preheader.1, label %if.end322.1, !dbg !223

for.body312.preheader.1:                          ; preds = %if.end.1.1
  %output_acc.sroa.0.0.vec.extract1629 = extractelement <4 x float> %output_acc.sroa.0.1, i64 0, !dbg !233
  %mul316.1696 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.0.0.vec.extract1629, !dbg !234
  %output_acc.sroa.0.0.vec.insert1631 = insertelement <4 x float> poison, float %mul316.1696, i64 0, !dbg !235
  %output_acc.sroa.0.4.vec.extract1666 = extractelement <4 x float> %output_acc.sroa.0.1, i64 1, !dbg !233
  %mul316.1.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.0.4.vec.extract1666, !dbg !234
  %output_acc.sroa.0.4.vec.insert1668 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert1631, float %mul316.1.1, i64 1, !dbg !235
  %output_acc.sroa.0.8.vec.extract1703 = extractelement <4 x float> %output_acc.sroa.0.1, i64 2, !dbg !233
  %mul316.2.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.0.8.vec.extract1703, !dbg !234
  %output_acc.sroa.0.8.vec.insert1705 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert1668, float %mul316.2.1, i64 2, !dbg !235
  %output_acc.sroa.0.12.vec.extract1740 = extractelement <4 x float> %output_acc.sroa.0.1, i64 3, !dbg !233
  %mul316.3.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.0.12.vec.extract1740, !dbg !234
  %output_acc.sroa.0.12.vec.insert1742 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert1705, float %mul316.3.1, i64 3, !dbg !235
  %output_acc.sroa.98.16.vec.extract1785 = extractelement <4 x float> %output_acc.sroa.98.1, i64 0, !dbg !233
  %mul316.4.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.98.16.vec.extract1785, !dbg !234
  %output_acc.sroa.98.16.vec.insert1787 = insertelement <4 x float> poison, float %mul316.4.1, i64 0, !dbg !235
  %output_acc.sroa.98.20.vec.extract1822 = extractelement <4 x float> %output_acc.sroa.98.1, i64 1, !dbg !233
  %mul316.5.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.98.20.vec.extract1822, !dbg !234
  %output_acc.sroa.98.20.vec.insert1824 = insertelement <4 x float> %output_acc.sroa.98.16.vec.insert1787, float %mul316.5.1, i64 1, !dbg !235
  %output_acc.sroa.98.24.vec.extract1859 = extractelement <4 x float> %output_acc.sroa.98.1, i64 2, !dbg !233
  %mul316.6.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.98.24.vec.extract1859, !dbg !234
  %output_acc.sroa.98.24.vec.insert1861 = insertelement <4 x float> %output_acc.sroa.98.20.vec.insert1824, float %mul316.6.1, i64 2, !dbg !235
  %output_acc.sroa.98.28.vec.extract1896 = extractelement <4 x float> %output_acc.sroa.98.1, i64 3, !dbg !233
  %mul316.7.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.98.28.vec.extract1896, !dbg !234
  %output_acc.sroa.98.28.vec.insert1898 = insertelement <4 x float> %output_acc.sroa.98.24.vec.insert1861, float %mul316.7.1, i64 3, !dbg !235
  %output_acc.sroa.194.32.vec.extract1941 = extractelement <4 x float> %output_acc.sroa.194.1, i64 0, !dbg !233
  %mul316.8.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.194.32.vec.extract1941, !dbg !234
  %output_acc.sroa.194.32.vec.insert1943 = insertelement <4 x float> poison, float %mul316.8.1, i64 0, !dbg !235
  %output_acc.sroa.194.36.vec.extract1978 = extractelement <4 x float> %output_acc.sroa.194.1, i64 1, !dbg !233
  %mul316.9.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.194.36.vec.extract1978, !dbg !234
  %output_acc.sroa.194.36.vec.insert1980 = insertelement <4 x float> %output_acc.sroa.194.32.vec.insert1943, float %mul316.9.1, i64 1, !dbg !235
  %output_acc.sroa.194.40.vec.extract2015 = extractelement <4 x float> %output_acc.sroa.194.1, i64 2, !dbg !233
  %mul316.10.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.194.40.vec.extract2015, !dbg !234
  %output_acc.sroa.194.40.vec.insert2017 = insertelement <4 x float> %output_acc.sroa.194.36.vec.insert1980, float %mul316.10.1, i64 2, !dbg !235
  %output_acc.sroa.194.44.vec.extract2052 = extractelement <4 x float> %output_acc.sroa.194.1, i64 3, !dbg !233
  %mul316.11.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.194.44.vec.extract2052, !dbg !234
  %output_acc.sroa.194.44.vec.insert2054 = insertelement <4 x float> %output_acc.sroa.194.40.vec.insert2017, float %mul316.11.1, i64 3, !dbg !235
  %output_acc.sroa.290.48.vec.extract2097 = extractelement <4 x float> %output_acc.sroa.290.1, i64 0, !dbg !233
  %mul316.12.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.290.48.vec.extract2097, !dbg !234
  %output_acc.sroa.290.48.vec.insert2099 = insertelement <4 x float> poison, float %mul316.12.1, i64 0, !dbg !235
  %output_acc.sroa.290.52.vec.extract2134 = extractelement <4 x float> %output_acc.sroa.290.1, i64 1, !dbg !233
  %mul316.13.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.290.52.vec.extract2134, !dbg !234
  %output_acc.sroa.290.52.vec.insert2136 = insertelement <4 x float> %output_acc.sroa.290.48.vec.insert2099, float %mul316.13.1, i64 1, !dbg !235
  %output_acc.sroa.290.56.vec.extract2171 = extractelement <4 x float> %output_acc.sroa.290.1, i64 2, !dbg !233
  %mul316.14.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.290.56.vec.extract2171, !dbg !234
  %output_acc.sroa.290.56.vec.insert2173 = insertelement <4 x float> %output_acc.sroa.290.52.vec.insert2136, float %mul316.14.1, i64 2, !dbg !235
  %output_acc.sroa.290.60.vec.extract2208 = extractelement <4 x float> %output_acc.sroa.290.1, i64 3, !dbg !233
  %mul316.15.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.290.60.vec.extract2208, !dbg !234
  %output_acc.sroa.290.60.vec.insert2210 = insertelement <4 x float> %output_acc.sroa.290.56.vec.insert2173, float %mul316.15.1, i64 3, !dbg !235
  br label %if.end322.1

if.end322.1:                                      ; preds = %for.body312.preheader.1, %if.end.1.1
  %output_acc.sroa.290.2 = phi <4 x float> [ %output_acc.sroa.290.60.vec.insert2210, %for.body312.preheader.1 ], [ %output_acc.sroa.290.1, %if.end.1.1 ], !dbg !64
  %output_acc.sroa.194.2 = phi <4 x float> [ %output_acc.sroa.194.44.vec.insert2054, %for.body312.preheader.1 ], [ %output_acc.sroa.194.1, %if.end.1.1 ], !dbg !64
  %output_acc.sroa.98.2 = phi <4 x float> [ %output_acc.sroa.98.28.vec.insert1898, %for.body312.preheader.1 ], [ %output_acc.sroa.98.1, %if.end.1.1 ], !dbg !64
  %output_acc.sroa.0.2 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1742, %for.body312.preheader.1 ], [ %output_acc.sroa.0.1, %if.end.1.1 ], !dbg !64
  %shr334.1 = lshr exact i32 %mul46.1, 2
  %add335.1 = add nuw nsw i32 %shr334.1, %shr332
  %cmp336.1 = icmp ult i32 %add335.1, 256
  br i1 %cmp336.1, label %if.then337.1700, label %if.end362.1702, !dbg !224

if.then337.1700:                                  ; preds = %if.end322.1
  %200 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %201 = getelementptr inbounds i8, ptr addrspace(4) %200, i64 %.idx.1, !dbg !225
  %condval_2.sroa.0.0.copyload.16992289 = load half, ptr addrspace(4) %201, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1702, !dbg !228

if.end362.1702:                                   ; preds = %if.then337.1700, %if.end322.1
  %202 = phi half [ %condval_2.sroa.0.0.copyload.16992289, %if.then337.1700 ], [ 0xH0000, %if.end322.1 ], !dbg !64
  %v_local.sroa.0.0.vec.insert868 = insertelement <4 x half> poison, half %202, i64 0, !dbg !229
  br i1 %cmp336.1, label %if.then337.1.1706, label %if.end362.1.1709, !dbg !224

if.then337.1.1706:                                ; preds = %if.end362.1702
  %203 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %204 = getelementptr inbounds i8, ptr addrspace(4) %203, i64 %.idx.1, !dbg !225
  %arrayidx359.1.1704 = getelementptr inbounds i8, ptr addrspace(4) %204, i64 128, !dbg !225
  %condval_2.sroa.0.0.copyload.1.17052290 = load half, ptr addrspace(4) %arrayidx359.1.1704, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.1709, !dbg !228

if.end362.1.1709:                                 ; preds = %if.then337.1.1706, %if.end362.1702
  %205 = phi half [ %condval_2.sroa.0.0.copyload.1.17052290, %if.then337.1.1706 ], [ 0xH0000, %if.end362.1702 ], !dbg !64
  %v_local.sroa.0.2.vec.insert930 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert868, half %205, i64 1, !dbg !229
  br i1 %cmp336.1, label %if.then337.2.1713, label %if.end362.2.1716, !dbg !224

if.then337.2.1713:                                ; preds = %if.end362.1.1709
  %206 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %207 = getelementptr inbounds i8, ptr addrspace(4) %206, i64 %.idx.1, !dbg !225
  %arrayidx359.2.1711 = getelementptr inbounds i8, ptr addrspace(4) %207, i64 256, !dbg !225
  %condval_2.sroa.0.0.copyload.2.17122291 = load half, ptr addrspace(4) %arrayidx359.2.1711, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.1716, !dbg !228

if.end362.2.1716:                                 ; preds = %if.then337.2.1713, %if.end362.1.1709
  %208 = phi half [ %condval_2.sroa.0.0.copyload.2.17122291, %if.then337.2.1713 ], [ 0xH0000, %if.end362.1.1709 ], !dbg !64
  %v_local.sroa.0.4.vec.insert992 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert930, half %208, i64 2, !dbg !229
  br i1 %cmp336.1, label %if.then337.3.1720, label %if.end362.3.1723, !dbg !224

if.then337.3.1720:                                ; preds = %if.end362.2.1716
  %209 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %210 = getelementptr inbounds i8, ptr addrspace(4) %209, i64 %.idx.1, !dbg !225
  %arrayidx359.3.1718 = getelementptr inbounds i8, ptr addrspace(4) %210, i64 384, !dbg !225
  %condval_2.sroa.0.0.copyload.3.17192292 = load half, ptr addrspace(4) %arrayidx359.3.1718, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.1723, !dbg !228

if.end362.3.1723:                                 ; preds = %if.then337.3.1720, %if.end362.2.1716
  %211 = phi half [ %condval_2.sroa.0.0.copyload.3.17192292, %if.then337.3.1720 ], [ 0xH0000, %if.end362.2.1716 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1054 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert992, half %211, i64 3, !dbg !229
  %212 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1054, <4 x half> %__1.sroa.0.6.vec.insert.1, <4 x float> %output_acc.sroa.0.2), !dbg !230
  br i1 %cmp336.1, label %if.then337.1641.1, label %if.end362.1643.1, !dbg !224

if.then337.1641.1:                                ; preds = %if.end362.3.1723
  %213 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %214 = getelementptr inbounds i8, ptr addrspace(4) %213, i64 %.idx.1, !dbg !225
  %215 = getelementptr inbounds i8, ptr addrspace(4) %214, i64 32, !dbg !225
  %condval_2.sroa.0.0.copyload.1640.12293 = load half, ptr addrspace(4) %215, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1643.1, !dbg !228

if.end362.1643.1:                                 ; preds = %if.then337.1641.1, %if.end362.3.1723
  %216 = phi half [ %condval_2.sroa.0.0.copyload.1640.12293, %if.then337.1641.1 ], [ 0xH0000, %if.end362.3.1723 ], !dbg !64
  %v_local.sroa.0.0.vec.insert870 = insertelement <4 x half> poison, half %216, i64 0, !dbg !229
  br i1 %cmp336.1, label %if.then337.1.1.1, label %if.end362.1.1.1, !dbg !224

if.then337.1.1.1:                                 ; preds = %if.end362.1643.1
  %217 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %218 = getelementptr inbounds i8, ptr addrspace(4) %217, i64 %.idx.1, !dbg !225
  %arrayidx359.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %218, i64 160, !dbg !225
  %condval_2.sroa.0.0.copyload.1.1.12294 = load half, ptr addrspace(4) %arrayidx359.1.1.1, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.1.1, !dbg !228

if.end362.1.1.1:                                  ; preds = %if.then337.1.1.1, %if.end362.1643.1
  %219 = phi half [ %condval_2.sroa.0.0.copyload.1.1.12294, %if.then337.1.1.1 ], [ 0xH0000, %if.end362.1643.1 ], !dbg !64
  %v_local.sroa.0.2.vec.insert932 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert870, half %219, i64 1, !dbg !229
  br i1 %cmp336.1, label %if.then337.2.1.1, label %if.end362.2.1.1, !dbg !224

if.then337.2.1.1:                                 ; preds = %if.end362.1.1.1
  %220 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %221 = getelementptr inbounds i8, ptr addrspace(4) %220, i64 %.idx.1, !dbg !225
  %arrayidx359.2.1.1 = getelementptr inbounds i8, ptr addrspace(4) %221, i64 288, !dbg !225
  %condval_2.sroa.0.0.copyload.2.1.12295 = load half, ptr addrspace(4) %arrayidx359.2.1.1, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.1.1, !dbg !228

if.end362.2.1.1:                                  ; preds = %if.then337.2.1.1, %if.end362.1.1.1
  %222 = phi half [ %condval_2.sroa.0.0.copyload.2.1.12295, %if.then337.2.1.1 ], [ 0xH0000, %if.end362.1.1.1 ], !dbg !64
  %v_local.sroa.0.4.vec.insert994 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert932, half %222, i64 2, !dbg !229
  br i1 %cmp336.1, label %if.then337.3.1.1, label %if.end362.3.1.1, !dbg !224

if.then337.3.1.1:                                 ; preds = %if.end362.2.1.1
  %223 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %224 = getelementptr inbounds i8, ptr addrspace(4) %223, i64 %.idx.1, !dbg !225
  %arrayidx359.3.1.1 = getelementptr inbounds i8, ptr addrspace(4) %224, i64 416, !dbg !225
  %condval_2.sroa.0.0.copyload.3.1.12296 = load half, ptr addrspace(4) %arrayidx359.3.1.1, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.1.1, !dbg !228

if.end362.3.1.1:                                  ; preds = %if.then337.3.1.1, %if.end362.2.1.1
  %225 = phi half [ %condval_2.sroa.0.0.copyload.3.1.12296, %if.then337.3.1.1 ], [ 0xH0000, %if.end362.2.1.1 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1056 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert994, half %225, i64 3, !dbg !229
  %226 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1056, <4 x half> %__1.sroa.0.6.vec.insert.1, <4 x float> %output_acc.sroa.98.2), !dbg !230
  br i1 %cmp336.1, label %if.then337.2646.1, label %if.end362.2648.1, !dbg !224

if.then337.2646.1:                                ; preds = %if.end362.3.1.1
  %227 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %228 = getelementptr inbounds i8, ptr addrspace(4) %227, i64 %.idx.1, !dbg !225
  %229 = getelementptr inbounds i8, ptr addrspace(4) %228, i64 64, !dbg !225
  %condval_2.sroa.0.0.copyload.2645.12297 = load half, ptr addrspace(4) %229, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2648.1, !dbg !228

if.end362.2648.1:                                 ; preds = %if.then337.2646.1, %if.end362.3.1.1
  %230 = phi half [ %condval_2.sroa.0.0.copyload.2645.12297, %if.then337.2646.1 ], [ 0xH0000, %if.end362.3.1.1 ], !dbg !64
  %v_local.sroa.0.0.vec.insert872 = insertelement <4 x half> poison, half %230, i64 0, !dbg !229
  br i1 %cmp336.1, label %if.then337.1.2.1, label %if.end362.1.2.1, !dbg !224

if.then337.1.2.1:                                 ; preds = %if.end362.2648.1
  %231 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %232 = getelementptr inbounds i8, ptr addrspace(4) %231, i64 %.idx.1, !dbg !225
  %arrayidx359.1.2.1 = getelementptr inbounds i8, ptr addrspace(4) %232, i64 192, !dbg !225
  %condval_2.sroa.0.0.copyload.1.2.12298 = load half, ptr addrspace(4) %arrayidx359.1.2.1, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.2.1, !dbg !228

if.end362.1.2.1:                                  ; preds = %if.then337.1.2.1, %if.end362.2648.1
  %233 = phi half [ %condval_2.sroa.0.0.copyload.1.2.12298, %if.then337.1.2.1 ], [ 0xH0000, %if.end362.2648.1 ], !dbg !64
  %v_local.sroa.0.2.vec.insert934 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert872, half %233, i64 1, !dbg !229
  br i1 %cmp336.1, label %if.then337.2.2.1, label %if.end362.2.2.1, !dbg !224

if.then337.2.2.1:                                 ; preds = %if.end362.1.2.1
  %234 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %235 = getelementptr inbounds i8, ptr addrspace(4) %234, i64 %.idx.1, !dbg !225
  %arrayidx359.2.2.1 = getelementptr inbounds i8, ptr addrspace(4) %235, i64 320, !dbg !225
  %condval_2.sroa.0.0.copyload.2.2.12299 = load half, ptr addrspace(4) %arrayidx359.2.2.1, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.2.1, !dbg !228

if.end362.2.2.1:                                  ; preds = %if.then337.2.2.1, %if.end362.1.2.1
  %236 = phi half [ %condval_2.sroa.0.0.copyload.2.2.12299, %if.then337.2.2.1 ], [ 0xH0000, %if.end362.1.2.1 ], !dbg !64
  %v_local.sroa.0.4.vec.insert996 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert934, half %236, i64 2, !dbg !229
  br i1 %cmp336.1, label %if.then337.3.2.1, label %if.end362.3.2.1, !dbg !224

if.then337.3.2.1:                                 ; preds = %if.end362.2.2.1
  %237 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %238 = getelementptr inbounds i8, ptr addrspace(4) %237, i64 %.idx.1, !dbg !225
  %arrayidx359.3.2.1 = getelementptr inbounds i8, ptr addrspace(4) %238, i64 448, !dbg !225
  %condval_2.sroa.0.0.copyload.3.2.12300 = load half, ptr addrspace(4) %arrayidx359.3.2.1, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.2.1, !dbg !228

if.end362.3.2.1:                                  ; preds = %if.then337.3.2.1, %if.end362.2.2.1
  %239 = phi half [ %condval_2.sroa.0.0.copyload.3.2.12300, %if.then337.3.2.1 ], [ 0xH0000, %if.end362.2.2.1 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1058 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert996, half %239, i64 3, !dbg !229
  %240 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1058, <4 x half> %__1.sroa.0.6.vec.insert.1, <4 x float> %output_acc.sroa.194.2), !dbg !230
  br i1 %cmp336.1, label %if.then337.3651.1, label %if.end362.3653.1, !dbg !224

if.then337.3651.1:                                ; preds = %if.end362.3.2.1
  %241 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %242 = getelementptr inbounds i8, ptr addrspace(4) %241, i64 %.idx.1, !dbg !225
  %243 = getelementptr inbounds i8, ptr addrspace(4) %242, i64 96, !dbg !225
  %condval_2.sroa.0.0.copyload.3650.12301 = load half, ptr addrspace(4) %243, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3653.1, !dbg !228

if.end362.3653.1:                                 ; preds = %if.then337.3651.1, %if.end362.3.2.1
  %244 = phi half [ %condval_2.sroa.0.0.copyload.3650.12301, %if.then337.3651.1 ], [ 0xH0000, %if.end362.3.2.1 ], !dbg !64
  %v_local.sroa.0.0.vec.insert874 = insertelement <4 x half> poison, half %244, i64 0, !dbg !229
  br i1 %cmp336.1, label %if.then337.1.3.1, label %if.end362.1.3.1, !dbg !224

if.then337.1.3.1:                                 ; preds = %if.end362.3653.1
  %245 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %246 = getelementptr inbounds i8, ptr addrspace(4) %245, i64 %.idx.1, !dbg !225
  %arrayidx359.1.3.1 = getelementptr inbounds i8, ptr addrspace(4) %246, i64 224, !dbg !225
  %condval_2.sroa.0.0.copyload.1.3.12302 = load half, ptr addrspace(4) %arrayidx359.1.3.1, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.3.1, !dbg !228

if.end362.1.3.1:                                  ; preds = %if.then337.1.3.1, %if.end362.3653.1
  %247 = phi half [ %condval_2.sroa.0.0.copyload.1.3.12302, %if.then337.1.3.1 ], [ 0xH0000, %if.end362.3653.1 ], !dbg !64
  %v_local.sroa.0.2.vec.insert936 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert874, half %247, i64 1, !dbg !229
  br i1 %cmp336.1, label %if.then337.2.3.1, label %if.end362.2.3.1, !dbg !224

if.then337.2.3.1:                                 ; preds = %if.end362.1.3.1
  %248 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %249 = getelementptr inbounds i8, ptr addrspace(4) %248, i64 %.idx.1, !dbg !225
  %arrayidx359.2.3.1 = getelementptr inbounds i8, ptr addrspace(4) %249, i64 352, !dbg !225
  %condval_2.sroa.0.0.copyload.2.3.12303 = load half, ptr addrspace(4) %arrayidx359.2.3.1, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.3.1, !dbg !228

if.end362.2.3.1:                                  ; preds = %if.then337.2.3.1, %if.end362.1.3.1
  %250 = phi half [ %condval_2.sroa.0.0.copyload.2.3.12303, %if.then337.2.3.1 ], [ 0xH0000, %if.end362.1.3.1 ], !dbg !64
  %v_local.sroa.0.4.vec.insert998 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert936, half %250, i64 2, !dbg !229
  br i1 %cmp336.1, label %if.then337.3.3.1, label %if.end362.3.3.1, !dbg !224

if.then337.3.3.1:                                 ; preds = %if.end362.2.3.1
  %251 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %252 = getelementptr inbounds i8, ptr addrspace(4) %251, i64 %.idx.1, !dbg !225
  %arrayidx359.3.3.1 = getelementptr inbounds i8, ptr addrspace(4) %252, i64 480, !dbg !225
  %condval_2.sroa.0.0.copyload.3.3.12304 = load half, ptr addrspace(4) %arrayidx359.3.3.1, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.3.1, !dbg !228

if.end362.3.3.1:                                  ; preds = %if.then337.3.3.1, %if.end362.2.3.1
  %253 = phi half [ %condval_2.sroa.0.0.copyload.3.3.12304, %if.then337.3.3.1 ], [ 0xH0000, %if.end362.2.3.1 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1060 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert998, half %253, i64 3, !dbg !229
  %254 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1060, <4 x half> %__1.sroa.0.6.vec.insert.1, <4 x float> %output_acc.sroa.290.2), !dbg !230
  br label %if.end381.1, !dbg !231

if.end381.1:                                      ; preds = %if.end362.3.3.1, %if.end381
  %output_acc.sroa.290.3 = phi <4 x float> [ %output_acc.sroa.290.1, %if.end381 ], [ %254, %if.end362.3.3.1 ], !dbg !64
  %output_acc.sroa.194.3 = phi <4 x float> [ %output_acc.sroa.194.1, %if.end381 ], [ %240, %if.end362.3.3.1 ], !dbg !64
  %output_acc.sroa.98.3 = phi <4 x float> [ %output_acc.sroa.98.1, %if.end381 ], [ %226, %if.end362.3.3.1 ], !dbg !64
  %output_acc.sroa.0.3 = phi <4 x float> [ %output_acc.sroa.0.1, %if.end381 ], [ %212, %if.end362.3.3.1 ], !dbg !64
  %normalizer.sroa.0.2.1 = phi float [ %normalizer.sroa.0.2, %if.end381 ], [ %normalizer.sroa.0.1.1, %if.end362.3.3.1 ], !dbg !64
  %denominator.sroa.0.2.1 = phi float [ %denominator.sroa.0.2, %if.end381 ], [ %add290.1, %if.end362.3.3.1 ], !dbg !64
  %255 = or disjoint i64 %19, 2, !dbg !232
  %arrayidx45.2 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %255, !dbg !47
  %256 = load i32, ptr addrspace(1) %arrayidx45.2, align 4, !dbg !47, !tbaa !30
  %mul46.2 = shl nsw i32 %256, 4, !dbg !48
  %cmp47.2 = icmp slt i32 %256, 0, !dbg !49
  %cmp49.not.2 = icmp sgt i32 %mul46.2, %1
  %or.cond.2 = select i1 %cmp47.2, i1 true, i1 %cmp49.not.2, !dbg !50
  br i1 %or.cond.2, label %if.end381.2, label %if.then.2, !dbg !50

if.then.2:                                        ; preds = %if.end381.1
  fence syncscope("warp") release, !dbg !51
  tail call void @llvm.mxc.barrier.warp(), !dbg !57
  fence syncscope("warp") acquire, !dbg !58
  %add56.2 = add nuw nsw i32 %mul46.2, %shr55
  %conv66.2 = zext nneg i32 %mul46.2 to i64
  %.idx.2 = shl nuw nsw i64 %conv66.2, 7
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep616, i64 %.idx.2, !dbg !59
  %cmp59.2 = icmp ult i32 %add56.2, 1024, !dbg !60
  br i1 %cmp59.2, label %if.then60.2, label %if.end.2, !dbg !61

if.then60.2:                                      ; preds = %if.then.2
  %gep602.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.2, i64 %mul62
  %condval.sroa.7.0.add.ptr73.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep602.2, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep602.2, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep602.2, i64 4
  %condval.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %gep602.2, align 16, !dbg !62, !tbaa !30
  %condval.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr73.sroa_idx.2, align 4, !dbg !62, !tbaa !30
  %condval.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr73.sroa_idx.2, align 8, !dbg !62, !tbaa !30
  %condval.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr73.sroa_idx.2, align 4, !dbg !62, !tbaa !30
  br label %if.end.2, !dbg !63

if.end.2:                                         ; preds = %if.then60.2, %if.then.2
  %condval.sroa.0.0.2 = phi i32 [ %condval.sroa.0.0.copyload.2, %if.then60.2 ], [ 0, %if.then.2 ], !dbg !64
  %condval.sroa.5.0.2 = phi i32 [ %condval.sroa.5.0.copyload.2, %if.then60.2 ], [ 0, %if.then.2 ], !dbg !64
  %condval.sroa.6.0.2 = phi i32 [ %condval.sroa.6.0.copyload.2, %if.then60.2 ], [ 0, %if.then.2 ], !dbg !64
  %condval.sroa.7.0.2 = phi i32 [ %condval.sroa.7.0.copyload.2, %if.then60.2 ], [ 0, %if.then.2 ], !dbg !64
  %257 = or disjoint i32 %mul97, %mul106, !dbg !65
  %258 = or disjoint i32 %257, %mul116, !dbg !66
  %259 = or disjoint i32 %258, %mul125, !dbg !67
  %add.ptr128.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %259, !dbg !68
  store i32 %condval.sroa.0.0.2, ptr addrspace(3) %add.ptr128.2, align 16, !dbg !69, !tbaa !30
  %condval.sroa.5.0.add.ptr128.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.2, i32 4, !dbg !69
  store i32 %condval.sroa.5.0.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr128.sroa_idx.2, align 4, !dbg !69, !tbaa !30
  %condval.sroa.6.0.add.ptr128.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.2, i32 8, !dbg !69
  store i32 %condval.sroa.6.0.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr128.sroa_idx.2, align 8, !dbg !69, !tbaa !30
  %condval.sroa.7.0.add.ptr128.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.2, i32 12, !dbg !69
  store i32 %condval.sroa.7.0.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr128.sroa_idx.2, align 4, !dbg !69, !tbaa !30
  %cmp59.1.2 = icmp ult i32 %add56.2, 1016, !dbg !60
  br i1 %cmp59.1.2, label %if.then60.1.2, label %if.end.1.2, !dbg !61

if.then60.1.2:                                    ; preds = %if.end.2
  %add65.1.2 = or disjoint i64 %mul62, 512
  %gep602.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.2, i64 %add65.1.2
  %condval.sroa.7.0.add.ptr73.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1.2, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1.2, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1.2, i64 4
  %condval.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %gep602.1.2, align 16, !dbg !62, !tbaa !30
  %condval.sroa.5.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr73.sroa_idx.1.2, align 4, !dbg !62, !tbaa !30
  %condval.sroa.6.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr73.sroa_idx.1.2, align 8, !dbg !62, !tbaa !30
  %condval.sroa.7.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr73.sroa_idx.1.2, align 4, !dbg !62, !tbaa !30
  br label %if.end.1.2, !dbg !63

if.end.1.2:                                       ; preds = %if.then60.1.2, %if.end.2
  %condval.sroa.0.0.1.2 = phi i32 [ %condval.sroa.0.0.copyload.1.2, %if.then60.1.2 ], [ 0, %if.end.2 ], !dbg !64
  %condval.sroa.5.0.1.2 = phi i32 [ %condval.sroa.5.0.copyload.1.2, %if.then60.1.2 ], [ 0, %if.end.2 ], !dbg !64
  %condval.sroa.6.0.1.2 = phi i32 [ %condval.sroa.6.0.copyload.1.2, %if.then60.1.2 ], [ 0, %if.end.2 ], !dbg !64
  %condval.sroa.7.0.1.2 = phi i32 [ %condval.sroa.7.0.copyload.1.2, %if.then60.1.2 ], [ 0, %if.end.2 ], !dbg !64
  %260 = add nuw nsw i32 %mul97, 512, !dbg !70
  %261 = or disjoint i32 %260, %mul106, !dbg !65
  %262 = or disjoint i32 %261, %mul116, !dbg !66
  %263 = or disjoint i32 %262, %mul125, !dbg !67
  %add.ptr128.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %263, !dbg !68
  store i32 %condval.sroa.0.0.1.2, ptr addrspace(3) %add.ptr128.1.2, align 16, !dbg !69, !tbaa !30
  %condval.sroa.5.0.add.ptr128.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1.2, i32 4, !dbg !69
  store i32 %condval.sroa.5.0.1.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr128.sroa_idx.1.2, align 4, !dbg !69, !tbaa !30
  %condval.sroa.6.0.add.ptr128.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1.2, i32 8, !dbg !69
  store i32 %condval.sroa.6.0.1.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr128.sroa_idx.1.2, align 8, !dbg !69, !tbaa !30
  %condval.sroa.7.0.add.ptr128.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1.2, i32 12, !dbg !69
  store i32 %condval.sroa.7.0.1.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr128.sroa_idx.1.2, align 4, !dbg !69, !tbaa !30
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %and148.2724 = shl nuw nsw i32 %3, 5, !dbg !76
  %mul149.2725 = and i32 %and148.2724, 32, !dbg !76
  %and156.2726 = shl nuw nsw i32 %and152, 4, !dbg !77
  %mul157.2727 = and i32 %and156.2726, 16, !dbg !77
  %add166.2728 = or disjoint i32 %add158, %mul157.2727, !dbg !78
  %add171.2729 = or disjoint i32 %add166.2728, %mul149.2725, !dbg !79
  %add.ptr173.2730 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.2729, !dbg !80
  %k_local.sroa.0.0.copyload.2731 = load <4 x half>, ptr addrspace(3) %add.ptr173.2730, align 8, !dbg !81
  %264 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2731, <4 x half> %5, <4 x float> zeroinitializer), !dbg !82, !call_argsrelate !83
  %add155.1.2 = shl nuw nsw i32 %and152, 4, !dbg !77
  %265 = and i32 %add155.1.2, 16, !dbg !77
  %266 = or disjoint i32 %265, %add158, !dbg !78
  %267 = or disjoint i32 %266, %mul149.2725, !dbg !79
  %add171.1.2 = xor i32 %267, 16, !dbg !79
  %add.ptr173.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.1.2, !dbg !80
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr173.1.2, align 8, !dbg !81
  %268 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %7, <4 x float> %264), !dbg !82, !call_argsrelate !83
  %add147.2.2 = shl nuw nsw i32 %3, 5, !dbg !76
  %269 = and i32 %add147.2.2, 32, !dbg !76
  %mul149.2.2 = xor i32 %269, 32, !dbg !76
  %add155.2.2 = shl nuw nsw i32 %and152, 4, !dbg !77
  %mul157.2.2 = and i32 %add155.2.2, 16, !dbg !77
  %add166.2.2 = or disjoint i32 %add158, %mul157.2.2, !dbg !78
  %add171.2.2 = or disjoint i32 %add166.2.2, %mul149.2.2, !dbg !79
  %add.ptr173.2.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.2.2, !dbg !80
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %add.ptr173.2.2, align 8, !dbg !81
  %270 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %9, <4 x float> %268), !dbg !82, !call_argsrelate !83
  %add155.3.2 = shl nuw nsw i32 %and152, 4, !dbg !77
  %271 = and i32 %add155.3.2, 16, !dbg !77
  %272 = or disjoint i32 %271, %add158, !dbg !78
  %273 = or disjoint i32 %272, %mul149.2.2, !dbg !79
  %add171.3.2 = xor i32 %273, 16, !dbg !79
  %add.ptr173.3.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.3.2, !dbg !80
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %add.ptr173.3.2, align 8, !dbg !81
  %274 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %11, <4 x float> %270), !dbg !82, !call_argsrelate !83
  %add195.2 = add nuw nsw i32 %mul46.2, %mul14
  %cmp198.not.2732 = icmp sgt i32 %add195.2, %1, !dbg !84
  %scores.sroa.0.0.vec.extract1149 = extractelement <4 x float> %274, i64 0
  %spec.select2402 = select i1 %cmp198.not.2732, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1149, !dbg !85
  %cmp198.not.1.2.not = icmp slt i32 %add195.2, %1, !dbg !84
  %scores.sroa.0.4.vec.extract1296 = extractelement <4 x float> %274, i64 1, !dbg !85
  %condval_1.0.1.2 = select i1 %cmp198.not.1.2.not, float %scores.sroa.0.4.vec.extract1296, float 0xFFF0000000000000, !dbg !85
  %add196.2.2 = or disjoint i32 %add195.2, 2, !dbg !86
  %cmp198.not.2.2 = icmp sgt i32 %add196.2.2, %1, !dbg !84
  %scores.sroa.0.8.vec.extract1421 = extractelement <4 x float> %274, i64 2, !dbg !85
  %condval_1.0.2.2 = select i1 %cmp198.not.2.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1421, !dbg !85
  %add196.3.2 = or disjoint i32 %add195.2, 3, !dbg !86
  %cmp198.not.3.2 = icmp sgt i32 %add196.3.2, %1, !dbg !84
  %scores.sroa.0.12.vec.extract1546 = extractelement <4 x float> %274, i64 3, !dbg !85
  %condval_1.0.3.2 = select i1 %cmp198.not.3.2, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1546, !dbg !85
  %275 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2402, float 0xFFF0000000000000), !dbg !87
  %276 = tail call contract noundef float @llvm.maxnum.f32(float %275, float %condval_1.0.1.2), !dbg !87
  %277 = tail call contract noundef float @llvm.maxnum.f32(float %276, float %condval_1.0.2.2), !dbg !87
  %278 = tail call contract noundef float @llvm.maxnum.f32(float %277, float %condval_1.0.3.2), !dbg !87
  %279 = bitcast float %278 to i32, !dbg !91
  %280 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %281 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %280) #11, !dbg !105
  %xor.i.i.i.2 = xor i32 %281, 32, !dbg !106
  %282 = and i32 %281, -64, !dbg !107
  %and.i.i.i.2 = add nsw i32 %282, 64, !dbg !107
  %cmp.not.i.i.i.2 = icmp slt i32 %xor.i.i.i.2, %and.i.i.i.2, !dbg !108
  %cond.i.i.i.2 = select i1 %cmp.not.i.i.i.2, i32 %xor.i.i.i.2, i32 %281, !dbg !109
  %shl.i.i.i.2 = shl i32 %cond.i.i.i.2, 2, !dbg !110
  %283 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.2, i32 %279), !dbg !111
  %284 = bitcast i32 %283 to float, !dbg !112
  %285 = tail call contract noundef float @llvm.maxnum.f32(float %278, float %284), !dbg !113
  %286 = bitcast float %285 to i32, !dbg !121
  %287 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !126
  %288 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %287) #11, !dbg !129
  %xor.i.i.i.i.2 = xor i32 %288, 16, !dbg !130
  %289 = and i32 %288, -64, !dbg !131
  %and.i.i.i.i.2 = add nsw i32 %289, 64, !dbg !131
  %cmp.not.i.i.i.i.2 = icmp slt i32 %xor.i.i.i.i.2, %and.i.i.i.i.2, !dbg !132
  %cond.i.i.i.i.2 = select i1 %cmp.not.i.i.i.i.2, i32 %xor.i.i.i.i.2, i32 %288, !dbg !133
  %shl.i.i.i.i.2 = shl i32 %cond.i.i.i.i.2, 2, !dbg !134
  %290 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.2, i32 %286), !dbg !135
  %291 = bitcast i32 %290 to float, !dbg !136
  %292 = tail call contract noundef float @llvm.maxnum.f32(float %285, float %291), !dbg !137
  %sub.2 = fsub contract float %292, %normalizer.sroa.0.2.1, !dbg !141
  %mul234.2 = fmul contract float %sub.2, 0x3FC7154760000000, !dbg !142
  %cmp235.2 = fcmp contract ogt float %mul234.2, 7.000000e+00, !dbg !143
  %sub239.2 = fsub contract float %normalizer.sroa.0.2.1, %292
  %mul240.2 = fmul contract float %sub239.2, 0x3FC7154760000000
  %cmp.i.i.2 = fcmp contract olt float %mul240.2, -1.260000e+02
  %cond.i.i.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00
  %add.i.i.2 = fadd contract float %mul240.2, %cond.i.i.2
  %293 = tail call contract float @llvm.exp2.f32(float %add.i.i.2)
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %293
  %normalizer.sroa.0.1.2 = select i1 %cmp235.2, float %292, float %normalizer.sroa.0.2.1, !dbg !144
  %sub255.2736 = fsub contract float %spec.select2402, %normalizer.sroa.0.1.2, !dbg !145
  %mul256.2737 = fmul contract float %sub255.2736, 0x3FC7154760000000, !dbg !146
  %add257.2738 = fadd contract float %mul256.2737, 8.000000e+00, !dbg !147
  %cmp.i.i559.2739 = fcmp contract olt float %add257.2738, -1.260000e+02, !dbg !148
  %cond.i.i560.2740 = select contract i1 %cmp.i.i559.2739, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.2741 = fadd contract float %add257.2738, %cond.i.i560.2740, !dbg !148
  %294 = tail call contract float @llvm.exp2.f32(float %add.i.i561.2741), !dbg !148
  %cond2.i.i562.2742 = select contract i1 %cmp.i.i559.2739, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.2743 = fmul contract float %cond2.i.i562.2742, %294, !dbg !148
  %sub255.1.2 = fsub contract float %condval_1.0.1.2, %normalizer.sroa.0.1.2, !dbg !145
  %mul256.1.2 = fmul contract float %sub255.1.2, 0x3FC7154760000000, !dbg !146
  %add257.1.2 = fadd contract float %mul256.1.2, 8.000000e+00, !dbg !147
  %cmp.i.i559.1.2 = fcmp contract olt float %add257.1.2, -1.260000e+02, !dbg !148
  %cond.i.i560.1.2 = select contract i1 %cmp.i.i559.1.2, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.1.2 = fadd contract float %add257.1.2, %cond.i.i560.1.2, !dbg !148
  %295 = tail call contract float @llvm.exp2.f32(float %add.i.i561.1.2), !dbg !148
  %cond2.i.i562.1.2 = select contract i1 %cmp.i.i559.1.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.1.2 = fmul contract float %cond2.i.i562.1.2, %295, !dbg !148
  %sub255.2.2 = fsub contract float %condval_1.0.2.2, %normalizer.sroa.0.1.2, !dbg !145
  %mul256.2.2 = fmul contract float %sub255.2.2, 0x3FC7154760000000, !dbg !146
  %add257.2.2 = fadd contract float %mul256.2.2, 8.000000e+00, !dbg !147
  %cmp.i.i559.2.2 = fcmp contract olt float %add257.2.2, -1.260000e+02, !dbg !148
  %cond.i.i560.2.2 = select contract i1 %cmp.i.i559.2.2, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.2.2 = fadd contract float %add257.2.2, %cond.i.i560.2.2, !dbg !148
  %296 = tail call contract float @llvm.exp2.f32(float %add.i.i561.2.2), !dbg !148
  %cond2.i.i562.2.2 = select contract i1 %cmp.i.i559.2.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.2.2 = fmul contract float %cond2.i.i562.2.2, %296, !dbg !148
  %sub255.3.2 = fsub contract float %condval_1.0.3.2, %normalizer.sroa.0.1.2, !dbg !145
  %mul256.3.2 = fmul contract float %sub255.3.2, 0x3FC7154760000000, !dbg !146
  %add257.3.2 = fadd contract float %mul256.3.2, 8.000000e+00, !dbg !147
  %cmp.i.i559.3.2 = fcmp contract olt float %add257.3.2, -1.260000e+02, !dbg !148
  %cond.i.i560.3.2 = select contract i1 %cmp.i.i559.3.2, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.3.2 = fadd contract float %add257.3.2, %cond.i.i560.3.2, !dbg !148
  %297 = tail call contract float @llvm.exp2.f32(float %add.i.i561.3.2), !dbg !148
  %cond2.i.i562.3.2 = select contract i1 %cmp.i.i559.3.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.3.2 = fmul contract float %cond2.i.i562.3.2, %297, !dbg !148
  %add272.2744 = fadd contract float %mul.i.i563.2743, 0.000000e+00, !dbg !151
  %add272.1.2 = fadd contract float %add272.2744, %mul.i.i563.1.2, !dbg !151
  %add272.2.2 = fadd contract float %add272.1.2, %mul.i.i563.2.2, !dbg !151
  %add272.3.2 = fadd contract float %add272.2.2, %mul.i.i563.3.2, !dbg !151
  %rescale.sroa.0.0.2 = select i1 %cmp235.2, float %mul.i.i.2, float 1.000000e+00, !dbg !144
  %298 = bitcast float %add272.3.2 to i32, !dbg !152
  %299 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !157
  %300 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %299) #11, !dbg !160
  %xor.i.i.i564.2 = xor i32 %300, 32, !dbg !161
  %301 = and i32 %300, -64, !dbg !162
  %and.i.i.i565.2 = add nsw i32 %301, 64, !dbg !162
  %cmp.not.i.i.i566.2 = icmp slt i32 %xor.i.i.i564.2, %and.i.i.i565.2, !dbg !163
  %cond.i.i.i567.2 = select i1 %cmp.not.i.i.i566.2, i32 %xor.i.i.i564.2, i32 %300, !dbg !164
  %shl.i.i.i568.2 = shl i32 %cond.i.i.i567.2, 2, !dbg !165
  %302 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i568.2, i32 %298), !dbg !166
  %303 = bitcast i32 %302 to float, !dbg !167
  %add.i.i569.2 = fadd contract float %add272.3.2, %303, !dbg !168
  %304 = bitcast float %add.i.i569.2 to i32, !dbg !171
  %305 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !176
  %306 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %305) #11, !dbg !179
  %xor.i.i.i.i570.2 = xor i32 %306, 16, !dbg !180
  %307 = and i32 %306, -64, !dbg !181
  %and.i.i.i.i571.2 = add nsw i32 %307, 64, !dbg !181
  %cmp.not.i.i.i.i572.2 = icmp slt i32 %xor.i.i.i.i570.2, %and.i.i.i.i571.2, !dbg !182
  %cond.i.i.i.i573.2 = select i1 %cmp.not.i.i.i.i572.2, i32 %xor.i.i.i.i570.2, i32 %306, !dbg !183
  %shl.i.i.i.i574.2 = shl i32 %cond.i.i.i.i573.2, 2, !dbg !184
  %308 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i574.2, i32 %304), !dbg !185
  %309 = bitcast i32 %308 to float, !dbg !186
  %add.i.i.i.2 = fadd contract float %add.i.i569.2, %309, !dbg !187
  %cmp281.2 = fcmp contract une float %rescale.sroa.0.0.2, 1.000000e+00, !dbg !189
  %mul285.2 = fmul contract float %denominator.sroa.0.2.1, %rescale.sroa.0.0.2, !dbg !190
  %denominator.sroa.0.1.2 = select i1 %cmp281.2, float %mul285.2, float %denominator.sroa.0.2.1, !dbg !190
  %add290.2 = fadd contract float %denominator.sroa.0.1.2, %add.i.i.i.2, !dbg !191
  %310 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !192, !noalias !200
  %311 = fptrunc float %mul.i.i563.2743 to half, !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %310), !dbg !192, !noalias !200
  %312 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !205
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !205, !noalias !200
  %313 = fptrunc float %mul.i.i563.1.2 to half, !dbg !205
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %312), !dbg !205, !noalias !200
  %__1.sroa.0.0.vec.insert.2 = insertelement <4 x half> poison, half %311, i64 0, !dbg !207
  %__1.sroa.0.2.vec.insert.2 = insertelement <4 x half> %__1.sroa.0.0.vec.insert.2, half %313, i64 1, !dbg !207
  %314 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !210
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !210, !noalias !214
  %315 = fptrunc float %mul.i.i563.2.2 to half, !dbg !210
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %314), !dbg !210, !noalias !214
  %316 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !219
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !219, !noalias !214
  %317 = fptrunc float %mul.i.i563.3.2 to half, !dbg !219
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %316), !dbg !219, !noalias !214
  %__1.sroa.0.4.vec.insert.2 = insertelement <4 x half> %__1.sroa.0.2.vec.insert.2, half %315, i64 2, !dbg !221
  %__1.sroa.0.6.vec.insert.2 = insertelement <4 x half> %__1.sroa.0.4.vec.insert.2, half %317, i64 3, !dbg !221
  br i1 %cmp281.2, label %for.body312.preheader.2, label %if.end322.2, !dbg !223

for.body312.preheader.2:                          ; preds = %if.end.1.2
  %output_acc.sroa.0.0.vec.extract1633 = extractelement <4 x float> %output_acc.sroa.0.3, i64 0, !dbg !233
  %mul316.2745 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.0.0.vec.extract1633, !dbg !234
  %output_acc.sroa.0.0.vec.insert1635 = insertelement <4 x float> poison, float %mul316.2745, i64 0, !dbg !235
  %output_acc.sroa.0.4.vec.extract1670 = extractelement <4 x float> %output_acc.sroa.0.3, i64 1, !dbg !233
  %mul316.1.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.0.4.vec.extract1670, !dbg !234
  %output_acc.sroa.0.4.vec.insert1672 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert1635, float %mul316.1.2, i64 1, !dbg !235
  %output_acc.sroa.0.8.vec.extract1707 = extractelement <4 x float> %output_acc.sroa.0.3, i64 2, !dbg !233
  %mul316.2.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.0.8.vec.extract1707, !dbg !234
  %output_acc.sroa.0.8.vec.insert1709 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert1672, float %mul316.2.2, i64 2, !dbg !235
  %output_acc.sroa.0.12.vec.extract1744 = extractelement <4 x float> %output_acc.sroa.0.3, i64 3, !dbg !233
  %mul316.3.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.0.12.vec.extract1744, !dbg !234
  %output_acc.sroa.0.12.vec.insert1746 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert1709, float %mul316.3.2, i64 3, !dbg !235
  %output_acc.sroa.98.16.vec.extract1789 = extractelement <4 x float> %output_acc.sroa.98.3, i64 0, !dbg !233
  %mul316.4.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.98.16.vec.extract1789, !dbg !234
  %output_acc.sroa.98.16.vec.insert1791 = insertelement <4 x float> poison, float %mul316.4.2, i64 0, !dbg !235
  %output_acc.sroa.98.20.vec.extract1826 = extractelement <4 x float> %output_acc.sroa.98.3, i64 1, !dbg !233
  %mul316.5.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.98.20.vec.extract1826, !dbg !234
  %output_acc.sroa.98.20.vec.insert1828 = insertelement <4 x float> %output_acc.sroa.98.16.vec.insert1791, float %mul316.5.2, i64 1, !dbg !235
  %output_acc.sroa.98.24.vec.extract1863 = extractelement <4 x float> %output_acc.sroa.98.3, i64 2, !dbg !233
  %mul316.6.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.98.24.vec.extract1863, !dbg !234
  %output_acc.sroa.98.24.vec.insert1865 = insertelement <4 x float> %output_acc.sroa.98.20.vec.insert1828, float %mul316.6.2, i64 2, !dbg !235
  %output_acc.sroa.98.28.vec.extract1900 = extractelement <4 x float> %output_acc.sroa.98.3, i64 3, !dbg !233
  %mul316.7.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.98.28.vec.extract1900, !dbg !234
  %output_acc.sroa.98.28.vec.insert1902 = insertelement <4 x float> %output_acc.sroa.98.24.vec.insert1865, float %mul316.7.2, i64 3, !dbg !235
  %output_acc.sroa.194.32.vec.extract1945 = extractelement <4 x float> %output_acc.sroa.194.3, i64 0, !dbg !233
  %mul316.8.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.194.32.vec.extract1945, !dbg !234
  %output_acc.sroa.194.32.vec.insert1947 = insertelement <4 x float> poison, float %mul316.8.2, i64 0, !dbg !235
  %output_acc.sroa.194.36.vec.extract1982 = extractelement <4 x float> %output_acc.sroa.194.3, i64 1, !dbg !233
  %mul316.9.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.194.36.vec.extract1982, !dbg !234
  %output_acc.sroa.194.36.vec.insert1984 = insertelement <4 x float> %output_acc.sroa.194.32.vec.insert1947, float %mul316.9.2, i64 1, !dbg !235
  %output_acc.sroa.194.40.vec.extract2019 = extractelement <4 x float> %output_acc.sroa.194.3, i64 2, !dbg !233
  %mul316.10.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.194.40.vec.extract2019, !dbg !234
  %output_acc.sroa.194.40.vec.insert2021 = insertelement <4 x float> %output_acc.sroa.194.36.vec.insert1984, float %mul316.10.2, i64 2, !dbg !235
  %output_acc.sroa.194.44.vec.extract2056 = extractelement <4 x float> %output_acc.sroa.194.3, i64 3, !dbg !233
  %mul316.11.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.194.44.vec.extract2056, !dbg !234
  %output_acc.sroa.194.44.vec.insert2058 = insertelement <4 x float> %output_acc.sroa.194.40.vec.insert2021, float %mul316.11.2, i64 3, !dbg !235
  %output_acc.sroa.290.48.vec.extract2101 = extractelement <4 x float> %output_acc.sroa.290.3, i64 0, !dbg !233
  %mul316.12.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.290.48.vec.extract2101, !dbg !234
  %output_acc.sroa.290.48.vec.insert2103 = insertelement <4 x float> poison, float %mul316.12.2, i64 0, !dbg !235
  %output_acc.sroa.290.52.vec.extract2138 = extractelement <4 x float> %output_acc.sroa.290.3, i64 1, !dbg !233
  %mul316.13.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.290.52.vec.extract2138, !dbg !234
  %output_acc.sroa.290.52.vec.insert2140 = insertelement <4 x float> %output_acc.sroa.290.48.vec.insert2103, float %mul316.13.2, i64 1, !dbg !235
  %output_acc.sroa.290.56.vec.extract2175 = extractelement <4 x float> %output_acc.sroa.290.3, i64 2, !dbg !233
  %mul316.14.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.290.56.vec.extract2175, !dbg !234
  %output_acc.sroa.290.56.vec.insert2177 = insertelement <4 x float> %output_acc.sroa.290.52.vec.insert2140, float %mul316.14.2, i64 2, !dbg !235
  %output_acc.sroa.290.60.vec.extract2212 = extractelement <4 x float> %output_acc.sroa.290.3, i64 3, !dbg !233
  %mul316.15.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.290.60.vec.extract2212, !dbg !234
  %output_acc.sroa.290.60.vec.insert2214 = insertelement <4 x float> %output_acc.sroa.290.56.vec.insert2177, float %mul316.15.2, i64 3, !dbg !235
  br label %if.end322.2

if.end322.2:                                      ; preds = %for.body312.preheader.2, %if.end.1.2
  %output_acc.sroa.290.4 = phi <4 x float> [ %output_acc.sroa.290.60.vec.insert2214, %for.body312.preheader.2 ], [ %output_acc.sroa.290.3, %if.end.1.2 ], !dbg !64
  %output_acc.sroa.194.4 = phi <4 x float> [ %output_acc.sroa.194.44.vec.insert2058, %for.body312.preheader.2 ], [ %output_acc.sroa.194.3, %if.end.1.2 ], !dbg !64
  %output_acc.sroa.98.4 = phi <4 x float> [ %output_acc.sroa.98.28.vec.insert1902, %for.body312.preheader.2 ], [ %output_acc.sroa.98.3, %if.end.1.2 ], !dbg !64
  %output_acc.sroa.0.4 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1746, %for.body312.preheader.2 ], [ %output_acc.sroa.0.3, %if.end.1.2 ], !dbg !64
  %shr334.2 = lshr exact i32 %mul46.2, 2
  %add335.2 = add nuw nsw i32 %shr334.2, %shr332
  %cmp336.2 = icmp ult i32 %add335.2, 256
  br i1 %cmp336.2, label %if.then337.2749, label %if.end362.2751, !dbg !224

if.then337.2749:                                  ; preds = %if.end322.2
  %318 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %319 = getelementptr inbounds i8, ptr addrspace(4) %318, i64 %.idx.2, !dbg !225
  %condval_2.sroa.0.0.copyload.27482305 = load half, ptr addrspace(4) %319, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2751, !dbg !228

if.end362.2751:                                   ; preds = %if.then337.2749, %if.end322.2
  %320 = phi half [ %condval_2.sroa.0.0.copyload.27482305, %if.then337.2749 ], [ 0xH0000, %if.end322.2 ], !dbg !64
  %v_local.sroa.0.0.vec.insert876 = insertelement <4 x half> poison, half %320, i64 0, !dbg !229
  br i1 %cmp336.2, label %if.then337.1.2755, label %if.end362.1.2758, !dbg !224

if.then337.1.2755:                                ; preds = %if.end362.2751
  %321 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %322 = getelementptr inbounds i8, ptr addrspace(4) %321, i64 %.idx.2, !dbg !225
  %arrayidx359.1.2753 = getelementptr inbounds i8, ptr addrspace(4) %322, i64 128, !dbg !225
  %condval_2.sroa.0.0.copyload.1.27542306 = load half, ptr addrspace(4) %arrayidx359.1.2753, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.2758, !dbg !228

if.end362.1.2758:                                 ; preds = %if.then337.1.2755, %if.end362.2751
  %323 = phi half [ %condval_2.sroa.0.0.copyload.1.27542306, %if.then337.1.2755 ], [ 0xH0000, %if.end362.2751 ], !dbg !64
  %v_local.sroa.0.2.vec.insert938 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert876, half %323, i64 1, !dbg !229
  br i1 %cmp336.2, label %if.then337.2.2762, label %if.end362.2.2765, !dbg !224

if.then337.2.2762:                                ; preds = %if.end362.1.2758
  %324 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %325 = getelementptr inbounds i8, ptr addrspace(4) %324, i64 %.idx.2, !dbg !225
  %arrayidx359.2.2760 = getelementptr inbounds i8, ptr addrspace(4) %325, i64 256, !dbg !225
  %condval_2.sroa.0.0.copyload.2.27612307 = load half, ptr addrspace(4) %arrayidx359.2.2760, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.2765, !dbg !228

if.end362.2.2765:                                 ; preds = %if.then337.2.2762, %if.end362.1.2758
  %326 = phi half [ %condval_2.sroa.0.0.copyload.2.27612307, %if.then337.2.2762 ], [ 0xH0000, %if.end362.1.2758 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1000 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert938, half %326, i64 2, !dbg !229
  br i1 %cmp336.2, label %if.then337.3.2769, label %if.end362.3.2772, !dbg !224

if.then337.3.2769:                                ; preds = %if.end362.2.2765
  %327 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %328 = getelementptr inbounds i8, ptr addrspace(4) %327, i64 %.idx.2, !dbg !225
  %arrayidx359.3.2767 = getelementptr inbounds i8, ptr addrspace(4) %328, i64 384, !dbg !225
  %condval_2.sroa.0.0.copyload.3.27682308 = load half, ptr addrspace(4) %arrayidx359.3.2767, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.2772, !dbg !228

if.end362.3.2772:                                 ; preds = %if.then337.3.2769, %if.end362.2.2765
  %329 = phi half [ %condval_2.sroa.0.0.copyload.3.27682308, %if.then337.3.2769 ], [ 0xH0000, %if.end362.2.2765 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1062 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1000, half %329, i64 3, !dbg !229
  %330 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1062, <4 x half> %__1.sroa.0.6.vec.insert.2, <4 x float> %output_acc.sroa.0.4), !dbg !230
  br i1 %cmp336.2, label %if.then337.1641.2, label %if.end362.1643.2, !dbg !224

if.then337.1641.2:                                ; preds = %if.end362.3.2772
  %331 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %332 = getelementptr inbounds i8, ptr addrspace(4) %331, i64 %.idx.2, !dbg !225
  %333 = getelementptr inbounds i8, ptr addrspace(4) %332, i64 32, !dbg !225
  %condval_2.sroa.0.0.copyload.1640.22309 = load half, ptr addrspace(4) %333, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1643.2, !dbg !228

if.end362.1643.2:                                 ; preds = %if.then337.1641.2, %if.end362.3.2772
  %334 = phi half [ %condval_2.sroa.0.0.copyload.1640.22309, %if.then337.1641.2 ], [ 0xH0000, %if.end362.3.2772 ], !dbg !64
  %v_local.sroa.0.0.vec.insert878 = insertelement <4 x half> poison, half %334, i64 0, !dbg !229
  br i1 %cmp336.2, label %if.then337.1.1.2, label %if.end362.1.1.2, !dbg !224

if.then337.1.1.2:                                 ; preds = %if.end362.1643.2
  %335 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %336 = getelementptr inbounds i8, ptr addrspace(4) %335, i64 %.idx.2, !dbg !225
  %arrayidx359.1.1.2 = getelementptr inbounds i8, ptr addrspace(4) %336, i64 160, !dbg !225
  %condval_2.sroa.0.0.copyload.1.1.22310 = load half, ptr addrspace(4) %arrayidx359.1.1.2, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.1.2, !dbg !228

if.end362.1.1.2:                                  ; preds = %if.then337.1.1.2, %if.end362.1643.2
  %337 = phi half [ %condval_2.sroa.0.0.copyload.1.1.22310, %if.then337.1.1.2 ], [ 0xH0000, %if.end362.1643.2 ], !dbg !64
  %v_local.sroa.0.2.vec.insert940 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert878, half %337, i64 1, !dbg !229
  br i1 %cmp336.2, label %if.then337.2.1.2, label %if.end362.2.1.2, !dbg !224

if.then337.2.1.2:                                 ; preds = %if.end362.1.1.2
  %338 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %339 = getelementptr inbounds i8, ptr addrspace(4) %338, i64 %.idx.2, !dbg !225
  %arrayidx359.2.1.2 = getelementptr inbounds i8, ptr addrspace(4) %339, i64 288, !dbg !225
  %condval_2.sroa.0.0.copyload.2.1.22311 = load half, ptr addrspace(4) %arrayidx359.2.1.2, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.1.2, !dbg !228

if.end362.2.1.2:                                  ; preds = %if.then337.2.1.2, %if.end362.1.1.2
  %340 = phi half [ %condval_2.sroa.0.0.copyload.2.1.22311, %if.then337.2.1.2 ], [ 0xH0000, %if.end362.1.1.2 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1002 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert940, half %340, i64 2, !dbg !229
  br i1 %cmp336.2, label %if.then337.3.1.2, label %if.end362.3.1.2, !dbg !224

if.then337.3.1.2:                                 ; preds = %if.end362.2.1.2
  %341 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %342 = getelementptr inbounds i8, ptr addrspace(4) %341, i64 %.idx.2, !dbg !225
  %arrayidx359.3.1.2 = getelementptr inbounds i8, ptr addrspace(4) %342, i64 416, !dbg !225
  %condval_2.sroa.0.0.copyload.3.1.22312 = load half, ptr addrspace(4) %arrayidx359.3.1.2, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.1.2, !dbg !228

if.end362.3.1.2:                                  ; preds = %if.then337.3.1.2, %if.end362.2.1.2
  %343 = phi half [ %condval_2.sroa.0.0.copyload.3.1.22312, %if.then337.3.1.2 ], [ 0xH0000, %if.end362.2.1.2 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1064 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1002, half %343, i64 3, !dbg !229
  %344 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1064, <4 x half> %__1.sroa.0.6.vec.insert.2, <4 x float> %output_acc.sroa.98.4), !dbg !230
  br i1 %cmp336.2, label %if.then337.2646.2, label %if.end362.2648.2, !dbg !224

if.then337.2646.2:                                ; preds = %if.end362.3.1.2
  %345 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %346 = getelementptr inbounds i8, ptr addrspace(4) %345, i64 %.idx.2, !dbg !225
  %347 = getelementptr inbounds i8, ptr addrspace(4) %346, i64 64, !dbg !225
  %condval_2.sroa.0.0.copyload.2645.22313 = load half, ptr addrspace(4) %347, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2648.2, !dbg !228

if.end362.2648.2:                                 ; preds = %if.then337.2646.2, %if.end362.3.1.2
  %348 = phi half [ %condval_2.sroa.0.0.copyload.2645.22313, %if.then337.2646.2 ], [ 0xH0000, %if.end362.3.1.2 ], !dbg !64
  %v_local.sroa.0.0.vec.insert880 = insertelement <4 x half> poison, half %348, i64 0, !dbg !229
  br i1 %cmp336.2, label %if.then337.1.2.2, label %if.end362.1.2.2, !dbg !224

if.then337.1.2.2:                                 ; preds = %if.end362.2648.2
  %349 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %350 = getelementptr inbounds i8, ptr addrspace(4) %349, i64 %.idx.2, !dbg !225
  %arrayidx359.1.2.2 = getelementptr inbounds i8, ptr addrspace(4) %350, i64 192, !dbg !225
  %condval_2.sroa.0.0.copyload.1.2.22314 = load half, ptr addrspace(4) %arrayidx359.1.2.2, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.2.2, !dbg !228

if.end362.1.2.2:                                  ; preds = %if.then337.1.2.2, %if.end362.2648.2
  %351 = phi half [ %condval_2.sroa.0.0.copyload.1.2.22314, %if.then337.1.2.2 ], [ 0xH0000, %if.end362.2648.2 ], !dbg !64
  %v_local.sroa.0.2.vec.insert942 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert880, half %351, i64 1, !dbg !229
  br i1 %cmp336.2, label %if.then337.2.2.2, label %if.end362.2.2.2, !dbg !224

if.then337.2.2.2:                                 ; preds = %if.end362.1.2.2
  %352 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %353 = getelementptr inbounds i8, ptr addrspace(4) %352, i64 %.idx.2, !dbg !225
  %arrayidx359.2.2.2 = getelementptr inbounds i8, ptr addrspace(4) %353, i64 320, !dbg !225
  %condval_2.sroa.0.0.copyload.2.2.22315 = load half, ptr addrspace(4) %arrayidx359.2.2.2, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.2.2, !dbg !228

if.end362.2.2.2:                                  ; preds = %if.then337.2.2.2, %if.end362.1.2.2
  %354 = phi half [ %condval_2.sroa.0.0.copyload.2.2.22315, %if.then337.2.2.2 ], [ 0xH0000, %if.end362.1.2.2 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1004 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert942, half %354, i64 2, !dbg !229
  br i1 %cmp336.2, label %if.then337.3.2.2, label %if.end362.3.2.2, !dbg !224

if.then337.3.2.2:                                 ; preds = %if.end362.2.2.2
  %355 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %356 = getelementptr inbounds i8, ptr addrspace(4) %355, i64 %.idx.2, !dbg !225
  %arrayidx359.3.2.2 = getelementptr inbounds i8, ptr addrspace(4) %356, i64 448, !dbg !225
  %condval_2.sroa.0.0.copyload.3.2.22316 = load half, ptr addrspace(4) %arrayidx359.3.2.2, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.2.2, !dbg !228

if.end362.3.2.2:                                  ; preds = %if.then337.3.2.2, %if.end362.2.2.2
  %357 = phi half [ %condval_2.sroa.0.0.copyload.3.2.22316, %if.then337.3.2.2 ], [ 0xH0000, %if.end362.2.2.2 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1066 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1004, half %357, i64 3, !dbg !229
  %358 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1066, <4 x half> %__1.sroa.0.6.vec.insert.2, <4 x float> %output_acc.sroa.194.4), !dbg !230
  br i1 %cmp336.2, label %if.then337.3651.2, label %if.end362.3653.2, !dbg !224

if.then337.3651.2:                                ; preds = %if.end362.3.2.2
  %359 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %360 = getelementptr inbounds i8, ptr addrspace(4) %359, i64 %.idx.2, !dbg !225
  %361 = getelementptr inbounds i8, ptr addrspace(4) %360, i64 96, !dbg !225
  %condval_2.sroa.0.0.copyload.3650.22317 = load half, ptr addrspace(4) %361, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3653.2, !dbg !228

if.end362.3653.2:                                 ; preds = %if.then337.3651.2, %if.end362.3.2.2
  %362 = phi half [ %condval_2.sroa.0.0.copyload.3650.22317, %if.then337.3651.2 ], [ 0xH0000, %if.end362.3.2.2 ], !dbg !64
  %v_local.sroa.0.0.vec.insert882 = insertelement <4 x half> poison, half %362, i64 0, !dbg !229
  br i1 %cmp336.2, label %if.then337.1.3.2, label %if.end362.1.3.2, !dbg !224

if.then337.1.3.2:                                 ; preds = %if.end362.3653.2
  %363 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %364 = getelementptr inbounds i8, ptr addrspace(4) %363, i64 %.idx.2, !dbg !225
  %arrayidx359.1.3.2 = getelementptr inbounds i8, ptr addrspace(4) %364, i64 224, !dbg !225
  %condval_2.sroa.0.0.copyload.1.3.22318 = load half, ptr addrspace(4) %arrayidx359.1.3.2, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.3.2, !dbg !228

if.end362.1.3.2:                                  ; preds = %if.then337.1.3.2, %if.end362.3653.2
  %365 = phi half [ %condval_2.sroa.0.0.copyload.1.3.22318, %if.then337.1.3.2 ], [ 0xH0000, %if.end362.3653.2 ], !dbg !64
  %v_local.sroa.0.2.vec.insert944 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert882, half %365, i64 1, !dbg !229
  br i1 %cmp336.2, label %if.then337.2.3.2, label %if.end362.2.3.2, !dbg !224

if.then337.2.3.2:                                 ; preds = %if.end362.1.3.2
  %366 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %367 = getelementptr inbounds i8, ptr addrspace(4) %366, i64 %.idx.2, !dbg !225
  %arrayidx359.2.3.2 = getelementptr inbounds i8, ptr addrspace(4) %367, i64 352, !dbg !225
  %condval_2.sroa.0.0.copyload.2.3.22319 = load half, ptr addrspace(4) %arrayidx359.2.3.2, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.3.2, !dbg !228

if.end362.2.3.2:                                  ; preds = %if.then337.2.3.2, %if.end362.1.3.2
  %368 = phi half [ %condval_2.sroa.0.0.copyload.2.3.22319, %if.then337.2.3.2 ], [ 0xH0000, %if.end362.1.3.2 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1006 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert944, half %368, i64 2, !dbg !229
  br i1 %cmp336.2, label %if.then337.3.3.2, label %if.end362.3.3.2, !dbg !224

if.then337.3.3.2:                                 ; preds = %if.end362.2.3.2
  %369 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %370 = getelementptr inbounds i8, ptr addrspace(4) %369, i64 %.idx.2, !dbg !225
  %arrayidx359.3.3.2 = getelementptr inbounds i8, ptr addrspace(4) %370, i64 480, !dbg !225
  %condval_2.sroa.0.0.copyload.3.3.22320 = load half, ptr addrspace(4) %arrayidx359.3.3.2, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.3.2, !dbg !228

if.end362.3.3.2:                                  ; preds = %if.then337.3.3.2, %if.end362.2.3.2
  %371 = phi half [ %condval_2.sroa.0.0.copyload.3.3.22320, %if.then337.3.3.2 ], [ 0xH0000, %if.end362.2.3.2 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1068 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1006, half %371, i64 3, !dbg !229
  %372 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1068, <4 x half> %__1.sroa.0.6.vec.insert.2, <4 x float> %output_acc.sroa.290.4), !dbg !230
  br label %if.end381.2, !dbg !231

if.end381.2:                                      ; preds = %if.end362.3.3.2, %if.end381.1
  %output_acc.sroa.290.5 = phi <4 x float> [ %output_acc.sroa.290.3, %if.end381.1 ], [ %372, %if.end362.3.3.2 ], !dbg !64
  %output_acc.sroa.194.5 = phi <4 x float> [ %output_acc.sroa.194.3, %if.end381.1 ], [ %358, %if.end362.3.3.2 ], !dbg !64
  %output_acc.sroa.98.5 = phi <4 x float> [ %output_acc.sroa.98.3, %if.end381.1 ], [ %344, %if.end362.3.3.2 ], !dbg !64
  %output_acc.sroa.0.5 = phi <4 x float> [ %output_acc.sroa.0.3, %if.end381.1 ], [ %330, %if.end362.3.3.2 ], !dbg !64
  %normalizer.sroa.0.2.2 = phi float [ %normalizer.sroa.0.2.1, %if.end381.1 ], [ %normalizer.sroa.0.1.2, %if.end362.3.3.2 ], !dbg !64
  %denominator.sroa.0.2.2 = phi float [ %denominator.sroa.0.2.1, %if.end381.1 ], [ %add290.2, %if.end362.3.3.2 ], !dbg !64
  %373 = or disjoint i64 %19, 3, !dbg !232
  %arrayidx45.3 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %373, !dbg !47
  %374 = load i32, ptr addrspace(1) %arrayidx45.3, align 4, !dbg !47, !tbaa !30
  %mul46.3 = shl nsw i32 %374, 4, !dbg !48
  %cmp47.3 = icmp slt i32 %374, 0, !dbg !49
  %cmp49.not.3 = icmp sgt i32 %mul46.3, %1
  %or.cond.3 = select i1 %cmp47.3, i1 true, i1 %cmp49.not.3, !dbg !50
  br i1 %or.cond.3, label %if.end381.3, label %if.then.3, !dbg !50

if.then.3:                                        ; preds = %if.end381.2
  fence syncscope("warp") release, !dbg !51
  tail call void @llvm.mxc.barrier.warp(), !dbg !57
  fence syncscope("warp") acquire, !dbg !58
  %add56.3 = add nuw nsw i32 %mul46.3, %shr55
  %conv66.3 = zext nneg i32 %mul46.3 to i64
  %.idx.3 = shl nuw nsw i64 %conv66.3, 7
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep616, i64 %.idx.3, !dbg !59
  %cmp59.3 = icmp ult i32 %add56.3, 1024, !dbg !60
  br i1 %cmp59.3, label %if.then60.3, label %if.end.3, !dbg !61

if.then60.3:                                      ; preds = %if.then.3
  %gep602.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.3, i64 %mul62
  %condval.sroa.7.0.add.ptr73.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep602.3, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep602.3, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep602.3, i64 4
  %condval.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %gep602.3, align 16, !dbg !62, !tbaa !30
  %condval.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr73.sroa_idx.3, align 4, !dbg !62, !tbaa !30
  %condval.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr73.sroa_idx.3, align 8, !dbg !62, !tbaa !30
  %condval.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr73.sroa_idx.3, align 4, !dbg !62, !tbaa !30
  br label %if.end.3, !dbg !63

if.end.3:                                         ; preds = %if.then60.3, %if.then.3
  %condval.sroa.0.0.3 = phi i32 [ %condval.sroa.0.0.copyload.3, %if.then60.3 ], [ 0, %if.then.3 ], !dbg !64
  %condval.sroa.5.0.3 = phi i32 [ %condval.sroa.5.0.copyload.3, %if.then60.3 ], [ 0, %if.then.3 ], !dbg !64
  %condval.sroa.6.0.3 = phi i32 [ %condval.sroa.6.0.copyload.3, %if.then60.3 ], [ 0, %if.then.3 ], !dbg !64
  %condval.sroa.7.0.3 = phi i32 [ %condval.sroa.7.0.copyload.3, %if.then60.3 ], [ 0, %if.then.3 ], !dbg !64
  %375 = or disjoint i32 %mul97, %mul106, !dbg !65
  %376 = or disjoint i32 %375, %mul116, !dbg !66
  %377 = or disjoint i32 %376, %mul125, !dbg !67
  %add.ptr128.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %377, !dbg !68
  store i32 %condval.sroa.0.0.3, ptr addrspace(3) %add.ptr128.3, align 16, !dbg !69, !tbaa !30
  %condval.sroa.5.0.add.ptr128.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.3, i32 4, !dbg !69
  store i32 %condval.sroa.5.0.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr128.sroa_idx.3, align 4, !dbg !69, !tbaa !30
  %condval.sroa.6.0.add.ptr128.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.3, i32 8, !dbg !69
  store i32 %condval.sroa.6.0.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr128.sroa_idx.3, align 8, !dbg !69, !tbaa !30
  %condval.sroa.7.0.add.ptr128.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.3, i32 12, !dbg !69
  store i32 %condval.sroa.7.0.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr128.sroa_idx.3, align 4, !dbg !69, !tbaa !30
  %cmp59.1.3 = icmp ult i32 %add56.3, 1016, !dbg !60
  br i1 %cmp59.1.3, label %if.then60.1.3, label %if.end.1.3, !dbg !61

if.then60.1.3:                                    ; preds = %if.end.3
  %add65.1.3 = or disjoint i64 %mul62, 512
  %gep602.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.3, i64 %add65.1.3
  %condval.sroa.7.0.add.ptr73.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1.3, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1.3, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1.3, i64 4
  %condval.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %gep602.1.3, align 16, !dbg !62, !tbaa !30
  %condval.sroa.5.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr73.sroa_idx.1.3, align 4, !dbg !62, !tbaa !30
  %condval.sroa.6.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr73.sroa_idx.1.3, align 8, !dbg !62, !tbaa !30
  %condval.sroa.7.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr73.sroa_idx.1.3, align 4, !dbg !62, !tbaa !30
  br label %if.end.1.3, !dbg !63

if.end.1.3:                                       ; preds = %if.then60.1.3, %if.end.3
  %condval.sroa.0.0.1.3 = phi i32 [ %condval.sroa.0.0.copyload.1.3, %if.then60.1.3 ], [ 0, %if.end.3 ], !dbg !64
  %condval.sroa.5.0.1.3 = phi i32 [ %condval.sroa.5.0.copyload.1.3, %if.then60.1.3 ], [ 0, %if.end.3 ], !dbg !64
  %condval.sroa.6.0.1.3 = phi i32 [ %condval.sroa.6.0.copyload.1.3, %if.then60.1.3 ], [ 0, %if.end.3 ], !dbg !64
  %condval.sroa.7.0.1.3 = phi i32 [ %condval.sroa.7.0.copyload.1.3, %if.then60.1.3 ], [ 0, %if.end.3 ], !dbg !64
  %378 = add nuw nsw i32 %mul97, 512, !dbg !70
  %379 = or disjoint i32 %378, %mul106, !dbg !65
  %380 = or disjoint i32 %379, %mul116, !dbg !66
  %381 = or disjoint i32 %380, %mul125, !dbg !67
  %add.ptr128.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %381, !dbg !68
  store i32 %condval.sroa.0.0.1.3, ptr addrspace(3) %add.ptr128.1.3, align 16, !dbg !69, !tbaa !30
  %condval.sroa.5.0.add.ptr128.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1.3, i32 4, !dbg !69
  store i32 %condval.sroa.5.0.1.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr128.sroa_idx.1.3, align 4, !dbg !69, !tbaa !30
  %condval.sroa.6.0.add.ptr128.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1.3, i32 8, !dbg !69
  store i32 %condval.sroa.6.0.1.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr128.sroa_idx.1.3, align 8, !dbg !69, !tbaa !30
  %condval.sroa.7.0.add.ptr128.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1.3, i32 12, !dbg !69
  store i32 %condval.sroa.7.0.1.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr128.sroa_idx.1.3, align 4, !dbg !69, !tbaa !30
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %and148.3773 = shl nuw nsw i32 %3, 5, !dbg !76
  %mul149.3774 = and i32 %and148.3773, 32, !dbg !76
  %and156.3775 = shl nuw nsw i32 %and152, 4, !dbg !77
  %mul157.3776 = and i32 %and156.3775, 16, !dbg !77
  %add166.3777 = or disjoint i32 %add158, %mul157.3776, !dbg !78
  %add171.3778 = or disjoint i32 %add166.3777, %mul149.3774, !dbg !79
  %add.ptr173.3779 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.3778, !dbg !80
  %k_local.sroa.0.0.copyload.3780 = load <4 x half>, ptr addrspace(3) %add.ptr173.3779, align 8, !dbg !81
  %382 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3780, <4 x half> %5, <4 x float> zeroinitializer), !dbg !82, !call_argsrelate !83
  %add155.1.3 = shl nuw nsw i32 %and152, 4, !dbg !77
  %383 = and i32 %add155.1.3, 16, !dbg !77
  %384 = or disjoint i32 %383, %add158, !dbg !78
  %385 = or disjoint i32 %384, %mul149.3774, !dbg !79
  %add171.1.3 = xor i32 %385, 16, !dbg !79
  %add.ptr173.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.1.3, !dbg !80
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr173.1.3, align 8, !dbg !81
  %386 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %7, <4 x float> %382), !dbg !82, !call_argsrelate !83
  %add147.2.3 = shl nuw nsw i32 %3, 5, !dbg !76
  %387 = and i32 %add147.2.3, 32, !dbg !76
  %mul149.2.3 = xor i32 %387, 32, !dbg !76
  %add155.2.3 = shl nuw nsw i32 %and152, 4, !dbg !77
  %mul157.2.3 = and i32 %add155.2.3, 16, !dbg !77
  %add166.2.3 = or disjoint i32 %add158, %mul157.2.3, !dbg !78
  %add171.2.3 = or disjoint i32 %add166.2.3, %mul149.2.3, !dbg !79
  %add.ptr173.2.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.2.3, !dbg !80
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %add.ptr173.2.3, align 8, !dbg !81
  %388 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %9, <4 x float> %386), !dbg !82, !call_argsrelate !83
  %add155.3.3 = shl nuw nsw i32 %and152, 4, !dbg !77
  %389 = and i32 %add155.3.3, 16, !dbg !77
  %390 = or disjoint i32 %389, %add158, !dbg !78
  %391 = or disjoint i32 %390, %mul149.2.3, !dbg !79
  %add171.3.3 = xor i32 %391, 16, !dbg !79
  %add.ptr173.3.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.3.3, !dbg !80
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %add.ptr173.3.3, align 8, !dbg !81
  %392 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %11, <4 x float> %388), !dbg !82, !call_argsrelate !83
  %add195.3 = add nuw nsw i32 %mul46.3, %mul14
  %cmp198.not.3781 = icmp sgt i32 %add195.3, %1, !dbg !84
  %scores.sroa.0.0.vec.extract1165 = extractelement <4 x float> %392, i64 0
  %spec.select2403 = select i1 %cmp198.not.3781, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1165, !dbg !85
  %cmp198.not.1.3.not = icmp slt i32 %add195.3, %1, !dbg !84
  %scores.sroa.0.4.vec.extract1308 = extractelement <4 x float> %392, i64 1, !dbg !85
  %condval_1.0.1.3 = select i1 %cmp198.not.1.3.not, float %scores.sroa.0.4.vec.extract1308, float 0xFFF0000000000000, !dbg !85
  %add196.2.3 = or disjoint i32 %add195.3, 2, !dbg !86
  %cmp198.not.2.3 = icmp sgt i32 %add196.2.3, %1, !dbg !84
  %scores.sroa.0.8.vec.extract1433 = extractelement <4 x float> %392, i64 2, !dbg !85
  %condval_1.0.2.3 = select i1 %cmp198.not.2.3, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1433, !dbg !85
  %add196.3.3 = or disjoint i32 %add195.3, 3, !dbg !86
  %cmp198.not.3.3 = icmp sgt i32 %add196.3.3, %1, !dbg !84
  %scores.sroa.0.12.vec.extract1558 = extractelement <4 x float> %392, i64 3, !dbg !85
  %condval_1.0.3.3 = select i1 %cmp198.not.3.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1558, !dbg !85
  %393 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2403, float 0xFFF0000000000000), !dbg !87
  %394 = tail call contract noundef float @llvm.maxnum.f32(float %393, float %condval_1.0.1.3), !dbg !87
  %395 = tail call contract noundef float @llvm.maxnum.f32(float %394, float %condval_1.0.2.3), !dbg !87
  %396 = tail call contract noundef float @llvm.maxnum.f32(float %395, float %condval_1.0.3.3), !dbg !87
  %397 = bitcast float %396 to i32, !dbg !91
  %398 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %399 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %398) #11, !dbg !105
  %xor.i.i.i.3 = xor i32 %399, 32, !dbg !106
  %400 = and i32 %399, -64, !dbg !107
  %and.i.i.i.3 = add nsw i32 %400, 64, !dbg !107
  %cmp.not.i.i.i.3 = icmp slt i32 %xor.i.i.i.3, %and.i.i.i.3, !dbg !108
  %cond.i.i.i.3 = select i1 %cmp.not.i.i.i.3, i32 %xor.i.i.i.3, i32 %399, !dbg !109
  %shl.i.i.i.3 = shl i32 %cond.i.i.i.3, 2, !dbg !110
  %401 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.3, i32 %397), !dbg !111
  %402 = bitcast i32 %401 to float, !dbg !112
  %403 = tail call contract noundef float @llvm.maxnum.f32(float %396, float %402), !dbg !113
  %404 = bitcast float %403 to i32, !dbg !121
  %405 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !126
  %406 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %405) #11, !dbg !129
  %xor.i.i.i.i.3 = xor i32 %406, 16, !dbg !130
  %407 = and i32 %406, -64, !dbg !131
  %and.i.i.i.i.3 = add nsw i32 %407, 64, !dbg !131
  %cmp.not.i.i.i.i.3 = icmp slt i32 %xor.i.i.i.i.3, %and.i.i.i.i.3, !dbg !132
  %cond.i.i.i.i.3 = select i1 %cmp.not.i.i.i.i.3, i32 %xor.i.i.i.i.3, i32 %406, !dbg !133
  %shl.i.i.i.i.3 = shl i32 %cond.i.i.i.i.3, 2, !dbg !134
  %408 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.3, i32 %404), !dbg !135
  %409 = bitcast i32 %408 to float, !dbg !136
  %410 = tail call contract noundef float @llvm.maxnum.f32(float %403, float %409), !dbg !137
  %sub.3 = fsub contract float %410, %normalizer.sroa.0.2.2, !dbg !141
  %mul234.3 = fmul contract float %sub.3, 0x3FC7154760000000, !dbg !142
  %cmp235.3 = fcmp contract ogt float %mul234.3, 7.000000e+00, !dbg !143
  %sub239.3 = fsub contract float %normalizer.sroa.0.2.2, %410
  %mul240.3 = fmul contract float %sub239.3, 0x3FC7154760000000
  %cmp.i.i.3 = fcmp contract olt float %mul240.3, -1.260000e+02
  %cond.i.i.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00
  %add.i.i.3 = fadd contract float %mul240.3, %cond.i.i.3
  %411 = tail call contract float @llvm.exp2.f32(float %add.i.i.3)
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %411
  %normalizer.sroa.0.1.3 = select i1 %cmp235.3, float %410, float %normalizer.sroa.0.2.2, !dbg !144
  %sub255.3785 = fsub contract float %spec.select2403, %normalizer.sroa.0.1.3, !dbg !145
  %mul256.3786 = fmul contract float %sub255.3785, 0x3FC7154760000000, !dbg !146
  %add257.3787 = fadd contract float %mul256.3786, 8.000000e+00, !dbg !147
  %cmp.i.i559.3788 = fcmp contract olt float %add257.3787, -1.260000e+02, !dbg !148
  %cond.i.i560.3789 = select contract i1 %cmp.i.i559.3788, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.3790 = fadd contract float %add257.3787, %cond.i.i560.3789, !dbg !148
  %412 = tail call contract float @llvm.exp2.f32(float %add.i.i561.3790), !dbg !148
  %cond2.i.i562.3791 = select contract i1 %cmp.i.i559.3788, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.3792 = fmul contract float %cond2.i.i562.3791, %412, !dbg !148
  %sub255.1.3 = fsub contract float %condval_1.0.1.3, %normalizer.sroa.0.1.3, !dbg !145
  %mul256.1.3 = fmul contract float %sub255.1.3, 0x3FC7154760000000, !dbg !146
  %add257.1.3 = fadd contract float %mul256.1.3, 8.000000e+00, !dbg !147
  %cmp.i.i559.1.3 = fcmp contract olt float %add257.1.3, -1.260000e+02, !dbg !148
  %cond.i.i560.1.3 = select contract i1 %cmp.i.i559.1.3, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.1.3 = fadd contract float %add257.1.3, %cond.i.i560.1.3, !dbg !148
  %413 = tail call contract float @llvm.exp2.f32(float %add.i.i561.1.3), !dbg !148
  %cond2.i.i562.1.3 = select contract i1 %cmp.i.i559.1.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.1.3 = fmul contract float %cond2.i.i562.1.3, %413, !dbg !148
  %sub255.2.3 = fsub contract float %condval_1.0.2.3, %normalizer.sroa.0.1.3, !dbg !145
  %mul256.2.3 = fmul contract float %sub255.2.3, 0x3FC7154760000000, !dbg !146
  %add257.2.3 = fadd contract float %mul256.2.3, 8.000000e+00, !dbg !147
  %cmp.i.i559.2.3 = fcmp contract olt float %add257.2.3, -1.260000e+02, !dbg !148
  %cond.i.i560.2.3 = select contract i1 %cmp.i.i559.2.3, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.2.3 = fadd contract float %add257.2.3, %cond.i.i560.2.3, !dbg !148
  %414 = tail call contract float @llvm.exp2.f32(float %add.i.i561.2.3), !dbg !148
  %cond2.i.i562.2.3 = select contract i1 %cmp.i.i559.2.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.2.3 = fmul contract float %cond2.i.i562.2.3, %414, !dbg !148
  %sub255.3.3 = fsub contract float %condval_1.0.3.3, %normalizer.sroa.0.1.3, !dbg !145
  %mul256.3.3 = fmul contract float %sub255.3.3, 0x3FC7154760000000, !dbg !146
  %add257.3.3 = fadd contract float %mul256.3.3, 8.000000e+00, !dbg !147
  %cmp.i.i559.3.3 = fcmp contract olt float %add257.3.3, -1.260000e+02, !dbg !148
  %cond.i.i560.3.3 = select contract i1 %cmp.i.i559.3.3, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.3.3 = fadd contract float %add257.3.3, %cond.i.i560.3.3, !dbg !148
  %415 = tail call contract float @llvm.exp2.f32(float %add.i.i561.3.3), !dbg !148
  %cond2.i.i562.3.3 = select contract i1 %cmp.i.i559.3.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.3.3 = fmul contract float %cond2.i.i562.3.3, %415, !dbg !148
  %add272.3793 = fadd contract float %mul.i.i563.3792, 0.000000e+00, !dbg !151
  %add272.1.3 = fadd contract float %add272.3793, %mul.i.i563.1.3, !dbg !151
  %add272.2.3 = fadd contract float %add272.1.3, %mul.i.i563.2.3, !dbg !151
  %add272.3.3 = fadd contract float %add272.2.3, %mul.i.i563.3.3, !dbg !151
  %rescale.sroa.0.0.3 = select i1 %cmp235.3, float %mul.i.i.3, float 1.000000e+00, !dbg !144
  %416 = bitcast float %add272.3.3 to i32, !dbg !152
  %417 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !157
  %418 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %417) #11, !dbg !160
  %xor.i.i.i564.3 = xor i32 %418, 32, !dbg !161
  %419 = and i32 %418, -64, !dbg !162
  %and.i.i.i565.3 = add nsw i32 %419, 64, !dbg !162
  %cmp.not.i.i.i566.3 = icmp slt i32 %xor.i.i.i564.3, %and.i.i.i565.3, !dbg !163
  %cond.i.i.i567.3 = select i1 %cmp.not.i.i.i566.3, i32 %xor.i.i.i564.3, i32 %418, !dbg !164
  %shl.i.i.i568.3 = shl i32 %cond.i.i.i567.3, 2, !dbg !165
  %420 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i568.3, i32 %416), !dbg !166
  %421 = bitcast i32 %420 to float, !dbg !167
  %add.i.i569.3 = fadd contract float %add272.3.3, %421, !dbg !168
  %422 = bitcast float %add.i.i569.3 to i32, !dbg !171
  %423 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !176
  %424 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %423) #11, !dbg !179
  %xor.i.i.i.i570.3 = xor i32 %424, 16, !dbg !180
  %425 = and i32 %424, -64, !dbg !181
  %and.i.i.i.i571.3 = add nsw i32 %425, 64, !dbg !181
  %cmp.not.i.i.i.i572.3 = icmp slt i32 %xor.i.i.i.i570.3, %and.i.i.i.i571.3, !dbg !182
  %cond.i.i.i.i573.3 = select i1 %cmp.not.i.i.i.i572.3, i32 %xor.i.i.i.i570.3, i32 %424, !dbg !183
  %shl.i.i.i.i574.3 = shl i32 %cond.i.i.i.i573.3, 2, !dbg !184
  %426 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i574.3, i32 %422), !dbg !185
  %427 = bitcast i32 %426 to float, !dbg !186
  %add.i.i.i.3 = fadd contract float %add.i.i569.3, %427, !dbg !187
  %cmp281.3 = fcmp contract une float %rescale.sroa.0.0.3, 1.000000e+00, !dbg !189
  %mul285.3 = fmul contract float %denominator.sroa.0.2.2, %rescale.sroa.0.0.3, !dbg !190
  %denominator.sroa.0.1.3 = select i1 %cmp281.3, float %mul285.3, float %denominator.sroa.0.2.2, !dbg !190
  %add290.3 = fadd contract float %denominator.sroa.0.1.3, %add.i.i.i.3, !dbg !191
  %428 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !192, !noalias !200
  %429 = fptrunc float %mul.i.i563.3792 to half, !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %428), !dbg !192, !noalias !200
  %430 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !205
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !205, !noalias !200
  %431 = fptrunc float %mul.i.i563.1.3 to half, !dbg !205
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %430), !dbg !205, !noalias !200
  %__1.sroa.0.0.vec.insert.3 = insertelement <4 x half> poison, half %429, i64 0, !dbg !207
  %__1.sroa.0.2.vec.insert.3 = insertelement <4 x half> %__1.sroa.0.0.vec.insert.3, half %431, i64 1, !dbg !207
  %432 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !210
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !210, !noalias !214
  %433 = fptrunc float %mul.i.i563.2.3 to half, !dbg !210
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %432), !dbg !210, !noalias !214
  %434 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !219
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !219, !noalias !214
  %435 = fptrunc float %mul.i.i563.3.3 to half, !dbg !219
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %434), !dbg !219, !noalias !214
  %__1.sroa.0.4.vec.insert.3 = insertelement <4 x half> %__1.sroa.0.2.vec.insert.3, half %433, i64 2, !dbg !221
  %__1.sroa.0.6.vec.insert.3 = insertelement <4 x half> %__1.sroa.0.4.vec.insert.3, half %435, i64 3, !dbg !221
  br i1 %cmp281.3, label %for.body312.preheader.3, label %if.end322.3, !dbg !223

for.body312.preheader.3:                          ; preds = %if.end.1.3
  %output_acc.sroa.0.0.vec.extract1637 = extractelement <4 x float> %output_acc.sroa.0.5, i64 0, !dbg !233
  %mul316.3794 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.0.0.vec.extract1637, !dbg !234
  %output_acc.sroa.0.0.vec.insert1639 = insertelement <4 x float> poison, float %mul316.3794, i64 0, !dbg !235
  %output_acc.sroa.0.4.vec.extract1674 = extractelement <4 x float> %output_acc.sroa.0.5, i64 1, !dbg !233
  %mul316.1.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.0.4.vec.extract1674, !dbg !234
  %output_acc.sroa.0.4.vec.insert1676 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert1639, float %mul316.1.3, i64 1, !dbg !235
  %output_acc.sroa.0.8.vec.extract1711 = extractelement <4 x float> %output_acc.sroa.0.5, i64 2, !dbg !233
  %mul316.2.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.0.8.vec.extract1711, !dbg !234
  %output_acc.sroa.0.8.vec.insert1713 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert1676, float %mul316.2.3, i64 2, !dbg !235
  %output_acc.sroa.0.12.vec.extract1748 = extractelement <4 x float> %output_acc.sroa.0.5, i64 3, !dbg !233
  %mul316.3.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.0.12.vec.extract1748, !dbg !234
  %output_acc.sroa.0.12.vec.insert1750 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert1713, float %mul316.3.3, i64 3, !dbg !235
  %output_acc.sroa.98.16.vec.extract1793 = extractelement <4 x float> %output_acc.sroa.98.5, i64 0, !dbg !233
  %mul316.4.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.98.16.vec.extract1793, !dbg !234
  %output_acc.sroa.98.16.vec.insert1795 = insertelement <4 x float> poison, float %mul316.4.3, i64 0, !dbg !235
  %output_acc.sroa.98.20.vec.extract1830 = extractelement <4 x float> %output_acc.sroa.98.5, i64 1, !dbg !233
  %mul316.5.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.98.20.vec.extract1830, !dbg !234
  %output_acc.sroa.98.20.vec.insert1832 = insertelement <4 x float> %output_acc.sroa.98.16.vec.insert1795, float %mul316.5.3, i64 1, !dbg !235
  %output_acc.sroa.98.24.vec.extract1867 = extractelement <4 x float> %output_acc.sroa.98.5, i64 2, !dbg !233
  %mul316.6.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.98.24.vec.extract1867, !dbg !234
  %output_acc.sroa.98.24.vec.insert1869 = insertelement <4 x float> %output_acc.sroa.98.20.vec.insert1832, float %mul316.6.3, i64 2, !dbg !235
  %output_acc.sroa.98.28.vec.extract1904 = extractelement <4 x float> %output_acc.sroa.98.5, i64 3, !dbg !233
  %mul316.7.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.98.28.vec.extract1904, !dbg !234
  %output_acc.sroa.98.28.vec.insert1906 = insertelement <4 x float> %output_acc.sroa.98.24.vec.insert1869, float %mul316.7.3, i64 3, !dbg !235
  %output_acc.sroa.194.32.vec.extract1949 = extractelement <4 x float> %output_acc.sroa.194.5, i64 0, !dbg !233
  %mul316.8.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.194.32.vec.extract1949, !dbg !234
  %output_acc.sroa.194.32.vec.insert1951 = insertelement <4 x float> poison, float %mul316.8.3, i64 0, !dbg !235
  %output_acc.sroa.194.36.vec.extract1986 = extractelement <4 x float> %output_acc.sroa.194.5, i64 1, !dbg !233
  %mul316.9.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.194.36.vec.extract1986, !dbg !234
  %output_acc.sroa.194.36.vec.insert1988 = insertelement <4 x float> %output_acc.sroa.194.32.vec.insert1951, float %mul316.9.3, i64 1, !dbg !235
  %output_acc.sroa.194.40.vec.extract2023 = extractelement <4 x float> %output_acc.sroa.194.5, i64 2, !dbg !233
  %mul316.10.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.194.40.vec.extract2023, !dbg !234
  %output_acc.sroa.194.40.vec.insert2025 = insertelement <4 x float> %output_acc.sroa.194.36.vec.insert1988, float %mul316.10.3, i64 2, !dbg !235
  %output_acc.sroa.194.44.vec.extract2060 = extractelement <4 x float> %output_acc.sroa.194.5, i64 3, !dbg !233
  %mul316.11.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.194.44.vec.extract2060, !dbg !234
  %output_acc.sroa.194.44.vec.insert2062 = insertelement <4 x float> %output_acc.sroa.194.40.vec.insert2025, float %mul316.11.3, i64 3, !dbg !235
  %output_acc.sroa.290.48.vec.extract2105 = extractelement <4 x float> %output_acc.sroa.290.5, i64 0, !dbg !233
  %mul316.12.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.290.48.vec.extract2105, !dbg !234
  %output_acc.sroa.290.48.vec.insert2107 = insertelement <4 x float> poison, float %mul316.12.3, i64 0, !dbg !235
  %output_acc.sroa.290.52.vec.extract2142 = extractelement <4 x float> %output_acc.sroa.290.5, i64 1, !dbg !233
  %mul316.13.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.290.52.vec.extract2142, !dbg !234
  %output_acc.sroa.290.52.vec.insert2144 = insertelement <4 x float> %output_acc.sroa.290.48.vec.insert2107, float %mul316.13.3, i64 1, !dbg !235
  %output_acc.sroa.290.56.vec.extract2179 = extractelement <4 x float> %output_acc.sroa.290.5, i64 2, !dbg !233
  %mul316.14.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.290.56.vec.extract2179, !dbg !234
  %output_acc.sroa.290.56.vec.insert2181 = insertelement <4 x float> %output_acc.sroa.290.52.vec.insert2144, float %mul316.14.3, i64 2, !dbg !235
  %output_acc.sroa.290.60.vec.extract2216 = extractelement <4 x float> %output_acc.sroa.290.5, i64 3, !dbg !233
  %mul316.15.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.290.60.vec.extract2216, !dbg !234
  %output_acc.sroa.290.60.vec.insert2218 = insertelement <4 x float> %output_acc.sroa.290.56.vec.insert2181, float %mul316.15.3, i64 3, !dbg !235
  br label %if.end322.3

if.end322.3:                                      ; preds = %for.body312.preheader.3, %if.end.1.3
  %output_acc.sroa.290.6 = phi <4 x float> [ %output_acc.sroa.290.60.vec.insert2218, %for.body312.preheader.3 ], [ %output_acc.sroa.290.5, %if.end.1.3 ], !dbg !64
  %output_acc.sroa.194.6 = phi <4 x float> [ %output_acc.sroa.194.44.vec.insert2062, %for.body312.preheader.3 ], [ %output_acc.sroa.194.5, %if.end.1.3 ], !dbg !64
  %output_acc.sroa.98.6 = phi <4 x float> [ %output_acc.sroa.98.28.vec.insert1906, %for.body312.preheader.3 ], [ %output_acc.sroa.98.5, %if.end.1.3 ], !dbg !64
  %output_acc.sroa.0.6 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1750, %for.body312.preheader.3 ], [ %output_acc.sroa.0.5, %if.end.1.3 ], !dbg !64
  %shr334.3 = lshr exact i32 %mul46.3, 2
  %add335.3 = add nuw nsw i32 %shr334.3, %shr332
  %cmp336.3 = icmp ult i32 %add335.3, 256
  br i1 %cmp336.3, label %if.then337.3798, label %if.end362.3800, !dbg !224

if.then337.3798:                                  ; preds = %if.end322.3
  %436 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %437 = getelementptr inbounds i8, ptr addrspace(4) %436, i64 %.idx.3, !dbg !225
  %condval_2.sroa.0.0.copyload.37972321 = load half, ptr addrspace(4) %437, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3800, !dbg !228

if.end362.3800:                                   ; preds = %if.then337.3798, %if.end322.3
  %438 = phi half [ %condval_2.sroa.0.0.copyload.37972321, %if.then337.3798 ], [ 0xH0000, %if.end322.3 ], !dbg !64
  %v_local.sroa.0.0.vec.insert884 = insertelement <4 x half> poison, half %438, i64 0, !dbg !229
  br i1 %cmp336.3, label %if.then337.1.3804, label %if.end362.1.3807, !dbg !224

if.then337.1.3804:                                ; preds = %if.end362.3800
  %439 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %440 = getelementptr inbounds i8, ptr addrspace(4) %439, i64 %.idx.3, !dbg !225
  %arrayidx359.1.3802 = getelementptr inbounds i8, ptr addrspace(4) %440, i64 128, !dbg !225
  %condval_2.sroa.0.0.copyload.1.38032322 = load half, ptr addrspace(4) %arrayidx359.1.3802, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.3807, !dbg !228

if.end362.1.3807:                                 ; preds = %if.then337.1.3804, %if.end362.3800
  %441 = phi half [ %condval_2.sroa.0.0.copyload.1.38032322, %if.then337.1.3804 ], [ 0xH0000, %if.end362.3800 ], !dbg !64
  %v_local.sroa.0.2.vec.insert946 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert884, half %441, i64 1, !dbg !229
  br i1 %cmp336.3, label %if.then337.2.3811, label %if.end362.2.3814, !dbg !224

if.then337.2.3811:                                ; preds = %if.end362.1.3807
  %442 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %443 = getelementptr inbounds i8, ptr addrspace(4) %442, i64 %.idx.3, !dbg !225
  %arrayidx359.2.3809 = getelementptr inbounds i8, ptr addrspace(4) %443, i64 256, !dbg !225
  %condval_2.sroa.0.0.copyload.2.38102323 = load half, ptr addrspace(4) %arrayidx359.2.3809, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.3814, !dbg !228

if.end362.2.3814:                                 ; preds = %if.then337.2.3811, %if.end362.1.3807
  %444 = phi half [ %condval_2.sroa.0.0.copyload.2.38102323, %if.then337.2.3811 ], [ 0xH0000, %if.end362.1.3807 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1008 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert946, half %444, i64 2, !dbg !229
  br i1 %cmp336.3, label %if.then337.3.3818, label %if.end362.3.3821, !dbg !224

if.then337.3.3818:                                ; preds = %if.end362.2.3814
  %445 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %446 = getelementptr inbounds i8, ptr addrspace(4) %445, i64 %.idx.3, !dbg !225
  %arrayidx359.3.3816 = getelementptr inbounds i8, ptr addrspace(4) %446, i64 384, !dbg !225
  %condval_2.sroa.0.0.copyload.3.38172324 = load half, ptr addrspace(4) %arrayidx359.3.3816, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.3821, !dbg !228

if.end362.3.3821:                                 ; preds = %if.then337.3.3818, %if.end362.2.3814
  %447 = phi half [ %condval_2.sroa.0.0.copyload.3.38172324, %if.then337.3.3818 ], [ 0xH0000, %if.end362.2.3814 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1070 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1008, half %447, i64 3, !dbg !229
  %448 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1070, <4 x half> %__1.sroa.0.6.vec.insert.3, <4 x float> %output_acc.sroa.0.6), !dbg !230
  br i1 %cmp336.3, label %if.then337.1641.3, label %if.end362.1643.3, !dbg !224

if.then337.1641.3:                                ; preds = %if.end362.3.3821
  %449 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %450 = getelementptr inbounds i8, ptr addrspace(4) %449, i64 %.idx.3, !dbg !225
  %451 = getelementptr inbounds i8, ptr addrspace(4) %450, i64 32, !dbg !225
  %condval_2.sroa.0.0.copyload.1640.32325 = load half, ptr addrspace(4) %451, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1643.3, !dbg !228

if.end362.1643.3:                                 ; preds = %if.then337.1641.3, %if.end362.3.3821
  %452 = phi half [ %condval_2.sroa.0.0.copyload.1640.32325, %if.then337.1641.3 ], [ 0xH0000, %if.end362.3.3821 ], !dbg !64
  %v_local.sroa.0.0.vec.insert886 = insertelement <4 x half> poison, half %452, i64 0, !dbg !229
  br i1 %cmp336.3, label %if.then337.1.1.3, label %if.end362.1.1.3, !dbg !224

if.then337.1.1.3:                                 ; preds = %if.end362.1643.3
  %453 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %454 = getelementptr inbounds i8, ptr addrspace(4) %453, i64 %.idx.3, !dbg !225
  %arrayidx359.1.1.3 = getelementptr inbounds i8, ptr addrspace(4) %454, i64 160, !dbg !225
  %condval_2.sroa.0.0.copyload.1.1.32326 = load half, ptr addrspace(4) %arrayidx359.1.1.3, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.1.3, !dbg !228

if.end362.1.1.3:                                  ; preds = %if.then337.1.1.3, %if.end362.1643.3
  %455 = phi half [ %condval_2.sroa.0.0.copyload.1.1.32326, %if.then337.1.1.3 ], [ 0xH0000, %if.end362.1643.3 ], !dbg !64
  %v_local.sroa.0.2.vec.insert948 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert886, half %455, i64 1, !dbg !229
  br i1 %cmp336.3, label %if.then337.2.1.3, label %if.end362.2.1.3, !dbg !224

if.then337.2.1.3:                                 ; preds = %if.end362.1.1.3
  %456 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %457 = getelementptr inbounds i8, ptr addrspace(4) %456, i64 %.idx.3, !dbg !225
  %arrayidx359.2.1.3 = getelementptr inbounds i8, ptr addrspace(4) %457, i64 288, !dbg !225
  %condval_2.sroa.0.0.copyload.2.1.32327 = load half, ptr addrspace(4) %arrayidx359.2.1.3, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.1.3, !dbg !228

if.end362.2.1.3:                                  ; preds = %if.then337.2.1.3, %if.end362.1.1.3
  %458 = phi half [ %condval_2.sroa.0.0.copyload.2.1.32327, %if.then337.2.1.3 ], [ 0xH0000, %if.end362.1.1.3 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1010 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert948, half %458, i64 2, !dbg !229
  br i1 %cmp336.3, label %if.then337.3.1.3, label %if.end362.3.1.3, !dbg !224

if.then337.3.1.3:                                 ; preds = %if.end362.2.1.3
  %459 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %460 = getelementptr inbounds i8, ptr addrspace(4) %459, i64 %.idx.3, !dbg !225
  %arrayidx359.3.1.3 = getelementptr inbounds i8, ptr addrspace(4) %460, i64 416, !dbg !225
  %condval_2.sroa.0.0.copyload.3.1.32328 = load half, ptr addrspace(4) %arrayidx359.3.1.3, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.1.3, !dbg !228

if.end362.3.1.3:                                  ; preds = %if.then337.3.1.3, %if.end362.2.1.3
  %461 = phi half [ %condval_2.sroa.0.0.copyload.3.1.32328, %if.then337.3.1.3 ], [ 0xH0000, %if.end362.2.1.3 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1072 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1010, half %461, i64 3, !dbg !229
  %462 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1072, <4 x half> %__1.sroa.0.6.vec.insert.3, <4 x float> %output_acc.sroa.98.6), !dbg !230
  br i1 %cmp336.3, label %if.then337.2646.3, label %if.end362.2648.3, !dbg !224

if.then337.2646.3:                                ; preds = %if.end362.3.1.3
  %463 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %464 = getelementptr inbounds i8, ptr addrspace(4) %463, i64 %.idx.3, !dbg !225
  %465 = getelementptr inbounds i8, ptr addrspace(4) %464, i64 64, !dbg !225
  %condval_2.sroa.0.0.copyload.2645.32329 = load half, ptr addrspace(4) %465, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2648.3, !dbg !228

if.end362.2648.3:                                 ; preds = %if.then337.2646.3, %if.end362.3.1.3
  %466 = phi half [ %condval_2.sroa.0.0.copyload.2645.32329, %if.then337.2646.3 ], [ 0xH0000, %if.end362.3.1.3 ], !dbg !64
  %v_local.sroa.0.0.vec.insert888 = insertelement <4 x half> poison, half %466, i64 0, !dbg !229
  br i1 %cmp336.3, label %if.then337.1.2.3, label %if.end362.1.2.3, !dbg !224

if.then337.1.2.3:                                 ; preds = %if.end362.2648.3
  %467 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %468 = getelementptr inbounds i8, ptr addrspace(4) %467, i64 %.idx.3, !dbg !225
  %arrayidx359.1.2.3 = getelementptr inbounds i8, ptr addrspace(4) %468, i64 192, !dbg !225
  %condval_2.sroa.0.0.copyload.1.2.32330 = load half, ptr addrspace(4) %arrayidx359.1.2.3, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.2.3, !dbg !228

if.end362.1.2.3:                                  ; preds = %if.then337.1.2.3, %if.end362.2648.3
  %469 = phi half [ %condval_2.sroa.0.0.copyload.1.2.32330, %if.then337.1.2.3 ], [ 0xH0000, %if.end362.2648.3 ], !dbg !64
  %v_local.sroa.0.2.vec.insert950 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert888, half %469, i64 1, !dbg !229
  br i1 %cmp336.3, label %if.then337.2.2.3, label %if.end362.2.2.3, !dbg !224

if.then337.2.2.3:                                 ; preds = %if.end362.1.2.3
  %470 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %471 = getelementptr inbounds i8, ptr addrspace(4) %470, i64 %.idx.3, !dbg !225
  %arrayidx359.2.2.3 = getelementptr inbounds i8, ptr addrspace(4) %471, i64 320, !dbg !225
  %condval_2.sroa.0.0.copyload.2.2.32331 = load half, ptr addrspace(4) %arrayidx359.2.2.3, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.2.3, !dbg !228

if.end362.2.2.3:                                  ; preds = %if.then337.2.2.3, %if.end362.1.2.3
  %472 = phi half [ %condval_2.sroa.0.0.copyload.2.2.32331, %if.then337.2.2.3 ], [ 0xH0000, %if.end362.1.2.3 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1012 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert950, half %472, i64 2, !dbg !229
  br i1 %cmp336.3, label %if.then337.3.2.3, label %if.end362.3.2.3, !dbg !224

if.then337.3.2.3:                                 ; preds = %if.end362.2.2.3
  %473 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %474 = getelementptr inbounds i8, ptr addrspace(4) %473, i64 %.idx.3, !dbg !225
  %arrayidx359.3.2.3 = getelementptr inbounds i8, ptr addrspace(4) %474, i64 448, !dbg !225
  %condval_2.sroa.0.0.copyload.3.2.32332 = load half, ptr addrspace(4) %arrayidx359.3.2.3, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.2.3, !dbg !228

if.end362.3.2.3:                                  ; preds = %if.then337.3.2.3, %if.end362.2.2.3
  %475 = phi half [ %condval_2.sroa.0.0.copyload.3.2.32332, %if.then337.3.2.3 ], [ 0xH0000, %if.end362.2.2.3 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1074 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1012, half %475, i64 3, !dbg !229
  %476 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1074, <4 x half> %__1.sroa.0.6.vec.insert.3, <4 x float> %output_acc.sroa.194.6), !dbg !230
  br i1 %cmp336.3, label %if.then337.3651.3, label %if.end362.3653.3, !dbg !224

if.then337.3651.3:                                ; preds = %if.end362.3.2.3
  %477 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %478 = getelementptr inbounds i8, ptr addrspace(4) %477, i64 %.idx.3, !dbg !225
  %479 = getelementptr inbounds i8, ptr addrspace(4) %478, i64 96, !dbg !225
  %condval_2.sroa.0.0.copyload.3650.32333 = load half, ptr addrspace(4) %479, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3653.3, !dbg !228

if.end362.3653.3:                                 ; preds = %if.then337.3651.3, %if.end362.3.2.3
  %480 = phi half [ %condval_2.sroa.0.0.copyload.3650.32333, %if.then337.3651.3 ], [ 0xH0000, %if.end362.3.2.3 ], !dbg !64
  %v_local.sroa.0.0.vec.insert890 = insertelement <4 x half> poison, half %480, i64 0, !dbg !229
  br i1 %cmp336.3, label %if.then337.1.3.3, label %if.end362.1.3.3, !dbg !224

if.then337.1.3.3:                                 ; preds = %if.end362.3653.3
  %481 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %482 = getelementptr inbounds i8, ptr addrspace(4) %481, i64 %.idx.3, !dbg !225
  %arrayidx359.1.3.3 = getelementptr inbounds i8, ptr addrspace(4) %482, i64 224, !dbg !225
  %condval_2.sroa.0.0.copyload.1.3.32334 = load half, ptr addrspace(4) %arrayidx359.1.3.3, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.3.3, !dbg !228

if.end362.1.3.3:                                  ; preds = %if.then337.1.3.3, %if.end362.3653.3
  %483 = phi half [ %condval_2.sroa.0.0.copyload.1.3.32334, %if.then337.1.3.3 ], [ 0xH0000, %if.end362.3653.3 ], !dbg !64
  %v_local.sroa.0.2.vec.insert952 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert890, half %483, i64 1, !dbg !229
  br i1 %cmp336.3, label %if.then337.2.3.3, label %if.end362.2.3.3, !dbg !224

if.then337.2.3.3:                                 ; preds = %if.end362.1.3.3
  %484 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %485 = getelementptr inbounds i8, ptr addrspace(4) %484, i64 %.idx.3, !dbg !225
  %arrayidx359.2.3.3 = getelementptr inbounds i8, ptr addrspace(4) %485, i64 352, !dbg !225
  %condval_2.sroa.0.0.copyload.2.3.32335 = load half, ptr addrspace(4) %arrayidx359.2.3.3, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.3.3, !dbg !228

if.end362.2.3.3:                                  ; preds = %if.then337.2.3.3, %if.end362.1.3.3
  %486 = phi half [ %condval_2.sroa.0.0.copyload.2.3.32335, %if.then337.2.3.3 ], [ 0xH0000, %if.end362.1.3.3 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1014 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert952, half %486, i64 2, !dbg !229
  br i1 %cmp336.3, label %if.then337.3.3.3, label %if.end362.3.3.3, !dbg !224

if.then337.3.3.3:                                 ; preds = %if.end362.2.3.3
  %487 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %488 = getelementptr inbounds i8, ptr addrspace(4) %487, i64 %.idx.3, !dbg !225
  %arrayidx359.3.3.3 = getelementptr inbounds i8, ptr addrspace(4) %488, i64 480, !dbg !225
  %condval_2.sroa.0.0.copyload.3.3.32336 = load half, ptr addrspace(4) %arrayidx359.3.3.3, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.3.3, !dbg !228

if.end362.3.3.3:                                  ; preds = %if.then337.3.3.3, %if.end362.2.3.3
  %489 = phi half [ %condval_2.sroa.0.0.copyload.3.3.32336, %if.then337.3.3.3 ], [ 0xH0000, %if.end362.2.3.3 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1076 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1014, half %489, i64 3, !dbg !229
  %490 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1076, <4 x half> %__1.sroa.0.6.vec.insert.3, <4 x float> %output_acc.sroa.290.6), !dbg !230
  br label %if.end381.3, !dbg !231

if.end381.3:                                      ; preds = %if.end362.3.3.3, %if.end381.2
  %output_acc.sroa.290.7 = phi <4 x float> [ %output_acc.sroa.290.5, %if.end381.2 ], [ %490, %if.end362.3.3.3 ], !dbg !64
  %output_acc.sroa.194.7 = phi <4 x float> [ %output_acc.sroa.194.5, %if.end381.2 ], [ %476, %if.end362.3.3.3 ], !dbg !64
  %output_acc.sroa.98.7 = phi <4 x float> [ %output_acc.sroa.98.5, %if.end381.2 ], [ %462, %if.end362.3.3.3 ], !dbg !64
  %output_acc.sroa.0.7 = phi <4 x float> [ %output_acc.sroa.0.5, %if.end381.2 ], [ %448, %if.end362.3.3.3 ], !dbg !64
  %normalizer.sroa.0.2.3 = phi float [ %normalizer.sroa.0.2.2, %if.end381.2 ], [ %normalizer.sroa.0.1.3, %if.end362.3.3.3 ], !dbg !64
  %denominator.sroa.0.2.3 = phi float [ %denominator.sroa.0.2.2, %if.end381.2 ], [ %add290.3, %if.end362.3.3.3 ], !dbg !64
  %491 = or disjoint i64 %19, 4, !dbg !232
  %arrayidx45.4 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %491, !dbg !47
  %492 = load i32, ptr addrspace(1) %arrayidx45.4, align 4, !dbg !47, !tbaa !30
  %mul46.4 = shl nsw i32 %492, 4, !dbg !48
  %cmp47.4 = icmp slt i32 %492, 0, !dbg !49
  %cmp49.not.4 = icmp sgt i32 %mul46.4, %1
  %or.cond.4 = select i1 %cmp47.4, i1 true, i1 %cmp49.not.4, !dbg !50
  br i1 %or.cond.4, label %if.end381.4, label %if.then.4, !dbg !50

if.then.4:                                        ; preds = %if.end381.3
  fence syncscope("warp") release, !dbg !51
  tail call void @llvm.mxc.barrier.warp(), !dbg !57
  fence syncscope("warp") acquire, !dbg !58
  %add56.4 = add nuw nsw i32 %mul46.4, %shr55
  %conv66.4 = zext nneg i32 %mul46.4 to i64
  %.idx.4 = shl nuw nsw i64 %conv66.4, 7
  %gep.4 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep616, i64 %.idx.4, !dbg !59
  %cmp59.4 = icmp ult i32 %add56.4, 1024, !dbg !60
  br i1 %cmp59.4, label %if.then60.4, label %if.end.4, !dbg !61

if.then60.4:                                      ; preds = %if.then.4
  %gep602.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.4, i64 %mul62
  %condval.sroa.7.0.add.ptr73.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep602.4, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep602.4, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep602.4, i64 4
  %condval.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %gep602.4, align 16, !dbg !62, !tbaa !30
  %condval.sroa.5.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr73.sroa_idx.4, align 4, !dbg !62, !tbaa !30
  %condval.sroa.6.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr73.sroa_idx.4, align 8, !dbg !62, !tbaa !30
  %condval.sroa.7.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr73.sroa_idx.4, align 4, !dbg !62, !tbaa !30
  br label %if.end.4, !dbg !63

if.end.4:                                         ; preds = %if.then60.4, %if.then.4
  %condval.sroa.0.0.4 = phi i32 [ %condval.sroa.0.0.copyload.4, %if.then60.4 ], [ 0, %if.then.4 ], !dbg !64
  %condval.sroa.5.0.4 = phi i32 [ %condval.sroa.5.0.copyload.4, %if.then60.4 ], [ 0, %if.then.4 ], !dbg !64
  %condval.sroa.6.0.4 = phi i32 [ %condval.sroa.6.0.copyload.4, %if.then60.4 ], [ 0, %if.then.4 ], !dbg !64
  %condval.sroa.7.0.4 = phi i32 [ %condval.sroa.7.0.copyload.4, %if.then60.4 ], [ 0, %if.then.4 ], !dbg !64
  %493 = or disjoint i32 %mul97, %mul106, !dbg !65
  %494 = or disjoint i32 %493, %mul116, !dbg !66
  %495 = or disjoint i32 %494, %mul125, !dbg !67
  %add.ptr128.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %495, !dbg !68
  store i32 %condval.sroa.0.0.4, ptr addrspace(3) %add.ptr128.4, align 16, !dbg !69, !tbaa !30
  %condval.sroa.5.0.add.ptr128.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.4, i32 4, !dbg !69
  store i32 %condval.sroa.5.0.4, ptr addrspace(3) %condval.sroa.5.0.add.ptr128.sroa_idx.4, align 4, !dbg !69, !tbaa !30
  %condval.sroa.6.0.add.ptr128.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.4, i32 8, !dbg !69
  store i32 %condval.sroa.6.0.4, ptr addrspace(3) %condval.sroa.6.0.add.ptr128.sroa_idx.4, align 8, !dbg !69, !tbaa !30
  %condval.sroa.7.0.add.ptr128.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.4, i32 12, !dbg !69
  store i32 %condval.sroa.7.0.4, ptr addrspace(3) %condval.sroa.7.0.add.ptr128.sroa_idx.4, align 4, !dbg !69, !tbaa !30
  %cmp59.1.4 = icmp ult i32 %add56.4, 1016, !dbg !60
  br i1 %cmp59.1.4, label %if.then60.1.4, label %if.end.1.4, !dbg !61

if.then60.1.4:                                    ; preds = %if.end.4
  %add65.1.4 = or disjoint i64 %mul62, 512
  %gep602.1.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.4, i64 %add65.1.4
  %condval.sroa.7.0.add.ptr73.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1.4, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1.4, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1.4, i64 4
  %condval.sroa.0.0.copyload.1.4 = load i32, ptr addrspace(4) %gep602.1.4, align 16, !dbg !62, !tbaa !30
  %condval.sroa.5.0.copyload.1.4 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr73.sroa_idx.1.4, align 4, !dbg !62, !tbaa !30
  %condval.sroa.6.0.copyload.1.4 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr73.sroa_idx.1.4, align 8, !dbg !62, !tbaa !30
  %condval.sroa.7.0.copyload.1.4 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr73.sroa_idx.1.4, align 4, !dbg !62, !tbaa !30
  br label %if.end.1.4, !dbg !63

if.end.1.4:                                       ; preds = %if.then60.1.4, %if.end.4
  %condval.sroa.0.0.1.4 = phi i32 [ %condval.sroa.0.0.copyload.1.4, %if.then60.1.4 ], [ 0, %if.end.4 ], !dbg !64
  %condval.sroa.5.0.1.4 = phi i32 [ %condval.sroa.5.0.copyload.1.4, %if.then60.1.4 ], [ 0, %if.end.4 ], !dbg !64
  %condval.sroa.6.0.1.4 = phi i32 [ %condval.sroa.6.0.copyload.1.4, %if.then60.1.4 ], [ 0, %if.end.4 ], !dbg !64
  %condval.sroa.7.0.1.4 = phi i32 [ %condval.sroa.7.0.copyload.1.4, %if.then60.1.4 ], [ 0, %if.end.4 ], !dbg !64
  %496 = add nuw nsw i32 %mul97, 512, !dbg !70
  %497 = or disjoint i32 %496, %mul106, !dbg !65
  %498 = or disjoint i32 %497, %mul116, !dbg !66
  %499 = or disjoint i32 %498, %mul125, !dbg !67
  %add.ptr128.1.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %499, !dbg !68
  store i32 %condval.sroa.0.0.1.4, ptr addrspace(3) %add.ptr128.1.4, align 16, !dbg !69, !tbaa !30
  %condval.sroa.5.0.add.ptr128.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1.4, i32 4, !dbg !69
  store i32 %condval.sroa.5.0.1.4, ptr addrspace(3) %condval.sroa.5.0.add.ptr128.sroa_idx.1.4, align 4, !dbg !69, !tbaa !30
  %condval.sroa.6.0.add.ptr128.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1.4, i32 8, !dbg !69
  store i32 %condval.sroa.6.0.1.4, ptr addrspace(3) %condval.sroa.6.0.add.ptr128.sroa_idx.1.4, align 8, !dbg !69, !tbaa !30
  %condval.sroa.7.0.add.ptr128.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1.4, i32 12, !dbg !69
  store i32 %condval.sroa.7.0.1.4, ptr addrspace(3) %condval.sroa.7.0.add.ptr128.sroa_idx.1.4, align 4, !dbg !69, !tbaa !30
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %and148.4 = shl nuw nsw i32 %3, 5, !dbg !76
  %mul149.4 = and i32 %and148.4, 32, !dbg !76
  %and156.4 = shl nuw nsw i32 %and152, 4, !dbg !77
  %mul157.4 = and i32 %and156.4, 16, !dbg !77
  %add166.4 = or disjoint i32 %add158, %mul157.4, !dbg !78
  %add171.4 = or disjoint i32 %add166.4, %mul149.4, !dbg !79
  %add.ptr173.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.4, !dbg !80
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %add.ptr173.4, align 8, !dbg !81
  %500 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %5, <4 x float> zeroinitializer), !dbg !82, !call_argsrelate !83
  %add155.1.4 = shl nuw nsw i32 %and152, 4, !dbg !77
  %501 = and i32 %add155.1.4, 16, !dbg !77
  %502 = or disjoint i32 %501, %add158, !dbg !78
  %503 = or disjoint i32 %502, %mul149.4, !dbg !79
  %add171.1.4 = xor i32 %503, 16, !dbg !79
  %add.ptr173.1.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.1.4, !dbg !80
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr173.1.4, align 8, !dbg !81
  %504 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %7, <4 x float> %500), !dbg !82, !call_argsrelate !83
  %add147.2.4 = shl nuw nsw i32 %3, 5, !dbg !76
  %505 = and i32 %add147.2.4, 32, !dbg !76
  %mul149.2.4 = xor i32 %505, 32, !dbg !76
  %add155.2.4 = shl nuw nsw i32 %and152, 4, !dbg !77
  %mul157.2.4 = and i32 %add155.2.4, 16, !dbg !77
  %add166.2.4 = or disjoint i32 %add158, %mul157.2.4, !dbg !78
  %add171.2.4 = or disjoint i32 %add166.2.4, %mul149.2.4, !dbg !79
  %add.ptr173.2.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.2.4, !dbg !80
  %k_local.sroa.0.0.copyload.2.4 = load <4 x half>, ptr addrspace(3) %add.ptr173.2.4, align 8, !dbg !81
  %506 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.4, <4 x half> %9, <4 x float> %504), !dbg !82, !call_argsrelate !83
  %add155.3.4 = shl nuw nsw i32 %and152, 4, !dbg !77
  %507 = and i32 %add155.3.4, 16, !dbg !77
  %508 = or disjoint i32 %507, %add158, !dbg !78
  %509 = or disjoint i32 %508, %mul149.2.4, !dbg !79
  %add171.3.4 = xor i32 %509, 16, !dbg !79
  %add.ptr173.3.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.3.4, !dbg !80
  %k_local.sroa.0.0.copyload.3.4 = load <4 x half>, ptr addrspace(3) %add.ptr173.3.4, align 8, !dbg !81
  %510 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.4, <4 x half> %11, <4 x float> %506), !dbg !82, !call_argsrelate !83
  %add195.4 = add nuw nsw i32 %mul46.4, %mul14
  %cmp198.not.4 = icmp sgt i32 %add195.4, %1, !dbg !84
  %scores.sroa.0.0.vec.extract1181 = extractelement <4 x float> %510, i64 0
  %spec.select2404 = select i1 %cmp198.not.4, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1181, !dbg !85
  %cmp198.not.1.4.not = icmp slt i32 %add195.4, %1, !dbg !84
  %scores.sroa.0.4.vec.extract1320 = extractelement <4 x float> %510, i64 1, !dbg !85
  %condval_1.0.1.4 = select i1 %cmp198.not.1.4.not, float %scores.sroa.0.4.vec.extract1320, float 0xFFF0000000000000, !dbg !85
  %add196.2.4 = or disjoint i32 %add195.4, 2, !dbg !86
  %cmp198.not.2.4 = icmp sgt i32 %add196.2.4, %1, !dbg !84
  %scores.sroa.0.8.vec.extract1445 = extractelement <4 x float> %510, i64 2, !dbg !85
  %condval_1.0.2.4 = select i1 %cmp198.not.2.4, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1445, !dbg !85
  %add196.3.4 = or disjoint i32 %add195.4, 3, !dbg !86
  %cmp198.not.3.4 = icmp sgt i32 %add196.3.4, %1, !dbg !84
  %scores.sroa.0.12.vec.extract1570 = extractelement <4 x float> %510, i64 3, !dbg !85
  %condval_1.0.3.4 = select i1 %cmp198.not.3.4, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1570, !dbg !85
  %511 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2404, float 0xFFF0000000000000), !dbg !87
  %512 = tail call contract noundef float @llvm.maxnum.f32(float %511, float %condval_1.0.1.4), !dbg !87
  %513 = tail call contract noundef float @llvm.maxnum.f32(float %512, float %condval_1.0.2.4), !dbg !87
  %514 = tail call contract noundef float @llvm.maxnum.f32(float %513, float %condval_1.0.3.4), !dbg !87
  %515 = bitcast float %514 to i32, !dbg !91
  %516 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %517 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %516) #11, !dbg !105
  %xor.i.i.i.4 = xor i32 %517, 32, !dbg !106
  %518 = and i32 %517, -64, !dbg !107
  %and.i.i.i.4 = add nsw i32 %518, 64, !dbg !107
  %cmp.not.i.i.i.4 = icmp slt i32 %xor.i.i.i.4, %and.i.i.i.4, !dbg !108
  %cond.i.i.i.4 = select i1 %cmp.not.i.i.i.4, i32 %xor.i.i.i.4, i32 %517, !dbg !109
  %shl.i.i.i.4 = shl i32 %cond.i.i.i.4, 2, !dbg !110
  %519 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.4, i32 %515), !dbg !111
  %520 = bitcast i32 %519 to float, !dbg !112
  %521 = tail call contract noundef float @llvm.maxnum.f32(float %514, float %520), !dbg !113
  %522 = bitcast float %521 to i32, !dbg !121
  %523 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !126
  %524 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %523) #11, !dbg !129
  %xor.i.i.i.i.4 = xor i32 %524, 16, !dbg !130
  %525 = and i32 %524, -64, !dbg !131
  %and.i.i.i.i.4 = add nsw i32 %525, 64, !dbg !131
  %cmp.not.i.i.i.i.4 = icmp slt i32 %xor.i.i.i.i.4, %and.i.i.i.i.4, !dbg !132
  %cond.i.i.i.i.4 = select i1 %cmp.not.i.i.i.i.4, i32 %xor.i.i.i.i.4, i32 %524, !dbg !133
  %shl.i.i.i.i.4 = shl i32 %cond.i.i.i.i.4, 2, !dbg !134
  %526 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.4, i32 %522), !dbg !135
  %527 = bitcast i32 %526 to float, !dbg !136
  %528 = tail call contract noundef float @llvm.maxnum.f32(float %521, float %527), !dbg !137
  %sub.4 = fsub contract float %528, %normalizer.sroa.0.2.3, !dbg !141
  %mul234.4 = fmul contract float %sub.4, 0x3FC7154760000000, !dbg !142
  %cmp235.4 = fcmp contract ogt float %mul234.4, 7.000000e+00, !dbg !143
  %sub239.4 = fsub contract float %normalizer.sroa.0.2.3, %528
  %mul240.4 = fmul contract float %sub239.4, 0x3FC7154760000000
  %cmp.i.i.4 = fcmp contract olt float %mul240.4, -1.260000e+02
  %cond.i.i.4 = select contract i1 %cmp.i.i.4, float 6.400000e+01, float 0.000000e+00
  %add.i.i.4 = fadd contract float %mul240.4, %cond.i.i.4
  %529 = tail call contract float @llvm.exp2.f32(float %add.i.i.4)
  %cond2.i.i.4 = select contract i1 %cmp.i.i.4, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i.4 = fmul contract float %cond2.i.i.4, %529
  %normalizer.sroa.0.1.4 = select i1 %cmp235.4, float %528, float %normalizer.sroa.0.2.3, !dbg !144
  %sub255.4 = fsub contract float %spec.select2404, %normalizer.sroa.0.1.4, !dbg !145
  %mul256.4 = fmul contract float %sub255.4, 0x3FC7154760000000, !dbg !146
  %add257.4 = fadd contract float %mul256.4, 8.000000e+00, !dbg !147
  %cmp.i.i559.4 = fcmp contract olt float %add257.4, -1.260000e+02, !dbg !148
  %cond.i.i560.4 = select contract i1 %cmp.i.i559.4, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.4 = fadd contract float %add257.4, %cond.i.i560.4, !dbg !148
  %530 = tail call contract float @llvm.exp2.f32(float %add.i.i561.4), !dbg !148
  %cond2.i.i562.4 = select contract i1 %cmp.i.i559.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.4 = fmul contract float %cond2.i.i562.4, %530, !dbg !148
  %sub255.1.4 = fsub contract float %condval_1.0.1.4, %normalizer.sroa.0.1.4, !dbg !145
  %mul256.1.4 = fmul contract float %sub255.1.4, 0x3FC7154760000000, !dbg !146
  %add257.1.4 = fadd contract float %mul256.1.4, 8.000000e+00, !dbg !147
  %cmp.i.i559.1.4 = fcmp contract olt float %add257.1.4, -1.260000e+02, !dbg !148
  %cond.i.i560.1.4 = select contract i1 %cmp.i.i559.1.4, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.1.4 = fadd contract float %add257.1.4, %cond.i.i560.1.4, !dbg !148
  %531 = tail call contract float @llvm.exp2.f32(float %add.i.i561.1.4), !dbg !148
  %cond2.i.i562.1.4 = select contract i1 %cmp.i.i559.1.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.1.4 = fmul contract float %cond2.i.i562.1.4, %531, !dbg !148
  %sub255.2.4 = fsub contract float %condval_1.0.2.4, %normalizer.sroa.0.1.4, !dbg !145
  %mul256.2.4 = fmul contract float %sub255.2.4, 0x3FC7154760000000, !dbg !146
  %add257.2.4 = fadd contract float %mul256.2.4, 8.000000e+00, !dbg !147
  %cmp.i.i559.2.4 = fcmp contract olt float %add257.2.4, -1.260000e+02, !dbg !148
  %cond.i.i560.2.4 = select contract i1 %cmp.i.i559.2.4, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.2.4 = fadd contract float %add257.2.4, %cond.i.i560.2.4, !dbg !148
  %532 = tail call contract float @llvm.exp2.f32(float %add.i.i561.2.4), !dbg !148
  %cond2.i.i562.2.4 = select contract i1 %cmp.i.i559.2.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.2.4 = fmul contract float %cond2.i.i562.2.4, %532, !dbg !148
  %sub255.3.4 = fsub contract float %condval_1.0.3.4, %normalizer.sroa.0.1.4, !dbg !145
  %mul256.3.4 = fmul contract float %sub255.3.4, 0x3FC7154760000000, !dbg !146
  %add257.3.4 = fadd contract float %mul256.3.4, 8.000000e+00, !dbg !147
  %cmp.i.i559.3.4 = fcmp contract olt float %add257.3.4, -1.260000e+02, !dbg !148
  %cond.i.i560.3.4 = select contract i1 %cmp.i.i559.3.4, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.3.4 = fadd contract float %add257.3.4, %cond.i.i560.3.4, !dbg !148
  %533 = tail call contract float @llvm.exp2.f32(float %add.i.i561.3.4), !dbg !148
  %cond2.i.i562.3.4 = select contract i1 %cmp.i.i559.3.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.3.4 = fmul contract float %cond2.i.i562.3.4, %533, !dbg !148
  %add272.4 = fadd contract float %mul.i.i563.4, 0.000000e+00, !dbg !151
  %add272.1.4 = fadd contract float %add272.4, %mul.i.i563.1.4, !dbg !151
  %add272.2.4 = fadd contract float %add272.1.4, %mul.i.i563.2.4, !dbg !151
  %add272.3.4 = fadd contract float %add272.2.4, %mul.i.i563.3.4, !dbg !151
  %rescale.sroa.0.0.4 = select i1 %cmp235.4, float %mul.i.i.4, float 1.000000e+00, !dbg !144
  %534 = bitcast float %add272.3.4 to i32, !dbg !152
  %535 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !157
  %536 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %535) #11, !dbg !160
  %xor.i.i.i564.4 = xor i32 %536, 32, !dbg !161
  %537 = and i32 %536, -64, !dbg !162
  %and.i.i.i565.4 = add nsw i32 %537, 64, !dbg !162
  %cmp.not.i.i.i566.4 = icmp slt i32 %xor.i.i.i564.4, %and.i.i.i565.4, !dbg !163
  %cond.i.i.i567.4 = select i1 %cmp.not.i.i.i566.4, i32 %xor.i.i.i564.4, i32 %536, !dbg !164
  %shl.i.i.i568.4 = shl i32 %cond.i.i.i567.4, 2, !dbg !165
  %538 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i568.4, i32 %534), !dbg !166
  %539 = bitcast i32 %538 to float, !dbg !167
  %add.i.i569.4 = fadd contract float %add272.3.4, %539, !dbg !168
  %540 = bitcast float %add.i.i569.4 to i32, !dbg !171
  %541 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !176
  %542 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %541) #11, !dbg !179
  %xor.i.i.i.i570.4 = xor i32 %542, 16, !dbg !180
  %543 = and i32 %542, -64, !dbg !181
  %and.i.i.i.i571.4 = add nsw i32 %543, 64, !dbg !181
  %cmp.not.i.i.i.i572.4 = icmp slt i32 %xor.i.i.i.i570.4, %and.i.i.i.i571.4, !dbg !182
  %cond.i.i.i.i573.4 = select i1 %cmp.not.i.i.i.i572.4, i32 %xor.i.i.i.i570.4, i32 %542, !dbg !183
  %shl.i.i.i.i574.4 = shl i32 %cond.i.i.i.i573.4, 2, !dbg !184
  %544 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i574.4, i32 %540), !dbg !185
  %545 = bitcast i32 %544 to float, !dbg !186
  %add.i.i.i.4 = fadd contract float %add.i.i569.4, %545, !dbg !187
  %cmp281.4 = fcmp contract une float %rescale.sroa.0.0.4, 1.000000e+00, !dbg !189
  %mul285.4 = fmul contract float %denominator.sroa.0.2.3, %rescale.sroa.0.0.4, !dbg !190
  %denominator.sroa.0.1.4 = select i1 %cmp281.4, float %mul285.4, float %denominator.sroa.0.2.3, !dbg !190
  %add290.4 = fadd contract float %denominator.sroa.0.1.4, %add.i.i.i.4, !dbg !191
  %546 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !192, !noalias !200
  %547 = fptrunc float %mul.i.i563.4 to half, !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %546), !dbg !192, !noalias !200
  %548 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !205
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !205, !noalias !200
  %549 = fptrunc float %mul.i.i563.1.4 to half, !dbg !205
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %548), !dbg !205, !noalias !200
  %__1.sroa.0.0.vec.insert.4 = insertelement <4 x half> poison, half %547, i64 0, !dbg !207
  %__1.sroa.0.2.vec.insert.4 = insertelement <4 x half> %__1.sroa.0.0.vec.insert.4, half %549, i64 1, !dbg !207
  %550 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !210
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !210, !noalias !214
  %551 = fptrunc float %mul.i.i563.2.4 to half, !dbg !210
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %550), !dbg !210, !noalias !214
  %552 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !219
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !219, !noalias !214
  %553 = fptrunc float %mul.i.i563.3.4 to half, !dbg !219
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %552), !dbg !219, !noalias !214
  %__1.sroa.0.4.vec.insert.4 = insertelement <4 x half> %__1.sroa.0.2.vec.insert.4, half %551, i64 2, !dbg !221
  %__1.sroa.0.6.vec.insert.4 = insertelement <4 x half> %__1.sroa.0.4.vec.insert.4, half %553, i64 3, !dbg !221
  br i1 %cmp281.4, label %for.body312.preheader.4, label %if.end322.4, !dbg !223

for.body312.preheader.4:                          ; preds = %if.end.1.4
  %output_acc.sroa.0.0.vec.extract1641 = extractelement <4 x float> %output_acc.sroa.0.7, i64 0, !dbg !233
  %mul316.4822 = fmul contract float %rescale.sroa.0.0.4, %output_acc.sroa.0.0.vec.extract1641, !dbg !234
  %output_acc.sroa.0.0.vec.insert1643 = insertelement <4 x float> poison, float %mul316.4822, i64 0, !dbg !235
  %output_acc.sroa.0.4.vec.extract1678 = extractelement <4 x float> %output_acc.sroa.0.7, i64 1, !dbg !233
  %mul316.1.4 = fmul contract float %rescale.sroa.0.0.4, %output_acc.sroa.0.4.vec.extract1678, !dbg !234
  %output_acc.sroa.0.4.vec.insert1680 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert1643, float %mul316.1.4, i64 1, !dbg !235
  %output_acc.sroa.0.8.vec.extract1715 = extractelement <4 x float> %output_acc.sroa.0.7, i64 2, !dbg !233
  %mul316.2.4 = fmul contract float %rescale.sroa.0.0.4, %output_acc.sroa.0.8.vec.extract1715, !dbg !234
  %output_acc.sroa.0.8.vec.insert1717 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert1680, float %mul316.2.4, i64 2, !dbg !235
  %output_acc.sroa.0.12.vec.extract1752 = extractelement <4 x float> %output_acc.sroa.0.7, i64 3, !dbg !233
  %mul316.3.4 = fmul contract float %rescale.sroa.0.0.4, %output_acc.sroa.0.12.vec.extract1752, !dbg !234
  %output_acc.sroa.0.12.vec.insert1754 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert1717, float %mul316.3.4, i64 3, !dbg !235
  %output_acc.sroa.98.16.vec.extract1797 = extractelement <4 x float> %output_acc.sroa.98.7, i64 0, !dbg !233
  %mul316.4.4 = fmul contract float %rescale.sroa.0.0.4, %output_acc.sroa.98.16.vec.extract1797, !dbg !234
  %output_acc.sroa.98.16.vec.insert1799 = insertelement <4 x float> poison, float %mul316.4.4, i64 0, !dbg !235
  %output_acc.sroa.98.20.vec.extract1834 = extractelement <4 x float> %output_acc.sroa.98.7, i64 1, !dbg !233
  %mul316.5.4 = fmul contract float %rescale.sroa.0.0.4, %output_acc.sroa.98.20.vec.extract1834, !dbg !234
  %output_acc.sroa.98.20.vec.insert1836 = insertelement <4 x float> %output_acc.sroa.98.16.vec.insert1799, float %mul316.5.4, i64 1, !dbg !235
  %output_acc.sroa.98.24.vec.extract1871 = extractelement <4 x float> %output_acc.sroa.98.7, i64 2, !dbg !233
  %mul316.6.4 = fmul contract float %rescale.sroa.0.0.4, %output_acc.sroa.98.24.vec.extract1871, !dbg !234
  %output_acc.sroa.98.24.vec.insert1873 = insertelement <4 x float> %output_acc.sroa.98.20.vec.insert1836, float %mul316.6.4, i64 2, !dbg !235
  %output_acc.sroa.98.28.vec.extract1908 = extractelement <4 x float> %output_acc.sroa.98.7, i64 3, !dbg !233
  %mul316.7.4 = fmul contract float %rescale.sroa.0.0.4, %output_acc.sroa.98.28.vec.extract1908, !dbg !234
  %output_acc.sroa.98.28.vec.insert1910 = insertelement <4 x float> %output_acc.sroa.98.24.vec.insert1873, float %mul316.7.4, i64 3, !dbg !235
  %output_acc.sroa.194.32.vec.extract1953 = extractelement <4 x float> %output_acc.sroa.194.7, i64 0, !dbg !233
  %mul316.8.4 = fmul contract float %rescale.sroa.0.0.4, %output_acc.sroa.194.32.vec.extract1953, !dbg !234
  %output_acc.sroa.194.32.vec.insert1955 = insertelement <4 x float> poison, float %mul316.8.4, i64 0, !dbg !235
  %output_acc.sroa.194.36.vec.extract1990 = extractelement <4 x float> %output_acc.sroa.194.7, i64 1, !dbg !233
  %mul316.9.4 = fmul contract float %rescale.sroa.0.0.4, %output_acc.sroa.194.36.vec.extract1990, !dbg !234
  %output_acc.sroa.194.36.vec.insert1992 = insertelement <4 x float> %output_acc.sroa.194.32.vec.insert1955, float %mul316.9.4, i64 1, !dbg !235
  %output_acc.sroa.194.40.vec.extract2027 = extractelement <4 x float> %output_acc.sroa.194.7, i64 2, !dbg !233
  %mul316.10.4 = fmul contract float %rescale.sroa.0.0.4, %output_acc.sroa.194.40.vec.extract2027, !dbg !234
  %output_acc.sroa.194.40.vec.insert2029 = insertelement <4 x float> %output_acc.sroa.194.36.vec.insert1992, float %mul316.10.4, i64 2, !dbg !235
  %output_acc.sroa.194.44.vec.extract2064 = extractelement <4 x float> %output_acc.sroa.194.7, i64 3, !dbg !233
  %mul316.11.4 = fmul contract float %rescale.sroa.0.0.4, %output_acc.sroa.194.44.vec.extract2064, !dbg !234
  %output_acc.sroa.194.44.vec.insert2066 = insertelement <4 x float> %output_acc.sroa.194.40.vec.insert2029, float %mul316.11.4, i64 3, !dbg !235
  %output_acc.sroa.290.48.vec.extract2109 = extractelement <4 x float> %output_acc.sroa.290.7, i64 0, !dbg !233
  %mul316.12.4 = fmul contract float %rescale.sroa.0.0.4, %output_acc.sroa.290.48.vec.extract2109, !dbg !234
  %output_acc.sroa.290.48.vec.insert2111 = insertelement <4 x float> poison, float %mul316.12.4, i64 0, !dbg !235
  %output_acc.sroa.290.52.vec.extract2146 = extractelement <4 x float> %output_acc.sroa.290.7, i64 1, !dbg !233
  %mul316.13.4 = fmul contract float %rescale.sroa.0.0.4, %output_acc.sroa.290.52.vec.extract2146, !dbg !234
  %output_acc.sroa.290.52.vec.insert2148 = insertelement <4 x float> %output_acc.sroa.290.48.vec.insert2111, float %mul316.13.4, i64 1, !dbg !235
  %output_acc.sroa.290.56.vec.extract2183 = extractelement <4 x float> %output_acc.sroa.290.7, i64 2, !dbg !233
  %mul316.14.4 = fmul contract float %rescale.sroa.0.0.4, %output_acc.sroa.290.56.vec.extract2183, !dbg !234
  %output_acc.sroa.290.56.vec.insert2185 = insertelement <4 x float> %output_acc.sroa.290.52.vec.insert2148, float %mul316.14.4, i64 2, !dbg !235
  %output_acc.sroa.290.60.vec.extract2220 = extractelement <4 x float> %output_acc.sroa.290.7, i64 3, !dbg !233
  %mul316.15.4 = fmul contract float %rescale.sroa.0.0.4, %output_acc.sroa.290.60.vec.extract2220, !dbg !234
  %output_acc.sroa.290.60.vec.insert2222 = insertelement <4 x float> %output_acc.sroa.290.56.vec.insert2185, float %mul316.15.4, i64 3, !dbg !235
  br label %if.end322.4

if.end322.4:                                      ; preds = %for.body312.preheader.4, %if.end.1.4
  %output_acc.sroa.290.8 = phi <4 x float> [ %output_acc.sroa.290.60.vec.insert2222, %for.body312.preheader.4 ], [ %output_acc.sroa.290.7, %if.end.1.4 ], !dbg !64
  %output_acc.sroa.194.8 = phi <4 x float> [ %output_acc.sroa.194.44.vec.insert2066, %for.body312.preheader.4 ], [ %output_acc.sroa.194.7, %if.end.1.4 ], !dbg !64
  %output_acc.sroa.98.8 = phi <4 x float> [ %output_acc.sroa.98.28.vec.insert1910, %for.body312.preheader.4 ], [ %output_acc.sroa.98.7, %if.end.1.4 ], !dbg !64
  %output_acc.sroa.0.8 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1754, %for.body312.preheader.4 ], [ %output_acc.sroa.0.7, %if.end.1.4 ], !dbg !64
  %shr334.4 = lshr exact i32 %mul46.4, 2
  %add335.4 = add nuw nsw i32 %shr334.4, %shr332
  %cmp336.4 = icmp ult i32 %add335.4, 256
  br i1 %cmp336.4, label %if.then337.4, label %if.end362.4, !dbg !224

if.then337.4:                                     ; preds = %if.end322.4
  %554 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %555 = getelementptr inbounds i8, ptr addrspace(4) %554, i64 %.idx.4, !dbg !225
  %condval_2.sroa.0.0.copyload.42337 = load half, ptr addrspace(4) %555, align 2, !dbg !226, !tbaa !227
  br label %if.end362.4, !dbg !228

if.end362.4:                                      ; preds = %if.then337.4, %if.end322.4
  %556 = phi half [ %condval_2.sroa.0.0.copyload.42337, %if.then337.4 ], [ 0xH0000, %if.end322.4 ], !dbg !64
  %v_local.sroa.0.0.vec.insert892 = insertelement <4 x half> poison, half %556, i64 0, !dbg !229
  br i1 %cmp336.4, label %if.then337.1.4, label %if.end362.1.4, !dbg !224

if.then337.1.4:                                   ; preds = %if.end362.4
  %557 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %558 = getelementptr inbounds i8, ptr addrspace(4) %557, i64 %.idx.4, !dbg !225
  %arrayidx359.1.4 = getelementptr inbounds i8, ptr addrspace(4) %558, i64 128, !dbg !225
  %condval_2.sroa.0.0.copyload.1.42338 = load half, ptr addrspace(4) %arrayidx359.1.4, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.4, !dbg !228

if.end362.1.4:                                    ; preds = %if.then337.1.4, %if.end362.4
  %559 = phi half [ %condval_2.sroa.0.0.copyload.1.42338, %if.then337.1.4 ], [ 0xH0000, %if.end362.4 ], !dbg !64
  %v_local.sroa.0.2.vec.insert954 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert892, half %559, i64 1, !dbg !229
  br i1 %cmp336.4, label %if.then337.2.4, label %if.end362.2.4, !dbg !224

if.then337.2.4:                                   ; preds = %if.end362.1.4
  %560 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %561 = getelementptr inbounds i8, ptr addrspace(4) %560, i64 %.idx.4, !dbg !225
  %arrayidx359.2.4 = getelementptr inbounds i8, ptr addrspace(4) %561, i64 256, !dbg !225
  %condval_2.sroa.0.0.copyload.2.42339 = load half, ptr addrspace(4) %arrayidx359.2.4, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.4, !dbg !228

if.end362.2.4:                                    ; preds = %if.then337.2.4, %if.end362.1.4
  %562 = phi half [ %condval_2.sroa.0.0.copyload.2.42339, %if.then337.2.4 ], [ 0xH0000, %if.end362.1.4 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1016 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert954, half %562, i64 2, !dbg !229
  br i1 %cmp336.4, label %if.then337.3.4, label %if.end362.3.4, !dbg !224

if.then337.3.4:                                   ; preds = %if.end362.2.4
  %563 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %564 = getelementptr inbounds i8, ptr addrspace(4) %563, i64 %.idx.4, !dbg !225
  %arrayidx359.3.4 = getelementptr inbounds i8, ptr addrspace(4) %564, i64 384, !dbg !225
  %condval_2.sroa.0.0.copyload.3.42340 = load half, ptr addrspace(4) %arrayidx359.3.4, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.4, !dbg !228

if.end362.3.4:                                    ; preds = %if.then337.3.4, %if.end362.2.4
  %565 = phi half [ %condval_2.sroa.0.0.copyload.3.42340, %if.then337.3.4 ], [ 0xH0000, %if.end362.2.4 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1078 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1016, half %565, i64 3, !dbg !229
  %566 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1078, <4 x half> %__1.sroa.0.6.vec.insert.4, <4 x float> %output_acc.sroa.0.8), !dbg !230
  br i1 %cmp336.4, label %if.then337.1641.4, label %if.end362.1643.4, !dbg !224

if.then337.1641.4:                                ; preds = %if.end362.3.4
  %567 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %568 = getelementptr inbounds i8, ptr addrspace(4) %567, i64 %.idx.4, !dbg !225
  %569 = getelementptr inbounds i8, ptr addrspace(4) %568, i64 32, !dbg !225
  %condval_2.sroa.0.0.copyload.1640.42341 = load half, ptr addrspace(4) %569, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1643.4, !dbg !228

if.end362.1643.4:                                 ; preds = %if.then337.1641.4, %if.end362.3.4
  %570 = phi half [ %condval_2.sroa.0.0.copyload.1640.42341, %if.then337.1641.4 ], [ 0xH0000, %if.end362.3.4 ], !dbg !64
  %v_local.sroa.0.0.vec.insert894 = insertelement <4 x half> poison, half %570, i64 0, !dbg !229
  br i1 %cmp336.4, label %if.then337.1.1.4, label %if.end362.1.1.4, !dbg !224

if.then337.1.1.4:                                 ; preds = %if.end362.1643.4
  %571 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %572 = getelementptr inbounds i8, ptr addrspace(4) %571, i64 %.idx.4, !dbg !225
  %arrayidx359.1.1.4 = getelementptr inbounds i8, ptr addrspace(4) %572, i64 160, !dbg !225
  %condval_2.sroa.0.0.copyload.1.1.42342 = load half, ptr addrspace(4) %arrayidx359.1.1.4, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.1.4, !dbg !228

if.end362.1.1.4:                                  ; preds = %if.then337.1.1.4, %if.end362.1643.4
  %573 = phi half [ %condval_2.sroa.0.0.copyload.1.1.42342, %if.then337.1.1.4 ], [ 0xH0000, %if.end362.1643.4 ], !dbg !64
  %v_local.sroa.0.2.vec.insert956 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert894, half %573, i64 1, !dbg !229
  br i1 %cmp336.4, label %if.then337.2.1.4, label %if.end362.2.1.4, !dbg !224

if.then337.2.1.4:                                 ; preds = %if.end362.1.1.4
  %574 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %575 = getelementptr inbounds i8, ptr addrspace(4) %574, i64 %.idx.4, !dbg !225
  %arrayidx359.2.1.4 = getelementptr inbounds i8, ptr addrspace(4) %575, i64 288, !dbg !225
  %condval_2.sroa.0.0.copyload.2.1.42343 = load half, ptr addrspace(4) %arrayidx359.2.1.4, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.1.4, !dbg !228

if.end362.2.1.4:                                  ; preds = %if.then337.2.1.4, %if.end362.1.1.4
  %576 = phi half [ %condval_2.sroa.0.0.copyload.2.1.42343, %if.then337.2.1.4 ], [ 0xH0000, %if.end362.1.1.4 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1018 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert956, half %576, i64 2, !dbg !229
  br i1 %cmp336.4, label %if.then337.3.1.4, label %if.end362.3.1.4, !dbg !224

if.then337.3.1.4:                                 ; preds = %if.end362.2.1.4
  %577 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %578 = getelementptr inbounds i8, ptr addrspace(4) %577, i64 %.idx.4, !dbg !225
  %arrayidx359.3.1.4 = getelementptr inbounds i8, ptr addrspace(4) %578, i64 416, !dbg !225
  %condval_2.sroa.0.0.copyload.3.1.42344 = load half, ptr addrspace(4) %arrayidx359.3.1.4, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.1.4, !dbg !228

if.end362.3.1.4:                                  ; preds = %if.then337.3.1.4, %if.end362.2.1.4
  %579 = phi half [ %condval_2.sroa.0.0.copyload.3.1.42344, %if.then337.3.1.4 ], [ 0xH0000, %if.end362.2.1.4 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1080 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1018, half %579, i64 3, !dbg !229
  %580 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1080, <4 x half> %__1.sroa.0.6.vec.insert.4, <4 x float> %output_acc.sroa.98.8), !dbg !230
  br i1 %cmp336.4, label %if.then337.2646.4, label %if.end362.2648.4, !dbg !224

if.then337.2646.4:                                ; preds = %if.end362.3.1.4
  %581 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %582 = getelementptr inbounds i8, ptr addrspace(4) %581, i64 %.idx.4, !dbg !225
  %583 = getelementptr inbounds i8, ptr addrspace(4) %582, i64 64, !dbg !225
  %condval_2.sroa.0.0.copyload.2645.42345 = load half, ptr addrspace(4) %583, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2648.4, !dbg !228

if.end362.2648.4:                                 ; preds = %if.then337.2646.4, %if.end362.3.1.4
  %584 = phi half [ %condval_2.sroa.0.0.copyload.2645.42345, %if.then337.2646.4 ], [ 0xH0000, %if.end362.3.1.4 ], !dbg !64
  %v_local.sroa.0.0.vec.insert896 = insertelement <4 x half> poison, half %584, i64 0, !dbg !229
  br i1 %cmp336.4, label %if.then337.1.2.4, label %if.end362.1.2.4, !dbg !224

if.then337.1.2.4:                                 ; preds = %if.end362.2648.4
  %585 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %586 = getelementptr inbounds i8, ptr addrspace(4) %585, i64 %.idx.4, !dbg !225
  %arrayidx359.1.2.4 = getelementptr inbounds i8, ptr addrspace(4) %586, i64 192, !dbg !225
  %condval_2.sroa.0.0.copyload.1.2.42346 = load half, ptr addrspace(4) %arrayidx359.1.2.4, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.2.4, !dbg !228

if.end362.1.2.4:                                  ; preds = %if.then337.1.2.4, %if.end362.2648.4
  %587 = phi half [ %condval_2.sroa.0.0.copyload.1.2.42346, %if.then337.1.2.4 ], [ 0xH0000, %if.end362.2648.4 ], !dbg !64
  %v_local.sroa.0.2.vec.insert958 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert896, half %587, i64 1, !dbg !229
  br i1 %cmp336.4, label %if.then337.2.2.4, label %if.end362.2.2.4, !dbg !224

if.then337.2.2.4:                                 ; preds = %if.end362.1.2.4
  %588 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %589 = getelementptr inbounds i8, ptr addrspace(4) %588, i64 %.idx.4, !dbg !225
  %arrayidx359.2.2.4 = getelementptr inbounds i8, ptr addrspace(4) %589, i64 320, !dbg !225
  %condval_2.sroa.0.0.copyload.2.2.42347 = load half, ptr addrspace(4) %arrayidx359.2.2.4, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.2.4, !dbg !228

if.end362.2.2.4:                                  ; preds = %if.then337.2.2.4, %if.end362.1.2.4
  %590 = phi half [ %condval_2.sroa.0.0.copyload.2.2.42347, %if.then337.2.2.4 ], [ 0xH0000, %if.end362.1.2.4 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1020 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert958, half %590, i64 2, !dbg !229
  br i1 %cmp336.4, label %if.then337.3.2.4, label %if.end362.3.2.4, !dbg !224

if.then337.3.2.4:                                 ; preds = %if.end362.2.2.4
  %591 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %592 = getelementptr inbounds i8, ptr addrspace(4) %591, i64 %.idx.4, !dbg !225
  %arrayidx359.3.2.4 = getelementptr inbounds i8, ptr addrspace(4) %592, i64 448, !dbg !225
  %condval_2.sroa.0.0.copyload.3.2.42348 = load half, ptr addrspace(4) %arrayidx359.3.2.4, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.2.4, !dbg !228

if.end362.3.2.4:                                  ; preds = %if.then337.3.2.4, %if.end362.2.2.4
  %593 = phi half [ %condval_2.sroa.0.0.copyload.3.2.42348, %if.then337.3.2.4 ], [ 0xH0000, %if.end362.2.2.4 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1082 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1020, half %593, i64 3, !dbg !229
  %594 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1082, <4 x half> %__1.sroa.0.6.vec.insert.4, <4 x float> %output_acc.sroa.194.8), !dbg !230
  br i1 %cmp336.4, label %if.then337.3651.4, label %if.end362.3653.4, !dbg !224

if.then337.3651.4:                                ; preds = %if.end362.3.2.4
  %595 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %596 = getelementptr inbounds i8, ptr addrspace(4) %595, i64 %.idx.4, !dbg !225
  %597 = getelementptr inbounds i8, ptr addrspace(4) %596, i64 96, !dbg !225
  %condval_2.sroa.0.0.copyload.3650.42349 = load half, ptr addrspace(4) %597, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3653.4, !dbg !228

if.end362.3653.4:                                 ; preds = %if.then337.3651.4, %if.end362.3.2.4
  %598 = phi half [ %condval_2.sroa.0.0.copyload.3650.42349, %if.then337.3651.4 ], [ 0xH0000, %if.end362.3.2.4 ], !dbg !64
  %v_local.sroa.0.0.vec.insert898 = insertelement <4 x half> poison, half %598, i64 0, !dbg !229
  br i1 %cmp336.4, label %if.then337.1.3.4, label %if.end362.1.3.4, !dbg !224

if.then337.1.3.4:                                 ; preds = %if.end362.3653.4
  %599 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %600 = getelementptr inbounds i8, ptr addrspace(4) %599, i64 %.idx.4, !dbg !225
  %arrayidx359.1.3.4 = getelementptr inbounds i8, ptr addrspace(4) %600, i64 224, !dbg !225
  %condval_2.sroa.0.0.copyload.1.3.42350 = load half, ptr addrspace(4) %arrayidx359.1.3.4, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.3.4, !dbg !228

if.end362.1.3.4:                                  ; preds = %if.then337.1.3.4, %if.end362.3653.4
  %601 = phi half [ %condval_2.sroa.0.0.copyload.1.3.42350, %if.then337.1.3.4 ], [ 0xH0000, %if.end362.3653.4 ], !dbg !64
  %v_local.sroa.0.2.vec.insert960 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert898, half %601, i64 1, !dbg !229
  br i1 %cmp336.4, label %if.then337.2.3.4, label %if.end362.2.3.4, !dbg !224

if.then337.2.3.4:                                 ; preds = %if.end362.1.3.4
  %602 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %603 = getelementptr inbounds i8, ptr addrspace(4) %602, i64 %.idx.4, !dbg !225
  %arrayidx359.2.3.4 = getelementptr inbounds i8, ptr addrspace(4) %603, i64 352, !dbg !225
  %condval_2.sroa.0.0.copyload.2.3.42351 = load half, ptr addrspace(4) %arrayidx359.2.3.4, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.3.4, !dbg !228

if.end362.2.3.4:                                  ; preds = %if.then337.2.3.4, %if.end362.1.3.4
  %604 = phi half [ %condval_2.sroa.0.0.copyload.2.3.42351, %if.then337.2.3.4 ], [ 0xH0000, %if.end362.1.3.4 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1022 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert960, half %604, i64 2, !dbg !229
  br i1 %cmp336.4, label %if.then337.3.3.4, label %if.end362.3.3.4, !dbg !224

if.then337.3.3.4:                                 ; preds = %if.end362.2.3.4
  %605 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %606 = getelementptr inbounds i8, ptr addrspace(4) %605, i64 %.idx.4, !dbg !225
  %arrayidx359.3.3.4 = getelementptr inbounds i8, ptr addrspace(4) %606, i64 480, !dbg !225
  %condval_2.sroa.0.0.copyload.3.3.42352 = load half, ptr addrspace(4) %arrayidx359.3.3.4, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.3.4, !dbg !228

if.end362.3.3.4:                                  ; preds = %if.then337.3.3.4, %if.end362.2.3.4
  %607 = phi half [ %condval_2.sroa.0.0.copyload.3.3.42352, %if.then337.3.3.4 ], [ 0xH0000, %if.end362.2.3.4 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1084 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1022, half %607, i64 3, !dbg !229
  %608 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1084, <4 x half> %__1.sroa.0.6.vec.insert.4, <4 x float> %output_acc.sroa.290.8), !dbg !230
  br label %if.end381.4, !dbg !231

if.end381.4:                                      ; preds = %if.end362.3.3.4, %if.end381.3
  %output_acc.sroa.290.9 = phi <4 x float> [ %output_acc.sroa.290.7, %if.end381.3 ], [ %608, %if.end362.3.3.4 ], !dbg !64
  %output_acc.sroa.194.9 = phi <4 x float> [ %output_acc.sroa.194.7, %if.end381.3 ], [ %594, %if.end362.3.3.4 ], !dbg !64
  %output_acc.sroa.98.9 = phi <4 x float> [ %output_acc.sroa.98.7, %if.end381.3 ], [ %580, %if.end362.3.3.4 ], !dbg !64
  %output_acc.sroa.0.9 = phi <4 x float> [ %output_acc.sroa.0.7, %if.end381.3 ], [ %566, %if.end362.3.3.4 ], !dbg !64
  %normalizer.sroa.0.2.4 = phi float [ %normalizer.sroa.0.2.3, %if.end381.3 ], [ %normalizer.sroa.0.1.4, %if.end362.3.3.4 ], !dbg !64
  %denominator.sroa.0.2.4 = phi float [ %denominator.sroa.0.2.3, %if.end381.3 ], [ %add290.4, %if.end362.3.3.4 ], !dbg !64
  %609 = or disjoint i64 %19, 5, !dbg !232
  %arrayidx45.5 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %609, !dbg !47
  %610 = load i32, ptr addrspace(1) %arrayidx45.5, align 4, !dbg !47, !tbaa !30
  %mul46.5 = shl nsw i32 %610, 4, !dbg !48
  %cmp47.5 = icmp slt i32 %610, 0, !dbg !49
  %cmp49.not.5 = icmp sgt i32 %mul46.5, %1
  %or.cond.5 = select i1 %cmp47.5, i1 true, i1 %cmp49.not.5, !dbg !50
  br i1 %or.cond.5, label %if.end381.5, label %if.then.5, !dbg !50

if.then.5:                                        ; preds = %if.end381.4
  fence syncscope("warp") release, !dbg !51
  tail call void @llvm.mxc.barrier.warp(), !dbg !57
  fence syncscope("warp") acquire, !dbg !58
  %add56.5 = add nuw nsw i32 %mul46.5, %shr55
  %conv66.5 = zext nneg i32 %mul46.5 to i64
  %.idx.5 = shl nuw nsw i64 %conv66.5, 7
  %gep.5 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep616, i64 %.idx.5, !dbg !59
  %cmp59.5 = icmp ult i32 %add56.5, 1024, !dbg !60
  br i1 %cmp59.5, label %if.then60.5, label %if.end.5, !dbg !61

if.then60.5:                                      ; preds = %if.then.5
  %gep602.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.5, i64 %mul62
  %condval.sroa.7.0.add.ptr73.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep602.5, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep602.5, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep602.5, i64 4
  %condval.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %gep602.5, align 16, !dbg !62, !tbaa !30
  %condval.sroa.5.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr73.sroa_idx.5, align 4, !dbg !62, !tbaa !30
  %condval.sroa.6.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr73.sroa_idx.5, align 8, !dbg !62, !tbaa !30
  %condval.sroa.7.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr73.sroa_idx.5, align 4, !dbg !62, !tbaa !30
  br label %if.end.5, !dbg !63

if.end.5:                                         ; preds = %if.then60.5, %if.then.5
  %condval.sroa.0.0.5 = phi i32 [ %condval.sroa.0.0.copyload.5, %if.then60.5 ], [ 0, %if.then.5 ], !dbg !64
  %condval.sroa.5.0.5 = phi i32 [ %condval.sroa.5.0.copyload.5, %if.then60.5 ], [ 0, %if.then.5 ], !dbg !64
  %condval.sroa.6.0.5 = phi i32 [ %condval.sroa.6.0.copyload.5, %if.then60.5 ], [ 0, %if.then.5 ], !dbg !64
  %condval.sroa.7.0.5 = phi i32 [ %condval.sroa.7.0.copyload.5, %if.then60.5 ], [ 0, %if.then.5 ], !dbg !64
  %611 = or disjoint i32 %mul97, %mul106, !dbg !65
  %612 = or disjoint i32 %611, %mul116, !dbg !66
  %613 = or disjoint i32 %612, %mul125, !dbg !67
  %add.ptr128.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %613, !dbg !68
  store i32 %condval.sroa.0.0.5, ptr addrspace(3) %add.ptr128.5, align 16, !dbg !69, !tbaa !30
  %condval.sroa.5.0.add.ptr128.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.5, i32 4, !dbg !69
  store i32 %condval.sroa.5.0.5, ptr addrspace(3) %condval.sroa.5.0.add.ptr128.sroa_idx.5, align 4, !dbg !69, !tbaa !30
  %condval.sroa.6.0.add.ptr128.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.5, i32 8, !dbg !69
  store i32 %condval.sroa.6.0.5, ptr addrspace(3) %condval.sroa.6.0.add.ptr128.sroa_idx.5, align 8, !dbg !69, !tbaa !30
  %condval.sroa.7.0.add.ptr128.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.5, i32 12, !dbg !69
  store i32 %condval.sroa.7.0.5, ptr addrspace(3) %condval.sroa.7.0.add.ptr128.sroa_idx.5, align 4, !dbg !69, !tbaa !30
  %cmp59.1.5 = icmp ult i32 %add56.5, 1016, !dbg !60
  br i1 %cmp59.1.5, label %if.then60.1.5, label %if.end.1.5, !dbg !61

if.then60.1.5:                                    ; preds = %if.end.5
  %add65.1.5 = or disjoint i64 %mul62, 512
  %gep602.1.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.5, i64 %add65.1.5
  %condval.sroa.7.0.add.ptr73.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1.5, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1.5, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1.5, i64 4
  %condval.sroa.0.0.copyload.1.5 = load i32, ptr addrspace(4) %gep602.1.5, align 16, !dbg !62, !tbaa !30
  %condval.sroa.5.0.copyload.1.5 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr73.sroa_idx.1.5, align 4, !dbg !62, !tbaa !30
  %condval.sroa.6.0.copyload.1.5 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr73.sroa_idx.1.5, align 8, !dbg !62, !tbaa !30
  %condval.sroa.7.0.copyload.1.5 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr73.sroa_idx.1.5, align 4, !dbg !62, !tbaa !30
  br label %if.end.1.5, !dbg !63

if.end.1.5:                                       ; preds = %if.then60.1.5, %if.end.5
  %condval.sroa.0.0.1.5 = phi i32 [ %condval.sroa.0.0.copyload.1.5, %if.then60.1.5 ], [ 0, %if.end.5 ], !dbg !64
  %condval.sroa.5.0.1.5 = phi i32 [ %condval.sroa.5.0.copyload.1.5, %if.then60.1.5 ], [ 0, %if.end.5 ], !dbg !64
  %condval.sroa.6.0.1.5 = phi i32 [ %condval.sroa.6.0.copyload.1.5, %if.then60.1.5 ], [ 0, %if.end.5 ], !dbg !64
  %condval.sroa.7.0.1.5 = phi i32 [ %condval.sroa.7.0.copyload.1.5, %if.then60.1.5 ], [ 0, %if.end.5 ], !dbg !64
  %614 = add nuw nsw i32 %mul97, 512, !dbg !70
  %615 = or disjoint i32 %614, %mul106, !dbg !65
  %616 = or disjoint i32 %615, %mul116, !dbg !66
  %617 = or disjoint i32 %616, %mul125, !dbg !67
  %add.ptr128.1.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %617, !dbg !68
  store i32 %condval.sroa.0.0.1.5, ptr addrspace(3) %add.ptr128.1.5, align 16, !dbg !69, !tbaa !30
  %condval.sroa.5.0.add.ptr128.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1.5, i32 4, !dbg !69
  store i32 %condval.sroa.5.0.1.5, ptr addrspace(3) %condval.sroa.5.0.add.ptr128.sroa_idx.1.5, align 4, !dbg !69, !tbaa !30
  %condval.sroa.6.0.add.ptr128.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1.5, i32 8, !dbg !69
  store i32 %condval.sroa.6.0.1.5, ptr addrspace(3) %condval.sroa.6.0.add.ptr128.sroa_idx.1.5, align 8, !dbg !69, !tbaa !30
  %condval.sroa.7.0.add.ptr128.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1.5, i32 12, !dbg !69
  store i32 %condval.sroa.7.0.1.5, ptr addrspace(3) %condval.sroa.7.0.add.ptr128.sroa_idx.1.5, align 4, !dbg !69, !tbaa !30
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %and148.5 = shl nuw nsw i32 %3, 5, !dbg !76
  %mul149.5 = and i32 %and148.5, 32, !dbg !76
  %and156.5 = shl nuw nsw i32 %and152, 4, !dbg !77
  %mul157.5 = and i32 %and156.5, 16, !dbg !77
  %add166.5 = or disjoint i32 %add158, %mul157.5, !dbg !78
  %add171.5 = or disjoint i32 %add166.5, %mul149.5, !dbg !79
  %add.ptr173.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.5, !dbg !80
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %add.ptr173.5, align 8, !dbg !81
  %618 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %5, <4 x float> zeroinitializer), !dbg !82, !call_argsrelate !83
  %add155.1.5 = shl nuw nsw i32 %and152, 4, !dbg !77
  %619 = and i32 %add155.1.5, 16, !dbg !77
  %620 = or disjoint i32 %619, %add158, !dbg !78
  %621 = or disjoint i32 %620, %mul149.5, !dbg !79
  %add171.1.5 = xor i32 %621, 16, !dbg !79
  %add.ptr173.1.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.1.5, !dbg !80
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr173.1.5, align 8, !dbg !81
  %622 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %7, <4 x float> %618), !dbg !82, !call_argsrelate !83
  %add147.2.5 = shl nuw nsw i32 %3, 5, !dbg !76
  %623 = and i32 %add147.2.5, 32, !dbg !76
  %mul149.2.5 = xor i32 %623, 32, !dbg !76
  %add155.2.5 = shl nuw nsw i32 %and152, 4, !dbg !77
  %mul157.2.5 = and i32 %add155.2.5, 16, !dbg !77
  %add166.2.5 = or disjoint i32 %add158, %mul157.2.5, !dbg !78
  %add171.2.5 = or disjoint i32 %add166.2.5, %mul149.2.5, !dbg !79
  %add.ptr173.2.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.2.5, !dbg !80
  %k_local.sroa.0.0.copyload.2.5 = load <4 x half>, ptr addrspace(3) %add.ptr173.2.5, align 8, !dbg !81
  %624 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.5, <4 x half> %9, <4 x float> %622), !dbg !82, !call_argsrelate !83
  %add155.3.5 = shl nuw nsw i32 %and152, 4, !dbg !77
  %625 = and i32 %add155.3.5, 16, !dbg !77
  %626 = or disjoint i32 %625, %add158, !dbg !78
  %627 = or disjoint i32 %626, %mul149.2.5, !dbg !79
  %add171.3.5 = xor i32 %627, 16, !dbg !79
  %add.ptr173.3.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.3.5, !dbg !80
  %k_local.sroa.0.0.copyload.3.5 = load <4 x half>, ptr addrspace(3) %add.ptr173.3.5, align 8, !dbg !81
  %628 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.5, <4 x half> %11, <4 x float> %624), !dbg !82, !call_argsrelate !83
  %add195.5 = add nuw nsw i32 %mul46.5, %mul14
  %cmp198.not.5 = icmp sgt i32 %add195.5, %1, !dbg !84
  %scores.sroa.0.0.vec.extract1197 = extractelement <4 x float> %628, i64 0
  %spec.select2405 = select i1 %cmp198.not.5, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1197, !dbg !85
  %cmp198.not.1.5.not = icmp slt i32 %add195.5, %1, !dbg !84
  %scores.sroa.0.4.vec.extract1332 = extractelement <4 x float> %628, i64 1, !dbg !85
  %condval_1.0.1.5 = select i1 %cmp198.not.1.5.not, float %scores.sroa.0.4.vec.extract1332, float 0xFFF0000000000000, !dbg !85
  %add196.2.5 = or disjoint i32 %add195.5, 2, !dbg !86
  %cmp198.not.2.5 = icmp sgt i32 %add196.2.5, %1, !dbg !84
  %scores.sroa.0.8.vec.extract1457 = extractelement <4 x float> %628, i64 2, !dbg !85
  %condval_1.0.2.5 = select i1 %cmp198.not.2.5, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1457, !dbg !85
  %add196.3.5 = or disjoint i32 %add195.5, 3, !dbg !86
  %cmp198.not.3.5 = icmp sgt i32 %add196.3.5, %1, !dbg !84
  %scores.sroa.0.12.vec.extract1582 = extractelement <4 x float> %628, i64 3, !dbg !85
  %condval_1.0.3.5 = select i1 %cmp198.not.3.5, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1582, !dbg !85
  %629 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2405, float 0xFFF0000000000000), !dbg !87
  %630 = tail call contract noundef float @llvm.maxnum.f32(float %629, float %condval_1.0.1.5), !dbg !87
  %631 = tail call contract noundef float @llvm.maxnum.f32(float %630, float %condval_1.0.2.5), !dbg !87
  %632 = tail call contract noundef float @llvm.maxnum.f32(float %631, float %condval_1.0.3.5), !dbg !87
  %633 = bitcast float %632 to i32, !dbg !91
  %634 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %635 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %634) #11, !dbg !105
  %xor.i.i.i.5 = xor i32 %635, 32, !dbg !106
  %636 = and i32 %635, -64, !dbg !107
  %and.i.i.i.5 = add nsw i32 %636, 64, !dbg !107
  %cmp.not.i.i.i.5 = icmp slt i32 %xor.i.i.i.5, %and.i.i.i.5, !dbg !108
  %cond.i.i.i.5 = select i1 %cmp.not.i.i.i.5, i32 %xor.i.i.i.5, i32 %635, !dbg !109
  %shl.i.i.i.5 = shl i32 %cond.i.i.i.5, 2, !dbg !110
  %637 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.5, i32 %633), !dbg !111
  %638 = bitcast i32 %637 to float, !dbg !112
  %639 = tail call contract noundef float @llvm.maxnum.f32(float %632, float %638), !dbg !113
  %640 = bitcast float %639 to i32, !dbg !121
  %641 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !126
  %642 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %641) #11, !dbg !129
  %xor.i.i.i.i.5 = xor i32 %642, 16, !dbg !130
  %643 = and i32 %642, -64, !dbg !131
  %and.i.i.i.i.5 = add nsw i32 %643, 64, !dbg !131
  %cmp.not.i.i.i.i.5 = icmp slt i32 %xor.i.i.i.i.5, %and.i.i.i.i.5, !dbg !132
  %cond.i.i.i.i.5 = select i1 %cmp.not.i.i.i.i.5, i32 %xor.i.i.i.i.5, i32 %642, !dbg !133
  %shl.i.i.i.i.5 = shl i32 %cond.i.i.i.i.5, 2, !dbg !134
  %644 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.5, i32 %640), !dbg !135
  %645 = bitcast i32 %644 to float, !dbg !136
  %646 = tail call contract noundef float @llvm.maxnum.f32(float %639, float %645), !dbg !137
  %sub.5 = fsub contract float %646, %normalizer.sroa.0.2.4, !dbg !141
  %mul234.5 = fmul contract float %sub.5, 0x3FC7154760000000, !dbg !142
  %cmp235.5 = fcmp contract ogt float %mul234.5, 7.000000e+00, !dbg !143
  %sub239.5 = fsub contract float %normalizer.sroa.0.2.4, %646
  %mul240.5 = fmul contract float %sub239.5, 0x3FC7154760000000
  %cmp.i.i.5 = fcmp contract olt float %mul240.5, -1.260000e+02
  %cond.i.i.5 = select contract i1 %cmp.i.i.5, float 6.400000e+01, float 0.000000e+00
  %add.i.i.5 = fadd contract float %mul240.5, %cond.i.i.5
  %647 = tail call contract float @llvm.exp2.f32(float %add.i.i.5)
  %cond2.i.i.5 = select contract i1 %cmp.i.i.5, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i.5 = fmul contract float %cond2.i.i.5, %647
  %normalizer.sroa.0.1.5 = select i1 %cmp235.5, float %646, float %normalizer.sroa.0.2.4, !dbg !144
  %sub255.5 = fsub contract float %spec.select2405, %normalizer.sroa.0.1.5, !dbg !145
  %mul256.5 = fmul contract float %sub255.5, 0x3FC7154760000000, !dbg !146
  %add257.5 = fadd contract float %mul256.5, 8.000000e+00, !dbg !147
  %cmp.i.i559.5 = fcmp contract olt float %add257.5, -1.260000e+02, !dbg !148
  %cond.i.i560.5 = select contract i1 %cmp.i.i559.5, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.5 = fadd contract float %add257.5, %cond.i.i560.5, !dbg !148
  %648 = tail call contract float @llvm.exp2.f32(float %add.i.i561.5), !dbg !148
  %cond2.i.i562.5 = select contract i1 %cmp.i.i559.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.5 = fmul contract float %cond2.i.i562.5, %648, !dbg !148
  %sub255.1.5 = fsub contract float %condval_1.0.1.5, %normalizer.sroa.0.1.5, !dbg !145
  %mul256.1.5 = fmul contract float %sub255.1.5, 0x3FC7154760000000, !dbg !146
  %add257.1.5 = fadd contract float %mul256.1.5, 8.000000e+00, !dbg !147
  %cmp.i.i559.1.5 = fcmp contract olt float %add257.1.5, -1.260000e+02, !dbg !148
  %cond.i.i560.1.5 = select contract i1 %cmp.i.i559.1.5, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.1.5 = fadd contract float %add257.1.5, %cond.i.i560.1.5, !dbg !148
  %649 = tail call contract float @llvm.exp2.f32(float %add.i.i561.1.5), !dbg !148
  %cond2.i.i562.1.5 = select contract i1 %cmp.i.i559.1.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.1.5 = fmul contract float %cond2.i.i562.1.5, %649, !dbg !148
  %sub255.2.5 = fsub contract float %condval_1.0.2.5, %normalizer.sroa.0.1.5, !dbg !145
  %mul256.2.5 = fmul contract float %sub255.2.5, 0x3FC7154760000000, !dbg !146
  %add257.2.5 = fadd contract float %mul256.2.5, 8.000000e+00, !dbg !147
  %cmp.i.i559.2.5 = fcmp contract olt float %add257.2.5, -1.260000e+02, !dbg !148
  %cond.i.i560.2.5 = select contract i1 %cmp.i.i559.2.5, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.2.5 = fadd contract float %add257.2.5, %cond.i.i560.2.5, !dbg !148
  %650 = tail call contract float @llvm.exp2.f32(float %add.i.i561.2.5), !dbg !148
  %cond2.i.i562.2.5 = select contract i1 %cmp.i.i559.2.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.2.5 = fmul contract float %cond2.i.i562.2.5, %650, !dbg !148
  %sub255.3.5 = fsub contract float %condval_1.0.3.5, %normalizer.sroa.0.1.5, !dbg !145
  %mul256.3.5 = fmul contract float %sub255.3.5, 0x3FC7154760000000, !dbg !146
  %add257.3.5 = fadd contract float %mul256.3.5, 8.000000e+00, !dbg !147
  %cmp.i.i559.3.5 = fcmp contract olt float %add257.3.5, -1.260000e+02, !dbg !148
  %cond.i.i560.3.5 = select contract i1 %cmp.i.i559.3.5, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.3.5 = fadd contract float %add257.3.5, %cond.i.i560.3.5, !dbg !148
  %651 = tail call contract float @llvm.exp2.f32(float %add.i.i561.3.5), !dbg !148
  %cond2.i.i562.3.5 = select contract i1 %cmp.i.i559.3.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.3.5 = fmul contract float %cond2.i.i562.3.5, %651, !dbg !148
  %add272.5 = fadd contract float %mul.i.i563.5, 0.000000e+00, !dbg !151
  %add272.1.5 = fadd contract float %add272.5, %mul.i.i563.1.5, !dbg !151
  %add272.2.5 = fadd contract float %add272.1.5, %mul.i.i563.2.5, !dbg !151
  %add272.3.5 = fadd contract float %add272.2.5, %mul.i.i563.3.5, !dbg !151
  %rescale.sroa.0.0.5 = select i1 %cmp235.5, float %mul.i.i.5, float 1.000000e+00, !dbg !144
  %652 = bitcast float %add272.3.5 to i32, !dbg !152
  %653 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !157
  %654 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %653) #11, !dbg !160
  %xor.i.i.i564.5 = xor i32 %654, 32, !dbg !161
  %655 = and i32 %654, -64, !dbg !162
  %and.i.i.i565.5 = add nsw i32 %655, 64, !dbg !162
  %cmp.not.i.i.i566.5 = icmp slt i32 %xor.i.i.i564.5, %and.i.i.i565.5, !dbg !163
  %cond.i.i.i567.5 = select i1 %cmp.not.i.i.i566.5, i32 %xor.i.i.i564.5, i32 %654, !dbg !164
  %shl.i.i.i568.5 = shl i32 %cond.i.i.i567.5, 2, !dbg !165
  %656 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i568.5, i32 %652), !dbg !166
  %657 = bitcast i32 %656 to float, !dbg !167
  %add.i.i569.5 = fadd contract float %add272.3.5, %657, !dbg !168
  %658 = bitcast float %add.i.i569.5 to i32, !dbg !171
  %659 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !176
  %660 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %659) #11, !dbg !179
  %xor.i.i.i.i570.5 = xor i32 %660, 16, !dbg !180
  %661 = and i32 %660, -64, !dbg !181
  %and.i.i.i.i571.5 = add nsw i32 %661, 64, !dbg !181
  %cmp.not.i.i.i.i572.5 = icmp slt i32 %xor.i.i.i.i570.5, %and.i.i.i.i571.5, !dbg !182
  %cond.i.i.i.i573.5 = select i1 %cmp.not.i.i.i.i572.5, i32 %xor.i.i.i.i570.5, i32 %660, !dbg !183
  %shl.i.i.i.i574.5 = shl i32 %cond.i.i.i.i573.5, 2, !dbg !184
  %662 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i574.5, i32 %658), !dbg !185
  %663 = bitcast i32 %662 to float, !dbg !186
  %add.i.i.i.5 = fadd contract float %add.i.i569.5, %663, !dbg !187
  %cmp281.5 = fcmp contract une float %rescale.sroa.0.0.5, 1.000000e+00, !dbg !189
  %mul285.5 = fmul contract float %denominator.sroa.0.2.4, %rescale.sroa.0.0.5, !dbg !190
  %denominator.sroa.0.1.5 = select i1 %cmp281.5, float %mul285.5, float %denominator.sroa.0.2.4, !dbg !190
  %add290.5 = fadd contract float %denominator.sroa.0.1.5, %add.i.i.i.5, !dbg !191
  %664 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !192, !noalias !200
  %665 = fptrunc float %mul.i.i563.5 to half, !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %664), !dbg !192, !noalias !200
  %666 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !205
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !205, !noalias !200
  %667 = fptrunc float %mul.i.i563.1.5 to half, !dbg !205
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %666), !dbg !205, !noalias !200
  %__1.sroa.0.0.vec.insert.5 = insertelement <4 x half> poison, half %665, i64 0, !dbg !207
  %__1.sroa.0.2.vec.insert.5 = insertelement <4 x half> %__1.sroa.0.0.vec.insert.5, half %667, i64 1, !dbg !207
  %668 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !210
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !210, !noalias !214
  %669 = fptrunc float %mul.i.i563.2.5 to half, !dbg !210
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %668), !dbg !210, !noalias !214
  %670 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !219
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !219, !noalias !214
  %671 = fptrunc float %mul.i.i563.3.5 to half, !dbg !219
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %670), !dbg !219, !noalias !214
  %__1.sroa.0.4.vec.insert.5 = insertelement <4 x half> %__1.sroa.0.2.vec.insert.5, half %669, i64 2, !dbg !221
  %__1.sroa.0.6.vec.insert.5 = insertelement <4 x half> %__1.sroa.0.4.vec.insert.5, half %671, i64 3, !dbg !221
  br i1 %cmp281.5, label %for.body312.preheader.5, label %if.end322.5, !dbg !223

for.body312.preheader.5:                          ; preds = %if.end.1.5
  %output_acc.sroa.0.0.vec.extract1645 = extractelement <4 x float> %output_acc.sroa.0.9, i64 0, !dbg !233
  %mul316.5823 = fmul contract float %rescale.sroa.0.0.5, %output_acc.sroa.0.0.vec.extract1645, !dbg !234
  %output_acc.sroa.0.0.vec.insert1647 = insertelement <4 x float> poison, float %mul316.5823, i64 0, !dbg !235
  %output_acc.sroa.0.4.vec.extract1682 = extractelement <4 x float> %output_acc.sroa.0.9, i64 1, !dbg !233
  %mul316.1.5 = fmul contract float %rescale.sroa.0.0.5, %output_acc.sroa.0.4.vec.extract1682, !dbg !234
  %output_acc.sroa.0.4.vec.insert1684 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert1647, float %mul316.1.5, i64 1, !dbg !235
  %output_acc.sroa.0.8.vec.extract1719 = extractelement <4 x float> %output_acc.sroa.0.9, i64 2, !dbg !233
  %mul316.2.5 = fmul contract float %rescale.sroa.0.0.5, %output_acc.sroa.0.8.vec.extract1719, !dbg !234
  %output_acc.sroa.0.8.vec.insert1721 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert1684, float %mul316.2.5, i64 2, !dbg !235
  %output_acc.sroa.0.12.vec.extract1756 = extractelement <4 x float> %output_acc.sroa.0.9, i64 3, !dbg !233
  %mul316.3.5 = fmul contract float %rescale.sroa.0.0.5, %output_acc.sroa.0.12.vec.extract1756, !dbg !234
  %output_acc.sroa.0.12.vec.insert1758 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert1721, float %mul316.3.5, i64 3, !dbg !235
  %output_acc.sroa.98.16.vec.extract1801 = extractelement <4 x float> %output_acc.sroa.98.9, i64 0, !dbg !233
  %mul316.4.5 = fmul contract float %rescale.sroa.0.0.5, %output_acc.sroa.98.16.vec.extract1801, !dbg !234
  %output_acc.sroa.98.16.vec.insert1803 = insertelement <4 x float> poison, float %mul316.4.5, i64 0, !dbg !235
  %output_acc.sroa.98.20.vec.extract1838 = extractelement <4 x float> %output_acc.sroa.98.9, i64 1, !dbg !233
  %mul316.5.5 = fmul contract float %rescale.sroa.0.0.5, %output_acc.sroa.98.20.vec.extract1838, !dbg !234
  %output_acc.sroa.98.20.vec.insert1840 = insertelement <4 x float> %output_acc.sroa.98.16.vec.insert1803, float %mul316.5.5, i64 1, !dbg !235
  %output_acc.sroa.98.24.vec.extract1875 = extractelement <4 x float> %output_acc.sroa.98.9, i64 2, !dbg !233
  %mul316.6.5 = fmul contract float %rescale.sroa.0.0.5, %output_acc.sroa.98.24.vec.extract1875, !dbg !234
  %output_acc.sroa.98.24.vec.insert1877 = insertelement <4 x float> %output_acc.sroa.98.20.vec.insert1840, float %mul316.6.5, i64 2, !dbg !235
  %output_acc.sroa.98.28.vec.extract1912 = extractelement <4 x float> %output_acc.sroa.98.9, i64 3, !dbg !233
  %mul316.7.5 = fmul contract float %rescale.sroa.0.0.5, %output_acc.sroa.98.28.vec.extract1912, !dbg !234
  %output_acc.sroa.98.28.vec.insert1914 = insertelement <4 x float> %output_acc.sroa.98.24.vec.insert1877, float %mul316.7.5, i64 3, !dbg !235
  %output_acc.sroa.194.32.vec.extract1957 = extractelement <4 x float> %output_acc.sroa.194.9, i64 0, !dbg !233
  %mul316.8.5 = fmul contract float %rescale.sroa.0.0.5, %output_acc.sroa.194.32.vec.extract1957, !dbg !234
  %output_acc.sroa.194.32.vec.insert1959 = insertelement <4 x float> poison, float %mul316.8.5, i64 0, !dbg !235
  %output_acc.sroa.194.36.vec.extract1994 = extractelement <4 x float> %output_acc.sroa.194.9, i64 1, !dbg !233
  %mul316.9.5 = fmul contract float %rescale.sroa.0.0.5, %output_acc.sroa.194.36.vec.extract1994, !dbg !234
  %output_acc.sroa.194.36.vec.insert1996 = insertelement <4 x float> %output_acc.sroa.194.32.vec.insert1959, float %mul316.9.5, i64 1, !dbg !235
  %output_acc.sroa.194.40.vec.extract2031 = extractelement <4 x float> %output_acc.sroa.194.9, i64 2, !dbg !233
  %mul316.10.5 = fmul contract float %rescale.sroa.0.0.5, %output_acc.sroa.194.40.vec.extract2031, !dbg !234
  %output_acc.sroa.194.40.vec.insert2033 = insertelement <4 x float> %output_acc.sroa.194.36.vec.insert1996, float %mul316.10.5, i64 2, !dbg !235
  %output_acc.sroa.194.44.vec.extract2068 = extractelement <4 x float> %output_acc.sroa.194.9, i64 3, !dbg !233
  %mul316.11.5 = fmul contract float %rescale.sroa.0.0.5, %output_acc.sroa.194.44.vec.extract2068, !dbg !234
  %output_acc.sroa.194.44.vec.insert2070 = insertelement <4 x float> %output_acc.sroa.194.40.vec.insert2033, float %mul316.11.5, i64 3, !dbg !235
  %output_acc.sroa.290.48.vec.extract2113 = extractelement <4 x float> %output_acc.sroa.290.9, i64 0, !dbg !233
  %mul316.12.5 = fmul contract float %rescale.sroa.0.0.5, %output_acc.sroa.290.48.vec.extract2113, !dbg !234
  %output_acc.sroa.290.48.vec.insert2115 = insertelement <4 x float> poison, float %mul316.12.5, i64 0, !dbg !235
  %output_acc.sroa.290.52.vec.extract2150 = extractelement <4 x float> %output_acc.sroa.290.9, i64 1, !dbg !233
  %mul316.13.5 = fmul contract float %rescale.sroa.0.0.5, %output_acc.sroa.290.52.vec.extract2150, !dbg !234
  %output_acc.sroa.290.52.vec.insert2152 = insertelement <4 x float> %output_acc.sroa.290.48.vec.insert2115, float %mul316.13.5, i64 1, !dbg !235
  %output_acc.sroa.290.56.vec.extract2187 = extractelement <4 x float> %output_acc.sroa.290.9, i64 2, !dbg !233
  %mul316.14.5 = fmul contract float %rescale.sroa.0.0.5, %output_acc.sroa.290.56.vec.extract2187, !dbg !234
  %output_acc.sroa.290.56.vec.insert2189 = insertelement <4 x float> %output_acc.sroa.290.52.vec.insert2152, float %mul316.14.5, i64 2, !dbg !235
  %output_acc.sroa.290.60.vec.extract2224 = extractelement <4 x float> %output_acc.sroa.290.9, i64 3, !dbg !233
  %mul316.15.5 = fmul contract float %rescale.sroa.0.0.5, %output_acc.sroa.290.60.vec.extract2224, !dbg !234
  %output_acc.sroa.290.60.vec.insert2226 = insertelement <4 x float> %output_acc.sroa.290.56.vec.insert2189, float %mul316.15.5, i64 3, !dbg !235
  br label %if.end322.5

if.end322.5:                                      ; preds = %for.body312.preheader.5, %if.end.1.5
  %output_acc.sroa.290.10 = phi <4 x float> [ %output_acc.sroa.290.60.vec.insert2226, %for.body312.preheader.5 ], [ %output_acc.sroa.290.9, %if.end.1.5 ], !dbg !64
  %output_acc.sroa.194.10 = phi <4 x float> [ %output_acc.sroa.194.44.vec.insert2070, %for.body312.preheader.5 ], [ %output_acc.sroa.194.9, %if.end.1.5 ], !dbg !64
  %output_acc.sroa.98.10 = phi <4 x float> [ %output_acc.sroa.98.28.vec.insert1914, %for.body312.preheader.5 ], [ %output_acc.sroa.98.9, %if.end.1.5 ], !dbg !64
  %output_acc.sroa.0.10 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1758, %for.body312.preheader.5 ], [ %output_acc.sroa.0.9, %if.end.1.5 ], !dbg !64
  %shr334.5 = lshr exact i32 %mul46.5, 2
  %add335.5 = add nuw nsw i32 %shr334.5, %shr332
  %cmp336.5 = icmp ult i32 %add335.5, 256
  br i1 %cmp336.5, label %if.then337.5, label %if.end362.5, !dbg !224

if.then337.5:                                     ; preds = %if.end322.5
  %672 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %673 = getelementptr inbounds i8, ptr addrspace(4) %672, i64 %.idx.5, !dbg !225
  %condval_2.sroa.0.0.copyload.52353 = load half, ptr addrspace(4) %673, align 2, !dbg !226, !tbaa !227
  br label %if.end362.5, !dbg !228

if.end362.5:                                      ; preds = %if.then337.5, %if.end322.5
  %674 = phi half [ %condval_2.sroa.0.0.copyload.52353, %if.then337.5 ], [ 0xH0000, %if.end322.5 ], !dbg !64
  %v_local.sroa.0.0.vec.insert900 = insertelement <4 x half> poison, half %674, i64 0, !dbg !229
  br i1 %cmp336.5, label %if.then337.1.5, label %if.end362.1.5, !dbg !224

if.then337.1.5:                                   ; preds = %if.end362.5
  %675 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %676 = getelementptr inbounds i8, ptr addrspace(4) %675, i64 %.idx.5, !dbg !225
  %arrayidx359.1.5 = getelementptr inbounds i8, ptr addrspace(4) %676, i64 128, !dbg !225
  %condval_2.sroa.0.0.copyload.1.52354 = load half, ptr addrspace(4) %arrayidx359.1.5, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.5, !dbg !228

if.end362.1.5:                                    ; preds = %if.then337.1.5, %if.end362.5
  %677 = phi half [ %condval_2.sroa.0.0.copyload.1.52354, %if.then337.1.5 ], [ 0xH0000, %if.end362.5 ], !dbg !64
  %v_local.sroa.0.2.vec.insert962 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert900, half %677, i64 1, !dbg !229
  br i1 %cmp336.5, label %if.then337.2.5, label %if.end362.2.5, !dbg !224

if.then337.2.5:                                   ; preds = %if.end362.1.5
  %678 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %679 = getelementptr inbounds i8, ptr addrspace(4) %678, i64 %.idx.5, !dbg !225
  %arrayidx359.2.5 = getelementptr inbounds i8, ptr addrspace(4) %679, i64 256, !dbg !225
  %condval_2.sroa.0.0.copyload.2.52355 = load half, ptr addrspace(4) %arrayidx359.2.5, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.5, !dbg !228

if.end362.2.5:                                    ; preds = %if.then337.2.5, %if.end362.1.5
  %680 = phi half [ %condval_2.sroa.0.0.copyload.2.52355, %if.then337.2.5 ], [ 0xH0000, %if.end362.1.5 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1024 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert962, half %680, i64 2, !dbg !229
  br i1 %cmp336.5, label %if.then337.3.5, label %if.end362.3.5, !dbg !224

if.then337.3.5:                                   ; preds = %if.end362.2.5
  %681 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %682 = getelementptr inbounds i8, ptr addrspace(4) %681, i64 %.idx.5, !dbg !225
  %arrayidx359.3.5 = getelementptr inbounds i8, ptr addrspace(4) %682, i64 384, !dbg !225
  %condval_2.sroa.0.0.copyload.3.52356 = load half, ptr addrspace(4) %arrayidx359.3.5, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.5, !dbg !228

if.end362.3.5:                                    ; preds = %if.then337.3.5, %if.end362.2.5
  %683 = phi half [ %condval_2.sroa.0.0.copyload.3.52356, %if.then337.3.5 ], [ 0xH0000, %if.end362.2.5 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1086 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1024, half %683, i64 3, !dbg !229
  %684 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1086, <4 x half> %__1.sroa.0.6.vec.insert.5, <4 x float> %output_acc.sroa.0.10), !dbg !230
  br i1 %cmp336.5, label %if.then337.1641.5, label %if.end362.1643.5, !dbg !224

if.then337.1641.5:                                ; preds = %if.end362.3.5
  %685 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %686 = getelementptr inbounds i8, ptr addrspace(4) %685, i64 %.idx.5, !dbg !225
  %687 = getelementptr inbounds i8, ptr addrspace(4) %686, i64 32, !dbg !225
  %condval_2.sroa.0.0.copyload.1640.52357 = load half, ptr addrspace(4) %687, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1643.5, !dbg !228

if.end362.1643.5:                                 ; preds = %if.then337.1641.5, %if.end362.3.5
  %688 = phi half [ %condval_2.sroa.0.0.copyload.1640.52357, %if.then337.1641.5 ], [ 0xH0000, %if.end362.3.5 ], !dbg !64
  %v_local.sroa.0.0.vec.insert902 = insertelement <4 x half> poison, half %688, i64 0, !dbg !229
  br i1 %cmp336.5, label %if.then337.1.1.5, label %if.end362.1.1.5, !dbg !224

if.then337.1.1.5:                                 ; preds = %if.end362.1643.5
  %689 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %690 = getelementptr inbounds i8, ptr addrspace(4) %689, i64 %.idx.5, !dbg !225
  %arrayidx359.1.1.5 = getelementptr inbounds i8, ptr addrspace(4) %690, i64 160, !dbg !225
  %condval_2.sroa.0.0.copyload.1.1.52358 = load half, ptr addrspace(4) %arrayidx359.1.1.5, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.1.5, !dbg !228

if.end362.1.1.5:                                  ; preds = %if.then337.1.1.5, %if.end362.1643.5
  %691 = phi half [ %condval_2.sroa.0.0.copyload.1.1.52358, %if.then337.1.1.5 ], [ 0xH0000, %if.end362.1643.5 ], !dbg !64
  %v_local.sroa.0.2.vec.insert964 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert902, half %691, i64 1, !dbg !229
  br i1 %cmp336.5, label %if.then337.2.1.5, label %if.end362.2.1.5, !dbg !224

if.then337.2.1.5:                                 ; preds = %if.end362.1.1.5
  %692 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %693 = getelementptr inbounds i8, ptr addrspace(4) %692, i64 %.idx.5, !dbg !225
  %arrayidx359.2.1.5 = getelementptr inbounds i8, ptr addrspace(4) %693, i64 288, !dbg !225
  %condval_2.sroa.0.0.copyload.2.1.52359 = load half, ptr addrspace(4) %arrayidx359.2.1.5, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.1.5, !dbg !228

if.end362.2.1.5:                                  ; preds = %if.then337.2.1.5, %if.end362.1.1.5
  %694 = phi half [ %condval_2.sroa.0.0.copyload.2.1.52359, %if.then337.2.1.5 ], [ 0xH0000, %if.end362.1.1.5 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1026 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert964, half %694, i64 2, !dbg !229
  br i1 %cmp336.5, label %if.then337.3.1.5, label %if.end362.3.1.5, !dbg !224

if.then337.3.1.5:                                 ; preds = %if.end362.2.1.5
  %695 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %696 = getelementptr inbounds i8, ptr addrspace(4) %695, i64 %.idx.5, !dbg !225
  %arrayidx359.3.1.5 = getelementptr inbounds i8, ptr addrspace(4) %696, i64 416, !dbg !225
  %condval_2.sroa.0.0.copyload.3.1.52360 = load half, ptr addrspace(4) %arrayidx359.3.1.5, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.1.5, !dbg !228

if.end362.3.1.5:                                  ; preds = %if.then337.3.1.5, %if.end362.2.1.5
  %697 = phi half [ %condval_2.sroa.0.0.copyload.3.1.52360, %if.then337.3.1.5 ], [ 0xH0000, %if.end362.2.1.5 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1088 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1026, half %697, i64 3, !dbg !229
  %698 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1088, <4 x half> %__1.sroa.0.6.vec.insert.5, <4 x float> %output_acc.sroa.98.10), !dbg !230
  br i1 %cmp336.5, label %if.then337.2646.5, label %if.end362.2648.5, !dbg !224

if.then337.2646.5:                                ; preds = %if.end362.3.1.5
  %699 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %700 = getelementptr inbounds i8, ptr addrspace(4) %699, i64 %.idx.5, !dbg !225
  %701 = getelementptr inbounds i8, ptr addrspace(4) %700, i64 64, !dbg !225
  %condval_2.sroa.0.0.copyload.2645.52361 = load half, ptr addrspace(4) %701, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2648.5, !dbg !228

if.end362.2648.5:                                 ; preds = %if.then337.2646.5, %if.end362.3.1.5
  %702 = phi half [ %condval_2.sroa.0.0.copyload.2645.52361, %if.then337.2646.5 ], [ 0xH0000, %if.end362.3.1.5 ], !dbg !64
  %v_local.sroa.0.0.vec.insert904 = insertelement <4 x half> poison, half %702, i64 0, !dbg !229
  br i1 %cmp336.5, label %if.then337.1.2.5, label %if.end362.1.2.5, !dbg !224

if.then337.1.2.5:                                 ; preds = %if.end362.2648.5
  %703 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %704 = getelementptr inbounds i8, ptr addrspace(4) %703, i64 %.idx.5, !dbg !225
  %arrayidx359.1.2.5 = getelementptr inbounds i8, ptr addrspace(4) %704, i64 192, !dbg !225
  %condval_2.sroa.0.0.copyload.1.2.52362 = load half, ptr addrspace(4) %arrayidx359.1.2.5, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.2.5, !dbg !228

if.end362.1.2.5:                                  ; preds = %if.then337.1.2.5, %if.end362.2648.5
  %705 = phi half [ %condval_2.sroa.0.0.copyload.1.2.52362, %if.then337.1.2.5 ], [ 0xH0000, %if.end362.2648.5 ], !dbg !64
  %v_local.sroa.0.2.vec.insert966 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert904, half %705, i64 1, !dbg !229
  br i1 %cmp336.5, label %if.then337.2.2.5, label %if.end362.2.2.5, !dbg !224

if.then337.2.2.5:                                 ; preds = %if.end362.1.2.5
  %706 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %707 = getelementptr inbounds i8, ptr addrspace(4) %706, i64 %.idx.5, !dbg !225
  %arrayidx359.2.2.5 = getelementptr inbounds i8, ptr addrspace(4) %707, i64 320, !dbg !225
  %condval_2.sroa.0.0.copyload.2.2.52363 = load half, ptr addrspace(4) %arrayidx359.2.2.5, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.2.5, !dbg !228

if.end362.2.2.5:                                  ; preds = %if.then337.2.2.5, %if.end362.1.2.5
  %708 = phi half [ %condval_2.sroa.0.0.copyload.2.2.52363, %if.then337.2.2.5 ], [ 0xH0000, %if.end362.1.2.5 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1028 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert966, half %708, i64 2, !dbg !229
  br i1 %cmp336.5, label %if.then337.3.2.5, label %if.end362.3.2.5, !dbg !224

if.then337.3.2.5:                                 ; preds = %if.end362.2.2.5
  %709 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %710 = getelementptr inbounds i8, ptr addrspace(4) %709, i64 %.idx.5, !dbg !225
  %arrayidx359.3.2.5 = getelementptr inbounds i8, ptr addrspace(4) %710, i64 448, !dbg !225
  %condval_2.sroa.0.0.copyload.3.2.52364 = load half, ptr addrspace(4) %arrayidx359.3.2.5, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.2.5, !dbg !228

if.end362.3.2.5:                                  ; preds = %if.then337.3.2.5, %if.end362.2.2.5
  %711 = phi half [ %condval_2.sroa.0.0.copyload.3.2.52364, %if.then337.3.2.5 ], [ 0xH0000, %if.end362.2.2.5 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1090 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1028, half %711, i64 3, !dbg !229
  %712 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1090, <4 x half> %__1.sroa.0.6.vec.insert.5, <4 x float> %output_acc.sroa.194.10), !dbg !230
  br i1 %cmp336.5, label %if.then337.3651.5, label %if.end362.3653.5, !dbg !224

if.then337.3651.5:                                ; preds = %if.end362.3.2.5
  %713 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %714 = getelementptr inbounds i8, ptr addrspace(4) %713, i64 %.idx.5, !dbg !225
  %715 = getelementptr inbounds i8, ptr addrspace(4) %714, i64 96, !dbg !225
  %condval_2.sroa.0.0.copyload.3650.52365 = load half, ptr addrspace(4) %715, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3653.5, !dbg !228

if.end362.3653.5:                                 ; preds = %if.then337.3651.5, %if.end362.3.2.5
  %716 = phi half [ %condval_2.sroa.0.0.copyload.3650.52365, %if.then337.3651.5 ], [ 0xH0000, %if.end362.3.2.5 ], !dbg !64
  %v_local.sroa.0.0.vec.insert906 = insertelement <4 x half> poison, half %716, i64 0, !dbg !229
  br i1 %cmp336.5, label %if.then337.1.3.5, label %if.end362.1.3.5, !dbg !224

if.then337.1.3.5:                                 ; preds = %if.end362.3653.5
  %717 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %718 = getelementptr inbounds i8, ptr addrspace(4) %717, i64 %.idx.5, !dbg !225
  %arrayidx359.1.3.5 = getelementptr inbounds i8, ptr addrspace(4) %718, i64 224, !dbg !225
  %condval_2.sroa.0.0.copyload.1.3.52366 = load half, ptr addrspace(4) %arrayidx359.1.3.5, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.3.5, !dbg !228

if.end362.1.3.5:                                  ; preds = %if.then337.1.3.5, %if.end362.3653.5
  %719 = phi half [ %condval_2.sroa.0.0.copyload.1.3.52366, %if.then337.1.3.5 ], [ 0xH0000, %if.end362.3653.5 ], !dbg !64
  %v_local.sroa.0.2.vec.insert968 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert906, half %719, i64 1, !dbg !229
  br i1 %cmp336.5, label %if.then337.2.3.5, label %if.end362.2.3.5, !dbg !224

if.then337.2.3.5:                                 ; preds = %if.end362.1.3.5
  %720 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %721 = getelementptr inbounds i8, ptr addrspace(4) %720, i64 %.idx.5, !dbg !225
  %arrayidx359.2.3.5 = getelementptr inbounds i8, ptr addrspace(4) %721, i64 352, !dbg !225
  %condval_2.sroa.0.0.copyload.2.3.52367 = load half, ptr addrspace(4) %arrayidx359.2.3.5, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.3.5, !dbg !228

if.end362.2.3.5:                                  ; preds = %if.then337.2.3.5, %if.end362.1.3.5
  %722 = phi half [ %condval_2.sroa.0.0.copyload.2.3.52367, %if.then337.2.3.5 ], [ 0xH0000, %if.end362.1.3.5 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1030 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert968, half %722, i64 2, !dbg !229
  br i1 %cmp336.5, label %if.then337.3.3.5, label %if.end362.3.3.5, !dbg !224

if.then337.3.3.5:                                 ; preds = %if.end362.2.3.5
  %723 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %724 = getelementptr inbounds i8, ptr addrspace(4) %723, i64 %.idx.5, !dbg !225
  %arrayidx359.3.3.5 = getelementptr inbounds i8, ptr addrspace(4) %724, i64 480, !dbg !225
  %condval_2.sroa.0.0.copyload.3.3.52368 = load half, ptr addrspace(4) %arrayidx359.3.3.5, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.3.5, !dbg !228

if.end362.3.3.5:                                  ; preds = %if.then337.3.3.5, %if.end362.2.3.5
  %725 = phi half [ %condval_2.sroa.0.0.copyload.3.3.52368, %if.then337.3.3.5 ], [ 0xH0000, %if.end362.2.3.5 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1092 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1030, half %725, i64 3, !dbg !229
  %726 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1092, <4 x half> %__1.sroa.0.6.vec.insert.5, <4 x float> %output_acc.sroa.290.10), !dbg !230
  br label %if.end381.5, !dbg !231

if.end381.5:                                      ; preds = %if.end362.3.3.5, %if.end381.4
  %output_acc.sroa.290.11 = phi <4 x float> [ %output_acc.sroa.290.9, %if.end381.4 ], [ %726, %if.end362.3.3.5 ], !dbg !64
  %output_acc.sroa.194.11 = phi <4 x float> [ %output_acc.sroa.194.9, %if.end381.4 ], [ %712, %if.end362.3.3.5 ], !dbg !64
  %output_acc.sroa.98.11 = phi <4 x float> [ %output_acc.sroa.98.9, %if.end381.4 ], [ %698, %if.end362.3.3.5 ], !dbg !64
  %output_acc.sroa.0.11 = phi <4 x float> [ %output_acc.sroa.0.9, %if.end381.4 ], [ %684, %if.end362.3.3.5 ], !dbg !64
  %normalizer.sroa.0.2.5 = phi float [ %normalizer.sroa.0.2.4, %if.end381.4 ], [ %normalizer.sroa.0.1.5, %if.end362.3.3.5 ], !dbg !64
  %denominator.sroa.0.2.5 = phi float [ %denominator.sroa.0.2.4, %if.end381.4 ], [ %add290.5, %if.end362.3.3.5 ], !dbg !64
  %727 = or disjoint i64 %19, 6, !dbg !232
  %arrayidx45.6 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %727, !dbg !47
  %728 = load i32, ptr addrspace(1) %arrayidx45.6, align 4, !dbg !47, !tbaa !30
  %mul46.6 = shl nsw i32 %728, 4, !dbg !48
  %cmp47.6 = icmp slt i32 %728, 0, !dbg !49
  %cmp49.not.6 = icmp sgt i32 %mul46.6, %1
  %or.cond.6 = select i1 %cmp47.6, i1 true, i1 %cmp49.not.6, !dbg !50
  br i1 %or.cond.6, label %if.end381.6, label %if.then.6, !dbg !50

if.then.6:                                        ; preds = %if.end381.5
  fence syncscope("warp") release, !dbg !51
  tail call void @llvm.mxc.barrier.warp(), !dbg !57
  fence syncscope("warp") acquire, !dbg !58
  %add56.6 = add nuw nsw i32 %mul46.6, %shr55
  %conv66.6 = zext nneg i32 %mul46.6 to i64
  %.idx.6 = shl nuw nsw i64 %conv66.6, 7
  %gep.6 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep616, i64 %.idx.6, !dbg !59
  %cmp59.6 = icmp ult i32 %add56.6, 1024, !dbg !60
  br i1 %cmp59.6, label %if.then60.6, label %if.end.6, !dbg !61

if.then60.6:                                      ; preds = %if.then.6
  %gep602.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.6, i64 %mul62
  %condval.sroa.7.0.add.ptr73.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep602.6, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep602.6, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep602.6, i64 4
  %condval.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %gep602.6, align 16, !dbg !62, !tbaa !30
  %condval.sroa.5.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr73.sroa_idx.6, align 4, !dbg !62, !tbaa !30
  %condval.sroa.6.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr73.sroa_idx.6, align 8, !dbg !62, !tbaa !30
  %condval.sroa.7.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr73.sroa_idx.6, align 4, !dbg !62, !tbaa !30
  br label %if.end.6, !dbg !63

if.end.6:                                         ; preds = %if.then60.6, %if.then.6
  %condval.sroa.0.0.6 = phi i32 [ %condval.sroa.0.0.copyload.6, %if.then60.6 ], [ 0, %if.then.6 ], !dbg !64
  %condval.sroa.5.0.6 = phi i32 [ %condval.sroa.5.0.copyload.6, %if.then60.6 ], [ 0, %if.then.6 ], !dbg !64
  %condval.sroa.6.0.6 = phi i32 [ %condval.sroa.6.0.copyload.6, %if.then60.6 ], [ 0, %if.then.6 ], !dbg !64
  %condval.sroa.7.0.6 = phi i32 [ %condval.sroa.7.0.copyload.6, %if.then60.6 ], [ 0, %if.then.6 ], !dbg !64
  %729 = or disjoint i32 %mul97, %mul106, !dbg !65
  %730 = or disjoint i32 %729, %mul116, !dbg !66
  %731 = or disjoint i32 %730, %mul125, !dbg !67
  %add.ptr128.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %731, !dbg !68
  store i32 %condval.sroa.0.0.6, ptr addrspace(3) %add.ptr128.6, align 16, !dbg !69, !tbaa !30
  %condval.sroa.5.0.add.ptr128.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.6, i32 4, !dbg !69
  store i32 %condval.sroa.5.0.6, ptr addrspace(3) %condval.sroa.5.0.add.ptr128.sroa_idx.6, align 4, !dbg !69, !tbaa !30
  %condval.sroa.6.0.add.ptr128.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.6, i32 8, !dbg !69
  store i32 %condval.sroa.6.0.6, ptr addrspace(3) %condval.sroa.6.0.add.ptr128.sroa_idx.6, align 8, !dbg !69, !tbaa !30
  %condval.sroa.7.0.add.ptr128.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.6, i32 12, !dbg !69
  store i32 %condval.sroa.7.0.6, ptr addrspace(3) %condval.sroa.7.0.add.ptr128.sroa_idx.6, align 4, !dbg !69, !tbaa !30
  %cmp59.1.6 = icmp ult i32 %add56.6, 1016, !dbg !60
  br i1 %cmp59.1.6, label %if.then60.1.6, label %if.end.1.6, !dbg !61

if.then60.1.6:                                    ; preds = %if.end.6
  %add65.1.6 = or disjoint i64 %mul62, 512
  %gep602.1.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.6, i64 %add65.1.6
  %condval.sroa.7.0.add.ptr73.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1.6, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1.6, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1.6, i64 4
  %condval.sroa.0.0.copyload.1.6 = load i32, ptr addrspace(4) %gep602.1.6, align 16, !dbg !62, !tbaa !30
  %condval.sroa.5.0.copyload.1.6 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr73.sroa_idx.1.6, align 4, !dbg !62, !tbaa !30
  %condval.sroa.6.0.copyload.1.6 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr73.sroa_idx.1.6, align 8, !dbg !62, !tbaa !30
  %condval.sroa.7.0.copyload.1.6 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr73.sroa_idx.1.6, align 4, !dbg !62, !tbaa !30
  br label %if.end.1.6, !dbg !63

if.end.1.6:                                       ; preds = %if.then60.1.6, %if.end.6
  %condval.sroa.0.0.1.6 = phi i32 [ %condval.sroa.0.0.copyload.1.6, %if.then60.1.6 ], [ 0, %if.end.6 ], !dbg !64
  %condval.sroa.5.0.1.6 = phi i32 [ %condval.sroa.5.0.copyload.1.6, %if.then60.1.6 ], [ 0, %if.end.6 ], !dbg !64
  %condval.sroa.6.0.1.6 = phi i32 [ %condval.sroa.6.0.copyload.1.6, %if.then60.1.6 ], [ 0, %if.end.6 ], !dbg !64
  %condval.sroa.7.0.1.6 = phi i32 [ %condval.sroa.7.0.copyload.1.6, %if.then60.1.6 ], [ 0, %if.end.6 ], !dbg !64
  %732 = add nuw nsw i32 %mul97, 512, !dbg !70
  %733 = or disjoint i32 %732, %mul106, !dbg !65
  %734 = or disjoint i32 %733, %mul116, !dbg !66
  %735 = or disjoint i32 %734, %mul125, !dbg !67
  %add.ptr128.1.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %735, !dbg !68
  store i32 %condval.sroa.0.0.1.6, ptr addrspace(3) %add.ptr128.1.6, align 16, !dbg !69, !tbaa !30
  %condval.sroa.5.0.add.ptr128.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1.6, i32 4, !dbg !69
  store i32 %condval.sroa.5.0.1.6, ptr addrspace(3) %condval.sroa.5.0.add.ptr128.sroa_idx.1.6, align 4, !dbg !69, !tbaa !30
  %condval.sroa.6.0.add.ptr128.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1.6, i32 8, !dbg !69
  store i32 %condval.sroa.6.0.1.6, ptr addrspace(3) %condval.sroa.6.0.add.ptr128.sroa_idx.1.6, align 8, !dbg !69, !tbaa !30
  %condval.sroa.7.0.add.ptr128.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1.6, i32 12, !dbg !69
  store i32 %condval.sroa.7.0.1.6, ptr addrspace(3) %condval.sroa.7.0.add.ptr128.sroa_idx.1.6, align 4, !dbg !69, !tbaa !30
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %and148.6 = shl nuw nsw i32 %3, 5, !dbg !76
  %mul149.6 = and i32 %and148.6, 32, !dbg !76
  %and156.6 = shl nuw nsw i32 %and152, 4, !dbg !77
  %mul157.6 = and i32 %and156.6, 16, !dbg !77
  %add166.6 = or disjoint i32 %add158, %mul157.6, !dbg !78
  %add171.6 = or disjoint i32 %add166.6, %mul149.6, !dbg !79
  %add.ptr173.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.6, !dbg !80
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %add.ptr173.6, align 8, !dbg !81
  %736 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %5, <4 x float> zeroinitializer), !dbg !82, !call_argsrelate !83
  %add155.1.6 = shl nuw nsw i32 %and152, 4, !dbg !77
  %737 = and i32 %add155.1.6, 16, !dbg !77
  %738 = or disjoint i32 %737, %add158, !dbg !78
  %739 = or disjoint i32 %738, %mul149.6, !dbg !79
  %add171.1.6 = xor i32 %739, 16, !dbg !79
  %add.ptr173.1.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.1.6, !dbg !80
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr173.1.6, align 8, !dbg !81
  %740 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %7, <4 x float> %736), !dbg !82, !call_argsrelate !83
  %add147.2.6 = shl nuw nsw i32 %3, 5, !dbg !76
  %741 = and i32 %add147.2.6, 32, !dbg !76
  %mul149.2.6 = xor i32 %741, 32, !dbg !76
  %add155.2.6 = shl nuw nsw i32 %and152, 4, !dbg !77
  %mul157.2.6 = and i32 %add155.2.6, 16, !dbg !77
  %add166.2.6 = or disjoint i32 %add158, %mul157.2.6, !dbg !78
  %add171.2.6 = or disjoint i32 %add166.2.6, %mul149.2.6, !dbg !79
  %add.ptr173.2.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.2.6, !dbg !80
  %k_local.sroa.0.0.copyload.2.6 = load <4 x half>, ptr addrspace(3) %add.ptr173.2.6, align 8, !dbg !81
  %742 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.6, <4 x half> %9, <4 x float> %740), !dbg !82, !call_argsrelate !83
  %add155.3.6 = shl nuw nsw i32 %and152, 4, !dbg !77
  %743 = and i32 %add155.3.6, 16, !dbg !77
  %744 = or disjoint i32 %743, %add158, !dbg !78
  %745 = or disjoint i32 %744, %mul149.2.6, !dbg !79
  %add171.3.6 = xor i32 %745, 16, !dbg !79
  %add.ptr173.3.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.3.6, !dbg !80
  %k_local.sroa.0.0.copyload.3.6 = load <4 x half>, ptr addrspace(3) %add.ptr173.3.6, align 8, !dbg !81
  %746 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.6, <4 x half> %11, <4 x float> %742), !dbg !82, !call_argsrelate !83
  %add195.6 = add nuw nsw i32 %mul46.6, %mul14
  %cmp198.not.6 = icmp sgt i32 %add195.6, %1, !dbg !84
  %scores.sroa.0.0.vec.extract1213 = extractelement <4 x float> %746, i64 0
  %spec.select2406 = select i1 %cmp198.not.6, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1213, !dbg !85
  %cmp198.not.1.6.not = icmp slt i32 %add195.6, %1, !dbg !84
  %scores.sroa.0.4.vec.extract1344 = extractelement <4 x float> %746, i64 1, !dbg !85
  %condval_1.0.1.6 = select i1 %cmp198.not.1.6.not, float %scores.sroa.0.4.vec.extract1344, float 0xFFF0000000000000, !dbg !85
  %add196.2.6 = or disjoint i32 %add195.6, 2, !dbg !86
  %cmp198.not.2.6 = icmp sgt i32 %add196.2.6, %1, !dbg !84
  %scores.sroa.0.8.vec.extract1469 = extractelement <4 x float> %746, i64 2, !dbg !85
  %condval_1.0.2.6 = select i1 %cmp198.not.2.6, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1469, !dbg !85
  %add196.3.6 = or disjoint i32 %add195.6, 3, !dbg !86
  %cmp198.not.3.6 = icmp sgt i32 %add196.3.6, %1, !dbg !84
  %scores.sroa.0.12.vec.extract1594 = extractelement <4 x float> %746, i64 3, !dbg !85
  %condval_1.0.3.6 = select i1 %cmp198.not.3.6, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1594, !dbg !85
  %747 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2406, float 0xFFF0000000000000), !dbg !87
  %748 = tail call contract noundef float @llvm.maxnum.f32(float %747, float %condval_1.0.1.6), !dbg !87
  %749 = tail call contract noundef float @llvm.maxnum.f32(float %748, float %condval_1.0.2.6), !dbg !87
  %750 = tail call contract noundef float @llvm.maxnum.f32(float %749, float %condval_1.0.3.6), !dbg !87
  %751 = bitcast float %750 to i32, !dbg !91
  %752 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %753 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %752) #11, !dbg !105
  %xor.i.i.i.6 = xor i32 %753, 32, !dbg !106
  %754 = and i32 %753, -64, !dbg !107
  %and.i.i.i.6 = add nsw i32 %754, 64, !dbg !107
  %cmp.not.i.i.i.6 = icmp slt i32 %xor.i.i.i.6, %and.i.i.i.6, !dbg !108
  %cond.i.i.i.6 = select i1 %cmp.not.i.i.i.6, i32 %xor.i.i.i.6, i32 %753, !dbg !109
  %shl.i.i.i.6 = shl i32 %cond.i.i.i.6, 2, !dbg !110
  %755 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.6, i32 %751), !dbg !111
  %756 = bitcast i32 %755 to float, !dbg !112
  %757 = tail call contract noundef float @llvm.maxnum.f32(float %750, float %756), !dbg !113
  %758 = bitcast float %757 to i32, !dbg !121
  %759 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !126
  %760 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %759) #11, !dbg !129
  %xor.i.i.i.i.6 = xor i32 %760, 16, !dbg !130
  %761 = and i32 %760, -64, !dbg !131
  %and.i.i.i.i.6 = add nsw i32 %761, 64, !dbg !131
  %cmp.not.i.i.i.i.6 = icmp slt i32 %xor.i.i.i.i.6, %and.i.i.i.i.6, !dbg !132
  %cond.i.i.i.i.6 = select i1 %cmp.not.i.i.i.i.6, i32 %xor.i.i.i.i.6, i32 %760, !dbg !133
  %shl.i.i.i.i.6 = shl i32 %cond.i.i.i.i.6, 2, !dbg !134
  %762 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.6, i32 %758), !dbg !135
  %763 = bitcast i32 %762 to float, !dbg !136
  %764 = tail call contract noundef float @llvm.maxnum.f32(float %757, float %763), !dbg !137
  %sub.6 = fsub contract float %764, %normalizer.sroa.0.2.5, !dbg !141
  %mul234.6 = fmul contract float %sub.6, 0x3FC7154760000000, !dbg !142
  %cmp235.6 = fcmp contract ogt float %mul234.6, 7.000000e+00, !dbg !143
  %sub239.6 = fsub contract float %normalizer.sroa.0.2.5, %764
  %mul240.6 = fmul contract float %sub239.6, 0x3FC7154760000000
  %cmp.i.i.6 = fcmp contract olt float %mul240.6, -1.260000e+02
  %cond.i.i.6 = select contract i1 %cmp.i.i.6, float 6.400000e+01, float 0.000000e+00
  %add.i.i.6 = fadd contract float %mul240.6, %cond.i.i.6
  %765 = tail call contract float @llvm.exp2.f32(float %add.i.i.6)
  %cond2.i.i.6 = select contract i1 %cmp.i.i.6, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i.6 = fmul contract float %cond2.i.i.6, %765
  %normalizer.sroa.0.1.6 = select i1 %cmp235.6, float %764, float %normalizer.sroa.0.2.5, !dbg !144
  %sub255.6 = fsub contract float %spec.select2406, %normalizer.sroa.0.1.6, !dbg !145
  %mul256.6 = fmul contract float %sub255.6, 0x3FC7154760000000, !dbg !146
  %add257.6 = fadd contract float %mul256.6, 8.000000e+00, !dbg !147
  %cmp.i.i559.6 = fcmp contract olt float %add257.6, -1.260000e+02, !dbg !148
  %cond.i.i560.6 = select contract i1 %cmp.i.i559.6, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.6 = fadd contract float %add257.6, %cond.i.i560.6, !dbg !148
  %766 = tail call contract float @llvm.exp2.f32(float %add.i.i561.6), !dbg !148
  %cond2.i.i562.6 = select contract i1 %cmp.i.i559.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.6 = fmul contract float %cond2.i.i562.6, %766, !dbg !148
  %sub255.1.6 = fsub contract float %condval_1.0.1.6, %normalizer.sroa.0.1.6, !dbg !145
  %mul256.1.6 = fmul contract float %sub255.1.6, 0x3FC7154760000000, !dbg !146
  %add257.1.6 = fadd contract float %mul256.1.6, 8.000000e+00, !dbg !147
  %cmp.i.i559.1.6 = fcmp contract olt float %add257.1.6, -1.260000e+02, !dbg !148
  %cond.i.i560.1.6 = select contract i1 %cmp.i.i559.1.6, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.1.6 = fadd contract float %add257.1.6, %cond.i.i560.1.6, !dbg !148
  %767 = tail call contract float @llvm.exp2.f32(float %add.i.i561.1.6), !dbg !148
  %cond2.i.i562.1.6 = select contract i1 %cmp.i.i559.1.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.1.6 = fmul contract float %cond2.i.i562.1.6, %767, !dbg !148
  %sub255.2.6 = fsub contract float %condval_1.0.2.6, %normalizer.sroa.0.1.6, !dbg !145
  %mul256.2.6 = fmul contract float %sub255.2.6, 0x3FC7154760000000, !dbg !146
  %add257.2.6 = fadd contract float %mul256.2.6, 8.000000e+00, !dbg !147
  %cmp.i.i559.2.6 = fcmp contract olt float %add257.2.6, -1.260000e+02, !dbg !148
  %cond.i.i560.2.6 = select contract i1 %cmp.i.i559.2.6, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.2.6 = fadd contract float %add257.2.6, %cond.i.i560.2.6, !dbg !148
  %768 = tail call contract float @llvm.exp2.f32(float %add.i.i561.2.6), !dbg !148
  %cond2.i.i562.2.6 = select contract i1 %cmp.i.i559.2.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.2.6 = fmul contract float %cond2.i.i562.2.6, %768, !dbg !148
  %sub255.3.6 = fsub contract float %condval_1.0.3.6, %normalizer.sroa.0.1.6, !dbg !145
  %mul256.3.6 = fmul contract float %sub255.3.6, 0x3FC7154760000000, !dbg !146
  %add257.3.6 = fadd contract float %mul256.3.6, 8.000000e+00, !dbg !147
  %cmp.i.i559.3.6 = fcmp contract olt float %add257.3.6, -1.260000e+02, !dbg !148
  %cond.i.i560.3.6 = select contract i1 %cmp.i.i559.3.6, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.3.6 = fadd contract float %add257.3.6, %cond.i.i560.3.6, !dbg !148
  %769 = tail call contract float @llvm.exp2.f32(float %add.i.i561.3.6), !dbg !148
  %cond2.i.i562.3.6 = select contract i1 %cmp.i.i559.3.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.3.6 = fmul contract float %cond2.i.i562.3.6, %769, !dbg !148
  %add272.6 = fadd contract float %mul.i.i563.6, 0.000000e+00, !dbg !151
  %add272.1.6 = fadd contract float %add272.6, %mul.i.i563.1.6, !dbg !151
  %add272.2.6 = fadd contract float %add272.1.6, %mul.i.i563.2.6, !dbg !151
  %add272.3.6 = fadd contract float %add272.2.6, %mul.i.i563.3.6, !dbg !151
  %rescale.sroa.0.0.6 = select i1 %cmp235.6, float %mul.i.i.6, float 1.000000e+00, !dbg !144
  %770 = bitcast float %add272.3.6 to i32, !dbg !152
  %771 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !157
  %772 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %771) #11, !dbg !160
  %xor.i.i.i564.6 = xor i32 %772, 32, !dbg !161
  %773 = and i32 %772, -64, !dbg !162
  %and.i.i.i565.6 = add nsw i32 %773, 64, !dbg !162
  %cmp.not.i.i.i566.6 = icmp slt i32 %xor.i.i.i564.6, %and.i.i.i565.6, !dbg !163
  %cond.i.i.i567.6 = select i1 %cmp.not.i.i.i566.6, i32 %xor.i.i.i564.6, i32 %772, !dbg !164
  %shl.i.i.i568.6 = shl i32 %cond.i.i.i567.6, 2, !dbg !165
  %774 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i568.6, i32 %770), !dbg !166
  %775 = bitcast i32 %774 to float, !dbg !167
  %add.i.i569.6 = fadd contract float %add272.3.6, %775, !dbg !168
  %776 = bitcast float %add.i.i569.6 to i32, !dbg !171
  %777 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !176
  %778 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %777) #11, !dbg !179
  %xor.i.i.i.i570.6 = xor i32 %778, 16, !dbg !180
  %779 = and i32 %778, -64, !dbg !181
  %and.i.i.i.i571.6 = add nsw i32 %779, 64, !dbg !181
  %cmp.not.i.i.i.i572.6 = icmp slt i32 %xor.i.i.i.i570.6, %and.i.i.i.i571.6, !dbg !182
  %cond.i.i.i.i573.6 = select i1 %cmp.not.i.i.i.i572.6, i32 %xor.i.i.i.i570.6, i32 %778, !dbg !183
  %shl.i.i.i.i574.6 = shl i32 %cond.i.i.i.i573.6, 2, !dbg !184
  %780 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i574.6, i32 %776), !dbg !185
  %781 = bitcast i32 %780 to float, !dbg !186
  %add.i.i.i.6 = fadd contract float %add.i.i569.6, %781, !dbg !187
  %cmp281.6 = fcmp contract une float %rescale.sroa.0.0.6, 1.000000e+00, !dbg !189
  %mul285.6 = fmul contract float %denominator.sroa.0.2.5, %rescale.sroa.0.0.6, !dbg !190
  %denominator.sroa.0.1.6 = select i1 %cmp281.6, float %mul285.6, float %denominator.sroa.0.2.5, !dbg !190
  %add290.6 = fadd contract float %denominator.sroa.0.1.6, %add.i.i.i.6, !dbg !191
  %782 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !192, !noalias !200
  %783 = fptrunc float %mul.i.i563.6 to half, !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %782), !dbg !192, !noalias !200
  %784 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !205
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !205, !noalias !200
  %785 = fptrunc float %mul.i.i563.1.6 to half, !dbg !205
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %784), !dbg !205, !noalias !200
  %__1.sroa.0.0.vec.insert.6 = insertelement <4 x half> poison, half %783, i64 0, !dbg !207
  %__1.sroa.0.2.vec.insert.6 = insertelement <4 x half> %__1.sroa.0.0.vec.insert.6, half %785, i64 1, !dbg !207
  %786 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !210
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !210, !noalias !214
  %787 = fptrunc float %mul.i.i563.2.6 to half, !dbg !210
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %786), !dbg !210, !noalias !214
  %788 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !219
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !219, !noalias !214
  %789 = fptrunc float %mul.i.i563.3.6 to half, !dbg !219
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %788), !dbg !219, !noalias !214
  %__1.sroa.0.4.vec.insert.6 = insertelement <4 x half> %__1.sroa.0.2.vec.insert.6, half %787, i64 2, !dbg !221
  %__1.sroa.0.6.vec.insert.6 = insertelement <4 x half> %__1.sroa.0.4.vec.insert.6, half %789, i64 3, !dbg !221
  br i1 %cmp281.6, label %for.body312.preheader.6, label %if.end322.6, !dbg !223

for.body312.preheader.6:                          ; preds = %if.end.1.6
  %output_acc.sroa.0.0.vec.extract1649 = extractelement <4 x float> %output_acc.sroa.0.11, i64 0, !dbg !233
  %mul316.6824 = fmul contract float %rescale.sroa.0.0.6, %output_acc.sroa.0.0.vec.extract1649, !dbg !234
  %output_acc.sroa.0.0.vec.insert1651 = insertelement <4 x float> poison, float %mul316.6824, i64 0, !dbg !235
  %output_acc.sroa.0.4.vec.extract1686 = extractelement <4 x float> %output_acc.sroa.0.11, i64 1, !dbg !233
  %mul316.1.6 = fmul contract float %rescale.sroa.0.0.6, %output_acc.sroa.0.4.vec.extract1686, !dbg !234
  %output_acc.sroa.0.4.vec.insert1688 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert1651, float %mul316.1.6, i64 1, !dbg !235
  %output_acc.sroa.0.8.vec.extract1723 = extractelement <4 x float> %output_acc.sroa.0.11, i64 2, !dbg !233
  %mul316.2.6 = fmul contract float %rescale.sroa.0.0.6, %output_acc.sroa.0.8.vec.extract1723, !dbg !234
  %output_acc.sroa.0.8.vec.insert1725 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert1688, float %mul316.2.6, i64 2, !dbg !235
  %output_acc.sroa.0.12.vec.extract1760 = extractelement <4 x float> %output_acc.sroa.0.11, i64 3, !dbg !233
  %mul316.3.6 = fmul contract float %rescale.sroa.0.0.6, %output_acc.sroa.0.12.vec.extract1760, !dbg !234
  %output_acc.sroa.0.12.vec.insert1762 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert1725, float %mul316.3.6, i64 3, !dbg !235
  %output_acc.sroa.98.16.vec.extract1805 = extractelement <4 x float> %output_acc.sroa.98.11, i64 0, !dbg !233
  %mul316.4.6 = fmul contract float %rescale.sroa.0.0.6, %output_acc.sroa.98.16.vec.extract1805, !dbg !234
  %output_acc.sroa.98.16.vec.insert1807 = insertelement <4 x float> poison, float %mul316.4.6, i64 0, !dbg !235
  %output_acc.sroa.98.20.vec.extract1842 = extractelement <4 x float> %output_acc.sroa.98.11, i64 1, !dbg !233
  %mul316.5.6 = fmul contract float %rescale.sroa.0.0.6, %output_acc.sroa.98.20.vec.extract1842, !dbg !234
  %output_acc.sroa.98.20.vec.insert1844 = insertelement <4 x float> %output_acc.sroa.98.16.vec.insert1807, float %mul316.5.6, i64 1, !dbg !235
  %output_acc.sroa.98.24.vec.extract1879 = extractelement <4 x float> %output_acc.sroa.98.11, i64 2, !dbg !233
  %mul316.6.6 = fmul contract float %rescale.sroa.0.0.6, %output_acc.sroa.98.24.vec.extract1879, !dbg !234
  %output_acc.sroa.98.24.vec.insert1881 = insertelement <4 x float> %output_acc.sroa.98.20.vec.insert1844, float %mul316.6.6, i64 2, !dbg !235
  %output_acc.sroa.98.28.vec.extract1916 = extractelement <4 x float> %output_acc.sroa.98.11, i64 3, !dbg !233
  %mul316.7.6 = fmul contract float %rescale.sroa.0.0.6, %output_acc.sroa.98.28.vec.extract1916, !dbg !234
  %output_acc.sroa.98.28.vec.insert1918 = insertelement <4 x float> %output_acc.sroa.98.24.vec.insert1881, float %mul316.7.6, i64 3, !dbg !235
  %output_acc.sroa.194.32.vec.extract1961 = extractelement <4 x float> %output_acc.sroa.194.11, i64 0, !dbg !233
  %mul316.8.6 = fmul contract float %rescale.sroa.0.0.6, %output_acc.sroa.194.32.vec.extract1961, !dbg !234
  %output_acc.sroa.194.32.vec.insert1963 = insertelement <4 x float> poison, float %mul316.8.6, i64 0, !dbg !235
  %output_acc.sroa.194.36.vec.extract1998 = extractelement <4 x float> %output_acc.sroa.194.11, i64 1, !dbg !233
  %mul316.9.6 = fmul contract float %rescale.sroa.0.0.6, %output_acc.sroa.194.36.vec.extract1998, !dbg !234
  %output_acc.sroa.194.36.vec.insert2000 = insertelement <4 x float> %output_acc.sroa.194.32.vec.insert1963, float %mul316.9.6, i64 1, !dbg !235
  %output_acc.sroa.194.40.vec.extract2035 = extractelement <4 x float> %output_acc.sroa.194.11, i64 2, !dbg !233
  %mul316.10.6 = fmul contract float %rescale.sroa.0.0.6, %output_acc.sroa.194.40.vec.extract2035, !dbg !234
  %output_acc.sroa.194.40.vec.insert2037 = insertelement <4 x float> %output_acc.sroa.194.36.vec.insert2000, float %mul316.10.6, i64 2, !dbg !235
  %output_acc.sroa.194.44.vec.extract2072 = extractelement <4 x float> %output_acc.sroa.194.11, i64 3, !dbg !233
  %mul316.11.6 = fmul contract float %rescale.sroa.0.0.6, %output_acc.sroa.194.44.vec.extract2072, !dbg !234
  %output_acc.sroa.194.44.vec.insert2074 = insertelement <4 x float> %output_acc.sroa.194.40.vec.insert2037, float %mul316.11.6, i64 3, !dbg !235
  %output_acc.sroa.290.48.vec.extract2117 = extractelement <4 x float> %output_acc.sroa.290.11, i64 0, !dbg !233
  %mul316.12.6 = fmul contract float %rescale.sroa.0.0.6, %output_acc.sroa.290.48.vec.extract2117, !dbg !234
  %output_acc.sroa.290.48.vec.insert2119 = insertelement <4 x float> poison, float %mul316.12.6, i64 0, !dbg !235
  %output_acc.sroa.290.52.vec.extract2154 = extractelement <4 x float> %output_acc.sroa.290.11, i64 1, !dbg !233
  %mul316.13.6 = fmul contract float %rescale.sroa.0.0.6, %output_acc.sroa.290.52.vec.extract2154, !dbg !234
  %output_acc.sroa.290.52.vec.insert2156 = insertelement <4 x float> %output_acc.sroa.290.48.vec.insert2119, float %mul316.13.6, i64 1, !dbg !235
  %output_acc.sroa.290.56.vec.extract2191 = extractelement <4 x float> %output_acc.sroa.290.11, i64 2, !dbg !233
  %mul316.14.6 = fmul contract float %rescale.sroa.0.0.6, %output_acc.sroa.290.56.vec.extract2191, !dbg !234
  %output_acc.sroa.290.56.vec.insert2193 = insertelement <4 x float> %output_acc.sroa.290.52.vec.insert2156, float %mul316.14.6, i64 2, !dbg !235
  %output_acc.sroa.290.60.vec.extract2228 = extractelement <4 x float> %output_acc.sroa.290.11, i64 3, !dbg !233
  %mul316.15.6 = fmul contract float %rescale.sroa.0.0.6, %output_acc.sroa.290.60.vec.extract2228, !dbg !234
  %output_acc.sroa.290.60.vec.insert2230 = insertelement <4 x float> %output_acc.sroa.290.56.vec.insert2193, float %mul316.15.6, i64 3, !dbg !235
  br label %if.end322.6

if.end322.6:                                      ; preds = %for.body312.preheader.6, %if.end.1.6
  %output_acc.sroa.290.12 = phi <4 x float> [ %output_acc.sroa.290.60.vec.insert2230, %for.body312.preheader.6 ], [ %output_acc.sroa.290.11, %if.end.1.6 ], !dbg !64
  %output_acc.sroa.194.12 = phi <4 x float> [ %output_acc.sroa.194.44.vec.insert2074, %for.body312.preheader.6 ], [ %output_acc.sroa.194.11, %if.end.1.6 ], !dbg !64
  %output_acc.sroa.98.12 = phi <4 x float> [ %output_acc.sroa.98.28.vec.insert1918, %for.body312.preheader.6 ], [ %output_acc.sroa.98.11, %if.end.1.6 ], !dbg !64
  %output_acc.sroa.0.12 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1762, %for.body312.preheader.6 ], [ %output_acc.sroa.0.11, %if.end.1.6 ], !dbg !64
  %shr334.6 = lshr exact i32 %mul46.6, 2
  %add335.6 = add nuw nsw i32 %shr334.6, %shr332
  %cmp336.6 = icmp ult i32 %add335.6, 256
  br i1 %cmp336.6, label %if.then337.6, label %if.end362.6, !dbg !224

if.then337.6:                                     ; preds = %if.end322.6
  %790 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %791 = getelementptr inbounds i8, ptr addrspace(4) %790, i64 %.idx.6, !dbg !225
  %condval_2.sroa.0.0.copyload.62369 = load half, ptr addrspace(4) %791, align 2, !dbg !226, !tbaa !227
  br label %if.end362.6, !dbg !228

if.end362.6:                                      ; preds = %if.then337.6, %if.end322.6
  %792 = phi half [ %condval_2.sroa.0.0.copyload.62369, %if.then337.6 ], [ 0xH0000, %if.end322.6 ], !dbg !64
  %v_local.sroa.0.0.vec.insert908 = insertelement <4 x half> poison, half %792, i64 0, !dbg !229
  br i1 %cmp336.6, label %if.then337.1.6, label %if.end362.1.6, !dbg !224

if.then337.1.6:                                   ; preds = %if.end362.6
  %793 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %794 = getelementptr inbounds i8, ptr addrspace(4) %793, i64 %.idx.6, !dbg !225
  %arrayidx359.1.6 = getelementptr inbounds i8, ptr addrspace(4) %794, i64 128, !dbg !225
  %condval_2.sroa.0.0.copyload.1.62370 = load half, ptr addrspace(4) %arrayidx359.1.6, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.6, !dbg !228

if.end362.1.6:                                    ; preds = %if.then337.1.6, %if.end362.6
  %795 = phi half [ %condval_2.sroa.0.0.copyload.1.62370, %if.then337.1.6 ], [ 0xH0000, %if.end362.6 ], !dbg !64
  %v_local.sroa.0.2.vec.insert970 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert908, half %795, i64 1, !dbg !229
  br i1 %cmp336.6, label %if.then337.2.6, label %if.end362.2.6, !dbg !224

if.then337.2.6:                                   ; preds = %if.end362.1.6
  %796 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %797 = getelementptr inbounds i8, ptr addrspace(4) %796, i64 %.idx.6, !dbg !225
  %arrayidx359.2.6 = getelementptr inbounds i8, ptr addrspace(4) %797, i64 256, !dbg !225
  %condval_2.sroa.0.0.copyload.2.62371 = load half, ptr addrspace(4) %arrayidx359.2.6, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.6, !dbg !228

if.end362.2.6:                                    ; preds = %if.then337.2.6, %if.end362.1.6
  %798 = phi half [ %condval_2.sroa.0.0.copyload.2.62371, %if.then337.2.6 ], [ 0xH0000, %if.end362.1.6 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1032 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert970, half %798, i64 2, !dbg !229
  br i1 %cmp336.6, label %if.then337.3.6, label %if.end362.3.6, !dbg !224

if.then337.3.6:                                   ; preds = %if.end362.2.6
  %799 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %800 = getelementptr inbounds i8, ptr addrspace(4) %799, i64 %.idx.6, !dbg !225
  %arrayidx359.3.6 = getelementptr inbounds i8, ptr addrspace(4) %800, i64 384, !dbg !225
  %condval_2.sroa.0.0.copyload.3.62372 = load half, ptr addrspace(4) %arrayidx359.3.6, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.6, !dbg !228

if.end362.3.6:                                    ; preds = %if.then337.3.6, %if.end362.2.6
  %801 = phi half [ %condval_2.sroa.0.0.copyload.3.62372, %if.then337.3.6 ], [ 0xH0000, %if.end362.2.6 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1094 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1032, half %801, i64 3, !dbg !229
  %802 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1094, <4 x half> %__1.sroa.0.6.vec.insert.6, <4 x float> %output_acc.sroa.0.12), !dbg !230
  br i1 %cmp336.6, label %if.then337.1641.6, label %if.end362.1643.6, !dbg !224

if.then337.1641.6:                                ; preds = %if.end362.3.6
  %803 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %804 = getelementptr inbounds i8, ptr addrspace(4) %803, i64 %.idx.6, !dbg !225
  %805 = getelementptr inbounds i8, ptr addrspace(4) %804, i64 32, !dbg !225
  %condval_2.sroa.0.0.copyload.1640.62373 = load half, ptr addrspace(4) %805, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1643.6, !dbg !228

if.end362.1643.6:                                 ; preds = %if.then337.1641.6, %if.end362.3.6
  %806 = phi half [ %condval_2.sroa.0.0.copyload.1640.62373, %if.then337.1641.6 ], [ 0xH0000, %if.end362.3.6 ], !dbg !64
  %v_local.sroa.0.0.vec.insert910 = insertelement <4 x half> poison, half %806, i64 0, !dbg !229
  br i1 %cmp336.6, label %if.then337.1.1.6, label %if.end362.1.1.6, !dbg !224

if.then337.1.1.6:                                 ; preds = %if.end362.1643.6
  %807 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %808 = getelementptr inbounds i8, ptr addrspace(4) %807, i64 %.idx.6, !dbg !225
  %arrayidx359.1.1.6 = getelementptr inbounds i8, ptr addrspace(4) %808, i64 160, !dbg !225
  %condval_2.sroa.0.0.copyload.1.1.62374 = load half, ptr addrspace(4) %arrayidx359.1.1.6, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.1.6, !dbg !228

if.end362.1.1.6:                                  ; preds = %if.then337.1.1.6, %if.end362.1643.6
  %809 = phi half [ %condval_2.sroa.0.0.copyload.1.1.62374, %if.then337.1.1.6 ], [ 0xH0000, %if.end362.1643.6 ], !dbg !64
  %v_local.sroa.0.2.vec.insert972 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert910, half %809, i64 1, !dbg !229
  br i1 %cmp336.6, label %if.then337.2.1.6, label %if.end362.2.1.6, !dbg !224

if.then337.2.1.6:                                 ; preds = %if.end362.1.1.6
  %810 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %811 = getelementptr inbounds i8, ptr addrspace(4) %810, i64 %.idx.6, !dbg !225
  %arrayidx359.2.1.6 = getelementptr inbounds i8, ptr addrspace(4) %811, i64 288, !dbg !225
  %condval_2.sroa.0.0.copyload.2.1.62375 = load half, ptr addrspace(4) %arrayidx359.2.1.6, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.1.6, !dbg !228

if.end362.2.1.6:                                  ; preds = %if.then337.2.1.6, %if.end362.1.1.6
  %812 = phi half [ %condval_2.sroa.0.0.copyload.2.1.62375, %if.then337.2.1.6 ], [ 0xH0000, %if.end362.1.1.6 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1034 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert972, half %812, i64 2, !dbg !229
  br i1 %cmp336.6, label %if.then337.3.1.6, label %if.end362.3.1.6, !dbg !224

if.then337.3.1.6:                                 ; preds = %if.end362.2.1.6
  %813 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %814 = getelementptr inbounds i8, ptr addrspace(4) %813, i64 %.idx.6, !dbg !225
  %arrayidx359.3.1.6 = getelementptr inbounds i8, ptr addrspace(4) %814, i64 416, !dbg !225
  %condval_2.sroa.0.0.copyload.3.1.62376 = load half, ptr addrspace(4) %arrayidx359.3.1.6, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.1.6, !dbg !228

if.end362.3.1.6:                                  ; preds = %if.then337.3.1.6, %if.end362.2.1.6
  %815 = phi half [ %condval_2.sroa.0.0.copyload.3.1.62376, %if.then337.3.1.6 ], [ 0xH0000, %if.end362.2.1.6 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1096 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1034, half %815, i64 3, !dbg !229
  %816 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1096, <4 x half> %__1.sroa.0.6.vec.insert.6, <4 x float> %output_acc.sroa.98.12), !dbg !230
  br i1 %cmp336.6, label %if.then337.2646.6, label %if.end362.2648.6, !dbg !224

if.then337.2646.6:                                ; preds = %if.end362.3.1.6
  %817 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %818 = getelementptr inbounds i8, ptr addrspace(4) %817, i64 %.idx.6, !dbg !225
  %819 = getelementptr inbounds i8, ptr addrspace(4) %818, i64 64, !dbg !225
  %condval_2.sroa.0.0.copyload.2645.62377 = load half, ptr addrspace(4) %819, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2648.6, !dbg !228

if.end362.2648.6:                                 ; preds = %if.then337.2646.6, %if.end362.3.1.6
  %820 = phi half [ %condval_2.sroa.0.0.copyload.2645.62377, %if.then337.2646.6 ], [ 0xH0000, %if.end362.3.1.6 ], !dbg !64
  %v_local.sroa.0.0.vec.insert912 = insertelement <4 x half> poison, half %820, i64 0, !dbg !229
  br i1 %cmp336.6, label %if.then337.1.2.6, label %if.end362.1.2.6, !dbg !224

if.then337.1.2.6:                                 ; preds = %if.end362.2648.6
  %821 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %822 = getelementptr inbounds i8, ptr addrspace(4) %821, i64 %.idx.6, !dbg !225
  %arrayidx359.1.2.6 = getelementptr inbounds i8, ptr addrspace(4) %822, i64 192, !dbg !225
  %condval_2.sroa.0.0.copyload.1.2.62378 = load half, ptr addrspace(4) %arrayidx359.1.2.6, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.2.6, !dbg !228

if.end362.1.2.6:                                  ; preds = %if.then337.1.2.6, %if.end362.2648.6
  %823 = phi half [ %condval_2.sroa.0.0.copyload.1.2.62378, %if.then337.1.2.6 ], [ 0xH0000, %if.end362.2648.6 ], !dbg !64
  %v_local.sroa.0.2.vec.insert974 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert912, half %823, i64 1, !dbg !229
  br i1 %cmp336.6, label %if.then337.2.2.6, label %if.end362.2.2.6, !dbg !224

if.then337.2.2.6:                                 ; preds = %if.end362.1.2.6
  %824 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %825 = getelementptr inbounds i8, ptr addrspace(4) %824, i64 %.idx.6, !dbg !225
  %arrayidx359.2.2.6 = getelementptr inbounds i8, ptr addrspace(4) %825, i64 320, !dbg !225
  %condval_2.sroa.0.0.copyload.2.2.62379 = load half, ptr addrspace(4) %arrayidx359.2.2.6, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.2.6, !dbg !228

if.end362.2.2.6:                                  ; preds = %if.then337.2.2.6, %if.end362.1.2.6
  %826 = phi half [ %condval_2.sroa.0.0.copyload.2.2.62379, %if.then337.2.2.6 ], [ 0xH0000, %if.end362.1.2.6 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1036 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert974, half %826, i64 2, !dbg !229
  br i1 %cmp336.6, label %if.then337.3.2.6, label %if.end362.3.2.6, !dbg !224

if.then337.3.2.6:                                 ; preds = %if.end362.2.2.6
  %827 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %828 = getelementptr inbounds i8, ptr addrspace(4) %827, i64 %.idx.6, !dbg !225
  %arrayidx359.3.2.6 = getelementptr inbounds i8, ptr addrspace(4) %828, i64 448, !dbg !225
  %condval_2.sroa.0.0.copyload.3.2.62380 = load half, ptr addrspace(4) %arrayidx359.3.2.6, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.2.6, !dbg !228

if.end362.3.2.6:                                  ; preds = %if.then337.3.2.6, %if.end362.2.2.6
  %829 = phi half [ %condval_2.sroa.0.0.copyload.3.2.62380, %if.then337.3.2.6 ], [ 0xH0000, %if.end362.2.2.6 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1098 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1036, half %829, i64 3, !dbg !229
  %830 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1098, <4 x half> %__1.sroa.0.6.vec.insert.6, <4 x float> %output_acc.sroa.194.12), !dbg !230
  br i1 %cmp336.6, label %if.then337.3651.6, label %if.end362.3653.6, !dbg !224

if.then337.3651.6:                                ; preds = %if.end362.3.2.6
  %831 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %832 = getelementptr inbounds i8, ptr addrspace(4) %831, i64 %.idx.6, !dbg !225
  %833 = getelementptr inbounds i8, ptr addrspace(4) %832, i64 96, !dbg !225
  %condval_2.sroa.0.0.copyload.3650.62381 = load half, ptr addrspace(4) %833, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3653.6, !dbg !228

if.end362.3653.6:                                 ; preds = %if.then337.3651.6, %if.end362.3.2.6
  %834 = phi half [ %condval_2.sroa.0.0.copyload.3650.62381, %if.then337.3651.6 ], [ 0xH0000, %if.end362.3.2.6 ], !dbg !64
  %v_local.sroa.0.0.vec.insert914 = insertelement <4 x half> poison, half %834, i64 0, !dbg !229
  br i1 %cmp336.6, label %if.then337.1.3.6, label %if.end362.1.3.6, !dbg !224

if.then337.1.3.6:                                 ; preds = %if.end362.3653.6
  %835 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %836 = getelementptr inbounds i8, ptr addrspace(4) %835, i64 %.idx.6, !dbg !225
  %arrayidx359.1.3.6 = getelementptr inbounds i8, ptr addrspace(4) %836, i64 224, !dbg !225
  %condval_2.sroa.0.0.copyload.1.3.62382 = load half, ptr addrspace(4) %arrayidx359.1.3.6, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.3.6, !dbg !228

if.end362.1.3.6:                                  ; preds = %if.then337.1.3.6, %if.end362.3653.6
  %837 = phi half [ %condval_2.sroa.0.0.copyload.1.3.62382, %if.then337.1.3.6 ], [ 0xH0000, %if.end362.3653.6 ], !dbg !64
  %v_local.sroa.0.2.vec.insert976 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert914, half %837, i64 1, !dbg !229
  br i1 %cmp336.6, label %if.then337.2.3.6, label %if.end362.2.3.6, !dbg !224

if.then337.2.3.6:                                 ; preds = %if.end362.1.3.6
  %838 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %839 = getelementptr inbounds i8, ptr addrspace(4) %838, i64 %.idx.6, !dbg !225
  %arrayidx359.2.3.6 = getelementptr inbounds i8, ptr addrspace(4) %839, i64 352, !dbg !225
  %condval_2.sroa.0.0.copyload.2.3.62383 = load half, ptr addrspace(4) %arrayidx359.2.3.6, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.3.6, !dbg !228

if.end362.2.3.6:                                  ; preds = %if.then337.2.3.6, %if.end362.1.3.6
  %840 = phi half [ %condval_2.sroa.0.0.copyload.2.3.62383, %if.then337.2.3.6 ], [ 0xH0000, %if.end362.1.3.6 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1038 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert976, half %840, i64 2, !dbg !229
  br i1 %cmp336.6, label %if.then337.3.3.6, label %if.end362.3.3.6, !dbg !224

if.then337.3.3.6:                                 ; preds = %if.end362.2.3.6
  %841 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %842 = getelementptr inbounds i8, ptr addrspace(4) %841, i64 %.idx.6, !dbg !225
  %arrayidx359.3.3.6 = getelementptr inbounds i8, ptr addrspace(4) %842, i64 480, !dbg !225
  %condval_2.sroa.0.0.copyload.3.3.62384 = load half, ptr addrspace(4) %arrayidx359.3.3.6, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.3.6, !dbg !228

if.end362.3.3.6:                                  ; preds = %if.then337.3.3.6, %if.end362.2.3.6
  %843 = phi half [ %condval_2.sroa.0.0.copyload.3.3.62384, %if.then337.3.3.6 ], [ 0xH0000, %if.end362.2.3.6 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1100 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1038, half %843, i64 3, !dbg !229
  %844 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1100, <4 x half> %__1.sroa.0.6.vec.insert.6, <4 x float> %output_acc.sroa.290.12), !dbg !230
  br label %if.end381.6, !dbg !231

if.end381.6:                                      ; preds = %if.end362.3.3.6, %if.end381.5
  %output_acc.sroa.290.13 = phi <4 x float> [ %output_acc.sroa.290.11, %if.end381.5 ], [ %844, %if.end362.3.3.6 ], !dbg !64
  %output_acc.sroa.194.13 = phi <4 x float> [ %output_acc.sroa.194.11, %if.end381.5 ], [ %830, %if.end362.3.3.6 ], !dbg !64
  %output_acc.sroa.98.13 = phi <4 x float> [ %output_acc.sroa.98.11, %if.end381.5 ], [ %816, %if.end362.3.3.6 ], !dbg !64
  %output_acc.sroa.0.13 = phi <4 x float> [ %output_acc.sroa.0.11, %if.end381.5 ], [ %802, %if.end362.3.3.6 ], !dbg !64
  %normalizer.sroa.0.2.6 = phi float [ %normalizer.sroa.0.2.5, %if.end381.5 ], [ %normalizer.sroa.0.1.6, %if.end362.3.3.6 ], !dbg !64
  %denominator.sroa.0.2.6 = phi float [ %denominator.sroa.0.2.5, %if.end381.5 ], [ %add290.6, %if.end362.3.3.6 ], !dbg !64
  %845 = or disjoint i64 %19, 7, !dbg !232
  %arrayidx45.7 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %845, !dbg !47
  %846 = load i32, ptr addrspace(1) %arrayidx45.7, align 4, !dbg !47, !tbaa !30
  %mul46.7 = shl nsw i32 %846, 4, !dbg !48
  %cmp47.7 = icmp slt i32 %846, 0, !dbg !49
  %cmp49.not.7 = icmp sgt i32 %mul46.7, %1
  %or.cond.7 = select i1 %cmp47.7, i1 true, i1 %cmp49.not.7, !dbg !50
  br i1 %or.cond.7, label %if.end381.7, label %if.then.7, !dbg !50

if.then.7:                                        ; preds = %if.end381.6
  fence syncscope("warp") release, !dbg !51
  tail call void @llvm.mxc.barrier.warp(), !dbg !57
  fence syncscope("warp") acquire, !dbg !58
  %add56.7 = add nuw nsw i32 %mul46.7, %shr55
  %conv66.7 = zext nneg i32 %mul46.7 to i64
  %.idx.7 = shl nuw nsw i64 %conv66.7, 7
  %gep.7 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep616, i64 %.idx.7, !dbg !59
  %cmp59.7 = icmp ult i32 %add56.7, 1024, !dbg !60
  br i1 %cmp59.7, label %if.then60.7, label %if.end.7, !dbg !61

if.then60.7:                                      ; preds = %if.then.7
  %gep602.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.7, i64 %mul62
  %condval.sroa.7.0.add.ptr73.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep602.7, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep602.7, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep602.7, i64 4
  %condval.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %gep602.7, align 16, !dbg !62, !tbaa !30
  %condval.sroa.5.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr73.sroa_idx.7, align 4, !dbg !62, !tbaa !30
  %condval.sroa.6.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr73.sroa_idx.7, align 8, !dbg !62, !tbaa !30
  %condval.sroa.7.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr73.sroa_idx.7, align 4, !dbg !62, !tbaa !30
  br label %if.end.7, !dbg !63

if.end.7:                                         ; preds = %if.then60.7, %if.then.7
  %condval.sroa.0.0.7 = phi i32 [ %condval.sroa.0.0.copyload.7, %if.then60.7 ], [ 0, %if.then.7 ], !dbg !64
  %condval.sroa.5.0.7 = phi i32 [ %condval.sroa.5.0.copyload.7, %if.then60.7 ], [ 0, %if.then.7 ], !dbg !64
  %condval.sroa.6.0.7 = phi i32 [ %condval.sroa.6.0.copyload.7, %if.then60.7 ], [ 0, %if.then.7 ], !dbg !64
  %condval.sroa.7.0.7 = phi i32 [ %condval.sroa.7.0.copyload.7, %if.then60.7 ], [ 0, %if.then.7 ], !dbg !64
  %847 = or disjoint i32 %mul97, %mul106, !dbg !65
  %848 = or disjoint i32 %847, %mul116, !dbg !66
  %849 = or disjoint i32 %848, %mul125, !dbg !67
  %add.ptr128.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %849, !dbg !68
  store i32 %condval.sroa.0.0.7, ptr addrspace(3) %add.ptr128.7, align 16, !dbg !69, !tbaa !30
  %condval.sroa.5.0.add.ptr128.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.7, i32 4, !dbg !69
  store i32 %condval.sroa.5.0.7, ptr addrspace(3) %condval.sroa.5.0.add.ptr128.sroa_idx.7, align 4, !dbg !69, !tbaa !30
  %condval.sroa.6.0.add.ptr128.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.7, i32 8, !dbg !69
  store i32 %condval.sroa.6.0.7, ptr addrspace(3) %condval.sroa.6.0.add.ptr128.sroa_idx.7, align 8, !dbg !69, !tbaa !30
  %condval.sroa.7.0.add.ptr128.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.7, i32 12, !dbg !69
  store i32 %condval.sroa.7.0.7, ptr addrspace(3) %condval.sroa.7.0.add.ptr128.sroa_idx.7, align 4, !dbg !69, !tbaa !30
  %cmp59.1.7 = icmp ult i32 %add56.7, 1016, !dbg !60
  br i1 %cmp59.1.7, label %if.then60.1.7, label %if.end.1.7, !dbg !61

if.then60.1.7:                                    ; preds = %if.end.7
  %add65.1.7 = or disjoint i64 %mul62, 512
  %gep602.1.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.7, i64 %add65.1.7
  %condval.sroa.7.0.add.ptr73.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1.7, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1.7, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep602.1.7, i64 4
  %condval.sroa.0.0.copyload.1.7 = load i32, ptr addrspace(4) %gep602.1.7, align 16, !dbg !62, !tbaa !30
  %condval.sroa.5.0.copyload.1.7 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr73.sroa_idx.1.7, align 4, !dbg !62, !tbaa !30
  %condval.sroa.6.0.copyload.1.7 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr73.sroa_idx.1.7, align 8, !dbg !62, !tbaa !30
  %condval.sroa.7.0.copyload.1.7 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr73.sroa_idx.1.7, align 4, !dbg !62, !tbaa !30
  br label %if.end.1.7, !dbg !63

if.end.1.7:                                       ; preds = %if.then60.1.7, %if.end.7
  %condval.sroa.0.0.1.7 = phi i32 [ %condval.sroa.0.0.copyload.1.7, %if.then60.1.7 ], [ 0, %if.end.7 ], !dbg !64
  %condval.sroa.5.0.1.7 = phi i32 [ %condval.sroa.5.0.copyload.1.7, %if.then60.1.7 ], [ 0, %if.end.7 ], !dbg !64
  %condval.sroa.6.0.1.7 = phi i32 [ %condval.sroa.6.0.copyload.1.7, %if.then60.1.7 ], [ 0, %if.end.7 ], !dbg !64
  %condval.sroa.7.0.1.7 = phi i32 [ %condval.sroa.7.0.copyload.1.7, %if.then60.1.7 ], [ 0, %if.end.7 ], !dbg !64
  %narrow = add nuw nsw i32 %mul97, 512, !dbg !70
  %850 = or disjoint i32 %narrow, %mul106, !dbg !65
  %851 = or disjoint i32 %850, %mul116, !dbg !66
  %852 = or disjoint i32 %851, %mul125, !dbg !67
  %add.ptr128.1.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %852, !dbg !68
  store i32 %condval.sroa.0.0.1.7, ptr addrspace(3) %add.ptr128.1.7, align 16, !dbg !69, !tbaa !30
  %condval.sroa.5.0.add.ptr128.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1.7, i32 4, !dbg !69
  store i32 %condval.sroa.5.0.1.7, ptr addrspace(3) %condval.sroa.5.0.add.ptr128.sroa_idx.1.7, align 4, !dbg !69, !tbaa !30
  %condval.sroa.6.0.add.ptr128.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1.7, i32 8, !dbg !69
  store i32 %condval.sroa.6.0.1.7, ptr addrspace(3) %condval.sroa.6.0.add.ptr128.sroa_idx.1.7, align 8, !dbg !69, !tbaa !30
  %condval.sroa.7.0.add.ptr128.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1.7, i32 12, !dbg !69
  store i32 %condval.sroa.7.0.1.7, ptr addrspace(3) %condval.sroa.7.0.add.ptr128.sroa_idx.1.7, align 4, !dbg !69, !tbaa !30
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %and148.7 = shl nuw nsw i32 %3, 5, !dbg !76
  %mul149.7 = and i32 %and148.7, 32, !dbg !76
  %and156.7 = shl nuw nsw i32 %and152, 4, !dbg !77
  %mul157.7 = and i32 %and156.7, 16, !dbg !77
  %add166.7 = or disjoint i32 %add158, %mul157.7, !dbg !78
  %add171.7 = or disjoint i32 %add166.7, %mul149.7, !dbg !79
  %add.ptr173.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.7, !dbg !80
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %add.ptr173.7, align 8, !dbg !81
  %853 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %5, <4 x float> zeroinitializer), !dbg !82, !call_argsrelate !83
  %add155.1.7 = shl nuw nsw i32 %and152, 4, !dbg !77
  %854 = and i32 %add155.1.7, 16, !dbg !77
  %855 = or disjoint i32 %854, %add158, !dbg !78
  %856 = or disjoint i32 %855, %mul149.7, !dbg !79
  %add171.1.7 = xor i32 %856, 16, !dbg !79
  %add.ptr173.1.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.1.7, !dbg !80
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr173.1.7, align 8, !dbg !81
  %857 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %7, <4 x float> %853), !dbg !82, !call_argsrelate !83
  %add147.2.7 = shl nuw nsw i32 %3, 5, !dbg !76
  %858 = and i32 %add147.2.7, 32, !dbg !76
  %mul149.2.7 = xor i32 %858, 32, !dbg !76
  %add155.2.7 = shl nuw nsw i32 %and152, 4, !dbg !77
  %mul157.2.7 = and i32 %add155.2.7, 16, !dbg !77
  %add166.2.7 = or disjoint i32 %add158, %mul157.2.7, !dbg !78
  %add171.2.7 = or disjoint i32 %add166.2.7, %mul149.2.7, !dbg !79
  %add.ptr173.2.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.2.7, !dbg !80
  %k_local.sroa.0.0.copyload.2.7 = load <4 x half>, ptr addrspace(3) %add.ptr173.2.7, align 8, !dbg !81
  %859 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.7, <4 x half> %9, <4 x float> %857), !dbg !82, !call_argsrelate !83
  %add155.3.7 = shl nuw nsw i32 %and152, 4, !dbg !77
  %860 = and i32 %add155.3.7, 16, !dbg !77
  %861 = or disjoint i32 %860, %add158, !dbg !78
  %862 = or disjoint i32 %861, %mul149.2.7, !dbg !79
  %add171.3.7 = xor i32 %862, 16, !dbg !79
  %add.ptr173.3.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.3.7, !dbg !80
  %k_local.sroa.0.0.copyload.3.7 = load <4 x half>, ptr addrspace(3) %add.ptr173.3.7, align 8, !dbg !81
  %863 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.7, <4 x half> %11, <4 x float> %859), !dbg !82, !call_argsrelate !83
  %add195.7 = add nuw nsw i32 %mul46.7, %mul14
  %cmp198.not.7 = icmp sgt i32 %add195.7, %1, !dbg !84
  %scores.sroa.0.0.vec.extract1229 = extractelement <4 x float> %863, i64 0
  %spec.select2407 = select i1 %cmp198.not.7, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1229, !dbg !85
  %cmp198.not.1.7.not = icmp slt i32 %add195.7, %1, !dbg !84
  %scores.sroa.0.4.vec.extract1356 = extractelement <4 x float> %863, i64 1, !dbg !85
  %condval_1.0.1.7 = select i1 %cmp198.not.1.7.not, float %scores.sroa.0.4.vec.extract1356, float 0xFFF0000000000000, !dbg !85
  %add196.2.7 = or disjoint i32 %add195.7, 2, !dbg !86
  %cmp198.not.2.7 = icmp sgt i32 %add196.2.7, %1, !dbg !84
  %scores.sroa.0.8.vec.extract1481 = extractelement <4 x float> %863, i64 2, !dbg !85
  %condval_1.0.2.7 = select i1 %cmp198.not.2.7, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1481, !dbg !85
  %add196.3.7 = or disjoint i32 %add195.7, 3, !dbg !86
  %cmp198.not.3.7 = icmp sgt i32 %add196.3.7, %1, !dbg !84
  %scores.sroa.0.12.vec.extract1606 = extractelement <4 x float> %863, i64 3, !dbg !85
  %condval_1.0.3.7 = select i1 %cmp198.not.3.7, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1606, !dbg !85
  %864 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2407, float 0xFFF0000000000000), !dbg !87
  %865 = tail call contract noundef float @llvm.maxnum.f32(float %864, float %condval_1.0.1.7), !dbg !87
  %866 = tail call contract noundef float @llvm.maxnum.f32(float %865, float %condval_1.0.2.7), !dbg !87
  %867 = tail call contract noundef float @llvm.maxnum.f32(float %866, float %condval_1.0.3.7), !dbg !87
  %868 = bitcast float %867 to i32, !dbg !91
  %869 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %870 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %869) #11, !dbg !105
  %xor.i.i.i.7 = xor i32 %870, 32, !dbg !106
  %871 = and i32 %870, -64, !dbg !107
  %and.i.i.i.7 = add nsw i32 %871, 64, !dbg !107
  %cmp.not.i.i.i.7 = icmp slt i32 %xor.i.i.i.7, %and.i.i.i.7, !dbg !108
  %cond.i.i.i.7 = select i1 %cmp.not.i.i.i.7, i32 %xor.i.i.i.7, i32 %870, !dbg !109
  %shl.i.i.i.7 = shl i32 %cond.i.i.i.7, 2, !dbg !110
  %872 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.7, i32 %868), !dbg !111
  %873 = bitcast i32 %872 to float, !dbg !112
  %874 = tail call contract noundef float @llvm.maxnum.f32(float %867, float %873), !dbg !113
  %875 = bitcast float %874 to i32, !dbg !121
  %876 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !126
  %877 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %876) #11, !dbg !129
  %xor.i.i.i.i.7 = xor i32 %877, 16, !dbg !130
  %878 = and i32 %877, -64, !dbg !131
  %and.i.i.i.i.7 = add nsw i32 %878, 64, !dbg !131
  %cmp.not.i.i.i.i.7 = icmp slt i32 %xor.i.i.i.i.7, %and.i.i.i.i.7, !dbg !132
  %cond.i.i.i.i.7 = select i1 %cmp.not.i.i.i.i.7, i32 %xor.i.i.i.i.7, i32 %877, !dbg !133
  %shl.i.i.i.i.7 = shl i32 %cond.i.i.i.i.7, 2, !dbg !134
  %879 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.7, i32 %875), !dbg !135
  %880 = bitcast i32 %879 to float, !dbg !136
  %881 = tail call contract noundef float @llvm.maxnum.f32(float %874, float %880), !dbg !137
  %sub.7 = fsub contract float %881, %normalizer.sroa.0.2.6, !dbg !141
  %mul234.7 = fmul contract float %sub.7, 0x3FC7154760000000, !dbg !142
  %cmp235.7 = fcmp contract ogt float %mul234.7, 7.000000e+00, !dbg !143
  %sub239.7 = fsub contract float %normalizer.sroa.0.2.6, %881
  %mul240.7 = fmul contract float %sub239.7, 0x3FC7154760000000
  %cmp.i.i.7 = fcmp contract olt float %mul240.7, -1.260000e+02
  %cond.i.i.7 = select contract i1 %cmp.i.i.7, float 6.400000e+01, float 0.000000e+00
  %add.i.i.7 = fadd contract float %mul240.7, %cond.i.i.7
  %882 = tail call contract float @llvm.exp2.f32(float %add.i.i.7)
  %cond2.i.i.7 = select contract i1 %cmp.i.i.7, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i.7 = fmul contract float %cond2.i.i.7, %882
  %normalizer.sroa.0.1.7 = select i1 %cmp235.7, float %881, float %normalizer.sroa.0.2.6, !dbg !144
  %sub255.7 = fsub contract float %spec.select2407, %normalizer.sroa.0.1.7, !dbg !145
  %mul256.7 = fmul contract float %sub255.7, 0x3FC7154760000000, !dbg !146
  %add257.7 = fadd contract float %mul256.7, 8.000000e+00, !dbg !147
  %cmp.i.i559.7 = fcmp contract olt float %add257.7, -1.260000e+02, !dbg !148
  %cond.i.i560.7 = select contract i1 %cmp.i.i559.7, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.7 = fadd contract float %add257.7, %cond.i.i560.7, !dbg !148
  %883 = tail call contract float @llvm.exp2.f32(float %add.i.i561.7), !dbg !148
  %cond2.i.i562.7 = select contract i1 %cmp.i.i559.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.7 = fmul contract float %cond2.i.i562.7, %883, !dbg !148
  %sub255.1.7 = fsub contract float %condval_1.0.1.7, %normalizer.sroa.0.1.7, !dbg !145
  %mul256.1.7 = fmul contract float %sub255.1.7, 0x3FC7154760000000, !dbg !146
  %add257.1.7 = fadd contract float %mul256.1.7, 8.000000e+00, !dbg !147
  %cmp.i.i559.1.7 = fcmp contract olt float %add257.1.7, -1.260000e+02, !dbg !148
  %cond.i.i560.1.7 = select contract i1 %cmp.i.i559.1.7, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.1.7 = fadd contract float %add257.1.7, %cond.i.i560.1.7, !dbg !148
  %884 = tail call contract float @llvm.exp2.f32(float %add.i.i561.1.7), !dbg !148
  %cond2.i.i562.1.7 = select contract i1 %cmp.i.i559.1.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.1.7 = fmul contract float %cond2.i.i562.1.7, %884, !dbg !148
  %sub255.2.7 = fsub contract float %condval_1.0.2.7, %normalizer.sroa.0.1.7, !dbg !145
  %mul256.2.7 = fmul contract float %sub255.2.7, 0x3FC7154760000000, !dbg !146
  %add257.2.7 = fadd contract float %mul256.2.7, 8.000000e+00, !dbg !147
  %cmp.i.i559.2.7 = fcmp contract olt float %add257.2.7, -1.260000e+02, !dbg !148
  %cond.i.i560.2.7 = select contract i1 %cmp.i.i559.2.7, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.2.7 = fadd contract float %add257.2.7, %cond.i.i560.2.7, !dbg !148
  %885 = tail call contract float @llvm.exp2.f32(float %add.i.i561.2.7), !dbg !148
  %cond2.i.i562.2.7 = select contract i1 %cmp.i.i559.2.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.2.7 = fmul contract float %cond2.i.i562.2.7, %885, !dbg !148
  %sub255.3.7 = fsub contract float %condval_1.0.3.7, %normalizer.sroa.0.1.7, !dbg !145
  %mul256.3.7 = fmul contract float %sub255.3.7, 0x3FC7154760000000, !dbg !146
  %add257.3.7 = fadd contract float %mul256.3.7, 8.000000e+00, !dbg !147
  %cmp.i.i559.3.7 = fcmp contract olt float %add257.3.7, -1.260000e+02, !dbg !148
  %cond.i.i560.3.7 = select contract i1 %cmp.i.i559.3.7, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i561.3.7 = fadd contract float %add257.3.7, %cond.i.i560.3.7, !dbg !148
  %886 = tail call contract float @llvm.exp2.f32(float %add.i.i561.3.7), !dbg !148
  %cond2.i.i562.3.7 = select contract i1 %cmp.i.i559.3.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i563.3.7 = fmul contract float %cond2.i.i562.3.7, %886, !dbg !148
  %add272.7 = fadd contract float %mul.i.i563.7, 0.000000e+00, !dbg !151
  %add272.1.7 = fadd contract float %add272.7, %mul.i.i563.1.7, !dbg !151
  %add272.2.7 = fadd contract float %add272.1.7, %mul.i.i563.2.7, !dbg !151
  %add272.3.7 = fadd contract float %add272.2.7, %mul.i.i563.3.7, !dbg !151
  %rescale.sroa.0.0.7 = select i1 %cmp235.7, float %mul.i.i.7, float 1.000000e+00, !dbg !144
  %887 = bitcast float %add272.3.7 to i32, !dbg !152
  %888 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !157
  %889 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %888) #11, !dbg !160
  %xor.i.i.i564.7 = xor i32 %889, 32, !dbg !161
  %890 = and i32 %889, -64, !dbg !162
  %and.i.i.i565.7 = add nsw i32 %890, 64, !dbg !162
  %cmp.not.i.i.i566.7 = icmp slt i32 %xor.i.i.i564.7, %and.i.i.i565.7, !dbg !163
  %cond.i.i.i567.7 = select i1 %cmp.not.i.i.i566.7, i32 %xor.i.i.i564.7, i32 %889, !dbg !164
  %shl.i.i.i568.7 = shl i32 %cond.i.i.i567.7, 2, !dbg !165
  %891 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i568.7, i32 %887), !dbg !166
  %892 = bitcast i32 %891 to float, !dbg !167
  %add.i.i569.7 = fadd contract float %add272.3.7, %892, !dbg !168
  %893 = bitcast float %add.i.i569.7 to i32, !dbg !171
  %894 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !176
  %895 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %894) #11, !dbg !179
  %xor.i.i.i.i570.7 = xor i32 %895, 16, !dbg !180
  %896 = and i32 %895, -64, !dbg !181
  %and.i.i.i.i571.7 = add nsw i32 %896, 64, !dbg !181
  %cmp.not.i.i.i.i572.7 = icmp slt i32 %xor.i.i.i.i570.7, %and.i.i.i.i571.7, !dbg !182
  %cond.i.i.i.i573.7 = select i1 %cmp.not.i.i.i.i572.7, i32 %xor.i.i.i.i570.7, i32 %895, !dbg !183
  %shl.i.i.i.i574.7 = shl i32 %cond.i.i.i.i573.7, 2, !dbg !184
  %897 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i574.7, i32 %893), !dbg !185
  %898 = bitcast i32 %897 to float, !dbg !186
  %add.i.i.i.7 = fadd contract float %add.i.i569.7, %898, !dbg !187
  %cmp281.7 = fcmp contract une float %rescale.sroa.0.0.7, 1.000000e+00, !dbg !189
  %mul285.7 = fmul contract float %denominator.sroa.0.2.6, %rescale.sroa.0.0.7, !dbg !190
  %denominator.sroa.0.1.7 = select i1 %cmp281.7, float %mul285.7, float %denominator.sroa.0.2.6, !dbg !190
  %add290.7 = fadd contract float %denominator.sroa.0.1.7, %add.i.i.i.7, !dbg !191
  %899 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !192, !noalias !200
  %900 = fptrunc float %mul.i.i563.7 to half, !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %899), !dbg !192, !noalias !200
  %901 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !205
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !205, !noalias !200
  %902 = fptrunc float %mul.i.i563.1.7 to half, !dbg !205
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %901), !dbg !205, !noalias !200
  %__1.sroa.0.0.vec.insert.7 = insertelement <4 x half> poison, half %900, i64 0, !dbg !207
  %__1.sroa.0.2.vec.insert.7 = insertelement <4 x half> %__1.sroa.0.0.vec.insert.7, half %902, i64 1, !dbg !207
  %903 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !210
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !210, !noalias !214
  %904 = fptrunc float %mul.i.i563.2.7 to half, !dbg !210
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %903), !dbg !210, !noalias !214
  %905 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !219
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !219, !noalias !214
  %906 = fptrunc float %mul.i.i563.3.7 to half, !dbg !219
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %905), !dbg !219, !noalias !214
  %__1.sroa.0.4.vec.insert.7 = insertelement <4 x half> %__1.sroa.0.2.vec.insert.7, half %904, i64 2, !dbg !221
  %__1.sroa.0.6.vec.insert.7 = insertelement <4 x half> %__1.sroa.0.4.vec.insert.7, half %906, i64 3, !dbg !221
  br i1 %cmp281.7, label %for.body312.preheader.7, label %if.end322.7, !dbg !223

for.body312.preheader.7:                          ; preds = %if.end.1.7
  %output_acc.sroa.0.0.vec.extract1653 = extractelement <4 x float> %output_acc.sroa.0.13, i64 0, !dbg !233
  %mul316.7825 = fmul contract float %rescale.sroa.0.0.7, %output_acc.sroa.0.0.vec.extract1653, !dbg !234
  %output_acc.sroa.0.0.vec.insert1655 = insertelement <4 x float> poison, float %mul316.7825, i64 0, !dbg !235
  %output_acc.sroa.0.4.vec.extract1690 = extractelement <4 x float> %output_acc.sroa.0.13, i64 1, !dbg !233
  %mul316.1.7 = fmul contract float %rescale.sroa.0.0.7, %output_acc.sroa.0.4.vec.extract1690, !dbg !234
  %output_acc.sroa.0.4.vec.insert1692 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert1655, float %mul316.1.7, i64 1, !dbg !235
  %output_acc.sroa.0.8.vec.extract1727 = extractelement <4 x float> %output_acc.sroa.0.13, i64 2, !dbg !233
  %mul316.2.7 = fmul contract float %rescale.sroa.0.0.7, %output_acc.sroa.0.8.vec.extract1727, !dbg !234
  %output_acc.sroa.0.8.vec.insert1729 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert1692, float %mul316.2.7, i64 2, !dbg !235
  %output_acc.sroa.0.12.vec.extract1764 = extractelement <4 x float> %output_acc.sroa.0.13, i64 3, !dbg !233
  %mul316.3.7 = fmul contract float %rescale.sroa.0.0.7, %output_acc.sroa.0.12.vec.extract1764, !dbg !234
  %output_acc.sroa.0.12.vec.insert1766 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert1729, float %mul316.3.7, i64 3, !dbg !235
  %output_acc.sroa.98.16.vec.extract1809 = extractelement <4 x float> %output_acc.sroa.98.13, i64 0, !dbg !233
  %mul316.4.7 = fmul contract float %rescale.sroa.0.0.7, %output_acc.sroa.98.16.vec.extract1809, !dbg !234
  %output_acc.sroa.98.16.vec.insert1811 = insertelement <4 x float> poison, float %mul316.4.7, i64 0, !dbg !235
  %output_acc.sroa.98.20.vec.extract1846 = extractelement <4 x float> %output_acc.sroa.98.13, i64 1, !dbg !233
  %mul316.5.7 = fmul contract float %rescale.sroa.0.0.7, %output_acc.sroa.98.20.vec.extract1846, !dbg !234
  %output_acc.sroa.98.20.vec.insert1848 = insertelement <4 x float> %output_acc.sroa.98.16.vec.insert1811, float %mul316.5.7, i64 1, !dbg !235
  %output_acc.sroa.98.24.vec.extract1883 = extractelement <4 x float> %output_acc.sroa.98.13, i64 2, !dbg !233
  %mul316.6.7 = fmul contract float %rescale.sroa.0.0.7, %output_acc.sroa.98.24.vec.extract1883, !dbg !234
  %output_acc.sroa.98.24.vec.insert1885 = insertelement <4 x float> %output_acc.sroa.98.20.vec.insert1848, float %mul316.6.7, i64 2, !dbg !235
  %output_acc.sroa.98.28.vec.extract1920 = extractelement <4 x float> %output_acc.sroa.98.13, i64 3, !dbg !233
  %mul316.7.7 = fmul contract float %rescale.sroa.0.0.7, %output_acc.sroa.98.28.vec.extract1920, !dbg !234
  %output_acc.sroa.98.28.vec.insert1922 = insertelement <4 x float> %output_acc.sroa.98.24.vec.insert1885, float %mul316.7.7, i64 3, !dbg !235
  %output_acc.sroa.194.32.vec.extract1965 = extractelement <4 x float> %output_acc.sroa.194.13, i64 0, !dbg !233
  %mul316.8.7 = fmul contract float %rescale.sroa.0.0.7, %output_acc.sroa.194.32.vec.extract1965, !dbg !234
  %output_acc.sroa.194.32.vec.insert1967 = insertelement <4 x float> poison, float %mul316.8.7, i64 0, !dbg !235
  %output_acc.sroa.194.36.vec.extract2002 = extractelement <4 x float> %output_acc.sroa.194.13, i64 1, !dbg !233
  %mul316.9.7 = fmul contract float %rescale.sroa.0.0.7, %output_acc.sroa.194.36.vec.extract2002, !dbg !234
  %output_acc.sroa.194.36.vec.insert2004 = insertelement <4 x float> %output_acc.sroa.194.32.vec.insert1967, float %mul316.9.7, i64 1, !dbg !235
  %output_acc.sroa.194.40.vec.extract2039 = extractelement <4 x float> %output_acc.sroa.194.13, i64 2, !dbg !233
  %mul316.10.7 = fmul contract float %rescale.sroa.0.0.7, %output_acc.sroa.194.40.vec.extract2039, !dbg !234
  %output_acc.sroa.194.40.vec.insert2041 = insertelement <4 x float> %output_acc.sroa.194.36.vec.insert2004, float %mul316.10.7, i64 2, !dbg !235
  %output_acc.sroa.194.44.vec.extract2076 = extractelement <4 x float> %output_acc.sroa.194.13, i64 3, !dbg !233
  %mul316.11.7 = fmul contract float %rescale.sroa.0.0.7, %output_acc.sroa.194.44.vec.extract2076, !dbg !234
  %output_acc.sroa.194.44.vec.insert2078 = insertelement <4 x float> %output_acc.sroa.194.40.vec.insert2041, float %mul316.11.7, i64 3, !dbg !235
  %output_acc.sroa.290.48.vec.extract2121 = extractelement <4 x float> %output_acc.sroa.290.13, i64 0, !dbg !233
  %mul316.12.7 = fmul contract float %rescale.sroa.0.0.7, %output_acc.sroa.290.48.vec.extract2121, !dbg !234
  %output_acc.sroa.290.48.vec.insert2123 = insertelement <4 x float> poison, float %mul316.12.7, i64 0, !dbg !235
  %output_acc.sroa.290.52.vec.extract2158 = extractelement <4 x float> %output_acc.sroa.290.13, i64 1, !dbg !233
  %mul316.13.7 = fmul contract float %rescale.sroa.0.0.7, %output_acc.sroa.290.52.vec.extract2158, !dbg !234
  %output_acc.sroa.290.52.vec.insert2160 = insertelement <4 x float> %output_acc.sroa.290.48.vec.insert2123, float %mul316.13.7, i64 1, !dbg !235
  %output_acc.sroa.290.56.vec.extract2195 = extractelement <4 x float> %output_acc.sroa.290.13, i64 2, !dbg !233
  %mul316.14.7 = fmul contract float %rescale.sroa.0.0.7, %output_acc.sroa.290.56.vec.extract2195, !dbg !234
  %output_acc.sroa.290.56.vec.insert2197 = insertelement <4 x float> %output_acc.sroa.290.52.vec.insert2160, float %mul316.14.7, i64 2, !dbg !235
  %output_acc.sroa.290.60.vec.extract2232 = extractelement <4 x float> %output_acc.sroa.290.13, i64 3, !dbg !233
  %mul316.15.7 = fmul contract float %rescale.sroa.0.0.7, %output_acc.sroa.290.60.vec.extract2232, !dbg !234
  %output_acc.sroa.290.60.vec.insert2234 = insertelement <4 x float> %output_acc.sroa.290.56.vec.insert2197, float %mul316.15.7, i64 3, !dbg !235
  br label %if.end322.7

if.end322.7:                                      ; preds = %for.body312.preheader.7, %if.end.1.7
  %output_acc.sroa.290.14 = phi <4 x float> [ %output_acc.sroa.290.60.vec.insert2234, %for.body312.preheader.7 ], [ %output_acc.sroa.290.13, %if.end.1.7 ], !dbg !64
  %output_acc.sroa.194.14 = phi <4 x float> [ %output_acc.sroa.194.44.vec.insert2078, %for.body312.preheader.7 ], [ %output_acc.sroa.194.13, %if.end.1.7 ], !dbg !64
  %output_acc.sroa.98.14 = phi <4 x float> [ %output_acc.sroa.98.28.vec.insert1922, %for.body312.preheader.7 ], [ %output_acc.sroa.98.13, %if.end.1.7 ], !dbg !64
  %output_acc.sroa.0.14 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1766, %for.body312.preheader.7 ], [ %output_acc.sroa.0.13, %if.end.1.7 ], !dbg !64
  %shr334.7 = lshr exact i32 %mul46.7, 2
  %add335.7 = add nuw nsw i32 %shr334.7, %shr332
  %cmp336.7 = icmp ult i32 %add335.7, 256
  br i1 %cmp336.7, label %if.then337.7, label %if.end362.7, !dbg !224

if.then337.7:                                     ; preds = %if.end322.7
  %907 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %908 = getelementptr inbounds i8, ptr addrspace(4) %907, i64 %.idx.7, !dbg !225
  %condval_2.sroa.0.0.copyload.72385 = load half, ptr addrspace(4) %908, align 2, !dbg !226, !tbaa !227
  br label %if.end362.7, !dbg !228

if.end362.7:                                      ; preds = %if.then337.7, %if.end322.7
  %909 = phi half [ %condval_2.sroa.0.0.copyload.72385, %if.then337.7 ], [ 0xH0000, %if.end322.7 ], !dbg !64
  %v_local.sroa.0.0.vec.insert916 = insertelement <4 x half> poison, half %909, i64 0, !dbg !229
  br i1 %cmp336.7, label %if.then337.1.7, label %if.end362.1.7, !dbg !224

if.then337.1.7:                                   ; preds = %if.end362.7
  %910 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %911 = getelementptr inbounds i8, ptr addrspace(4) %910, i64 %.idx.7, !dbg !225
  %arrayidx359.1.7 = getelementptr inbounds i8, ptr addrspace(4) %911, i64 128, !dbg !225
  %condval_2.sroa.0.0.copyload.1.72386 = load half, ptr addrspace(4) %arrayidx359.1.7, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.7, !dbg !228

if.end362.1.7:                                    ; preds = %if.then337.1.7, %if.end362.7
  %912 = phi half [ %condval_2.sroa.0.0.copyload.1.72386, %if.then337.1.7 ], [ 0xH0000, %if.end362.7 ], !dbg !64
  %v_local.sroa.0.2.vec.insert978 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert916, half %912, i64 1, !dbg !229
  br i1 %cmp336.7, label %if.then337.2.7, label %if.end362.2.7, !dbg !224

if.then337.2.7:                                   ; preds = %if.end362.1.7
  %913 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %914 = getelementptr inbounds i8, ptr addrspace(4) %913, i64 %.idx.7, !dbg !225
  %arrayidx359.2.7 = getelementptr inbounds i8, ptr addrspace(4) %914, i64 256, !dbg !225
  %condval_2.sroa.0.0.copyload.2.72387 = load half, ptr addrspace(4) %arrayidx359.2.7, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.7, !dbg !228

if.end362.2.7:                                    ; preds = %if.then337.2.7, %if.end362.1.7
  %915 = phi half [ %condval_2.sroa.0.0.copyload.2.72387, %if.then337.2.7 ], [ 0xH0000, %if.end362.1.7 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1040 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert978, half %915, i64 2, !dbg !229
  br i1 %cmp336.7, label %if.then337.3.7, label %if.end362.3.7, !dbg !224

if.then337.3.7:                                   ; preds = %if.end362.2.7
  %916 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %917 = getelementptr inbounds i8, ptr addrspace(4) %916, i64 %.idx.7, !dbg !225
  %arrayidx359.3.7 = getelementptr inbounds i8, ptr addrspace(4) %917, i64 384, !dbg !225
  %condval_2.sroa.0.0.copyload.3.72388 = load half, ptr addrspace(4) %arrayidx359.3.7, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.7, !dbg !228

if.end362.3.7:                                    ; preds = %if.then337.3.7, %if.end362.2.7
  %918 = phi half [ %condval_2.sroa.0.0.copyload.3.72388, %if.then337.3.7 ], [ 0xH0000, %if.end362.2.7 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1102 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1040, half %918, i64 3, !dbg !229
  %919 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1102, <4 x half> %__1.sroa.0.6.vec.insert.7, <4 x float> %output_acc.sroa.0.14), !dbg !230
  br i1 %cmp336.7, label %if.then337.1641.7, label %if.end362.1643.7, !dbg !224

if.then337.1641.7:                                ; preds = %if.end362.3.7
  %920 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %921 = getelementptr inbounds i8, ptr addrspace(4) %920, i64 %.idx.7, !dbg !225
  %922 = getelementptr inbounds i8, ptr addrspace(4) %921, i64 32, !dbg !225
  %condval_2.sroa.0.0.copyload.1640.72389 = load half, ptr addrspace(4) %922, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1643.7, !dbg !228

if.end362.1643.7:                                 ; preds = %if.then337.1641.7, %if.end362.3.7
  %923 = phi half [ %condval_2.sroa.0.0.copyload.1640.72389, %if.then337.1641.7 ], [ 0xH0000, %if.end362.3.7 ], !dbg !64
  %v_local.sroa.0.0.vec.insert918 = insertelement <4 x half> poison, half %923, i64 0, !dbg !229
  br i1 %cmp336.7, label %if.then337.1.1.7, label %if.end362.1.1.7, !dbg !224

if.then337.1.1.7:                                 ; preds = %if.end362.1643.7
  %924 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %925 = getelementptr inbounds i8, ptr addrspace(4) %924, i64 %.idx.7, !dbg !225
  %arrayidx359.1.1.7 = getelementptr inbounds i8, ptr addrspace(4) %925, i64 160, !dbg !225
  %condval_2.sroa.0.0.copyload.1.1.72390 = load half, ptr addrspace(4) %arrayidx359.1.1.7, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.1.7, !dbg !228

if.end362.1.1.7:                                  ; preds = %if.then337.1.1.7, %if.end362.1643.7
  %926 = phi half [ %condval_2.sroa.0.0.copyload.1.1.72390, %if.then337.1.1.7 ], [ 0xH0000, %if.end362.1643.7 ], !dbg !64
  %v_local.sroa.0.2.vec.insert980 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert918, half %926, i64 1, !dbg !229
  br i1 %cmp336.7, label %if.then337.2.1.7, label %if.end362.2.1.7, !dbg !224

if.then337.2.1.7:                                 ; preds = %if.end362.1.1.7
  %927 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %928 = getelementptr inbounds i8, ptr addrspace(4) %927, i64 %.idx.7, !dbg !225
  %arrayidx359.2.1.7 = getelementptr inbounds i8, ptr addrspace(4) %928, i64 288, !dbg !225
  %condval_2.sroa.0.0.copyload.2.1.72391 = load half, ptr addrspace(4) %arrayidx359.2.1.7, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.1.7, !dbg !228

if.end362.2.1.7:                                  ; preds = %if.then337.2.1.7, %if.end362.1.1.7
  %929 = phi half [ %condval_2.sroa.0.0.copyload.2.1.72391, %if.then337.2.1.7 ], [ 0xH0000, %if.end362.1.1.7 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1042 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert980, half %929, i64 2, !dbg !229
  br i1 %cmp336.7, label %if.then337.3.1.7, label %if.end362.3.1.7, !dbg !224

if.then337.3.1.7:                                 ; preds = %if.end362.2.1.7
  %930 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %931 = getelementptr inbounds i8, ptr addrspace(4) %930, i64 %.idx.7, !dbg !225
  %arrayidx359.3.1.7 = getelementptr inbounds i8, ptr addrspace(4) %931, i64 416, !dbg !225
  %condval_2.sroa.0.0.copyload.3.1.72392 = load half, ptr addrspace(4) %arrayidx359.3.1.7, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.1.7, !dbg !228

if.end362.3.1.7:                                  ; preds = %if.then337.3.1.7, %if.end362.2.1.7
  %932 = phi half [ %condval_2.sroa.0.0.copyload.3.1.72392, %if.then337.3.1.7 ], [ 0xH0000, %if.end362.2.1.7 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1104 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1042, half %932, i64 3, !dbg !229
  %933 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1104, <4 x half> %__1.sroa.0.6.vec.insert.7, <4 x float> %output_acc.sroa.98.14), !dbg !230
  br i1 %cmp336.7, label %if.then337.2646.7, label %if.end362.2648.7, !dbg !224

if.then337.2646.7:                                ; preds = %if.end362.3.1.7
  %934 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %935 = getelementptr inbounds i8, ptr addrspace(4) %934, i64 %.idx.7, !dbg !225
  %936 = getelementptr inbounds i8, ptr addrspace(4) %935, i64 64, !dbg !225
  %condval_2.sroa.0.0.copyload.2645.72393 = load half, ptr addrspace(4) %936, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2648.7, !dbg !228

if.end362.2648.7:                                 ; preds = %if.then337.2646.7, %if.end362.3.1.7
  %937 = phi half [ %condval_2.sroa.0.0.copyload.2645.72393, %if.then337.2646.7 ], [ 0xH0000, %if.end362.3.1.7 ], !dbg !64
  %v_local.sroa.0.0.vec.insert920 = insertelement <4 x half> poison, half %937, i64 0, !dbg !229
  br i1 %cmp336.7, label %if.then337.1.2.7, label %if.end362.1.2.7, !dbg !224

if.then337.1.2.7:                                 ; preds = %if.end362.2648.7
  %938 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %939 = getelementptr inbounds i8, ptr addrspace(4) %938, i64 %.idx.7, !dbg !225
  %arrayidx359.1.2.7 = getelementptr inbounds i8, ptr addrspace(4) %939, i64 192, !dbg !225
  %condval_2.sroa.0.0.copyload.1.2.72394 = load half, ptr addrspace(4) %arrayidx359.1.2.7, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.2.7, !dbg !228

if.end362.1.2.7:                                  ; preds = %if.then337.1.2.7, %if.end362.2648.7
  %940 = phi half [ %condval_2.sroa.0.0.copyload.1.2.72394, %if.then337.1.2.7 ], [ 0xH0000, %if.end362.2648.7 ], !dbg !64
  %v_local.sroa.0.2.vec.insert982 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert920, half %940, i64 1, !dbg !229
  br i1 %cmp336.7, label %if.then337.2.2.7, label %if.end362.2.2.7, !dbg !224

if.then337.2.2.7:                                 ; preds = %if.end362.1.2.7
  %941 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %942 = getelementptr inbounds i8, ptr addrspace(4) %941, i64 %.idx.7, !dbg !225
  %arrayidx359.2.2.7 = getelementptr inbounds i8, ptr addrspace(4) %942, i64 320, !dbg !225
  %condval_2.sroa.0.0.copyload.2.2.72395 = load half, ptr addrspace(4) %arrayidx359.2.2.7, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.2.7, !dbg !228

if.end362.2.2.7:                                  ; preds = %if.then337.2.2.7, %if.end362.1.2.7
  %943 = phi half [ %condval_2.sroa.0.0.copyload.2.2.72395, %if.then337.2.2.7 ], [ 0xH0000, %if.end362.1.2.7 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1044 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert982, half %943, i64 2, !dbg !229
  br i1 %cmp336.7, label %if.then337.3.2.7, label %if.end362.3.2.7, !dbg !224

if.then337.3.2.7:                                 ; preds = %if.end362.2.2.7
  %944 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %945 = getelementptr inbounds i8, ptr addrspace(4) %944, i64 %.idx.7, !dbg !225
  %arrayidx359.3.2.7 = getelementptr inbounds i8, ptr addrspace(4) %945, i64 448, !dbg !225
  %condval_2.sroa.0.0.copyload.3.2.72396 = load half, ptr addrspace(4) %arrayidx359.3.2.7, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.2.7, !dbg !228

if.end362.3.2.7:                                  ; preds = %if.then337.3.2.7, %if.end362.2.2.7
  %946 = phi half [ %condval_2.sroa.0.0.copyload.3.2.72396, %if.then337.3.2.7 ], [ 0xH0000, %if.end362.2.2.7 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1106 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1044, half %946, i64 3, !dbg !229
  %947 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1106, <4 x half> %__1.sroa.0.6.vec.insert.7, <4 x float> %output_acc.sroa.194.14), !dbg !230
  br i1 %cmp336.7, label %if.then337.3651.7, label %if.end362.3653.7, !dbg !224

if.then337.3651.7:                                ; preds = %if.end362.3.2.7
  %948 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %949 = getelementptr inbounds i8, ptr addrspace(4) %948, i64 %.idx.7, !dbg !225
  %950 = getelementptr inbounds i8, ptr addrspace(4) %949, i64 96, !dbg !225
  %condval_2.sroa.0.0.copyload.3650.72397 = load half, ptr addrspace(4) %950, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3653.7, !dbg !228

if.end362.3653.7:                                 ; preds = %if.then337.3651.7, %if.end362.3.2.7
  %951 = phi half [ %condval_2.sroa.0.0.copyload.3650.72397, %if.then337.3651.7 ], [ 0xH0000, %if.end362.3.2.7 ], !dbg !64
  %v_local.sroa.0.0.vec.insert922 = insertelement <4 x half> poison, half %951, i64 0, !dbg !229
  br i1 %cmp336.7, label %if.then337.1.3.7, label %if.end362.1.3.7, !dbg !224

if.then337.1.3.7:                                 ; preds = %if.end362.3653.7
  %952 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %953 = getelementptr inbounds i8, ptr addrspace(4) %952, i64 %.idx.7, !dbg !225
  %arrayidx359.1.3.7 = getelementptr inbounds i8, ptr addrspace(4) %953, i64 224, !dbg !225
  %condval_2.sroa.0.0.copyload.1.3.72398 = load half, ptr addrspace(4) %arrayidx359.1.3.7, align 2, !dbg !226, !tbaa !227
  br label %if.end362.1.3.7, !dbg !228

if.end362.1.3.7:                                  ; preds = %if.then337.1.3.7, %if.end362.3653.7
  %954 = phi half [ %condval_2.sroa.0.0.copyload.1.3.72398, %if.then337.1.3.7 ], [ 0xH0000, %if.end362.3653.7 ], !dbg !64
  %v_local.sroa.0.2.vec.insert984 = insertelement <4 x half> %v_local.sroa.0.0.vec.insert922, half %954, i64 1, !dbg !229
  br i1 %cmp336.7, label %if.then337.2.3.7, label %if.end362.2.3.7, !dbg !224

if.then337.2.3.7:                                 ; preds = %if.end362.1.3.7
  %955 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %956 = getelementptr inbounds i8, ptr addrspace(4) %955, i64 %.idx.7, !dbg !225
  %arrayidx359.2.3.7 = getelementptr inbounds i8, ptr addrspace(4) %956, i64 352, !dbg !225
  %condval_2.sroa.0.0.copyload.2.3.72399 = load half, ptr addrspace(4) %arrayidx359.2.3.7, align 2, !dbg !226, !tbaa !227
  br label %if.end362.2.3.7, !dbg !228

if.end362.2.3.7:                                  ; preds = %if.then337.2.3.7, %if.end362.1.3.7
  %957 = phi half [ %condval_2.sroa.0.0.copyload.2.3.72399, %if.then337.2.3.7 ], [ 0xH0000, %if.end362.1.3.7 ], !dbg !64
  %v_local.sroa.0.4.vec.insert1046 = insertelement <4 x half> %v_local.sroa.0.2.vec.insert984, half %957, i64 2, !dbg !229
  br i1 %cmp336.7, label %if.then337.3.3.7, label %if.end362.3.3.7, !dbg !224

if.then337.3.3.7:                                 ; preds = %if.end362.2.3.7
  %958 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add348, !dbg !225
  %959 = getelementptr inbounds i8, ptr addrspace(4) %958, i64 %.idx.7, !dbg !225
  %arrayidx359.3.3.7 = getelementptr inbounds i8, ptr addrspace(4) %959, i64 480, !dbg !225
  %condval_2.sroa.0.0.copyload.3.3.72400 = load half, ptr addrspace(4) %arrayidx359.3.3.7, align 2, !dbg !226, !tbaa !227
  br label %if.end362.3.3.7, !dbg !228

if.end362.3.3.7:                                  ; preds = %if.then337.3.3.7, %if.end362.2.3.7
  %960 = phi half [ %condval_2.sroa.0.0.copyload.3.3.72400, %if.then337.3.3.7 ], [ 0xH0000, %if.end362.2.3.7 ], !dbg !64
  %v_local.sroa.0.6.vec.insert1108 = insertelement <4 x half> %v_local.sroa.0.4.vec.insert1046, half %960, i64 3, !dbg !229
  %961 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_local.sroa.0.6.vec.insert1108, <4 x half> %__1.sroa.0.6.vec.insert.7, <4 x float> %output_acc.sroa.290.14), !dbg !230
  br label %if.end381.7, !dbg !231

if.end381.7:                                      ; preds = %if.end362.3.3.7, %if.end381.6
  %output_acc.sroa.290.15 = phi <4 x float> [ %output_acc.sroa.290.13, %if.end381.6 ], [ %961, %if.end362.3.3.7 ], !dbg !64
  %output_acc.sroa.194.15 = phi <4 x float> [ %output_acc.sroa.194.13, %if.end381.6 ], [ %947, %if.end362.3.3.7 ], !dbg !64
  %output_acc.sroa.98.15 = phi <4 x float> [ %output_acc.sroa.98.13, %if.end381.6 ], [ %933, %if.end362.3.3.7 ], !dbg !64
  %output_acc.sroa.0.15 = phi <4 x float> [ %output_acc.sroa.0.13, %if.end381.6 ], [ %919, %if.end362.3.3.7 ], !dbg !64
  %denominator.sroa.0.2.7 = phi float [ %denominator.sroa.0.2.6, %if.end381.6 ], [ %add290.7, %if.end362.3.3.7 ], !dbg !64
  fence syncscope("warp") release, !dbg !236
  tail call void @llvm.mxc.barrier.warp(), !dbg !239
  fence syncscope("warp") acquire, !dbg !240
  %output_acc.sroa.0.0.vec.extract1657 = extractelement <4 x float> %output_acc.sroa.0.15, i64 0, !dbg !241
  %div = fdiv contract float %output_acc.sroa.0.0.vec.extract1657, %denominator.sroa.0.2.7, !dbg !242
  %output_acc.sroa.0.4.vec.extract1694 = extractelement <4 x float> %output_acc.sroa.0.15, i64 1, !dbg !241
  %div.1 = fdiv contract float %output_acc.sroa.0.4.vec.extract1694, %denominator.sroa.0.2.7, !dbg !242
  %output_acc.sroa.0.8.vec.extract1731 = extractelement <4 x float> %output_acc.sroa.0.15, i64 2, !dbg !241
  %div.2 = fdiv contract float %output_acc.sroa.0.8.vec.extract1731, %denominator.sroa.0.2.7, !dbg !242
  %output_acc.sroa.0.12.vec.extract1768 = extractelement <4 x float> %output_acc.sroa.0.15, i64 3, !dbg !241
  %div.3 = fdiv contract float %output_acc.sroa.0.12.vec.extract1768, %denominator.sroa.0.2.7, !dbg !242
  %output_acc.sroa.98.16.vec.extract1813 = extractelement <4 x float> %output_acc.sroa.98.15, i64 0, !dbg !241
  %div.4 = fdiv contract float %output_acc.sroa.98.16.vec.extract1813, %denominator.sroa.0.2.7, !dbg !242
  %output_acc.sroa.98.20.vec.extract1850 = extractelement <4 x float> %output_acc.sroa.98.15, i64 1, !dbg !241
  %div.5 = fdiv contract float %output_acc.sroa.98.20.vec.extract1850, %denominator.sroa.0.2.7, !dbg !242
  %output_acc.sroa.98.24.vec.extract1887 = extractelement <4 x float> %output_acc.sroa.98.15, i64 2, !dbg !241
  %div.6 = fdiv contract float %output_acc.sroa.98.24.vec.extract1887, %denominator.sroa.0.2.7, !dbg !242
  %output_acc.sroa.98.28.vec.extract1924 = extractelement <4 x float> %output_acc.sroa.98.15, i64 3, !dbg !241
  %div.7 = fdiv contract float %output_acc.sroa.98.28.vec.extract1924, %denominator.sroa.0.2.7, !dbg !242
  %output_acc.sroa.194.32.vec.extract1969 = extractelement <4 x float> %output_acc.sroa.194.15, i64 0, !dbg !241
  %div.8 = fdiv contract float %output_acc.sroa.194.32.vec.extract1969, %denominator.sroa.0.2.7, !dbg !242
  %output_acc.sroa.194.36.vec.extract2006 = extractelement <4 x float> %output_acc.sroa.194.15, i64 1, !dbg !241
  %div.9 = fdiv contract float %output_acc.sroa.194.36.vec.extract2006, %denominator.sroa.0.2.7, !dbg !242
  %output_acc.sroa.194.40.vec.extract2043 = extractelement <4 x float> %output_acc.sroa.194.15, i64 2, !dbg !241
  %div.10 = fdiv contract float %output_acc.sroa.194.40.vec.extract2043, %denominator.sroa.0.2.7, !dbg !242
  %output_acc.sroa.194.44.vec.extract2080 = extractelement <4 x float> %output_acc.sroa.194.15, i64 3, !dbg !241
  %div.11 = fdiv contract float %output_acc.sroa.194.44.vec.extract2080, %denominator.sroa.0.2.7, !dbg !242
  %output_acc.sroa.290.48.vec.extract2125 = extractelement <4 x float> %output_acc.sroa.290.15, i64 0, !dbg !241
  %div.12 = fdiv contract float %output_acc.sroa.290.48.vec.extract2125, %denominator.sroa.0.2.7, !dbg !242
  %output_acc.sroa.290.52.vec.extract2162 = extractelement <4 x float> %output_acc.sroa.290.15, i64 1, !dbg !241
  %div.13 = fdiv contract float %output_acc.sroa.290.52.vec.extract2162, %denominator.sroa.0.2.7, !dbg !242
  %output_acc.sroa.290.56.vec.extract2199 = extractelement <4 x float> %output_acc.sroa.290.15, i64 2, !dbg !241
  %div.14 = fdiv contract float %output_acc.sroa.290.56.vec.extract2199, %denominator.sroa.0.2.7, !dbg !242
  %output_acc.sroa.290.60.vec.extract2236 = extractelement <4 x float> %output_acc.sroa.290.15, i64 3, !dbg !241
  %div.15 = fdiv contract float %output_acc.sroa.290.60.vec.extract2236, %denominator.sroa.0.2.7, !dbg !242
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul14, !dbg !243
  %962 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !244, !noalias !248
  %963 = fptrunc float %div to half, !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %962), !dbg !244, !noalias !248
  %964 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !248
  %965 = fptrunc float %div.1 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %964), !dbg !253, !noalias !248
  %966 = bitcast half %963 to i16, !dbg !255
  %967 = bitcast half %965 to i16, !dbg !258
  %968 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !263
  %969 = fptrunc float %div.2 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %968), !dbg !259, !noalias !263
  %970 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !263
  %971 = fptrunc float %div.3 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %970), !dbg !268, !noalias !263
  %972 = bitcast half %969 to i16, !dbg !270
  %973 = bitcast half %971 to i16, !dbg !272
  %__2.sroa.6.0.insert.ext = zext i16 %973 to i64, !dbg !273
  %__2.sroa.6.0.insert.shift = shl nuw i64 %__2.sroa.6.0.insert.ext, 48, !dbg !273
  %__2.sroa.5.0.insert.ext = zext i16 %972 to i64, !dbg !273
  %__2.sroa.5.0.insert.shift = shl nuw nsw i64 %__2.sroa.5.0.insert.ext, 32, !dbg !273
  %__2.sroa.5.0.insert.insert = or disjoint i64 %__2.sroa.6.0.insert.shift, %__2.sroa.5.0.insert.shift, !dbg !273
  %__2.sroa.4.0.insert.ext = zext i16 %967 to i64, !dbg !273
  %__2.sroa.4.0.insert.shift = shl nuw nsw i64 %__2.sroa.4.0.insert.ext, 16, !dbg !273
  %__2.sroa.4.0.insert.insert = or disjoint i64 %__2.sroa.5.0.insert.insert, %__2.sroa.4.0.insert.shift, !dbg !273
  %__2.sroa.0.0.insert.ext = zext i16 %966 to i64, !dbg !273
  %__2.sroa.0.0.insert.insert = or disjoint i64 %__2.sroa.4.0.insert.insert, %__2.sroa.0.0.insert.ext, !dbg !273
  %gep618 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul9, !dbg !274
  store i64 %__2.sroa.0.0.insert.insert, ptr addrspace(3) %gep618, align 8, !dbg !275
  %974 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !244, !noalias !248
  %975 = fptrunc float %div.4 to half, !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %974), !dbg !244, !noalias !248
  %976 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !248
  %977 = fptrunc float %div.5 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %976), !dbg !253, !noalias !248
  %978 = bitcast half %975 to i16, !dbg !255
  %979 = bitcast half %977 to i16, !dbg !258
  %980 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !263
  %981 = fptrunc float %div.6 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %980), !dbg !259, !noalias !263
  %982 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !263
  %983 = fptrunc float %div.7 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %982), !dbg !268, !noalias !263
  %984 = bitcast half %981 to i16, !dbg !270
  %985 = bitcast half %983 to i16, !dbg !272
  %__2.sroa.6.0.insert.ext.1 = zext i16 %985 to i64, !dbg !273
  %__2.sroa.6.0.insert.shift.1 = shl nuw i64 %__2.sroa.6.0.insert.ext.1, 48, !dbg !273
  %__2.sroa.5.0.insert.ext.1 = zext i16 %984 to i64, !dbg !273
  %__2.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.1, 32, !dbg !273
  %__2.sroa.5.0.insert.insert.1 = or disjoint i64 %__2.sroa.6.0.insert.shift.1, %__2.sroa.5.0.insert.shift.1, !dbg !273
  %__2.sroa.4.0.insert.ext.1 = zext i16 %979 to i64, !dbg !273
  %__2.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.1, 16, !dbg !273
  %__2.sroa.4.0.insert.insert.1 = or disjoint i64 %__2.sroa.5.0.insert.insert.1, %__2.sroa.4.0.insert.shift.1, !dbg !273
  %__2.sroa.0.0.insert.ext.1 = zext i16 %978 to i64, !dbg !273
  %__2.sroa.0.0.insert.insert.1 = or disjoint i64 %__2.sroa.4.0.insert.insert.1, %__2.sroa.0.0.insert.ext.1, !dbg !273
  %986 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 32, !dbg !274
  %gep618.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %986, i32 %mul9, !dbg !274
  store i64 %__2.sroa.0.0.insert.insert.1, ptr addrspace(3) %gep618.1, align 8, !dbg !275
  %987 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !244, !noalias !248
  %988 = fptrunc float %div.8 to half, !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %987), !dbg !244, !noalias !248
  %989 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !248
  %990 = fptrunc float %div.9 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %989), !dbg !253, !noalias !248
  %991 = bitcast half %988 to i16, !dbg !255
  %992 = bitcast half %990 to i16, !dbg !258
  %993 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !263
  %994 = fptrunc float %div.10 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %993), !dbg !259, !noalias !263
  %995 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !263
  %996 = fptrunc float %div.11 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %995), !dbg !268, !noalias !263
  %997 = bitcast half %994 to i16, !dbg !270
  %998 = bitcast half %996 to i16, !dbg !272
  %__2.sroa.6.0.insert.ext.2 = zext i16 %998 to i64, !dbg !273
  %__2.sroa.6.0.insert.shift.2 = shl nuw i64 %__2.sroa.6.0.insert.ext.2, 48, !dbg !273
  %__2.sroa.5.0.insert.ext.2 = zext i16 %997 to i64, !dbg !273
  %__2.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.2, 32, !dbg !273
  %__2.sroa.5.0.insert.insert.2 = or disjoint i64 %__2.sroa.6.0.insert.shift.2, %__2.sroa.5.0.insert.shift.2, !dbg !273
  %__2.sroa.4.0.insert.ext.2 = zext i16 %992 to i64, !dbg !273
  %__2.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.2, 16, !dbg !273
  %__2.sroa.4.0.insert.insert.2 = or disjoint i64 %__2.sroa.5.0.insert.insert.2, %__2.sroa.4.0.insert.shift.2, !dbg !273
  %__2.sroa.0.0.insert.ext.2 = zext i16 %991 to i64, !dbg !273
  %__2.sroa.0.0.insert.insert.2 = or disjoint i64 %__2.sroa.4.0.insert.insert.2, %__2.sroa.0.0.insert.ext.2, !dbg !273
  %999 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 64, !dbg !274
  %gep618.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) %999, i32 %mul9, !dbg !274
  store i64 %__2.sroa.0.0.insert.insert.2, ptr addrspace(3) %gep618.2, align 8, !dbg !275
  %1000 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !244, !noalias !248
  %1001 = fptrunc float %div.12 to half, !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %1000), !dbg !244, !noalias !248
  %1002 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !248
  %1003 = fptrunc float %div.13 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %1002), !dbg !253, !noalias !248
  %1004 = bitcast half %1001 to i16, !dbg !255
  %1005 = bitcast half %1003 to i16, !dbg !258
  %1006 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !263
  %1007 = fptrunc float %div.14 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %1006), !dbg !259, !noalias !263
  %1008 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !263
  %1009 = fptrunc float %div.15 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %1008), !dbg !268, !noalias !263
  %1010 = bitcast half %1007 to i16, !dbg !270
  %1011 = bitcast half %1009 to i16, !dbg !272
  %__2.sroa.6.0.insert.ext.3 = zext i16 %1011 to i64, !dbg !273
  %__2.sroa.6.0.insert.shift.3 = shl nuw i64 %__2.sroa.6.0.insert.ext.3, 48, !dbg !273
  %__2.sroa.5.0.insert.ext.3 = zext i16 %1010 to i64, !dbg !273
  %__2.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.3, 32, !dbg !273
  %__2.sroa.5.0.insert.insert.3 = or disjoint i64 %__2.sroa.6.0.insert.shift.3, %__2.sroa.5.0.insert.shift.3, !dbg !273
  %__2.sroa.4.0.insert.ext.3 = zext i16 %1005 to i64, !dbg !273
  %__2.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.3, 16, !dbg !273
  %__2.sroa.4.0.insert.insert.3 = or disjoint i64 %__2.sroa.5.0.insert.insert.3, %__2.sroa.4.0.insert.shift.3, !dbg !273
  %__2.sroa.0.0.insert.ext.3 = zext i16 %1004 to i64, !dbg !273
  %__2.sroa.0.0.insert.insert.3 = or disjoint i64 %__2.sroa.4.0.insert.insert.3, %__2.sroa.0.0.insert.ext.3, !dbg !273
  %1012 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 96, !dbg !274
  %gep618.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) %1012, i32 %mul9, !dbg !274
  store i64 %__2.sroa.0.0.insert.insert.3, ptr addrspace(3) %gep618.3, align 8, !dbg !275
  fence syncscope("warp") release, !dbg !276
  tail call void @llvm.mxc.barrier.warp(), !dbg !279
  fence syncscope("warp") acquire, !dbg !280
  %invariant.gep620 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %12, !dbg !281
  %add449 = add nuw nsw i32 %add, %12
  %1013 = zext nneg i32 %add449 to i64, !dbg !282
  %add.ptr454 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %1013, !dbg !283
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr454, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep620, i64 16, i1 false), !dbg !284, !tbaa.struct !285, !call_argsrelate !286
  %gep621.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep620, i32 1024, !dbg !287
  %1014 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %1013, !dbg !283
  %add.ptr454.1 = getelementptr inbounds i8, ptr addrspace(1) %1014, i64 1024, !dbg !283
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr454.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep621.1, i64 16, i1 false), !dbg !284, !tbaa.struct !285, !call_argsrelate !286
  ret void, !dbg !288
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
attributes #3 = { convergent mustprogress norecurse nounwind willreturn "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-implicitarg-num-bytes"="80" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="64" "metaxgpu-min-blocks"="1" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" "uniform-work-group-size"="true" }
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v029_codex_power_multiblock_direct_v_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v029_codex_power_multiblock_direct_v_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 24, column: 3, scope: !40)
!44 = !DILocation(line: 25, column: 52, scope: !40)
!45 = !DILocation(line: 25, column: 38, scope: !40)
!46 = !DILocation(line: 34, column: 3, scope: !40)
!47 = !DILocation(line: 35, column: 24, scope: !40)
!48 = !DILocation(line: 35, column: 106, scope: !40)
!49 = !DILocation(line: 36, column: 12, scope: !40)
!50 = !DILocation(line: 36, column: 28, scope: !40)
!51 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !54)
!52 = distinct !DISubprogram(name: "__barrier_warp", scope: !53, file: !53, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!53 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!54 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !56)
!55 = distinct !DISubprogram(name: "__syncwarp", scope: !53, file: !53, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!56 = distinct !DILocation(line: 37, column: 7, scope: !40)
!57 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !54)
!58 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !54)
!59 = !DILocation(line: 39, column: 7, scope: !40)
!60 = !DILocation(line: 42, column: 71, scope: !40)
!61 = !DILocation(line: 42, column: 13, scope: !40)
!62 = !DILocation(line: 43, column: 19, scope: !40)
!63 = !DILocation(line: 44, column: 9, scope: !40)
!64 = !DILocation(line: 0, scope: !40)
!65 = !DILocation(line: 47, column: 98, scope: !40)
!66 = !DILocation(line: 47, column: 176, scope: !40)
!67 = !DILocation(line: 47, column: 261, scope: !40)
!68 = !DILocation(line: 47, column: 44, scope: !40)
!69 = !DILocation(line: 47, column: 339, scope: !40)
!70 = !DILocation(line: 47, column: 62, scope: !40)
!71 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !72)
!72 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !73)
!73 = distinct !DILocation(line: 49, column: 7, scope: !40)
!74 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !72)
!75 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !72)
!76 = !DILocation(line: 53, column: 168, scope: !40)
!77 = !DILocation(line: 53, column: 234, scope: !40)
!78 = !DILocation(line: 53, column: 241, scope: !40)
!79 = !DILocation(line: 53, column: 311, scope: !40)
!80 = !DILocation(line: 53, column: 69, scope: !40)
!81 = !DILocation(line: 53, column: 32, scope: !40)
!82 = !DILocation(line: 55, column: 37, scope: !40)
!83 = !{i32 -1, i32 3, i32 -1}
!84 = !DILocation(line: 63, column: 70, scope: !40)
!85 = !DILocation(line: 63, column: 13, scope: !40)
!86 = !DILocation(line: 63, column: 63, scope: !40)
!87 = !DILocation(line: 351, column: 10, scope: !88, inlinedAt: !90)
!88 = distinct !DISubprogram(name: "max", scope: !89, file: !89, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!89 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!90 = distinct !DILocation(line: 74, column: 24, scope: !40)
!91 = !DILocation(line: 1018, column: 9, scope: !92, inlinedAt: !93)
!92 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !53, file: !53, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!93 = distinct !DILocation(line: 338, column: 10, scope: !94, inlinedAt: !96)
!94 = distinct !DISubprogram(name: "shfl_xor_sync<float>", scope: !95, file: !95, line: 337, type: !7, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!95 = !DIFile(filename: "src/tl_templates/maca/common.h", directory: "/root/tilelang-metax")
!96 = distinct !DILocation(line: 95, column: 24, scope: !97, inlinedAt: !99)
!97 = distinct !DISubprogram(name: "run<float>", scope: !98, file: !98, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!98 = !DIFile(filename: "src/tl_templates/maca/reduce.h", directory: "/root/tilelang-metax")
!99 = distinct !DILocation(line: 76, column: 22, scope: !40)
!100 = !DILocation(line: 171, column: 37, scope: !101, inlinedAt: !102)
!101 = distinct !DISubprogram(name: "__lane_id", scope: !53, file: !53, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!102 = distinct !DILocation(line: 990, column: 14, scope: !103, inlinedAt: !104)
!103 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !53, file: !53, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!104 = distinct !DILocation(line: 1019, column: 11, scope: !92, inlinedAt: !93)
!105 = !DILocation(line: 171, column: 10, scope: !101, inlinedAt: !102)
!106 = !DILocation(line: 991, column: 20, scope: !103, inlinedAt: !104)
!107 = !DILocation(line: 992, column: 36, scope: !103, inlinedAt: !104)
!108 = !DILocation(line: 992, column: 17, scope: !103, inlinedAt: !104)
!109 = !DILocation(line: 992, column: 11, scope: !103, inlinedAt: !104)
!110 = !DILocation(line: 993, column: 43, scope: !103, inlinedAt: !104)
!111 = !DILocation(line: 993, column: 10, scope: !103, inlinedAt: !104)
!112 = !DILocation(line: 1020, column: 14, scope: !92, inlinedAt: !93)
!113 = !DILocation(line: 306, column: 10, scope: !114, inlinedAt: !115)
!114 = distinct !DISubprogram(name: "fmaxf", scope: !89, file: !89, line: 305, type: !7, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!115 = distinct !DILocation(line: 633, column: 10, scope: !116, inlinedAt: !118)
!116 = distinct !DISubprogram(name: "fast_max<float>", scope: !117, file: !117, line: 632, type: !7, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!117 = !DIFile(filename: "/opt/maca/include/mctlass/fast_math.h", directory: "")
!118 = distinct !DILocation(line: 31, column: 12, scope: !119, inlinedAt: !120)
!119 = distinct !DISubprogram(name: "operator()<float>", scope: !98, file: !98, line: 30, type: !7, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!120 = distinct !DILocation(line: 95, column: 11, scope: !97, inlinedAt: !99)
!121 = !DILocation(line: 1018, column: 9, scope: !92, inlinedAt: !122)
!122 = distinct !DILocation(line: 338, column: 10, scope: !94, inlinedAt: !123)
!123 = distinct !DILocation(line: 95, column: 24, scope: !124, inlinedAt: !125)
!124 = distinct !DISubprogram(name: "run<float>", scope: !98, file: !98, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!125 = distinct !DILocation(line: 100, column: 14, scope: !97, inlinedAt: !99)
!126 = !DILocation(line: 171, column: 37, scope: !101, inlinedAt: !127)
!127 = distinct !DILocation(line: 990, column: 14, scope: !103, inlinedAt: !128)
!128 = distinct !DILocation(line: 1019, column: 11, scope: !92, inlinedAt: !122)
!129 = !DILocation(line: 171, column: 10, scope: !101, inlinedAt: !127)
!130 = !DILocation(line: 991, column: 20, scope: !103, inlinedAt: !128)
!131 = !DILocation(line: 992, column: 36, scope: !103, inlinedAt: !128)
!132 = !DILocation(line: 992, column: 17, scope: !103, inlinedAt: !128)
!133 = !DILocation(line: 992, column: 11, scope: !103, inlinedAt: !128)
!134 = !DILocation(line: 993, column: 43, scope: !103, inlinedAt: !128)
!135 = !DILocation(line: 993, column: 10, scope: !103, inlinedAt: !128)
!136 = !DILocation(line: 1020, column: 14, scope: !92, inlinedAt: !122)
!137 = !DILocation(line: 306, column: 10, scope: !114, inlinedAt: !138)
!138 = distinct !DILocation(line: 633, column: 10, scope: !116, inlinedAt: !139)
!139 = distinct !DILocation(line: 31, column: 12, scope: !119, inlinedAt: !140)
!140 = distinct !DILocation(line: 95, column: 11, scope: !124, inlinedAt: !125)
!141 = !DILocation(line: 77, column: 54, scope: !40)
!142 = !DILocation(line: 77, column: 71, scope: !40)
!143 = !DILocation(line: 77, column: 37, scope: !40)
!144 = !DILocation(line: 77, column: 11, scope: !40)
!145 = !DILocation(line: 85, column: 44, scope: !40)
!146 = !DILocation(line: 85, column: 61, scope: !40)
!147 = !DILocation(line: 85, column: 102, scope: !40)
!148 = !DILocation(line: 285, column: 49, scope: !149, inlinedAt: !150)
!149 = distinct !DISubprogram(name: "exp2f", scope: !89, file: !89, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!150 = distinct !DILocation(line: 85, column: 23, scope: !40)
!151 = !DILocation(line: 90, column: 38, scope: !40)
!152 = !DILocation(line: 1018, column: 9, scope: !92, inlinedAt: !153)
!153 = distinct !DILocation(line: 338, column: 10, scope: !94, inlinedAt: !154)
!154 = distinct !DILocation(line: 95, column: 24, scope: !155, inlinedAt: !156)
!155 = distinct !DISubprogram(name: "run<float>", scope: !98, file: !98, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!156 = distinct !DILocation(line: 92, column: 22, scope: !40)
!157 = !DILocation(line: 171, column: 37, scope: !101, inlinedAt: !158)
!158 = distinct !DILocation(line: 990, column: 14, scope: !103, inlinedAt: !159)
!159 = distinct !DILocation(line: 1019, column: 11, scope: !92, inlinedAt: !153)
!160 = !DILocation(line: 171, column: 10, scope: !101, inlinedAt: !158)
!161 = !DILocation(line: 991, column: 20, scope: !103, inlinedAt: !159)
!162 = !DILocation(line: 992, column: 36, scope: !103, inlinedAt: !159)
!163 = !DILocation(line: 992, column: 17, scope: !103, inlinedAt: !159)
!164 = !DILocation(line: 992, column: 11, scope: !103, inlinedAt: !159)
!165 = !DILocation(line: 993, column: 43, scope: !103, inlinedAt: !159)
!166 = !DILocation(line: 993, column: 10, scope: !103, inlinedAt: !159)
!167 = !DILocation(line: 1020, column: 14, scope: !92, inlinedAt: !153)
!168 = !DILocation(line: 25, column: 14, scope: !169, inlinedAt: !170)
!169 = distinct !DISubprogram(name: "operator()<float>", scope: !98, file: !98, line: 24, type: !7, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!170 = distinct !DILocation(line: 95, column: 11, scope: !155, inlinedAt: !156)
!171 = !DILocation(line: 1018, column: 9, scope: !92, inlinedAt: !172)
!172 = distinct !DILocation(line: 338, column: 10, scope: !94, inlinedAt: !173)
!173 = distinct !DILocation(line: 95, column: 24, scope: !174, inlinedAt: !175)
!174 = distinct !DISubprogram(name: "run<float>", scope: !98, file: !98, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!175 = distinct !DILocation(line: 100, column: 14, scope: !155, inlinedAt: !156)
!176 = !DILocation(line: 171, column: 37, scope: !101, inlinedAt: !177)
!177 = distinct !DILocation(line: 990, column: 14, scope: !103, inlinedAt: !178)
!178 = distinct !DILocation(line: 1019, column: 11, scope: !92, inlinedAt: !172)
!179 = !DILocation(line: 171, column: 10, scope: !101, inlinedAt: !177)
!180 = !DILocation(line: 991, column: 20, scope: !103, inlinedAt: !178)
!181 = !DILocation(line: 992, column: 36, scope: !103, inlinedAt: !178)
!182 = !DILocation(line: 992, column: 17, scope: !103, inlinedAt: !178)
!183 = !DILocation(line: 992, column: 11, scope: !103, inlinedAt: !178)
!184 = !DILocation(line: 993, column: 43, scope: !103, inlinedAt: !178)
!185 = !DILocation(line: 993, column: 10, scope: !103, inlinedAt: !178)
!186 = !DILocation(line: 1020, column: 14, scope: !92, inlinedAt: !172)
!187 = !DILocation(line: 25, column: 14, scope: !169, inlinedAt: !188)
!188 = distinct !DILocation(line: 95, column: 11, scope: !174, inlinedAt: !175)
!189 = !DILocation(line: 93, column: 22, scope: !40)
!190 = !DILocation(line: 93, column: 11, scope: !40)
!191 = !DILocation(line: 96, column: 40, scope: !40)
!192 = !DILocation(line: 1007, column: 10, scope: !193, inlinedAt: !195)
!193 = distinct !DISubprogram(name: "__float2half_rn", scope: !194, file: !194, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!194 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!195 = distinct !DILocation(line: 1077, column: 18, scope: !196, inlinedAt: !197)
!196 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !194, file: !194, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!197 = distinct !DILocation(line: 1295, column: 23, scope: !198, inlinedAt: !199)
!198 = distinct !DISubprogram(name: "__float22half2_rn", scope: !194, file: !194, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!199 = distinct !DILocation(line: 99, column: 29, scope: !40)
!200 = !{!201, !203}
!201 = distinct !{!201, !202, !"_ZL17__floats2half2_rnff: %agg.result"}
!202 = distinct !{!202, !"_ZL17__floats2half2_rnff"}
!203 = distinct !{!203, !204, !"_ZL17__float22half2_rn6float2: %agg.result"}
!204 = distinct !{!204, !"_ZL17__float22half2_rn6float2"}
!205 = !DILocation(line: 1007, column: 10, scope: !193, inlinedAt: !206)
!206 = distinct !DILocation(line: 1077, column: 38, scope: !196, inlinedAt: !197)
!207 = !DILocation(line: 593, column: 26, scope: !208, inlinedAt: !209)
!208 = distinct !DISubprogram(name: "operator=", scope: !194, file: !194, line: 592, type: !7, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!209 = distinct !DILocation(line: 99, column: 27, scope: !40)
!210 = !DILocation(line: 1007, column: 10, scope: !193, inlinedAt: !211)
!211 = distinct !DILocation(line: 1077, column: 18, scope: !196, inlinedAt: !212)
!212 = distinct !DILocation(line: 1295, column: 23, scope: !198, inlinedAt: !213)
!213 = distinct !DILocation(line: 100, column: 29, scope: !40)
!214 = !{!215, !217}
!215 = distinct !{!215, !216, !"_ZL17__floats2half2_rnff: %agg.result"}
!216 = distinct !{!216, !"_ZL17__floats2half2_rnff"}
!217 = distinct !{!217, !218, !"_ZL17__float22half2_rn6float2: %agg.result"}
!218 = distinct !{!218, !"_ZL17__float22half2_rn6float2"}
!219 = !DILocation(line: 1007, column: 10, scope: !193, inlinedAt: !220)
!220 = distinct !DILocation(line: 1077, column: 38, scope: !196, inlinedAt: !212)
!221 = !DILocation(line: 593, column: 26, scope: !208, inlinedAt: !222)
!222 = distinct !DILocation(line: 100, column: 27, scope: !40)
!223 = !DILocation(line: 102, column: 11, scope: !40)
!224 = !DILocation(line: 112, column: 15, scope: !40)
!225 = !DILocation(line: 113, column: 25, scope: !40)
!226 = !DILocation(line: 113, column: 23, scope: !40)
!227 = !{!26, !26, i64 0}
!228 = !DILocation(line: 114, column: 11, scope: !40)
!229 = !DILocation(line: 117, column: 28, scope: !40)
!230 = !DILocation(line: 120, column: 52, scope: !40)
!231 = !DILocation(line: 34, column: 40, scope: !40)
!232 = !DILocation(line: 35, column: 93, scope: !40)
!233 = !DILocation(line: 105, column: 30, scope: !40)
!234 = !DILocation(line: 105, column: 46, scope: !40)
!235 = !DILocation(line: 105, column: 27, scope: !40)
!236 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !237)
!237 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !238)
!238 = distinct !DILocation(line: 127, column: 3, scope: !40)
!239 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !237)
!240 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !237)
!241 = !DILocation(line: 130, column: 24, scope: !40)
!242 = !DILocation(line: 130, column: 40, scope: !40)
!243 = !DILocation(line: 133, column: 3, scope: !40)
!244 = !DILocation(line: 1007, column: 10, scope: !193, inlinedAt: !245)
!245 = distinct !DILocation(line: 1077, column: 18, scope: !196, inlinedAt: !246)
!246 = distinct !DILocation(line: 1295, column: 23, scope: !198, inlinedAt: !247)
!247 = distinct !DILocation(line: 136, column: 27, scope: !40)
!248 = !{!249, !251}
!249 = distinct !{!249, !250, !"_ZL17__floats2half2_rnff: %agg.result"}
!250 = distinct !{!250, !"_ZL17__floats2half2_rnff"}
!251 = distinct !{!251, !252, !"_ZL17__float22half2_rn6float2: %agg.result"}
!252 = distinct !{!252, !"_ZL17__float22half2_rn6float2"}
!253 = !DILocation(line: 1007, column: 10, scope: !193, inlinedAt: !254)
!254 = distinct !DILocation(line: 1077, column: 38, scope: !196, inlinedAt: !246)
!255 = !DILocation(line: 596, column: 67, scope: !256, inlinedAt: !257)
!256 = distinct !DISubprogram(name: "__half2", scope: !194, file: !194, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!257 = distinct !DILocation(line: 1077, column: 10, scope: !196, inlinedAt: !246)
!258 = !DILocation(line: 596, column: 73, scope: !256, inlinedAt: !257)
!259 = !DILocation(line: 1007, column: 10, scope: !193, inlinedAt: !260)
!260 = distinct !DILocation(line: 1077, column: 18, scope: !196, inlinedAt: !261)
!261 = distinct !DILocation(line: 1295, column: 23, scope: !198, inlinedAt: !262)
!262 = distinct !DILocation(line: 137, column: 27, scope: !40)
!263 = !{!264, !266}
!264 = distinct !{!264, !265, !"_ZL17__floats2half2_rnff: %agg.result"}
!265 = distinct !{!265, !"_ZL17__floats2half2_rnff"}
!266 = distinct !{!266, !267, !"_ZL17__float22half2_rn6float2: %agg.result"}
!267 = distinct !{!267, !"_ZL17__float22half2_rn6float2"}
!268 = !DILocation(line: 1007, column: 10, scope: !193, inlinedAt: !269)
!269 = distinct !DILocation(line: 1077, column: 38, scope: !196, inlinedAt: !261)
!270 = !DILocation(line: 596, column: 67, scope: !256, inlinedAt: !271)
!271 = distinct !DILocation(line: 1077, column: 10, scope: !196, inlinedAt: !261)
!272 = !DILocation(line: 596, column: 73, scope: !256, inlinedAt: !271)
!273 = !DILocation(line: 138, column: 45, scope: !40)
!274 = !DILocation(line: 139, column: 40, scope: !40)
!275 = !DILocation(line: 139, column: 127, scope: !40)
!276 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !277)
!277 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !278)
!278 = distinct !DILocation(line: 141, column: 3, scope: !40)
!279 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !277)
!280 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !277)
!281 = !DILocation(line: 143, column: 8, scope: !40)
!282 = !DILocation(line: 143, column: 3, scope: !40)
!283 = !DILocation(line: 144, column: 22, scope: !40)
!284 = !DILocation(line: 144, column: 131, scope: !40)
!285 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!286 = !{i32 2, i32 -1, i32 -1, i32 -1}
!287 = !DILocation(line: 144, column: 168, scope: !40)
!288 = !DILocation(line: 146, column: 1, scope: !40)
