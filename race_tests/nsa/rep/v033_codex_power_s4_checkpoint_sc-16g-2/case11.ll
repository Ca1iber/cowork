; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v033_codex_power_s4_checkpoint_sc-16g-2/case11.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v033_codex_power_s4_checkpoint_sc-16g-2/codegen/case11_kernel1.device.cpp"
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
define protected metaxgpu_kernel void @native_sparse_attention_kernel(ptr addrspace(1) noalias nocapture noundef readonly %BlockIndices.coerce, ptr addrspace(4) noalias nocapture noundef readonly %K.coerce, ptr addrspace(1) noalias nocapture noundef writeonly %Output.coerce, ptr addrspace(4) noalias nocapture noundef readonly %Q.coerce, ptr addrspace(4) noalias nocapture noundef readonly %V.coerce) local_unnamed_addr #3 !dbg !40 {
entry:
  %0 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.y(), !range !29
  %mul = shl nsw i32 %0, 19
  %1 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !range !29
  %mul7 = shl nsw i32 %1, 10
  %add = add nuw nsw i32 %mul, %mul7
  %2 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !42
  %mul11 = shl nuw nsw i32 %2, 3
  %add9 = add nuw nsw i32 %add, %mul11
  %mul15 = and i32 %mul11, 8128
  %add21734 = and i32 %mul11, 32
  %shr18735 = add nuw nsw i32 %add21734, %2
  %mul23 = and i32 %shr18735, 32
  %add31736 = and i32 %mul11, 16
  %and26737 = add nuw nsw i32 %add31736, %2
  %mul33 = and i32 %and26737, 16
  %and36739 = mul nuw nsw i32 %2, 9
  %mul42 = and i32 %and36739, 8
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
  %mul112 = shl nsw i32 %0, 11
  %mul114 = shl nsw i32 %1, 2
  %add115 = add nuw nsw i32 %mul112, %mul114
  %shr127 = lshr i32 %2, 3
  %conv = zext nneg i32 %0 to i64
  %mul134 = shl nuw nsw i64 %conv, 15
  %mul143 = zext nneg i32 %mul11 to i64
  %invariant.gep826 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul143, !dbg !68
  %mul266 = and i32 %and55, 252
  %shr400 = lshr i32 %2, 4
  %23 = shl nuw nsw i32 %2, 4
  %24 = and i32 %23, 16128
  %25 = shl nuw nsw i32 %2, 2
  %26 = and i32 %25, 60
  %27 = or disjoint i32 %24, %26
  %28 = zext nneg i32 %27 to i64
  %add416 = or disjoint i64 %mul134, %28
  %mul469 = and i32 %23, 240
  %shr475 = and i32 %and55, 3
  %xor = xor i32 %shr475, %shr400
  %and490 = shl nuw nsw i32 %2, 8
  %mul491 = and i32 %and490, 768
  %mul497 = and i32 %25, 48
  %and503 = and i32 %2, 3
  %29 = xor i32 %shr400, %and503
  %30 = zext nneg i32 %add115 to i64, !dbg !68
  %arrayidx117 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %30, !dbg !69
  %31 = load i32, ptr addrspace(1) %arrayidx117, align 4, !dbg !69, !tbaa !30
  %mul118 = shl nsw i32 %31, 4, !dbg !70
  %cmp119 = icmp slt i32 %31, 0, !dbg !71
  %cmp121.not = icmp sgt i32 %mul118, %1
  %or.cond = select i1 %cmp119, i1 true, i1 %cmp121.not, !dbg !72
  br i1 %or.cond, label %if.end535, label %if.then, !dbg !72

if.then:                                          ; preds = %entry
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add128 = add nuw nsw i32 %mul118, %shr127
  %conv138 = zext nneg i32 %mul118 to i64
  %.idx = shl nuw nsw i64 %conv138, 7
  %gep = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep826, i64 %.idx, !dbg !78
  %cmp131 = icmp ult i32 %add128, 512, !dbg !79
  br i1 %cmp131, label %if.then132, label %if.end, !dbg !80

if.then132:                                       ; preds = %if.then
  %gep809 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %mul134
  %condval.sroa.7.0.add.ptr145.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep809, i64 12
  %condval.sroa.6.0.add.ptr145.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep809, i64 8
  %condval.sroa.5.0.add.ptr145.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep809, i64 4
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep809, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr145.sroa_idx, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr145.sroa_idx, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr145.sroa_idx, align 4, !dbg !81, !tbaa !30
  br label %if.end, !dbg !82

if.end:                                           ; preds = %if.then, %if.then132
  %condval.sroa.0.0 = phi i32 [ %condval.sroa.0.0.copyload, %if.then132 ], [ 0, %if.then ], !dbg !83
  %condval.sroa.5.0 = phi i32 [ %condval.sroa.5.0.copyload, %if.then132 ], [ 0, %if.then ], !dbg !83
  %condval.sroa.6.0 = phi i32 [ %condval.sroa.6.0.copyload, %if.then132 ], [ 0, %if.then ], !dbg !83
  %condval.sroa.7.0 = phi i32 [ %condval.sroa.7.0.copyload, %if.then132 ], [ 0, %if.then ], !dbg !83
  store i32 %condval.sroa.0.0, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr200.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0, ptr addrspace(3) %condval.sroa.5.0.add.ptr200.sroa_idx, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr200.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0, ptr addrspace(3) %condval.sroa.6.0.add.ptr200.sroa_idx, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr200.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0, ptr addrspace(3) %condval.sroa.7.0.add.ptr200.sroa_idx, align 4, !dbg !84, !tbaa !30
  %cmp131.1 = icmp ult i32 %add128, 504, !dbg !79
  br i1 %cmp131.1, label %if.then132.1, label %if.end.1, !dbg !80

if.then132.1:                                     ; preds = %if.end
  %add137.1 = or disjoint i64 %mul134, 512
  %gep809.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %add137.1
  %condval.sroa.7.0.add.ptr145.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep809.1, i64 12
  %condval.sroa.6.0.add.ptr145.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep809.1, i64 8
  %condval.sroa.5.0.add.ptr145.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep809.1, i64 4
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep809.1, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr145.sroa_idx.1, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr145.sroa_idx.1, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr145.sroa_idx.1, align 4, !dbg !81, !tbaa !30
  br label %if.end.1, !dbg !82

if.end.1:                                         ; preds = %if.then132.1, %if.end
  %condval.sroa.0.0.1 = phi i32 [ %condval.sroa.0.0.copyload.1, %if.then132.1 ], [ 0, %if.end ], !dbg !83
  %condval.sroa.5.0.1 = phi i32 [ %condval.sroa.5.0.copyload.1, %if.then132.1 ], [ 0, %if.end ], !dbg !83
  %condval.sroa.6.0.1 = phi i32 [ %condval.sroa.6.0.copyload.1, %if.then132.1 ], [ 0, %if.end ], !dbg !83
  %condval.sroa.7.0.1 = phi i32 [ %condval.sroa.7.0.copyload.1, %if.then132.1 ], [ 0, %if.end ], !dbg !83
  store i32 %condval.sroa.0.0.1, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr200.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr200.sroa_idx.1, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr200.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr200.sroa_idx.1, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr200.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr200.sroa_idx.1, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %32 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %33 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %16, <4 x float> %32), !dbg !91
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %34 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %18, <4 x float> %33), !dbg !91
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %35 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %22, <4 x float> %34), !dbg !91
  %add267 = add nuw nsw i32 %mul118, %mul266
  %cmp270.not = icmp sgt i32 %add267, %1, !dbg !92
  %scores.sroa.0.0.vec.extract1446 = extractelement <4 x float> %35, i64 0
  %spec.select = select i1 %cmp270.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1446, !dbg !93
  %cmp270.not.1.not = icmp slt i32 %add267, %1, !dbg !92
  %scores.sroa.0.4.vec.extract1519 = extractelement <4 x float> %35, i64 1, !dbg !93
  %condval_1.0.1 = select i1 %cmp270.not.1.not, float %scores.sroa.0.4.vec.extract1519, float 0xFFF0000000000000, !dbg !93
  %add268.2 = or disjoint i32 %add267, 2, !dbg !94
  %cmp270.not.2 = icmp sgt i32 %add268.2, %1, !dbg !92
  %scores.sroa.0.8.vec.extract1580 = extractelement <4 x float> %35, i64 2, !dbg !93
  %condval_1.0.2 = select i1 %cmp270.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1580, !dbg !93
  %add268.3 = or disjoint i32 %add267, 3, !dbg !94
  %cmp270.not.3 = icmp sgt i32 %add268.3, %1, !dbg !92
  %scores.sroa.0.12.vec.extract1641 = extractelement <4 x float> %35, i64 3, !dbg !93
  %condval_1.0.3 = select i1 %cmp270.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1641, !dbg !93
  %36 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !95
  %37 = tail call contract noundef float @llvm.maxnum.f32(float %36, float %condval_1.0.1), !dbg !95
  %38 = tail call contract noundef float @llvm.maxnum.f32(float %37, float %condval_1.0.2), !dbg !95
  %39 = tail call contract noundef float @llvm.maxnum.f32(float %38, float %condval_1.0.3), !dbg !95
  %40 = bitcast float %39 to i32, !dbg !99
  %41 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !108
  %42 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %41) #11, !dbg !113
  %xor.i.i.i = xor i32 %42, 32, !dbg !114
  %43 = and i32 %42, -64, !dbg !115
  %and.i.i.i = add nsw i32 %43, 64, !dbg !115
  %cmp.not.i.i.i = icmp slt i32 %xor.i.i.i, %and.i.i.i, !dbg !116
  %cond.i.i.i = select i1 %cmp.not.i.i.i, i32 %xor.i.i.i, i32 %42, !dbg !117
  %shl.i.i.i = shl i32 %cond.i.i.i, 2, !dbg !118
  %44 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i, i32 %40), !dbg !119
  %45 = bitcast i32 %44 to float, !dbg !120
  %46 = tail call contract noundef float @llvm.maxnum.f32(float %39, float %45), !dbg !121
  %47 = bitcast float %46 to i32, !dbg !129
  %48 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !134
  %49 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %48) #11, !dbg !137
  %xor.i.i.i.i = xor i32 %49, 16, !dbg !138
  %50 = and i32 %49, -64, !dbg !139
  %and.i.i.i.i = add nsw i32 %50, 64, !dbg !139
  %cmp.not.i.i.i.i = icmp slt i32 %xor.i.i.i.i, %and.i.i.i.i, !dbg !140
  %cond.i.i.i.i = select i1 %cmp.not.i.i.i.i, i32 %xor.i.i.i.i, i32 %49, !dbg !141
  %shl.i.i.i.i = shl i32 %cond.i.i.i.i, 2, !dbg !142
  %51 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i, i32 %47), !dbg !143
  %52 = bitcast i32 %51 to float, !dbg !144
  %53 = tail call contract noundef float @llvm.maxnum.f32(float %46, float %52), !dbg !145
  %sub = fadd contract float %53, 0x7FF0000000000000, !dbg !149
  %mul306 = fmul contract float %sub, 0x3FC7154760000000, !dbg !150
  %cmp307 = fcmp contract ogt float %mul306, 7.000000e+00, !dbg !151
  %sub311 = fsub contract float 0xFFF0000000000000, %53
  %mul312 = fmul contract float %sub311, 0x3FC7154760000000
  %cmp.i.i = fcmp contract olt float %mul312, -1.260000e+02
  %cond.i.i = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00
  %add.i.i = fadd contract float %mul312, %cond.i.i
  %54 = tail call contract float @llvm.exp2.f32(float %add.i.i)
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i = fmul contract float %cond2.i.i, %54
  %normalizer.sroa.0.1 = select i1 %cmp307, float %53, float 0xFFF0000000000000, !dbg !152
  %sub327 = fsub contract float %spec.select, %normalizer.sroa.0.1, !dbg !153
  %mul328 = fmul contract float %sub327, 0x3FC7154760000000, !dbg !154
  %add329 = fadd contract float %mul328, 8.000000e+00, !dbg !155
  %cmp.i.i760 = fcmp contract olt float %add329, -1.260000e+02, !dbg !156
  %cond.i.i761 = select contract i1 %cmp.i.i760, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i762 = fadd contract float %add329, %cond.i.i761, !dbg !156
  %55 = tail call contract float @llvm.exp2.f32(float %add.i.i762), !dbg !156
  %cond2.i.i763 = select contract i1 %cmp.i.i760, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i764 = fmul contract float %cond2.i.i763, %55, !dbg !156
  %sub327.1 = fsub contract float %condval_1.0.1, %normalizer.sroa.0.1, !dbg !153
  %mul328.1 = fmul contract float %sub327.1, 0x3FC7154760000000, !dbg !154
  %add329.1 = fadd contract float %mul328.1, 8.000000e+00, !dbg !155
  %cmp.i.i760.1 = fcmp contract olt float %add329.1, -1.260000e+02, !dbg !156
  %cond.i.i761.1 = select contract i1 %cmp.i.i760.1, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i762.1 = fadd contract float %add329.1, %cond.i.i761.1, !dbg !156
  %56 = tail call contract float @llvm.exp2.f32(float %add.i.i762.1), !dbg !156
  %cond2.i.i763.1 = select contract i1 %cmp.i.i760.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i764.1 = fmul contract float %cond2.i.i763.1, %56, !dbg !156
  %sub327.2 = fsub contract float %condval_1.0.2, %normalizer.sroa.0.1, !dbg !153
  %mul328.2 = fmul contract float %sub327.2, 0x3FC7154760000000, !dbg !154
  %add329.2 = fadd contract float %mul328.2, 8.000000e+00, !dbg !155
  %cmp.i.i760.2 = fcmp contract olt float %add329.2, -1.260000e+02, !dbg !156
  %cond.i.i761.2 = select contract i1 %cmp.i.i760.2, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i762.2 = fadd contract float %add329.2, %cond.i.i761.2, !dbg !156
  %57 = tail call contract float @llvm.exp2.f32(float %add.i.i762.2), !dbg !156
  %cond2.i.i763.2 = select contract i1 %cmp.i.i760.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i764.2 = fmul contract float %cond2.i.i763.2, %57, !dbg !156
  %sub327.3 = fsub contract float %condval_1.0.3, %normalizer.sroa.0.1, !dbg !153
  %mul328.3 = fmul contract float %sub327.3, 0x3FC7154760000000, !dbg !154
  %add329.3 = fadd contract float %mul328.3, 8.000000e+00, !dbg !155
  %cmp.i.i760.3 = fcmp contract olt float %add329.3, -1.260000e+02, !dbg !156
  %cond.i.i761.3 = select contract i1 %cmp.i.i760.3, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i762.3 = fadd contract float %add329.3, %cond.i.i761.3, !dbg !156
  %58 = tail call contract float @llvm.exp2.f32(float %add.i.i762.3), !dbg !156
  %cond2.i.i763.3 = select contract i1 %cmp.i.i760.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i764.3 = fmul contract float %cond2.i.i763.3, %58, !dbg !156
  %add344 = fadd contract float %mul.i.i764, 0.000000e+00, !dbg !159
  %add344.1 = fadd contract float %add344, %mul.i.i764.1, !dbg !159
  %add344.2 = fadd contract float %add344.1, %mul.i.i764.2, !dbg !159
  %add344.3 = fadd contract float %add344.2, %mul.i.i764.3, !dbg !159
  %rescale.sroa.0.0 = select i1 %cmp307, float %mul.i.i, float 1.000000e+00, !dbg !152
  %59 = bitcast float %add344.3 to i32, !dbg !160
  %60 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !165
  %61 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %60) #11, !dbg !168
  %xor.i.i.i765 = xor i32 %61, 32, !dbg !169
  %62 = and i32 %61, -64, !dbg !170
  %and.i.i.i766 = add nsw i32 %62, 64, !dbg !170
  %cmp.not.i.i.i767 = icmp slt i32 %xor.i.i.i765, %and.i.i.i766, !dbg !171
  %cond.i.i.i768 = select i1 %cmp.not.i.i.i767, i32 %xor.i.i.i765, i32 %61, !dbg !172
  %shl.i.i.i769 = shl i32 %cond.i.i.i768, 2, !dbg !173
  %63 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i769, i32 %59), !dbg !174
  %64 = bitcast i32 %63 to float, !dbg !175
  %add.i.i770 = fadd contract float %add344.3, %64, !dbg !176
  %65 = bitcast float %add.i.i770 to i32, !dbg !179
  %66 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !184
  %67 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %66) #11, !dbg !187
  %xor.i.i.i.i771 = xor i32 %67, 16, !dbg !188
  %68 = and i32 %67, -64, !dbg !189
  %and.i.i.i.i772 = add nsw i32 %68, 64, !dbg !189
  %cmp.not.i.i.i.i773 = icmp slt i32 %xor.i.i.i.i771, %and.i.i.i.i772, !dbg !190
  %cond.i.i.i.i774 = select i1 %cmp.not.i.i.i.i773, i32 %xor.i.i.i.i771, i32 %67, !dbg !191
  %shl.i.i.i.i775 = shl i32 %cond.i.i.i.i774, 2, !dbg !192
  %69 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i775, i32 %65), !dbg !193
  %70 = bitcast i32 %69 to float, !dbg !194
  %add.i.i.i = fadd contract float %add.i.i770, %70, !dbg !195
  %cmp353 = fcmp contract une float %rescale.sroa.0.0, 1.000000e+00, !dbg !197
  %mul357 = fmul contract float %rescale.sroa.0.0, 0.000000e+00, !dbg !198
  %denominator.sroa.0.1 = select i1 %cmp353, float %mul357, float 0.000000e+00, !dbg !198
  %add362 = fadd contract float %denominator.sroa.0.1, %add.i.i.i, !dbg !199
  %71 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !200
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !200, !noalias !208
  %72 = fptrunc float %mul.i.i764 to half, !dbg !200
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %71), !dbg !200, !noalias !208
  %73 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !213, !noalias !208
  %74 = fptrunc float %mul.i.i764.1 to half, !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %73), !dbg !213, !noalias !208
  %__1.sroa.0.0.vec.insert = insertelement <4 x half> poison, half %72, i64 0, !dbg !215
  %__1.sroa.0.2.vec.insert = insertelement <4 x half> %__1.sroa.0.0.vec.insert, half %74, i64 1, !dbg !215
  %75 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !218, !noalias !222
  %76 = fptrunc float %mul.i.i764.2 to half, !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %75), !dbg !218, !noalias !222
  %77 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !222
  %78 = fptrunc float %mul.i.i764.3 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %77), !dbg !227, !noalias !222
  %__1.sroa.0.4.vec.insert = insertelement <4 x half> %__1.sroa.0.2.vec.insert, half %76, i64 2, !dbg !229
  %__1.sroa.0.6.vec.insert = insertelement <4 x half> %__1.sroa.0.4.vec.insert, half %78, i64 3, !dbg !229
  %output_acc.sroa.0.0.vec.insert1694 = insertelement <4 x float> poison, float %mul357, i64 0, !dbg !231
  %output_acc.sroa.0.12.vec.insert1757 = shufflevector <4 x float> %output_acc.sroa.0.0.vec.insert1694, <4 x float> poison, <4 x i32> zeroinitializer, !dbg !231
  %output_acc.sroa.170.0 = select i1 %cmp353, <4 x float> %output_acc.sroa.0.12.vec.insert1757, <4 x float> zeroinitializer, !dbg !231
  %shr402 = lshr exact i32 %mul118, 2
  %add403 = add nuw nsw i32 %shr402, %shr400
  %cmp404 = icmp ult i32 %add403, 128
  br i1 %cmp404, label %if.then405, label %if.end439, !dbg !232

if.then405:                                       ; preds = %if.end.1
  %79 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !233
  %80 = getelementptr inbounds i8, ptr addrspace(4) %79, i64 %.idx, !dbg !233
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %80, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr425.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %80, i64 4, !dbg !234
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr425.sroa_idx, align 4, !dbg !234, !tbaa !30
  br label %if.end439, !dbg !235

if.end439:                                        ; preds = %if.end.1, %if.then405
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then405 ], [ 0, %if.end.1 ], !dbg !83
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then405 ], [ 0, %if.end.1 ], !dbg !83
  br i1 %cmp404, label %if.then405.1, label %if.end439.1, !dbg !232

if.then405.1:                                     ; preds = %if.end439
  %81 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !233
  %82 = getelementptr inbounds i8, ptr addrspace(4) %81, i64 %.idx, !dbg !233
  %add.ptr425.1 = getelementptr inbounds i8, ptr addrspace(4) %82, i64 128, !dbg !233
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %add.ptr425.1, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr425.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %82, i64 132, !dbg !234
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr425.sroa_idx.1, align 4, !dbg !234, !tbaa !30
  br label %if.end439.1, !dbg !235

if.end439.1:                                      ; preds = %if.then405.1, %if.end439
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then405.1 ], [ 0, %if.end439 ], !dbg !83
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then405.1 ], [ 0, %if.end439 ], !dbg !83
  br i1 %cmp404, label %if.then405.2, label %if.end439.2, !dbg !232

if.then405.2:                                     ; preds = %if.end439.1
  %83 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !233
  %84 = getelementptr inbounds i8, ptr addrspace(4) %83, i64 %.idx, !dbg !233
  %add.ptr425.2 = getelementptr inbounds i8, ptr addrspace(4) %84, i64 256, !dbg !233
  %condval_2.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %add.ptr425.2, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr425.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %84, i64 260, !dbg !234
  %condval_2.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr425.sroa_idx.2, align 4, !dbg !234, !tbaa !30
  br label %if.end439.2, !dbg !235

if.end439.2:                                      ; preds = %if.then405.2, %if.end439.1
  %condval_2.sroa.5.0.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2, %if.then405.2 ], [ 0, %if.end439.1 ], !dbg !83
  %condval_2.sroa.0.0.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2, %if.then405.2 ], [ 0, %if.end439.1 ], !dbg !83
  br i1 %cmp404, label %if.then405.3, label %if.end439.3, !dbg !232

if.then405.3:                                     ; preds = %if.end439.2
  %85 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !233
  %86 = getelementptr inbounds i8, ptr addrspace(4) %85, i64 %.idx, !dbg !233
  %add.ptr425.3 = getelementptr inbounds i8, ptr addrspace(4) %86, i64 384, !dbg !233
  %condval_2.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %add.ptr425.3, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr425.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %86, i64 388, !dbg !234
  %condval_2.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr425.sroa_idx.3, align 4, !dbg !234, !tbaa !30
  br label %if.end439.3, !dbg !235

