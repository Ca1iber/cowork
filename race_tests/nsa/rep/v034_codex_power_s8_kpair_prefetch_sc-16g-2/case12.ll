; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v034_codex_power_s8_kpair_prefetch_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v034_codex_power_s8_kpair_prefetch_sc-16g-2/codegen/case12.device.cpp"
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

; Function Attrs: convergent mustprogress norecurse nounwind
define protected metaxgpu_kernel void @native_sparse_attention_kernel(ptr addrspace(1) noalias nocapture noundef readonly %BlockIndices.coerce, ptr addrspace(4) noalias nocapture noundef readonly %K.coerce, ptr addrspace(1) noalias nocapture noundef writeonly %Output.coerce, ptr addrspace(4) noalias nocapture noundef readonly %Q.coerce, ptr addrspace(4) noalias nocapture noundef readonly %V.coerce) local_unnamed_addr #3 !dbg !40 {
entry:
  %0 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.y(), !range !29
  %mul = shl nsw i32 %0, 20
  %1 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !range !29
  %mul7 = shl nsw i32 %1, 10
  %add = add nuw nsw i32 %mul, %mul7
  %2 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !42
  %mul11 = shl nuw nsw i32 %2, 3
  %add9 = add nuw nsw i32 %add, %mul11
  %mul15 = and i32 %mul11, 8128
  %add21756 = and i32 %mul11, 32
  %shr18757 = add nuw nsw i32 %add21756, %2
  %mul23 = and i32 %shr18757, 32
  %add31758 = and i32 %mul11, 16
  %and26759 = add nuw nsw i32 %add31758, %2
  %mul33 = and i32 %and26759, 16
  %and36761 = mul nuw nsw i32 %2, 9
  %mul42 = and i32 %and36761, 8
  %3 = zext nneg i32 %add9 to i64, !dbg !43
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %3, !dbg !44
  %4 = or disjoint i32 %mul15, %mul23, !dbg !45
  %5 = or disjoint i32 %4, %mul33, !dbg !46
  %6 = or disjoint i32 %5, %mul42, !dbg !47
  %add.ptr45 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %6, !dbg !48
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr45, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr, i64 16, i1 false), !dbg !49, !tbaa.struct !50, !call_argsrelate !51
  %7 = add nuw nsw i64 %3, 512, !dbg !52
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !44
  %narrow = add nuw nsw i32 %mul15, 512, !dbg !53
  %8 = or disjoint i32 %narrow, %mul23, !dbg !45
  %9 = or disjoint i32 %8, %mul33, !dbg !46
  %10 = or disjoint i32 %9, %mul42, !dbg !47
  %add.ptr45.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %10, !dbg !48
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr45.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr.1, i64 16, i1 false), !dbg !49, !tbaa.struct !50, !call_argsrelate !51
  fence syncscope("warp") release, !dbg !54
  tail call void @llvm.mxc.barrier.warp(), !dbg !60
  fence syncscope("warp") acquire, !dbg !61
  %and52 = shl nuw nsw i32 %2, 6
  %mul53 = and i32 %and52, 960
  %and55 = lshr i32 %2, 2
  %and63 = lshr i32 %2, 1
  %shr71 = lshr i32 %2, 5
  %add74 = add nuw nsw i32 %shr71, %2
  %and75 = shl nuw nsw i32 %add74, 3
  %mul76 = and i32 %and75, 8
  %mul81 = and i32 %and55, 4
  %11 = or disjoint i32 %mul53, %mul76
  %add69 = or disjoint i32 %11, %mul81
  %and59 = shl nuw nsw i32 %and55, 5, !dbg !62
  %mul60 = and i32 %and59, 32, !dbg !62
  %and67 = shl nuw nsw i32 %and63, 4, !dbg !63
  %mul68 = and i32 %and67, 16, !dbg !63
  %add77 = or disjoint i32 %add69, %mul68, !dbg !64
  %add82 = or disjoint i32 %add77, %mul60, !dbg !65
  %add.ptr84 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add82, !dbg !66
  %12 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !67
  %add66.1 = shl nuw nsw i32 %and63, 4, !dbg !63
  %13 = and i32 %add66.1, 16, !dbg !63
  %mul68.1 = xor i32 %13, 16, !dbg !63
  %add77.1 = or disjoint i32 %add69, %mul68.1, !dbg !64
  %add82.1 = or disjoint i32 %add77.1, %mul60, !dbg !65
  %add.ptr84.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add82.1, !dbg !66
  %14 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !67
  %add58.2 = shl nuw nsw i32 %and55, 5, !dbg !62
  %15 = and i32 %add58.2, 32, !dbg !62
  %mul60.2 = xor i32 %15, 32, !dbg !62
  %add66.2 = shl nuw nsw i32 %and63, 4, !dbg !63
  %mul68.2 = and i32 %add66.2, 16, !dbg !63
  %add77.2 = or disjoint i32 %add69, %mul68.2, !dbg !64
  %add82.2 = or disjoint i32 %add77.2, %mul60.2, !dbg !65
  %add.ptr84.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add82.2, !dbg !66
  %16 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !67
  %add66.3 = shl nuw nsw i32 %and63, 4, !dbg !63
  %17 = and i32 %add66.3, 16, !dbg !63
  %18 = or disjoint i32 %17, %add69, !dbg !64
  %19 = or disjoint i32 %18, %mul60.2, !dbg !65
  %add82.3 = xor i32 %19, 16, !dbg !65
  %add.ptr84.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add82.3, !dbg !66
  %20 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !67
  %mul112 = shl nsw i32 %0, 13
  %mul114 = shl nsw i32 %1, 3
  %add115 = add nuw nsw i32 %mul112, %mul114
  %shr127 = lshr i32 %2, 3
  %conv = zext nneg i32 %0 to i64
  %mul134 = shl nuw nsw i64 %conv, 16
  %mul143 = zext nneg i32 %mul11 to i64
  %invariant.gep853 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul143, !dbg !68
  %mul283 = and i32 %and55, 252
  %shr417 = lshr i32 %2, 4
  %21 = shl nuw nsw i32 %2, 4
  %22 = and i32 %21, 16128
  %23 = shl nuw nsw i32 %2, 2
  %24 = and i32 %23, 60
  %25 = or disjoint i32 %22, %24
  %26 = zext nneg i32 %25 to i64
  %add433 = or disjoint i64 %mul134, %26
  %mul486 = and i32 %21, 240
  %shr492 = and i32 %and55, 3
  %xor = xor i32 %shr492, %shr417
  %and507 = shl nuw nsw i32 %2, 8
  %mul508 = and i32 %and507, 768
  %mul514 = and i32 %23, 48
  %and520 = and i32 %2, 3
  %27 = xor i32 %shr417, %and520
  %28 = zext nneg i32 %add115 to i64, !dbg !68
  %invariant.gep1169 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %28, !dbg !68
  %condval.sroa.5.0.add.ptr200.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4
  %condval.sroa.6.0.add.ptr200.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8
  %condval.sroa.7.0.add.ptr200.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12
  %add137.1 = or disjoint i64 %mul134, 512
  %condval.sroa.5.0.add.ptr200.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4
  %condval.sroa.6.0.add.ptr200.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8
  %condval.sroa.7.0.add.ptr200.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12
  %add240 = or disjoint i32 %add69, %mul60
  %add245 = or disjoint i32 %add240, %mul68
  %add.ptr247 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add245
  %add245.1 = or disjoint i32 %add240, %mul68.1
  %add.ptr247.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add245.1
  %add240.1 = or disjoint i32 %add69, %mul60.2
  %add245.1878 = or disjoint i32 %add240.1, %mul68
  %add.ptr247.1879 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add245.1878
  %add245.1.1 = or disjoint i32 %add240.1, %mul68.1
  %add.ptr247.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add245.1.1
  %29 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add433
  %30 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add433
  %31 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add433
  %32 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add433
  %33 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul486
  %.idx825 = shl nuw nsw i32 %xor, 3
  %34 = getelementptr inbounds i8, ptr addrspace(3) %33, i32 %.idx825
  %add.ptr498 = getelementptr inbounds i8, ptr addrspace(3) %34, i32 2048
  %add487.1 = or disjoint i32 %mul486, 256
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add487.1
  %xor493.1 = shl nuw nsw i32 %xor, 3
  %.idx825.1 = xor i32 %xor493.1, 8
  %36 = getelementptr inbounds i8, ptr addrspace(3) %35, i32 %.idx825.1
  %add.ptr498.1 = getelementptr inbounds i8, ptr addrspace(3) %36, i32 2048
  %add487.2 = or disjoint i32 %mul486, 512
  %37 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add487.2
  %xor493.2 = shl nuw nsw i32 %xor, 3
  %.idx825.2 = xor i32 %xor493.2, 16
  %38 = getelementptr inbounds i8, ptr addrspace(3) %37, i32 %.idx825.2
  %add.ptr498.2 = getelementptr inbounds i8, ptr addrspace(3) %38, i32 2048
  %add487.3 = or disjoint i32 %mul486, 768
  %39 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add487.3
  %xor493.3 = shl nuw nsw i32 %xor, 3
  %.idx825.3 = xor i32 %xor493.3, 24
  %40 = getelementptr inbounds i8, ptr addrspace(3) %39, i32 %.idx825.3
  %add.ptr498.3 = getelementptr inbounds i8, ptr addrspace(3) %40, i32 2048
  %add515 = or disjoint i32 %mul508, %mul514
  %41 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add515
  %.idx824 = shl nuw nsw i32 %27, 3
  %42 = getelementptr inbounds i8, ptr addrspace(3) %41, i32 %.idx824
  %add.ptr526 = getelementptr inbounds i8, ptr addrspace(3) %42, i32 2048
  %add510.1 = or disjoint i32 %mul508, %mul514
  %add515.1 = or disjoint i32 %add510.1, 64
  %43 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add515.1
  %xor521.1 = shl nuw nsw i32 %27, 3
  %.idx824.1 = xor i32 %xor521.1, 8
  %44 = getelementptr inbounds i8, ptr addrspace(3) %43, i32 %.idx824.1
  %add.ptr526.1 = getelementptr inbounds i8, ptr addrspace(3) %44, i32 2048
  %add510.2 = or disjoint i32 %mul508, %mul514
  %add515.2 = or disjoint i32 %add510.2, 128
  %45 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add515.2
  %xor521.2 = shl nuw nsw i32 %27, 3
  %.idx824.2 = xor i32 %xor521.2, 16
  %46 = getelementptr inbounds i8, ptr addrspace(3) %45, i32 %.idx824.2
  %add.ptr526.2 = getelementptr inbounds i8, ptr addrspace(3) %46, i32 2048
  %add510.3 = or disjoint i32 %mul508, %mul514
  %add515.3 = or disjoint i32 %add510.3, 192
  %47 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add515.3
  %xor521.3 = shl nuw nsw i32 %27, 3
  %.idx824.3 = xor i32 %xor521.3, 24
  %48 = getelementptr inbounds i8, ptr addrspace(3) %47, i32 %.idx824.3
  %add.ptr526.3 = getelementptr inbounds i8, ptr addrspace(3) %48, i32 2048
  br label %for.body110, !dbg !68

