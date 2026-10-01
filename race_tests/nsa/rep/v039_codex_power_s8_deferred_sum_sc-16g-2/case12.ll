; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v039_codex_power_s8_deferred_sum_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v039_codex_power_s8_deferred_sum_sc-16g-2/codegen/case12.device.cpp"
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
  %add211016 = and i32 %mul11, 32
  %shr181017 = add nuw nsw i32 %add211016, %2
  %mul23 = and i32 %shr181017, 32
  %add311018 = and i32 %mul11, 16
  %and261019 = add nuw nsw i32 %add311018, %2
  %mul33 = and i32 %and261019, 16
  %and361021 = mul nuw nsw i32 %2, 9
  %mul42 = and i32 %and361021, 8
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
  %14 = or disjoint i32 %13, %add69, !dbg !64
  %15 = or disjoint i32 %14, %mul60, !dbg !65
  %add82.1 = xor i32 %15, 16, !dbg !65
  %add.ptr84.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add82.1, !dbg !66
  %16 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !67
  %add58.2 = shl nuw nsw i32 %and55, 5, !dbg !62
  %17 = and i32 %add58.2, 32, !dbg !62
  %mul60.2 = xor i32 %17, 32, !dbg !62
  %add66.2 = shl nuw nsw i32 %and63, 4, !dbg !63
  %mul68.2 = and i32 %add66.2, 16, !dbg !63
  %add77.2 = or disjoint i32 %add69, %mul68.2, !dbg !64
  %add82.2 = or disjoint i32 %add77.2, %mul60.2, !dbg !65
  %add.ptr84.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add82.2, !dbg !66
  %18 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !67
  %add66.3 = shl nuw nsw i32 %and63, 4, !dbg !63
  %19 = and i32 %add66.3, 16, !dbg !63
  %20 = or disjoint i32 %19, %add69, !dbg !64
  %21 = or disjoint i32 %20, %mul60.2, !dbg !65
  %add82.3 = xor i32 %21, 16, !dbg !65
  %add.ptr84.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add82.3, !dbg !66
  %22 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !67
  %mul112 = shl nsw i32 %0, 13
  %mul114 = shl nsw i32 %1, 3
  %add115 = add nuw nsw i32 %mul112, %mul114
  %shr185 = lshr i32 %2, 3
  %conv205 = zext nneg i32 %0 to i64
  %mul214 = zext nneg i32 %mul11 to i64
  %invariant.gep1142 = getelementptr %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul214
  %mul345 = and i32 %and55, 252
  %shr598 = lshr i32 %2, 4
  %invariant.op1152 = sub nuw nsw i32 256, %shr598
  %mul620 = shl nuw nsw i64 %conv205, 16
  %23 = shl nuw nsw i32 %2, 4
  %24 = and i32 %23, 16128
  %mul624 = zext nneg i32 %24 to i64
  %add625 = or disjoint i64 %mul620, %mul624
  %25 = shl nuw nsw i32 %2, 2
  %26 = and i32 %25, 60
  %mul634 = zext nneg i32 %26 to i64
  %add627 = or disjoint i64 %add625, %mul634
  %mul680 = and i32 %23, 240
  %shr686 = and i32 %and55, 3
  %xor = xor i32 %shr686, %shr598
  %and707 = shl nuw nsw i32 %2, 8
  %mul708 = and i32 %and707, 768
  %mul714 = and i32 %25, 48
  %and720 = and i32 %2, 3
  %27 = xor i32 %shr598, %and720
  %28 = zext nneg i32 %add115 to i64, !dbg !68
  %.idx1162 = shl nuw nsw i64 %conv205, 17
  %condval_2.sroa.5.0.add.ptr275.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4
  %condval_2.sroa.6.0.add.ptr275.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8
  %condval_2.sroa.7.0.add.ptr275.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12
  %.idx1162.1 = shl nuw nsw i64 %conv205, 17
  %condval_2.sroa.5.0.add.ptr275.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4
  %condval_2.sroa.6.0.add.ptr275.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8
  %condval_2.sroa.7.0.add.ptr275.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12
  %.idx1162.11178 = shl nuw nsw i64 %conv205, 17
  %condval_2.sroa.5.0.add.ptr275.sroa_idx.11192 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4
  %condval_2.sroa.6.0.add.ptr275.sroa_idx.11193 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8
  %condval_2.sroa.7.0.add.ptr275.sroa_idx.11194 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12
  %.idx1162.1.1 = shl nuw nsw i64 %conv205, 17
  %condval_2.sroa.5.0.add.ptr275.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4
  %condval_2.sroa.6.0.add.ptr275.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8
  %condval_2.sroa.7.0.add.ptr275.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12
  %29 = getelementptr %struct.__half, ptr addrspace(4) %V.coerce, i64 %add627
  %30 = getelementptr %struct.__half, ptr addrspace(4) %V.coerce, i64 %add627
  %31 = getelementptr %struct.__half, ptr addrspace(4) %V.coerce, i64 %add627
  %32 = getelementptr %struct.__half, ptr addrspace(4) %V.coerce, i64 %add627
  %33 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul680
  %.idx1116 = shl nuw nsw i32 %xor, 3
  %34 = getelementptr inbounds i8, ptr addrspace(3) %33, i32 %.idx1116
  %add.ptr692 = getelementptr inbounds i8, ptr addrspace(3) %34, i32 2048
  %add681.1 = or disjoint i32 %mul680, 256
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add681.1
  %xor687.1 = shl nuw nsw i32 %xor, 3
  %.idx1116.1 = xor i32 %xor687.1, 8
  %36 = getelementptr inbounds i8, ptr addrspace(3) %35, i32 %.idx1116.1
  %add.ptr692.1 = getelementptr inbounds i8, ptr addrspace(3) %36, i32 2048
  %add681.2 = or disjoint i32 %mul680, 512
  %37 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add681.2
  %xor687.2 = shl nuw nsw i32 %xor, 3
  %.idx1116.2 = xor i32 %xor687.2, 16
  %38 = getelementptr inbounds i8, ptr addrspace(3) %37, i32 %.idx1116.2
  %add.ptr692.2 = getelementptr inbounds i8, ptr addrspace(3) %38, i32 2048
  %add681.3 = or disjoint i32 %mul680, 768
  %39 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add681.3
  %xor687.3 = shl nuw nsw i32 %xor, 3
  %.idx1116.3 = xor i32 %xor687.3, 24
  %40 = getelementptr inbounds i8, ptr addrspace(3) %39, i32 %.idx1116.3
  %add.ptr692.3 = getelementptr inbounds i8, ptr addrspace(3) %40, i32 2048
  %add715 = or disjoint i32 %mul708, %mul714
  %41 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add715
  %.idx1115 = shl nuw nsw i32 %27, 3
  %42 = getelementptr inbounds i8, ptr addrspace(3) %41, i32 %.idx1115
  %add.ptr726 = getelementptr inbounds i8, ptr addrspace(3) %42, i32 2048
  %add710.1 = or disjoint i32 %mul708, %mul714
  %add715.1 = or disjoint i32 %add710.1, 64
  %43 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add715.1
  %xor721.1 = shl nuw nsw i32 %27, 3
  %.idx1115.1 = xor i32 %xor721.1, 8
  %44 = getelementptr inbounds i8, ptr addrspace(3) %43, i32 %.idx1115.1
  %add.ptr726.1 = getelementptr inbounds i8, ptr addrspace(3) %44, i32 2048
  %add710.2 = or disjoint i32 %mul708, %mul714
  %add715.2 = or disjoint i32 %add710.2, 128
  %45 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add715.2
  %xor721.2 = shl nuw nsw i32 %27, 3
  %.idx1115.2 = xor i32 %xor721.2, 16
  %46 = getelementptr inbounds i8, ptr addrspace(3) %45, i32 %.idx1115.2
  %add.ptr726.2 = getelementptr inbounds i8, ptr addrspace(3) %46, i32 2048
  %add710.3 = or disjoint i32 %mul708, %mul714
  %add715.3 = or disjoint i32 %add710.3, 192
  %47 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add715.3
  %xor721.3 = shl nuw nsw i32 %27, 3
  %.idx1115.3 = xor i32 %xor721.3, 24
  %48 = getelementptr inbounds i8, ptr addrspace(3) %47, i32 %.idx1115.3
  %add.ptr726.3 = getelementptr inbounds i8, ptr addrspace(3) %48, i32 2048
  %49 = getelementptr %struct.__half, ptr addrspace(4) %V.coerce, i64 %add627
  %50 = getelementptr %struct.__half, ptr addrspace(4) %V.coerce, i64 %add627
  %51 = getelementptr %struct.__half, ptr addrspace(4) %V.coerce, i64 %add627
  %52 = getelementptr %struct.__half, ptr addrspace(4) %V.coerce, i64 %add627
  %53 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul680
  %.idx1116.11260 = shl nuw nsw i32 %xor, 3
  %54 = getelementptr inbounds i8, ptr addrspace(3) %53, i32 %.idx1116.11260
  %add.ptr692.11261 = getelementptr inbounds i8, ptr addrspace(3) %54, i32 2048
  %add681.1.1 = or disjoint i32 %mul680, 256
  %55 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add681.1.1
  %xor687.1.1 = shl nuw nsw i32 %xor, 3
  %.idx1116.1.1 = xor i32 %xor687.1.1, 8
  %56 = getelementptr inbounds i8, ptr addrspace(3) %55, i32 %.idx1116.1.1
  %add.ptr692.1.1 = getelementptr inbounds i8, ptr addrspace(3) %56, i32 2048
  %add681.2.1 = or disjoint i32 %mul680, 512
  %57 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add681.2.1
  %xor687.2.1 = shl nuw nsw i32 %xor, 3
  %.idx1116.2.1 = xor i32 %xor687.2.1, 16
  %58 = getelementptr inbounds i8, ptr addrspace(3) %57, i32 %.idx1116.2.1
  %add.ptr692.2.1 = getelementptr inbounds i8, ptr addrspace(3) %58, i32 2048
  %add681.3.1 = or disjoint i32 %mul680, 768
  %59 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add681.3.1
  %xor687.3.1 = shl nuw nsw i32 %xor, 3
  %.idx1116.3.1 = xor i32 %xor687.3.1, 24
  %60 = getelementptr inbounds i8, ptr addrspace(3) %59, i32 %.idx1116.3.1
  %add.ptr692.3.1 = getelementptr inbounds i8, ptr addrspace(3) %60, i32 2048
  %add715.11263 = or disjoint i32 %mul708, %mul714
  %61 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add715.11263
  %.idx1115.11264 = shl nuw nsw i32 %27, 3
  %62 = getelementptr inbounds i8, ptr addrspace(3) %61, i32 %.idx1115.11264
  %add.ptr726.11265 = getelementptr inbounds i8, ptr addrspace(3) %62, i32 2048
  %add710.1.1 = or disjoint i32 %mul708, %mul714
  %add715.1.1 = or disjoint i32 %add710.1.1, 64
  %63 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add715.1.1
  %xor721.1.1 = shl nuw nsw i32 %27, 3
  %.idx1115.1.1 = xor i32 %xor721.1.1, 8
  %64 = getelementptr inbounds i8, ptr addrspace(3) %63, i32 %.idx1115.1.1
  %add.ptr726.1.1 = getelementptr inbounds i8, ptr addrspace(3) %64, i32 2048
  %add710.2.1 = or disjoint i32 %mul708, %mul714
  %add715.2.1 = or disjoint i32 %add710.2.1, 128
  %65 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add715.2.1
  %xor721.2.1 = shl nuw nsw i32 %27, 3
  %.idx1115.2.1 = xor i32 %xor721.2.1, 16
  %66 = getelementptr inbounds i8, ptr addrspace(3) %65, i32 %.idx1115.2.1
  %add.ptr726.2.1 = getelementptr inbounds i8, ptr addrspace(3) %66, i32 2048
  %add710.3.1 = or disjoint i32 %mul708, %mul714
  %add715.3.1 = or disjoint i32 %add710.3.1, 192
  %67 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add715.3.1
  %xor721.3.1 = shl nuw nsw i32 %27, 3
  %.idx1115.3.1 = xor i32 %xor721.3.1, 24
  %68 = getelementptr inbounds i8, ptr addrspace(3) %67, i32 %.idx1115.3.1
  %add.ptr726.3.1 = getelementptr inbounds i8, ptr addrspace(3) %68, i32 2048
  %arrayidx118 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %28, !dbg !69
  %69 = load i32, ptr addrspace(1) %arrayidx118, align 4, !dbg !69, !tbaa !30
  %mul119 = shl nsw i32 %69, 4, !dbg !70
  %70 = or disjoint i64 %28, 1, !dbg !71
  %arrayidx129 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %70, !dbg !72
  %71 = load i32, ptr addrspace(1) %arrayidx129, align 4, !dbg !72, !tbaa !30
  %mul130 = shl nsw i32 %71, 4, !dbg !73
  %cmp131 = icmp slt i32 %69, 0, !dbg !74
  %cmp133.not = icmp sgt i32 %mul119, %1
  %or.cond1107 = select i1 %cmp131, i1 true, i1 %cmp133.not, !dbg !75
  br i1 %or.cond1107, label %lor.lhs.false, label %if.then, !dbg !75

lor.lhs.false:                                    ; preds = %entry
  %cmp134 = icmp slt i32 %71, 0, !dbg !76
  %cmp137.not = icmp sgt i32 %mul130, %1
  %or.cond1108 = select i1 %cmp134, i1 true, i1 %cmp137.not, !dbg !77
  br i1 %or.cond1108, label %if.end756, label %if.then, !dbg !77

if.then:                                          ; preds = %lor.lhs.false, %entry
  %or.cond1109 = icmp ugt i32 %mul119, %1, !dbg !78
  br i1 %or.cond1109, label %if.end517, label %if.then175, !dbg !78

if.then175:                                       ; preds = %if.then
  fence syncscope("warp") release, !dbg !79
  tail call void @llvm.mxc.barrier.warp(), !dbg !82
  fence syncscope("warp") acquire, !dbg !83
  %add186 = add nsw i32 %mul119, %shr185
  %shr187 = ashr i32 %add186, 3
  %condval_5.0 = sext i32 %mul119 to i64
  %.idx = shl nsw i64 %condval_5.0, 7
  %gep = getelementptr i8, ptr addrspace(4) %invariant.gep1142, i64 %.idx, !dbg !84
  %72 = icmp slt i32 %shr187, 128, !dbg !85
  br i1 %72, label %if.then190, label %if.end240, !dbg !86

if.then190:                                       ; preds = %if.then175
  %73 = getelementptr i8, ptr addrspace(4) %gep, i64 %.idx1162, !dbg !87
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %73, align 16, !dbg !88, !tbaa !30
  %condval_2.sroa.5.0.add.ptr216.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %73, i64 4, !dbg !88
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr216.sroa_idx, align 4, !dbg !88, !tbaa !30
  %condval_2.sroa.6.0.add.ptr216.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %73, i64 8, !dbg !88
  %condval_2.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr216.sroa_idx, align 8, !dbg !88, !tbaa !30
  %condval_2.sroa.7.0.add.ptr216.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %73, i64 12, !dbg !88
  %condval_2.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr216.sroa_idx, align 4, !dbg !88, !tbaa !30
  br label %if.end240, !dbg !89

if.end240:                                        ; preds = %if.then175, %if.then190
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then190 ], [ 0, %if.then175 ], !dbg !90
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then190 ], [ 0, %if.then175 ], !dbg !90
  %condval_2.sroa.6.0 = phi i32 [ %condval_2.sroa.6.0.copyload, %if.then190 ], [ 0, %if.then175 ], !dbg !90
  %condval_2.sroa.7.0 = phi i32 [ %condval_2.sroa.7.0.copyload, %if.then190 ], [ 0, %if.then175 ], !dbg !90
  store i32 %condval_2.sroa.0.0, ptr addrspace(3) %add.ptr45, align 16, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.5.0, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr275.sroa_idx, align 4, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.6.0, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr275.sroa_idx, align 8, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.7.0, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr275.sroa_idx, align 4, !dbg !91, !tbaa !30
  %74 = icmp slt i32 %shr187, 127, !dbg !85
  br i1 %74, label %if.then190.1, label %if.end240.1, !dbg !86

if.then190.1:                                     ; preds = %if.end240
  %75 = getelementptr i8, ptr addrspace(4) %gep, i64 %.idx1162.1, !dbg !87
  %gep1129.1 = getelementptr i8, ptr addrspace(4) %75, i64 1024, !dbg !87
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep1129.1, align 16, !dbg !88, !tbaa !30
  %condval_2.sroa.5.0.add.ptr216.sroa_idx.1 = getelementptr i8, ptr addrspace(4) %75, i64 1028, !dbg !88
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr216.sroa_idx.1, align 4, !dbg !88, !tbaa !30
  %condval_2.sroa.6.0.add.ptr216.sroa_idx.1 = getelementptr i8, ptr addrspace(4) %75, i64 1032, !dbg !88
  %condval_2.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr216.sroa_idx.1, align 8, !dbg !88, !tbaa !30
  %condval_2.sroa.7.0.add.ptr216.sroa_idx.1 = getelementptr i8, ptr addrspace(4) %75, i64 1036, !dbg !88
  %condval_2.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr216.sroa_idx.1, align 4, !dbg !88, !tbaa !30
  br label %if.end240.1, !dbg !89

if.end240.1:                                      ; preds = %if.then190.1, %if.end240
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then190.1 ], [ 0, %if.end240 ], !dbg !90
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then190.1 ], [ 0, %if.end240 ], !dbg !90
  %condval_2.sroa.6.0.1 = phi i32 [ %condval_2.sroa.6.0.copyload.1, %if.then190.1 ], [ 0, %if.end240 ], !dbg !90
  %condval_2.sroa.7.0.1 = phi i32 [ %condval_2.sroa.7.0.copyload.1, %if.then190.1 ], [ 0, %if.end240 ], !dbg !90
  store i32 %condval_2.sroa.0.0.1, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.5.0.1, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr275.sroa_idx.1, align 4, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.6.0.1, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr275.sroa_idx.1, align 8, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.7.0.1, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr275.sroa_idx.1, align 4, !dbg !91, !tbaa !30
  fence syncscope("warp") release, !dbg !92
  tail call void @llvm.mxc.barrier.warp(), !dbg !95
  fence syncscope("warp") acquire, !dbg !96
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !97
  %76 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %12, <4 x float> zeroinitializer), !dbg !98
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !97
  %77 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %16, <4 x float> %76), !dbg !98
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !97
  %78 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %18, <4 x float> %77), !dbg !98
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !97
  %79 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %22, <4 x float> %78), !dbg !98
  %add346 = add nsw i32 %mul119, %mul345
  %cmp349.not = icmp sgt i32 %add346, %1, !dbg !99
  %scores.sroa.0.0.vec.extract1470 = extractelement <4 x float> %79, i64 0
  %spec.select = select i1 %cmp349.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1470, !dbg !100
  %cmp349.not.1.not = icmp slt i32 %add346, %1, !dbg !99
  %scores.sroa.0.4.vec.extract1507 = extractelement <4 x float> %79, i64 1, !dbg !100
  %condval_6.0.1 = select i1 %cmp349.not.1.not, float %scores.sroa.0.4.vec.extract1507, float 0xFFF0000000000000, !dbg !100
  %add347.2 = or disjoint i32 %add346, 2, !dbg !101
  %cmp349.not.2 = icmp sgt i32 %add347.2, %1, !dbg !99
  %scores.sroa.0.8.vec.extract1540 = extractelement <4 x float> %79, i64 2, !dbg !100
  %condval_6.0.2 = select i1 %cmp349.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1540, !dbg !100
  %add347.3 = or disjoint i32 %add346, 3, !dbg !101
  %cmp349.not.3 = icmp sgt i32 %add347.3, %1, !dbg !99
  %scores.sroa.0.12.vec.extract1573 = extractelement <4 x float> %79, i64 3, !dbg !100
  %condval_6.0.3 = select i1 %cmp349.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1573, !dbg !100
  %80 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !102
  %81 = tail call contract noundef float @llvm.maxnum.f32(float %80, float %condval_6.0.1), !dbg !102
  %82 = tail call contract noundef float @llvm.maxnum.f32(float %81, float %condval_6.0.2), !dbg !102
  %83 = tail call contract noundef float @llvm.maxnum.f32(float %82, float %condval_6.0.3), !dbg !102
  %84 = bitcast float %83 to i32, !dbg !106
  %85 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !115
  %86 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %85) #11, !dbg !120
  %xor.i.i.i = xor i32 %86, 32, !dbg !121
  %87 = and i32 %86, -64, !dbg !122
  %and.i.i.i = add nsw i32 %87, 64, !dbg !122
  %cmp.not.i.i.i = icmp slt i32 %xor.i.i.i, %and.i.i.i, !dbg !123
  %cond.i.i.i = select i1 %cmp.not.i.i.i, i32 %xor.i.i.i, i32 %86, !dbg !124
  %shl.i.i.i = shl i32 %cond.i.i.i, 2, !dbg !125
  %88 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i, i32 %84), !dbg !126
  %89 = bitcast i32 %88 to float, !dbg !127
  %90 = tail call contract noundef float @llvm.maxnum.f32(float %83, float %89), !dbg !128
  %91 = bitcast float %90 to i32, !dbg !136
  %92 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !141
  %93 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %92) #11, !dbg !144
  %xor.i.i.i.i = xor i32 %93, 16, !dbg !145
  %94 = and i32 %93, -64, !dbg !146
  %and.i.i.i.i = add nsw i32 %94, 64, !dbg !146
  %cmp.not.i.i.i.i = icmp slt i32 %xor.i.i.i.i, %and.i.i.i.i, !dbg !147
  %cond.i.i.i.i = select i1 %cmp.not.i.i.i.i, i32 %xor.i.i.i.i, i32 %93, !dbg !148
  %shl.i.i.i.i = shl i32 %cond.i.i.i.i, 2, !dbg !149
  %95 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i, i32 %91), !dbg !150
  %96 = bitcast i32 %95 to float, !dbg !151
  %97 = tail call contract noundef float @llvm.maxnum.f32(float %90, float %96), !dbg !152
  %sub = fadd contract float %97, 0x7FF0000000000000, !dbg !156
  %mul385 = fmul contract float %sub, 0x3FC7154760000000, !dbg !157
  %cmp386 = fcmp contract ogt float %mul385, 7.000000e+00, !dbg !158
  %sub390 = fsub contract float 0xFFF0000000000000, %97
  %mul391 = fmul contract float %sub390, 0x3FC7154760000000
  %cmp.i.i = fcmp contract olt float %mul391, -1.260000e+02
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00
  %cond.i.i = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00
  %add.i.i = fadd contract float %mul391, %cond.i.i
  %98 = tail call contract float @llvm.exp2.f32(float %add.i.i)
  %mul.i.i = fmul contract float %cond2.i.i, %98
  %rescale.sroa.0.0 = select i1 %cmp386, float %mul.i.i, float 1.000000e+00, !dbg !159
  %cmp422 = fcmp contract une float %rescale.sroa.0.0, 1.000000e+00
  %normalizer.sroa.0.2 = select i1 %cmp386, float %97, float 0xFFF0000000000000, !dbg !159
  %sub406.3 = fsub contract float %condval_6.0.3, %normalizer.sroa.0.2, !dbg !160
  %mul407.3 = fmul contract float %sub406.3, 0x3FC7154760000000, !dbg !161
  %add408.3 = fadd contract float %mul407.3, 8.000000e+00, !dbg !162
  %cmp.i.i1056.3 = fcmp contract olt float %add408.3, -1.260000e+02, !dbg !163
  %cond2.i.i1059.3 = select contract i1 %cmp.i.i1056.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %cond.i.i1057.3 = select contract i1 %cmp.i.i1056.3, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.3 = fadd contract float %add408.3, %cond.i.i1057.3, !dbg !163
  %99 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.3), !dbg !163
  %mul.i.i1060.3 = fmul contract float %cond2.i.i1059.3, %99, !dbg !163
  %sub406 = fsub contract float %spec.select, %normalizer.sroa.0.2, !dbg !160
  %mul407 = fmul contract float %sub406, 0x3FC7154760000000, !dbg !161
  %add408 = fadd contract float %mul407, 8.000000e+00, !dbg !162
  %cmp.i.i1056 = fcmp contract olt float %add408, -1.260000e+02, !dbg !163
  %cond2.i.i1059 = select contract i1 %cmp.i.i1056, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %cond.i.i1057 = select contract i1 %cmp.i.i1056, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058 = fadd contract float %add408, %cond.i.i1057, !dbg !163
  %100 = tail call contract float @llvm.exp2.f32(float %add.i.i1058), !dbg !163
  %mul.i.i1060 = fmul contract float %cond2.i.i1059, %100, !dbg !163
  %sub406.1 = fsub contract float %condval_6.0.1, %normalizer.sroa.0.2, !dbg !160
  %mul407.1 = fmul contract float %sub406.1, 0x3FC7154760000000, !dbg !161
  %add408.1 = fadd contract float %mul407.1, 8.000000e+00, !dbg !162
  %cmp.i.i1056.1 = fcmp contract olt float %add408.1, -1.260000e+02, !dbg !163
  %cond2.i.i1059.1 = select contract i1 %cmp.i.i1056.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %cond.i.i1057.1 = select contract i1 %cmp.i.i1056.1, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.1 = fadd contract float %add408.1, %cond.i.i1057.1, !dbg !163
  %101 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.1), !dbg !163
  %mul.i.i1060.1 = fmul contract float %cond2.i.i1059.1, %101, !dbg !163
  %sub406.2 = fsub contract float %condval_6.0.2, %normalizer.sroa.0.2, !dbg !160
  %mul407.2 = fmul contract float %sub406.2, 0x3FC7154760000000, !dbg !161
  %add408.2 = fadd contract float %mul407.2, 8.000000e+00, !dbg !162
  %cmp.i.i1056.2 = fcmp contract olt float %add408.2, -1.260000e+02, !dbg !163
  %cond2.i.i1059.2 = select contract i1 %cmp.i.i1056.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %cond.i.i1057.2 = select contract i1 %cmp.i.i1056.2, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.2 = fadd contract float %add408.2, %cond.i.i1057.2, !dbg !163
  %102 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.2), !dbg !163
  %mul.i.i1060.2 = fmul contract float %cond2.i.i1059.2, %102, !dbg !163
  %mul486 = fmul contract float %rescale.sroa.0.0, 0.000000e+00, !dbg !166
  %pair_sum_local.sroa.0.1 = select i1 %cmp422, float %mul486, float 0.000000e+00, !dbg !166
  %add496 = fadd contract float %pair_sum_local.sroa.0.1, %mul.i.i1060, !dbg !167
  %add496.1 = fadd contract float %add496, %mul.i.i1060.1, !dbg !167
  %add496.2 = fadd contract float %add496.1, %mul.i.i1060.2, !dbg !167
  %add496.3 = fadd contract float %add496.2, %mul.i.i1060.3, !dbg !167
  %103 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !168, !noalias !176
  %104 = fptrunc float %mul.i.i1060 to half, !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %103), !dbg !168, !noalias !176
  %105 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %106 = fptrunc float %mul.i.i1060.1 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %105), !dbg !181, !noalias !176
  %107 = bitcast half %104 to i16, !dbg !183
  %108 = bitcast half %106 to i16, !dbg !186
  %109 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !187, !noalias !191
  %110 = fptrunc float %mul.i.i1060.2 to half, !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %109), !dbg !187, !noalias !191
  %111 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !196
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !196, !noalias !191
  %112 = fptrunc float %mul.i.i1060.3 to half, !dbg !196
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %111), !dbg !196, !noalias !191
  %113 = bitcast half %110 to i16, !dbg !198
  %114 = bitcast half %112 to i16, !dbg !200
  %__4.sroa.6.0.insert.ext = zext i16 %114 to i64, !dbg !201
  %__4.sroa.6.0.insert.shift = shl nuw i64 %__4.sroa.6.0.insert.ext, 48, !dbg !201
  %__4.sroa.5.0.insert.ext = zext i16 %113 to i64, !dbg !201
  %__4.sroa.5.0.insert.shift = shl nuw nsw i64 %__4.sroa.5.0.insert.ext, 32, !dbg !201
  %__4.sroa.5.0.insert.insert = or disjoint i64 %__4.sroa.6.0.insert.shift, %__4.sroa.5.0.insert.shift, !dbg !201
  %__4.sroa.4.0.insert.ext = zext i16 %108 to i64, !dbg !201
  %__4.sroa.4.0.insert.shift = shl nuw nsw i64 %__4.sroa.4.0.insert.ext, 16, !dbg !201
  %__4.sroa.4.0.insert.insert = or disjoint i64 %__4.sroa.5.0.insert.insert, %__4.sroa.4.0.insert.shift, !dbg !201
  %__4.sroa.0.0.insert.ext = zext i16 %107 to i64, !dbg !201
  %__4.sroa.0.0.insert.insert = or disjoint i64 %__4.sroa.4.0.insert.insert, %__4.sroa.0.0.insert.ext, !dbg !201
  %115 = bitcast i64 %__4.sroa.0.0.insert.insert to <2 x i32>, !dbg !201
  br label %if.end517, !dbg !202

if.end517:                                        ; preds = %if.end240.1, %if.then
  %probability_pair.sroa.0.4 = phi <2 x i32> [ zeroinitializer, %if.then ], [ %115, %if.end240.1 ], !dbg !90
  %pair_sum_local.sroa.0.3 = phi float [ 0.000000e+00, %if.then ], [ %add496.3, %if.end240.1 ], !dbg !90
  %pair_rescale.sroa.0.1 = phi float [ 1.000000e+00, %if.then ], [ %rescale.sroa.0.0, %if.end240.1 ], !dbg !90
  %normalizer.sroa.0.3 = phi float [ 0xFFF0000000000000, %if.then ], [ %normalizer.sroa.0.2, %if.end240.1 ], !dbg !90
  %or.cond1109.1 = icmp ugt i32 %mul130, %1, !dbg !78
  br i1 %or.cond1109.1, label %if.end517.1, label %if.then175.1, !dbg !78

if.then175.1:                                     ; preds = %if.end517
  fence syncscope("warp") release, !dbg !79
  tail call void @llvm.mxc.barrier.warp(), !dbg !82
  fence syncscope("warp") acquire, !dbg !83
  %add186.1 = add nsw i32 %mul130, %shr185
  %shr187.1 = ashr i32 %add186.1, 3
  %condval_5.0.1 = sext i32 %mul130 to i64
  %.idx.1 = shl nsw i64 %condval_5.0.1, 7
  %gep.1 = getelementptr i8, ptr addrspace(4) %invariant.gep1142, i64 %.idx.1, !dbg !84
  %116 = icmp slt i32 %shr187.1, 128, !dbg !85
  br i1 %116, label %if.then190.11186, label %if.end240.11195, !dbg !86

if.then190.11186:                                 ; preds = %if.then175.1
  %117 = getelementptr i8, ptr addrspace(4) %gep.1, i64 %.idx1162.11178, !dbg !87
  %condval_2.sroa.0.0.copyload.11179 = load i32, ptr addrspace(4) %117, align 16, !dbg !88, !tbaa !30
  %condval_2.sroa.5.0.add.ptr216.sroa_idx.11180 = getelementptr inbounds i8, ptr addrspace(4) %117, i64 4, !dbg !88
  %condval_2.sroa.5.0.copyload.11181 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr216.sroa_idx.11180, align 4, !dbg !88, !tbaa !30
  %condval_2.sroa.6.0.add.ptr216.sroa_idx.11182 = getelementptr inbounds i8, ptr addrspace(4) %117, i64 8, !dbg !88
  %condval_2.sroa.6.0.copyload.11183 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr216.sroa_idx.11182, align 8, !dbg !88, !tbaa !30
  %condval_2.sroa.7.0.add.ptr216.sroa_idx.11184 = getelementptr inbounds i8, ptr addrspace(4) %117, i64 12, !dbg !88
  %condval_2.sroa.7.0.copyload.11185 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr216.sroa_idx.11184, align 4, !dbg !88, !tbaa !30
  br label %if.end240.11195, !dbg !89

if.end240.11195:                                  ; preds = %if.then190.11186, %if.then175.1
  %condval_2.sroa.0.0.11187 = phi i32 [ %condval_2.sroa.0.0.copyload.11179, %if.then190.11186 ], [ 0, %if.then175.1 ], !dbg !90
  %condval_2.sroa.5.0.11188 = phi i32 [ %condval_2.sroa.5.0.copyload.11181, %if.then190.11186 ], [ 0, %if.then175.1 ], !dbg !90
  %condval_2.sroa.6.0.11189 = phi i32 [ %condval_2.sroa.6.0.copyload.11183, %if.then190.11186 ], [ 0, %if.then175.1 ], !dbg !90
  %condval_2.sroa.7.0.11190 = phi i32 [ %condval_2.sroa.7.0.copyload.11185, %if.then190.11186 ], [ 0, %if.then175.1 ], !dbg !90
  store i32 %condval_2.sroa.0.0.11187, ptr addrspace(3) %add.ptr45, align 16, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.5.0.11188, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr275.sroa_idx.11192, align 4, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.6.0.11189, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr275.sroa_idx.11193, align 8, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.7.0.11190, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr275.sroa_idx.11194, align 4, !dbg !91, !tbaa !30
  %118 = icmp slt i32 %shr187.1, 127, !dbg !85
  br i1 %118, label %if.then190.1.1, label %if.end240.1.1, !dbg !86

if.then190.1.1:                                   ; preds = %if.end240.11195
  %119 = getelementptr i8, ptr addrspace(4) %gep.1, i64 %.idx1162.1.1, !dbg !87
  %gep1129.1.1 = getelementptr i8, ptr addrspace(4) %119, i64 1024, !dbg !87
  %condval_2.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %gep1129.1.1, align 16, !dbg !88, !tbaa !30
  %condval_2.sroa.5.0.add.ptr216.sroa_idx.1.1 = getelementptr i8, ptr addrspace(4) %119, i64 1028, !dbg !88
  %condval_2.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr216.sroa_idx.1.1, align 4, !dbg !88, !tbaa !30
  %condval_2.sroa.6.0.add.ptr216.sroa_idx.1.1 = getelementptr i8, ptr addrspace(4) %119, i64 1032, !dbg !88
  %condval_2.sroa.6.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr216.sroa_idx.1.1, align 8, !dbg !88, !tbaa !30
  %condval_2.sroa.7.0.add.ptr216.sroa_idx.1.1 = getelementptr i8, ptr addrspace(4) %119, i64 1036, !dbg !88
  %condval_2.sroa.7.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr216.sroa_idx.1.1, align 4, !dbg !88, !tbaa !30
  br label %if.end240.1.1, !dbg !89

if.end240.1.1:                                    ; preds = %if.then190.1.1, %if.end240.11195
  %condval_2.sroa.0.0.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1, %if.then190.1.1 ], [ 0, %if.end240.11195 ], !dbg !90
  %condval_2.sroa.5.0.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1, %if.then190.1.1 ], [ 0, %if.end240.11195 ], !dbg !90
  %condval_2.sroa.6.0.1.1 = phi i32 [ %condval_2.sroa.6.0.copyload.1.1, %if.then190.1.1 ], [ 0, %if.end240.11195 ], !dbg !90
  %condval_2.sroa.7.0.1.1 = phi i32 [ %condval_2.sroa.7.0.copyload.1.1, %if.then190.1.1 ], [ 0, %if.end240.11195 ], !dbg !90
  store i32 %condval_2.sroa.0.0.1.1, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.5.0.1.1, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr275.sroa_idx.1.1, align 4, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.6.0.1.1, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr275.sroa_idx.1.1, align 8, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.7.0.1.1, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr275.sroa_idx.1.1, align 4, !dbg !91, !tbaa !30
  fence syncscope("warp") release, !dbg !92
  tail call void @llvm.mxc.barrier.warp(), !dbg !95
  fence syncscope("warp") acquire, !dbg !96
  %k_local.sroa.0.0.copyload.11203 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !97
  %120 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11203, <4 x half> %12, <4 x float> zeroinitializer), !dbg !98
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !97
  %121 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %16, <4 x float> %120), !dbg !98
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !97
  %122 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %18, <4 x float> %121), !dbg !98
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !97
  %123 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %22, <4 x float> %122), !dbg !98
  %add346.1 = add nsw i32 %mul130, %mul345
  %cmp349.not.11204 = icmp sgt i32 %add346.1, %1, !dbg !99
  %scores.sroa.0.0.vec.extract1484 = extractelement <4 x float> %123, i64 0
  %spec.select1775 = select i1 %cmp349.not.11204, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1484, !dbg !100
  %cmp349.not.1.1.not = icmp slt i32 %add346.1, %1, !dbg !99
  %scores.sroa.0.4.vec.extract1519 = extractelement <4 x float> %123, i64 1, !dbg !100
  %condval_6.0.1.1 = select i1 %cmp349.not.1.1.not, float %scores.sroa.0.4.vec.extract1519, float 0xFFF0000000000000, !dbg !100
  %add347.2.1 = or disjoint i32 %add346.1, 2, !dbg !101
  %cmp349.not.2.1 = icmp sgt i32 %add347.2.1, %1, !dbg !99
  %scores.sroa.0.8.vec.extract1552 = extractelement <4 x float> %123, i64 2, !dbg !100
  %condval_6.0.2.1 = select i1 %cmp349.not.2.1, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1552, !dbg !100
  %add347.3.1 = or disjoint i32 %add346.1, 3, !dbg !101
  %cmp349.not.3.1 = icmp sgt i32 %add347.3.1, %1, !dbg !99
  %scores.sroa.0.12.vec.extract1585 = extractelement <4 x float> %123, i64 3, !dbg !100
  %condval_6.0.3.1 = select i1 %cmp349.not.3.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1585, !dbg !100
  %124 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select1775, float 0xFFF0000000000000), !dbg !102
  %125 = tail call contract noundef float @llvm.maxnum.f32(float %124, float %condval_6.0.1.1), !dbg !102
  %126 = tail call contract noundef float @llvm.maxnum.f32(float %125, float %condval_6.0.2.1), !dbg !102
  %127 = tail call contract noundef float @llvm.maxnum.f32(float %126, float %condval_6.0.3.1), !dbg !102
  %128 = bitcast float %127 to i32, !dbg !106
  %129 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !115
  %130 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %129) #11, !dbg !120
  %xor.i.i.i.1 = xor i32 %130, 32, !dbg !121
  %131 = and i32 %130, -64, !dbg !122
  %and.i.i.i.1 = add nsw i32 %131, 64, !dbg !122
  %cmp.not.i.i.i.1 = icmp slt i32 %xor.i.i.i.1, %and.i.i.i.1, !dbg !123
  %cond.i.i.i.1 = select i1 %cmp.not.i.i.i.1, i32 %xor.i.i.i.1, i32 %130, !dbg !124
  %shl.i.i.i.1 = shl i32 %cond.i.i.i.1, 2, !dbg !125
  %132 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.1, i32 %128), !dbg !126
  %133 = bitcast i32 %132 to float, !dbg !127
  %134 = tail call contract noundef float @llvm.maxnum.f32(float %127, float %133), !dbg !128
  %135 = bitcast float %134 to i32, !dbg !136
  %136 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !141
  %137 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %136) #11, !dbg !144
  %xor.i.i.i.i.1 = xor i32 %137, 16, !dbg !145
  %138 = and i32 %137, -64, !dbg !146
  %and.i.i.i.i.1 = add nsw i32 %138, 64, !dbg !146
  %cmp.not.i.i.i.i.1 = icmp slt i32 %xor.i.i.i.i.1, %and.i.i.i.i.1, !dbg !147
  %cond.i.i.i.i.1 = select i1 %cmp.not.i.i.i.i.1, i32 %xor.i.i.i.i.1, i32 %137, !dbg !148
  %shl.i.i.i.i.1 = shl i32 %cond.i.i.i.i.1, 2, !dbg !149
  %139 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.1, i32 %135), !dbg !150
  %140 = bitcast i32 %139 to float, !dbg !151
  %141 = tail call contract noundef float @llvm.maxnum.f32(float %134, float %140), !dbg !152
  %sub.1 = fsub contract float %141, %normalizer.sroa.0.3, !dbg !156
  %mul385.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !157
  %cmp386.1 = fcmp contract ogt float %mul385.1, 7.000000e+00, !dbg !158
  %sub390.1 = fsub contract float %normalizer.sroa.0.3, %141
  %mul391.1 = fmul contract float %sub390.1, 0x3FC7154760000000
  %cmp.i.i.1 = fcmp contract olt float %mul391.1, -1.260000e+02
  %cond.i.i.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00
  %add.i.i.1 = fadd contract float %mul391.1, %cond.i.i.1
  %142 = tail call contract float @llvm.exp2.f32(float %add.i.i.1)
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %142
  %normalizer.sroa.0.2.1 = select i1 %cmp386.1, float %141, float %normalizer.sroa.0.3, !dbg !159
  %sub406.11208 = fsub contract float %spec.select1775, %normalizer.sroa.0.2.1, !dbg !160
  %mul407.11209 = fmul contract float %sub406.11208, 0x3FC7154760000000, !dbg !161
  %add408.11210 = fadd contract float %mul407.11209, 8.000000e+00, !dbg !162
  %cmp.i.i1056.11211 = fcmp contract olt float %add408.11210, -1.260000e+02, !dbg !163
  %cond.i.i1057.11212 = select contract i1 %cmp.i.i1056.11211, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.11213 = fadd contract float %add408.11210, %cond.i.i1057.11212, !dbg !163
  %143 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.11213), !dbg !163
  %cond2.i.i1059.11214 = select contract i1 %cmp.i.i1056.11211, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %mul.i.i1060.11215 = fmul contract float %cond2.i.i1059.11214, %143, !dbg !163
  %sub406.1.1 = fsub contract float %condval_6.0.1.1, %normalizer.sroa.0.2.1, !dbg !160
  %mul407.1.1 = fmul contract float %sub406.1.1, 0x3FC7154760000000, !dbg !161
  %add408.1.1 = fadd contract float %mul407.1.1, 8.000000e+00, !dbg !162
  %cmp.i.i1056.1.1 = fcmp contract olt float %add408.1.1, -1.260000e+02, !dbg !163
  %cond.i.i1057.1.1 = select contract i1 %cmp.i.i1056.1.1, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.1.1 = fadd contract float %add408.1.1, %cond.i.i1057.1.1, !dbg !163
  %144 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.1.1), !dbg !163
  %cond2.i.i1059.1.1 = select contract i1 %cmp.i.i1056.1.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %mul.i.i1060.1.1 = fmul contract float %cond2.i.i1059.1.1, %144, !dbg !163
  %sub406.2.1 = fsub contract float %condval_6.0.2.1, %normalizer.sroa.0.2.1, !dbg !160
  %mul407.2.1 = fmul contract float %sub406.2.1, 0x3FC7154760000000, !dbg !161
  %add408.2.1 = fadd contract float %mul407.2.1, 8.000000e+00, !dbg !162
  %cmp.i.i1056.2.1 = fcmp contract olt float %add408.2.1, -1.260000e+02, !dbg !163
  %cond.i.i1057.2.1 = select contract i1 %cmp.i.i1056.2.1, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.2.1 = fadd contract float %add408.2.1, %cond.i.i1057.2.1, !dbg !163
  %145 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.2.1), !dbg !163
  %cond2.i.i1059.2.1 = select contract i1 %cmp.i.i1056.2.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %mul.i.i1060.2.1 = fmul contract float %cond2.i.i1059.2.1, %145, !dbg !163
  %sub406.3.1 = fsub contract float %condval_6.0.3.1, %normalizer.sroa.0.2.1, !dbg !160
  %mul407.3.1 = fmul contract float %sub406.3.1, 0x3FC7154760000000, !dbg !161
  %add408.3.1 = fadd contract float %mul407.3.1, 8.000000e+00, !dbg !162
  %cmp.i.i1056.3.1 = fcmp contract olt float %add408.3.1, -1.260000e+02, !dbg !163
  %cond.i.i1057.3.1 = select contract i1 %cmp.i.i1056.3.1, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.3.1 = fadd contract float %add408.3.1, %cond.i.i1057.3.1, !dbg !163
  %146 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.3.1), !dbg !163
  %cond2.i.i1059.3.1 = select contract i1 %cmp.i.i1056.3.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %mul.i.i1060.3.1 = fmul contract float %cond2.i.i1059.3.1, %146, !dbg !163
  %rescale.sroa.0.0.1 = select i1 %cmp386.1, float %mul.i.i.1, float 1.000000e+00, !dbg !159
  %mul417.1 = fmul contract float %pair_rescale.sroa.0.1, %rescale.sroa.0.0.1, !dbg !203
  %cmp422.1 = fcmp contract une float %rescale.sroa.0.0.1, 1.000000e+00
  br i1 %cmp422.1, label %if.then429.11237, label %if.end480.1, !dbg !204

if.then429.11237:                                 ; preds = %if.end240.1.1
  %bc1773 = bitcast <2 x i32> %probability_pair.sroa.0.4 to <4 x half>, !dbg !205
  %147 = extractelement <4 x half> %bc1773, i64 0, !dbg !205
  %conv.i1061.11217 = fpext half %147 to float, !dbg !205
  %bc1770 = bitcast <2 x i32> %probability_pair.sroa.0.4 to <4 x half>, !dbg !208
  %148 = extractelement <4 x half> %bc1770, i64 1, !dbg !208
  %conv6.i.11219 = fpext half %148 to float, !dbg !208
  %bc1771 = bitcast <2 x i32> %probability_pair.sroa.0.4 to <4 x half>, !dbg !209
  %149 = extractelement <4 x half> %bc1771, i64 2, !dbg !209
  %conv.i1063.11220 = fpext half %149 to float, !dbg !209
  %bc1774 = bitcast <2 x i32> %probability_pair.sroa.0.4 to <4 x half>, !dbg !211
  %150 = extractelement <4 x half> %bc1774, i64 3, !dbg !211
  %conv6.i1065.11222 = fpext half %150 to float, !dbg !211
  %mul450.11223 = fmul contract float %rescale.sroa.0.0.1, %conv.i1061.11217, !dbg !212
  %mul453.11224 = fmul contract float %rescale.sroa.0.0.1, %conv6.i.11219, !dbg !213
  %mul456.11225 = fmul contract float %rescale.sroa.0.0.1, %conv.i1063.11220, !dbg !214
  %mul459.11226 = fmul contract float %rescale.sroa.0.0.1, %conv6.i1065.11222, !dbg !215
  %151 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !216, !noalias !220
  %152 = fptrunc float %mul450.11223 to half, !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %151), !dbg !216, !noalias !220
  %153 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !225
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !225, !noalias !220
  %154 = fptrunc float %mul453.11224 to half, !dbg !225
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %153), !dbg !225, !noalias !220
  %155 = bitcast half %152 to i16, !dbg !227
  %156 = bitcast half %154 to i16, !dbg !229
  %157 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !230
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !230, !noalias !234
  %158 = fptrunc float %mul456.11225 to half, !dbg !230
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %157), !dbg !230, !noalias !234
  %159 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !239, !noalias !234
  %160 = fptrunc float %mul459.11226 to half, !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %159), !dbg !239, !noalias !234
  %161 = bitcast half %158 to i16, !dbg !241
  %162 = bitcast half %160 to i16, !dbg !243
  %__1.sroa.6.0.insert.ext.11227 = zext i16 %162 to i64, !dbg !244
  %__1.sroa.6.0.insert.shift.11228 = shl nuw i64 %__1.sroa.6.0.insert.ext.11227, 48, !dbg !244
  %__1.sroa.5.0.insert.ext.11229 = zext i16 %161 to i64, !dbg !244
  %__1.sroa.5.0.insert.shift.11230 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.11229, 32, !dbg !244
  %__1.sroa.5.0.insert.insert.11231 = or disjoint i64 %__1.sroa.6.0.insert.shift.11228, %__1.sroa.5.0.insert.shift.11230, !dbg !244
  %__1.sroa.4.0.insert.ext.11232 = zext i16 %156 to i64, !dbg !244
  %__1.sroa.4.0.insert.shift.11233 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.11232, 16, !dbg !244
  %__1.sroa.4.0.insert.insert.11234 = or disjoint i64 %__1.sroa.5.0.insert.insert.11231, %__1.sroa.4.0.insert.shift.11233, !dbg !244
  %__1.sroa.0.0.insert.ext.11235 = zext i16 %155 to i64, !dbg !244
  %__1.sroa.0.0.insert.insert.11236 = or disjoint i64 %__1.sroa.4.0.insert.insert.11234, %__1.sroa.0.0.insert.ext.11235, !dbg !244
  %163 = bitcast i64 %__1.sroa.0.0.insert.insert.11236 to <2 x i32>, !dbg !244
  br label %if.end480.1, !dbg !166

if.end480.1:                                      ; preds = %if.then429.11237, %if.end240.1.1
  %probability_pair.sroa.0.7 = phi <2 x i32> [ %163, %if.then429.11237 ], [ %probability_pair.sroa.0.4, %if.end240.1.1 ], !dbg !90
  %mul486.1 = fmul contract float %pair_sum_local.sroa.0.3, %rescale.sroa.0.0.1, !dbg !166
  %pair_sum_local.sroa.0.1.1 = select i1 %cmp422.1, float %mul486.1, float %pair_sum_local.sroa.0.3, !dbg !166
  %add496.11239 = fadd contract float %pair_sum_local.sroa.0.1.1, %mul.i.i1060.11215, !dbg !167
  %add496.1.1 = fadd contract float %add496.11239, %mul.i.i1060.1.1, !dbg !167
  %add496.2.1 = fadd contract float %add496.1.1, %mul.i.i1060.2.1, !dbg !167
  %add496.3.1 = fadd contract float %add496.2.1, %mul.i.i1060.3.1, !dbg !167
  %164 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !168, !noalias !176
  %165 = fptrunc float %mul.i.i1060.11215 to half, !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %164), !dbg !168, !noalias !176
  %166 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %167 = fptrunc float %mul.i.i1060.1.1 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %166), !dbg !181, !noalias !176
  %168 = bitcast half %165 to i16, !dbg !183
  %169 = bitcast half %167 to i16, !dbg !186
  %170 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !187, !noalias !191
  %171 = fptrunc float %mul.i.i1060.2.1 to half, !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %170), !dbg !187, !noalias !191
  %172 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !196
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !196, !noalias !191
  %173 = fptrunc float %mul.i.i1060.3.1 to half, !dbg !196
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %172), !dbg !196, !noalias !191
  %174 = bitcast half %171 to i16, !dbg !198
  %175 = bitcast half %173 to i16, !dbg !200
  %__4.sroa.6.0.insert.ext.1 = zext i16 %175 to i64, !dbg !201
  %__4.sroa.6.0.insert.shift.1 = shl nuw i64 %__4.sroa.6.0.insert.ext.1, 48, !dbg !201
  %__4.sroa.5.0.insert.ext.1 = zext i16 %174 to i64, !dbg !201
  %__4.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__4.sroa.5.0.insert.ext.1, 32, !dbg !201
  %__4.sroa.5.0.insert.insert.1 = or disjoint i64 %__4.sroa.6.0.insert.shift.1, %__4.sroa.5.0.insert.shift.1, !dbg !201
  %__4.sroa.4.0.insert.ext.1 = zext i16 %169 to i64, !dbg !201
  %__4.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__4.sroa.4.0.insert.ext.1, 16, !dbg !201
  %__4.sroa.4.0.insert.insert.1 = or disjoint i64 %__4.sroa.5.0.insert.insert.1, %__4.sroa.4.0.insert.shift.1, !dbg !201
  %__4.sroa.0.0.insert.ext.1 = zext i16 %168 to i64, !dbg !201
  %__4.sroa.0.0.insert.insert.1 = or disjoint i64 %__4.sroa.4.0.insert.insert.1, %__4.sroa.0.0.insert.ext.1, !dbg !201
  %176 = bitcast i64 %__4.sroa.0.0.insert.insert.1 to <2 x i32>, !dbg !201
  br label %if.end517.1, !dbg !202

if.end517.1:                                      ; preds = %if.end480.1, %if.end517
  %probability_pair.sroa.14.1 = phi <2 x i32> [ zeroinitializer, %if.end517 ], [ %176, %if.end480.1 ], !dbg !90
  %probability_pair.sroa.0.8 = phi <2 x i32> [ %probability_pair.sroa.0.4, %if.end517 ], [ %probability_pair.sroa.0.7, %if.end480.1 ], !dbg !90
  %pair_sum_local.sroa.0.3.1 = phi float [ %pair_sum_local.sroa.0.3, %if.end517 ], [ %add496.3.1, %if.end480.1 ], !dbg !90
  %pair_rescale.sroa.0.1.1 = phi float [ %pair_rescale.sroa.0.1, %if.end517 ], [ %mul417.1, %if.end480.1 ], !dbg !90
  %normalizer.sroa.0.3.1 = phi float [ %normalizer.sroa.0.3, %if.end517 ], [ %normalizer.sroa.0.2.1, %if.end480.1 ], !dbg !90
  %add535 = fadd contract float %pair_sum_local.sroa.0.3.1, 0.000000e+00, !dbg !245
  %add535.1 = fadd contract float %add535, 0.000000e+00, !dbg !245
  %add535.2 = fadd contract float %add535.1, 0.000000e+00, !dbg !245
  %add535.3 = fadd contract float %add535.2, 0.000000e+00, !dbg !245
  %177 = bitcast float %add535.3 to i32, !dbg !246
  %178 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !251
  %179 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %178) #11, !dbg !254
  %xor.i.i.i1075 = xor i32 %179, 32, !dbg !255
  %180 = and i32 %179, -64, !dbg !256
  %and.i.i.i1076 = add nsw i32 %180, 64, !dbg !256
  %cmp.not.i.i.i1077 = icmp slt i32 %xor.i.i.i1075, %and.i.i.i1076, !dbg !257
  %cond.i.i.i1078 = select i1 %cmp.not.i.i.i1077, i32 %xor.i.i.i1075, i32 %179, !dbg !258
  %shl.i.i.i1079 = shl i32 %cond.i.i.i1078, 2, !dbg !259
  %181 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i1079, i32 %177), !dbg !260
  %182 = bitcast i32 %181 to float, !dbg !261
  %add.i.i1080 = fadd contract float %add535.3, %182, !dbg !262
  %183 = bitcast float %add.i.i1080 to i32, !dbg !265
  %184 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !270
  %185 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %184) #11, !dbg !273
  %xor.i.i.i.i1081 = xor i32 %185, 16, !dbg !274
  %186 = and i32 %185, -64, !dbg !275
  %and.i.i.i.i1082 = add nsw i32 %186, 64, !dbg !275
  %cmp.not.i.i.i.i1083 = icmp slt i32 %xor.i.i.i.i1081, %and.i.i.i.i1082, !dbg !276
  %cond.i.i.i.i1084 = select i1 %cmp.not.i.i.i.i1083, i32 %xor.i.i.i.i1081, i32 %185, !dbg !277
  %shl.i.i.i.i1085 = shl i32 %cond.i.i.i.i1084, 2, !dbg !278
  %187 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i1085, i32 %183), !dbg !279
  %188 = bitcast i32 %187 to float, !dbg !280
  %add.i.i.i = fadd contract float %add.i.i1080, %188, !dbg !281
  %cmp544 = fcmp contract une float %pair_rescale.sroa.0.1.1, 1.000000e+00, !dbg !283
  %mul548 = fmul contract float %pair_rescale.sroa.0.1.1, 0.000000e+00, !dbg !284
  %denominator.sroa.0.1 = select i1 %cmp544, float %mul548, float 0.000000e+00, !dbg !284
  %add553 = fadd contract float %denominator.sroa.0.1, %add.i.i.i, !dbg !285
  br i1 %cmp544, label %for.body561.preheader, label %if.end571, !dbg !286

for.body561.preheader:                            ; preds = %if.end517.1
  %mul565 = fmul contract float %pair_rescale.sroa.0.1.1, 0.000000e+00, !dbg !287
  %output_acc.sroa.0.0.vec.insert1614 = insertelement <4 x float> poison, float %mul565, i64 0, !dbg !288
  %mul565.1 = fmul contract float %pair_rescale.sroa.0.1.1, 0.000000e+00, !dbg !287
  %output_acc.sroa.0.4.vec.insert1623 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert1614, float %mul565.1, i64 1, !dbg !288
  %mul565.2 = fmul contract float %pair_rescale.sroa.0.1.1, 0.000000e+00, !dbg !287
  %output_acc.sroa.0.8.vec.insert1632 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert1623, float %mul565.2, i64 2, !dbg !288
  %mul565.3 = fmul contract float %pair_rescale.sroa.0.1.1, 0.000000e+00, !dbg !287
  %output_acc.sroa.0.12.vec.insert1641 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert1632, float %mul565.3, i64 3, !dbg !288
  %mul565.4 = fmul contract float %pair_rescale.sroa.0.1.1, 0.000000e+00, !dbg !287
  %output_acc.sroa.30.16.vec.insert1652 = insertelement <4 x float> poison, float %mul565.4, i64 0, !dbg !288
  %mul565.5 = fmul contract float %pair_rescale.sroa.0.1.1, 0.000000e+00, !dbg !287
  %output_acc.sroa.30.20.vec.insert1661 = insertelement <4 x float> %output_acc.sroa.30.16.vec.insert1652, float %mul565.5, i64 1, !dbg !288
  %mul565.6 = fmul contract float %pair_rescale.sroa.0.1.1, 0.000000e+00, !dbg !287
  %output_acc.sroa.30.24.vec.insert1670 = insertelement <4 x float> %output_acc.sroa.30.20.vec.insert1661, float %mul565.6, i64 2, !dbg !288
  %mul565.7 = fmul contract float %pair_rescale.sroa.0.1.1, 0.000000e+00, !dbg !287
  %output_acc.sroa.30.28.vec.insert1679 = insertelement <4 x float> %output_acc.sroa.30.24.vec.insert1670, float %mul565.7, i64 3, !dbg !288
  %mul565.8 = fmul contract float %pair_rescale.sroa.0.1.1, 0.000000e+00, !dbg !287
  %output_acc.sroa.58.32.vec.insert1690 = insertelement <4 x float> poison, float %mul565.8, i64 0, !dbg !288
  %mul565.9 = fmul contract float %pair_rescale.sroa.0.1.1, 0.000000e+00, !dbg !287
  %output_acc.sroa.58.36.vec.insert1699 = insertelement <4 x float> %output_acc.sroa.58.32.vec.insert1690, float %mul565.9, i64 1, !dbg !288
  %mul565.10 = fmul contract float %pair_rescale.sroa.0.1.1, 0.000000e+00, !dbg !287
  %output_acc.sroa.58.40.vec.insert1708 = insertelement <4 x float> %output_acc.sroa.58.36.vec.insert1699, float %mul565.10, i64 2, !dbg !288
  %mul565.11 = fmul contract float %pair_rescale.sroa.0.1.1, 0.000000e+00, !dbg !287
  %output_acc.sroa.58.44.vec.insert1717 = insertelement <4 x float> %output_acc.sroa.58.40.vec.insert1708, float %mul565.11, i64 3, !dbg !288
  %mul565.12 = fmul contract float %pair_rescale.sroa.0.1.1, 0.000000e+00, !dbg !287
  %output_acc.sroa.86.48.vec.insert1728 = insertelement <4 x float> poison, float %mul565.12, i64 0, !dbg !288
  %mul565.13 = fmul contract float %pair_rescale.sroa.0.1.1, 0.000000e+00, !dbg !287
  %output_acc.sroa.86.52.vec.insert1737 = insertelement <4 x float> %output_acc.sroa.86.48.vec.insert1728, float %mul565.13, i64 1, !dbg !288
  %mul565.14 = fmul contract float %pair_rescale.sroa.0.1.1, 0.000000e+00, !dbg !287
  %output_acc.sroa.86.56.vec.insert1746 = insertelement <4 x float> %output_acc.sroa.86.52.vec.insert1737, float %mul565.14, i64 2, !dbg !288
  %mul565.15 = fmul contract float %pair_rescale.sroa.0.1.1, 0.000000e+00, !dbg !287
  %output_acc.sroa.86.60.vec.insert1755 = insertelement <4 x float> %output_acc.sroa.86.56.vec.insert1746, float %mul565.15, i64 3, !dbg !288
  br label %if.end571, !dbg !289

if.end571:                                        ; preds = %for.body561.preheader, %if.end517.1
  %output_acc.sroa.86.1 = phi <4 x float> [ %output_acc.sroa.86.60.vec.insert1755, %for.body561.preheader ], [ zeroinitializer, %if.end517.1 ], !dbg !90
  %output_acc.sroa.58.1 = phi <4 x float> [ %output_acc.sroa.58.44.vec.insert1717, %for.body561.preheader ], [ zeroinitializer, %if.end517.1 ], !dbg !90
  %output_acc.sroa.30.1 = phi <4 x float> [ %output_acc.sroa.30.28.vec.insert1679, %for.body561.preheader ], [ zeroinitializer, %if.end517.1 ], !dbg !90
  %output_acc.sroa.0.1 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1641, %for.body561.preheader ], [ zeroinitializer, %if.end517.1 ], !dbg !90
  br i1 %or.cond1109, label %if.end752, label %if.then588, !dbg !290

if.then588:                                       ; preds = %if.end571
  fence syncscope("warp") release, !dbg !291
  tail call void @llvm.mxc.barrier.warp(), !dbg !294
  fence syncscope("warp") acquire, !dbg !295
  %shr600 = shl nsw i32 %69, 2
  %cmp602 = icmp slt i32 %shr600, %invariant.op1152
  %condval_13.0 = sext i32 %mul119 to i64
  br i1 %cmp602, label %if.then603, label %if.end650, !dbg !296

if.then603:                                       ; preds = %if.then588
  %.idx1163 = shl nsw i64 %condval_13.0, 7, !dbg !297
  %189 = getelementptr i8, ptr addrspace(4) %29, i64 %.idx1163, !dbg !297
  %condval_10.sroa.0.0.copyload = load i32, ptr addrspace(4) %189, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %189, i64 4, !dbg !298
  %condval_10.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx, align 4, !dbg !298, !tbaa !30
  br label %if.end650, !dbg !299

if.end650:                                        ; preds = %if.then588, %if.then603
  %condval_10.sroa.5.0 = phi i32 [ %condval_10.sroa.5.0.copyload, %if.then603 ], [ 0, %if.then588 ], !dbg !90
  %condval_10.sroa.0.0 = phi i32 [ %condval_10.sroa.0.0.copyload, %if.then603 ], [ 0, %if.then588 ], !dbg !90
  br i1 %cmp602, label %if.then603.1, label %if.end650.1, !dbg !296

if.then603.1:                                     ; preds = %if.end650
  %.idx1163.1 = shl nsw i64 %condval_13.0, 7, !dbg !297
  %190 = getelementptr i8, ptr addrspace(4) %30, i64 %.idx1163.1, !dbg !297
  %add.ptr636.1 = getelementptr i8, ptr addrspace(4) %190, i64 128, !dbg !297
  %condval_10.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %add.ptr636.1, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.1 = getelementptr i8, ptr addrspace(4) %190, i64 132, !dbg !298
  %condval_10.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.1, align 4, !dbg !298, !tbaa !30
  br label %if.end650.1, !dbg !299

if.end650.1:                                      ; preds = %if.then603.1, %if.end650
  %condval_10.sroa.5.0.1 = phi i32 [ %condval_10.sroa.5.0.copyload.1, %if.then603.1 ], [ 0, %if.end650 ], !dbg !90
  %condval_10.sroa.0.0.1 = phi i32 [ %condval_10.sroa.0.0.copyload.1, %if.then603.1 ], [ 0, %if.end650 ], !dbg !90
  br i1 %cmp602, label %if.then603.2, label %if.end650.2, !dbg !296

if.then603.2:                                     ; preds = %if.end650.1
  %.idx1163.2 = shl nsw i64 %condval_13.0, 7, !dbg !297
  %191 = getelementptr i8, ptr addrspace(4) %31, i64 %.idx1163.2, !dbg !297
  %add.ptr636.2 = getelementptr i8, ptr addrspace(4) %191, i64 256, !dbg !297
  %condval_10.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %add.ptr636.2, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.2 = getelementptr i8, ptr addrspace(4) %191, i64 260, !dbg !298
  %condval_10.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.2, align 4, !dbg !298, !tbaa !30
  br label %if.end650.2, !dbg !299

if.end650.2:                                      ; preds = %if.then603.2, %if.end650.1
  %condval_10.sroa.5.0.2 = phi i32 [ %condval_10.sroa.5.0.copyload.2, %if.then603.2 ], [ 0, %if.end650.1 ], !dbg !90
  %condval_10.sroa.0.0.2 = phi i32 [ %condval_10.sroa.0.0.copyload.2, %if.then603.2 ], [ 0, %if.end650.1 ], !dbg !90
  br i1 %cmp602, label %if.then603.3, label %if.end650.3, !dbg !296

if.then603.3:                                     ; preds = %if.end650.2
  %.idx1163.3 = shl nsw i64 %condval_13.0, 7, !dbg !297
  %192 = getelementptr i8, ptr addrspace(4) %32, i64 %.idx1163.3, !dbg !297
  %add.ptr636.3 = getelementptr i8, ptr addrspace(4) %192, i64 384, !dbg !297
  %condval_10.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %add.ptr636.3, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.3 = getelementptr i8, ptr addrspace(4) %192, i64 388, !dbg !298
  %condval_10.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.3, align 4, !dbg !298, !tbaa !30
  br label %if.end650.3, !dbg !299

if.end650.3:                                      ; preds = %if.then603.3, %if.end650.2
  %condval_10.sroa.5.0.3 = phi i32 [ %condval_10.sroa.5.0.copyload.3, %if.then603.3 ], [ 0, %if.end650.2 ], !dbg !90
  %condval_10.sroa.0.0.3 = phi i32 [ %condval_10.sroa.0.0.copyload.3, %if.then603.3 ], [ 0, %if.end650.2 ], !dbg !90
  %193 = and i32 %condval_10.sroa.0.0.3, 65535, !dbg !300
  %v_column_local.sroa.34.0.insert.ext = zext nneg i32 %193 to i64, !dbg !300
  %v_column_local.sroa.34.0.insert.shift = shl nuw i64 %v_column_local.sroa.34.0.insert.ext, 48, !dbg !300
  %194 = and i32 %condval_10.sroa.0.0.2, 65535, !dbg !300
  %v_column_local.sroa.26.0.insert.ext = zext nneg i32 %194 to i64, !dbg !300
  %v_column_local.sroa.26.0.insert.shift = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert = or disjoint i64 %v_column_local.sroa.34.0.insert.shift, %v_column_local.sroa.26.0.insert.shift, !dbg !300
  %195 = shl i32 %condval_10.sroa.0.0.1, 16, !dbg !300
  %v_column_local.sroa.18.0.insert.shift = zext i32 %195 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert = or disjoint i64 %v_column_local.sroa.26.0.insert.insert, %v_column_local.sroa.18.0.insert.shift, !dbg !300
  %196 = and i32 %condval_10.sroa.0.0, 65535, !dbg !300
  %v_column_local.sroa.0.0.insert.ext = zext nneg i32 %196 to i64, !dbg !300
  %v_column_local.sroa.0.0.insert.insert = or disjoint i64 %v_column_local.sroa.18.0.insert.insert, %v_column_local.sroa.0.0.insert.ext, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr692, align 8, !dbg !300
  %v_tile_local.sroa.0.2.extract.shift = lshr i32 %condval_10.sroa.0.0, 16, !dbg !301
  %v_tile_local.sroa.0.2.extract.trunc = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift to i64, !dbg !301
  %v_tile_local.sroa.14.10.extract.shift = and i32 %condval_10.sroa.0.0.1, -65536, !dbg !300
  %v_tile_local.sroa.26.18.extract.shift = lshr i32 %condval_10.sroa.0.0.2, 16, !dbg !301
  %v_tile_local.sroa.26.18.extract.trunc = zext nneg i32 %v_tile_local.sroa.26.18.extract.shift to i64, !dbg !301
  %v_tile_local.sroa.38.26.extract.shift = lshr i32 %condval_10.sroa.0.0.3, 16, !dbg !301
  %v_tile_local.sroa.38.26.extract.trunc = zext nneg i32 %v_tile_local.sroa.38.26.extract.shift to i64, !dbg !301
  %v_column_local.sroa.34.0.insert.shift1389 = shl nuw i64 %v_tile_local.sroa.38.26.extract.trunc, 48, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1354 = shl nuw nsw i64 %v_tile_local.sroa.26.18.extract.trunc, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1356 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1389, %v_column_local.sroa.26.0.insert.shift1354, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1319 = zext i32 %v_tile_local.sroa.14.10.extract.shift to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1321 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1356, %v_column_local.sroa.18.0.insert.shift1319, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1292 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1321, %v_tile_local.sroa.0.2.extract.trunc, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1292, ptr addrspace(3) %add.ptr692.1, align 8, !dbg !300
  %197 = and i32 %condval_10.sroa.5.0.3, 65535, !dbg !300
  %v_column_local.sroa.34.0.insert.ext1393 = zext nneg i32 %197 to i64, !dbg !300
  %v_column_local.sroa.34.0.insert.shift1394 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1393, 48, !dbg !300
  %198 = and i32 %condval_10.sroa.5.0.2, 65535, !dbg !300
  %v_column_local.sroa.26.0.insert.ext1358 = zext nneg i32 %198 to i64, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1359 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1358, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1361 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1394, %v_column_local.sroa.26.0.insert.shift1359, !dbg !300
  %199 = shl i32 %condval_10.sroa.5.0.1, 16, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1324 = zext i32 %199 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1326 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1361, %v_column_local.sroa.18.0.insert.shift1324, !dbg !300
  %200 = and i32 %condval_10.sroa.5.0, 65535, !dbg !300
  %v_column_local.sroa.0.0.insert.ext1294 = zext nneg i32 %200 to i64, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1296 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1326, %v_column_local.sroa.0.0.insert.ext1294, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1296, ptr addrspace(3) %add.ptr692.2, align 8, !dbg !300
  %v_tile_local.sroa.8.6.extract.shift = lshr i32 %condval_10.sroa.5.0, 16, !dbg !301
  %v_tile_local.sroa.8.6.extract.trunc = zext nneg i32 %v_tile_local.sroa.8.6.extract.shift to i64, !dbg !301
  %v_tile_local.sroa.20.14.extract.shift = and i32 %condval_10.sroa.5.0.1, -65536, !dbg !300
  %v_tile_local.sroa.32.22.extract.shift = lshr i32 %condval_10.sroa.5.0.2, 16, !dbg !301
  %v_tile_local.sroa.32.22.extract.trunc = zext nneg i32 %v_tile_local.sroa.32.22.extract.shift to i64, !dbg !301
  %v_tile_local.sroa.44.30.extract.shift = lshr i32 %condval_10.sroa.5.0.3, 16, !dbg !301
  %v_tile_local.sroa.44.30.extract.trunc = zext nneg i32 %v_tile_local.sroa.44.30.extract.shift to i64, !dbg !301
  %v_column_local.sroa.34.0.insert.shift1399 = shl nuw i64 %v_tile_local.sroa.44.30.extract.trunc, 48, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1364 = shl nuw nsw i64 %v_tile_local.sroa.32.22.extract.trunc, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1366 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1399, %v_column_local.sroa.26.0.insert.shift1364, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1329 = zext i32 %v_tile_local.sroa.20.14.extract.shift to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1331 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1366, %v_column_local.sroa.18.0.insert.shift1329, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1300 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1331, %v_tile_local.sroa.8.6.extract.trunc, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1300, ptr addrspace(3) %add.ptr692.3, align 8, !dbg !300
  fence syncscope("warp") release, !dbg !302
  tail call void @llvm.mxc.barrier.warp(), !dbg !305
  fence syncscope("warp") acquire, !dbg !306
  %201 = bitcast <2 x i32> %probability_pair.sroa.0.8 to <4 x half>, !dbg !307
  %202 = load <4 x half>, ptr addrspace(3) %add.ptr726, align 8, !dbg !308
  %203 = load <4 x half>, ptr addrspace(3) %add.ptr726.1, align 8, !dbg !308
  %204 = load <4 x half>, ptr addrspace(3) %add.ptr726.2, align 8, !dbg !308
  %205 = load <4 x half>, ptr addrspace(3) %add.ptr726.3, align 8, !dbg !308
  %206 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %202, <4 x half> %201, <4 x float> %output_acc.sroa.0.1), !dbg !309
  %207 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %203, <4 x half> %201, <4 x float> %output_acc.sroa.30.1), !dbg !309
  %208 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %204, <4 x half> %201, <4 x float> %output_acc.sroa.58.1), !dbg !309
  %209 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %205, <4 x half> %201, <4 x float> %output_acc.sroa.86.1), !dbg !309
  br label %if.end752, !dbg !310

if.end752:                                        ; preds = %if.end650.3, %if.end571
  %output_acc.sroa.86.2 = phi <4 x float> [ %output_acc.sroa.86.1, %if.end571 ], [ %209, %if.end650.3 ], !dbg !90
  %output_acc.sroa.58.2 = phi <4 x float> [ %output_acc.sroa.58.1, %if.end571 ], [ %208, %if.end650.3 ], !dbg !90
  %output_acc.sroa.30.2 = phi <4 x float> [ %output_acc.sroa.30.1, %if.end571 ], [ %207, %if.end650.3 ], !dbg !90
  %output_acc.sroa.0.2 = phi <4 x float> [ %output_acc.sroa.0.1, %if.end571 ], [ %206, %if.end650.3 ], !dbg !90
  br i1 %or.cond1109.1, label %if.end756, label %if.then588.1, !dbg !290

if.then588.1:                                     ; preds = %if.end752
  fence syncscope("warp") release, !dbg !291
  tail call void @llvm.mxc.barrier.warp(), !dbg !294
  fence syncscope("warp") acquire, !dbg !295
  %shr600.1 = shl nsw i32 %71, 2
  %cmp602.1 = icmp slt i32 %shr600.1, %invariant.op1152
  %condval_13.0.1 = sext i32 %mul130 to i64
  br i1 %cmp602.1, label %if.then603.11249, label %if.end650.11253, !dbg !296

if.then603.11249:                                 ; preds = %if.then588.1
  %.idx1163.11245 = shl nsw i64 %condval_13.0.1, 7, !dbg !297
  %210 = getelementptr i8, ptr addrspace(4) %49, i64 %.idx1163.11245, !dbg !297
  %condval_10.sroa.0.0.copyload.11246 = load i32, ptr addrspace(4) %210, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.11247 = getelementptr inbounds i8, ptr addrspace(4) %210, i64 4, !dbg !298
  %condval_10.sroa.5.0.copyload.11248 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.11247, align 4, !dbg !298, !tbaa !30
  br label %if.end650.11253, !dbg !299

if.end650.11253:                                  ; preds = %if.then603.11249, %if.then588.1
  %condval_10.sroa.5.0.11250 = phi i32 [ %condval_10.sroa.5.0.copyload.11248, %if.then603.11249 ], [ 0, %if.then588.1 ], !dbg !90
  %condval_10.sroa.0.0.11251 = phi i32 [ %condval_10.sroa.0.0.copyload.11246, %if.then603.11249 ], [ 0, %if.then588.1 ], !dbg !90
  br i1 %cmp602.1, label %if.then603.1.1, label %if.end650.1.1, !dbg !296

if.then603.1.1:                                   ; preds = %if.end650.11253
  %.idx1163.1.1 = shl nsw i64 %condval_13.0.1, 7, !dbg !297
  %211 = getelementptr i8, ptr addrspace(4) %50, i64 %.idx1163.1.1, !dbg !297
  %add.ptr636.1.1 = getelementptr i8, ptr addrspace(4) %211, i64 128, !dbg !297
  %condval_10.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %add.ptr636.1.1, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.1.1 = getelementptr i8, ptr addrspace(4) %211, i64 132, !dbg !298
  %condval_10.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.1.1, align 4, !dbg !298, !tbaa !30
  br label %if.end650.1.1, !dbg !299

if.end650.1.1:                                    ; preds = %if.then603.1.1, %if.end650.11253
  %condval_10.sroa.5.0.1.1 = phi i32 [ %condval_10.sroa.5.0.copyload.1.1, %if.then603.1.1 ], [ 0, %if.end650.11253 ], !dbg !90
  %condval_10.sroa.0.0.1.1 = phi i32 [ %condval_10.sroa.0.0.copyload.1.1, %if.then603.1.1 ], [ 0, %if.end650.11253 ], !dbg !90
  br i1 %cmp602.1, label %if.then603.2.1, label %if.end650.2.1, !dbg !296

if.then603.2.1:                                   ; preds = %if.end650.1.1
  %.idx1163.2.1 = shl nsw i64 %condval_13.0.1, 7, !dbg !297
  %212 = getelementptr i8, ptr addrspace(4) %51, i64 %.idx1163.2.1, !dbg !297
  %add.ptr636.2.1 = getelementptr i8, ptr addrspace(4) %212, i64 256, !dbg !297
  %condval_10.sroa.0.0.copyload.2.1 = load i32, ptr addrspace(4) %add.ptr636.2.1, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.2.1 = getelementptr i8, ptr addrspace(4) %212, i64 260, !dbg !298
  %condval_10.sroa.5.0.copyload.2.1 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.2.1, align 4, !dbg !298, !tbaa !30
  br label %if.end650.2.1, !dbg !299

if.end650.2.1:                                    ; preds = %if.then603.2.1, %if.end650.1.1
  %condval_10.sroa.5.0.2.1 = phi i32 [ %condval_10.sroa.5.0.copyload.2.1, %if.then603.2.1 ], [ 0, %if.end650.1.1 ], !dbg !90
  %condval_10.sroa.0.0.2.1 = phi i32 [ %condval_10.sroa.0.0.copyload.2.1, %if.then603.2.1 ], [ 0, %if.end650.1.1 ], !dbg !90
  br i1 %cmp602.1, label %if.then603.3.1, label %if.end650.3.1, !dbg !296

if.then603.3.1:                                   ; preds = %if.end650.2.1
  %.idx1163.3.1 = shl nsw i64 %condval_13.0.1, 7, !dbg !297
  %213 = getelementptr i8, ptr addrspace(4) %52, i64 %.idx1163.3.1, !dbg !297
  %add.ptr636.3.1 = getelementptr i8, ptr addrspace(4) %213, i64 384, !dbg !297
  %condval_10.sroa.0.0.copyload.3.1 = load i32, ptr addrspace(4) %add.ptr636.3.1, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.3.1 = getelementptr i8, ptr addrspace(4) %213, i64 388, !dbg !298
  %condval_10.sroa.5.0.copyload.3.1 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.3.1, align 4, !dbg !298, !tbaa !30
  br label %if.end650.3.1, !dbg !299

if.end650.3.1:                                    ; preds = %if.then603.3.1, %if.end650.2.1
  %condval_10.sroa.5.0.3.1 = phi i32 [ %condval_10.sroa.5.0.copyload.3.1, %if.then603.3.1 ], [ 0, %if.end650.2.1 ], !dbg !90
  %condval_10.sroa.0.0.3.1 = phi i32 [ %condval_10.sroa.0.0.copyload.3.1, %if.then603.3.1 ], [ 0, %if.end650.2.1 ], !dbg !90
  %214 = and i32 %condval_10.sroa.0.0.3.1, 65535, !dbg !300
  %v_column_local.sroa.34.0.insert.ext1403 = zext nneg i32 %214 to i64, !dbg !300
  %v_column_local.sroa.34.0.insert.shift1404 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1403, 48, !dbg !300
  %215 = and i32 %condval_10.sroa.0.0.2.1, 65535, !dbg !300
  %v_column_local.sroa.26.0.insert.ext1368 = zext nneg i32 %215 to i64, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1369 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1368, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1371 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1404, %v_column_local.sroa.26.0.insert.shift1369, !dbg !300
  %216 = shl i32 %condval_10.sroa.0.0.1.1, 16, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1334 = zext i32 %216 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1336 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1371, %v_column_local.sroa.18.0.insert.shift1334, !dbg !300
  %217 = and i32 %condval_10.sroa.0.0.11251, 65535, !dbg !300
  %v_column_local.sroa.0.0.insert.ext1302 = zext nneg i32 %217 to i64, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1304 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1336, %v_column_local.sroa.0.0.insert.ext1302, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1304, ptr addrspace(3) %add.ptr692.11261, align 8, !dbg !300
  %v_tile_local.sroa.0.2.extract.shift1425 = lshr i32 %condval_10.sroa.0.0.11251, 16, !dbg !301
  %v_tile_local.sroa.0.2.extract.trunc1426 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1425 to i64, !dbg !301
  %v_tile_local.sroa.14.10.extract.shift1435 = and i32 %condval_10.sroa.0.0.1.1, -65536, !dbg !300
  %v_tile_local.sroa.26.18.extract.shift1445 = lshr i32 %condval_10.sroa.0.0.2.1, 16, !dbg !301
  %v_tile_local.sroa.26.18.extract.trunc1446 = zext nneg i32 %v_tile_local.sroa.26.18.extract.shift1445 to i64, !dbg !301
  %v_tile_local.sroa.38.26.extract.shift1455 = lshr i32 %condval_10.sroa.0.0.3.1, 16, !dbg !301
  %v_tile_local.sroa.38.26.extract.trunc1456 = zext nneg i32 %v_tile_local.sroa.38.26.extract.shift1455 to i64, !dbg !301
  %v_column_local.sroa.34.0.insert.shift1409 = shl nuw i64 %v_tile_local.sroa.38.26.extract.trunc1456, 48, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1374 = shl nuw nsw i64 %v_tile_local.sroa.26.18.extract.trunc1446, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1376 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1409, %v_column_local.sroa.26.0.insert.shift1374, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1339 = zext i32 %v_tile_local.sroa.14.10.extract.shift1435 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1341 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1376, %v_column_local.sroa.18.0.insert.shift1339, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1308 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1341, %v_tile_local.sroa.0.2.extract.trunc1426, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1308, ptr addrspace(3) %add.ptr692.1.1, align 8, !dbg !300
  %218 = and i32 %condval_10.sroa.5.0.3.1, 65535, !dbg !300
  %v_column_local.sroa.34.0.insert.ext1413 = zext nneg i32 %218 to i64, !dbg !300
  %v_column_local.sroa.34.0.insert.shift1414 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1413, 48, !dbg !300
  %219 = and i32 %condval_10.sroa.5.0.2.1, 65535, !dbg !300
  %v_column_local.sroa.26.0.insert.ext1378 = zext nneg i32 %219 to i64, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1379 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1378, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1381 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1414, %v_column_local.sroa.26.0.insert.shift1379, !dbg !300
  %220 = shl i32 %condval_10.sroa.5.0.1.1, 16, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1344 = zext i32 %220 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1346 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1381, %v_column_local.sroa.18.0.insert.shift1344, !dbg !300
  %221 = and i32 %condval_10.sroa.5.0.11250, 65535, !dbg !300
  %v_column_local.sroa.0.0.insert.ext1310 = zext nneg i32 %221 to i64, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1312 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1346, %v_column_local.sroa.0.0.insert.ext1310, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1312, ptr addrspace(3) %add.ptr692.2.1, align 8, !dbg !300
  %v_tile_local.sroa.8.6.extract.shift1430 = lshr i32 %condval_10.sroa.5.0.11250, 16, !dbg !301
  %v_tile_local.sroa.8.6.extract.trunc1431 = zext nneg i32 %v_tile_local.sroa.8.6.extract.shift1430 to i64, !dbg !301
  %v_tile_local.sroa.20.14.extract.shift1440 = and i32 %condval_10.sroa.5.0.1.1, -65536, !dbg !300
  %v_tile_local.sroa.32.22.extract.shift1450 = lshr i32 %condval_10.sroa.5.0.2.1, 16, !dbg !301
  %v_tile_local.sroa.32.22.extract.trunc1451 = zext nneg i32 %v_tile_local.sroa.32.22.extract.shift1450 to i64, !dbg !301
  %v_tile_local.sroa.44.30.extract.shift1460 = lshr i32 %condval_10.sroa.5.0.3.1, 16, !dbg !301
  %v_tile_local.sroa.44.30.extract.trunc1461 = zext nneg i32 %v_tile_local.sroa.44.30.extract.shift1460 to i64, !dbg !301
  %v_column_local.sroa.34.0.insert.shift1419 = shl nuw i64 %v_tile_local.sroa.44.30.extract.trunc1461, 48, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1384 = shl nuw nsw i64 %v_tile_local.sroa.32.22.extract.trunc1451, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1386 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1419, %v_column_local.sroa.26.0.insert.shift1384, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1349 = zext i32 %v_tile_local.sroa.20.14.extract.shift1440 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1351 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1386, %v_column_local.sroa.18.0.insert.shift1349, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1316 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1351, %v_tile_local.sroa.8.6.extract.trunc1431, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1316, ptr addrspace(3) %add.ptr692.3.1, align 8, !dbg !300
  fence syncscope("warp") release, !dbg !302
  tail call void @llvm.mxc.barrier.warp(), !dbg !305
  fence syncscope("warp") acquire, !dbg !306
  %222 = bitcast <2 x i32> %probability_pair.sroa.14.1 to <4 x half>, !dbg !307
  %223 = load <4 x half>, ptr addrspace(3) %add.ptr726.11265, align 8, !dbg !308
  %224 = load <4 x half>, ptr addrspace(3) %add.ptr726.1.1, align 8, !dbg !308
  %225 = load <4 x half>, ptr addrspace(3) %add.ptr726.2.1, align 8, !dbg !308
  %226 = load <4 x half>, ptr addrspace(3) %add.ptr726.3.1, align 8, !dbg !308
  %227 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %223, <4 x half> %222, <4 x float> %output_acc.sroa.0.2), !dbg !309
  %228 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %224, <4 x half> %222, <4 x float> %output_acc.sroa.30.2), !dbg !309
  %229 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %225, <4 x half> %222, <4 x float> %output_acc.sroa.58.2), !dbg !309
  %230 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %226, <4 x half> %222, <4 x float> %output_acc.sroa.86.2), !dbg !309
  br label %if.end756, !dbg !310

if.end756:                                        ; preds = %if.end752, %if.end650.3.1, %lor.lhs.false
  %output_acc.sroa.86.4 = phi <4 x float> [ zeroinitializer, %lor.lhs.false ], [ %output_acc.sroa.86.2, %if.end752 ], [ %230, %if.end650.3.1 ], !dbg !90
  %output_acc.sroa.58.4 = phi <4 x float> [ zeroinitializer, %lor.lhs.false ], [ %output_acc.sroa.58.2, %if.end752 ], [ %229, %if.end650.3.1 ], !dbg !90
  %output_acc.sroa.30.4 = phi <4 x float> [ zeroinitializer, %lor.lhs.false ], [ %output_acc.sroa.30.2, %if.end752 ], [ %228, %if.end650.3.1 ], !dbg !90
  %output_acc.sroa.0.4 = phi <4 x float> [ zeroinitializer, %lor.lhs.false ], [ %output_acc.sroa.0.2, %if.end752 ], [ %227, %if.end650.3.1 ], !dbg !90
  %normalizer.sroa.0.4 = phi float [ 0xFFF0000000000000, %lor.lhs.false ], [ %normalizer.sroa.0.3.1, %if.end752 ], [ %normalizer.sroa.0.3.1, %if.end650.3.1 ], !dbg !311
  %denominator.sroa.0.2 = phi float [ 0.000000e+00, %lor.lhs.false ], [ %add553, %if.end752 ], [ %add553, %if.end650.3.1 ], !dbg !90
  %231 = or disjoint i64 %28, 2, !dbg !312
  %arrayidx118.1 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %231, !dbg !69
  %232 = load i32, ptr addrspace(1) %arrayidx118.1, align 4, !dbg !69, !tbaa !30
  %mul119.1 = shl nsw i32 %232, 4, !dbg !70
  %233 = or disjoint i64 %28, 3, !dbg !71
  %arrayidx129.1 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %233, !dbg !72
  %234 = load i32, ptr addrspace(1) %arrayidx129.1, align 4, !dbg !72, !tbaa !30
  %mul130.1 = shl nsw i32 %234, 4, !dbg !73
  %cmp131.1 = icmp slt i32 %232, 0, !dbg !74
  %cmp133.not.1 = icmp sgt i32 %mul119.1, %1
  %or.cond1107.1 = select i1 %cmp131.1, i1 true, i1 %cmp133.not.1, !dbg !75
  br i1 %or.cond1107.1, label %lor.lhs.false.1, label %if.then.1, !dbg !75

lor.lhs.false.1:                                  ; preds = %if.end756
  %cmp134.1 = icmp slt i32 %234, 0, !dbg !76
  %cmp137.not.1 = icmp sgt i32 %mul130.1, %1
  %or.cond1108.1 = select i1 %cmp134.1, i1 true, i1 %cmp137.not.1, !dbg !77
  br i1 %or.cond1108.1, label %if.end756.1, label %if.then.1, !dbg !77

if.then.1:                                        ; preds = %lor.lhs.false.1, %if.end756
  %or.cond1109.11776 = icmp ugt i32 %mul119.1, %1, !dbg !78
  br i1 %or.cond1109.11776, label %if.end517.11896, label %if.then175.11782, !dbg !78

if.then175.11782:                                 ; preds = %if.then.1
  fence syncscope("warp") release, !dbg !79
  tail call void @llvm.mxc.barrier.warp(), !dbg !82
  fence syncscope("warp") acquire, !dbg !83
  %add186.11777 = add nsw i32 %mul119.1, %shr185
  %shr187.11778 = ashr i32 %add186.11777, 3
  %condval_5.0.11779 = sext i32 %mul119.1 to i64
  %.idx.11780 = shl nsw i64 %condval_5.0.11779, 7
  %gep.11781 = getelementptr i8, ptr addrspace(4) %invariant.gep1142, i64 %.idx.11780, !dbg !84
  %235 = icmp slt i32 %shr187.11778, 128, !dbg !85
  br i1 %235, label %if.then190.11790, label %if.end240.11795, !dbg !86

if.then190.11790:                                 ; preds = %if.then175.11782
  %236 = getelementptr i8, ptr addrspace(4) %gep.11781, i64 %.idx1162, !dbg !87
  %condval_2.sroa.0.0.copyload.11783 = load i32, ptr addrspace(4) %236, align 16, !dbg !88, !tbaa !30
  %condval_2.sroa.5.0.add.ptr216.sroa_idx.11784 = getelementptr inbounds i8, ptr addrspace(4) %236, i64 4, !dbg !88
  %condval_2.sroa.5.0.copyload.11785 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr216.sroa_idx.11784, align 4, !dbg !88, !tbaa !30
  %condval_2.sroa.6.0.add.ptr216.sroa_idx.11786 = getelementptr inbounds i8, ptr addrspace(4) %236, i64 8, !dbg !88
  %condval_2.sroa.6.0.copyload.11787 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr216.sroa_idx.11786, align 8, !dbg !88, !tbaa !30
  %condval_2.sroa.7.0.add.ptr216.sroa_idx.11788 = getelementptr inbounds i8, ptr addrspace(4) %236, i64 12, !dbg !88
  %condval_2.sroa.7.0.copyload.11789 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr216.sroa_idx.11788, align 4, !dbg !88, !tbaa !30
  br label %if.end240.11795, !dbg !89

if.end240.11795:                                  ; preds = %if.then190.11790, %if.then175.11782
  %condval_2.sroa.0.0.11791 = phi i32 [ %condval_2.sroa.0.0.copyload.11783, %if.then190.11790 ], [ 0, %if.then175.11782 ], !dbg !90
  %condval_2.sroa.5.0.11792 = phi i32 [ %condval_2.sroa.5.0.copyload.11785, %if.then190.11790 ], [ 0, %if.then175.11782 ], !dbg !90
  %condval_2.sroa.6.0.11793 = phi i32 [ %condval_2.sroa.6.0.copyload.11787, %if.then190.11790 ], [ 0, %if.then175.11782 ], !dbg !90
  %condval_2.sroa.7.0.11794 = phi i32 [ %condval_2.sroa.7.0.copyload.11789, %if.then190.11790 ], [ 0, %if.then175.11782 ], !dbg !90
  store i32 %condval_2.sroa.0.0.11791, ptr addrspace(3) %add.ptr45, align 16, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.5.0.11792, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr275.sroa_idx, align 4, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.6.0.11793, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr275.sroa_idx, align 8, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.7.0.11794, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr275.sroa_idx, align 4, !dbg !91, !tbaa !30
  %237 = icmp slt i32 %shr187.11778, 127, !dbg !85
  br i1 %237, label %if.then190.1.11804, label %if.end240.1.11892, !dbg !86

if.then190.1.11804:                               ; preds = %if.end240.11795
  %238 = getelementptr i8, ptr addrspace(4) %gep.11781, i64 %.idx1162.1, !dbg !87
  %gep1129.1.11796 = getelementptr i8, ptr addrspace(4) %238, i64 1024, !dbg !87
  %condval_2.sroa.0.0.copyload.1.11797 = load i32, ptr addrspace(4) %gep1129.1.11796, align 16, !dbg !88, !tbaa !30
  %condval_2.sroa.5.0.add.ptr216.sroa_idx.1.11798 = getelementptr i8, ptr addrspace(4) %238, i64 1028, !dbg !88
  %condval_2.sroa.5.0.copyload.1.11799 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr216.sroa_idx.1.11798, align 4, !dbg !88, !tbaa !30
  %condval_2.sroa.6.0.add.ptr216.sroa_idx.1.11800 = getelementptr i8, ptr addrspace(4) %238, i64 1032, !dbg !88
  %condval_2.sroa.6.0.copyload.1.11801 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr216.sroa_idx.1.11800, align 8, !dbg !88, !tbaa !30
  %condval_2.sroa.7.0.add.ptr216.sroa_idx.1.11802 = getelementptr i8, ptr addrspace(4) %238, i64 1036, !dbg !88
  %condval_2.sroa.7.0.copyload.1.11803 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr216.sroa_idx.1.11802, align 4, !dbg !88, !tbaa !30
  br label %if.end240.1.11892, !dbg !89

if.end240.1.11892:                                ; preds = %if.then190.1.11804, %if.end240.11795
  %condval_2.sroa.0.0.1.11805 = phi i32 [ %condval_2.sroa.0.0.copyload.1.11797, %if.then190.1.11804 ], [ 0, %if.end240.11795 ], !dbg !90
  %condval_2.sroa.5.0.1.11806 = phi i32 [ %condval_2.sroa.5.0.copyload.1.11799, %if.then190.1.11804 ], [ 0, %if.end240.11795 ], !dbg !90
  %condval_2.sroa.6.0.1.11807 = phi i32 [ %condval_2.sroa.6.0.copyload.1.11801, %if.then190.1.11804 ], [ 0, %if.end240.11795 ], !dbg !90
  %condval_2.sroa.7.0.1.11808 = phi i32 [ %condval_2.sroa.7.0.copyload.1.11803, %if.then190.1.11804 ], [ 0, %if.end240.11795 ], !dbg !90
  store i32 %condval_2.sroa.0.0.1.11805, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.5.0.1.11806, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr275.sroa_idx.1, align 4, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.6.0.1.11807, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr275.sroa_idx.1, align 8, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.7.0.1.11808, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr275.sroa_idx.1, align 4, !dbg !91, !tbaa !30
  fence syncscope("warp") release, !dbg !92
  tail call void @llvm.mxc.barrier.warp(), !dbg !95
  fence syncscope("warp") acquire, !dbg !96
  %k_local.sroa.0.0.copyload.11809 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !97
  %239 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11809, <4 x half> %12, <4 x float> zeroinitializer), !dbg !98
  %k_local.sroa.0.0.copyload.1.11810 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !97
  %240 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.11810, <4 x half> %16, <4 x float> %239), !dbg !98
  %k_local.sroa.0.0.copyload.2.11811 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !97
  %241 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.11811, <4 x half> %18, <4 x float> %240), !dbg !98
  %k_local.sroa.0.0.copyload.3.11812 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !97
  %242 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.11812, <4 x half> %22, <4 x float> %241), !dbg !98
  %add346.11813 = add nsw i32 %mul119.1, %mul345
  %cmp349.not.1 = icmp sgt i32 %add346.11813, %1, !dbg !99
  %scores.sroa.0.0.vec.extract1470.1 = extractelement <4 x float> %242, i64 0
  %spec.select.1 = select i1 %cmp349.not.1, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1470.1, !dbg !100
  %cmp349.not.1.not.1 = icmp slt i32 %add346.11813, %1, !dbg !99
  %scores.sroa.0.4.vec.extract1507.1 = extractelement <4 x float> %242, i64 1, !dbg !100
  %condval_6.0.1.11814 = select i1 %cmp349.not.1.not.1, float %scores.sroa.0.4.vec.extract1507.1, float 0xFFF0000000000000, !dbg !100
  %add347.2.11815 = or disjoint i32 %add346.11813, 2, !dbg !101
  %cmp349.not.2.11816 = icmp sgt i32 %add347.2.11815, %1, !dbg !99
  %scores.sroa.0.8.vec.extract1540.1 = extractelement <4 x float> %242, i64 2, !dbg !100
  %condval_6.0.2.11817 = select i1 %cmp349.not.2.11816, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1540.1, !dbg !100
  %add347.3.11818 = or disjoint i32 %add346.11813, 3, !dbg !101
  %cmp349.not.3.11819 = icmp sgt i32 %add347.3.11818, %1, !dbg !99
  %scores.sroa.0.12.vec.extract1573.1 = extractelement <4 x float> %242, i64 3, !dbg !100
  %condval_6.0.3.11820 = select i1 %cmp349.not.3.11819, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1573.1, !dbg !100
  %243 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select.1, float 0xFFF0000000000000), !dbg !102
  %244 = tail call contract noundef float @llvm.maxnum.f32(float %243, float %condval_6.0.1.11814), !dbg !102
  %245 = tail call contract noundef float @llvm.maxnum.f32(float %244, float %condval_6.0.2.11817), !dbg !102
  %246 = tail call contract noundef float @llvm.maxnum.f32(float %245, float %condval_6.0.3.11820), !dbg !102
  %247 = bitcast float %246 to i32, !dbg !106
  %248 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !115
  %249 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %248) #11, !dbg !120
  %xor.i.i.i.11821 = xor i32 %249, 32, !dbg !121
  %250 = and i32 %249, -64, !dbg !122
  %and.i.i.i.11822 = add nsw i32 %250, 64, !dbg !122
  %cmp.not.i.i.i.11823 = icmp slt i32 %xor.i.i.i.11821, %and.i.i.i.11822, !dbg !123
  %cond.i.i.i.11824 = select i1 %cmp.not.i.i.i.11823, i32 %xor.i.i.i.11821, i32 %249, !dbg !124
  %shl.i.i.i.11825 = shl i32 %cond.i.i.i.11824, 2, !dbg !125
  %251 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.11825, i32 %247), !dbg !126
  %252 = bitcast i32 %251 to float, !dbg !127
  %253 = tail call contract noundef float @llvm.maxnum.f32(float %246, float %252), !dbg !128
  %254 = bitcast float %253 to i32, !dbg !136
  %255 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !141
  %256 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %255) #11, !dbg !144
  %xor.i.i.i.i.11826 = xor i32 %256, 16, !dbg !145
  %257 = and i32 %256, -64, !dbg !146
  %and.i.i.i.i.11827 = add nsw i32 %257, 64, !dbg !146
  %cmp.not.i.i.i.i.11828 = icmp slt i32 %xor.i.i.i.i.11826, %and.i.i.i.i.11827, !dbg !147
  %cond.i.i.i.i.11829 = select i1 %cmp.not.i.i.i.i.11828, i32 %xor.i.i.i.i.11826, i32 %256, !dbg !148
  %shl.i.i.i.i.11830 = shl i32 %cond.i.i.i.i.11829, 2, !dbg !149
  %258 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.11830, i32 %254), !dbg !150
  %259 = bitcast i32 %258 to float, !dbg !151
  %260 = tail call contract noundef float @llvm.maxnum.f32(float %253, float %259), !dbg !152
  %sub.11831 = fsub contract float %260, %normalizer.sroa.0.4, !dbg !156
  %mul385.11832 = fmul contract float %sub.11831, 0x3FC7154760000000, !dbg !157
  %cmp386.11833 = fcmp contract ogt float %mul385.11832, 7.000000e+00, !dbg !158
  %sub390.11834 = fsub contract float %normalizer.sroa.0.4, %260
  %mul391.11835 = fmul contract float %sub390.11834, 0x3FC7154760000000
  %cmp.i.i.11836 = fcmp contract olt float %mul391.11835, -1.260000e+02
  %cond2.i.i.11837 = select contract i1 %cmp.i.i.11836, float 0x3BF0000000000000, float 1.000000e+00
  %cond.i.i.11838 = select contract i1 %cmp.i.i.11836, float 6.400000e+01, float 0.000000e+00
  %add.i.i.11839 = fadd contract float %mul391.11835, %cond.i.i.11838
  %261 = tail call contract float @llvm.exp2.f32(float %add.i.i.11839)
  %mul.i.i.11840 = fmul contract float %cond2.i.i.11837, %261
  %rescale.sroa.0.0.11841 = select i1 %cmp386.11833, float %mul.i.i.11840, float 1.000000e+00, !dbg !159
  %cmp422.11842 = fcmp contract une float %rescale.sroa.0.0.11841, 1.000000e+00
  %normalizer.sroa.0.2.11843 = select i1 %cmp386.11833, float %260, float %normalizer.sroa.0.4, !dbg !159
  %sub406.3.11844 = fsub contract float %condval_6.0.3.11820, %normalizer.sroa.0.2.11843, !dbg !160
  %mul407.3.11845 = fmul contract float %sub406.3.11844, 0x3FC7154760000000, !dbg !161
  %add408.3.11846 = fadd contract float %mul407.3.11845, 8.000000e+00, !dbg !162
  %cmp.i.i1056.3.11847 = fcmp contract olt float %add408.3.11846, -1.260000e+02, !dbg !163
  %cond2.i.i1059.3.11848 = select contract i1 %cmp.i.i1056.3.11847, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %cond.i.i1057.3.11849 = select contract i1 %cmp.i.i1056.3.11847, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.3.11850 = fadd contract float %add408.3.11846, %cond.i.i1057.3.11849, !dbg !163
  %262 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.3.11850), !dbg !163
  %mul.i.i1060.3.11851 = fmul contract float %cond2.i.i1059.3.11848, %262, !dbg !163
  %sub406.11852 = fsub contract float %spec.select.1, %normalizer.sroa.0.2.11843, !dbg !160
  %mul407.11853 = fmul contract float %sub406.11852, 0x3FC7154760000000, !dbg !161
  %add408.11854 = fadd contract float %mul407.11853, 8.000000e+00, !dbg !162
  %cmp.i.i1056.11855 = fcmp contract olt float %add408.11854, -1.260000e+02, !dbg !163
  %cond2.i.i1059.11856 = select contract i1 %cmp.i.i1056.11855, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %cond.i.i1057.11857 = select contract i1 %cmp.i.i1056.11855, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.11858 = fadd contract float %add408.11854, %cond.i.i1057.11857, !dbg !163
  %263 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.11858), !dbg !163
  %mul.i.i1060.11859 = fmul contract float %cond2.i.i1059.11856, %263, !dbg !163
  %sub406.1.11860 = fsub contract float %condval_6.0.1.11814, %normalizer.sroa.0.2.11843, !dbg !160
  %mul407.1.11861 = fmul contract float %sub406.1.11860, 0x3FC7154760000000, !dbg !161
  %add408.1.11862 = fadd contract float %mul407.1.11861, 8.000000e+00, !dbg !162
  %cmp.i.i1056.1.11863 = fcmp contract olt float %add408.1.11862, -1.260000e+02, !dbg !163
  %cond2.i.i1059.1.11864 = select contract i1 %cmp.i.i1056.1.11863, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %cond.i.i1057.1.11865 = select contract i1 %cmp.i.i1056.1.11863, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.1.11866 = fadd contract float %add408.1.11862, %cond.i.i1057.1.11865, !dbg !163
  %264 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.1.11866), !dbg !163
  %mul.i.i1060.1.11867 = fmul contract float %cond2.i.i1059.1.11864, %264, !dbg !163
  %sub406.2.11868 = fsub contract float %condval_6.0.2.11817, %normalizer.sroa.0.2.11843, !dbg !160
  %mul407.2.11869 = fmul contract float %sub406.2.11868, 0x3FC7154760000000, !dbg !161
  %add408.2.11870 = fadd contract float %mul407.2.11869, 8.000000e+00, !dbg !162
  %cmp.i.i1056.2.11871 = fcmp contract olt float %add408.2.11870, -1.260000e+02, !dbg !163
  %cond2.i.i1059.2.11872 = select contract i1 %cmp.i.i1056.2.11871, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %cond.i.i1057.2.11873 = select contract i1 %cmp.i.i1056.2.11871, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.2.11874 = fadd contract float %add408.2.11870, %cond.i.i1057.2.11873, !dbg !163
  %265 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.2.11874), !dbg !163
  %mul.i.i1060.2.11875 = fmul contract float %cond2.i.i1059.2.11872, %265, !dbg !163
  %mul486.11876 = fmul contract float %rescale.sroa.0.0.11841, 0.000000e+00, !dbg !166
  %pair_sum_local.sroa.0.1.11877 = select i1 %cmp422.11842, float %mul486.11876, float 0.000000e+00, !dbg !166
  %add496.11878 = fadd contract float %pair_sum_local.sroa.0.1.11877, %mul.i.i1060.11859, !dbg !167
  %add496.1.11879 = fadd contract float %add496.11878, %mul.i.i1060.1.11867, !dbg !167
  %add496.2.11880 = fadd contract float %add496.1.11879, %mul.i.i1060.2.11875, !dbg !167
  %add496.3.11881 = fadd contract float %add496.2.11880, %mul.i.i1060.3.11851, !dbg !167
  %266 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !168, !noalias !176
  %267 = fptrunc float %mul.i.i1060.11859 to half, !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %266), !dbg !168, !noalias !176
  %268 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %269 = fptrunc float %mul.i.i1060.1.11867 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %268), !dbg !181, !noalias !176
  %270 = bitcast half %267 to i16, !dbg !183
  %271 = bitcast half %269 to i16, !dbg !186
  %272 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !187, !noalias !191
  %273 = fptrunc float %mul.i.i1060.2.11875 to half, !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %272), !dbg !187, !noalias !191
  %274 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !196
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !196, !noalias !191
  %275 = fptrunc float %mul.i.i1060.3.11851 to half, !dbg !196
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %274), !dbg !196, !noalias !191
  %276 = bitcast half %273 to i16, !dbg !198
  %277 = bitcast half %275 to i16, !dbg !200
  %__4.sroa.6.0.insert.ext.11882 = zext i16 %277 to i64, !dbg !201
  %__4.sroa.6.0.insert.shift.11883 = shl nuw i64 %__4.sroa.6.0.insert.ext.11882, 48, !dbg !201
  %__4.sroa.5.0.insert.ext.11884 = zext i16 %276 to i64, !dbg !201
  %__4.sroa.5.0.insert.shift.11885 = shl nuw nsw i64 %__4.sroa.5.0.insert.ext.11884, 32, !dbg !201
  %__4.sroa.5.0.insert.insert.11886 = or disjoint i64 %__4.sroa.6.0.insert.shift.11883, %__4.sroa.5.0.insert.shift.11885, !dbg !201
  %__4.sroa.4.0.insert.ext.11887 = zext i16 %271 to i64, !dbg !201
  %__4.sroa.4.0.insert.shift.11888 = shl nuw nsw i64 %__4.sroa.4.0.insert.ext.11887, 16, !dbg !201
  %__4.sroa.4.0.insert.insert.11889 = or disjoint i64 %__4.sroa.5.0.insert.insert.11886, %__4.sroa.4.0.insert.shift.11888, !dbg !201
  %__4.sroa.0.0.insert.ext.11890 = zext i16 %270 to i64, !dbg !201
  %__4.sroa.0.0.insert.insert.11891 = or disjoint i64 %__4.sroa.4.0.insert.insert.11889, %__4.sroa.0.0.insert.ext.11890, !dbg !201
  %278 = bitcast i64 %__4.sroa.0.0.insert.insert.11891 to <2 x i32>, !dbg !201
  br label %if.end517.11896, !dbg !202

if.end517.11896:                                  ; preds = %if.end240.1.11892, %if.then.1
  %probability_pair.sroa.0.4.1 = phi <2 x i32> [ zeroinitializer, %if.then.1 ], [ %278, %if.end240.1.11892 ], !dbg !90
  %pair_sum_local.sroa.0.3.11893 = phi float [ 0.000000e+00, %if.then.1 ], [ %add496.3.11881, %if.end240.1.11892 ], !dbg !90
  %pair_rescale.sroa.0.1.11894 = phi float [ 1.000000e+00, %if.then.1 ], [ %rescale.sroa.0.0.11841, %if.end240.1.11892 ], !dbg !90
  %normalizer.sroa.0.3.11895 = phi float [ %normalizer.sroa.0.4, %if.then.1 ], [ %normalizer.sroa.0.2.11843, %if.end240.1.11892 ], !dbg !90
  %or.cond1109.1.1 = icmp ugt i32 %mul130.1, %1, !dbg !78
  br i1 %or.cond1109.1.1, label %if.end517.1.1, label %if.then175.1.1, !dbg !78

if.then175.1.1:                                   ; preds = %if.end517.11896
  fence syncscope("warp") release, !dbg !79
  tail call void @llvm.mxc.barrier.warp(), !dbg !82
  fence syncscope("warp") acquire, !dbg !83
  %add186.1.1 = add nsw i32 %mul130.1, %shr185
  %shr187.1.1 = ashr i32 %add186.1.1, 3
  %condval_5.0.1.1 = sext i32 %mul130.1 to i64
  %.idx.1.1 = shl nsw i64 %condval_5.0.1.1, 7
  %gep.1.1 = getelementptr i8, ptr addrspace(4) %invariant.gep1142, i64 %.idx.1.1, !dbg !84
  %279 = icmp slt i32 %shr187.1.1, 128, !dbg !85
  br i1 %279, label %if.then190.11186.1, label %if.end240.11195.1, !dbg !86

if.then190.11186.1:                               ; preds = %if.then175.1.1
  %280 = getelementptr i8, ptr addrspace(4) %gep.1.1, i64 %.idx1162.11178, !dbg !87
  %condval_2.sroa.0.0.copyload.11179.1 = load i32, ptr addrspace(4) %280, align 16, !dbg !88, !tbaa !30
  %condval_2.sroa.5.0.add.ptr216.sroa_idx.11180.1 = getelementptr inbounds i8, ptr addrspace(4) %280, i64 4, !dbg !88
  %condval_2.sroa.5.0.copyload.11181.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr216.sroa_idx.11180.1, align 4, !dbg !88, !tbaa !30
  %condval_2.sroa.6.0.add.ptr216.sroa_idx.11182.1 = getelementptr inbounds i8, ptr addrspace(4) %280, i64 8, !dbg !88
  %condval_2.sroa.6.0.copyload.11183.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr216.sroa_idx.11182.1, align 8, !dbg !88, !tbaa !30
  %condval_2.sroa.7.0.add.ptr216.sroa_idx.11184.1 = getelementptr inbounds i8, ptr addrspace(4) %280, i64 12, !dbg !88
  %condval_2.sroa.7.0.copyload.11185.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr216.sroa_idx.11184.1, align 4, !dbg !88, !tbaa !30
  br label %if.end240.11195.1, !dbg !89

if.end240.11195.1:                                ; preds = %if.then190.11186.1, %if.then175.1.1
  %condval_2.sroa.0.0.11187.1 = phi i32 [ %condval_2.sroa.0.0.copyload.11179.1, %if.then190.11186.1 ], [ 0, %if.then175.1.1 ], !dbg !90
  %condval_2.sroa.5.0.11188.1 = phi i32 [ %condval_2.sroa.5.0.copyload.11181.1, %if.then190.11186.1 ], [ 0, %if.then175.1.1 ], !dbg !90
  %condval_2.sroa.6.0.11189.1 = phi i32 [ %condval_2.sroa.6.0.copyload.11183.1, %if.then190.11186.1 ], [ 0, %if.then175.1.1 ], !dbg !90
  %condval_2.sroa.7.0.11190.1 = phi i32 [ %condval_2.sroa.7.0.copyload.11185.1, %if.then190.11186.1 ], [ 0, %if.then175.1.1 ], !dbg !90
  store i32 %condval_2.sroa.0.0.11187.1, ptr addrspace(3) %add.ptr45, align 16, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.5.0.11188.1, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr275.sroa_idx.11192, align 4, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.6.0.11189.1, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr275.sroa_idx.11193, align 8, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.7.0.11190.1, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr275.sroa_idx.11194, align 4, !dbg !91, !tbaa !30
  %281 = icmp slt i32 %shr187.1.1, 127, !dbg !85
  br i1 %281, label %if.then190.1.1.1, label %if.end240.1.1.1, !dbg !86

if.then190.1.1.1:                                 ; preds = %if.end240.11195.1
  %282 = getelementptr i8, ptr addrspace(4) %gep.1.1, i64 %.idx1162.1.1, !dbg !87
  %gep1129.1.1.1 = getelementptr i8, ptr addrspace(4) %282, i64 1024, !dbg !87
  %condval_2.sroa.0.0.copyload.1.1.1 = load i32, ptr addrspace(4) %gep1129.1.1.1, align 16, !dbg !88, !tbaa !30
  %condval_2.sroa.5.0.add.ptr216.sroa_idx.1.1.1 = getelementptr i8, ptr addrspace(4) %282, i64 1028, !dbg !88
  %condval_2.sroa.5.0.copyload.1.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr216.sroa_idx.1.1.1, align 4, !dbg !88, !tbaa !30
  %condval_2.sroa.6.0.add.ptr216.sroa_idx.1.1.1 = getelementptr i8, ptr addrspace(4) %282, i64 1032, !dbg !88
  %condval_2.sroa.6.0.copyload.1.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr216.sroa_idx.1.1.1, align 8, !dbg !88, !tbaa !30
  %condval_2.sroa.7.0.add.ptr216.sroa_idx.1.1.1 = getelementptr i8, ptr addrspace(4) %282, i64 1036, !dbg !88
  %condval_2.sroa.7.0.copyload.1.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr216.sroa_idx.1.1.1, align 4, !dbg !88, !tbaa !30
  br label %if.end240.1.1.1, !dbg !89

if.end240.1.1.1:                                  ; preds = %if.then190.1.1.1, %if.end240.11195.1
  %condval_2.sroa.0.0.1.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1.1, %if.then190.1.1.1 ], [ 0, %if.end240.11195.1 ], !dbg !90
  %condval_2.sroa.5.0.1.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1.1, %if.then190.1.1.1 ], [ 0, %if.end240.11195.1 ], !dbg !90
  %condval_2.sroa.6.0.1.1.1 = phi i32 [ %condval_2.sroa.6.0.copyload.1.1.1, %if.then190.1.1.1 ], [ 0, %if.end240.11195.1 ], !dbg !90
  %condval_2.sroa.7.0.1.1.1 = phi i32 [ %condval_2.sroa.7.0.copyload.1.1.1, %if.then190.1.1.1 ], [ 0, %if.end240.11195.1 ], !dbg !90
  store i32 %condval_2.sroa.0.0.1.1.1, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.5.0.1.1.1, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr275.sroa_idx.1.1, align 4, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.6.0.1.1.1, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr275.sroa_idx.1.1, align 8, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.7.0.1.1.1, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr275.sroa_idx.1.1, align 4, !dbg !91, !tbaa !30
  fence syncscope("warp") release, !dbg !92
  tail call void @llvm.mxc.barrier.warp(), !dbg !95
  fence syncscope("warp") acquire, !dbg !96
  %k_local.sroa.0.0.copyload.11203.1 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !97
  %283 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11203.1, <4 x half> %12, <4 x float> zeroinitializer), !dbg !98
  %k_local.sroa.0.0.copyload.1.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !97
  %284 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1.1, <4 x half> %16, <4 x float> %283), !dbg !98
  %k_local.sroa.0.0.copyload.2.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !97
  %285 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1.1, <4 x half> %18, <4 x float> %284), !dbg !98
  %k_local.sroa.0.0.copyload.3.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !97
  %286 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1.1, <4 x half> %22, <4 x float> %285), !dbg !98
  %add346.1.1 = add nsw i32 %mul130.1, %mul345
  %cmp349.not.11204.1 = icmp sgt i32 %add346.1.1, %1, !dbg !99
  %scores.sroa.0.0.vec.extract1484.1 = extractelement <4 x float> %286, i64 0
  %spec.select1775.1 = select i1 %cmp349.not.11204.1, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1484.1, !dbg !100
  %cmp349.not.1.1.not.1 = icmp slt i32 %add346.1.1, %1, !dbg !99
  %scores.sroa.0.4.vec.extract1519.1 = extractelement <4 x float> %286, i64 1, !dbg !100
  %condval_6.0.1.1.1 = select i1 %cmp349.not.1.1.not.1, float %scores.sroa.0.4.vec.extract1519.1, float 0xFFF0000000000000, !dbg !100
  %add347.2.1.1 = or disjoint i32 %add346.1.1, 2, !dbg !101
  %cmp349.not.2.1.1 = icmp sgt i32 %add347.2.1.1, %1, !dbg !99
  %scores.sroa.0.8.vec.extract1552.1 = extractelement <4 x float> %286, i64 2, !dbg !100
  %condval_6.0.2.1.1 = select i1 %cmp349.not.2.1.1, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1552.1, !dbg !100
  %add347.3.1.1 = or disjoint i32 %add346.1.1, 3, !dbg !101
  %cmp349.not.3.1.1 = icmp sgt i32 %add347.3.1.1, %1, !dbg !99
  %scores.sroa.0.12.vec.extract1585.1 = extractelement <4 x float> %286, i64 3, !dbg !100
  %condval_6.0.3.1.1 = select i1 %cmp349.not.3.1.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1585.1, !dbg !100
  %287 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select1775.1, float 0xFFF0000000000000), !dbg !102
  %288 = tail call contract noundef float @llvm.maxnum.f32(float %287, float %condval_6.0.1.1.1), !dbg !102
  %289 = tail call contract noundef float @llvm.maxnum.f32(float %288, float %condval_6.0.2.1.1), !dbg !102
  %290 = tail call contract noundef float @llvm.maxnum.f32(float %289, float %condval_6.0.3.1.1), !dbg !102
  %291 = bitcast float %290 to i32, !dbg !106
  %292 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !115
  %293 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %292) #11, !dbg !120
  %xor.i.i.i.1.1 = xor i32 %293, 32, !dbg !121
  %294 = and i32 %293, -64, !dbg !122
  %and.i.i.i.1.1 = add nsw i32 %294, 64, !dbg !122
  %cmp.not.i.i.i.1.1 = icmp slt i32 %xor.i.i.i.1.1, %and.i.i.i.1.1, !dbg !123
  %cond.i.i.i.1.1 = select i1 %cmp.not.i.i.i.1.1, i32 %xor.i.i.i.1.1, i32 %293, !dbg !124
  %shl.i.i.i.1.1 = shl i32 %cond.i.i.i.1.1, 2, !dbg !125
  %295 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.1.1, i32 %291), !dbg !126
  %296 = bitcast i32 %295 to float, !dbg !127
  %297 = tail call contract noundef float @llvm.maxnum.f32(float %290, float %296), !dbg !128
  %298 = bitcast float %297 to i32, !dbg !136
  %299 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !141
  %300 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %299) #11, !dbg !144
  %xor.i.i.i.i.1.1 = xor i32 %300, 16, !dbg !145
  %301 = and i32 %300, -64, !dbg !146
  %and.i.i.i.i.1.1 = add nsw i32 %301, 64, !dbg !146
  %cmp.not.i.i.i.i.1.1 = icmp slt i32 %xor.i.i.i.i.1.1, %and.i.i.i.i.1.1, !dbg !147
  %cond.i.i.i.i.1.1 = select i1 %cmp.not.i.i.i.i.1.1, i32 %xor.i.i.i.i.1.1, i32 %300, !dbg !148
  %shl.i.i.i.i.1.1 = shl i32 %cond.i.i.i.i.1.1, 2, !dbg !149
  %302 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.1.1, i32 %298), !dbg !150
  %303 = bitcast i32 %302 to float, !dbg !151
  %304 = tail call contract noundef float @llvm.maxnum.f32(float %297, float %303), !dbg !152
  %sub.1.1 = fsub contract float %304, %normalizer.sroa.0.3.11895, !dbg !156
  %mul385.1.1 = fmul contract float %sub.1.1, 0x3FC7154760000000, !dbg !157
  %cmp386.1.1 = fcmp contract ogt float %mul385.1.1, 7.000000e+00, !dbg !158
  %sub390.1.1 = fsub contract float %normalizer.sroa.0.3.11895, %304
  %mul391.1.1 = fmul contract float %sub390.1.1, 0x3FC7154760000000
  %cmp.i.i.1.1 = fcmp contract olt float %mul391.1.1, -1.260000e+02
  %cond.i.i.1.1 = select contract i1 %cmp.i.i.1.1, float 6.400000e+01, float 0.000000e+00
  %add.i.i.1.1 = fadd contract float %mul391.1.1, %cond.i.i.1.1
  %305 = tail call contract float @llvm.exp2.f32(float %add.i.i.1.1)
  %cond2.i.i.1.1 = select contract i1 %cmp.i.i.1.1, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i.1.1 = fmul contract float %cond2.i.i.1.1, %305
  %normalizer.sroa.0.2.1.1 = select i1 %cmp386.1.1, float %304, float %normalizer.sroa.0.3.11895, !dbg !159
  %sub406.11208.1 = fsub contract float %spec.select1775.1, %normalizer.sroa.0.2.1.1, !dbg !160
  %mul407.11209.1 = fmul contract float %sub406.11208.1, 0x3FC7154760000000, !dbg !161
  %add408.11210.1 = fadd contract float %mul407.11209.1, 8.000000e+00, !dbg !162
  %cmp.i.i1056.11211.1 = fcmp contract olt float %add408.11210.1, -1.260000e+02, !dbg !163
  %cond.i.i1057.11212.1 = select contract i1 %cmp.i.i1056.11211.1, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.11213.1 = fadd contract float %add408.11210.1, %cond.i.i1057.11212.1, !dbg !163
  %306 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.11213.1), !dbg !163
  %cond2.i.i1059.11214.1 = select contract i1 %cmp.i.i1056.11211.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %mul.i.i1060.11215.1 = fmul contract float %cond2.i.i1059.11214.1, %306, !dbg !163
  %sub406.1.1.1 = fsub contract float %condval_6.0.1.1.1, %normalizer.sroa.0.2.1.1, !dbg !160
  %mul407.1.1.1 = fmul contract float %sub406.1.1.1, 0x3FC7154760000000, !dbg !161
  %add408.1.1.1 = fadd contract float %mul407.1.1.1, 8.000000e+00, !dbg !162
  %cmp.i.i1056.1.1.1 = fcmp contract olt float %add408.1.1.1, -1.260000e+02, !dbg !163
  %cond.i.i1057.1.1.1 = select contract i1 %cmp.i.i1056.1.1.1, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.1.1.1 = fadd contract float %add408.1.1.1, %cond.i.i1057.1.1.1, !dbg !163
  %307 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.1.1.1), !dbg !163
  %cond2.i.i1059.1.1.1 = select contract i1 %cmp.i.i1056.1.1.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %mul.i.i1060.1.1.1 = fmul contract float %cond2.i.i1059.1.1.1, %307, !dbg !163
  %sub406.2.1.1 = fsub contract float %condval_6.0.2.1.1, %normalizer.sroa.0.2.1.1, !dbg !160
  %mul407.2.1.1 = fmul contract float %sub406.2.1.1, 0x3FC7154760000000, !dbg !161
  %add408.2.1.1 = fadd contract float %mul407.2.1.1, 8.000000e+00, !dbg !162
  %cmp.i.i1056.2.1.1 = fcmp contract olt float %add408.2.1.1, -1.260000e+02, !dbg !163
  %cond.i.i1057.2.1.1 = select contract i1 %cmp.i.i1056.2.1.1, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.2.1.1 = fadd contract float %add408.2.1.1, %cond.i.i1057.2.1.1, !dbg !163
  %308 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.2.1.1), !dbg !163
  %cond2.i.i1059.2.1.1 = select contract i1 %cmp.i.i1056.2.1.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %mul.i.i1060.2.1.1 = fmul contract float %cond2.i.i1059.2.1.1, %308, !dbg !163
  %sub406.3.1.1 = fsub contract float %condval_6.0.3.1.1, %normalizer.sroa.0.2.1.1, !dbg !160
  %mul407.3.1.1 = fmul contract float %sub406.3.1.1, 0x3FC7154760000000, !dbg !161
  %add408.3.1.1 = fadd contract float %mul407.3.1.1, 8.000000e+00, !dbg !162
  %cmp.i.i1056.3.1.1 = fcmp contract olt float %add408.3.1.1, -1.260000e+02, !dbg !163
  %cond.i.i1057.3.1.1 = select contract i1 %cmp.i.i1056.3.1.1, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.3.1.1 = fadd contract float %add408.3.1.1, %cond.i.i1057.3.1.1, !dbg !163
  %309 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.3.1.1), !dbg !163
  %cond2.i.i1059.3.1.1 = select contract i1 %cmp.i.i1056.3.1.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %mul.i.i1060.3.1.1 = fmul contract float %cond2.i.i1059.3.1.1, %309, !dbg !163
  %rescale.sroa.0.0.1.1 = select i1 %cmp386.1.1, float %mul.i.i.1.1, float 1.000000e+00, !dbg !159
  %mul417.1.1 = fmul contract float %pair_rescale.sroa.0.1.11894, %rescale.sroa.0.0.1.1, !dbg !203
  %cmp422.1.1 = fcmp contract une float %rescale.sroa.0.0.1.1, 1.000000e+00
  br i1 %cmp422.1.1, label %if.then429.11237.1, label %if.end480.1.1, !dbg !204

if.then429.11237.1:                               ; preds = %if.end240.1.1.1
  %bc1773.1 = bitcast <2 x i32> %probability_pair.sroa.0.4.1 to <4 x half>, !dbg !205
  %310 = extractelement <4 x half> %bc1773.1, i64 0, !dbg !205
  %conv.i1061.11217.1 = fpext half %310 to float, !dbg !205
  %bc1770.1 = bitcast <2 x i32> %probability_pair.sroa.0.4.1 to <4 x half>, !dbg !208
  %311 = extractelement <4 x half> %bc1770.1, i64 1, !dbg !208
  %conv6.i.11219.1 = fpext half %311 to float, !dbg !208
  %bc1771.1 = bitcast <2 x i32> %probability_pair.sroa.0.4.1 to <4 x half>, !dbg !209
  %312 = extractelement <4 x half> %bc1771.1, i64 2, !dbg !209
  %conv.i1063.11220.1 = fpext half %312 to float, !dbg !209
  %bc1774.1 = bitcast <2 x i32> %probability_pair.sroa.0.4.1 to <4 x half>, !dbg !211
  %313 = extractelement <4 x half> %bc1774.1, i64 3, !dbg !211
  %conv6.i1065.11222.1 = fpext half %313 to float, !dbg !211
  %mul450.11223.1 = fmul contract float %rescale.sroa.0.0.1.1, %conv.i1061.11217.1, !dbg !212
  %mul453.11224.1 = fmul contract float %rescale.sroa.0.0.1.1, %conv6.i.11219.1, !dbg !213
  %mul456.11225.1 = fmul contract float %rescale.sroa.0.0.1.1, %conv.i1063.11220.1, !dbg !214
  %mul459.11226.1 = fmul contract float %rescale.sroa.0.0.1.1, %conv6.i1065.11222.1, !dbg !215
  %314 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !216, !noalias !220
  %315 = fptrunc float %mul450.11223.1 to half, !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %314), !dbg !216, !noalias !220
  %316 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !225
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !225, !noalias !220
  %317 = fptrunc float %mul453.11224.1 to half, !dbg !225
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %316), !dbg !225, !noalias !220
  %318 = bitcast half %315 to i16, !dbg !227
  %319 = bitcast half %317 to i16, !dbg !229
  %320 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !230
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !230, !noalias !234
  %321 = fptrunc float %mul456.11225.1 to half, !dbg !230
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %320), !dbg !230, !noalias !234
  %322 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !239, !noalias !234
  %323 = fptrunc float %mul459.11226.1 to half, !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %322), !dbg !239, !noalias !234
  %324 = bitcast half %321 to i16, !dbg !241
  %325 = bitcast half %323 to i16, !dbg !243
  %__1.sroa.6.0.insert.ext.11227.1 = zext i16 %325 to i64, !dbg !244
  %__1.sroa.6.0.insert.shift.11228.1 = shl nuw i64 %__1.sroa.6.0.insert.ext.11227.1, 48, !dbg !244
  %__1.sroa.5.0.insert.ext.11229.1 = zext i16 %324 to i64, !dbg !244
  %__1.sroa.5.0.insert.shift.11230.1 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.11229.1, 32, !dbg !244
  %__1.sroa.5.0.insert.insert.11231.1 = or disjoint i64 %__1.sroa.6.0.insert.shift.11228.1, %__1.sroa.5.0.insert.shift.11230.1, !dbg !244
  %__1.sroa.4.0.insert.ext.11232.1 = zext i16 %319 to i64, !dbg !244
  %__1.sroa.4.0.insert.shift.11233.1 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.11232.1, 16, !dbg !244
  %__1.sroa.4.0.insert.insert.11234.1 = or disjoint i64 %__1.sroa.5.0.insert.insert.11231.1, %__1.sroa.4.0.insert.shift.11233.1, !dbg !244
  %__1.sroa.0.0.insert.ext.11235.1 = zext i16 %318 to i64, !dbg !244
  %__1.sroa.0.0.insert.insert.11236.1 = or disjoint i64 %__1.sroa.4.0.insert.insert.11234.1, %__1.sroa.0.0.insert.ext.11235.1, !dbg !244
  %326 = bitcast i64 %__1.sroa.0.0.insert.insert.11236.1 to <2 x i32>, !dbg !244
  br label %if.end480.1.1, !dbg !166

if.end480.1.1:                                    ; preds = %if.then429.11237.1, %if.end240.1.1.1
  %probability_pair.sroa.0.7.1 = phi <2 x i32> [ %326, %if.then429.11237.1 ], [ %probability_pair.sroa.0.4.1, %if.end240.1.1.1 ], !dbg !90
  %mul486.1.1 = fmul contract float %pair_sum_local.sroa.0.3.11893, %rescale.sroa.0.0.1.1, !dbg !166
  %pair_sum_local.sroa.0.1.1.1 = select i1 %cmp422.1.1, float %mul486.1.1, float %pair_sum_local.sroa.0.3.11893, !dbg !166
  %add496.11239.1 = fadd contract float %pair_sum_local.sroa.0.1.1.1, %mul.i.i1060.11215.1, !dbg !167
  %add496.1.1.1 = fadd contract float %add496.11239.1, %mul.i.i1060.1.1.1, !dbg !167
  %add496.2.1.1 = fadd contract float %add496.1.1.1, %mul.i.i1060.2.1.1, !dbg !167
  %add496.3.1.1 = fadd contract float %add496.2.1.1, %mul.i.i1060.3.1.1, !dbg !167
  %327 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !168, !noalias !176
  %328 = fptrunc float %mul.i.i1060.11215.1 to half, !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %327), !dbg !168, !noalias !176
  %329 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %330 = fptrunc float %mul.i.i1060.1.1.1 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %329), !dbg !181, !noalias !176
  %331 = bitcast half %328 to i16, !dbg !183
  %332 = bitcast half %330 to i16, !dbg !186
  %333 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !187, !noalias !191
  %334 = fptrunc float %mul.i.i1060.2.1.1 to half, !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %333), !dbg !187, !noalias !191
  %335 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !196
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !196, !noalias !191
  %336 = fptrunc float %mul.i.i1060.3.1.1 to half, !dbg !196
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %335), !dbg !196, !noalias !191
  %337 = bitcast half %334 to i16, !dbg !198
  %338 = bitcast half %336 to i16, !dbg !200
  %__4.sroa.6.0.insert.ext.1.1 = zext i16 %338 to i64, !dbg !201
  %__4.sroa.6.0.insert.shift.1.1 = shl nuw i64 %__4.sroa.6.0.insert.ext.1.1, 48, !dbg !201
  %__4.sroa.5.0.insert.ext.1.1 = zext i16 %337 to i64, !dbg !201
  %__4.sroa.5.0.insert.shift.1.1 = shl nuw nsw i64 %__4.sroa.5.0.insert.ext.1.1, 32, !dbg !201
  %__4.sroa.5.0.insert.insert.1.1 = or disjoint i64 %__4.sroa.6.0.insert.shift.1.1, %__4.sroa.5.0.insert.shift.1.1, !dbg !201
  %__4.sroa.4.0.insert.ext.1.1 = zext i16 %332 to i64, !dbg !201
  %__4.sroa.4.0.insert.shift.1.1 = shl nuw nsw i64 %__4.sroa.4.0.insert.ext.1.1, 16, !dbg !201
  %__4.sroa.4.0.insert.insert.1.1 = or disjoint i64 %__4.sroa.5.0.insert.insert.1.1, %__4.sroa.4.0.insert.shift.1.1, !dbg !201
  %__4.sroa.0.0.insert.ext.1.1 = zext i16 %331 to i64, !dbg !201
  %__4.sroa.0.0.insert.insert.1.1 = or disjoint i64 %__4.sroa.4.0.insert.insert.1.1, %__4.sroa.0.0.insert.ext.1.1, !dbg !201
  %339 = bitcast i64 %__4.sroa.0.0.insert.insert.1.1 to <2 x i32>, !dbg !201
  br label %if.end517.1.1, !dbg !202

if.end517.1.1:                                    ; preds = %if.end480.1.1, %if.end517.11896
  %probability_pair.sroa.14.1.1 = phi <2 x i32> [ zeroinitializer, %if.end517.11896 ], [ %339, %if.end480.1.1 ], !dbg !90
  %probability_pair.sroa.0.8.1 = phi <2 x i32> [ %probability_pair.sroa.0.4.1, %if.end517.11896 ], [ %probability_pair.sroa.0.7.1, %if.end480.1.1 ], !dbg !90
  %pair_sum_local.sroa.0.3.1.1 = phi float [ %pair_sum_local.sroa.0.3.11893, %if.end517.11896 ], [ %add496.3.1.1, %if.end480.1.1 ], !dbg !90
  %pair_rescale.sroa.0.1.1.1 = phi float [ %pair_rescale.sroa.0.1.11894, %if.end517.11896 ], [ %mul417.1.1, %if.end480.1.1 ], !dbg !90
  %normalizer.sroa.0.3.1.1 = phi float [ %normalizer.sroa.0.3.11895, %if.end517.11896 ], [ %normalizer.sroa.0.2.1.1, %if.end480.1.1 ], !dbg !90
  %add535.11897 = fadd contract float %pair_sum_local.sroa.0.3.1.1, 0.000000e+00, !dbg !245
  %add535.1.1 = fadd contract float %add535.11897, 0.000000e+00, !dbg !245
  %add535.2.1 = fadd contract float %add535.1.1, 0.000000e+00, !dbg !245
  %add535.3.1 = fadd contract float %add535.2.1, 0.000000e+00, !dbg !245
  %340 = bitcast float %add535.3.1 to i32, !dbg !246
  %341 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !251
  %342 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %341) #11, !dbg !254
  %xor.i.i.i1075.1 = xor i32 %342, 32, !dbg !255
  %343 = and i32 %342, -64, !dbg !256
  %and.i.i.i1076.1 = add nsw i32 %343, 64, !dbg !256
  %cmp.not.i.i.i1077.1 = icmp slt i32 %xor.i.i.i1075.1, %and.i.i.i1076.1, !dbg !257
  %cond.i.i.i1078.1 = select i1 %cmp.not.i.i.i1077.1, i32 %xor.i.i.i1075.1, i32 %342, !dbg !258
  %shl.i.i.i1079.1 = shl i32 %cond.i.i.i1078.1, 2, !dbg !259
  %344 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i1079.1, i32 %340), !dbg !260
  %345 = bitcast i32 %344 to float, !dbg !261
  %add.i.i1080.1 = fadd contract float %add535.3.1, %345, !dbg !262
  %346 = bitcast float %add.i.i1080.1 to i32, !dbg !265
  %347 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !270
  %348 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %347) #11, !dbg !273
  %xor.i.i.i.i1081.1 = xor i32 %348, 16, !dbg !274
  %349 = and i32 %348, -64, !dbg !275
  %and.i.i.i.i1082.1 = add nsw i32 %349, 64, !dbg !275
  %cmp.not.i.i.i.i1083.1 = icmp slt i32 %xor.i.i.i.i1081.1, %and.i.i.i.i1082.1, !dbg !276
  %cond.i.i.i.i1084.1 = select i1 %cmp.not.i.i.i.i1083.1, i32 %xor.i.i.i.i1081.1, i32 %348, !dbg !277
  %shl.i.i.i.i1085.1 = shl i32 %cond.i.i.i.i1084.1, 2, !dbg !278
  %350 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i1085.1, i32 %346), !dbg !279
  %351 = bitcast i32 %350 to float, !dbg !280
  %add.i.i.i.1 = fadd contract float %add.i.i1080.1, %351, !dbg !281
  %cmp544.1 = fcmp contract une float %pair_rescale.sroa.0.1.1.1, 1.000000e+00, !dbg !283
  %mul548.1 = fmul contract float %denominator.sroa.0.2, %pair_rescale.sroa.0.1.1.1, !dbg !284
  %denominator.sroa.0.1.1 = select i1 %cmp544.1, float %mul548.1, float %denominator.sroa.0.2, !dbg !284
  %add553.1 = fadd contract float %denominator.sroa.0.1.1, %add.i.i.i.1, !dbg !285
  br i1 %cmp544.1, label %for.body561.preheader.1, label %if.end571.1, !dbg !286

for.body561.preheader.1:                          ; preds = %if.end517.1.1
  %output_acc.sroa.0.0.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.0.4, i64 0, !dbg !313
  %mul565.11898 = fmul contract float %pair_rescale.sroa.0.1.1.1, %output_acc.sroa.0.0.vec.extract.1, !dbg !287
  %output_acc.sroa.0.0.vec.insert1614.1 = insertelement <4 x float> poison, float %mul565.11898, i64 0, !dbg !288
  %output_acc.sroa.0.4.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.0.4, i64 1, !dbg !313
  %mul565.1.1 = fmul contract float %pair_rescale.sroa.0.1.1.1, %output_acc.sroa.0.4.vec.extract.1, !dbg !287
  %output_acc.sroa.0.4.vec.insert1623.1 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert1614.1, float %mul565.1.1, i64 1, !dbg !288
  %output_acc.sroa.0.8.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.0.4, i64 2, !dbg !313
  %mul565.2.1 = fmul contract float %pair_rescale.sroa.0.1.1.1, %output_acc.sroa.0.8.vec.extract.1, !dbg !287
  %output_acc.sroa.0.8.vec.insert1632.1 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert1623.1, float %mul565.2.1, i64 2, !dbg !288
  %output_acc.sroa.0.12.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.0.4, i64 3, !dbg !313
  %mul565.3.1 = fmul contract float %pair_rescale.sroa.0.1.1.1, %output_acc.sroa.0.12.vec.extract.1, !dbg !287
  %output_acc.sroa.0.12.vec.insert1641.1 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert1632.1, float %mul565.3.1, i64 3, !dbg !288
  %output_acc.sroa.30.16.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.30.4, i64 0, !dbg !313
  %mul565.4.1 = fmul contract float %pair_rescale.sroa.0.1.1.1, %output_acc.sroa.30.16.vec.extract.1, !dbg !287
  %output_acc.sroa.30.16.vec.insert1652.1 = insertelement <4 x float> poison, float %mul565.4.1, i64 0, !dbg !288
  %output_acc.sroa.30.20.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.30.4, i64 1, !dbg !313
  %mul565.5.1 = fmul contract float %pair_rescale.sroa.0.1.1.1, %output_acc.sroa.30.20.vec.extract.1, !dbg !287
  %output_acc.sroa.30.20.vec.insert1661.1 = insertelement <4 x float> %output_acc.sroa.30.16.vec.insert1652.1, float %mul565.5.1, i64 1, !dbg !288
  %output_acc.sroa.30.24.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.30.4, i64 2, !dbg !313
  %mul565.6.1 = fmul contract float %pair_rescale.sroa.0.1.1.1, %output_acc.sroa.30.24.vec.extract.1, !dbg !287
  %output_acc.sroa.30.24.vec.insert1670.1 = insertelement <4 x float> %output_acc.sroa.30.20.vec.insert1661.1, float %mul565.6.1, i64 2, !dbg !288
  %output_acc.sroa.30.28.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.30.4, i64 3, !dbg !313
  %mul565.7.1 = fmul contract float %pair_rescale.sroa.0.1.1.1, %output_acc.sroa.30.28.vec.extract.1, !dbg !287
  %output_acc.sroa.30.28.vec.insert1679.1 = insertelement <4 x float> %output_acc.sroa.30.24.vec.insert1670.1, float %mul565.7.1, i64 3, !dbg !288
  %output_acc.sroa.58.32.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.58.4, i64 0, !dbg !313
  %mul565.8.1 = fmul contract float %pair_rescale.sroa.0.1.1.1, %output_acc.sroa.58.32.vec.extract.1, !dbg !287
  %output_acc.sroa.58.32.vec.insert1690.1 = insertelement <4 x float> poison, float %mul565.8.1, i64 0, !dbg !288
  %output_acc.sroa.58.36.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.58.4, i64 1, !dbg !313
  %mul565.9.1 = fmul contract float %pair_rescale.sroa.0.1.1.1, %output_acc.sroa.58.36.vec.extract.1, !dbg !287
  %output_acc.sroa.58.36.vec.insert1699.1 = insertelement <4 x float> %output_acc.sroa.58.32.vec.insert1690.1, float %mul565.9.1, i64 1, !dbg !288
  %output_acc.sroa.58.40.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.58.4, i64 2, !dbg !313
  %mul565.10.1 = fmul contract float %pair_rescale.sroa.0.1.1.1, %output_acc.sroa.58.40.vec.extract.1, !dbg !287
  %output_acc.sroa.58.40.vec.insert1708.1 = insertelement <4 x float> %output_acc.sroa.58.36.vec.insert1699.1, float %mul565.10.1, i64 2, !dbg !288
  %output_acc.sroa.58.44.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.58.4, i64 3, !dbg !313
  %mul565.11.1 = fmul contract float %pair_rescale.sroa.0.1.1.1, %output_acc.sroa.58.44.vec.extract.1, !dbg !287
  %output_acc.sroa.58.44.vec.insert1717.1 = insertelement <4 x float> %output_acc.sroa.58.40.vec.insert1708.1, float %mul565.11.1, i64 3, !dbg !288
  %output_acc.sroa.86.48.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.86.4, i64 0, !dbg !313
  %mul565.12.1 = fmul contract float %pair_rescale.sroa.0.1.1.1, %output_acc.sroa.86.48.vec.extract.1, !dbg !287
  %output_acc.sroa.86.48.vec.insert1728.1 = insertelement <4 x float> poison, float %mul565.12.1, i64 0, !dbg !288
  %output_acc.sroa.86.52.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.86.4, i64 1, !dbg !313
  %mul565.13.1 = fmul contract float %pair_rescale.sroa.0.1.1.1, %output_acc.sroa.86.52.vec.extract.1, !dbg !287
  %output_acc.sroa.86.52.vec.insert1737.1 = insertelement <4 x float> %output_acc.sroa.86.48.vec.insert1728.1, float %mul565.13.1, i64 1, !dbg !288
  %output_acc.sroa.86.56.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.86.4, i64 2, !dbg !313
  %mul565.14.1 = fmul contract float %pair_rescale.sroa.0.1.1.1, %output_acc.sroa.86.56.vec.extract.1, !dbg !287
  %output_acc.sroa.86.56.vec.insert1746.1 = insertelement <4 x float> %output_acc.sroa.86.52.vec.insert1737.1, float %mul565.14.1, i64 2, !dbg !288
  %output_acc.sroa.86.60.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.86.4, i64 3, !dbg !313
  %mul565.15.1 = fmul contract float %pair_rescale.sroa.0.1.1.1, %output_acc.sroa.86.60.vec.extract.1, !dbg !287
  %output_acc.sroa.86.60.vec.insert1755.1 = insertelement <4 x float> %output_acc.sroa.86.56.vec.insert1746.1, float %mul565.15.1, i64 3, !dbg !288
  br label %if.end571.1, !dbg !289

if.end571.1:                                      ; preds = %for.body561.preheader.1, %if.end517.1.1
  %output_acc.sroa.86.1.1 = phi <4 x float> [ %output_acc.sroa.86.60.vec.insert1755.1, %for.body561.preheader.1 ], [ %output_acc.sroa.86.4, %if.end517.1.1 ], !dbg !90
  %output_acc.sroa.58.1.1 = phi <4 x float> [ %output_acc.sroa.58.44.vec.insert1717.1, %for.body561.preheader.1 ], [ %output_acc.sroa.58.4, %if.end517.1.1 ], !dbg !90
  %output_acc.sroa.30.1.1 = phi <4 x float> [ %output_acc.sroa.30.28.vec.insert1679.1, %for.body561.preheader.1 ], [ %output_acc.sroa.30.4, %if.end517.1.1 ], !dbg !90
  %output_acc.sroa.0.1.1 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1641.1, %for.body561.preheader.1 ], [ %output_acc.sroa.0.4, %if.end517.1.1 ], !dbg !90
  br i1 %or.cond1109.11776, label %if.end752.1, label %if.then588.11902, !dbg !290

if.then588.11902:                                 ; preds = %if.end571.1
  fence syncscope("warp") release, !dbg !291
  tail call void @llvm.mxc.barrier.warp(), !dbg !294
  fence syncscope("warp") acquire, !dbg !295
  %shr600.11899 = shl nsw i32 %232, 2
  %cmp602.11900 = icmp slt i32 %shr600.11899, %invariant.op1152
  %condval_13.0.11901 = sext i32 %mul119.1 to i64
  br i1 %cmp602.11900, label %if.then603.11907, label %if.end650.11910, !dbg !296

if.then603.11907:                                 ; preds = %if.then588.11902
  %.idx1163.11903 = shl nsw i64 %condval_13.0.11901, 7, !dbg !297
  %352 = getelementptr i8, ptr addrspace(4) %29, i64 %.idx1163.11903, !dbg !297
  %condval_10.sroa.0.0.copyload.11904 = load i32, ptr addrspace(4) %352, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.11905 = getelementptr inbounds i8, ptr addrspace(4) %352, i64 4, !dbg !298
  %condval_10.sroa.5.0.copyload.11906 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.11905, align 4, !dbg !298, !tbaa !30
  br label %if.end650.11910, !dbg !299

if.end650.11910:                                  ; preds = %if.then603.11907, %if.then588.11902
  %condval_10.sroa.5.0.11908 = phi i32 [ %condval_10.sroa.5.0.copyload.11906, %if.then603.11907 ], [ 0, %if.then588.11902 ], !dbg !90
  %condval_10.sroa.0.0.11909 = phi i32 [ %condval_10.sroa.0.0.copyload.11904, %if.then603.11907 ], [ 0, %if.then588.11902 ], !dbg !90
  br i1 %cmp602.11900, label %if.then603.1.11916, label %if.end650.1.11919, !dbg !296

if.then603.1.11916:                               ; preds = %if.end650.11910
  %.idx1163.1.11911 = shl nsw i64 %condval_13.0.11901, 7, !dbg !297
  %353 = getelementptr i8, ptr addrspace(4) %30, i64 %.idx1163.1.11911, !dbg !297
  %add.ptr636.1.11912 = getelementptr i8, ptr addrspace(4) %353, i64 128, !dbg !297
  %condval_10.sroa.0.0.copyload.1.11913 = load i32, ptr addrspace(4) %add.ptr636.1.11912, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.1.11914 = getelementptr i8, ptr addrspace(4) %353, i64 132, !dbg !298
  %condval_10.sroa.5.0.copyload.1.11915 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.1.11914, align 4, !dbg !298, !tbaa !30
  br label %if.end650.1.11919, !dbg !299

if.end650.1.11919:                                ; preds = %if.then603.1.11916, %if.end650.11910
  %condval_10.sroa.5.0.1.11917 = phi i32 [ %condval_10.sroa.5.0.copyload.1.11915, %if.then603.1.11916 ], [ 0, %if.end650.11910 ], !dbg !90
  %condval_10.sroa.0.0.1.11918 = phi i32 [ %condval_10.sroa.0.0.copyload.1.11913, %if.then603.1.11916 ], [ 0, %if.end650.11910 ], !dbg !90
  br i1 %cmp602.11900, label %if.then603.2.11925, label %if.end650.2.11928, !dbg !296

if.then603.2.11925:                               ; preds = %if.end650.1.11919
  %.idx1163.2.11920 = shl nsw i64 %condval_13.0.11901, 7, !dbg !297
  %354 = getelementptr i8, ptr addrspace(4) %31, i64 %.idx1163.2.11920, !dbg !297
  %add.ptr636.2.11921 = getelementptr i8, ptr addrspace(4) %354, i64 256, !dbg !297
  %condval_10.sroa.0.0.copyload.2.11922 = load i32, ptr addrspace(4) %add.ptr636.2.11921, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.2.11923 = getelementptr i8, ptr addrspace(4) %354, i64 260, !dbg !298
  %condval_10.sroa.5.0.copyload.2.11924 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.2.11923, align 4, !dbg !298, !tbaa !30
  br label %if.end650.2.11928, !dbg !299

if.end650.2.11928:                                ; preds = %if.then603.2.11925, %if.end650.1.11919
  %condval_10.sroa.5.0.2.11926 = phi i32 [ %condval_10.sroa.5.0.copyload.2.11924, %if.then603.2.11925 ], [ 0, %if.end650.1.11919 ], !dbg !90
  %condval_10.sroa.0.0.2.11927 = phi i32 [ %condval_10.sroa.0.0.copyload.2.11922, %if.then603.2.11925 ], [ 0, %if.end650.1.11919 ], !dbg !90
  br i1 %cmp602.11900, label %if.then603.3.11934, label %if.end650.3.11937, !dbg !296

if.then603.3.11934:                               ; preds = %if.end650.2.11928
  %.idx1163.3.11929 = shl nsw i64 %condval_13.0.11901, 7, !dbg !297
  %355 = getelementptr i8, ptr addrspace(4) %32, i64 %.idx1163.3.11929, !dbg !297
  %add.ptr636.3.11930 = getelementptr i8, ptr addrspace(4) %355, i64 384, !dbg !297
  %condval_10.sroa.0.0.copyload.3.11931 = load i32, ptr addrspace(4) %add.ptr636.3.11930, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.3.11932 = getelementptr i8, ptr addrspace(4) %355, i64 388, !dbg !298
  %condval_10.sroa.5.0.copyload.3.11933 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.3.11932, align 4, !dbg !298, !tbaa !30
  br label %if.end650.3.11937, !dbg !299

if.end650.3.11937:                                ; preds = %if.then603.3.11934, %if.end650.2.11928
  %condval_10.sroa.5.0.3.11935 = phi i32 [ %condval_10.sroa.5.0.copyload.3.11933, %if.then603.3.11934 ], [ 0, %if.end650.2.11928 ], !dbg !90
  %condval_10.sroa.0.0.3.11936 = phi i32 [ %condval_10.sroa.0.0.copyload.3.11931, %if.then603.3.11934 ], [ 0, %if.end650.2.11928 ], !dbg !90
  %356 = and i32 %condval_10.sroa.0.0.3.11936, 65535, !dbg !300
  %v_column_local.sroa.34.0.insert.ext.1 = zext nneg i32 %356 to i64, !dbg !300
  %v_column_local.sroa.34.0.insert.shift.1 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext.1, 48, !dbg !300
  %357 = and i32 %condval_10.sroa.0.0.2.11927, 65535, !dbg !300
  %v_column_local.sroa.26.0.insert.ext.1 = zext nneg i32 %357 to i64, !dbg !300
  %v_column_local.sroa.26.0.insert.shift.1 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext.1, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert.1 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift.1, %v_column_local.sroa.26.0.insert.shift.1, !dbg !300
  %358 = shl i32 %condval_10.sroa.0.0.1.11918, 16, !dbg !300
  %v_column_local.sroa.18.0.insert.shift.1 = zext i32 %358 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert.1 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert.1, %v_column_local.sroa.18.0.insert.shift.1, !dbg !300
  %359 = and i32 %condval_10.sroa.0.0.11909, 65535, !dbg !300
  %v_column_local.sroa.0.0.insert.ext.1 = zext nneg i32 %359 to i64, !dbg !300
  %v_column_local.sroa.0.0.insert.insert.1 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert.1, %v_column_local.sroa.0.0.insert.ext.1, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr692, align 8, !dbg !300
  %v_tile_local.sroa.0.2.extract.shift.1 = lshr i32 %condval_10.sroa.0.0.11909, 16, !dbg !301
  %v_tile_local.sroa.0.2.extract.trunc.1 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift.1 to i64, !dbg !301
  %v_tile_local.sroa.14.10.extract.shift.1 = and i32 %condval_10.sroa.0.0.1.11918, -65536, !dbg !300
  %v_tile_local.sroa.26.18.extract.shift.1 = lshr i32 %condval_10.sroa.0.0.2.11927, 16, !dbg !301
  %v_tile_local.sroa.26.18.extract.trunc.1 = zext nneg i32 %v_tile_local.sroa.26.18.extract.shift.1 to i64, !dbg !301
  %v_tile_local.sroa.38.26.extract.shift.1 = lshr i32 %condval_10.sroa.0.0.3.11936, 16, !dbg !301
  %v_tile_local.sroa.38.26.extract.trunc.1 = zext nneg i32 %v_tile_local.sroa.38.26.extract.shift.1 to i64, !dbg !301
  %v_column_local.sroa.34.0.insert.shift1389.1 = shl nuw i64 %v_tile_local.sroa.38.26.extract.trunc.1, 48, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1354.1 = shl nuw nsw i64 %v_tile_local.sroa.26.18.extract.trunc.1, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1356.1 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1389.1, %v_column_local.sroa.26.0.insert.shift1354.1, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1319.1 = zext i32 %v_tile_local.sroa.14.10.extract.shift.1 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1321.1 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1356.1, %v_column_local.sroa.18.0.insert.shift1319.1, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1292.1 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1321.1, %v_tile_local.sroa.0.2.extract.trunc.1, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1292.1, ptr addrspace(3) %add.ptr692.1, align 8, !dbg !300
  %360 = and i32 %condval_10.sroa.5.0.3.11935, 65535, !dbg !300
  %v_column_local.sroa.34.0.insert.ext1393.1 = zext nneg i32 %360 to i64, !dbg !300
  %v_column_local.sroa.34.0.insert.shift1394.1 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1393.1, 48, !dbg !300
  %361 = and i32 %condval_10.sroa.5.0.2.11926, 65535, !dbg !300
  %v_column_local.sroa.26.0.insert.ext1358.1 = zext nneg i32 %361 to i64, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1359.1 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1358.1, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1361.1 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1394.1, %v_column_local.sroa.26.0.insert.shift1359.1, !dbg !300
  %362 = shl i32 %condval_10.sroa.5.0.1.11917, 16, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1324.1 = zext i32 %362 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1326.1 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1361.1, %v_column_local.sroa.18.0.insert.shift1324.1, !dbg !300
  %363 = and i32 %condval_10.sroa.5.0.11908, 65535, !dbg !300
  %v_column_local.sroa.0.0.insert.ext1294.1 = zext nneg i32 %363 to i64, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1296.1 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1326.1, %v_column_local.sroa.0.0.insert.ext1294.1, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1296.1, ptr addrspace(3) %add.ptr692.2, align 8, !dbg !300
  %v_tile_local.sroa.8.6.extract.shift.1 = lshr i32 %condval_10.sroa.5.0.11908, 16, !dbg !301
  %v_tile_local.sroa.8.6.extract.trunc.1 = zext nneg i32 %v_tile_local.sroa.8.6.extract.shift.1 to i64, !dbg !301
  %v_tile_local.sroa.20.14.extract.shift.1 = and i32 %condval_10.sroa.5.0.1.11917, -65536, !dbg !300
  %v_tile_local.sroa.32.22.extract.shift.1 = lshr i32 %condval_10.sroa.5.0.2.11926, 16, !dbg !301
  %v_tile_local.sroa.32.22.extract.trunc.1 = zext nneg i32 %v_tile_local.sroa.32.22.extract.shift.1 to i64, !dbg !301
  %v_tile_local.sroa.44.30.extract.shift.1 = lshr i32 %condval_10.sroa.5.0.3.11935, 16, !dbg !301
  %v_tile_local.sroa.44.30.extract.trunc.1 = zext nneg i32 %v_tile_local.sroa.44.30.extract.shift.1 to i64, !dbg !301
  %v_column_local.sroa.34.0.insert.shift1399.1 = shl nuw i64 %v_tile_local.sroa.44.30.extract.trunc.1, 48, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1364.1 = shl nuw nsw i64 %v_tile_local.sroa.32.22.extract.trunc.1, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1366.1 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1399.1, %v_column_local.sroa.26.0.insert.shift1364.1, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1329.1 = zext i32 %v_tile_local.sroa.20.14.extract.shift.1 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1331.1 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1366.1, %v_column_local.sroa.18.0.insert.shift1329.1, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1300.1 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1331.1, %v_tile_local.sroa.8.6.extract.trunc.1, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1300.1, ptr addrspace(3) %add.ptr692.3, align 8, !dbg !300
  fence syncscope("warp") release, !dbg !302
  tail call void @llvm.mxc.barrier.warp(), !dbg !305
  fence syncscope("warp") acquire, !dbg !306
  %364 = bitcast <2 x i32> %probability_pair.sroa.0.8.1 to <4 x half>, !dbg !307
  %365 = load <4 x half>, ptr addrspace(3) %add.ptr726, align 8, !dbg !308
  %366 = load <4 x half>, ptr addrspace(3) %add.ptr726.1, align 8, !dbg !308
  %367 = load <4 x half>, ptr addrspace(3) %add.ptr726.2, align 8, !dbg !308
  %368 = load <4 x half>, ptr addrspace(3) %add.ptr726.3, align 8, !dbg !308
  %369 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %365, <4 x half> %364, <4 x float> %output_acc.sroa.0.1.1), !dbg !309
  %370 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %366, <4 x half> %364, <4 x float> %output_acc.sroa.30.1.1), !dbg !309
  %371 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %367, <4 x half> %364, <4 x float> %output_acc.sroa.58.1.1), !dbg !309
  %372 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %368, <4 x half> %364, <4 x float> %output_acc.sroa.86.1.1), !dbg !309
  br label %if.end752.1, !dbg !310

if.end752.1:                                      ; preds = %if.end650.3.11937, %if.end571.1
  %output_acc.sroa.86.2.1 = phi <4 x float> [ %output_acc.sroa.86.1.1, %if.end571.1 ], [ %372, %if.end650.3.11937 ], !dbg !90
  %output_acc.sroa.58.2.1 = phi <4 x float> [ %output_acc.sroa.58.1.1, %if.end571.1 ], [ %371, %if.end650.3.11937 ], !dbg !90
  %output_acc.sroa.30.2.1 = phi <4 x float> [ %output_acc.sroa.30.1.1, %if.end571.1 ], [ %370, %if.end650.3.11937 ], !dbg !90
  %output_acc.sroa.0.2.1 = phi <4 x float> [ %output_acc.sroa.0.1.1, %if.end571.1 ], [ %369, %if.end650.3.11937 ], !dbg !90
  br i1 %or.cond1109.1.1, label %if.end756.1, label %if.then588.1.1, !dbg !290

if.then588.1.1:                                   ; preds = %if.end752.1
  fence syncscope("warp") release, !dbg !291
  tail call void @llvm.mxc.barrier.warp(), !dbg !294
  fence syncscope("warp") acquire, !dbg !295
  %shr600.1.1 = shl nsw i32 %234, 2
  %cmp602.1.1 = icmp slt i32 %shr600.1.1, %invariant.op1152
  %condval_13.0.1.1 = sext i32 %mul130.1 to i64
  br i1 %cmp602.1.1, label %if.then603.11249.1, label %if.end650.11253.1, !dbg !296

if.then603.11249.1:                               ; preds = %if.then588.1.1
  %.idx1163.11245.1 = shl nsw i64 %condval_13.0.1.1, 7, !dbg !297
  %373 = getelementptr i8, ptr addrspace(4) %49, i64 %.idx1163.11245.1, !dbg !297
  %condval_10.sroa.0.0.copyload.11246.1 = load i32, ptr addrspace(4) %373, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.11247.1 = getelementptr inbounds i8, ptr addrspace(4) %373, i64 4, !dbg !298
  %condval_10.sroa.5.0.copyload.11248.1 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.11247.1, align 4, !dbg !298, !tbaa !30
  br label %if.end650.11253.1, !dbg !299

if.end650.11253.1:                                ; preds = %if.then603.11249.1, %if.then588.1.1
  %condval_10.sroa.5.0.11250.1 = phi i32 [ %condval_10.sroa.5.0.copyload.11248.1, %if.then603.11249.1 ], [ 0, %if.then588.1.1 ], !dbg !90
  %condval_10.sroa.0.0.11251.1 = phi i32 [ %condval_10.sroa.0.0.copyload.11246.1, %if.then603.11249.1 ], [ 0, %if.then588.1.1 ], !dbg !90
  br i1 %cmp602.1.1, label %if.then603.1.1.1, label %if.end650.1.1.1, !dbg !296

if.then603.1.1.1:                                 ; preds = %if.end650.11253.1
  %.idx1163.1.1.1 = shl nsw i64 %condval_13.0.1.1, 7, !dbg !297
  %374 = getelementptr i8, ptr addrspace(4) %50, i64 %.idx1163.1.1.1, !dbg !297
  %add.ptr636.1.1.1 = getelementptr i8, ptr addrspace(4) %374, i64 128, !dbg !297
  %condval_10.sroa.0.0.copyload.1.1.1 = load i32, ptr addrspace(4) %add.ptr636.1.1.1, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.1.1.1 = getelementptr i8, ptr addrspace(4) %374, i64 132, !dbg !298
  %condval_10.sroa.5.0.copyload.1.1.1 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.1.1.1, align 4, !dbg !298, !tbaa !30
  br label %if.end650.1.1.1, !dbg !299

if.end650.1.1.1:                                  ; preds = %if.then603.1.1.1, %if.end650.11253.1
  %condval_10.sroa.5.0.1.1.1 = phi i32 [ %condval_10.sroa.5.0.copyload.1.1.1, %if.then603.1.1.1 ], [ 0, %if.end650.11253.1 ], !dbg !90
  %condval_10.sroa.0.0.1.1.1 = phi i32 [ %condval_10.sroa.0.0.copyload.1.1.1, %if.then603.1.1.1 ], [ 0, %if.end650.11253.1 ], !dbg !90
  br i1 %cmp602.1.1, label %if.then603.2.1.1, label %if.end650.2.1.1, !dbg !296

if.then603.2.1.1:                                 ; preds = %if.end650.1.1.1
  %.idx1163.2.1.1 = shl nsw i64 %condval_13.0.1.1, 7, !dbg !297
  %375 = getelementptr i8, ptr addrspace(4) %51, i64 %.idx1163.2.1.1, !dbg !297
  %add.ptr636.2.1.1 = getelementptr i8, ptr addrspace(4) %375, i64 256, !dbg !297
  %condval_10.sroa.0.0.copyload.2.1.1 = load i32, ptr addrspace(4) %add.ptr636.2.1.1, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.2.1.1 = getelementptr i8, ptr addrspace(4) %375, i64 260, !dbg !298
  %condval_10.sroa.5.0.copyload.2.1.1 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.2.1.1, align 4, !dbg !298, !tbaa !30
  br label %if.end650.2.1.1, !dbg !299

if.end650.2.1.1:                                  ; preds = %if.then603.2.1.1, %if.end650.1.1.1
  %condval_10.sroa.5.0.2.1.1 = phi i32 [ %condval_10.sroa.5.0.copyload.2.1.1, %if.then603.2.1.1 ], [ 0, %if.end650.1.1.1 ], !dbg !90
  %condval_10.sroa.0.0.2.1.1 = phi i32 [ %condval_10.sroa.0.0.copyload.2.1.1, %if.then603.2.1.1 ], [ 0, %if.end650.1.1.1 ], !dbg !90
  br i1 %cmp602.1.1, label %if.then603.3.1.1, label %if.end650.3.1.1, !dbg !296

if.then603.3.1.1:                                 ; preds = %if.end650.2.1.1
  %.idx1163.3.1.1 = shl nsw i64 %condval_13.0.1.1, 7, !dbg !297
  %376 = getelementptr i8, ptr addrspace(4) %52, i64 %.idx1163.3.1.1, !dbg !297
  %add.ptr636.3.1.1 = getelementptr i8, ptr addrspace(4) %376, i64 384, !dbg !297
  %condval_10.sroa.0.0.copyload.3.1.1 = load i32, ptr addrspace(4) %add.ptr636.3.1.1, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.3.1.1 = getelementptr i8, ptr addrspace(4) %376, i64 388, !dbg !298
  %condval_10.sroa.5.0.copyload.3.1.1 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.3.1.1, align 4, !dbg !298, !tbaa !30
  br label %if.end650.3.1.1, !dbg !299

if.end650.3.1.1:                                  ; preds = %if.then603.3.1.1, %if.end650.2.1.1
  %condval_10.sroa.5.0.3.1.1 = phi i32 [ %condval_10.sroa.5.0.copyload.3.1.1, %if.then603.3.1.1 ], [ 0, %if.end650.2.1.1 ], !dbg !90
  %condval_10.sroa.0.0.3.1.1 = phi i32 [ %condval_10.sroa.0.0.copyload.3.1.1, %if.then603.3.1.1 ], [ 0, %if.end650.2.1.1 ], !dbg !90
  %377 = and i32 %condval_10.sroa.0.0.3.1.1, 65535, !dbg !300
  %v_column_local.sroa.34.0.insert.ext1403.1 = zext nneg i32 %377 to i64, !dbg !300
  %v_column_local.sroa.34.0.insert.shift1404.1 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1403.1, 48, !dbg !300
  %378 = and i32 %condval_10.sroa.0.0.2.1.1, 65535, !dbg !300
  %v_column_local.sroa.26.0.insert.ext1368.1 = zext nneg i32 %378 to i64, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1369.1 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1368.1, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1371.1 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1404.1, %v_column_local.sroa.26.0.insert.shift1369.1, !dbg !300
  %379 = shl i32 %condval_10.sroa.0.0.1.1.1, 16, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1334.1 = zext i32 %379 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1336.1 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1371.1, %v_column_local.sroa.18.0.insert.shift1334.1, !dbg !300
  %380 = and i32 %condval_10.sroa.0.0.11251.1, 65535, !dbg !300
  %v_column_local.sroa.0.0.insert.ext1302.1 = zext nneg i32 %380 to i64, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1304.1 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1336.1, %v_column_local.sroa.0.0.insert.ext1302.1, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1304.1, ptr addrspace(3) %add.ptr692.11261, align 8, !dbg !300
  %v_tile_local.sroa.0.2.extract.shift1425.1 = lshr i32 %condval_10.sroa.0.0.11251.1, 16, !dbg !301
  %v_tile_local.sroa.0.2.extract.trunc1426.1 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1425.1 to i64, !dbg !301
  %v_tile_local.sroa.14.10.extract.shift1435.1 = and i32 %condval_10.sroa.0.0.1.1.1, -65536, !dbg !300
  %v_tile_local.sroa.26.18.extract.shift1445.1 = lshr i32 %condval_10.sroa.0.0.2.1.1, 16, !dbg !301
  %v_tile_local.sroa.26.18.extract.trunc1446.1 = zext nneg i32 %v_tile_local.sroa.26.18.extract.shift1445.1 to i64, !dbg !301
  %v_tile_local.sroa.38.26.extract.shift1455.1 = lshr i32 %condval_10.sroa.0.0.3.1.1, 16, !dbg !301
  %v_tile_local.sroa.38.26.extract.trunc1456.1 = zext nneg i32 %v_tile_local.sroa.38.26.extract.shift1455.1 to i64, !dbg !301
  %v_column_local.sroa.34.0.insert.shift1409.1 = shl nuw i64 %v_tile_local.sroa.38.26.extract.trunc1456.1, 48, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1374.1 = shl nuw nsw i64 %v_tile_local.sroa.26.18.extract.trunc1446.1, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1376.1 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1409.1, %v_column_local.sroa.26.0.insert.shift1374.1, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1339.1 = zext i32 %v_tile_local.sroa.14.10.extract.shift1435.1 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1341.1 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1376.1, %v_column_local.sroa.18.0.insert.shift1339.1, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1308.1 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1341.1, %v_tile_local.sroa.0.2.extract.trunc1426.1, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1308.1, ptr addrspace(3) %add.ptr692.1.1, align 8, !dbg !300
  %381 = and i32 %condval_10.sroa.5.0.3.1.1, 65535, !dbg !300
  %v_column_local.sroa.34.0.insert.ext1413.1 = zext nneg i32 %381 to i64, !dbg !300
  %v_column_local.sroa.34.0.insert.shift1414.1 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1413.1, 48, !dbg !300
  %382 = and i32 %condval_10.sroa.5.0.2.1.1, 65535, !dbg !300
  %v_column_local.sroa.26.0.insert.ext1378.1 = zext nneg i32 %382 to i64, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1379.1 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1378.1, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1381.1 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1414.1, %v_column_local.sroa.26.0.insert.shift1379.1, !dbg !300
  %383 = shl i32 %condval_10.sroa.5.0.1.1.1, 16, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1344.1 = zext i32 %383 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1346.1 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1381.1, %v_column_local.sroa.18.0.insert.shift1344.1, !dbg !300
  %384 = and i32 %condval_10.sroa.5.0.11250.1, 65535, !dbg !300
  %v_column_local.sroa.0.0.insert.ext1310.1 = zext nneg i32 %384 to i64, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1312.1 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1346.1, %v_column_local.sroa.0.0.insert.ext1310.1, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1312.1, ptr addrspace(3) %add.ptr692.2.1, align 8, !dbg !300
  %v_tile_local.sroa.8.6.extract.shift1430.1 = lshr i32 %condval_10.sroa.5.0.11250.1, 16, !dbg !301
  %v_tile_local.sroa.8.6.extract.trunc1431.1 = zext nneg i32 %v_tile_local.sroa.8.6.extract.shift1430.1 to i64, !dbg !301
  %v_tile_local.sroa.20.14.extract.shift1440.1 = and i32 %condval_10.sroa.5.0.1.1.1, -65536, !dbg !300
  %v_tile_local.sroa.32.22.extract.shift1450.1 = lshr i32 %condval_10.sroa.5.0.2.1.1, 16, !dbg !301
  %v_tile_local.sroa.32.22.extract.trunc1451.1 = zext nneg i32 %v_tile_local.sroa.32.22.extract.shift1450.1 to i64, !dbg !301
  %v_tile_local.sroa.44.30.extract.shift1460.1 = lshr i32 %condval_10.sroa.5.0.3.1.1, 16, !dbg !301
  %v_tile_local.sroa.44.30.extract.trunc1461.1 = zext nneg i32 %v_tile_local.sroa.44.30.extract.shift1460.1 to i64, !dbg !301
  %v_column_local.sroa.34.0.insert.shift1419.1 = shl nuw i64 %v_tile_local.sroa.44.30.extract.trunc1461.1, 48, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1384.1 = shl nuw nsw i64 %v_tile_local.sroa.32.22.extract.trunc1451.1, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1386.1 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1419.1, %v_column_local.sroa.26.0.insert.shift1384.1, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1349.1 = zext i32 %v_tile_local.sroa.20.14.extract.shift1440.1 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1351.1 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1386.1, %v_column_local.sroa.18.0.insert.shift1349.1, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1316.1 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1351.1, %v_tile_local.sroa.8.6.extract.trunc1431.1, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1316.1, ptr addrspace(3) %add.ptr692.3.1, align 8, !dbg !300
  fence syncscope("warp") release, !dbg !302
  tail call void @llvm.mxc.barrier.warp(), !dbg !305
  fence syncscope("warp") acquire, !dbg !306
  %385 = bitcast <2 x i32> %probability_pair.sroa.14.1.1 to <4 x half>, !dbg !307
  %386 = load <4 x half>, ptr addrspace(3) %add.ptr726.11265, align 8, !dbg !308
  %387 = load <4 x half>, ptr addrspace(3) %add.ptr726.1.1, align 8, !dbg !308
  %388 = load <4 x half>, ptr addrspace(3) %add.ptr726.2.1, align 8, !dbg !308
  %389 = load <4 x half>, ptr addrspace(3) %add.ptr726.3.1, align 8, !dbg !308
  %390 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %386, <4 x half> %385, <4 x float> %output_acc.sroa.0.2.1), !dbg !309
  %391 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %387, <4 x half> %385, <4 x float> %output_acc.sroa.30.2.1), !dbg !309
  %392 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %388, <4 x half> %385, <4 x float> %output_acc.sroa.58.2.1), !dbg !309
  %393 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %389, <4 x half> %385, <4 x float> %output_acc.sroa.86.2.1), !dbg !309
  br label %if.end756.1, !dbg !310

if.end756.1:                                      ; preds = %if.end650.3.1.1, %if.end752.1, %lor.lhs.false.1
  %output_acc.sroa.86.4.1 = phi <4 x float> [ %output_acc.sroa.86.4, %lor.lhs.false.1 ], [ %output_acc.sroa.86.2.1, %if.end752.1 ], [ %393, %if.end650.3.1.1 ], !dbg !90
  %output_acc.sroa.58.4.1 = phi <4 x float> [ %output_acc.sroa.58.4, %lor.lhs.false.1 ], [ %output_acc.sroa.58.2.1, %if.end752.1 ], [ %392, %if.end650.3.1.1 ], !dbg !90
  %output_acc.sroa.30.4.1 = phi <4 x float> [ %output_acc.sroa.30.4, %lor.lhs.false.1 ], [ %output_acc.sroa.30.2.1, %if.end752.1 ], [ %391, %if.end650.3.1.1 ], !dbg !90
  %output_acc.sroa.0.4.1 = phi <4 x float> [ %output_acc.sroa.0.4, %lor.lhs.false.1 ], [ %output_acc.sroa.0.2.1, %if.end752.1 ], [ %390, %if.end650.3.1.1 ], !dbg !90
  %normalizer.sroa.0.4.1 = phi float [ %normalizer.sroa.0.4, %lor.lhs.false.1 ], [ %normalizer.sroa.0.3.1.1, %if.end752.1 ], [ %normalizer.sroa.0.3.1.1, %if.end650.3.1.1 ], !dbg !311
  %denominator.sroa.0.2.1 = phi float [ %denominator.sroa.0.2, %lor.lhs.false.1 ], [ %add553.1, %if.end752.1 ], [ %add553.1, %if.end650.3.1.1 ], !dbg !90
  %394 = or disjoint i64 %28, 4, !dbg !312
  %arrayidx118.2 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %394, !dbg !69
  %395 = load i32, ptr addrspace(1) %arrayidx118.2, align 4, !dbg !69, !tbaa !30
  %mul119.2 = shl nsw i32 %395, 4, !dbg !70
  %396 = or disjoint i64 %28, 5, !dbg !71
  %arrayidx129.2 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %396, !dbg !72
  %397 = load i32, ptr addrspace(1) %arrayidx129.2, align 4, !dbg !72, !tbaa !30
  %mul130.2 = shl nsw i32 %397, 4, !dbg !73
  %cmp131.2 = icmp slt i32 %395, 0, !dbg !74
  %cmp133.not.2 = icmp sgt i32 %mul119.2, %1
  %or.cond1107.2 = select i1 %cmp131.2, i1 true, i1 %cmp133.not.2, !dbg !75
  br i1 %or.cond1107.2, label %lor.lhs.false.2, label %if.then.2, !dbg !75

lor.lhs.false.2:                                  ; preds = %if.end756.1
  %cmp134.2 = icmp slt i32 %397, 0, !dbg !76
  %cmp137.not.2 = icmp sgt i32 %mul130.2, %1
  %or.cond1108.2 = select i1 %cmp134.2, i1 true, i1 %cmp137.not.2, !dbg !77
  br i1 %or.cond1108.2, label %if.end756.2, label %if.then.2, !dbg !77

if.then.2:                                        ; preds = %lor.lhs.false.2, %if.end756.1
  %or.cond1109.2 = icmp ugt i32 %mul119.2, %1, !dbg !78
  br i1 %or.cond1109.2, label %if.end517.2, label %if.then175.2, !dbg !78

if.then175.2:                                     ; preds = %if.then.2
  fence syncscope("warp") release, !dbg !79
  tail call void @llvm.mxc.barrier.warp(), !dbg !82
  fence syncscope("warp") acquire, !dbg !83
  %add186.2 = add nsw i32 %mul119.2, %shr185
  %shr187.2 = ashr i32 %add186.2, 3
  %condval_5.0.2 = sext i32 %mul119.2 to i64
  %.idx.2 = shl nsw i64 %condval_5.0.2, 7
  %gep.2 = getelementptr i8, ptr addrspace(4) %invariant.gep1142, i64 %.idx.2, !dbg !84
  %398 = icmp slt i32 %shr187.2, 128, !dbg !85
  br i1 %398, label %if.then190.2, label %if.end240.2, !dbg !86

if.then190.2:                                     ; preds = %if.then175.2
  %399 = getelementptr i8, ptr addrspace(4) %gep.2, i64 %.idx1162, !dbg !87
  %condval_2.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %399, align 16, !dbg !88, !tbaa !30
  %condval_2.sroa.5.0.add.ptr216.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %399, i64 4, !dbg !88
  %condval_2.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr216.sroa_idx.2, align 4, !dbg !88, !tbaa !30
  %condval_2.sroa.6.0.add.ptr216.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %399, i64 8, !dbg !88
  %condval_2.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr216.sroa_idx.2, align 8, !dbg !88, !tbaa !30
  %condval_2.sroa.7.0.add.ptr216.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %399, i64 12, !dbg !88
  %condval_2.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr216.sroa_idx.2, align 4, !dbg !88, !tbaa !30
  br label %if.end240.2, !dbg !89

if.end240.2:                                      ; preds = %if.then190.2, %if.then175.2
  %condval_2.sroa.0.0.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2, %if.then190.2 ], [ 0, %if.then175.2 ], !dbg !90
  %condval_2.sroa.5.0.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2, %if.then190.2 ], [ 0, %if.then175.2 ], !dbg !90
  %condval_2.sroa.6.0.2 = phi i32 [ %condval_2.sroa.6.0.copyload.2, %if.then190.2 ], [ 0, %if.then175.2 ], !dbg !90
  %condval_2.sroa.7.0.2 = phi i32 [ %condval_2.sroa.7.0.copyload.2, %if.then190.2 ], [ 0, %if.then175.2 ], !dbg !90
  store i32 %condval_2.sroa.0.0.2, ptr addrspace(3) %add.ptr45, align 16, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.5.0.2, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr275.sroa_idx, align 4, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.6.0.2, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr275.sroa_idx, align 8, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.7.0.2, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr275.sroa_idx, align 4, !dbg !91, !tbaa !30
  %400 = icmp slt i32 %shr187.2, 127, !dbg !85
  br i1 %400, label %if.then190.1.2, label %if.end240.1.2, !dbg !86

if.then190.1.2:                                   ; preds = %if.end240.2
  %401 = getelementptr i8, ptr addrspace(4) %gep.2, i64 %.idx1162.1, !dbg !87
  %gep1129.1.2 = getelementptr i8, ptr addrspace(4) %401, i64 1024, !dbg !87
  %condval_2.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %gep1129.1.2, align 16, !dbg !88, !tbaa !30
  %condval_2.sroa.5.0.add.ptr216.sroa_idx.1.2 = getelementptr i8, ptr addrspace(4) %401, i64 1028, !dbg !88
  %condval_2.sroa.5.0.copyload.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr216.sroa_idx.1.2, align 4, !dbg !88, !tbaa !30
  %condval_2.sroa.6.0.add.ptr216.sroa_idx.1.2 = getelementptr i8, ptr addrspace(4) %401, i64 1032, !dbg !88
  %condval_2.sroa.6.0.copyload.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr216.sroa_idx.1.2, align 8, !dbg !88, !tbaa !30
  %condval_2.sroa.7.0.add.ptr216.sroa_idx.1.2 = getelementptr i8, ptr addrspace(4) %401, i64 1036, !dbg !88
  %condval_2.sroa.7.0.copyload.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr216.sroa_idx.1.2, align 4, !dbg !88, !tbaa !30
  br label %if.end240.1.2, !dbg !89

if.end240.1.2:                                    ; preds = %if.then190.1.2, %if.end240.2
  %condval_2.sroa.0.0.1.2 = phi i32 [ %condval_2.sroa.0.0.copyload.1.2, %if.then190.1.2 ], [ 0, %if.end240.2 ], !dbg !90
  %condval_2.sroa.5.0.1.2 = phi i32 [ %condval_2.sroa.5.0.copyload.1.2, %if.then190.1.2 ], [ 0, %if.end240.2 ], !dbg !90
  %condval_2.sroa.6.0.1.2 = phi i32 [ %condval_2.sroa.6.0.copyload.1.2, %if.then190.1.2 ], [ 0, %if.end240.2 ], !dbg !90
  %condval_2.sroa.7.0.1.2 = phi i32 [ %condval_2.sroa.7.0.copyload.1.2, %if.then190.1.2 ], [ 0, %if.end240.2 ], !dbg !90
  store i32 %condval_2.sroa.0.0.1.2, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.5.0.1.2, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr275.sroa_idx.1, align 4, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.6.0.1.2, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr275.sroa_idx.1, align 8, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.7.0.1.2, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr275.sroa_idx.1, align 4, !dbg !91, !tbaa !30
  fence syncscope("warp") release, !dbg !92
  tail call void @llvm.mxc.barrier.warp(), !dbg !95
  fence syncscope("warp") acquire, !dbg !96
  %k_local.sroa.0.0.copyload.21938 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !97
  %402 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.21938, <4 x half> %12, <4 x float> zeroinitializer), !dbg !98
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !97
  %403 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %16, <4 x float> %402), !dbg !98
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !97
  %404 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %18, <4 x float> %403), !dbg !98
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !97
  %405 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %22, <4 x float> %404), !dbg !98
  %add346.2 = add nsw i32 %mul119.2, %mul345
  %cmp349.not.21939 = icmp sgt i32 %add346.2, %1, !dbg !99
  %scores.sroa.0.0.vec.extract1470.2 = extractelement <4 x float> %405, i64 0
  %spec.select.2 = select i1 %cmp349.not.21939, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1470.2, !dbg !100
  %cmp349.not.1.not.2 = icmp slt i32 %add346.2, %1, !dbg !99
  %scores.sroa.0.4.vec.extract1507.2 = extractelement <4 x float> %405, i64 1, !dbg !100
  %condval_6.0.1.2 = select i1 %cmp349.not.1.not.2, float %scores.sroa.0.4.vec.extract1507.2, float 0xFFF0000000000000, !dbg !100
  %add347.2.2 = or disjoint i32 %add346.2, 2, !dbg !101
  %cmp349.not.2.2 = icmp sgt i32 %add347.2.2, %1, !dbg !99
  %scores.sroa.0.8.vec.extract1540.2 = extractelement <4 x float> %405, i64 2, !dbg !100
  %condval_6.0.2.2 = select i1 %cmp349.not.2.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1540.2, !dbg !100
  %add347.3.2 = or disjoint i32 %add346.2, 3, !dbg !101
  %cmp349.not.3.2 = icmp sgt i32 %add347.3.2, %1, !dbg !99
  %scores.sroa.0.12.vec.extract1573.2 = extractelement <4 x float> %405, i64 3, !dbg !100
  %condval_6.0.3.2 = select i1 %cmp349.not.3.2, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1573.2, !dbg !100
  %406 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select.2, float 0xFFF0000000000000), !dbg !102
  %407 = tail call contract noundef float @llvm.maxnum.f32(float %406, float %condval_6.0.1.2), !dbg !102
  %408 = tail call contract noundef float @llvm.maxnum.f32(float %407, float %condval_6.0.2.2), !dbg !102
  %409 = tail call contract noundef float @llvm.maxnum.f32(float %408, float %condval_6.0.3.2), !dbg !102
  %410 = bitcast float %409 to i32, !dbg !106
  %411 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !115
  %412 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %411) #11, !dbg !120
  %xor.i.i.i.2 = xor i32 %412, 32, !dbg !121
  %413 = and i32 %412, -64, !dbg !122
  %and.i.i.i.2 = add nsw i32 %413, 64, !dbg !122
  %cmp.not.i.i.i.2 = icmp slt i32 %xor.i.i.i.2, %and.i.i.i.2, !dbg !123
  %cond.i.i.i.2 = select i1 %cmp.not.i.i.i.2, i32 %xor.i.i.i.2, i32 %412, !dbg !124
  %shl.i.i.i.2 = shl i32 %cond.i.i.i.2, 2, !dbg !125
  %414 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.2, i32 %410), !dbg !126
  %415 = bitcast i32 %414 to float, !dbg !127
  %416 = tail call contract noundef float @llvm.maxnum.f32(float %409, float %415), !dbg !128
  %417 = bitcast float %416 to i32, !dbg !136
  %418 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !141
  %419 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %418) #11, !dbg !144
  %xor.i.i.i.i.2 = xor i32 %419, 16, !dbg !145
  %420 = and i32 %419, -64, !dbg !146
  %and.i.i.i.i.2 = add nsw i32 %420, 64, !dbg !146
  %cmp.not.i.i.i.i.2 = icmp slt i32 %xor.i.i.i.i.2, %and.i.i.i.i.2, !dbg !147
  %cond.i.i.i.i.2 = select i1 %cmp.not.i.i.i.i.2, i32 %xor.i.i.i.i.2, i32 %419, !dbg !148
  %shl.i.i.i.i.2 = shl i32 %cond.i.i.i.i.2, 2, !dbg !149
  %421 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.2, i32 %417), !dbg !150
  %422 = bitcast i32 %421 to float, !dbg !151
  %423 = tail call contract noundef float @llvm.maxnum.f32(float %416, float %422), !dbg !152
  %sub.2 = fsub contract float %423, %normalizer.sroa.0.4.1, !dbg !156
  %mul385.2 = fmul contract float %sub.2, 0x3FC7154760000000, !dbg !157
  %cmp386.2 = fcmp contract ogt float %mul385.2, 7.000000e+00, !dbg !158
  %sub390.2 = fsub contract float %normalizer.sroa.0.4.1, %423
  %mul391.2 = fmul contract float %sub390.2, 0x3FC7154760000000
  %cmp.i.i.2 = fcmp contract olt float %mul391.2, -1.260000e+02
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00
  %cond.i.i.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00
  %add.i.i.2 = fadd contract float %mul391.2, %cond.i.i.2
  %424 = tail call contract float @llvm.exp2.f32(float %add.i.i.2)
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %424
  %rescale.sroa.0.0.2 = select i1 %cmp386.2, float %mul.i.i.2, float 1.000000e+00, !dbg !159
  %cmp422.2 = fcmp contract une float %rescale.sroa.0.0.2, 1.000000e+00
  %normalizer.sroa.0.2.2 = select i1 %cmp386.2, float %423, float %normalizer.sroa.0.4.1, !dbg !159
  %sub406.3.2 = fsub contract float %condval_6.0.3.2, %normalizer.sroa.0.2.2, !dbg !160
  %mul407.3.2 = fmul contract float %sub406.3.2, 0x3FC7154760000000, !dbg !161
  %add408.3.2 = fadd contract float %mul407.3.2, 8.000000e+00, !dbg !162
  %cmp.i.i1056.3.2 = fcmp contract olt float %add408.3.2, -1.260000e+02, !dbg !163
  %cond2.i.i1059.3.2 = select contract i1 %cmp.i.i1056.3.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %cond.i.i1057.3.2 = select contract i1 %cmp.i.i1056.3.2, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.3.2 = fadd contract float %add408.3.2, %cond.i.i1057.3.2, !dbg !163
  %425 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.3.2), !dbg !163
  %mul.i.i1060.3.2 = fmul contract float %cond2.i.i1059.3.2, %425, !dbg !163
  %sub406.21940 = fsub contract float %spec.select.2, %normalizer.sroa.0.2.2, !dbg !160
  %mul407.21941 = fmul contract float %sub406.21940, 0x3FC7154760000000, !dbg !161
  %add408.21942 = fadd contract float %mul407.21941, 8.000000e+00, !dbg !162
  %cmp.i.i1056.21943 = fcmp contract olt float %add408.21942, -1.260000e+02, !dbg !163
  %cond2.i.i1059.21944 = select contract i1 %cmp.i.i1056.21943, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %cond.i.i1057.21945 = select contract i1 %cmp.i.i1056.21943, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.21946 = fadd contract float %add408.21942, %cond.i.i1057.21945, !dbg !163
  %426 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.21946), !dbg !163
  %mul.i.i1060.21947 = fmul contract float %cond2.i.i1059.21944, %426, !dbg !163
  %sub406.1.2 = fsub contract float %condval_6.0.1.2, %normalizer.sroa.0.2.2, !dbg !160
  %mul407.1.2 = fmul contract float %sub406.1.2, 0x3FC7154760000000, !dbg !161
  %add408.1.2 = fadd contract float %mul407.1.2, 8.000000e+00, !dbg !162
  %cmp.i.i1056.1.2 = fcmp contract olt float %add408.1.2, -1.260000e+02, !dbg !163
  %cond2.i.i1059.1.2 = select contract i1 %cmp.i.i1056.1.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %cond.i.i1057.1.2 = select contract i1 %cmp.i.i1056.1.2, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.1.2 = fadd contract float %add408.1.2, %cond.i.i1057.1.2, !dbg !163
  %427 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.1.2), !dbg !163
  %mul.i.i1060.1.2 = fmul contract float %cond2.i.i1059.1.2, %427, !dbg !163
  %sub406.2.2 = fsub contract float %condval_6.0.2.2, %normalizer.sroa.0.2.2, !dbg !160
  %mul407.2.2 = fmul contract float %sub406.2.2, 0x3FC7154760000000, !dbg !161
  %add408.2.2 = fadd contract float %mul407.2.2, 8.000000e+00, !dbg !162
  %cmp.i.i1056.2.2 = fcmp contract olt float %add408.2.2, -1.260000e+02, !dbg !163
  %cond2.i.i1059.2.2 = select contract i1 %cmp.i.i1056.2.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %cond.i.i1057.2.2 = select contract i1 %cmp.i.i1056.2.2, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.2.2 = fadd contract float %add408.2.2, %cond.i.i1057.2.2, !dbg !163
  %428 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.2.2), !dbg !163
  %mul.i.i1060.2.2 = fmul contract float %cond2.i.i1059.2.2, %428, !dbg !163
  %mul486.2 = fmul contract float %rescale.sroa.0.0.2, 0.000000e+00, !dbg !166
  %pair_sum_local.sroa.0.1.2 = select i1 %cmp422.2, float %mul486.2, float 0.000000e+00, !dbg !166
  %add496.21948 = fadd contract float %pair_sum_local.sroa.0.1.2, %mul.i.i1060.21947, !dbg !167
  %add496.1.2 = fadd contract float %add496.21948, %mul.i.i1060.1.2, !dbg !167
  %add496.2.2 = fadd contract float %add496.1.2, %mul.i.i1060.2.2, !dbg !167
  %add496.3.2 = fadd contract float %add496.2.2, %mul.i.i1060.3.2, !dbg !167
  %429 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !168, !noalias !176
  %430 = fptrunc float %mul.i.i1060.21947 to half, !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %429), !dbg !168, !noalias !176
  %431 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %432 = fptrunc float %mul.i.i1060.1.2 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %431), !dbg !181, !noalias !176
  %433 = bitcast half %430 to i16, !dbg !183
  %434 = bitcast half %432 to i16, !dbg !186
  %435 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !187, !noalias !191
  %436 = fptrunc float %mul.i.i1060.2.2 to half, !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %435), !dbg !187, !noalias !191
  %437 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !196
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !196, !noalias !191
  %438 = fptrunc float %mul.i.i1060.3.2 to half, !dbg !196
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %437), !dbg !196, !noalias !191
  %439 = bitcast half %436 to i16, !dbg !198
  %440 = bitcast half %438 to i16, !dbg !200
  %__4.sroa.6.0.insert.ext.2 = zext i16 %440 to i64, !dbg !201
  %__4.sroa.6.0.insert.shift.2 = shl nuw i64 %__4.sroa.6.0.insert.ext.2, 48, !dbg !201
  %__4.sroa.5.0.insert.ext.2 = zext i16 %439 to i64, !dbg !201
  %__4.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__4.sroa.5.0.insert.ext.2, 32, !dbg !201
  %__4.sroa.5.0.insert.insert.2 = or disjoint i64 %__4.sroa.6.0.insert.shift.2, %__4.sroa.5.0.insert.shift.2, !dbg !201
  %__4.sroa.4.0.insert.ext.2 = zext i16 %434 to i64, !dbg !201
  %__4.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__4.sroa.4.0.insert.ext.2, 16, !dbg !201
  %__4.sroa.4.0.insert.insert.2 = or disjoint i64 %__4.sroa.5.0.insert.insert.2, %__4.sroa.4.0.insert.shift.2, !dbg !201
  %__4.sroa.0.0.insert.ext.2 = zext i16 %433 to i64, !dbg !201
  %__4.sroa.0.0.insert.insert.2 = or disjoint i64 %__4.sroa.4.0.insert.insert.2, %__4.sroa.0.0.insert.ext.2, !dbg !201
  %441 = bitcast i64 %__4.sroa.0.0.insert.insert.2 to <2 x i32>, !dbg !201
  br label %if.end517.2, !dbg !202

if.end517.2:                                      ; preds = %if.end240.1.2, %if.then.2
  %probability_pair.sroa.0.4.2 = phi <2 x i32> [ zeroinitializer, %if.then.2 ], [ %441, %if.end240.1.2 ], !dbg !90
  %pair_sum_local.sroa.0.3.2 = phi float [ 0.000000e+00, %if.then.2 ], [ %add496.3.2, %if.end240.1.2 ], !dbg !90
  %pair_rescale.sroa.0.1.2 = phi float [ 1.000000e+00, %if.then.2 ], [ %rescale.sroa.0.0.2, %if.end240.1.2 ], !dbg !90
  %normalizer.sroa.0.3.2 = phi float [ %normalizer.sroa.0.4.1, %if.then.2 ], [ %normalizer.sroa.0.2.2, %if.end240.1.2 ], !dbg !90
  %or.cond1109.1.2 = icmp ugt i32 %mul130.2, %1, !dbg !78
  br i1 %or.cond1109.1.2, label %if.end517.1.2, label %if.then175.1.2, !dbg !78

if.then175.1.2:                                   ; preds = %if.end517.2
  fence syncscope("warp") release, !dbg !79
  tail call void @llvm.mxc.barrier.warp(), !dbg !82
  fence syncscope("warp") acquire, !dbg !83
  %add186.1.2 = add nsw i32 %mul130.2, %shr185
  %shr187.1.2 = ashr i32 %add186.1.2, 3
  %condval_5.0.1.2 = sext i32 %mul130.2 to i64
  %.idx.1.2 = shl nsw i64 %condval_5.0.1.2, 7
  %gep.1.2 = getelementptr i8, ptr addrspace(4) %invariant.gep1142, i64 %.idx.1.2, !dbg !84
  %442 = icmp slt i32 %shr187.1.2, 128, !dbg !85
  br i1 %442, label %if.then190.11186.2, label %if.end240.11195.2, !dbg !86

if.then190.11186.2:                               ; preds = %if.then175.1.2
  %443 = getelementptr i8, ptr addrspace(4) %gep.1.2, i64 %.idx1162.11178, !dbg !87
  %condval_2.sroa.0.0.copyload.11179.2 = load i32, ptr addrspace(4) %443, align 16, !dbg !88, !tbaa !30
  %condval_2.sroa.5.0.add.ptr216.sroa_idx.11180.2 = getelementptr inbounds i8, ptr addrspace(4) %443, i64 4, !dbg !88
  %condval_2.sroa.5.0.copyload.11181.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr216.sroa_idx.11180.2, align 4, !dbg !88, !tbaa !30
  %condval_2.sroa.6.0.add.ptr216.sroa_idx.11182.2 = getelementptr inbounds i8, ptr addrspace(4) %443, i64 8, !dbg !88
  %condval_2.sroa.6.0.copyload.11183.2 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr216.sroa_idx.11182.2, align 8, !dbg !88, !tbaa !30
  %condval_2.sroa.7.0.add.ptr216.sroa_idx.11184.2 = getelementptr inbounds i8, ptr addrspace(4) %443, i64 12, !dbg !88
  %condval_2.sroa.7.0.copyload.11185.2 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr216.sroa_idx.11184.2, align 4, !dbg !88, !tbaa !30
  br label %if.end240.11195.2, !dbg !89

if.end240.11195.2:                                ; preds = %if.then190.11186.2, %if.then175.1.2
  %condval_2.sroa.0.0.11187.2 = phi i32 [ %condval_2.sroa.0.0.copyload.11179.2, %if.then190.11186.2 ], [ 0, %if.then175.1.2 ], !dbg !90
  %condval_2.sroa.5.0.11188.2 = phi i32 [ %condval_2.sroa.5.0.copyload.11181.2, %if.then190.11186.2 ], [ 0, %if.then175.1.2 ], !dbg !90
  %condval_2.sroa.6.0.11189.2 = phi i32 [ %condval_2.sroa.6.0.copyload.11183.2, %if.then190.11186.2 ], [ 0, %if.then175.1.2 ], !dbg !90
  %condval_2.sroa.7.0.11190.2 = phi i32 [ %condval_2.sroa.7.0.copyload.11185.2, %if.then190.11186.2 ], [ 0, %if.then175.1.2 ], !dbg !90
  store i32 %condval_2.sroa.0.0.11187.2, ptr addrspace(3) %add.ptr45, align 16, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.5.0.11188.2, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr275.sroa_idx.11192, align 4, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.6.0.11189.2, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr275.sroa_idx.11193, align 8, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.7.0.11190.2, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr275.sroa_idx.11194, align 4, !dbg !91, !tbaa !30
  %444 = icmp slt i32 %shr187.1.2, 127, !dbg !85
  br i1 %444, label %if.then190.1.1.2, label %if.end240.1.1.2, !dbg !86

if.then190.1.1.2:                                 ; preds = %if.end240.11195.2
  %445 = getelementptr i8, ptr addrspace(4) %gep.1.2, i64 %.idx1162.1.1, !dbg !87
  %gep1129.1.1.2 = getelementptr i8, ptr addrspace(4) %445, i64 1024, !dbg !87
  %condval_2.sroa.0.0.copyload.1.1.2 = load i32, ptr addrspace(4) %gep1129.1.1.2, align 16, !dbg !88, !tbaa !30
  %condval_2.sroa.5.0.add.ptr216.sroa_idx.1.1.2 = getelementptr i8, ptr addrspace(4) %445, i64 1028, !dbg !88
  %condval_2.sroa.5.0.copyload.1.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr216.sroa_idx.1.1.2, align 4, !dbg !88, !tbaa !30
  %condval_2.sroa.6.0.add.ptr216.sroa_idx.1.1.2 = getelementptr i8, ptr addrspace(4) %445, i64 1032, !dbg !88
  %condval_2.sroa.6.0.copyload.1.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr216.sroa_idx.1.1.2, align 8, !dbg !88, !tbaa !30
  %condval_2.sroa.7.0.add.ptr216.sroa_idx.1.1.2 = getelementptr i8, ptr addrspace(4) %445, i64 1036, !dbg !88
  %condval_2.sroa.7.0.copyload.1.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr216.sroa_idx.1.1.2, align 4, !dbg !88, !tbaa !30
  br label %if.end240.1.1.2, !dbg !89

if.end240.1.1.2:                                  ; preds = %if.then190.1.1.2, %if.end240.11195.2
  %condval_2.sroa.0.0.1.1.2 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1.2, %if.then190.1.1.2 ], [ 0, %if.end240.11195.2 ], !dbg !90
  %condval_2.sroa.5.0.1.1.2 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1.2, %if.then190.1.1.2 ], [ 0, %if.end240.11195.2 ], !dbg !90
  %condval_2.sroa.6.0.1.1.2 = phi i32 [ %condval_2.sroa.6.0.copyload.1.1.2, %if.then190.1.1.2 ], [ 0, %if.end240.11195.2 ], !dbg !90
  %condval_2.sroa.7.0.1.1.2 = phi i32 [ %condval_2.sroa.7.0.copyload.1.1.2, %if.then190.1.1.2 ], [ 0, %if.end240.11195.2 ], !dbg !90
  store i32 %condval_2.sroa.0.0.1.1.2, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.5.0.1.1.2, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr275.sroa_idx.1.1, align 4, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.6.0.1.1.2, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr275.sroa_idx.1.1, align 8, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.7.0.1.1.2, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr275.sroa_idx.1.1, align 4, !dbg !91, !tbaa !30
  fence syncscope("warp") release, !dbg !92
  tail call void @llvm.mxc.barrier.warp(), !dbg !95
  fence syncscope("warp") acquire, !dbg !96
  %k_local.sroa.0.0.copyload.11203.2 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !97
  %446 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11203.2, <4 x half> %12, <4 x float> zeroinitializer), !dbg !98
  %k_local.sroa.0.0.copyload.1.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !97
  %447 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1.2, <4 x half> %16, <4 x float> %446), !dbg !98
  %k_local.sroa.0.0.copyload.2.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !97
  %448 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1.2, <4 x half> %18, <4 x float> %447), !dbg !98
  %k_local.sroa.0.0.copyload.3.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !97
  %449 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1.2, <4 x half> %22, <4 x float> %448), !dbg !98
  %add346.1.2 = add nsw i32 %mul130.2, %mul345
  %cmp349.not.11204.2 = icmp sgt i32 %add346.1.2, %1, !dbg !99
  %scores.sroa.0.0.vec.extract1484.2 = extractelement <4 x float> %449, i64 0
  %spec.select1775.2 = select i1 %cmp349.not.11204.2, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1484.2, !dbg !100
  %cmp349.not.1.1.not.2 = icmp slt i32 %add346.1.2, %1, !dbg !99
  %scores.sroa.0.4.vec.extract1519.2 = extractelement <4 x float> %449, i64 1, !dbg !100
  %condval_6.0.1.1.2 = select i1 %cmp349.not.1.1.not.2, float %scores.sroa.0.4.vec.extract1519.2, float 0xFFF0000000000000, !dbg !100
  %add347.2.1.2 = or disjoint i32 %add346.1.2, 2, !dbg !101
  %cmp349.not.2.1.2 = icmp sgt i32 %add347.2.1.2, %1, !dbg !99
  %scores.sroa.0.8.vec.extract1552.2 = extractelement <4 x float> %449, i64 2, !dbg !100
  %condval_6.0.2.1.2 = select i1 %cmp349.not.2.1.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1552.2, !dbg !100
  %add347.3.1.2 = or disjoint i32 %add346.1.2, 3, !dbg !101
  %cmp349.not.3.1.2 = icmp sgt i32 %add347.3.1.2, %1, !dbg !99
  %scores.sroa.0.12.vec.extract1585.2 = extractelement <4 x float> %449, i64 3, !dbg !100
  %condval_6.0.3.1.2 = select i1 %cmp349.not.3.1.2, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1585.2, !dbg !100
  %450 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select1775.2, float 0xFFF0000000000000), !dbg !102
  %451 = tail call contract noundef float @llvm.maxnum.f32(float %450, float %condval_6.0.1.1.2), !dbg !102
  %452 = tail call contract noundef float @llvm.maxnum.f32(float %451, float %condval_6.0.2.1.2), !dbg !102
  %453 = tail call contract noundef float @llvm.maxnum.f32(float %452, float %condval_6.0.3.1.2), !dbg !102
  %454 = bitcast float %453 to i32, !dbg !106
  %455 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !115
  %456 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %455) #11, !dbg !120
  %xor.i.i.i.1.2 = xor i32 %456, 32, !dbg !121
  %457 = and i32 %456, -64, !dbg !122
  %and.i.i.i.1.2 = add nsw i32 %457, 64, !dbg !122
  %cmp.not.i.i.i.1.2 = icmp slt i32 %xor.i.i.i.1.2, %and.i.i.i.1.2, !dbg !123
  %cond.i.i.i.1.2 = select i1 %cmp.not.i.i.i.1.2, i32 %xor.i.i.i.1.2, i32 %456, !dbg !124
  %shl.i.i.i.1.2 = shl i32 %cond.i.i.i.1.2, 2, !dbg !125
  %458 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.1.2, i32 %454), !dbg !126
  %459 = bitcast i32 %458 to float, !dbg !127
  %460 = tail call contract noundef float @llvm.maxnum.f32(float %453, float %459), !dbg !128
  %461 = bitcast float %460 to i32, !dbg !136
  %462 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !141
  %463 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %462) #11, !dbg !144
  %xor.i.i.i.i.1.2 = xor i32 %463, 16, !dbg !145
  %464 = and i32 %463, -64, !dbg !146
  %and.i.i.i.i.1.2 = add nsw i32 %464, 64, !dbg !146
  %cmp.not.i.i.i.i.1.2 = icmp slt i32 %xor.i.i.i.i.1.2, %and.i.i.i.i.1.2, !dbg !147
  %cond.i.i.i.i.1.2 = select i1 %cmp.not.i.i.i.i.1.2, i32 %xor.i.i.i.i.1.2, i32 %463, !dbg !148
  %shl.i.i.i.i.1.2 = shl i32 %cond.i.i.i.i.1.2, 2, !dbg !149
  %465 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.1.2, i32 %461), !dbg !150
  %466 = bitcast i32 %465 to float, !dbg !151
  %467 = tail call contract noundef float @llvm.maxnum.f32(float %460, float %466), !dbg !152
  %sub.1.2 = fsub contract float %467, %normalizer.sroa.0.3.2, !dbg !156
  %mul385.1.2 = fmul contract float %sub.1.2, 0x3FC7154760000000, !dbg !157
  %cmp386.1.2 = fcmp contract ogt float %mul385.1.2, 7.000000e+00, !dbg !158
  %sub390.1.2 = fsub contract float %normalizer.sroa.0.3.2, %467
  %mul391.1.2 = fmul contract float %sub390.1.2, 0x3FC7154760000000
  %cmp.i.i.1.2 = fcmp contract olt float %mul391.1.2, -1.260000e+02
  %cond.i.i.1.2 = select contract i1 %cmp.i.i.1.2, float 6.400000e+01, float 0.000000e+00
  %add.i.i.1.2 = fadd contract float %mul391.1.2, %cond.i.i.1.2
  %468 = tail call contract float @llvm.exp2.f32(float %add.i.i.1.2)
  %cond2.i.i.1.2 = select contract i1 %cmp.i.i.1.2, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i.1.2 = fmul contract float %cond2.i.i.1.2, %468
  %normalizer.sroa.0.2.1.2 = select i1 %cmp386.1.2, float %467, float %normalizer.sroa.0.3.2, !dbg !159
  %sub406.11208.2 = fsub contract float %spec.select1775.2, %normalizer.sroa.0.2.1.2, !dbg !160
  %mul407.11209.2 = fmul contract float %sub406.11208.2, 0x3FC7154760000000, !dbg !161
  %add408.11210.2 = fadd contract float %mul407.11209.2, 8.000000e+00, !dbg !162
  %cmp.i.i1056.11211.2 = fcmp contract olt float %add408.11210.2, -1.260000e+02, !dbg !163
  %cond.i.i1057.11212.2 = select contract i1 %cmp.i.i1056.11211.2, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.11213.2 = fadd contract float %add408.11210.2, %cond.i.i1057.11212.2, !dbg !163
  %469 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.11213.2), !dbg !163
  %cond2.i.i1059.11214.2 = select contract i1 %cmp.i.i1056.11211.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %mul.i.i1060.11215.2 = fmul contract float %cond2.i.i1059.11214.2, %469, !dbg !163
  %sub406.1.1.2 = fsub contract float %condval_6.0.1.1.2, %normalizer.sroa.0.2.1.2, !dbg !160
  %mul407.1.1.2 = fmul contract float %sub406.1.1.2, 0x3FC7154760000000, !dbg !161
  %add408.1.1.2 = fadd contract float %mul407.1.1.2, 8.000000e+00, !dbg !162
  %cmp.i.i1056.1.1.2 = fcmp contract olt float %add408.1.1.2, -1.260000e+02, !dbg !163
  %cond.i.i1057.1.1.2 = select contract i1 %cmp.i.i1056.1.1.2, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.1.1.2 = fadd contract float %add408.1.1.2, %cond.i.i1057.1.1.2, !dbg !163
  %470 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.1.1.2), !dbg !163
  %cond2.i.i1059.1.1.2 = select contract i1 %cmp.i.i1056.1.1.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %mul.i.i1060.1.1.2 = fmul contract float %cond2.i.i1059.1.1.2, %470, !dbg !163
  %sub406.2.1.2 = fsub contract float %condval_6.0.2.1.2, %normalizer.sroa.0.2.1.2, !dbg !160
  %mul407.2.1.2 = fmul contract float %sub406.2.1.2, 0x3FC7154760000000, !dbg !161
  %add408.2.1.2 = fadd contract float %mul407.2.1.2, 8.000000e+00, !dbg !162
  %cmp.i.i1056.2.1.2 = fcmp contract olt float %add408.2.1.2, -1.260000e+02, !dbg !163
  %cond.i.i1057.2.1.2 = select contract i1 %cmp.i.i1056.2.1.2, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.2.1.2 = fadd contract float %add408.2.1.2, %cond.i.i1057.2.1.2, !dbg !163
  %471 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.2.1.2), !dbg !163
  %cond2.i.i1059.2.1.2 = select contract i1 %cmp.i.i1056.2.1.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %mul.i.i1060.2.1.2 = fmul contract float %cond2.i.i1059.2.1.2, %471, !dbg !163
  %sub406.3.1.2 = fsub contract float %condval_6.0.3.1.2, %normalizer.sroa.0.2.1.2, !dbg !160
  %mul407.3.1.2 = fmul contract float %sub406.3.1.2, 0x3FC7154760000000, !dbg !161
  %add408.3.1.2 = fadd contract float %mul407.3.1.2, 8.000000e+00, !dbg !162
  %cmp.i.i1056.3.1.2 = fcmp contract olt float %add408.3.1.2, -1.260000e+02, !dbg !163
  %cond.i.i1057.3.1.2 = select contract i1 %cmp.i.i1056.3.1.2, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.3.1.2 = fadd contract float %add408.3.1.2, %cond.i.i1057.3.1.2, !dbg !163
  %472 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.3.1.2), !dbg !163
  %cond2.i.i1059.3.1.2 = select contract i1 %cmp.i.i1056.3.1.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %mul.i.i1060.3.1.2 = fmul contract float %cond2.i.i1059.3.1.2, %472, !dbg !163
  %rescale.sroa.0.0.1.2 = select i1 %cmp386.1.2, float %mul.i.i.1.2, float 1.000000e+00, !dbg !159
  %mul417.1.2 = fmul contract float %pair_rescale.sroa.0.1.2, %rescale.sroa.0.0.1.2, !dbg !203
  %cmp422.1.2 = fcmp contract une float %rescale.sroa.0.0.1.2, 1.000000e+00
  br i1 %cmp422.1.2, label %if.then429.11237.2, label %if.end480.1.2, !dbg !204

if.then429.11237.2:                               ; preds = %if.end240.1.1.2
  %bc1773.2 = bitcast <2 x i32> %probability_pair.sroa.0.4.2 to <4 x half>, !dbg !205
  %473 = extractelement <4 x half> %bc1773.2, i64 0, !dbg !205
  %conv.i1061.11217.2 = fpext half %473 to float, !dbg !205
  %bc1770.2 = bitcast <2 x i32> %probability_pair.sroa.0.4.2 to <4 x half>, !dbg !208
  %474 = extractelement <4 x half> %bc1770.2, i64 1, !dbg !208
  %conv6.i.11219.2 = fpext half %474 to float, !dbg !208
  %bc1771.2 = bitcast <2 x i32> %probability_pair.sroa.0.4.2 to <4 x half>, !dbg !209
  %475 = extractelement <4 x half> %bc1771.2, i64 2, !dbg !209
  %conv.i1063.11220.2 = fpext half %475 to float, !dbg !209
  %bc1774.2 = bitcast <2 x i32> %probability_pair.sroa.0.4.2 to <4 x half>, !dbg !211
  %476 = extractelement <4 x half> %bc1774.2, i64 3, !dbg !211
  %conv6.i1065.11222.2 = fpext half %476 to float, !dbg !211
  %mul450.11223.2 = fmul contract float %rescale.sroa.0.0.1.2, %conv.i1061.11217.2, !dbg !212
  %mul453.11224.2 = fmul contract float %rescale.sroa.0.0.1.2, %conv6.i.11219.2, !dbg !213
  %mul456.11225.2 = fmul contract float %rescale.sroa.0.0.1.2, %conv.i1063.11220.2, !dbg !214
  %mul459.11226.2 = fmul contract float %rescale.sroa.0.0.1.2, %conv6.i1065.11222.2, !dbg !215
  %477 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !216, !noalias !220
  %478 = fptrunc float %mul450.11223.2 to half, !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %477), !dbg !216, !noalias !220
  %479 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !225
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !225, !noalias !220
  %480 = fptrunc float %mul453.11224.2 to half, !dbg !225
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %479), !dbg !225, !noalias !220
  %481 = bitcast half %478 to i16, !dbg !227
  %482 = bitcast half %480 to i16, !dbg !229
  %483 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !230
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !230, !noalias !234
  %484 = fptrunc float %mul456.11225.2 to half, !dbg !230
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %483), !dbg !230, !noalias !234
  %485 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !239, !noalias !234
  %486 = fptrunc float %mul459.11226.2 to half, !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %485), !dbg !239, !noalias !234
  %487 = bitcast half %484 to i16, !dbg !241
  %488 = bitcast half %486 to i16, !dbg !243
  %__1.sroa.6.0.insert.ext.11227.2 = zext i16 %488 to i64, !dbg !244
  %__1.sroa.6.0.insert.shift.11228.2 = shl nuw i64 %__1.sroa.6.0.insert.ext.11227.2, 48, !dbg !244
  %__1.sroa.5.0.insert.ext.11229.2 = zext i16 %487 to i64, !dbg !244
  %__1.sroa.5.0.insert.shift.11230.2 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.11229.2, 32, !dbg !244
  %__1.sroa.5.0.insert.insert.11231.2 = or disjoint i64 %__1.sroa.6.0.insert.shift.11228.2, %__1.sroa.5.0.insert.shift.11230.2, !dbg !244
  %__1.sroa.4.0.insert.ext.11232.2 = zext i16 %482 to i64, !dbg !244
  %__1.sroa.4.0.insert.shift.11233.2 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.11232.2, 16, !dbg !244
  %__1.sroa.4.0.insert.insert.11234.2 = or disjoint i64 %__1.sroa.5.0.insert.insert.11231.2, %__1.sroa.4.0.insert.shift.11233.2, !dbg !244
  %__1.sroa.0.0.insert.ext.11235.2 = zext i16 %481 to i64, !dbg !244
  %__1.sroa.0.0.insert.insert.11236.2 = or disjoint i64 %__1.sroa.4.0.insert.insert.11234.2, %__1.sroa.0.0.insert.ext.11235.2, !dbg !244
  %489 = bitcast i64 %__1.sroa.0.0.insert.insert.11236.2 to <2 x i32>, !dbg !244
  br label %if.end480.1.2, !dbg !166

if.end480.1.2:                                    ; preds = %if.then429.11237.2, %if.end240.1.1.2
  %probability_pair.sroa.0.7.2 = phi <2 x i32> [ %489, %if.then429.11237.2 ], [ %probability_pair.sroa.0.4.2, %if.end240.1.1.2 ], !dbg !90
  %mul486.1.2 = fmul contract float %pair_sum_local.sroa.0.3.2, %rescale.sroa.0.0.1.2, !dbg !166
  %pair_sum_local.sroa.0.1.1.2 = select i1 %cmp422.1.2, float %mul486.1.2, float %pair_sum_local.sroa.0.3.2, !dbg !166
  %add496.11239.2 = fadd contract float %pair_sum_local.sroa.0.1.1.2, %mul.i.i1060.11215.2, !dbg !167
  %add496.1.1.2 = fadd contract float %add496.11239.2, %mul.i.i1060.1.1.2, !dbg !167
  %add496.2.1.2 = fadd contract float %add496.1.1.2, %mul.i.i1060.2.1.2, !dbg !167
  %add496.3.1.2 = fadd contract float %add496.2.1.2, %mul.i.i1060.3.1.2, !dbg !167
  %490 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !168, !noalias !176
  %491 = fptrunc float %mul.i.i1060.11215.2 to half, !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %490), !dbg !168, !noalias !176
  %492 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %493 = fptrunc float %mul.i.i1060.1.1.2 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %492), !dbg !181, !noalias !176
  %494 = bitcast half %491 to i16, !dbg !183
  %495 = bitcast half %493 to i16, !dbg !186
  %496 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !187, !noalias !191
  %497 = fptrunc float %mul.i.i1060.2.1.2 to half, !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %496), !dbg !187, !noalias !191
  %498 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !196
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !196, !noalias !191
  %499 = fptrunc float %mul.i.i1060.3.1.2 to half, !dbg !196
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %498), !dbg !196, !noalias !191
  %500 = bitcast half %497 to i16, !dbg !198
  %501 = bitcast half %499 to i16, !dbg !200
  %__4.sroa.6.0.insert.ext.1.2 = zext i16 %501 to i64, !dbg !201
  %__4.sroa.6.0.insert.shift.1.2 = shl nuw i64 %__4.sroa.6.0.insert.ext.1.2, 48, !dbg !201
  %__4.sroa.5.0.insert.ext.1.2 = zext i16 %500 to i64, !dbg !201
  %__4.sroa.5.0.insert.shift.1.2 = shl nuw nsw i64 %__4.sroa.5.0.insert.ext.1.2, 32, !dbg !201
  %__4.sroa.5.0.insert.insert.1.2 = or disjoint i64 %__4.sroa.6.0.insert.shift.1.2, %__4.sroa.5.0.insert.shift.1.2, !dbg !201
  %__4.sroa.4.0.insert.ext.1.2 = zext i16 %495 to i64, !dbg !201
  %__4.sroa.4.0.insert.shift.1.2 = shl nuw nsw i64 %__4.sroa.4.0.insert.ext.1.2, 16, !dbg !201
  %__4.sroa.4.0.insert.insert.1.2 = or disjoint i64 %__4.sroa.5.0.insert.insert.1.2, %__4.sroa.4.0.insert.shift.1.2, !dbg !201
  %__4.sroa.0.0.insert.ext.1.2 = zext i16 %494 to i64, !dbg !201
  %__4.sroa.0.0.insert.insert.1.2 = or disjoint i64 %__4.sroa.4.0.insert.insert.1.2, %__4.sroa.0.0.insert.ext.1.2, !dbg !201
  %502 = bitcast i64 %__4.sroa.0.0.insert.insert.1.2 to <2 x i32>, !dbg !201
  br label %if.end517.1.2, !dbg !202

if.end517.1.2:                                    ; preds = %if.end480.1.2, %if.end517.2
  %probability_pair.sroa.14.1.2 = phi <2 x i32> [ zeroinitializer, %if.end517.2 ], [ %502, %if.end480.1.2 ], !dbg !90
  %probability_pair.sroa.0.8.2 = phi <2 x i32> [ %probability_pair.sroa.0.4.2, %if.end517.2 ], [ %probability_pair.sroa.0.7.2, %if.end480.1.2 ], !dbg !90
  %pair_sum_local.sroa.0.3.1.2 = phi float [ %pair_sum_local.sroa.0.3.2, %if.end517.2 ], [ %add496.3.1.2, %if.end480.1.2 ], !dbg !90
  %pair_rescale.sroa.0.1.1.2 = phi float [ %pair_rescale.sroa.0.1.2, %if.end517.2 ], [ %mul417.1.2, %if.end480.1.2 ], !dbg !90
  %normalizer.sroa.0.3.1.2 = phi float [ %normalizer.sroa.0.3.2, %if.end517.2 ], [ %normalizer.sroa.0.2.1.2, %if.end480.1.2 ], !dbg !90
  %add535.21949 = fadd contract float %pair_sum_local.sroa.0.3.1.2, 0.000000e+00, !dbg !245
  %add535.1.2 = fadd contract float %add535.21949, 0.000000e+00, !dbg !245
  %add535.2.2 = fadd contract float %add535.1.2, 0.000000e+00, !dbg !245
  %add535.3.2 = fadd contract float %add535.2.2, 0.000000e+00, !dbg !245
  %503 = bitcast float %add535.3.2 to i32, !dbg !246
  %504 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !251
  %505 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %504) #11, !dbg !254
  %xor.i.i.i1075.2 = xor i32 %505, 32, !dbg !255
  %506 = and i32 %505, -64, !dbg !256
  %and.i.i.i1076.2 = add nsw i32 %506, 64, !dbg !256
  %cmp.not.i.i.i1077.2 = icmp slt i32 %xor.i.i.i1075.2, %and.i.i.i1076.2, !dbg !257
  %cond.i.i.i1078.2 = select i1 %cmp.not.i.i.i1077.2, i32 %xor.i.i.i1075.2, i32 %505, !dbg !258
  %shl.i.i.i1079.2 = shl i32 %cond.i.i.i1078.2, 2, !dbg !259
  %507 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i1079.2, i32 %503), !dbg !260
  %508 = bitcast i32 %507 to float, !dbg !261
  %add.i.i1080.2 = fadd contract float %add535.3.2, %508, !dbg !262
  %509 = bitcast float %add.i.i1080.2 to i32, !dbg !265
  %510 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !270
  %511 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %510) #11, !dbg !273
  %xor.i.i.i.i1081.2 = xor i32 %511, 16, !dbg !274
  %512 = and i32 %511, -64, !dbg !275
  %and.i.i.i.i1082.2 = add nsw i32 %512, 64, !dbg !275
  %cmp.not.i.i.i.i1083.2 = icmp slt i32 %xor.i.i.i.i1081.2, %and.i.i.i.i1082.2, !dbg !276
  %cond.i.i.i.i1084.2 = select i1 %cmp.not.i.i.i.i1083.2, i32 %xor.i.i.i.i1081.2, i32 %511, !dbg !277
  %shl.i.i.i.i1085.2 = shl i32 %cond.i.i.i.i1084.2, 2, !dbg !278
  %513 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i1085.2, i32 %509), !dbg !279
  %514 = bitcast i32 %513 to float, !dbg !280
  %add.i.i.i.2 = fadd contract float %add.i.i1080.2, %514, !dbg !281
  %cmp544.2 = fcmp contract une float %pair_rescale.sroa.0.1.1.2, 1.000000e+00, !dbg !283
  %mul548.2 = fmul contract float %denominator.sroa.0.2.1, %pair_rescale.sroa.0.1.1.2, !dbg !284
  %denominator.sroa.0.1.2 = select i1 %cmp544.2, float %mul548.2, float %denominator.sroa.0.2.1, !dbg !284
  %add553.2 = fadd contract float %denominator.sroa.0.1.2, %add.i.i.i.2, !dbg !285
  br i1 %cmp544.2, label %for.body561.preheader.2, label %if.end571.2, !dbg !286

for.body561.preheader.2:                          ; preds = %if.end517.1.2
  %output_acc.sroa.0.0.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.0.4.1, i64 0, !dbg !313
  %mul565.21950 = fmul contract float %pair_rescale.sroa.0.1.1.2, %output_acc.sroa.0.0.vec.extract.2, !dbg !287
  %output_acc.sroa.0.0.vec.insert1614.2 = insertelement <4 x float> poison, float %mul565.21950, i64 0, !dbg !288
  %output_acc.sroa.0.4.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.0.4.1, i64 1, !dbg !313
  %mul565.1.2 = fmul contract float %pair_rescale.sroa.0.1.1.2, %output_acc.sroa.0.4.vec.extract.2, !dbg !287
  %output_acc.sroa.0.4.vec.insert1623.2 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert1614.2, float %mul565.1.2, i64 1, !dbg !288
  %output_acc.sroa.0.8.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.0.4.1, i64 2, !dbg !313
  %mul565.2.2 = fmul contract float %pair_rescale.sroa.0.1.1.2, %output_acc.sroa.0.8.vec.extract.2, !dbg !287
  %output_acc.sroa.0.8.vec.insert1632.2 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert1623.2, float %mul565.2.2, i64 2, !dbg !288
  %output_acc.sroa.0.12.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.0.4.1, i64 3, !dbg !313
  %mul565.3.2 = fmul contract float %pair_rescale.sroa.0.1.1.2, %output_acc.sroa.0.12.vec.extract.2, !dbg !287
  %output_acc.sroa.0.12.vec.insert1641.2 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert1632.2, float %mul565.3.2, i64 3, !dbg !288
  %output_acc.sroa.30.16.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.30.4.1, i64 0, !dbg !313
  %mul565.4.2 = fmul contract float %pair_rescale.sroa.0.1.1.2, %output_acc.sroa.30.16.vec.extract.2, !dbg !287
  %output_acc.sroa.30.16.vec.insert1652.2 = insertelement <4 x float> poison, float %mul565.4.2, i64 0, !dbg !288
  %output_acc.sroa.30.20.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.30.4.1, i64 1, !dbg !313
  %mul565.5.2 = fmul contract float %pair_rescale.sroa.0.1.1.2, %output_acc.sroa.30.20.vec.extract.2, !dbg !287
  %output_acc.sroa.30.20.vec.insert1661.2 = insertelement <4 x float> %output_acc.sroa.30.16.vec.insert1652.2, float %mul565.5.2, i64 1, !dbg !288
  %output_acc.sroa.30.24.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.30.4.1, i64 2, !dbg !313
  %mul565.6.2 = fmul contract float %pair_rescale.sroa.0.1.1.2, %output_acc.sroa.30.24.vec.extract.2, !dbg !287
  %output_acc.sroa.30.24.vec.insert1670.2 = insertelement <4 x float> %output_acc.sroa.30.20.vec.insert1661.2, float %mul565.6.2, i64 2, !dbg !288
  %output_acc.sroa.30.28.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.30.4.1, i64 3, !dbg !313
  %mul565.7.2 = fmul contract float %pair_rescale.sroa.0.1.1.2, %output_acc.sroa.30.28.vec.extract.2, !dbg !287
  %output_acc.sroa.30.28.vec.insert1679.2 = insertelement <4 x float> %output_acc.sroa.30.24.vec.insert1670.2, float %mul565.7.2, i64 3, !dbg !288
  %output_acc.sroa.58.32.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.58.4.1, i64 0, !dbg !313
  %mul565.8.2 = fmul contract float %pair_rescale.sroa.0.1.1.2, %output_acc.sroa.58.32.vec.extract.2, !dbg !287
  %output_acc.sroa.58.32.vec.insert1690.2 = insertelement <4 x float> poison, float %mul565.8.2, i64 0, !dbg !288
  %output_acc.sroa.58.36.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.58.4.1, i64 1, !dbg !313
  %mul565.9.2 = fmul contract float %pair_rescale.sroa.0.1.1.2, %output_acc.sroa.58.36.vec.extract.2, !dbg !287
  %output_acc.sroa.58.36.vec.insert1699.2 = insertelement <4 x float> %output_acc.sroa.58.32.vec.insert1690.2, float %mul565.9.2, i64 1, !dbg !288
  %output_acc.sroa.58.40.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.58.4.1, i64 2, !dbg !313
  %mul565.10.2 = fmul contract float %pair_rescale.sroa.0.1.1.2, %output_acc.sroa.58.40.vec.extract.2, !dbg !287
  %output_acc.sroa.58.40.vec.insert1708.2 = insertelement <4 x float> %output_acc.sroa.58.36.vec.insert1699.2, float %mul565.10.2, i64 2, !dbg !288
  %output_acc.sroa.58.44.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.58.4.1, i64 3, !dbg !313
  %mul565.11.2 = fmul contract float %pair_rescale.sroa.0.1.1.2, %output_acc.sroa.58.44.vec.extract.2, !dbg !287
  %output_acc.sroa.58.44.vec.insert1717.2 = insertelement <4 x float> %output_acc.sroa.58.40.vec.insert1708.2, float %mul565.11.2, i64 3, !dbg !288
  %output_acc.sroa.86.48.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.86.4.1, i64 0, !dbg !313
  %mul565.12.2 = fmul contract float %pair_rescale.sroa.0.1.1.2, %output_acc.sroa.86.48.vec.extract.2, !dbg !287
  %output_acc.sroa.86.48.vec.insert1728.2 = insertelement <4 x float> poison, float %mul565.12.2, i64 0, !dbg !288
  %output_acc.sroa.86.52.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.86.4.1, i64 1, !dbg !313
  %mul565.13.2 = fmul contract float %pair_rescale.sroa.0.1.1.2, %output_acc.sroa.86.52.vec.extract.2, !dbg !287
  %output_acc.sroa.86.52.vec.insert1737.2 = insertelement <4 x float> %output_acc.sroa.86.48.vec.insert1728.2, float %mul565.13.2, i64 1, !dbg !288
  %output_acc.sroa.86.56.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.86.4.1, i64 2, !dbg !313
  %mul565.14.2 = fmul contract float %pair_rescale.sroa.0.1.1.2, %output_acc.sroa.86.56.vec.extract.2, !dbg !287
  %output_acc.sroa.86.56.vec.insert1746.2 = insertelement <4 x float> %output_acc.sroa.86.52.vec.insert1737.2, float %mul565.14.2, i64 2, !dbg !288
  %output_acc.sroa.86.60.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.86.4.1, i64 3, !dbg !313
  %mul565.15.2 = fmul contract float %pair_rescale.sroa.0.1.1.2, %output_acc.sroa.86.60.vec.extract.2, !dbg !287
  %output_acc.sroa.86.60.vec.insert1755.2 = insertelement <4 x float> %output_acc.sroa.86.56.vec.insert1746.2, float %mul565.15.2, i64 3, !dbg !288
  br label %if.end571.2, !dbg !289

if.end571.2:                                      ; preds = %for.body561.preheader.2, %if.end517.1.2
  %output_acc.sroa.86.1.2 = phi <4 x float> [ %output_acc.sroa.86.60.vec.insert1755.2, %for.body561.preheader.2 ], [ %output_acc.sroa.86.4.1, %if.end517.1.2 ], !dbg !90
  %output_acc.sroa.58.1.2 = phi <4 x float> [ %output_acc.sroa.58.44.vec.insert1717.2, %for.body561.preheader.2 ], [ %output_acc.sroa.58.4.1, %if.end517.1.2 ], !dbg !90
  %output_acc.sroa.30.1.2 = phi <4 x float> [ %output_acc.sroa.30.28.vec.insert1679.2, %for.body561.preheader.2 ], [ %output_acc.sroa.30.4.1, %if.end517.1.2 ], !dbg !90
  %output_acc.sroa.0.1.2 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1641.2, %for.body561.preheader.2 ], [ %output_acc.sroa.0.4.1, %if.end517.1.2 ], !dbg !90
  br i1 %or.cond1109.2, label %if.end752.2, label %if.then588.2, !dbg !290

if.then588.2:                                     ; preds = %if.end571.2
  fence syncscope("warp") release, !dbg !291
  tail call void @llvm.mxc.barrier.warp(), !dbg !294
  fence syncscope("warp") acquire, !dbg !295
  %shr600.2 = shl nsw i32 %395, 2
  %cmp602.2 = icmp slt i32 %shr600.2, %invariant.op1152
  %condval_13.0.2 = sext i32 %mul119.2 to i64
  br i1 %cmp602.2, label %if.then603.21955, label %if.end650.21958, !dbg !296

if.then603.21955:                                 ; preds = %if.then588.2
  %.idx1163.21951 = shl nsw i64 %condval_13.0.2, 7, !dbg !297
  %515 = getelementptr i8, ptr addrspace(4) %29, i64 %.idx1163.21951, !dbg !297
  %condval_10.sroa.0.0.copyload.21952 = load i32, ptr addrspace(4) %515, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.21953 = getelementptr inbounds i8, ptr addrspace(4) %515, i64 4, !dbg !298
  %condval_10.sroa.5.0.copyload.21954 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.21953, align 4, !dbg !298, !tbaa !30
  br label %if.end650.21958, !dbg !299

if.end650.21958:                                  ; preds = %if.then603.21955, %if.then588.2
  %condval_10.sroa.5.0.21956 = phi i32 [ %condval_10.sroa.5.0.copyload.21954, %if.then603.21955 ], [ 0, %if.then588.2 ], !dbg !90
  %condval_10.sroa.0.0.21957 = phi i32 [ %condval_10.sroa.0.0.copyload.21952, %if.then603.21955 ], [ 0, %if.then588.2 ], !dbg !90
  br i1 %cmp602.2, label %if.then603.1.2, label %if.end650.1.2, !dbg !296

if.then603.1.2:                                   ; preds = %if.end650.21958
  %.idx1163.1.2 = shl nsw i64 %condval_13.0.2, 7, !dbg !297
  %516 = getelementptr i8, ptr addrspace(4) %30, i64 %.idx1163.1.2, !dbg !297
  %add.ptr636.1.2 = getelementptr i8, ptr addrspace(4) %516, i64 128, !dbg !297
  %condval_10.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %add.ptr636.1.2, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.1.2 = getelementptr i8, ptr addrspace(4) %516, i64 132, !dbg !298
  %condval_10.sroa.5.0.copyload.1.2 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.1.2, align 4, !dbg !298, !tbaa !30
  br label %if.end650.1.2, !dbg !299

if.end650.1.2:                                    ; preds = %if.then603.1.2, %if.end650.21958
  %condval_10.sroa.5.0.1.2 = phi i32 [ %condval_10.sroa.5.0.copyload.1.2, %if.then603.1.2 ], [ 0, %if.end650.21958 ], !dbg !90
  %condval_10.sroa.0.0.1.2 = phi i32 [ %condval_10.sroa.0.0.copyload.1.2, %if.then603.1.2 ], [ 0, %if.end650.21958 ], !dbg !90
  br i1 %cmp602.2, label %if.then603.2.2, label %if.end650.2.2, !dbg !296

if.then603.2.2:                                   ; preds = %if.end650.1.2
  %.idx1163.2.2 = shl nsw i64 %condval_13.0.2, 7, !dbg !297
  %517 = getelementptr i8, ptr addrspace(4) %31, i64 %.idx1163.2.2, !dbg !297
  %add.ptr636.2.2 = getelementptr i8, ptr addrspace(4) %517, i64 256, !dbg !297
  %condval_10.sroa.0.0.copyload.2.2 = load i32, ptr addrspace(4) %add.ptr636.2.2, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.2.2 = getelementptr i8, ptr addrspace(4) %517, i64 260, !dbg !298
  %condval_10.sroa.5.0.copyload.2.2 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.2.2, align 4, !dbg !298, !tbaa !30
  br label %if.end650.2.2, !dbg !299

if.end650.2.2:                                    ; preds = %if.then603.2.2, %if.end650.1.2
  %condval_10.sroa.5.0.2.2 = phi i32 [ %condval_10.sroa.5.0.copyload.2.2, %if.then603.2.2 ], [ 0, %if.end650.1.2 ], !dbg !90
  %condval_10.sroa.0.0.2.2 = phi i32 [ %condval_10.sroa.0.0.copyload.2.2, %if.then603.2.2 ], [ 0, %if.end650.1.2 ], !dbg !90
  br i1 %cmp602.2, label %if.then603.3.2, label %if.end650.3.2, !dbg !296

if.then603.3.2:                                   ; preds = %if.end650.2.2
  %.idx1163.3.2 = shl nsw i64 %condval_13.0.2, 7, !dbg !297
  %518 = getelementptr i8, ptr addrspace(4) %32, i64 %.idx1163.3.2, !dbg !297
  %add.ptr636.3.2 = getelementptr i8, ptr addrspace(4) %518, i64 384, !dbg !297
  %condval_10.sroa.0.0.copyload.3.2 = load i32, ptr addrspace(4) %add.ptr636.3.2, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.3.2 = getelementptr i8, ptr addrspace(4) %518, i64 388, !dbg !298
  %condval_10.sroa.5.0.copyload.3.2 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.3.2, align 4, !dbg !298, !tbaa !30
  br label %if.end650.3.2, !dbg !299

if.end650.3.2:                                    ; preds = %if.then603.3.2, %if.end650.2.2
  %condval_10.sroa.5.0.3.2 = phi i32 [ %condval_10.sroa.5.0.copyload.3.2, %if.then603.3.2 ], [ 0, %if.end650.2.2 ], !dbg !90
  %condval_10.sroa.0.0.3.2 = phi i32 [ %condval_10.sroa.0.0.copyload.3.2, %if.then603.3.2 ], [ 0, %if.end650.2.2 ], !dbg !90
  %519 = and i32 %condval_10.sroa.0.0.3.2, 65535, !dbg !300
  %v_column_local.sroa.34.0.insert.ext.2 = zext nneg i32 %519 to i64, !dbg !300
  %v_column_local.sroa.34.0.insert.shift.2 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext.2, 48, !dbg !300
  %520 = and i32 %condval_10.sroa.0.0.2.2, 65535, !dbg !300
  %v_column_local.sroa.26.0.insert.ext.2 = zext nneg i32 %520 to i64, !dbg !300
  %v_column_local.sroa.26.0.insert.shift.2 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext.2, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert.2 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift.2, %v_column_local.sroa.26.0.insert.shift.2, !dbg !300
  %521 = shl i32 %condval_10.sroa.0.0.1.2, 16, !dbg !300
  %v_column_local.sroa.18.0.insert.shift.2 = zext i32 %521 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert.2 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert.2, %v_column_local.sroa.18.0.insert.shift.2, !dbg !300
  %522 = and i32 %condval_10.sroa.0.0.21957, 65535, !dbg !300
  %v_column_local.sroa.0.0.insert.ext.2 = zext nneg i32 %522 to i64, !dbg !300
  %v_column_local.sroa.0.0.insert.insert.2 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert.2, %v_column_local.sroa.0.0.insert.ext.2, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr692, align 8, !dbg !300
  %v_tile_local.sroa.0.2.extract.shift.2 = lshr i32 %condval_10.sroa.0.0.21957, 16, !dbg !301
  %v_tile_local.sroa.0.2.extract.trunc.2 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift.2 to i64, !dbg !301
  %v_tile_local.sroa.14.10.extract.shift.2 = and i32 %condval_10.sroa.0.0.1.2, -65536, !dbg !300
  %v_tile_local.sroa.26.18.extract.shift.2 = lshr i32 %condval_10.sroa.0.0.2.2, 16, !dbg !301
  %v_tile_local.sroa.26.18.extract.trunc.2 = zext nneg i32 %v_tile_local.sroa.26.18.extract.shift.2 to i64, !dbg !301
  %v_tile_local.sroa.38.26.extract.shift.2 = lshr i32 %condval_10.sroa.0.0.3.2, 16, !dbg !301
  %v_tile_local.sroa.38.26.extract.trunc.2 = zext nneg i32 %v_tile_local.sroa.38.26.extract.shift.2 to i64, !dbg !301
  %v_column_local.sroa.34.0.insert.shift1389.2 = shl nuw i64 %v_tile_local.sroa.38.26.extract.trunc.2, 48, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1354.2 = shl nuw nsw i64 %v_tile_local.sroa.26.18.extract.trunc.2, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1356.2 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1389.2, %v_column_local.sroa.26.0.insert.shift1354.2, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1319.2 = zext i32 %v_tile_local.sroa.14.10.extract.shift.2 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1321.2 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1356.2, %v_column_local.sroa.18.0.insert.shift1319.2, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1292.2 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1321.2, %v_tile_local.sroa.0.2.extract.trunc.2, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1292.2, ptr addrspace(3) %add.ptr692.1, align 8, !dbg !300
  %523 = and i32 %condval_10.sroa.5.0.3.2, 65535, !dbg !300
  %v_column_local.sroa.34.0.insert.ext1393.2 = zext nneg i32 %523 to i64, !dbg !300
  %v_column_local.sroa.34.0.insert.shift1394.2 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1393.2, 48, !dbg !300
  %524 = and i32 %condval_10.sroa.5.0.2.2, 65535, !dbg !300
  %v_column_local.sroa.26.0.insert.ext1358.2 = zext nneg i32 %524 to i64, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1359.2 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1358.2, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1361.2 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1394.2, %v_column_local.sroa.26.0.insert.shift1359.2, !dbg !300
  %525 = shl i32 %condval_10.sroa.5.0.1.2, 16, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1324.2 = zext i32 %525 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1326.2 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1361.2, %v_column_local.sroa.18.0.insert.shift1324.2, !dbg !300
  %526 = and i32 %condval_10.sroa.5.0.21956, 65535, !dbg !300
  %v_column_local.sroa.0.0.insert.ext1294.2 = zext nneg i32 %526 to i64, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1296.2 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1326.2, %v_column_local.sroa.0.0.insert.ext1294.2, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1296.2, ptr addrspace(3) %add.ptr692.2, align 8, !dbg !300
  %v_tile_local.sroa.8.6.extract.shift.2 = lshr i32 %condval_10.sroa.5.0.21956, 16, !dbg !301
  %v_tile_local.sroa.8.6.extract.trunc.2 = zext nneg i32 %v_tile_local.sroa.8.6.extract.shift.2 to i64, !dbg !301
  %v_tile_local.sroa.20.14.extract.shift.2 = and i32 %condval_10.sroa.5.0.1.2, -65536, !dbg !300
  %v_tile_local.sroa.32.22.extract.shift.2 = lshr i32 %condval_10.sroa.5.0.2.2, 16, !dbg !301
  %v_tile_local.sroa.32.22.extract.trunc.2 = zext nneg i32 %v_tile_local.sroa.32.22.extract.shift.2 to i64, !dbg !301
  %v_tile_local.sroa.44.30.extract.shift.2 = lshr i32 %condval_10.sroa.5.0.3.2, 16, !dbg !301
  %v_tile_local.sroa.44.30.extract.trunc.2 = zext nneg i32 %v_tile_local.sroa.44.30.extract.shift.2 to i64, !dbg !301
  %v_column_local.sroa.34.0.insert.shift1399.2 = shl nuw i64 %v_tile_local.sroa.44.30.extract.trunc.2, 48, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1364.2 = shl nuw nsw i64 %v_tile_local.sroa.32.22.extract.trunc.2, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1366.2 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1399.2, %v_column_local.sroa.26.0.insert.shift1364.2, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1329.2 = zext i32 %v_tile_local.sroa.20.14.extract.shift.2 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1331.2 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1366.2, %v_column_local.sroa.18.0.insert.shift1329.2, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1300.2 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1331.2, %v_tile_local.sroa.8.6.extract.trunc.2, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1300.2, ptr addrspace(3) %add.ptr692.3, align 8, !dbg !300
  fence syncscope("warp") release, !dbg !302
  tail call void @llvm.mxc.barrier.warp(), !dbg !305
  fence syncscope("warp") acquire, !dbg !306
  %527 = bitcast <2 x i32> %probability_pair.sroa.0.8.2 to <4 x half>, !dbg !307
  %528 = load <4 x half>, ptr addrspace(3) %add.ptr726, align 8, !dbg !308
  %529 = load <4 x half>, ptr addrspace(3) %add.ptr726.1, align 8, !dbg !308
  %530 = load <4 x half>, ptr addrspace(3) %add.ptr726.2, align 8, !dbg !308
  %531 = load <4 x half>, ptr addrspace(3) %add.ptr726.3, align 8, !dbg !308
  %532 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %528, <4 x half> %527, <4 x float> %output_acc.sroa.0.1.2), !dbg !309
  %533 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %529, <4 x half> %527, <4 x float> %output_acc.sroa.30.1.2), !dbg !309
  %534 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %530, <4 x half> %527, <4 x float> %output_acc.sroa.58.1.2), !dbg !309
  %535 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %531, <4 x half> %527, <4 x float> %output_acc.sroa.86.1.2), !dbg !309
  br label %if.end752.2, !dbg !310

if.end752.2:                                      ; preds = %if.end650.3.2, %if.end571.2
  %output_acc.sroa.86.2.2 = phi <4 x float> [ %output_acc.sroa.86.1.2, %if.end571.2 ], [ %535, %if.end650.3.2 ], !dbg !90
  %output_acc.sroa.58.2.2 = phi <4 x float> [ %output_acc.sroa.58.1.2, %if.end571.2 ], [ %534, %if.end650.3.2 ], !dbg !90
  %output_acc.sroa.30.2.2 = phi <4 x float> [ %output_acc.sroa.30.1.2, %if.end571.2 ], [ %533, %if.end650.3.2 ], !dbg !90
  %output_acc.sroa.0.2.2 = phi <4 x float> [ %output_acc.sroa.0.1.2, %if.end571.2 ], [ %532, %if.end650.3.2 ], !dbg !90
  br i1 %or.cond1109.1.2, label %if.end756.2, label %if.then588.1.2, !dbg !290

if.then588.1.2:                                   ; preds = %if.end752.2
  fence syncscope("warp") release, !dbg !291
  tail call void @llvm.mxc.barrier.warp(), !dbg !294
  fence syncscope("warp") acquire, !dbg !295
  %shr600.1.2 = shl nsw i32 %397, 2
  %cmp602.1.2 = icmp slt i32 %shr600.1.2, %invariant.op1152
  %condval_13.0.1.2 = sext i32 %mul130.2 to i64
  br i1 %cmp602.1.2, label %if.then603.11249.2, label %if.end650.11253.2, !dbg !296

if.then603.11249.2:                               ; preds = %if.then588.1.2
  %.idx1163.11245.2 = shl nsw i64 %condval_13.0.1.2, 7, !dbg !297
  %536 = getelementptr i8, ptr addrspace(4) %49, i64 %.idx1163.11245.2, !dbg !297
  %condval_10.sroa.0.0.copyload.11246.2 = load i32, ptr addrspace(4) %536, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.11247.2 = getelementptr inbounds i8, ptr addrspace(4) %536, i64 4, !dbg !298
  %condval_10.sroa.5.0.copyload.11248.2 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.11247.2, align 4, !dbg !298, !tbaa !30
  br label %if.end650.11253.2, !dbg !299

if.end650.11253.2:                                ; preds = %if.then603.11249.2, %if.then588.1.2
  %condval_10.sroa.5.0.11250.2 = phi i32 [ %condval_10.sroa.5.0.copyload.11248.2, %if.then603.11249.2 ], [ 0, %if.then588.1.2 ], !dbg !90
  %condval_10.sroa.0.0.11251.2 = phi i32 [ %condval_10.sroa.0.0.copyload.11246.2, %if.then603.11249.2 ], [ 0, %if.then588.1.2 ], !dbg !90
  br i1 %cmp602.1.2, label %if.then603.1.1.2, label %if.end650.1.1.2, !dbg !296

if.then603.1.1.2:                                 ; preds = %if.end650.11253.2
  %.idx1163.1.1.2 = shl nsw i64 %condval_13.0.1.2, 7, !dbg !297
  %537 = getelementptr i8, ptr addrspace(4) %50, i64 %.idx1163.1.1.2, !dbg !297
  %add.ptr636.1.1.2 = getelementptr i8, ptr addrspace(4) %537, i64 128, !dbg !297
  %condval_10.sroa.0.0.copyload.1.1.2 = load i32, ptr addrspace(4) %add.ptr636.1.1.2, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.1.1.2 = getelementptr i8, ptr addrspace(4) %537, i64 132, !dbg !298
  %condval_10.sroa.5.0.copyload.1.1.2 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.1.1.2, align 4, !dbg !298, !tbaa !30
  br label %if.end650.1.1.2, !dbg !299

if.end650.1.1.2:                                  ; preds = %if.then603.1.1.2, %if.end650.11253.2
  %condval_10.sroa.5.0.1.1.2 = phi i32 [ %condval_10.sroa.5.0.copyload.1.1.2, %if.then603.1.1.2 ], [ 0, %if.end650.11253.2 ], !dbg !90
  %condval_10.sroa.0.0.1.1.2 = phi i32 [ %condval_10.sroa.0.0.copyload.1.1.2, %if.then603.1.1.2 ], [ 0, %if.end650.11253.2 ], !dbg !90
  br i1 %cmp602.1.2, label %if.then603.2.1.2, label %if.end650.2.1.2, !dbg !296

if.then603.2.1.2:                                 ; preds = %if.end650.1.1.2
  %.idx1163.2.1.2 = shl nsw i64 %condval_13.0.1.2, 7, !dbg !297
  %538 = getelementptr i8, ptr addrspace(4) %51, i64 %.idx1163.2.1.2, !dbg !297
  %add.ptr636.2.1.2 = getelementptr i8, ptr addrspace(4) %538, i64 256, !dbg !297
  %condval_10.sroa.0.0.copyload.2.1.2 = load i32, ptr addrspace(4) %add.ptr636.2.1.2, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.2.1.2 = getelementptr i8, ptr addrspace(4) %538, i64 260, !dbg !298
  %condval_10.sroa.5.0.copyload.2.1.2 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.2.1.2, align 4, !dbg !298, !tbaa !30
  br label %if.end650.2.1.2, !dbg !299

if.end650.2.1.2:                                  ; preds = %if.then603.2.1.2, %if.end650.1.1.2
  %condval_10.sroa.5.0.2.1.2 = phi i32 [ %condval_10.sroa.5.0.copyload.2.1.2, %if.then603.2.1.2 ], [ 0, %if.end650.1.1.2 ], !dbg !90
  %condval_10.sroa.0.0.2.1.2 = phi i32 [ %condval_10.sroa.0.0.copyload.2.1.2, %if.then603.2.1.2 ], [ 0, %if.end650.1.1.2 ], !dbg !90
  br i1 %cmp602.1.2, label %if.then603.3.1.2, label %if.end650.3.1.2, !dbg !296

if.then603.3.1.2:                                 ; preds = %if.end650.2.1.2
  %.idx1163.3.1.2 = shl nsw i64 %condval_13.0.1.2, 7, !dbg !297
  %539 = getelementptr i8, ptr addrspace(4) %52, i64 %.idx1163.3.1.2, !dbg !297
  %add.ptr636.3.1.2 = getelementptr i8, ptr addrspace(4) %539, i64 384, !dbg !297
  %condval_10.sroa.0.0.copyload.3.1.2 = load i32, ptr addrspace(4) %add.ptr636.3.1.2, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.3.1.2 = getelementptr i8, ptr addrspace(4) %539, i64 388, !dbg !298
  %condval_10.sroa.5.0.copyload.3.1.2 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.3.1.2, align 4, !dbg !298, !tbaa !30
  br label %if.end650.3.1.2, !dbg !299

if.end650.3.1.2:                                  ; preds = %if.then603.3.1.2, %if.end650.2.1.2
  %condval_10.sroa.5.0.3.1.2 = phi i32 [ %condval_10.sroa.5.0.copyload.3.1.2, %if.then603.3.1.2 ], [ 0, %if.end650.2.1.2 ], !dbg !90
  %condval_10.sroa.0.0.3.1.2 = phi i32 [ %condval_10.sroa.0.0.copyload.3.1.2, %if.then603.3.1.2 ], [ 0, %if.end650.2.1.2 ], !dbg !90
  %540 = and i32 %condval_10.sroa.0.0.3.1.2, 65535, !dbg !300
  %v_column_local.sroa.34.0.insert.ext1403.2 = zext nneg i32 %540 to i64, !dbg !300
  %v_column_local.sroa.34.0.insert.shift1404.2 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1403.2, 48, !dbg !300
  %541 = and i32 %condval_10.sroa.0.0.2.1.2, 65535, !dbg !300
  %v_column_local.sroa.26.0.insert.ext1368.2 = zext nneg i32 %541 to i64, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1369.2 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1368.2, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1371.2 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1404.2, %v_column_local.sroa.26.0.insert.shift1369.2, !dbg !300
  %542 = shl i32 %condval_10.sroa.0.0.1.1.2, 16, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1334.2 = zext i32 %542 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1336.2 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1371.2, %v_column_local.sroa.18.0.insert.shift1334.2, !dbg !300
  %543 = and i32 %condval_10.sroa.0.0.11251.2, 65535, !dbg !300
  %v_column_local.sroa.0.0.insert.ext1302.2 = zext nneg i32 %543 to i64, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1304.2 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1336.2, %v_column_local.sroa.0.0.insert.ext1302.2, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1304.2, ptr addrspace(3) %add.ptr692.11261, align 8, !dbg !300
  %v_tile_local.sroa.0.2.extract.shift1425.2 = lshr i32 %condval_10.sroa.0.0.11251.2, 16, !dbg !301
  %v_tile_local.sroa.0.2.extract.trunc1426.2 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1425.2 to i64, !dbg !301
  %v_tile_local.sroa.14.10.extract.shift1435.2 = and i32 %condval_10.sroa.0.0.1.1.2, -65536, !dbg !300
  %v_tile_local.sroa.26.18.extract.shift1445.2 = lshr i32 %condval_10.sroa.0.0.2.1.2, 16, !dbg !301
  %v_tile_local.sroa.26.18.extract.trunc1446.2 = zext nneg i32 %v_tile_local.sroa.26.18.extract.shift1445.2 to i64, !dbg !301
  %v_tile_local.sroa.38.26.extract.shift1455.2 = lshr i32 %condval_10.sroa.0.0.3.1.2, 16, !dbg !301
  %v_tile_local.sroa.38.26.extract.trunc1456.2 = zext nneg i32 %v_tile_local.sroa.38.26.extract.shift1455.2 to i64, !dbg !301
  %v_column_local.sroa.34.0.insert.shift1409.2 = shl nuw i64 %v_tile_local.sroa.38.26.extract.trunc1456.2, 48, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1374.2 = shl nuw nsw i64 %v_tile_local.sroa.26.18.extract.trunc1446.2, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1376.2 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1409.2, %v_column_local.sroa.26.0.insert.shift1374.2, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1339.2 = zext i32 %v_tile_local.sroa.14.10.extract.shift1435.2 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1341.2 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1376.2, %v_column_local.sroa.18.0.insert.shift1339.2, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1308.2 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1341.2, %v_tile_local.sroa.0.2.extract.trunc1426.2, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1308.2, ptr addrspace(3) %add.ptr692.1.1, align 8, !dbg !300
  %544 = and i32 %condval_10.sroa.5.0.3.1.2, 65535, !dbg !300
  %v_column_local.sroa.34.0.insert.ext1413.2 = zext nneg i32 %544 to i64, !dbg !300
  %v_column_local.sroa.34.0.insert.shift1414.2 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1413.2, 48, !dbg !300
  %545 = and i32 %condval_10.sroa.5.0.2.1.2, 65535, !dbg !300
  %v_column_local.sroa.26.0.insert.ext1378.2 = zext nneg i32 %545 to i64, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1379.2 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1378.2, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1381.2 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1414.2, %v_column_local.sroa.26.0.insert.shift1379.2, !dbg !300
  %546 = shl i32 %condval_10.sroa.5.0.1.1.2, 16, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1344.2 = zext i32 %546 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1346.2 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1381.2, %v_column_local.sroa.18.0.insert.shift1344.2, !dbg !300
  %547 = and i32 %condval_10.sroa.5.0.11250.2, 65535, !dbg !300
  %v_column_local.sroa.0.0.insert.ext1310.2 = zext nneg i32 %547 to i64, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1312.2 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1346.2, %v_column_local.sroa.0.0.insert.ext1310.2, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1312.2, ptr addrspace(3) %add.ptr692.2.1, align 8, !dbg !300
  %v_tile_local.sroa.8.6.extract.shift1430.2 = lshr i32 %condval_10.sroa.5.0.11250.2, 16, !dbg !301
  %v_tile_local.sroa.8.6.extract.trunc1431.2 = zext nneg i32 %v_tile_local.sroa.8.6.extract.shift1430.2 to i64, !dbg !301
  %v_tile_local.sroa.20.14.extract.shift1440.2 = and i32 %condval_10.sroa.5.0.1.1.2, -65536, !dbg !300
  %v_tile_local.sroa.32.22.extract.shift1450.2 = lshr i32 %condval_10.sroa.5.0.2.1.2, 16, !dbg !301
  %v_tile_local.sroa.32.22.extract.trunc1451.2 = zext nneg i32 %v_tile_local.sroa.32.22.extract.shift1450.2 to i64, !dbg !301
  %v_tile_local.sroa.44.30.extract.shift1460.2 = lshr i32 %condval_10.sroa.5.0.3.1.2, 16, !dbg !301
  %v_tile_local.sroa.44.30.extract.trunc1461.2 = zext nneg i32 %v_tile_local.sroa.44.30.extract.shift1460.2 to i64, !dbg !301
  %v_column_local.sroa.34.0.insert.shift1419.2 = shl nuw i64 %v_tile_local.sroa.44.30.extract.trunc1461.2, 48, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1384.2 = shl nuw nsw i64 %v_tile_local.sroa.32.22.extract.trunc1451.2, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1386.2 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1419.2, %v_column_local.sroa.26.0.insert.shift1384.2, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1349.2 = zext i32 %v_tile_local.sroa.20.14.extract.shift1440.2 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1351.2 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1386.2, %v_column_local.sroa.18.0.insert.shift1349.2, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1316.2 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1351.2, %v_tile_local.sroa.8.6.extract.trunc1431.2, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1316.2, ptr addrspace(3) %add.ptr692.3.1, align 8, !dbg !300
  fence syncscope("warp") release, !dbg !302
  tail call void @llvm.mxc.barrier.warp(), !dbg !305
  fence syncscope("warp") acquire, !dbg !306
  %548 = bitcast <2 x i32> %probability_pair.sroa.14.1.2 to <4 x half>, !dbg !307
  %549 = load <4 x half>, ptr addrspace(3) %add.ptr726.11265, align 8, !dbg !308
  %550 = load <4 x half>, ptr addrspace(3) %add.ptr726.1.1, align 8, !dbg !308
  %551 = load <4 x half>, ptr addrspace(3) %add.ptr726.2.1, align 8, !dbg !308
  %552 = load <4 x half>, ptr addrspace(3) %add.ptr726.3.1, align 8, !dbg !308
  %553 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %549, <4 x half> %548, <4 x float> %output_acc.sroa.0.2.2), !dbg !309
  %554 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %550, <4 x half> %548, <4 x float> %output_acc.sroa.30.2.2), !dbg !309
  %555 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %551, <4 x half> %548, <4 x float> %output_acc.sroa.58.2.2), !dbg !309
  %556 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %552, <4 x half> %548, <4 x float> %output_acc.sroa.86.2.2), !dbg !309
  br label %if.end756.2, !dbg !310

if.end756.2:                                      ; preds = %if.end650.3.1.2, %if.end752.2, %lor.lhs.false.2
  %output_acc.sroa.86.4.2 = phi <4 x float> [ %output_acc.sroa.86.4.1, %lor.lhs.false.2 ], [ %output_acc.sroa.86.2.2, %if.end752.2 ], [ %556, %if.end650.3.1.2 ], !dbg !90
  %output_acc.sroa.58.4.2 = phi <4 x float> [ %output_acc.sroa.58.4.1, %lor.lhs.false.2 ], [ %output_acc.sroa.58.2.2, %if.end752.2 ], [ %555, %if.end650.3.1.2 ], !dbg !90
  %output_acc.sroa.30.4.2 = phi <4 x float> [ %output_acc.sroa.30.4.1, %lor.lhs.false.2 ], [ %output_acc.sroa.30.2.2, %if.end752.2 ], [ %554, %if.end650.3.1.2 ], !dbg !90
  %output_acc.sroa.0.4.2 = phi <4 x float> [ %output_acc.sroa.0.4.1, %lor.lhs.false.2 ], [ %output_acc.sroa.0.2.2, %if.end752.2 ], [ %553, %if.end650.3.1.2 ], !dbg !90
  %normalizer.sroa.0.4.2 = phi float [ %normalizer.sroa.0.4.1, %lor.lhs.false.2 ], [ %normalizer.sroa.0.3.1.2, %if.end752.2 ], [ %normalizer.sroa.0.3.1.2, %if.end650.3.1.2 ], !dbg !311
  %denominator.sroa.0.2.2 = phi float [ %denominator.sroa.0.2.1, %lor.lhs.false.2 ], [ %add553.2, %if.end752.2 ], [ %add553.2, %if.end650.3.1.2 ], !dbg !90
  %557 = or disjoint i64 %28, 6, !dbg !312
  %arrayidx118.3 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %557, !dbg !69
  %558 = load i32, ptr addrspace(1) %arrayidx118.3, align 4, !dbg !69, !tbaa !30
  %mul119.3 = shl nsw i32 %558, 4, !dbg !70
  %559 = or disjoint i64 %28, 7, !dbg !71
  %arrayidx129.3 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %559, !dbg !72
  %560 = load i32, ptr addrspace(1) %arrayidx129.3, align 4, !dbg !72, !tbaa !30
  %mul130.3 = shl nsw i32 %560, 4, !dbg !73
  %cmp131.3 = icmp slt i32 %558, 0, !dbg !74
  %cmp133.not.3 = icmp sgt i32 %mul119.3, %1
  %or.cond1107.3 = select i1 %cmp131.3, i1 true, i1 %cmp133.not.3, !dbg !75
  br i1 %or.cond1107.3, label %lor.lhs.false.3, label %if.then.3, !dbg !75

lor.lhs.false.3:                                  ; preds = %if.end756.2
  %cmp134.3 = icmp slt i32 %560, 0, !dbg !76
  %cmp137.not.3 = icmp sgt i32 %mul130.3, %1
  %or.cond1108.3 = select i1 %cmp134.3, i1 true, i1 %cmp137.not.3, !dbg !77
  br i1 %or.cond1108.3, label %if.end756.3, label %if.then.3, !dbg !77

if.then.3:                                        ; preds = %lor.lhs.false.3, %if.end756.2
  %or.cond1109.3 = icmp ugt i32 %mul119.3, %1, !dbg !78
  br i1 %or.cond1109.3, label %if.end517.3, label %if.then175.3, !dbg !78

if.then175.3:                                     ; preds = %if.then.3
  fence syncscope("warp") release, !dbg !79
  tail call void @llvm.mxc.barrier.warp(), !dbg !82
  fence syncscope("warp") acquire, !dbg !83
  %add186.3 = add nsw i32 %mul119.3, %shr185
  %shr187.3 = ashr i32 %add186.3, 3
  %condval_5.0.3 = sext i32 %mul119.3 to i64
  %.idx.3 = shl nsw i64 %condval_5.0.3, 7
  %gep.3 = getelementptr i8, ptr addrspace(4) %invariant.gep1142, i64 %.idx.3, !dbg !84
  %561 = icmp slt i32 %shr187.3, 128, !dbg !85
  br i1 %561, label %if.then190.3, label %if.end240.3, !dbg !86

if.then190.3:                                     ; preds = %if.then175.3
  %562 = getelementptr i8, ptr addrspace(4) %gep.3, i64 %.idx1162, !dbg !87
  %condval_2.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %562, align 16, !dbg !88, !tbaa !30
  %condval_2.sroa.5.0.add.ptr216.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %562, i64 4, !dbg !88
  %condval_2.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr216.sroa_idx.3, align 4, !dbg !88, !tbaa !30
  %condval_2.sroa.6.0.add.ptr216.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %562, i64 8, !dbg !88
  %condval_2.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr216.sroa_idx.3, align 8, !dbg !88, !tbaa !30
  %condval_2.sroa.7.0.add.ptr216.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %562, i64 12, !dbg !88
  %condval_2.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr216.sroa_idx.3, align 4, !dbg !88, !tbaa !30
  br label %if.end240.3, !dbg !89

if.end240.3:                                      ; preds = %if.then190.3, %if.then175.3
  %condval_2.sroa.0.0.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3, %if.then190.3 ], [ 0, %if.then175.3 ], !dbg !90
  %condval_2.sroa.5.0.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3, %if.then190.3 ], [ 0, %if.then175.3 ], !dbg !90
  %condval_2.sroa.6.0.3 = phi i32 [ %condval_2.sroa.6.0.copyload.3, %if.then190.3 ], [ 0, %if.then175.3 ], !dbg !90
  %condval_2.sroa.7.0.3 = phi i32 [ %condval_2.sroa.7.0.copyload.3, %if.then190.3 ], [ 0, %if.then175.3 ], !dbg !90
  store i32 %condval_2.sroa.0.0.3, ptr addrspace(3) %add.ptr45, align 16, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.5.0.3, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr275.sroa_idx, align 4, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.6.0.3, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr275.sroa_idx, align 8, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.7.0.3, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr275.sroa_idx, align 4, !dbg !91, !tbaa !30
  %563 = icmp slt i32 %shr187.3, 127, !dbg !85
  br i1 %563, label %if.then190.1.3, label %if.end240.1.3, !dbg !86

if.then190.1.3:                                   ; preds = %if.end240.3
  %564 = getelementptr i8, ptr addrspace(4) %gep.3, i64 %.idx1162.1, !dbg !87
  %gep1129.1.3 = getelementptr i8, ptr addrspace(4) %564, i64 1024, !dbg !87
  %condval_2.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %gep1129.1.3, align 16, !dbg !88, !tbaa !30
  %condval_2.sroa.5.0.add.ptr216.sroa_idx.1.3 = getelementptr i8, ptr addrspace(4) %564, i64 1028, !dbg !88
  %condval_2.sroa.5.0.copyload.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr216.sroa_idx.1.3, align 4, !dbg !88, !tbaa !30
  %condval_2.sroa.6.0.add.ptr216.sroa_idx.1.3 = getelementptr i8, ptr addrspace(4) %564, i64 1032, !dbg !88
  %condval_2.sroa.6.0.copyload.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr216.sroa_idx.1.3, align 8, !dbg !88, !tbaa !30
  %condval_2.sroa.7.0.add.ptr216.sroa_idx.1.3 = getelementptr i8, ptr addrspace(4) %564, i64 1036, !dbg !88
  %condval_2.sroa.7.0.copyload.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr216.sroa_idx.1.3, align 4, !dbg !88, !tbaa !30
  br label %if.end240.1.3, !dbg !89

if.end240.1.3:                                    ; preds = %if.then190.1.3, %if.end240.3
  %condval_2.sroa.0.0.1.3 = phi i32 [ %condval_2.sroa.0.0.copyload.1.3, %if.then190.1.3 ], [ 0, %if.end240.3 ], !dbg !90
  %condval_2.sroa.5.0.1.3 = phi i32 [ %condval_2.sroa.5.0.copyload.1.3, %if.then190.1.3 ], [ 0, %if.end240.3 ], !dbg !90
  %condval_2.sroa.6.0.1.3 = phi i32 [ %condval_2.sroa.6.0.copyload.1.3, %if.then190.1.3 ], [ 0, %if.end240.3 ], !dbg !90
  %condval_2.sroa.7.0.1.3 = phi i32 [ %condval_2.sroa.7.0.copyload.1.3, %if.then190.1.3 ], [ 0, %if.end240.3 ], !dbg !90
  store i32 %condval_2.sroa.0.0.1.3, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.5.0.1.3, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr275.sroa_idx.1, align 4, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.6.0.1.3, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr275.sroa_idx.1, align 8, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.7.0.1.3, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr275.sroa_idx.1, align 4, !dbg !91, !tbaa !30
  fence syncscope("warp") release, !dbg !92
  tail call void @llvm.mxc.barrier.warp(), !dbg !95
  fence syncscope("warp") acquire, !dbg !96
  %k_local.sroa.0.0.copyload.31959 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !97
  %565 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.31959, <4 x half> %12, <4 x float> zeroinitializer), !dbg !98
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !97
  %566 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %16, <4 x float> %565), !dbg !98
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !97
  %567 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %18, <4 x float> %566), !dbg !98
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !97
  %568 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %22, <4 x float> %567), !dbg !98
  %add346.3 = add nsw i32 %mul119.3, %mul345
  %cmp349.not.31960 = icmp sgt i32 %add346.3, %1, !dbg !99
  %scores.sroa.0.0.vec.extract1470.3 = extractelement <4 x float> %568, i64 0
  %spec.select.3 = select i1 %cmp349.not.31960, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1470.3, !dbg !100
  %cmp349.not.1.not.3 = icmp slt i32 %add346.3, %1, !dbg !99
  %scores.sroa.0.4.vec.extract1507.3 = extractelement <4 x float> %568, i64 1, !dbg !100
  %condval_6.0.1.3 = select i1 %cmp349.not.1.not.3, float %scores.sroa.0.4.vec.extract1507.3, float 0xFFF0000000000000, !dbg !100
  %add347.2.3 = or disjoint i32 %add346.3, 2, !dbg !101
  %cmp349.not.2.3 = icmp sgt i32 %add347.2.3, %1, !dbg !99
  %scores.sroa.0.8.vec.extract1540.3 = extractelement <4 x float> %568, i64 2, !dbg !100
  %condval_6.0.2.3 = select i1 %cmp349.not.2.3, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1540.3, !dbg !100
  %add347.3.3 = or disjoint i32 %add346.3, 3, !dbg !101
  %cmp349.not.3.3 = icmp sgt i32 %add347.3.3, %1, !dbg !99
  %scores.sroa.0.12.vec.extract1573.3 = extractelement <4 x float> %568, i64 3, !dbg !100
  %condval_6.0.3.3 = select i1 %cmp349.not.3.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1573.3, !dbg !100
  %569 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select.3, float 0xFFF0000000000000), !dbg !102
  %570 = tail call contract noundef float @llvm.maxnum.f32(float %569, float %condval_6.0.1.3), !dbg !102
  %571 = tail call contract noundef float @llvm.maxnum.f32(float %570, float %condval_6.0.2.3), !dbg !102
  %572 = tail call contract noundef float @llvm.maxnum.f32(float %571, float %condval_6.0.3.3), !dbg !102
  %573 = bitcast float %572 to i32, !dbg !106
  %574 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !115
  %575 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %574) #11, !dbg !120
  %xor.i.i.i.3 = xor i32 %575, 32, !dbg !121
  %576 = and i32 %575, -64, !dbg !122
  %and.i.i.i.3 = add nsw i32 %576, 64, !dbg !122
  %cmp.not.i.i.i.3 = icmp slt i32 %xor.i.i.i.3, %and.i.i.i.3, !dbg !123
  %cond.i.i.i.3 = select i1 %cmp.not.i.i.i.3, i32 %xor.i.i.i.3, i32 %575, !dbg !124
  %shl.i.i.i.3 = shl i32 %cond.i.i.i.3, 2, !dbg !125
  %577 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.3, i32 %573), !dbg !126
  %578 = bitcast i32 %577 to float, !dbg !127
  %579 = tail call contract noundef float @llvm.maxnum.f32(float %572, float %578), !dbg !128
  %580 = bitcast float %579 to i32, !dbg !136
  %581 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !141
  %582 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %581) #11, !dbg !144
  %xor.i.i.i.i.3 = xor i32 %582, 16, !dbg !145
  %583 = and i32 %582, -64, !dbg !146
  %and.i.i.i.i.3 = add nsw i32 %583, 64, !dbg !146
  %cmp.not.i.i.i.i.3 = icmp slt i32 %xor.i.i.i.i.3, %and.i.i.i.i.3, !dbg !147
  %cond.i.i.i.i.3 = select i1 %cmp.not.i.i.i.i.3, i32 %xor.i.i.i.i.3, i32 %582, !dbg !148
  %shl.i.i.i.i.3 = shl i32 %cond.i.i.i.i.3, 2, !dbg !149
  %584 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.3, i32 %580), !dbg !150
  %585 = bitcast i32 %584 to float, !dbg !151
  %586 = tail call contract noundef float @llvm.maxnum.f32(float %579, float %585), !dbg !152
  %sub.3 = fsub contract float %586, %normalizer.sroa.0.4.2, !dbg !156
  %mul385.3 = fmul contract float %sub.3, 0x3FC7154760000000, !dbg !157
  %cmp386.3 = fcmp contract ogt float %mul385.3, 7.000000e+00, !dbg !158
  %sub390.3 = fsub contract float %normalizer.sroa.0.4.2, %586
  %mul391.3 = fmul contract float %sub390.3, 0x3FC7154760000000
  %cmp.i.i.3 = fcmp contract olt float %mul391.3, -1.260000e+02
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00
  %cond.i.i.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00
  %add.i.i.3 = fadd contract float %mul391.3, %cond.i.i.3
  %587 = tail call contract float @llvm.exp2.f32(float %add.i.i.3)
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %587
  %rescale.sroa.0.0.3 = select i1 %cmp386.3, float %mul.i.i.3, float 1.000000e+00, !dbg !159
  %cmp422.3 = fcmp contract une float %rescale.sroa.0.0.3, 1.000000e+00
  %normalizer.sroa.0.2.3 = select i1 %cmp386.3, float %586, float %normalizer.sroa.0.4.2, !dbg !159
  %sub406.3.3 = fsub contract float %condval_6.0.3.3, %normalizer.sroa.0.2.3, !dbg !160
  %mul407.3.3 = fmul contract float %sub406.3.3, 0x3FC7154760000000, !dbg !161
  %add408.3.3 = fadd contract float %mul407.3.3, 8.000000e+00, !dbg !162
  %cmp.i.i1056.3.3 = fcmp contract olt float %add408.3.3, -1.260000e+02, !dbg !163
  %cond2.i.i1059.3.3 = select contract i1 %cmp.i.i1056.3.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %cond.i.i1057.3.3 = select contract i1 %cmp.i.i1056.3.3, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.3.3 = fadd contract float %add408.3.3, %cond.i.i1057.3.3, !dbg !163
  %588 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.3.3), !dbg !163
  %mul.i.i1060.3.3 = fmul contract float %cond2.i.i1059.3.3, %588, !dbg !163
  %sub406.31961 = fsub contract float %spec.select.3, %normalizer.sroa.0.2.3, !dbg !160
  %mul407.31962 = fmul contract float %sub406.31961, 0x3FC7154760000000, !dbg !161
  %add408.31963 = fadd contract float %mul407.31962, 8.000000e+00, !dbg !162
  %cmp.i.i1056.31964 = fcmp contract olt float %add408.31963, -1.260000e+02, !dbg !163
  %cond2.i.i1059.31965 = select contract i1 %cmp.i.i1056.31964, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %cond.i.i1057.31966 = select contract i1 %cmp.i.i1056.31964, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.31967 = fadd contract float %add408.31963, %cond.i.i1057.31966, !dbg !163
  %589 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.31967), !dbg !163
  %mul.i.i1060.31968 = fmul contract float %cond2.i.i1059.31965, %589, !dbg !163
  %sub406.1.3 = fsub contract float %condval_6.0.1.3, %normalizer.sroa.0.2.3, !dbg !160
  %mul407.1.3 = fmul contract float %sub406.1.3, 0x3FC7154760000000, !dbg !161
  %add408.1.3 = fadd contract float %mul407.1.3, 8.000000e+00, !dbg !162
  %cmp.i.i1056.1.3 = fcmp contract olt float %add408.1.3, -1.260000e+02, !dbg !163
  %cond2.i.i1059.1.3 = select contract i1 %cmp.i.i1056.1.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %cond.i.i1057.1.3 = select contract i1 %cmp.i.i1056.1.3, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.1.3 = fadd contract float %add408.1.3, %cond.i.i1057.1.3, !dbg !163
  %590 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.1.3), !dbg !163
  %mul.i.i1060.1.3 = fmul contract float %cond2.i.i1059.1.3, %590, !dbg !163
  %sub406.2.3 = fsub contract float %condval_6.0.2.3, %normalizer.sroa.0.2.3, !dbg !160
  %mul407.2.3 = fmul contract float %sub406.2.3, 0x3FC7154760000000, !dbg !161
  %add408.2.3 = fadd contract float %mul407.2.3, 8.000000e+00, !dbg !162
  %cmp.i.i1056.2.3 = fcmp contract olt float %add408.2.3, -1.260000e+02, !dbg !163
  %cond2.i.i1059.2.3 = select contract i1 %cmp.i.i1056.2.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %cond.i.i1057.2.3 = select contract i1 %cmp.i.i1056.2.3, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.2.3 = fadd contract float %add408.2.3, %cond.i.i1057.2.3, !dbg !163
  %591 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.2.3), !dbg !163
  %mul.i.i1060.2.3 = fmul contract float %cond2.i.i1059.2.3, %591, !dbg !163
  %mul486.3 = fmul contract float %rescale.sroa.0.0.3, 0.000000e+00, !dbg !166
  %pair_sum_local.sroa.0.1.3 = select i1 %cmp422.3, float %mul486.3, float 0.000000e+00, !dbg !166
  %add496.31969 = fadd contract float %pair_sum_local.sroa.0.1.3, %mul.i.i1060.31968, !dbg !167
  %add496.1.3 = fadd contract float %add496.31969, %mul.i.i1060.1.3, !dbg !167
  %add496.2.3 = fadd contract float %add496.1.3, %mul.i.i1060.2.3, !dbg !167
  %add496.3.3 = fadd contract float %add496.2.3, %mul.i.i1060.3.3, !dbg !167
  %592 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !168, !noalias !176
  %593 = fptrunc float %mul.i.i1060.31968 to half, !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %592), !dbg !168, !noalias !176
  %594 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %595 = fptrunc float %mul.i.i1060.1.3 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %594), !dbg !181, !noalias !176
  %596 = bitcast half %593 to i16, !dbg !183
  %597 = bitcast half %595 to i16, !dbg !186
  %598 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !187, !noalias !191
  %599 = fptrunc float %mul.i.i1060.2.3 to half, !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %598), !dbg !187, !noalias !191
  %600 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !196
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !196, !noalias !191
  %601 = fptrunc float %mul.i.i1060.3.3 to half, !dbg !196
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %600), !dbg !196, !noalias !191
  %602 = bitcast half %599 to i16, !dbg !198
  %603 = bitcast half %601 to i16, !dbg !200
  %__4.sroa.6.0.insert.ext.3 = zext i16 %603 to i64, !dbg !201
  %__4.sroa.6.0.insert.shift.3 = shl nuw i64 %__4.sroa.6.0.insert.ext.3, 48, !dbg !201
  %__4.sroa.5.0.insert.ext.3 = zext i16 %602 to i64, !dbg !201
  %__4.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__4.sroa.5.0.insert.ext.3, 32, !dbg !201
  %__4.sroa.5.0.insert.insert.3 = or disjoint i64 %__4.sroa.6.0.insert.shift.3, %__4.sroa.5.0.insert.shift.3, !dbg !201
  %__4.sroa.4.0.insert.ext.3 = zext i16 %597 to i64, !dbg !201
  %__4.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__4.sroa.4.0.insert.ext.3, 16, !dbg !201
  %__4.sroa.4.0.insert.insert.3 = or disjoint i64 %__4.sroa.5.0.insert.insert.3, %__4.sroa.4.0.insert.shift.3, !dbg !201
  %__4.sroa.0.0.insert.ext.3 = zext i16 %596 to i64, !dbg !201
  %__4.sroa.0.0.insert.insert.3 = or disjoint i64 %__4.sroa.4.0.insert.insert.3, %__4.sroa.0.0.insert.ext.3, !dbg !201
  %604 = bitcast i64 %__4.sroa.0.0.insert.insert.3 to <2 x i32>, !dbg !201
  br label %if.end517.3, !dbg !202

if.end517.3:                                      ; preds = %if.end240.1.3, %if.then.3
  %probability_pair.sroa.0.4.3 = phi <2 x i32> [ zeroinitializer, %if.then.3 ], [ %604, %if.end240.1.3 ], !dbg !90
  %pair_sum_local.sroa.0.3.3 = phi float [ 0.000000e+00, %if.then.3 ], [ %add496.3.3, %if.end240.1.3 ], !dbg !90
  %pair_rescale.sroa.0.1.3 = phi float [ 1.000000e+00, %if.then.3 ], [ %rescale.sroa.0.0.3, %if.end240.1.3 ], !dbg !90
  %normalizer.sroa.0.3.3 = phi float [ %normalizer.sroa.0.4.2, %if.then.3 ], [ %normalizer.sroa.0.2.3, %if.end240.1.3 ], !dbg !90
  %or.cond1109.1.3 = icmp ugt i32 %mul130.3, %1, !dbg !78
  br i1 %or.cond1109.1.3, label %if.end517.1.3, label %if.then175.1.3, !dbg !78

if.then175.1.3:                                   ; preds = %if.end517.3
  fence syncscope("warp") release, !dbg !79
  tail call void @llvm.mxc.barrier.warp(), !dbg !82
  fence syncscope("warp") acquire, !dbg !83
  %add186.1.3 = add nsw i32 %mul130.3, %shr185
  %shr187.1.3 = ashr i32 %add186.1.3, 3
  %condval_5.0.1.3 = sext i32 %mul130.3 to i64
  %.idx.1.3 = shl nsw i64 %condval_5.0.1.3, 7
  %gep.1.3 = getelementptr i8, ptr addrspace(4) %invariant.gep1142, i64 %.idx.1.3, !dbg !84
  %605 = icmp slt i32 %shr187.1.3, 128, !dbg !85
  br i1 %605, label %if.then190.11186.3, label %if.end240.11195.3, !dbg !86

if.then190.11186.3:                               ; preds = %if.then175.1.3
  %606 = getelementptr i8, ptr addrspace(4) %gep.1.3, i64 %.idx1162.11178, !dbg !87
  %condval_2.sroa.0.0.copyload.11179.3 = load i32, ptr addrspace(4) %606, align 16, !dbg !88, !tbaa !30
  %condval_2.sroa.5.0.add.ptr216.sroa_idx.11180.3 = getelementptr inbounds i8, ptr addrspace(4) %606, i64 4, !dbg !88
  %condval_2.sroa.5.0.copyload.11181.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr216.sroa_idx.11180.3, align 4, !dbg !88, !tbaa !30
  %condval_2.sroa.6.0.add.ptr216.sroa_idx.11182.3 = getelementptr inbounds i8, ptr addrspace(4) %606, i64 8, !dbg !88
  %condval_2.sroa.6.0.copyload.11183.3 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr216.sroa_idx.11182.3, align 8, !dbg !88, !tbaa !30
  %condval_2.sroa.7.0.add.ptr216.sroa_idx.11184.3 = getelementptr inbounds i8, ptr addrspace(4) %606, i64 12, !dbg !88
  %condval_2.sroa.7.0.copyload.11185.3 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr216.sroa_idx.11184.3, align 4, !dbg !88, !tbaa !30
  br label %if.end240.11195.3, !dbg !89

if.end240.11195.3:                                ; preds = %if.then190.11186.3, %if.then175.1.3
  %condval_2.sroa.0.0.11187.3 = phi i32 [ %condval_2.sroa.0.0.copyload.11179.3, %if.then190.11186.3 ], [ 0, %if.then175.1.3 ], !dbg !90
  %condval_2.sroa.5.0.11188.3 = phi i32 [ %condval_2.sroa.5.0.copyload.11181.3, %if.then190.11186.3 ], [ 0, %if.then175.1.3 ], !dbg !90
  %condval_2.sroa.6.0.11189.3 = phi i32 [ %condval_2.sroa.6.0.copyload.11183.3, %if.then190.11186.3 ], [ 0, %if.then175.1.3 ], !dbg !90
  %condval_2.sroa.7.0.11190.3 = phi i32 [ %condval_2.sroa.7.0.copyload.11185.3, %if.then190.11186.3 ], [ 0, %if.then175.1.3 ], !dbg !90
  store i32 %condval_2.sroa.0.0.11187.3, ptr addrspace(3) %add.ptr45, align 16, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.5.0.11188.3, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr275.sroa_idx.11192, align 4, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.6.0.11189.3, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr275.sroa_idx.11193, align 8, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.7.0.11190.3, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr275.sroa_idx.11194, align 4, !dbg !91, !tbaa !30
  %607 = icmp slt i32 %shr187.1.3, 127, !dbg !85
  br i1 %607, label %if.then190.1.1.3, label %if.end240.1.1.3, !dbg !86

if.then190.1.1.3:                                 ; preds = %if.end240.11195.3
  %608 = getelementptr i8, ptr addrspace(4) %gep.1.3, i64 %.idx1162.1.1, !dbg !87
  %gep1129.1.1.3 = getelementptr i8, ptr addrspace(4) %608, i64 1024, !dbg !87
  %condval_2.sroa.0.0.copyload.1.1.3 = load i32, ptr addrspace(4) %gep1129.1.1.3, align 16, !dbg !88, !tbaa !30
  %condval_2.sroa.5.0.add.ptr216.sroa_idx.1.1.3 = getelementptr i8, ptr addrspace(4) %608, i64 1028, !dbg !88
  %condval_2.sroa.5.0.copyload.1.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr216.sroa_idx.1.1.3, align 4, !dbg !88, !tbaa !30
  %condval_2.sroa.6.0.add.ptr216.sroa_idx.1.1.3 = getelementptr i8, ptr addrspace(4) %608, i64 1032, !dbg !88
  %condval_2.sroa.6.0.copyload.1.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr216.sroa_idx.1.1.3, align 8, !dbg !88, !tbaa !30
  %condval_2.sroa.7.0.add.ptr216.sroa_idx.1.1.3 = getelementptr i8, ptr addrspace(4) %608, i64 1036, !dbg !88
  %condval_2.sroa.7.0.copyload.1.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr216.sroa_idx.1.1.3, align 4, !dbg !88, !tbaa !30
  br label %if.end240.1.1.3, !dbg !89

if.end240.1.1.3:                                  ; preds = %if.then190.1.1.3, %if.end240.11195.3
  %condval_2.sroa.0.0.1.1.3 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1.3, %if.then190.1.1.3 ], [ 0, %if.end240.11195.3 ], !dbg !90
  %condval_2.sroa.5.0.1.1.3 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1.3, %if.then190.1.1.3 ], [ 0, %if.end240.11195.3 ], !dbg !90
  %condval_2.sroa.6.0.1.1.3 = phi i32 [ %condval_2.sroa.6.0.copyload.1.1.3, %if.then190.1.1.3 ], [ 0, %if.end240.11195.3 ], !dbg !90
  %condval_2.sroa.7.0.1.1.3 = phi i32 [ %condval_2.sroa.7.0.copyload.1.1.3, %if.then190.1.1.3 ], [ 0, %if.end240.11195.3 ], !dbg !90
  store i32 %condval_2.sroa.0.0.1.1.3, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.5.0.1.1.3, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr275.sroa_idx.1.1, align 4, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.6.0.1.1.3, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr275.sroa_idx.1.1, align 8, !dbg !91, !tbaa !30
  store i32 %condval_2.sroa.7.0.1.1.3, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr275.sroa_idx.1.1, align 4, !dbg !91, !tbaa !30
  fence syncscope("warp") release, !dbg !92
  tail call void @llvm.mxc.barrier.warp(), !dbg !95
  fence syncscope("warp") acquire, !dbg !96
  %k_local.sroa.0.0.copyload.11203.3 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !97
  %609 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11203.3, <4 x half> %12, <4 x float> zeroinitializer), !dbg !98
  %k_local.sroa.0.0.copyload.1.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !97
  %610 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1.3, <4 x half> %16, <4 x float> %609), !dbg !98
  %k_local.sroa.0.0.copyload.2.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !97
  %611 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1.3, <4 x half> %18, <4 x float> %610), !dbg !98
  %k_local.sroa.0.0.copyload.3.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !97
  %612 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1.3, <4 x half> %22, <4 x float> %611), !dbg !98
  %add346.1.3 = add nsw i32 %mul130.3, %mul345
  %cmp349.not.11204.3 = icmp sgt i32 %add346.1.3, %1, !dbg !99
  %scores.sroa.0.0.vec.extract1484.3 = extractelement <4 x float> %612, i64 0
  %spec.select1775.3 = select i1 %cmp349.not.11204.3, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1484.3, !dbg !100
  %cmp349.not.1.1.not.3 = icmp slt i32 %add346.1.3, %1, !dbg !99
  %scores.sroa.0.4.vec.extract1519.3 = extractelement <4 x float> %612, i64 1, !dbg !100
  %condval_6.0.1.1.3 = select i1 %cmp349.not.1.1.not.3, float %scores.sroa.0.4.vec.extract1519.3, float 0xFFF0000000000000, !dbg !100
  %add347.2.1.3 = or disjoint i32 %add346.1.3, 2, !dbg !101
  %cmp349.not.2.1.3 = icmp sgt i32 %add347.2.1.3, %1, !dbg !99
  %scores.sroa.0.8.vec.extract1552.3 = extractelement <4 x float> %612, i64 2, !dbg !100
  %condval_6.0.2.1.3 = select i1 %cmp349.not.2.1.3, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1552.3, !dbg !100
  %add347.3.1.3 = or disjoint i32 %add346.1.3, 3, !dbg !101
  %cmp349.not.3.1.3 = icmp sgt i32 %add347.3.1.3, %1, !dbg !99
  %scores.sroa.0.12.vec.extract1585.3 = extractelement <4 x float> %612, i64 3, !dbg !100
  %condval_6.0.3.1.3 = select i1 %cmp349.not.3.1.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1585.3, !dbg !100
  %613 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select1775.3, float 0xFFF0000000000000), !dbg !102
  %614 = tail call contract noundef float @llvm.maxnum.f32(float %613, float %condval_6.0.1.1.3), !dbg !102
  %615 = tail call contract noundef float @llvm.maxnum.f32(float %614, float %condval_6.0.2.1.3), !dbg !102
  %616 = tail call contract noundef float @llvm.maxnum.f32(float %615, float %condval_6.0.3.1.3), !dbg !102
  %617 = bitcast float %616 to i32, !dbg !106
  %618 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !115
  %619 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %618) #11, !dbg !120
  %xor.i.i.i.1.3 = xor i32 %619, 32, !dbg !121
  %620 = and i32 %619, -64, !dbg !122
  %and.i.i.i.1.3 = add nsw i32 %620, 64, !dbg !122
  %cmp.not.i.i.i.1.3 = icmp slt i32 %xor.i.i.i.1.3, %and.i.i.i.1.3, !dbg !123
  %cond.i.i.i.1.3 = select i1 %cmp.not.i.i.i.1.3, i32 %xor.i.i.i.1.3, i32 %619, !dbg !124
  %shl.i.i.i.1.3 = shl i32 %cond.i.i.i.1.3, 2, !dbg !125
  %621 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.1.3, i32 %617), !dbg !126
  %622 = bitcast i32 %621 to float, !dbg !127
  %623 = tail call contract noundef float @llvm.maxnum.f32(float %616, float %622), !dbg !128
  %624 = bitcast float %623 to i32, !dbg !136
  %625 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !141
  %626 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %625) #11, !dbg !144
  %xor.i.i.i.i.1.3 = xor i32 %626, 16, !dbg !145
  %627 = and i32 %626, -64, !dbg !146
  %and.i.i.i.i.1.3 = add nsw i32 %627, 64, !dbg !146
  %cmp.not.i.i.i.i.1.3 = icmp slt i32 %xor.i.i.i.i.1.3, %and.i.i.i.i.1.3, !dbg !147
  %cond.i.i.i.i.1.3 = select i1 %cmp.not.i.i.i.i.1.3, i32 %xor.i.i.i.i.1.3, i32 %626, !dbg !148
  %shl.i.i.i.i.1.3 = shl i32 %cond.i.i.i.i.1.3, 2, !dbg !149
  %628 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.1.3, i32 %624), !dbg !150
  %629 = bitcast i32 %628 to float, !dbg !151
  %630 = tail call contract noundef float @llvm.maxnum.f32(float %623, float %629), !dbg !152
  %sub.1.3 = fsub contract float %630, %normalizer.sroa.0.3.3, !dbg !156
  %mul385.1.3 = fmul contract float %sub.1.3, 0x3FC7154760000000, !dbg !157
  %cmp386.1.3 = fcmp contract ogt float %mul385.1.3, 7.000000e+00, !dbg !158
  %sub390.1.3 = fsub contract float %normalizer.sroa.0.3.3, %630
  %mul391.1.3 = fmul contract float %sub390.1.3, 0x3FC7154760000000
  %cmp.i.i.1.3 = fcmp contract olt float %mul391.1.3, -1.260000e+02
  %cond.i.i.1.3 = select contract i1 %cmp.i.i.1.3, float 6.400000e+01, float 0.000000e+00
  %add.i.i.1.3 = fadd contract float %mul391.1.3, %cond.i.i.1.3
  %631 = tail call contract float @llvm.exp2.f32(float %add.i.i.1.3)
  %cond2.i.i.1.3 = select contract i1 %cmp.i.i.1.3, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i.1.3 = fmul contract float %cond2.i.i.1.3, %631
  %normalizer.sroa.0.2.1.3 = select i1 %cmp386.1.3, float %630, float %normalizer.sroa.0.3.3, !dbg !159
  %sub406.11208.3 = fsub contract float %spec.select1775.3, %normalizer.sroa.0.2.1.3, !dbg !160
  %mul407.11209.3 = fmul contract float %sub406.11208.3, 0x3FC7154760000000, !dbg !161
  %add408.11210.3 = fadd contract float %mul407.11209.3, 8.000000e+00, !dbg !162
  %cmp.i.i1056.11211.3 = fcmp contract olt float %add408.11210.3, -1.260000e+02, !dbg !163
  %cond.i.i1057.11212.3 = select contract i1 %cmp.i.i1056.11211.3, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.11213.3 = fadd contract float %add408.11210.3, %cond.i.i1057.11212.3, !dbg !163
  %632 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.11213.3), !dbg !163
  %cond2.i.i1059.11214.3 = select contract i1 %cmp.i.i1056.11211.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %mul.i.i1060.11215.3 = fmul contract float %cond2.i.i1059.11214.3, %632, !dbg !163
  %sub406.1.1.3 = fsub contract float %condval_6.0.1.1.3, %normalizer.sroa.0.2.1.3, !dbg !160
  %mul407.1.1.3 = fmul contract float %sub406.1.1.3, 0x3FC7154760000000, !dbg !161
  %add408.1.1.3 = fadd contract float %mul407.1.1.3, 8.000000e+00, !dbg !162
  %cmp.i.i1056.1.1.3 = fcmp contract olt float %add408.1.1.3, -1.260000e+02, !dbg !163
  %cond.i.i1057.1.1.3 = select contract i1 %cmp.i.i1056.1.1.3, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.1.1.3 = fadd contract float %add408.1.1.3, %cond.i.i1057.1.1.3, !dbg !163
  %633 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.1.1.3), !dbg !163
  %cond2.i.i1059.1.1.3 = select contract i1 %cmp.i.i1056.1.1.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %mul.i.i1060.1.1.3 = fmul contract float %cond2.i.i1059.1.1.3, %633, !dbg !163
  %sub406.2.1.3 = fsub contract float %condval_6.0.2.1.3, %normalizer.sroa.0.2.1.3, !dbg !160
  %mul407.2.1.3 = fmul contract float %sub406.2.1.3, 0x3FC7154760000000, !dbg !161
  %add408.2.1.3 = fadd contract float %mul407.2.1.3, 8.000000e+00, !dbg !162
  %cmp.i.i1056.2.1.3 = fcmp contract olt float %add408.2.1.3, -1.260000e+02, !dbg !163
  %cond.i.i1057.2.1.3 = select contract i1 %cmp.i.i1056.2.1.3, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.2.1.3 = fadd contract float %add408.2.1.3, %cond.i.i1057.2.1.3, !dbg !163
  %634 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.2.1.3), !dbg !163
  %cond2.i.i1059.2.1.3 = select contract i1 %cmp.i.i1056.2.1.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %mul.i.i1060.2.1.3 = fmul contract float %cond2.i.i1059.2.1.3, %634, !dbg !163
  %sub406.3.1.3 = fsub contract float %condval_6.0.3.1.3, %normalizer.sroa.0.2.1.3, !dbg !160
  %mul407.3.1.3 = fmul contract float %sub406.3.1.3, 0x3FC7154760000000, !dbg !161
  %add408.3.1.3 = fadd contract float %mul407.3.1.3, 8.000000e+00, !dbg !162
  %cmp.i.i1056.3.1.3 = fcmp contract olt float %add408.3.1.3, -1.260000e+02, !dbg !163
  %cond.i.i1057.3.1.3 = select contract i1 %cmp.i.i1056.3.1.3, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i1058.3.1.3 = fadd contract float %add408.3.1.3, %cond.i.i1057.3.1.3, !dbg !163
  %635 = tail call contract float @llvm.exp2.f32(float %add.i.i1058.3.1.3), !dbg !163
  %cond2.i.i1059.3.1.3 = select contract i1 %cmp.i.i1056.3.1.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %mul.i.i1060.3.1.3 = fmul contract float %cond2.i.i1059.3.1.3, %635, !dbg !163
  %rescale.sroa.0.0.1.3 = select i1 %cmp386.1.3, float %mul.i.i.1.3, float 1.000000e+00, !dbg !159
  %mul417.1.3 = fmul contract float %pair_rescale.sroa.0.1.3, %rescale.sroa.0.0.1.3, !dbg !203
  %cmp422.1.3 = fcmp contract une float %rescale.sroa.0.0.1.3, 1.000000e+00
  br i1 %cmp422.1.3, label %if.then429.11237.3, label %if.end480.1.3, !dbg !204

if.then429.11237.3:                               ; preds = %if.end240.1.1.3
  %bc1773.3 = bitcast <2 x i32> %probability_pair.sroa.0.4.3 to <4 x half>, !dbg !205
  %636 = extractelement <4 x half> %bc1773.3, i64 0, !dbg !205
  %conv.i1061.11217.3 = fpext half %636 to float, !dbg !205
  %bc1770.3 = bitcast <2 x i32> %probability_pair.sroa.0.4.3 to <4 x half>, !dbg !208
  %637 = extractelement <4 x half> %bc1770.3, i64 1, !dbg !208
  %conv6.i.11219.3 = fpext half %637 to float, !dbg !208
  %bc1771.3 = bitcast <2 x i32> %probability_pair.sroa.0.4.3 to <4 x half>, !dbg !209
  %638 = extractelement <4 x half> %bc1771.3, i64 2, !dbg !209
  %conv.i1063.11220.3 = fpext half %638 to float, !dbg !209
  %bc1774.3 = bitcast <2 x i32> %probability_pair.sroa.0.4.3 to <4 x half>, !dbg !211
  %639 = extractelement <4 x half> %bc1774.3, i64 3, !dbg !211
  %conv6.i1065.11222.3 = fpext half %639 to float, !dbg !211
  %mul450.11223.3 = fmul contract float %rescale.sroa.0.0.1.3, %conv.i1061.11217.3, !dbg !212
  %mul453.11224.3 = fmul contract float %rescale.sroa.0.0.1.3, %conv6.i.11219.3, !dbg !213
  %mul456.11225.3 = fmul contract float %rescale.sroa.0.0.1.3, %conv.i1063.11220.3, !dbg !214
  %mul459.11226.3 = fmul contract float %rescale.sroa.0.0.1.3, %conv6.i1065.11222.3, !dbg !215
  %640 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !216, !noalias !220
  %641 = fptrunc float %mul450.11223.3 to half, !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %640), !dbg !216, !noalias !220
  %642 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !225
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !225, !noalias !220
  %643 = fptrunc float %mul453.11224.3 to half, !dbg !225
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %642), !dbg !225, !noalias !220
  %644 = bitcast half %641 to i16, !dbg !227
  %645 = bitcast half %643 to i16, !dbg !229
  %646 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !230
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !230, !noalias !234
  %647 = fptrunc float %mul456.11225.3 to half, !dbg !230
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %646), !dbg !230, !noalias !234
  %648 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !239, !noalias !234
  %649 = fptrunc float %mul459.11226.3 to half, !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %648), !dbg !239, !noalias !234
  %650 = bitcast half %647 to i16, !dbg !241
  %651 = bitcast half %649 to i16, !dbg !243
  %__1.sroa.6.0.insert.ext.11227.3 = zext i16 %651 to i64, !dbg !244
  %__1.sroa.6.0.insert.shift.11228.3 = shl nuw i64 %__1.sroa.6.0.insert.ext.11227.3, 48, !dbg !244
  %__1.sroa.5.0.insert.ext.11229.3 = zext i16 %650 to i64, !dbg !244
  %__1.sroa.5.0.insert.shift.11230.3 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.11229.3, 32, !dbg !244
  %__1.sroa.5.0.insert.insert.11231.3 = or disjoint i64 %__1.sroa.6.0.insert.shift.11228.3, %__1.sroa.5.0.insert.shift.11230.3, !dbg !244
  %__1.sroa.4.0.insert.ext.11232.3 = zext i16 %645 to i64, !dbg !244
  %__1.sroa.4.0.insert.shift.11233.3 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.11232.3, 16, !dbg !244
  %__1.sroa.4.0.insert.insert.11234.3 = or disjoint i64 %__1.sroa.5.0.insert.insert.11231.3, %__1.sroa.4.0.insert.shift.11233.3, !dbg !244
  %__1.sroa.0.0.insert.ext.11235.3 = zext i16 %644 to i64, !dbg !244
  %__1.sroa.0.0.insert.insert.11236.3 = or disjoint i64 %__1.sroa.4.0.insert.insert.11234.3, %__1.sroa.0.0.insert.ext.11235.3, !dbg !244
  %652 = bitcast i64 %__1.sroa.0.0.insert.insert.11236.3 to <2 x i32>, !dbg !244
  br label %if.end480.1.3, !dbg !166

if.end480.1.3:                                    ; preds = %if.then429.11237.3, %if.end240.1.1.3
  %probability_pair.sroa.0.7.3 = phi <2 x i32> [ %652, %if.then429.11237.3 ], [ %probability_pair.sroa.0.4.3, %if.end240.1.1.3 ], !dbg !90
  %mul486.1.3 = fmul contract float %pair_sum_local.sroa.0.3.3, %rescale.sroa.0.0.1.3, !dbg !166
  %pair_sum_local.sroa.0.1.1.3 = select i1 %cmp422.1.3, float %mul486.1.3, float %pair_sum_local.sroa.0.3.3, !dbg !166
  %add496.11239.3 = fadd contract float %pair_sum_local.sroa.0.1.1.3, %mul.i.i1060.11215.3, !dbg !167
  %add496.1.1.3 = fadd contract float %add496.11239.3, %mul.i.i1060.1.1.3, !dbg !167
  %add496.2.1.3 = fadd contract float %add496.1.1.3, %mul.i.i1060.2.1.3, !dbg !167
  %add496.3.1.3 = fadd contract float %add496.2.1.3, %mul.i.i1060.3.1.3, !dbg !167
  %653 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !168, !noalias !176
  %654 = fptrunc float %mul.i.i1060.11215.3 to half, !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %653), !dbg !168, !noalias !176
  %655 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %656 = fptrunc float %mul.i.i1060.1.1.3 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %655), !dbg !181, !noalias !176
  %657 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !187, !noalias !191
  %658 = fptrunc float %mul.i.i1060.2.1.3 to half, !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %657), !dbg !187, !noalias !191
  %659 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !196
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !196, !noalias !191
  %660 = fptrunc float %mul.i.i1060.3.1.3 to half, !dbg !196
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %659), !dbg !196, !noalias !191
  %661 = insertelement <4 x half> poison, half %654, i64 0, !dbg !307
  %662 = insertelement <4 x half> %661, half %656, i64 1, !dbg !307
  %663 = insertelement <4 x half> %662, half %658, i64 2, !dbg !307
  %664 = insertelement <4 x half> %663, half %660, i64 3, !dbg !307
  br label %if.end517.1.3, !dbg !202

if.end517.1.3:                                    ; preds = %if.end480.1.3, %if.end517.3
  %probability_pair.sroa.14.1.3 = phi <4 x half> [ zeroinitializer, %if.end517.3 ], [ %664, %if.end480.1.3 ], !dbg !90
  %probability_pair.sroa.0.8.3 = phi <2 x i32> [ %probability_pair.sroa.0.4.3, %if.end517.3 ], [ %probability_pair.sroa.0.7.3, %if.end480.1.3 ], !dbg !90
  %pair_sum_local.sroa.0.3.1.3 = phi float [ %pair_sum_local.sroa.0.3.3, %if.end517.3 ], [ %add496.3.1.3, %if.end480.1.3 ], !dbg !90
  %pair_rescale.sroa.0.1.1.3 = phi float [ %pair_rescale.sroa.0.1.3, %if.end517.3 ], [ %mul417.1.3, %if.end480.1.3 ], !dbg !90
  %add535.31970 = fadd contract float %pair_sum_local.sroa.0.3.1.3, 0.000000e+00, !dbg !245
  %add535.1.3 = fadd contract float %add535.31970, 0.000000e+00, !dbg !245
  %add535.2.3 = fadd contract float %add535.1.3, 0.000000e+00, !dbg !245
  %add535.3.3 = fadd contract float %add535.2.3, 0.000000e+00, !dbg !245
  %665 = bitcast float %add535.3.3 to i32, !dbg !246
  %666 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !251
  %667 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %666) #11, !dbg !254
  %xor.i.i.i1075.3 = xor i32 %667, 32, !dbg !255
  %668 = and i32 %667, -64, !dbg !256
  %and.i.i.i1076.3 = add nsw i32 %668, 64, !dbg !256
  %cmp.not.i.i.i1077.3 = icmp slt i32 %xor.i.i.i1075.3, %and.i.i.i1076.3, !dbg !257
  %cond.i.i.i1078.3 = select i1 %cmp.not.i.i.i1077.3, i32 %xor.i.i.i1075.3, i32 %667, !dbg !258
  %shl.i.i.i1079.3 = shl i32 %cond.i.i.i1078.3, 2, !dbg !259
  %669 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i1079.3, i32 %665), !dbg !260
  %670 = bitcast i32 %669 to float, !dbg !261
  %add.i.i1080.3 = fadd contract float %add535.3.3, %670, !dbg !262
  %671 = bitcast float %add.i.i1080.3 to i32, !dbg !265
  %672 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !270
  %673 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %672) #11, !dbg !273
  %xor.i.i.i.i1081.3 = xor i32 %673, 16, !dbg !274
  %674 = and i32 %673, -64, !dbg !275
  %and.i.i.i.i1082.3 = add nsw i32 %674, 64, !dbg !275
  %cmp.not.i.i.i.i1083.3 = icmp slt i32 %xor.i.i.i.i1081.3, %and.i.i.i.i1082.3, !dbg !276
  %cond.i.i.i.i1084.3 = select i1 %cmp.not.i.i.i.i1083.3, i32 %xor.i.i.i.i1081.3, i32 %673, !dbg !277
  %shl.i.i.i.i1085.3 = shl i32 %cond.i.i.i.i1084.3, 2, !dbg !278
  %675 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i1085.3, i32 %671), !dbg !279
  %676 = bitcast i32 %675 to float, !dbg !280
  %add.i.i.i.3 = fadd contract float %add.i.i1080.3, %676, !dbg !281
  %cmp544.3 = fcmp contract une float %pair_rescale.sroa.0.1.1.3, 1.000000e+00, !dbg !283
  %mul548.3 = fmul contract float %denominator.sroa.0.2.2, %pair_rescale.sroa.0.1.1.3, !dbg !284
  %denominator.sroa.0.1.3 = select i1 %cmp544.3, float %mul548.3, float %denominator.sroa.0.2.2, !dbg !284
  %add553.3 = fadd contract float %denominator.sroa.0.1.3, %add.i.i.i.3, !dbg !285
  br i1 %cmp544.3, label %for.body561.preheader.3, label %if.end571.3, !dbg !286

for.body561.preheader.3:                          ; preds = %if.end517.1.3
  %output_acc.sroa.0.0.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.0.4.2, i64 0, !dbg !313
  %mul565.31971 = fmul contract float %pair_rescale.sroa.0.1.1.3, %output_acc.sroa.0.0.vec.extract.3, !dbg !287
  %output_acc.sroa.0.0.vec.insert1614.3 = insertelement <4 x float> poison, float %mul565.31971, i64 0, !dbg !288
  %output_acc.sroa.0.4.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.0.4.2, i64 1, !dbg !313
  %mul565.1.3 = fmul contract float %pair_rescale.sroa.0.1.1.3, %output_acc.sroa.0.4.vec.extract.3, !dbg !287
  %output_acc.sroa.0.4.vec.insert1623.3 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert1614.3, float %mul565.1.3, i64 1, !dbg !288
  %output_acc.sroa.0.8.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.0.4.2, i64 2, !dbg !313
  %mul565.2.3 = fmul contract float %pair_rescale.sroa.0.1.1.3, %output_acc.sroa.0.8.vec.extract.3, !dbg !287
  %output_acc.sroa.0.8.vec.insert1632.3 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert1623.3, float %mul565.2.3, i64 2, !dbg !288
  %output_acc.sroa.0.12.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.0.4.2, i64 3, !dbg !313
  %mul565.3.3 = fmul contract float %pair_rescale.sroa.0.1.1.3, %output_acc.sroa.0.12.vec.extract.3, !dbg !287
  %output_acc.sroa.0.12.vec.insert1641.3 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert1632.3, float %mul565.3.3, i64 3, !dbg !288
  %output_acc.sroa.30.16.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.30.4.2, i64 0, !dbg !313
  %mul565.4.3 = fmul contract float %pair_rescale.sroa.0.1.1.3, %output_acc.sroa.30.16.vec.extract.3, !dbg !287
  %output_acc.sroa.30.16.vec.insert1652.3 = insertelement <4 x float> poison, float %mul565.4.3, i64 0, !dbg !288
  %output_acc.sroa.30.20.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.30.4.2, i64 1, !dbg !313
  %mul565.5.3 = fmul contract float %pair_rescale.sroa.0.1.1.3, %output_acc.sroa.30.20.vec.extract.3, !dbg !287
  %output_acc.sroa.30.20.vec.insert1661.3 = insertelement <4 x float> %output_acc.sroa.30.16.vec.insert1652.3, float %mul565.5.3, i64 1, !dbg !288
  %output_acc.sroa.30.24.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.30.4.2, i64 2, !dbg !313
  %mul565.6.3 = fmul contract float %pair_rescale.sroa.0.1.1.3, %output_acc.sroa.30.24.vec.extract.3, !dbg !287
  %output_acc.sroa.30.24.vec.insert1670.3 = insertelement <4 x float> %output_acc.sroa.30.20.vec.insert1661.3, float %mul565.6.3, i64 2, !dbg !288
  %output_acc.sroa.30.28.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.30.4.2, i64 3, !dbg !313
  %mul565.7.3 = fmul contract float %pair_rescale.sroa.0.1.1.3, %output_acc.sroa.30.28.vec.extract.3, !dbg !287
  %output_acc.sroa.30.28.vec.insert1679.3 = insertelement <4 x float> %output_acc.sroa.30.24.vec.insert1670.3, float %mul565.7.3, i64 3, !dbg !288
  %output_acc.sroa.58.32.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.58.4.2, i64 0, !dbg !313
  %mul565.8.3 = fmul contract float %pair_rescale.sroa.0.1.1.3, %output_acc.sroa.58.32.vec.extract.3, !dbg !287
  %output_acc.sroa.58.32.vec.insert1690.3 = insertelement <4 x float> poison, float %mul565.8.3, i64 0, !dbg !288
  %output_acc.sroa.58.36.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.58.4.2, i64 1, !dbg !313
  %mul565.9.3 = fmul contract float %pair_rescale.sroa.0.1.1.3, %output_acc.sroa.58.36.vec.extract.3, !dbg !287
  %output_acc.sroa.58.36.vec.insert1699.3 = insertelement <4 x float> %output_acc.sroa.58.32.vec.insert1690.3, float %mul565.9.3, i64 1, !dbg !288
  %output_acc.sroa.58.40.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.58.4.2, i64 2, !dbg !313
  %mul565.10.3 = fmul contract float %pair_rescale.sroa.0.1.1.3, %output_acc.sroa.58.40.vec.extract.3, !dbg !287
  %output_acc.sroa.58.40.vec.insert1708.3 = insertelement <4 x float> %output_acc.sroa.58.36.vec.insert1699.3, float %mul565.10.3, i64 2, !dbg !288
  %output_acc.sroa.58.44.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.58.4.2, i64 3, !dbg !313
  %mul565.11.3 = fmul contract float %pair_rescale.sroa.0.1.1.3, %output_acc.sroa.58.44.vec.extract.3, !dbg !287
  %output_acc.sroa.58.44.vec.insert1717.3 = insertelement <4 x float> %output_acc.sroa.58.40.vec.insert1708.3, float %mul565.11.3, i64 3, !dbg !288
  %output_acc.sroa.86.48.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.86.4.2, i64 0, !dbg !313
  %mul565.12.3 = fmul contract float %pair_rescale.sroa.0.1.1.3, %output_acc.sroa.86.48.vec.extract.3, !dbg !287
  %output_acc.sroa.86.48.vec.insert1728.3 = insertelement <4 x float> poison, float %mul565.12.3, i64 0, !dbg !288
  %output_acc.sroa.86.52.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.86.4.2, i64 1, !dbg !313
  %mul565.13.3 = fmul contract float %pair_rescale.sroa.0.1.1.3, %output_acc.sroa.86.52.vec.extract.3, !dbg !287
  %output_acc.sroa.86.52.vec.insert1737.3 = insertelement <4 x float> %output_acc.sroa.86.48.vec.insert1728.3, float %mul565.13.3, i64 1, !dbg !288
  %output_acc.sroa.86.56.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.86.4.2, i64 2, !dbg !313
  %mul565.14.3 = fmul contract float %pair_rescale.sroa.0.1.1.3, %output_acc.sroa.86.56.vec.extract.3, !dbg !287
  %output_acc.sroa.86.56.vec.insert1746.3 = insertelement <4 x float> %output_acc.sroa.86.52.vec.insert1737.3, float %mul565.14.3, i64 2, !dbg !288
  %output_acc.sroa.86.60.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.86.4.2, i64 3, !dbg !313
  %mul565.15.3 = fmul contract float %pair_rescale.sroa.0.1.1.3, %output_acc.sroa.86.60.vec.extract.3, !dbg !287
  %output_acc.sroa.86.60.vec.insert1755.3 = insertelement <4 x float> %output_acc.sroa.86.56.vec.insert1746.3, float %mul565.15.3, i64 3, !dbg !288
  br label %if.end571.3, !dbg !289

if.end571.3:                                      ; preds = %for.body561.preheader.3, %if.end517.1.3
  %output_acc.sroa.86.1.3 = phi <4 x float> [ %output_acc.sroa.86.60.vec.insert1755.3, %for.body561.preheader.3 ], [ %output_acc.sroa.86.4.2, %if.end517.1.3 ], !dbg !90
  %output_acc.sroa.58.1.3 = phi <4 x float> [ %output_acc.sroa.58.44.vec.insert1717.3, %for.body561.preheader.3 ], [ %output_acc.sroa.58.4.2, %if.end517.1.3 ], !dbg !90
  %output_acc.sroa.30.1.3 = phi <4 x float> [ %output_acc.sroa.30.28.vec.insert1679.3, %for.body561.preheader.3 ], [ %output_acc.sroa.30.4.2, %if.end517.1.3 ], !dbg !90
  %output_acc.sroa.0.1.3 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1641.3, %for.body561.preheader.3 ], [ %output_acc.sroa.0.4.2, %if.end517.1.3 ], !dbg !90
  br i1 %or.cond1109.3, label %if.end752.3, label %if.then588.3, !dbg !290

if.then588.3:                                     ; preds = %if.end571.3
  fence syncscope("warp") release, !dbg !291
  tail call void @llvm.mxc.barrier.warp(), !dbg !294
  fence syncscope("warp") acquire, !dbg !295
  %shr600.3 = shl nsw i32 %558, 2
  %cmp602.3 = icmp slt i32 %shr600.3, %invariant.op1152
  %condval_13.0.3 = sext i32 %mul119.3 to i64
  br i1 %cmp602.3, label %if.then603.31976, label %if.end650.31979, !dbg !296

if.then603.31976:                                 ; preds = %if.then588.3
  %.idx1163.31972 = shl nsw i64 %condval_13.0.3, 7, !dbg !297
  %677 = getelementptr i8, ptr addrspace(4) %29, i64 %.idx1163.31972, !dbg !297
  %condval_10.sroa.0.0.copyload.31973 = load i32, ptr addrspace(4) %677, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.31974 = getelementptr inbounds i8, ptr addrspace(4) %677, i64 4, !dbg !298
  %condval_10.sroa.5.0.copyload.31975 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.31974, align 4, !dbg !298, !tbaa !30
  br label %if.end650.31979, !dbg !299

if.end650.31979:                                  ; preds = %if.then603.31976, %if.then588.3
  %condval_10.sroa.5.0.31977 = phi i32 [ %condval_10.sroa.5.0.copyload.31975, %if.then603.31976 ], [ 0, %if.then588.3 ], !dbg !90
  %condval_10.sroa.0.0.31978 = phi i32 [ %condval_10.sroa.0.0.copyload.31973, %if.then603.31976 ], [ 0, %if.then588.3 ], !dbg !90
  br i1 %cmp602.3, label %if.then603.1.3, label %if.end650.1.3, !dbg !296

if.then603.1.3:                                   ; preds = %if.end650.31979
  %.idx1163.1.3 = shl nsw i64 %condval_13.0.3, 7, !dbg !297
  %678 = getelementptr i8, ptr addrspace(4) %30, i64 %.idx1163.1.3, !dbg !297
  %add.ptr636.1.3 = getelementptr i8, ptr addrspace(4) %678, i64 128, !dbg !297
  %condval_10.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %add.ptr636.1.3, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.1.3 = getelementptr i8, ptr addrspace(4) %678, i64 132, !dbg !298
  %condval_10.sroa.5.0.copyload.1.3 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.1.3, align 4, !dbg !298, !tbaa !30
  br label %if.end650.1.3, !dbg !299

if.end650.1.3:                                    ; preds = %if.then603.1.3, %if.end650.31979
  %condval_10.sroa.5.0.1.3 = phi i32 [ %condval_10.sroa.5.0.copyload.1.3, %if.then603.1.3 ], [ 0, %if.end650.31979 ], !dbg !90
  %condval_10.sroa.0.0.1.3 = phi i32 [ %condval_10.sroa.0.0.copyload.1.3, %if.then603.1.3 ], [ 0, %if.end650.31979 ], !dbg !90
  br i1 %cmp602.3, label %if.then603.2.3, label %if.end650.2.3, !dbg !296

if.then603.2.3:                                   ; preds = %if.end650.1.3
  %.idx1163.2.3 = shl nsw i64 %condval_13.0.3, 7, !dbg !297
  %679 = getelementptr i8, ptr addrspace(4) %31, i64 %.idx1163.2.3, !dbg !297
  %add.ptr636.2.3 = getelementptr i8, ptr addrspace(4) %679, i64 256, !dbg !297
  %condval_10.sroa.0.0.copyload.2.3 = load i32, ptr addrspace(4) %add.ptr636.2.3, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.2.3 = getelementptr i8, ptr addrspace(4) %679, i64 260, !dbg !298
  %condval_10.sroa.5.0.copyload.2.3 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.2.3, align 4, !dbg !298, !tbaa !30
  br label %if.end650.2.3, !dbg !299

if.end650.2.3:                                    ; preds = %if.then603.2.3, %if.end650.1.3
  %condval_10.sroa.5.0.2.3 = phi i32 [ %condval_10.sroa.5.0.copyload.2.3, %if.then603.2.3 ], [ 0, %if.end650.1.3 ], !dbg !90
  %condval_10.sroa.0.0.2.3 = phi i32 [ %condval_10.sroa.0.0.copyload.2.3, %if.then603.2.3 ], [ 0, %if.end650.1.3 ], !dbg !90
  br i1 %cmp602.3, label %if.then603.3.3, label %if.end650.3.3, !dbg !296

if.then603.3.3:                                   ; preds = %if.end650.2.3
  %.idx1163.3.3 = shl nsw i64 %condval_13.0.3, 7, !dbg !297
  %680 = getelementptr i8, ptr addrspace(4) %32, i64 %.idx1163.3.3, !dbg !297
  %add.ptr636.3.3 = getelementptr i8, ptr addrspace(4) %680, i64 384, !dbg !297
  %condval_10.sroa.0.0.copyload.3.3 = load i32, ptr addrspace(4) %add.ptr636.3.3, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.3.3 = getelementptr i8, ptr addrspace(4) %680, i64 388, !dbg !298
  %condval_10.sroa.5.0.copyload.3.3 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.3.3, align 4, !dbg !298, !tbaa !30
  br label %if.end650.3.3, !dbg !299

if.end650.3.3:                                    ; preds = %if.then603.3.3, %if.end650.2.3
  %condval_10.sroa.5.0.3.3 = phi i32 [ %condval_10.sroa.5.0.copyload.3.3, %if.then603.3.3 ], [ 0, %if.end650.2.3 ], !dbg !90
  %condval_10.sroa.0.0.3.3 = phi i32 [ %condval_10.sroa.0.0.copyload.3.3, %if.then603.3.3 ], [ 0, %if.end650.2.3 ], !dbg !90
  %681 = and i32 %condval_10.sroa.0.0.3.3, 65535, !dbg !300
  %v_column_local.sroa.34.0.insert.ext.3 = zext nneg i32 %681 to i64, !dbg !300
  %v_column_local.sroa.34.0.insert.shift.3 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext.3, 48, !dbg !300
  %682 = and i32 %condval_10.sroa.0.0.2.3, 65535, !dbg !300
  %v_column_local.sroa.26.0.insert.ext.3 = zext nneg i32 %682 to i64, !dbg !300
  %v_column_local.sroa.26.0.insert.shift.3 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext.3, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert.3 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift.3, %v_column_local.sroa.26.0.insert.shift.3, !dbg !300
  %683 = shl i32 %condval_10.sroa.0.0.1.3, 16, !dbg !300
  %v_column_local.sroa.18.0.insert.shift.3 = zext i32 %683 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert.3 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert.3, %v_column_local.sroa.18.0.insert.shift.3, !dbg !300
  %684 = and i32 %condval_10.sroa.0.0.31978, 65535, !dbg !300
  %v_column_local.sroa.0.0.insert.ext.3 = zext nneg i32 %684 to i64, !dbg !300
  %v_column_local.sroa.0.0.insert.insert.3 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert.3, %v_column_local.sroa.0.0.insert.ext.3, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr692, align 8, !dbg !300
  %v_tile_local.sroa.0.2.extract.shift.3 = lshr i32 %condval_10.sroa.0.0.31978, 16, !dbg !301
  %v_tile_local.sroa.0.2.extract.trunc.3 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift.3 to i64, !dbg !301
  %v_tile_local.sroa.14.10.extract.shift.3 = and i32 %condval_10.sroa.0.0.1.3, -65536, !dbg !300
  %v_tile_local.sroa.26.18.extract.shift.3 = lshr i32 %condval_10.sroa.0.0.2.3, 16, !dbg !301
  %v_tile_local.sroa.26.18.extract.trunc.3 = zext nneg i32 %v_tile_local.sroa.26.18.extract.shift.3 to i64, !dbg !301
  %v_tile_local.sroa.38.26.extract.shift.3 = lshr i32 %condval_10.sroa.0.0.3.3, 16, !dbg !301
  %v_tile_local.sroa.38.26.extract.trunc.3 = zext nneg i32 %v_tile_local.sroa.38.26.extract.shift.3 to i64, !dbg !301
  %v_column_local.sroa.34.0.insert.shift1389.3 = shl nuw i64 %v_tile_local.sroa.38.26.extract.trunc.3, 48, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1354.3 = shl nuw nsw i64 %v_tile_local.sroa.26.18.extract.trunc.3, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1356.3 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1389.3, %v_column_local.sroa.26.0.insert.shift1354.3, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1319.3 = zext i32 %v_tile_local.sroa.14.10.extract.shift.3 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1321.3 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1356.3, %v_column_local.sroa.18.0.insert.shift1319.3, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1292.3 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1321.3, %v_tile_local.sroa.0.2.extract.trunc.3, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1292.3, ptr addrspace(3) %add.ptr692.1, align 8, !dbg !300
  %685 = and i32 %condval_10.sroa.5.0.3.3, 65535, !dbg !300
  %v_column_local.sroa.34.0.insert.ext1393.3 = zext nneg i32 %685 to i64, !dbg !300
  %v_column_local.sroa.34.0.insert.shift1394.3 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1393.3, 48, !dbg !300
  %686 = and i32 %condval_10.sroa.5.0.2.3, 65535, !dbg !300
  %v_column_local.sroa.26.0.insert.ext1358.3 = zext nneg i32 %686 to i64, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1359.3 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1358.3, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1361.3 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1394.3, %v_column_local.sroa.26.0.insert.shift1359.3, !dbg !300
  %687 = shl i32 %condval_10.sroa.5.0.1.3, 16, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1324.3 = zext i32 %687 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1326.3 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1361.3, %v_column_local.sroa.18.0.insert.shift1324.3, !dbg !300
  %688 = and i32 %condval_10.sroa.5.0.31977, 65535, !dbg !300
  %v_column_local.sroa.0.0.insert.ext1294.3 = zext nneg i32 %688 to i64, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1296.3 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1326.3, %v_column_local.sroa.0.0.insert.ext1294.3, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1296.3, ptr addrspace(3) %add.ptr692.2, align 8, !dbg !300
  %v_tile_local.sroa.8.6.extract.shift.3 = lshr i32 %condval_10.sroa.5.0.31977, 16, !dbg !301
  %v_tile_local.sroa.8.6.extract.trunc.3 = zext nneg i32 %v_tile_local.sroa.8.6.extract.shift.3 to i64, !dbg !301
  %v_tile_local.sroa.20.14.extract.shift.3 = and i32 %condval_10.sroa.5.0.1.3, -65536, !dbg !300
  %v_tile_local.sroa.32.22.extract.shift.3 = lshr i32 %condval_10.sroa.5.0.2.3, 16, !dbg !301
  %v_tile_local.sroa.32.22.extract.trunc.3 = zext nneg i32 %v_tile_local.sroa.32.22.extract.shift.3 to i64, !dbg !301
  %v_tile_local.sroa.44.30.extract.shift.3 = lshr i32 %condval_10.sroa.5.0.3.3, 16, !dbg !301
  %v_tile_local.sroa.44.30.extract.trunc.3 = zext nneg i32 %v_tile_local.sroa.44.30.extract.shift.3 to i64, !dbg !301
  %v_column_local.sroa.34.0.insert.shift1399.3 = shl nuw i64 %v_tile_local.sroa.44.30.extract.trunc.3, 48, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1364.3 = shl nuw nsw i64 %v_tile_local.sroa.32.22.extract.trunc.3, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1366.3 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1399.3, %v_column_local.sroa.26.0.insert.shift1364.3, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1329.3 = zext i32 %v_tile_local.sroa.20.14.extract.shift.3 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1331.3 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1366.3, %v_column_local.sroa.18.0.insert.shift1329.3, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1300.3 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1331.3, %v_tile_local.sroa.8.6.extract.trunc.3, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1300.3, ptr addrspace(3) %add.ptr692.3, align 8, !dbg !300
  fence syncscope("warp") release, !dbg !302
  tail call void @llvm.mxc.barrier.warp(), !dbg !305
  fence syncscope("warp") acquire, !dbg !306
  %689 = bitcast <2 x i32> %probability_pair.sroa.0.8.3 to <4 x half>, !dbg !307
  %690 = load <4 x half>, ptr addrspace(3) %add.ptr726, align 8, !dbg !308
  %691 = load <4 x half>, ptr addrspace(3) %add.ptr726.1, align 8, !dbg !308
  %692 = load <4 x half>, ptr addrspace(3) %add.ptr726.2, align 8, !dbg !308
  %693 = load <4 x half>, ptr addrspace(3) %add.ptr726.3, align 8, !dbg !308
  %694 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %690, <4 x half> %689, <4 x float> %output_acc.sroa.0.1.3), !dbg !309
  %695 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %691, <4 x half> %689, <4 x float> %output_acc.sroa.30.1.3), !dbg !309
  %696 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %692, <4 x half> %689, <4 x float> %output_acc.sroa.58.1.3), !dbg !309
  %697 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %693, <4 x half> %689, <4 x float> %output_acc.sroa.86.1.3), !dbg !309
  br label %if.end752.3, !dbg !310

if.end752.3:                                      ; preds = %if.end650.3.3, %if.end571.3
  %output_acc.sroa.86.2.3 = phi <4 x float> [ %output_acc.sroa.86.1.3, %if.end571.3 ], [ %697, %if.end650.3.3 ], !dbg !90
  %output_acc.sroa.58.2.3 = phi <4 x float> [ %output_acc.sroa.58.1.3, %if.end571.3 ], [ %696, %if.end650.3.3 ], !dbg !90
  %output_acc.sroa.30.2.3 = phi <4 x float> [ %output_acc.sroa.30.1.3, %if.end571.3 ], [ %695, %if.end650.3.3 ], !dbg !90
  %output_acc.sroa.0.2.3 = phi <4 x float> [ %output_acc.sroa.0.1.3, %if.end571.3 ], [ %694, %if.end650.3.3 ], !dbg !90
  br i1 %or.cond1109.1.3, label %if.end756.3, label %if.then588.1.3, !dbg !290

if.then588.1.3:                                   ; preds = %if.end752.3
  fence syncscope("warp") release, !dbg !291
  tail call void @llvm.mxc.barrier.warp(), !dbg !294
  fence syncscope("warp") acquire, !dbg !295
  %shr600.1.3 = shl nsw i32 %560, 2
  %cmp602.1.3 = icmp slt i32 %shr600.1.3, %invariant.op1152
  %condval_13.0.1.3 = sext i32 %mul130.3 to i64
  br i1 %cmp602.1.3, label %if.then603.11249.3, label %if.end650.11253.3, !dbg !296

if.then603.11249.3:                               ; preds = %if.then588.1.3
  %.idx1163.11245.3 = shl nsw i64 %condval_13.0.1.3, 7, !dbg !297
  %698 = getelementptr i8, ptr addrspace(4) %49, i64 %.idx1163.11245.3, !dbg !297
  %condval_10.sroa.0.0.copyload.11246.3 = load i32, ptr addrspace(4) %698, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.11247.3 = getelementptr inbounds i8, ptr addrspace(4) %698, i64 4, !dbg !298
  %condval_10.sroa.5.0.copyload.11248.3 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.11247.3, align 4, !dbg !298, !tbaa !30
  br label %if.end650.11253.3, !dbg !299

if.end650.11253.3:                                ; preds = %if.then603.11249.3, %if.then588.1.3
  %condval_10.sroa.5.0.11250.3 = phi i32 [ %condval_10.sroa.5.0.copyload.11248.3, %if.then603.11249.3 ], [ 0, %if.then588.1.3 ], !dbg !90
  %condval_10.sroa.0.0.11251.3 = phi i32 [ %condval_10.sroa.0.0.copyload.11246.3, %if.then603.11249.3 ], [ 0, %if.then588.1.3 ], !dbg !90
  br i1 %cmp602.1.3, label %if.then603.1.1.3, label %if.end650.1.1.3, !dbg !296

if.then603.1.1.3:                                 ; preds = %if.end650.11253.3
  %.idx1163.1.1.3 = shl nsw i64 %condval_13.0.1.3, 7, !dbg !297
  %699 = getelementptr i8, ptr addrspace(4) %50, i64 %.idx1163.1.1.3, !dbg !297
  %add.ptr636.1.1.3 = getelementptr i8, ptr addrspace(4) %699, i64 128, !dbg !297
  %condval_10.sroa.0.0.copyload.1.1.3 = load i32, ptr addrspace(4) %add.ptr636.1.1.3, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.1.1.3 = getelementptr i8, ptr addrspace(4) %699, i64 132, !dbg !298
  %condval_10.sroa.5.0.copyload.1.1.3 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.1.1.3, align 4, !dbg !298, !tbaa !30
  br label %if.end650.1.1.3, !dbg !299

if.end650.1.1.3:                                  ; preds = %if.then603.1.1.3, %if.end650.11253.3
  %condval_10.sroa.5.0.1.1.3 = phi i32 [ %condval_10.sroa.5.0.copyload.1.1.3, %if.then603.1.1.3 ], [ 0, %if.end650.11253.3 ], !dbg !90
  %condval_10.sroa.0.0.1.1.3 = phi i32 [ %condval_10.sroa.0.0.copyload.1.1.3, %if.then603.1.1.3 ], [ 0, %if.end650.11253.3 ], !dbg !90
  br i1 %cmp602.1.3, label %if.then603.2.1.3, label %if.end650.2.1.3, !dbg !296

if.then603.2.1.3:                                 ; preds = %if.end650.1.1.3
  %.idx1163.2.1.3 = shl nsw i64 %condval_13.0.1.3, 7, !dbg !297
  %700 = getelementptr i8, ptr addrspace(4) %51, i64 %.idx1163.2.1.3, !dbg !297
  %add.ptr636.2.1.3 = getelementptr i8, ptr addrspace(4) %700, i64 256, !dbg !297
  %condval_10.sroa.0.0.copyload.2.1.3 = load i32, ptr addrspace(4) %add.ptr636.2.1.3, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.2.1.3 = getelementptr i8, ptr addrspace(4) %700, i64 260, !dbg !298
  %condval_10.sroa.5.0.copyload.2.1.3 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.2.1.3, align 4, !dbg !298, !tbaa !30
  br label %if.end650.2.1.3, !dbg !299

if.end650.2.1.3:                                  ; preds = %if.then603.2.1.3, %if.end650.1.1.3
  %condval_10.sroa.5.0.2.1.3 = phi i32 [ %condval_10.sroa.5.0.copyload.2.1.3, %if.then603.2.1.3 ], [ 0, %if.end650.1.1.3 ], !dbg !90
  %condval_10.sroa.0.0.2.1.3 = phi i32 [ %condval_10.sroa.0.0.copyload.2.1.3, %if.then603.2.1.3 ], [ 0, %if.end650.1.1.3 ], !dbg !90
  br i1 %cmp602.1.3, label %if.then603.3.1.3, label %if.end650.3.1.3, !dbg !296

if.then603.3.1.3:                                 ; preds = %if.end650.2.1.3
  %.idx1163.3.1.3 = shl nsw i64 %condval_13.0.1.3, 7, !dbg !297
  %701 = getelementptr i8, ptr addrspace(4) %52, i64 %.idx1163.3.1.3, !dbg !297
  %add.ptr636.3.1.3 = getelementptr i8, ptr addrspace(4) %701, i64 384, !dbg !297
  %condval_10.sroa.0.0.copyload.3.1.3 = load i32, ptr addrspace(4) %add.ptr636.3.1.3, align 8, !dbg !298, !tbaa !30
  %condval_10.sroa.5.0.add.ptr636.sroa_idx.3.1.3 = getelementptr i8, ptr addrspace(4) %701, i64 388, !dbg !298
  %condval_10.sroa.5.0.copyload.3.1.3 = load i32, ptr addrspace(4) %condval_10.sroa.5.0.add.ptr636.sroa_idx.3.1.3, align 4, !dbg !298, !tbaa !30
  br label %if.end650.3.1.3, !dbg !299

if.end650.3.1.3:                                  ; preds = %if.then603.3.1.3, %if.end650.2.1.3
  %condval_10.sroa.5.0.3.1.3 = phi i32 [ %condval_10.sroa.5.0.copyload.3.1.3, %if.then603.3.1.3 ], [ 0, %if.end650.2.1.3 ], !dbg !90
  %condval_10.sroa.0.0.3.1.3 = phi i32 [ %condval_10.sroa.0.0.copyload.3.1.3, %if.then603.3.1.3 ], [ 0, %if.end650.2.1.3 ], !dbg !90
  %702 = and i32 %condval_10.sroa.0.0.3.1.3, 65535, !dbg !300
  %v_column_local.sroa.34.0.insert.ext1403.3 = zext nneg i32 %702 to i64, !dbg !300
  %v_column_local.sroa.34.0.insert.shift1404.3 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1403.3, 48, !dbg !300
  %703 = and i32 %condval_10.sroa.0.0.2.1.3, 65535, !dbg !300
  %v_column_local.sroa.26.0.insert.ext1368.3 = zext nneg i32 %703 to i64, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1369.3 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1368.3, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1371.3 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1404.3, %v_column_local.sroa.26.0.insert.shift1369.3, !dbg !300
  %704 = shl i32 %condval_10.sroa.0.0.1.1.3, 16, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1334.3 = zext i32 %704 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1336.3 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1371.3, %v_column_local.sroa.18.0.insert.shift1334.3, !dbg !300
  %705 = and i32 %condval_10.sroa.0.0.11251.3, 65535, !dbg !300
  %v_column_local.sroa.0.0.insert.ext1302.3 = zext nneg i32 %705 to i64, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1304.3 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1336.3, %v_column_local.sroa.0.0.insert.ext1302.3, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1304.3, ptr addrspace(3) %add.ptr692.11261, align 8, !dbg !300
  %v_tile_local.sroa.0.2.extract.shift1425.3 = lshr i32 %condval_10.sroa.0.0.11251.3, 16, !dbg !301
  %v_tile_local.sroa.0.2.extract.trunc1426.3 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1425.3 to i64, !dbg !301
  %v_tile_local.sroa.14.10.extract.shift1435.3 = and i32 %condval_10.sroa.0.0.1.1.3, -65536, !dbg !300
  %v_tile_local.sroa.26.18.extract.shift1445.3 = lshr i32 %condval_10.sroa.0.0.2.1.3, 16, !dbg !301
  %v_tile_local.sroa.26.18.extract.trunc1446.3 = zext nneg i32 %v_tile_local.sroa.26.18.extract.shift1445.3 to i64, !dbg !301
  %v_tile_local.sroa.38.26.extract.shift1455.3 = lshr i32 %condval_10.sroa.0.0.3.1.3, 16, !dbg !301
  %v_tile_local.sroa.38.26.extract.trunc1456.3 = zext nneg i32 %v_tile_local.sroa.38.26.extract.shift1455.3 to i64, !dbg !301
  %v_column_local.sroa.34.0.insert.shift1409.3 = shl nuw i64 %v_tile_local.sroa.38.26.extract.trunc1456.3, 48, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1374.3 = shl nuw nsw i64 %v_tile_local.sroa.26.18.extract.trunc1446.3, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1376.3 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1409.3, %v_column_local.sroa.26.0.insert.shift1374.3, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1339.3 = zext i32 %v_tile_local.sroa.14.10.extract.shift1435.3 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1341.3 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1376.3, %v_column_local.sroa.18.0.insert.shift1339.3, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1308.3 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1341.3, %v_tile_local.sroa.0.2.extract.trunc1426.3, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1308.3, ptr addrspace(3) %add.ptr692.1.1, align 8, !dbg !300
  %706 = and i32 %condval_10.sroa.5.0.3.1.3, 65535, !dbg !300
  %v_column_local.sroa.34.0.insert.ext1413.3 = zext nneg i32 %706 to i64, !dbg !300
  %v_column_local.sroa.34.0.insert.shift1414.3 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1413.3, 48, !dbg !300
  %707 = and i32 %condval_10.sroa.5.0.2.1.3, 65535, !dbg !300
  %v_column_local.sroa.26.0.insert.ext1378.3 = zext nneg i32 %707 to i64, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1379.3 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1378.3, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1381.3 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1414.3, %v_column_local.sroa.26.0.insert.shift1379.3, !dbg !300
  %708 = shl i32 %condval_10.sroa.5.0.1.1.3, 16, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1344.3 = zext i32 %708 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1346.3 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1381.3, %v_column_local.sroa.18.0.insert.shift1344.3, !dbg !300
  %709 = and i32 %condval_10.sroa.5.0.11250.3, 65535, !dbg !300
  %v_column_local.sroa.0.0.insert.ext1310.3 = zext nneg i32 %709 to i64, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1312.3 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1346.3, %v_column_local.sroa.0.0.insert.ext1310.3, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1312.3, ptr addrspace(3) %add.ptr692.2.1, align 8, !dbg !300
  %v_tile_local.sroa.8.6.extract.shift1430.3 = lshr i32 %condval_10.sroa.5.0.11250.3, 16, !dbg !301
  %v_tile_local.sroa.8.6.extract.trunc1431.3 = zext nneg i32 %v_tile_local.sroa.8.6.extract.shift1430.3 to i64, !dbg !301
  %v_tile_local.sroa.20.14.extract.shift1440.3 = and i32 %condval_10.sroa.5.0.1.1.3, -65536, !dbg !300
  %v_tile_local.sroa.32.22.extract.shift1450.3 = lshr i32 %condval_10.sroa.5.0.2.1.3, 16, !dbg !301
  %v_tile_local.sroa.32.22.extract.trunc1451.3 = zext nneg i32 %v_tile_local.sroa.32.22.extract.shift1450.3 to i64, !dbg !301
  %v_tile_local.sroa.44.30.extract.shift1460.3 = lshr i32 %condval_10.sroa.5.0.3.1.3, 16, !dbg !301
  %v_tile_local.sroa.44.30.extract.trunc1461.3 = zext nneg i32 %v_tile_local.sroa.44.30.extract.shift1460.3 to i64, !dbg !301
  %v_column_local.sroa.34.0.insert.shift1419.3 = shl nuw i64 %v_tile_local.sroa.44.30.extract.trunc1461.3, 48, !dbg !300
  %v_column_local.sroa.26.0.insert.shift1384.3 = shl nuw nsw i64 %v_tile_local.sroa.32.22.extract.trunc1451.3, 32, !dbg !300
  %v_column_local.sroa.26.0.insert.insert1386.3 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1419.3, %v_column_local.sroa.26.0.insert.shift1384.3, !dbg !300
  %v_column_local.sroa.18.0.insert.shift1349.3 = zext i32 %v_tile_local.sroa.20.14.extract.shift1440.3 to i64, !dbg !300
  %v_column_local.sroa.18.0.insert.insert1351.3 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1386.3, %v_column_local.sroa.18.0.insert.shift1349.3, !dbg !300
  %v_column_local.sroa.0.0.insert.insert1316.3 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1351.3, %v_tile_local.sroa.8.6.extract.trunc1431.3, !dbg !300
  store i64 %v_column_local.sroa.0.0.insert.insert1316.3, ptr addrspace(3) %add.ptr692.3.1, align 8, !dbg !300
  fence syncscope("warp") release, !dbg !302
  tail call void @llvm.mxc.barrier.warp(), !dbg !305
  fence syncscope("warp") acquire, !dbg !306
  %710 = load <4 x half>, ptr addrspace(3) %add.ptr726.11265, align 8, !dbg !308
  %711 = load <4 x half>, ptr addrspace(3) %add.ptr726.1.1, align 8, !dbg !308
  %712 = load <4 x half>, ptr addrspace(3) %add.ptr726.2.1, align 8, !dbg !308
  %713 = load <4 x half>, ptr addrspace(3) %add.ptr726.3.1, align 8, !dbg !308
  %714 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %710, <4 x half> %probability_pair.sroa.14.1.3, <4 x float> %output_acc.sroa.0.2.3), !dbg !309
  %715 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %711, <4 x half> %probability_pair.sroa.14.1.3, <4 x float> %output_acc.sroa.30.2.3), !dbg !309
  %716 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %712, <4 x half> %probability_pair.sroa.14.1.3, <4 x float> %output_acc.sroa.58.2.3), !dbg !309
  %717 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %713, <4 x half> %probability_pair.sroa.14.1.3, <4 x float> %output_acc.sroa.86.2.3), !dbg !309
  br label %if.end756.3, !dbg !310

if.end756.3:                                      ; preds = %if.end650.3.1.3, %if.end752.3, %lor.lhs.false.3
  %output_acc.sroa.86.4.3 = phi <4 x float> [ %output_acc.sroa.86.4.2, %lor.lhs.false.3 ], [ %output_acc.sroa.86.2.3, %if.end752.3 ], [ %717, %if.end650.3.1.3 ], !dbg !90
  %output_acc.sroa.58.4.3 = phi <4 x float> [ %output_acc.sroa.58.4.2, %lor.lhs.false.3 ], [ %output_acc.sroa.58.2.3, %if.end752.3 ], [ %716, %if.end650.3.1.3 ], !dbg !90
  %output_acc.sroa.30.4.3 = phi <4 x float> [ %output_acc.sroa.30.4.2, %lor.lhs.false.3 ], [ %output_acc.sroa.30.2.3, %if.end752.3 ], [ %715, %if.end650.3.1.3 ], !dbg !90
  %output_acc.sroa.0.4.3 = phi <4 x float> [ %output_acc.sroa.0.4.2, %lor.lhs.false.3 ], [ %output_acc.sroa.0.2.3, %if.end752.3 ], [ %714, %if.end650.3.1.3 ], !dbg !90
  %denominator.sroa.0.2.3 = phi float [ %denominator.sroa.0.2.2, %lor.lhs.false.3 ], [ %add553.3, %if.end752.3 ], [ %add553.3, %if.end650.3.1.3 ], !dbg !90
  fence syncscope("warp") release, !dbg !314
  tail call void @llvm.mxc.barrier.warp(), !dbg !317
  fence syncscope("warp") acquire, !dbg !318
  %output_acc.sroa.0.0.vec.extract1616 = extractelement <4 x float> %output_acc.sroa.0.4.3, i64 0, !dbg !319
  %div = fdiv contract float %output_acc.sroa.0.0.vec.extract1616, %denominator.sroa.0.2.3, !dbg !320
  %output_acc.sroa.0.4.vec.extract1625 = extractelement <4 x float> %output_acc.sroa.0.4.3, i64 1, !dbg !319
  %div.1 = fdiv contract float %output_acc.sroa.0.4.vec.extract1625, %denominator.sroa.0.2.3, !dbg !320
  %output_acc.sroa.0.8.vec.extract1634 = extractelement <4 x float> %output_acc.sroa.0.4.3, i64 2, !dbg !319
  %div.2 = fdiv contract float %output_acc.sroa.0.8.vec.extract1634, %denominator.sroa.0.2.3, !dbg !320
  %output_acc.sroa.0.12.vec.extract1643 = extractelement <4 x float> %output_acc.sroa.0.4.3, i64 3, !dbg !319
  %div.3 = fdiv contract float %output_acc.sroa.0.12.vec.extract1643, %denominator.sroa.0.2.3, !dbg !320
  %output_acc.sroa.30.16.vec.extract1654 = extractelement <4 x float> %output_acc.sroa.30.4.3, i64 0, !dbg !319
  %div.4 = fdiv contract float %output_acc.sroa.30.16.vec.extract1654, %denominator.sroa.0.2.3, !dbg !320
  %output_acc.sroa.30.20.vec.extract1663 = extractelement <4 x float> %output_acc.sroa.30.4.3, i64 1, !dbg !319
  %div.5 = fdiv contract float %output_acc.sroa.30.20.vec.extract1663, %denominator.sroa.0.2.3, !dbg !320
  %output_acc.sroa.30.24.vec.extract1672 = extractelement <4 x float> %output_acc.sroa.30.4.3, i64 2, !dbg !319
  %div.6 = fdiv contract float %output_acc.sroa.30.24.vec.extract1672, %denominator.sroa.0.2.3, !dbg !320
  %output_acc.sroa.30.28.vec.extract1681 = extractelement <4 x float> %output_acc.sroa.30.4.3, i64 3, !dbg !319
  %div.7 = fdiv contract float %output_acc.sroa.30.28.vec.extract1681, %denominator.sroa.0.2.3, !dbg !320
  %output_acc.sroa.58.32.vec.extract1692 = extractelement <4 x float> %output_acc.sroa.58.4.3, i64 0, !dbg !319
  %div.8 = fdiv contract float %output_acc.sroa.58.32.vec.extract1692, %denominator.sroa.0.2.3, !dbg !320
  %output_acc.sroa.58.36.vec.extract1701 = extractelement <4 x float> %output_acc.sroa.58.4.3, i64 1, !dbg !319
  %div.9 = fdiv contract float %output_acc.sroa.58.36.vec.extract1701, %denominator.sroa.0.2.3, !dbg !320
  %output_acc.sroa.58.40.vec.extract1710 = extractelement <4 x float> %output_acc.sroa.58.4.3, i64 2, !dbg !319
  %div.10 = fdiv contract float %output_acc.sroa.58.40.vec.extract1710, %denominator.sroa.0.2.3, !dbg !320
  %output_acc.sroa.58.44.vec.extract1719 = extractelement <4 x float> %output_acc.sroa.58.4.3, i64 3, !dbg !319
  %div.11 = fdiv contract float %output_acc.sroa.58.44.vec.extract1719, %denominator.sroa.0.2.3, !dbg !320
  %output_acc.sroa.86.48.vec.extract1730 = extractelement <4 x float> %output_acc.sroa.86.4.3, i64 0, !dbg !319
  %div.12 = fdiv contract float %output_acc.sroa.86.48.vec.extract1730, %denominator.sroa.0.2.3, !dbg !320
  %output_acc.sroa.86.52.vec.extract1739 = extractelement <4 x float> %output_acc.sroa.86.4.3, i64 1, !dbg !319
  %div.13 = fdiv contract float %output_acc.sroa.86.52.vec.extract1739, %denominator.sroa.0.2.3, !dbg !320
  %output_acc.sroa.86.56.vec.extract1748 = extractelement <4 x float> %output_acc.sroa.86.4.3, i64 2, !dbg !319
  %div.14 = fdiv contract float %output_acc.sroa.86.56.vec.extract1748, %denominator.sroa.0.2.3, !dbg !320
  %output_acc.sroa.86.60.vec.extract1757 = extractelement <4 x float> %output_acc.sroa.86.4.3, i64 3, !dbg !319
  %div.15 = fdiv contract float %output_acc.sroa.86.60.vec.extract1757, %denominator.sroa.0.2.3, !dbg !320
  %and802 = and i32 %2, 7
  %718 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !321, !noalias !325
  %719 = fptrunc float %div to half, !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %718), !dbg !321, !noalias !325
  %720 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !330
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !330, !noalias !325
  %721 = fptrunc float %div.1 to half, !dbg !330
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %720), !dbg !330, !noalias !325
  %722 = bitcast half %719 to i16, !dbg !332
  %723 = bitcast half %721 to i16, !dbg !334
  %724 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !335
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !335, !noalias !339
  %725 = fptrunc float %div.2 to half, !dbg !335
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %724), !dbg !335, !noalias !339
  %726 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !344
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !344, !noalias !339
  %727 = fptrunc float %div.3 to half, !dbg !344
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %726), !dbg !344, !noalias !339
  %728 = bitcast half %725 to i16, !dbg !346
  %729 = bitcast half %727 to i16, !dbg !348
  %__5.sroa.6.0.insert.ext = zext i16 %729 to i64, !dbg !349
  %__5.sroa.6.0.insert.shift = shl nuw i64 %__5.sroa.6.0.insert.ext, 48, !dbg !349
  %__5.sroa.5.0.insert.ext = zext i16 %728 to i64, !dbg !349
  %__5.sroa.5.0.insert.shift = shl nuw nsw i64 %__5.sroa.5.0.insert.ext, 32, !dbg !349
  %__5.sroa.5.0.insert.insert = or disjoint i64 %__5.sroa.6.0.insert.shift, %__5.sroa.5.0.insert.shift, !dbg !349
  %__5.sroa.4.0.insert.ext = zext i16 %723 to i64, !dbg !349
  %__5.sroa.4.0.insert.shift = shl nuw nsw i64 %__5.sroa.4.0.insert.ext, 16, !dbg !349
  %__5.sroa.4.0.insert.insert = or disjoint i64 %__5.sroa.5.0.insert.insert, %__5.sroa.4.0.insert.shift, !dbg !349
  %__5.sroa.0.0.insert.ext = zext i16 %722 to i64, !dbg !349
  %__5.sroa.0.0.insert.insert = or disjoint i64 %__5.sroa.4.0.insert.insert, %__5.sroa.0.0.insert.ext, !dbg !349
  %xor803 = xor i32 %shr71, %and802, !dbg !350
  %mul804 = shl nuw nsw i32 %xor803, 3, !dbg !351
  %add805 = add nuw nsw i32 %mul804, %mul53, !dbg !352
  %add810 = or disjoint i32 %add805, %mul81, !dbg !353
  %add.ptr812 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add810, !dbg !354
  store i64 %__5.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr812, align 8, !dbg !355
  %730 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !321, !noalias !325
  %731 = fptrunc float %div.4 to half, !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %730), !dbg !321, !noalias !325
  %732 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !330
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !330, !noalias !325
  %733 = fptrunc float %div.5 to half, !dbg !330
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %732), !dbg !330, !noalias !325
  %734 = bitcast half %731 to i16, !dbg !332
  %735 = bitcast half %733 to i16, !dbg !334
  %736 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !335
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !335, !noalias !339
  %737 = fptrunc float %div.6 to half, !dbg !335
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %736), !dbg !335, !noalias !339
  %738 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !344
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !344, !noalias !339
  %739 = fptrunc float %div.7 to half, !dbg !344
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %738), !dbg !344, !noalias !339
  %740 = bitcast half %737 to i16, !dbg !346
  %741 = bitcast half %739 to i16, !dbg !348
  %__5.sroa.6.0.insert.ext.1 = zext i16 %741 to i64, !dbg !349
  %__5.sroa.6.0.insert.shift.1 = shl nuw i64 %__5.sroa.6.0.insert.ext.1, 48, !dbg !349
  %__5.sroa.5.0.insert.ext.1 = zext i16 %740 to i64, !dbg !349
  %__5.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__5.sroa.5.0.insert.ext.1, 32, !dbg !349
  %__5.sroa.5.0.insert.insert.1 = or disjoint i64 %__5.sroa.6.0.insert.shift.1, %__5.sroa.5.0.insert.shift.1, !dbg !349
  %__5.sroa.4.0.insert.ext.1 = zext i16 %735 to i64, !dbg !349
  %__5.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__5.sroa.4.0.insert.ext.1, 16, !dbg !349
  %__5.sroa.4.0.insert.insert.1 = or disjoint i64 %__5.sroa.5.0.insert.insert.1, %__5.sroa.4.0.insert.shift.1, !dbg !349
  %__5.sroa.0.0.insert.ext.1 = zext i16 %734 to i64, !dbg !349
  %__5.sroa.0.0.insert.insert.1 = or disjoint i64 %__5.sroa.4.0.insert.insert.1, %__5.sroa.0.0.insert.ext.1, !dbg !349
  %add800.1 = add nuw nsw i32 %shr71, 2, !dbg !356
  %xor803.1 = xor i32 %add800.1, %and802, !dbg !350
  %mul804.1 = shl nuw nsw i32 %xor803.1, 3, !dbg !351
  %add805.1 = add nuw nsw i32 %mul804.1, %mul53, !dbg !352
  %add810.1 = or disjoint i32 %add805.1, %mul81, !dbg !353
  %add.ptr812.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add810.1, !dbg !354
  store i64 %__5.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr812.1, align 8, !dbg !355
  %742 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !321, !noalias !325
  %743 = fptrunc float %div.8 to half, !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %742), !dbg !321, !noalias !325
  %744 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !330
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !330, !noalias !325
  %745 = fptrunc float %div.9 to half, !dbg !330
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %744), !dbg !330, !noalias !325
  %746 = bitcast half %743 to i16, !dbg !332
  %747 = bitcast half %745 to i16, !dbg !334
  %748 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !335
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !335, !noalias !339
  %749 = fptrunc float %div.10 to half, !dbg !335
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %748), !dbg !335, !noalias !339
  %750 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !344
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !344, !noalias !339
  %751 = fptrunc float %div.11 to half, !dbg !344
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %750), !dbg !344, !noalias !339
  %752 = bitcast half %749 to i16, !dbg !346
  %753 = bitcast half %751 to i16, !dbg !348
  %__5.sroa.6.0.insert.ext.2 = zext i16 %753 to i64, !dbg !349
  %__5.sroa.6.0.insert.shift.2 = shl nuw i64 %__5.sroa.6.0.insert.ext.2, 48, !dbg !349
  %__5.sroa.5.0.insert.ext.2 = zext i16 %752 to i64, !dbg !349
  %__5.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__5.sroa.5.0.insert.ext.2, 32, !dbg !349
  %__5.sroa.5.0.insert.insert.2 = or disjoint i64 %__5.sroa.6.0.insert.shift.2, %__5.sroa.5.0.insert.shift.2, !dbg !349
  %__5.sroa.4.0.insert.ext.2 = zext i16 %747 to i64, !dbg !349
  %__5.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__5.sroa.4.0.insert.ext.2, 16, !dbg !349
  %__5.sroa.4.0.insert.insert.2 = or disjoint i64 %__5.sroa.5.0.insert.insert.2, %__5.sroa.4.0.insert.shift.2, !dbg !349
  %__5.sroa.0.0.insert.ext.2 = zext i16 %746 to i64, !dbg !349
  %__5.sroa.0.0.insert.insert.2 = or disjoint i64 %__5.sroa.4.0.insert.insert.2, %__5.sroa.0.0.insert.ext.2, !dbg !349
  %add800.2 = add nuw nsw i32 %shr71, 4, !dbg !356
  %xor803.2 = xor i32 %add800.2, %and802, !dbg !350
  %mul804.2 = shl nuw nsw i32 %xor803.2, 3, !dbg !351
  %add805.2 = add nuw nsw i32 %mul804.2, %mul53, !dbg !352
  %add810.2 = or disjoint i32 %add805.2, %mul81, !dbg !353
  %add.ptr812.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add810.2, !dbg !354
  store i64 %__5.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr812.2, align 8, !dbg !355
  %754 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !321, !noalias !325
  %755 = fptrunc float %div.12 to half, !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %754), !dbg !321, !noalias !325
  %756 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !330
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !330, !noalias !325
  %757 = fptrunc float %div.13 to half, !dbg !330
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %756), !dbg !330, !noalias !325
  %758 = bitcast half %755 to i16, !dbg !332
  %759 = bitcast half %757 to i16, !dbg !334
  %760 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !335
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !335, !noalias !339
  %761 = fptrunc float %div.14 to half, !dbg !335
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %760), !dbg !335, !noalias !339
  %762 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !344
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !344, !noalias !339
  %763 = fptrunc float %div.15 to half, !dbg !344
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %762), !dbg !344, !noalias !339
  %764 = bitcast half %761 to i16, !dbg !346
  %765 = bitcast half %763 to i16, !dbg !348
  %__5.sroa.6.0.insert.ext.3 = zext i16 %765 to i64, !dbg !349
  %__5.sroa.6.0.insert.shift.3 = shl nuw i64 %__5.sroa.6.0.insert.ext.3, 48, !dbg !349
  %__5.sroa.5.0.insert.ext.3 = zext i16 %764 to i64, !dbg !349
  %__5.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__5.sroa.5.0.insert.ext.3, 32, !dbg !349
  %__5.sroa.5.0.insert.insert.3 = or disjoint i64 %__5.sroa.6.0.insert.shift.3, %__5.sroa.5.0.insert.shift.3, !dbg !349
  %__5.sroa.4.0.insert.ext.3 = zext i16 %759 to i64, !dbg !349
  %__5.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__5.sroa.4.0.insert.ext.3, 16, !dbg !349
  %__5.sroa.4.0.insert.insert.3 = or disjoint i64 %__5.sroa.5.0.insert.insert.3, %__5.sroa.4.0.insert.shift.3, !dbg !349
  %__5.sroa.0.0.insert.ext.3 = zext i16 %758 to i64, !dbg !349
  %__5.sroa.0.0.insert.insert.3 = or disjoint i64 %__5.sroa.4.0.insert.insert.3, %__5.sroa.0.0.insert.ext.3, !dbg !349
  %add800.3 = add nuw nsw i32 %shr71, 6, !dbg !356
  %xor803.3 = xor i32 %add800.3, %and802, !dbg !350
  %mul804.3 = shl nuw nsw i32 %xor803.3, 3, !dbg !351
  %add805.3 = add nuw nsw i32 %mul804.3, %mul53, !dbg !352
  %add810.3 = or disjoint i32 %add805.3, %mul81, !dbg !353
  %add.ptr812.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add810.3, !dbg !354
  store i64 %__5.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr812.3, align 8, !dbg !355
  fence syncscope("warp") release, !dbg !357
  tail call void @llvm.mxc.barrier.warp(), !dbg !360
  fence syncscope("warp") acquire, !dbg !361
  %xor8291008 = and i32 %mul11, 56
  %call827.masked = and i32 %2, 1016
  %mul830 = xor i32 %xor8291008, %call827.masked
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul15, !dbg !362
  %invariant.gep1159 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul830, !dbg !362
  %add.ptr845 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !363
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr845, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep1159, i64 16, i1 false), !dbg !364, !tbaa.struct !50, !call_argsrelate !365
  %gep1160.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1159, i32 1024, !dbg !366
  %add.ptr845.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %7, !dbg !363
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr845.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep1160.1, i64 16, i1 false), !dbg !364, !tbaa.struct !50, !call_argsrelate !365
  ret void, !dbg !367
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v039_codex_power_s8_deferred_sum_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v039_codex_power_s8_deferred_sum_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 29, column: 3, scope: !40)
!44 = !DILocation(line: 30, column: 347, scope: !40)
!45 = !DILocation(line: 30, column: 92, scope: !40)
!46 = !DILocation(line: 30, column: 170, scope: !40)
!47 = !DILocation(line: 30, column: 255, scope: !40)
!48 = !DILocation(line: 30, column: 40, scope: !40)
!49 = !DILocation(line: 30, column: 333, scope: !40)
!50 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!51 = !{i32 -1, i32 3, i32 -1, i32 -1}
!52 = !DILocation(line: 30, column: 425, scope: !40)
!53 = !DILocation(line: 30, column: 56, scope: !40)
!54 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !57)
!55 = distinct !DISubprogram(name: "__barrier_warp", scope: !56, file: !56, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!56 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!57 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !59)
!58 = distinct !DISubprogram(name: "__syncwarp", scope: !56, file: !56, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!59 = distinct !DILocation(line: 32, column: 3, scope: !40)
!60 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !57)
!61 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !57)
!62 = !DILocation(line: 34, column: 172, scope: !40)
!63 = !DILocation(line: 34, column: 236, scope: !40)
!64 = !DILocation(line: 34, column: 243, scope: !40)
!65 = !DILocation(line: 34, column: 313, scope: !40)
!66 = !DILocation(line: 34, column: 75, scope: !40)
!67 = !DILocation(line: 34, column: 38, scope: !40)
!68 = !DILocation(line: 43, column: 3, scope: !40)
!69 = !DILocation(line: 44, column: 19, scope: !40)
!70 = !DILocation(line: 44, column: 107, scope: !40)
!71 = !DILocation(line: 45, column: 107, scope: !40)
!72 = !DILocation(line: 45, column: 19, scope: !40)
!73 = !DILocation(line: 45, column: 113, scope: !40)
!74 = !DILocation(line: 46, column: 13, scope: !40)
!75 = !DILocation(line: 46, column: 24, scope: !40)
!76 = !DILocation(line: 46, column: 65, scope: !40)
!77 = !DILocation(line: 46, column: 76, scope: !40)
!78 = !DILocation(line: 68, column: 28, scope: !40)
!79 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !80)
!80 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !81)
!81 = distinct !DILocation(line: 69, column: 11, scope: !40)
!82 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !80)
!83 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !80)
!84 = !DILocation(line: 71, column: 11, scope: !40)
!85 = !DILocation(line: 80, column: 73, scope: !40)
!86 = !DILocation(line: 80, column: 17, scope: !40)
!87 = !DILocation(line: 93, column: 39, scope: !40)
!88 = !DILocation(line: 93, column: 25, scope: !40)
!89 = !DILocation(line: 94, column: 13, scope: !40)
!90 = !DILocation(line: 0, scope: !40)
!91 = !DILocation(line: 97, column: 343, scope: !40)
!92 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !93)
!93 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !94)
!94 = distinct !DILocation(line: 99, column: 11, scope: !40)
!95 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !93)
!96 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !93)
!97 = !DILocation(line: 103, column: 36, scope: !40)
!98 = !DILocation(line: 105, column: 37, scope: !40)
!99 = !DILocation(line: 119, column: 72, scope: !40)
!100 = !DILocation(line: 119, column: 17, scope: !40)
!101 = !DILocation(line: 119, column: 65, scope: !40)
!102 = !DILocation(line: 351, column: 10, scope: !103, inlinedAt: !105)
!103 = distinct !DISubprogram(name: "max", scope: !104, file: !104, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!104 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!105 = distinct !DILocation(line: 130, column: 28, scope: !40)
!106 = !DILocation(line: 1018, column: 9, scope: !107, inlinedAt: !108)
!107 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !56, file: !56, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!108 = distinct !DILocation(line: 338, column: 10, scope: !109, inlinedAt: !111)
!109 = distinct !DISubprogram(name: "shfl_xor_sync<float>", scope: !110, file: !110, line: 337, type: !7, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!110 = !DIFile(filename: "src/tl_templates/maca/common.h", directory: "/root/tilelang-metax")
!111 = distinct !DILocation(line: 95, column: 24, scope: !112, inlinedAt: !114)
!112 = distinct !DISubprogram(name: "run<float>", scope: !113, file: !113, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!113 = !DIFile(filename: "src/tl_templates/maca/reduce.h", directory: "/root/tilelang-metax")
!114 = distinct !DILocation(line: 132, column: 26, scope: !40)
!115 = !DILocation(line: 171, column: 37, scope: !116, inlinedAt: !117)
!116 = distinct !DISubprogram(name: "__lane_id", scope: !56, file: !56, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!117 = distinct !DILocation(line: 990, column: 14, scope: !118, inlinedAt: !119)
!118 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !56, file: !56, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!119 = distinct !DILocation(line: 1019, column: 11, scope: !107, inlinedAt: !108)
!120 = !DILocation(line: 171, column: 10, scope: !116, inlinedAt: !117)
!121 = !DILocation(line: 991, column: 20, scope: !118, inlinedAt: !119)
!122 = !DILocation(line: 992, column: 36, scope: !118, inlinedAt: !119)
!123 = !DILocation(line: 992, column: 17, scope: !118, inlinedAt: !119)
!124 = !DILocation(line: 992, column: 11, scope: !118, inlinedAt: !119)
!125 = !DILocation(line: 993, column: 43, scope: !118, inlinedAt: !119)
!126 = !DILocation(line: 993, column: 10, scope: !118, inlinedAt: !119)
!127 = !DILocation(line: 1020, column: 14, scope: !107, inlinedAt: !108)
!128 = !DILocation(line: 306, column: 10, scope: !129, inlinedAt: !130)
!129 = distinct !DISubprogram(name: "fmaxf", scope: !104, file: !104, line: 305, type: !7, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!130 = distinct !DILocation(line: 633, column: 10, scope: !131, inlinedAt: !133)
!131 = distinct !DISubprogram(name: "fast_max<float>", scope: !132, file: !132, line: 632, type: !7, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!132 = !DIFile(filename: "/opt/maca/include/mctlass/fast_math.h", directory: "")
!133 = distinct !DILocation(line: 31, column: 12, scope: !134, inlinedAt: !135)
!134 = distinct !DISubprogram(name: "operator()<float>", scope: !113, file: !113, line: 30, type: !7, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!135 = distinct !DILocation(line: 95, column: 11, scope: !112, inlinedAt: !114)
!136 = !DILocation(line: 1018, column: 9, scope: !107, inlinedAt: !137)
!137 = distinct !DILocation(line: 338, column: 10, scope: !109, inlinedAt: !138)
!138 = distinct !DILocation(line: 95, column: 24, scope: !139, inlinedAt: !140)
!139 = distinct !DISubprogram(name: "run<float>", scope: !113, file: !113, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!140 = distinct !DILocation(line: 100, column: 14, scope: !112, inlinedAt: !114)
!141 = !DILocation(line: 171, column: 37, scope: !116, inlinedAt: !142)
!142 = distinct !DILocation(line: 990, column: 14, scope: !118, inlinedAt: !143)
!143 = distinct !DILocation(line: 1019, column: 11, scope: !107, inlinedAt: !137)
!144 = !DILocation(line: 171, column: 10, scope: !116, inlinedAt: !142)
!145 = !DILocation(line: 991, column: 20, scope: !118, inlinedAt: !143)
!146 = !DILocation(line: 992, column: 36, scope: !118, inlinedAt: !143)
!147 = !DILocation(line: 992, column: 17, scope: !118, inlinedAt: !143)
!148 = !DILocation(line: 992, column: 11, scope: !118, inlinedAt: !143)
!149 = !DILocation(line: 993, column: 43, scope: !118, inlinedAt: !143)
!150 = !DILocation(line: 993, column: 10, scope: !118, inlinedAt: !143)
!151 = !DILocation(line: 1020, column: 14, scope: !107, inlinedAt: !137)
!152 = !DILocation(line: 306, column: 10, scope: !129, inlinedAt: !153)
!153 = distinct !DILocation(line: 633, column: 10, scope: !131, inlinedAt: !154)
!154 = distinct !DILocation(line: 31, column: 12, scope: !134, inlinedAt: !155)
!155 = distinct !DILocation(line: 95, column: 11, scope: !139, inlinedAt: !140)
!156 = !DILocation(line: 133, column: 58, scope: !40)
!157 = !DILocation(line: 133, column: 75, scope: !40)
!158 = !DILocation(line: 133, column: 41, scope: !40)
!159 = !DILocation(line: 133, column: 15, scope: !40)
!160 = !DILocation(line: 141, column: 48, scope: !40)
!161 = !DILocation(line: 141, column: 65, scope: !40)
!162 = !DILocation(line: 141, column: 106, scope: !40)
!163 = !DILocation(line: 285, column: 49, scope: !164, inlinedAt: !165)
!164 = distinct !DISubprogram(name: "exp2f", scope: !104, file: !104, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!165 = distinct !DILocation(line: 141, column: 27, scope: !40)
!166 = !DILocation(line: 167, column: 15, scope: !40)
!167 = !DILocation(line: 172, column: 52, scope: !40)
!168 = !DILocation(line: 1007, column: 10, scope: !169, inlinedAt: !171)
!169 = distinct !DISubprogram(name: "__float2half_rn", scope: !170, file: !170, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!170 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!171 = distinct !DILocation(line: 1077, column: 18, scope: !172, inlinedAt: !173)
!172 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !170, file: !170, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!173 = distinct !DILocation(line: 1295, column: 23, scope: !174, inlinedAt: !175)
!174 = distinct !DISubprogram(name: "__float22half2_rn", scope: !170, file: !170, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!175 = distinct !DILocation(line: 176, column: 33, scope: !40)
!176 = !{!177, !179}
!177 = distinct !{!177, !178, !"_ZL17__floats2half2_rnff: %agg.result"}
!178 = distinct !{!178, !"_ZL17__floats2half2_rnff"}
!179 = distinct !{!179, !180, !"_ZL17__float22half2_rn6float2: %agg.result"}
!180 = distinct !{!180, !"_ZL17__float22half2_rn6float2"}
!181 = !DILocation(line: 1007, column: 10, scope: !169, inlinedAt: !182)
!182 = distinct !DILocation(line: 1077, column: 38, scope: !172, inlinedAt: !173)
!183 = !DILocation(line: 596, column: 67, scope: !184, inlinedAt: !185)
!184 = distinct !DISubprogram(name: "__half2", scope: !170, file: !170, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!185 = distinct !DILocation(line: 1077, column: 10, scope: !172, inlinedAt: !173)
!186 = !DILocation(line: 596, column: 73, scope: !184, inlinedAt: !185)
!187 = !DILocation(line: 1007, column: 10, scope: !169, inlinedAt: !188)
!188 = distinct !DILocation(line: 1077, column: 18, scope: !172, inlinedAt: !189)
!189 = distinct !DILocation(line: 1295, column: 23, scope: !174, inlinedAt: !190)
!190 = distinct !DILocation(line: 177, column: 33, scope: !40)
!191 = !{!192, !194}
!192 = distinct !{!192, !193, !"_ZL17__floats2half2_rnff: %agg.result"}
!193 = distinct !{!193, !"_ZL17__floats2half2_rnff"}
!194 = distinct !{!194, !195, !"_ZL17__float22half2_rn6float2: %agg.result"}
!195 = distinct !{!195, !"_ZL17__float22half2_rn6float2"}
!196 = !DILocation(line: 1007, column: 10, scope: !169, inlinedAt: !197)
!197 = distinct !DILocation(line: 1077, column: 38, scope: !172, inlinedAt: !189)
!198 = !DILocation(line: 596, column: 67, scope: !184, inlinedAt: !199)
!199 = distinct !DILocation(line: 1077, column: 10, scope: !172, inlinedAt: !189)
!200 = !DILocation(line: 596, column: 73, scope: !184, inlinedAt: !199)
!201 = !DILocation(line: 178, column: 53, scope: !40)
!202 = !DILocation(line: 179, column: 9, scope: !40)
!203 = !DILocation(line: 143, column: 46, scope: !40)
!204 = !DILocation(line: 144, column: 15, scope: !40)
!205 = !DILocation(line: 1301, column: 28, scope: !206, inlinedAt: !207)
!206 = distinct !DISubprogram(name: "__half22float2", scope: !170, file: !170, line: 1299, type: !7, scopeLine: 1299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!207 = distinct !DILocation(line: 153, column: 44, scope: !40)
!208 = !DILocation(line: 1302, column: 28, scope: !206, inlinedAt: !207)
!209 = !DILocation(line: 1301, column: 28, scope: !206, inlinedAt: !210)
!210 = distinct !DILocation(line: 154, column: 44, scope: !40)
!211 = !DILocation(line: 1302, column: 28, scope: !206, inlinedAt: !210)
!212 = !DILocation(line: 156, column: 35, scope: !40)
!213 = !DILocation(line: 157, column: 35, scope: !40)
!214 = !DILocation(line: 158, column: 35, scope: !40)
!215 = !DILocation(line: 159, column: 35, scope: !40)
!216 = !DILocation(line: 1007, column: 10, scope: !169, inlinedAt: !217)
!217 = distinct !DILocation(line: 1077, column: 18, scope: !172, inlinedAt: !218)
!218 = distinct !DILocation(line: 1295, column: 23, scope: !174, inlinedAt: !219)
!219 = distinct !DILocation(line: 160, column: 41, scope: !40)
!220 = !{!221, !223}
!221 = distinct !{!221, !222, !"_ZL17__floats2half2_rnff: %agg.result"}
!222 = distinct !{!222, !"_ZL17__floats2half2_rnff"}
!223 = distinct !{!223, !224, !"_ZL17__float22half2_rn6float2: %agg.result"}
!224 = distinct !{!224, !"_ZL17__float22half2_rn6float2"}
!225 = !DILocation(line: 1007, column: 10, scope: !169, inlinedAt: !226)
!226 = distinct !DILocation(line: 1077, column: 38, scope: !172, inlinedAt: !218)
!227 = !DILocation(line: 596, column: 67, scope: !184, inlinedAt: !228)
!228 = distinct !DILocation(line: 1077, column: 10, scope: !172, inlinedAt: !218)
!229 = !DILocation(line: 596, column: 73, scope: !184, inlinedAt: !228)
!230 = !DILocation(line: 1007, column: 10, scope: !169, inlinedAt: !231)
!231 = distinct !DILocation(line: 1077, column: 18, scope: !172, inlinedAt: !232)
!232 = distinct !DILocation(line: 1295, column: 23, scope: !174, inlinedAt: !233)
!233 = distinct !DILocation(line: 161, column: 41, scope: !40)
!234 = !{!235, !237}
!235 = distinct !{!235, !236, !"_ZL17__floats2half2_rnff: %agg.result"}
!236 = distinct !{!236, !"_ZL17__floats2half2_rnff"}
!237 = distinct !{!237, !238, !"_ZL17__float22half2_rn6float2: %agg.result"}
!238 = distinct !{!238, !"_ZL17__float22half2_rn6float2"}
!239 = !DILocation(line: 1007, column: 10, scope: !169, inlinedAt: !240)
!240 = distinct !DILocation(line: 1077, column: 38, scope: !172, inlinedAt: !232)
!241 = !DILocation(line: 596, column: 67, scope: !184, inlinedAt: !242)
!242 = distinct !DILocation(line: 1077, column: 10, scope: !172, inlinedAt: !232)
!243 = !DILocation(line: 596, column: 73, scope: !184, inlinedAt: !242)
!244 = !DILocation(line: 162, column: 59, scope: !40)
!245 = !DILocation(line: 187, column: 38, scope: !40)
!246 = !DILocation(line: 1018, column: 9, scope: !107, inlinedAt: !247)
!247 = distinct !DILocation(line: 338, column: 10, scope: !109, inlinedAt: !248)
!248 = distinct !DILocation(line: 95, column: 24, scope: !249, inlinedAt: !250)
!249 = distinct !DISubprogram(name: "run<float>", scope: !113, file: !113, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!250 = distinct !DILocation(line: 189, column: 22, scope: !40)
!251 = !DILocation(line: 171, column: 37, scope: !116, inlinedAt: !252)
!252 = distinct !DILocation(line: 990, column: 14, scope: !118, inlinedAt: !253)
!253 = distinct !DILocation(line: 1019, column: 11, scope: !107, inlinedAt: !247)
!254 = !DILocation(line: 171, column: 10, scope: !116, inlinedAt: !252)
!255 = !DILocation(line: 991, column: 20, scope: !118, inlinedAt: !253)
!256 = !DILocation(line: 992, column: 36, scope: !118, inlinedAt: !253)
!257 = !DILocation(line: 992, column: 17, scope: !118, inlinedAt: !253)
!258 = !DILocation(line: 992, column: 11, scope: !118, inlinedAt: !253)
!259 = !DILocation(line: 993, column: 43, scope: !118, inlinedAt: !253)
!260 = !DILocation(line: 993, column: 10, scope: !118, inlinedAt: !253)
!261 = !DILocation(line: 1020, column: 14, scope: !107, inlinedAt: !247)
!262 = !DILocation(line: 25, column: 14, scope: !263, inlinedAt: !264)
!263 = distinct !DISubprogram(name: "operator()<float>", scope: !113, file: !113, line: 24, type: !7, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!264 = distinct !DILocation(line: 95, column: 11, scope: !249, inlinedAt: !250)
!265 = !DILocation(line: 1018, column: 9, scope: !107, inlinedAt: !266)
!266 = distinct !DILocation(line: 338, column: 10, scope: !109, inlinedAt: !267)
!267 = distinct !DILocation(line: 95, column: 24, scope: !268, inlinedAt: !269)
!268 = distinct !DISubprogram(name: "run<float>", scope: !113, file: !113, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!269 = distinct !DILocation(line: 100, column: 14, scope: !249, inlinedAt: !250)
!270 = !DILocation(line: 171, column: 37, scope: !116, inlinedAt: !271)
!271 = distinct !DILocation(line: 990, column: 14, scope: !118, inlinedAt: !272)
!272 = distinct !DILocation(line: 1019, column: 11, scope: !107, inlinedAt: !266)
!273 = !DILocation(line: 171, column: 10, scope: !116, inlinedAt: !271)
!274 = !DILocation(line: 991, column: 20, scope: !118, inlinedAt: !272)
!275 = !DILocation(line: 992, column: 36, scope: !118, inlinedAt: !272)
!276 = !DILocation(line: 992, column: 17, scope: !118, inlinedAt: !272)
!277 = !DILocation(line: 992, column: 11, scope: !118, inlinedAt: !272)
!278 = !DILocation(line: 993, column: 43, scope: !118, inlinedAt: !272)
!279 = !DILocation(line: 993, column: 10, scope: !118, inlinedAt: !272)
!280 = !DILocation(line: 1020, column: 14, scope: !107, inlinedAt: !266)
!281 = !DILocation(line: 25, column: 14, scope: !263, inlinedAt: !282)
!282 = distinct !DILocation(line: 95, column: 11, scope: !268, inlinedAt: !269)
!283 = !DILocation(line: 190, column: 27, scope: !40)
!284 = !DILocation(line: 190, column: 11, scope: !40)
!285 = !DILocation(line: 193, column: 40, scope: !40)
!286 = !DILocation(line: 194, column: 11, scope: !40)
!287 = !DILocation(line: 197, column: 46, scope: !40)
!288 = !DILocation(line: 197, column: 27, scope: !40)
!289 = !DILocation(line: 201, column: 7, scope: !40)
!290 = !DILocation(line: 214, column: 30, scope: !40)
!291 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !292)
!292 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !293)
!293 = distinct !DILocation(line: 215, column: 11, scope: !40)
!294 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !292)
!295 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !292)
!296 = !DILocation(line: 226, column: 17, scope: !40)
!297 = !DILocation(line: 239, column: 40, scope: !40)
!298 = !DILocation(line: 239, column: 26, scope: !40)
!299 = !DILocation(line: 240, column: 13, scope: !40)
!300 = !DILocation(line: 251, column: 200, scope: !40)
!301 = !DILocation(line: 249, column: 42, scope: !40)
!302 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !303)
!303 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !304)
!304 = distinct !DILocation(line: 253, column: 11, scope: !40)
!305 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !303)
!306 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !303)
!307 = !DILocation(line: 254, column: 38, scope: !40)
!308 = !DILocation(line: 257, column: 42, scope: !40)
!309 = !DILocation(line: 261, column: 43, scope: !40)
!310 = !DILocation(line: 266, column: 9, scope: !40)
!311 = !DILocation(line: 42, column: 17, scope: !40)
!312 = !DILocation(line: 44, column: 88, scope: !40)
!313 = !DILocation(line: 197, column: 30, scope: !40)
!314 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !315)
!315 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !316)
!316 = distinct !DILocation(line: 270, column: 3, scope: !40)
!317 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !315)
!318 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !315)
!319 = !DILocation(line: 273, column: 24, scope: !40)
!320 = !DILocation(line: 273, column: 40, scope: !40)
!321 = !DILocation(line: 1007, column: 10, scope: !169, inlinedAt: !322)
!322 = distinct !DILocation(line: 1077, column: 18, scope: !172, inlinedAt: !323)
!323 = distinct !DILocation(line: 1295, column: 23, scope: !174, inlinedAt: !324)
!324 = distinct !DILocation(line: 279, column: 27, scope: !40)
!325 = !{!326, !328}
!326 = distinct !{!326, !327, !"_ZL17__floats2half2_rnff: %agg.result"}
!327 = distinct !{!327, !"_ZL17__floats2half2_rnff"}
!328 = distinct !{!328, !329, !"_ZL17__float22half2_rn6float2: %agg.result"}
!329 = distinct !{!329, !"_ZL17__float22half2_rn6float2"}
!330 = !DILocation(line: 1007, column: 10, scope: !169, inlinedAt: !331)
!331 = distinct !DILocation(line: 1077, column: 38, scope: !172, inlinedAt: !323)
!332 = !DILocation(line: 596, column: 67, scope: !184, inlinedAt: !333)
!333 = distinct !DILocation(line: 1077, column: 10, scope: !172, inlinedAt: !323)
!334 = !DILocation(line: 596, column: 73, scope: !184, inlinedAt: !333)
!335 = !DILocation(line: 1007, column: 10, scope: !169, inlinedAt: !336)
!336 = distinct !DILocation(line: 1077, column: 18, scope: !172, inlinedAt: !337)
!337 = distinct !DILocation(line: 1295, column: 23, scope: !174, inlinedAt: !338)
!338 = distinct !DILocation(line: 280, column: 27, scope: !40)
!339 = !{!340, !342}
!340 = distinct !{!340, !341, !"_ZL17__floats2half2_rnff: %agg.result"}
!341 = distinct !{!341, !"_ZL17__floats2half2_rnff"}
!342 = distinct !{!342, !343, !"_ZL17__float22half2_rn6float2: %agg.result"}
!343 = distinct !{!343, !"_ZL17__float22half2_rn6float2"}
!344 = !DILocation(line: 1007, column: 10, scope: !169, inlinedAt: !345)
!345 = distinct !DILocation(line: 1077, column: 38, scope: !172, inlinedAt: !337)
!346 = !DILocation(line: 596, column: 67, scope: !184, inlinedAt: !347)
!347 = distinct !DILocation(line: 1077, column: 10, scope: !172, inlinedAt: !337)
!348 = !DILocation(line: 596, column: 73, scope: !184, inlinedAt: !347)
!349 = !DILocation(line: 281, column: 45, scope: !40)
!350 = !DILocation(line: 282, column: 121, scope: !40)
!351 = !DILocation(line: 282, column: 149, scope: !40)
!352 = !DILocation(line: 282, column: 77, scope: !40)
!353 = !DILocation(line: 282, column: 155, scope: !40)
!354 = !DILocation(line: 282, column: 40, scope: !40)
!355 = !DILocation(line: 282, column: 198, scope: !40)
!356 = !DILocation(line: 282, column: 92, scope: !40)
!357 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !358)
!358 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !359)
!359 = distinct !DILocation(line: 284, column: 3, scope: !40)
!360 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !358)
!361 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !358)
!362 = !DILocation(line: 286, column: 8, scope: !40)
!363 = !DILocation(line: 287, column: 22, scope: !40)
!364 = !DILocation(line: 287, column: 132, scope: !40)
!365 = !{i32 2, i32 -1, i32 -1, i32 -1}
!366 = !DILocation(line: 287, column: 169, scope: !40)
!367 = !DILocation(line: 289, column: 1, scope: !40)