if.end439.3:                                      ; preds = %if.then405.3, %if.end439.2
  %condval_2.sroa.5.0.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3, %if.then405.3 ], [ 0, %if.end439.2 ], !dbg !83
  %condval_2.sroa.0.0.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3, %if.then405.3 ], [ 0, %if.end439.2 ], !dbg !83
  %87 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul469, !dbg !236
  %.idx803 = shl nuw nsw i32 %xor, 3, !dbg !236
  %88 = getelementptr inbounds i8, ptr addrspace(3) %87, i32 %.idx803, !dbg !236
  %add.ptr481 = getelementptr inbounds i8, ptr addrspace(3) %88, i32 2048, !dbg !236
  %89 = and i32 %condval_2.sroa.0.0.3, 65535, !dbg !237
  %v_column_local.sroa.66.0.insert.ext = zext nneg i32 %89 to i64, !dbg !237
  %v_column_local.sroa.66.0.insert.shift = shl nuw i64 %v_column_local.sroa.66.0.insert.ext, 48, !dbg !237
  %90 = and i32 %condval_2.sroa.0.0.2, 65535, !dbg !237
  %v_column_local.sroa.50.0.insert.ext = zext nneg i32 %90 to i64, !dbg !237
  %v_column_local.sroa.50.0.insert.shift = shl nuw nsw i64 %v_column_local.sroa.50.0.insert.ext, 32, !dbg !237
  %v_column_local.sroa.50.0.insert.insert = or disjoint i64 %v_column_local.sroa.66.0.insert.shift, %v_column_local.sroa.50.0.insert.shift, !dbg !237
  %91 = shl i32 %condval_2.sroa.0.0.1, 16, !dbg !237
  %v_column_local.sroa.34.0.insert.shift = zext i32 %91 to i64, !dbg !237
  %v_column_local.sroa.34.0.insert.insert = or disjoint i64 %v_column_local.sroa.50.0.insert.insert, %v_column_local.sroa.34.0.insert.shift, !dbg !237
  %92 = and i32 %condval_2.sroa.0.0, 65535, !dbg !237
  %v_column_local.sroa.0.0.insert.ext = zext nneg i32 %92 to i64, !dbg !237
  %v_column_local.sroa.0.0.insert.insert = or disjoint i64 %v_column_local.sroa.34.0.insert.insert, %v_column_local.sroa.0.0.insert.ext, !dbg !237
  store i64 %v_column_local.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr481, align 8, !dbg !237
  %v_tile_local.sroa.0.2.extract.shift = lshr i32 %condval_2.sroa.0.0, 16, !dbg !238
  %v_tile_local.sroa.0.2.extract.trunc = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift to i64, !dbg !238
  %v_tile_local.sroa.26.10.extract.shift = and i32 %condval_2.sroa.0.0.1, -65536, !dbg !237
  %v_tile_local.sroa.50.18.extract.shift = lshr i32 %condval_2.sroa.0.0.2, 16, !dbg !238
  %v_tile_local.sroa.50.18.extract.trunc = zext nneg i32 %v_tile_local.sroa.50.18.extract.shift to i64, !dbg !238
  %v_tile_local.sroa.74.26.extract.shift = lshr i32 %condval_2.sroa.0.0.3, 16, !dbg !238
  %v_tile_local.sroa.74.26.extract.trunc = zext nneg i32 %v_tile_local.sroa.74.26.extract.shift to i64, !dbg !238
  %add470.1 = or disjoint i32 %mul469, 256, !dbg !239
  %93 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add470.1, !dbg !236
  %xor476.1 = shl nuw nsw i32 %xor, 3, !dbg !236
  %.idx803.1 = xor i32 %xor476.1, 8, !dbg !236
  %94 = getelementptr inbounds i8, ptr addrspace(3) %93, i32 %.idx803.1, !dbg !236
  %add.ptr481.1 = getelementptr inbounds i8, ptr addrspace(3) %94, i32 2048, !dbg !236
  %v_column_local.sroa.66.0.insert.shift1247 = shl nuw i64 %v_tile_local.sroa.74.26.extract.trunc, 48, !dbg !237
  %v_column_local.sroa.50.0.insert.shift1172 = shl nuw nsw i64 %v_tile_local.sroa.50.18.extract.trunc, 32, !dbg !237
  %v_column_local.sroa.50.0.insert.insert1174 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1247, %v_column_local.sroa.50.0.insert.shift1172, !dbg !237
  %v_column_local.sroa.34.0.insert.shift1097 = zext i32 %v_tile_local.sroa.26.10.extract.shift to i64, !dbg !237
  %v_column_local.sroa.34.0.insert.insert1099 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1174, %v_column_local.sroa.34.0.insert.shift1097, !dbg !237
  %v_column_local.sroa.0.0.insert.insert1038 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1099, %v_tile_local.sroa.0.2.extract.trunc, !dbg !237
  store i64 %v_column_local.sroa.0.0.insert.insert1038, ptr addrspace(3) %add.ptr481.1, align 8, !dbg !237
  %add470.2 = or disjoint i32 %mul469, 512, !dbg !239
  %95 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add470.2, !dbg !236
  %xor476.2 = shl nuw nsw i32 %xor, 3, !dbg !236
  %.idx803.2 = xor i32 %xor476.2, 16, !dbg !236
  %96 = getelementptr inbounds i8, ptr addrspace(3) %95, i32 %.idx803.2, !dbg !236
  %add.ptr481.2 = getelementptr inbounds i8, ptr addrspace(3) %96, i32 2048, !dbg !236
  %97 = and i32 %condval_2.sroa.5.0.3, 65535, !dbg !237
  %v_column_local.sroa.66.0.insert.ext1251 = zext nneg i32 %97 to i64, !dbg !237
  %v_column_local.sroa.66.0.insert.shift1252 = shl nuw i64 %v_column_local.sroa.66.0.insert.ext1251, 48, !dbg !237
  %98 = and i32 %condval_2.sroa.5.0.2, 65535, !dbg !237
  %v_column_local.sroa.50.0.insert.ext1176 = zext nneg i32 %98 to i64, !dbg !237
  %v_column_local.sroa.50.0.insert.shift1177 = shl nuw nsw i64 %v_column_local.sroa.50.0.insert.ext1176, 32, !dbg !237
  %v_column_local.sroa.50.0.insert.insert1179 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1252, %v_column_local.sroa.50.0.insert.shift1177, !dbg !237
  %99 = shl i32 %condval_2.sroa.5.0.1, 16, !dbg !237
  %v_column_local.sroa.34.0.insert.shift1102 = zext i32 %99 to i64, !dbg !237
  %v_column_local.sroa.34.0.insert.insert1104 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1179, %v_column_local.sroa.34.0.insert.shift1102, !dbg !237
  %100 = and i32 %condval_2.sroa.5.0, 65535, !dbg !237
  %v_column_local.sroa.0.0.insert.ext1040 = zext nneg i32 %100 to i64, !dbg !237
  %v_column_local.sroa.0.0.insert.insert1042 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1104, %v_column_local.sroa.0.0.insert.ext1040, !dbg !237
  store i64 %v_column_local.sroa.0.0.insert.insert1042, ptr addrspace(3) %add.ptr481.2, align 8, !dbg !237
  %v_tile_local.sroa.14.6.extract.shift = lshr i32 %condval_2.sroa.5.0, 16, !dbg !238
  %v_tile_local.sroa.14.6.extract.trunc = zext nneg i32 %v_tile_local.sroa.14.6.extract.shift to i64, !dbg !238
  %v_tile_local.sroa.38.14.extract.shift = and i32 %condval_2.sroa.5.0.1, -65536, !dbg !237
  %v_tile_local.sroa.62.22.extract.shift = lshr i32 %condval_2.sroa.5.0.2, 16, !dbg !238
  %v_tile_local.sroa.62.22.extract.trunc = zext nneg i32 %v_tile_local.sroa.62.22.extract.shift to i64, !dbg !238
  %v_tile_local.sroa.86.30.extract.shift = lshr i32 %condval_2.sroa.5.0.3, 16, !dbg !238
  %v_tile_local.sroa.86.30.extract.trunc = zext nneg i32 %v_tile_local.sroa.86.30.extract.shift to i64, !dbg !238
  %add470.3 = or disjoint i32 %mul469, 768, !dbg !239
  %101 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add470.3, !dbg !236
  %xor476.3 = shl nuw nsw i32 %xor, 3, !dbg !236
  %.idx803.3 = xor i32 %xor476.3, 24, !dbg !236
  %102 = getelementptr inbounds i8, ptr addrspace(3) %101, i32 %.idx803.3, !dbg !236
  %add.ptr481.3 = getelementptr inbounds i8, ptr addrspace(3) %102, i32 2048, !dbg !236
  %v_column_local.sroa.66.0.insert.shift1257 = shl nuw i64 %v_tile_local.sroa.86.30.extract.trunc, 48, !dbg !237
  %v_column_local.sroa.50.0.insert.shift1182 = shl nuw nsw i64 %v_tile_local.sroa.62.22.extract.trunc, 32, !dbg !237
  %v_column_local.sroa.50.0.insert.insert1184 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1257, %v_column_local.sroa.50.0.insert.shift1182, !dbg !237
  %v_column_local.sroa.34.0.insert.shift1107 = zext i32 %v_tile_local.sroa.38.14.extract.shift to i64, !dbg !237
  %v_column_local.sroa.34.0.insert.insert1109 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1184, %v_column_local.sroa.34.0.insert.shift1107, !dbg !237
  %v_column_local.sroa.0.0.insert.insert1046 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1109, %v_tile_local.sroa.14.6.extract.trunc, !dbg !237
  store i64 %v_column_local.sroa.0.0.insert.insert1046, ptr addrspace(3) %add.ptr481.3, align 8, !dbg !237
  fence syncscope("warp") release, !dbg !240
  tail call void @llvm.mxc.barrier.warp(), !dbg !243
  fence syncscope("warp") acquire, !dbg !244
  %add498 = or disjoint i32 %mul491, %mul497, !dbg !245
  %103 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add498, !dbg !246
  %.idx802 = shl nuw nsw i32 %29, 3, !dbg !246
  %104 = getelementptr inbounds i8, ptr addrspace(3) %103, i32 %.idx802, !dbg !246
  %add.ptr509 = getelementptr inbounds i8, ptr addrspace(3) %104, i32 2048, !dbg !246
  %105 = load <4 x half>, ptr addrspace(3) %add.ptr509, align 8, !dbg !247
  %add493.1 = or disjoint i32 %mul491, %mul497, !dbg !245
  %add498.1 = or disjoint i32 %add493.1, 64, !dbg !245
  %106 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add498.1, !dbg !246
  %xor504.1 = shl nuw nsw i32 %29, 3, !dbg !246
  %.idx802.1 = xor i32 %xor504.1, 8, !dbg !246
  %107 = getelementptr inbounds i8, ptr addrspace(3) %106, i32 %.idx802.1, !dbg !246
  %add.ptr509.1 = getelementptr inbounds i8, ptr addrspace(3) %107, i32 2048, !dbg !246
  %108 = load <4 x half>, ptr addrspace(3) %add.ptr509.1, align 8, !dbg !247
  %add493.2 = or disjoint i32 %mul491, %mul497, !dbg !245
  %add498.2 = or disjoint i32 %add493.2, 128, !dbg !245
  %109 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add498.2, !dbg !246
  %xor504.2 = shl nuw nsw i32 %29, 3, !dbg !246
  %.idx802.2 = xor i32 %xor504.2, 16, !dbg !246
  %110 = getelementptr inbounds i8, ptr addrspace(3) %109, i32 %.idx802.2, !dbg !246
  %add.ptr509.2 = getelementptr inbounds i8, ptr addrspace(3) %110, i32 2048, !dbg !246
  %111 = load <4 x half>, ptr addrspace(3) %add.ptr509.2, align 8, !dbg !247
  %add493.3 = or disjoint i32 %mul491, %mul497, !dbg !245
  %add498.3 = or disjoint i32 %add493.3, 192, !dbg !245
  %112 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add498.3, !dbg !246
  %xor504.3 = shl nuw nsw i32 %29, 3, !dbg !246
  %.idx802.3 = xor i32 %xor504.3, 24, !dbg !246
  %113 = getelementptr inbounds i8, ptr addrspace(3) %112, i32 %.idx802.3, !dbg !246
  %add.ptr509.3 = getelementptr inbounds i8, ptr addrspace(3) %113, i32 2048, !dbg !246
  %114 = load <4 x half>, ptr addrspace(3) %add.ptr509.3, align 8, !dbg !247
  %115 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %105, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.170.0), !dbg !248
  %116 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %108, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.170.0), !dbg !248
  %117 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %111, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.170.0), !dbg !248
  %118 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %114, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.170.0), !dbg !248
  br label %if.end535, !dbg !249

if.end535:                                        ; preds = %if.end439.3, %entry
  %output_acc.sroa.170.1 = phi <4 x float> [ zeroinitializer, %entry ], [ %118, %if.end439.3 ], !dbg !83
  %output_acc.sroa.114.1 = phi <4 x float> [ zeroinitializer, %entry ], [ %117, %if.end439.3 ], !dbg !83
  %output_acc.sroa.58.1 = phi <4 x float> [ zeroinitializer, %entry ], [ %116, %if.end439.3 ], !dbg !83
  %output_acc.sroa.0.1 = phi <4 x float> [ zeroinitializer, %entry ], [ %115, %if.end439.3 ], !dbg !83
  %normalizer.sroa.0.2 = phi float [ 0xFFF0000000000000, %entry ], [ %normalizer.sroa.0.1, %if.end439.3 ], !dbg !83
  %denominator.sroa.0.2 = phi float [ 0.000000e+00, %entry ], [ %add362, %if.end439.3 ], !dbg !83
  %119 = or disjoint i64 %30, 1, !dbg !250
  %arrayidx117.1 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %119, !dbg !69
  %120 = load i32, ptr addrspace(1) %arrayidx117.1, align 4, !dbg !69, !tbaa !30
  %mul118.1 = shl nsw i32 %120, 4, !dbg !70
  %cmp119.1 = icmp slt i32 %120, 0, !dbg !71
  %cmp121.not.1 = icmp sgt i32 %mul118.1, %1
  %or.cond.1 = select i1 %cmp119.1, i1 true, i1 %cmp121.not.1, !dbg !72
  br i1 %or.cond.1, label %if.end535.1, label %if.then.1, !dbg !72

if.then.1:                                        ; preds = %if.end535
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add128.1 = add nuw nsw i32 %mul118.1, %shr127
  %conv138.1 = zext nneg i32 %mul118.1 to i64
  %.idx.1 = shl nuw nsw i64 %conv138.1, 7
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep826, i64 %.idx.1, !dbg !78
  %cmp131.1856 = icmp ult i32 %add128.1, 512, !dbg !79
  br i1 %cmp131.1856, label %if.then132.1865, label %if.end.1874, !dbg !80

if.then132.1865:                                  ; preds = %if.then.1
  %gep809.1857 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.1, i64 %mul134
  %condval.sroa.7.0.add.ptr145.sroa_idx.1858 = getelementptr inbounds i8, ptr addrspace(4) %gep809.1857, i64 12
  %condval.sroa.6.0.add.ptr145.sroa_idx.1859 = getelementptr inbounds i8, ptr addrspace(4) %gep809.1857, i64 8
  %condval.sroa.5.0.add.ptr145.sroa_idx.1860 = getelementptr inbounds i8, ptr addrspace(4) %gep809.1857, i64 4
  %condval.sroa.0.0.copyload.1861 = load i32, ptr addrspace(4) %gep809.1857, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1862 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr145.sroa_idx.1860, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1863 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr145.sroa_idx.1859, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1864 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr145.sroa_idx.1858, align 4, !dbg !81, !tbaa !30
  br label %if.end.1874, !dbg !82

if.end.1874:                                      ; preds = %if.then132.1865, %if.then.1
  %condval.sroa.0.0.1866 = phi i32 [ %condval.sroa.0.0.copyload.1861, %if.then132.1865 ], [ 0, %if.then.1 ], !dbg !83
  %condval.sroa.5.0.1867 = phi i32 [ %condval.sroa.5.0.copyload.1862, %if.then132.1865 ], [ 0, %if.then.1 ], !dbg !83
  %condval.sroa.6.0.1868 = phi i32 [ %condval.sroa.6.0.copyload.1863, %if.then132.1865 ], [ 0, %if.then.1 ], !dbg !83
  %condval.sroa.7.0.1869 = phi i32 [ %condval.sroa.7.0.copyload.1864, %if.then132.1865 ], [ 0, %if.then.1 ], !dbg !83
  store i32 %condval.sroa.0.0.1866, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr200.sroa_idx.1871 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1867, ptr addrspace(3) %condval.sroa.5.0.add.ptr200.sroa_idx.1871, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr200.sroa_idx.1872 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1868, ptr addrspace(3) %condval.sroa.6.0.add.ptr200.sroa_idx.1872, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr200.sroa_idx.1873 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1869, ptr addrspace(3) %condval.sroa.7.0.add.ptr200.sroa_idx.1873, align 4, !dbg !84, !tbaa !30
  %cmp131.1.1 = icmp ult i32 %add128.1, 504, !dbg !79
  br i1 %cmp131.1.1, label %if.then132.1.1, label %if.end.1.1, !dbg !80

if.then132.1.1:                                   ; preds = %if.end.1874
  %add137.1.1 = or disjoint i64 %mul134, 512
  %gep809.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.1, i64 %add137.1.1
  %condval.sroa.7.0.add.ptr145.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep809.1.1, i64 12
  %condval.sroa.6.0.add.ptr145.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep809.1.1, i64 8
  %condval.sroa.5.0.add.ptr145.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep809.1.1, i64 4
  %condval.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %gep809.1.1, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr145.sroa_idx.1.1, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr145.sroa_idx.1.1, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr145.sroa_idx.1.1, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.1, !dbg !82

if.end.1.1:                                       ; preds = %if.then132.1.1, %if.end.1874
  %condval.sroa.0.0.1.1 = phi i32 [ %condval.sroa.0.0.copyload.1.1, %if.then132.1.1 ], [ 0, %if.end.1874 ], !dbg !83
  %condval.sroa.5.0.1.1 = phi i32 [ %condval.sroa.5.0.copyload.1.1, %if.then132.1.1 ], [ 0, %if.end.1874 ], !dbg !83
  %condval.sroa.6.0.1.1 = phi i32 [ %condval.sroa.6.0.copyload.1.1, %if.then132.1.1 ], [ 0, %if.end.1874 ], !dbg !83
  %condval.sroa.7.0.1.1 = phi i32 [ %condval.sroa.7.0.copyload.1.1, %if.then132.1.1 ], [ 0, %if.end.1874 ], !dbg !83
  store i32 %condval.sroa.0.0.1.1, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr200.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr200.sroa_idx.1.1, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr200.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr200.sroa_idx.1.1, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr200.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr200.sroa_idx.1.1, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.1882 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %121 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1882, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %122 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %16, <4 x float> %121), !dbg !91
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %123 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %18, <4 x float> %122), !dbg !91
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %124 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %22, <4 x float> %123), !dbg !91
  %add267.1 = add nuw nsw i32 %mul118.1, %mul266
  %cmp270.not.1883 = icmp sgt i32 %add267.1, %1, !dbg !92
  %scores.sroa.0.0.vec.extract1460 = extractelement <4 x float> %124, i64 0
  %spec.select2060 = select i1 %cmp270.not.1883, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1460, !dbg !93
  %cmp270.not.1.1.not = icmp slt i32 %add267.1, %1, !dbg !92
  %scores.sroa.0.4.vec.extract1531 = extractelement <4 x float> %124, i64 1, !dbg !93
  %condval_1.0.1.1 = select i1 %cmp270.not.1.1.not, float %scores.sroa.0.4.vec.extract1531, float 0xFFF0000000000000, !dbg !93
  %add268.2.1 = or disjoint i32 %add267.1, 2, !dbg !94
  %cmp270.not.2.1 = icmp sgt i32 %add268.2.1, %1, !dbg !92
  %scores.sroa.0.8.vec.extract1592 = extractelement <4 x float> %124, i64 2, !dbg !93
  %condval_1.0.2.1 = select i1 %cmp270.not.2.1, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1592, !dbg !93
  %add268.3.1 = or disjoint i32 %add267.1, 3, !dbg !94
  %cmp270.not.3.1 = icmp sgt i32 %add268.3.1, %1, !dbg !92
  %scores.sroa.0.12.vec.extract1653 = extractelement <4 x float> %124, i64 3, !dbg !93
  %condval_1.0.3.1 = select i1 %cmp270.not.3.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1653, !dbg !93
  %125 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2060, float 0xFFF0000000000000), !dbg !95
  %126 = tail call contract noundef float @llvm.maxnum.f32(float %125, float %condval_1.0.1.1), !dbg !95
  %127 = tail call contract noundef float @llvm.maxnum.f32(float %126, float %condval_1.0.2.1), !dbg !95
  %128 = tail call contract noundef float @llvm.maxnum.f32(float %127, float %condval_1.0.3.1), !dbg !95
  %129 = bitcast float %128 to i32, !dbg !99
  %130 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !108
  %131 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %130) #11, !dbg !113
  %xor.i.i.i.1 = xor i32 %131, 32, !dbg !114
  %132 = and i32 %131, -64, !dbg !115
  %and.i.i.i.1 = add nsw i32 %132, 64, !dbg !115
  %cmp.not.i.i.i.1 = icmp slt i32 %xor.i.i.i.1, %and.i.i.i.1, !dbg !116
  %cond.i.i.i.1 = select i1 %cmp.not.i.i.i.1, i32 %xor.i.i.i.1, i32 %131, !dbg !117
  %shl.i.i.i.1 = shl i32 %cond.i.i.i.1, 2, !dbg !118
  %133 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.1, i32 %129), !dbg !119
  %134 = bitcast i32 %133 to float, !dbg !120
  %135 = tail call contract noundef float @llvm.maxnum.f32(float %128, float %134), !dbg !121
  %136 = bitcast float %135 to i32, !dbg !129
  %137 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !134
  %138 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %137) #11, !dbg !137
  %xor.i.i.i.i.1 = xor i32 %138, 16, !dbg !138
  %139 = and i32 %138, -64, !dbg !139
  %and.i.i.i.i.1 = add nsw i32 %139, 64, !dbg !139
  %cmp.not.i.i.i.i.1 = icmp slt i32 %xor.i.i.i.i.1, %and.i.i.i.i.1, !dbg !140
  %cond.i.i.i.i.1 = select i1 %cmp.not.i.i.i.i.1, i32 %xor.i.i.i.i.1, i32 %138, !dbg !141
  %shl.i.i.i.i.1 = shl i32 %cond.i.i.i.i.1, 2, !dbg !142
  %140 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.1, i32 %136), !dbg !143
  %141 = bitcast i32 %140 to float, !dbg !144
  %142 = tail call contract noundef float @llvm.maxnum.f32(float %135, float %141), !dbg !145
  %sub.1 = fsub contract float %142, %normalizer.sroa.0.2, !dbg !149
  %mul306.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !150
  %cmp307.1 = fcmp contract ogt float %mul306.1, 7.000000e+00, !dbg !151
  %sub311.1 = fsub contract float %normalizer.sroa.0.2, %142
  %mul312.1 = fmul contract float %sub311.1, 0x3FC7154760000000
  %cmp.i.i.1 = fcmp contract olt float %mul312.1, -1.260000e+02
  %cond.i.i.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00
  %add.i.i.1 = fadd contract float %mul312.1, %cond.i.i.1
  %143 = tail call contract float @llvm.exp2.f32(float %add.i.i.1)
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %143
  %normalizer.sroa.0.1.1 = select i1 %cmp307.1, float %142, float %normalizer.sroa.0.2, !dbg !152
  %sub327.1887 = fsub contract float %spec.select2060, %normalizer.sroa.0.1.1, !dbg !153
  %mul328.1888 = fmul contract float %sub327.1887, 0x3FC7154760000000, !dbg !154
  %add329.1889 = fadd contract float %mul328.1888, 8.000000e+00, !dbg !155
  %cmp.i.i760.1890 = fcmp contract olt float %add329.1889, -1.260000e+02, !dbg !156
  %cond.i.i761.1891 = select contract i1 %cmp.i.i760.1890, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i762.1892 = fadd contract float %add329.1889, %cond.i.i761.1891, !dbg !156
  %144 = tail call contract float @llvm.exp2.f32(float %add.i.i762.1892), !dbg !156
  %cond2.i.i763.1893 = select contract i1 %cmp.i.i760.1890, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i764.1894 = fmul contract float %cond2.i.i763.1893, %144, !dbg !156
  %sub327.1.1 = fsub contract float %condval_1.0.1.1, %normalizer.sroa.0.1.1, !dbg !153
  %mul328.1.1 = fmul contract float %sub327.1.1, 0x3FC7154760000000, !dbg !154
  %add329.1.1 = fadd contract float %mul328.1.1, 8.000000e+00, !dbg !155
  %cmp.i.i760.1.1 = fcmp contract olt float %add329.1.1, -1.260000e+02, !dbg !156
  %cond.i.i761.1.1 = select contract i1 %cmp.i.i760.1.1, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i762.1.1 = fadd contract float %add329.1.1, %cond.i.i761.1.1, !dbg !156
  %145 = tail call contract float @llvm.exp2.f32(float %add.i.i762.1.1), !dbg !156
  %cond2.i.i763.1.1 = select contract i1 %cmp.i.i760.1.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i764.1.1 = fmul contract float %cond2.i.i763.1.1, %145, !dbg !156
  %sub327.2.1 = fsub contract float %condval_1.0.2.1, %normalizer.sroa.0.1.1, !dbg !153
  %mul328.2.1 = fmul contract float %sub327.2.1, 0x3FC7154760000000, !dbg !154
  %add329.2.1 = fadd contract float %mul328.2.1, 8.000000e+00, !dbg !155
  %cmp.i.i760.2.1 = fcmp contract olt float %add329.2.1, -1.260000e+02, !dbg !156
  %cond.i.i761.2.1 = select contract i1 %cmp.i.i760.2.1, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i762.2.1 = fadd contract float %add329.2.1, %cond.i.i761.2.1, !dbg !156
  %146 = tail call contract float @llvm.exp2.f32(float %add.i.i762.2.1), !dbg !156
  %cond2.i.i763.2.1 = select contract i1 %cmp.i.i760.2.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i764.2.1 = fmul contract float %cond2.i.i763.2.1, %146, !dbg !156
  %sub327.3.1 = fsub contract float %condval_1.0.3.1, %normalizer.sroa.0.1.1, !dbg !153
  %mul328.3.1 = fmul contract float %sub327.3.1, 0x3FC7154760000000, !dbg !154
  %add329.3.1 = fadd contract float %mul328.3.1, 8.000000e+00, !dbg !155
  %cmp.i.i760.3.1 = fcmp contract olt float %add329.3.1, -1.260000e+02, !dbg !156
  %cond.i.i761.3.1 = select contract i1 %cmp.i.i760.3.1, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i762.3.1 = fadd contract float %add329.3.1, %cond.i.i761.3.1, !dbg !156
  %147 = tail call contract float @llvm.exp2.f32(float %add.i.i762.3.1), !dbg !156
  %cond2.i.i763.3.1 = select contract i1 %cmp.i.i760.3.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i764.3.1 = fmul contract float %cond2.i.i763.3.1, %147, !dbg !156
  %add344.1895 = fadd contract float %mul.i.i764.1894, 0.000000e+00, !dbg !159
  %add344.1.1 = fadd contract float %add344.1895, %mul.i.i764.1.1, !dbg !159
  %add344.2.1 = fadd contract float %add344.1.1, %mul.i.i764.2.1, !dbg !159
  %add344.3.1 = fadd contract float %add344.2.1, %mul.i.i764.3.1, !dbg !159
  %rescale.sroa.0.0.1 = select i1 %cmp307.1, float %mul.i.i.1, float 1.000000e+00, !dbg !152
  %148 = bitcast float %add344.3.1 to i32, !dbg !160
  %149 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !165
  %150 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %149) #11, !dbg !168
  %xor.i.i.i765.1 = xor i32 %150, 32, !dbg !169
  %151 = and i32 %150, -64, !dbg !170
  %and.i.i.i766.1 = add nsw i32 %151, 64, !dbg !170
  %cmp.not.i.i.i767.1 = icmp slt i32 %xor.i.i.i765.1, %and.i.i.i766.1, !dbg !171
  %cond.i.i.i768.1 = select i1 %cmp.not.i.i.i767.1, i32 %xor.i.i.i765.1, i32 %150, !dbg !172
  %shl.i.i.i769.1 = shl i32 %cond.i.i.i768.1, 2, !dbg !173
  %152 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i769.1, i32 %148), !dbg !174
  %153 = bitcast i32 %152 to float, !dbg !175
  %add.i.i770.1 = fadd contract float %add344.3.1, %153, !dbg !176
  %154 = bitcast float %add.i.i770.1 to i32, !dbg !179
  %155 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !184
  %156 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %155) #11, !dbg !187
  %xor.i.i.i.i771.1 = xor i32 %156, 16, !dbg !188
  %157 = and i32 %156, -64, !dbg !189
  %and.i.i.i.i772.1 = add nsw i32 %157, 64, !dbg !189
  %cmp.not.i.i.i.i773.1 = icmp slt i32 %xor.i.i.i.i771.1, %and.i.i.i.i772.1, !dbg !190
  %cond.i.i.i.i774.1 = select i1 %cmp.not.i.i.i.i773.1, i32 %xor.i.i.i.i771.1, i32 %156, !dbg !191
  %shl.i.i.i.i775.1 = shl i32 %cond.i.i.i.i774.1, 2, !dbg !192
  %158 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i775.1, i32 %154), !dbg !193
  %159 = bitcast i32 %158 to float, !dbg !194
  %add.i.i.i.1 = fadd contract float %add.i.i770.1, %159, !dbg !195
  %cmp353.1 = fcmp contract une float %rescale.sroa.0.0.1, 1.000000e+00, !dbg !197
  %mul357.1 = fmul contract float %denominator.sroa.0.2, %rescale.sroa.0.0.1, !dbg !198
  %denominator.sroa.0.1.1 = select i1 %cmp353.1, float %mul357.1, float %denominator.sroa.0.2, !dbg !198
  %add362.1 = fadd contract float %denominator.sroa.0.1.1, %add.i.i.i.1, !dbg !199
  %160 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !200
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !200, !noalias !208
  %161 = fptrunc float %mul.i.i764.1894 to half, !dbg !200
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %160), !dbg !200, !noalias !208
  %162 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !213, !noalias !208
  %163 = fptrunc float %mul.i.i764.1.1 to half, !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %162), !dbg !213, !noalias !208
  %__1.sroa.0.0.vec.insert.1 = insertelement <4 x half> poison, half %161, i64 0, !dbg !215
  %__1.sroa.0.2.vec.insert.1 = insertelement <4 x half> %__1.sroa.0.0.vec.insert.1, half %163, i64 1, !dbg !215
  %164 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !218, !noalias !222
  %165 = fptrunc float %mul.i.i764.2.1 to half, !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %164), !dbg !218, !noalias !222
  %166 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !222
  %167 = fptrunc float %mul.i.i764.3.1 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %166), !dbg !227, !noalias !222
  %__1.sroa.0.4.vec.insert.1 = insertelement <4 x half> %__1.sroa.0.2.vec.insert.1, half %165, i64 2, !dbg !229
  %__1.sroa.0.6.vec.insert.1 = insertelement <4 x half> %__1.sroa.0.4.vec.insert.1, half %167, i64 3, !dbg !229
  br i1 %cmp353.1, label %for.body384.preheader.1, label %if.end394.1, !dbg !231