for.cond.cleanup108:                              ; preds = %if.end552
  fence syncscope("warp") release, !dbg !69
  tail call void @llvm.mxc.barrier.warp(), !dbg !72
  fence syncscope("warp") acquire, !dbg !73
  %output_acc.sroa.0.0.vec.extract1021 = extractelement <4 x float> %output_acc.sroa.0.2, i64 0, !dbg !74
  %div = fdiv contract float %output_acc.sroa.0.0.vec.extract1021, %denominator.sroa.0.2, !dbg !75
  %output_acc.sroa.0.4.vec.extract1030 = extractelement <4 x float> %output_acc.sroa.0.2, i64 1, !dbg !74
  %div.1 = fdiv contract float %output_acc.sroa.0.4.vec.extract1030, %denominator.sroa.0.2, !dbg !75
  %output_acc.sroa.0.8.vec.extract1039 = extractelement <4 x float> %output_acc.sroa.0.2, i64 2, !dbg !74
  %div.2 = fdiv contract float %output_acc.sroa.0.8.vec.extract1039, %denominator.sroa.0.2, !dbg !75
  %output_acc.sroa.0.12.vec.extract1048 = extractelement <4 x float> %output_acc.sroa.0.2, i64 3, !dbg !74
  %div.3 = fdiv contract float %output_acc.sroa.0.12.vec.extract1048, %denominator.sroa.0.2, !dbg !75
  %output_acc.sroa.28.16.vec.extract1058 = extractelement <4 x float> %output_acc.sroa.28.2, i64 0, !dbg !74
  %div.4 = fdiv contract float %output_acc.sroa.28.16.vec.extract1058, %denominator.sroa.0.2, !dbg !75
  %output_acc.sroa.28.20.vec.extract1067 = extractelement <4 x float> %output_acc.sroa.28.2, i64 1, !dbg !74
  %div.5 = fdiv contract float %output_acc.sroa.28.20.vec.extract1067, %denominator.sroa.0.2, !dbg !75
  %output_acc.sroa.28.24.vec.extract1076 = extractelement <4 x float> %output_acc.sroa.28.2, i64 2, !dbg !74
  %div.6 = fdiv contract float %output_acc.sroa.28.24.vec.extract1076, %denominator.sroa.0.2, !dbg !75
  %output_acc.sroa.28.28.vec.extract1085 = extractelement <4 x float> %output_acc.sroa.28.2, i64 3, !dbg !74
  %div.7 = fdiv contract float %output_acc.sroa.28.28.vec.extract1085, %denominator.sroa.0.2, !dbg !75
  %output_acc.sroa.54.32.vec.extract1095 = extractelement <4 x float> %output_acc.sroa.54.2, i64 0, !dbg !74
  %div.8 = fdiv contract float %output_acc.sroa.54.32.vec.extract1095, %denominator.sroa.0.2, !dbg !75
  %output_acc.sroa.54.36.vec.extract1104 = extractelement <4 x float> %output_acc.sroa.54.2, i64 1, !dbg !74
  %div.9 = fdiv contract float %output_acc.sroa.54.36.vec.extract1104, %denominator.sroa.0.2, !dbg !75
  %output_acc.sroa.54.40.vec.extract1113 = extractelement <4 x float> %output_acc.sroa.54.2, i64 2, !dbg !74
  %div.10 = fdiv contract float %output_acc.sroa.54.40.vec.extract1113, %denominator.sroa.0.2, !dbg !75
  %output_acc.sroa.54.44.vec.extract1122 = extractelement <4 x float> %output_acc.sroa.54.2, i64 3, !dbg !74
  %div.11 = fdiv contract float %output_acc.sroa.54.44.vec.extract1122, %denominator.sroa.0.2, !dbg !75
  %output_acc.sroa.80.48.vec.extract1132 = extractelement <4 x float> %output_acc.sroa.80.2, i64 0, !dbg !74
  %div.12 = fdiv contract float %output_acc.sroa.80.48.vec.extract1132, %denominator.sroa.0.2, !dbg !75
  %output_acc.sroa.80.52.vec.extract1141 = extractelement <4 x float> %output_acc.sroa.80.2, i64 1, !dbg !74
  %div.13 = fdiv contract float %output_acc.sroa.80.52.vec.extract1141, %denominator.sroa.0.2, !dbg !75
  %output_acc.sroa.80.56.vec.extract1150 = extractelement <4 x float> %output_acc.sroa.80.2, i64 2, !dbg !74
  %div.14 = fdiv contract float %output_acc.sroa.80.56.vec.extract1150, %denominator.sroa.0.2, !dbg !75
  %output_acc.sroa.80.60.vec.extract1159 = extractelement <4 x float> %output_acc.sroa.80.2, i64 3, !dbg !74
  %div.15 = fdiv contract float %output_acc.sroa.80.60.vec.extract1159, %denominator.sroa.0.2, !dbg !75
  %and598 = and i32 %2, 7
  %49 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !76, !noalias !84
  %50 = fptrunc float %div to half, !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %49), !dbg !76, !noalias !84
  %51 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !89
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !89, !noalias !84
  %52 = fptrunc float %div.1 to half, !dbg !89
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %51), !dbg !89, !noalias !84
  %53 = bitcast half %50 to i16, !dbg !91
  %54 = bitcast half %52 to i16, !dbg !94
  %55 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !95
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !95, !noalias !99
  %56 = fptrunc float %div.2 to half, !dbg !95
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %55), !dbg !95, !noalias !99
  %57 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !104
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !104, !noalias !99
  %58 = fptrunc float %div.3 to half, !dbg !104
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %57), !dbg !104, !noalias !99
  %59 = bitcast half %56 to i16, !dbg !106
  %60 = bitcast half %58 to i16, !dbg !108
  %__2.sroa.6.0.insert.ext = zext i16 %60 to i64, !dbg !109
  %__2.sroa.6.0.insert.shift = shl nuw i64 %__2.sroa.6.0.insert.ext, 48, !dbg !109
  %__2.sroa.5.0.insert.ext = zext i16 %59 to i64, !dbg !109
  %__2.sroa.5.0.insert.shift = shl nuw nsw i64 %__2.sroa.5.0.insert.ext, 32, !dbg !109
  %__2.sroa.5.0.insert.insert = or disjoint i64 %__2.sroa.6.0.insert.shift, %__2.sroa.5.0.insert.shift, !dbg !109
  %__2.sroa.4.0.insert.ext = zext i16 %54 to i64, !dbg !109
  %__2.sroa.4.0.insert.shift = shl nuw nsw i64 %__2.sroa.4.0.insert.ext, 16, !dbg !109
  %__2.sroa.4.0.insert.insert = or disjoint i64 %__2.sroa.5.0.insert.insert, %__2.sroa.4.0.insert.shift, !dbg !109
  %__2.sroa.0.0.insert.ext = zext i16 %53 to i64, !dbg !109
  %__2.sroa.0.0.insert.insert = or disjoint i64 %__2.sroa.4.0.insert.insert, %__2.sroa.0.0.insert.ext, !dbg !109
  %xor599 = xor i32 %shr71, %and598, !dbg !110
  %mul600 = shl nuw nsw i32 %xor599, 3, !dbg !111
  %add601 = add nuw nsw i32 %mul600, %mul53, !dbg !112
  %add606 = or disjoint i32 %add601, %mul81, !dbg !113
  %add.ptr608 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add606, !dbg !114
  store i64 %__2.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr608, align 8, !dbg !115
  %61 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !76, !noalias !84
  %62 = fptrunc float %div.4 to half, !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %61), !dbg !76, !noalias !84
  %63 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !89
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !89, !noalias !84
  %64 = fptrunc float %div.5 to half, !dbg !89
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %63), !dbg !89, !noalias !84
  %65 = bitcast half %62 to i16, !dbg !91
  %66 = bitcast half %64 to i16, !dbg !94
  %67 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !95
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !95, !noalias !99
  %68 = fptrunc float %div.6 to half, !dbg !95
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %67), !dbg !95, !noalias !99
  %69 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !104
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !104, !noalias !99
  %70 = fptrunc float %div.7 to half, !dbg !104
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %69), !dbg !104, !noalias !99
  %71 = bitcast half %68 to i16, !dbg !106
  %72 = bitcast half %70 to i16, !dbg !108
  %__2.sroa.6.0.insert.ext.1 = zext i16 %72 to i64, !dbg !109
  %__2.sroa.6.0.insert.shift.1 = shl nuw i64 %__2.sroa.6.0.insert.ext.1, 48, !dbg !109
  %__2.sroa.5.0.insert.ext.1 = zext i16 %71 to i64, !dbg !109
  %__2.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.1, 32, !dbg !109
  %__2.sroa.5.0.insert.insert.1 = or disjoint i64 %__2.sroa.6.0.insert.shift.1, %__2.sroa.5.0.insert.shift.1, !dbg !109
  %__2.sroa.4.0.insert.ext.1 = zext i16 %66 to i64, !dbg !109
  %__2.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.1, 16, !dbg !109
  %__2.sroa.4.0.insert.insert.1 = or disjoint i64 %__2.sroa.5.0.insert.insert.1, %__2.sroa.4.0.insert.shift.1, !dbg !109
  %__2.sroa.0.0.insert.ext.1 = zext i16 %65 to i64, !dbg !109
  %__2.sroa.0.0.insert.insert.1 = or disjoint i64 %__2.sroa.4.0.insert.insert.1, %__2.sroa.0.0.insert.ext.1, !dbg !109
  %add596.1 = add nuw nsw i32 %shr71, 2, !dbg !116
  %xor599.1 = xor i32 %add596.1, %and598, !dbg !110
  %mul600.1 = shl nuw nsw i32 %xor599.1, 3, !dbg !111
  %add601.1 = add nuw nsw i32 %mul600.1, %mul53, !dbg !112
  %add606.1 = or disjoint i32 %add601.1, %mul81, !dbg !113
  %add.ptr608.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add606.1, !dbg !114
  store i64 %__2.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr608.1, align 8, !dbg !115
  %73 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !76, !noalias !84
  %74 = fptrunc float %div.8 to half, !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %73), !dbg !76, !noalias !84
  %75 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !89
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !89, !noalias !84
  %76 = fptrunc float %div.9 to half, !dbg !89
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %75), !dbg !89, !noalias !84
  %77 = bitcast half %74 to i16, !dbg !91
  %78 = bitcast half %76 to i16, !dbg !94
  %79 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !95
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !95, !noalias !99
  %80 = fptrunc float %div.10 to half, !dbg !95
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %79), !dbg !95, !noalias !99
  %81 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !104
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !104, !noalias !99
  %82 = fptrunc float %div.11 to half, !dbg !104
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %81), !dbg !104, !noalias !99
  %83 = bitcast half %80 to i16, !dbg !106
  %84 = bitcast half %82 to i16, !dbg !108
  %__2.sroa.6.0.insert.ext.2 = zext i16 %84 to i64, !dbg !109
  %__2.sroa.6.0.insert.shift.2 = shl nuw i64 %__2.sroa.6.0.insert.ext.2, 48, !dbg !109
  %__2.sroa.5.0.insert.ext.2 = zext i16 %83 to i64, !dbg !109
  %__2.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.2, 32, !dbg !109
  %__2.sroa.5.0.insert.insert.2 = or disjoint i64 %__2.sroa.6.0.insert.shift.2, %__2.sroa.5.0.insert.shift.2, !dbg !109
  %__2.sroa.4.0.insert.ext.2 = zext i16 %78 to i64, !dbg !109
  %__2.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.2, 16, !dbg !109
  %__2.sroa.4.0.insert.insert.2 = or disjoint i64 %__2.sroa.5.0.insert.insert.2, %__2.sroa.4.0.insert.shift.2, !dbg !109
  %__2.sroa.0.0.insert.ext.2 = zext i16 %77 to i64, !dbg !109
  %__2.sroa.0.0.insert.insert.2 = or disjoint i64 %__2.sroa.4.0.insert.insert.2, %__2.sroa.0.0.insert.ext.2, !dbg !109
  %add596.2 = add nuw nsw i32 %shr71, 4, !dbg !116
  %xor599.2 = xor i32 %add596.2, %and598, !dbg !110
  %mul600.2 = shl nuw nsw i32 %xor599.2, 3, !dbg !111
  %add601.2 = add nuw nsw i32 %mul600.2, %mul53, !dbg !112
  %add606.2 = or disjoint i32 %add601.2, %mul81, !dbg !113
  %add.ptr608.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add606.2, !dbg !114
  store i64 %__2.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr608.2, align 8, !dbg !115
  %85 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !76, !noalias !84
  %86 = fptrunc float %div.12 to half, !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %85), !dbg !76, !noalias !84
  %87 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !89
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !89, !noalias !84
  %88 = fptrunc float %div.13 to half, !dbg !89
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %87), !dbg !89, !noalias !84
  %89 = bitcast half %86 to i16, !dbg !91
  %90 = bitcast half %88 to i16, !dbg !94
  %91 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !95
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !95, !noalias !99
  %92 = fptrunc float %div.14 to half, !dbg !95
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %91), !dbg !95, !noalias !99
  %93 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !104
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !104, !noalias !99
  %94 = fptrunc float %div.15 to half, !dbg !104
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %93), !dbg !104, !noalias !99
  %95 = bitcast half %92 to i16, !dbg !106
  %96 = bitcast half %94 to i16, !dbg !108
  %__2.sroa.6.0.insert.ext.3 = zext i16 %96 to i64, !dbg !109
  %__2.sroa.6.0.insert.shift.3 = shl nuw i64 %__2.sroa.6.0.insert.ext.3, 48, !dbg !109
  %__2.sroa.5.0.insert.ext.3 = zext i16 %95 to i64, !dbg !109
  %__2.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.3, 32, !dbg !109
  %__2.sroa.5.0.insert.insert.3 = or disjoint i64 %__2.sroa.6.0.insert.shift.3, %__2.sroa.5.0.insert.shift.3, !dbg !109
  %__2.sroa.4.0.insert.ext.3 = zext i16 %90 to i64, !dbg !109
  %__2.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.3, 16, !dbg !109
  %__2.sroa.4.0.insert.insert.3 = or disjoint i64 %__2.sroa.5.0.insert.insert.3, %__2.sroa.4.0.insert.shift.3, !dbg !109
  %__2.sroa.0.0.insert.ext.3 = zext i16 %89 to i64, !dbg !109
  %__2.sroa.0.0.insert.insert.3 = or disjoint i64 %__2.sroa.4.0.insert.insert.3, %__2.sroa.0.0.insert.ext.3, !dbg !109
  %add596.3 = add nuw nsw i32 %shr71, 6, !dbg !116
  %xor599.3 = xor i32 %add596.3, %and598, !dbg !110
  %mul600.3 = shl nuw nsw i32 %xor599.3, 3, !dbg !111
  %add601.3 = add nuw nsw i32 %mul600.3, %mul53, !dbg !112
  %add606.3 = or disjoint i32 %add601.3, %mul81, !dbg !113
  %add.ptr608.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add606.3, !dbg !114
  store i64 %__2.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr608.3, align 8, !dbg !115
  fence syncscope("warp") release, !dbg !117
  tail call void @llvm.mxc.barrier.warp(), !dbg !120
  fence syncscope("warp") acquire, !dbg !121
  %xor625748 = and i32 %mul11, 56
  %call623.masked = and i32 %2, 1016
  %mul626 = xor i32 %xor625748, %call623.masked
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul15, !dbg !122
  %invariant.gep857 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul626, !dbg !122
  %add.ptr641 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !123
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr641, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep857, i64 16, i1 false), !dbg !124, !tbaa.struct !50, !call_argsrelate !125
  %gep858.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep857, i32 1024, !dbg !126
  %add.ptr641.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %7, !dbg !123
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr641.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep858.1, i64 16, i1 false), !dbg !124, !tbaa.struct !50, !call_argsrelate !125
  ret void, !dbg !127

