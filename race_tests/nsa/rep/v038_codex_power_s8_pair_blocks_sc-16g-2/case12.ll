; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v038_codex_power_s8_pair_blocks_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v038_codex_power_s8_pair_blocks_sc-16g-2/codegen/case12.device.cpp"
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
  %add211058 = and i32 %mul11, 32
  %shr181059 = add nuw nsw i32 %add211058, %2
  %mul23 = and i32 %shr181059, 32
  %add311060 = and i32 %mul11, 16
  %and261061 = add nuw nsw i32 %add311060, %2
  %mul33 = and i32 %and261061, 16
  %and361063 = mul nuw nsw i32 %2, 9
  %mul42 = and i32 %and361063, 8
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
  %add61 = or disjoint i32 %mul81, %mul53
  %add69 = or disjoint i32 %add61, %mul76
  %and59 = shl nuw nsw i32 %and55, 5, !dbg !62
  %mul60 = and i32 %and59, 32, !dbg !62
  %and67 = shl nuw nsw i32 %and63, 4, !dbg !63
  %mul68 = and i32 %and67, 16, !dbg !63
  %add77 = or disjoint i32 %add69, %mul68, !dbg !64
  %add82 = or disjoint i32 %add77, %mul60, !dbg !65
  %add.ptr84 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add82, !dbg !66
  %11 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !67
  %add66.1 = shl nuw nsw i32 %and63, 4, !dbg !63
  %12 = and i32 %add66.1, 16, !dbg !63
  %mul68.1 = xor i32 %12, 16, !dbg !63
  %add77.1 = or disjoint i32 %add69, %mul68.1, !dbg !64
  %add82.1 = or disjoint i32 %add77.1, %mul60, !dbg !65
  %add.ptr84.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add82.1, !dbg !66
  %13 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !67
  %add58.2 = shl nuw nsw i32 %and55, 5, !dbg !62
  %14 = and i32 %add58.2, 32, !dbg !62
  %mul60.2 = xor i32 %14, 32, !dbg !62
  %add66.2 = shl nuw nsw i32 %and63, 4, !dbg !63
  %mul68.2 = and i32 %add66.2, 16, !dbg !63
  %add77.2 = or disjoint i32 %add69, %mul68.2, !dbg !64
  %add82.2 = or disjoint i32 %add77.2, %mul60.2, !dbg !65
  %add.ptr84.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add82.2, !dbg !66
  %15 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !67
  %add66.3 = shl nuw nsw i32 %and63, 4, !dbg !63
  %16 = and i32 %add66.3, 16, !dbg !63
  %mul68.3 = xor i32 %16, 16, !dbg !63
  %add77.3 = or disjoint i32 %add69, %mul68.3, !dbg !64
  %add82.3 = or disjoint i32 %add77.3, %mul60.2, !dbg !65
  %add.ptr84.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add82.3, !dbg !66
  %17 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !67
  %mul116 = shl nsw i32 %0, 13
  %mul118 = shl nsw i32 %1, 3
  %add119 = add nuw nsw i32 %mul116, %mul118
  %shr159 = lshr i32 %2, 3
  %add231 = or disjoint i32 %mul42, %mul15
  %add235 = or disjoint i32 %add231, %mul23
  %add244 = or disjoint i32 %add235, %mul33
  %conv = zext nneg i32 %0 to i64
  %mul195 = shl nuw nsw i64 %conv, 16
  %mul206 = zext nneg i32 %mul11 to i64
  %invariant.gep1164 = getelementptr %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul206
  %mul439 = and i32 %and55, 252
  %and726 = shl nuw nsw i32 %2, 4
  %mul727 = and i32 %and726, 240
  %shr730 = lshr i32 %2, 4
  %shr733 = and i32 %and55, 3
  %xor = xor i32 %shr733, %shr730
  %18 = and i32 %and726, 16128
  %19 = shl nuw nsw i32 %2, 2
  %20 = and i32 %19, 60
  %21 = or disjoint i32 %18, %20
  %22 = zext nneg i32 %21 to i64
  %add647 = or disjoint i64 %mul195, %22
  %and756 = shl nuw nsw i32 %2, 8
  %mul757 = and i32 %and756, 768
  %mul764 = and i32 %19, 48
  %and770 = and i32 %2, 3
  %23 = xor i32 %shr730, %and770
  %24 = zext nneg i32 %add119 to i64, !dbg !68
  %25 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add244
  %add.ptr266 = getelementptr inbounds i8, ptr addrspace(3) %25, i32 2048
  %condval.sroa.5.0.add.ptr266.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %25, i32 2052
  %condval.sroa.6.0.add.ptr266.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %25, i32 2056
  %condval.sroa.7.0.add.ptr266.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %25, i32 2060
  %add198.1 = or disjoint i64 %mul195, 512
  %add.ptr266.1 = getelementptr inbounds i8, ptr addrspace(3) %25, i32 3072
  %condval.sroa.5.0.add.ptr266.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %25, i32 3076
  %condval.sroa.6.0.add.ptr266.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %25, i32 3080
  %condval.sroa.7.0.add.ptr266.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %25, i32 3084
  %26 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add244
  %k_shared_local_cast.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %26, i32 4
  %k_shared_local_cast.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %26, i32 8
  %k_shared_local_cast.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %26, i32 12
  %gep.1 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 1024
  %k_shared_local_cast.sroa.10.0.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %26, i32 1028
  %k_shared_local_cast.sroa.14.0.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %26, i32 1032
  %k_shared_local_cast.sroa.18.0.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %26, i32 1036
  %27 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add244
  %add.ptr266.11235 = getelementptr inbounds i8, ptr addrspace(3) %27, i32 4096
  %condval.sroa.5.0.add.ptr266.sroa_idx.11236 = getelementptr inbounds i8, ptr addrspace(3) %27, i32 4100
  %condval.sroa.6.0.add.ptr266.sroa_idx.11237 = getelementptr inbounds i8, ptr addrspace(3) %27, i32 4104
  %condval.sroa.7.0.add.ptr266.sroa_idx.11238 = getelementptr inbounds i8, ptr addrspace(3) %27, i32 4108
  %add198.1.1 = or disjoint i64 %mul195, 512
  %add.ptr266.1.1 = getelementptr inbounds i8, ptr addrspace(3) %27, i32 5120
  %condval.sroa.5.0.add.ptr266.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %27, i32 5124
  %condval.sroa.6.0.add.ptr266.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %27, i32 5128
  %condval.sroa.7.0.add.ptr266.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %27, i32 5132
  %28 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add244
  %29 = getelementptr inbounds i8, ptr addrspace(3) %28, i32 2048
  %k_shared_local_cast.sroa.10.0..sroa_idx1598 = getelementptr inbounds i8, ptr addrspace(3) %28, i32 2052
  %k_shared_local_cast.sroa.14.0..sroa_idx1602 = getelementptr inbounds i8, ptr addrspace(3) %28, i32 2056
  %k_shared_local_cast.sroa.18.0..sroa_idx1606 = getelementptr inbounds i8, ptr addrspace(3) %28, i32 2060
  %gep.1.1 = getelementptr inbounds i8, ptr addrspace(3) %28, i32 3072
  %k_shared_local_cast.sroa.10.0.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %28, i32 3076
  %k_shared_local_cast.sroa.14.0.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %28, i32 3080
  %k_shared_local_cast.sroa.18.0.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %28, i32 3084
  %add378 = or disjoint i32 %mul53, %mul60
  %add386 = or disjoint i32 %add378, %mul68
  %add394 = or disjoint i32 %add386, %mul76
  %add399 = or disjoint i32 %add394, %mul81
  %gep1167 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add399
  %add370.1 = or disjoint i32 %mul53, 1024
  %add378.1 = or disjoint i32 %add370.1, %mul60
  %add386.1 = or disjoint i32 %add378.1, %mul68
  %add394.1 = or disjoint i32 %add386.1, %mul76
  %add399.1 = or disjoint i32 %add394.1, %mul81
  %gep1167.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add399.1
  %add386.11246 = or disjoint i32 %add378, %mul68.1
  %add394.11247 = or disjoint i32 %add386.11246, %mul76
  %add399.11248 = or disjoint i32 %add394.11247, %mul81
  %gep1167.11249 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add399.11248
  %add386.1.1 = or disjoint i32 %add378.1, %mul68.1
  %add394.1.1 = or disjoint i32 %add386.1.1, %mul76
  %add399.1.1 = or disjoint i32 %add394.1.1, %mul81
  %gep1167.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add399.1.1
  %add378.2 = or disjoint i32 %mul53, %mul60.2
  %add386.2 = or disjoint i32 %add378.2, %mul68.2
  %add394.2 = or disjoint i32 %add386.2, %mul76
  %add399.2 = or disjoint i32 %add394.2, %mul81
  %gep1167.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add399.2
  %add378.1.2 = or disjoint i32 %add370.1, %mul60.2
  %add386.1.2 = or disjoint i32 %add378.1.2, %mul68.2
  %add394.1.2 = or disjoint i32 %add386.1.2, %mul76
  %add399.1.2 = or disjoint i32 %add394.1.2, %mul81
  %gep1167.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add399.1.2
  %add386.3 = or disjoint i32 %add378.2, %mul68.3
  %add394.3 = or disjoint i32 %add386.3, %mul76
  %add399.3 = or disjoint i32 %add394.3, %mul81
  %gep1167.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add399.3
  %add386.1.3 = or disjoint i32 %add378.1.2, %mul68.3
  %add394.1.3 = or disjoint i32 %add386.1.3, %mul76
  %add399.1.3 = or disjoint i32 %add394.1.3, %mul81
  %gep1167.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add399.1.3
  %invariant.op = sub nsw i32 %1, %mul439, !dbg !68
  %add443.1.neg = xor i32 %mul439, -1
  %invariant.op1779 = add nsw i32 %1, %add443.1.neg, !dbg !68
  %add443.2 = or disjoint i32 %mul439, 2
  %invariant.op1780 = sub nsw i32 %1, %add443.2, !dbg !68
  %add443.3 = or i32 %and55, 3
  %invariant.op1781 = sub nsw i32 %1, %add443.3, !dbg !68
  %invariant.op1782 = sub nsw i32 %1, %mul439, !dbg !68
  %add443.5.neg = xor i32 %mul439, -1
  %invariant.op1783 = add nsw i32 %1, %add443.5.neg, !dbg !68
  %add443.6 = or disjoint i32 %mul439, 2
  %invariant.op1784 = sub nsw i32 %1, %add443.6, !dbg !68
  %add443.7 = or i32 %and55, 3
  %invariant.op1785 = sub nsw i32 %1, %add443.7, !dbg !68
  %30 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add647
  %31 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add647
  %32 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add647
  %33 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add647
  %34 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul727
  %.idx1147 = shl nuw nsw i32 %xor, 3
  %35 = getelementptr inbounds i8, ptr addrspace(3) %34, i32 %.idx1147
  %add.ptr739 = getelementptr inbounds i8, ptr addrspace(3) %35, i32 6144
  %add728.1 = or disjoint i32 %mul727, 256
  %36 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add728.1
  %xor734.1 = shl nuw nsw i32 %xor, 3
  %.idx1147.1 = xor i32 %xor734.1, 8
  %37 = getelementptr inbounds i8, ptr addrspace(3) %36, i32 %.idx1147.1
  %add.ptr739.1 = getelementptr inbounds i8, ptr addrspace(3) %37, i32 6144
  %add728.2 = or disjoint i32 %mul727, 512
  %38 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add728.2
  %xor734.2 = shl nuw nsw i32 %xor, 3
  %.idx1147.2 = xor i32 %xor734.2, 16
  %39 = getelementptr inbounds i8, ptr addrspace(3) %38, i32 %.idx1147.2
  %add.ptr739.2 = getelementptr inbounds i8, ptr addrspace(3) %39, i32 6144
  %add728.3 = or disjoint i32 %mul727, 768
  %40 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add728.3
  %xor734.3 = shl nuw nsw i32 %xor, 3
  %.idx1147.3 = xor i32 %xor734.3, 24
  %41 = getelementptr inbounds i8, ptr addrspace(3) %40, i32 %.idx1147.3
  %add.ptr739.3 = getelementptr inbounds i8, ptr addrspace(3) %41, i32 6144
  %42 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add647
  %43 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add647
  %44 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add647
  %45 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add647
  %add728.11278 = or disjoint i32 %mul727, 1024
  %46 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add728.11278
  %47 = getelementptr inbounds i8, ptr addrspace(3) %46, i32 %.idx1147
  %add.ptr739.11280 = getelementptr inbounds i8, ptr addrspace(3) %47, i32 6144
  %add728.1.1 = or disjoint i32 %mul727, 1280
  %48 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add728.1.1
  %49 = getelementptr inbounds i8, ptr addrspace(3) %48, i32 %.idx1147.1
  %add.ptr739.1.1 = getelementptr inbounds i8, ptr addrspace(3) %49, i32 6144
  %add728.2.1 = or disjoint i32 %mul727, 1536
  %50 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add728.2.1
  %51 = getelementptr inbounds i8, ptr addrspace(3) %50, i32 %.idx1147.2
  %add.ptr739.2.1 = getelementptr inbounds i8, ptr addrspace(3) %51, i32 6144
  %add728.3.1 = or disjoint i32 %mul727, 1792
  %52 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add728.3.1
  %53 = getelementptr inbounds i8, ptr addrspace(3) %52, i32 %.idx1147.3
  %add.ptr739.3.1 = getelementptr inbounds i8, ptr addrspace(3) %53, i32 6144
  %add765 = or disjoint i32 %mul757, %mul764
  %54 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add765
  %.idx1146 = shl nuw nsw i32 %23, 3
  %55 = getelementptr inbounds i8, ptr addrspace(3) %54, i32 %.idx1146
  %add.ptr776 = getelementptr inbounds i8, ptr addrspace(3) %55, i32 6144
  %add760.1 = or disjoint i32 %mul757, %mul764
  %add765.1 = or disjoint i32 %add760.1, 64
  %56 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add765.1
  %xor771.1 = shl nuw nsw i32 %23, 3
  %.idx1146.1 = xor i32 %xor771.1, 8
  %57 = getelementptr inbounds i8, ptr addrspace(3) %56, i32 %.idx1146.1
  %add.ptr776.1 = getelementptr inbounds i8, ptr addrspace(3) %57, i32 6144
  %add760.2 = or disjoint i32 %mul757, %mul764
  %add765.2 = or disjoint i32 %add760.2, 128
  %58 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add765.2
  %xor771.2 = shl nuw nsw i32 %23, 3
  %.idx1146.2 = xor i32 %xor771.2, 16
  %59 = getelementptr inbounds i8, ptr addrspace(3) %58, i32 %.idx1146.2
  %add.ptr776.2 = getelementptr inbounds i8, ptr addrspace(3) %59, i32 6144
  %add760.3 = or disjoint i32 %mul757, %mul764
  %add765.3 = or disjoint i32 %add760.3, 192
  %60 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add765.3
  %xor771.3 = shl nuw nsw i32 %23, 3
  %.idx1146.3 = xor i32 %xor771.3, 24
  %61 = getelementptr inbounds i8, ptr addrspace(3) %60, i32 %.idx1146.3
  %add.ptr776.3 = getelementptr inbounds i8, ptr addrspace(3) %61, i32 6144
  %add758.1 = or disjoint i32 %mul757, %mul764
  %add765.11282 = or disjoint i32 %add758.1, 1024
  %62 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add765.11282
  %63 = getelementptr inbounds i8, ptr addrspace(3) %62, i32 %.idx1146
  %add.ptr776.11284 = getelementptr inbounds i8, ptr addrspace(3) %63, i32 6144
  %add760.1.1 = or disjoint i32 %mul757, %mul764
  %add765.1.1 = or disjoint i32 %add760.1.1, 1088
  %64 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add765.1.1
  %65 = getelementptr inbounds i8, ptr addrspace(3) %64, i32 %.idx1146.1
  %add.ptr776.1.1 = getelementptr inbounds i8, ptr addrspace(3) %65, i32 6144
  %add760.2.1 = or disjoint i32 %mul757, %mul764
  %add765.2.1 = or disjoint i32 %add760.2.1, 1152
  %66 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add765.2.1
  %67 = getelementptr inbounds i8, ptr addrspace(3) %66, i32 %.idx1146.2
  %add.ptr776.2.1 = getelementptr inbounds i8, ptr addrspace(3) %67, i32 6144
  %add760.3.1 = or disjoint i32 %mul757, %mul764
  %add765.3.1 = or disjoint i32 %add760.3.1, 1216
  %68 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add765.3.1
  %69 = getelementptr inbounds i8, ptr addrspace(3) %68, i32 %.idx1146.3
  %add.ptr776.3.1 = getelementptr inbounds i8, ptr addrspace(3) %69, i32 6144
  %arrayidx123 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %24, !dbg !69
  %70 = load i32, ptr addrspace(1) %arrayidx123, align 4, !dbg !69, !tbaa !30
  %mul124 = shl nsw i32 %70, 4, !dbg !70
  %71 = or disjoint i64 %24, 1, !dbg !71
  %arrayidx123.1 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %71, !dbg !69
  %72 = load i32, ptr addrspace(1) %arrayidx123.1, align 4, !dbg !69, !tbaa !30
  %mul124.1 = shl nsw i32 %72, 4, !dbg !70
  %cmp131 = icmp slt i32 %70, 0, !dbg !72
  %cmp134.not = icmp sgt i32 %mul124, %1
  %or.cond = select i1 %cmp131, i1 true, i1 %cmp134.not, !dbg !73
  br i1 %or.cond, label %lor.lhs.false, label %if.then, !dbg !73

lor.lhs.false:                                    ; preds = %entry
  %cmp136 = icmp slt i32 %72, 0, !dbg !74
  %cmp140.not = icmp sgt i32 %mul124.1, %1
  %or.cond1139 = select i1 %cmp136, i1 true, i1 %cmp140.not, !dbg !75
  br i1 %or.cond1139, label %for.inc807, label %if.then, !dbg !75

if.then:                                          ; preds = %lor.lhs.false, %entry
  fence syncscope("warp") release, !dbg !76
  tail call void @llvm.mxc.barrier.warp(), !dbg !79
  fence syncscope("warp") acquire, !dbg !80
  br i1 %or.cond, label %for.cond271.preheader, label %for.cond154.preheader, !dbg !81

for.cond154.preheader:                            ; preds = %if.then
  %add162 = add nuw nsw i32 %mul124, %shr159
  %conv201 = zext nneg i32 %mul124 to i64
  %.idx = shl nuw nsw i64 %conv201, 7
  %gep1165 = getelementptr i8, ptr addrspace(4) %invariant.gep1164, i64 %.idx, !dbg !82
  %cmp165 = icmp ult i32 %add162, 1024, !dbg !83
  br i1 %cmp165, label %if.then193, label %if.end, !dbg !84

for.cond271.preheader:                            ; preds = %if.then
  store i32 0, ptr addrspace(3) %26, align 16, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.10.0..sroa_idx, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.14.0..sroa_idx, align 8, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.18.0..sroa_idx, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %gep.1, align 16, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.10.0.gep.1.sroa_idx, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.14.0.gep.1.sroa_idx, align 8, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.18.0.gep.1.sroa_idx, align 4, !dbg !85, !tbaa !30
  br label %for.inc342, !dbg !86

if.then193:                                       ; preds = %for.cond154.preheader
  %gep1160 = getelementptr %struct.__half, ptr addrspace(4) %gep1165, i64 %mul195, !dbg !87
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep1160, align 16, !dbg !88, !tbaa !30
  %condval.sroa.5.0.add.ptr208.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1160, i64 4, !dbg !88
  %condval.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr208.sroa_idx, align 4, !dbg !88, !tbaa !30
  %condval.sroa.6.0.add.ptr208.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1160, i64 8, !dbg !88
  %condval.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr208.sroa_idx, align 8, !dbg !88, !tbaa !30
  %condval.sroa.7.0.add.ptr208.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1160, i64 12, !dbg !88
  %condval.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr208.sroa_idx, align 4, !dbg !88, !tbaa !30
  br label %if.end, !dbg !89

if.end:                                           ; preds = %for.cond154.preheader, %if.then193
  %condval.sroa.0.0 = phi i32 [ %condval.sroa.0.0.copyload, %if.then193 ], [ 0, %for.cond154.preheader ], !dbg !90
  %condval.sroa.5.0 = phi i32 [ %condval.sroa.5.0.copyload, %if.then193 ], [ 0, %for.cond154.preheader ], !dbg !90
  %condval.sroa.6.0 = phi i32 [ %condval.sroa.6.0.copyload, %if.then193 ], [ 0, %for.cond154.preheader ], !dbg !90
  %condval.sroa.7.0 = phi i32 [ %condval.sroa.7.0.copyload, %if.then193 ], [ 0, %for.cond154.preheader ], !dbg !90
  store i32 %condval.sroa.0.0, ptr addrspace(3) %add.ptr266, align 16, !dbg !91, !tbaa !30
  store i32 %condval.sroa.5.0, ptr addrspace(3) %condval.sroa.5.0.add.ptr266.sroa_idx, align 4, !dbg !91, !tbaa !30
  store i32 %condval.sroa.6.0, ptr addrspace(3) %condval.sroa.6.0.add.ptr266.sroa_idx, align 8, !dbg !91, !tbaa !30
  store i32 %condval.sroa.7.0, ptr addrspace(3) %condval.sroa.7.0.add.ptr266.sroa_idx, align 4, !dbg !91, !tbaa !30
  %cmp165.1 = icmp ult i32 %add162, 1016, !dbg !83
  br i1 %cmp165.1, label %if.then193.1, label %if.end.1, !dbg !84

if.then193.1:                                     ; preds = %if.end
  %gep1160.1 = getelementptr %struct.__half, ptr addrspace(4) %gep1165, i64 %add198.1, !dbg !87
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep1160.1, align 16, !dbg !88, !tbaa !30
  %condval.sroa.5.0.add.ptr208.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1, i64 4, !dbg !88
  %condval.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr208.sroa_idx.1, align 4, !dbg !88, !tbaa !30
  %condval.sroa.6.0.add.ptr208.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1, i64 8, !dbg !88
  %condval.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr208.sroa_idx.1, align 8, !dbg !88, !tbaa !30
  %condval.sroa.7.0.add.ptr208.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1, i64 12, !dbg !88
  %condval.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr208.sroa_idx.1, align 4, !dbg !88, !tbaa !30
  br label %if.end.1, !dbg !89

if.end.1:                                         ; preds = %if.then193.1, %if.end
  %condval.sroa.0.0.1 = phi i32 [ %condval.sroa.0.0.copyload.1, %if.then193.1 ], [ 0, %if.end ], !dbg !90
  %condval.sroa.5.0.1 = phi i32 [ %condval.sroa.5.0.copyload.1, %if.then193.1 ], [ 0, %if.end ], !dbg !90
  %condval.sroa.6.0.1 = phi i32 [ %condval.sroa.6.0.copyload.1, %if.then193.1 ], [ 0, %if.end ], !dbg !90
  %condval.sroa.7.0.1 = phi i32 [ %condval.sroa.7.0.copyload.1, %if.then193.1 ], [ 0, %if.end ], !dbg !90
  store i32 %condval.sroa.0.0.1, ptr addrspace(3) %add.ptr266.1, align 16, !dbg !91, !tbaa !30
  store i32 %condval.sroa.5.0.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr266.sroa_idx.1, align 4, !dbg !91, !tbaa !30
  store i32 %condval.sroa.6.0.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr266.sroa_idx.1, align 8, !dbg !91, !tbaa !30
  store i32 %condval.sroa.7.0.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr266.sroa_idx.1, align 4, !dbg !91, !tbaa !30
  br label %for.inc342, !dbg !86

for.inc342:                                       ; preds = %if.end.1, %for.cond271.preheader
  %cmp147.1 = icmp slt i32 %72, 0, !dbg !92
  %cmp152.not.1 = icmp sgt i32 %mul124.1, %1
  %or.cond1140.1 = select i1 %cmp147.1, i1 true, i1 %cmp152.not.1, !dbg !81
  br i1 %or.cond1140.1, label %for.cond271.preheader.1, label %for.cond154.preheader.1, !dbg !81

for.cond154.preheader.1:                          ; preds = %for.inc342
  %add162.1 = add nuw nsw i32 %mul124.1, %shr159
  %conv201.1 = zext nneg i32 %mul124.1 to i64
  %.idx.1 = shl nuw nsw i64 %conv201.1, 7
  %gep1165.1 = getelementptr i8, ptr addrspace(4) %invariant.gep1164, i64 %.idx.1, !dbg !82
  %cmp165.11219 = icmp ult i32 %add162.1, 1024, !dbg !83
  br i1 %cmp165.11219, label %if.then193.11229, label %if.end.11239, !dbg !84

if.then193.11229:                                 ; preds = %for.cond154.preheader.1
  %gep1160.11221 = getelementptr %struct.__half, ptr addrspace(4) %gep1165.1, i64 %mul195, !dbg !87
  %condval.sroa.0.0.copyload.11222 = load i32, ptr addrspace(4) %gep1160.11221, align 16, !dbg !88, !tbaa !30
  %condval.sroa.5.0.add.ptr208.sroa_idx.11223 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.11221, i64 4, !dbg !88
  %condval.sroa.5.0.copyload.11224 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr208.sroa_idx.11223, align 4, !dbg !88, !tbaa !30
  %condval.sroa.6.0.add.ptr208.sroa_idx.11225 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.11221, i64 8, !dbg !88
  %condval.sroa.6.0.copyload.11226 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr208.sroa_idx.11225, align 8, !dbg !88, !tbaa !30
  %condval.sroa.7.0.add.ptr208.sroa_idx.11227 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.11221, i64 12, !dbg !88
  %condval.sroa.7.0.copyload.11228 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr208.sroa_idx.11227, align 4, !dbg !88, !tbaa !30
  br label %if.end.11239, !dbg !89

if.end.11239:                                     ; preds = %if.then193.11229, %for.cond154.preheader.1
  %condval.sroa.0.0.11230 = phi i32 [ %condval.sroa.0.0.copyload.11222, %if.then193.11229 ], [ 0, %for.cond154.preheader.1 ], !dbg !90
  %condval.sroa.5.0.11231 = phi i32 [ %condval.sroa.5.0.copyload.11224, %if.then193.11229 ], [ 0, %for.cond154.preheader.1 ], !dbg !90
  %condval.sroa.6.0.11232 = phi i32 [ %condval.sroa.6.0.copyload.11226, %if.then193.11229 ], [ 0, %for.cond154.preheader.1 ], !dbg !90
  %condval.sroa.7.0.11233 = phi i32 [ %condval.sroa.7.0.copyload.11228, %if.then193.11229 ], [ 0, %for.cond154.preheader.1 ], !dbg !90
  store i32 %condval.sroa.0.0.11230, ptr addrspace(3) %add.ptr266.11235, align 16, !dbg !91, !tbaa !30
  store i32 %condval.sroa.5.0.11231, ptr addrspace(3) %condval.sroa.5.0.add.ptr266.sroa_idx.11236, align 4, !dbg !91, !tbaa !30
  store i32 %condval.sroa.6.0.11232, ptr addrspace(3) %condval.sroa.6.0.add.ptr266.sroa_idx.11237, align 8, !dbg !91, !tbaa !30
  store i32 %condval.sroa.7.0.11233, ptr addrspace(3) %condval.sroa.7.0.add.ptr266.sroa_idx.11238, align 4, !dbg !91, !tbaa !30
  %cmp165.1.1 = icmp ult i32 %add162.1, 1016, !dbg !83
  br i1 %cmp165.1.1, label %if.then193.1.1, label %if.end.1.1, !dbg !84

if.then193.1.1:                                   ; preds = %if.end.11239
  %gep1160.1.1 = getelementptr %struct.__half, ptr addrspace(4) %gep1165.1, i64 %add198.1.1, !dbg !87
  %condval.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %gep1160.1.1, align 16, !dbg !88, !tbaa !30
  %condval.sroa.5.0.add.ptr208.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1.1, i64 4, !dbg !88
  %condval.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr208.sroa_idx.1.1, align 4, !dbg !88, !tbaa !30
  %condval.sroa.6.0.add.ptr208.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1.1, i64 8, !dbg !88
  %condval.sroa.6.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr208.sroa_idx.1.1, align 8, !dbg !88, !tbaa !30
  %condval.sroa.7.0.add.ptr208.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1.1, i64 12, !dbg !88
  %condval.sroa.7.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr208.sroa_idx.1.1, align 4, !dbg !88, !tbaa !30
  br label %if.end.1.1, !dbg !89

if.end.1.1:                                       ; preds = %if.then193.1.1, %if.end.11239
  %condval.sroa.0.0.1.1 = phi i32 [ %condval.sroa.0.0.copyload.1.1, %if.then193.1.1 ], [ 0, %if.end.11239 ], !dbg !90
  %condval.sroa.5.0.1.1 = phi i32 [ %condval.sroa.5.0.copyload.1.1, %if.then193.1.1 ], [ 0, %if.end.11239 ], !dbg !90
  %condval.sroa.6.0.1.1 = phi i32 [ %condval.sroa.6.0.copyload.1.1, %if.then193.1.1 ], [ 0, %if.end.11239 ], !dbg !90
  %condval.sroa.7.0.1.1 = phi i32 [ %condval.sroa.7.0.copyload.1.1, %if.then193.1.1 ], [ 0, %if.end.11239 ], !dbg !90
  store i32 %condval.sroa.0.0.1.1, ptr addrspace(3) %add.ptr266.1.1, align 16, !dbg !91, !tbaa !30
  store i32 %condval.sroa.5.0.1.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr266.sroa_idx.1.1, align 4, !dbg !91, !tbaa !30
  store i32 %condval.sroa.6.0.1.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr266.sroa_idx.1.1, align 8, !dbg !91, !tbaa !30
  store i32 %condval.sroa.7.0.1.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr266.sroa_idx.1.1, align 4, !dbg !91, !tbaa !30
  br label %for.inc342.1, !dbg !86

for.cond271.preheader.1:                          ; preds = %for.inc342
  store i32 0, ptr addrspace(3) %29, align 16, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.10.0..sroa_idx1598, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.14.0..sroa_idx1602, align 8, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.18.0..sroa_idx1606, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %gep.1.1, align 16, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.10.0.gep.1.1.sroa_idx, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.14.0.gep.1.1.sroa_idx, align 8, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.18.0.gep.1.1.sroa_idx, align 4, !dbg !85, !tbaa !30
  br label %for.inc342.1, !dbg !86

for.inc342.1:                                     ; preds = %for.cond271.preheader.1, %if.end.1.1
  fence syncscope("warp") release, !dbg !93
  tail call void @llvm.mxc.barrier.warp(), !dbg !96
  fence syncscope("warp") acquire, !dbg !97
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %gep1167, align 8, !dbg !98
  %73 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %11, <4 x float> zeroinitializer), !dbg !99
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %gep1167.1, align 8, !dbg !98
  %74 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %11, <4 x float> zeroinitializer), !dbg !99
  %k_local.sroa.0.0.copyload.11250 = load <4 x half>, ptr addrspace(3) %gep1167.11249, align 8, !dbg !98
  %75 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11250, <4 x half> %13, <4 x float> %73), !dbg !99
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %gep1167.1.1, align 8, !dbg !98
  %76 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %13, <4 x float> %74), !dbg !99
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %gep1167.2, align 8, !dbg !98
  %77 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %15, <4 x float> %75), !dbg !99
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %gep1167.1.2, align 8, !dbg !98
  %78 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %15, <4 x float> %76), !dbg !99
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %gep1167.3, align 8, !dbg !98
  %79 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %17, <4 x float> %77), !dbg !99
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %gep1167.1.3, align 8, !dbg !98
  %80 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %17, <4 x float> %78), !dbg !99
  %cmp447.not = icmp sgt i32 %mul124, %invariant.op
  %or.cond1786 = select i1 %or.cond, i1 true, i1 %cmp447.not, !dbg !100
  %scores.sroa.0.0.vec.extract = extractelement <4 x float> %79, i64 0, !dbg !100
  %condval_1.0 = select i1 %or.cond1786, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract, !dbg !100
  %cmp447.not.1 = icmp sgt i32 %mul124, %invariant.op1779
  %or.cond1787 = select i1 %or.cond, i1 true, i1 %cmp447.not.1, !dbg !100
  %scores.sroa.0.4.vec.extract = extractelement <4 x float> %79, i64 1, !dbg !100
  %condval_1.0.1 = select i1 %or.cond1787, float 0xFFF0000000000000, float %scores.sroa.0.4.vec.extract, !dbg !100
  %cmp447.not.2 = icmp sgt i32 %mul124, %invariant.op1780
  %or.cond1788 = select i1 %or.cond, i1 true, i1 %cmp447.not.2, !dbg !100
  %scores.sroa.0.8.vec.extract = extractelement <4 x float> %79, i64 2, !dbg !100
  %condval_1.0.2 = select i1 %or.cond1788, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract, !dbg !100
  %cmp447.not.3 = icmp sgt i32 %mul124, %invariant.op1781
  %or.cond1789 = select i1 %or.cond, i1 true, i1 %cmp447.not.3, !dbg !100
  %scores.sroa.0.12.vec.extract = extractelement <4 x float> %79, i64 3, !dbg !100
  %condval_1.0.3 = select i1 %or.cond1789, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract, !dbg !100
  %cmp447.not.4 = icmp sgt i32 %mul124.1, %invariant.op1782
  %or.cond1790 = select i1 %or.cond1140.1, i1 true, i1 %cmp447.not.4, !dbg !100
  %scores.sroa.42.16.vec.extract = extractelement <4 x float> %80, i64 0, !dbg !100
  %condval_1.0.4 = select i1 %or.cond1790, float 0xFFF0000000000000, float %scores.sroa.42.16.vec.extract, !dbg !100
  %cmp447.not.5 = icmp sgt i32 %mul124.1, %invariant.op1783
  %or.cond1791 = select i1 %or.cond1140.1, i1 true, i1 %cmp447.not.5, !dbg !100
  %scores.sroa.42.20.vec.extract = extractelement <4 x float> %80, i64 1, !dbg !100
  %condval_1.0.5 = select i1 %or.cond1791, float 0xFFF0000000000000, float %scores.sroa.42.20.vec.extract, !dbg !100
  %cmp447.not.6 = icmp sgt i32 %mul124.1, %invariant.op1784
  %or.cond1792 = select i1 %or.cond1140.1, i1 true, i1 %cmp447.not.6, !dbg !100
  %scores.sroa.42.24.vec.extract = extractelement <4 x float> %80, i64 2, !dbg !100
  %condval_1.0.6 = select i1 %or.cond1792, float 0xFFF0000000000000, float %scores.sroa.42.24.vec.extract, !dbg !100
  %cmp447.not.7 = icmp sgt i32 %mul124.1, %invariant.op1785
  %or.cond1793 = select i1 %or.cond1140.1, i1 true, i1 %cmp447.not.7, !dbg !100
  %scores.sroa.42.28.vec.extract = extractelement <4 x float> %80, i64 3, !dbg !100
  %condval_1.0.7 = select i1 %or.cond1793, float 0xFFF0000000000000, float %scores.sroa.42.28.vec.extract, !dbg !100
  %81 = tail call contract noundef float @llvm.maxnum.f32(float %condval_1.0, float 0xFFF0000000000000), !dbg !101
  %82 = tail call contract noundef float @llvm.maxnum.f32(float %81, float %condval_1.0.4), !dbg !101
  %83 = tail call contract noundef float @llvm.maxnum.f32(float %82, float %condval_1.0.1), !dbg !101
  %84 = tail call contract noundef float @llvm.maxnum.f32(float %83, float %condval_1.0.5), !dbg !101
  %85 = tail call contract noundef float @llvm.maxnum.f32(float %84, float %condval_1.0.2), !dbg !101
  %86 = tail call contract noundef float @llvm.maxnum.f32(float %85, float %condval_1.0.6), !dbg !101
  %87 = tail call contract noundef float @llvm.maxnum.f32(float %86, float %condval_1.0.3), !dbg !101
  %88 = tail call contract noundef float @llvm.maxnum.f32(float %87, float %condval_1.0.7), !dbg !101
  %89 = bitcast float %88 to i32, !dbg !105
  %90 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !114
  %91 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %90) #11, !dbg !119
  %xor.i.i.i = xor i32 %91, 32, !dbg !120
  %92 = and i32 %91, -64, !dbg !121
  %and.i.i.i = add nsw i32 %92, 64, !dbg !121
  %cmp.not.i.i.i = icmp slt i32 %xor.i.i.i, %and.i.i.i, !dbg !122
  %cond.i.i.i = select i1 %cmp.not.i.i.i, i32 %xor.i.i.i, i32 %91, !dbg !123
  %shl.i.i.i = shl i32 %cond.i.i.i, 2, !dbg !124
  %93 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i, i32 %89), !dbg !125
  %94 = bitcast i32 %93 to float, !dbg !126
  %95 = tail call contract noundef float @llvm.maxnum.f32(float %88, float %94), !dbg !127
  %96 = bitcast float %95 to i32, !dbg !135
  %97 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !140
  %98 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %97) #11, !dbg !143
  %xor.i.i.i.i = xor i32 %98, 16, !dbg !144
  %99 = and i32 %98, -64, !dbg !145
  %and.i.i.i.i = add nsw i32 %99, 64, !dbg !145
  %cmp.not.i.i.i.i = icmp slt i32 %xor.i.i.i.i, %and.i.i.i.i, !dbg !146
  %cond.i.i.i.i = select i1 %cmp.not.i.i.i.i, i32 %xor.i.i.i.i, i32 %98, !dbg !147
  %shl.i.i.i.i = shl i32 %cond.i.i.i.i, 2, !dbg !148
  %100 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i, i32 %96), !dbg !149
  %101 = bitcast i32 %100 to float, !dbg !150
  %102 = tail call contract noundef float @llvm.maxnum.f32(float %95, float %101), !dbg !151
  %sub = fadd contract float %102, 0x7FF0000000000000, !dbg !155
  %mul487 = fmul contract float %sub, 0x3FC7154760000000, !dbg !156
  %cmp488 = fcmp contract ogt float %mul487, 7.000000e+00, !dbg !157
  %sub492 = fsub contract float 0xFFF0000000000000, %102
  %mul493 = fmul contract float %sub492, 0x3FC7154760000000
  %cmp.i.i = fcmp contract olt float %mul493, -1.260000e+02
  %cond.i.i = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00
  %add.i.i = fadd contract float %mul493, %cond.i.i
  %103 = tail call contract float @llvm.exp2.f32(float %add.i.i)
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i = fmul contract float %cond2.i.i, %103
  %normalizer.sroa.0.1 = select i1 %cmp488, float %102, float 0xFFF0000000000000, !dbg !158
  %sub508 = fsub contract float %condval_1.0, %normalizer.sroa.0.1, !dbg !159
  %mul509 = fmul contract float %sub508, 0x3FC7154760000000, !dbg !160
  %add510 = fadd contract float %mul509, 8.000000e+00, !dbg !161
  %cmp.i.i1102 = fcmp contract olt float %add510, -1.260000e+02, !dbg !162
  %cond.i.i1103 = select contract i1 %cmp.i.i1102, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104 = fadd contract float %add510, %cond.i.i1103, !dbg !162
  %104 = tail call contract float @llvm.exp2.f32(float %add.i.i1104), !dbg !162
  %cond2.i.i1105 = select contract i1 %cmp.i.i1102, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106 = fmul contract float %cond2.i.i1105, %104, !dbg !162
  %sub508.1 = fsub contract float %condval_1.0.1, %normalizer.sroa.0.1, !dbg !159
  %mul509.1 = fmul contract float %sub508.1, 0x3FC7154760000000, !dbg !160
  %add510.1 = fadd contract float %mul509.1, 8.000000e+00, !dbg !161
  %cmp.i.i1102.1 = fcmp contract olt float %add510.1, -1.260000e+02, !dbg !162
  %cond.i.i1103.1 = select contract i1 %cmp.i.i1102.1, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.1 = fadd contract float %add510.1, %cond.i.i1103.1, !dbg !162
  %105 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.1), !dbg !162
  %cond2.i.i1105.1 = select contract i1 %cmp.i.i1102.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.1 = fmul contract float %cond2.i.i1105.1, %105, !dbg !162
  %sub508.2 = fsub contract float %condval_1.0.2, %normalizer.sroa.0.1, !dbg !159
  %mul509.2 = fmul contract float %sub508.2, 0x3FC7154760000000, !dbg !160
  %add510.2 = fadd contract float %mul509.2, 8.000000e+00, !dbg !161
  %cmp.i.i1102.2 = fcmp contract olt float %add510.2, -1.260000e+02, !dbg !162
  %cond.i.i1103.2 = select contract i1 %cmp.i.i1102.2, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.2 = fadd contract float %add510.2, %cond.i.i1103.2, !dbg !162
  %106 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.2), !dbg !162
  %cond2.i.i1105.2 = select contract i1 %cmp.i.i1102.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.2 = fmul contract float %cond2.i.i1105.2, %106, !dbg !162
  %sub508.3 = fsub contract float %condval_1.0.3, %normalizer.sroa.0.1, !dbg !159
  %mul509.3 = fmul contract float %sub508.3, 0x3FC7154760000000, !dbg !160
  %add510.3 = fadd contract float %mul509.3, 8.000000e+00, !dbg !161
  %cmp.i.i1102.3 = fcmp contract olt float %add510.3, -1.260000e+02, !dbg !162
  %cond.i.i1103.3 = select contract i1 %cmp.i.i1102.3, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.3 = fadd contract float %add510.3, %cond.i.i1103.3, !dbg !162
  %107 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.3), !dbg !162
  %cond2.i.i1105.3 = select contract i1 %cmp.i.i1102.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.3 = fmul contract float %cond2.i.i1105.3, %107, !dbg !162
  %sub508.4 = fsub contract float %condval_1.0.4, %normalizer.sroa.0.1, !dbg !159
  %mul509.4 = fmul contract float %sub508.4, 0x3FC7154760000000, !dbg !160
  %add510.4 = fadd contract float %mul509.4, 8.000000e+00, !dbg !161
  %cmp.i.i1102.4 = fcmp contract olt float %add510.4, -1.260000e+02, !dbg !162
  %cond.i.i1103.4 = select contract i1 %cmp.i.i1102.4, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.4 = fadd contract float %add510.4, %cond.i.i1103.4, !dbg !162
  %108 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.4), !dbg !162
  %cond2.i.i1105.4 = select contract i1 %cmp.i.i1102.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.4 = fmul contract float %cond2.i.i1105.4, %108, !dbg !162
  %sub508.5 = fsub contract float %condval_1.0.5, %normalizer.sroa.0.1, !dbg !159
  %mul509.5 = fmul contract float %sub508.5, 0x3FC7154760000000, !dbg !160
  %add510.5 = fadd contract float %mul509.5, 8.000000e+00, !dbg !161
  %cmp.i.i1102.5 = fcmp contract olt float %add510.5, -1.260000e+02, !dbg !162
  %cond.i.i1103.5 = select contract i1 %cmp.i.i1102.5, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.5 = fadd contract float %add510.5, %cond.i.i1103.5, !dbg !162
  %109 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.5), !dbg !162
  %cond2.i.i1105.5 = select contract i1 %cmp.i.i1102.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.5 = fmul contract float %cond2.i.i1105.5, %109, !dbg !162
  %sub508.6 = fsub contract float %condval_1.0.6, %normalizer.sroa.0.1, !dbg !159
  %mul509.6 = fmul contract float %sub508.6, 0x3FC7154760000000, !dbg !160
  %add510.6 = fadd contract float %mul509.6, 8.000000e+00, !dbg !161
  %cmp.i.i1102.6 = fcmp contract olt float %add510.6, -1.260000e+02, !dbg !162
  %cond.i.i1103.6 = select contract i1 %cmp.i.i1102.6, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.6 = fadd contract float %add510.6, %cond.i.i1103.6, !dbg !162
  %110 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.6), !dbg !162
  %cond2.i.i1105.6 = select contract i1 %cmp.i.i1102.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.6 = fmul contract float %cond2.i.i1105.6, %110, !dbg !162
  %sub508.7 = fsub contract float %condval_1.0.7, %normalizer.sroa.0.1, !dbg !159
  %mul509.7 = fmul contract float %sub508.7, 0x3FC7154760000000, !dbg !160
  %add510.7 = fadd contract float %mul509.7, 8.000000e+00, !dbg !161
  %cmp.i.i1102.7 = fcmp contract olt float %add510.7, -1.260000e+02, !dbg !162
  %cond.i.i1103.7 = select contract i1 %cmp.i.i1102.7, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.7 = fadd contract float %add510.7, %cond.i.i1103.7, !dbg !162
  %111 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.7), !dbg !162
  %cond2.i.i1105.7 = select contract i1 %cmp.i.i1102.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.7 = fmul contract float %cond2.i.i1105.7, %111, !dbg !162
  %add529 = fadd contract float %mul.i.i1106, 0.000000e+00, !dbg !165
  %add529.1 = fadd contract float %add529, %mul.i.i1106.4, !dbg !165
  %add529.2 = fadd contract float %add529.1, %mul.i.i1106.1, !dbg !165
  %add529.3 = fadd contract float %add529.2, %mul.i.i1106.5, !dbg !165
  %add529.4 = fadd contract float %add529.3, %mul.i.i1106.2, !dbg !165
  %add529.5 = fadd contract float %add529.4, %mul.i.i1106.6, !dbg !165
  %add529.6 = fadd contract float %add529.5, %mul.i.i1106.3, !dbg !165
  %add529.7 = fadd contract float %add529.6, %mul.i.i1106.7, !dbg !165
  %rescale.sroa.0.0 = select i1 %cmp488, float %mul.i.i, float 1.000000e+00, !dbg !158
  %112 = bitcast float %add529.7 to i32, !dbg !166
  %113 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !171
  %114 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %113) #11, !dbg !174
  %xor.i.i.i1107 = xor i32 %114, 32, !dbg !175
  %115 = and i32 %114, -64, !dbg !176
  %and.i.i.i1108 = add nsw i32 %115, 64, !dbg !176
  %cmp.not.i.i.i1109 = icmp slt i32 %xor.i.i.i1107, %and.i.i.i1108, !dbg !177
  %cond.i.i.i1110 = select i1 %cmp.not.i.i.i1109, i32 %xor.i.i.i1107, i32 %114, !dbg !178
  %shl.i.i.i1111 = shl i32 %cond.i.i.i1110, 2, !dbg !179
  %116 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i1111, i32 %112), !dbg !180
  %117 = bitcast i32 %116 to float, !dbg !181
  %add.i.i1112 = fadd contract float %add529.7, %117, !dbg !182
  %118 = bitcast float %add.i.i1112 to i32, !dbg !185
  %119 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !190
  %120 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %119) #11, !dbg !193
  %xor.i.i.i.i1113 = xor i32 %120, 16, !dbg !194
  %121 = and i32 %120, -64, !dbg !195
  %and.i.i.i.i1114 = add nsw i32 %121, 64, !dbg !195
  %cmp.not.i.i.i.i1115 = icmp slt i32 %xor.i.i.i.i1113, %and.i.i.i.i1114, !dbg !196
  %cond.i.i.i.i1116 = select i1 %cmp.not.i.i.i.i1115, i32 %xor.i.i.i.i1113, i32 %120, !dbg !197
  %shl.i.i.i.i1117 = shl i32 %cond.i.i.i.i1116, 2, !dbg !198
  %122 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i1117, i32 %118), !dbg !199
  %123 = bitcast i32 %122 to float, !dbg !200
  %cmp538 = fcmp contract une float %rescale.sroa.0.0, 1.000000e+00, !dbg !201
  %mul542 = fmul contract float %rescale.sroa.0.0, 0.000000e+00, !dbg !202
  %denominator.sroa.0.1 = select i1 %cmp538, float %mul542, float 0.000000e+00, !dbg !202
  %124 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !203
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !203, !noalias !211
  %125 = fptrunc float %mul.i.i1106 to half, !dbg !203
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %124), !dbg !203, !noalias !211
  %126 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !216, !noalias !211
  %127 = fptrunc float %mul.i.i1106.1 to half, !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %126), !dbg !216, !noalias !211
  %128 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !218, !noalias !222
  %129 = fptrunc float %mul.i.i1106.2 to half, !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %128), !dbg !218, !noalias !222
  %130 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !222
  %131 = fptrunc float %mul.i.i1106.3 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %130), !dbg !227, !noalias !222
  %132 = insertelement <4 x half> poison, half %125, i64 0, !dbg !229
  %133 = insertelement <4 x half> %132, half %127, i64 1, !dbg !229
  %134 = insertelement <4 x half> %133, half %129, i64 2, !dbg !229
  %135 = insertelement <4 x half> %134, half %131, i64 3, !dbg !229
  %136 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !203
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !203, !noalias !211
  %137 = fptrunc float %mul.i.i1106.4 to half, !dbg !203
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %136), !dbg !203, !noalias !211
  %138 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !216, !noalias !211
  %139 = fptrunc float %mul.i.i1106.5 to half, !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %138), !dbg !216, !noalias !211
  %140 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !218, !noalias !222
  %141 = fptrunc float %mul.i.i1106.6 to half, !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %140), !dbg !218, !noalias !222
  %142 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !222
  %143 = fptrunc float %mul.i.i1106.7 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %142), !dbg !227, !noalias !222
  %144 = insertelement <4 x half> poison, half %137, i64 0, !dbg !229
  %145 = insertelement <4 x half> %144, half %139, i64 1, !dbg !229
  %146 = insertelement <4 x half> %145, half %141, i64 2, !dbg !229
  %147 = insertelement <4 x half> %146, half %143, i64 3, !dbg !229
  %add.i.i.i = fadd contract float %add.i.i1112, %123, !dbg !230
  %add547 = fadd contract float %denominator.sroa.0.1, %add.i.i.i, !dbg !232
  br i1 %cmp538, label %for.body580.preheader, label %if.end590, !dbg !233

for.body580.preheader:                            ; preds = %for.inc342.1
  %mul584 = fmul contract float %rescale.sroa.0.0, 0.000000e+00, !dbg !234
  %output_acc.sroa.0.0.vec.insert1625 = insertelement <4 x float> poison, float %mul584, i64 0, !dbg !235
  %mul584.1 = fmul contract float %rescale.sroa.0.0, 0.000000e+00, !dbg !234
  %output_acc.sroa.0.4.vec.insert1634 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert1625, float %mul584.1, i64 1, !dbg !235
  %mul584.2 = fmul contract float %rescale.sroa.0.0, 0.000000e+00, !dbg !234
  %output_acc.sroa.0.8.vec.insert1643 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert1634, float %mul584.2, i64 2, !dbg !235
  %mul584.3 = fmul contract float %rescale.sroa.0.0, 0.000000e+00, !dbg !234
  %output_acc.sroa.0.12.vec.insert1652 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert1643, float %mul584.3, i64 3, !dbg !235
  %mul584.4 = fmul contract float %rescale.sroa.0.0, 0.000000e+00, !dbg !234
  %output_acc.sroa.30.16.vec.insert1663 = insertelement <4 x float> poison, float %mul584.4, i64 0, !dbg !235
  %mul584.5 = fmul contract float %rescale.sroa.0.0, 0.000000e+00, !dbg !234
  %output_acc.sroa.30.20.vec.insert1672 = insertelement <4 x float> %output_acc.sroa.30.16.vec.insert1663, float %mul584.5, i64 1, !dbg !235
  %mul584.6 = fmul contract float %rescale.sroa.0.0, 0.000000e+00, !dbg !234
  %output_acc.sroa.30.24.vec.insert1681 = insertelement <4 x float> %output_acc.sroa.30.20.vec.insert1672, float %mul584.6, i64 2, !dbg !235
  %mul584.7 = fmul contract float %rescale.sroa.0.0, 0.000000e+00, !dbg !234
  %output_acc.sroa.30.28.vec.insert1690 = insertelement <4 x float> %output_acc.sroa.30.24.vec.insert1681, float %mul584.7, i64 3, !dbg !235
  %mul584.8 = fmul contract float %rescale.sroa.0.0, 0.000000e+00, !dbg !234
  %output_acc.sroa.58.32.vec.insert1701 = insertelement <4 x float> poison, float %mul584.8, i64 0, !dbg !235
  %mul584.9 = fmul contract float %rescale.sroa.0.0, 0.000000e+00, !dbg !234
  %output_acc.sroa.58.36.vec.insert1710 = insertelement <4 x float> %output_acc.sroa.58.32.vec.insert1701, float %mul584.9, i64 1, !dbg !235
  %mul584.10 = fmul contract float %rescale.sroa.0.0, 0.000000e+00, !dbg !234
  %output_acc.sroa.58.40.vec.insert1719 = insertelement <4 x float> %output_acc.sroa.58.36.vec.insert1710, float %mul584.10, i64 2, !dbg !235
  %mul584.11 = fmul contract float %rescale.sroa.0.0, 0.000000e+00, !dbg !234
  %output_acc.sroa.58.44.vec.insert1728 = insertelement <4 x float> %output_acc.sroa.58.40.vec.insert1719, float %mul584.11, i64 3, !dbg !235
  %mul584.12 = fmul contract float %rescale.sroa.0.0, 0.000000e+00, !dbg !234
  %output_acc.sroa.86.48.vec.insert1739 = insertelement <4 x float> poison, float %mul584.12, i64 0, !dbg !235
  %mul584.13 = fmul contract float %rescale.sroa.0.0, 0.000000e+00, !dbg !234
  %output_acc.sroa.86.52.vec.insert1748 = insertelement <4 x float> %output_acc.sroa.86.48.vec.insert1739, float %mul584.13, i64 1, !dbg !235
  %mul584.14 = fmul contract float %rescale.sroa.0.0, 0.000000e+00, !dbg !234
  %output_acc.sroa.86.56.vec.insert1757 = insertelement <4 x float> %output_acc.sroa.86.52.vec.insert1748, float %mul584.14, i64 2, !dbg !235
  %mul584.15 = fmul contract float %rescale.sroa.0.0, 0.000000e+00, !dbg !234
  %output_acc.sroa.86.60.vec.insert1766 = insertelement <4 x float> %output_acc.sroa.86.56.vec.insert1757, float %mul584.15, i64 3, !dbg !235
  br label %if.end590, !dbg !236

if.end590:                                        ; preds = %for.body580.preheader, %for.inc342.1
  %output_acc.sroa.86.1 = phi <4 x float> [ %output_acc.sroa.86.60.vec.insert1766, %for.body580.preheader ], [ zeroinitializer, %for.inc342.1 ], !dbg !90
  %output_acc.sroa.58.1 = phi <4 x float> [ %output_acc.sroa.58.44.vec.insert1728, %for.body580.preheader ], [ zeroinitializer, %for.inc342.1 ], !dbg !90
  %output_acc.sroa.30.1 = phi <4 x float> [ %output_acc.sroa.30.28.vec.insert1690, %for.body580.preheader ], [ zeroinitializer, %for.inc342.1 ], !dbg !90
  %output_acc.sroa.0.1 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1652, %for.body580.preheader ], [ zeroinitializer, %for.inc342.1 ], !dbg !90
  br i1 %or.cond, label %if.end702, label %for.cond604.preheader, !dbg !237

for.cond604.preheader:                            ; preds = %if.end590
  %add622 = add nuw nsw i32 %mul124, %mul439
  %conv645 = zext nneg i32 %mul124 to i64
  %shr613 = lshr exact i32 %mul124, 2, !dbg !238
  %add614 = add nuw nsw i32 %shr613, %shr730, !dbg !239
  %cmp615 = icmp ult i32 %add614, 256, !dbg !240
  br i1 %cmp615, label %if.then634, label %if.end670, !dbg !241

if.then634:                                       ; preds = %for.cond604.preheader
  %.idx1202 = shl nuw nsw i64 %conv645, 7, !dbg !242
  %148 = getelementptr inbounds i8, ptr addrspace(4) %30, i64 %.idx1202, !dbg !242
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %148, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %148, i64 4, !dbg !243
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx, align 4, !dbg !243, !tbaa !30
  br label %if.end670, !dbg !244

if.end670:                                        ; preds = %for.cond604.preheader, %if.then634
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then634 ], [ 0, %for.cond604.preheader ], !dbg !90
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then634 ], [ 0, %for.cond604.preheader ], !dbg !90
  %shr613.1 = lshr exact i32 %mul124, 2, !dbg !238
  %add614.1 = add nuw nsw i32 %shr613.1, %shr730, !dbg !239
  %cmp615.1 = icmp ult i32 %add614.1, 256, !dbg !240
  %149 = icmp sgt i32 %add622, -2
  %or.cond1198.1 = select i1 %cmp615.1, i1 %149, i1 false, !dbg !241
  br i1 %or.cond1198.1, label %if.then634.1, label %if.end670.1, !dbg !241

if.then634.1:                                     ; preds = %if.end670
  %.idx1202.1 = shl nuw nsw i64 %conv645, 7, !dbg !242
  %150 = getelementptr inbounds i8, ptr addrspace(4) %31, i64 %.idx1202.1, !dbg !242
  %add.ptr656.1 = getelementptr inbounds i8, ptr addrspace(4) %150, i64 128, !dbg !242
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %add.ptr656.1, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %150, i64 132, !dbg !243
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.1, align 4, !dbg !243, !tbaa !30
  br label %if.end670.1, !dbg !244

if.end670.1:                                      ; preds = %if.then634.1, %if.end670
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then634.1 ], [ 0, %if.end670 ], !dbg !90
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then634.1 ], [ 0, %if.end670 ], !dbg !90
  %shr613.2 = lshr exact i32 %mul124, 2, !dbg !238
  %add614.2 = add nuw nsw i32 %shr613.2, %shr730, !dbg !239
  %cmp615.2 = icmp ult i32 %add614.2, 256, !dbg !240
  %151 = icmp sgt i32 %add622, -3
  %or.cond1198.2 = select i1 %cmp615.2, i1 %151, i1 false, !dbg !241
  br i1 %or.cond1198.2, label %if.then634.2, label %if.end670.2, !dbg !241

if.then634.2:                                     ; preds = %if.end670.1
  %.idx1202.2 = shl nuw nsw i64 %conv645, 7, !dbg !242
  %152 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 %.idx1202.2, !dbg !242
  %add.ptr656.2 = getelementptr inbounds i8, ptr addrspace(4) %152, i64 256, !dbg !242
  %condval_2.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %add.ptr656.2, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %152, i64 260, !dbg !243
  %condval_2.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.2, align 4, !dbg !243, !tbaa !30
  br label %if.end670.2, !dbg !244

if.end670.2:                                      ; preds = %if.then634.2, %if.end670.1
  %condval_2.sroa.5.0.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2, %if.then634.2 ], [ 0, %if.end670.1 ], !dbg !90
  %condval_2.sroa.0.0.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2, %if.then634.2 ], [ 0, %if.end670.1 ], !dbg !90
  %shr613.3 = lshr exact i32 %mul124, 2, !dbg !238
  %add614.3 = add nuw nsw i32 %shr613.3, %shr730, !dbg !239
  %cmp615.3 = icmp ult i32 %add614.3, 256, !dbg !240
  %153 = icmp sgt i32 %add622, -4
  %or.cond1198.3 = select i1 %cmp615.3, i1 %153, i1 false, !dbg !241
  br i1 %or.cond1198.3, label %if.then634.3, label %if.end702, !dbg !241

if.then634.3:                                     ; preds = %if.end670.2
  %.idx1202.3 = shl nuw nsw i64 %conv645, 7, !dbg !242
  %154 = getelementptr inbounds i8, ptr addrspace(4) %33, i64 %.idx1202.3, !dbg !242
  %add.ptr656.3 = getelementptr inbounds i8, ptr addrspace(4) %154, i64 384, !dbg !242
  %condval_2.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %add.ptr656.3, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %154, i64 388, !dbg !243
  %condval_2.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.3, align 4, !dbg !243, !tbaa !30
  br label %if.end702, !dbg !244

if.end702:                                        ; preds = %if.end670.2, %if.then634.3, %if.end590
  %v_tile_local.sroa.58.0 = phi i32 [ 0, %if.end590 ], [ %condval_2.sroa.5.0.copyload.3, %if.then634.3 ], [ 0, %if.end670.2 ], !dbg !90
  %v_tile_local.sroa.50.0 = phi i32 [ 0, %if.end590 ], [ %condval_2.sroa.0.0.copyload.3, %if.then634.3 ], [ 0, %if.end670.2 ], !dbg !90
  %v_tile_local.sroa.42.0 = phi i32 [ 0, %if.end590 ], [ %condval_2.sroa.5.0.2, %if.then634.3 ], [ %condval_2.sroa.5.0.2, %if.end670.2 ], !dbg !90
  %v_tile_local.sroa.34.0 = phi i32 [ 0, %if.end590 ], [ %condval_2.sroa.0.0.2, %if.then634.3 ], [ %condval_2.sroa.0.0.2, %if.end670.2 ], !dbg !90
  %v_tile_local.sroa.26.0 = phi i32 [ 0, %if.end590 ], [ %condval_2.sroa.5.0.1, %if.then634.3 ], [ %condval_2.sroa.5.0.1, %if.end670.2 ], !dbg !90
  %v_tile_local.sroa.18.0 = phi i32 [ 0, %if.end590 ], [ %condval_2.sroa.0.0.1, %if.then634.3 ], [ %condval_2.sroa.0.0.1, %if.end670.2 ], !dbg !90
  %v_tile_local.sroa.10.0 = phi i32 [ 0, %if.end590 ], [ %condval_2.sroa.5.0, %if.then634.3 ], [ %condval_2.sroa.5.0, %if.end670.2 ], !dbg !90
  %v_tile_local.sroa.0.0 = phi i32 [ 0, %if.end590 ], [ %condval_2.sroa.0.0, %if.then634.3 ], [ %condval_2.sroa.0.0, %if.end670.2 ], !dbg !90
  %155 = and i32 %v_tile_local.sroa.50.0, 65535, !dbg !245
  %v_column_local.sroa.34.0.insert.ext = zext nneg i32 %155 to i64, !dbg !245
  %v_column_local.sroa.34.0.insert.shift = shl nuw i64 %v_column_local.sroa.34.0.insert.ext, 48, !dbg !245
  %156 = and i32 %v_tile_local.sroa.34.0, 65535, !dbg !245
  %v_column_local.sroa.26.0.insert.ext = zext nneg i32 %156 to i64, !dbg !245
  %v_column_local.sroa.26.0.insert.shift = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert = or disjoint i64 %v_column_local.sroa.34.0.insert.shift, %v_column_local.sroa.26.0.insert.shift, !dbg !245
  %157 = shl i32 %v_tile_local.sroa.18.0, 16, !dbg !245
  %v_column_local.sroa.18.0.insert.shift = zext i32 %157 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert = or disjoint i64 %v_column_local.sroa.26.0.insert.insert, %v_column_local.sroa.18.0.insert.shift, !dbg !245
  %158 = and i32 %v_tile_local.sroa.0.0, 65535, !dbg !245
  %v_column_local.sroa.0.0.insert.ext = zext nneg i32 %158 to i64, !dbg !245
  %v_column_local.sroa.0.0.insert.insert = or disjoint i64 %v_column_local.sroa.18.0.insert.insert, %v_column_local.sroa.0.0.insert.ext, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr739, align 8, !dbg !245
  %v_tile_local.sroa.0.2.extract.shift = lshr i32 %v_tile_local.sroa.0.0, 16, !dbg !246
  %v_tile_local.sroa.0.2.extract.trunc = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift to i64, !dbg !246
  %v_tile_local.sroa.18.10.extract.shift = and i32 %v_tile_local.sroa.18.0, -65536, !dbg !245
  %v_tile_local.sroa.34.18.extract.shift = lshr i32 %v_tile_local.sroa.34.0, 16, !dbg !246
  %v_tile_local.sroa.34.18.extract.trunc = zext nneg i32 %v_tile_local.sroa.34.18.extract.shift to i64, !dbg !246
  %v_tile_local.sroa.50.26.extract.shift = lshr i32 %v_tile_local.sroa.50.0, 16, !dbg !246
  %v_tile_local.sroa.50.26.extract.trunc = zext nneg i32 %v_tile_local.sroa.50.26.extract.shift to i64, !dbg !246
  %v_column_local.sroa.34.0.insert.shift1407 = shl nuw i64 %v_tile_local.sroa.50.26.extract.trunc, 48, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1372 = shl nuw nsw i64 %v_tile_local.sroa.34.18.extract.trunc, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1374 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1407, %v_column_local.sroa.26.0.insert.shift1372, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1337 = zext i32 %v_tile_local.sroa.18.10.extract.shift to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1339 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1374, %v_column_local.sroa.18.0.insert.shift1337, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1310 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1339, %v_tile_local.sroa.0.2.extract.trunc, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1310, ptr addrspace(3) %add.ptr739.1, align 8, !dbg !245
  %159 = and i32 %v_tile_local.sroa.58.0, 65535, !dbg !245
  %v_column_local.sroa.34.0.insert.ext1411 = zext nneg i32 %159 to i64, !dbg !245
  %v_column_local.sroa.34.0.insert.shift1412 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1411, 48, !dbg !245
  %160 = and i32 %v_tile_local.sroa.42.0, 65535, !dbg !245
  %v_column_local.sroa.26.0.insert.ext1376 = zext nneg i32 %160 to i64, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1377 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1376, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1379 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1412, %v_column_local.sroa.26.0.insert.shift1377, !dbg !245
  %161 = shl i32 %v_tile_local.sroa.26.0, 16, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1342 = zext i32 %161 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1344 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1379, %v_column_local.sroa.18.0.insert.shift1342, !dbg !245
  %162 = and i32 %v_tile_local.sroa.10.0, 65535, !dbg !245
  %v_column_local.sroa.0.0.insert.ext1312 = zext nneg i32 %162 to i64, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1314 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1344, %v_column_local.sroa.0.0.insert.ext1312, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1314, ptr addrspace(3) %add.ptr739.2, align 8, !dbg !245
  %v_tile_local.sroa.10.6.extract.shift = lshr i32 %v_tile_local.sroa.10.0, 16, !dbg !246
  %v_tile_local.sroa.10.6.extract.trunc = zext nneg i32 %v_tile_local.sroa.10.6.extract.shift to i64, !dbg !246
  %v_tile_local.sroa.26.14.extract.shift = and i32 %v_tile_local.sroa.26.0, -65536, !dbg !245
  %v_tile_local.sroa.42.22.extract.shift = lshr i32 %v_tile_local.sroa.42.0, 16, !dbg !246
  %v_tile_local.sroa.42.22.extract.trunc = zext nneg i32 %v_tile_local.sroa.42.22.extract.shift to i64, !dbg !246
  %v_tile_local.sroa.58.30.extract.shift = lshr i32 %v_tile_local.sroa.58.0, 16, !dbg !246
  %v_tile_local.sroa.58.30.extract.trunc = zext nneg i32 %v_tile_local.sroa.58.30.extract.shift to i64, !dbg !246
  %v_column_local.sroa.34.0.insert.shift1417 = shl nuw i64 %v_tile_local.sroa.58.30.extract.trunc, 48, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1382 = shl nuw nsw i64 %v_tile_local.sroa.42.22.extract.trunc, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1384 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1417, %v_column_local.sroa.26.0.insert.shift1382, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1347 = zext i32 %v_tile_local.sroa.26.14.extract.shift to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1349 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1384, %v_column_local.sroa.18.0.insert.shift1347, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1318 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1349, %v_tile_local.sroa.10.6.extract.trunc, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1318, ptr addrspace(3) %add.ptr739.3, align 8, !dbg !245
  br i1 %or.cond1140.1, label %if.end702.1, label %for.cond604.preheader.1, !dbg !237

for.cond604.preheader.1:                          ; preds = %if.end702
  %add622.1 = add nuw nsw i32 %mul124.1, %mul439
  %conv645.1 = zext nneg i32 %mul124.1 to i64
  %shr613.11258 = lshr exact i32 %mul124.1, 2, !dbg !238
  %add614.11259 = add nuw nsw i32 %shr613.11258, %shr730, !dbg !239
  %cmp615.11260 = icmp ult i32 %add614.11259, 256, !dbg !240
  br i1 %cmp615.11260, label %if.then634.11266, label %if.end670.11270, !dbg !241

if.then634.11266:                                 ; preds = %for.cond604.preheader.1
  %.idx1202.11262 = shl nuw nsw i64 %conv645.1, 7, !dbg !242
  %163 = getelementptr inbounds i8, ptr addrspace(4) %42, i64 %.idx1202.11262, !dbg !242
  %condval_2.sroa.0.0.copyload.11263 = load i32, ptr addrspace(4) %163, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.11264 = getelementptr inbounds i8, ptr addrspace(4) %163, i64 4, !dbg !243
  %condval_2.sroa.5.0.copyload.11265 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.11264, align 4, !dbg !243, !tbaa !30
  br label %if.end670.11270, !dbg !244

if.end670.11270:                                  ; preds = %if.then634.11266, %for.cond604.preheader.1
  %condval_2.sroa.5.0.11267 = phi i32 [ %condval_2.sroa.5.0.copyload.11265, %if.then634.11266 ], [ 0, %for.cond604.preheader.1 ], !dbg !90
  %condval_2.sroa.0.0.11268 = phi i32 [ %condval_2.sroa.0.0.copyload.11263, %if.then634.11266 ], [ 0, %for.cond604.preheader.1 ], !dbg !90
  %shr613.1.1 = lshr exact i32 %mul124.1, 2, !dbg !238
  %add614.1.1 = add nuw nsw i32 %shr613.1.1, %shr730, !dbg !239
  %cmp615.1.1 = icmp ult i32 %add614.1.1, 256, !dbg !240
  %164 = icmp sgt i32 %add622.1, -2
  %or.cond1198.1.1 = select i1 %cmp615.1.1, i1 %164, i1 false, !dbg !241
  br i1 %or.cond1198.1.1, label %if.then634.1.1, label %if.end670.1.1, !dbg !241

if.then634.1.1:                                   ; preds = %if.end670.11270
  %.idx1202.1.1 = shl nuw nsw i64 %conv645.1, 7, !dbg !242
  %165 = getelementptr inbounds i8, ptr addrspace(4) %43, i64 %.idx1202.1.1, !dbg !242
  %add.ptr656.1.1 = getelementptr inbounds i8, ptr addrspace(4) %165, i64 128, !dbg !242
  %condval_2.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %add.ptr656.1.1, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %165, i64 132, !dbg !243
  %condval_2.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.1.1, align 4, !dbg !243, !tbaa !30
  br label %if.end670.1.1, !dbg !244

if.end670.1.1:                                    ; preds = %if.then634.1.1, %if.end670.11270
  %condval_2.sroa.5.0.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1, %if.then634.1.1 ], [ 0, %if.end670.11270 ], !dbg !90
  %condval_2.sroa.0.0.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1, %if.then634.1.1 ], [ 0, %if.end670.11270 ], !dbg !90
  %shr613.2.1 = lshr exact i32 %mul124.1, 2, !dbg !238
  %add614.2.1 = add nuw nsw i32 %shr613.2.1, %shr730, !dbg !239
  %cmp615.2.1 = icmp ult i32 %add614.2.1, 256, !dbg !240
  %166 = icmp sgt i32 %add622.1, -3
  %or.cond1198.2.1 = select i1 %cmp615.2.1, i1 %166, i1 false, !dbg !241
  br i1 %or.cond1198.2.1, label %if.then634.2.1, label %if.end670.2.1, !dbg !241

if.then634.2.1:                                   ; preds = %if.end670.1.1
  %.idx1202.2.1 = shl nuw nsw i64 %conv645.1, 7, !dbg !242
  %167 = getelementptr inbounds i8, ptr addrspace(4) %44, i64 %.idx1202.2.1, !dbg !242
  %add.ptr656.2.1 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 256, !dbg !242
  %condval_2.sroa.0.0.copyload.2.1 = load i32, ptr addrspace(4) %add.ptr656.2.1, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.2.1 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 260, !dbg !243
  %condval_2.sroa.5.0.copyload.2.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.2.1, align 4, !dbg !243, !tbaa !30
  br label %if.end670.2.1, !dbg !244

if.end670.2.1:                                    ; preds = %if.then634.2.1, %if.end670.1.1
  %condval_2.sroa.5.0.2.1 = phi i32 [ %condval_2.sroa.5.0.copyload.2.1, %if.then634.2.1 ], [ 0, %if.end670.1.1 ], !dbg !90
  %condval_2.sroa.0.0.2.1 = phi i32 [ %condval_2.sroa.0.0.copyload.2.1, %if.then634.2.1 ], [ 0, %if.end670.1.1 ], !dbg !90
  %shr613.3.1 = lshr exact i32 %mul124.1, 2, !dbg !238
  %add614.3.1 = add nuw nsw i32 %shr613.3.1, %shr730, !dbg !239
  %cmp615.3.1 = icmp ult i32 %add614.3.1, 256, !dbg !240
  %168 = icmp sgt i32 %add622.1, -4
  %or.cond1198.3.1 = select i1 %cmp615.3.1, i1 %168, i1 false, !dbg !241
  br i1 %or.cond1198.3.1, label %if.then634.3.1, label %if.end702.1, !dbg !241

if.then634.3.1:                                   ; preds = %if.end670.2.1
  %.idx1202.3.1 = shl nuw nsw i64 %conv645.1, 7, !dbg !242
  %169 = getelementptr inbounds i8, ptr addrspace(4) %45, i64 %.idx1202.3.1, !dbg !242
  %add.ptr656.3.1 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 384, !dbg !242
  %condval_2.sroa.0.0.copyload.3.1 = load i32, ptr addrspace(4) %add.ptr656.3.1, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.3.1 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 388, !dbg !243
  %condval_2.sroa.5.0.copyload.3.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.3.1, align 4, !dbg !243, !tbaa !30
  br label %if.end702.1, !dbg !244

if.end702.1:                                      ; preds = %if.end702, %if.end670.2.1, %if.then634.3.1
  %v_tile_local.sroa.58.1 = phi i32 [ %condval_2.sroa.5.0.copyload.3.1, %if.then634.3.1 ], [ 0, %if.end670.2.1 ], [ 0, %if.end702 ], !dbg !90
  %v_tile_local.sroa.50.1 = phi i32 [ %condval_2.sroa.0.0.copyload.3.1, %if.then634.3.1 ], [ 0, %if.end670.2.1 ], [ 0, %if.end702 ], !dbg !90
  %v_tile_local.sroa.42.1 = phi i32 [ %condval_2.sroa.5.0.2.1, %if.then634.3.1 ], [ %condval_2.sroa.5.0.2.1, %if.end670.2.1 ], [ 0, %if.end702 ], !dbg !90
  %v_tile_local.sroa.34.1 = phi i32 [ %condval_2.sroa.0.0.2.1, %if.then634.3.1 ], [ %condval_2.sroa.0.0.2.1, %if.end670.2.1 ], [ 0, %if.end702 ], !dbg !90
  %v_tile_local.sroa.26.1 = phi i32 [ %condval_2.sroa.5.0.1.1, %if.then634.3.1 ], [ %condval_2.sroa.5.0.1.1, %if.end670.2.1 ], [ 0, %if.end702 ], !dbg !90
  %v_tile_local.sroa.18.1 = phi i32 [ %condval_2.sroa.0.0.1.1, %if.then634.3.1 ], [ %condval_2.sroa.0.0.1.1, %if.end670.2.1 ], [ 0, %if.end702 ], !dbg !90
  %v_tile_local.sroa.10.1 = phi i32 [ %condval_2.sroa.5.0.11267, %if.then634.3.1 ], [ %condval_2.sroa.5.0.11267, %if.end670.2.1 ], [ 0, %if.end702 ], !dbg !90
  %v_tile_local.sroa.0.1 = phi i32 [ %condval_2.sroa.0.0.11268, %if.then634.3.1 ], [ %condval_2.sroa.0.0.11268, %if.end670.2.1 ], [ 0, %if.end702 ], !dbg !90
  %170 = and i32 %v_tile_local.sroa.50.1, 65535, !dbg !245
  %v_column_local.sroa.34.0.insert.ext1421 = zext nneg i32 %170 to i64, !dbg !245
  %v_column_local.sroa.34.0.insert.shift1422 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1421, 48, !dbg !245
  %171 = and i32 %v_tile_local.sroa.34.1, 65535, !dbg !245
  %v_column_local.sroa.26.0.insert.ext1386 = zext nneg i32 %171 to i64, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1387 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1386, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1389 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1422, %v_column_local.sroa.26.0.insert.shift1387, !dbg !245
  %172 = shl i32 %v_tile_local.sroa.18.1, 16, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1352 = zext i32 %172 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1354 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1389, %v_column_local.sroa.18.0.insert.shift1352, !dbg !245
  %173 = and i32 %v_tile_local.sroa.0.1, 65535, !dbg !245
  %v_column_local.sroa.0.0.insert.ext1320 = zext nneg i32 %173 to i64, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1322 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1354, %v_column_local.sroa.0.0.insert.ext1320, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1322, ptr addrspace(3) %add.ptr739.11280, align 8, !dbg !245
  %v_tile_local.sroa.0.2.extract.shift1443 = lshr i32 %v_tile_local.sroa.0.1, 16, !dbg !246
  %v_tile_local.sroa.0.2.extract.trunc1444 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1443 to i64, !dbg !246
  %v_tile_local.sroa.18.10.extract.shift1453 = and i32 %v_tile_local.sroa.18.1, -65536, !dbg !245
  %v_tile_local.sroa.34.18.extract.shift1463 = lshr i32 %v_tile_local.sroa.34.1, 16, !dbg !246
  %v_tile_local.sroa.34.18.extract.trunc1464 = zext nneg i32 %v_tile_local.sroa.34.18.extract.shift1463 to i64, !dbg !246
  %v_tile_local.sroa.50.26.extract.shift1473 = lshr i32 %v_tile_local.sroa.50.1, 16, !dbg !246
  %v_tile_local.sroa.50.26.extract.trunc1474 = zext nneg i32 %v_tile_local.sroa.50.26.extract.shift1473 to i64, !dbg !246
  %v_column_local.sroa.34.0.insert.shift1427 = shl nuw i64 %v_tile_local.sroa.50.26.extract.trunc1474, 48, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1392 = shl nuw nsw i64 %v_tile_local.sroa.34.18.extract.trunc1464, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1394 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1427, %v_column_local.sroa.26.0.insert.shift1392, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1357 = zext i32 %v_tile_local.sroa.18.10.extract.shift1453 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1359 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1394, %v_column_local.sroa.18.0.insert.shift1357, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1326 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1359, %v_tile_local.sroa.0.2.extract.trunc1444, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1326, ptr addrspace(3) %add.ptr739.1.1, align 8, !dbg !245
  %174 = and i32 %v_tile_local.sroa.58.1, 65535, !dbg !245
  %v_column_local.sroa.34.0.insert.ext1431 = zext nneg i32 %174 to i64, !dbg !245
  %v_column_local.sroa.34.0.insert.shift1432 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1431, 48, !dbg !245
  %175 = and i32 %v_tile_local.sroa.42.1, 65535, !dbg !245
  %v_column_local.sroa.26.0.insert.ext1396 = zext nneg i32 %175 to i64, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1397 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1396, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1399 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1432, %v_column_local.sroa.26.0.insert.shift1397, !dbg !245
  %176 = shl i32 %v_tile_local.sroa.26.1, 16, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1362 = zext i32 %176 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1364 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1399, %v_column_local.sroa.18.0.insert.shift1362, !dbg !245
  %177 = and i32 %v_tile_local.sroa.10.1, 65535, !dbg !245
  %v_column_local.sroa.0.0.insert.ext1328 = zext nneg i32 %177 to i64, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1330 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1364, %v_column_local.sroa.0.0.insert.ext1328, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1330, ptr addrspace(3) %add.ptr739.2.1, align 8, !dbg !245
  %v_tile_local.sroa.10.6.extract.shift1448 = lshr i32 %v_tile_local.sroa.10.1, 16, !dbg !246
  %v_tile_local.sroa.10.6.extract.trunc1449 = zext nneg i32 %v_tile_local.sroa.10.6.extract.shift1448 to i64, !dbg !246
  %v_tile_local.sroa.26.14.extract.shift1458 = and i32 %v_tile_local.sroa.26.1, -65536, !dbg !245
  %v_tile_local.sroa.42.22.extract.shift1468 = lshr i32 %v_tile_local.sroa.42.1, 16, !dbg !246
  %v_tile_local.sroa.42.22.extract.trunc1469 = zext nneg i32 %v_tile_local.sroa.42.22.extract.shift1468 to i64, !dbg !246
  %v_tile_local.sroa.58.30.extract.shift1478 = lshr i32 %v_tile_local.sroa.58.1, 16, !dbg !246
  %v_tile_local.sroa.58.30.extract.trunc1479 = zext nneg i32 %v_tile_local.sroa.58.30.extract.shift1478 to i64, !dbg !246
  %v_column_local.sroa.34.0.insert.shift1437 = shl nuw i64 %v_tile_local.sroa.58.30.extract.trunc1479, 48, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1402 = shl nuw nsw i64 %v_tile_local.sroa.42.22.extract.trunc1469, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1404 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1437, %v_column_local.sroa.26.0.insert.shift1402, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1367 = zext i32 %v_tile_local.sroa.26.14.extract.shift1458 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1369 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1404, %v_column_local.sroa.18.0.insert.shift1367, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1334 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1369, %v_tile_local.sroa.10.6.extract.trunc1449, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1334, ptr addrspace(3) %add.ptr739.3.1, align 8, !dbg !245
  fence syncscope("warp") release, !dbg !247
  tail call void @llvm.mxc.barrier.warp(), !dbg !250
  fence syncscope("warp") acquire, !dbg !251
  %178 = load <4 x half>, ptr addrspace(3) %add.ptr776, align 8, !dbg !252
  %179 = load <4 x half>, ptr addrspace(3) %add.ptr776.1, align 8, !dbg !252
  %180 = load <4 x half>, ptr addrspace(3) %add.ptr776.2, align 8, !dbg !252
  %181 = load <4 x half>, ptr addrspace(3) %add.ptr776.3, align 8, !dbg !252
  %182 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %178, <4 x half> %135, <4 x float> %output_acc.sroa.0.1), !dbg !253
  %183 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %179, <4 x half> %135, <4 x float> %output_acc.sroa.30.1), !dbg !253
  %184 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %180, <4 x half> %135, <4 x float> %output_acc.sroa.58.1), !dbg !253
  %185 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %181, <4 x half> %135, <4 x float> %output_acc.sroa.86.1), !dbg !253
  %186 = load <4 x half>, ptr addrspace(3) %add.ptr776.11284, align 8, !dbg !252
  %187 = load <4 x half>, ptr addrspace(3) %add.ptr776.1.1, align 8, !dbg !252
  %188 = load <4 x half>, ptr addrspace(3) %add.ptr776.2.1, align 8, !dbg !252
  %189 = load <4 x half>, ptr addrspace(3) %add.ptr776.3.1, align 8, !dbg !252
  %190 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %186, <4 x half> %147, <4 x float> %182), !dbg !253
  %191 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %187, <4 x half> %147, <4 x float> %183), !dbg !253
  %192 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %188, <4 x half> %147, <4 x float> %184), !dbg !253
  %193 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %189, <4 x half> %147, <4 x float> %185), !dbg !253
  br label %for.inc807, !dbg !254

for.inc807:                                       ; preds = %lor.lhs.false, %if.end702.1
  %output_acc.sroa.86.2 = phi <4 x float> [ zeroinitializer, %lor.lhs.false ], [ %193, %if.end702.1 ], !dbg !90
  %output_acc.sroa.58.2 = phi <4 x float> [ zeroinitializer, %lor.lhs.false ], [ %192, %if.end702.1 ], !dbg !90
  %output_acc.sroa.30.2 = phi <4 x float> [ zeroinitializer, %lor.lhs.false ], [ %191, %if.end702.1 ], !dbg !90
  %output_acc.sroa.0.2 = phi <4 x float> [ zeroinitializer, %lor.lhs.false ], [ %190, %if.end702.1 ], !dbg !90
  %normalizer.sroa.0.2 = phi float [ 0xFFF0000000000000, %lor.lhs.false ], [ %normalizer.sroa.0.1, %if.end702.1 ], !dbg !90
  %denominator.sroa.0.2 = phi float [ 0.000000e+00, %lor.lhs.false ], [ %add547, %if.end702.1 ], !dbg !90
  %194 = or disjoint i64 %24, 2
  %arrayidx123.11794 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %194, !dbg !69
  %195 = load i32, ptr addrspace(1) %arrayidx123.11794, align 4, !dbg !69, !tbaa !30
  %mul124.11795 = shl nsw i32 %195, 4, !dbg !70
  %196 = or disjoint i64 %24, 3, !dbg !71
  %arrayidx123.1.1 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %196, !dbg !69
  %197 = load i32, ptr addrspace(1) %arrayidx123.1.1, align 4, !dbg !69, !tbaa !30
  %mul124.1.1 = shl nsw i32 %197, 4, !dbg !70
  %cmp131.1 = icmp slt i32 %195, 0, !dbg !72
  %cmp134.not.1 = icmp sgt i32 %mul124.11795, %1
  %or.cond.1 = select i1 %cmp131.1, i1 true, i1 %cmp134.not.1, !dbg !73
  br i1 %or.cond.1, label %lor.lhs.false.1, label %if.then.1, !dbg !73

lor.lhs.false.1:                                  ; preds = %for.inc807
  %cmp136.1 = icmp slt i32 %197, 0, !dbg !74
  %cmp140.not.1 = icmp sgt i32 %mul124.1.1, %1
  %or.cond1139.1 = select i1 %cmp136.1, i1 true, i1 %cmp140.not.1, !dbg !75
  br i1 %or.cond1139.1, label %for.inc807.1, label %if.then.1, !dbg !75

if.then.1:                                        ; preds = %lor.lhs.false.1, %for.inc807
  fence syncscope("warp") release, !dbg !76
  tail call void @llvm.mxc.barrier.warp(), !dbg !79
  fence syncscope("warp") acquire, !dbg !80
  br i1 %or.cond.1, label %for.cond271.preheader.11831, label %for.cond154.preheader.11801, !dbg !81

for.cond154.preheader.11801:                      ; preds = %if.then.1
  %add162.11796 = add nuw nsw i32 %mul124.11795, %shr159
  %conv201.11797 = zext nneg i32 %mul124.11795 to i64
  %.idx.11798 = shl nuw nsw i64 %conv201.11797, 7
  %gep1165.11799 = getelementptr i8, ptr addrspace(4) %invariant.gep1164, i64 %.idx.11798, !dbg !82
  %cmp165.11800 = icmp ult i32 %add162.11796, 1024, !dbg !83
  br i1 %cmp165.11800, label %if.then193.11810, label %if.end.11816, !dbg !84

if.then193.11810:                                 ; preds = %for.cond154.preheader.11801
  %gep1160.11802 = getelementptr %struct.__half, ptr addrspace(4) %gep1165.11799, i64 %mul195, !dbg !87
  %condval.sroa.0.0.copyload.11803 = load i32, ptr addrspace(4) %gep1160.11802, align 16, !dbg !88, !tbaa !30
  %condval.sroa.5.0.add.ptr208.sroa_idx.11804 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.11802, i64 4, !dbg !88
  %condval.sroa.5.0.copyload.11805 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr208.sroa_idx.11804, align 4, !dbg !88, !tbaa !30
  %condval.sroa.6.0.add.ptr208.sroa_idx.11806 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.11802, i64 8, !dbg !88
  %condval.sroa.6.0.copyload.11807 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr208.sroa_idx.11806, align 8, !dbg !88, !tbaa !30
  %condval.sroa.7.0.add.ptr208.sroa_idx.11808 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.11802, i64 12, !dbg !88
  %condval.sroa.7.0.copyload.11809 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr208.sroa_idx.11808, align 4, !dbg !88, !tbaa !30
  br label %if.end.11816, !dbg !89

if.end.11816:                                     ; preds = %if.then193.11810, %for.cond154.preheader.11801
  %condval.sroa.0.0.11811 = phi i32 [ %condval.sroa.0.0.copyload.11803, %if.then193.11810 ], [ 0, %for.cond154.preheader.11801 ], !dbg !90
  %condval.sroa.5.0.11812 = phi i32 [ %condval.sroa.5.0.copyload.11805, %if.then193.11810 ], [ 0, %for.cond154.preheader.11801 ], !dbg !90
  %condval.sroa.6.0.11813 = phi i32 [ %condval.sroa.6.0.copyload.11807, %if.then193.11810 ], [ 0, %for.cond154.preheader.11801 ], !dbg !90
  %condval.sroa.7.0.11814 = phi i32 [ %condval.sroa.7.0.copyload.11809, %if.then193.11810 ], [ 0, %for.cond154.preheader.11801 ], !dbg !90
  store i32 %condval.sroa.0.0.11811, ptr addrspace(3) %add.ptr266, align 16, !dbg !91, !tbaa !30
  store i32 %condval.sroa.5.0.11812, ptr addrspace(3) %condval.sroa.5.0.add.ptr266.sroa_idx, align 4, !dbg !91, !tbaa !30
  store i32 %condval.sroa.6.0.11813, ptr addrspace(3) %condval.sroa.6.0.add.ptr266.sroa_idx, align 8, !dbg !91, !tbaa !30
  store i32 %condval.sroa.7.0.11814, ptr addrspace(3) %condval.sroa.7.0.add.ptr266.sroa_idx, align 4, !dbg !91, !tbaa !30
  %cmp165.1.11815 = icmp ult i32 %add162.11796, 1016, !dbg !83
  br i1 %cmp165.1.11815, label %if.then193.1.11825, label %if.end.1.11830, !dbg !84

if.then193.1.11825:                               ; preds = %if.end.11816
  %gep1160.1.11817 = getelementptr %struct.__half, ptr addrspace(4) %gep1165.11799, i64 %add198.1, !dbg !87
  %condval.sroa.0.0.copyload.1.11818 = load i32, ptr addrspace(4) %gep1160.1.11817, align 16, !dbg !88, !tbaa !30
  %condval.sroa.5.0.add.ptr208.sroa_idx.1.11819 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1.11817, i64 4, !dbg !88
  %condval.sroa.5.0.copyload.1.11820 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr208.sroa_idx.1.11819, align 4, !dbg !88, !tbaa !30
  %condval.sroa.6.0.add.ptr208.sroa_idx.1.11821 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1.11817, i64 8, !dbg !88
  %condval.sroa.6.0.copyload.1.11822 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr208.sroa_idx.1.11821, align 8, !dbg !88, !tbaa !30
  %condval.sroa.7.0.add.ptr208.sroa_idx.1.11823 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1.11817, i64 12, !dbg !88
  %condval.sroa.7.0.copyload.1.11824 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr208.sroa_idx.1.11823, align 4, !dbg !88, !tbaa !30
  br label %if.end.1.11830, !dbg !89

if.end.1.11830:                                   ; preds = %if.then193.1.11825, %if.end.11816
  %condval.sroa.0.0.1.11826 = phi i32 [ %condval.sroa.0.0.copyload.1.11818, %if.then193.1.11825 ], [ 0, %if.end.11816 ], !dbg !90
  %condval.sroa.5.0.1.11827 = phi i32 [ %condval.sroa.5.0.copyload.1.11820, %if.then193.1.11825 ], [ 0, %if.end.11816 ], !dbg !90
  %condval.sroa.6.0.1.11828 = phi i32 [ %condval.sroa.6.0.copyload.1.11822, %if.then193.1.11825 ], [ 0, %if.end.11816 ], !dbg !90
  %condval.sroa.7.0.1.11829 = phi i32 [ %condval.sroa.7.0.copyload.1.11824, %if.then193.1.11825 ], [ 0, %if.end.11816 ], !dbg !90
  store i32 %condval.sroa.0.0.1.11826, ptr addrspace(3) %add.ptr266.1, align 16, !dbg !91, !tbaa !30
  store i32 %condval.sroa.5.0.1.11827, ptr addrspace(3) %condval.sroa.5.0.add.ptr266.sroa_idx.1, align 4, !dbg !91, !tbaa !30
  store i32 %condval.sroa.6.0.1.11828, ptr addrspace(3) %condval.sroa.6.0.add.ptr266.sroa_idx.1, align 8, !dbg !91, !tbaa !30
  store i32 %condval.sroa.7.0.1.11829, ptr addrspace(3) %condval.sroa.7.0.add.ptr266.sroa_idx.1, align 4, !dbg !91, !tbaa !30
  br label %for.inc342.11832, !dbg !86

for.cond271.preheader.11831:                      ; preds = %if.then.1
  store i32 0, ptr addrspace(3) %26, align 16, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.10.0..sroa_idx, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.14.0..sroa_idx, align 8, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.18.0..sroa_idx, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %gep.1, align 16, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.10.0.gep.1.sroa_idx, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.14.0.gep.1.sroa_idx, align 8, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.18.0.gep.1.sroa_idx, align 4, !dbg !85, !tbaa !30
  br label %for.inc342.11832, !dbg !86

for.inc342.11832:                                 ; preds = %for.cond271.preheader.11831, %if.end.1.11830
  %cmp147.1.1 = icmp slt i32 %197, 0, !dbg !92
  %cmp152.not.1.1 = icmp sgt i32 %mul124.1.1, %1
  %or.cond1140.1.1 = select i1 %cmp147.1.1, i1 true, i1 %cmp152.not.1.1, !dbg !81
  br i1 %or.cond1140.1.1, label %for.cond271.preheader.1.1, label %for.cond154.preheader.1.1, !dbg !81

for.cond154.preheader.1.1:                        ; preds = %for.inc342.11832
  %add162.1.1 = add nuw nsw i32 %mul124.1.1, %shr159
  %conv201.1.1 = zext nneg i32 %mul124.1.1 to i64
  %.idx.1.1 = shl nuw nsw i64 %conv201.1.1, 7
  %gep1165.1.1 = getelementptr i8, ptr addrspace(4) %invariant.gep1164, i64 %.idx.1.1, !dbg !82
  %cmp165.11219.1 = icmp ult i32 %add162.1.1, 1024, !dbg !83
  br i1 %cmp165.11219.1, label %if.then193.11229.1, label %if.end.11239.1, !dbg !84

if.then193.11229.1:                               ; preds = %for.cond154.preheader.1.1
  %gep1160.11221.1 = getelementptr %struct.__half, ptr addrspace(4) %gep1165.1.1, i64 %mul195, !dbg !87
  %condval.sroa.0.0.copyload.11222.1 = load i32, ptr addrspace(4) %gep1160.11221.1, align 16, !dbg !88, !tbaa !30
  %condval.sroa.5.0.add.ptr208.sroa_idx.11223.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.11221.1, i64 4, !dbg !88
  %condval.sroa.5.0.copyload.11224.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr208.sroa_idx.11223.1, align 4, !dbg !88, !tbaa !30
  %condval.sroa.6.0.add.ptr208.sroa_idx.11225.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.11221.1, i64 8, !dbg !88
  %condval.sroa.6.0.copyload.11226.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr208.sroa_idx.11225.1, align 8, !dbg !88, !tbaa !30
  %condval.sroa.7.0.add.ptr208.sroa_idx.11227.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.11221.1, i64 12, !dbg !88
  %condval.sroa.7.0.copyload.11228.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr208.sroa_idx.11227.1, align 4, !dbg !88, !tbaa !30
  br label %if.end.11239.1, !dbg !89

if.end.11239.1:                                   ; preds = %if.then193.11229.1, %for.cond154.preheader.1.1
  %condval.sroa.0.0.11230.1 = phi i32 [ %condval.sroa.0.0.copyload.11222.1, %if.then193.11229.1 ], [ 0, %for.cond154.preheader.1.1 ], !dbg !90
  %condval.sroa.5.0.11231.1 = phi i32 [ %condval.sroa.5.0.copyload.11224.1, %if.then193.11229.1 ], [ 0, %for.cond154.preheader.1.1 ], !dbg !90
  %condval.sroa.6.0.11232.1 = phi i32 [ %condval.sroa.6.0.copyload.11226.1, %if.then193.11229.1 ], [ 0, %for.cond154.preheader.1.1 ], !dbg !90
  %condval.sroa.7.0.11233.1 = phi i32 [ %condval.sroa.7.0.copyload.11228.1, %if.then193.11229.1 ], [ 0, %for.cond154.preheader.1.1 ], !dbg !90
  store i32 %condval.sroa.0.0.11230.1, ptr addrspace(3) %add.ptr266.11235, align 16, !dbg !91, !tbaa !30
  store i32 %condval.sroa.5.0.11231.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr266.sroa_idx.11236, align 4, !dbg !91, !tbaa !30
  store i32 %condval.sroa.6.0.11232.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr266.sroa_idx.11237, align 8, !dbg !91, !tbaa !30
  store i32 %condval.sroa.7.0.11233.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr266.sroa_idx.11238, align 4, !dbg !91, !tbaa !30
  %cmp165.1.1.1 = icmp ult i32 %add162.1.1, 1016, !dbg !83
  br i1 %cmp165.1.1.1, label %if.then193.1.1.1, label %if.end.1.1.1, !dbg !84

if.then193.1.1.1:                                 ; preds = %if.end.11239.1
  %gep1160.1.1.1 = getelementptr %struct.__half, ptr addrspace(4) %gep1165.1.1, i64 %add198.1.1, !dbg !87
  %condval.sroa.0.0.copyload.1.1.1 = load i32, ptr addrspace(4) %gep1160.1.1.1, align 16, !dbg !88, !tbaa !30
  %condval.sroa.5.0.add.ptr208.sroa_idx.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1.1.1, i64 4, !dbg !88
  %condval.sroa.5.0.copyload.1.1.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr208.sroa_idx.1.1.1, align 4, !dbg !88, !tbaa !30
  %condval.sroa.6.0.add.ptr208.sroa_idx.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1.1.1, i64 8, !dbg !88
  %condval.sroa.6.0.copyload.1.1.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr208.sroa_idx.1.1.1, align 8, !dbg !88, !tbaa !30
  %condval.sroa.7.0.add.ptr208.sroa_idx.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1.1.1, i64 12, !dbg !88
  %condval.sroa.7.0.copyload.1.1.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr208.sroa_idx.1.1.1, align 4, !dbg !88, !tbaa !30
  br label %if.end.1.1.1, !dbg !89

if.end.1.1.1:                                     ; preds = %if.then193.1.1.1, %if.end.11239.1
  %condval.sroa.0.0.1.1.1 = phi i32 [ %condval.sroa.0.0.copyload.1.1.1, %if.then193.1.1.1 ], [ 0, %if.end.11239.1 ], !dbg !90
  %condval.sroa.5.0.1.1.1 = phi i32 [ %condval.sroa.5.0.copyload.1.1.1, %if.then193.1.1.1 ], [ 0, %if.end.11239.1 ], !dbg !90
  %condval.sroa.6.0.1.1.1 = phi i32 [ %condval.sroa.6.0.copyload.1.1.1, %if.then193.1.1.1 ], [ 0, %if.end.11239.1 ], !dbg !90
  %condval.sroa.7.0.1.1.1 = phi i32 [ %condval.sroa.7.0.copyload.1.1.1, %if.then193.1.1.1 ], [ 0, %if.end.11239.1 ], !dbg !90
  store i32 %condval.sroa.0.0.1.1.1, ptr addrspace(3) %add.ptr266.1.1, align 16, !dbg !91, !tbaa !30
  store i32 %condval.sroa.5.0.1.1.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr266.sroa_idx.1.1, align 4, !dbg !91, !tbaa !30
  store i32 %condval.sroa.6.0.1.1.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr266.sroa_idx.1.1, align 8, !dbg !91, !tbaa !30
  store i32 %condval.sroa.7.0.1.1.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr266.sroa_idx.1.1, align 4, !dbg !91, !tbaa !30
  br label %for.inc342.1.1, !dbg !86

for.cond271.preheader.1.1:                        ; preds = %for.inc342.11832
  store i32 0, ptr addrspace(3) %29, align 16, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.10.0..sroa_idx1598, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.14.0..sroa_idx1602, align 8, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.18.0..sroa_idx1606, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %gep.1.1, align 16, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.10.0.gep.1.1.sroa_idx, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.14.0.gep.1.1.sroa_idx, align 8, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.18.0.gep.1.1.sroa_idx, align 4, !dbg !85, !tbaa !30
  br label %for.inc342.1.1, !dbg !86

for.inc342.1.1:                                   ; preds = %for.cond271.preheader.1.1, %if.end.1.1.1
  fence syncscope("warp") release, !dbg !93
  tail call void @llvm.mxc.barrier.warp(), !dbg !96
  fence syncscope("warp") acquire, !dbg !97
  %k_local.sroa.0.0.copyload.11833 = load <4 x half>, ptr addrspace(3) %gep1167, align 8, !dbg !98
  %198 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11833, <4 x half> %11, <4 x float> zeroinitializer), !dbg !99
  %k_local.sroa.0.0.copyload.1.11834 = load <4 x half>, ptr addrspace(3) %gep1167.1, align 8, !dbg !98
  %199 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.11834, <4 x half> %11, <4 x float> zeroinitializer), !dbg !99
  %k_local.sroa.0.0.copyload.11250.1 = load <4 x half>, ptr addrspace(3) %gep1167.11249, align 8, !dbg !98
  %200 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11250.1, <4 x half> %13, <4 x float> %198), !dbg !99
  %k_local.sroa.0.0.copyload.1.1.1 = load <4 x half>, ptr addrspace(3) %gep1167.1.1, align 8, !dbg !98
  %201 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1.1, <4 x half> %13, <4 x float> %199), !dbg !99
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %gep1167.2, align 8, !dbg !98
  %202 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %15, <4 x float> %200), !dbg !99
  %k_local.sroa.0.0.copyload.1.2.1 = load <4 x half>, ptr addrspace(3) %gep1167.1.2, align 8, !dbg !98
  %203 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2.1, <4 x half> %15, <4 x float> %201), !dbg !99
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %gep1167.3, align 8, !dbg !98
  %204 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %17, <4 x float> %202), !dbg !99
  %k_local.sroa.0.0.copyload.1.3.1 = load <4 x half>, ptr addrspace(3) %gep1167.1.3, align 8, !dbg !98
  %205 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3.1, <4 x half> %17, <4 x float> %203), !dbg !99
  %cmp447.not.11835 = icmp sgt i32 %mul124.11795, %invariant.op
  %or.cond1786.1 = select i1 %or.cond.1, i1 true, i1 %cmp447.not.11835, !dbg !100
  %scores.sroa.0.0.vec.extract.1 = extractelement <4 x float> %204, i64 0, !dbg !100
  %condval_1.0.11836 = select i1 %or.cond1786.1, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract.1, !dbg !100
  %cmp447.not.1.1 = icmp sgt i32 %mul124.11795, %invariant.op1779
  %or.cond1787.1 = select i1 %or.cond.1, i1 true, i1 %cmp447.not.1.1, !dbg !100
  %scores.sroa.0.4.vec.extract.1 = extractelement <4 x float> %204, i64 1, !dbg !100
  %condval_1.0.1.1 = select i1 %or.cond1787.1, float 0xFFF0000000000000, float %scores.sroa.0.4.vec.extract.1, !dbg !100
  %cmp447.not.2.1 = icmp sgt i32 %mul124.11795, %invariant.op1780
  %or.cond1788.1 = select i1 %or.cond.1, i1 true, i1 %cmp447.not.2.1, !dbg !100
  %scores.sroa.0.8.vec.extract.1 = extractelement <4 x float> %204, i64 2, !dbg !100
  %condval_1.0.2.1 = select i1 %or.cond1788.1, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract.1, !dbg !100
  %cmp447.not.3.1 = icmp sgt i32 %mul124.11795, %invariant.op1781
  %or.cond1789.1 = select i1 %or.cond.1, i1 true, i1 %cmp447.not.3.1, !dbg !100
  %scores.sroa.0.12.vec.extract.1 = extractelement <4 x float> %204, i64 3, !dbg !100
  %condval_1.0.3.1 = select i1 %or.cond1789.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract.1, !dbg !100
  %cmp447.not.4.1 = icmp sgt i32 %mul124.1.1, %invariant.op1782
  %or.cond1790.1 = select i1 %or.cond1140.1.1, i1 true, i1 %cmp447.not.4.1, !dbg !100
  %scores.sroa.42.16.vec.extract.1 = extractelement <4 x float> %205, i64 0, !dbg !100
  %condval_1.0.4.1 = select i1 %or.cond1790.1, float 0xFFF0000000000000, float %scores.sroa.42.16.vec.extract.1, !dbg !100
  %cmp447.not.5.1 = icmp sgt i32 %mul124.1.1, %invariant.op1783
  %or.cond1791.1 = select i1 %or.cond1140.1.1, i1 true, i1 %cmp447.not.5.1, !dbg !100
  %scores.sroa.42.20.vec.extract.1 = extractelement <4 x float> %205, i64 1, !dbg !100
  %condval_1.0.5.1 = select i1 %or.cond1791.1, float 0xFFF0000000000000, float %scores.sroa.42.20.vec.extract.1, !dbg !100
  %cmp447.not.6.1 = icmp sgt i32 %mul124.1.1, %invariant.op1784
  %or.cond1792.1 = select i1 %or.cond1140.1.1, i1 true, i1 %cmp447.not.6.1, !dbg !100
  %scores.sroa.42.24.vec.extract.1 = extractelement <4 x float> %205, i64 2, !dbg !100
  %condval_1.0.6.1 = select i1 %or.cond1792.1, float 0xFFF0000000000000, float %scores.sroa.42.24.vec.extract.1, !dbg !100
  %cmp447.not.7.1 = icmp sgt i32 %mul124.1.1, %invariant.op1785
  %or.cond1793.1 = select i1 %or.cond1140.1.1, i1 true, i1 %cmp447.not.7.1, !dbg !100
  %scores.sroa.42.28.vec.extract.1 = extractelement <4 x float> %205, i64 3, !dbg !100
  %condval_1.0.7.1 = select i1 %or.cond1793.1, float 0xFFF0000000000000, float %scores.sroa.42.28.vec.extract.1, !dbg !100
  %206 = tail call contract noundef float @llvm.maxnum.f32(float %condval_1.0.11836, float 0xFFF0000000000000), !dbg !101
  %207 = tail call contract noundef float @llvm.maxnum.f32(float %206, float %condval_1.0.4.1), !dbg !101
  %208 = tail call contract noundef float @llvm.maxnum.f32(float %207, float %condval_1.0.1.1), !dbg !101
  %209 = tail call contract noundef float @llvm.maxnum.f32(float %208, float %condval_1.0.5.1), !dbg !101
  %210 = tail call contract noundef float @llvm.maxnum.f32(float %209, float %condval_1.0.2.1), !dbg !101
  %211 = tail call contract noundef float @llvm.maxnum.f32(float %210, float %condval_1.0.6.1), !dbg !101
  %212 = tail call contract noundef float @llvm.maxnum.f32(float %211, float %condval_1.0.3.1), !dbg !101
  %213 = tail call contract noundef float @llvm.maxnum.f32(float %212, float %condval_1.0.7.1), !dbg !101
  %214 = bitcast float %213 to i32, !dbg !105
  %215 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !114
  %216 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %215) #11, !dbg !119
  %xor.i.i.i.1 = xor i32 %216, 32, !dbg !120
  %217 = and i32 %216, -64, !dbg !121
  %and.i.i.i.1 = add nsw i32 %217, 64, !dbg !121
  %cmp.not.i.i.i.1 = icmp slt i32 %xor.i.i.i.1, %and.i.i.i.1, !dbg !122
  %cond.i.i.i.1 = select i1 %cmp.not.i.i.i.1, i32 %xor.i.i.i.1, i32 %216, !dbg !123
  %shl.i.i.i.1 = shl i32 %cond.i.i.i.1, 2, !dbg !124
  %218 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.1, i32 %214), !dbg !125
  %219 = bitcast i32 %218 to float, !dbg !126
  %220 = tail call contract noundef float @llvm.maxnum.f32(float %213, float %219), !dbg !127
  %221 = bitcast float %220 to i32, !dbg !135
  %222 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !140
  %223 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %222) #11, !dbg !143
  %xor.i.i.i.i.1 = xor i32 %223, 16, !dbg !144
  %224 = and i32 %223, -64, !dbg !145
  %and.i.i.i.i.1 = add nsw i32 %224, 64, !dbg !145
  %cmp.not.i.i.i.i.1 = icmp slt i32 %xor.i.i.i.i.1, %and.i.i.i.i.1, !dbg !146
  %cond.i.i.i.i.1 = select i1 %cmp.not.i.i.i.i.1, i32 %xor.i.i.i.i.1, i32 %223, !dbg !147
  %shl.i.i.i.i.1 = shl i32 %cond.i.i.i.i.1, 2, !dbg !148
  %225 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.1, i32 %221), !dbg !149
  %226 = bitcast i32 %225 to float, !dbg !150
  %227 = tail call contract noundef float @llvm.maxnum.f32(float %220, float %226), !dbg !151
  %sub.1 = fsub contract float %227, %normalizer.sroa.0.2, !dbg !155
  %mul487.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !156
  %cmp488.1 = fcmp contract ogt float %mul487.1, 7.000000e+00, !dbg !157
  %sub492.1 = fsub contract float %normalizer.sroa.0.2, %227
  %mul493.1 = fmul contract float %sub492.1, 0x3FC7154760000000
  %cmp.i.i.1 = fcmp contract olt float %mul493.1, -1.260000e+02
  %cond.i.i.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00
  %add.i.i.1 = fadd contract float %mul493.1, %cond.i.i.1
  %228 = tail call contract float @llvm.exp2.f32(float %add.i.i.1)
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %228
  %normalizer.sroa.0.1.1 = select i1 %cmp488.1, float %227, float %normalizer.sroa.0.2, !dbg !158
  %sub508.11837 = fsub contract float %condval_1.0.11836, %normalizer.sroa.0.1.1, !dbg !159
  %mul509.11838 = fmul contract float %sub508.11837, 0x3FC7154760000000, !dbg !160
  %add510.11839 = fadd contract float %mul509.11838, 8.000000e+00, !dbg !161
  %cmp.i.i1102.11840 = fcmp contract olt float %add510.11839, -1.260000e+02, !dbg !162
  %cond.i.i1103.11841 = select contract i1 %cmp.i.i1102.11840, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.11842 = fadd contract float %add510.11839, %cond.i.i1103.11841, !dbg !162
  %229 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.11842), !dbg !162
  %cond2.i.i1105.11843 = select contract i1 %cmp.i.i1102.11840, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.11844 = fmul contract float %cond2.i.i1105.11843, %229, !dbg !162
  %sub508.1.1 = fsub contract float %condval_1.0.1.1, %normalizer.sroa.0.1.1, !dbg !159
  %mul509.1.1 = fmul contract float %sub508.1.1, 0x3FC7154760000000, !dbg !160
  %add510.1.1 = fadd contract float %mul509.1.1, 8.000000e+00, !dbg !161
  %cmp.i.i1102.1.1 = fcmp contract olt float %add510.1.1, -1.260000e+02, !dbg !162
  %cond.i.i1103.1.1 = select contract i1 %cmp.i.i1102.1.1, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.1.1 = fadd contract float %add510.1.1, %cond.i.i1103.1.1, !dbg !162
  %230 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.1.1), !dbg !162
  %cond2.i.i1105.1.1 = select contract i1 %cmp.i.i1102.1.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.1.1 = fmul contract float %cond2.i.i1105.1.1, %230, !dbg !162
  %sub508.2.1 = fsub contract float %condval_1.0.2.1, %normalizer.sroa.0.1.1, !dbg !159
  %mul509.2.1 = fmul contract float %sub508.2.1, 0x3FC7154760000000, !dbg !160
  %add510.2.1 = fadd contract float %mul509.2.1, 8.000000e+00, !dbg !161
  %cmp.i.i1102.2.1 = fcmp contract olt float %add510.2.1, -1.260000e+02, !dbg !162
  %cond.i.i1103.2.1 = select contract i1 %cmp.i.i1102.2.1, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.2.1 = fadd contract float %add510.2.1, %cond.i.i1103.2.1, !dbg !162
  %231 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.2.1), !dbg !162
  %cond2.i.i1105.2.1 = select contract i1 %cmp.i.i1102.2.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.2.1 = fmul contract float %cond2.i.i1105.2.1, %231, !dbg !162
  %sub508.3.1 = fsub contract float %condval_1.0.3.1, %normalizer.sroa.0.1.1, !dbg !159
  %mul509.3.1 = fmul contract float %sub508.3.1, 0x3FC7154760000000, !dbg !160
  %add510.3.1 = fadd contract float %mul509.3.1, 8.000000e+00, !dbg !161
  %cmp.i.i1102.3.1 = fcmp contract olt float %add510.3.1, -1.260000e+02, !dbg !162
  %cond.i.i1103.3.1 = select contract i1 %cmp.i.i1102.3.1, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.3.1 = fadd contract float %add510.3.1, %cond.i.i1103.3.1, !dbg !162
  %232 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.3.1), !dbg !162
  %cond2.i.i1105.3.1 = select contract i1 %cmp.i.i1102.3.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.3.1 = fmul contract float %cond2.i.i1105.3.1, %232, !dbg !162
  %sub508.4.1 = fsub contract float %condval_1.0.4.1, %normalizer.sroa.0.1.1, !dbg !159
  %mul509.4.1 = fmul contract float %sub508.4.1, 0x3FC7154760000000, !dbg !160
  %add510.4.1 = fadd contract float %mul509.4.1, 8.000000e+00, !dbg !161
  %cmp.i.i1102.4.1 = fcmp contract olt float %add510.4.1, -1.260000e+02, !dbg !162
  %cond.i.i1103.4.1 = select contract i1 %cmp.i.i1102.4.1, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.4.1 = fadd contract float %add510.4.1, %cond.i.i1103.4.1, !dbg !162
  %233 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.4.1), !dbg !162
  %cond2.i.i1105.4.1 = select contract i1 %cmp.i.i1102.4.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.4.1 = fmul contract float %cond2.i.i1105.4.1, %233, !dbg !162
  %sub508.5.1 = fsub contract float %condval_1.0.5.1, %normalizer.sroa.0.1.1, !dbg !159
  %mul509.5.1 = fmul contract float %sub508.5.1, 0x3FC7154760000000, !dbg !160
  %add510.5.1 = fadd contract float %mul509.5.1, 8.000000e+00, !dbg !161
  %cmp.i.i1102.5.1 = fcmp contract olt float %add510.5.1, -1.260000e+02, !dbg !162
  %cond.i.i1103.5.1 = select contract i1 %cmp.i.i1102.5.1, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.5.1 = fadd contract float %add510.5.1, %cond.i.i1103.5.1, !dbg !162
  %234 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.5.1), !dbg !162
  %cond2.i.i1105.5.1 = select contract i1 %cmp.i.i1102.5.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.5.1 = fmul contract float %cond2.i.i1105.5.1, %234, !dbg !162
  %sub508.6.1 = fsub contract float %condval_1.0.6.1, %normalizer.sroa.0.1.1, !dbg !159
  %mul509.6.1 = fmul contract float %sub508.6.1, 0x3FC7154760000000, !dbg !160
  %add510.6.1 = fadd contract float %mul509.6.1, 8.000000e+00, !dbg !161
  %cmp.i.i1102.6.1 = fcmp contract olt float %add510.6.1, -1.260000e+02, !dbg !162
  %cond.i.i1103.6.1 = select contract i1 %cmp.i.i1102.6.1, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.6.1 = fadd contract float %add510.6.1, %cond.i.i1103.6.1, !dbg !162
  %235 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.6.1), !dbg !162
  %cond2.i.i1105.6.1 = select contract i1 %cmp.i.i1102.6.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.6.1 = fmul contract float %cond2.i.i1105.6.1, %235, !dbg !162
  %sub508.7.1 = fsub contract float %condval_1.0.7.1, %normalizer.sroa.0.1.1, !dbg !159
  %mul509.7.1 = fmul contract float %sub508.7.1, 0x3FC7154760000000, !dbg !160
  %add510.7.1 = fadd contract float %mul509.7.1, 8.000000e+00, !dbg !161
  %cmp.i.i1102.7.1 = fcmp contract olt float %add510.7.1, -1.260000e+02, !dbg !162
  %cond.i.i1103.7.1 = select contract i1 %cmp.i.i1102.7.1, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.7.1 = fadd contract float %add510.7.1, %cond.i.i1103.7.1, !dbg !162
  %236 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.7.1), !dbg !162
  %cond2.i.i1105.7.1 = select contract i1 %cmp.i.i1102.7.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.7.1 = fmul contract float %cond2.i.i1105.7.1, %236, !dbg !162
  %add529.11845 = fadd contract float %mul.i.i1106.11844, 0.000000e+00, !dbg !165
  %add529.1.1 = fadd contract float %add529.11845, %mul.i.i1106.4.1, !dbg !165
  %add529.2.1 = fadd contract float %add529.1.1, %mul.i.i1106.1.1, !dbg !165
  %add529.3.1 = fadd contract float %add529.2.1, %mul.i.i1106.5.1, !dbg !165
  %add529.4.1 = fadd contract float %add529.3.1, %mul.i.i1106.2.1, !dbg !165
  %add529.5.1 = fadd contract float %add529.4.1, %mul.i.i1106.6.1, !dbg !165
  %add529.6.1 = fadd contract float %add529.5.1, %mul.i.i1106.3.1, !dbg !165
  %add529.7.1 = fadd contract float %add529.6.1, %mul.i.i1106.7.1, !dbg !165
  %rescale.sroa.0.0.1 = select i1 %cmp488.1, float %mul.i.i.1, float 1.000000e+00, !dbg !158
  %237 = bitcast float %add529.7.1 to i32, !dbg !166
  %238 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !171
  %239 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %238) #11, !dbg !174
  %xor.i.i.i1107.1 = xor i32 %239, 32, !dbg !175
  %240 = and i32 %239, -64, !dbg !176
  %and.i.i.i1108.1 = add nsw i32 %240, 64, !dbg !176
  %cmp.not.i.i.i1109.1 = icmp slt i32 %xor.i.i.i1107.1, %and.i.i.i1108.1, !dbg !177
  %cond.i.i.i1110.1 = select i1 %cmp.not.i.i.i1109.1, i32 %xor.i.i.i1107.1, i32 %239, !dbg !178
  %shl.i.i.i1111.1 = shl i32 %cond.i.i.i1110.1, 2, !dbg !179
  %241 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i1111.1, i32 %237), !dbg !180
  %242 = bitcast i32 %241 to float, !dbg !181
  %add.i.i1112.1 = fadd contract float %add529.7.1, %242, !dbg !182
  %243 = bitcast float %add.i.i1112.1 to i32, !dbg !185
  %244 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !190
  %245 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %244) #11, !dbg !193
  %xor.i.i.i.i1113.1 = xor i32 %245, 16, !dbg !194
  %246 = and i32 %245, -64, !dbg !195
  %and.i.i.i.i1114.1 = add nsw i32 %246, 64, !dbg !195
  %cmp.not.i.i.i.i1115.1 = icmp slt i32 %xor.i.i.i.i1113.1, %and.i.i.i.i1114.1, !dbg !196
  %cond.i.i.i.i1116.1 = select i1 %cmp.not.i.i.i.i1115.1, i32 %xor.i.i.i.i1113.1, i32 %245, !dbg !197
  %shl.i.i.i.i1117.1 = shl i32 %cond.i.i.i.i1116.1, 2, !dbg !198
  %247 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i1117.1, i32 %243), !dbg !199
  %248 = bitcast i32 %247 to float, !dbg !200
  %cmp538.1 = fcmp contract une float %rescale.sroa.0.0.1, 1.000000e+00, !dbg !201
  %mul542.1 = fmul contract float %denominator.sroa.0.2, %rescale.sroa.0.0.1, !dbg !202
  %denominator.sroa.0.1.1 = select i1 %cmp538.1, float %mul542.1, float %denominator.sroa.0.2, !dbg !202
  %249 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !203
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !203, !noalias !211
  %250 = fptrunc float %mul.i.i1106.11844 to half, !dbg !203
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %249), !dbg !203, !noalias !211
  %251 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !216, !noalias !211
  %252 = fptrunc float %mul.i.i1106.1.1 to half, !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %251), !dbg !216, !noalias !211
  %253 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !218, !noalias !222
  %254 = fptrunc float %mul.i.i1106.2.1 to half, !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %253), !dbg !218, !noalias !222
  %255 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !222
  %256 = fptrunc float %mul.i.i1106.3.1 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %255), !dbg !227, !noalias !222
  %257 = insertelement <4 x half> poison, half %250, i64 0, !dbg !229
  %258 = insertelement <4 x half> %257, half %252, i64 1, !dbg !229
  %259 = insertelement <4 x half> %258, half %254, i64 2, !dbg !229
  %260 = insertelement <4 x half> %259, half %256, i64 3, !dbg !229
  %261 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !203
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !203, !noalias !211
  %262 = fptrunc float %mul.i.i1106.4.1 to half, !dbg !203
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %261), !dbg !203, !noalias !211
  %263 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !216, !noalias !211
  %264 = fptrunc float %mul.i.i1106.5.1 to half, !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %263), !dbg !216, !noalias !211
  %265 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !218, !noalias !222
  %266 = fptrunc float %mul.i.i1106.6.1 to half, !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %265), !dbg !218, !noalias !222
  %267 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !222
  %268 = fptrunc float %mul.i.i1106.7.1 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %267), !dbg !227, !noalias !222
  %269 = insertelement <4 x half> poison, half %262, i64 0, !dbg !229
  %270 = insertelement <4 x half> %269, half %264, i64 1, !dbg !229
  %271 = insertelement <4 x half> %270, half %266, i64 2, !dbg !229
  %272 = insertelement <4 x half> %271, half %268, i64 3, !dbg !229
  %add.i.i.i.1 = fadd contract float %add.i.i1112.1, %248, !dbg !230
  %add547.1 = fadd contract float %denominator.sroa.0.1.1, %add.i.i.i.1, !dbg !232
  br i1 %cmp538.1, label %for.body580.preheader.1, label %if.end590.1, !dbg !233

for.body580.preheader.1:                          ; preds = %for.inc342.1.1
  %output_acc.sroa.0.0.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.0.2, i64 0, !dbg !255
  %mul584.11846 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.0.0.vec.extract.1, !dbg !234
  %output_acc.sroa.0.0.vec.insert1625.1 = insertelement <4 x float> poison, float %mul584.11846, i64 0, !dbg !235
  %output_acc.sroa.0.4.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.0.2, i64 1, !dbg !255
  %mul584.1.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.0.4.vec.extract.1, !dbg !234
  %output_acc.sroa.0.4.vec.insert1634.1 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert1625.1, float %mul584.1.1, i64 1, !dbg !235
  %output_acc.sroa.0.8.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.0.2, i64 2, !dbg !255
  %mul584.2.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.0.8.vec.extract.1, !dbg !234
  %output_acc.sroa.0.8.vec.insert1643.1 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert1634.1, float %mul584.2.1, i64 2, !dbg !235
  %output_acc.sroa.0.12.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.0.2, i64 3, !dbg !255
  %mul584.3.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.0.12.vec.extract.1, !dbg !234
  %output_acc.sroa.0.12.vec.insert1652.1 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert1643.1, float %mul584.3.1, i64 3, !dbg !235
  %output_acc.sroa.30.16.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.30.2, i64 0, !dbg !255
  %mul584.4.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.30.16.vec.extract.1, !dbg !234
  %output_acc.sroa.30.16.vec.insert1663.1 = insertelement <4 x float> poison, float %mul584.4.1, i64 0, !dbg !235
  %output_acc.sroa.30.20.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.30.2, i64 1, !dbg !255
  %mul584.5.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.30.20.vec.extract.1, !dbg !234
  %output_acc.sroa.30.20.vec.insert1672.1 = insertelement <4 x float> %output_acc.sroa.30.16.vec.insert1663.1, float %mul584.5.1, i64 1, !dbg !235
  %output_acc.sroa.30.24.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.30.2, i64 2, !dbg !255
  %mul584.6.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.30.24.vec.extract.1, !dbg !234
  %output_acc.sroa.30.24.vec.insert1681.1 = insertelement <4 x float> %output_acc.sroa.30.20.vec.insert1672.1, float %mul584.6.1, i64 2, !dbg !235
  %output_acc.sroa.30.28.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.30.2, i64 3, !dbg !255
  %mul584.7.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.30.28.vec.extract.1, !dbg !234
  %output_acc.sroa.30.28.vec.insert1690.1 = insertelement <4 x float> %output_acc.sroa.30.24.vec.insert1681.1, float %mul584.7.1, i64 3, !dbg !235
  %output_acc.sroa.58.32.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.58.2, i64 0, !dbg !255
  %mul584.8.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.58.32.vec.extract.1, !dbg !234
  %output_acc.sroa.58.32.vec.insert1701.1 = insertelement <4 x float> poison, float %mul584.8.1, i64 0, !dbg !235
  %output_acc.sroa.58.36.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.58.2, i64 1, !dbg !255
  %mul584.9.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.58.36.vec.extract.1, !dbg !234
  %output_acc.sroa.58.36.vec.insert1710.1 = insertelement <4 x float> %output_acc.sroa.58.32.vec.insert1701.1, float %mul584.9.1, i64 1, !dbg !235
  %output_acc.sroa.58.40.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.58.2, i64 2, !dbg !255
  %mul584.10.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.58.40.vec.extract.1, !dbg !234
  %output_acc.sroa.58.40.vec.insert1719.1 = insertelement <4 x float> %output_acc.sroa.58.36.vec.insert1710.1, float %mul584.10.1, i64 2, !dbg !235
  %output_acc.sroa.58.44.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.58.2, i64 3, !dbg !255
  %mul584.11.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.58.44.vec.extract.1, !dbg !234
  %output_acc.sroa.58.44.vec.insert1728.1 = insertelement <4 x float> %output_acc.sroa.58.40.vec.insert1719.1, float %mul584.11.1, i64 3, !dbg !235
  %output_acc.sroa.86.48.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.86.2, i64 0, !dbg !255
  %mul584.12.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.86.48.vec.extract.1, !dbg !234
  %output_acc.sroa.86.48.vec.insert1739.1 = insertelement <4 x float> poison, float %mul584.12.1, i64 0, !dbg !235
  %output_acc.sroa.86.52.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.86.2, i64 1, !dbg !255
  %mul584.13.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.86.52.vec.extract.1, !dbg !234
  %output_acc.sroa.86.52.vec.insert1748.1 = insertelement <4 x float> %output_acc.sroa.86.48.vec.insert1739.1, float %mul584.13.1, i64 1, !dbg !235
  %output_acc.sroa.86.56.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.86.2, i64 2, !dbg !255
  %mul584.14.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.86.56.vec.extract.1, !dbg !234
  %output_acc.sroa.86.56.vec.insert1757.1 = insertelement <4 x float> %output_acc.sroa.86.52.vec.insert1748.1, float %mul584.14.1, i64 2, !dbg !235
  %output_acc.sroa.86.60.vec.extract.1 = extractelement <4 x float> %output_acc.sroa.86.2, i64 3, !dbg !255
  %mul584.15.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.86.60.vec.extract.1, !dbg !234
  %output_acc.sroa.86.60.vec.insert1766.1 = insertelement <4 x float> %output_acc.sroa.86.56.vec.insert1757.1, float %mul584.15.1, i64 3, !dbg !235
  br label %if.end590.1, !dbg !236

if.end590.1:                                      ; preds = %for.body580.preheader.1, %for.inc342.1.1
  %output_acc.sroa.86.1.1 = phi <4 x float> [ %output_acc.sroa.86.60.vec.insert1766.1, %for.body580.preheader.1 ], [ %output_acc.sroa.86.2, %for.inc342.1.1 ], !dbg !90
  %output_acc.sroa.58.1.1 = phi <4 x float> [ %output_acc.sroa.58.44.vec.insert1728.1, %for.body580.preheader.1 ], [ %output_acc.sroa.58.2, %for.inc342.1.1 ], !dbg !90
  %output_acc.sroa.30.1.1 = phi <4 x float> [ %output_acc.sroa.30.28.vec.insert1690.1, %for.body580.preheader.1 ], [ %output_acc.sroa.30.2, %for.inc342.1.1 ], !dbg !90
  %output_acc.sroa.0.1.1 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1652.1, %for.body580.preheader.1 ], [ %output_acc.sroa.0.2, %for.inc342.1.1 ], !dbg !90
  br i1 %or.cond.1, label %if.end702.11897, label %for.cond604.preheader.11852, !dbg !237

for.cond604.preheader.11852:                      ; preds = %if.end590.1
  %add622.11847 = add nuw nsw i32 %mul124.11795, %mul439
  %conv645.11848 = zext nneg i32 %mul124.11795 to i64
  %shr613.11849 = lshr exact i32 %mul124.11795, 2, !dbg !238
  %add614.11850 = add nuw nsw i32 %shr613.11849, %shr730, !dbg !239
  %cmp615.11851 = icmp ult i32 %add614.11850, 256, !dbg !240
  br i1 %cmp615.11851, label %if.then634.11857, label %if.end670.11864, !dbg !241

if.then634.11857:                                 ; preds = %for.cond604.preheader.11852
  %.idx1202.11853 = shl nuw nsw i64 %conv645.11848, 7, !dbg !242
  %273 = getelementptr inbounds i8, ptr addrspace(4) %30, i64 %.idx1202.11853, !dbg !242
  %condval_2.sroa.0.0.copyload.11854 = load i32, ptr addrspace(4) %273, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.11855 = getelementptr inbounds i8, ptr addrspace(4) %273, i64 4, !dbg !243
  %condval_2.sroa.5.0.copyload.11856 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.11855, align 4, !dbg !243, !tbaa !30
  br label %if.end670.11864, !dbg !244

if.end670.11864:                                  ; preds = %if.then634.11857, %for.cond604.preheader.11852
  %condval_2.sroa.5.0.11858 = phi i32 [ %condval_2.sroa.5.0.copyload.11856, %if.then634.11857 ], [ 0, %for.cond604.preheader.11852 ], !dbg !90
  %condval_2.sroa.0.0.11859 = phi i32 [ %condval_2.sroa.0.0.copyload.11854, %if.then634.11857 ], [ 0, %for.cond604.preheader.11852 ], !dbg !90
  %shr613.1.11860 = lshr exact i32 %mul124.11795, 2, !dbg !238
  %add614.1.11861 = add nuw nsw i32 %shr613.1.11860, %shr730, !dbg !239
  %cmp615.1.11862 = icmp ult i32 %add614.1.11861, 256, !dbg !240
  %274 = icmp sgt i32 %add622.11847, -2
  %or.cond1198.1.11863 = select i1 %cmp615.1.11862, i1 %274, i1 false, !dbg !241
  br i1 %or.cond1198.1.11863, label %if.then634.1.11870, label %if.end670.1.11877, !dbg !241

if.then634.1.11870:                               ; preds = %if.end670.11864
  %.idx1202.1.11865 = shl nuw nsw i64 %conv645.11848, 7, !dbg !242
  %275 = getelementptr inbounds i8, ptr addrspace(4) %31, i64 %.idx1202.1.11865, !dbg !242
  %add.ptr656.1.11866 = getelementptr inbounds i8, ptr addrspace(4) %275, i64 128, !dbg !242
  %condval_2.sroa.0.0.copyload.1.11867 = load i32, ptr addrspace(4) %add.ptr656.1.11866, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.1.11868 = getelementptr inbounds i8, ptr addrspace(4) %275, i64 132, !dbg !243
  %condval_2.sroa.5.0.copyload.1.11869 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.1.11868, align 4, !dbg !243, !tbaa !30
  br label %if.end670.1.11877, !dbg !244

if.end670.1.11877:                                ; preds = %if.then634.1.11870, %if.end670.11864
  %condval_2.sroa.5.0.1.11871 = phi i32 [ %condval_2.sroa.5.0.copyload.1.11869, %if.then634.1.11870 ], [ 0, %if.end670.11864 ], !dbg !90
  %condval_2.sroa.0.0.1.11872 = phi i32 [ %condval_2.sroa.0.0.copyload.1.11867, %if.then634.1.11870 ], [ 0, %if.end670.11864 ], !dbg !90
  %shr613.2.11873 = lshr exact i32 %mul124.11795, 2, !dbg !238
  %add614.2.11874 = add nuw nsw i32 %shr613.2.11873, %shr730, !dbg !239
  %cmp615.2.11875 = icmp ult i32 %add614.2.11874, 256, !dbg !240
  %276 = icmp sgt i32 %add622.11847, -3
  %or.cond1198.2.11876 = select i1 %cmp615.2.11875, i1 %276, i1 false, !dbg !241
  br i1 %or.cond1198.2.11876, label %if.then634.2.11883, label %if.end670.2.11890, !dbg !241

if.then634.2.11883:                               ; preds = %if.end670.1.11877
  %.idx1202.2.11878 = shl nuw nsw i64 %conv645.11848, 7, !dbg !242
  %277 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 %.idx1202.2.11878, !dbg !242
  %add.ptr656.2.11879 = getelementptr inbounds i8, ptr addrspace(4) %277, i64 256, !dbg !242
  %condval_2.sroa.0.0.copyload.2.11880 = load i32, ptr addrspace(4) %add.ptr656.2.11879, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.2.11881 = getelementptr inbounds i8, ptr addrspace(4) %277, i64 260, !dbg !243
  %condval_2.sroa.5.0.copyload.2.11882 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.2.11881, align 4, !dbg !243, !tbaa !30
  br label %if.end670.2.11890, !dbg !244

if.end670.2.11890:                                ; preds = %if.then634.2.11883, %if.end670.1.11877
  %condval_2.sroa.5.0.2.11884 = phi i32 [ %condval_2.sroa.5.0.copyload.2.11882, %if.then634.2.11883 ], [ 0, %if.end670.1.11877 ], !dbg !90
  %condval_2.sroa.0.0.2.11885 = phi i32 [ %condval_2.sroa.0.0.copyload.2.11880, %if.then634.2.11883 ], [ 0, %if.end670.1.11877 ], !dbg !90
  %shr613.3.11886 = lshr exact i32 %mul124.11795, 2, !dbg !238
  %add614.3.11887 = add nuw nsw i32 %shr613.3.11886, %shr730, !dbg !239
  %cmp615.3.11888 = icmp ult i32 %add614.3.11887, 256, !dbg !240
  %278 = icmp sgt i32 %add622.11847, -4
  %or.cond1198.3.11889 = select i1 %cmp615.3.11888, i1 %278, i1 false, !dbg !241
  br i1 %or.cond1198.3.11889, label %if.then634.3.11896, label %if.end702.11897, !dbg !241

if.then634.3.11896:                               ; preds = %if.end670.2.11890
  %.idx1202.3.11891 = shl nuw nsw i64 %conv645.11848, 7, !dbg !242
  %279 = getelementptr inbounds i8, ptr addrspace(4) %33, i64 %.idx1202.3.11891, !dbg !242
  %add.ptr656.3.11892 = getelementptr inbounds i8, ptr addrspace(4) %279, i64 384, !dbg !242
  %condval_2.sroa.0.0.copyload.3.11893 = load i32, ptr addrspace(4) %add.ptr656.3.11892, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.3.11894 = getelementptr inbounds i8, ptr addrspace(4) %279, i64 388, !dbg !243
  %condval_2.sroa.5.0.copyload.3.11895 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.3.11894, align 4, !dbg !243, !tbaa !30
  br label %if.end702.11897, !dbg !244

if.end702.11897:                                  ; preds = %if.then634.3.11896, %if.end670.2.11890, %if.end590.1
  %v_tile_local.sroa.58.0.1 = phi i32 [ 0, %if.end590.1 ], [ %condval_2.sroa.5.0.copyload.3.11895, %if.then634.3.11896 ], [ 0, %if.end670.2.11890 ], !dbg !90
  %v_tile_local.sroa.50.0.1 = phi i32 [ 0, %if.end590.1 ], [ %condval_2.sroa.0.0.copyload.3.11893, %if.then634.3.11896 ], [ 0, %if.end670.2.11890 ], !dbg !90
  %v_tile_local.sroa.42.0.1 = phi i32 [ 0, %if.end590.1 ], [ %condval_2.sroa.5.0.2.11884, %if.then634.3.11896 ], [ %condval_2.sroa.5.0.2.11884, %if.end670.2.11890 ], !dbg !90
  %v_tile_local.sroa.34.0.1 = phi i32 [ 0, %if.end590.1 ], [ %condval_2.sroa.0.0.2.11885, %if.then634.3.11896 ], [ %condval_2.sroa.0.0.2.11885, %if.end670.2.11890 ], !dbg !90
  %v_tile_local.sroa.26.0.1 = phi i32 [ 0, %if.end590.1 ], [ %condval_2.sroa.5.0.1.11871, %if.then634.3.11896 ], [ %condval_2.sroa.5.0.1.11871, %if.end670.2.11890 ], !dbg !90
  %v_tile_local.sroa.18.0.1 = phi i32 [ 0, %if.end590.1 ], [ %condval_2.sroa.0.0.1.11872, %if.then634.3.11896 ], [ %condval_2.sroa.0.0.1.11872, %if.end670.2.11890 ], !dbg !90
  %v_tile_local.sroa.10.0.1 = phi i32 [ 0, %if.end590.1 ], [ %condval_2.sroa.5.0.11858, %if.then634.3.11896 ], [ %condval_2.sroa.5.0.11858, %if.end670.2.11890 ], !dbg !90
  %v_tile_local.sroa.0.0.1 = phi i32 [ 0, %if.end590.1 ], [ %condval_2.sroa.0.0.11859, %if.then634.3.11896 ], [ %condval_2.sroa.0.0.11859, %if.end670.2.11890 ], !dbg !90
  %280 = and i32 %v_tile_local.sroa.50.0.1, 65535, !dbg !245
  %v_column_local.sroa.34.0.insert.ext.1 = zext nneg i32 %280 to i64, !dbg !245
  %v_column_local.sroa.34.0.insert.shift.1 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext.1, 48, !dbg !245
  %281 = and i32 %v_tile_local.sroa.34.0.1, 65535, !dbg !245
  %v_column_local.sroa.26.0.insert.ext.1 = zext nneg i32 %281 to i64, !dbg !245
  %v_column_local.sroa.26.0.insert.shift.1 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext.1, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert.1 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift.1, %v_column_local.sroa.26.0.insert.shift.1, !dbg !245
  %282 = shl i32 %v_tile_local.sroa.18.0.1, 16, !dbg !245
  %v_column_local.sroa.18.0.insert.shift.1 = zext i32 %282 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert.1 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert.1, %v_column_local.sroa.18.0.insert.shift.1, !dbg !245
  %283 = and i32 %v_tile_local.sroa.0.0.1, 65535, !dbg !245
  %v_column_local.sroa.0.0.insert.ext.1 = zext nneg i32 %283 to i64, !dbg !245
  %v_column_local.sroa.0.0.insert.insert.1 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert.1, %v_column_local.sroa.0.0.insert.ext.1, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr739, align 8, !dbg !245
  %v_tile_local.sroa.0.2.extract.shift.1 = lshr i32 %v_tile_local.sroa.0.0.1, 16, !dbg !246
  %v_tile_local.sroa.0.2.extract.trunc.1 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift.1 to i64, !dbg !246
  %v_tile_local.sroa.18.10.extract.shift.1 = and i32 %v_tile_local.sroa.18.0.1, -65536, !dbg !245
  %v_tile_local.sroa.34.18.extract.shift.1 = lshr i32 %v_tile_local.sroa.34.0.1, 16, !dbg !246
  %v_tile_local.sroa.34.18.extract.trunc.1 = zext nneg i32 %v_tile_local.sroa.34.18.extract.shift.1 to i64, !dbg !246
  %v_tile_local.sroa.50.26.extract.shift.1 = lshr i32 %v_tile_local.sroa.50.0.1, 16, !dbg !246
  %v_tile_local.sroa.50.26.extract.trunc.1 = zext nneg i32 %v_tile_local.sroa.50.26.extract.shift.1 to i64, !dbg !246
  %v_column_local.sroa.34.0.insert.shift1407.1 = shl nuw i64 %v_tile_local.sroa.50.26.extract.trunc.1, 48, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1372.1 = shl nuw nsw i64 %v_tile_local.sroa.34.18.extract.trunc.1, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1374.1 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1407.1, %v_column_local.sroa.26.0.insert.shift1372.1, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1337.1 = zext i32 %v_tile_local.sroa.18.10.extract.shift.1 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1339.1 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1374.1, %v_column_local.sroa.18.0.insert.shift1337.1, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1310.1 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1339.1, %v_tile_local.sroa.0.2.extract.trunc.1, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1310.1, ptr addrspace(3) %add.ptr739.1, align 8, !dbg !245
  %284 = and i32 %v_tile_local.sroa.58.0.1, 65535, !dbg !245
  %v_column_local.sroa.34.0.insert.ext1411.1 = zext nneg i32 %284 to i64, !dbg !245
  %v_column_local.sroa.34.0.insert.shift1412.1 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1411.1, 48, !dbg !245
  %285 = and i32 %v_tile_local.sroa.42.0.1, 65535, !dbg !245
  %v_column_local.sroa.26.0.insert.ext1376.1 = zext nneg i32 %285 to i64, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1377.1 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1376.1, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1379.1 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1412.1, %v_column_local.sroa.26.0.insert.shift1377.1, !dbg !245
  %286 = shl i32 %v_tile_local.sroa.26.0.1, 16, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1342.1 = zext i32 %286 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1344.1 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1379.1, %v_column_local.sroa.18.0.insert.shift1342.1, !dbg !245
  %287 = and i32 %v_tile_local.sroa.10.0.1, 65535, !dbg !245
  %v_column_local.sroa.0.0.insert.ext1312.1 = zext nneg i32 %287 to i64, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1314.1 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1344.1, %v_column_local.sroa.0.0.insert.ext1312.1, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1314.1, ptr addrspace(3) %add.ptr739.2, align 8, !dbg !245
  %v_tile_local.sroa.10.6.extract.shift.1 = lshr i32 %v_tile_local.sroa.10.0.1, 16, !dbg !246
  %v_tile_local.sroa.10.6.extract.trunc.1 = zext nneg i32 %v_tile_local.sroa.10.6.extract.shift.1 to i64, !dbg !246
  %v_tile_local.sroa.26.14.extract.shift.1 = and i32 %v_tile_local.sroa.26.0.1, -65536, !dbg !245
  %v_tile_local.sroa.42.22.extract.shift.1 = lshr i32 %v_tile_local.sroa.42.0.1, 16, !dbg !246
  %v_tile_local.sroa.42.22.extract.trunc.1 = zext nneg i32 %v_tile_local.sroa.42.22.extract.shift.1 to i64, !dbg !246
  %v_tile_local.sroa.58.30.extract.shift.1 = lshr i32 %v_tile_local.sroa.58.0.1, 16, !dbg !246
  %v_tile_local.sroa.58.30.extract.trunc.1 = zext nneg i32 %v_tile_local.sroa.58.30.extract.shift.1 to i64, !dbg !246
  %v_column_local.sroa.34.0.insert.shift1417.1 = shl nuw i64 %v_tile_local.sroa.58.30.extract.trunc.1, 48, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1382.1 = shl nuw nsw i64 %v_tile_local.sroa.42.22.extract.trunc.1, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1384.1 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1417.1, %v_column_local.sroa.26.0.insert.shift1382.1, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1347.1 = zext i32 %v_tile_local.sroa.26.14.extract.shift.1 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1349.1 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1384.1, %v_column_local.sroa.18.0.insert.shift1347.1, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1318.1 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1349.1, %v_tile_local.sroa.10.6.extract.trunc.1, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1318.1, ptr addrspace(3) %add.ptr739.3, align 8, !dbg !245
  br i1 %or.cond1140.1.1, label %if.end702.1.1, label %for.cond604.preheader.1.1, !dbg !237

for.cond604.preheader.1.1:                        ; preds = %if.end702.11897
  %add622.1.1 = add nuw nsw i32 %mul124.1.1, %mul439
  %conv645.1.1 = zext nneg i32 %mul124.1.1 to i64
  %shr613.11258.1 = lshr exact i32 %mul124.1.1, 2, !dbg !238
  %add614.11259.1 = add nuw nsw i32 %shr613.11258.1, %shr730, !dbg !239
  %cmp615.11260.1 = icmp ult i32 %add614.11259.1, 256, !dbg !240
  br i1 %cmp615.11260.1, label %if.then634.11266.1, label %if.end670.11270.1, !dbg !241

if.then634.11266.1:                               ; preds = %for.cond604.preheader.1.1
  %.idx1202.11262.1 = shl nuw nsw i64 %conv645.1.1, 7, !dbg !242
  %288 = getelementptr inbounds i8, ptr addrspace(4) %42, i64 %.idx1202.11262.1, !dbg !242
  %condval_2.sroa.0.0.copyload.11263.1 = load i32, ptr addrspace(4) %288, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.11264.1 = getelementptr inbounds i8, ptr addrspace(4) %288, i64 4, !dbg !243
  %condval_2.sroa.5.0.copyload.11265.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.11264.1, align 4, !dbg !243, !tbaa !30
  br label %if.end670.11270.1, !dbg !244

if.end670.11270.1:                                ; preds = %if.then634.11266.1, %for.cond604.preheader.1.1
  %condval_2.sroa.5.0.11267.1 = phi i32 [ %condval_2.sroa.5.0.copyload.11265.1, %if.then634.11266.1 ], [ 0, %for.cond604.preheader.1.1 ], !dbg !90
  %condval_2.sroa.0.0.11268.1 = phi i32 [ %condval_2.sroa.0.0.copyload.11263.1, %if.then634.11266.1 ], [ 0, %for.cond604.preheader.1.1 ], !dbg !90
  %shr613.1.1.1 = lshr exact i32 %mul124.1.1, 2, !dbg !238
  %add614.1.1.1 = add nuw nsw i32 %shr613.1.1.1, %shr730, !dbg !239
  %cmp615.1.1.1 = icmp ult i32 %add614.1.1.1, 256, !dbg !240
  %289 = icmp sgt i32 %add622.1.1, -2
  %or.cond1198.1.1.1 = select i1 %cmp615.1.1.1, i1 %289, i1 false, !dbg !241
  br i1 %or.cond1198.1.1.1, label %if.then634.1.1.1, label %if.end670.1.1.1, !dbg !241

if.then634.1.1.1:                                 ; preds = %if.end670.11270.1
  %.idx1202.1.1.1 = shl nuw nsw i64 %conv645.1.1, 7, !dbg !242
  %290 = getelementptr inbounds i8, ptr addrspace(4) %43, i64 %.idx1202.1.1.1, !dbg !242
  %add.ptr656.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %290, i64 128, !dbg !242
  %condval_2.sroa.0.0.copyload.1.1.1 = load i32, ptr addrspace(4) %add.ptr656.1.1.1, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %290, i64 132, !dbg !243
  %condval_2.sroa.5.0.copyload.1.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.1.1.1, align 4, !dbg !243, !tbaa !30
  br label %if.end670.1.1.1, !dbg !244

if.end670.1.1.1:                                  ; preds = %if.then634.1.1.1, %if.end670.11270.1
  %condval_2.sroa.5.0.1.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1.1, %if.then634.1.1.1 ], [ 0, %if.end670.11270.1 ], !dbg !90
  %condval_2.sroa.0.0.1.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1.1, %if.then634.1.1.1 ], [ 0, %if.end670.11270.1 ], !dbg !90
  %shr613.2.1.1 = lshr exact i32 %mul124.1.1, 2, !dbg !238
  %add614.2.1.1 = add nuw nsw i32 %shr613.2.1.1, %shr730, !dbg !239
  %cmp615.2.1.1 = icmp ult i32 %add614.2.1.1, 256, !dbg !240
  %291 = icmp sgt i32 %add622.1.1, -3
  %or.cond1198.2.1.1 = select i1 %cmp615.2.1.1, i1 %291, i1 false, !dbg !241
  br i1 %or.cond1198.2.1.1, label %if.then634.2.1.1, label %if.end670.2.1.1, !dbg !241

if.then634.2.1.1:                                 ; preds = %if.end670.1.1.1
  %.idx1202.2.1.1 = shl nuw nsw i64 %conv645.1.1, 7, !dbg !242
  %292 = getelementptr inbounds i8, ptr addrspace(4) %44, i64 %.idx1202.2.1.1, !dbg !242
  %add.ptr656.2.1.1 = getelementptr inbounds i8, ptr addrspace(4) %292, i64 256, !dbg !242
  %condval_2.sroa.0.0.copyload.2.1.1 = load i32, ptr addrspace(4) %add.ptr656.2.1.1, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.2.1.1 = getelementptr inbounds i8, ptr addrspace(4) %292, i64 260, !dbg !243
  %condval_2.sroa.5.0.copyload.2.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.2.1.1, align 4, !dbg !243, !tbaa !30
  br label %if.end670.2.1.1, !dbg !244

if.end670.2.1.1:                                  ; preds = %if.then634.2.1.1, %if.end670.1.1.1
  %condval_2.sroa.5.0.2.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.2.1.1, %if.then634.2.1.1 ], [ 0, %if.end670.1.1.1 ], !dbg !90
  %condval_2.sroa.0.0.2.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.2.1.1, %if.then634.2.1.1 ], [ 0, %if.end670.1.1.1 ], !dbg !90
  %shr613.3.1.1 = lshr exact i32 %mul124.1.1, 2, !dbg !238
  %add614.3.1.1 = add nuw nsw i32 %shr613.3.1.1, %shr730, !dbg !239
  %cmp615.3.1.1 = icmp ult i32 %add614.3.1.1, 256, !dbg !240
  %293 = icmp sgt i32 %add622.1.1, -4
  %or.cond1198.3.1.1 = select i1 %cmp615.3.1.1, i1 %293, i1 false, !dbg !241
  br i1 %or.cond1198.3.1.1, label %if.then634.3.1.1, label %if.end702.1.1, !dbg !241

if.then634.3.1.1:                                 ; preds = %if.end670.2.1.1
  %.idx1202.3.1.1 = shl nuw nsw i64 %conv645.1.1, 7, !dbg !242
  %294 = getelementptr inbounds i8, ptr addrspace(4) %45, i64 %.idx1202.3.1.1, !dbg !242
  %add.ptr656.3.1.1 = getelementptr inbounds i8, ptr addrspace(4) %294, i64 384, !dbg !242
  %condval_2.sroa.0.0.copyload.3.1.1 = load i32, ptr addrspace(4) %add.ptr656.3.1.1, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.3.1.1 = getelementptr inbounds i8, ptr addrspace(4) %294, i64 388, !dbg !243
  %condval_2.sroa.5.0.copyload.3.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.3.1.1, align 4, !dbg !243, !tbaa !30
  br label %if.end702.1.1, !dbg !244

if.end702.1.1:                                    ; preds = %if.then634.3.1.1, %if.end670.2.1.1, %if.end702.11897
  %v_tile_local.sroa.58.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.3.1.1, %if.then634.3.1.1 ], [ 0, %if.end670.2.1.1 ], [ 0, %if.end702.11897 ], !dbg !90
  %v_tile_local.sroa.50.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.3.1.1, %if.then634.3.1.1 ], [ 0, %if.end670.2.1.1 ], [ 0, %if.end702.11897 ], !dbg !90
  %v_tile_local.sroa.42.1.1 = phi i32 [ %condval_2.sroa.5.0.2.1.1, %if.then634.3.1.1 ], [ %condval_2.sroa.5.0.2.1.1, %if.end670.2.1.1 ], [ 0, %if.end702.11897 ], !dbg !90
  %v_tile_local.sroa.34.1.1 = phi i32 [ %condval_2.sroa.0.0.2.1.1, %if.then634.3.1.1 ], [ %condval_2.sroa.0.0.2.1.1, %if.end670.2.1.1 ], [ 0, %if.end702.11897 ], !dbg !90
  %v_tile_local.sroa.26.1.1 = phi i32 [ %condval_2.sroa.5.0.1.1.1, %if.then634.3.1.1 ], [ %condval_2.sroa.5.0.1.1.1, %if.end670.2.1.1 ], [ 0, %if.end702.11897 ], !dbg !90
  %v_tile_local.sroa.18.1.1 = phi i32 [ %condval_2.sroa.0.0.1.1.1, %if.then634.3.1.1 ], [ %condval_2.sroa.0.0.1.1.1, %if.end670.2.1.1 ], [ 0, %if.end702.11897 ], !dbg !90
  %v_tile_local.sroa.10.1.1 = phi i32 [ %condval_2.sroa.5.0.11267.1, %if.then634.3.1.1 ], [ %condval_2.sroa.5.0.11267.1, %if.end670.2.1.1 ], [ 0, %if.end702.11897 ], !dbg !90
  %v_tile_local.sroa.0.1.1 = phi i32 [ %condval_2.sroa.0.0.11268.1, %if.then634.3.1.1 ], [ %condval_2.sroa.0.0.11268.1, %if.end670.2.1.1 ], [ 0, %if.end702.11897 ], !dbg !90
  %295 = and i32 %v_tile_local.sroa.50.1.1, 65535, !dbg !245
  %v_column_local.sroa.34.0.insert.ext1421.1 = zext nneg i32 %295 to i64, !dbg !245
  %v_column_local.sroa.34.0.insert.shift1422.1 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1421.1, 48, !dbg !245
  %296 = and i32 %v_tile_local.sroa.34.1.1, 65535, !dbg !245
  %v_column_local.sroa.26.0.insert.ext1386.1 = zext nneg i32 %296 to i64, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1387.1 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1386.1, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1389.1 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1422.1, %v_column_local.sroa.26.0.insert.shift1387.1, !dbg !245
  %297 = shl i32 %v_tile_local.sroa.18.1.1, 16, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1352.1 = zext i32 %297 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1354.1 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1389.1, %v_column_local.sroa.18.0.insert.shift1352.1, !dbg !245
  %298 = and i32 %v_tile_local.sroa.0.1.1, 65535, !dbg !245
  %v_column_local.sroa.0.0.insert.ext1320.1 = zext nneg i32 %298 to i64, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1322.1 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1354.1, %v_column_local.sroa.0.0.insert.ext1320.1, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1322.1, ptr addrspace(3) %add.ptr739.11280, align 8, !dbg !245
  %v_tile_local.sroa.0.2.extract.shift1443.1 = lshr i32 %v_tile_local.sroa.0.1.1, 16, !dbg !246
  %v_tile_local.sroa.0.2.extract.trunc1444.1 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1443.1 to i64, !dbg !246
  %v_tile_local.sroa.18.10.extract.shift1453.1 = and i32 %v_tile_local.sroa.18.1.1, -65536, !dbg !245
  %v_tile_local.sroa.34.18.extract.shift1463.1 = lshr i32 %v_tile_local.sroa.34.1.1, 16, !dbg !246
  %v_tile_local.sroa.34.18.extract.trunc1464.1 = zext nneg i32 %v_tile_local.sroa.34.18.extract.shift1463.1 to i64, !dbg !246
  %v_tile_local.sroa.50.26.extract.shift1473.1 = lshr i32 %v_tile_local.sroa.50.1.1, 16, !dbg !246
  %v_tile_local.sroa.50.26.extract.trunc1474.1 = zext nneg i32 %v_tile_local.sroa.50.26.extract.shift1473.1 to i64, !dbg !246
  %v_column_local.sroa.34.0.insert.shift1427.1 = shl nuw i64 %v_tile_local.sroa.50.26.extract.trunc1474.1, 48, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1392.1 = shl nuw nsw i64 %v_tile_local.sroa.34.18.extract.trunc1464.1, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1394.1 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1427.1, %v_column_local.sroa.26.0.insert.shift1392.1, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1357.1 = zext i32 %v_tile_local.sroa.18.10.extract.shift1453.1 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1359.1 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1394.1, %v_column_local.sroa.18.0.insert.shift1357.1, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1326.1 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1359.1, %v_tile_local.sroa.0.2.extract.trunc1444.1, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1326.1, ptr addrspace(3) %add.ptr739.1.1, align 8, !dbg !245
  %299 = and i32 %v_tile_local.sroa.58.1.1, 65535, !dbg !245
  %v_column_local.sroa.34.0.insert.ext1431.1 = zext nneg i32 %299 to i64, !dbg !245
  %v_column_local.sroa.34.0.insert.shift1432.1 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1431.1, 48, !dbg !245
  %300 = and i32 %v_tile_local.sroa.42.1.1, 65535, !dbg !245
  %v_column_local.sroa.26.0.insert.ext1396.1 = zext nneg i32 %300 to i64, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1397.1 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1396.1, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1399.1 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1432.1, %v_column_local.sroa.26.0.insert.shift1397.1, !dbg !245
  %301 = shl i32 %v_tile_local.sroa.26.1.1, 16, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1362.1 = zext i32 %301 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1364.1 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1399.1, %v_column_local.sroa.18.0.insert.shift1362.1, !dbg !245
  %302 = and i32 %v_tile_local.sroa.10.1.1, 65535, !dbg !245
  %v_column_local.sroa.0.0.insert.ext1328.1 = zext nneg i32 %302 to i64, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1330.1 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1364.1, %v_column_local.sroa.0.0.insert.ext1328.1, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1330.1, ptr addrspace(3) %add.ptr739.2.1, align 8, !dbg !245
  %v_tile_local.sroa.10.6.extract.shift1448.1 = lshr i32 %v_tile_local.sroa.10.1.1, 16, !dbg !246
  %v_tile_local.sroa.10.6.extract.trunc1449.1 = zext nneg i32 %v_tile_local.sroa.10.6.extract.shift1448.1 to i64, !dbg !246
  %v_tile_local.sroa.26.14.extract.shift1458.1 = and i32 %v_tile_local.sroa.26.1.1, -65536, !dbg !245
  %v_tile_local.sroa.42.22.extract.shift1468.1 = lshr i32 %v_tile_local.sroa.42.1.1, 16, !dbg !246
  %v_tile_local.sroa.42.22.extract.trunc1469.1 = zext nneg i32 %v_tile_local.sroa.42.22.extract.shift1468.1 to i64, !dbg !246
  %v_tile_local.sroa.58.30.extract.shift1478.1 = lshr i32 %v_tile_local.sroa.58.1.1, 16, !dbg !246
  %v_tile_local.sroa.58.30.extract.trunc1479.1 = zext nneg i32 %v_tile_local.sroa.58.30.extract.shift1478.1 to i64, !dbg !246
  %v_column_local.sroa.34.0.insert.shift1437.1 = shl nuw i64 %v_tile_local.sroa.58.30.extract.trunc1479.1, 48, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1402.1 = shl nuw nsw i64 %v_tile_local.sroa.42.22.extract.trunc1469.1, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1404.1 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1437.1, %v_column_local.sroa.26.0.insert.shift1402.1, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1367.1 = zext i32 %v_tile_local.sroa.26.14.extract.shift1458.1 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1369.1 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1404.1, %v_column_local.sroa.18.0.insert.shift1367.1, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1334.1 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1369.1, %v_tile_local.sroa.10.6.extract.trunc1449.1, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1334.1, ptr addrspace(3) %add.ptr739.3.1, align 8, !dbg !245
  fence syncscope("warp") release, !dbg !247
  tail call void @llvm.mxc.barrier.warp(), !dbg !250
  fence syncscope("warp") acquire, !dbg !251
  %303 = load <4 x half>, ptr addrspace(3) %add.ptr776, align 8, !dbg !252
  %304 = load <4 x half>, ptr addrspace(3) %add.ptr776.1, align 8, !dbg !252
  %305 = load <4 x half>, ptr addrspace(3) %add.ptr776.2, align 8, !dbg !252
  %306 = load <4 x half>, ptr addrspace(3) %add.ptr776.3, align 8, !dbg !252
  %307 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %303, <4 x half> %260, <4 x float> %output_acc.sroa.0.1.1), !dbg !253
  %308 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %304, <4 x half> %260, <4 x float> %output_acc.sroa.30.1.1), !dbg !253
  %309 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %305, <4 x half> %260, <4 x float> %output_acc.sroa.58.1.1), !dbg !253
  %310 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %306, <4 x half> %260, <4 x float> %output_acc.sroa.86.1.1), !dbg !253
  %311 = load <4 x half>, ptr addrspace(3) %add.ptr776.11284, align 8, !dbg !252
  %312 = load <4 x half>, ptr addrspace(3) %add.ptr776.1.1, align 8, !dbg !252
  %313 = load <4 x half>, ptr addrspace(3) %add.ptr776.2.1, align 8, !dbg !252
  %314 = load <4 x half>, ptr addrspace(3) %add.ptr776.3.1, align 8, !dbg !252
  %315 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %311, <4 x half> %272, <4 x float> %307), !dbg !253
  %316 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %312, <4 x half> %272, <4 x float> %308), !dbg !253
  %317 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %313, <4 x half> %272, <4 x float> %309), !dbg !253
  %318 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %314, <4 x half> %272, <4 x float> %310), !dbg !253
  br label %for.inc807.1, !dbg !254

for.inc807.1:                                     ; preds = %if.end702.1.1, %lor.lhs.false.1
  %output_acc.sroa.86.2.1 = phi <4 x float> [ %output_acc.sroa.86.2, %lor.lhs.false.1 ], [ %318, %if.end702.1.1 ], !dbg !90
  %output_acc.sroa.58.2.1 = phi <4 x float> [ %output_acc.sroa.58.2, %lor.lhs.false.1 ], [ %317, %if.end702.1.1 ], !dbg !90
  %output_acc.sroa.30.2.1 = phi <4 x float> [ %output_acc.sroa.30.2, %lor.lhs.false.1 ], [ %316, %if.end702.1.1 ], !dbg !90
  %output_acc.sroa.0.2.1 = phi <4 x float> [ %output_acc.sroa.0.2, %lor.lhs.false.1 ], [ %315, %if.end702.1.1 ], !dbg !90
  %normalizer.sroa.0.2.1 = phi float [ %normalizer.sroa.0.2, %lor.lhs.false.1 ], [ %normalizer.sroa.0.1.1, %if.end702.1.1 ], !dbg !90
  %denominator.sroa.0.2.1 = phi float [ %denominator.sroa.0.2, %lor.lhs.false.1 ], [ %add547.1, %if.end702.1.1 ], !dbg !90
  %319 = or disjoint i64 %24, 4
  %arrayidx123.2 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %319, !dbg !69
  %320 = load i32, ptr addrspace(1) %arrayidx123.2, align 4, !dbg !69, !tbaa !30
  %mul124.2 = shl nsw i32 %320, 4, !dbg !70
  %321 = or disjoint i64 %24, 5, !dbg !71
  %arrayidx123.1.2 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %321, !dbg !69
  %322 = load i32, ptr addrspace(1) %arrayidx123.1.2, align 4, !dbg !69, !tbaa !30
  %mul124.1.2 = shl nsw i32 %322, 4, !dbg !70
  %cmp131.2 = icmp slt i32 %320, 0, !dbg !72
  %cmp134.not.2 = icmp sgt i32 %mul124.2, %1
  %or.cond.2 = select i1 %cmp131.2, i1 true, i1 %cmp134.not.2, !dbg !73
  br i1 %or.cond.2, label %lor.lhs.false.2, label %if.then.2, !dbg !73

lor.lhs.false.2:                                  ; preds = %for.inc807.1
  %cmp136.2 = icmp slt i32 %322, 0, !dbg !74
  %cmp140.not.2 = icmp sgt i32 %mul124.1.2, %1
  %or.cond1139.2 = select i1 %cmp136.2, i1 true, i1 %cmp140.not.2, !dbg !75
  br i1 %or.cond1139.2, label %for.inc807.2, label %if.then.2, !dbg !75

if.then.2:                                        ; preds = %lor.lhs.false.2, %for.inc807.1
  fence syncscope("warp") release, !dbg !76
  tail call void @llvm.mxc.barrier.warp(), !dbg !79
  fence syncscope("warp") acquire, !dbg !80
  br i1 %or.cond.2, label %for.cond271.preheader.2, label %for.cond154.preheader.2, !dbg !81

for.cond154.preheader.2:                          ; preds = %if.then.2
  %add162.2 = add nuw nsw i32 %mul124.2, %shr159
  %conv201.2 = zext nneg i32 %mul124.2 to i64
  %.idx.2 = shl nuw nsw i64 %conv201.2, 7
  %gep1165.2 = getelementptr i8, ptr addrspace(4) %invariant.gep1164, i64 %.idx.2, !dbg !82
  %cmp165.2 = icmp ult i32 %add162.2, 1024, !dbg !83
  br i1 %cmp165.2, label %if.then193.2, label %if.end.2, !dbg !84

if.then193.2:                                     ; preds = %for.cond154.preheader.2
  %gep1160.2 = getelementptr %struct.__half, ptr addrspace(4) %gep1165.2, i64 %mul195, !dbg !87
  %condval.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %gep1160.2, align 16, !dbg !88, !tbaa !30
  %condval.sroa.5.0.add.ptr208.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.2, i64 4, !dbg !88
  %condval.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr208.sroa_idx.2, align 4, !dbg !88, !tbaa !30
  %condval.sroa.6.0.add.ptr208.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.2, i64 8, !dbg !88
  %condval.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr208.sroa_idx.2, align 8, !dbg !88, !tbaa !30
  %condval.sroa.7.0.add.ptr208.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.2, i64 12, !dbg !88
  %condval.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr208.sroa_idx.2, align 4, !dbg !88, !tbaa !30
  br label %if.end.2, !dbg !89

if.end.2:                                         ; preds = %if.then193.2, %for.cond154.preheader.2
  %condval.sroa.0.0.2 = phi i32 [ %condval.sroa.0.0.copyload.2, %if.then193.2 ], [ 0, %for.cond154.preheader.2 ], !dbg !90
  %condval.sroa.5.0.2 = phi i32 [ %condval.sroa.5.0.copyload.2, %if.then193.2 ], [ 0, %for.cond154.preheader.2 ], !dbg !90
  %condval.sroa.6.0.2 = phi i32 [ %condval.sroa.6.0.copyload.2, %if.then193.2 ], [ 0, %for.cond154.preheader.2 ], !dbg !90
  %condval.sroa.7.0.2 = phi i32 [ %condval.sroa.7.0.copyload.2, %if.then193.2 ], [ 0, %for.cond154.preheader.2 ], !dbg !90
  store i32 %condval.sroa.0.0.2, ptr addrspace(3) %add.ptr266, align 16, !dbg !91, !tbaa !30
  store i32 %condval.sroa.5.0.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr266.sroa_idx, align 4, !dbg !91, !tbaa !30
  store i32 %condval.sroa.6.0.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr266.sroa_idx, align 8, !dbg !91, !tbaa !30
  store i32 %condval.sroa.7.0.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr266.sroa_idx, align 4, !dbg !91, !tbaa !30
  %cmp165.1.2 = icmp ult i32 %add162.2, 1016, !dbg !83
  br i1 %cmp165.1.2, label %if.then193.1.2, label %if.end.1.2, !dbg !84

if.then193.1.2:                                   ; preds = %if.end.2
  %gep1160.1.2 = getelementptr %struct.__half, ptr addrspace(4) %gep1165.2, i64 %add198.1, !dbg !87
  %condval.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %gep1160.1.2, align 16, !dbg !88, !tbaa !30
  %condval.sroa.5.0.add.ptr208.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1.2, i64 4, !dbg !88
  %condval.sroa.5.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr208.sroa_idx.1.2, align 4, !dbg !88, !tbaa !30
  %condval.sroa.6.0.add.ptr208.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1.2, i64 8, !dbg !88
  %condval.sroa.6.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr208.sroa_idx.1.2, align 8, !dbg !88, !tbaa !30
  %condval.sroa.7.0.add.ptr208.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1.2, i64 12, !dbg !88
  %condval.sroa.7.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr208.sroa_idx.1.2, align 4, !dbg !88, !tbaa !30
  br label %if.end.1.2, !dbg !89

if.end.1.2:                                       ; preds = %if.then193.1.2, %if.end.2
  %condval.sroa.0.0.1.2 = phi i32 [ %condval.sroa.0.0.copyload.1.2, %if.then193.1.2 ], [ 0, %if.end.2 ], !dbg !90
  %condval.sroa.5.0.1.2 = phi i32 [ %condval.sroa.5.0.copyload.1.2, %if.then193.1.2 ], [ 0, %if.end.2 ], !dbg !90
  %condval.sroa.6.0.1.2 = phi i32 [ %condval.sroa.6.0.copyload.1.2, %if.then193.1.2 ], [ 0, %if.end.2 ], !dbg !90
  %condval.sroa.7.0.1.2 = phi i32 [ %condval.sroa.7.0.copyload.1.2, %if.then193.1.2 ], [ 0, %if.end.2 ], !dbg !90
  store i32 %condval.sroa.0.0.1.2, ptr addrspace(3) %add.ptr266.1, align 16, !dbg !91, !tbaa !30
  store i32 %condval.sroa.5.0.1.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr266.sroa_idx.1, align 4, !dbg !91, !tbaa !30
  store i32 %condval.sroa.6.0.1.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr266.sroa_idx.1, align 8, !dbg !91, !tbaa !30
  store i32 %condval.sroa.7.0.1.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr266.sroa_idx.1, align 4, !dbg !91, !tbaa !30
  br label %for.inc342.2, !dbg !86

for.cond271.preheader.2:                          ; preds = %if.then.2
  store i32 0, ptr addrspace(3) %26, align 16, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.10.0..sroa_idx, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.14.0..sroa_idx, align 8, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.18.0..sroa_idx, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %gep.1, align 16, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.10.0.gep.1.sroa_idx, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.14.0.gep.1.sroa_idx, align 8, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.18.0.gep.1.sroa_idx, align 4, !dbg !85, !tbaa !30
  br label %for.inc342.2, !dbg !86

for.inc342.2:                                     ; preds = %for.cond271.preheader.2, %if.end.1.2
  %cmp147.1.2 = icmp slt i32 %322, 0, !dbg !92
  %cmp152.not.1.2 = icmp sgt i32 %mul124.1.2, %1
  %or.cond1140.1.2 = select i1 %cmp147.1.2, i1 true, i1 %cmp152.not.1.2, !dbg !81
  br i1 %or.cond1140.1.2, label %for.cond271.preheader.1.2, label %for.cond154.preheader.1.2, !dbg !81

for.cond154.preheader.1.2:                        ; preds = %for.inc342.2
  %add162.1.2 = add nuw nsw i32 %mul124.1.2, %shr159
  %conv201.1.2 = zext nneg i32 %mul124.1.2 to i64
  %.idx.1.2 = shl nuw nsw i64 %conv201.1.2, 7
  %gep1165.1.2 = getelementptr i8, ptr addrspace(4) %invariant.gep1164, i64 %.idx.1.2, !dbg !82
  %cmp165.11219.2 = icmp ult i32 %add162.1.2, 1024, !dbg !83
  br i1 %cmp165.11219.2, label %if.then193.11229.2, label %if.end.11239.2, !dbg !84

if.then193.11229.2:                               ; preds = %for.cond154.preheader.1.2
  %gep1160.11221.2 = getelementptr %struct.__half, ptr addrspace(4) %gep1165.1.2, i64 %mul195, !dbg !87
  %condval.sroa.0.0.copyload.11222.2 = load i32, ptr addrspace(4) %gep1160.11221.2, align 16, !dbg !88, !tbaa !30
  %condval.sroa.5.0.add.ptr208.sroa_idx.11223.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.11221.2, i64 4, !dbg !88
  %condval.sroa.5.0.copyload.11224.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr208.sroa_idx.11223.2, align 4, !dbg !88, !tbaa !30
  %condval.sroa.6.0.add.ptr208.sroa_idx.11225.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.11221.2, i64 8, !dbg !88
  %condval.sroa.6.0.copyload.11226.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr208.sroa_idx.11225.2, align 8, !dbg !88, !tbaa !30
  %condval.sroa.7.0.add.ptr208.sroa_idx.11227.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.11221.2, i64 12, !dbg !88
  %condval.sroa.7.0.copyload.11228.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr208.sroa_idx.11227.2, align 4, !dbg !88, !tbaa !30
  br label %if.end.11239.2, !dbg !89

if.end.11239.2:                                   ; preds = %if.then193.11229.2, %for.cond154.preheader.1.2
  %condval.sroa.0.0.11230.2 = phi i32 [ %condval.sroa.0.0.copyload.11222.2, %if.then193.11229.2 ], [ 0, %for.cond154.preheader.1.2 ], !dbg !90
  %condval.sroa.5.0.11231.2 = phi i32 [ %condval.sroa.5.0.copyload.11224.2, %if.then193.11229.2 ], [ 0, %for.cond154.preheader.1.2 ], !dbg !90
  %condval.sroa.6.0.11232.2 = phi i32 [ %condval.sroa.6.0.copyload.11226.2, %if.then193.11229.2 ], [ 0, %for.cond154.preheader.1.2 ], !dbg !90
  %condval.sroa.7.0.11233.2 = phi i32 [ %condval.sroa.7.0.copyload.11228.2, %if.then193.11229.2 ], [ 0, %for.cond154.preheader.1.2 ], !dbg !90
  store i32 %condval.sroa.0.0.11230.2, ptr addrspace(3) %add.ptr266.11235, align 16, !dbg !91, !tbaa !30
  store i32 %condval.sroa.5.0.11231.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr266.sroa_idx.11236, align 4, !dbg !91, !tbaa !30
  store i32 %condval.sroa.6.0.11232.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr266.sroa_idx.11237, align 8, !dbg !91, !tbaa !30
  store i32 %condval.sroa.7.0.11233.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr266.sroa_idx.11238, align 4, !dbg !91, !tbaa !30
  %cmp165.1.1.2 = icmp ult i32 %add162.1.2, 1016, !dbg !83
  br i1 %cmp165.1.1.2, label %if.then193.1.1.2, label %if.end.1.1.2, !dbg !84

if.then193.1.1.2:                                 ; preds = %if.end.11239.2
  %gep1160.1.1.2 = getelementptr %struct.__half, ptr addrspace(4) %gep1165.1.2, i64 %add198.1.1, !dbg !87
  %condval.sroa.0.0.copyload.1.1.2 = load i32, ptr addrspace(4) %gep1160.1.1.2, align 16, !dbg !88, !tbaa !30
  %condval.sroa.5.0.add.ptr208.sroa_idx.1.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1.1.2, i64 4, !dbg !88
  %condval.sroa.5.0.copyload.1.1.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr208.sroa_idx.1.1.2, align 4, !dbg !88, !tbaa !30
  %condval.sroa.6.0.add.ptr208.sroa_idx.1.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1.1.2, i64 8, !dbg !88
  %condval.sroa.6.0.copyload.1.1.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr208.sroa_idx.1.1.2, align 8, !dbg !88, !tbaa !30
  %condval.sroa.7.0.add.ptr208.sroa_idx.1.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1.1.2, i64 12, !dbg !88
  %condval.sroa.7.0.copyload.1.1.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr208.sroa_idx.1.1.2, align 4, !dbg !88, !tbaa !30
  br label %if.end.1.1.2, !dbg !89

if.end.1.1.2:                                     ; preds = %if.then193.1.1.2, %if.end.11239.2
  %condval.sroa.0.0.1.1.2 = phi i32 [ %condval.sroa.0.0.copyload.1.1.2, %if.then193.1.1.2 ], [ 0, %if.end.11239.2 ], !dbg !90
  %condval.sroa.5.0.1.1.2 = phi i32 [ %condval.sroa.5.0.copyload.1.1.2, %if.then193.1.1.2 ], [ 0, %if.end.11239.2 ], !dbg !90
  %condval.sroa.6.0.1.1.2 = phi i32 [ %condval.sroa.6.0.copyload.1.1.2, %if.then193.1.1.2 ], [ 0, %if.end.11239.2 ], !dbg !90
  %condval.sroa.7.0.1.1.2 = phi i32 [ %condval.sroa.7.0.copyload.1.1.2, %if.then193.1.1.2 ], [ 0, %if.end.11239.2 ], !dbg !90
  store i32 %condval.sroa.0.0.1.1.2, ptr addrspace(3) %add.ptr266.1.1, align 16, !dbg !91, !tbaa !30
  store i32 %condval.sroa.5.0.1.1.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr266.sroa_idx.1.1, align 4, !dbg !91, !tbaa !30
  store i32 %condval.sroa.6.0.1.1.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr266.sroa_idx.1.1, align 8, !dbg !91, !tbaa !30
  store i32 %condval.sroa.7.0.1.1.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr266.sroa_idx.1.1, align 4, !dbg !91, !tbaa !30
  br label %for.inc342.1.2, !dbg !86

for.cond271.preheader.1.2:                        ; preds = %for.inc342.2
  store i32 0, ptr addrspace(3) %29, align 16, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.10.0..sroa_idx1598, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.14.0..sroa_idx1602, align 8, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.18.0..sroa_idx1606, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %gep.1.1, align 16, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.10.0.gep.1.1.sroa_idx, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.14.0.gep.1.1.sroa_idx, align 8, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.18.0.gep.1.1.sroa_idx, align 4, !dbg !85, !tbaa !30
  br label %for.inc342.1.2, !dbg !86

for.inc342.1.2:                                   ; preds = %for.cond271.preheader.1.2, %if.end.1.1.2
  fence syncscope("warp") release, !dbg !93
  tail call void @llvm.mxc.barrier.warp(), !dbg !96
  fence syncscope("warp") acquire, !dbg !97
  %k_local.sroa.0.0.copyload.21898 = load <4 x half>, ptr addrspace(3) %gep1167, align 8, !dbg !98
  %323 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.21898, <4 x half> %11, <4 x float> zeroinitializer), !dbg !99
  %k_local.sroa.0.0.copyload.1.21899 = load <4 x half>, ptr addrspace(3) %gep1167.1, align 8, !dbg !98
  %324 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.21899, <4 x half> %11, <4 x float> zeroinitializer), !dbg !99
  %k_local.sroa.0.0.copyload.11250.2 = load <4 x half>, ptr addrspace(3) %gep1167.11249, align 8, !dbg !98
  %325 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11250.2, <4 x half> %13, <4 x float> %323), !dbg !99
  %k_local.sroa.0.0.copyload.1.1.2 = load <4 x half>, ptr addrspace(3) %gep1167.1.1, align 8, !dbg !98
  %326 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1.2, <4 x half> %13, <4 x float> %324), !dbg !99
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %gep1167.2, align 8, !dbg !98
  %327 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %15, <4 x float> %325), !dbg !99
  %k_local.sroa.0.0.copyload.1.2.2 = load <4 x half>, ptr addrspace(3) %gep1167.1.2, align 8, !dbg !98
  %328 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2.2, <4 x half> %15, <4 x float> %326), !dbg !99
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %gep1167.3, align 8, !dbg !98
  %329 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %17, <4 x float> %327), !dbg !99
  %k_local.sroa.0.0.copyload.1.3.2 = load <4 x half>, ptr addrspace(3) %gep1167.1.3, align 8, !dbg !98
  %330 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3.2, <4 x half> %17, <4 x float> %328), !dbg !99
  %cmp447.not.21900 = icmp sgt i32 %mul124.2, %invariant.op
  %or.cond1786.2 = select i1 %or.cond.2, i1 true, i1 %cmp447.not.21900, !dbg !100
  %scores.sroa.0.0.vec.extract.2 = extractelement <4 x float> %329, i64 0, !dbg !100
  %condval_1.0.21901 = select i1 %or.cond1786.2, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract.2, !dbg !100
  %cmp447.not.1.2 = icmp sgt i32 %mul124.2, %invariant.op1779
  %or.cond1787.2 = select i1 %or.cond.2, i1 true, i1 %cmp447.not.1.2, !dbg !100
  %scores.sroa.0.4.vec.extract.2 = extractelement <4 x float> %329, i64 1, !dbg !100
  %condval_1.0.1.2 = select i1 %or.cond1787.2, float 0xFFF0000000000000, float %scores.sroa.0.4.vec.extract.2, !dbg !100
  %cmp447.not.2.2 = icmp sgt i32 %mul124.2, %invariant.op1780
  %or.cond1788.2 = select i1 %or.cond.2, i1 true, i1 %cmp447.not.2.2, !dbg !100
  %scores.sroa.0.8.vec.extract.2 = extractelement <4 x float> %329, i64 2, !dbg !100
  %condval_1.0.2.2 = select i1 %or.cond1788.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract.2, !dbg !100
  %cmp447.not.3.2 = icmp sgt i32 %mul124.2, %invariant.op1781
  %or.cond1789.2 = select i1 %or.cond.2, i1 true, i1 %cmp447.not.3.2, !dbg !100
  %scores.sroa.0.12.vec.extract.2 = extractelement <4 x float> %329, i64 3, !dbg !100
  %condval_1.0.3.2 = select i1 %or.cond1789.2, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract.2, !dbg !100
  %cmp447.not.4.2 = icmp sgt i32 %mul124.1.2, %invariant.op1782
  %or.cond1790.2 = select i1 %or.cond1140.1.2, i1 true, i1 %cmp447.not.4.2, !dbg !100
  %scores.sroa.42.16.vec.extract.2 = extractelement <4 x float> %330, i64 0, !dbg !100
  %condval_1.0.4.2 = select i1 %or.cond1790.2, float 0xFFF0000000000000, float %scores.sroa.42.16.vec.extract.2, !dbg !100
  %cmp447.not.5.2 = icmp sgt i32 %mul124.1.2, %invariant.op1783
  %or.cond1791.2 = select i1 %or.cond1140.1.2, i1 true, i1 %cmp447.not.5.2, !dbg !100
  %scores.sroa.42.20.vec.extract.2 = extractelement <4 x float> %330, i64 1, !dbg !100
  %condval_1.0.5.2 = select i1 %or.cond1791.2, float 0xFFF0000000000000, float %scores.sroa.42.20.vec.extract.2, !dbg !100
  %cmp447.not.6.2 = icmp sgt i32 %mul124.1.2, %invariant.op1784
  %or.cond1792.2 = select i1 %or.cond1140.1.2, i1 true, i1 %cmp447.not.6.2, !dbg !100
  %scores.sroa.42.24.vec.extract.2 = extractelement <4 x float> %330, i64 2, !dbg !100
  %condval_1.0.6.2 = select i1 %or.cond1792.2, float 0xFFF0000000000000, float %scores.sroa.42.24.vec.extract.2, !dbg !100
  %cmp447.not.7.2 = icmp sgt i32 %mul124.1.2, %invariant.op1785
  %or.cond1793.2 = select i1 %or.cond1140.1.2, i1 true, i1 %cmp447.not.7.2, !dbg !100
  %scores.sroa.42.28.vec.extract.2 = extractelement <4 x float> %330, i64 3, !dbg !100
  %condval_1.0.7.2 = select i1 %or.cond1793.2, float 0xFFF0000000000000, float %scores.sroa.42.28.vec.extract.2, !dbg !100
  %331 = tail call contract noundef float @llvm.maxnum.f32(float %condval_1.0.21901, float 0xFFF0000000000000), !dbg !101
  %332 = tail call contract noundef float @llvm.maxnum.f32(float %331, float %condval_1.0.4.2), !dbg !101
  %333 = tail call contract noundef float @llvm.maxnum.f32(float %332, float %condval_1.0.1.2), !dbg !101
  %334 = tail call contract noundef float @llvm.maxnum.f32(float %333, float %condval_1.0.5.2), !dbg !101
  %335 = tail call contract noundef float @llvm.maxnum.f32(float %334, float %condval_1.0.2.2), !dbg !101
  %336 = tail call contract noundef float @llvm.maxnum.f32(float %335, float %condval_1.0.6.2), !dbg !101
  %337 = tail call contract noundef float @llvm.maxnum.f32(float %336, float %condval_1.0.3.2), !dbg !101
  %338 = tail call contract noundef float @llvm.maxnum.f32(float %337, float %condval_1.0.7.2), !dbg !101
  %339 = bitcast float %338 to i32, !dbg !105
  %340 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !114
  %341 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %340) #11, !dbg !119
  %xor.i.i.i.2 = xor i32 %341, 32, !dbg !120
  %342 = and i32 %341, -64, !dbg !121
  %and.i.i.i.2 = add nsw i32 %342, 64, !dbg !121
  %cmp.not.i.i.i.2 = icmp slt i32 %xor.i.i.i.2, %and.i.i.i.2, !dbg !122
  %cond.i.i.i.2 = select i1 %cmp.not.i.i.i.2, i32 %xor.i.i.i.2, i32 %341, !dbg !123
  %shl.i.i.i.2 = shl i32 %cond.i.i.i.2, 2, !dbg !124
  %343 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.2, i32 %339), !dbg !125
  %344 = bitcast i32 %343 to float, !dbg !126
  %345 = tail call contract noundef float @llvm.maxnum.f32(float %338, float %344), !dbg !127
  %346 = bitcast float %345 to i32, !dbg !135
  %347 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !140
  %348 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %347) #11, !dbg !143
  %xor.i.i.i.i.2 = xor i32 %348, 16, !dbg !144
  %349 = and i32 %348, -64, !dbg !145
  %and.i.i.i.i.2 = add nsw i32 %349, 64, !dbg !145
  %cmp.not.i.i.i.i.2 = icmp slt i32 %xor.i.i.i.i.2, %and.i.i.i.i.2, !dbg !146
  %cond.i.i.i.i.2 = select i1 %cmp.not.i.i.i.i.2, i32 %xor.i.i.i.i.2, i32 %348, !dbg !147
  %shl.i.i.i.i.2 = shl i32 %cond.i.i.i.i.2, 2, !dbg !148
  %350 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.2, i32 %346), !dbg !149
  %351 = bitcast i32 %350 to float, !dbg !150
  %352 = tail call contract noundef float @llvm.maxnum.f32(float %345, float %351), !dbg !151
  %sub.2 = fsub contract float %352, %normalizer.sroa.0.2.1, !dbg !155
  %mul487.2 = fmul contract float %sub.2, 0x3FC7154760000000, !dbg !156
  %cmp488.2 = fcmp contract ogt float %mul487.2, 7.000000e+00, !dbg !157
  %sub492.2 = fsub contract float %normalizer.sroa.0.2.1, %352
  %mul493.2 = fmul contract float %sub492.2, 0x3FC7154760000000
  %cmp.i.i.2 = fcmp contract olt float %mul493.2, -1.260000e+02
  %cond.i.i.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00
  %add.i.i.2 = fadd contract float %mul493.2, %cond.i.i.2
  %353 = tail call contract float @llvm.exp2.f32(float %add.i.i.2)
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %353
  %normalizer.sroa.0.1.2 = select i1 %cmp488.2, float %352, float %normalizer.sroa.0.2.1, !dbg !158
  %sub508.21902 = fsub contract float %condval_1.0.21901, %normalizer.sroa.0.1.2, !dbg !159
  %mul509.21903 = fmul contract float %sub508.21902, 0x3FC7154760000000, !dbg !160
  %add510.21904 = fadd contract float %mul509.21903, 8.000000e+00, !dbg !161
  %cmp.i.i1102.21905 = fcmp contract olt float %add510.21904, -1.260000e+02, !dbg !162
  %cond.i.i1103.21906 = select contract i1 %cmp.i.i1102.21905, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.21907 = fadd contract float %add510.21904, %cond.i.i1103.21906, !dbg !162
  %354 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.21907), !dbg !162
  %cond2.i.i1105.21908 = select contract i1 %cmp.i.i1102.21905, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.21909 = fmul contract float %cond2.i.i1105.21908, %354, !dbg !162
  %sub508.1.2 = fsub contract float %condval_1.0.1.2, %normalizer.sroa.0.1.2, !dbg !159
  %mul509.1.2 = fmul contract float %sub508.1.2, 0x3FC7154760000000, !dbg !160
  %add510.1.2 = fadd contract float %mul509.1.2, 8.000000e+00, !dbg !161
  %cmp.i.i1102.1.2 = fcmp contract olt float %add510.1.2, -1.260000e+02, !dbg !162
  %cond.i.i1103.1.2 = select contract i1 %cmp.i.i1102.1.2, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.1.2 = fadd contract float %add510.1.2, %cond.i.i1103.1.2, !dbg !162
  %355 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.1.2), !dbg !162
  %cond2.i.i1105.1.2 = select contract i1 %cmp.i.i1102.1.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.1.2 = fmul contract float %cond2.i.i1105.1.2, %355, !dbg !162
  %sub508.2.2 = fsub contract float %condval_1.0.2.2, %normalizer.sroa.0.1.2, !dbg !159
  %mul509.2.2 = fmul contract float %sub508.2.2, 0x3FC7154760000000, !dbg !160
  %add510.2.2 = fadd contract float %mul509.2.2, 8.000000e+00, !dbg !161
  %cmp.i.i1102.2.2 = fcmp contract olt float %add510.2.2, -1.260000e+02, !dbg !162
  %cond.i.i1103.2.2 = select contract i1 %cmp.i.i1102.2.2, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.2.2 = fadd contract float %add510.2.2, %cond.i.i1103.2.2, !dbg !162
  %356 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.2.2), !dbg !162
  %cond2.i.i1105.2.2 = select contract i1 %cmp.i.i1102.2.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.2.2 = fmul contract float %cond2.i.i1105.2.2, %356, !dbg !162
  %sub508.3.2 = fsub contract float %condval_1.0.3.2, %normalizer.sroa.0.1.2, !dbg !159
  %mul509.3.2 = fmul contract float %sub508.3.2, 0x3FC7154760000000, !dbg !160
  %add510.3.2 = fadd contract float %mul509.3.2, 8.000000e+00, !dbg !161
  %cmp.i.i1102.3.2 = fcmp contract olt float %add510.3.2, -1.260000e+02, !dbg !162
  %cond.i.i1103.3.2 = select contract i1 %cmp.i.i1102.3.2, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.3.2 = fadd contract float %add510.3.2, %cond.i.i1103.3.2, !dbg !162
  %357 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.3.2), !dbg !162
  %cond2.i.i1105.3.2 = select contract i1 %cmp.i.i1102.3.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.3.2 = fmul contract float %cond2.i.i1105.3.2, %357, !dbg !162
  %sub508.4.2 = fsub contract float %condval_1.0.4.2, %normalizer.sroa.0.1.2, !dbg !159
  %mul509.4.2 = fmul contract float %sub508.4.2, 0x3FC7154760000000, !dbg !160
  %add510.4.2 = fadd contract float %mul509.4.2, 8.000000e+00, !dbg !161
  %cmp.i.i1102.4.2 = fcmp contract olt float %add510.4.2, -1.260000e+02, !dbg !162
  %cond.i.i1103.4.2 = select contract i1 %cmp.i.i1102.4.2, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.4.2 = fadd contract float %add510.4.2, %cond.i.i1103.4.2, !dbg !162
  %358 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.4.2), !dbg !162
  %cond2.i.i1105.4.2 = select contract i1 %cmp.i.i1102.4.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.4.2 = fmul contract float %cond2.i.i1105.4.2, %358, !dbg !162
  %sub508.5.2 = fsub contract float %condval_1.0.5.2, %normalizer.sroa.0.1.2, !dbg !159
  %mul509.5.2 = fmul contract float %sub508.5.2, 0x3FC7154760000000, !dbg !160
  %add510.5.2 = fadd contract float %mul509.5.2, 8.000000e+00, !dbg !161
  %cmp.i.i1102.5.2 = fcmp contract olt float %add510.5.2, -1.260000e+02, !dbg !162
  %cond.i.i1103.5.2 = select contract i1 %cmp.i.i1102.5.2, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.5.2 = fadd contract float %add510.5.2, %cond.i.i1103.5.2, !dbg !162
  %359 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.5.2), !dbg !162
  %cond2.i.i1105.5.2 = select contract i1 %cmp.i.i1102.5.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.5.2 = fmul contract float %cond2.i.i1105.5.2, %359, !dbg !162
  %sub508.6.2 = fsub contract float %condval_1.0.6.2, %normalizer.sroa.0.1.2, !dbg !159
  %mul509.6.2 = fmul contract float %sub508.6.2, 0x3FC7154760000000, !dbg !160
  %add510.6.2 = fadd contract float %mul509.6.2, 8.000000e+00, !dbg !161
  %cmp.i.i1102.6.2 = fcmp contract olt float %add510.6.2, -1.260000e+02, !dbg !162
  %cond.i.i1103.6.2 = select contract i1 %cmp.i.i1102.6.2, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.6.2 = fadd contract float %add510.6.2, %cond.i.i1103.6.2, !dbg !162
  %360 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.6.2), !dbg !162
  %cond2.i.i1105.6.2 = select contract i1 %cmp.i.i1102.6.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.6.2 = fmul contract float %cond2.i.i1105.6.2, %360, !dbg !162
  %sub508.7.2 = fsub contract float %condval_1.0.7.2, %normalizer.sroa.0.1.2, !dbg !159
  %mul509.7.2 = fmul contract float %sub508.7.2, 0x3FC7154760000000, !dbg !160
  %add510.7.2 = fadd contract float %mul509.7.2, 8.000000e+00, !dbg !161
  %cmp.i.i1102.7.2 = fcmp contract olt float %add510.7.2, -1.260000e+02, !dbg !162
  %cond.i.i1103.7.2 = select contract i1 %cmp.i.i1102.7.2, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.7.2 = fadd contract float %add510.7.2, %cond.i.i1103.7.2, !dbg !162
  %361 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.7.2), !dbg !162
  %cond2.i.i1105.7.2 = select contract i1 %cmp.i.i1102.7.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.7.2 = fmul contract float %cond2.i.i1105.7.2, %361, !dbg !162
  %add529.21910 = fadd contract float %mul.i.i1106.21909, 0.000000e+00, !dbg !165
  %add529.1.2 = fadd contract float %add529.21910, %mul.i.i1106.4.2, !dbg !165
  %add529.2.2 = fadd contract float %add529.1.2, %mul.i.i1106.1.2, !dbg !165
  %add529.3.2 = fadd contract float %add529.2.2, %mul.i.i1106.5.2, !dbg !165
  %add529.4.2 = fadd contract float %add529.3.2, %mul.i.i1106.2.2, !dbg !165
  %add529.5.2 = fadd contract float %add529.4.2, %mul.i.i1106.6.2, !dbg !165
  %add529.6.2 = fadd contract float %add529.5.2, %mul.i.i1106.3.2, !dbg !165
  %add529.7.2 = fadd contract float %add529.6.2, %mul.i.i1106.7.2, !dbg !165
  %rescale.sroa.0.0.2 = select i1 %cmp488.2, float %mul.i.i.2, float 1.000000e+00, !dbg !158
  %362 = bitcast float %add529.7.2 to i32, !dbg !166
  %363 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !171
  %364 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %363) #11, !dbg !174
  %xor.i.i.i1107.2 = xor i32 %364, 32, !dbg !175
  %365 = and i32 %364, -64, !dbg !176
  %and.i.i.i1108.2 = add nsw i32 %365, 64, !dbg !176
  %cmp.not.i.i.i1109.2 = icmp slt i32 %xor.i.i.i1107.2, %and.i.i.i1108.2, !dbg !177
  %cond.i.i.i1110.2 = select i1 %cmp.not.i.i.i1109.2, i32 %xor.i.i.i1107.2, i32 %364, !dbg !178
  %shl.i.i.i1111.2 = shl i32 %cond.i.i.i1110.2, 2, !dbg !179
  %366 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i1111.2, i32 %362), !dbg !180
  %367 = bitcast i32 %366 to float, !dbg !181
  %add.i.i1112.2 = fadd contract float %add529.7.2, %367, !dbg !182
  %368 = bitcast float %add.i.i1112.2 to i32, !dbg !185
  %369 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !190
  %370 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %369) #11, !dbg !193
  %xor.i.i.i.i1113.2 = xor i32 %370, 16, !dbg !194
  %371 = and i32 %370, -64, !dbg !195
  %and.i.i.i.i1114.2 = add nsw i32 %371, 64, !dbg !195
  %cmp.not.i.i.i.i1115.2 = icmp slt i32 %xor.i.i.i.i1113.2, %and.i.i.i.i1114.2, !dbg !196
  %cond.i.i.i.i1116.2 = select i1 %cmp.not.i.i.i.i1115.2, i32 %xor.i.i.i.i1113.2, i32 %370, !dbg !197
  %shl.i.i.i.i1117.2 = shl i32 %cond.i.i.i.i1116.2, 2, !dbg !198
  %372 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i1117.2, i32 %368), !dbg !199
  %373 = bitcast i32 %372 to float, !dbg !200
  %cmp538.2 = fcmp contract une float %rescale.sroa.0.0.2, 1.000000e+00, !dbg !201
  %mul542.2 = fmul contract float %denominator.sroa.0.2.1, %rescale.sroa.0.0.2, !dbg !202
  %denominator.sroa.0.1.2 = select i1 %cmp538.2, float %mul542.2, float %denominator.sroa.0.2.1, !dbg !202
  %374 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !203
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !203, !noalias !211
  %375 = fptrunc float %mul.i.i1106.21909 to half, !dbg !203
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %374), !dbg !203, !noalias !211
  %376 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !216, !noalias !211
  %377 = fptrunc float %mul.i.i1106.1.2 to half, !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %376), !dbg !216, !noalias !211
  %378 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !218, !noalias !222
  %379 = fptrunc float %mul.i.i1106.2.2 to half, !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %378), !dbg !218, !noalias !222
  %380 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !222
  %381 = fptrunc float %mul.i.i1106.3.2 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %380), !dbg !227, !noalias !222
  %382 = insertelement <4 x half> poison, half %375, i64 0, !dbg !229
  %383 = insertelement <4 x half> %382, half %377, i64 1, !dbg !229
  %384 = insertelement <4 x half> %383, half %379, i64 2, !dbg !229
  %385 = insertelement <4 x half> %384, half %381, i64 3, !dbg !229
  %386 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !203
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !203, !noalias !211
  %387 = fptrunc float %mul.i.i1106.4.2 to half, !dbg !203
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %386), !dbg !203, !noalias !211
  %388 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !216, !noalias !211
  %389 = fptrunc float %mul.i.i1106.5.2 to half, !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %388), !dbg !216, !noalias !211
  %390 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !218, !noalias !222
  %391 = fptrunc float %mul.i.i1106.6.2 to half, !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %390), !dbg !218, !noalias !222
  %392 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !222
  %393 = fptrunc float %mul.i.i1106.7.2 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %392), !dbg !227, !noalias !222
  %394 = insertelement <4 x half> poison, half %387, i64 0, !dbg !229
  %395 = insertelement <4 x half> %394, half %389, i64 1, !dbg !229
  %396 = insertelement <4 x half> %395, half %391, i64 2, !dbg !229
  %397 = insertelement <4 x half> %396, half %393, i64 3, !dbg !229
  %add.i.i.i.2 = fadd contract float %add.i.i1112.2, %373, !dbg !230
  %add547.2 = fadd contract float %denominator.sroa.0.1.2, %add.i.i.i.2, !dbg !232
  br i1 %cmp538.2, label %for.body580.preheader.2, label %if.end590.2, !dbg !233

for.body580.preheader.2:                          ; preds = %for.inc342.1.2
  %output_acc.sroa.0.0.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.0.2.1, i64 0, !dbg !255
  %mul584.21911 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.0.0.vec.extract.2, !dbg !234
  %output_acc.sroa.0.0.vec.insert1625.2 = insertelement <4 x float> poison, float %mul584.21911, i64 0, !dbg !235
  %output_acc.sroa.0.4.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.0.2.1, i64 1, !dbg !255
  %mul584.1.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.0.4.vec.extract.2, !dbg !234
  %output_acc.sroa.0.4.vec.insert1634.2 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert1625.2, float %mul584.1.2, i64 1, !dbg !235
  %output_acc.sroa.0.8.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.0.2.1, i64 2, !dbg !255
  %mul584.2.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.0.8.vec.extract.2, !dbg !234
  %output_acc.sroa.0.8.vec.insert1643.2 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert1634.2, float %mul584.2.2, i64 2, !dbg !235
  %output_acc.sroa.0.12.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.0.2.1, i64 3, !dbg !255
  %mul584.3.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.0.12.vec.extract.2, !dbg !234
  %output_acc.sroa.0.12.vec.insert1652.2 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert1643.2, float %mul584.3.2, i64 3, !dbg !235
  %output_acc.sroa.30.16.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.30.2.1, i64 0, !dbg !255
  %mul584.4.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.30.16.vec.extract.2, !dbg !234
  %output_acc.sroa.30.16.vec.insert1663.2 = insertelement <4 x float> poison, float %mul584.4.2, i64 0, !dbg !235
  %output_acc.sroa.30.20.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.30.2.1, i64 1, !dbg !255
  %mul584.5.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.30.20.vec.extract.2, !dbg !234
  %output_acc.sroa.30.20.vec.insert1672.2 = insertelement <4 x float> %output_acc.sroa.30.16.vec.insert1663.2, float %mul584.5.2, i64 1, !dbg !235
  %output_acc.sroa.30.24.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.30.2.1, i64 2, !dbg !255
  %mul584.6.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.30.24.vec.extract.2, !dbg !234
  %output_acc.sroa.30.24.vec.insert1681.2 = insertelement <4 x float> %output_acc.sroa.30.20.vec.insert1672.2, float %mul584.6.2, i64 2, !dbg !235
  %output_acc.sroa.30.28.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.30.2.1, i64 3, !dbg !255
  %mul584.7.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.30.28.vec.extract.2, !dbg !234
  %output_acc.sroa.30.28.vec.insert1690.2 = insertelement <4 x float> %output_acc.sroa.30.24.vec.insert1681.2, float %mul584.7.2, i64 3, !dbg !235
  %output_acc.sroa.58.32.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.58.2.1, i64 0, !dbg !255
  %mul584.8.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.58.32.vec.extract.2, !dbg !234
  %output_acc.sroa.58.32.vec.insert1701.2 = insertelement <4 x float> poison, float %mul584.8.2, i64 0, !dbg !235
  %output_acc.sroa.58.36.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.58.2.1, i64 1, !dbg !255
  %mul584.9.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.58.36.vec.extract.2, !dbg !234
  %output_acc.sroa.58.36.vec.insert1710.2 = insertelement <4 x float> %output_acc.sroa.58.32.vec.insert1701.2, float %mul584.9.2, i64 1, !dbg !235
  %output_acc.sroa.58.40.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.58.2.1, i64 2, !dbg !255
  %mul584.10.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.58.40.vec.extract.2, !dbg !234
  %output_acc.sroa.58.40.vec.insert1719.2 = insertelement <4 x float> %output_acc.sroa.58.36.vec.insert1710.2, float %mul584.10.2, i64 2, !dbg !235
  %output_acc.sroa.58.44.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.58.2.1, i64 3, !dbg !255
  %mul584.11.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.58.44.vec.extract.2, !dbg !234
  %output_acc.sroa.58.44.vec.insert1728.2 = insertelement <4 x float> %output_acc.sroa.58.40.vec.insert1719.2, float %mul584.11.2, i64 3, !dbg !235
  %output_acc.sroa.86.48.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.86.2.1, i64 0, !dbg !255
  %mul584.12.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.86.48.vec.extract.2, !dbg !234
  %output_acc.sroa.86.48.vec.insert1739.2 = insertelement <4 x float> poison, float %mul584.12.2, i64 0, !dbg !235
  %output_acc.sroa.86.52.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.86.2.1, i64 1, !dbg !255
  %mul584.13.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.86.52.vec.extract.2, !dbg !234
  %output_acc.sroa.86.52.vec.insert1748.2 = insertelement <4 x float> %output_acc.sroa.86.48.vec.insert1739.2, float %mul584.13.2, i64 1, !dbg !235
  %output_acc.sroa.86.56.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.86.2.1, i64 2, !dbg !255
  %mul584.14.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.86.56.vec.extract.2, !dbg !234
  %output_acc.sroa.86.56.vec.insert1757.2 = insertelement <4 x float> %output_acc.sroa.86.52.vec.insert1748.2, float %mul584.14.2, i64 2, !dbg !235
  %output_acc.sroa.86.60.vec.extract.2 = extractelement <4 x float> %output_acc.sroa.86.2.1, i64 3, !dbg !255
  %mul584.15.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.86.60.vec.extract.2, !dbg !234
  %output_acc.sroa.86.60.vec.insert1766.2 = insertelement <4 x float> %output_acc.sroa.86.56.vec.insert1757.2, float %mul584.15.2, i64 3, !dbg !235
  br label %if.end590.2, !dbg !236

if.end590.2:                                      ; preds = %for.body580.preheader.2, %for.inc342.1.2
  %output_acc.sroa.86.1.2 = phi <4 x float> [ %output_acc.sroa.86.60.vec.insert1766.2, %for.body580.preheader.2 ], [ %output_acc.sroa.86.2.1, %for.inc342.1.2 ], !dbg !90
  %output_acc.sroa.58.1.2 = phi <4 x float> [ %output_acc.sroa.58.44.vec.insert1728.2, %for.body580.preheader.2 ], [ %output_acc.sroa.58.2.1, %for.inc342.1.2 ], !dbg !90
  %output_acc.sroa.30.1.2 = phi <4 x float> [ %output_acc.sroa.30.28.vec.insert1690.2, %for.body580.preheader.2 ], [ %output_acc.sroa.30.2.1, %for.inc342.1.2 ], !dbg !90
  %output_acc.sroa.0.1.2 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1652.2, %for.body580.preheader.2 ], [ %output_acc.sroa.0.2.1, %for.inc342.1.2 ], !dbg !90
  br i1 %or.cond.2, label %if.end702.2, label %for.cond604.preheader.2, !dbg !237

for.cond604.preheader.2:                          ; preds = %if.end590.2
  %add622.2 = add nuw nsw i32 %mul124.2, %mul439
  %conv645.2 = zext nneg i32 %mul124.2 to i64
  %shr613.21912 = lshr exact i32 %mul124.2, 2, !dbg !238
  %add614.21913 = add nuw nsw i32 %shr613.21912, %shr730, !dbg !239
  %cmp615.21914 = icmp ult i32 %add614.21913, 256, !dbg !240
  br i1 %cmp615.21914, label %if.then634.21919, label %if.end670.21922, !dbg !241

if.then634.21919:                                 ; preds = %for.cond604.preheader.2
  %.idx1202.21915 = shl nuw nsw i64 %conv645.2, 7, !dbg !242
  %398 = getelementptr inbounds i8, ptr addrspace(4) %30, i64 %.idx1202.21915, !dbg !242
  %condval_2.sroa.0.0.copyload.21916 = load i32, ptr addrspace(4) %398, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.21917 = getelementptr inbounds i8, ptr addrspace(4) %398, i64 4, !dbg !243
  %condval_2.sroa.5.0.copyload.21918 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.21917, align 4, !dbg !243, !tbaa !30
  br label %if.end670.21922, !dbg !244

if.end670.21922:                                  ; preds = %if.then634.21919, %for.cond604.preheader.2
  %condval_2.sroa.5.0.21920 = phi i32 [ %condval_2.sroa.5.0.copyload.21918, %if.then634.21919 ], [ 0, %for.cond604.preheader.2 ], !dbg !90
  %condval_2.sroa.0.0.21921 = phi i32 [ %condval_2.sroa.0.0.copyload.21916, %if.then634.21919 ], [ 0, %for.cond604.preheader.2 ], !dbg !90
  %shr613.1.2 = lshr exact i32 %mul124.2, 2, !dbg !238
  %add614.1.2 = add nuw nsw i32 %shr613.1.2, %shr730, !dbg !239
  %cmp615.1.2 = icmp ult i32 %add614.1.2, 256, !dbg !240
  %399 = icmp sgt i32 %add622.2, -2
  %or.cond1198.1.2 = select i1 %cmp615.1.2, i1 %399, i1 false, !dbg !241
  br i1 %or.cond1198.1.2, label %if.then634.1.2, label %if.end670.1.2, !dbg !241

if.then634.1.2:                                   ; preds = %if.end670.21922
  %.idx1202.1.2 = shl nuw nsw i64 %conv645.2, 7, !dbg !242
  %400 = getelementptr inbounds i8, ptr addrspace(4) %31, i64 %.idx1202.1.2, !dbg !242
  %add.ptr656.1.2 = getelementptr inbounds i8, ptr addrspace(4) %400, i64 128, !dbg !242
  %condval_2.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %add.ptr656.1.2, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %400, i64 132, !dbg !243
  %condval_2.sroa.5.0.copyload.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.1.2, align 4, !dbg !243, !tbaa !30
  br label %if.end670.1.2, !dbg !244

if.end670.1.2:                                    ; preds = %if.then634.1.2, %if.end670.21922
  %condval_2.sroa.5.0.1.2 = phi i32 [ %condval_2.sroa.5.0.copyload.1.2, %if.then634.1.2 ], [ 0, %if.end670.21922 ], !dbg !90
  %condval_2.sroa.0.0.1.2 = phi i32 [ %condval_2.sroa.0.0.copyload.1.2, %if.then634.1.2 ], [ 0, %if.end670.21922 ], !dbg !90
  %shr613.2.2 = lshr exact i32 %mul124.2, 2, !dbg !238
  %add614.2.2 = add nuw nsw i32 %shr613.2.2, %shr730, !dbg !239
  %cmp615.2.2 = icmp ult i32 %add614.2.2, 256, !dbg !240
  %401 = icmp sgt i32 %add622.2, -3
  %or.cond1198.2.2 = select i1 %cmp615.2.2, i1 %401, i1 false, !dbg !241
  br i1 %or.cond1198.2.2, label %if.then634.2.2, label %if.end670.2.2, !dbg !241

if.then634.2.2:                                   ; preds = %if.end670.1.2
  %.idx1202.2.2 = shl nuw nsw i64 %conv645.2, 7, !dbg !242
  %402 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 %.idx1202.2.2, !dbg !242
  %add.ptr656.2.2 = getelementptr inbounds i8, ptr addrspace(4) %402, i64 256, !dbg !242
  %condval_2.sroa.0.0.copyload.2.2 = load i32, ptr addrspace(4) %add.ptr656.2.2, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.2.2 = getelementptr inbounds i8, ptr addrspace(4) %402, i64 260, !dbg !243
  %condval_2.sroa.5.0.copyload.2.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.2.2, align 4, !dbg !243, !tbaa !30
  br label %if.end670.2.2, !dbg !244

if.end670.2.2:                                    ; preds = %if.then634.2.2, %if.end670.1.2
  %condval_2.sroa.5.0.2.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2.2, %if.then634.2.2 ], [ 0, %if.end670.1.2 ], !dbg !90
  %condval_2.sroa.0.0.2.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2.2, %if.then634.2.2 ], [ 0, %if.end670.1.2 ], !dbg !90
  %shr613.3.2 = lshr exact i32 %mul124.2, 2, !dbg !238
  %add614.3.2 = add nuw nsw i32 %shr613.3.2, %shr730, !dbg !239
  %cmp615.3.2 = icmp ult i32 %add614.3.2, 256, !dbg !240
  %403 = icmp sgt i32 %add622.2, -4
  %or.cond1198.3.2 = select i1 %cmp615.3.2, i1 %403, i1 false, !dbg !241
  br i1 %or.cond1198.3.2, label %if.then634.3.2, label %if.end702.2, !dbg !241

if.then634.3.2:                                   ; preds = %if.end670.2.2
  %.idx1202.3.2 = shl nuw nsw i64 %conv645.2, 7, !dbg !242
  %404 = getelementptr inbounds i8, ptr addrspace(4) %33, i64 %.idx1202.3.2, !dbg !242
  %add.ptr656.3.2 = getelementptr inbounds i8, ptr addrspace(4) %404, i64 384, !dbg !242
  %condval_2.sroa.0.0.copyload.3.2 = load i32, ptr addrspace(4) %add.ptr656.3.2, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.3.2 = getelementptr inbounds i8, ptr addrspace(4) %404, i64 388, !dbg !243
  %condval_2.sroa.5.0.copyload.3.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.3.2, align 4, !dbg !243, !tbaa !30
  br label %if.end702.2, !dbg !244

if.end702.2:                                      ; preds = %if.then634.3.2, %if.end670.2.2, %if.end590.2
  %v_tile_local.sroa.58.0.2 = phi i32 [ 0, %if.end590.2 ], [ %condval_2.sroa.5.0.copyload.3.2, %if.then634.3.2 ], [ 0, %if.end670.2.2 ], !dbg !90
  %v_tile_local.sroa.50.0.2 = phi i32 [ 0, %if.end590.2 ], [ %condval_2.sroa.0.0.copyload.3.2, %if.then634.3.2 ], [ 0, %if.end670.2.2 ], !dbg !90
  %v_tile_local.sroa.42.0.2 = phi i32 [ 0, %if.end590.2 ], [ %condval_2.sroa.5.0.2.2, %if.then634.3.2 ], [ %condval_2.sroa.5.0.2.2, %if.end670.2.2 ], !dbg !90
  %v_tile_local.sroa.34.0.2 = phi i32 [ 0, %if.end590.2 ], [ %condval_2.sroa.0.0.2.2, %if.then634.3.2 ], [ %condval_2.sroa.0.0.2.2, %if.end670.2.2 ], !dbg !90
  %v_tile_local.sroa.26.0.2 = phi i32 [ 0, %if.end590.2 ], [ %condval_2.sroa.5.0.1.2, %if.then634.3.2 ], [ %condval_2.sroa.5.0.1.2, %if.end670.2.2 ], !dbg !90
  %v_tile_local.sroa.18.0.2 = phi i32 [ 0, %if.end590.2 ], [ %condval_2.sroa.0.0.1.2, %if.then634.3.2 ], [ %condval_2.sroa.0.0.1.2, %if.end670.2.2 ], !dbg !90
  %v_tile_local.sroa.10.0.2 = phi i32 [ 0, %if.end590.2 ], [ %condval_2.sroa.5.0.21920, %if.then634.3.2 ], [ %condval_2.sroa.5.0.21920, %if.end670.2.2 ], !dbg !90
  %v_tile_local.sroa.0.0.2 = phi i32 [ 0, %if.end590.2 ], [ %condval_2.sroa.0.0.21921, %if.then634.3.2 ], [ %condval_2.sroa.0.0.21921, %if.end670.2.2 ], !dbg !90
  %405 = and i32 %v_tile_local.sroa.50.0.2, 65535, !dbg !245
  %v_column_local.sroa.34.0.insert.ext.2 = zext nneg i32 %405 to i64, !dbg !245
  %v_column_local.sroa.34.0.insert.shift.2 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext.2, 48, !dbg !245
  %406 = and i32 %v_tile_local.sroa.34.0.2, 65535, !dbg !245
  %v_column_local.sroa.26.0.insert.ext.2 = zext nneg i32 %406 to i64, !dbg !245
  %v_column_local.sroa.26.0.insert.shift.2 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext.2, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert.2 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift.2, %v_column_local.sroa.26.0.insert.shift.2, !dbg !245
  %407 = shl i32 %v_tile_local.sroa.18.0.2, 16, !dbg !245
  %v_column_local.sroa.18.0.insert.shift.2 = zext i32 %407 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert.2 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert.2, %v_column_local.sroa.18.0.insert.shift.2, !dbg !245
  %408 = and i32 %v_tile_local.sroa.0.0.2, 65535, !dbg !245
  %v_column_local.sroa.0.0.insert.ext.2 = zext nneg i32 %408 to i64, !dbg !245
  %v_column_local.sroa.0.0.insert.insert.2 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert.2, %v_column_local.sroa.0.0.insert.ext.2, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr739, align 8, !dbg !245
  %v_tile_local.sroa.0.2.extract.shift.2 = lshr i32 %v_tile_local.sroa.0.0.2, 16, !dbg !246
  %v_tile_local.sroa.0.2.extract.trunc.2 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift.2 to i64, !dbg !246
  %v_tile_local.sroa.18.10.extract.shift.2 = and i32 %v_tile_local.sroa.18.0.2, -65536, !dbg !245
  %v_tile_local.sroa.34.18.extract.shift.2 = lshr i32 %v_tile_local.sroa.34.0.2, 16, !dbg !246
  %v_tile_local.sroa.34.18.extract.trunc.2 = zext nneg i32 %v_tile_local.sroa.34.18.extract.shift.2 to i64, !dbg !246
  %v_tile_local.sroa.50.26.extract.shift.2 = lshr i32 %v_tile_local.sroa.50.0.2, 16, !dbg !246
  %v_tile_local.sroa.50.26.extract.trunc.2 = zext nneg i32 %v_tile_local.sroa.50.26.extract.shift.2 to i64, !dbg !246
  %v_column_local.sroa.34.0.insert.shift1407.2 = shl nuw i64 %v_tile_local.sroa.50.26.extract.trunc.2, 48, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1372.2 = shl nuw nsw i64 %v_tile_local.sroa.34.18.extract.trunc.2, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1374.2 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1407.2, %v_column_local.sroa.26.0.insert.shift1372.2, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1337.2 = zext i32 %v_tile_local.sroa.18.10.extract.shift.2 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1339.2 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1374.2, %v_column_local.sroa.18.0.insert.shift1337.2, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1310.2 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1339.2, %v_tile_local.sroa.0.2.extract.trunc.2, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1310.2, ptr addrspace(3) %add.ptr739.1, align 8, !dbg !245
  %409 = and i32 %v_tile_local.sroa.58.0.2, 65535, !dbg !245
  %v_column_local.sroa.34.0.insert.ext1411.2 = zext nneg i32 %409 to i64, !dbg !245
  %v_column_local.sroa.34.0.insert.shift1412.2 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1411.2, 48, !dbg !245
  %410 = and i32 %v_tile_local.sroa.42.0.2, 65535, !dbg !245
  %v_column_local.sroa.26.0.insert.ext1376.2 = zext nneg i32 %410 to i64, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1377.2 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1376.2, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1379.2 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1412.2, %v_column_local.sroa.26.0.insert.shift1377.2, !dbg !245
  %411 = shl i32 %v_tile_local.sroa.26.0.2, 16, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1342.2 = zext i32 %411 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1344.2 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1379.2, %v_column_local.sroa.18.0.insert.shift1342.2, !dbg !245
  %412 = and i32 %v_tile_local.sroa.10.0.2, 65535, !dbg !245
  %v_column_local.sroa.0.0.insert.ext1312.2 = zext nneg i32 %412 to i64, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1314.2 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1344.2, %v_column_local.sroa.0.0.insert.ext1312.2, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1314.2, ptr addrspace(3) %add.ptr739.2, align 8, !dbg !245
  %v_tile_local.sroa.10.6.extract.shift.2 = lshr i32 %v_tile_local.sroa.10.0.2, 16, !dbg !246
  %v_tile_local.sroa.10.6.extract.trunc.2 = zext nneg i32 %v_tile_local.sroa.10.6.extract.shift.2 to i64, !dbg !246
  %v_tile_local.sroa.26.14.extract.shift.2 = and i32 %v_tile_local.sroa.26.0.2, -65536, !dbg !245
  %v_tile_local.sroa.42.22.extract.shift.2 = lshr i32 %v_tile_local.sroa.42.0.2, 16, !dbg !246
  %v_tile_local.sroa.42.22.extract.trunc.2 = zext nneg i32 %v_tile_local.sroa.42.22.extract.shift.2 to i64, !dbg !246
  %v_tile_local.sroa.58.30.extract.shift.2 = lshr i32 %v_tile_local.sroa.58.0.2, 16, !dbg !246
  %v_tile_local.sroa.58.30.extract.trunc.2 = zext nneg i32 %v_tile_local.sroa.58.30.extract.shift.2 to i64, !dbg !246
  %v_column_local.sroa.34.0.insert.shift1417.2 = shl nuw i64 %v_tile_local.sroa.58.30.extract.trunc.2, 48, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1382.2 = shl nuw nsw i64 %v_tile_local.sroa.42.22.extract.trunc.2, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1384.2 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1417.2, %v_column_local.sroa.26.0.insert.shift1382.2, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1347.2 = zext i32 %v_tile_local.sroa.26.14.extract.shift.2 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1349.2 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1384.2, %v_column_local.sroa.18.0.insert.shift1347.2, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1318.2 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1349.2, %v_tile_local.sroa.10.6.extract.trunc.2, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1318.2, ptr addrspace(3) %add.ptr739.3, align 8, !dbg !245
  br i1 %or.cond1140.1.2, label %if.end702.1.2, label %for.cond604.preheader.1.2, !dbg !237

for.cond604.preheader.1.2:                        ; preds = %if.end702.2
  %add622.1.2 = add nuw nsw i32 %mul124.1.2, %mul439
  %conv645.1.2 = zext nneg i32 %mul124.1.2 to i64
  %shr613.11258.2 = lshr exact i32 %mul124.1.2, 2, !dbg !238
  %add614.11259.2 = add nuw nsw i32 %shr613.11258.2, %shr730, !dbg !239
  %cmp615.11260.2 = icmp ult i32 %add614.11259.2, 256, !dbg !240
  br i1 %cmp615.11260.2, label %if.then634.11266.2, label %if.end670.11270.2, !dbg !241

if.then634.11266.2:                               ; preds = %for.cond604.preheader.1.2
  %.idx1202.11262.2 = shl nuw nsw i64 %conv645.1.2, 7, !dbg !242
  %413 = getelementptr inbounds i8, ptr addrspace(4) %42, i64 %.idx1202.11262.2, !dbg !242
  %condval_2.sroa.0.0.copyload.11263.2 = load i32, ptr addrspace(4) %413, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.11264.2 = getelementptr inbounds i8, ptr addrspace(4) %413, i64 4, !dbg !243
  %condval_2.sroa.5.0.copyload.11265.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.11264.2, align 4, !dbg !243, !tbaa !30
  br label %if.end670.11270.2, !dbg !244

if.end670.11270.2:                                ; preds = %if.then634.11266.2, %for.cond604.preheader.1.2
  %condval_2.sroa.5.0.11267.2 = phi i32 [ %condval_2.sroa.5.0.copyload.11265.2, %if.then634.11266.2 ], [ 0, %for.cond604.preheader.1.2 ], !dbg !90
  %condval_2.sroa.0.0.11268.2 = phi i32 [ %condval_2.sroa.0.0.copyload.11263.2, %if.then634.11266.2 ], [ 0, %for.cond604.preheader.1.2 ], !dbg !90
  %shr613.1.1.2 = lshr exact i32 %mul124.1.2, 2, !dbg !238
  %add614.1.1.2 = add nuw nsw i32 %shr613.1.1.2, %shr730, !dbg !239
  %cmp615.1.1.2 = icmp ult i32 %add614.1.1.2, 256, !dbg !240
  %414 = icmp sgt i32 %add622.1.2, -2
  %or.cond1198.1.1.2 = select i1 %cmp615.1.1.2, i1 %414, i1 false, !dbg !241
  br i1 %or.cond1198.1.1.2, label %if.then634.1.1.2, label %if.end670.1.1.2, !dbg !241

if.then634.1.1.2:                                 ; preds = %if.end670.11270.2
  %.idx1202.1.1.2 = shl nuw nsw i64 %conv645.1.2, 7, !dbg !242
  %415 = getelementptr inbounds i8, ptr addrspace(4) %43, i64 %.idx1202.1.1.2, !dbg !242
  %add.ptr656.1.1.2 = getelementptr inbounds i8, ptr addrspace(4) %415, i64 128, !dbg !242
  %condval_2.sroa.0.0.copyload.1.1.2 = load i32, ptr addrspace(4) %add.ptr656.1.1.2, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.1.1.2 = getelementptr inbounds i8, ptr addrspace(4) %415, i64 132, !dbg !243
  %condval_2.sroa.5.0.copyload.1.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.1.1.2, align 4, !dbg !243, !tbaa !30
  br label %if.end670.1.1.2, !dbg !244

if.end670.1.1.2:                                  ; preds = %if.then634.1.1.2, %if.end670.11270.2
  %condval_2.sroa.5.0.1.1.2 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1.2, %if.then634.1.1.2 ], [ 0, %if.end670.11270.2 ], !dbg !90
  %condval_2.sroa.0.0.1.1.2 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1.2, %if.then634.1.1.2 ], [ 0, %if.end670.11270.2 ], !dbg !90
  %shr613.2.1.2 = lshr exact i32 %mul124.1.2, 2, !dbg !238
  %add614.2.1.2 = add nuw nsw i32 %shr613.2.1.2, %shr730, !dbg !239
  %cmp615.2.1.2 = icmp ult i32 %add614.2.1.2, 256, !dbg !240
  %416 = icmp sgt i32 %add622.1.2, -3
  %or.cond1198.2.1.2 = select i1 %cmp615.2.1.2, i1 %416, i1 false, !dbg !241
  br i1 %or.cond1198.2.1.2, label %if.then634.2.1.2, label %if.end670.2.1.2, !dbg !241

if.then634.2.1.2:                                 ; preds = %if.end670.1.1.2
  %.idx1202.2.1.2 = shl nuw nsw i64 %conv645.1.2, 7, !dbg !242
  %417 = getelementptr inbounds i8, ptr addrspace(4) %44, i64 %.idx1202.2.1.2, !dbg !242
  %add.ptr656.2.1.2 = getelementptr inbounds i8, ptr addrspace(4) %417, i64 256, !dbg !242
  %condval_2.sroa.0.0.copyload.2.1.2 = load i32, ptr addrspace(4) %add.ptr656.2.1.2, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.2.1.2 = getelementptr inbounds i8, ptr addrspace(4) %417, i64 260, !dbg !243
  %condval_2.sroa.5.0.copyload.2.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.2.1.2, align 4, !dbg !243, !tbaa !30
  br label %if.end670.2.1.2, !dbg !244

if.end670.2.1.2:                                  ; preds = %if.then634.2.1.2, %if.end670.1.1.2
  %condval_2.sroa.5.0.2.1.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2.1.2, %if.then634.2.1.2 ], [ 0, %if.end670.1.1.2 ], !dbg !90
  %condval_2.sroa.0.0.2.1.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2.1.2, %if.then634.2.1.2 ], [ 0, %if.end670.1.1.2 ], !dbg !90
  %shr613.3.1.2 = lshr exact i32 %mul124.1.2, 2, !dbg !238
  %add614.3.1.2 = add nuw nsw i32 %shr613.3.1.2, %shr730, !dbg !239
  %cmp615.3.1.2 = icmp ult i32 %add614.3.1.2, 256, !dbg !240
  %418 = icmp sgt i32 %add622.1.2, -4
  %or.cond1198.3.1.2 = select i1 %cmp615.3.1.2, i1 %418, i1 false, !dbg !241
  br i1 %or.cond1198.3.1.2, label %if.then634.3.1.2, label %if.end702.1.2, !dbg !241

if.then634.3.1.2:                                 ; preds = %if.end670.2.1.2
  %.idx1202.3.1.2 = shl nuw nsw i64 %conv645.1.2, 7, !dbg !242
  %419 = getelementptr inbounds i8, ptr addrspace(4) %45, i64 %.idx1202.3.1.2, !dbg !242
  %add.ptr656.3.1.2 = getelementptr inbounds i8, ptr addrspace(4) %419, i64 384, !dbg !242
  %condval_2.sroa.0.0.copyload.3.1.2 = load i32, ptr addrspace(4) %add.ptr656.3.1.2, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.3.1.2 = getelementptr inbounds i8, ptr addrspace(4) %419, i64 388, !dbg !243
  %condval_2.sroa.5.0.copyload.3.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.3.1.2, align 4, !dbg !243, !tbaa !30
  br label %if.end702.1.2, !dbg !244

if.end702.1.2:                                    ; preds = %if.then634.3.1.2, %if.end670.2.1.2, %if.end702.2
  %v_tile_local.sroa.58.1.2 = phi i32 [ %condval_2.sroa.5.0.copyload.3.1.2, %if.then634.3.1.2 ], [ 0, %if.end670.2.1.2 ], [ 0, %if.end702.2 ], !dbg !90
  %v_tile_local.sroa.50.1.2 = phi i32 [ %condval_2.sroa.0.0.copyload.3.1.2, %if.then634.3.1.2 ], [ 0, %if.end670.2.1.2 ], [ 0, %if.end702.2 ], !dbg !90
  %v_tile_local.sroa.42.1.2 = phi i32 [ %condval_2.sroa.5.0.2.1.2, %if.then634.3.1.2 ], [ %condval_2.sroa.5.0.2.1.2, %if.end670.2.1.2 ], [ 0, %if.end702.2 ], !dbg !90
  %v_tile_local.sroa.34.1.2 = phi i32 [ %condval_2.sroa.0.0.2.1.2, %if.then634.3.1.2 ], [ %condval_2.sroa.0.0.2.1.2, %if.end670.2.1.2 ], [ 0, %if.end702.2 ], !dbg !90
  %v_tile_local.sroa.26.1.2 = phi i32 [ %condval_2.sroa.5.0.1.1.2, %if.then634.3.1.2 ], [ %condval_2.sroa.5.0.1.1.2, %if.end670.2.1.2 ], [ 0, %if.end702.2 ], !dbg !90
  %v_tile_local.sroa.18.1.2 = phi i32 [ %condval_2.sroa.0.0.1.1.2, %if.then634.3.1.2 ], [ %condval_2.sroa.0.0.1.1.2, %if.end670.2.1.2 ], [ 0, %if.end702.2 ], !dbg !90
  %v_tile_local.sroa.10.1.2 = phi i32 [ %condval_2.sroa.5.0.11267.2, %if.then634.3.1.2 ], [ %condval_2.sroa.5.0.11267.2, %if.end670.2.1.2 ], [ 0, %if.end702.2 ], !dbg !90
  %v_tile_local.sroa.0.1.2 = phi i32 [ %condval_2.sroa.0.0.11268.2, %if.then634.3.1.2 ], [ %condval_2.sroa.0.0.11268.2, %if.end670.2.1.2 ], [ 0, %if.end702.2 ], !dbg !90
  %420 = and i32 %v_tile_local.sroa.50.1.2, 65535, !dbg !245
  %v_column_local.sroa.34.0.insert.ext1421.2 = zext nneg i32 %420 to i64, !dbg !245
  %v_column_local.sroa.34.0.insert.shift1422.2 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1421.2, 48, !dbg !245
  %421 = and i32 %v_tile_local.sroa.34.1.2, 65535, !dbg !245
  %v_column_local.sroa.26.0.insert.ext1386.2 = zext nneg i32 %421 to i64, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1387.2 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1386.2, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1389.2 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1422.2, %v_column_local.sroa.26.0.insert.shift1387.2, !dbg !245
  %422 = shl i32 %v_tile_local.sroa.18.1.2, 16, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1352.2 = zext i32 %422 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1354.2 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1389.2, %v_column_local.sroa.18.0.insert.shift1352.2, !dbg !245
  %423 = and i32 %v_tile_local.sroa.0.1.2, 65535, !dbg !245
  %v_column_local.sroa.0.0.insert.ext1320.2 = zext nneg i32 %423 to i64, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1322.2 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1354.2, %v_column_local.sroa.0.0.insert.ext1320.2, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1322.2, ptr addrspace(3) %add.ptr739.11280, align 8, !dbg !245
  %v_tile_local.sroa.0.2.extract.shift1443.2 = lshr i32 %v_tile_local.sroa.0.1.2, 16, !dbg !246
  %v_tile_local.sroa.0.2.extract.trunc1444.2 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1443.2 to i64, !dbg !246
  %v_tile_local.sroa.18.10.extract.shift1453.2 = and i32 %v_tile_local.sroa.18.1.2, -65536, !dbg !245
  %v_tile_local.sroa.34.18.extract.shift1463.2 = lshr i32 %v_tile_local.sroa.34.1.2, 16, !dbg !246
  %v_tile_local.sroa.34.18.extract.trunc1464.2 = zext nneg i32 %v_tile_local.sroa.34.18.extract.shift1463.2 to i64, !dbg !246
  %v_tile_local.sroa.50.26.extract.shift1473.2 = lshr i32 %v_tile_local.sroa.50.1.2, 16, !dbg !246
  %v_tile_local.sroa.50.26.extract.trunc1474.2 = zext nneg i32 %v_tile_local.sroa.50.26.extract.shift1473.2 to i64, !dbg !246
  %v_column_local.sroa.34.0.insert.shift1427.2 = shl nuw i64 %v_tile_local.sroa.50.26.extract.trunc1474.2, 48, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1392.2 = shl nuw nsw i64 %v_tile_local.sroa.34.18.extract.trunc1464.2, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1394.2 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1427.2, %v_column_local.sroa.26.0.insert.shift1392.2, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1357.2 = zext i32 %v_tile_local.sroa.18.10.extract.shift1453.2 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1359.2 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1394.2, %v_column_local.sroa.18.0.insert.shift1357.2, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1326.2 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1359.2, %v_tile_local.sroa.0.2.extract.trunc1444.2, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1326.2, ptr addrspace(3) %add.ptr739.1.1, align 8, !dbg !245
  %424 = and i32 %v_tile_local.sroa.58.1.2, 65535, !dbg !245
  %v_column_local.sroa.34.0.insert.ext1431.2 = zext nneg i32 %424 to i64, !dbg !245
  %v_column_local.sroa.34.0.insert.shift1432.2 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1431.2, 48, !dbg !245
  %425 = and i32 %v_tile_local.sroa.42.1.2, 65535, !dbg !245
  %v_column_local.sroa.26.0.insert.ext1396.2 = zext nneg i32 %425 to i64, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1397.2 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1396.2, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1399.2 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1432.2, %v_column_local.sroa.26.0.insert.shift1397.2, !dbg !245
  %426 = shl i32 %v_tile_local.sroa.26.1.2, 16, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1362.2 = zext i32 %426 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1364.2 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1399.2, %v_column_local.sroa.18.0.insert.shift1362.2, !dbg !245
  %427 = and i32 %v_tile_local.sroa.10.1.2, 65535, !dbg !245
  %v_column_local.sroa.0.0.insert.ext1328.2 = zext nneg i32 %427 to i64, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1330.2 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1364.2, %v_column_local.sroa.0.0.insert.ext1328.2, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1330.2, ptr addrspace(3) %add.ptr739.2.1, align 8, !dbg !245
  %v_tile_local.sroa.10.6.extract.shift1448.2 = lshr i32 %v_tile_local.sroa.10.1.2, 16, !dbg !246
  %v_tile_local.sroa.10.6.extract.trunc1449.2 = zext nneg i32 %v_tile_local.sroa.10.6.extract.shift1448.2 to i64, !dbg !246
  %v_tile_local.sroa.26.14.extract.shift1458.2 = and i32 %v_tile_local.sroa.26.1.2, -65536, !dbg !245
  %v_tile_local.sroa.42.22.extract.shift1468.2 = lshr i32 %v_tile_local.sroa.42.1.2, 16, !dbg !246
  %v_tile_local.sroa.42.22.extract.trunc1469.2 = zext nneg i32 %v_tile_local.sroa.42.22.extract.shift1468.2 to i64, !dbg !246
  %v_tile_local.sroa.58.30.extract.shift1478.2 = lshr i32 %v_tile_local.sroa.58.1.2, 16, !dbg !246
  %v_tile_local.sroa.58.30.extract.trunc1479.2 = zext nneg i32 %v_tile_local.sroa.58.30.extract.shift1478.2 to i64, !dbg !246
  %v_column_local.sroa.34.0.insert.shift1437.2 = shl nuw i64 %v_tile_local.sroa.58.30.extract.trunc1479.2, 48, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1402.2 = shl nuw nsw i64 %v_tile_local.sroa.42.22.extract.trunc1469.2, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1404.2 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1437.2, %v_column_local.sroa.26.0.insert.shift1402.2, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1367.2 = zext i32 %v_tile_local.sroa.26.14.extract.shift1458.2 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1369.2 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1404.2, %v_column_local.sroa.18.0.insert.shift1367.2, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1334.2 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1369.2, %v_tile_local.sroa.10.6.extract.trunc1449.2, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1334.2, ptr addrspace(3) %add.ptr739.3.1, align 8, !dbg !245
  fence syncscope("warp") release, !dbg !247
  tail call void @llvm.mxc.barrier.warp(), !dbg !250
  fence syncscope("warp") acquire, !dbg !251
  %428 = load <4 x half>, ptr addrspace(3) %add.ptr776, align 8, !dbg !252
  %429 = load <4 x half>, ptr addrspace(3) %add.ptr776.1, align 8, !dbg !252
  %430 = load <4 x half>, ptr addrspace(3) %add.ptr776.2, align 8, !dbg !252
  %431 = load <4 x half>, ptr addrspace(3) %add.ptr776.3, align 8, !dbg !252
  %432 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %428, <4 x half> %385, <4 x float> %output_acc.sroa.0.1.2), !dbg !253
  %433 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %429, <4 x half> %385, <4 x float> %output_acc.sroa.30.1.2), !dbg !253
  %434 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %430, <4 x half> %385, <4 x float> %output_acc.sroa.58.1.2), !dbg !253
  %435 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %431, <4 x half> %385, <4 x float> %output_acc.sroa.86.1.2), !dbg !253
  %436 = load <4 x half>, ptr addrspace(3) %add.ptr776.11284, align 8, !dbg !252
  %437 = load <4 x half>, ptr addrspace(3) %add.ptr776.1.1, align 8, !dbg !252
  %438 = load <4 x half>, ptr addrspace(3) %add.ptr776.2.1, align 8, !dbg !252
  %439 = load <4 x half>, ptr addrspace(3) %add.ptr776.3.1, align 8, !dbg !252
  %440 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %436, <4 x half> %397, <4 x float> %432), !dbg !253
  %441 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %437, <4 x half> %397, <4 x float> %433), !dbg !253
  %442 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %438, <4 x half> %397, <4 x float> %434), !dbg !253
  %443 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %439, <4 x half> %397, <4 x float> %435), !dbg !253
  br label %for.inc807.2, !dbg !254

for.inc807.2:                                     ; preds = %if.end702.1.2, %lor.lhs.false.2
  %output_acc.sroa.86.2.2 = phi <4 x float> [ %output_acc.sroa.86.2.1, %lor.lhs.false.2 ], [ %443, %if.end702.1.2 ], !dbg !90
  %output_acc.sroa.58.2.2 = phi <4 x float> [ %output_acc.sroa.58.2.1, %lor.lhs.false.2 ], [ %442, %if.end702.1.2 ], !dbg !90
  %output_acc.sroa.30.2.2 = phi <4 x float> [ %output_acc.sroa.30.2.1, %lor.lhs.false.2 ], [ %441, %if.end702.1.2 ], !dbg !90
  %output_acc.sroa.0.2.2 = phi <4 x float> [ %output_acc.sroa.0.2.1, %lor.lhs.false.2 ], [ %440, %if.end702.1.2 ], !dbg !90
  %normalizer.sroa.0.2.2 = phi float [ %normalizer.sroa.0.2.1, %lor.lhs.false.2 ], [ %normalizer.sroa.0.1.2, %if.end702.1.2 ], !dbg !90
  %denominator.sroa.0.2.2 = phi float [ %denominator.sroa.0.2.1, %lor.lhs.false.2 ], [ %add547.2, %if.end702.1.2 ], !dbg !90
  %444 = or disjoint i64 %24, 6
  %arrayidx123.3 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %444, !dbg !69
  %445 = load i32, ptr addrspace(1) %arrayidx123.3, align 4, !dbg !69, !tbaa !30
  %mul124.3 = shl nsw i32 %445, 4, !dbg !70
  %446 = or disjoint i64 %24, 7, !dbg !71
  %arrayidx123.1.3 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %446, !dbg !69
  %447 = load i32, ptr addrspace(1) %arrayidx123.1.3, align 4, !dbg !69, !tbaa !30
  %mul124.1.3 = shl nsw i32 %447, 4, !dbg !70
  %cmp131.3 = icmp slt i32 %445, 0, !dbg !72
  %cmp134.not.3 = icmp sgt i32 %mul124.3, %1
  %or.cond.3 = select i1 %cmp131.3, i1 true, i1 %cmp134.not.3, !dbg !73
  br i1 %or.cond.3, label %lor.lhs.false.3, label %if.then.3, !dbg !73

lor.lhs.false.3:                                  ; preds = %for.inc807.2
  %cmp136.3 = icmp slt i32 %447, 0, !dbg !74
  %cmp140.not.3 = icmp sgt i32 %mul124.1.3, %1
  %or.cond1139.3 = select i1 %cmp136.3, i1 true, i1 %cmp140.not.3, !dbg !75
  br i1 %or.cond1139.3, label %for.inc807.3, label %if.then.3, !dbg !75

if.then.3:                                        ; preds = %lor.lhs.false.3, %for.inc807.2
  fence syncscope("warp") release, !dbg !76
  tail call void @llvm.mxc.barrier.warp(), !dbg !79
  fence syncscope("warp") acquire, !dbg !80
  br i1 %or.cond.3, label %for.cond271.preheader.3, label %for.cond154.preheader.3, !dbg !81

for.cond154.preheader.3:                          ; preds = %if.then.3
  %add162.3 = add nuw nsw i32 %mul124.3, %shr159
  %conv201.3 = zext nneg i32 %mul124.3 to i64
  %.idx.3 = shl nuw nsw i64 %conv201.3, 7
  %gep1165.3 = getelementptr i8, ptr addrspace(4) %invariant.gep1164, i64 %.idx.3, !dbg !82
  %cmp165.3 = icmp ult i32 %add162.3, 1024, !dbg !83
  br i1 %cmp165.3, label %if.then193.3, label %if.end.3, !dbg !84

if.then193.3:                                     ; preds = %for.cond154.preheader.3
  %gep1160.3 = getelementptr %struct.__half, ptr addrspace(4) %gep1165.3, i64 %mul195, !dbg !87
  %condval.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %gep1160.3, align 16, !dbg !88, !tbaa !30
  %condval.sroa.5.0.add.ptr208.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.3, i64 4, !dbg !88
  %condval.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr208.sroa_idx.3, align 4, !dbg !88, !tbaa !30
  %condval.sroa.6.0.add.ptr208.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.3, i64 8, !dbg !88
  %condval.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr208.sroa_idx.3, align 8, !dbg !88, !tbaa !30
  %condval.sroa.7.0.add.ptr208.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.3, i64 12, !dbg !88
  %condval.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr208.sroa_idx.3, align 4, !dbg !88, !tbaa !30
  br label %if.end.3, !dbg !89

if.end.3:                                         ; preds = %if.then193.3, %for.cond154.preheader.3
  %condval.sroa.0.0.3 = phi i32 [ %condval.sroa.0.0.copyload.3, %if.then193.3 ], [ 0, %for.cond154.preheader.3 ], !dbg !90
  %condval.sroa.5.0.3 = phi i32 [ %condval.sroa.5.0.copyload.3, %if.then193.3 ], [ 0, %for.cond154.preheader.3 ], !dbg !90
  %condval.sroa.6.0.3 = phi i32 [ %condval.sroa.6.0.copyload.3, %if.then193.3 ], [ 0, %for.cond154.preheader.3 ], !dbg !90
  %condval.sroa.7.0.3 = phi i32 [ %condval.sroa.7.0.copyload.3, %if.then193.3 ], [ 0, %for.cond154.preheader.3 ], !dbg !90
  store i32 %condval.sroa.0.0.3, ptr addrspace(3) %add.ptr266, align 16, !dbg !91, !tbaa !30
  store i32 %condval.sroa.5.0.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr266.sroa_idx, align 4, !dbg !91, !tbaa !30
  store i32 %condval.sroa.6.0.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr266.sroa_idx, align 8, !dbg !91, !tbaa !30
  store i32 %condval.sroa.7.0.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr266.sroa_idx, align 4, !dbg !91, !tbaa !30
  %cmp165.1.3 = icmp ult i32 %add162.3, 1016, !dbg !83
  br i1 %cmp165.1.3, label %if.then193.1.3, label %if.end.1.3, !dbg !84

if.then193.1.3:                                   ; preds = %if.end.3
  %gep1160.1.3 = getelementptr %struct.__half, ptr addrspace(4) %gep1165.3, i64 %add198.1, !dbg !87
  %condval.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %gep1160.1.3, align 16, !dbg !88, !tbaa !30
  %condval.sroa.5.0.add.ptr208.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1.3, i64 4, !dbg !88
  %condval.sroa.5.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr208.sroa_idx.1.3, align 4, !dbg !88, !tbaa !30
  %condval.sroa.6.0.add.ptr208.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1.3, i64 8, !dbg !88
  %condval.sroa.6.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr208.sroa_idx.1.3, align 8, !dbg !88, !tbaa !30
  %condval.sroa.7.0.add.ptr208.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1.3, i64 12, !dbg !88
  %condval.sroa.7.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr208.sroa_idx.1.3, align 4, !dbg !88, !tbaa !30
  br label %if.end.1.3, !dbg !89

if.end.1.3:                                       ; preds = %if.then193.1.3, %if.end.3
  %condval.sroa.0.0.1.3 = phi i32 [ %condval.sroa.0.0.copyload.1.3, %if.then193.1.3 ], [ 0, %if.end.3 ], !dbg !90
  %condval.sroa.5.0.1.3 = phi i32 [ %condval.sroa.5.0.copyload.1.3, %if.then193.1.3 ], [ 0, %if.end.3 ], !dbg !90
  %condval.sroa.6.0.1.3 = phi i32 [ %condval.sroa.6.0.copyload.1.3, %if.then193.1.3 ], [ 0, %if.end.3 ], !dbg !90
  %condval.sroa.7.0.1.3 = phi i32 [ %condval.sroa.7.0.copyload.1.3, %if.then193.1.3 ], [ 0, %if.end.3 ], !dbg !90
  store i32 %condval.sroa.0.0.1.3, ptr addrspace(3) %add.ptr266.1, align 16, !dbg !91, !tbaa !30
  store i32 %condval.sroa.5.0.1.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr266.sroa_idx.1, align 4, !dbg !91, !tbaa !30
  store i32 %condval.sroa.6.0.1.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr266.sroa_idx.1, align 8, !dbg !91, !tbaa !30
  store i32 %condval.sroa.7.0.1.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr266.sroa_idx.1, align 4, !dbg !91, !tbaa !30
  br label %for.inc342.3, !dbg !86

for.cond271.preheader.3:                          ; preds = %if.then.3
  store i32 0, ptr addrspace(3) %26, align 16, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.10.0..sroa_idx, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.14.0..sroa_idx, align 8, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.18.0..sroa_idx, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %gep.1, align 16, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.10.0.gep.1.sroa_idx, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.14.0.gep.1.sroa_idx, align 8, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.18.0.gep.1.sroa_idx, align 4, !dbg !85, !tbaa !30
  br label %for.inc342.3, !dbg !86

for.inc342.3:                                     ; preds = %for.cond271.preheader.3, %if.end.1.3
  %cmp147.1.3 = icmp slt i32 %447, 0, !dbg !92
  %cmp152.not.1.3 = icmp sgt i32 %mul124.1.3, %1
  %or.cond1140.1.3 = select i1 %cmp147.1.3, i1 true, i1 %cmp152.not.1.3, !dbg !81
  br i1 %or.cond1140.1.3, label %for.cond271.preheader.1.3, label %for.cond154.preheader.1.3, !dbg !81

for.cond154.preheader.1.3:                        ; preds = %for.inc342.3
  %add162.1.3 = add nuw nsw i32 %mul124.1.3, %shr159
  %conv201.1.3 = zext nneg i32 %mul124.1.3 to i64
  %.idx.1.3 = shl nuw nsw i64 %conv201.1.3, 7
  %gep1165.1.3 = getelementptr i8, ptr addrspace(4) %invariant.gep1164, i64 %.idx.1.3, !dbg !82
  %cmp165.11219.3 = icmp ult i32 %add162.1.3, 1024, !dbg !83
  br i1 %cmp165.11219.3, label %if.then193.11229.3, label %if.end.11239.3, !dbg !84

if.then193.11229.3:                               ; preds = %for.cond154.preheader.1.3
  %gep1160.11221.3 = getelementptr %struct.__half, ptr addrspace(4) %gep1165.1.3, i64 %mul195, !dbg !87
  %condval.sroa.0.0.copyload.11222.3 = load i32, ptr addrspace(4) %gep1160.11221.3, align 16, !dbg !88, !tbaa !30
  %condval.sroa.5.0.add.ptr208.sroa_idx.11223.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.11221.3, i64 4, !dbg !88
  %condval.sroa.5.0.copyload.11224.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr208.sroa_idx.11223.3, align 4, !dbg !88, !tbaa !30
  %condval.sroa.6.0.add.ptr208.sroa_idx.11225.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.11221.3, i64 8, !dbg !88
  %condval.sroa.6.0.copyload.11226.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr208.sroa_idx.11225.3, align 8, !dbg !88, !tbaa !30
  %condval.sroa.7.0.add.ptr208.sroa_idx.11227.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.11221.3, i64 12, !dbg !88
  %condval.sroa.7.0.copyload.11228.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr208.sroa_idx.11227.3, align 4, !dbg !88, !tbaa !30
  br label %if.end.11239.3, !dbg !89

if.end.11239.3:                                   ; preds = %if.then193.11229.3, %for.cond154.preheader.1.3
  %condval.sroa.0.0.11230.3 = phi i32 [ %condval.sroa.0.0.copyload.11222.3, %if.then193.11229.3 ], [ 0, %for.cond154.preheader.1.3 ], !dbg !90
  %condval.sroa.5.0.11231.3 = phi i32 [ %condval.sroa.5.0.copyload.11224.3, %if.then193.11229.3 ], [ 0, %for.cond154.preheader.1.3 ], !dbg !90
  %condval.sroa.6.0.11232.3 = phi i32 [ %condval.sroa.6.0.copyload.11226.3, %if.then193.11229.3 ], [ 0, %for.cond154.preheader.1.3 ], !dbg !90
  %condval.sroa.7.0.11233.3 = phi i32 [ %condval.sroa.7.0.copyload.11228.3, %if.then193.11229.3 ], [ 0, %for.cond154.preheader.1.3 ], !dbg !90
  store i32 %condval.sroa.0.0.11230.3, ptr addrspace(3) %add.ptr266.11235, align 16, !dbg !91, !tbaa !30
  store i32 %condval.sroa.5.0.11231.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr266.sroa_idx.11236, align 4, !dbg !91, !tbaa !30
  store i32 %condval.sroa.6.0.11232.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr266.sroa_idx.11237, align 8, !dbg !91, !tbaa !30
  store i32 %condval.sroa.7.0.11233.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr266.sroa_idx.11238, align 4, !dbg !91, !tbaa !30
  %cmp165.1.1.3 = icmp ult i32 %add162.1.3, 1016, !dbg !83
  br i1 %cmp165.1.1.3, label %if.then193.1.1.3, label %if.end.1.1.3, !dbg !84

if.then193.1.1.3:                                 ; preds = %if.end.11239.3
  %gep1160.1.1.3 = getelementptr %struct.__half, ptr addrspace(4) %gep1165.1.3, i64 %add198.1.1, !dbg !87
  %condval.sroa.0.0.copyload.1.1.3 = load i32, ptr addrspace(4) %gep1160.1.1.3, align 16, !dbg !88, !tbaa !30
  %condval.sroa.5.0.add.ptr208.sroa_idx.1.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1.1.3, i64 4, !dbg !88
  %condval.sroa.5.0.copyload.1.1.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr208.sroa_idx.1.1.3, align 4, !dbg !88, !tbaa !30
  %condval.sroa.6.0.add.ptr208.sroa_idx.1.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1.1.3, i64 8, !dbg !88
  %condval.sroa.6.0.copyload.1.1.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr208.sroa_idx.1.1.3, align 8, !dbg !88, !tbaa !30
  %condval.sroa.7.0.add.ptr208.sroa_idx.1.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1160.1.1.3, i64 12, !dbg !88
  %condval.sroa.7.0.copyload.1.1.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr208.sroa_idx.1.1.3, align 4, !dbg !88, !tbaa !30
  br label %if.end.1.1.3, !dbg !89

if.end.1.1.3:                                     ; preds = %if.then193.1.1.3, %if.end.11239.3
  %condval.sroa.0.0.1.1.3 = phi i32 [ %condval.sroa.0.0.copyload.1.1.3, %if.then193.1.1.3 ], [ 0, %if.end.11239.3 ], !dbg !90
  %condval.sroa.5.0.1.1.3 = phi i32 [ %condval.sroa.5.0.copyload.1.1.3, %if.then193.1.1.3 ], [ 0, %if.end.11239.3 ], !dbg !90
  %condval.sroa.6.0.1.1.3 = phi i32 [ %condval.sroa.6.0.copyload.1.1.3, %if.then193.1.1.3 ], [ 0, %if.end.11239.3 ], !dbg !90
  %condval.sroa.7.0.1.1.3 = phi i32 [ %condval.sroa.7.0.copyload.1.1.3, %if.then193.1.1.3 ], [ 0, %if.end.11239.3 ], !dbg !90
  store i32 %condval.sroa.0.0.1.1.3, ptr addrspace(3) %add.ptr266.1.1, align 16, !dbg !91, !tbaa !30
  store i32 %condval.sroa.5.0.1.1.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr266.sroa_idx.1.1, align 4, !dbg !91, !tbaa !30
  store i32 %condval.sroa.6.0.1.1.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr266.sroa_idx.1.1, align 8, !dbg !91, !tbaa !30
  store i32 %condval.sroa.7.0.1.1.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr266.sroa_idx.1.1, align 4, !dbg !91, !tbaa !30
  br label %for.inc342.1.3, !dbg !86

for.cond271.preheader.1.3:                        ; preds = %for.inc342.3
  store i32 0, ptr addrspace(3) %29, align 16, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.10.0..sroa_idx1598, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.14.0..sroa_idx1602, align 8, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.18.0..sroa_idx1606, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %gep.1.1, align 16, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.10.0.gep.1.1.sroa_idx, align 4, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.14.0.gep.1.1.sroa_idx, align 8, !dbg !85, !tbaa !30
  store i32 0, ptr addrspace(3) %k_shared_local_cast.sroa.18.0.gep.1.1.sroa_idx, align 4, !dbg !85, !tbaa !30
  br label %for.inc342.1.3, !dbg !86

for.inc342.1.3:                                   ; preds = %for.cond271.preheader.1.3, %if.end.1.1.3
  fence syncscope("warp") release, !dbg !93
  tail call void @llvm.mxc.barrier.warp(), !dbg !96
  fence syncscope("warp") acquire, !dbg !97
  %k_local.sroa.0.0.copyload.31923 = load <4 x half>, ptr addrspace(3) %gep1167, align 8, !dbg !98
  %448 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.31923, <4 x half> %11, <4 x float> zeroinitializer), !dbg !99
  %k_local.sroa.0.0.copyload.1.31924 = load <4 x half>, ptr addrspace(3) %gep1167.1, align 8, !dbg !98
  %449 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.31924, <4 x half> %11, <4 x float> zeroinitializer), !dbg !99
  %k_local.sroa.0.0.copyload.11250.3 = load <4 x half>, ptr addrspace(3) %gep1167.11249, align 8, !dbg !98
  %450 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11250.3, <4 x half> %13, <4 x float> %448), !dbg !99
  %k_local.sroa.0.0.copyload.1.1.3 = load <4 x half>, ptr addrspace(3) %gep1167.1.1, align 8, !dbg !98
  %451 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1.3, <4 x half> %13, <4 x float> %449), !dbg !99
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %gep1167.2, align 8, !dbg !98
  %452 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %15, <4 x float> %450), !dbg !99
  %k_local.sroa.0.0.copyload.1.2.3 = load <4 x half>, ptr addrspace(3) %gep1167.1.2, align 8, !dbg !98
  %453 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2.3, <4 x half> %15, <4 x float> %451), !dbg !99
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %gep1167.3, align 8, !dbg !98
  %454 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %17, <4 x float> %452), !dbg !99
  %k_local.sroa.0.0.copyload.1.3.3 = load <4 x half>, ptr addrspace(3) %gep1167.1.3, align 8, !dbg !98
  %455 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3.3, <4 x half> %17, <4 x float> %453), !dbg !99
  %cmp447.not.31925 = icmp sgt i32 %mul124.3, %invariant.op
  %or.cond1786.3 = select i1 %or.cond.3, i1 true, i1 %cmp447.not.31925, !dbg !100
  %scores.sroa.0.0.vec.extract.3 = extractelement <4 x float> %454, i64 0, !dbg !100
  %condval_1.0.31926 = select i1 %or.cond1786.3, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract.3, !dbg !100
  %cmp447.not.1.3 = icmp sgt i32 %mul124.3, %invariant.op1779
  %or.cond1787.3 = select i1 %or.cond.3, i1 true, i1 %cmp447.not.1.3, !dbg !100
  %scores.sroa.0.4.vec.extract.3 = extractelement <4 x float> %454, i64 1, !dbg !100
  %condval_1.0.1.3 = select i1 %or.cond1787.3, float 0xFFF0000000000000, float %scores.sroa.0.4.vec.extract.3, !dbg !100
  %cmp447.not.2.3 = icmp sgt i32 %mul124.3, %invariant.op1780
  %or.cond1788.3 = select i1 %or.cond.3, i1 true, i1 %cmp447.not.2.3, !dbg !100
  %scores.sroa.0.8.vec.extract.3 = extractelement <4 x float> %454, i64 2, !dbg !100
  %condval_1.0.2.3 = select i1 %or.cond1788.3, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract.3, !dbg !100
  %cmp447.not.3.3 = icmp sgt i32 %mul124.3, %invariant.op1781
  %or.cond1789.3 = select i1 %or.cond.3, i1 true, i1 %cmp447.not.3.3, !dbg !100
  %scores.sroa.0.12.vec.extract.3 = extractelement <4 x float> %454, i64 3, !dbg !100
  %condval_1.0.3.3 = select i1 %or.cond1789.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract.3, !dbg !100
  %cmp447.not.4.3 = icmp sgt i32 %mul124.1.3, %invariant.op1782
  %or.cond1790.3 = select i1 %or.cond1140.1.3, i1 true, i1 %cmp447.not.4.3, !dbg !100
  %scores.sroa.42.16.vec.extract.3 = extractelement <4 x float> %455, i64 0, !dbg !100
  %condval_1.0.4.3 = select i1 %or.cond1790.3, float 0xFFF0000000000000, float %scores.sroa.42.16.vec.extract.3, !dbg !100
  %cmp447.not.5.3 = icmp sgt i32 %mul124.1.3, %invariant.op1783
  %or.cond1791.3 = select i1 %or.cond1140.1.3, i1 true, i1 %cmp447.not.5.3, !dbg !100
  %scores.sroa.42.20.vec.extract.3 = extractelement <4 x float> %455, i64 1, !dbg !100
  %condval_1.0.5.3 = select i1 %or.cond1791.3, float 0xFFF0000000000000, float %scores.sroa.42.20.vec.extract.3, !dbg !100
  %cmp447.not.6.3 = icmp sgt i32 %mul124.1.3, %invariant.op1784
  %or.cond1792.3 = select i1 %or.cond1140.1.3, i1 true, i1 %cmp447.not.6.3, !dbg !100
  %scores.sroa.42.24.vec.extract.3 = extractelement <4 x float> %455, i64 2, !dbg !100
  %condval_1.0.6.3 = select i1 %or.cond1792.3, float 0xFFF0000000000000, float %scores.sroa.42.24.vec.extract.3, !dbg !100
  %cmp447.not.7.3 = icmp sgt i32 %mul124.1.3, %invariant.op1785
  %or.cond1793.3 = select i1 %or.cond1140.1.3, i1 true, i1 %cmp447.not.7.3, !dbg !100
  %scores.sroa.42.28.vec.extract.3 = extractelement <4 x float> %455, i64 3, !dbg !100
  %condval_1.0.7.3 = select i1 %or.cond1793.3, float 0xFFF0000000000000, float %scores.sroa.42.28.vec.extract.3, !dbg !100
  %456 = tail call contract noundef float @llvm.maxnum.f32(float %condval_1.0.31926, float 0xFFF0000000000000), !dbg !101
  %457 = tail call contract noundef float @llvm.maxnum.f32(float %456, float %condval_1.0.4.3), !dbg !101
  %458 = tail call contract noundef float @llvm.maxnum.f32(float %457, float %condval_1.0.1.3), !dbg !101
  %459 = tail call contract noundef float @llvm.maxnum.f32(float %458, float %condval_1.0.5.3), !dbg !101
  %460 = tail call contract noundef float @llvm.maxnum.f32(float %459, float %condval_1.0.2.3), !dbg !101
  %461 = tail call contract noundef float @llvm.maxnum.f32(float %460, float %condval_1.0.6.3), !dbg !101
  %462 = tail call contract noundef float @llvm.maxnum.f32(float %461, float %condval_1.0.3.3), !dbg !101
  %463 = tail call contract noundef float @llvm.maxnum.f32(float %462, float %condval_1.0.7.3), !dbg !101
  %464 = bitcast float %463 to i32, !dbg !105
  %465 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !114
  %466 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %465) #11, !dbg !119
  %xor.i.i.i.3 = xor i32 %466, 32, !dbg !120
  %467 = and i32 %466, -64, !dbg !121
  %and.i.i.i.3 = add nsw i32 %467, 64, !dbg !121
  %cmp.not.i.i.i.3 = icmp slt i32 %xor.i.i.i.3, %and.i.i.i.3, !dbg !122
  %cond.i.i.i.3 = select i1 %cmp.not.i.i.i.3, i32 %xor.i.i.i.3, i32 %466, !dbg !123
  %shl.i.i.i.3 = shl i32 %cond.i.i.i.3, 2, !dbg !124
  %468 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.3, i32 %464), !dbg !125
  %469 = bitcast i32 %468 to float, !dbg !126
  %470 = tail call contract noundef float @llvm.maxnum.f32(float %463, float %469), !dbg !127
  %471 = bitcast float %470 to i32, !dbg !135
  %472 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !140
  %473 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %472) #11, !dbg !143
  %xor.i.i.i.i.3 = xor i32 %473, 16, !dbg !144
  %474 = and i32 %473, -64, !dbg !145
  %and.i.i.i.i.3 = add nsw i32 %474, 64, !dbg !145
  %cmp.not.i.i.i.i.3 = icmp slt i32 %xor.i.i.i.i.3, %and.i.i.i.i.3, !dbg !146
  %cond.i.i.i.i.3 = select i1 %cmp.not.i.i.i.i.3, i32 %xor.i.i.i.i.3, i32 %473, !dbg !147
  %shl.i.i.i.i.3 = shl i32 %cond.i.i.i.i.3, 2, !dbg !148
  %475 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.3, i32 %471), !dbg !149
  %476 = bitcast i32 %475 to float, !dbg !150
  %477 = tail call contract noundef float @llvm.maxnum.f32(float %470, float %476), !dbg !151
  %sub.3 = fsub contract float %477, %normalizer.sroa.0.2.2, !dbg !155
  %mul487.3 = fmul contract float %sub.3, 0x3FC7154760000000, !dbg !156
  %cmp488.3 = fcmp contract ogt float %mul487.3, 7.000000e+00, !dbg !157
  %sub492.3 = fsub contract float %normalizer.sroa.0.2.2, %477
  %mul493.3 = fmul contract float %sub492.3, 0x3FC7154760000000
  %cmp.i.i.3 = fcmp contract olt float %mul493.3, -1.260000e+02
  %cond.i.i.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00
  %add.i.i.3 = fadd contract float %mul493.3, %cond.i.i.3
  %478 = tail call contract float @llvm.exp2.f32(float %add.i.i.3)
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %478
  %normalizer.sroa.0.1.3 = select i1 %cmp488.3, float %477, float %normalizer.sroa.0.2.2, !dbg !158
  %sub508.31927 = fsub contract float %condval_1.0.31926, %normalizer.sroa.0.1.3, !dbg !159
  %mul509.31928 = fmul contract float %sub508.31927, 0x3FC7154760000000, !dbg !160
  %add510.31929 = fadd contract float %mul509.31928, 8.000000e+00, !dbg !161
  %cmp.i.i1102.31930 = fcmp contract olt float %add510.31929, -1.260000e+02, !dbg !162
  %cond.i.i1103.31931 = select contract i1 %cmp.i.i1102.31930, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.31932 = fadd contract float %add510.31929, %cond.i.i1103.31931, !dbg !162
  %479 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.31932), !dbg !162
  %cond2.i.i1105.31933 = select contract i1 %cmp.i.i1102.31930, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.31934 = fmul contract float %cond2.i.i1105.31933, %479, !dbg !162
  %sub508.1.3 = fsub contract float %condval_1.0.1.3, %normalizer.sroa.0.1.3, !dbg !159
  %mul509.1.3 = fmul contract float %sub508.1.3, 0x3FC7154760000000, !dbg !160
  %add510.1.3 = fadd contract float %mul509.1.3, 8.000000e+00, !dbg !161
  %cmp.i.i1102.1.3 = fcmp contract olt float %add510.1.3, -1.260000e+02, !dbg !162
  %cond.i.i1103.1.3 = select contract i1 %cmp.i.i1102.1.3, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.1.3 = fadd contract float %add510.1.3, %cond.i.i1103.1.3, !dbg !162
  %480 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.1.3), !dbg !162
  %cond2.i.i1105.1.3 = select contract i1 %cmp.i.i1102.1.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.1.3 = fmul contract float %cond2.i.i1105.1.3, %480, !dbg !162
  %sub508.2.3 = fsub contract float %condval_1.0.2.3, %normalizer.sroa.0.1.3, !dbg !159
  %mul509.2.3 = fmul contract float %sub508.2.3, 0x3FC7154760000000, !dbg !160
  %add510.2.3 = fadd contract float %mul509.2.3, 8.000000e+00, !dbg !161
  %cmp.i.i1102.2.3 = fcmp contract olt float %add510.2.3, -1.260000e+02, !dbg !162
  %cond.i.i1103.2.3 = select contract i1 %cmp.i.i1102.2.3, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.2.3 = fadd contract float %add510.2.3, %cond.i.i1103.2.3, !dbg !162
  %481 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.2.3), !dbg !162
  %cond2.i.i1105.2.3 = select contract i1 %cmp.i.i1102.2.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.2.3 = fmul contract float %cond2.i.i1105.2.3, %481, !dbg !162
  %sub508.3.3 = fsub contract float %condval_1.0.3.3, %normalizer.sroa.0.1.3, !dbg !159
  %mul509.3.3 = fmul contract float %sub508.3.3, 0x3FC7154760000000, !dbg !160
  %add510.3.3 = fadd contract float %mul509.3.3, 8.000000e+00, !dbg !161
  %cmp.i.i1102.3.3 = fcmp contract olt float %add510.3.3, -1.260000e+02, !dbg !162
  %cond.i.i1103.3.3 = select contract i1 %cmp.i.i1102.3.3, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.3.3 = fadd contract float %add510.3.3, %cond.i.i1103.3.3, !dbg !162
  %482 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.3.3), !dbg !162
  %cond2.i.i1105.3.3 = select contract i1 %cmp.i.i1102.3.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.3.3 = fmul contract float %cond2.i.i1105.3.3, %482, !dbg !162
  %sub508.4.3 = fsub contract float %condval_1.0.4.3, %normalizer.sroa.0.1.3, !dbg !159
  %mul509.4.3 = fmul contract float %sub508.4.3, 0x3FC7154760000000, !dbg !160
  %add510.4.3 = fadd contract float %mul509.4.3, 8.000000e+00, !dbg !161
  %cmp.i.i1102.4.3 = fcmp contract olt float %add510.4.3, -1.260000e+02, !dbg !162
  %cond.i.i1103.4.3 = select contract i1 %cmp.i.i1102.4.3, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.4.3 = fadd contract float %add510.4.3, %cond.i.i1103.4.3, !dbg !162
  %483 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.4.3), !dbg !162
  %cond2.i.i1105.4.3 = select contract i1 %cmp.i.i1102.4.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.4.3 = fmul contract float %cond2.i.i1105.4.3, %483, !dbg !162
  %sub508.5.3 = fsub contract float %condval_1.0.5.3, %normalizer.sroa.0.1.3, !dbg !159
  %mul509.5.3 = fmul contract float %sub508.5.3, 0x3FC7154760000000, !dbg !160
  %add510.5.3 = fadd contract float %mul509.5.3, 8.000000e+00, !dbg !161
  %cmp.i.i1102.5.3 = fcmp contract olt float %add510.5.3, -1.260000e+02, !dbg !162
  %cond.i.i1103.5.3 = select contract i1 %cmp.i.i1102.5.3, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.5.3 = fadd contract float %add510.5.3, %cond.i.i1103.5.3, !dbg !162
  %484 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.5.3), !dbg !162
  %cond2.i.i1105.5.3 = select contract i1 %cmp.i.i1102.5.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.5.3 = fmul contract float %cond2.i.i1105.5.3, %484, !dbg !162
  %sub508.6.3 = fsub contract float %condval_1.0.6.3, %normalizer.sroa.0.1.3, !dbg !159
  %mul509.6.3 = fmul contract float %sub508.6.3, 0x3FC7154760000000, !dbg !160
  %add510.6.3 = fadd contract float %mul509.6.3, 8.000000e+00, !dbg !161
  %cmp.i.i1102.6.3 = fcmp contract olt float %add510.6.3, -1.260000e+02, !dbg !162
  %cond.i.i1103.6.3 = select contract i1 %cmp.i.i1102.6.3, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.6.3 = fadd contract float %add510.6.3, %cond.i.i1103.6.3, !dbg !162
  %485 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.6.3), !dbg !162
  %cond2.i.i1105.6.3 = select contract i1 %cmp.i.i1102.6.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.6.3 = fmul contract float %cond2.i.i1105.6.3, %485, !dbg !162
  %sub508.7.3 = fsub contract float %condval_1.0.7.3, %normalizer.sroa.0.1.3, !dbg !159
  %mul509.7.3 = fmul contract float %sub508.7.3, 0x3FC7154760000000, !dbg !160
  %add510.7.3 = fadd contract float %mul509.7.3, 8.000000e+00, !dbg !161
  %cmp.i.i1102.7.3 = fcmp contract olt float %add510.7.3, -1.260000e+02, !dbg !162
  %cond.i.i1103.7.3 = select contract i1 %cmp.i.i1102.7.3, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i1104.7.3 = fadd contract float %add510.7.3, %cond.i.i1103.7.3, !dbg !162
  %486 = tail call contract float @llvm.exp2.f32(float %add.i.i1104.7.3), !dbg !162
  %cond2.i.i1105.7.3 = select contract i1 %cmp.i.i1102.7.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i1106.7.3 = fmul contract float %cond2.i.i1105.7.3, %486, !dbg !162
  %add529.31935 = fadd contract float %mul.i.i1106.31934, 0.000000e+00, !dbg !165
  %add529.1.3 = fadd contract float %add529.31935, %mul.i.i1106.4.3, !dbg !165
  %add529.2.3 = fadd contract float %add529.1.3, %mul.i.i1106.1.3, !dbg !165
  %add529.3.3 = fadd contract float %add529.2.3, %mul.i.i1106.5.3, !dbg !165
  %add529.4.3 = fadd contract float %add529.3.3, %mul.i.i1106.2.3, !dbg !165
  %add529.5.3 = fadd contract float %add529.4.3, %mul.i.i1106.6.3, !dbg !165
  %add529.6.3 = fadd contract float %add529.5.3, %mul.i.i1106.3.3, !dbg !165
  %add529.7.3 = fadd contract float %add529.6.3, %mul.i.i1106.7.3, !dbg !165
  %rescale.sroa.0.0.3 = select i1 %cmp488.3, float %mul.i.i.3, float 1.000000e+00, !dbg !158
  %487 = bitcast float %add529.7.3 to i32, !dbg !166
  %488 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !171
  %489 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %488) #11, !dbg !174
  %xor.i.i.i1107.3 = xor i32 %489, 32, !dbg !175
  %490 = and i32 %489, -64, !dbg !176
  %and.i.i.i1108.3 = add nsw i32 %490, 64, !dbg !176
  %cmp.not.i.i.i1109.3 = icmp slt i32 %xor.i.i.i1107.3, %and.i.i.i1108.3, !dbg !177
  %cond.i.i.i1110.3 = select i1 %cmp.not.i.i.i1109.3, i32 %xor.i.i.i1107.3, i32 %489, !dbg !178
  %shl.i.i.i1111.3 = shl i32 %cond.i.i.i1110.3, 2, !dbg !179
  %491 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i1111.3, i32 %487), !dbg !180
  %492 = bitcast i32 %491 to float, !dbg !181
  %add.i.i1112.3 = fadd contract float %add529.7.3, %492, !dbg !182
  %493 = bitcast float %add.i.i1112.3 to i32, !dbg !185
  %494 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !190
  %495 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %494) #11, !dbg !193
  %xor.i.i.i.i1113.3 = xor i32 %495, 16, !dbg !194
  %496 = and i32 %495, -64, !dbg !195
  %and.i.i.i.i1114.3 = add nsw i32 %496, 64, !dbg !195
  %cmp.not.i.i.i.i1115.3 = icmp slt i32 %xor.i.i.i.i1113.3, %and.i.i.i.i1114.3, !dbg !196
  %cond.i.i.i.i1116.3 = select i1 %cmp.not.i.i.i.i1115.3, i32 %xor.i.i.i.i1113.3, i32 %495, !dbg !197
  %shl.i.i.i.i1117.3 = shl i32 %cond.i.i.i.i1116.3, 2, !dbg !198
  %497 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i1117.3, i32 %493), !dbg !199
  %498 = bitcast i32 %497 to float, !dbg !200
  %cmp538.3 = fcmp contract une float %rescale.sroa.0.0.3, 1.000000e+00, !dbg !201
  %mul542.3 = fmul contract float %denominator.sroa.0.2.2, %rescale.sroa.0.0.3, !dbg !202
  %denominator.sroa.0.1.3 = select i1 %cmp538.3, float %mul542.3, float %denominator.sroa.0.2.2, !dbg !202
  %499 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !203
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !203, !noalias !211
  %500 = fptrunc float %mul.i.i1106.31934 to half, !dbg !203
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %499), !dbg !203, !noalias !211
  %501 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !216, !noalias !211
  %502 = fptrunc float %mul.i.i1106.1.3 to half, !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %501), !dbg !216, !noalias !211
  %503 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !218, !noalias !222
  %504 = fptrunc float %mul.i.i1106.2.3 to half, !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %503), !dbg !218, !noalias !222
  %505 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !222
  %506 = fptrunc float %mul.i.i1106.3.3 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %505), !dbg !227, !noalias !222
  %507 = insertelement <4 x half> poison, half %500, i64 0, !dbg !229
  %508 = insertelement <4 x half> %507, half %502, i64 1, !dbg !229
  %509 = insertelement <4 x half> %508, half %504, i64 2, !dbg !229
  %510 = insertelement <4 x half> %509, half %506, i64 3, !dbg !229
  %511 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !203
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !203, !noalias !211
  %512 = fptrunc float %mul.i.i1106.4.3 to half, !dbg !203
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %511), !dbg !203, !noalias !211
  %513 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !216, !noalias !211
  %514 = fptrunc float %mul.i.i1106.5.3 to half, !dbg !216
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %513), !dbg !216, !noalias !211
  %515 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !218, !noalias !222
  %516 = fptrunc float %mul.i.i1106.6.3 to half, !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %515), !dbg !218, !noalias !222
  %517 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !222
  %518 = fptrunc float %mul.i.i1106.7.3 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %517), !dbg !227, !noalias !222
  %519 = insertelement <4 x half> poison, half %512, i64 0, !dbg !229
  %520 = insertelement <4 x half> %519, half %514, i64 1, !dbg !229
  %521 = insertelement <4 x half> %520, half %516, i64 2, !dbg !229
  %522 = insertelement <4 x half> %521, half %518, i64 3, !dbg !229
  %add.i.i.i.3 = fadd contract float %add.i.i1112.3, %498, !dbg !230
  %add547.3 = fadd contract float %denominator.sroa.0.1.3, %add.i.i.i.3, !dbg !232
  br i1 %cmp538.3, label %for.body580.preheader.3, label %if.end590.3, !dbg !233

for.body580.preheader.3:                          ; preds = %for.inc342.1.3
  %output_acc.sroa.0.0.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.0.2.2, i64 0, !dbg !255
  %mul584.31936 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.0.0.vec.extract.3, !dbg !234
  %output_acc.sroa.0.0.vec.insert1625.3 = insertelement <4 x float> poison, float %mul584.31936, i64 0, !dbg !235
  %output_acc.sroa.0.4.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.0.2.2, i64 1, !dbg !255
  %mul584.1.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.0.4.vec.extract.3, !dbg !234
  %output_acc.sroa.0.4.vec.insert1634.3 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert1625.3, float %mul584.1.3, i64 1, !dbg !235
  %output_acc.sroa.0.8.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.0.2.2, i64 2, !dbg !255
  %mul584.2.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.0.8.vec.extract.3, !dbg !234
  %output_acc.sroa.0.8.vec.insert1643.3 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert1634.3, float %mul584.2.3, i64 2, !dbg !235
  %output_acc.sroa.0.12.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.0.2.2, i64 3, !dbg !255
  %mul584.3.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.0.12.vec.extract.3, !dbg !234
  %output_acc.sroa.0.12.vec.insert1652.3 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert1643.3, float %mul584.3.3, i64 3, !dbg !235
  %output_acc.sroa.30.16.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.30.2.2, i64 0, !dbg !255
  %mul584.4.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.30.16.vec.extract.3, !dbg !234
  %output_acc.sroa.30.16.vec.insert1663.3 = insertelement <4 x float> poison, float %mul584.4.3, i64 0, !dbg !235
  %output_acc.sroa.30.20.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.30.2.2, i64 1, !dbg !255
  %mul584.5.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.30.20.vec.extract.3, !dbg !234
  %output_acc.sroa.30.20.vec.insert1672.3 = insertelement <4 x float> %output_acc.sroa.30.16.vec.insert1663.3, float %mul584.5.3, i64 1, !dbg !235
  %output_acc.sroa.30.24.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.30.2.2, i64 2, !dbg !255
  %mul584.6.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.30.24.vec.extract.3, !dbg !234
  %output_acc.sroa.30.24.vec.insert1681.3 = insertelement <4 x float> %output_acc.sroa.30.20.vec.insert1672.3, float %mul584.6.3, i64 2, !dbg !235
  %output_acc.sroa.30.28.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.30.2.2, i64 3, !dbg !255
  %mul584.7.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.30.28.vec.extract.3, !dbg !234
  %output_acc.sroa.30.28.vec.insert1690.3 = insertelement <4 x float> %output_acc.sroa.30.24.vec.insert1681.3, float %mul584.7.3, i64 3, !dbg !235
  %output_acc.sroa.58.32.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.58.2.2, i64 0, !dbg !255
  %mul584.8.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.58.32.vec.extract.3, !dbg !234
  %output_acc.sroa.58.32.vec.insert1701.3 = insertelement <4 x float> poison, float %mul584.8.3, i64 0, !dbg !235
  %output_acc.sroa.58.36.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.58.2.2, i64 1, !dbg !255
  %mul584.9.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.58.36.vec.extract.3, !dbg !234
  %output_acc.sroa.58.36.vec.insert1710.3 = insertelement <4 x float> %output_acc.sroa.58.32.vec.insert1701.3, float %mul584.9.3, i64 1, !dbg !235
  %output_acc.sroa.58.40.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.58.2.2, i64 2, !dbg !255
  %mul584.10.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.58.40.vec.extract.3, !dbg !234
  %output_acc.sroa.58.40.vec.insert1719.3 = insertelement <4 x float> %output_acc.sroa.58.36.vec.insert1710.3, float %mul584.10.3, i64 2, !dbg !235
  %output_acc.sroa.58.44.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.58.2.2, i64 3, !dbg !255
  %mul584.11.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.58.44.vec.extract.3, !dbg !234
  %output_acc.sroa.58.44.vec.insert1728.3 = insertelement <4 x float> %output_acc.sroa.58.40.vec.insert1719.3, float %mul584.11.3, i64 3, !dbg !235
  %output_acc.sroa.86.48.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.86.2.2, i64 0, !dbg !255
  %mul584.12.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.86.48.vec.extract.3, !dbg !234
  %output_acc.sroa.86.48.vec.insert1739.3 = insertelement <4 x float> poison, float %mul584.12.3, i64 0, !dbg !235
  %output_acc.sroa.86.52.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.86.2.2, i64 1, !dbg !255
  %mul584.13.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.86.52.vec.extract.3, !dbg !234
  %output_acc.sroa.86.52.vec.insert1748.3 = insertelement <4 x float> %output_acc.sroa.86.48.vec.insert1739.3, float %mul584.13.3, i64 1, !dbg !235
  %output_acc.sroa.86.56.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.86.2.2, i64 2, !dbg !255
  %mul584.14.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.86.56.vec.extract.3, !dbg !234
  %output_acc.sroa.86.56.vec.insert1757.3 = insertelement <4 x float> %output_acc.sroa.86.52.vec.insert1748.3, float %mul584.14.3, i64 2, !dbg !235
  %output_acc.sroa.86.60.vec.extract.3 = extractelement <4 x float> %output_acc.sroa.86.2.2, i64 3, !dbg !255
  %mul584.15.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.86.60.vec.extract.3, !dbg !234
  %output_acc.sroa.86.60.vec.insert1766.3 = insertelement <4 x float> %output_acc.sroa.86.56.vec.insert1757.3, float %mul584.15.3, i64 3, !dbg !235
  br label %if.end590.3, !dbg !236

if.end590.3:                                      ; preds = %for.body580.preheader.3, %for.inc342.1.3
  %output_acc.sroa.86.1.3 = phi <4 x float> [ %output_acc.sroa.86.60.vec.insert1766.3, %for.body580.preheader.3 ], [ %output_acc.sroa.86.2.2, %for.inc342.1.3 ], !dbg !90
  %output_acc.sroa.58.1.3 = phi <4 x float> [ %output_acc.sroa.58.44.vec.insert1728.3, %for.body580.preheader.3 ], [ %output_acc.sroa.58.2.2, %for.inc342.1.3 ], !dbg !90
  %output_acc.sroa.30.1.3 = phi <4 x float> [ %output_acc.sroa.30.28.vec.insert1690.3, %for.body580.preheader.3 ], [ %output_acc.sroa.30.2.2, %for.inc342.1.3 ], !dbg !90
  %output_acc.sroa.0.1.3 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1652.3, %for.body580.preheader.3 ], [ %output_acc.sroa.0.2.2, %for.inc342.1.3 ], !dbg !90
  br i1 %or.cond.3, label %if.end702.3, label %for.cond604.preheader.3, !dbg !237

for.cond604.preheader.3:                          ; preds = %if.end590.3
  %add622.3 = add nuw nsw i32 %mul124.3, %mul439
  %conv645.3 = zext nneg i32 %mul124.3 to i64
  %shr613.31937 = lshr exact i32 %mul124.3, 2, !dbg !238
  %add614.31938 = add nuw nsw i32 %shr613.31937, %shr730, !dbg !239
  %cmp615.31939 = icmp ult i32 %add614.31938, 256, !dbg !240
  br i1 %cmp615.31939, label %if.then634.31944, label %if.end670.3, !dbg !241

if.then634.31944:                                 ; preds = %for.cond604.preheader.3
  %.idx1202.31940 = shl nuw nsw i64 %conv645.3, 7, !dbg !242
  %523 = getelementptr inbounds i8, ptr addrspace(4) %30, i64 %.idx1202.31940, !dbg !242
  %condval_2.sroa.0.0.copyload.31941 = load i32, ptr addrspace(4) %523, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.31942 = getelementptr inbounds i8, ptr addrspace(4) %523, i64 4, !dbg !243
  %condval_2.sroa.5.0.copyload.31943 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.31942, align 4, !dbg !243, !tbaa !30
  br label %if.end670.3, !dbg !244

if.end670.3:                                      ; preds = %if.then634.31944, %for.cond604.preheader.3
  %condval_2.sroa.5.0.3 = phi i32 [ %condval_2.sroa.5.0.copyload.31943, %if.then634.31944 ], [ 0, %for.cond604.preheader.3 ], !dbg !90
  %condval_2.sroa.0.0.3 = phi i32 [ %condval_2.sroa.0.0.copyload.31941, %if.then634.31944 ], [ 0, %for.cond604.preheader.3 ], !dbg !90
  %shr613.1.3 = lshr exact i32 %mul124.3, 2, !dbg !238
  %add614.1.3 = add nuw nsw i32 %shr613.1.3, %shr730, !dbg !239
  %cmp615.1.3 = icmp ult i32 %add614.1.3, 256, !dbg !240
  %524 = icmp sgt i32 %add622.3, -2
  %or.cond1198.1.3 = select i1 %cmp615.1.3, i1 %524, i1 false, !dbg !241
  br i1 %or.cond1198.1.3, label %if.then634.1.3, label %if.end670.1.3, !dbg !241

if.then634.1.3:                                   ; preds = %if.end670.3
  %.idx1202.1.3 = shl nuw nsw i64 %conv645.3, 7, !dbg !242
  %525 = getelementptr inbounds i8, ptr addrspace(4) %31, i64 %.idx1202.1.3, !dbg !242
  %add.ptr656.1.3 = getelementptr inbounds i8, ptr addrspace(4) %525, i64 128, !dbg !242
  %condval_2.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %add.ptr656.1.3, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %525, i64 132, !dbg !243
  %condval_2.sroa.5.0.copyload.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.1.3, align 4, !dbg !243, !tbaa !30
  br label %if.end670.1.3, !dbg !244

if.end670.1.3:                                    ; preds = %if.then634.1.3, %if.end670.3
  %condval_2.sroa.5.0.1.3 = phi i32 [ %condval_2.sroa.5.0.copyload.1.3, %if.then634.1.3 ], [ 0, %if.end670.3 ], !dbg !90
  %condval_2.sroa.0.0.1.3 = phi i32 [ %condval_2.sroa.0.0.copyload.1.3, %if.then634.1.3 ], [ 0, %if.end670.3 ], !dbg !90
  %shr613.2.3 = lshr exact i32 %mul124.3, 2, !dbg !238
  %add614.2.3 = add nuw nsw i32 %shr613.2.3, %shr730, !dbg !239
  %cmp615.2.3 = icmp ult i32 %add614.2.3, 256, !dbg !240
  %526 = icmp sgt i32 %add622.3, -3
  %or.cond1198.2.3 = select i1 %cmp615.2.3, i1 %526, i1 false, !dbg !241
  br i1 %or.cond1198.2.3, label %if.then634.2.3, label %if.end670.2.3, !dbg !241

if.then634.2.3:                                   ; preds = %if.end670.1.3
  %.idx1202.2.3 = shl nuw nsw i64 %conv645.3, 7, !dbg !242
  %527 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 %.idx1202.2.3, !dbg !242
  %add.ptr656.2.3 = getelementptr inbounds i8, ptr addrspace(4) %527, i64 256, !dbg !242
  %condval_2.sroa.0.0.copyload.2.3 = load i32, ptr addrspace(4) %add.ptr656.2.3, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.2.3 = getelementptr inbounds i8, ptr addrspace(4) %527, i64 260, !dbg !243
  %condval_2.sroa.5.0.copyload.2.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.2.3, align 4, !dbg !243, !tbaa !30
  br label %if.end670.2.3, !dbg !244

if.end670.2.3:                                    ; preds = %if.then634.2.3, %if.end670.1.3
  %condval_2.sroa.5.0.2.3 = phi i32 [ %condval_2.sroa.5.0.copyload.2.3, %if.then634.2.3 ], [ 0, %if.end670.1.3 ], !dbg !90
  %condval_2.sroa.0.0.2.3 = phi i32 [ %condval_2.sroa.0.0.copyload.2.3, %if.then634.2.3 ], [ 0, %if.end670.1.3 ], !dbg !90
  %shr613.3.3 = lshr exact i32 %mul124.3, 2, !dbg !238
  %add614.3.3 = add nuw nsw i32 %shr613.3.3, %shr730, !dbg !239
  %cmp615.3.3 = icmp ult i32 %add614.3.3, 256, !dbg !240
  %528 = icmp sgt i32 %add622.3, -4
  %or.cond1198.3.3 = select i1 %cmp615.3.3, i1 %528, i1 false, !dbg !241
  br i1 %or.cond1198.3.3, label %if.then634.3.3, label %if.end702.3, !dbg !241

if.then634.3.3:                                   ; preds = %if.end670.2.3
  %.idx1202.3.3 = shl nuw nsw i64 %conv645.3, 7, !dbg !242
  %529 = getelementptr inbounds i8, ptr addrspace(4) %33, i64 %.idx1202.3.3, !dbg !242
  %add.ptr656.3.3 = getelementptr inbounds i8, ptr addrspace(4) %529, i64 384, !dbg !242
  %condval_2.sroa.0.0.copyload.3.3 = load i32, ptr addrspace(4) %add.ptr656.3.3, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.3.3 = getelementptr inbounds i8, ptr addrspace(4) %529, i64 388, !dbg !243
  %condval_2.sroa.5.0.copyload.3.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.3.3, align 4, !dbg !243, !tbaa !30
  br label %if.end702.3, !dbg !244

if.end702.3:                                      ; preds = %if.then634.3.3, %if.end670.2.3, %if.end590.3
  %v_tile_local.sroa.58.0.3 = phi i32 [ 0, %if.end590.3 ], [ %condval_2.sroa.5.0.copyload.3.3, %if.then634.3.3 ], [ 0, %if.end670.2.3 ], !dbg !90
  %v_tile_local.sroa.50.0.3 = phi i32 [ 0, %if.end590.3 ], [ %condval_2.sroa.0.0.copyload.3.3, %if.then634.3.3 ], [ 0, %if.end670.2.3 ], !dbg !90
  %v_tile_local.sroa.42.0.3 = phi i32 [ 0, %if.end590.3 ], [ %condval_2.sroa.5.0.2.3, %if.then634.3.3 ], [ %condval_2.sroa.5.0.2.3, %if.end670.2.3 ], !dbg !90
  %v_tile_local.sroa.34.0.3 = phi i32 [ 0, %if.end590.3 ], [ %condval_2.sroa.0.0.2.3, %if.then634.3.3 ], [ %condval_2.sroa.0.0.2.3, %if.end670.2.3 ], !dbg !90
  %v_tile_local.sroa.26.0.3 = phi i32 [ 0, %if.end590.3 ], [ %condval_2.sroa.5.0.1.3, %if.then634.3.3 ], [ %condval_2.sroa.5.0.1.3, %if.end670.2.3 ], !dbg !90
  %v_tile_local.sroa.18.0.3 = phi i32 [ 0, %if.end590.3 ], [ %condval_2.sroa.0.0.1.3, %if.then634.3.3 ], [ %condval_2.sroa.0.0.1.3, %if.end670.2.3 ], !dbg !90
  %v_tile_local.sroa.10.0.3 = phi i32 [ 0, %if.end590.3 ], [ %condval_2.sroa.5.0.3, %if.then634.3.3 ], [ %condval_2.sroa.5.0.3, %if.end670.2.3 ], !dbg !90
  %v_tile_local.sroa.0.0.3 = phi i32 [ 0, %if.end590.3 ], [ %condval_2.sroa.0.0.3, %if.then634.3.3 ], [ %condval_2.sroa.0.0.3, %if.end670.2.3 ], !dbg !90
  %530 = and i32 %v_tile_local.sroa.50.0.3, 65535, !dbg !245
  %v_column_local.sroa.34.0.insert.ext.3 = zext nneg i32 %530 to i64, !dbg !245
  %v_column_local.sroa.34.0.insert.shift.3 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext.3, 48, !dbg !245
  %531 = and i32 %v_tile_local.sroa.34.0.3, 65535, !dbg !245
  %v_column_local.sroa.26.0.insert.ext.3 = zext nneg i32 %531 to i64, !dbg !245
  %v_column_local.sroa.26.0.insert.shift.3 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext.3, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert.3 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift.3, %v_column_local.sroa.26.0.insert.shift.3, !dbg !245
  %532 = shl i32 %v_tile_local.sroa.18.0.3, 16, !dbg !245
  %v_column_local.sroa.18.0.insert.shift.3 = zext i32 %532 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert.3 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert.3, %v_column_local.sroa.18.0.insert.shift.3, !dbg !245
  %533 = and i32 %v_tile_local.sroa.0.0.3, 65535, !dbg !245
  %v_column_local.sroa.0.0.insert.ext.3 = zext nneg i32 %533 to i64, !dbg !245
  %v_column_local.sroa.0.0.insert.insert.3 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert.3, %v_column_local.sroa.0.0.insert.ext.3, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr739, align 8, !dbg !245
  %v_tile_local.sroa.0.2.extract.shift.3 = lshr i32 %v_tile_local.sroa.0.0.3, 16, !dbg !246
  %v_tile_local.sroa.0.2.extract.trunc.3 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift.3 to i64, !dbg !246
  %v_tile_local.sroa.18.10.extract.shift.3 = and i32 %v_tile_local.sroa.18.0.3, -65536, !dbg !245
  %v_tile_local.sroa.34.18.extract.shift.3 = lshr i32 %v_tile_local.sroa.34.0.3, 16, !dbg !246
  %v_tile_local.sroa.34.18.extract.trunc.3 = zext nneg i32 %v_tile_local.sroa.34.18.extract.shift.3 to i64, !dbg !246
  %v_tile_local.sroa.50.26.extract.shift.3 = lshr i32 %v_tile_local.sroa.50.0.3, 16, !dbg !246
  %v_tile_local.sroa.50.26.extract.trunc.3 = zext nneg i32 %v_tile_local.sroa.50.26.extract.shift.3 to i64, !dbg !246
  %v_column_local.sroa.34.0.insert.shift1407.3 = shl nuw i64 %v_tile_local.sroa.50.26.extract.trunc.3, 48, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1372.3 = shl nuw nsw i64 %v_tile_local.sroa.34.18.extract.trunc.3, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1374.3 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1407.3, %v_column_local.sroa.26.0.insert.shift1372.3, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1337.3 = zext i32 %v_tile_local.sroa.18.10.extract.shift.3 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1339.3 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1374.3, %v_column_local.sroa.18.0.insert.shift1337.3, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1310.3 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1339.3, %v_tile_local.sroa.0.2.extract.trunc.3, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1310.3, ptr addrspace(3) %add.ptr739.1, align 8, !dbg !245
  %534 = and i32 %v_tile_local.sroa.58.0.3, 65535, !dbg !245
  %v_column_local.sroa.34.0.insert.ext1411.3 = zext nneg i32 %534 to i64, !dbg !245
  %v_column_local.sroa.34.0.insert.shift1412.3 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1411.3, 48, !dbg !245
  %535 = and i32 %v_tile_local.sroa.42.0.3, 65535, !dbg !245
  %v_column_local.sroa.26.0.insert.ext1376.3 = zext nneg i32 %535 to i64, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1377.3 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1376.3, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1379.3 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1412.3, %v_column_local.sroa.26.0.insert.shift1377.3, !dbg !245
  %536 = shl i32 %v_tile_local.sroa.26.0.3, 16, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1342.3 = zext i32 %536 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1344.3 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1379.3, %v_column_local.sroa.18.0.insert.shift1342.3, !dbg !245
  %537 = and i32 %v_tile_local.sroa.10.0.3, 65535, !dbg !245
  %v_column_local.sroa.0.0.insert.ext1312.3 = zext nneg i32 %537 to i64, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1314.3 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1344.3, %v_column_local.sroa.0.0.insert.ext1312.3, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1314.3, ptr addrspace(3) %add.ptr739.2, align 8, !dbg !245
  %v_tile_local.sroa.10.6.extract.shift.3 = lshr i32 %v_tile_local.sroa.10.0.3, 16, !dbg !246
  %v_tile_local.sroa.10.6.extract.trunc.3 = zext nneg i32 %v_tile_local.sroa.10.6.extract.shift.3 to i64, !dbg !246
  %v_tile_local.sroa.26.14.extract.shift.3 = and i32 %v_tile_local.sroa.26.0.3, -65536, !dbg !245
  %v_tile_local.sroa.42.22.extract.shift.3 = lshr i32 %v_tile_local.sroa.42.0.3, 16, !dbg !246
  %v_tile_local.sroa.42.22.extract.trunc.3 = zext nneg i32 %v_tile_local.sroa.42.22.extract.shift.3 to i64, !dbg !246
  %v_tile_local.sroa.58.30.extract.shift.3 = lshr i32 %v_tile_local.sroa.58.0.3, 16, !dbg !246
  %v_tile_local.sroa.58.30.extract.trunc.3 = zext nneg i32 %v_tile_local.sroa.58.30.extract.shift.3 to i64, !dbg !246
  %v_column_local.sroa.34.0.insert.shift1417.3 = shl nuw i64 %v_tile_local.sroa.58.30.extract.trunc.3, 48, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1382.3 = shl nuw nsw i64 %v_tile_local.sroa.42.22.extract.trunc.3, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1384.3 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1417.3, %v_column_local.sroa.26.0.insert.shift1382.3, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1347.3 = zext i32 %v_tile_local.sroa.26.14.extract.shift.3 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1349.3 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1384.3, %v_column_local.sroa.18.0.insert.shift1347.3, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1318.3 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1349.3, %v_tile_local.sroa.10.6.extract.trunc.3, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1318.3, ptr addrspace(3) %add.ptr739.3, align 8, !dbg !245
  br i1 %or.cond1140.1.3, label %if.end702.1.3, label %for.cond604.preheader.1.3, !dbg !237

for.cond604.preheader.1.3:                        ; preds = %if.end702.3
  %add622.1.3 = add nuw nsw i32 %mul124.1.3, %mul439
  %conv645.1.3 = zext nneg i32 %mul124.1.3 to i64
  %shr613.11258.3 = lshr exact i32 %mul124.1.3, 2, !dbg !238
  %add614.11259.3 = add nuw nsw i32 %shr613.11258.3, %shr730, !dbg !239
  %cmp615.11260.3 = icmp ult i32 %add614.11259.3, 256, !dbg !240
  br i1 %cmp615.11260.3, label %if.then634.11266.3, label %if.end670.11270.3, !dbg !241

if.then634.11266.3:                               ; preds = %for.cond604.preheader.1.3
  %.idx1202.11262.3 = shl nuw nsw i64 %conv645.1.3, 7, !dbg !242
  %538 = getelementptr inbounds i8, ptr addrspace(4) %42, i64 %.idx1202.11262.3, !dbg !242
  %condval_2.sroa.0.0.copyload.11263.3 = load i32, ptr addrspace(4) %538, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.11264.3 = getelementptr inbounds i8, ptr addrspace(4) %538, i64 4, !dbg !243
  %condval_2.sroa.5.0.copyload.11265.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.11264.3, align 4, !dbg !243, !tbaa !30
  br label %if.end670.11270.3, !dbg !244

if.end670.11270.3:                                ; preds = %if.then634.11266.3, %for.cond604.preheader.1.3
  %condval_2.sroa.5.0.11267.3 = phi i32 [ %condval_2.sroa.5.0.copyload.11265.3, %if.then634.11266.3 ], [ 0, %for.cond604.preheader.1.3 ], !dbg !90
  %condval_2.sroa.0.0.11268.3 = phi i32 [ %condval_2.sroa.0.0.copyload.11263.3, %if.then634.11266.3 ], [ 0, %for.cond604.preheader.1.3 ], !dbg !90
  %shr613.1.1.3 = lshr exact i32 %mul124.1.3, 2, !dbg !238
  %add614.1.1.3 = add nuw nsw i32 %shr613.1.1.3, %shr730, !dbg !239
  %cmp615.1.1.3 = icmp ult i32 %add614.1.1.3, 256, !dbg !240
  %539 = icmp sgt i32 %add622.1.3, -2
  %or.cond1198.1.1.3 = select i1 %cmp615.1.1.3, i1 %539, i1 false, !dbg !241
  br i1 %or.cond1198.1.1.3, label %if.then634.1.1.3, label %if.end670.1.1.3, !dbg !241

if.then634.1.1.3:                                 ; preds = %if.end670.11270.3
  %.idx1202.1.1.3 = shl nuw nsw i64 %conv645.1.3, 7, !dbg !242
  %540 = getelementptr inbounds i8, ptr addrspace(4) %43, i64 %.idx1202.1.1.3, !dbg !242
  %add.ptr656.1.1.3 = getelementptr inbounds i8, ptr addrspace(4) %540, i64 128, !dbg !242
  %condval_2.sroa.0.0.copyload.1.1.3 = load i32, ptr addrspace(4) %add.ptr656.1.1.3, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.1.1.3 = getelementptr inbounds i8, ptr addrspace(4) %540, i64 132, !dbg !243
  %condval_2.sroa.5.0.copyload.1.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.1.1.3, align 4, !dbg !243, !tbaa !30
  br label %if.end670.1.1.3, !dbg !244

if.end670.1.1.3:                                  ; preds = %if.then634.1.1.3, %if.end670.11270.3
  %condval_2.sroa.5.0.1.1.3 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1.3, %if.then634.1.1.3 ], [ 0, %if.end670.11270.3 ], !dbg !90
  %condval_2.sroa.0.0.1.1.3 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1.3, %if.then634.1.1.3 ], [ 0, %if.end670.11270.3 ], !dbg !90
  %shr613.2.1.3 = lshr exact i32 %mul124.1.3, 2, !dbg !238
  %add614.2.1.3 = add nuw nsw i32 %shr613.2.1.3, %shr730, !dbg !239
  %cmp615.2.1.3 = icmp ult i32 %add614.2.1.3, 256, !dbg !240
  %541 = icmp sgt i32 %add622.1.3, -3
  %or.cond1198.2.1.3 = select i1 %cmp615.2.1.3, i1 %541, i1 false, !dbg !241
  br i1 %or.cond1198.2.1.3, label %if.then634.2.1.3, label %if.end670.2.1.3, !dbg !241

if.then634.2.1.3:                                 ; preds = %if.end670.1.1.3
  %.idx1202.2.1.3 = shl nuw nsw i64 %conv645.1.3, 7, !dbg !242
  %542 = getelementptr inbounds i8, ptr addrspace(4) %44, i64 %.idx1202.2.1.3, !dbg !242
  %add.ptr656.2.1.3 = getelementptr inbounds i8, ptr addrspace(4) %542, i64 256, !dbg !242
  %condval_2.sroa.0.0.copyload.2.1.3 = load i32, ptr addrspace(4) %add.ptr656.2.1.3, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.2.1.3 = getelementptr inbounds i8, ptr addrspace(4) %542, i64 260, !dbg !243
  %condval_2.sroa.5.0.copyload.2.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.2.1.3, align 4, !dbg !243, !tbaa !30
  br label %if.end670.2.1.3, !dbg !244

if.end670.2.1.3:                                  ; preds = %if.then634.2.1.3, %if.end670.1.1.3
  %condval_2.sroa.5.0.2.1.3 = phi i32 [ %condval_2.sroa.5.0.copyload.2.1.3, %if.then634.2.1.3 ], [ 0, %if.end670.1.1.3 ], !dbg !90
  %condval_2.sroa.0.0.2.1.3 = phi i32 [ %condval_2.sroa.0.0.copyload.2.1.3, %if.then634.2.1.3 ], [ 0, %if.end670.1.1.3 ], !dbg !90
  %shr613.3.1.3 = lshr exact i32 %mul124.1.3, 2, !dbg !238
  %add614.3.1.3 = add nuw nsw i32 %shr613.3.1.3, %shr730, !dbg !239
  %cmp615.3.1.3 = icmp ult i32 %add614.3.1.3, 256, !dbg !240
  %543 = icmp sgt i32 %add622.1.3, -4
  %or.cond1198.3.1.3 = select i1 %cmp615.3.1.3, i1 %543, i1 false, !dbg !241
  br i1 %or.cond1198.3.1.3, label %if.then634.3.1.3, label %if.end702.1.3, !dbg !241

if.then634.3.1.3:                                 ; preds = %if.end670.2.1.3
  %.idx1202.3.1.3 = shl nuw nsw i64 %conv645.1.3, 7, !dbg !242
  %544 = getelementptr inbounds i8, ptr addrspace(4) %45, i64 %.idx1202.3.1.3, !dbg !242
  %add.ptr656.3.1.3 = getelementptr inbounds i8, ptr addrspace(4) %544, i64 384, !dbg !242
  %condval_2.sroa.0.0.copyload.3.1.3 = load i32, ptr addrspace(4) %add.ptr656.3.1.3, align 8, !dbg !243, !tbaa !30
  %condval_2.sroa.5.0.add.ptr656.sroa_idx.3.1.3 = getelementptr inbounds i8, ptr addrspace(4) %544, i64 388, !dbg !243
  %condval_2.sroa.5.0.copyload.3.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr656.sroa_idx.3.1.3, align 4, !dbg !243, !tbaa !30
  br label %if.end702.1.3, !dbg !244

if.end702.1.3:                                    ; preds = %if.then634.3.1.3, %if.end670.2.1.3, %if.end702.3
  %v_tile_local.sroa.58.1.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3.1.3, %if.then634.3.1.3 ], [ 0, %if.end670.2.1.3 ], [ 0, %if.end702.3 ], !dbg !90
  %v_tile_local.sroa.50.1.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3.1.3, %if.then634.3.1.3 ], [ 0, %if.end670.2.1.3 ], [ 0, %if.end702.3 ], !dbg !90
  %v_tile_local.sroa.42.1.3 = phi i32 [ %condval_2.sroa.5.0.2.1.3, %if.then634.3.1.3 ], [ %condval_2.sroa.5.0.2.1.3, %if.end670.2.1.3 ], [ 0, %if.end702.3 ], !dbg !90
  %v_tile_local.sroa.34.1.3 = phi i32 [ %condval_2.sroa.0.0.2.1.3, %if.then634.3.1.3 ], [ %condval_2.sroa.0.0.2.1.3, %if.end670.2.1.3 ], [ 0, %if.end702.3 ], !dbg !90
  %v_tile_local.sroa.26.1.3 = phi i32 [ %condval_2.sroa.5.0.1.1.3, %if.then634.3.1.3 ], [ %condval_2.sroa.5.0.1.1.3, %if.end670.2.1.3 ], [ 0, %if.end702.3 ], !dbg !90
  %v_tile_local.sroa.18.1.3 = phi i32 [ %condval_2.sroa.0.0.1.1.3, %if.then634.3.1.3 ], [ %condval_2.sroa.0.0.1.1.3, %if.end670.2.1.3 ], [ 0, %if.end702.3 ], !dbg !90
  %v_tile_local.sroa.10.1.3 = phi i32 [ %condval_2.sroa.5.0.11267.3, %if.then634.3.1.3 ], [ %condval_2.sroa.5.0.11267.3, %if.end670.2.1.3 ], [ 0, %if.end702.3 ], !dbg !90
  %v_tile_local.sroa.0.1.3 = phi i32 [ %condval_2.sroa.0.0.11268.3, %if.then634.3.1.3 ], [ %condval_2.sroa.0.0.11268.3, %if.end670.2.1.3 ], [ 0, %if.end702.3 ], !dbg !90
  %545 = and i32 %v_tile_local.sroa.50.1.3, 65535, !dbg !245
  %v_column_local.sroa.34.0.insert.ext1421.3 = zext nneg i32 %545 to i64, !dbg !245
  %v_column_local.sroa.34.0.insert.shift1422.3 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1421.3, 48, !dbg !245
  %546 = and i32 %v_tile_local.sroa.34.1.3, 65535, !dbg !245
  %v_column_local.sroa.26.0.insert.ext1386.3 = zext nneg i32 %546 to i64, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1387.3 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1386.3, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1389.3 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1422.3, %v_column_local.sroa.26.0.insert.shift1387.3, !dbg !245
  %547 = shl i32 %v_tile_local.sroa.18.1.3, 16, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1352.3 = zext i32 %547 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1354.3 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1389.3, %v_column_local.sroa.18.0.insert.shift1352.3, !dbg !245
  %548 = and i32 %v_tile_local.sroa.0.1.3, 65535, !dbg !245
  %v_column_local.sroa.0.0.insert.ext1320.3 = zext nneg i32 %548 to i64, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1322.3 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1354.3, %v_column_local.sroa.0.0.insert.ext1320.3, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1322.3, ptr addrspace(3) %add.ptr739.11280, align 8, !dbg !245
  %v_tile_local.sroa.0.2.extract.shift1443.3 = lshr i32 %v_tile_local.sroa.0.1.3, 16, !dbg !246
  %v_tile_local.sroa.0.2.extract.trunc1444.3 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1443.3 to i64, !dbg !246
  %v_tile_local.sroa.18.10.extract.shift1453.3 = and i32 %v_tile_local.sroa.18.1.3, -65536, !dbg !245
  %v_tile_local.sroa.34.18.extract.shift1463.3 = lshr i32 %v_tile_local.sroa.34.1.3, 16, !dbg !246
  %v_tile_local.sroa.34.18.extract.trunc1464.3 = zext nneg i32 %v_tile_local.sroa.34.18.extract.shift1463.3 to i64, !dbg !246
  %v_tile_local.sroa.50.26.extract.shift1473.3 = lshr i32 %v_tile_local.sroa.50.1.3, 16, !dbg !246
  %v_tile_local.sroa.50.26.extract.trunc1474.3 = zext nneg i32 %v_tile_local.sroa.50.26.extract.shift1473.3 to i64, !dbg !246
  %v_column_local.sroa.34.0.insert.shift1427.3 = shl nuw i64 %v_tile_local.sroa.50.26.extract.trunc1474.3, 48, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1392.3 = shl nuw nsw i64 %v_tile_local.sroa.34.18.extract.trunc1464.3, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1394.3 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1427.3, %v_column_local.sroa.26.0.insert.shift1392.3, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1357.3 = zext i32 %v_tile_local.sroa.18.10.extract.shift1453.3 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1359.3 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1394.3, %v_column_local.sroa.18.0.insert.shift1357.3, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1326.3 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1359.3, %v_tile_local.sroa.0.2.extract.trunc1444.3, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1326.3, ptr addrspace(3) %add.ptr739.1.1, align 8, !dbg !245
  %549 = and i32 %v_tile_local.sroa.58.1.3, 65535, !dbg !245
  %v_column_local.sroa.34.0.insert.ext1431.3 = zext nneg i32 %549 to i64, !dbg !245
  %v_column_local.sroa.34.0.insert.shift1432.3 = shl nuw i64 %v_column_local.sroa.34.0.insert.ext1431.3, 48, !dbg !245
  %550 = and i32 %v_tile_local.sroa.42.1.3, 65535, !dbg !245
  %v_column_local.sroa.26.0.insert.ext1396.3 = zext nneg i32 %550 to i64, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1397.3 = shl nuw nsw i64 %v_column_local.sroa.26.0.insert.ext1396.3, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1399.3 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1432.3, %v_column_local.sroa.26.0.insert.shift1397.3, !dbg !245
  %551 = shl i32 %v_tile_local.sroa.26.1.3, 16, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1362.3 = zext i32 %551 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1364.3 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1399.3, %v_column_local.sroa.18.0.insert.shift1362.3, !dbg !245
  %552 = and i32 %v_tile_local.sroa.10.1.3, 65535, !dbg !245
  %v_column_local.sroa.0.0.insert.ext1328.3 = zext nneg i32 %552 to i64, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1330.3 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1364.3, %v_column_local.sroa.0.0.insert.ext1328.3, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1330.3, ptr addrspace(3) %add.ptr739.2.1, align 8, !dbg !245
  %v_tile_local.sroa.10.6.extract.shift1448.3 = lshr i32 %v_tile_local.sroa.10.1.3, 16, !dbg !246
  %v_tile_local.sroa.10.6.extract.trunc1449.3 = zext nneg i32 %v_tile_local.sroa.10.6.extract.shift1448.3 to i64, !dbg !246
  %v_tile_local.sroa.26.14.extract.shift1458.3 = and i32 %v_tile_local.sroa.26.1.3, -65536, !dbg !245
  %v_tile_local.sroa.42.22.extract.shift1468.3 = lshr i32 %v_tile_local.sroa.42.1.3, 16, !dbg !246
  %v_tile_local.sroa.42.22.extract.trunc1469.3 = zext nneg i32 %v_tile_local.sroa.42.22.extract.shift1468.3 to i64, !dbg !246
  %v_tile_local.sroa.58.30.extract.shift1478.3 = lshr i32 %v_tile_local.sroa.58.1.3, 16, !dbg !246
  %v_tile_local.sroa.58.30.extract.trunc1479.3 = zext nneg i32 %v_tile_local.sroa.58.30.extract.shift1478.3 to i64, !dbg !246
  %v_column_local.sroa.34.0.insert.shift1437.3 = shl nuw i64 %v_tile_local.sroa.58.30.extract.trunc1479.3, 48, !dbg !245
  %v_column_local.sroa.26.0.insert.shift1402.3 = shl nuw nsw i64 %v_tile_local.sroa.42.22.extract.trunc1469.3, 32, !dbg !245
  %v_column_local.sroa.26.0.insert.insert1404.3 = or disjoint i64 %v_column_local.sroa.34.0.insert.shift1437.3, %v_column_local.sroa.26.0.insert.shift1402.3, !dbg !245
  %v_column_local.sroa.18.0.insert.shift1367.3 = zext i32 %v_tile_local.sroa.26.14.extract.shift1458.3 to i64, !dbg !245
  %v_column_local.sroa.18.0.insert.insert1369.3 = or disjoint i64 %v_column_local.sroa.26.0.insert.insert1404.3, %v_column_local.sroa.18.0.insert.shift1367.3, !dbg !245
  %v_column_local.sroa.0.0.insert.insert1334.3 = or disjoint i64 %v_column_local.sroa.18.0.insert.insert1369.3, %v_tile_local.sroa.10.6.extract.trunc1449.3, !dbg !245
  store i64 %v_column_local.sroa.0.0.insert.insert1334.3, ptr addrspace(3) %add.ptr739.3.1, align 8, !dbg !245
  fence syncscope("warp") release, !dbg !247
  tail call void @llvm.mxc.barrier.warp(), !dbg !250
  fence syncscope("warp") acquire, !dbg !251
  %553 = load <4 x half>, ptr addrspace(3) %add.ptr776, align 8, !dbg !252
  %554 = load <4 x half>, ptr addrspace(3) %add.ptr776.1, align 8, !dbg !252
  %555 = load <4 x half>, ptr addrspace(3) %add.ptr776.2, align 8, !dbg !252
  %556 = load <4 x half>, ptr addrspace(3) %add.ptr776.3, align 8, !dbg !252
  %557 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %553, <4 x half> %510, <4 x float> %output_acc.sroa.0.1.3), !dbg !253
  %558 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %554, <4 x half> %510, <4 x float> %output_acc.sroa.30.1.3), !dbg !253
  %559 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %555, <4 x half> %510, <4 x float> %output_acc.sroa.58.1.3), !dbg !253
  %560 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %556, <4 x half> %510, <4 x float> %output_acc.sroa.86.1.3), !dbg !253
  %561 = load <4 x half>, ptr addrspace(3) %add.ptr776.11284, align 8, !dbg !252
  %562 = load <4 x half>, ptr addrspace(3) %add.ptr776.1.1, align 8, !dbg !252
  %563 = load <4 x half>, ptr addrspace(3) %add.ptr776.2.1, align 8, !dbg !252
  %564 = load <4 x half>, ptr addrspace(3) %add.ptr776.3.1, align 8, !dbg !252
  %565 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %561, <4 x half> %522, <4 x float> %557), !dbg !253
  %566 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %562, <4 x half> %522, <4 x float> %558), !dbg !253
  %567 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %563, <4 x half> %522, <4 x float> %559), !dbg !253
  %568 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %564, <4 x half> %522, <4 x float> %560), !dbg !253
  br label %for.inc807.3, !dbg !254

for.inc807.3:                                     ; preds = %if.end702.1.3, %lor.lhs.false.3
  %output_acc.sroa.86.2.3 = phi <4 x float> [ %output_acc.sroa.86.2.2, %lor.lhs.false.3 ], [ %568, %if.end702.1.3 ], !dbg !90
  %output_acc.sroa.58.2.3 = phi <4 x float> [ %output_acc.sroa.58.2.2, %lor.lhs.false.3 ], [ %567, %if.end702.1.3 ], !dbg !90
  %output_acc.sroa.30.2.3 = phi <4 x float> [ %output_acc.sroa.30.2.2, %lor.lhs.false.3 ], [ %566, %if.end702.1.3 ], !dbg !90
  %output_acc.sroa.0.2.3 = phi <4 x float> [ %output_acc.sroa.0.2.2, %lor.lhs.false.3 ], [ %565, %if.end702.1.3 ], !dbg !90
  %denominator.sroa.0.2.3 = phi float [ %denominator.sroa.0.2.2, %lor.lhs.false.3 ], [ %add547.3, %if.end702.1.3 ], !dbg !90
  fence syncscope("warp") release, !dbg !256
  tail call void @llvm.mxc.barrier.warp(), !dbg !259
  fence syncscope("warp") acquire, !dbg !260
  %output_acc.sroa.0.0.vec.extract1627 = extractelement <4 x float> %output_acc.sroa.0.2.3, i64 0, !dbg !261
  %div = fdiv contract float %output_acc.sroa.0.0.vec.extract1627, %denominator.sroa.0.2.3, !dbg !262
  %output_acc.sroa.0.4.vec.extract1636 = extractelement <4 x float> %output_acc.sroa.0.2.3, i64 1, !dbg !261
  %div.1 = fdiv contract float %output_acc.sroa.0.4.vec.extract1636, %denominator.sroa.0.2.3, !dbg !262
  %output_acc.sroa.0.8.vec.extract1645 = extractelement <4 x float> %output_acc.sroa.0.2.3, i64 2, !dbg !261
  %div.2 = fdiv contract float %output_acc.sroa.0.8.vec.extract1645, %denominator.sroa.0.2.3, !dbg !262
  %output_acc.sroa.0.12.vec.extract1654 = extractelement <4 x float> %output_acc.sroa.0.2.3, i64 3, !dbg !261
  %div.3 = fdiv contract float %output_acc.sroa.0.12.vec.extract1654, %denominator.sroa.0.2.3, !dbg !262
  %output_acc.sroa.30.16.vec.extract1665 = extractelement <4 x float> %output_acc.sroa.30.2.3, i64 0, !dbg !261
  %div.4 = fdiv contract float %output_acc.sroa.30.16.vec.extract1665, %denominator.sroa.0.2.3, !dbg !262
  %output_acc.sroa.30.20.vec.extract1674 = extractelement <4 x float> %output_acc.sroa.30.2.3, i64 1, !dbg !261
  %div.5 = fdiv contract float %output_acc.sroa.30.20.vec.extract1674, %denominator.sroa.0.2.3, !dbg !262
  %output_acc.sroa.30.24.vec.extract1683 = extractelement <4 x float> %output_acc.sroa.30.2.3, i64 2, !dbg !261
  %div.6 = fdiv contract float %output_acc.sroa.30.24.vec.extract1683, %denominator.sroa.0.2.3, !dbg !262
  %output_acc.sroa.30.28.vec.extract1692 = extractelement <4 x float> %output_acc.sroa.30.2.3, i64 3, !dbg !261
  %div.7 = fdiv contract float %output_acc.sroa.30.28.vec.extract1692, %denominator.sroa.0.2.3, !dbg !262
  %output_acc.sroa.58.32.vec.extract1703 = extractelement <4 x float> %output_acc.sroa.58.2.3, i64 0, !dbg !261
  %div.8 = fdiv contract float %output_acc.sroa.58.32.vec.extract1703, %denominator.sroa.0.2.3, !dbg !262
  %output_acc.sroa.58.36.vec.extract1712 = extractelement <4 x float> %output_acc.sroa.58.2.3, i64 1, !dbg !261
  %div.9 = fdiv contract float %output_acc.sroa.58.36.vec.extract1712, %denominator.sroa.0.2.3, !dbg !262
  %output_acc.sroa.58.40.vec.extract1721 = extractelement <4 x float> %output_acc.sroa.58.2.3, i64 2, !dbg !261
  %div.10 = fdiv contract float %output_acc.sroa.58.40.vec.extract1721, %denominator.sroa.0.2.3, !dbg !262
  %output_acc.sroa.58.44.vec.extract1730 = extractelement <4 x float> %output_acc.sroa.58.2.3, i64 3, !dbg !261
  %div.11 = fdiv contract float %output_acc.sroa.58.44.vec.extract1730, %denominator.sroa.0.2.3, !dbg !262
  %output_acc.sroa.86.48.vec.extract1741 = extractelement <4 x float> %output_acc.sroa.86.2.3, i64 0, !dbg !261
  %div.12 = fdiv contract float %output_acc.sroa.86.48.vec.extract1741, %denominator.sroa.0.2.3, !dbg !262
  %output_acc.sroa.86.52.vec.extract1750 = extractelement <4 x float> %output_acc.sroa.86.2.3, i64 1, !dbg !261
  %div.13 = fdiv contract float %output_acc.sroa.86.52.vec.extract1750, %denominator.sroa.0.2.3, !dbg !262
  %output_acc.sroa.86.56.vec.extract1759 = extractelement <4 x float> %output_acc.sroa.86.2.3, i64 2, !dbg !261
  %div.14 = fdiv contract float %output_acc.sroa.86.56.vec.extract1759, %denominator.sroa.0.2.3, !dbg !262
  %output_acc.sroa.86.60.vec.extract1768 = extractelement <4 x float> %output_acc.sroa.86.2.3, i64 3, !dbg !261
  %div.15 = fdiv contract float %output_acc.sroa.86.60.vec.extract1768, %denominator.sroa.0.2.3, !dbg !262
  %and852 = and i32 %2, 7
  %569 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !267
  %570 = fptrunc float %div to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %569), !dbg !263, !noalias !267
  %571 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !267
  %572 = fptrunc float %div.1 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %571), !dbg !272, !noalias !267
  %573 = bitcast half %570 to i16, !dbg !274
  %574 = bitcast half %572 to i16, !dbg !277
  %575 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !278, !noalias !282
  %576 = fptrunc float %div.2 to half, !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %575), !dbg !278, !noalias !282
  %577 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !287
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !287, !noalias !282
  %578 = fptrunc float %div.3 to half, !dbg !287
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %577), !dbg !287, !noalias !282
  %579 = bitcast half %576 to i16, !dbg !289
  %580 = bitcast half %578 to i16, !dbg !291
  %__2.sroa.6.0.insert.ext = zext i16 %580 to i64, !dbg !292
  %__2.sroa.6.0.insert.shift = shl nuw i64 %__2.sroa.6.0.insert.ext, 48, !dbg !292
  %__2.sroa.5.0.insert.ext = zext i16 %579 to i64, !dbg !292
  %__2.sroa.5.0.insert.shift = shl nuw nsw i64 %__2.sroa.5.0.insert.ext, 32, !dbg !292
  %__2.sroa.5.0.insert.insert = or disjoint i64 %__2.sroa.6.0.insert.shift, %__2.sroa.5.0.insert.shift, !dbg !292
  %__2.sroa.4.0.insert.ext = zext i16 %574 to i64, !dbg !292
  %__2.sroa.4.0.insert.shift = shl nuw nsw i64 %__2.sroa.4.0.insert.ext, 16, !dbg !292
  %__2.sroa.4.0.insert.insert = or disjoint i64 %__2.sroa.5.0.insert.insert, %__2.sroa.4.0.insert.shift, !dbg !292
  %__2.sroa.0.0.insert.ext = zext i16 %573 to i64, !dbg !292
  %__2.sroa.0.0.insert.insert = or disjoint i64 %__2.sroa.4.0.insert.insert, %__2.sroa.0.0.insert.ext, !dbg !292
  %xor853 = xor i32 %shr71, %and852, !dbg !293
  %mul854 = shl nuw nsw i32 %xor853, 3, !dbg !294
  %add855 = add nuw nsw i32 %mul854, %mul53, !dbg !295
  %add860 = or disjoint i32 %add855, %mul81, !dbg !296
  %add.ptr862 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add860, !dbg !297
  store i64 %__2.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr862, align 8, !dbg !298
  %581 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !267
  %582 = fptrunc float %div.4 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %581), !dbg !263, !noalias !267
  %583 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !267
  %584 = fptrunc float %div.5 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %583), !dbg !272, !noalias !267
  %585 = bitcast half %582 to i16, !dbg !274
  %586 = bitcast half %584 to i16, !dbg !277
  %587 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !278, !noalias !282
  %588 = fptrunc float %div.6 to half, !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %587), !dbg !278, !noalias !282
  %589 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !287
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !287, !noalias !282
  %590 = fptrunc float %div.7 to half, !dbg !287
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %589), !dbg !287, !noalias !282
  %591 = bitcast half %588 to i16, !dbg !289
  %592 = bitcast half %590 to i16, !dbg !291
  %__2.sroa.6.0.insert.ext.1 = zext i16 %592 to i64, !dbg !292
  %__2.sroa.6.0.insert.shift.1 = shl nuw i64 %__2.sroa.6.0.insert.ext.1, 48, !dbg !292
  %__2.sroa.5.0.insert.ext.1 = zext i16 %591 to i64, !dbg !292
  %__2.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.1, 32, !dbg !292
  %__2.sroa.5.0.insert.insert.1 = or disjoint i64 %__2.sroa.6.0.insert.shift.1, %__2.sroa.5.0.insert.shift.1, !dbg !292
  %__2.sroa.4.0.insert.ext.1 = zext i16 %586 to i64, !dbg !292
  %__2.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.1, 16, !dbg !292
  %__2.sroa.4.0.insert.insert.1 = or disjoint i64 %__2.sroa.5.0.insert.insert.1, %__2.sroa.4.0.insert.shift.1, !dbg !292
  %__2.sroa.0.0.insert.ext.1 = zext i16 %585 to i64, !dbg !292
  %__2.sroa.0.0.insert.insert.1 = or disjoint i64 %__2.sroa.4.0.insert.insert.1, %__2.sroa.0.0.insert.ext.1, !dbg !292
  %add850.1 = add nuw nsw i32 %shr71, 2, !dbg !299
  %xor853.1 = xor i32 %add850.1, %and852, !dbg !293
  %mul854.1 = shl nuw nsw i32 %xor853.1, 3, !dbg !294
  %add855.1 = add nuw nsw i32 %mul854.1, %mul53, !dbg !295
  %add860.1 = or disjoint i32 %add855.1, %mul81, !dbg !296
  %add.ptr862.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add860.1, !dbg !297
  store i64 %__2.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr862.1, align 8, !dbg !298
  %593 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !267
  %594 = fptrunc float %div.8 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %593), !dbg !263, !noalias !267
  %595 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !267
  %596 = fptrunc float %div.9 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %595), !dbg !272, !noalias !267
  %597 = bitcast half %594 to i16, !dbg !274
  %598 = bitcast half %596 to i16, !dbg !277
  %599 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !278, !noalias !282
  %600 = fptrunc float %div.10 to half, !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %599), !dbg !278, !noalias !282
  %601 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !287
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !287, !noalias !282
  %602 = fptrunc float %div.11 to half, !dbg !287
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %601), !dbg !287, !noalias !282
  %603 = bitcast half %600 to i16, !dbg !289
  %604 = bitcast half %602 to i16, !dbg !291
  %__2.sroa.6.0.insert.ext.2 = zext i16 %604 to i64, !dbg !292
  %__2.sroa.6.0.insert.shift.2 = shl nuw i64 %__2.sroa.6.0.insert.ext.2, 48, !dbg !292
  %__2.sroa.5.0.insert.ext.2 = zext i16 %603 to i64, !dbg !292
  %__2.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.2, 32, !dbg !292
  %__2.sroa.5.0.insert.insert.2 = or disjoint i64 %__2.sroa.6.0.insert.shift.2, %__2.sroa.5.0.insert.shift.2, !dbg !292
  %__2.sroa.4.0.insert.ext.2 = zext i16 %598 to i64, !dbg !292
  %__2.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.2, 16, !dbg !292
  %__2.sroa.4.0.insert.insert.2 = or disjoint i64 %__2.sroa.5.0.insert.insert.2, %__2.sroa.4.0.insert.shift.2, !dbg !292
  %__2.sroa.0.0.insert.ext.2 = zext i16 %597 to i64, !dbg !292
  %__2.sroa.0.0.insert.insert.2 = or disjoint i64 %__2.sroa.4.0.insert.insert.2, %__2.sroa.0.0.insert.ext.2, !dbg !292
  %add850.2 = add nuw nsw i32 %shr71, 4, !dbg !299
  %xor853.2 = xor i32 %add850.2, %and852, !dbg !293
  %mul854.2 = shl nuw nsw i32 %xor853.2, 3, !dbg !294
  %add855.2 = add nuw nsw i32 %mul854.2, %mul53, !dbg !295
  %add860.2 = or disjoint i32 %add855.2, %mul81, !dbg !296
  %add.ptr862.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add860.2, !dbg !297
  store i64 %__2.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr862.2, align 8, !dbg !298
  %605 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !267
  %606 = fptrunc float %div.12 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %605), !dbg !263, !noalias !267
  %607 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !267
  %608 = fptrunc float %div.13 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %607), !dbg !272, !noalias !267
  %609 = bitcast half %606 to i16, !dbg !274
  %610 = bitcast half %608 to i16, !dbg !277
  %611 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !278, !noalias !282
  %612 = fptrunc float %div.14 to half, !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %611), !dbg !278, !noalias !282
  %613 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !287
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !287, !noalias !282
  %614 = fptrunc float %div.15 to half, !dbg !287
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %613), !dbg !287, !noalias !282
  %615 = bitcast half %612 to i16, !dbg !289
  %616 = bitcast half %614 to i16, !dbg !291
  %__2.sroa.6.0.insert.ext.3 = zext i16 %616 to i64, !dbg !292
  %__2.sroa.6.0.insert.shift.3 = shl nuw i64 %__2.sroa.6.0.insert.ext.3, 48, !dbg !292
  %__2.sroa.5.0.insert.ext.3 = zext i16 %615 to i64, !dbg !292
  %__2.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.3, 32, !dbg !292
  %__2.sroa.5.0.insert.insert.3 = or disjoint i64 %__2.sroa.6.0.insert.shift.3, %__2.sroa.5.0.insert.shift.3, !dbg !292
  %__2.sroa.4.0.insert.ext.3 = zext i16 %610 to i64, !dbg !292
  %__2.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.3, 16, !dbg !292
  %__2.sroa.4.0.insert.insert.3 = or disjoint i64 %__2.sroa.5.0.insert.insert.3, %__2.sroa.4.0.insert.shift.3, !dbg !292
  %__2.sroa.0.0.insert.ext.3 = zext i16 %609 to i64, !dbg !292
  %__2.sroa.0.0.insert.insert.3 = or disjoint i64 %__2.sroa.4.0.insert.insert.3, %__2.sroa.0.0.insert.ext.3, !dbg !292
  %add850.3 = add nuw nsw i32 %shr71, 6, !dbg !299
  %xor853.3 = xor i32 %add850.3, %and852, !dbg !293
  %mul854.3 = shl nuw nsw i32 %xor853.3, 3, !dbg !294
  %add855.3 = add nuw nsw i32 %mul854.3, %mul53, !dbg !295
  %add860.3 = or disjoint i32 %add855.3, %mul81, !dbg !296
  %add.ptr862.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add860.3, !dbg !297
  store i64 %__2.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr862.3, align 8, !dbg !298
  fence syncscope("warp") release, !dbg !300
  tail call void @llvm.mxc.barrier.warp(), !dbg !303
  fence syncscope("warp") acquire, !dbg !304
  %xor8791044 = and i32 %mul11, 56
  %call877.masked = and i32 %2, 1016
  %mul880 = xor i32 %xor8791044, %call877.masked
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul15, !dbg !305
  %invariant.gep1193 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul880, !dbg !305
  %add.ptr895 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !306
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr895, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep1193, i64 16, i1 false), !dbg !307, !tbaa.struct !50, !call_argsrelate !308
  %gep1194.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1193, i32 1024, !dbg !309
  %add.ptr895.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %7, !dbg !306
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr895.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep1194.1, i64 16, i1 false), !dbg !307, !tbaa.struct !50, !call_argsrelate !308
  ret void, !dbg !310
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v038_codex_power_s8_pair_blocks_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v038_codex_power_s8_pair_blocks_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 28, column: 3, scope: !40)
!44 = !DILocation(line: 29, column: 347, scope: !40)
!45 = !DILocation(line: 29, column: 92, scope: !40)
!46 = !DILocation(line: 29, column: 170, scope: !40)
!47 = !DILocation(line: 29, column: 255, scope: !40)
!48 = !DILocation(line: 29, column: 40, scope: !40)
!49 = !DILocation(line: 29, column: 333, scope: !40)
!50 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!51 = !{i32 -1, i32 3, i32 -1, i32 -1}
!52 = !DILocation(line: 29, column: 425, scope: !40)
!53 = !DILocation(line: 29, column: 56, scope: !40)
!54 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !57)
!55 = distinct !DISubprogram(name: "__barrier_warp", scope: !56, file: !56, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!56 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!57 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !59)
!58 = distinct !DISubprogram(name: "__syncwarp", scope: !56, file: !56, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!59 = distinct !DILocation(line: 31, column: 3, scope: !40)
!60 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !57)
!61 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !57)
!62 = !DILocation(line: 33, column: 172, scope: !40)
!63 = !DILocation(line: 33, column: 236, scope: !40)
!64 = !DILocation(line: 33, column: 243, scope: !40)
!65 = !DILocation(line: 33, column: 313, scope: !40)
!66 = !DILocation(line: 33, column: 75, scope: !40)
!67 = !DILocation(line: 33, column: 38, scope: !40)
!68 = !DILocation(line: 42, column: 3, scope: !40)
!69 = !DILocation(line: 45, column: 30, scope: !40)
!70 = !DILocation(line: 45, column: 128, scope: !40)
!71 = !DILocation(line: 45, column: 118, scope: !40)
!72 = !DILocation(line: 47, column: 13, scope: !40)
!73 = !DILocation(line: 47, column: 33, scope: !40)
!74 = !DILocation(line: 47, column: 83, scope: !40)
!75 = !DILocation(line: 47, column: 103, scope: !40)
!76 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !77)
!77 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !78)
!78 = distinct !DILocation(line: 48, column: 7, scope: !40)
!79 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !77)
!80 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !77)
!81 = !DILocation(line: 51, column: 42, scope: !40)
!82 = !DILocation(line: 53, column: 11, scope: !40)
!83 = !DILocation(line: 56, column: 88, scope: !40)
!84 = !DILocation(line: 56, column: 95, scope: !40)
!85 = !DILocation(line: 70, column: 373, scope: !40)
!86 = !DILocation(line: 50, column: 42, scope: !40)
!87 = !DILocation(line: 57, column: 37, scope: !40)
!88 = !DILocation(line: 57, column: 23, scope: !40)
!89 = !DILocation(line: 58, column: 13, scope: !40)
!90 = !DILocation(line: 0, scope: !40)
!91 = !DILocation(line: 61, column: 373, scope: !40)
!92 = !DILocation(line: 51, column: 16, scope: !40)
!93 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !94)
!94 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !95)
!95 = distinct !DILocation(line: 74, column: 7, scope: !40)
!96 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !94)
!97 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !94)
!98 = !DILocation(line: 83, column: 34, scope: !40)
!99 = !DILocation(line: 85, column: 43, scope: !40)
!100 = !DILocation(line: 94, column: 47, scope: !40)
!101 = !DILocation(line: 351, column: 10, scope: !102, inlinedAt: !104)
!102 = distinct !DISubprogram(name: "max", scope: !103, file: !103, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!103 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!104 = distinct !DILocation(line: 105, column: 24, scope: !40)
!105 = !DILocation(line: 1018, column: 9, scope: !106, inlinedAt: !107)
!106 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !56, file: !56, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!107 = distinct !DILocation(line: 338, column: 10, scope: !108, inlinedAt: !110)
!108 = distinct !DISubprogram(name: "shfl_xor_sync<float>", scope: !109, file: !109, line: 337, type: !7, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!109 = !DIFile(filename: "src/tl_templates/maca/common.h", directory: "/root/tilelang-metax")
!110 = distinct !DILocation(line: 95, column: 24, scope: !111, inlinedAt: !113)
!111 = distinct !DISubprogram(name: "run<float>", scope: !112, file: !112, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!112 = !DIFile(filename: "src/tl_templates/maca/reduce.h", directory: "/root/tilelang-metax")
!113 = distinct !DILocation(line: 107, column: 22, scope: !40)
!114 = !DILocation(line: 171, column: 37, scope: !115, inlinedAt: !116)
!115 = distinct !DISubprogram(name: "__lane_id", scope: !56, file: !56, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!116 = distinct !DILocation(line: 990, column: 14, scope: !117, inlinedAt: !118)
!117 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !56, file: !56, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!118 = distinct !DILocation(line: 1019, column: 11, scope: !106, inlinedAt: !107)
!119 = !DILocation(line: 171, column: 10, scope: !115, inlinedAt: !116)
!120 = !DILocation(line: 991, column: 20, scope: !117, inlinedAt: !118)
!121 = !DILocation(line: 992, column: 36, scope: !117, inlinedAt: !118)
!122 = !DILocation(line: 992, column: 17, scope: !117, inlinedAt: !118)
!123 = !DILocation(line: 992, column: 11, scope: !117, inlinedAt: !118)
!124 = !DILocation(line: 993, column: 43, scope: !117, inlinedAt: !118)
!125 = !DILocation(line: 993, column: 10, scope: !117, inlinedAt: !118)
!126 = !DILocation(line: 1020, column: 14, scope: !106, inlinedAt: !107)
!127 = !DILocation(line: 306, column: 10, scope: !128, inlinedAt: !129)
!128 = distinct !DISubprogram(name: "fmaxf", scope: !103, file: !103, line: 305, type: !7, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!129 = distinct !DILocation(line: 633, column: 10, scope: !130, inlinedAt: !132)
!130 = distinct !DISubprogram(name: "fast_max<float>", scope: !131, file: !131, line: 632, type: !7, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!131 = !DIFile(filename: "/opt/maca/include/mctlass/fast_math.h", directory: "")
!132 = distinct !DILocation(line: 31, column: 12, scope: !133, inlinedAt: !134)
!133 = distinct !DISubprogram(name: "operator()<float>", scope: !112, file: !112, line: 30, type: !7, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!134 = distinct !DILocation(line: 95, column: 11, scope: !111, inlinedAt: !113)
!135 = !DILocation(line: 1018, column: 9, scope: !106, inlinedAt: !136)
!136 = distinct !DILocation(line: 338, column: 10, scope: !108, inlinedAt: !137)
!137 = distinct !DILocation(line: 95, column: 24, scope: !138, inlinedAt: !139)
!138 = distinct !DISubprogram(name: "run<float>", scope: !112, file: !112, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!139 = distinct !DILocation(line: 100, column: 14, scope: !111, inlinedAt: !113)
!140 = !DILocation(line: 171, column: 37, scope: !115, inlinedAt: !141)
!141 = distinct !DILocation(line: 990, column: 14, scope: !117, inlinedAt: !142)
!142 = distinct !DILocation(line: 1019, column: 11, scope: !106, inlinedAt: !136)
!143 = !DILocation(line: 171, column: 10, scope: !115, inlinedAt: !141)
!144 = !DILocation(line: 991, column: 20, scope: !117, inlinedAt: !142)
!145 = !DILocation(line: 992, column: 36, scope: !117, inlinedAt: !142)
!146 = !DILocation(line: 992, column: 17, scope: !117, inlinedAt: !142)
!147 = !DILocation(line: 992, column: 11, scope: !117, inlinedAt: !142)
!148 = !DILocation(line: 993, column: 43, scope: !117, inlinedAt: !142)
!149 = !DILocation(line: 993, column: 10, scope: !117, inlinedAt: !142)
!150 = !DILocation(line: 1020, column: 14, scope: !106, inlinedAt: !136)
!151 = !DILocation(line: 306, column: 10, scope: !128, inlinedAt: !152)
!152 = distinct !DILocation(line: 633, column: 10, scope: !130, inlinedAt: !153)
!153 = distinct !DILocation(line: 31, column: 12, scope: !133, inlinedAt: !154)
!154 = distinct !DILocation(line: 95, column: 11, scope: !138, inlinedAt: !139)
!155 = !DILocation(line: 108, column: 54, scope: !40)
!156 = !DILocation(line: 108, column: 71, scope: !40)
!157 = !DILocation(line: 108, column: 37, scope: !40)
!158 = !DILocation(line: 108, column: 11, scope: !40)
!159 = !DILocation(line: 116, column: 44, scope: !40)
!160 = !DILocation(line: 116, column: 61, scope: !40)
!161 = !DILocation(line: 116, column: 102, scope: !40)
!162 = !DILocation(line: 285, column: 49, scope: !163, inlinedAt: !164)
!163 = distinct !DISubprogram(name: "exp2f", scope: !103, file: !103, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!164 = distinct !DILocation(line: 116, column: 23, scope: !40)
!165 = !DILocation(line: 121, column: 38, scope: !40)
!166 = !DILocation(line: 1018, column: 9, scope: !106, inlinedAt: !167)
!167 = distinct !DILocation(line: 338, column: 10, scope: !108, inlinedAt: !168)
!168 = distinct !DILocation(line: 95, column: 24, scope: !169, inlinedAt: !170)
!169 = distinct !DISubprogram(name: "run<float>", scope: !112, file: !112, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!170 = distinct !DILocation(line: 123, column: 22, scope: !40)
!171 = !DILocation(line: 171, column: 37, scope: !115, inlinedAt: !172)
!172 = distinct !DILocation(line: 990, column: 14, scope: !117, inlinedAt: !173)
!173 = distinct !DILocation(line: 1019, column: 11, scope: !106, inlinedAt: !167)
!174 = !DILocation(line: 171, column: 10, scope: !115, inlinedAt: !172)
!175 = !DILocation(line: 991, column: 20, scope: !117, inlinedAt: !173)
!176 = !DILocation(line: 992, column: 36, scope: !117, inlinedAt: !173)
!177 = !DILocation(line: 992, column: 17, scope: !117, inlinedAt: !173)
!178 = !DILocation(line: 992, column: 11, scope: !117, inlinedAt: !173)
!179 = !DILocation(line: 993, column: 43, scope: !117, inlinedAt: !173)
!180 = !DILocation(line: 993, column: 10, scope: !117, inlinedAt: !173)
!181 = !DILocation(line: 1020, column: 14, scope: !106, inlinedAt: !167)
!182 = !DILocation(line: 25, column: 14, scope: !183, inlinedAt: !184)
!183 = distinct !DISubprogram(name: "operator()<float>", scope: !112, file: !112, line: 24, type: !7, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!184 = distinct !DILocation(line: 95, column: 11, scope: !169, inlinedAt: !170)
!185 = !DILocation(line: 1018, column: 9, scope: !106, inlinedAt: !186)
!186 = distinct !DILocation(line: 338, column: 10, scope: !108, inlinedAt: !187)
!187 = distinct !DILocation(line: 95, column: 24, scope: !188, inlinedAt: !189)
!188 = distinct !DISubprogram(name: "run<float>", scope: !112, file: !112, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!189 = distinct !DILocation(line: 100, column: 14, scope: !169, inlinedAt: !170)
!190 = !DILocation(line: 171, column: 37, scope: !115, inlinedAt: !191)
!191 = distinct !DILocation(line: 990, column: 14, scope: !117, inlinedAt: !192)
!192 = distinct !DILocation(line: 1019, column: 11, scope: !106, inlinedAt: !186)
!193 = !DILocation(line: 171, column: 10, scope: !115, inlinedAt: !191)
!194 = !DILocation(line: 991, column: 20, scope: !117, inlinedAt: !192)
!195 = !DILocation(line: 992, column: 36, scope: !117, inlinedAt: !192)
!196 = !DILocation(line: 992, column: 17, scope: !117, inlinedAt: !192)
!197 = !DILocation(line: 992, column: 11, scope: !117, inlinedAt: !192)
!198 = !DILocation(line: 993, column: 43, scope: !117, inlinedAt: !192)
!199 = !DILocation(line: 993, column: 10, scope: !117, inlinedAt: !192)
!200 = !DILocation(line: 1020, column: 14, scope: !106, inlinedAt: !186)
!201 = !DILocation(line: 124, column: 22, scope: !40)
!202 = !DILocation(line: 124, column: 11, scope: !40)
!203 = !DILocation(line: 1007, column: 10, scope: !204, inlinedAt: !206)
!204 = distinct !DISubprogram(name: "__float2half_rn", scope: !205, file: !205, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!205 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!206 = distinct !DILocation(line: 1077, column: 18, scope: !207, inlinedAt: !208)
!207 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !205, file: !205, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!208 = distinct !DILocation(line: 1295, column: 23, scope: !209, inlinedAt: !210)
!209 = distinct !DISubprogram(name: "__float22half2_rn", scope: !205, file: !205, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!210 = distinct !DILocation(line: 132, column: 31, scope: !40)
!211 = !{!212, !214}
!212 = distinct !{!212, !213, !"_ZL17__floats2half2_rnff: %agg.result"}
!213 = distinct !{!213, !"_ZL17__floats2half2_rnff"}
!214 = distinct !{!214, !215, !"_ZL17__float22half2_rn6float2: %agg.result"}
!215 = distinct !{!215, !"_ZL17__float22half2_rn6float2"}
!216 = !DILocation(line: 1007, column: 10, scope: !204, inlinedAt: !217)
!217 = distinct !DILocation(line: 1077, column: 38, scope: !207, inlinedAt: !208)
!218 = !DILocation(line: 1007, column: 10, scope: !204, inlinedAt: !219)
!219 = distinct !DILocation(line: 1077, column: 18, scope: !207, inlinedAt: !220)
!220 = distinct !DILocation(line: 1295, column: 23, scope: !209, inlinedAt: !221)
!221 = distinct !DILocation(line: 133, column: 31, scope: !40)
!222 = !{!223, !225}
!223 = distinct !{!223, !224, !"_ZL17__floats2half2_rnff: %agg.result"}
!224 = distinct !{!224, !"_ZL17__floats2half2_rnff"}
!225 = distinct !{!225, !226, !"_ZL17__float22half2_rn6float2: %agg.result"}
!226 = distinct !{!226, !"_ZL17__float22half2_rn6float2"}
!227 = !DILocation(line: 1007, column: 10, scope: !204, inlinedAt: !228)
!228 = distinct !DILocation(line: 1077, column: 38, scope: !207, inlinedAt: !220)
!229 = !DILocation(line: 134, column: 44, scope: !40)
!230 = !DILocation(line: 25, column: 14, scope: !183, inlinedAt: !231)
!231 = distinct !DILocation(line: 95, column: 11, scope: !188, inlinedAt: !189)
!232 = !DILocation(line: 127, column: 40, scope: !40)
!233 = !DILocation(line: 136, column: 11, scope: !40)
!234 = !DILocation(line: 139, column: 46, scope: !40)
!235 = !DILocation(line: 139, column: 27, scope: !40)
!236 = !DILocation(line: 143, column: 7, scope: !40)
!237 = !DILocation(line: 144, column: 42, scope: !40)
!238 = !DILocation(line: 149, column: 85, scope: !40)
!239 = !DILocation(line: 149, column: 47, scope: !40)
!240 = !DILocation(line: 149, column: 92, scope: !40)
!241 = !DILocation(line: 149, column: 99, scope: !40)
!242 = !DILocation(line: 150, column: 39, scope: !40)
!243 = !DILocation(line: 150, column: 25, scope: !40)
!244 = !DILocation(line: 151, column: 13, scope: !40)
!245 = !DILocation(line: 169, column: 219, scope: !40)
!246 = !DILocation(line: 167, column: 40, scope: !40)
!247 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !248)
!248 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !249)
!249 = distinct !DILocation(line: 172, column: 7, scope: !40)
!250 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !248)
!251 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !248)
!252 = !DILocation(line: 176, column: 40, scope: !40)
!253 = !DILocation(line: 180, column: 43, scope: !40)
!254 = !DILocation(line: 186, column: 5, scope: !40)
!255 = !DILocation(line: 139, column: 30, scope: !40)
!256 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !257)
!257 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !258)
!258 = distinct !DILocation(line: 188, column: 3, scope: !40)
!259 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !257)
!260 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !257)
!261 = !DILocation(line: 191, column: 25, scope: !40)
!262 = !DILocation(line: 191, column: 42, scope: !40)
!263 = !DILocation(line: 1007, column: 10, scope: !204, inlinedAt: !264)
!264 = distinct !DILocation(line: 1077, column: 18, scope: !207, inlinedAt: !265)
!265 = distinct !DILocation(line: 1295, column: 23, scope: !209, inlinedAt: !266)
!266 = distinct !DILocation(line: 197, column: 27, scope: !40)
!267 = !{!268, !270}
!268 = distinct !{!268, !269, !"_ZL17__floats2half2_rnff: %agg.result"}
!269 = distinct !{!269, !"_ZL17__floats2half2_rnff"}
!270 = distinct !{!270, !271, !"_ZL17__float22half2_rn6float2: %agg.result"}
!271 = distinct !{!271, !"_ZL17__float22half2_rn6float2"}
!272 = !DILocation(line: 1007, column: 10, scope: !204, inlinedAt: !273)
!273 = distinct !DILocation(line: 1077, column: 38, scope: !207, inlinedAt: !265)
!274 = !DILocation(line: 596, column: 67, scope: !275, inlinedAt: !276)
!275 = distinct !DISubprogram(name: "__half2", scope: !205, file: !205, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!276 = distinct !DILocation(line: 1077, column: 10, scope: !207, inlinedAt: !265)
!277 = !DILocation(line: 596, column: 73, scope: !275, inlinedAt: !276)
!278 = !DILocation(line: 1007, column: 10, scope: !204, inlinedAt: !279)
!279 = distinct !DILocation(line: 1077, column: 18, scope: !207, inlinedAt: !280)
!280 = distinct !DILocation(line: 1295, column: 23, scope: !209, inlinedAt: !281)
!281 = distinct !DILocation(line: 198, column: 27, scope: !40)
!282 = !{!283, !285}
!283 = distinct !{!283, !284, !"_ZL17__floats2half2_rnff: %agg.result"}
!284 = distinct !{!284, !"_ZL17__floats2half2_rnff"}
!285 = distinct !{!285, !286, !"_ZL17__float22half2_rn6float2: %agg.result"}
!286 = distinct !{!286, !"_ZL17__float22half2_rn6float2"}
!287 = !DILocation(line: 1007, column: 10, scope: !204, inlinedAt: !288)
!288 = distinct !DILocation(line: 1077, column: 38, scope: !207, inlinedAt: !280)
!289 = !DILocation(line: 596, column: 67, scope: !275, inlinedAt: !290)
!290 = distinct !DILocation(line: 1077, column: 10, scope: !207, inlinedAt: !280)
!291 = !DILocation(line: 596, column: 73, scope: !275, inlinedAt: !290)
!292 = !DILocation(line: 199, column: 47, scope: !40)
!293 = !DILocation(line: 200, column: 122, scope: !40)
!294 = !DILocation(line: 200, column: 150, scope: !40)
!295 = !DILocation(line: 200, column: 77, scope: !40)
!296 = !DILocation(line: 200, column: 156, scope: !40)
!297 = !DILocation(line: 200, column: 40, scope: !40)
!298 = !DILocation(line: 200, column: 199, scope: !40)
!299 = !DILocation(line: 200, column: 93, scope: !40)
!300 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !301)
!301 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !302)
!302 = distinct !DILocation(line: 202, column: 3, scope: !40)
!303 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !301)
!304 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !301)
!305 = !DILocation(line: 204, column: 8, scope: !40)
!306 = !DILocation(line: 205, column: 22, scope: !40)
!307 = !DILocation(line: 205, column: 132, scope: !40)
!308 = !{i32 2, i32 -1, i32 -1, i32 -1}
!309 = !DILocation(line: 205, column: 169, scope: !40)
!310 = !DILocation(line: 207, column: 1, scope: !40)