for.body384.preheader.1:                          ; preds = %if.end.1.1
  %output_acc.sroa.0.0.vec.extract1696 = extractelement <4 x float> %output_acc.sroa.0.1, i64 0, !dbg !251
  %mul388.1896 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.0.0.vec.extract1696, !dbg !252
  %output_acc.sroa.0.0.vec.insert1698 = insertelement <4 x float> poison, float %mul388.1896, i64 0, !dbg !253
  %output_acc.sroa.0.4.vec.extract1717 = extractelement <4 x float> %output_acc.sroa.0.1, i64 1, !dbg !251
  %mul388.1.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.0.4.vec.extract1717, !dbg !252
  %output_acc.sroa.0.4.vec.insert1719 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert1698, float %mul388.1.1, i64 1, !dbg !253
  %output_acc.sroa.0.8.vec.extract1738 = extractelement <4 x float> %output_acc.sroa.0.1, i64 2, !dbg !251
  %mul388.2.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.0.8.vec.extract1738, !dbg !252
  %output_acc.sroa.0.8.vec.insert1740 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert1719, float %mul388.2.1, i64 2, !dbg !253
  %output_acc.sroa.0.12.vec.extract1759 = extractelement <4 x float> %output_acc.sroa.0.1, i64 3, !dbg !251
  %mul388.3.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.0.12.vec.extract1759, !dbg !252
  %output_acc.sroa.0.12.vec.insert1761 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert1740, float %mul388.3.1, i64 3, !dbg !253
  %output_acc.sroa.58.16.vec.extract1784 = extractelement <4 x float> %output_acc.sroa.58.1, i64 0, !dbg !251
  %mul388.4.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.58.16.vec.extract1784, !dbg !252
  %output_acc.sroa.58.16.vec.insert1786 = insertelement <4 x float> poison, float %mul388.4.1, i64 0, !dbg !253
  %output_acc.sroa.58.20.vec.extract1805 = extractelement <4 x float> %output_acc.sroa.58.1, i64 1, !dbg !251
  %mul388.5.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.58.20.vec.extract1805, !dbg !252
  %output_acc.sroa.58.20.vec.insert1807 = insertelement <4 x float> %output_acc.sroa.58.16.vec.insert1786, float %mul388.5.1, i64 1, !dbg !253
  %output_acc.sroa.58.24.vec.extract1826 = extractelement <4 x float> %output_acc.sroa.58.1, i64 2, !dbg !251
  %mul388.6.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.58.24.vec.extract1826, !dbg !252
  %output_acc.sroa.58.24.vec.insert1828 = insertelement <4 x float> %output_acc.sroa.58.20.vec.insert1807, float %mul388.6.1, i64 2, !dbg !253
  %output_acc.sroa.58.28.vec.extract1847 = extractelement <4 x float> %output_acc.sroa.58.1, i64 3, !dbg !251
  %mul388.7.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.58.28.vec.extract1847, !dbg !252
  %output_acc.sroa.58.28.vec.insert1849 = insertelement <4 x float> %output_acc.sroa.58.24.vec.insert1828, float %mul388.7.1, i64 3, !dbg !253
  %output_acc.sroa.114.32.vec.extract1872 = extractelement <4 x float> %output_acc.sroa.114.1, i64 0, !dbg !251
  %mul388.8.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.114.32.vec.extract1872, !dbg !252
  %output_acc.sroa.114.32.vec.insert1874 = insertelement <4 x float> poison, float %mul388.8.1, i64 0, !dbg !253
  %output_acc.sroa.114.36.vec.extract1893 = extractelement <4 x float> %output_acc.sroa.114.1, i64 1, !dbg !251
  %mul388.9.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.114.36.vec.extract1893, !dbg !252
  %output_acc.sroa.114.36.vec.insert1895 = insertelement <4 x float> %output_acc.sroa.114.32.vec.insert1874, float %mul388.9.1, i64 1, !dbg !253
  %output_acc.sroa.114.40.vec.extract1914 = extractelement <4 x float> %output_acc.sroa.114.1, i64 2, !dbg !251
  %mul388.10.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.114.40.vec.extract1914, !dbg !252
  %output_acc.sroa.114.40.vec.insert1916 = insertelement <4 x float> %output_acc.sroa.114.36.vec.insert1895, float %mul388.10.1, i64 2, !dbg !253
  %output_acc.sroa.114.44.vec.extract1935 = extractelement <4 x float> %output_acc.sroa.114.1, i64 3, !dbg !251
  %mul388.11.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.114.44.vec.extract1935, !dbg !252
  %output_acc.sroa.114.44.vec.insert1937 = insertelement <4 x float> %output_acc.sroa.114.40.vec.insert1916, float %mul388.11.1, i64 3, !dbg !253
  %output_acc.sroa.170.48.vec.extract1960 = extractelement <4 x float> %output_acc.sroa.170.1, i64 0, !dbg !251
  %mul388.12.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.170.48.vec.extract1960, !dbg !252
  %output_acc.sroa.170.48.vec.insert1962 = insertelement <4 x float> poison, float %mul388.12.1, i64 0, !dbg !253
  %output_acc.sroa.170.52.vec.extract1981 = extractelement <4 x float> %output_acc.sroa.170.1, i64 1, !dbg !251
  %mul388.13.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.170.52.vec.extract1981, !dbg !252
  %output_acc.sroa.170.52.vec.insert1983 = insertelement <4 x float> %output_acc.sroa.170.48.vec.insert1962, float %mul388.13.1, i64 1, !dbg !253
  %output_acc.sroa.170.56.vec.extract2002 = extractelement <4 x float> %output_acc.sroa.170.1, i64 2, !dbg !251
  %mul388.14.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.170.56.vec.extract2002, !dbg !252
  %output_acc.sroa.170.56.vec.insert2004 = insertelement <4 x float> %output_acc.sroa.170.52.vec.insert1983, float %mul388.14.1, i64 2, !dbg !253
  %output_acc.sroa.170.60.vec.extract2023 = extractelement <4 x float> %output_acc.sroa.170.1, i64 3, !dbg !251
  %mul388.15.1 = fmul contract float %rescale.sroa.0.0.1, %output_acc.sroa.170.60.vec.extract2023, !dbg !252
  %output_acc.sroa.170.60.vec.insert2025 = insertelement <4 x float> %output_acc.sroa.170.56.vec.insert2004, float %mul388.15.1, i64 3, !dbg !253
  br label %if.end394.1

if.end394.1:                                      ; preds = %for.body384.preheader.1, %if.end.1.1
  %output_acc.sroa.170.2 = phi <4 x float> [ %output_acc.sroa.170.60.vec.insert2025, %for.body384.preheader.1 ], [ %output_acc.sroa.170.1, %if.end.1.1 ], !dbg !83
  %output_acc.sroa.114.2 = phi <4 x float> [ %output_acc.sroa.114.44.vec.insert1937, %for.body384.preheader.1 ], [ %output_acc.sroa.114.1, %if.end.1.1 ], !dbg !83
  %output_acc.sroa.58.2 = phi <4 x float> [ %output_acc.sroa.58.28.vec.insert1849, %for.body384.preheader.1 ], [ %output_acc.sroa.58.1, %if.end.1.1 ], !dbg !83
  %output_acc.sroa.0.2 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1761, %for.body384.preheader.1 ], [ %output_acc.sroa.0.1, %if.end.1.1 ], !dbg !83
  %shr402.1 = lshr exact i32 %mul118.1, 2
  %add403.1 = add nuw nsw i32 %shr402.1, %shr400
  %cmp404.1 = icmp ult i32 %add403.1, 128
  br i1 %cmp404.1, label %if.then405.1901, label %if.end439.1905, !dbg !232

if.then405.1901:                                  ; preds = %if.end394.1
  %168 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !233
  %169 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 %.idx.1, !dbg !233
  %condval_2.sroa.0.0.copyload.1898 = load i32, ptr addrspace(4) %169, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr425.sroa_idx.1899 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4, !dbg !234
  %condval_2.sroa.5.0.copyload.1900 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr425.sroa_idx.1899, align 4, !dbg !234, !tbaa !30
  br label %if.end439.1905, !dbg !235

if.end439.1905:                                   ; preds = %if.then405.1901, %if.end394.1
  %condval_2.sroa.5.0.1902 = phi i32 [ %condval_2.sroa.5.0.copyload.1900, %if.then405.1901 ], [ 0, %if.end394.1 ], !dbg !83
  %condval_2.sroa.0.0.1903 = phi i32 [ %condval_2.sroa.0.0.copyload.1898, %if.then405.1901 ], [ 0, %if.end394.1 ], !dbg !83
  br i1 %cmp404.1, label %if.then405.1.1, label %if.end439.1.1, !dbg !232

if.then405.1.1:                                   ; preds = %if.end439.1905
  %170 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !233
  %171 = getelementptr inbounds i8, ptr addrspace(4) %170, i64 %.idx.1, !dbg !233
  %add.ptr425.1.1 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 128, !dbg !233
  %condval_2.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %add.ptr425.1.1, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr425.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 132, !dbg !234
  %condval_2.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr425.sroa_idx.1.1, align 4, !dbg !234, !tbaa !30
  br label %if.end439.1.1, !dbg !235

if.end439.1.1:                                    ; preds = %if.then405.1.1, %if.end439.1905
  %condval_2.sroa.5.0.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1, %if.then405.1.1 ], [ 0, %if.end439.1905 ], !dbg !83
  %condval_2.sroa.0.0.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1, %if.then405.1.1 ], [ 0, %if.end439.1905 ], !dbg !83
  br i1 %cmp404.1, label %if.then405.2.1, label %if.end439.2.1, !dbg !232

if.then405.2.1:                                   ; preds = %if.end439.1.1
  %172 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !233
  %173 = getelementptr inbounds i8, ptr addrspace(4) %172, i64 %.idx.1, !dbg !233
  %add.ptr425.2.1 = getelementptr inbounds i8, ptr addrspace(4) %173, i64 256, !dbg !233
  %condval_2.sroa.0.0.copyload.2.1 = load i32, ptr addrspace(4) %add.ptr425.2.1, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr425.sroa_idx.2.1 = getelementptr inbounds i8, ptr addrspace(4) %173, i64 260, !dbg !234
  %condval_2.sroa.5.0.copyload.2.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr425.sroa_idx.2.1, align 4, !dbg !234, !tbaa !30
  br label %if.end439.2.1, !dbg !235

if.end439.2.1:                                    ; preds = %if.then405.2.1, %if.end439.1.1
  %condval_2.sroa.5.0.2.1 = phi i32 [ %condval_2.sroa.5.0.copyload.2.1, %if.then405.2.1 ], [ 0, %if.end439.1.1 ], !dbg !83
  %condval_2.sroa.0.0.2.1 = phi i32 [ %condval_2.sroa.0.0.copyload.2.1, %if.then405.2.1 ], [ 0, %if.end439.1.1 ], !dbg !83
  br i1 %cmp404.1, label %if.then405.3.1, label %if.end439.3.1, !dbg !232

if.then405.3.1:                                   ; preds = %if.end439.2.1
  %174 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !233
  %175 = getelementptr inbounds i8, ptr addrspace(4) %174, i64 %.idx.1, !dbg !233
  %add.ptr425.3.1 = getelementptr inbounds i8, ptr addrspace(4) %175, i64 384, !dbg !233
  %condval_2.sroa.0.0.copyload.3.1 = load i32, ptr addrspace(4) %add.ptr425.3.1, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr425.sroa_idx.3.1 = getelementptr inbounds i8, ptr addrspace(4) %175, i64 388, !dbg !234
  %condval_2.sroa.5.0.copyload.3.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr425.sroa_idx.3.1, align 4, !dbg !234, !tbaa !30
  br label %if.end439.3.1, !dbg !235

if.end439.3.1:                                    ; preds = %if.then405.3.1, %if.end439.2.1
  %condval_2.sroa.5.0.3.1 = phi i32 [ %condval_2.sroa.5.0.copyload.3.1, %if.then405.3.1 ], [ 0, %if.end439.2.1 ], !dbg !83
  %condval_2.sroa.0.0.3.1 = phi i32 [ %condval_2.sroa.0.0.copyload.3.1, %if.then405.3.1 ], [ 0, %if.end439.2.1 ], !dbg !83
  %176 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul469, !dbg !236
  %.idx803.1912 = shl nuw nsw i32 %xor, 3, !dbg !236
  %177 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 %.idx803.1912, !dbg !236
  %add.ptr481.1913 = getelementptr inbounds i8, ptr addrspace(3) %177, i32 2048, !dbg !236
  %178 = and i32 %condval_2.sroa.0.0.3.1, 65535, !dbg !237
  %v_column_local.sroa.66.0.insert.ext1261 = zext nneg i32 %178 to i64, !dbg !237
  %v_column_local.sroa.66.0.insert.shift1262 = shl nuw i64 %v_column_local.sroa.66.0.insert.ext1261, 48, !dbg !237
  %179 = and i32 %condval_2.sroa.0.0.2.1, 65535, !dbg !237
  %v_column_local.sroa.50.0.insert.ext1186 = zext nneg i32 %179 to i64, !dbg !237
  %v_column_local.sroa.50.0.insert.shift1187 = shl nuw nsw i64 %v_column_local.sroa.50.0.insert.ext1186, 32, !dbg !237
  %v_column_local.sroa.50.0.insert.insert1189 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1262, %v_column_local.sroa.50.0.insert.shift1187, !dbg !237
  %180 = shl i32 %condval_2.sroa.0.0.1.1, 16, !dbg !237
  %v_column_local.sroa.34.0.insert.shift1112 = zext i32 %180 to i64, !dbg !237
  %v_column_local.sroa.34.0.insert.insert1114 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1189, %v_column_local.sroa.34.0.insert.shift1112, !dbg !237
  %181 = and i32 %condval_2.sroa.0.0.1903, 65535, !dbg !237
  %v_column_local.sroa.0.0.insert.ext1048 = zext nneg i32 %181 to i64, !dbg !237
  %v_column_local.sroa.0.0.insert.insert1050 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1114, %v_column_local.sroa.0.0.insert.ext1048, !dbg !237
  store i64 %v_column_local.sroa.0.0.insert.insert1050, ptr addrspace(3) %add.ptr481.1913, align 8, !dbg !237
  %v_tile_local.sroa.0.2.extract.shift1327 = lshr i32 %condval_2.sroa.0.0.1903, 16, !dbg !238
  %v_tile_local.sroa.0.2.extract.trunc1328 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1327 to i64, !dbg !238
  %v_tile_local.sroa.26.10.extract.shift1357 = and i32 %condval_2.sroa.0.0.1.1, -65536, !dbg !237
  %v_tile_local.sroa.50.18.extract.shift1387 = lshr i32 %condval_2.sroa.0.0.2.1, 16, !dbg !238
  %v_tile_local.sroa.50.18.extract.trunc1388 = zext nneg i32 %v_tile_local.sroa.50.18.extract.shift1387 to i64, !dbg !238
  %v_tile_local.sroa.74.26.extract.shift1417 = lshr i32 %condval_2.sroa.0.0.3.1, 16, !dbg !238
  %v_tile_local.sroa.74.26.extract.trunc1418 = zext nneg i32 %v_tile_local.sroa.74.26.extract.shift1417 to i64, !dbg !238
  %add470.1.1 = or disjoint i32 %mul469, 256, !dbg !239
  %182 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add470.1.1, !dbg !236
  %xor476.1.1 = shl nuw nsw i32 %xor, 3, !dbg !236
  %.idx803.1.1 = xor i32 %xor476.1.1, 8, !dbg !236
  %183 = getelementptr inbounds i8, ptr addrspace(3) %182, i32 %.idx803.1.1, !dbg !236
  %add.ptr481.1.1 = getelementptr inbounds i8, ptr addrspace(3) %183, i32 2048, !dbg !236
  %v_column_local.sroa.66.0.insert.shift1267 = shl nuw i64 %v_tile_local.sroa.74.26.extract.trunc1418, 48, !dbg !237
  %v_column_local.sroa.50.0.insert.shift1192 = shl nuw nsw i64 %v_tile_local.sroa.50.18.extract.trunc1388, 32, !dbg !237
  %v_column_local.sroa.50.0.insert.insert1194 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1267, %v_column_local.sroa.50.0.insert.shift1192, !dbg !237
  %v_column_local.sroa.34.0.insert.shift1117 = zext i32 %v_tile_local.sroa.26.10.extract.shift1357 to i64, !dbg !237
  %v_column_local.sroa.34.0.insert.insert1119 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1194, %v_column_local.sroa.34.0.insert.shift1117, !dbg !237
  %v_column_local.sroa.0.0.insert.insert1054 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1119, %v_tile_local.sroa.0.2.extract.trunc1328, !dbg !237
  store i64 %v_column_local.sroa.0.0.insert.insert1054, ptr addrspace(3) %add.ptr481.1.1, align 8, !dbg !237
  %add470.2.1 = or disjoint i32 %mul469, 512, !dbg !239
  %184 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add470.2.1, !dbg !236
  %xor476.2.1 = shl nuw nsw i32 %xor, 3, !dbg !236
  %.idx803.2.1 = xor i32 %xor476.2.1, 16, !dbg !236
  %185 = getelementptr inbounds i8, ptr addrspace(3) %184, i32 %.idx803.2.1, !dbg !236
  %add.ptr481.2.1 = getelementptr inbounds i8, ptr addrspace(3) %185, i32 2048, !dbg !236
  %186 = and i32 %condval_2.sroa.5.0.3.1, 65535, !dbg !237
  %v_column_local.sroa.66.0.insert.ext1271 = zext nneg i32 %186 to i64, !dbg !237
  %v_column_local.sroa.66.0.insert.shift1272 = shl nuw i64 %v_column_local.sroa.66.0.insert.ext1271, 48, !dbg !237
  %187 = and i32 %condval_2.sroa.5.0.2.1, 65535, !dbg !237
  %v_column_local.sroa.50.0.insert.ext1196 = zext nneg i32 %187 to i64, !dbg !237
  %v_column_local.sroa.50.0.insert.shift1197 = shl nuw nsw i64 %v_column_local.sroa.50.0.insert.ext1196, 32, !dbg !237
  %v_column_local.sroa.50.0.insert.insert1199 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1272, %v_column_local.sroa.50.0.insert.shift1197, !dbg !237
  %188 = shl i32 %condval_2.sroa.5.0.1.1, 16, !dbg !237
  %v_column_local.sroa.34.0.insert.shift1122 = zext i32 %188 to i64, !dbg !237
  %v_column_local.sroa.34.0.insert.insert1124 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1199, %v_column_local.sroa.34.0.insert.shift1122, !dbg !237
  %189 = and i32 %condval_2.sroa.5.0.1902, 65535, !dbg !237
  %v_column_local.sroa.0.0.insert.ext1056 = zext nneg i32 %189 to i64, !dbg !237
  %v_column_local.sroa.0.0.insert.insert1058 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1124, %v_column_local.sroa.0.0.insert.ext1056, !dbg !237
  store i64 %v_column_local.sroa.0.0.insert.insert1058, ptr addrspace(3) %add.ptr481.2.1, align 8, !dbg !237
  %v_tile_local.sroa.14.6.extract.shift1342 = lshr i32 %condval_2.sroa.5.0.1902, 16, !dbg !238
  %v_tile_local.sroa.14.6.extract.trunc1343 = zext nneg i32 %v_tile_local.sroa.14.6.extract.shift1342 to i64, !dbg !238
  %v_tile_local.sroa.38.14.extract.shift1372 = and i32 %condval_2.sroa.5.0.1.1, -65536, !dbg !237
  %v_tile_local.sroa.62.22.extract.shift1402 = lshr i32 %condval_2.sroa.5.0.2.1, 16, !dbg !238
  %v_tile_local.sroa.62.22.extract.trunc1403 = zext nneg i32 %v_tile_local.sroa.62.22.extract.shift1402 to i64, !dbg !238
  %v_tile_local.sroa.86.30.extract.shift1432 = lshr i32 %condval_2.sroa.5.0.3.1, 16, !dbg !238
  %v_tile_local.sroa.86.30.extract.trunc1433 = zext nneg i32 %v_tile_local.sroa.86.30.extract.shift1432 to i64, !dbg !238
  %add470.3.1 = or disjoint i32 %mul469, 768, !dbg !239
  %190 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add470.3.1, !dbg !236
  %xor476.3.1 = shl nuw nsw i32 %xor, 3, !dbg !236
  %.idx803.3.1 = xor i32 %xor476.3.1, 24, !dbg !236
  %191 = getelementptr inbounds i8, ptr addrspace(3) %190, i32 %.idx803.3.1, !dbg !236
  %add.ptr481.3.1 = getelementptr inbounds i8, ptr addrspace(3) %191, i32 2048, !dbg !236
  %v_column_local.sroa.66.0.insert.shift1277 = shl nuw i64 %v_tile_local.sroa.86.30.extract.trunc1433, 48, !dbg !237
  %v_column_local.sroa.50.0.insert.shift1202 = shl nuw nsw i64 %v_tile_local.sroa.62.22.extract.trunc1403, 32, !dbg !237
  %v_column_local.sroa.50.0.insert.insert1204 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1277, %v_column_local.sroa.50.0.insert.shift1202, !dbg !237
  %v_column_local.sroa.34.0.insert.shift1127 = zext i32 %v_tile_local.sroa.38.14.extract.shift1372 to i64, !dbg !237
  %v_column_local.sroa.34.0.insert.insert1129 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1204, %v_column_local.sroa.34.0.insert.shift1127, !dbg !237
  %v_column_local.sroa.0.0.insert.insert1062 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1129, %v_tile_local.sroa.14.6.extract.trunc1343, !dbg !237
  store i64 %v_column_local.sroa.0.0.insert.insert1062, ptr addrspace(3) %add.ptr481.3.1, align 8, !dbg !237
  fence syncscope("warp") release, !dbg !240
  tail call void @llvm.mxc.barrier.warp(), !dbg !243
  fence syncscope("warp") acquire, !dbg !244
  %add498.1915 = or disjoint i32 %mul491, %mul497, !dbg !245
  %192 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add498.1915, !dbg !246
  %.idx802.1916 = shl nuw nsw i32 %29, 3, !dbg !246
  %193 = getelementptr inbounds i8, ptr addrspace(3) %192, i32 %.idx802.1916, !dbg !246
  %add.ptr509.1917 = getelementptr inbounds i8, ptr addrspace(3) %193, i32 2048, !dbg !246
  %194 = load <4 x half>, ptr addrspace(3) %add.ptr509.1917, align 8, !dbg !247
  %add493.1.1 = or disjoint i32 %mul491, %mul497, !dbg !245
  %add498.1.1 = or disjoint i32 %add493.1.1, 64, !dbg !245
  %195 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add498.1.1, !dbg !246
  %xor504.1.1 = shl nuw nsw i32 %29, 3, !dbg !246
  %.idx802.1.1 = xor i32 %xor504.1.1, 8, !dbg !246
  %196 = getelementptr inbounds i8, ptr addrspace(3) %195, i32 %.idx802.1.1, !dbg !246
  %add.ptr509.1.1 = getelementptr inbounds i8, ptr addrspace(3) %196, i32 2048, !dbg !246
  %197 = load <4 x half>, ptr addrspace(3) %add.ptr509.1.1, align 8, !dbg !247
  %add493.2.1 = or disjoint i32 %mul491, %mul497, !dbg !245
  %add498.2.1 = or disjoint i32 %add493.2.1, 128, !dbg !245
  %198 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add498.2.1, !dbg !246
  %xor504.2.1 = shl nuw nsw i32 %29, 3, !dbg !246
  %.idx802.2.1 = xor i32 %xor504.2.1, 16, !dbg !246
  %199 = getelementptr inbounds i8, ptr addrspace(3) %198, i32 %.idx802.2.1, !dbg !246
  %add.ptr509.2.1 = getelementptr inbounds i8, ptr addrspace(3) %199, i32 2048, !dbg !246
  %200 = load <4 x half>, ptr addrspace(3) %add.ptr509.2.1, align 8, !dbg !247
  %add493.3.1 = or disjoint i32 %mul491, %mul497, !dbg !245
  %add498.3.1 = or disjoint i32 %add493.3.1, 192, !dbg !245
  %201 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add498.3.1, !dbg !246
  %xor504.3.1 = shl nuw nsw i32 %29, 3, !dbg !246
  %.idx802.3.1 = xor i32 %xor504.3.1, 24, !dbg !246
  %202 = getelementptr inbounds i8, ptr addrspace(3) %201, i32 %.idx802.3.1, !dbg !246
  %add.ptr509.3.1 = getelementptr inbounds i8, ptr addrspace(3) %202, i32 2048, !dbg !246
  %203 = load <4 x half>, ptr addrspace(3) %add.ptr509.3.1, align 8, !dbg !247
  %204 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %194, <4 x half> %__1.sroa.0.6.vec.insert.1, <4 x float> %output_acc.sroa.0.2), !dbg !248
  %205 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %197, <4 x half> %__1.sroa.0.6.vec.insert.1, <4 x float> %output_acc.sroa.58.2), !dbg !248
  %206 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %200, <4 x half> %__1.sroa.0.6.vec.insert.1, <4 x float> %output_acc.sroa.114.2), !dbg !248
  %207 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %203, <4 x half> %__1.sroa.0.6.vec.insert.1, <4 x float> %output_acc.sroa.170.2), !dbg !248
  br label %if.end535.1, !dbg !249