for.body110:                                      ; preds = %entry, %if.end552
  %output_acc.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.0.2, %if.end552 ], !dbg !128
  %output_acc.sroa.28.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.28.2, %if.end552 ], !dbg !128
  %output_acc.sroa.54.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.54.2, %if.end552 ], !dbg !128
  %output_acc.sroa.80.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.80.2, %if.end552 ], !dbg !128
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end552 ]
  %denominator.sroa.0.0852 = phi float [ 0.000000e+00, %entry ], [ %denominator.sroa.0.2, %if.end552 ]
  %normalizer.sroa.0.0851 = phi float [ 0xFFF0000000000000, %entry ], [ %normalizer.sroa.0.2, %if.end552 ]
  %gep1170 = getelementptr inbounds i32, ptr addrspace(1) %invariant.gep1169, i64 %indvars.iv, !dbg !129
  %97 = load i32, ptr addrspace(1) %gep1170, align 4, !dbg !129, !tbaa !30
  %mul118 = shl nsw i32 %97, 4, !dbg !130
  %cmp119 = icmp slt i32 %97, 0, !dbg !131
  %cmp121.not = icmp sgt i32 %mul118, %1
  %or.cond = select i1 %cmp119, i1 true, i1 %cmp121.not, !dbg !132
  br i1 %or.cond, label %if.end552, label %if.then, !dbg !132

if.then:                                          ; preds = %for.body110
  fence syncscope("warp") release, !dbg !133
  tail call void @llvm.mxc.barrier.warp(), !dbg !136
  fence syncscope("warp") acquire, !dbg !137
  %add128 = add nuw nsw i32 %mul118, %shr127
  %conv138 = zext nneg i32 %mul118 to i64
  %.idx = shl nuw nsw i64 %conv138, 7
  %gep = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep853, i64 %.idx, !dbg !138
  %cmp131 = icmp ult i32 %add128, 1024, !dbg !139
  br i1 %cmp131, label %if.then132, label %if.end, !dbg !140

if.then132:                                       ; preds = %if.then
  %gep831 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %mul134
  %condval.sroa.7.0.add.ptr145.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep831, i64 12
  %condval.sroa.6.0.add.ptr145.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep831, i64 8
  %condval.sroa.5.0.add.ptr145.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep831, i64 4
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep831, align 16, !dbg !141, !tbaa !30
  %condval.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr145.sroa_idx, align 4, !dbg !141, !tbaa !30
  %condval.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr145.sroa_idx, align 8, !dbg !141, !tbaa !30
  %condval.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr145.sroa_idx, align 4, !dbg !141, !tbaa !30
  br label %if.end, !dbg !142

if.end:                                           ; preds = %if.then, %if.then132
  %condval.sroa.0.0 = phi i32 [ %condval.sroa.0.0.copyload, %if.then132 ], [ 0, %if.then ], !dbg !143
  %condval.sroa.5.0 = phi i32 [ %condval.sroa.5.0.copyload, %if.then132 ], [ 0, %if.then ], !dbg !143
  %condval.sroa.6.0 = phi i32 [ %condval.sroa.6.0.copyload, %if.then132 ], [ 0, %if.then ], !dbg !143
  %condval.sroa.7.0 = phi i32 [ %condval.sroa.7.0.copyload, %if.then132 ], [ 0, %if.then ], !dbg !143
  store i32 %condval.sroa.0.0, ptr addrspace(3) %add.ptr45, align 16, !dbg !144, !tbaa !30
  store i32 %condval.sroa.5.0, ptr addrspace(3) %condval.sroa.5.0.add.ptr200.sroa_idx, align 4, !dbg !144, !tbaa !30
  store i32 %condval.sroa.6.0, ptr addrspace(3) %condval.sroa.6.0.add.ptr200.sroa_idx, align 8, !dbg !144, !tbaa !30
  store i32 %condval.sroa.7.0, ptr addrspace(3) %condval.sroa.7.0.add.ptr200.sroa_idx, align 4, !dbg !144, !tbaa !30
  %cmp131.1 = icmp ult i32 %add128, 1016, !dbg !139
  br i1 %cmp131.1, label %if.then132.1, label %if.end.1, !dbg !140

if.then132.1:                                     ; preds = %if.end
  %gep831.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %add137.1
  %condval.sroa.7.0.add.ptr145.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep831.1, i64 12
  %condval.sroa.6.0.add.ptr145.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep831.1, i64 8
  %condval.sroa.5.0.add.ptr145.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep831.1, i64 4
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep831.1, align 16, !dbg !141, !tbaa !30
  %condval.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr145.sroa_idx.1, align 4, !dbg !141, !tbaa !30
  %condval.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr145.sroa_idx.1, align 8, !dbg !141, !tbaa !30
  %condval.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr145.sroa_idx.1, align 4, !dbg !141, !tbaa !30
  br label %if.end.1, !dbg !142