if.end535.1:                                      ; preds = %if.end439.3.1, %if.end535
  %output_acc.sroa.170.3 = phi <4 x float> [ %output_acc.sroa.170.1, %if.end535 ], [ %207, %if.end439.3.1 ], !dbg !83
  %output_acc.sroa.114.3 = phi <4 x float> [ %output_acc.sroa.114.1, %if.end535 ], [ %206, %if.end439.3.1 ], !dbg !83
  %output_acc.sroa.58.3 = phi <4 x float> [ %output_acc.sroa.58.1, %if.end535 ], [ %205, %if.end439.3.1 ], !dbg !83
  %output_acc.sroa.0.3 = phi <4 x float> [ %output_acc.sroa.0.1, %if.end535 ], [ %204, %if.end439.3.1 ], !dbg !83
  %normalizer.sroa.0.2.1 = phi float [ %normalizer.sroa.0.2, %if.end535 ], [ %normalizer.sroa.0.1.1, %if.end439.3.1 ], !dbg !83
  %denominator.sroa.0.2.1 = phi float [ %denominator.sroa.0.2, %if.end535 ], [ %add362.1, %if.end439.3.1 ], !dbg !83
  %208 = or disjoint i64 %30, 2, !dbg !250
  %arrayidx117.2 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %208, !dbg !69
  %209 = load i32, ptr addrspace(1) %arrayidx117.2, align 4, !dbg !69, !tbaa !30
  %mul118.2 = shl nsw i32 %209, 4, !dbg !70
  %cmp119.2 = icmp slt i32 %209, 0, !dbg !71
  %cmp121.not.2 = icmp sgt i32 %mul118.2, %1
  %or.cond.2 = select i1 %cmp119.2, i1 true, i1 %cmp121.not.2, !dbg !72
  br i1 %or.cond.2, label %if.end535.2, label %if.then.2, !dbg !72

if.then.2:                                        ; preds = %if.end535.1
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add128.2 = add nuw nsw i32 %mul118.2, %shr127
  %conv138.2 = zext nneg i32 %mul118.2 to i64
  %.idx.2 = shl nuw nsw i64 %conv138.2, 7
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep826, i64 %.idx.2, !dbg !78
  %cmp131.2 = icmp ult i32 %add128.2, 512, !dbg !79
  br i1 %cmp131.2, label %if.then132.2, label %if.end.2, !dbg !80

if.then132.2:                                     ; preds = %if.then.2
  %gep809.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.2, i64 %mul134
  %condval.sroa.7.0.add.ptr145.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep809.2, i64 12
  %condval.sroa.6.0.add.ptr145.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep809.2, i64 8
  %condval.sroa.5.0.add.ptr145.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep809.2, i64 4
  %condval.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %gep809.2, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr145.sroa_idx.2, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr145.sroa_idx.2, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr145.sroa_idx.2, align 4, !dbg !81, !tbaa !30
  br label %if.end.2, !dbg !82

if.end.2:                                         ; preds = %if.then132.2, %if.then.2
  %condval.sroa.0.0.2 = phi i32 [ %condval.sroa.0.0.copyload.2, %if.then132.2 ], [ 0, %if.then.2 ], !dbg !83
  %condval.sroa.5.0.2 = phi i32 [ %condval.sroa.5.0.copyload.2, %if.then132.2 ], [ 0, %if.then.2 ], !dbg !83
  %condval.sroa.6.0.2 = phi i32 [ %condval.sroa.6.0.copyload.2, %if.then132.2 ], [ 0, %if.then.2 ], !dbg !83
  %condval.sroa.7.0.2 = phi i32 [ %condval.sroa.7.0.copyload.2, %if.then132.2 ], [ 0, %if.then.2 ], !dbg !83
  store i32 %condval.sroa.0.0.2, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr200.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr200.sroa_idx.2, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr200.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr200.sroa_idx.2, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr200.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr200.sroa_idx.2, align 4, !dbg !84, !tbaa !30
  %cmp131.1.2 = icmp ult i32 %add128.2, 504, !dbg !79
  br i1 %cmp131.1.2, label %if.then132.1.2, label %if.end.1.2, !dbg !80

if.then132.1.2:                                   ; preds = %if.end.2
  %add137.1.2 = or disjoint i64 %mul134, 512
  %gep809.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.2, i64 %add137.1.2
  %condval.sroa.7.0.add.ptr145.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep809.1.2, i64 12
  %condval.sroa.6.0.add.ptr145.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep809.1.2, i64 8
  %condval.sroa.5.0.add.ptr145.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep809.1.2, i64 4
  %condval.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %gep809.1.2, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr145.sroa_idx.1.2, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr145.sroa_idx.1.2, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr145.sroa_idx.1.2, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.2, !dbg !82

if.end.1.2:                                       ; preds = %if.then132.1.2, %if.end.2
  %condval.sroa.0.0.1.2 = phi i32 [ %condval.sroa.0.0.copyload.1.2, %if.then132.1.2 ], [ 0, %if.end.2 ], !dbg !83
  %condval.sroa.5.0.1.2 = phi i32 [ %condval.sroa.5.0.copyload.1.2, %if.then132.1.2 ], [ 0, %if.end.2 ], !dbg !83
  %condval.sroa.6.0.1.2 = phi i32 [ %condval.sroa.6.0.copyload.1.2, %if.then132.1.2 ], [ 0, %if.end.2 ], !dbg !83
  %condval.sroa.7.0.1.2 = phi i32 [ %condval.sroa.7.0.copyload.1.2, %if.then132.1.2 ], [ 0, %if.end.2 ], !dbg !83
  store i32 %condval.sroa.0.0.1.2, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr200.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr200.sroa_idx.1.2, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr200.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr200.sroa_idx.1.2, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr200.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr200.sroa_idx.1.2, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.2925 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %210 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2925, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %211 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %16, <4 x float> %210), !dbg !91
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %212 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %18, <4 x float> %211), !dbg !91
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %213 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %22, <4 x float> %212), !dbg !91
  %add267.2 = add nuw nsw i32 %mul118.2, %mul266
  %cmp270.not.2926 = icmp sgt i32 %add267.2, %1, !dbg !92
  %scores.sroa.0.0.vec.extract1476 = extractelement <4 x float> %213, i64 0
  %spec.select2061 = select i1 %cmp270.not.2926, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1476, !dbg !93
  %cmp270.not.1.2.not = icmp slt i32 %add267.2, %1, !dbg !92
  %scores.sroa.0.4.vec.extract1543 = extractelement <4 x float> %213, i64 1, !dbg !93
  %condval_1.0.1.2 = select i1 %cmp270.not.1.2.not, float %scores.sroa.0.4.vec.extract1543, float 0xFFF0000000000000, !dbg !93
  %add268.2.2 = or disjoint i32 %add267.2, 2, !dbg !94
  %cmp270.not.2.2 = icmp sgt i32 %add268.2.2, %1, !dbg !92
  %scores.sroa.0.8.vec.extract1604 = extractelement <4 x float> %213, i64 2, !dbg !93
  %condval_1.0.2.2 = select i1 %cmp270.not.2.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1604, !dbg !93
  %add268.3.2 = or disjoint i32 %add267.2, 3, !dbg !94
  %cmp270.not.3.2 = icmp sgt i32 %add268.3.2, %1, !dbg !92
  %scores.sroa.0.12.vec.extract1665 = extractelement <4 x float> %213, i64 3, !dbg !93
  %condval_1.0.3.2 = select i1 %cmp270.not.3.2, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1665, !dbg !93
  %214 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2061, float 0xFFF0000000000000), !dbg !95
  %215 = tail call contract noundef float @llvm.maxnum.f32(float %214, float %condval_1.0.1.2), !dbg !95
  %216 = tail call contract noundef float @llvm.maxnum.f32(float %215, float %condval_1.0.2.2), !dbg !95
  %217 = tail call contract noundef float @llvm.maxnum.f32(float %216, float %condval_1.0.3.2), !dbg !95
  %218 = bitcast float %217 to i32, !dbg !99
  %219 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !108
  %220 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %219) #11, !dbg !113
  %xor.i.i.i.2 = xor i32 %220, 32, !dbg !114
  %221 = and i32 %220, -64, !dbg !115
  %and.i.i.i.2 = add nsw i32 %221, 64, !dbg !115
  %cmp.not.i.i.i.2 = icmp slt i32 %xor.i.i.i.2, %and.i.i.i.2, !dbg !116
  %cond.i.i.i.2 = select i1 %cmp.not.i.i.i.2, i32 %xor.i.i.i.2, i32 %220, !dbg !117
  %shl.i.i.i.2 = shl i32 %cond.i.i.i.2, 2, !dbg !118
  %222 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.2, i32 %218), !dbg !119
  %223 = bitcast i32 %222 to float, !dbg !120
  %224 = tail call contract noundef float @llvm.maxnum.f32(float %217, float %223), !dbg !121
  %225 = bitcast float %224 to i32, !dbg !129
  %226 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !134
  %227 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %226) #11, !dbg !137
  %xor.i.i.i.i.2 = xor i32 %227, 16, !dbg !138
  %228 = and i32 %227, -64, !dbg !139
  %and.i.i.i.i.2 = add nsw i32 %228, 64, !dbg !139
  %cmp.not.i.i.i.i.2 = icmp slt i32 %xor.i.i.i.i.2, %and.i.i.i.i.2, !dbg !140
  %cond.i.i.i.i.2 = select i1 %cmp.not.i.i.i.i.2, i32 %xor.i.i.i.i.2, i32 %227, !dbg !141
  %shl.i.i.i.i.2 = shl i32 %cond.i.i.i.i.2, 2, !dbg !142
  %229 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.2, i32 %225), !dbg !143
  %230 = bitcast i32 %229 to float, !dbg !144
  %231 = tail call contract noundef float @llvm.maxnum.f32(float %224, float %230), !dbg !145
  %sub.2 = fsub contract float %231, %normalizer.sroa.0.2.1, !dbg !149
  %mul306.2 = fmul contract float %sub.2, 0x3FC7154760000000, !dbg !150
  %cmp307.2 = fcmp contract ogt float %mul306.2, 7.000000e+00, !dbg !151
  %sub311.2 = fsub contract float %normalizer.sroa.0.2.1, %231
  %mul312.2 = fmul contract float %sub311.2, 0x3FC7154760000000
  %cmp.i.i.2 = fcmp contract olt float %mul312.2, -1.260000e+02
  %cond.i.i.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00
  %add.i.i.2 = fadd contract float %mul312.2, %cond.i.i.2
  %232 = tail call contract float @llvm.exp2.f32(float %add.i.i.2)
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %232
  %normalizer.sroa.0.1.2 = select i1 %cmp307.2, float %231, float %normalizer.sroa.0.2.1, !dbg !152
  %sub327.2930 = fsub contract float %spec.select2061, %normalizer.sroa.0.1.2, !dbg !153
  %mul328.2931 = fmul contract float %sub327.2930, 0x3FC7154760000000, !dbg !154
  %add329.2932 = fadd contract float %mul328.2931, 8.000000e+00, !dbg !155
  %cmp.i.i760.2933 = fcmp contract olt float %add329.2932, -1.260000e+02, !dbg !156
  %cond.i.i761.2934 = select contract i1 %cmp.i.i760.2933, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i762.2935 = fadd contract float %add329.2932, %cond.i.i761.2934, !dbg !156
  %233 = tail call contract float @llvm.exp2.f32(float %add.i.i762.2935), !dbg !156
  %cond2.i.i763.2936 = select contract i1 %cmp.i.i760.2933, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i764.2937 = fmul contract float %cond2.i.i763.2936, %233, !dbg !156
  %sub327.1.2 = fsub contract float %condval_1.0.1.2, %normalizer.sroa.0.1.2, !dbg !153
  %mul328.1.2 = fmul contract float %sub327.1.2, 0x3FC7154760000000, !dbg !154
  %add329.1.2 = fadd contract float %mul328.1.2, 8.000000e+00, !dbg !155
  %cmp.i.i760.1.2 = fcmp contract olt float %add329.1.2, -1.260000e+02, !dbg !156
  %cond.i.i761.1.2 = select contract i1 %cmp.i.i760.1.2, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i762.1.2 = fadd contract float %add329.1.2, %cond.i.i761.1.2, !dbg !156
  %234 = tail call contract float @llvm.exp2.f32(float %add.i.i762.1.2), !dbg !156
  %cond2.i.i763.1.2 = select contract i1 %cmp.i.i760.1.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i764.1.2 = fmul contract float %cond2.i.i763.1.2, %234, !dbg !156
  %sub327.2.2 = fsub contract float %condval_1.0.2.2, %normalizer.sroa.0.1.2, !dbg !153
  %mul328.2.2 = fmul contract float %sub327.2.2, 0x3FC7154760000000, !dbg !154
  %add329.2.2 = fadd contract float %mul328.2.2, 8.000000e+00, !dbg !155
  %cmp.i.i760.2.2 = fcmp contract olt float %add329.2.2, -1.260000e+02, !dbg !156
  %cond.i.i761.2.2 = select contract i1 %cmp.i.i760.2.2, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i762.2.2 = fadd contract float %add329.2.2, %cond.i.i761.2.2, !dbg !156
  %235 = tail call contract float @llvm.exp2.f32(float %add.i.i762.2.2), !dbg !156
  %cond2.i.i763.2.2 = select contract i1 %cmp.i.i760.2.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i764.2.2 = fmul contract float %cond2.i.i763.2.2, %235, !dbg !156
  %sub327.3.2 = fsub contract float %condval_1.0.3.2, %normalizer.sroa.0.1.2, !dbg !153
  %mul328.3.2 = fmul contract float %sub327.3.2, 0x3FC7154760000000, !dbg !154
  %add329.3.2 = fadd contract float %mul328.3.2, 8.000000e+00, !dbg !155
  %cmp.i.i760.3.2 = fcmp contract olt float %add329.3.2, -1.260000e+02, !dbg !156
  %cond.i.i761.3.2 = select contract i1 %cmp.i.i760.3.2, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i762.3.2 = fadd contract float %add329.3.2, %cond.i.i761.3.2, !dbg !156
  %236 = tail call contract float @llvm.exp2.f32(float %add.i.i762.3.2), !dbg !156
  %cond2.i.i763.3.2 = select contract i1 %cmp.i.i760.3.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i764.3.2 = fmul contract float %cond2.i.i763.3.2, %236, !dbg !156
  %add344.2938 = fadd contract float %mul.i.i764.2937, 0.000000e+00, !dbg !159
  %add344.1.2 = fadd contract float %add344.2938, %mul.i.i764.1.2, !dbg !159
  %add344.2.2 = fadd contract float %add344.1.2, %mul.i.i764.2.2, !dbg !159
  %add344.3.2 = fadd contract float %add344.2.2, %mul.i.i764.3.2, !dbg !159
  %rescale.sroa.0.0.2 = select i1 %cmp307.2, float %mul.i.i.2, float 1.000000e+00, !dbg !152
  %237 = bitcast float %add344.3.2 to i32, !dbg !160
  %238 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !165
  %239 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %238) #11, !dbg !168
  %xor.i.i.i765.2 = xor i32 %239, 32, !dbg !169
  %240 = and i32 %239, -64, !dbg !170
  %and.i.i.i766.2 = add nsw i32 %240, 64, !dbg !170
  %cmp.not.i.i.i767.2 = icmp slt i32 %xor.i.i.i765.2, %and.i.i.i766.2, !dbg !171
  %cond.i.i.i768.2 = select i1 %cmp.not.i.i.i767.2, i32 %xor.i.i.i765.2, i32 %239, !dbg !172
  %shl.i.i.i769.2 = shl i32 %cond.i.i.i768.2, 2, !dbg !173
  %241 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i769.2, i32 %237), !dbg !174
  %242 = bitcast i32 %241 to float, !dbg !175
  %add.i.i770.2 = fadd contract float %add344.3.2, %242, !dbg !176
  %243 = bitcast float %add.i.i770.2 to i32, !dbg !179
  %244 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !184
  %245 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %244) #11, !dbg !187
  %xor.i.i.i.i771.2 = xor i32 %245, 16, !dbg !188
  %246 = and i32 %245, -64, !dbg !189
  %and.i.i.i.i772.2 = add nsw i32 %246, 64, !dbg !189
  %cmp.not.i.i.i.i773.2 = icmp slt i32 %xor.i.i.i.i771.2, %and.i.i.i.i772.2, !dbg !190
  %cond.i.i.i.i774.2 = select i1 %cmp.not.i.i.i.i773.2, i32 %xor.i.i.i.i771.2, i32 %245, !dbg !191
  %shl.i.i.i.i775.2 = shl i32 %cond.i.i.i.i774.2, 2, !dbg !192
  %247 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i775.2, i32 %243), !dbg !193
  %248 = bitcast i32 %247 to float, !dbg !194
  %add.i.i.i.2 = fadd contract float %add.i.i770.2, %248, !dbg !195
  %cmp353.2 = fcmp contract une float %rescale.sroa.0.0.2, 1.000000e+00, !dbg !197
  %mul357.2 = fmul contract float %denominator.sroa.0.2.1, %rescale.sroa.0.0.2, !dbg !198
  %denominator.sroa.0.1.2 = select i1 %cmp353.2, float %mul357.2, float %denominator.sroa.0.2.1, !dbg !198
  %add362.2 = fadd contract float %denominator.sroa.0.1.2, %add.i.i.i.2, !dbg !199
  %249 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !200
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !200, !noalias !208
  %250 = fptrunc float %mul.i.i764.2937 to half, !dbg !200
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %249), !dbg !200, !noalias !208
  %251 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !213, !noalias !208
  %252 = fptrunc float %mul.i.i764.1.2 to half, !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %251), !dbg !213, !noalias !208
  %__1.sroa.0.0.vec.insert.2 = insertelement <4 x half> poison, half %250, i64 0, !dbg !215
  %__1.sroa.0.2.vec.insert.2 = insertelement <4 x half> %__1.sroa.0.0.vec.insert.2, half %252, i64 1, !dbg !215
  %253 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !218, !noalias !222
  %254 = fptrunc float %mul.i.i764.2.2 to half, !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %253), !dbg !218, !noalias !222
  %255 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !222
  %256 = fptrunc float %mul.i.i764.3.2 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %255), !dbg !227, !noalias !222
  %__1.sroa.0.4.vec.insert.2 = insertelement <4 x half> %__1.sroa.0.2.vec.insert.2, half %254, i64 2, !dbg !229
  %__1.sroa.0.6.vec.insert.2 = insertelement <4 x half> %__1.sroa.0.4.vec.insert.2, half %256, i64 3, !dbg !229
  br i1 %cmp353.2, label %for.body384.preheader.2, label %if.end394.2, !dbg !231

for.body384.preheader.2:                          ; preds = %if.end.1.2
  %output_acc.sroa.0.0.vec.extract1700 = extractelement <4 x float> %output_acc.sroa.0.3, i64 0, !dbg !251
  %mul388.2939 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.0.0.vec.extract1700, !dbg !252
  %output_acc.sroa.0.0.vec.insert1702 = insertelement <4 x float> poison, float %mul388.2939, i64 0, !dbg !253
  %output_acc.sroa.0.4.vec.extract1721 = extractelement <4 x float> %output_acc.sroa.0.3, i64 1, !dbg !251
  %mul388.1.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.0.4.vec.extract1721, !dbg !252
  %output_acc.sroa.0.4.vec.insert1723 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert1702, float %mul388.1.2, i64 1, !dbg !253
  %output_acc.sroa.0.8.vec.extract1742 = extractelement <4 x float> %output_acc.sroa.0.3, i64 2, !dbg !251
  %mul388.2.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.0.8.vec.extract1742, !dbg !252
  %output_acc.sroa.0.8.vec.insert1744 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert1723, float %mul388.2.2, i64 2, !dbg !253
  %output_acc.sroa.0.12.vec.extract1763 = extractelement <4 x float> %output_acc.sroa.0.3, i64 3, !dbg !251
  %mul388.3.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.0.12.vec.extract1763, !dbg !252
  %output_acc.sroa.0.12.vec.insert1765 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert1744, float %mul388.3.2, i64 3, !dbg !253
  %output_acc.sroa.58.16.vec.extract1788 = extractelement <4 x float> %output_acc.sroa.58.3, i64 0, !dbg !251
  %mul388.4.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.58.16.vec.extract1788, !dbg !252
  %output_acc.sroa.58.16.vec.insert1790 = insertelement <4 x float> poison, float %mul388.4.2, i64 0, !dbg !253
  %output_acc.sroa.58.20.vec.extract1809 = extractelement <4 x float> %output_acc.sroa.58.3, i64 1, !dbg !251
  %mul388.5.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.58.20.vec.extract1809, !dbg !252
  %output_acc.sroa.58.20.vec.insert1811 = insertelement <4 x float> %output_acc.sroa.58.16.vec.insert1790, float %mul388.5.2, i64 1, !dbg !253
  %output_acc.sroa.58.24.vec.extract1830 = extractelement <4 x float> %output_acc.sroa.58.3, i64 2, !dbg !251
  %mul388.6.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.58.24.vec.extract1830, !dbg !252
  %output_acc.sroa.58.24.vec.insert1832 = insertelement <4 x float> %output_acc.sroa.58.20.vec.insert1811, float %mul388.6.2, i64 2, !dbg !253
  %output_acc.sroa.58.28.vec.extract1851 = extractelement <4 x float> %output_acc.sroa.58.3, i64 3, !dbg !251
  %mul388.7.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.58.28.vec.extract1851, !dbg !252
  %output_acc.sroa.58.28.vec.insert1853 = insertelement <4 x float> %output_acc.sroa.58.24.vec.insert1832, float %mul388.7.2, i64 3, !dbg !253
  %output_acc.sroa.114.32.vec.extract1876 = extractelement <4 x float> %output_acc.sroa.114.3, i64 0, !dbg !251
  %mul388.8.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.114.32.vec.extract1876, !dbg !252
  %output_acc.sroa.114.32.vec.insert1878 = insertelement <4 x float> poison, float %mul388.8.2, i64 0, !dbg !253
  %output_acc.sroa.114.36.vec.extract1897 = extractelement <4 x float> %output_acc.sroa.114.3, i64 1, !dbg !251
  %mul388.9.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.114.36.vec.extract1897, !dbg !252
  %output_acc.sroa.114.36.vec.insert1899 = insertelement <4 x float> %output_acc.sroa.114.32.vec.insert1878, float %mul388.9.2, i64 1, !dbg !253
  %output_acc.sroa.114.40.vec.extract1918 = extractelement <4 x float> %output_acc.sroa.114.3, i64 2, !dbg !251
  %mul388.10.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.114.40.vec.extract1918, !dbg !252
  %output_acc.sroa.114.40.vec.insert1920 = insertelement <4 x float> %output_acc.sroa.114.36.vec.insert1899, float %mul388.10.2, i64 2, !dbg !253
  %output_acc.sroa.114.44.vec.extract1939 = extractelement <4 x float> %output_acc.sroa.114.3, i64 3, !dbg !251
  %mul388.11.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.114.44.vec.extract1939, !dbg !252
  %output_acc.sroa.114.44.vec.insert1941 = insertelement <4 x float> %output_acc.sroa.114.40.vec.insert1920, float %mul388.11.2, i64 3, !dbg !253
  %output_acc.sroa.170.48.vec.extract1964 = extractelement <4 x float> %output_acc.sroa.170.3, i64 0, !dbg !251
  %mul388.12.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.170.48.vec.extract1964, !dbg !252
  %output_acc.sroa.170.48.vec.insert1966 = insertelement <4 x float> poison, float %mul388.12.2, i64 0, !dbg !253
  %output_acc.sroa.170.52.vec.extract1985 = extractelement <4 x float> %output_acc.sroa.170.3, i64 1, !dbg !251
  %mul388.13.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.170.52.vec.extract1985, !dbg !252
  %output_acc.sroa.170.52.vec.insert1987 = insertelement <4 x float> %output_acc.sroa.170.48.vec.insert1966, float %mul388.13.2, i64 1, !dbg !253
  %output_acc.sroa.170.56.vec.extract2006 = extractelement <4 x float> %output_acc.sroa.170.3, i64 2, !dbg !251
  %mul388.14.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.170.56.vec.extract2006, !dbg !252
  %output_acc.sroa.170.56.vec.insert2008 = insertelement <4 x float> %output_acc.sroa.170.52.vec.insert1987, float %mul388.14.2, i64 2, !dbg !253
  %output_acc.sroa.170.60.vec.extract2027 = extractelement <4 x float> %output_acc.sroa.170.3, i64 3, !dbg !251
  %mul388.15.2 = fmul contract float %rescale.sroa.0.0.2, %output_acc.sroa.170.60.vec.extract2027, !dbg !252
  %output_acc.sroa.170.60.vec.insert2029 = insertelement <4 x float> %output_acc.sroa.170.56.vec.insert2008, float %mul388.15.2, i64 3, !dbg !253
  br label %if.end394.2

if.end394.2:                                      ; preds = %for.body384.preheader.2, %if.end.1.2
  %output_acc.sroa.170.4 = phi <4 x float> [ %output_acc.sroa.170.60.vec.insert2029, %for.body384.preheader.2 ], [ %output_acc.sroa.170.3, %if.end.1.2 ], !dbg !83
  %output_acc.sroa.114.4 = phi <4 x float> [ %output_acc.sroa.114.44.vec.insert1941, %for.body384.preheader.2 ], [ %output_acc.sroa.114.3, %if.end.1.2 ], !dbg !83
  %output_acc.sroa.58.4 = phi <4 x float> [ %output_acc.sroa.58.28.vec.insert1853, %for.body384.preheader.2 ], [ %output_acc.sroa.58.3, %if.end.1.2 ], !dbg !83
  %output_acc.sroa.0.4 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1765, %for.body384.preheader.2 ], [ %output_acc.sroa.0.3, %if.end.1.2 ], !dbg !83
  %shr402.2 = lshr exact i32 %mul118.2, 2
  %add403.2 = add nuw nsw i32 %shr402.2, %shr400
  %cmp404.2 = icmp ult i32 %add403.2, 128
  br i1 %cmp404.2, label %if.then405.2944, label %if.end439.2948, !dbg !232

if.then405.2944:                                  ; preds = %if.end394.2
  %257 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !233
  %258 = getelementptr inbounds i8, ptr addrspace(4) %257, i64 %.idx.2, !dbg !233
  %condval_2.sroa.0.0.copyload.2941 = load i32, ptr addrspace(4) %258, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr425.sroa_idx.2942 = getelementptr inbounds i8, ptr addrspace(4) %258, i64 4, !dbg !234
  %condval_2.sroa.5.0.copyload.2943 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr425.sroa_idx.2942, align 4, !dbg !234, !tbaa !30
  br label %if.end439.2948, !dbg !235

if.end439.2948:                                   ; preds = %if.then405.2944, %if.end394.2
  %condval_2.sroa.5.0.2945 = phi i32 [ %condval_2.sroa.5.0.copyload.2943, %if.then405.2944 ], [ 0, %if.end394.2 ], !dbg !83
  %condval_2.sroa.0.0.2946 = phi i32 [ %condval_2.sroa.0.0.copyload.2941, %if.then405.2944 ], [ 0, %if.end394.2 ], !dbg !83
  br i1 %cmp404.2, label %if.then405.1.2, label %if.end439.1.2, !dbg !232

if.then405.1.2:                                   ; preds = %if.end439.2948
  %259 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !233
  %260 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 %.idx.2, !dbg !233
  %add.ptr425.1.2 = getelementptr inbounds i8, ptr addrspace(4) %260, i64 128, !dbg !233
  %condval_2.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %add.ptr425.1.2, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr425.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %260, i64 132, !dbg !234
  %condval_2.sroa.5.0.copyload.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr425.sroa_idx.1.2, align 4, !dbg !234, !tbaa !30
  br label %if.end439.1.2, !dbg !235

if.end439.1.2:                                    ; preds = %if.then405.1.2, %if.end439.2948
  %condval_2.sroa.5.0.1.2 = phi i32 [ %condval_2.sroa.5.0.copyload.1.2, %if.then405.1.2 ], [ 0, %if.end439.2948 ], !dbg !83
  %condval_2.sroa.0.0.1.2 = phi i32 [ %condval_2.sroa.0.0.copyload.1.2, %if.then405.1.2 ], [ 0, %if.end439.2948 ], !dbg !83
  br i1 %cmp404.2, label %if.then405.2.2, label %if.end439.2.2, !dbg !232

if.then405.2.2:                                   ; preds = %if.end439.1.2
  %261 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !233
  %262 = getelementptr inbounds i8, ptr addrspace(4) %261, i64 %.idx.2, !dbg !233
  %add.ptr425.2.2 = getelementptr inbounds i8, ptr addrspace(4) %262, i64 256, !dbg !233
  %condval_2.sroa.0.0.copyload.2.2 = load i32, ptr addrspace(4) %add.ptr425.2.2, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr425.sroa_idx.2.2 = getelementptr inbounds i8, ptr addrspace(4) %262, i64 260, !dbg !234
  %condval_2.sroa.5.0.copyload.2.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr425.sroa_idx.2.2, align 4, !dbg !234, !tbaa !30
  br label %if.end439.2.2, !dbg !235

if.end439.2.2:                                    ; preds = %if.then405.2.2, %if.end439.1.2
  %condval_2.sroa.5.0.2.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2.2, %if.then405.2.2 ], [ 0, %if.end439.1.2 ], !dbg !83
  %condval_2.sroa.0.0.2.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2.2, %if.then405.2.2 ], [ 0, %if.end439.1.2 ], !dbg !83
  br i1 %cmp404.2, label %if.then405.3.2, label %if.end439.3.2, !dbg !232

if.then405.3.2:                                   ; preds = %if.end439.2.2
  %263 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !233
  %264 = getelementptr inbounds i8, ptr addrspace(4) %263, i64 %.idx.2, !dbg !233
  %add.ptr425.3.2 = getelementptr inbounds i8, ptr addrspace(4) %264, i64 384, !dbg !233
  %condval_2.sroa.0.0.copyload.3.2 = load i32, ptr addrspace(4) %add.ptr425.3.2, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr425.sroa_idx.3.2 = getelementptr inbounds i8, ptr addrspace(4) %264, i64 388, !dbg !234
  %condval_2.sroa.5.0.copyload.3.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr425.sroa_idx.3.2, align 4, !dbg !234, !tbaa !30
  br label %if.end439.3.2, !dbg !235

if.end439.3.2:                                    ; preds = %if.then405.3.2, %if.end439.2.2
  %condval_2.sroa.5.0.3.2 = phi i32 [ %condval_2.sroa.5.0.copyload.3.2, %if.then405.3.2 ], [ 0, %if.end439.2.2 ], !dbg !83
  %condval_2.sroa.0.0.3.2 = phi i32 [ %condval_2.sroa.0.0.copyload.3.2, %if.then405.3.2 ], [ 0, %if.end439.2.2 ], !dbg !83
  %265 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul469, !dbg !236
  %.idx803.2955 = shl nuw nsw i32 %xor, 3, !dbg !236
  %266 = getelementptr inbounds i8, ptr addrspace(3) %265, i32 %.idx803.2955, !dbg !236
  %add.ptr481.2956 = getelementptr inbounds i8, ptr addrspace(3) %266, i32 2048, !dbg !236
  %267 = and i32 %condval_2.sroa.0.0.3.2, 65535, !dbg !237
  %v_column_local.sroa.66.0.insert.ext1281 = zext nneg i32 %267 to i64, !dbg !237
  %v_column_local.sroa.66.0.insert.shift1282 = shl nuw i64 %v_column_local.sroa.66.0.insert.ext1281, 48, !dbg !237
  %268 = and i32 %condval_2.sroa.0.0.2.2, 65535, !dbg !237
  %v_column_local.sroa.50.0.insert.ext1206 = zext nneg i32 %268 to i64, !dbg !237
  %v_column_local.sroa.50.0.insert.shift1207 = shl nuw nsw i64 %v_column_local.sroa.50.0.insert.ext1206, 32, !dbg !237
  %v_column_local.sroa.50.0.insert.insert1209 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1282, %v_column_local.sroa.50.0.insert.shift1207, !dbg !237
  %269 = shl i32 %condval_2.sroa.0.0.1.2, 16, !dbg !237
  %v_column_local.sroa.34.0.insert.shift1132 = zext i32 %269 to i64, !dbg !237
  %v_column_local.sroa.34.0.insert.insert1134 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1209, %v_column_local.sroa.34.0.insert.shift1132, !dbg !237
  %270 = and i32 %condval_2.sroa.0.0.2946, 65535, !dbg !237
  %v_column_local.sroa.0.0.insert.ext1064 = zext nneg i32 %270 to i64, !dbg !237
  %v_column_local.sroa.0.0.insert.insert1066 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1134, %v_column_local.sroa.0.0.insert.ext1064, !dbg !237
  store i64 %v_column_local.sroa.0.0.insert.insert1066, ptr addrspace(3) %add.ptr481.2956, align 8, !dbg !237
  %v_tile_local.sroa.0.2.extract.shift1330 = lshr i32 %condval_2.sroa.0.0.2946, 16, !dbg !238
  %v_tile_local.sroa.0.2.extract.trunc1331 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1330 to i64, !dbg !238
  %v_tile_local.sroa.26.10.extract.shift1360 = and i32 %condval_2.sroa.0.0.1.2, -65536, !dbg !237
  %v_tile_local.sroa.50.18.extract.shift1390 = lshr i32 %condval_2.sroa.0.0.2.2, 16, !dbg !238
  %v_tile_local.sroa.50.18.extract.trunc1391 = zext nneg i32 %v_tile_local.sroa.50.18.extract.shift1390 to i64, !dbg !238
  %v_tile_local.sroa.74.26.extract.shift1420 = lshr i32 %condval_2.sroa.0.0.3.2, 16, !dbg !238
  %v_tile_local.sroa.74.26.extract.trunc1421 = zext nneg i32 %v_tile_local.sroa.74.26.extract.shift1420 to i64, !dbg !238
  %add470.1.2 = or disjoint i32 %mul469, 256, !dbg !239
  %271 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add470.1.2, !dbg !236
  %xor476.1.2 = shl nuw nsw i32 %xor, 3, !dbg !236
  %.idx803.1.2 = xor i32 %xor476.1.2, 8, !dbg !236
  %272 = getelementptr inbounds i8, ptr addrspace(3) %271, i32 %.idx803.1.2, !dbg !236
  %add.ptr481.1.2 = getelementptr inbounds i8, ptr addrspace(3) %272, i32 2048, !dbg !236
  %v_column_local.sroa.66.0.insert.shift1287 = shl nuw i64 %v_tile_local.sroa.74.26.extract.trunc1421, 48, !dbg !237
  %v_column_local.sroa.50.0.insert.shift1212 = shl nuw nsw i64 %v_tile_local.sroa.50.18.extract.trunc1391, 32, !dbg !237
  %v_column_local.sroa.50.0.insert.insert1214 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1287, %v_column_local.sroa.50.0.insert.shift1212, !dbg !237
  %v_column_local.sroa.34.0.insert.shift1137 = zext i32 %v_tile_local.sroa.26.10.extract.shift1360 to i64, !dbg !237
  %v_column_local.sroa.34.0.insert.insert1139 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1214, %v_column_local.sroa.34.0.insert.shift1137, !dbg !237
  %v_column_local.sroa.0.0.insert.insert1070 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1139, %v_tile_local.sroa.0.2.extract.trunc1331, !dbg !237
  store i64 %v_column_local.sroa.0.0.insert.insert1070, ptr addrspace(3) %add.ptr481.1.2, align 8, !dbg !237
  %add470.2.2 = or disjoint i32 %mul469, 512, !dbg !239
  %273 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add470.2.2, !dbg !236
  %xor476.2.2 = shl nuw nsw i32 %xor, 3, !dbg !236
  %.idx803.2.2 = xor i32 %xor476.2.2, 16, !dbg !236
  %274 = getelementptr inbounds i8, ptr addrspace(3) %273, i32 %.idx803.2.2, !dbg !236
  %add.ptr481.2.2 = getelementptr inbounds i8, ptr addrspace(3) %274, i32 2048, !dbg !236
  %275 = and i32 %condval_2.sroa.5.0.3.2, 65535, !dbg !237
  %v_column_local.sroa.66.0.insert.ext1291 = zext nneg i32 %275 to i64, !dbg !237
  %v_column_local.sroa.66.0.insert.shift1292 = shl nuw i64 %v_column_local.sroa.66.0.insert.ext1291, 48, !dbg !237
  %276 = and i32 %condval_2.sroa.5.0.2.2, 65535, !dbg !237
  %v_column_local.sroa.50.0.insert.ext1216 = zext nneg i32 %276 to i64, !dbg !237
  %v_column_local.sroa.50.0.insert.shift1217 = shl nuw nsw i64 %v_column_local.sroa.50.0.insert.ext1216, 32, !dbg !237
  %v_column_local.sroa.50.0.insert.insert1219 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1292, %v_column_local.sroa.50.0.insert.shift1217, !dbg !237
  %277 = shl i32 %condval_2.sroa.5.0.1.2, 16, !dbg !237
  %v_column_local.sroa.34.0.insert.shift1142 = zext i32 %277 to i64, !dbg !237
  %v_column_local.sroa.34.0.insert.insert1144 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1219, %v_column_local.sroa.34.0.insert.shift1142, !dbg !237
  %278 = and i32 %condval_2.sroa.5.0.2945, 65535, !dbg !237
  %v_column_local.sroa.0.0.insert.ext1072 = zext nneg i32 %278 to i64, !dbg !237
  %v_column_local.sroa.0.0.insert.insert1074 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1144, %v_column_local.sroa.0.0.insert.ext1072, !dbg !237
  store i64 %v_column_local.sroa.0.0.insert.insert1074, ptr addrspace(3) %add.ptr481.2.2, align 8, !dbg !237
  %v_tile_local.sroa.14.6.extract.shift1345 = lshr i32 %condval_2.sroa.5.0.2945, 16, !dbg !238
  %v_tile_local.sroa.14.6.extract.trunc1346 = zext nneg i32 %v_tile_local.sroa.14.6.extract.shift1345 to i64, !dbg !238
  %v_tile_local.sroa.38.14.extract.shift1375 = and i32 %condval_2.sroa.5.0.1.2, -65536, !dbg !237
  %v_tile_local.sroa.62.22.extract.shift1405 = lshr i32 %condval_2.sroa.5.0.2.2, 16, !dbg !238
  %v_tile_local.sroa.62.22.extract.trunc1406 = zext nneg i32 %v_tile_local.sroa.62.22.extract.shift1405 to i64, !dbg !238
  %v_tile_local.sroa.86.30.extract.shift1435 = lshr i32 %condval_2.sroa.5.0.3.2, 16, !dbg !238
  %v_tile_local.sroa.86.30.extract.trunc1436 = zext nneg i32 %v_tile_local.sroa.86.30.extract.shift1435 to i64, !dbg !238
  %add470.3.2 = or disjoint i32 %mul469, 768, !dbg !239
  %279 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add470.3.2, !dbg !236
  %xor476.3.2 = shl nuw nsw i32 %xor, 3, !dbg !236
  %.idx803.3.2 = xor i32 %xor476.3.2, 24, !dbg !236
  %280 = getelementptr inbounds i8, ptr addrspace(3) %279, i32 %.idx803.3.2, !dbg !236
  %add.ptr481.3.2 = getelementptr inbounds i8, ptr addrspace(3) %280, i32 2048, !dbg !236
  %v_column_local.sroa.66.0.insert.shift1297 = shl nuw i64 %v_tile_local.sroa.86.30.extract.trunc1436, 48, !dbg !237
  %v_column_local.sroa.50.0.insert.shift1222 = shl nuw nsw i64 %v_tile_local.sroa.62.22.extract.trunc1406, 32, !dbg !237
  %v_column_local.sroa.50.0.insert.insert1224 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1297, %v_column_local.sroa.50.0.insert.shift1222, !dbg !237
  %v_column_local.sroa.34.0.insert.shift1147 = zext i32 %v_tile_local.sroa.38.14.extract.shift1375 to i64, !dbg !237
  %v_column_local.sroa.34.0.insert.insert1149 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1224, %v_column_local.sroa.34.0.insert.shift1147, !dbg !237
  %v_column_local.sroa.0.0.insert.insert1078 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1149, %v_tile_local.sroa.14.6.extract.trunc1346, !dbg !237
  store i64 %v_column_local.sroa.0.0.insert.insert1078, ptr addrspace(3) %add.ptr481.3.2, align 8, !dbg !237
  fence syncscope("warp") release, !dbg !240
  tail call void @llvm.mxc.barrier.warp(), !dbg !243
  fence syncscope("warp") acquire, !dbg !244
  %add498.2958 = or disjoint i32 %mul491, %mul497, !dbg !245
  %281 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add498.2958, !dbg !246
  %.idx802.2959 = shl nuw nsw i32 %29, 3, !dbg !246
  %282 = getelementptr inbounds i8, ptr addrspace(3) %281, i32 %.idx802.2959, !dbg !246
  %add.ptr509.2960 = getelementptr inbounds i8, ptr addrspace(3) %282, i32 2048, !dbg !246
  %283 = load <4 x half>, ptr addrspace(3) %add.ptr509.2960, align 8, !dbg !247
  %add493.1.2 = or disjoint i32 %mul491, %mul497, !dbg !245
  %add498.1.2 = or disjoint i32 %add493.1.2, 64, !dbg !245
  %284 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add498.1.2, !dbg !246
  %xor504.1.2 = shl nuw nsw i32 %29, 3, !dbg !246
  %.idx802.1.2 = xor i32 %xor504.1.2, 8, !dbg !246
  %285 = getelementptr inbounds i8, ptr addrspace(3) %284, i32 %.idx802.1.2, !dbg !246
  %add.ptr509.1.2 = getelementptr inbounds i8, ptr addrspace(3) %285, i32 2048, !dbg !246
  %286 = load <4 x half>, ptr addrspace(3) %add.ptr509.1.2, align 8, !dbg !247
  %add493.2.2 = or disjoint i32 %mul491, %mul497, !dbg !245
  %add498.2.2 = or disjoint i32 %add493.2.2, 128, !dbg !245
  %287 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add498.2.2, !dbg !246
  %xor504.2.2 = shl nuw nsw i32 %29, 3, !dbg !246
  %.idx802.2.2 = xor i32 %xor504.2.2, 16, !dbg !246
  %288 = getelementptr inbounds i8, ptr addrspace(3) %287, i32 %.idx802.2.2, !dbg !246
  %add.ptr509.2.2 = getelementptr inbounds i8, ptr addrspace(3) %288, i32 2048, !dbg !246
  %289 = load <4 x half>, ptr addrspace(3) %add.ptr509.2.2, align 8, !dbg !247
  %add493.3.2 = or disjoint i32 %mul491, %mul497, !dbg !245
  %add498.3.2 = or disjoint i32 %add493.3.2, 192, !dbg !245
  %290 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add498.3.2, !dbg !246
  %xor504.3.2 = shl nuw nsw i32 %29, 3, !dbg !246
  %.idx802.3.2 = xor i32 %xor504.3.2, 24, !dbg !246
  %291 = getelementptr inbounds i8, ptr addrspace(3) %290, i32 %.idx802.3.2, !dbg !246
  %add.ptr509.3.2 = getelementptr inbounds i8, ptr addrspace(3) %291, i32 2048, !dbg !246
  %292 = load <4 x half>, ptr addrspace(3) %add.ptr509.3.2, align 8, !dbg !247
  %293 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %283, <4 x half> %__1.sroa.0.6.vec.insert.2, <4 x float> %output_acc.sroa.0.4), !dbg !248
  %294 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %286, <4 x half> %__1.sroa.0.6.vec.insert.2, <4 x float> %output_acc.sroa.58.4), !dbg !248
  %295 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %289, <4 x half> %__1.sroa.0.6.vec.insert.2, <4 x float> %output_acc.sroa.114.4), !dbg !248
  %296 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %292, <4 x half> %__1.sroa.0.6.vec.insert.2, <4 x float> %output_acc.sroa.170.4), !dbg !248
  br label %if.end535.2, !dbg !249

if.end535.2:                                      ; preds = %if.end439.3.2, %if.end535.1
  %output_acc.sroa.170.5 = phi <4 x float> [ %output_acc.sroa.170.3, %if.end535.1 ], [ %296, %if.end439.3.2 ], !dbg !83
  %output_acc.sroa.114.5 = phi <4 x float> [ %output_acc.sroa.114.3, %if.end535.1 ], [ %295, %if.end439.3.2 ], !dbg !83
  %output_acc.sroa.58.5 = phi <4 x float> [ %output_acc.sroa.58.3, %if.end535.1 ], [ %294, %if.end439.3.2 ], !dbg !83
  %output_acc.sroa.0.5 = phi <4 x float> [ %output_acc.sroa.0.3, %if.end535.1 ], [ %293, %if.end439.3.2 ], !dbg !83
  %normalizer.sroa.0.2.2 = phi float [ %normalizer.sroa.0.2.1, %if.end535.1 ], [ %normalizer.sroa.0.1.2, %if.end439.3.2 ], !dbg !83
  %denominator.sroa.0.2.2 = phi float [ %denominator.sroa.0.2.1, %if.end535.1 ], [ %add362.2, %if.end439.3.2 ], !dbg !83
  %297 = or disjoint i64 %30, 3, !dbg !250
  %arrayidx117.3 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %297, !dbg !69
  %298 = load i32, ptr addrspace(1) %arrayidx117.3, align 4, !dbg !69, !tbaa !30
  %mul118.3 = shl nsw i32 %298, 4, !dbg !70
  %cmp119.3 = icmp slt i32 %298, 0, !dbg !71
  %cmp121.not.3 = icmp sgt i32 %mul118.3, %1
  %or.cond.3 = select i1 %cmp119.3, i1 true, i1 %cmp121.not.3, !dbg !72
  br i1 %or.cond.3, label %if.end535.3, label %if.then.3, !dbg !72

if.then.3:                                        ; preds = %if.end535.2
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add128.3 = add nuw nsw i32 %mul118.3, %shr127
  %conv138.3 = zext nneg i32 %mul118.3 to i64
  %.idx.3 = shl nuw nsw i64 %conv138.3, 7
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep826, i64 %.idx.3, !dbg !78
  %cmp131.3 = icmp ult i32 %add128.3, 512, !dbg !79
  br i1 %cmp131.3, label %if.then132.3, label %if.end.3, !dbg !80

if.then132.3:                                     ; preds = %if.then.3
  %gep809.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.3, i64 %mul134
  %condval.sroa.7.0.add.ptr145.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep809.3, i64 12
  %condval.sroa.6.0.add.ptr145.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep809.3, i64 8
  %condval.sroa.5.0.add.ptr145.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep809.3, i64 4
  %condval.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %gep809.3, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr145.sroa_idx.3, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr145.sroa_idx.3, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr145.sroa_idx.3, align 4, !dbg !81, !tbaa !30
  br label %if.end.3, !dbg !82