if.end.1:                                         ; preds = %if.then132.1, %if.end
  %condval.sroa.0.0.1 = phi i32 [ %condval.sroa.0.0.copyload.1, %if.then132.1 ], [ 0, %if.end ], !dbg !143
  %condval.sroa.5.0.1 = phi i32 [ %condval.sroa.5.0.copyload.1, %if.then132.1 ], [ 0, %if.end ], !dbg !143
  %condval.sroa.6.0.1 = phi i32 [ %condval.sroa.6.0.copyload.1, %if.then132.1 ], [ 0, %if.end ], !dbg !143
  %condval.sroa.7.0.1 = phi i32 [ %condval.sroa.7.0.copyload.1, %if.then132.1 ], [ 0, %if.end ], !dbg !143
  store i32 %condval.sroa.0.0.1, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !144, !tbaa !30
  store i32 %condval.sroa.5.0.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr200.sroa_idx.1, align 4, !dbg !144, !tbaa !30
  store i32 %condval.sroa.6.0.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr200.sroa_idx.1, align 8, !dbg !144, !tbaa !30
  store i32 %condval.sroa.7.0.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr200.sroa_idx.1, align 4, !dbg !144, !tbaa !30
  fence syncscope("warp") release, !dbg !145
  tail call void @llvm.mxc.barrier.warp(), !dbg !148
  fence syncscope("warp") acquire, !dbg !149
  %98 = load <4 x half>, ptr addrspace(3) %add.ptr247, align 8, !dbg !150
  %99 = load <4 x half>, ptr addrspace(3) %add.ptr247.1, align 8, !dbg !150
  %100 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %98, <4 x half> %12, <4 x float> zeroinitializer), !dbg !151
  %101 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %99, <4 x half> %14, <4 x float> %100), !dbg !151
  %102 = load <4 x half>, ptr addrspace(3) %add.ptr247.1879, align 8, !dbg !150
  %103 = load <4 x half>, ptr addrspace(3) %add.ptr247.1.1, align 8, !dbg !150
  %104 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %102, <4 x half> %16, <4 x float> %101), !dbg !151
  %105 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %103, <4 x half> %20, <4 x float> %104), !dbg !151
  %add284 = add nuw nsw i32 %mul118, %mul283
  %cmp287.not = icmp sgt i32 %add284, %1, !dbg !152
  %scores.sroa.0.0.vec.extract966 = extractelement <4 x float> %105, i64 0
  %spec.select = select i1 %cmp287.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract966, !dbg !153
  %cmp287.not.1.not = icmp slt i32 %add284, %1, !dbg !152
  %scores.sroa.0.4.vec.extract979 = extractelement <4 x float> %105, i64 1, !dbg !153
  %condval_1.0.1 = select i1 %cmp287.not.1.not, float %scores.sroa.0.4.vec.extract979, float 0xFFF0000000000000, !dbg !153
  %add285.2 = or disjoint i32 %add284, 2, !dbg !154
  %cmp287.not.2 = icmp sgt i32 %add285.2, %1, !dbg !152
  %scores.sroa.0.8.vec.extract992 = extractelement <4 x float> %105, i64 2, !dbg !153
  %condval_1.0.2 = select i1 %cmp287.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract992, !dbg !153
  %add285.3 = or disjoint i32 %add284, 3, !dbg !154
  %cmp287.not.3 = icmp sgt i32 %add285.3, %1, !dbg !152
  %scores.sroa.0.12.vec.extract1005 = extractelement <4 x float> %105, i64 3, !dbg !153
  %condval_1.0.3 = select i1 %cmp287.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1005, !dbg !153
  %106 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !155
  %107 = tail call contract noundef float @llvm.maxnum.f32(float %106, float %condval_1.0.1), !dbg !155
  %108 = tail call contract noundef float @llvm.maxnum.f32(float %107, float %condval_1.0.2), !dbg !155
  %109 = tail call contract noundef float @llvm.maxnum.f32(float %108, float %condval_1.0.3), !dbg !155
  %110 = bitcast float %109 to i32, !dbg !159
  %111 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !168
  %112 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %111) #11, !dbg !173
  %xor.i.i.i = xor i32 %112, 32, !dbg !174
  %113 = and i32 %112, -64, !dbg !175
  %and.i.i.i = add nsw i32 %113, 64, !dbg !175
  %cmp.not.i.i.i = icmp slt i32 %xor.i.i.i, %and.i.i.i, !dbg !176
  %cond.i.i.i = select i1 %cmp.not.i.i.i, i32 %xor.i.i.i, i32 %112, !dbg !177
  %shl.i.i.i = shl i32 %cond.i.i.i, 2, !dbg !178
  %114 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i, i32 %110), !dbg !179
  %115 = bitcast i32 %114 to float, !dbg !180
  %116 = tail call contract noundef float @llvm.maxnum.f32(float %109, float %115), !dbg !181
  %117 = bitcast float %116 to i32, !dbg !189
  %118 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !194
  %119 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %118) #11, !dbg !197
  %xor.i.i.i.i = xor i32 %119, 16, !dbg !198
  %120 = and i32 %119, -64, !dbg !199
  %and.i.i.i.i = add nsw i32 %120, 64, !dbg !199
  %cmp.not.i.i.i.i = icmp slt i32 %xor.i.i.i.i, %and.i.i.i.i, !dbg !200
  %cond.i.i.i.i = select i1 %cmp.not.i.i.i.i, i32 %xor.i.i.i.i, i32 %119, !dbg !201
  %shl.i.i.i.i = shl i32 %cond.i.i.i.i, 2, !dbg !202
  %121 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i, i32 %117), !dbg !203
  %122 = bitcast i32 %121 to float, !dbg !204
  %123 = tail call contract noundef float @llvm.maxnum.f32(float %116, float %122), !dbg !205
  %sub = fsub contract float %123, %normalizer.sroa.0.0851, !dbg !209
  %mul323 = fmul contract float %sub, 0x3FC7154760000000, !dbg !210
  %cmp324 = fcmp contract ogt float %mul323, 7.000000e+00, !dbg !211
  %sub328 = fsub contract float %normalizer.sroa.0.0851, %123
  %mul329 = fmul contract float %sub328, 0x3FC7154760000000
  %cmp.i.i = fcmp contract olt float %mul329, -1.260000e+02
  %cond.i.i = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00
  %add.i.i = fadd contract float %mul329, %cond.i.i
  %124 = tail call contract float @llvm.exp2.f32(float %add.i.i)
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i = fmul contract float %cond2.i.i, %124
  %normalizer.sroa.0.1 = select i1 %cmp324, float %123, float %normalizer.sroa.0.0851, !dbg !212
  %sub344 = fsub contract float %spec.select, %normalizer.sroa.0.1, !dbg !213
  %mul345 = fmul contract float %sub344, 0x3FC7154760000000, !dbg !214
  %add346 = fadd contract float %mul345, 8.000000e+00, !dbg !215
  %cmp.i.i782 = fcmp contract olt float %add346, -1.260000e+02, !dbg !216
  %cond.i.i783 = select contract i1 %cmp.i.i782, float 6.400000e+01, float 0.000000e+00, !dbg !216
  %add.i.i784 = fadd contract float %add346, %cond.i.i783, !dbg !216
  %125 = tail call contract float @llvm.exp2.f32(float %add.i.i784), !dbg !216
  %cond2.i.i785 = select contract i1 %cmp.i.i782, float 0x3BF0000000000000, float 1.000000e+00, !dbg !216
  %mul.i.i786 = fmul contract float %cond2.i.i785, %125, !dbg !216
  %sub344.1 = fsub contract float %condval_1.0.1, %normalizer.sroa.0.1, !dbg !213
  %mul345.1 = fmul contract float %sub344.1, 0x3FC7154760000000, !dbg !214
  %add346.1 = fadd contract float %mul345.1, 8.000000e+00, !dbg !215
  %cmp.i.i782.1 = fcmp contract olt float %add346.1, -1.260000e+02, !dbg !216
  %cond.i.i783.1 = select contract i1 %cmp.i.i782.1, float 6.400000e+01, float 0.000000e+00, !dbg !216
  %add.i.i784.1 = fadd contract float %add346.1, %cond.i.i783.1, !dbg !216
  %126 = tail call contract float @llvm.exp2.f32(float %add.i.i784.1), !dbg !216
  %cond2.i.i785.1 = select contract i1 %cmp.i.i782.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !216
  %mul.i.i786.1 = fmul contract float %cond2.i.i785.1, %126, !dbg !216
  %sub344.2 = fsub contract float %condval_1.0.2, %normalizer.sroa.0.1, !dbg !213
  %mul345.2 = fmul contract float %sub344.2, 0x3FC7154760000000, !dbg !214
  %add346.2 = fadd contract float %mul345.2, 8.000000e+00, !dbg !215
  %cmp.i.i782.2 = fcmp contract olt float %add346.2, -1.260000e+02, !dbg !216
  %cond.i.i783.2 = select contract i1 %cmp.i.i782.2, float 6.400000e+01, float 0.000000e+00, !dbg !216
  %add.i.i784.2 = fadd contract float %add346.2, %cond.i.i783.2, !dbg !216
  %127 = tail call contract float @llvm.exp2.f32(float %add.i.i784.2), !dbg !216
  %cond2.i.i785.2 = select contract i1 %cmp.i.i782.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !216
  %mul.i.i786.2 = fmul contract float %cond2.i.i785.2, %127, !dbg !216
  %sub344.3 = fsub contract float %condval_1.0.3, %normalizer.sroa.0.1, !dbg !213
  %mul345.3 = fmul contract float %sub344.3, 0x3FC7154760000000, !dbg !214
  %add346.3 = fadd contract float %mul345.3, 8.000000e+00, !dbg !215
  %cmp.i.i782.3 = fcmp contract olt float %add346.3, -1.260000e+02, !dbg !216
  %cond.i.i783.3 = select contract i1 %cmp.i.i782.3, float 6.400000e+01, float 0.000000e+00, !dbg !216
  %add.i.i784.3 = fadd contract float %add346.3, %cond.i.i783.3, !dbg !216
  %128 = tail call contract float @llvm.exp2.f32(float %add.i.i784.3), !dbg !216
  %cond2.i.i785.3 = select contract i1 %cmp.i.i782.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !216
  %mul.i.i786.3 = fmul contract float %cond2.i.i785.3, %128, !dbg !216
  %add361 = fadd contract float %mul.i.i786, 0.000000e+00, !dbg !219
  %add361.1 = fadd contract float %add361, %mul.i.i786.1, !dbg !219
  %add361.2 = fadd contract float %add361.1, %mul.i.i786.2, !dbg !219
  %add361.3 = fadd contract float %add361.2, %mul.i.i786.3, !dbg !219
  %rescale.sroa.0.0 = select i1 %cmp324, float %mul.i.i, float 1.000000e+00, !dbg !212
  %129 = bitcast float %add361.3 to i32, !dbg !220
  %130 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !225
  %131 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %130) #11, !dbg !228
  %xor.i.i.i787 = xor i32 %131, 32, !dbg !229
  %132 = and i32 %131, -64, !dbg !230
  %and.i.i.i788 = add nsw i32 %132, 64, !dbg !230
  %cmp.not.i.i.i789 = icmp slt i32 %xor.i.i.i787, %and.i.i.i788, !dbg !231
  %cond.i.i.i790 = select i1 %cmp.not.i.i.i789, i32 %xor.i.i.i787, i32 %131, !dbg !232
  %shl.i.i.i791 = shl i32 %cond.i.i.i790, 2, !dbg !233
  %133 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i791, i32 %129), !dbg !234
  %134 = bitcast i32 %133 to float, !dbg !235
  %add.i.i792 = fadd contract float %add361.3, %134, !dbg !236
  %135 = bitcast float %add.i.i792 to i32, !dbg !239
  %136 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !244
  %137 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %136) #11, !dbg !247
  %xor.i.i.i.i793 = xor i32 %137, 16, !dbg !248
  %138 = and i32 %137, -64, !dbg !249
  %and.i.i.i.i794 = add nsw i32 %138, 64, !dbg !249
  %cmp.not.i.i.i.i795 = icmp slt i32 %xor.i.i.i.i793, %and.i.i.i.i794, !dbg !250
  %cond.i.i.i.i796 = select i1 %cmp.not.i.i.i.i795, i32 %xor.i.i.i.i793, i32 %137, !dbg !251
  %shl.i.i.i.i797 = shl i32 %cond.i.i.i.i796, 2, !dbg !252
  %139 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i797, i32 %135), !dbg !253
  %140 = bitcast i32 %139 to float, !dbg !254
  %add.i.i.i = fadd contract float %add.i.i792, %140, !dbg !255
  %cmp370 = fcmp contract une float %rescale.sroa.0.0, 1.000000e+00, !dbg !257
  %mul374 = fmul contract float %denominator.sroa.0.0852, %rescale.sroa.0.0, !dbg !258
  %denominator.sroa.0.1 = select i1 %cmp370, float %mul374, float %denominator.sroa.0.0852, !dbg !258
  %add379 = fadd contract float %denominator.sroa.0.1, %add.i.i.i, !dbg !259
  %141 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !264
  %142 = fptrunc float %mul.i.i786 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %141), !dbg !260, !noalias !264
  %143 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !264
  %144 = fptrunc float %mul.i.i786.1 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %143), !dbg !269, !noalias !264
  %__1.sroa.0.0.vec.insert = insertelement <4 x half> poison, half %142, i64 0, !dbg !271
  %__1.sroa.0.2.vec.insert = insertelement <4 x half> %__1.sroa.0.0.vec.insert, half %144, i64 1, !dbg !271
  %145 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !274, !noalias !278
  %146 = fptrunc float %mul.i.i786.2 to half, !dbg !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %145), !dbg !274, !noalias !278
  %147 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !283
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !283, !noalias !278
  %148 = fptrunc float %mul.i.i786.3 to half, !dbg !283
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %147), !dbg !283, !noalias !278
  %__1.sroa.0.4.vec.insert = insertelement <4 x half> %__1.sroa.0.2.vec.insert, half %146, i64 2, !dbg !285
  %__1.sroa.0.6.vec.insert = insertelement <4 x half> %__1.sroa.0.4.vec.insert, half %148, i64 3, !dbg !285
  br i1 %cmp370, label %for.body401.preheader, label %if.end411, !dbg !287

for.body401.preheader:                            ; preds = %if.end.1
  %output_acc.sroa.0.0.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 0, !dbg !288
  %mul405 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.0.0.vec.extract, !dbg !289
  %output_acc.sroa.0.0.vec.insert1019 = insertelement <4 x float> poison, float %mul405, i64 0, !dbg !290
  %output_acc.sroa.0.4.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 1, !dbg !288
  %mul405.1 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.0.4.vec.extract, !dbg !289
  %output_acc.sroa.0.4.vec.insert1028 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert1019, float %mul405.1, i64 1, !dbg !290
  %output_acc.sroa.0.8.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 2, !dbg !288
  %mul405.2 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.0.8.vec.extract, !dbg !289
  %output_acc.sroa.0.8.vec.insert1037 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert1028, float %mul405.2, i64 2, !dbg !290
  %output_acc.sroa.0.12.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 3, !dbg !288
  %mul405.3 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.0.12.vec.extract, !dbg !289
  %output_acc.sroa.0.12.vec.insert1046 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert1037, float %mul405.3, i64 3, !dbg !290
  %output_acc.sroa.28.16.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 0, !dbg !288
  %mul405.4 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.28.16.vec.extract, !dbg !289
  %output_acc.sroa.28.16.vec.insert1056 = insertelement <4 x float> poison, float %mul405.4, i64 0, !dbg !290
  %output_acc.sroa.28.20.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 1, !dbg !288
  %mul405.5 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.28.20.vec.extract, !dbg !289
  %output_acc.sroa.28.20.vec.insert1065 = insertelement <4 x float> %output_acc.sroa.28.16.vec.insert1056, float %mul405.5, i64 1, !dbg !290
  %output_acc.sroa.28.24.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 2, !dbg !288
  %mul405.6 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.28.24.vec.extract, !dbg !289
  %output_acc.sroa.28.24.vec.insert1074 = insertelement <4 x float> %output_acc.sroa.28.20.vec.insert1065, float %mul405.6, i64 2, !dbg !290
  %output_acc.sroa.28.28.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 3, !dbg !288
  %mul405.7 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.28.28.vec.extract, !dbg !289
  %output_acc.sroa.28.28.vec.insert1083 = insertelement <4 x float> %output_acc.sroa.28.24.vec.insert1074, float %mul405.7, i64 3, !dbg !290
  %output_acc.sroa.54.32.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 0, !dbg !288
  %mul405.8 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.54.32.vec.extract, !dbg !289
  %output_acc.sroa.54.32.vec.insert1093 = insertelement <4 x float> poison, float %mul405.8, i64 0, !dbg !290
  %output_acc.sroa.54.36.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 1, !dbg !288
  %mul405.9 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.54.36.vec.extract, !dbg !289
  %output_acc.sroa.54.36.vec.insert1102 = insertelement <4 x float> %output_acc.sroa.54.32.vec.insert1093, float %mul405.9, i64 1, !dbg !290
  %output_acc.sroa.54.40.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 2, !dbg !288
  %mul405.10 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.54.40.vec.extract, !dbg !289
  %output_acc.sroa.54.40.vec.insert1111 = insertelement <4 x float> %output_acc.sroa.54.36.vec.insert1102, float %mul405.10, i64 2, !dbg !290
  %output_acc.sroa.54.44.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 3, !dbg !288
  %mul405.11 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.54.44.vec.extract, !dbg !289
  %output_acc.sroa.54.44.vec.insert1120 = insertelement <4 x float> %output_acc.sroa.54.40.vec.insert1111, float %mul405.11, i64 3, !dbg !290
  %output_acc.sroa.80.48.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 0, !dbg !288
  %mul405.12 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.80.48.vec.extract, !dbg !289
  %output_acc.sroa.80.48.vec.insert1130 = insertelement <4 x float> poison, float %mul405.12, i64 0, !dbg !290
  %output_acc.sroa.80.52.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 1, !dbg !288
  %mul405.13 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.80.52.vec.extract, !dbg !289
  %output_acc.sroa.80.52.vec.insert1139 = insertelement <4 x float> %output_acc.sroa.80.48.vec.insert1130, float %mul405.13, i64 1, !dbg !290
  %output_acc.sroa.80.56.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 2, !dbg !288
  %mul405.14 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.80.56.vec.extract, !dbg !289
  %output_acc.sroa.80.56.vec.insert1148 = insertelement <4 x float> %output_acc.sroa.80.52.vec.insert1139, float %mul405.14, i64 2, !dbg !290
  %output_acc.sroa.80.60.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 3, !dbg !288
  %mul405.15 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.80.60.vec.extract, !dbg !289
  %output_acc.sroa.80.60.vec.insert1157 = insertelement <4 x float> %output_acc.sroa.80.56.vec.insert1148, float %mul405.15, i64 3, !dbg !290
  br label %if.end411

if.end411:                                        ; preds = %for.body401.preheader, %if.end.1
  %output_acc.sroa.0.1 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1046, %for.body401.preheader ], [ %output_acc.sroa.0.0, %if.end.1 ], !dbg !143
  %output_acc.sroa.28.1 = phi <4 x float> [ %output_acc.sroa.28.28.vec.insert1083, %for.body401.preheader ], [ %output_acc.sroa.28.0, %if.end.1 ], !dbg !143
  %output_acc.sroa.54.1 = phi <4 x float> [ %output_acc.sroa.54.44.vec.insert1120, %for.body401.preheader ], [ %output_acc.sroa.54.0, %if.end.1 ], !dbg !143
  %output_acc.sroa.80.1 = phi <4 x float> [ %output_acc.sroa.80.60.vec.insert1157, %for.body401.preheader ], [ %output_acc.sroa.80.0, %if.end.1 ], !dbg !143
  %shr419 = lshr exact i32 %mul118, 2
  %add420 = add nuw nsw i32 %shr419, %shr417
  %cmp421 = icmp ult i32 %add420, 256
  br i1 %cmp421, label %if.then422, label %if.end456, !dbg !291

if.then422:                                       ; preds = %if.end411
  %149 = getelementptr inbounds i8, ptr addrspace(4) %29, i64 %.idx, !dbg !292
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %149, align 8, !dbg !293, !tbaa !30
  %condval_2.sroa.5.0.add.ptr442.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %149, i64 4, !dbg !293
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr442.sroa_idx, align 4, !dbg !293, !tbaa !30
  br label %if.end456, !dbg !294

if.end456:                                        ; preds = %if.end411, %if.then422
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then422 ], [ 0, %if.end411 ], !dbg !143
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then422 ], [ 0, %if.end411 ], !dbg !143
  br i1 %cmp421, label %if.then422.1, label %if.end456.1, !dbg !291

if.then422.1:                                     ; preds = %if.end456
  %150 = getelementptr inbounds i8, ptr addrspace(4) %30, i64 %.idx, !dbg !292
  %add.ptr442.1 = getelementptr inbounds i8, ptr addrspace(4) %150, i64 128, !dbg !292
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %add.ptr442.1, align 8, !dbg !293, !tbaa !30
  %condval_2.sroa.5.0.add.ptr442.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %150, i64 132, !dbg !293
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr442.sroa_idx.1, align 4, !dbg !293, !tbaa !30
  br label %if.end456.1, !dbg !294

if.end456.1:                                      ; preds = %if.then422.1, %if.end456
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then422.1 ], [ 0, %if.end456 ], !dbg !143
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then422.1 ], [ 0, %if.end456 ], !dbg !143
  br i1 %cmp421, label %if.then422.2, label %if.end456.2, !dbg !291