if.end.3:                                         ; preds = %if.then132.3, %if.then.3
  %condval.sroa.0.0.3 = phi i32 [ %condval.sroa.0.0.copyload.3, %if.then132.3 ], [ 0, %if.then.3 ], !dbg !83
  %condval.sroa.5.0.3 = phi i32 [ %condval.sroa.5.0.copyload.3, %if.then132.3 ], [ 0, %if.then.3 ], !dbg !83
  %condval.sroa.6.0.3 = phi i32 [ %condval.sroa.6.0.copyload.3, %if.then132.3 ], [ 0, %if.then.3 ], !dbg !83
  %condval.sroa.7.0.3 = phi i32 [ %condval.sroa.7.0.copyload.3, %if.then132.3 ], [ 0, %if.then.3 ], !dbg !83
  store i32 %condval.sroa.0.0.3, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr200.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr200.sroa_idx.3, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr200.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr200.sroa_idx.3, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr200.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr200.sroa_idx.3, align 4, !dbg !84, !tbaa !30
  %cmp131.1.3 = icmp ult i32 %add128.3, 504, !dbg !79
  br i1 %cmp131.1.3, label %if.then132.1.3, label %if.end.1.3, !dbg !80

if.then132.1.3:                                   ; preds = %if.end.3
  %add137.1.3 = or disjoint i64 %mul134, 512
  %gep809.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.3, i64 %add137.1.3
  %condval.sroa.7.0.add.ptr145.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep809.1.3, i64 12
  %condval.sroa.6.0.add.ptr145.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep809.1.3, i64 8
  %condval.sroa.5.0.add.ptr145.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep809.1.3, i64 4
  %condval.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %gep809.1.3, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr145.sroa_idx.1.3, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr145.sroa_idx.1.3, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr145.sroa_idx.1.3, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.3, !dbg !82

if.end.1.3:                                       ; preds = %if.then132.1.3, %if.end.3
  %condval.sroa.0.0.1.3 = phi i32 [ %condval.sroa.0.0.copyload.1.3, %if.then132.1.3 ], [ 0, %if.end.3 ], !dbg !83
  %condval.sroa.5.0.1.3 = phi i32 [ %condval.sroa.5.0.copyload.1.3, %if.then132.1.3 ], [ 0, %if.end.3 ], !dbg !83
  %condval.sroa.6.0.1.3 = phi i32 [ %condval.sroa.6.0.copyload.1.3, %if.then132.1.3 ], [ 0, %if.end.3 ], !dbg !83
  %condval.sroa.7.0.1.3 = phi i32 [ %condval.sroa.7.0.copyload.1.3, %if.then132.1.3 ], [ 0, %if.end.3 ], !dbg !83
  store i32 %condval.sroa.0.0.1.3, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr200.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr200.sroa_idx.1.3, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr200.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr200.sroa_idx.1.3, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr200.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr200.sroa_idx.1.3, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.3968 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %299 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3968, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %300 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %16, <4 x float> %299), !dbg !91
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %301 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %18, <4 x float> %300), !dbg !91
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %302 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %22, <4 x float> %301), !dbg !91
  %add267.3 = add nuw nsw i32 %mul118.3, %mul266
  %cmp270.not.3969 = icmp sgt i32 %add267.3, %1, !dbg !92
  %scores.sroa.0.0.vec.extract1492 = extractelement <4 x float> %302, i64 0
  %spec.select2062 = select i1 %cmp270.not.3969, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1492, !dbg !93
  %cmp270.not.1.3.not = icmp slt i32 %add267.3, %1, !dbg !92
  %scores.sroa.0.4.vec.extract1555 = extractelement <4 x float> %302, i64 1, !dbg !93
  %condval_1.0.1.3 = select i1 %cmp270.not.1.3.not, float %scores.sroa.0.4.vec.extract1555, float 0xFFF0000000000000, !dbg !93
  %add268.2.3 = or disjoint i32 %add267.3, 2, !dbg !94
  %cmp270.not.2.3 = icmp sgt i32 %add268.2.3, %1, !dbg !92
  %scores.sroa.0.8.vec.extract1616 = extractelement <4 x float> %302, i64 2, !dbg !93
  %condval_1.0.2.3 = select i1 %cmp270.not.2.3, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1616, !dbg !93
  %add268.3.3 = or disjoint i32 %add267.3, 3, !dbg !94
  %cmp270.not.3.3 = icmp sgt i32 %add268.3.3, %1, !dbg !92
  %scores.sroa.0.12.vec.extract1677 = extractelement <4 x float> %302, i64 3, !dbg !93
  %condval_1.0.3.3 = select i1 %cmp270.not.3.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1677, !dbg !93
  %303 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2062, float 0xFFF0000000000000), !dbg !95
  %304 = tail call contract noundef float @llvm.maxnum.f32(float %303, float %condval_1.0.1.3), !dbg !95
  %305 = tail call contract noundef float @llvm.maxnum.f32(float %304, float %condval_1.0.2.3), !dbg !95
  %306 = tail call contract noundef float @llvm.maxnum.f32(float %305, float %condval_1.0.3.3), !dbg !95
  %307 = bitcast float %306 to i32, !dbg !99
  %308 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !108
  %309 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %308) #11, !dbg !113
  %xor.i.i.i.3 = xor i32 %309, 32, !dbg !114
  %310 = and i32 %309, -64, !dbg !115
  %and.i.i.i.3 = add nsw i32 %310, 64, !dbg !115
  %cmp.not.i.i.i.3 = icmp slt i32 %xor.i.i.i.3, %and.i.i.i.3, !dbg !116
  %cond.i.i.i.3 = select i1 %cmp.not.i.i.i.3, i32 %xor.i.i.i.3, i32 %309, !dbg !117
  %shl.i.i.i.3 = shl i32 %cond.i.i.i.3, 2, !dbg !118
  %311 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.3, i32 %307), !dbg !119
  %312 = bitcast i32 %311 to float, !dbg !120
  %313 = tail call contract noundef float @llvm.maxnum.f32(float %306, float %312), !dbg !121
  %314 = bitcast float %313 to i32, !dbg !129
  %315 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !134
  %316 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %315) #11, !dbg !137
  %xor.i.i.i.i.3 = xor i32 %316, 16, !dbg !138
  %317 = and i32 %316, -64, !dbg !139
  %and.i.i.i.i.3 = add nsw i32 %317, 64, !dbg !139
  %cmp.not.i.i.i.i.3 = icmp slt i32 %xor.i.i.i.i.3, %and.i.i.i.i.3, !dbg !140
  %cond.i.i.i.i.3 = select i1 %cmp.not.i.i.i.i.3, i32 %xor.i.i.i.i.3, i32 %316, !dbg !141
  %shl.i.i.i.i.3 = shl i32 %cond.i.i.i.i.3, 2, !dbg !142
  %318 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.3, i32 %314), !dbg !143
  %319 = bitcast i32 %318 to float, !dbg !144
  %320 = tail call contract noundef float @llvm.maxnum.f32(float %313, float %319), !dbg !145
  %sub.3 = fsub contract float %320, %normalizer.sroa.0.2.2, !dbg !149
  %mul306.3 = fmul contract float %sub.3, 0x3FC7154760000000, !dbg !150
  %cmp307.3 = fcmp contract ogt float %mul306.3, 7.000000e+00, !dbg !151
  %sub311.3 = fsub contract float %normalizer.sroa.0.2.2, %320
  %mul312.3 = fmul contract float %sub311.3, 0x3FC7154760000000
  %cmp.i.i.3 = fcmp contract olt float %mul312.3, -1.260000e+02
  %cond.i.i.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00
  %add.i.i.3 = fadd contract float %mul312.3, %cond.i.i.3
  %321 = tail call contract float @llvm.exp2.f32(float %add.i.i.3)
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %321
  %normalizer.sroa.0.1.3 = select i1 %cmp307.3, float %320, float %normalizer.sroa.0.2.2, !dbg !152
  %sub327.3973 = fsub contract float %spec.select2062, %normalizer.sroa.0.1.3, !dbg !153
  %mul328.3974 = fmul contract float %sub327.3973, 0x3FC7154760000000, !dbg !154
  %add329.3975 = fadd contract float %mul328.3974, 8.000000e+00, !dbg !155
  %cmp.i.i760.3976 = fcmp contract olt float %add329.3975, -1.260000e+02, !dbg !156
  %cond.i.i761.3977 = select contract i1 %cmp.i.i760.3976, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i762.3978 = fadd contract float %add329.3975, %cond.i.i761.3977, !dbg !156
  %322 = tail call contract float @llvm.exp2.f32(float %add.i.i762.3978), !dbg !156
  %cond2.i.i763.3979 = select contract i1 %cmp.i.i760.3976, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i764.3980 = fmul contract float %cond2.i.i763.3979, %322, !dbg !156
  %sub327.1.3 = fsub contract float %condval_1.0.1.3, %normalizer.sroa.0.1.3, !dbg !153
  %mul328.1.3 = fmul contract float %sub327.1.3, 0x3FC7154760000000, !dbg !154
  %add329.1.3 = fadd contract float %mul328.1.3, 8.000000e+00, !dbg !155
  %cmp.i.i760.1.3 = fcmp contract olt float %add329.1.3, -1.260000e+02, !dbg !156
  %cond.i.i761.1.3 = select contract i1 %cmp.i.i760.1.3, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i762.1.3 = fadd contract float %add329.1.3, %cond.i.i761.1.3, !dbg !156
  %323 = tail call contract float @llvm.exp2.f32(float %add.i.i762.1.3), !dbg !156
  %cond2.i.i763.1.3 = select contract i1 %cmp.i.i760.1.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i764.1.3 = fmul contract float %cond2.i.i763.1.3, %323, !dbg !156
  %sub327.2.3 = fsub contract float %condval_1.0.2.3, %normalizer.sroa.0.1.3, !dbg !153
  %mul328.2.3 = fmul contract float %sub327.2.3, 0x3FC7154760000000, !dbg !154
  %add329.2.3 = fadd contract float %mul328.2.3, 8.000000e+00, !dbg !155
  %cmp.i.i760.2.3 = fcmp contract olt float %add329.2.3, -1.260000e+02, !dbg !156
  %cond.i.i761.2.3 = select contract i1 %cmp.i.i760.2.3, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i762.2.3 = fadd contract float %add329.2.3, %cond.i.i761.2.3, !dbg !156
  %324 = tail call contract float @llvm.exp2.f32(float %add.i.i762.2.3), !dbg !156
  %cond2.i.i763.2.3 = select contract i1 %cmp.i.i760.2.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i764.2.3 = fmul contract float %cond2.i.i763.2.3, %324, !dbg !156
  %sub327.3.3 = fsub contract float %condval_1.0.3.3, %normalizer.sroa.0.1.3, !dbg !153
  %mul328.3.3 = fmul contract float %sub327.3.3, 0x3FC7154760000000, !dbg !154
  %add329.3.3 = fadd contract float %mul328.3.3, 8.000000e+00, !dbg !155
  %cmp.i.i760.3.3 = fcmp contract olt float %add329.3.3, -1.260000e+02, !dbg !156
  %cond.i.i761.3.3 = select contract i1 %cmp.i.i760.3.3, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i762.3.3 = fadd contract float %add329.3.3, %cond.i.i761.3.3, !dbg !156
  %325 = tail call contract float @llvm.exp2.f32(float %add.i.i762.3.3), !dbg !156
  %cond2.i.i763.3.3 = select contract i1 %cmp.i.i760.3.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i764.3.3 = fmul contract float %cond2.i.i763.3.3, %325, !dbg !156
  %add344.3981 = fadd contract float %mul.i.i764.3980, 0.000000e+00, !dbg !159
  %add344.1.3 = fadd contract float %add344.3981, %mul.i.i764.1.3, !dbg !159
  %add344.2.3 = fadd contract float %add344.1.3, %mul.i.i764.2.3, !dbg !159
  %add344.3.3 = fadd contract float %add344.2.3, %mul.i.i764.3.3, !dbg !159
  %rescale.sroa.0.0.3 = select i1 %cmp307.3, float %mul.i.i.3, float 1.000000e+00, !dbg !152
  %326 = bitcast float %add344.3.3 to i32, !dbg !160
  %327 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !165
  %328 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %327) #11, !dbg !168
  %xor.i.i.i765.3 = xor i32 %328, 32, !dbg !169
  %329 = and i32 %328, -64, !dbg !170
  %and.i.i.i766.3 = add nsw i32 %329, 64, !dbg !170
  %cmp.not.i.i.i767.3 = icmp slt i32 %xor.i.i.i765.3, %and.i.i.i766.3, !dbg !171
  %cond.i.i.i768.3 = select i1 %cmp.not.i.i.i767.3, i32 %xor.i.i.i765.3, i32 %328, !dbg !172
  %shl.i.i.i769.3 = shl i32 %cond.i.i.i768.3, 2, !dbg !173
  %330 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i769.3, i32 %326), !dbg !174
  %331 = bitcast i32 %330 to float, !dbg !175
  %add.i.i770.3 = fadd contract float %add344.3.3, %331, !dbg !176
  %332 = bitcast float %add.i.i770.3 to i32, !dbg !179
  %333 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !184
  %334 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %333) #11, !dbg !187
  %xor.i.i.i.i771.3 = xor i32 %334, 16, !dbg !188
  %335 = and i32 %334, -64, !dbg !189
  %and.i.i.i.i772.3 = add nsw i32 %335, 64, !dbg !189
  %cmp.not.i.i.i.i773.3 = icmp slt i32 %xor.i.i.i.i771.3, %and.i.i.i.i772.3, !dbg !190
  %cond.i.i.i.i774.3 = select i1 %cmp.not.i.i.i.i773.3, i32 %xor.i.i.i.i771.3, i32 %334, !dbg !191
  %shl.i.i.i.i775.3 = shl i32 %cond.i.i.i.i774.3, 2, !dbg !192
  %336 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i775.3, i32 %332), !dbg !193
  %337 = bitcast i32 %336 to float, !dbg !194
  %add.i.i.i.3 = fadd contract float %add.i.i770.3, %337, !dbg !195
  %cmp353.3 = fcmp contract une float %rescale.sroa.0.0.3, 1.000000e+00, !dbg !197
  %mul357.3 = fmul contract float %denominator.sroa.0.2.2, %rescale.sroa.0.0.3, !dbg !198
  %denominator.sroa.0.1.3 = select i1 %cmp353.3, float %mul357.3, float %denominator.sroa.0.2.2, !dbg !198
  %add362.3 = fadd contract float %denominator.sroa.0.1.3, %add.i.i.i.3, !dbg !199
  %338 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !200
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !200, !noalias !208
  %339 = fptrunc float %mul.i.i764.3980 to half, !dbg !200
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %338), !dbg !200, !noalias !208
  %340 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !213, !noalias !208
  %341 = fptrunc float %mul.i.i764.1.3 to half, !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %340), !dbg !213, !noalias !208
  %__1.sroa.0.0.vec.insert.3 = insertelement <4 x half> poison, half %339, i64 0, !dbg !215
  %__1.sroa.0.2.vec.insert.3 = insertelement <4 x half> %__1.sroa.0.0.vec.insert.3, half %341, i64 1, !dbg !215
  %342 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !218, !noalias !222
  %343 = fptrunc float %mul.i.i764.2.3 to half, !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %342), !dbg !218, !noalias !222
  %344 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !222
  %345 = fptrunc float %mul.i.i764.3.3 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %344), !dbg !227, !noalias !222
  %__1.sroa.0.4.vec.insert.3 = insertelement <4 x half> %__1.sroa.0.2.vec.insert.3, half %343, i64 2, !dbg !229
  %__1.sroa.0.6.vec.insert.3 = insertelement <4 x half> %__1.sroa.0.4.vec.insert.3, half %345, i64 3, !dbg !229
  br i1 %cmp353.3, label %for.body384.preheader.3, label %if.end394.3, !dbg !231

for.body384.preheader.3:                          ; preds = %if.end.1.3
  %output_acc.sroa.0.0.vec.extract1704 = extractelement <4 x float> %output_acc.sroa.0.5, i64 0, !dbg !251
  %mul388.3982 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.0.0.vec.extract1704, !dbg !252
  %output_acc.sroa.0.0.vec.insert1706 = insertelement <4 x float> poison, float %mul388.3982, i64 0, !dbg !253
  %output_acc.sroa.0.4.vec.extract1725 = extractelement <4 x float> %output_acc.sroa.0.5, i64 1, !dbg !251
  %mul388.1.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.0.4.vec.extract1725, !dbg !252
  %output_acc.sroa.0.4.vec.insert1727 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert1706, float %mul388.1.3, i64 1, !dbg !253
  %output_acc.sroa.0.8.vec.extract1746 = extractelement <4 x float> %output_acc.sroa.0.5, i64 2, !dbg !251
  %mul388.2.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.0.8.vec.extract1746, !dbg !252
  %output_acc.sroa.0.8.vec.insert1748 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert1727, float %mul388.2.3, i64 2, !dbg !253
  %output_acc.sroa.0.12.vec.extract1767 = extractelement <4 x float> %output_acc.sroa.0.5, i64 3, !dbg !251
  %mul388.3.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.0.12.vec.extract1767, !dbg !252
  %output_acc.sroa.0.12.vec.insert1769 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert1748, float %mul388.3.3, i64 3, !dbg !253
  %output_acc.sroa.58.16.vec.extract1792 = extractelement <4 x float> %output_acc.sroa.58.5, i64 0, !dbg !251
  %mul388.4.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.58.16.vec.extract1792, !dbg !252
  %output_acc.sroa.58.16.vec.insert1794 = insertelement <4 x float> poison, float %mul388.4.3, i64 0, !dbg !253
  %output_acc.sroa.58.20.vec.extract1813 = extractelement <4 x float> %output_acc.sroa.58.5, i64 1, !dbg !251
  %mul388.5.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.58.20.vec.extract1813, !dbg !252
  %output_acc.sroa.58.20.vec.insert1815 = insertelement <4 x float> %output_acc.sroa.58.16.vec.insert1794, float %mul388.5.3, i64 1, !dbg !253
  %output_acc.sroa.58.24.vec.extract1834 = extractelement <4 x float> %output_acc.sroa.58.5, i64 2, !dbg !251
  %mul388.6.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.58.24.vec.extract1834, !dbg !252
  %output_acc.sroa.58.24.vec.insert1836 = insertelement <4 x float> %output_acc.sroa.58.20.vec.insert1815, float %mul388.6.3, i64 2, !dbg !253
  %output_acc.sroa.58.28.vec.extract1855 = extractelement <4 x float> %output_acc.sroa.58.5, i64 3, !dbg !251
  %mul388.7.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.58.28.vec.extract1855, !dbg !252
  %output_acc.sroa.58.28.vec.insert1857 = insertelement <4 x float> %output_acc.sroa.58.24.vec.insert1836, float %mul388.7.3, i64 3, !dbg !253
  %output_acc.sroa.114.32.vec.extract1880 = extractelement <4 x float> %output_acc.sroa.114.5, i64 0, !dbg !251
  %mul388.8.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.114.32.vec.extract1880, !dbg !252
  %output_acc.sroa.114.32.vec.insert1882 = insertelement <4 x float> poison, float %mul388.8.3, i64 0, !dbg !253
  %output_acc.sroa.114.36.vec.extract1901 = extractelement <4 x float> %output_acc.sroa.114.5, i64 1, !dbg !251
  %mul388.9.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.114.36.vec.extract1901, !dbg !252
  %output_acc.sroa.114.36.vec.insert1903 = insertelement <4 x float> %output_acc.sroa.114.32.vec.insert1882, float %mul388.9.3, i64 1, !dbg !253
  %output_acc.sroa.114.40.vec.extract1922 = extractelement <4 x float> %output_acc.sroa.114.5, i64 2, !dbg !251
  %mul388.10.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.114.40.vec.extract1922, !dbg !252
  %output_acc.sroa.114.40.vec.insert1924 = insertelement <4 x float> %output_acc.sroa.114.36.vec.insert1903, float %mul388.10.3, i64 2, !dbg !253
  %output_acc.sroa.114.44.vec.extract1943 = extractelement <4 x float> %output_acc.sroa.114.5, i64 3, !dbg !251
  %mul388.11.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.114.44.vec.extract1943, !dbg !252
  %output_acc.sroa.114.44.vec.insert1945 = insertelement <4 x float> %output_acc.sroa.114.40.vec.insert1924, float %mul388.11.3, i64 3, !dbg !253
  %output_acc.sroa.170.48.vec.extract1968 = extractelement <4 x float> %output_acc.sroa.170.5, i64 0, !dbg !251
  %mul388.12.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.170.48.vec.extract1968, !dbg !252
  %output_acc.sroa.170.48.vec.insert1970 = insertelement <4 x float> poison, float %mul388.12.3, i64 0, !dbg !253
  %output_acc.sroa.170.52.vec.extract1989 = extractelement <4 x float> %output_acc.sroa.170.5, i64 1, !dbg !251
  %mul388.13.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.170.52.vec.extract1989, !dbg !252
  %output_acc.sroa.170.52.vec.insert1991 = insertelement <4 x float> %output_acc.sroa.170.48.vec.insert1970, float %mul388.13.3, i64 1, !dbg !253
  %output_acc.sroa.170.56.vec.extract2010 = extractelement <4 x float> %output_acc.sroa.170.5, i64 2, !dbg !251
  %mul388.14.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.170.56.vec.extract2010, !dbg !252
  %output_acc.sroa.170.56.vec.insert2012 = insertelement <4 x float> %output_acc.sroa.170.52.vec.insert1991, float %mul388.14.3, i64 2, !dbg !253
  %output_acc.sroa.170.60.vec.extract2031 = extractelement <4 x float> %output_acc.sroa.170.5, i64 3, !dbg !251
  %mul388.15.3 = fmul contract float %rescale.sroa.0.0.3, %output_acc.sroa.170.60.vec.extract2031, !dbg !252
  %output_acc.sroa.170.60.vec.insert2033 = insertelement <4 x float> %output_acc.sroa.170.56.vec.insert2012, float %mul388.15.3, i64 3, !dbg !253
  br label %if.end394.3

if.end394.3:                                      ; preds = %for.body384.preheader.3, %if.end.1.3
  %output_acc.sroa.170.6 = phi <4 x float> [ %output_acc.sroa.170.60.vec.insert2033, %for.body384.preheader.3 ], [ %output_acc.sroa.170.5, %if.end.1.3 ], !dbg !83
  %output_acc.sroa.114.6 = phi <4 x float> [ %output_acc.sroa.114.44.vec.insert1945, %for.body384.preheader.3 ], [ %output_acc.sroa.114.5, %if.end.1.3 ], !dbg !83
  %output_acc.sroa.58.6 = phi <4 x float> [ %output_acc.sroa.58.28.vec.insert1857, %for.body384.preheader.3 ], [ %output_acc.sroa.58.5, %if.end.1.3 ], !dbg !83
  %output_acc.sroa.0.6 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1769, %for.body384.preheader.3 ], [ %output_acc.sroa.0.5, %if.end.1.3 ], !dbg !83
  %shr402.3 = lshr exact i32 %mul118.3, 2
  %add403.3 = add nuw nsw i32 %shr402.3, %shr400
  %cmp404.3 = icmp ult i32 %add403.3, 128
  br i1 %cmp404.3, label %if.then405.3987, label %if.end439.3991, !dbg !232

if.then405.3987:                                  ; preds = %if.end394.3
  %346 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !233
  %347 = getelementptr inbounds i8, ptr addrspace(4) %346, i64 %.idx.3, !dbg !233
  %condval_2.sroa.0.0.copyload.3984 = load i32, ptr addrspace(4) %347, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr425.sroa_idx.3985 = getelementptr inbounds i8, ptr addrspace(4) %347, i64 4, !dbg !234
  %condval_2.sroa.5.0.copyload.3986 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr425.sroa_idx.3985, align 4, !dbg !234, !tbaa !30
  br label %if.end439.3991, !dbg !235

if.end439.3991:                                   ; preds = %if.then405.3987, %if.end394.3
  %condval_2.sroa.5.0.3988 = phi i32 [ %condval_2.sroa.5.0.copyload.3986, %if.then405.3987 ], [ 0, %if.end394.3 ], !dbg !83
  %condval_2.sroa.0.0.3989 = phi i32 [ %condval_2.sroa.0.0.copyload.3984, %if.then405.3987 ], [ 0, %if.end394.3 ], !dbg !83
  br i1 %cmp404.3, label %if.then405.1.3, label %if.end439.1.3, !dbg !232

if.then405.1.3:                                   ; preds = %if.end439.3991
  %348 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !233
  %349 = getelementptr inbounds i8, ptr addrspace(4) %348, i64 %.idx.3, !dbg !233
  %add.ptr425.1.3 = getelementptr inbounds i8, ptr addrspace(4) %349, i64 128, !dbg !233
  %condval_2.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %add.ptr425.1.3, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr425.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %349, i64 132, !dbg !234
  %condval_2.sroa.5.0.copyload.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr425.sroa_idx.1.3, align 4, !dbg !234, !tbaa !30
  br label %if.end439.1.3, !dbg !235

if.end439.1.3:                                    ; preds = %if.then405.1.3, %if.end439.3991
  %condval_2.sroa.5.0.1.3 = phi i32 [ %condval_2.sroa.5.0.copyload.1.3, %if.then405.1.3 ], [ 0, %if.end439.3991 ], !dbg !83
  %condval_2.sroa.0.0.1.3 = phi i32 [ %condval_2.sroa.0.0.copyload.1.3, %if.then405.1.3 ], [ 0, %if.end439.3991 ], !dbg !83
  br i1 %cmp404.3, label %if.then405.2.3, label %if.end439.2.3, !dbg !232