if.then422.2:                                     ; preds = %if.end456.1
  %151 = getelementptr inbounds i8, ptr addrspace(4) %31, i64 %.idx, !dbg !292
  %add.ptr442.2 = getelementptr inbounds i8, ptr addrspace(4) %151, i64 256, !dbg !292
  %condval_2.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %add.ptr442.2, align 8, !dbg !293, !tbaa !30
  %condval_2.sroa.5.0.add.ptr442.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %151, i64 260, !dbg !293
  %condval_2.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr442.sroa_idx.2, align 4, !dbg !293, !tbaa !30
  br label %if.end456.2, !dbg !294

if.end456.2:                                      ; preds = %if.then422.2, %if.end456.1
  %condval_2.sroa.5.0.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2, %if.then422.2 ], [ 0, %if.end456.1 ], !dbg !143
  %condval_2.sroa.0.0.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2, %if.then422.2 ], [ 0, %if.end456.1 ], !dbg !143
  br i1 %cmp421, label %if.then422.3, label %if.end456.3, !dbg !291

if.then422.3:                                     ; preds = %if.end456.2
  %152 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 %.idx, !dbg !292
  %add.ptr442.3 = getelementptr inbounds i8, ptr addrspace(4) %152, i64 384, !dbg !292
  %condval_2.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %add.ptr442.3, align 8, !dbg !293, !tbaa !30
  %condval_2.sroa.5.0.add.ptr442.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %152, i64 388, !dbg !293
  %condval_2.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr442.sroa_idx.3, align 4, !dbg !293, !tbaa !30
  br label %if.end456.3, !dbg !294

if.end456.3:                                      ; preds = %if.then422.3, %if.end456.2
  %condval_2.sroa.5.0.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3, %if.then422.3 ], [ 0, %if.end456.2 ], !dbg !143
  %condval_2.sroa.0.0.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3, %if.then422.3 ], [ 0, %if.end456.2 ], !dbg !143
  %153 = and i32 %condval_2.sroa.0.0.3, 65535, !dbg !295
  %v_column_local.sroa.18.0.insert.ext = zext nneg i32 %153 to i64, !dbg !295
  %v_column_local.sroa.18.0.insert.shift = shl nuw i64 %v_column_local.sroa.18.0.insert.ext, 48, !dbg !295
  %154 = and i32 %condval_2.sroa.0.0.2, 65535, !dbg !295
  %v_column_local.sroa.14.0.insert.ext = zext nneg i32 %154 to i64, !dbg !295
  %v_column_local.sroa.14.0.insert.shift = shl nuw nsw i64 %v_column_local.sroa.14.0.insert.ext, 32, !dbg !295
  %v_column_local.sroa.14.0.insert.insert = or disjoint i64 %v_column_local.sroa.18.0.insert.shift, %v_column_local.sroa.14.0.insert.shift, !dbg !295
  %155 = shl i32 %condval_2.sroa.0.0.1, 16, !dbg !295
  %v_column_local.sroa.10.0.insert.shift = zext i32 %155 to i64, !dbg !295
  %v_column_local.sroa.10.0.insert.insert = or disjoint i64 %v_column_local.sroa.14.0.insert.insert, %v_column_local.sroa.10.0.insert.shift, !dbg !295
  %156 = and i32 %condval_2.sroa.0.0, 65535, !dbg !295
  %v_column_local.sroa.0.0.insert.ext = zext nneg i32 %156 to i64, !dbg !295
  %v_column_local.sroa.0.0.insert.insert = or disjoint i64 %v_column_local.sroa.10.0.insert.insert, %v_column_local.sroa.0.0.insert.ext, !dbg !295
  store i64 %v_column_local.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr498, align 8, !dbg !295
  %v_tile_local.sroa.0.2.extract.shift = lshr i32 %condval_2.sroa.0.0, 16, !dbg !296
  %v_tile_local.sroa.0.2.extract.trunc = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift to i64, !dbg !296
  %v_tile_local.sroa.8.10.extract.shift = and i32 %condval_2.sroa.0.0.1, -65536, !dbg !295
  %v_tile_local.sroa.14.18.extract.shift = lshr i32 %condval_2.sroa.0.0.2, 16, !dbg !296
  %v_tile_local.sroa.14.18.extract.trunc = zext nneg i32 %v_tile_local.sroa.14.18.extract.shift to i64, !dbg !296
  %v_tile_local.sroa.20.26.extract.shift = lshr i32 %condval_2.sroa.0.0.3, 16, !dbg !296
  %v_tile_local.sroa.20.26.extract.trunc = zext nneg i32 %v_tile_local.sroa.20.26.extract.shift to i64, !dbg !296
  %v_column_local.sroa.18.0.insert.shift944 = shl nuw i64 %v_tile_local.sroa.20.26.extract.trunc, 48, !dbg !295
  %v_column_local.sroa.14.0.insert.shift929 = shl nuw nsw i64 %v_tile_local.sroa.14.18.extract.trunc, 32, !dbg !295
  %v_column_local.sroa.14.0.insert.insert931 = or disjoint i64 %v_column_local.sroa.18.0.insert.shift944, %v_column_local.sroa.14.0.insert.shift929, !dbg !295
  %v_column_local.sroa.10.0.insert.shift914 = zext i32 %v_tile_local.sroa.8.10.extract.shift to i64, !dbg !295
  %v_column_local.sroa.10.0.insert.insert916 = or disjoint i64 %v_column_local.sroa.14.0.insert.insert931, %v_column_local.sroa.10.0.insert.shift914, !dbg !295
  %v_column_local.sroa.0.0.insert.insert903 = or disjoint i64 %v_column_local.sroa.10.0.insert.insert916, %v_tile_local.sroa.0.2.extract.trunc, !dbg !295
  store i64 %v_column_local.sroa.0.0.insert.insert903, ptr addrspace(3) %add.ptr498.1, align 8, !dbg !295
  %157 = and i32 %condval_2.sroa.5.0.3, 65535, !dbg !295
  %v_column_local.sroa.18.0.insert.ext948 = zext nneg i32 %157 to i64, !dbg !295
  %v_column_local.sroa.18.0.insert.shift949 = shl nuw i64 %v_column_local.sroa.18.0.insert.ext948, 48, !dbg !295
  %158 = and i32 %condval_2.sroa.5.0.2, 65535, !dbg !295
  %v_column_local.sroa.14.0.insert.ext933 = zext nneg i32 %158 to i64, !dbg !295
  %v_column_local.sroa.14.0.insert.shift934 = shl nuw nsw i64 %v_column_local.sroa.14.0.insert.ext933, 32, !dbg !295
  %v_column_local.sroa.14.0.insert.insert936 = or disjoint i64 %v_column_local.sroa.18.0.insert.shift949, %v_column_local.sroa.14.0.insert.shift934, !dbg !295
  %159 = shl i32 %condval_2.sroa.5.0.1, 16, !dbg !295
  %v_column_local.sroa.10.0.insert.shift919 = zext i32 %159 to i64, !dbg !295
  %v_column_local.sroa.10.0.insert.insert921 = or disjoint i64 %v_column_local.sroa.14.0.insert.insert936, %v_column_local.sroa.10.0.insert.shift919, !dbg !295
  %160 = and i32 %condval_2.sroa.5.0, 65535, !dbg !295
  %v_column_local.sroa.0.0.insert.ext905 = zext nneg i32 %160 to i64, !dbg !295
  %v_column_local.sroa.0.0.insert.insert907 = or disjoint i64 %v_column_local.sroa.10.0.insert.insert921, %v_column_local.sroa.0.0.insert.ext905, !dbg !295
  store i64 %v_column_local.sroa.0.0.insert.insert907, ptr addrspace(3) %add.ptr498.2, align 8, !dbg !295
  %v_tile_local.sroa.5.6.extract.shift = lshr i32 %condval_2.sroa.5.0, 16, !dbg !296
  %v_tile_local.sroa.5.6.extract.trunc = zext nneg i32 %v_tile_local.sroa.5.6.extract.shift to i64, !dbg !296
  %v_tile_local.sroa.11.14.extract.shift = and i32 %condval_2.sroa.5.0.1, -65536, !dbg !295
  %v_tile_local.sroa.17.22.extract.shift = lshr i32 %condval_2.sroa.5.0.2, 16, !dbg !296
  %v_tile_local.sroa.17.22.extract.trunc = zext nneg i32 %v_tile_local.sroa.17.22.extract.shift to i64, !dbg !296
  %v_tile_local.sroa.23.30.extract.shift = lshr i32 %condval_2.sroa.5.0.3, 16, !dbg !296
  %v_tile_local.sroa.23.30.extract.trunc = zext nneg i32 %v_tile_local.sroa.23.30.extract.shift to i64, !dbg !296
  %v_column_local.sroa.18.0.insert.shift954 = shl nuw i64 %v_tile_local.sroa.23.30.extract.trunc, 48, !dbg !295
  %v_column_local.sroa.14.0.insert.shift939 = shl nuw nsw i64 %v_tile_local.sroa.17.22.extract.trunc, 32, !dbg !295
  %v_column_local.sroa.14.0.insert.insert941 = or disjoint i64 %v_column_local.sroa.18.0.insert.shift954, %v_column_local.sroa.14.0.insert.shift939, !dbg !295
  %v_column_local.sroa.10.0.insert.shift924 = zext i32 %v_tile_local.sroa.11.14.extract.shift to i64, !dbg !295
  %v_column_local.sroa.10.0.insert.insert926 = or disjoint i64 %v_column_local.sroa.14.0.insert.insert941, %v_column_local.sroa.10.0.insert.shift924, !dbg !295
  %v_column_local.sroa.0.0.insert.insert911 = or disjoint i64 %v_column_local.sroa.10.0.insert.insert926, %v_tile_local.sroa.5.6.extract.trunc, !dbg !295
  store i64 %v_column_local.sroa.0.0.insert.insert911, ptr addrspace(3) %add.ptr498.3, align 8, !dbg !295
  fence syncscope("warp") release, !dbg !297
  tail call void @llvm.mxc.barrier.warp(), !dbg !300
  fence syncscope("warp") acquire, !dbg !301
  %161 = load <4 x half>, ptr addrspace(3) %add.ptr526, align 8, !dbg !302
  %162 = load <4 x half>, ptr addrspace(3) %add.ptr526.1, align 8, !dbg !302
  %163 = load <4 x half>, ptr addrspace(3) %add.ptr526.2, align 8, !dbg !302
  %164 = load <4 x half>, ptr addrspace(3) %add.ptr526.3, align 8, !dbg !302
  %165 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %161, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.0.1), !dbg !303
  %166 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %162, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.28.1), !dbg !303
  %167 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %163, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.54.1), !dbg !303
  %168 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %164, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.80.1), !dbg !303
  br label %if.end552, !dbg !304

if.end552:                                        ; preds = %if.end456.3, %for.body110
  %output_acc.sroa.0.2 = phi <4 x float> [ %output_acc.sroa.0.0, %for.body110 ], [ %165, %if.end456.3 ], !dbg !143
  %output_acc.sroa.28.2 = phi <4 x float> [ %output_acc.sroa.28.0, %for.body110 ], [ %166, %if.end456.3 ], !dbg !143
  %output_acc.sroa.54.2 = phi <4 x float> [ %output_acc.sroa.54.0, %for.body110 ], [ %167, %if.end456.3 ], !dbg !143
  %output_acc.sroa.80.2 = phi <4 x float> [ %output_acc.sroa.80.0, %for.body110 ], [ %168, %if.end456.3 ], !dbg !143
  %normalizer.sroa.0.2 = phi float [ %normalizer.sroa.0.0851, %for.body110 ], [ %normalizer.sroa.0.1, %if.end456.3 ], !dbg !143
  %denominator.sroa.0.2 = phi float [ %denominator.sroa.0.0852, %for.body110 ], [ %add379, %if.end456.3 ], !dbg !143
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !305
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !306
  br i1 %exitcond.not, label %for.cond.cleanup108, label %for.body110, !dbg !68, !llvm.loop !307
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noalias nocapture writeonly, ptr addrspace(4) noalias nocapture readonly, i64, i1 immarg) #10