if.then405.2.3:                                   ; preds = %if.end439.1.3
  %350 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !233
  %351 = getelementptr inbounds i8, ptr addrspace(4) %350, i64 %.idx.3, !dbg !233
  %add.ptr425.2.3 = getelementptr inbounds i8, ptr addrspace(4) %351, i64 256, !dbg !233
  %condval_2.sroa.0.0.copyload.2.3 = load i32, ptr addrspace(4) %add.ptr425.2.3, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr425.sroa_idx.2.3 = getelementptr inbounds i8, ptr addrspace(4) %351, i64 260, !dbg !234
  %condval_2.sroa.5.0.copyload.2.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr425.sroa_idx.2.3, align 4, !dbg !234, !tbaa !30
  br label %if.end439.2.3, !dbg !235

if.end439.2.3:                                    ; preds = %if.then405.2.3, %if.end439.1.3
  %condval_2.sroa.5.0.2.3 = phi i32 [ %condval_2.sroa.5.0.copyload.2.3, %if.then405.2.3 ], [ 0, %if.end439.1.3 ], !dbg !83
  %condval_2.sroa.0.0.2.3 = phi i32 [ %condval_2.sroa.0.0.copyload.2.3, %if.then405.2.3 ], [ 0, %if.end439.1.3 ], !dbg !83
  br i1 %cmp404.3, label %if.then405.3.3, label %if.end439.3.3, !dbg !232

if.then405.3.3:                                   ; preds = %if.end439.2.3
  %352 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416, !dbg !233
  %353 = getelementptr inbounds i8, ptr addrspace(4) %352, i64 %.idx.3, !dbg !233
  %add.ptr425.3.3 = getelementptr inbounds i8, ptr addrspace(4) %353, i64 384, !dbg !233
  %condval_2.sroa.0.0.copyload.3.3 = load i32, ptr addrspace(4) %add.ptr425.3.3, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr425.sroa_idx.3.3 = getelementptr inbounds i8, ptr addrspace(4) %353, i64 388, !dbg !234
  %condval_2.sroa.5.0.copyload.3.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr425.sroa_idx.3.3, align 4, !dbg !234, !tbaa !30
  br label %if.end439.3.3, !dbg !235

if.end439.3.3:                                    ; preds = %if.then405.3.3, %if.end439.2.3
  %condval_2.sroa.5.0.3.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3.3, %if.then405.3.3 ], [ 0, %if.end439.2.3 ], !dbg !83
  %condval_2.sroa.0.0.3.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3.3, %if.then405.3.3 ], [ 0, %if.end439.2.3 ], !dbg !83
  %354 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul469, !dbg !236
  %.idx803.3998 = shl nuw nsw i32 %xor, 3, !dbg !236
  %355 = getelementptr inbounds i8, ptr addrspace(3) %354, i32 %.idx803.3998, !dbg !236
  %add.ptr481.3999 = getelementptr inbounds i8, ptr addrspace(3) %355, i32 2048, !dbg !236
  %356 = and i32 %condval_2.sroa.0.0.3.3, 65535, !dbg !237
  %v_column_local.sroa.66.0.insert.ext1301 = zext nneg i32 %356 to i64, !dbg !237
  %v_column_local.sroa.66.0.insert.shift1302 = shl nuw i64 %v_column_local.sroa.66.0.insert.ext1301, 48, !dbg !237
  %357 = and i32 %condval_2.sroa.0.0.2.3, 65535, !dbg !237
  %v_column_local.sroa.50.0.insert.ext1226 = zext nneg i32 %357 to i64, !dbg !237
  %v_column_local.sroa.50.0.insert.shift1227 = shl nuw nsw i64 %v_column_local.sroa.50.0.insert.ext1226, 32, !dbg !237
  %v_column_local.sroa.50.0.insert.insert1229 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1302, %v_column_local.sroa.50.0.insert.shift1227, !dbg !237
  %358 = shl i32 %condval_2.sroa.0.0.1.3, 16, !dbg !237
  %v_column_local.sroa.34.0.insert.shift1152 = zext i32 %358 to i64, !dbg !237
  %v_column_local.sroa.34.0.insert.insert1154 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1229, %v_column_local.sroa.34.0.insert.shift1152, !dbg !237
  %359 = and i32 %condval_2.sroa.0.0.3989, 65535, !dbg !237
  %v_column_local.sroa.0.0.insert.ext1080 = zext nneg i32 %359 to i64, !dbg !237
  %v_column_local.sroa.0.0.insert.insert1082 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1154, %v_column_local.sroa.0.0.insert.ext1080, !dbg !237
  store i64 %v_column_local.sroa.0.0.insert.insert1082, ptr addrspace(3) %add.ptr481.3999, align 8, !dbg !237
  %v_tile_local.sroa.0.2.extract.shift1333 = lshr i32 %condval_2.sroa.0.0.3989, 16, !dbg !238
  %v_tile_local.sroa.0.2.extract.trunc1334 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1333 to i64, !dbg !238
  %v_tile_local.sroa.26.10.extract.shift1363 = and i32 %condval_2.sroa.0.0.1.3, -65536, !dbg !237
  %v_tile_local.sroa.50.18.extract.shift1393 = lshr i32 %condval_2.sroa.0.0.2.3, 16, !dbg !238
  %v_tile_local.sroa.50.18.extract.trunc1394 = zext nneg i32 %v_tile_local.sroa.50.18.extract.shift1393 to i64, !dbg !238
  %v_tile_local.sroa.74.26.extract.shift1423 = lshr i32 %condval_2.sroa.0.0.3.3, 16, !dbg !238
  %v_tile_local.sroa.74.26.extract.trunc1424 = zext nneg i32 %v_tile_local.sroa.74.26.extract.shift1423 to i64, !dbg !238
  %add470.1.3 = or disjoint i32 %mul469, 256, !dbg !239
  %360 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add470.1.3, !dbg !236
  %xor476.1.3 = shl nuw nsw i32 %xor, 3, !dbg !236
  %.idx803.1.3 = xor i32 %xor476.1.3, 8, !dbg !236
  %361 = getelementptr inbounds i8, ptr addrspace(3) %360, i32 %.idx803.1.3, !dbg !236
  %add.ptr481.1.3 = getelementptr inbounds i8, ptr addrspace(3) %361, i32 2048, !dbg !236
  %v_column_local.sroa.66.0.insert.shift1307 = shl nuw i64 %v_tile_local.sroa.74.26.extract.trunc1424, 48, !dbg !237
  %v_column_local.sroa.50.0.insert.shift1232 = shl nuw nsw i64 %v_tile_local.sroa.50.18.extract.trunc1394, 32, !dbg !237
  %v_column_local.sroa.50.0.insert.insert1234 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1307, %v_column_local.sroa.50.0.insert.shift1232, !dbg !237
  %v_column_local.sroa.34.0.insert.shift1157 = zext i32 %v_tile_local.sroa.26.10.extract.shift1363 to i64, !dbg !237
  %v_column_local.sroa.34.0.insert.insert1159 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1234, %v_column_local.sroa.34.0.insert.shift1157, !dbg !237
  %v_column_local.sroa.0.0.insert.insert1086 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1159, %v_tile_local.sroa.0.2.extract.trunc1334, !dbg !237
  store i64 %v_column_local.sroa.0.0.insert.insert1086, ptr addrspace(3) %add.ptr481.1.3, align 8, !dbg !237
  %add470.2.3 = or disjoint i32 %mul469, 512, !dbg !239
  %362 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add470.2.3, !dbg !236
  %xor476.2.3 = shl nuw nsw i32 %xor, 3, !dbg !236
  %.idx803.2.3 = xor i32 %xor476.2.3, 16, !dbg !236
  %363 = getelementptr inbounds i8, ptr addrspace(3) %362, i32 %.idx803.2.3, !dbg !236
  %add.ptr481.2.3 = getelementptr inbounds i8, ptr addrspace(3) %363, i32 2048, !dbg !236
  %364 = and i32 %condval_2.sroa.5.0.3.3, 65535, !dbg !237
  %v_column_local.sroa.66.0.insert.ext1311 = zext nneg i32 %364 to i64, !dbg !237
  %v_column_local.sroa.66.0.insert.shift1312 = shl nuw i64 %v_column_local.sroa.66.0.insert.ext1311, 48, !dbg !237
  %365 = and i32 %condval_2.sroa.5.0.2.3, 65535, !dbg !237
  %v_column_local.sroa.50.0.insert.ext1236 = zext nneg i32 %365 to i64, !dbg !237
  %v_column_local.sroa.50.0.insert.shift1237 = shl nuw nsw i64 %v_column_local.sroa.50.0.insert.ext1236, 32, !dbg !237
  %v_column_local.sroa.50.0.insert.insert1239 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1312, %v_column_local.sroa.50.0.insert.shift1237, !dbg !237
  %366 = shl i32 %condval_2.sroa.5.0.1.3, 16, !dbg !237
  %v_column_local.sroa.34.0.insert.shift1162 = zext i32 %366 to i64, !dbg !237
  %v_column_local.sroa.34.0.insert.insert1164 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1239, %v_column_local.sroa.34.0.insert.shift1162, !dbg !237
  %367 = and i32 %condval_2.sroa.5.0.3988, 65535, !dbg !237
  %v_column_local.sroa.0.0.insert.ext1088 = zext nneg i32 %367 to i64, !dbg !237
  %v_column_local.sroa.0.0.insert.insert1090 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1164, %v_column_local.sroa.0.0.insert.ext1088, !dbg !237
  store i64 %v_column_local.sroa.0.0.insert.insert1090, ptr addrspace(3) %add.ptr481.2.3, align 8, !dbg !237
  %v_tile_local.sroa.14.6.extract.shift1348 = lshr i32 %condval_2.sroa.5.0.3988, 16, !dbg !238
  %v_tile_local.sroa.14.6.extract.trunc1349 = zext nneg i32 %v_tile_local.sroa.14.6.extract.shift1348 to i64, !dbg !238
  %v_tile_local.sroa.38.14.extract.shift1378 = and i32 %condval_2.sroa.5.0.1.3, -65536, !dbg !237
  %v_tile_local.sroa.62.22.extract.shift1408 = lshr i32 %condval_2.sroa.5.0.2.3, 16, !dbg !238
  %v_tile_local.sroa.62.22.extract.trunc1409 = zext nneg i32 %v_tile_local.sroa.62.22.extract.shift1408 to i64, !dbg !238
  %v_tile_local.sroa.86.30.extract.shift1438 = lshr i32 %condval_2.sroa.5.0.3.3, 16, !dbg !238
  %v_tile_local.sroa.86.30.extract.trunc1439 = zext nneg i32 %v_tile_local.sroa.86.30.extract.shift1438 to i64, !dbg !238
  %add470.3.3 = or disjoint i32 %mul469, 768, !dbg !239
  %368 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add470.3.3, !dbg !236
  %xor476.3.3 = shl nuw nsw i32 %xor, 3, !dbg !236
  %.idx803.3.3 = xor i32 %xor476.3.3, 24, !dbg !236
  %369 = getelementptr inbounds i8, ptr addrspace(3) %368, i32 %.idx803.3.3, !dbg !236
  %add.ptr481.3.3 = getelementptr inbounds i8, ptr addrspace(3) %369, i32 2048, !dbg !236
  %v_column_local.sroa.66.0.insert.shift1317 = shl nuw i64 %v_tile_local.sroa.86.30.extract.trunc1439, 48, !dbg !237
  %v_column_local.sroa.50.0.insert.shift1242 = shl nuw nsw i64 %v_tile_local.sroa.62.22.extract.trunc1409, 32, !dbg !237
  %v_column_local.sroa.50.0.insert.insert1244 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1317, %v_column_local.sroa.50.0.insert.shift1242, !dbg !237
  %v_column_local.sroa.34.0.insert.shift1167 = zext i32 %v_tile_local.sroa.38.14.extract.shift1378 to i64, !dbg !237
  %v_column_local.sroa.34.0.insert.insert1169 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1244, %v_column_local.sroa.34.0.insert.shift1167, !dbg !237
  %v_column_local.sroa.0.0.insert.insert1094 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1169, %v_tile_local.sroa.14.6.extract.trunc1349, !dbg !237
  store i64 %v_column_local.sroa.0.0.insert.insert1094, ptr addrspace(3) %add.ptr481.3.3, align 8, !dbg !237
  fence syncscope("warp") release, !dbg !240
  tail call void @llvm.mxc.barrier.warp(), !dbg !243
  fence syncscope("warp") acquire, !dbg !244
  %add498.31001 = or disjoint i32 %mul491, %mul497, !dbg !245
  %370 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add498.31001, !dbg !246
  %.idx802.31002 = shl nuw nsw i32 %29, 3, !dbg !246
  %371 = getelementptr inbounds i8, ptr addrspace(3) %370, i32 %.idx802.31002, !dbg !246
  %add.ptr509.31003 = getelementptr inbounds i8, ptr addrspace(3) %371, i32 2048, !dbg !246
  %372 = load <4 x half>, ptr addrspace(3) %add.ptr509.31003, align 8, !dbg !247
  %add493.1.3 = or disjoint i32 %mul491, %mul497, !dbg !245
  %add498.1.3 = or disjoint i32 %add493.1.3, 64, !dbg !245
  %373 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add498.1.3, !dbg !246
  %xor504.1.3 = shl nuw nsw i32 %29, 3, !dbg !246
  %.idx802.1.3 = xor i32 %xor504.1.3, 8, !dbg !246
  %374 = getelementptr inbounds i8, ptr addrspace(3) %373, i32 %.idx802.1.3, !dbg !246
  %add.ptr509.1.3 = getelementptr inbounds i8, ptr addrspace(3) %374, i32 2048, !dbg !246
  %375 = load <4 x half>, ptr addrspace(3) %add.ptr509.1.3, align 8, !dbg !247
  %add493.2.3 = or disjoint i32 %mul491, %mul497, !dbg !245
  %add498.2.3 = or disjoint i32 %add493.2.3, 128, !dbg !245
  %376 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add498.2.3, !dbg !246
  %xor504.2.3 = shl nuw nsw i32 %29, 3, !dbg !246
  %.idx802.2.3 = xor i32 %xor504.2.3, 16, !dbg !246
  %377 = getelementptr inbounds i8, ptr addrspace(3) %376, i32 %.idx802.2.3, !dbg !246
  %add.ptr509.2.3 = getelementptr inbounds i8, ptr addrspace(3) %377, i32 2048, !dbg !246
  %378 = load <4 x half>, ptr addrspace(3) %add.ptr509.2.3, align 8, !dbg !247
  %add493.3.3 = or disjoint i32 %mul491, %mul497, !dbg !245
  %add498.3.3 = or disjoint i32 %add493.3.3, 192, !dbg !245
  %379 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add498.3.3, !dbg !246
  %xor504.3.3 = shl nuw nsw i32 %29, 3, !dbg !246
  %.idx802.3.3 = xor i32 %xor504.3.3, 24, !dbg !246
  %380 = getelementptr inbounds i8, ptr addrspace(3) %379, i32 %.idx802.3.3, !dbg !246
  %add.ptr509.3.3 = getelementptr inbounds i8, ptr addrspace(3) %380, i32 2048, !dbg !246
  %381 = load <4 x half>, ptr addrspace(3) %add.ptr509.3.3, align 8, !dbg !247
  %382 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %372, <4 x half> %__1.sroa.0.6.vec.insert.3, <4 x float> %output_acc.sroa.0.6), !dbg !248
  %383 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %375, <4 x half> %__1.sroa.0.6.vec.insert.3, <4 x float> %output_acc.sroa.58.6), !dbg !248
  %384 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %378, <4 x half> %__1.sroa.0.6.vec.insert.3, <4 x float> %output_acc.sroa.114.6), !dbg !248
  %385 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %381, <4 x half> %__1.sroa.0.6.vec.insert.3, <4 x float> %output_acc.sroa.170.6), !dbg !248
  br label %if.end535.3, !dbg !249

if.end535.3:                                      ; preds = %if.end439.3.3, %if.end535.2
  %output_acc.sroa.170.7 = phi <4 x float> [ %output_acc.sroa.170.5, %if.end535.2 ], [ %385, %if.end439.3.3 ], !dbg !83
  %output_acc.sroa.114.7 = phi <4 x float> [ %output_acc.sroa.114.5, %if.end535.2 ], [ %384, %if.end439.3.3 ], !dbg !83
  %output_acc.sroa.58.7 = phi <4 x float> [ %output_acc.sroa.58.5, %if.end535.2 ], [ %383, %if.end439.3.3 ], !dbg !83
  %output_acc.sroa.0.7 = phi <4 x float> [ %output_acc.sroa.0.5, %if.end535.2 ], [ %382, %if.end439.3.3 ], !dbg !83
  %denominator.sroa.0.2.3 = phi float [ %denominator.sroa.0.2.2, %if.end535.2 ], [ %add362.3, %if.end439.3.3 ], !dbg !83
  fence syncscope("warp") release, !dbg !254
  tail call void @llvm.mxc.barrier.warp(), !dbg !257
  fence syncscope("warp") acquire, !dbg !258
  %output_acc.sroa.0.0.vec.extract1708 = extractelement <4 x float> %output_acc.sroa.0.7, i64 0, !dbg !259
  %div = fdiv contract float %output_acc.sroa.0.0.vec.extract1708, %denominator.sroa.0.2.3, !dbg !260
  %output_acc.sroa.0.4.vec.extract1729 = extractelement <4 x float> %output_acc.sroa.0.7, i64 1, !dbg !259
  %div.1 = fdiv contract float %output_acc.sroa.0.4.vec.extract1729, %denominator.sroa.0.2.3, !dbg !260
  %output_acc.sroa.0.8.vec.extract1750 = extractelement <4 x float> %output_acc.sroa.0.7, i64 2, !dbg !259
  %div.2 = fdiv contract float %output_acc.sroa.0.8.vec.extract1750, %denominator.sroa.0.2.3, !dbg !260
  %output_acc.sroa.0.12.vec.extract1771 = extractelement <4 x float> %output_acc.sroa.0.7, i64 3, !dbg !259
  %div.3 = fdiv contract float %output_acc.sroa.0.12.vec.extract1771, %denominator.sroa.0.2.3, !dbg !260
  %output_acc.sroa.58.16.vec.extract1796 = extractelement <4 x float> %output_acc.sroa.58.7, i64 0, !dbg !259
  %div.4 = fdiv contract float %output_acc.sroa.58.16.vec.extract1796, %denominator.sroa.0.2.3, !dbg !260
  %output_acc.sroa.58.20.vec.extract1817 = extractelement <4 x float> %output_acc.sroa.58.7, i64 1, !dbg !259
  %div.5 = fdiv contract float %output_acc.sroa.58.20.vec.extract1817, %denominator.sroa.0.2.3, !dbg !260
  %output_acc.sroa.58.24.vec.extract1838 = extractelement <4 x float> %output_acc.sroa.58.7, i64 2, !dbg !259
  %div.6 = fdiv contract float %output_acc.sroa.58.24.vec.extract1838, %denominator.sroa.0.2.3, !dbg !260
  %output_acc.sroa.58.28.vec.extract1859 = extractelement <4 x float> %output_acc.sroa.58.7, i64 3, !dbg !259
  %div.7 = fdiv contract float %output_acc.sroa.58.28.vec.extract1859, %denominator.sroa.0.2.3, !dbg !260
  %output_acc.sroa.114.32.vec.extract1884 = extractelement <4 x float> %output_acc.sroa.114.7, i64 0, !dbg !259
  %div.8 = fdiv contract float %output_acc.sroa.114.32.vec.extract1884, %denominator.sroa.0.2.3, !dbg !260
  %output_acc.sroa.114.36.vec.extract1905 = extractelement <4 x float> %output_acc.sroa.114.7, i64 1, !dbg !259
  %div.9 = fdiv contract float %output_acc.sroa.114.36.vec.extract1905, %denominator.sroa.0.2.3, !dbg !260
  %output_acc.sroa.114.40.vec.extract1926 = extractelement <4 x float> %output_acc.sroa.114.7, i64 2, !dbg !259
  %div.10 = fdiv contract float %output_acc.sroa.114.40.vec.extract1926, %denominator.sroa.0.2.3, !dbg !260
  %output_acc.sroa.114.44.vec.extract1947 = extractelement <4 x float> %output_acc.sroa.114.7, i64 3, !dbg !259
  %div.11 = fdiv contract float %output_acc.sroa.114.44.vec.extract1947, %denominator.sroa.0.2.3, !dbg !260
  %output_acc.sroa.170.48.vec.extract1972 = extractelement <4 x float> %output_acc.sroa.170.7, i64 0, !dbg !259
  %div.12 = fdiv contract float %output_acc.sroa.170.48.vec.extract1972, %denominator.sroa.0.2.3, !dbg !260
  %output_acc.sroa.170.52.vec.extract1993 = extractelement <4 x float> %output_acc.sroa.170.7, i64 1, !dbg !259
  %div.13 = fdiv contract float %output_acc.sroa.170.52.vec.extract1993, %denominator.sroa.0.2.3, !dbg !260
  %output_acc.sroa.170.56.vec.extract2014 = extractelement <4 x float> %output_acc.sroa.170.7, i64 2, !dbg !259
  %div.14 = fdiv contract float %output_acc.sroa.170.56.vec.extract2014, %denominator.sroa.0.2.3, !dbg !260
  %output_acc.sroa.170.60.vec.extract2035 = extractelement <4 x float> %output_acc.sroa.170.7, i64 3, !dbg !259
  %div.15 = fdiv contract float %output_acc.sroa.170.60.vec.extract2035, %denominator.sroa.0.2.3, !dbg !260
  %and581 = and i32 %2, 7
  %386 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !265
  %387 = fptrunc float %div to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %386), !dbg !261, !noalias !265
  %388 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !265
  %389 = fptrunc float %div.1 to half, !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %388), !dbg !270, !noalias !265
  %390 = bitcast half %387 to i16, !dbg !272
  %391 = bitcast half %389 to i16, !dbg !275
  %392 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !280
  %393 = fptrunc float %div.2 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %392), !dbg !276, !noalias !280
  %394 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !285, !noalias !280
  %395 = fptrunc float %div.3 to half, !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %394), !dbg !285, !noalias !280
  %396 = bitcast half %393 to i16, !dbg !287
  %397 = bitcast half %395 to i16, !dbg !289
  %__2.sroa.6.0.insert.ext = zext i16 %397 to i64, !dbg !290
  %__2.sroa.6.0.insert.shift = shl nuw i64 %__2.sroa.6.0.insert.ext, 48, !dbg !290
  %__2.sroa.5.0.insert.ext = zext i16 %396 to i64, !dbg !290
  %__2.sroa.5.0.insert.shift = shl nuw nsw i64 %__2.sroa.5.0.insert.ext, 32, !dbg !290
  %__2.sroa.5.0.insert.insert = or disjoint i64 %__2.sroa.6.0.insert.shift, %__2.sroa.5.0.insert.shift, !dbg !290
  %__2.sroa.4.0.insert.ext = zext i16 %391 to i64, !dbg !290
  %__2.sroa.4.0.insert.shift = shl nuw nsw i64 %__2.sroa.4.0.insert.ext, 16, !dbg !290
  %__2.sroa.4.0.insert.insert = or disjoint i64 %__2.sroa.5.0.insert.insert, %__2.sroa.4.0.insert.shift, !dbg !290
  %__2.sroa.0.0.insert.ext = zext i16 %390 to i64, !dbg !290
  %__2.sroa.0.0.insert.insert = or disjoint i64 %__2.sroa.4.0.insert.insert, %__2.sroa.0.0.insert.ext, !dbg !290
  %xor582 = xor i32 %shr71, %and581, !dbg !291
  %mul583 = shl nuw nsw i32 %xor582, 3, !dbg !292
  %add584 = add nuw nsw i32 %mul583, %mul53, !dbg !293
  %add589 = or disjoint i32 %add584, %mul81, !dbg !294
  %add.ptr591 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add589, !dbg !295
  store i64 %__2.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr591, align 8, !dbg !296
  %398 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !265
  %399 = fptrunc float %div.4 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %398), !dbg !261, !noalias !265
  %400 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !265
  %401 = fptrunc float %div.5 to half, !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %400), !dbg !270, !noalias !265
  %402 = bitcast half %399 to i16, !dbg !272
  %403 = bitcast half %401 to i16, !dbg !275
  %404 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !280
  %405 = fptrunc float %div.6 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %404), !dbg !276, !noalias !280
  %406 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !285, !noalias !280
  %407 = fptrunc float %div.7 to half, !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %406), !dbg !285, !noalias !280
  %408 = bitcast half %405 to i16, !dbg !287
  %409 = bitcast half %407 to i16, !dbg !289
  %__2.sroa.6.0.insert.ext.1 = zext i16 %409 to i64, !dbg !290
  %__2.sroa.6.0.insert.shift.1 = shl nuw i64 %__2.sroa.6.0.insert.ext.1, 48, !dbg !290
  %__2.sroa.5.0.insert.ext.1 = zext i16 %408 to i64, !dbg !290
  %__2.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.1, 32, !dbg !290
  %__2.sroa.5.0.insert.insert.1 = or disjoint i64 %__2.sroa.6.0.insert.shift.1, %__2.sroa.5.0.insert.shift.1, !dbg !290
  %__2.sroa.4.0.insert.ext.1 = zext i16 %403 to i64, !dbg !290
  %__2.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.1, 16, !dbg !290
  %__2.sroa.4.0.insert.insert.1 = or disjoint i64 %__2.sroa.5.0.insert.insert.1, %__2.sroa.4.0.insert.shift.1, !dbg !290
  %__2.sroa.0.0.insert.ext.1 = zext i16 %402 to i64, !dbg !290
  %__2.sroa.0.0.insert.insert.1 = or disjoint i64 %__2.sroa.4.0.insert.insert.1, %__2.sroa.0.0.insert.ext.1, !dbg !290
  %add579.1 = add nuw nsw i32 %shr71, 2, !dbg !297
  %xor582.1 = xor i32 %add579.1, %and581, !dbg !291
  %mul583.1 = shl nuw nsw i32 %xor582.1, 3, !dbg !292
  %add584.1 = add nuw nsw i32 %mul583.1, %mul53, !dbg !293
  %add589.1 = or disjoint i32 %add584.1, %mul81, !dbg !294
  %add.ptr591.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add589.1, !dbg !295
  store i64 %__2.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr591.1, align 8, !dbg !296
  %410 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !265
  %411 = fptrunc float %div.8 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %410), !dbg !261, !noalias !265
  %412 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !265
  %413 = fptrunc float %div.9 to half, !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %412), !dbg !270, !noalias !265
  %414 = bitcast half %411 to i16, !dbg !272
  %415 = bitcast half %413 to i16, !dbg !275
  %416 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !280
  %417 = fptrunc float %div.10 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %416), !dbg !276, !noalias !280
  %418 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !285, !noalias !280
  %419 = fptrunc float %div.11 to half, !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %418), !dbg !285, !noalias !280
  %420 = bitcast half %417 to i16, !dbg !287
  %421 = bitcast half %419 to i16, !dbg !289
  %__2.sroa.6.0.insert.ext.2 = zext i16 %421 to i64, !dbg !290
  %__2.sroa.6.0.insert.shift.2 = shl nuw i64 %__2.sroa.6.0.insert.ext.2, 48, !dbg !290
  %__2.sroa.5.0.insert.ext.2 = zext i16 %420 to i64, !dbg !290
  %__2.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.2, 32, !dbg !290
  %__2.sroa.5.0.insert.insert.2 = or disjoint i64 %__2.sroa.6.0.insert.shift.2, %__2.sroa.5.0.insert.shift.2, !dbg !290
  %__2.sroa.4.0.insert.ext.2 = zext i16 %415 to i64, !dbg !290
  %__2.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.2, 16, !dbg !290
  %__2.sroa.4.0.insert.insert.2 = or disjoint i64 %__2.sroa.5.0.insert.insert.2, %__2.sroa.4.0.insert.shift.2, !dbg !290
  %__2.sroa.0.0.insert.ext.2 = zext i16 %414 to i64, !dbg !290
  %__2.sroa.0.0.insert.insert.2 = or disjoint i64 %__2.sroa.4.0.insert.insert.2, %__2.sroa.0.0.insert.ext.2, !dbg !290
  %add579.2 = add nuw nsw i32 %shr71, 4, !dbg !297
  %xor582.2 = xor i32 %add579.2, %and581, !dbg !291
  %mul583.2 = shl nuw nsw i32 %xor582.2, 3, !dbg !292
  %add584.2 = add nuw nsw i32 %mul583.2, %mul53, !dbg !293
  %add589.2 = or disjoint i32 %add584.2, %mul81, !dbg !294
  %add.ptr591.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add589.2, !dbg !295
  store i64 %__2.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr591.2, align 8, !dbg !296
  %422 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !265
  %423 = fptrunc float %div.12 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %422), !dbg !261, !noalias !265
  %424 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !265
  %425 = fptrunc float %div.13 to half, !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %424), !dbg !270, !noalias !265
  %426 = bitcast half %423 to i16, !dbg !272
  %427 = bitcast half %425 to i16, !dbg !275
  %428 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !280
  %429 = fptrunc float %div.14 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %428), !dbg !276, !noalias !280
  %430 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !285, !noalias !280
  %431 = fptrunc float %div.15 to half, !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %430), !dbg !285, !noalias !280
  %432 = bitcast half %429 to i16, !dbg !287
  %433 = bitcast half %431 to i16, !dbg !289
  %__2.sroa.6.0.insert.ext.3 = zext i16 %433 to i64, !dbg !290
  %__2.sroa.6.0.insert.shift.3 = shl nuw i64 %__2.sroa.6.0.insert.ext.3, 48, !dbg !290
  %__2.sroa.5.0.insert.ext.3 = zext i16 %432 to i64, !dbg !290
  %__2.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.3, 32, !dbg !290
  %__2.sroa.5.0.insert.insert.3 = or disjoint i64 %__2.sroa.6.0.insert.shift.3, %__2.sroa.5.0.insert.shift.3, !dbg !290
  %__2.sroa.4.0.insert.ext.3 = zext i16 %427 to i64, !dbg !290
  %__2.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.3, 16, !dbg !290
  %__2.sroa.4.0.insert.insert.3 = or disjoint i64 %__2.sroa.5.0.insert.insert.3, %__2.sroa.4.0.insert.shift.3, !dbg !290
  %__2.sroa.0.0.insert.ext.3 = zext i16 %426 to i64, !dbg !290
  %__2.sroa.0.0.insert.insert.3 = or disjoint i64 %__2.sroa.4.0.insert.insert.3, %__2.sroa.0.0.insert.ext.3, !dbg !290
  %add579.3 = add nuw nsw i32 %shr71, 6, !dbg !297
  %xor582.3 = xor i32 %add579.3, %and581, !dbg !291
  %mul583.3 = shl nuw nsw i32 %xor582.3, 3, !dbg !292
  %add584.3 = add nuw nsw i32 %mul583.3, %mul53, !dbg !293
  %add589.3 = or disjoint i32 %add584.3, %mul81, !dbg !294
  %add.ptr591.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add589.3, !dbg !295
  store i64 %__2.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr591.3, align 8, !dbg !296
  fence syncscope("warp") release, !dbg !298
  tail call void @llvm.mxc.barrier.warp(), !dbg !301
  fence syncscope("warp") acquire, !dbg !302
  %xor608726 = and i32 %mul11, 56
  %call606.masked = and i32 %2, 1016
  %mul609 = xor i32 %xor608726, %call606.masked
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul15, !dbg !303
  %invariant.gep830 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul609, !dbg !303
  %add.ptr624 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !304
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr624, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep830, i64 16, i1 false), !dbg !305, !tbaa.struct !50, !call_argsrelate !306
  %gep831.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep830, i32 1024, !dbg !307
  %add.ptr624.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %7, !dbg !304
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr624.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep831.1, i64 16, i1 false), !dbg !305, !tbaa.struct !50, !call_argsrelate !306
  ret void, !dbg !308
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v033_codex_power_s4_checkpoint_sc-16g-2/codegen/case11_kernel1.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v033_codex_power_s4_checkpoint_sc-16g-2/codegen/case11_kernel1.device.cpp", directory: "/root/tilelang-metax")
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
!52 = !DILocation(line: 27, column: 424, scope: !40)
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
!69 = !DILocation(line: 41, column: 24, scope: !40)
!70 = !DILocation(line: 41, column: 106, scope: !40)
!71 = !DILocation(line: 42, column: 12, scope: !40)
!72 = !DILocation(line: 42, column: 28, scope: !40)
!73 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !74)
!74 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !75)
!75 = distinct !DILocation(line: 43, column: 7, scope: !40)
!76 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !74)
!77 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !74)
!78 = !DILocation(line: 45, column: 7, scope: !40)
!79 = !DILocation(line: 48, column: 71, scope: !40)
!80 = !DILocation(line: 48, column: 13, scope: !40)
!81 = !DILocation(line: 49, column: 19, scope: !40)
!82 = !DILocation(line: 50, column: 9, scope: !40)
!83 = !DILocation(line: 0, scope: !40)
!84 = !DILocation(line: 53, column: 339, scope: !40)
!85 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !86)
!86 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !87)
!87 = distinct !DILocation(line: 55, column: 7, scope: !40)
!88 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !86)
!89 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !86)
!90 = !DILocation(line: 59, column: 32, scope: !40)
!91 = !DILocation(line: 61, column: 37, scope: !40)
!92 = !DILocation(line: 69, column: 70, scope: !40)
!93 = !DILocation(line: 69, column: 13, scope: !40)
!94 = !DILocation(line: 69, column: 63, scope: !40)
!95 = !DILocation(line: 351, column: 10, scope: !96, inlinedAt: !98)
!96 = distinct !DISubprogram(name: "max", scope: !97, file: !97, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!97 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!98 = distinct !DILocation(line: 80, column: 24, scope: !40)
!99 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !101)
!100 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !56, file: !56, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!101 = distinct !DILocation(line: 338, column: 10, scope: !102, inlinedAt: !104)
!102 = distinct !DISubprogram(name: "shfl_xor_sync<float>", scope: !103, file: !103, line: 337, type: !7, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!103 = !DIFile(filename: "src/tl_templates/maca/common.h", directory: "/root/tilelang-metax")
!104 = distinct !DILocation(line: 95, column: 24, scope: !105, inlinedAt: !107)
!105 = distinct !DISubprogram(name: "run<float>", scope: !106, file: !106, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!106 = !DIFile(filename: "src/tl_templates/maca/reduce.h", directory: "/root/tilelang-metax")
!107 = distinct !DILocation(line: 82, column: 22, scope: !40)
!108 = !DILocation(line: 171, column: 37, scope: !109, inlinedAt: !110)
!109 = distinct !DISubprogram(name: "__lane_id", scope: !56, file: !56, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!110 = distinct !DILocation(line: 990, column: 14, scope: !111, inlinedAt: !112)
!111 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !56, file: !56, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!112 = distinct !DILocation(line: 1019, column: 11, scope: !100, inlinedAt: !101)
!113 = !DILocation(line: 171, column: 10, scope: !109, inlinedAt: !110)
!114 = !DILocation(line: 991, column: 20, scope: !111, inlinedAt: !112)
!115 = !DILocation(line: 992, column: 36, scope: !111, inlinedAt: !112)
!116 = !DILocation(line: 992, column: 17, scope: !111, inlinedAt: !112)
!117 = !DILocation(line: 992, column: 11, scope: !111, inlinedAt: !112)
!118 = !DILocation(line: 993, column: 43, scope: !111, inlinedAt: !112)
!119 = !DILocation(line: 993, column: 10, scope: !111, inlinedAt: !112)
!120 = !DILocation(line: 1020, column: 14, scope: !100, inlinedAt: !101)
!121 = !DILocation(line: 306, column: 10, scope: !122, inlinedAt: !123)
!122 = distinct !DISubprogram(name: "fmaxf", scope: !97, file: !97, line: 305, type: !7, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!123 = distinct !DILocation(line: 633, column: 10, scope: !124, inlinedAt: !126)
!124 = distinct !DISubprogram(name: "fast_max<float>", scope: !125, file: !125, line: 632, type: !7, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!125 = !DIFile(filename: "/opt/maca/include/mctlass/fast_math.h", directory: "")
!126 = distinct !DILocation(line: 31, column: 12, scope: !127, inlinedAt: !128)
!127 = distinct !DISubprogram(name: "operator()<float>", scope: !106, file: !106, line: 30, type: !7, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!128 = distinct !DILocation(line: 95, column: 11, scope: !105, inlinedAt: !107)
!129 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !130)
!130 = distinct !DILocation(line: 338, column: 10, scope: !102, inlinedAt: !131)
!131 = distinct !DILocation(line: 95, column: 24, scope: !132, inlinedAt: !133)
!132 = distinct !DISubprogram(name: "run<float>", scope: !106, file: !106, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!133 = distinct !DILocation(line: 100, column: 14, scope: !105, inlinedAt: !107)
!134 = !DILocation(line: 171, column: 37, scope: !109, inlinedAt: !135)
!135 = distinct !DILocation(line: 990, column: 14, scope: !111, inlinedAt: !136)
!136 = distinct !DILocation(line: 1019, column: 11, scope: !100, inlinedAt: !130)
!137 = !DILocation(line: 171, column: 10, scope: !109, inlinedAt: !135)
!138 = !DILocation(line: 991, column: 20, scope: !111, inlinedAt: !136)
!139 = !DILocation(line: 992, column: 36, scope: !111, inlinedAt: !136)
!140 = !DILocation(line: 992, column: 17, scope: !111, inlinedAt: !136)
!141 = !DILocation(line: 992, column: 11, scope: !111, inlinedAt: !136)
!142 = !DILocation(line: 993, column: 43, scope: !111, inlinedAt: !136)
!143 = !DILocation(line: 993, column: 10, scope: !111, inlinedAt: !136)
!144 = !DILocation(line: 1020, column: 14, scope: !100, inlinedAt: !130)
!145 = !DILocation(line: 306, column: 10, scope: !122, inlinedAt: !146)
!146 = distinct !DILocation(line: 633, column: 10, scope: !124, inlinedAt: !147)
!147 = distinct !DILocation(line: 31, column: 12, scope: !127, inlinedAt: !148)
!148 = distinct !DILocation(line: 95, column: 11, scope: !132, inlinedAt: !133)
!149 = !DILocation(line: 83, column: 54, scope: !40)
!150 = !DILocation(line: 83, column: 71, scope: !40)
!151 = !DILocation(line: 83, column: 37, scope: !40)
!152 = !DILocation(line: 83, column: 11, scope: !40)
!153 = !DILocation(line: 91, column: 44, scope: !40)
!154 = !DILocation(line: 91, column: 61, scope: !40)
!155 = !DILocation(line: 91, column: 102, scope: !40)
!156 = !DILocation(line: 285, column: 49, scope: !157, inlinedAt: !158)
!157 = distinct !DISubprogram(name: "exp2f", scope: !97, file: !97, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!158 = distinct !DILocation(line: 91, column: 23, scope: !40)
!159 = !DILocation(line: 96, column: 38, scope: !40)
!160 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !161)
!161 = distinct !DILocation(line: 338, column: 10, scope: !102, inlinedAt: !162)
!162 = distinct !DILocation(line: 95, column: 24, scope: !163, inlinedAt: !164)
!163 = distinct !DISubprogram(name: "run<float>", scope: !106, file: !106, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!164 = distinct !DILocation(line: 98, column: 22, scope: !40)
!165 = !DILocation(line: 171, column: 37, scope: !109, inlinedAt: !166)
!166 = distinct !DILocation(line: 990, column: 14, scope: !111, inlinedAt: !167)
!167 = distinct !DILocation(line: 1019, column: 11, scope: !100, inlinedAt: !161)
!168 = !DILocation(line: 171, column: 10, scope: !109, inlinedAt: !166)
!169 = !DILocation(line: 991, column: 20, scope: !111, inlinedAt: !167)
!170 = !DILocation(line: 992, column: 36, scope: !111, inlinedAt: !167)
!171 = !DILocation(line: 992, column: 17, scope: !111, inlinedAt: !167)
!172 = !DILocation(line: 992, column: 11, scope: !111, inlinedAt: !167)
!173 = !DILocation(line: 993, column: 43, scope: !111, inlinedAt: !167)
!174 = !DILocation(line: 993, column: 10, scope: !111, inlinedAt: !167)
!175 = !DILocation(line: 1020, column: 14, scope: !100, inlinedAt: !161)
!176 = !DILocation(line: 25, column: 14, scope: !177, inlinedAt: !178)
!177 = distinct !DISubprogram(name: "operator()<float>", scope: !106, file: !106, line: 24, type: !7, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!178 = distinct !DILocation(line: 95, column: 11, scope: !163, inlinedAt: !164)
!179 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !180)
!180 = distinct !DILocation(line: 338, column: 10, scope: !102, inlinedAt: !181)
!181 = distinct !DILocation(line: 95, column: 24, scope: !182, inlinedAt: !183)
!182 = distinct !DISubprogram(name: "run<float>", scope: !106, file: !106, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!183 = distinct !DILocation(line: 100, column: 14, scope: !163, inlinedAt: !164)
!184 = !DILocation(line: 171, column: 37, scope: !109, inlinedAt: !185)
!185 = distinct !DILocation(line: 990, column: 14, scope: !111, inlinedAt: !186)
!186 = distinct !DILocation(line: 1019, column: 11, scope: !100, inlinedAt: !180)
!187 = !DILocation(line: 171, column: 10, scope: !109, inlinedAt: !185)
!188 = !DILocation(line: 991, column: 20, scope: !111, inlinedAt: !186)
!189 = !DILocation(line: 992, column: 36, scope: !111, inlinedAt: !186)
!190 = !DILocation(line: 992, column: 17, scope: !111, inlinedAt: !186)
!191 = !DILocation(line: 992, column: 11, scope: !111, inlinedAt: !186)
!192 = !DILocation(line: 993, column: 43, scope: !111, inlinedAt: !186)
!193 = !DILocation(line: 993, column: 10, scope: !111, inlinedAt: !186)
!194 = !DILocation(line: 1020, column: 14, scope: !100, inlinedAt: !180)
!195 = !DILocation(line: 25, column: 14, scope: !177, inlinedAt: !196)
!196 = distinct !DILocation(line: 95, column: 11, scope: !182, inlinedAt: !183)
!197 = !DILocation(line: 99, column: 22, scope: !40)
!198 = !DILocation(line: 99, column: 11, scope: !40)
!199 = !DILocation(line: 102, column: 40, scope: !40)
!200 = !DILocation(line: 1007, column: 10, scope: !201, inlinedAt: !203)
!201 = distinct !DISubprogram(name: "__float2half_rn", scope: !202, file: !202, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!202 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!203 = distinct !DILocation(line: 1077, column: 18, scope: !204, inlinedAt: !205)
!204 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !202, file: !202, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!205 = distinct !DILocation(line: 1295, column: 23, scope: !206, inlinedAt: !207)
!206 = distinct !DISubprogram(name: "__float22half2_rn", scope: !202, file: !202, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!207 = distinct !DILocation(line: 105, column: 29, scope: !40)
!208 = !{!209, !211}
!209 = distinct !{!209, !210, !"_ZL17__floats2half2_rnff: %agg.result"}
!210 = distinct !{!210, !"_ZL17__floats2half2_rnff"}
!211 = distinct !{!211, !212, !"_ZL17__float22half2_rn6float2: %agg.result"}
!212 = distinct !{!212, !"_ZL17__float22half2_rn6float2"}
!213 = !DILocation(line: 1007, column: 10, scope: !201, inlinedAt: !214)
!214 = distinct !DILocation(line: 1077, column: 38, scope: !204, inlinedAt: !205)
!215 = !DILocation(line: 593, column: 26, scope: !216, inlinedAt: !217)
!216 = distinct !DISubprogram(name: "operator=", scope: !202, file: !202, line: 592, type: !7, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!217 = distinct !DILocation(line: 105, column: 27, scope: !40)
!218 = !DILocation(line: 1007, column: 10, scope: !201, inlinedAt: !219)
!219 = distinct !DILocation(line: 1077, column: 18, scope: !204, inlinedAt: !220)
!220 = distinct !DILocation(line: 1295, column: 23, scope: !206, inlinedAt: !221)
!221 = distinct !DILocation(line: 106, column: 29, scope: !40)
!222 = !{!223, !225}
!223 = distinct !{!223, !224, !"_ZL17__floats2half2_rnff: %agg.result"}
!224 = distinct !{!224, !"_ZL17__floats2half2_rnff"}
!225 = distinct !{!225, !226, !"_ZL17__float22half2_rn6float2: %agg.result"}
!226 = distinct !{!226, !"_ZL17__float22half2_rn6float2"}
!227 = !DILocation(line: 1007, column: 10, scope: !201, inlinedAt: !228)
!228 = distinct !DILocation(line: 1077, column: 38, scope: !204, inlinedAt: !220)
!229 = !DILocation(line: 593, column: 26, scope: !216, inlinedAt: !230)
!230 = distinct !DILocation(line: 106, column: 27, scope: !40)
!231 = !DILocation(line: 108, column: 11, scope: !40)
!232 = !DILocation(line: 118, column: 13, scope: !40)
!233 = !DILocation(line: 119, column: 35, scope: !40)
!234 = !DILocation(line: 119, column: 21, scope: !40)
!235 = !DILocation(line: 120, column: 9, scope: !40)
!236 = !DILocation(line: 131, column: 44, scope: !40)
!237 = !DILocation(line: 131, column: 196, scope: !40)
!238 = !DILocation(line: 129, column: 38, scope: !40)
!239 = !DILocation(line: 131, column: 66, scope: !40)
!240 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !241)
!241 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !242)
!242 = distinct !DILocation(line: 133, column: 7, scope: !40)
!243 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !241)
!244 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !241)
!245 = !DILocation(line: 136, column: 126, scope: !40)
!246 = !DILocation(line: 136, column: 75, scope: !40)
!247 = !DILocation(line: 136, column: 38, scope: !40)
!248 = !DILocation(line: 140, column: 43, scope: !40)
!249 = !DILocation(line: 145, column: 5, scope: !40)
!250 = !DILocation(line: 41, column: 93, scope: !40)
!251 = !DILocation(line: 111, column: 30, scope: !40)
!252 = !DILocation(line: 111, column: 46, scope: !40)
!253 = !DILocation(line: 111, column: 27, scope: !40)
!254 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !255)
!255 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !256)
!256 = distinct !DILocation(line: 147, column: 3, scope: !40)
!257 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !255)
!258 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !255)
!259 = !DILocation(line: 150, column: 24, scope: !40)
!260 = !DILocation(line: 150, column: 40, scope: !40)
!261 = !DILocation(line: 1007, column: 10, scope: !201, inlinedAt: !262)
!262 = distinct !DILocation(line: 1077, column: 18, scope: !204, inlinedAt: !263)
!263 = distinct !DILocation(line: 1295, column: 23, scope: !206, inlinedAt: !264)
!264 = distinct !DILocation(line: 156, column: 27, scope: !40)
!265 = !{!266, !268}
!266 = distinct !{!266, !267, !"_ZL17__floats2half2_rnff: %agg.result"}
!267 = distinct !{!267, !"_ZL17__floats2half2_rnff"}
!268 = distinct !{!268, !269, !"_ZL17__float22half2_rn6float2: %agg.result"}
!269 = distinct !{!269, !"_ZL17__float22half2_rn6float2"}
!270 = !DILocation(line: 1007, column: 10, scope: !201, inlinedAt: !271)
!271 = distinct !DILocation(line: 1077, column: 38, scope: !204, inlinedAt: !263)
!272 = !DILocation(line: 596, column: 67, scope: !273, inlinedAt: !274)
!273 = distinct !DISubprogram(name: "__half2", scope: !202, file: !202, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!274 = distinct !DILocation(line: 1077, column: 10, scope: !204, inlinedAt: !263)
!275 = !DILocation(line: 596, column: 73, scope: !273, inlinedAt: !274)
!276 = !DILocation(line: 1007, column: 10, scope: !201, inlinedAt: !277)
!277 = distinct !DILocation(line: 1077, column: 18, scope: !204, inlinedAt: !278)
!278 = distinct !DILocation(line: 1295, column: 23, scope: !206, inlinedAt: !279)
!279 = distinct !DILocation(line: 157, column: 27, scope: !40)
!280 = !{!281, !283}
!281 = distinct !{!281, !282, !"_ZL17__floats2half2_rnff: %agg.result"}
!282 = distinct !{!282, !"_ZL17__floats2half2_rnff"}
!283 = distinct !{!283, !284, !"_ZL17__float22half2_rn6float2: %agg.result"}
!284 = distinct !{!284, !"_ZL17__float22half2_rn6float2"}
!285 = !DILocation(line: 1007, column: 10, scope: !201, inlinedAt: !286)
!286 = distinct !DILocation(line: 1077, column: 38, scope: !204, inlinedAt: !278)
!287 = !DILocation(line: 596, column: 67, scope: !273, inlinedAt: !288)
!288 = distinct !DILocation(line: 1077, column: 10, scope: !204, inlinedAt: !278)
!289 = !DILocation(line: 596, column: 73, scope: !273, inlinedAt: !288)
!290 = !DILocation(line: 158, column: 45, scope: !40)
!291 = !DILocation(line: 159, column: 121, scope: !40)
!292 = !DILocation(line: 159, column: 149, scope: !40)
!293 = !DILocation(line: 159, column: 77, scope: !40)
!294 = !DILocation(line: 159, column: 155, scope: !40)
!295 = !DILocation(line: 159, column: 40, scope: !40)
!296 = !DILocation(line: 159, column: 198, scope: !40)
!297 = !DILocation(line: 159, column: 92, scope: !40)
!298 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !299)
!299 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !300)
!300 = distinct !DILocation(line: 161, column: 3, scope: !40)
!301 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !299)
!302 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !299)
!303 = !DILocation(line: 163, column: 8, scope: !40)
!304 = !DILocation(line: 164, column: 22, scope: !40)
!305 = !DILocation(line: 164, column: 130, scope: !40)
!306 = !{i32 2, i32 -1, i32 -1, i32 -1}
!307 = !DILocation(line: 164, column: 167, scope: !40)
!308 = !DILocation(line: 166, column: 1, scope: !40)