attributes #0 = { mustprogress noreturn nounwind "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="512" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="512" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" }
attributes #3 = { convergent mustprogress norecurse nounwind "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-implicitarg-num-bytes"="80" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="64" "metaxgpu-min-blocks"="1" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" "uniform-work-group-size"="true" }
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v034_codex_power_s8_kpair_prefetch_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v034_codex_power_s8_kpair_prefetch_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 26, column: 3, scope: !40)
!44 = !DILocation(line: 27, column: 347, scope: !40)
!45 = !DILocation(line: 27, column: 92, scope: !40)
!46 = !DILocation(line: 27, column: 170, scope: !40)
!47 = !DILocation(line: 27, column: 255, scope: !40)
!48 = !DILocation(line: 27, column: 40, scope: !40)
!49 = !DILocation(line: 27, column: 333, scope: !40)
!50 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!51 = !{i32 -1, i32 3, i32 -1, i32 -1}
!52 = !DILocation(line: 27, column: 425, scope: !40)
!53 = !DILocation(line: 27, column: 56, scope: !40)
!54 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !57)
!55 = distinct !DISubprogram(name: "__barrier_warp", scope: !56, file: !56, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!56 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!57 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !59)
!58 = distinct !DISubprogram(name: "__syncwarp", scope: !56, file: !56, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!59 = distinct !DILocation(line: 29, column: 3, scope: !40)
!60 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !57)
!61 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !57)
!62 = !DILocation(line: 31, column: 172, scope: !40)
!63 = !DILocation(line: 31, column: 236, scope: !40)
!64 = !DILocation(line: 31, column: 243, scope: !40)
!65 = !DILocation(line: 31, column: 313, scope: !40)
!66 = !DILocation(line: 31, column: 75, scope: !40)
!67 = !DILocation(line: 31, column: 38, scope: !40)
!68 = !DILocation(line: 40, column: 3, scope: !40)
!69 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !70)
!70 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !71)
!71 = distinct !DILocation(line: 154, column: 3, scope: !40)
!72 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !70)
!73 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !70)
!74 = !DILocation(line: 157, column: 24, scope: !40)
!75 = !DILocation(line: 157, column: 40, scope: !40)
!76 = !DILocation(line: 1007, column: 10, scope: !77, inlinedAt: !79)
!77 = distinct !DISubprogram(name: "__float2half_rn", scope: !78, file: !78, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!78 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!79 = distinct !DILocation(line: 1077, column: 18, scope: !80, inlinedAt: !81)
!80 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !78, file: !78, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!81 = distinct !DILocation(line: 1295, column: 23, scope: !82, inlinedAt: !83)
!82 = distinct !DISubprogram(name: "__float22half2_rn", scope: !78, file: !78, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!83 = distinct !DILocation(line: 163, column: 27, scope: !40)
!84 = !{!85, !87}
!85 = distinct !{!85, !86, !"_ZL17__floats2half2_rnff: %agg.result"}
!86 = distinct !{!86, !"_ZL17__floats2half2_rnff"}
!87 = distinct !{!87, !88, !"_ZL17__float22half2_rn6float2: %agg.result"}
!88 = distinct !{!88, !"_ZL17__float22half2_rn6float2"}
!89 = !DILocation(line: 1007, column: 10, scope: !77, inlinedAt: !90)
!90 = distinct !DILocation(line: 1077, column: 38, scope: !80, inlinedAt: !81)
!91 = !DILocation(line: 596, column: 67, scope: !92, inlinedAt: !93)
!92 = distinct !DISubprogram(name: "__half2", scope: !78, file: !78, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!93 = distinct !DILocation(line: 1077, column: 10, scope: !80, inlinedAt: !81)
!94 = !DILocation(line: 596, column: 73, scope: !92, inlinedAt: !93)
!95 = !DILocation(line: 1007, column: 10, scope: !77, inlinedAt: !96)
!96 = distinct !DILocation(line: 1077, column: 18, scope: !80, inlinedAt: !97)
!97 = distinct !DILocation(line: 1295, column: 23, scope: !82, inlinedAt: !98)
!98 = distinct !DILocation(line: 164, column: 27, scope: !40)
!99 = !{!100, !102}
!100 = distinct !{!100, !101, !"_ZL17__floats2half2_rnff: %agg.result"}
!101 = distinct !{!101, !"_ZL17__floats2half2_rnff"}
!102 = distinct !{!102, !103, !"_ZL17__float22half2_rn6float2: %agg.result"}
!103 = distinct !{!103, !"_ZL17__float22half2_rn6float2"}
!104 = !DILocation(line: 1007, column: 10, scope: !77, inlinedAt: !105)
!105 = distinct !DILocation(line: 1077, column: 38, scope: !80, inlinedAt: !97)
!106 = !DILocation(line: 596, column: 67, scope: !92, inlinedAt: !107)
!107 = distinct !DILocation(line: 1077, column: 10, scope: !80, inlinedAt: !97)
!108 = !DILocation(line: 596, column: 73, scope: !92, inlinedAt: !107)
!109 = !DILocation(line: 165, column: 45, scope: !40)
!110 = !DILocation(line: 166, column: 121, scope: !40)
!111 = !DILocation(line: 166, column: 149, scope: !40)
!112 = !DILocation(line: 166, column: 77, scope: !40)
!113 = !DILocation(line: 166, column: 155, scope: !40)
!114 = !DILocation(line: 166, column: 40, scope: !40)
!115 = !DILocation(line: 166, column: 198, scope: !40)
!116 = !DILocation(line: 166, column: 92, scope: !40)
!117 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !118)
!118 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !119)
!119 = distinct !DILocation(line: 168, column: 3, scope: !40)
!120 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !118)
!121 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !118)
!122 = !DILocation(line: 170, column: 8, scope: !40)
!123 = !DILocation(line: 171, column: 22, scope: !40)
!124 = !DILocation(line: 171, column: 131, scope: !40)
!125 = !{i32 2, i32 -1, i32 -1, i32 -1}
!126 = !DILocation(line: 171, column: 168, scope: !40)
!127 = !DILocation(line: 173, column: 1, scope: !40)
!128 = !DILocation(line: 36, column: 40, scope: !40)
!129 = !DILocation(line: 41, column: 24, scope: !40)
!130 = !DILocation(line: 41, column: 106, scope: !40)
!131 = !DILocation(line: 42, column: 12, scope: !40)
!132 = !DILocation(line: 42, column: 28, scope: !40)
!133 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !134)
!134 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !135)
!135 = distinct !DILocation(line: 43, column: 7, scope: !40)
!136 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !134)
!137 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !134)
!138 = !DILocation(line: 45, column: 7, scope: !40)
!139 = !DILocation(line: 48, column: 71, scope: !40)
!140 = !DILocation(line: 48, column: 13, scope: !40)
!141 = !DILocation(line: 49, column: 19, scope: !40)
!142 = !DILocation(line: 50, column: 9, scope: !40)
!143 = !DILocation(line: 0, scope: !40)
!144 = !DILocation(line: 53, column: 339, scope: !40)
!145 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !146)
!146 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !147)
!147 = distinct !DILocation(line: 55, column: 7, scope: !40)
!148 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !146)
!149 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !146)
!150 = !DILocation(line: 62, column: 48, scope: !40)
!151 = !DILocation(line: 67, column: 37, scope: !40)
!152 = !DILocation(line: 76, column: 70, scope: !40)
!153 = !DILocation(line: 76, column: 13, scope: !40)
!154 = !DILocation(line: 76, column: 63, scope: !40)
!155 = !DILocation(line: 351, column: 10, scope: !156, inlinedAt: !158)
!156 = distinct !DISubprogram(name: "max", scope: !157, file: !157, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!157 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!158 = distinct !DILocation(line: 87, column: 24, scope: !40)
!159 = !DILocation(line: 1018, column: 9, scope: !160, inlinedAt: !161)
!160 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !56, file: !56, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!161 = distinct !DILocation(line: 338, column: 10, scope: !162, inlinedAt: !164)
!162 = distinct !DISubprogram(name: "shfl_xor_sync<float>", scope: !163, file: !163, line: 337, type: !7, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!163 = !DIFile(filename: "src/tl_templates/maca/common.h", directory: "/root/tilelang-metax")
!164 = distinct !DILocation(line: 95, column: 24, scope: !165, inlinedAt: !167)
!165 = distinct !DISubprogram(name: "run<float>", scope: !166, file: !166, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!166 = !DIFile(filename: "src/tl_templates/maca/reduce.h", directory: "/root/tilelang-metax")
!167 = distinct !DILocation(line: 89, column: 22, scope: !40)
!168 = !DILocation(line: 171, column: 37, scope: !169, inlinedAt: !170)
!169 = distinct !DISubprogram(name: "__lane_id", scope: !56, file: !56, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!170 = distinct !DILocation(line: 990, column: 14, scope: !171, inlinedAt: !172)
!171 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !56, file: !56, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!172 = distinct !DILocation(line: 1019, column: 11, scope: !160, inlinedAt: !161)
!173 = !DILocation(line: 171, column: 10, scope: !169, inlinedAt: !170)
!174 = !DILocation(line: 991, column: 20, scope: !171, inlinedAt: !172)
!175 = !DILocation(line: 992, column: 36, scope: !171, inlinedAt: !172)
!176 = !DILocation(line: 992, column: 17, scope: !171, inlinedAt: !172)
!177 = !DILocation(line: 992, column: 11, scope: !171, inlinedAt: !172)
!178 = !DILocation(line: 993, column: 43, scope: !171, inlinedAt: !172)
!179 = !DILocation(line: 993, column: 10, scope: !171, inlinedAt: !172)
!180 = !DILocation(line: 1020, column: 14, scope: !160, inlinedAt: !161)
!181 = !DILocation(line: 306, column: 10, scope: !182, inlinedAt: !183)
!182 = distinct !DISubprogram(name: "fmaxf", scope: !157, file: !157, line: 305, type: !7, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!183 = distinct !DILocation(line: 633, column: 10, scope: !184, inlinedAt: !186)
!184 = distinct !DISubprogram(name: "fast_max<float>", scope: !185, file: !185, line: 632, type: !7, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!185 = !DIFile(filename: "/opt/maca/include/mctlass/fast_math.h", directory: "")
!186 = distinct !DILocation(line: 31, column: 12, scope: !187, inlinedAt: !188)
!187 = distinct !DISubprogram(name: "operator()<float>", scope: !166, file: !166, line: 30, type: !7, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!188 = distinct !DILocation(line: 95, column: 11, scope: !165, inlinedAt: !167)
!189 = !DILocation(line: 1018, column: 9, scope: !160, inlinedAt: !190)
!190 = distinct !DILocation(line: 338, column: 10, scope: !162, inlinedAt: !191)
!191 = distinct !DILocation(line: 95, column: 24, scope: !192, inlinedAt: !193)
!192 = distinct !DISubprogram(name: "run<float>", scope: !166, file: !166, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!193 = distinct !DILocation(line: 100, column: 14, scope: !165, inlinedAt: !167)
!194 = !DILocation(line: 171, column: 37, scope: !169, inlinedAt: !195)
!195 = distinct !DILocation(line: 990, column: 14, scope: !171, inlinedAt: !196)
!196 = distinct !DILocation(line: 1019, column: 11, scope: !160, inlinedAt: !190)
!197 = !DILocation(line: 171, column: 10, scope: !169, inlinedAt: !195)
!198 = !DILocation(line: 991, column: 20, scope: !171, inlinedAt: !196)
!199 = !DILocation(line: 992, column: 36, scope: !171, inlinedAt: !196)
!200 = !DILocation(line: 992, column: 17, scope: !171, inlinedAt: !196)
!201 = !DILocation(line: 992, column: 11, scope: !171, inlinedAt: !196)
!202 = !DILocation(line: 993, column: 43, scope: !171, inlinedAt: !196)
!203 = !DILocation(line: 993, column: 10, scope: !171, inlinedAt: !196)
!204 = !DILocation(line: 1020, column: 14, scope: !160, inlinedAt: !190)
!205 = !DILocation(line: 306, column: 10, scope: !182, inlinedAt: !206)
!206 = distinct !DILocation(line: 633, column: 10, scope: !184, inlinedAt: !207)
!207 = distinct !DILocation(line: 31, column: 12, scope: !187, inlinedAt: !208)
!208 = distinct !DILocation(line: 95, column: 11, scope: !192, inlinedAt: !193)
!209 = !DILocation(line: 90, column: 54, scope: !40)
!210 = !DILocation(line: 90, column: 71, scope: !40)
!211 = !DILocation(line: 90, column: 37, scope: !40)
!212 = !DILocation(line: 90, column: 11, scope: !40)
!213 = !DILocation(line: 98, column: 44, scope: !40)
!214 = !DILocation(line: 98, column: 61, scope: !40)
!215 = !DILocation(line: 98, column: 102, scope: !40)
!216 = !DILocation(line: 285, column: 49, scope: !217, inlinedAt: !218)
!217 = distinct !DISubprogram(name: "exp2f", scope: !157, file: !157, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!218 = distinct !DILocation(line: 98, column: 23, scope: !40)
!219 = !DILocation(line: 103, column: 38, scope: !40)
!220 = !DILocation(line: 1018, column: 9, scope: !160, inlinedAt: !221)
!221 = distinct !DILocation(line: 338, column: 10, scope: !162, inlinedAt: !222)
!222 = distinct !DILocation(line: 95, column: 24, scope: !223, inlinedAt: !224)
!223 = distinct !DISubprogram(name: "run<float>", scope: !166, file: !166, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!224 = distinct !DILocation(line: 105, column: 22, scope: !40)
!225 = !DILocation(line: 171, column: 37, scope: !169, inlinedAt: !226)
!226 = distinct !DILocation(line: 990, column: 14, scope: !171, inlinedAt: !227)
!227 = distinct !DILocation(line: 1019, column: 11, scope: !160, inlinedAt: !221)
!228 = !DILocation(line: 171, column: 10, scope: !169, inlinedAt: !226)
!229 = !DILocation(line: 991, column: 20, scope: !171, inlinedAt: !227)
!230 = !DILocation(line: 992, column: 36, scope: !171, inlinedAt: !227)
!231 = !DILocation(line: 992, column: 17, scope: !171, inlinedAt: !227)
!232 = !DILocation(line: 992, column: 11, scope: !171, inlinedAt: !227)
!233 = !DILocation(line: 993, column: 43, scope: !171, inlinedAt: !227)
!234 = !DILocation(line: 993, column: 10, scope: !171, inlinedAt: !227)
!235 = !DILocation(line: 1020, column: 14, scope: !160, inlinedAt: !221)
!236 = !DILocation(line: 25, column: 14, scope: !237, inlinedAt: !238)
!237 = distinct !DISubprogram(name: "operator()<float>", scope: !166, file: !166, line: 24, type: !7, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!238 = distinct !DILocation(line: 95, column: 11, scope: !223, inlinedAt: !224)
!239 = !DILocation(line: 1018, column: 9, scope: !160, inlinedAt: !240)
!240 = distinct !DILocation(line: 338, column: 10, scope: !162, inlinedAt: !241)
!241 = distinct !DILocation(line: 95, column: 24, scope: !242, inlinedAt: !243)
!242 = distinct !DISubprogram(name: "run<float>", scope: !166, file: !166, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!243 = distinct !DILocation(line: 100, column: 14, scope: !223, inlinedAt: !224)
!244 = !DILocation(line: 171, column: 37, scope: !169, inlinedAt: !245)
!245 = distinct !DILocation(line: 990, column: 14, scope: !171, inlinedAt: !246)
!246 = distinct !DILocation(line: 1019, column: 11, scope: !160, inlinedAt: !240)
!247 = !DILocation(line: 171, column: 10, scope: !169, inlinedAt: !245)
!248 = !DILocation(line: 991, column: 20, scope: !171, inlinedAt: !246)
!249 = !DILocation(line: 992, column: 36, scope: !171, inlinedAt: !246)
!250 = !DILocation(line: 992, column: 17, scope: !171, inlinedAt: !246)
!251 = !DILocation(line: 992, column: 11, scope: !171, inlinedAt: !246)
!252 = !DILocation(line: 993, column: 43, scope: !171, inlinedAt: !246)
!253 = !DILocation(line: 993, column: 10, scope: !171, inlinedAt: !246)
!254 = !DILocation(line: 1020, column: 14, scope: !160, inlinedAt: !240)
!255 = !DILocation(line: 25, column: 14, scope: !237, inlinedAt: !256)
!256 = distinct !DILocation(line: 95, column: 11, scope: !242, inlinedAt: !243)
!257 = !DILocation(line: 106, column: 22, scope: !40)
!258 = !DILocation(line: 106, column: 11, scope: !40)
!259 = !DILocation(line: 109, column: 40, scope: !40)
!260 = !DILocation(line: 1007, column: 10, scope: !77, inlinedAt: !261)
!261 = distinct !DILocation(line: 1077, column: 18, scope: !80, inlinedAt: !262)
!262 = distinct !DILocation(line: 1295, column: 23, scope: !82, inlinedAt: !263)
!263 = distinct !DILocation(line: 112, column: 29, scope: !40)
!264 = !{!265, !267}
!265 = distinct !{!265, !266, !"_ZL17__floats2half2_rnff: %agg.result"}
!266 = distinct !{!266, !"_ZL17__floats2half2_rnff"}
!267 = distinct !{!267, !268, !"_ZL17__float22half2_rn6float2: %agg.result"}
!268 = distinct !{!268, !"_ZL17__float22half2_rn6float2"}
!269 = !DILocation(line: 1007, column: 10, scope: !77, inlinedAt: !270)
!270 = distinct !DILocation(line: 1077, column: 38, scope: !80, inlinedAt: !262)
!271 = !DILocation(line: 593, column: 26, scope: !272, inlinedAt: !273)
!272 = distinct !DISubprogram(name: "operator=", scope: !78, file: !78, line: 592, type: !7, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!273 = distinct !DILocation(line: 112, column: 27, scope: !40)
!274 = !DILocation(line: 1007, column: 10, scope: !77, inlinedAt: !275)
!275 = distinct !DILocation(line: 1077, column: 18, scope: !80, inlinedAt: !276)
!276 = distinct !DILocation(line: 1295, column: 23, scope: !82, inlinedAt: !277)
!277 = distinct !DILocation(line: 113, column: 29, scope: !40)
!278 = !{!279, !281}
!279 = distinct !{!279, !280, !"_ZL17__floats2half2_rnff: %agg.result"}
!280 = distinct !{!280, !"_ZL17__floats2half2_rnff"}
!281 = distinct !{!281, !282, !"_ZL17__float22half2_rn6float2: %agg.result"}
!282 = distinct !{!282, !"_ZL17__float22half2_rn6float2"}
!283 = !DILocation(line: 1007, column: 10, scope: !77, inlinedAt: !284)
!284 = distinct !DILocation(line: 1077, column: 38, scope: !80, inlinedAt: !276)
!285 = !DILocation(line: 593, column: 26, scope: !272, inlinedAt: !286)
!286 = distinct !DILocation(line: 113, column: 27, scope: !40)
!287 = !DILocation(line: 115, column: 11, scope: !40)
!288 = !DILocation(line: 118, column: 30, scope: !40)
!289 = !DILocation(line: 118, column: 46, scope: !40)
!290 = !DILocation(line: 118, column: 27, scope: !40)
!291 = !DILocation(line: 125, column: 13, scope: !40)
!292 = !DILocation(line: 126, column: 35, scope: !40)
!293 = !DILocation(line: 126, column: 21, scope: !40)
!294 = !DILocation(line: 127, column: 9, scope: !40)
!295 = !DILocation(line: 138, column: 196, scope: !40)
!296 = !DILocation(line: 136, column: 38, scope: !40)
!297 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !298)
!298 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !299)
!299 = distinct !DILocation(line: 140, column: 7, scope: !40)
!300 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !298)
!301 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !298)
!302 = !DILocation(line: 143, column: 38, scope: !40)
!303 = !DILocation(line: 147, column: 43, scope: !40)
!304 = !DILocation(line: 152, column: 5, scope: !40)
!305 = !DILocation(line: 40, column: 40, scope: !40)
!306 = !DILocation(line: 40, column: 35, scope: !40)
!307 = distinct !{!307, !68, !308, !32}
!308 = !DILocation(line: 153, column: 3, scope: !40)
