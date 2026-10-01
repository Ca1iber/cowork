; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v042_codex_power_s8_lane_normalizer_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v042_codex_power_s8_lane_normalizer_sc-16g-2/codegen/case12.device.cpp"
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
  %mul11 = shl nuw nsw i32 %2, 3
  %add9 = add nuw nsw i32 %add, %mul11
  %mul15 = and i32 %mul11, 8128
  %add21913 = and i32 %mul11, 32
  %shr18914 = add nuw nsw i32 %add21913, %2
  %mul23 = and i32 %shr18914, 32
  %add31915 = and i32 %mul11, 16
  %and26916 = add nuw nsw i32 %add31915, %2
  %mul33 = and i32 %and26916, 16
  %and36918 = mul nuw nsw i32 %2, 9
  %mul42 = and i32 %and36918, 8
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
  %mul125 = shl nsw i32 %0, 13
  %mul127 = shl nsw i32 %1, 3
  %add128 = add nuw nsw i32 %mul125, %mul127
  %shr140 = lshr i32 %2, 3
  %conv = zext nneg i32 %0 to i64
  %mul147 = shl nuw nsw i64 %conv, 16
  %mul156 = zext nneg i32 %mul11 to i64
  %invariant.gep1049 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul156, !dbg !68
  %mul281 = and i32 %and55, 252
  %shr324 = lshr i32 %2, 4
  %23 = zext nneg i32 %add128 to i64, !dbg !68
  %arrayidx130 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %23, !dbg !69
  %24 = load i32, ptr addrspace(1) %arrayidx130, align 4, !dbg !69, !tbaa !30
  %mul131 = shl nsw i32 %24, 4, !dbg !70
  %cmp132 = icmp slt i32 %24, 0, !dbg !71
  %cmp134.not = icmp sgt i32 %mul131, %1
  %or.cond = select i1 %cmp132, i1 true, i1 %cmp134.not, !dbg !72
  br i1 %or.cond, label %if.end415, label %if.then, !dbg !72

if.then:                                          ; preds = %entry
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add141 = add nuw nsw i32 %mul131, %shr140
  %conv151 = zext nneg i32 %mul131 to i64
  %.idx = shl nuw nsw i64 %conv151, 7
  %gep = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1049, i64 %.idx, !dbg !78
  %cmp144 = icmp ult i32 %add141, 1024, !dbg !79
  br i1 %cmp144, label %if.then145, label %if.end, !dbg !80

if.then145:                                       ; preds = %if.then
  %gep1042 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1042, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1042, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1042, i64 4
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep1042, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx, align 4, !dbg !81, !tbaa !30
  br label %if.end, !dbg !82

if.end:                                           ; preds = %if.then, %if.then145
  %condval.sroa.0.0 = phi i32 [ %condval.sroa.0.0.copyload, %if.then145 ], [ 0, %if.then ], !dbg !83
  %condval.sroa.5.0 = phi i32 [ %condval.sroa.5.0.copyload, %if.then145 ], [ 0, %if.then ], !dbg !83
  %condval.sroa.6.0 = phi i32 [ %condval.sroa.6.0.copyload, %if.then145 ], [ 0, %if.then ], !dbg !83
  %condval.sroa.7.0 = phi i32 [ %condval.sroa.7.0.copyload, %if.then145 ], [ 0, %if.then ], !dbg !83
  store i32 %condval.sroa.0.0, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx, align 4, !dbg !84, !tbaa !30
  %cmp144.1 = icmp ult i32 %add141, 1016, !dbg !79
  br i1 %cmp144.1, label %if.then145.1, label %if.end.1, !dbg !80

if.then145.1:                                     ; preds = %if.end
  %add150.1 = or disjoint i64 %mul147, 512
  %gep1042.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %add150.1
  %condval.sroa.7.0.add.ptr158.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1, i64 4
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep1042.1, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1, align 4, !dbg !81, !tbaa !30
  br label %if.end.1, !dbg !82

if.end.1:                                         ; preds = %if.then145.1, %if.end
  %condval.sroa.0.0.1 = phi i32 [ %condval.sroa.0.0.copyload.1, %if.then145.1 ], [ 0, %if.end ], !dbg !83
  %condval.sroa.5.0.1 = phi i32 [ %condval.sroa.5.0.copyload.1, %if.then145.1 ], [ 0, %if.end ], !dbg !83
  %condval.sroa.6.0.1 = phi i32 [ %condval.sroa.6.0.copyload.1, %if.then145.1 ], [ 0, %if.end ], !dbg !83
  %condval.sroa.7.0.1 = phi i32 [ %condval.sroa.7.0.copyload.1, %if.then145.1 ], [ 0, %if.end ], !dbg !83
  store i32 %condval.sroa.0.0.1, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %25 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %26 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %16, <4 x float> %25), !dbg !91
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %27 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %18, <4 x float> %26), !dbg !91
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %28 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %22, <4 x float> %27), !dbg !91
  %add282 = add nuw nsw i32 %mul131, %mul281
  %cmp285.not = icmp sgt i32 %add282, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2265 = extractelement <4 x float> %28, i64 0
  %spec.select = select i1 %cmp285.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2265, !dbg !93
  %cmp285.not.1.not = icmp slt i32 %add282, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2370 = extractelement <4 x float> %28, i64 1, !dbg !93
  %condval_1.0.1 = select i1 %cmp285.not.1.not, float %scores.sroa.0.4.vec.extract2370, float 0xFFF0000000000000, !dbg !93
  %add283.2 = or disjoint i32 %add282, 2, !dbg !94
  %cmp285.not.2 = icmp sgt i32 %add283.2, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2447 = extractelement <4 x float> %28, i64 2, !dbg !93
  %condval_1.0.2 = select i1 %cmp285.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2447, !dbg !93
  %add283.3 = or disjoint i32 %add282, 3, !dbg !94
  %cmp285.not.3 = icmp sgt i32 %add283.3, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2524 = extractelement <4 x float> %28, i64 3, !dbg !93
  %condval_1.0.3 = select i1 %cmp285.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2524, !dbg !93
  %29 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !95
  %30 = tail call contract noundef float @llvm.maxnum.f32(float %29, float %condval_1.0.1), !dbg !95
  %31 = tail call contract noundef float @llvm.maxnum.f32(float %30, float %condval_1.0.2), !dbg !95
  %32 = tail call contract noundef float @llvm.maxnum.f32(float %31, float %condval_1.0.3), !dbg !95
  %33 = bitcast float %32 to i32, !dbg !99
  %34 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !102
  %35 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %34) #11, !dbg !107
  %xor.i.i = xor i32 %35, 32, !dbg !108
  %36 = and i32 %35, -64, !dbg !109
  %and.i.i = add nsw i32 %36, 64, !dbg !109
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !110
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %35, !dbg !111
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !112
  %37 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %33), !dbg !113
  %38 = bitcast i32 %37 to float, !dbg !114
  %39 = tail call contract noundef float @llvm.maxnum.f32(float %32, float %38), !dbg !115
  %40 = bitcast float %39 to i32, !dbg !117
  %41 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !119
  %42 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %41) #11, !dbg !122
  %xor.i.i951 = xor i32 %42, 16, !dbg !123
  %43 = and i32 %42, -64, !dbg !124
  %and.i.i952 = add nsw i32 %43, 64, !dbg !124
  %cmp.not.i.i953 = icmp slt i32 %xor.i.i951, %and.i.i952, !dbg !125
  %cond.i.i954 = select i1 %cmp.not.i.i953, i32 %xor.i.i951, i32 %42, !dbg !126
  %shl.i.i955 = shl i32 %cond.i.i954, 2, !dbg !127
  %44 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i955, i32 %40), !dbg !128
  %45 = bitcast i32 %44 to float, !dbg !129
  %46 = tail call contract noundef float @llvm.maxnum.f32(float %39, float %45), !dbg !130
  %cmp326 = icmp ult i32 %2, 16, !dbg !132
  %max_cache.sroa.0.0 = select i1 %cmp326, float %46, float 0xFFF0000000000000, !dbg !133
  %47 = tail call contract noundef float @llvm.maxnum.f32(float %46, float 0xFFF0000000000000), !dbg !134
  %sub = fsub contract float %spec.select, %46, !dbg !136
  %sub347 = fsub contract float %condval_1.0.1, %46, !dbg !137
  %sub350 = fsub contract float %condval_1.0.2, %46, !dbg !138
  %sub353 = fsub contract float %condval_1.0.3, %46, !dbg !139
  %mul358 = fmul contract float %sub, 0x3FC7154760000000, !dbg !140
  %mul362 = fmul contract float %sub347, 0x3FC7154760000000, !dbg !141
  %mul366 = fmul contract float %sub350, 0x3FC7154760000000, !dbg !142
  %mul370 = fmul contract float %sub353, 0x3FC7154760000000, !dbg !143
  %add375 = fadd contract float %mul358, 8.000000e+00, !dbg !144
  %add379 = fadd contract float %mul362, 8.000000e+00, !dbg !145
  %add383 = fadd contract float %mul366, 8.000000e+00, !dbg !146
  %add387 = fadd contract float %mul370, 8.000000e+00, !dbg !147
  %cmp.i.i = fcmp contract olt float %add375, -1.260000e+02, !dbg !148
  %cond.i.i960 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i = fadd contract float %add375, %cond.i.i960, !dbg !148
  %48 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !148
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i = fmul contract float %cond2.i.i, %48, !dbg !148
  %cmp.i.i961 = fcmp contract olt float %add379, -1.260000e+02, !dbg !151
  %cond.i.i962 = select contract i1 %cmp.i.i961, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i963 = fadd contract float %add379, %cond.i.i962, !dbg !151
  %49 = tail call contract float @llvm.exp2.f32(float %add.i.i963), !dbg !151
  %cond2.i.i964 = select contract i1 %cmp.i.i961, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i965 = fmul contract float %cond2.i.i964, %49, !dbg !151
  %cmp.i.i966 = fcmp contract olt float %add383, -1.260000e+02, !dbg !153
  %cond.i.i967 = select contract i1 %cmp.i.i966, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i968 = fadd contract float %add383, %cond.i.i967, !dbg !153
  %50 = tail call contract float @llvm.exp2.f32(float %add.i.i968), !dbg !153
  %cond2.i.i969 = select contract i1 %cmp.i.i966, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i970 = fmul contract float %cond2.i.i969, %50, !dbg !153
  %cmp.i.i971 = fcmp contract olt float %add387, -1.260000e+02, !dbg !155
  %cond.i.i972 = select contract i1 %cmp.i.i971, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i973 = fadd contract float %add387, %cond.i.i972, !dbg !155
  %51 = tail call contract float @llvm.exp2.f32(float %add.i.i973), !dbg !155
  %cond2.i.i974 = select contract i1 %cmp.i.i971, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i975 = fmul contract float %cond2.i.i974, %51, !dbg !155
  %52 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %53 = fptrunc float %mul.i.i to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %52), !dbg !157, !noalias !165
  %54 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %55 = fptrunc float %mul.i.i965 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %54), !dbg !170, !noalias !165
  %56 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %57 = fptrunc float %mul.i.i970 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %56), !dbg !172, !noalias !176
  %58 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %59 = fptrunc float %mul.i.i975 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %58), !dbg !181, !noalias !176
  %60 = insertelement <4 x half> poison, half %53, i64 0, !dbg !183
  %61 = insertelement <4 x half> %60, half %55, i64 1, !dbg !183
  %62 = insertelement <4 x half> %61, half %57, i64 2, !dbg !183
  %63 = insertelement <4 x half> %62, half %59, i64 3, !dbg !183
  br label %if.end415, !dbg !184

if.end415:                                        ; preds = %if.end.1, %entry
  %64 = phi <4 x half> [ zeroinitializer, %entry ], [ %63, %if.end.1 ], !dbg !83
  %max_cache.sroa.0.1 = phi float [ 0xFFF0000000000000, %entry ], [ %max_cache.sroa.0.0, %if.end.1 ], !dbg !83
  %global_max.sroa.0.1 = phi float [ 0xFFF0000000000000, %entry ], [ %47, %if.end.1 ], !dbg !83
  %65 = or disjoint i64 %23, 1, !dbg !185
  %arrayidx130.1 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %65, !dbg !69
  %66 = load i32, ptr addrspace(1) %arrayidx130.1, align 4, !dbg !69, !tbaa !30
  %mul131.1 = shl nsw i32 %66, 4, !dbg !70
  %cmp132.1 = icmp slt i32 %66, 0, !dbg !71
  %cmp134.not.1 = icmp sgt i32 %mul131.1, %1
  %or.cond.1 = select i1 %cmp132.1, i1 true, i1 %cmp134.not.1, !dbg !72
  br i1 %or.cond.1, label %if.end415.1, label %if.then.1, !dbg !72

if.then.1:                                        ; preds = %if.end415
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add141.1 = add nuw nsw i32 %mul131.1, %shr140
  %conv151.1 = zext nneg i32 %mul131.1 to i64
  %.idx.1 = shl nuw nsw i64 %conv151.1, 7
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1049, i64 %.idx.1, !dbg !78
  %cmp144.11084 = icmp ult i32 %add141.1, 1024, !dbg !79
  br i1 %cmp144.11084, label %if.then145.11093, label %if.end.11102, !dbg !80

if.then145.11093:                                 ; preds = %if.then.1
  %gep1042.11085 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.1, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.11086 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.11085, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.11087 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.11085, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.11088 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.11085, i64 4
  %condval.sroa.0.0.copyload.11089 = load i32, ptr addrspace(4) %gep1042.11085, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.11090 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.11088, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.11091 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.11087, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.11092 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.11086, align 4, !dbg !81, !tbaa !30
  br label %if.end.11102, !dbg !82

if.end.11102:                                     ; preds = %if.then145.11093, %if.then.1
  %condval.sroa.0.0.11094 = phi i32 [ %condval.sroa.0.0.copyload.11089, %if.then145.11093 ], [ 0, %if.then.1 ], !dbg !83
  %condval.sroa.5.0.11095 = phi i32 [ %condval.sroa.5.0.copyload.11090, %if.then145.11093 ], [ 0, %if.then.1 ], !dbg !83
  %condval.sroa.6.0.11096 = phi i32 [ %condval.sroa.6.0.copyload.11091, %if.then145.11093 ], [ 0, %if.then.1 ], !dbg !83
  %condval.sroa.7.0.11097 = phi i32 [ %condval.sroa.7.0.copyload.11092, %if.then145.11093 ], [ 0, %if.then.1 ], !dbg !83
  store i32 %condval.sroa.0.0.11094, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.11099 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.11095, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.11099, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.11100 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.11096, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.11100, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.11101 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.11097, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.11101, align 4, !dbg !84, !tbaa !30
  %cmp144.1.1 = icmp ult i32 %add141.1, 1016, !dbg !79
  br i1 %cmp144.1.1, label %if.then145.1.1, label %if.end.1.1, !dbg !80

if.then145.1.1:                                   ; preds = %if.end.11102
  %add150.1.1 = or disjoint i64 %mul147, 512
  %gep1042.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.1, i64 %add150.1.1
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1.1, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1.1, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1.1, i64 4
  %condval.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %gep1042.1.1, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.1, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.1, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.1, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.1, !dbg !82

if.end.1.1:                                       ; preds = %if.then145.1.1, %if.end.11102
  %condval.sroa.0.0.1.1 = phi i32 [ %condval.sroa.0.0.copyload.1.1, %if.then145.1.1 ], [ 0, %if.end.11102 ], !dbg !83
  %condval.sroa.5.0.1.1 = phi i32 [ %condval.sroa.5.0.copyload.1.1, %if.then145.1.1 ], [ 0, %if.end.11102 ], !dbg !83
  %condval.sroa.6.0.1.1 = phi i32 [ %condval.sroa.6.0.copyload.1.1, %if.then145.1.1 ], [ 0, %if.end.11102 ], !dbg !83
  %condval.sroa.7.0.1.1 = phi i32 [ %condval.sroa.7.0.copyload.1.1, %if.then145.1.1 ], [ 0, %if.end.11102 ], !dbg !83
  store i32 %condval.sroa.0.0.1.1, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1.1, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1.1, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1.1, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.11110 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %67 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11110, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %68 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %16, <4 x float> %67), !dbg !91
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %69 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %18, <4 x float> %68), !dbg !91
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %70 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %22, <4 x float> %69), !dbg !91
  %add282.1 = add nuw nsw i32 %mul131.1, %mul281
  %cmp285.not.11111 = icmp sgt i32 %add282.1, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2273 = extractelement <4 x float> %70, i64 0
  %spec.select2728 = select i1 %cmp285.not.11111, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2273, !dbg !93
  %cmp285.not.1.1.not = icmp slt i32 %add282.1, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2376 = extractelement <4 x float> %70, i64 1, !dbg !93
  %condval_1.0.1.1 = select i1 %cmp285.not.1.1.not, float %scores.sroa.0.4.vec.extract2376, float 0xFFF0000000000000, !dbg !93
  %add283.2.1 = or disjoint i32 %add282.1, 2, !dbg !94
  %cmp285.not.2.1 = icmp sgt i32 %add283.2.1, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2453 = extractelement <4 x float> %70, i64 2, !dbg !93
  %condval_1.0.2.1 = select i1 %cmp285.not.2.1, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2453, !dbg !93
  %add283.3.1 = or disjoint i32 %add282.1, 3, !dbg !94
  %cmp285.not.3.1 = icmp sgt i32 %add283.3.1, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2530 = extractelement <4 x float> %70, i64 3, !dbg !93
  %condval_1.0.3.1 = select i1 %cmp285.not.3.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2530, !dbg !93
  %71 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2728, float 0xFFF0000000000000), !dbg !95
  %72 = tail call contract noundef float @llvm.maxnum.f32(float %71, float %condval_1.0.1.1), !dbg !95
  %73 = tail call contract noundef float @llvm.maxnum.f32(float %72, float %condval_1.0.2.1), !dbg !95
  %74 = tail call contract noundef float @llvm.maxnum.f32(float %73, float %condval_1.0.3.1), !dbg !95
  %75 = bitcast float %74 to i32, !dbg !99
  %76 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !102
  %77 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %76) #11, !dbg !107
  %xor.i.i.1 = xor i32 %77, 32, !dbg !108
  %78 = and i32 %77, -64, !dbg !109
  %and.i.i.1 = add nsw i32 %78, 64, !dbg !109
  %cmp.not.i.i.1 = icmp slt i32 %xor.i.i.1, %and.i.i.1, !dbg !110
  %cond.i.i.1 = select i1 %cmp.not.i.i.1, i32 %xor.i.i.1, i32 %77, !dbg !111
  %shl.i.i.1 = shl i32 %cond.i.i.1, 2, !dbg !112
  %79 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.1, i32 %75), !dbg !113
  %80 = bitcast i32 %79 to float, !dbg !114
  %81 = tail call contract noundef float @llvm.maxnum.f32(float %74, float %80), !dbg !115
  %82 = bitcast float %81 to i32, !dbg !117
  %83 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !119
  %84 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %83) #11, !dbg !122
  %xor.i.i951.1 = xor i32 %84, 16, !dbg !123
  %85 = and i32 %84, -64, !dbg !124
  %and.i.i952.1 = add nsw i32 %85, 64, !dbg !124
  %cmp.not.i.i953.1 = icmp slt i32 %xor.i.i951.1, %and.i.i952.1, !dbg !125
  %cond.i.i954.1 = select i1 %cmp.not.i.i953.1, i32 %xor.i.i951.1, i32 %84, !dbg !126
  %shl.i.i955.1 = shl i32 %cond.i.i954.1, 2, !dbg !127
  %86 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i955.1, i32 %82), !dbg !128
  %87 = bitcast i32 %86 to float, !dbg !129
  %88 = tail call contract noundef float @llvm.maxnum.f32(float %81, float %87), !dbg !130
  %cmp326.1 = icmp eq i32 %shr324, 1, !dbg !132
  %max_cache.sroa.0.2 = select i1 %cmp326.1, float %88, float %max_cache.sroa.0.1, !dbg !133
  %89 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1, float %88), !dbg !134
  %sub.1 = fsub contract float %spec.select2728, %88, !dbg !136
  %sub347.1 = fsub contract float %condval_1.0.1.1, %88, !dbg !137
  %sub350.1 = fsub contract float %condval_1.0.2.1, %88, !dbg !138
  %sub353.1 = fsub contract float %condval_1.0.3.1, %88, !dbg !139
  %mul358.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !140
  %mul362.1 = fmul contract float %sub347.1, 0x3FC7154760000000, !dbg !141
  %mul366.1 = fmul contract float %sub350.1, 0x3FC7154760000000, !dbg !142
  %mul370.1 = fmul contract float %sub353.1, 0x3FC7154760000000, !dbg !143
  %add375.1 = fadd contract float %mul358.1, 8.000000e+00, !dbg !144
  %add379.1 = fadd contract float %mul362.1, 8.000000e+00, !dbg !145
  %add383.1 = fadd contract float %mul366.1, 8.000000e+00, !dbg !146
  %add387.1 = fadd contract float %mul370.1, 8.000000e+00, !dbg !147
  %cmp.i.i.1 = fcmp contract olt float %add375.1, -1.260000e+02, !dbg !148
  %cond.i.i960.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i.1 = fadd contract float %add375.1, %cond.i.i960.1, !dbg !148
  %90 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !148
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %90, !dbg !148
  %cmp.i.i961.1 = fcmp contract olt float %add379.1, -1.260000e+02, !dbg !151
  %cond.i.i962.1 = select contract i1 %cmp.i.i961.1, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i963.1 = fadd contract float %add379.1, %cond.i.i962.1, !dbg !151
  %91 = tail call contract float @llvm.exp2.f32(float %add.i.i963.1), !dbg !151
  %cond2.i.i964.1 = select contract i1 %cmp.i.i961.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i965.1 = fmul contract float %cond2.i.i964.1, %91, !dbg !151
  %cmp.i.i966.1 = fcmp contract olt float %add383.1, -1.260000e+02, !dbg !153
  %cond.i.i967.1 = select contract i1 %cmp.i.i966.1, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i968.1 = fadd contract float %add383.1, %cond.i.i967.1, !dbg !153
  %92 = tail call contract float @llvm.exp2.f32(float %add.i.i968.1), !dbg !153
  %cond2.i.i969.1 = select contract i1 %cmp.i.i966.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i970.1 = fmul contract float %cond2.i.i969.1, %92, !dbg !153
  %cmp.i.i971.1 = fcmp contract olt float %add387.1, -1.260000e+02, !dbg !155
  %cond.i.i972.1 = select contract i1 %cmp.i.i971.1, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i973.1 = fadd contract float %add387.1, %cond.i.i972.1, !dbg !155
  %93 = tail call contract float @llvm.exp2.f32(float %add.i.i973.1), !dbg !155
  %cond2.i.i974.1 = select contract i1 %cmp.i.i971.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i975.1 = fmul contract float %cond2.i.i974.1, %93, !dbg !155
  %94 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %95 = fptrunc float %mul.i.i.1 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %94), !dbg !157, !noalias !165
  %96 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %97 = fptrunc float %mul.i.i965.1 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %96), !dbg !170, !noalias !165
  %98 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %99 = fptrunc float %mul.i.i970.1 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %98), !dbg !172, !noalias !176
  %100 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %101 = fptrunc float %mul.i.i975.1 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %100), !dbg !181, !noalias !176
  %102 = insertelement <4 x half> poison, half %95, i64 0, !dbg !183
  %103 = insertelement <4 x half> %102, half %97, i64 1, !dbg !183
  %104 = insertelement <4 x half> %103, half %99, i64 2, !dbg !183
  %105 = insertelement <4 x half> %104, half %101, i64 3, !dbg !183
  br label %if.end415.1, !dbg !184

if.end415.1:                                      ; preds = %if.end.1.1, %if.end415
  %106 = phi <4 x half> [ zeroinitializer, %if.end415 ], [ %105, %if.end.1.1 ], !dbg !83
  %max_cache.sroa.0.3 = phi float [ %max_cache.sroa.0.1, %if.end415 ], [ %max_cache.sroa.0.2, %if.end.1.1 ], !dbg !83
  %global_max.sroa.0.1.1 = phi float [ %global_max.sroa.0.1, %if.end415 ], [ %89, %if.end.1.1 ], !dbg !83
  %107 = or disjoint i64 %23, 2, !dbg !185
  %arrayidx130.2 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %107, !dbg !69
  %108 = load i32, ptr addrspace(1) %arrayidx130.2, align 4, !dbg !69, !tbaa !30
  %mul131.2 = shl nsw i32 %108, 4, !dbg !70
  %cmp132.2 = icmp slt i32 %108, 0, !dbg !71
  %cmp134.not.2 = icmp sgt i32 %mul131.2, %1
  %or.cond.2 = select i1 %cmp132.2, i1 true, i1 %cmp134.not.2, !dbg !72
  br i1 %or.cond.2, label %if.end415.2, label %if.then.2, !dbg !72

if.then.2:                                        ; preds = %if.end415.1
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add141.2 = add nuw nsw i32 %mul131.2, %shr140
  %conv151.2 = zext nneg i32 %mul131.2 to i64
  %.idx.2 = shl nuw nsw i64 %conv151.2, 7
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1049, i64 %.idx.2, !dbg !78
  %cmp144.2 = icmp ult i32 %add141.2, 1024, !dbg !79
  br i1 %cmp144.2, label %if.then145.2, label %if.end.2, !dbg !80

if.then145.2:                                     ; preds = %if.then.2
  %gep1042.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.2, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.2, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.2, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.2, i64 4
  %condval.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %gep1042.2, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.2, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.2, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.2, align 4, !dbg !81, !tbaa !30
  br label %if.end.2, !dbg !82

if.end.2:                                         ; preds = %if.then145.2, %if.then.2
  %condval.sroa.0.0.2 = phi i32 [ %condval.sroa.0.0.copyload.2, %if.then145.2 ], [ 0, %if.then.2 ], !dbg !83
  %condval.sroa.5.0.2 = phi i32 [ %condval.sroa.5.0.copyload.2, %if.then145.2 ], [ 0, %if.then.2 ], !dbg !83
  %condval.sroa.6.0.2 = phi i32 [ %condval.sroa.6.0.copyload.2, %if.then145.2 ], [ 0, %if.then.2 ], !dbg !83
  %condval.sroa.7.0.2 = phi i32 [ %condval.sroa.7.0.copyload.2, %if.then145.2 ], [ 0, %if.then.2 ], !dbg !83
  store i32 %condval.sroa.0.0.2, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.2, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.2, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.2, align 4, !dbg !84, !tbaa !30
  %cmp144.1.2 = icmp ult i32 %add141.2, 1016, !dbg !79
  br i1 %cmp144.1.2, label %if.then145.1.2, label %if.end.1.2, !dbg !80

if.then145.1.2:                                   ; preds = %if.end.2
  %add150.1.2 = or disjoint i64 %mul147, 512
  %gep1042.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.2, i64 %add150.1.2
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1.2, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1.2, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1.2, i64 4
  %condval.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %gep1042.1.2, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.2, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.2, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.2, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.2, !dbg !82

if.end.1.2:                                       ; preds = %if.then145.1.2, %if.end.2
  %condval.sroa.0.0.1.2 = phi i32 [ %condval.sroa.0.0.copyload.1.2, %if.then145.1.2 ], [ 0, %if.end.2 ], !dbg !83
  %condval.sroa.5.0.1.2 = phi i32 [ %condval.sroa.5.0.copyload.1.2, %if.then145.1.2 ], [ 0, %if.end.2 ], !dbg !83
  %condval.sroa.6.0.1.2 = phi i32 [ %condval.sroa.6.0.copyload.1.2, %if.then145.1.2 ], [ 0, %if.end.2 ], !dbg !83
  %condval.sroa.7.0.1.2 = phi i32 [ %condval.sroa.7.0.copyload.1.2, %if.then145.1.2 ], [ 0, %if.end.2 ], !dbg !83
  store i32 %condval.sroa.0.0.1.2, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1.2, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1.2, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1.2, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.21122 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %109 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.21122, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %110 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %16, <4 x float> %109), !dbg !91
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %111 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %18, <4 x float> %110), !dbg !91
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %112 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %22, <4 x float> %111), !dbg !91
  %add282.2 = add nuw nsw i32 %mul131.2, %mul281
  %cmp285.not.21123 = icmp sgt i32 %add282.2, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2283 = extractelement <4 x float> %112, i64 0
  %spec.select2729 = select i1 %cmp285.not.21123, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2283, !dbg !93
  %cmp285.not.1.2.not = icmp slt i32 %add282.2, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2382 = extractelement <4 x float> %112, i64 1, !dbg !93
  %condval_1.0.1.2 = select i1 %cmp285.not.1.2.not, float %scores.sroa.0.4.vec.extract2382, float 0xFFF0000000000000, !dbg !93
  %add283.2.2 = or disjoint i32 %add282.2, 2, !dbg !94
  %cmp285.not.2.2 = icmp sgt i32 %add283.2.2, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2459 = extractelement <4 x float> %112, i64 2, !dbg !93
  %condval_1.0.2.2 = select i1 %cmp285.not.2.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2459, !dbg !93
  %add283.3.2 = or disjoint i32 %add282.2, 3, !dbg !94
  %cmp285.not.3.2 = icmp sgt i32 %add283.3.2, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2536 = extractelement <4 x float> %112, i64 3, !dbg !93
  %condval_1.0.3.2 = select i1 %cmp285.not.3.2, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2536, !dbg !93
  %113 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2729, float 0xFFF0000000000000), !dbg !95
  %114 = tail call contract noundef float @llvm.maxnum.f32(float %113, float %condval_1.0.1.2), !dbg !95
  %115 = tail call contract noundef float @llvm.maxnum.f32(float %114, float %condval_1.0.2.2), !dbg !95
  %116 = tail call contract noundef float @llvm.maxnum.f32(float %115, float %condval_1.0.3.2), !dbg !95
  %117 = bitcast float %116 to i32, !dbg !99
  %118 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !102
  %119 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %118) #11, !dbg !107
  %xor.i.i.2 = xor i32 %119, 32, !dbg !108
  %120 = and i32 %119, -64, !dbg !109
  %and.i.i.2 = add nsw i32 %120, 64, !dbg !109
  %cmp.not.i.i.2 = icmp slt i32 %xor.i.i.2, %and.i.i.2, !dbg !110
  %cond.i.i.2 = select i1 %cmp.not.i.i.2, i32 %xor.i.i.2, i32 %119, !dbg !111
  %shl.i.i.2 = shl i32 %cond.i.i.2, 2, !dbg !112
  %121 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.2, i32 %117), !dbg !113
  %122 = bitcast i32 %121 to float, !dbg !114
  %123 = tail call contract noundef float @llvm.maxnum.f32(float %116, float %122), !dbg !115
  %124 = bitcast float %123 to i32, !dbg !117
  %125 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !119
  %126 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %125) #11, !dbg !122
  %xor.i.i951.2 = xor i32 %126, 16, !dbg !123
  %127 = and i32 %126, -64, !dbg !124
  %and.i.i952.2 = add nsw i32 %127, 64, !dbg !124
  %cmp.not.i.i953.2 = icmp slt i32 %xor.i.i951.2, %and.i.i952.2, !dbg !125
  %cond.i.i954.2 = select i1 %cmp.not.i.i953.2, i32 %xor.i.i951.2, i32 %126, !dbg !126
  %shl.i.i955.2 = shl i32 %cond.i.i954.2, 2, !dbg !127
  %128 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i955.2, i32 %124), !dbg !128
  %129 = bitcast i32 %128 to float, !dbg !129
  %130 = tail call contract noundef float @llvm.maxnum.f32(float %123, float %129), !dbg !130
  %cmp326.2 = icmp eq i32 %shr324, 2, !dbg !132
  %max_cache.sroa.0.4 = select i1 %cmp326.2, float %130, float %max_cache.sroa.0.3, !dbg !133
  %131 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.1, float %130), !dbg !134
  %sub.2 = fsub contract float %spec.select2729, %130, !dbg !136
  %sub347.2 = fsub contract float %condval_1.0.1.2, %130, !dbg !137
  %sub350.2 = fsub contract float %condval_1.0.2.2, %130, !dbg !138
  %sub353.2 = fsub contract float %condval_1.0.3.2, %130, !dbg !139
  %mul358.2 = fmul contract float %sub.2, 0x3FC7154760000000, !dbg !140
  %mul362.2 = fmul contract float %sub347.2, 0x3FC7154760000000, !dbg !141
  %mul366.2 = fmul contract float %sub350.2, 0x3FC7154760000000, !dbg !142
  %mul370.2 = fmul contract float %sub353.2, 0x3FC7154760000000, !dbg !143
  %add375.2 = fadd contract float %mul358.2, 8.000000e+00, !dbg !144
  %add379.2 = fadd contract float %mul362.2, 8.000000e+00, !dbg !145
  %add383.2 = fadd contract float %mul366.2, 8.000000e+00, !dbg !146
  %add387.2 = fadd contract float %mul370.2, 8.000000e+00, !dbg !147
  %cmp.i.i.2 = fcmp contract olt float %add375.2, -1.260000e+02, !dbg !148
  %cond.i.i960.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i.2 = fadd contract float %add375.2, %cond.i.i960.2, !dbg !148
  %132 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !148
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %132, !dbg !148
  %cmp.i.i961.2 = fcmp contract olt float %add379.2, -1.260000e+02, !dbg !151
  %cond.i.i962.2 = select contract i1 %cmp.i.i961.2, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i963.2 = fadd contract float %add379.2, %cond.i.i962.2, !dbg !151
  %133 = tail call contract float @llvm.exp2.f32(float %add.i.i963.2), !dbg !151
  %cond2.i.i964.2 = select contract i1 %cmp.i.i961.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i965.2 = fmul contract float %cond2.i.i964.2, %133, !dbg !151
  %cmp.i.i966.2 = fcmp contract olt float %add383.2, -1.260000e+02, !dbg !153
  %cond.i.i967.2 = select contract i1 %cmp.i.i966.2, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i968.2 = fadd contract float %add383.2, %cond.i.i967.2, !dbg !153
  %134 = tail call contract float @llvm.exp2.f32(float %add.i.i968.2), !dbg !153
  %cond2.i.i969.2 = select contract i1 %cmp.i.i966.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i970.2 = fmul contract float %cond2.i.i969.2, %134, !dbg !153
  %cmp.i.i971.2 = fcmp contract olt float %add387.2, -1.260000e+02, !dbg !155
  %cond.i.i972.2 = select contract i1 %cmp.i.i971.2, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i973.2 = fadd contract float %add387.2, %cond.i.i972.2, !dbg !155
  %135 = tail call contract float @llvm.exp2.f32(float %add.i.i973.2), !dbg !155
  %cond2.i.i974.2 = select contract i1 %cmp.i.i971.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i975.2 = fmul contract float %cond2.i.i974.2, %135, !dbg !155
  %136 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %137 = fptrunc float %mul.i.i.2 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %136), !dbg !157, !noalias !165
  %138 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %139 = fptrunc float %mul.i.i965.2 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %138), !dbg !170, !noalias !165
  %140 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %141 = fptrunc float %mul.i.i970.2 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %140), !dbg !172, !noalias !176
  %142 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %143 = fptrunc float %mul.i.i975.2 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %142), !dbg !181, !noalias !176
  %144 = insertelement <4 x half> poison, half %137, i64 0, !dbg !183
  %145 = insertelement <4 x half> %144, half %139, i64 1, !dbg !183
  %146 = insertelement <4 x half> %145, half %141, i64 2, !dbg !183
  %147 = insertelement <4 x half> %146, half %143, i64 3, !dbg !183
  br label %if.end415.2, !dbg !184

if.end415.2:                                      ; preds = %if.end.1.2, %if.end415.1
  %148 = phi <4 x half> [ zeroinitializer, %if.end415.1 ], [ %147, %if.end.1.2 ], !dbg !83
  %max_cache.sroa.0.5 = phi float [ %max_cache.sroa.0.3, %if.end415.1 ], [ %max_cache.sroa.0.4, %if.end.1.2 ], !dbg !83
  %global_max.sroa.0.1.2 = phi float [ %global_max.sroa.0.1.1, %if.end415.1 ], [ %131, %if.end.1.2 ], !dbg !83
  %149 = or disjoint i64 %23, 3, !dbg !185
  %arrayidx130.3 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %149, !dbg !69
  %150 = load i32, ptr addrspace(1) %arrayidx130.3, align 4, !dbg !69, !tbaa !30
  %mul131.3 = shl nsw i32 %150, 4, !dbg !70
  %cmp132.3 = icmp slt i32 %150, 0, !dbg !71
  %cmp134.not.3 = icmp sgt i32 %mul131.3, %1
  %or.cond.3 = select i1 %cmp132.3, i1 true, i1 %cmp134.not.3, !dbg !72
  br i1 %or.cond.3, label %if.end415.3, label %if.then.3, !dbg !72

if.then.3:                                        ; preds = %if.end415.2
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add141.3 = add nuw nsw i32 %mul131.3, %shr140
  %conv151.3 = zext nneg i32 %mul131.3 to i64
  %.idx.3 = shl nuw nsw i64 %conv151.3, 7
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1049, i64 %.idx.3, !dbg !78
  %cmp144.3 = icmp ult i32 %add141.3, 1024, !dbg !79
  br i1 %cmp144.3, label %if.then145.3, label %if.end.3, !dbg !80

if.then145.3:                                     ; preds = %if.then.3
  %gep1042.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.3, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.3, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.3, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.3, i64 4
  %condval.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %gep1042.3, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.3, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.3, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.3, align 4, !dbg !81, !tbaa !30
  br label %if.end.3, !dbg !82

if.end.3:                                         ; preds = %if.then145.3, %if.then.3
  %condval.sroa.0.0.3 = phi i32 [ %condval.sroa.0.0.copyload.3, %if.then145.3 ], [ 0, %if.then.3 ], !dbg !83
  %condval.sroa.5.0.3 = phi i32 [ %condval.sroa.5.0.copyload.3, %if.then145.3 ], [ 0, %if.then.3 ], !dbg !83
  %condval.sroa.6.0.3 = phi i32 [ %condval.sroa.6.0.copyload.3, %if.then145.3 ], [ 0, %if.then.3 ], !dbg !83
  %condval.sroa.7.0.3 = phi i32 [ %condval.sroa.7.0.copyload.3, %if.then145.3 ], [ 0, %if.then.3 ], !dbg !83
  store i32 %condval.sroa.0.0.3, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.3, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.3, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.3, align 4, !dbg !84, !tbaa !30
  %cmp144.1.3 = icmp ult i32 %add141.3, 1016, !dbg !79
  br i1 %cmp144.1.3, label %if.then145.1.3, label %if.end.1.3, !dbg !80

if.then145.1.3:                                   ; preds = %if.end.3
  %add150.1.3 = or disjoint i64 %mul147, 512
  %gep1042.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.3, i64 %add150.1.3
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1.3, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1.3, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1.3, i64 4
  %condval.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %gep1042.1.3, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.3, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.3, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.3, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.3, !dbg !82

if.end.1.3:                                       ; preds = %if.then145.1.3, %if.end.3
  %condval.sroa.0.0.1.3 = phi i32 [ %condval.sroa.0.0.copyload.1.3, %if.then145.1.3 ], [ 0, %if.end.3 ], !dbg !83
  %condval.sroa.5.0.1.3 = phi i32 [ %condval.sroa.5.0.copyload.1.3, %if.then145.1.3 ], [ 0, %if.end.3 ], !dbg !83
  %condval.sroa.6.0.1.3 = phi i32 [ %condval.sroa.6.0.copyload.1.3, %if.then145.1.3 ], [ 0, %if.end.3 ], !dbg !83
  %condval.sroa.7.0.1.3 = phi i32 [ %condval.sroa.7.0.copyload.1.3, %if.then145.1.3 ], [ 0, %if.end.3 ], !dbg !83
  store i32 %condval.sroa.0.0.1.3, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1.3, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1.3, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1.3, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.31134 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %151 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.31134, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %152 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %16, <4 x float> %151), !dbg !91
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %153 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %18, <4 x float> %152), !dbg !91
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %154 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %22, <4 x float> %153), !dbg !91
  %add282.3 = add nuw nsw i32 %mul131.3, %mul281
  %cmp285.not.31135 = icmp sgt i32 %add282.3, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2293 = extractelement <4 x float> %154, i64 0
  %spec.select2730 = select i1 %cmp285.not.31135, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2293, !dbg !93
  %cmp285.not.1.3.not = icmp slt i32 %add282.3, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2388 = extractelement <4 x float> %154, i64 1, !dbg !93
  %condval_1.0.1.3 = select i1 %cmp285.not.1.3.not, float %scores.sroa.0.4.vec.extract2388, float 0xFFF0000000000000, !dbg !93
  %add283.2.3 = or disjoint i32 %add282.3, 2, !dbg !94
  %cmp285.not.2.3 = icmp sgt i32 %add283.2.3, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2465 = extractelement <4 x float> %154, i64 2, !dbg !93
  %condval_1.0.2.3 = select i1 %cmp285.not.2.3, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2465, !dbg !93
  %add283.3.3 = or disjoint i32 %add282.3, 3, !dbg !94
  %cmp285.not.3.3 = icmp sgt i32 %add283.3.3, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2542 = extractelement <4 x float> %154, i64 3, !dbg !93
  %condval_1.0.3.3 = select i1 %cmp285.not.3.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2542, !dbg !93
  %155 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2730, float 0xFFF0000000000000), !dbg !95
  %156 = tail call contract noundef float @llvm.maxnum.f32(float %155, float %condval_1.0.1.3), !dbg !95
  %157 = tail call contract noundef float @llvm.maxnum.f32(float %156, float %condval_1.0.2.3), !dbg !95
  %158 = tail call contract noundef float @llvm.maxnum.f32(float %157, float %condval_1.0.3.3), !dbg !95
  %159 = bitcast float %158 to i32, !dbg !99
  %160 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !102
  %161 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %160) #11, !dbg !107
  %xor.i.i.3 = xor i32 %161, 32, !dbg !108
  %162 = and i32 %161, -64, !dbg !109
  %and.i.i.3 = add nsw i32 %162, 64, !dbg !109
  %cmp.not.i.i.3 = icmp slt i32 %xor.i.i.3, %and.i.i.3, !dbg !110
  %cond.i.i.3 = select i1 %cmp.not.i.i.3, i32 %xor.i.i.3, i32 %161, !dbg !111
  %shl.i.i.3 = shl i32 %cond.i.i.3, 2, !dbg !112
  %163 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.3, i32 %159), !dbg !113
  %164 = bitcast i32 %163 to float, !dbg !114
  %165 = tail call contract noundef float @llvm.maxnum.f32(float %158, float %164), !dbg !115
  %166 = bitcast float %165 to i32, !dbg !117
  %167 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !119
  %168 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %167) #11, !dbg !122
  %xor.i.i951.3 = xor i32 %168, 16, !dbg !123
  %169 = and i32 %168, -64, !dbg !124
  %and.i.i952.3 = add nsw i32 %169, 64, !dbg !124
  %cmp.not.i.i953.3 = icmp slt i32 %xor.i.i951.3, %and.i.i952.3, !dbg !125
  %cond.i.i954.3 = select i1 %cmp.not.i.i953.3, i32 %xor.i.i951.3, i32 %168, !dbg !126
  %shl.i.i955.3 = shl i32 %cond.i.i954.3, 2, !dbg !127
  %170 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i955.3, i32 %166), !dbg !128
  %171 = bitcast i32 %170 to float, !dbg !129
  %172 = tail call contract noundef float @llvm.maxnum.f32(float %165, float %171), !dbg !130
  %cmp326.3 = icmp eq i32 %shr324, 3, !dbg !132
  %max_cache.sroa.0.6 = select i1 %cmp326.3, float %172, float %max_cache.sroa.0.5, !dbg !133
  %173 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.2, float %172), !dbg !134
  %sub.3 = fsub contract float %spec.select2730, %172, !dbg !136
  %sub347.3 = fsub contract float %condval_1.0.1.3, %172, !dbg !137
  %sub350.3 = fsub contract float %condval_1.0.2.3, %172, !dbg !138
  %sub353.3 = fsub contract float %condval_1.0.3.3, %172, !dbg !139
  %mul358.3 = fmul contract float %sub.3, 0x3FC7154760000000, !dbg !140
  %mul362.3 = fmul contract float %sub347.3, 0x3FC7154760000000, !dbg !141
  %mul366.3 = fmul contract float %sub350.3, 0x3FC7154760000000, !dbg !142
  %mul370.3 = fmul contract float %sub353.3, 0x3FC7154760000000, !dbg !143
  %add375.3 = fadd contract float %mul358.3, 8.000000e+00, !dbg !144
  %add379.3 = fadd contract float %mul362.3, 8.000000e+00, !dbg !145
  %add383.3 = fadd contract float %mul366.3, 8.000000e+00, !dbg !146
  %add387.3 = fadd contract float %mul370.3, 8.000000e+00, !dbg !147
  %cmp.i.i.3 = fcmp contract olt float %add375.3, -1.260000e+02, !dbg !148
  %cond.i.i960.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i.3 = fadd contract float %add375.3, %cond.i.i960.3, !dbg !148
  %174 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !148
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %174, !dbg !148
  %cmp.i.i961.3 = fcmp contract olt float %add379.3, -1.260000e+02, !dbg !151
  %cond.i.i962.3 = select contract i1 %cmp.i.i961.3, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i963.3 = fadd contract float %add379.3, %cond.i.i962.3, !dbg !151
  %175 = tail call contract float @llvm.exp2.f32(float %add.i.i963.3), !dbg !151
  %cond2.i.i964.3 = select contract i1 %cmp.i.i961.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i965.3 = fmul contract float %cond2.i.i964.3, %175, !dbg !151
  %cmp.i.i966.3 = fcmp contract olt float %add383.3, -1.260000e+02, !dbg !153
  %cond.i.i967.3 = select contract i1 %cmp.i.i966.3, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i968.3 = fadd contract float %add383.3, %cond.i.i967.3, !dbg !153
  %176 = tail call contract float @llvm.exp2.f32(float %add.i.i968.3), !dbg !153
  %cond2.i.i969.3 = select contract i1 %cmp.i.i966.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i970.3 = fmul contract float %cond2.i.i969.3, %176, !dbg !153
  %cmp.i.i971.3 = fcmp contract olt float %add387.3, -1.260000e+02, !dbg !155
  %cond.i.i972.3 = select contract i1 %cmp.i.i971.3, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i973.3 = fadd contract float %add387.3, %cond.i.i972.3, !dbg !155
  %177 = tail call contract float @llvm.exp2.f32(float %add.i.i973.3), !dbg !155
  %cond2.i.i974.3 = select contract i1 %cmp.i.i971.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i975.3 = fmul contract float %cond2.i.i974.3, %177, !dbg !155
  %178 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %179 = fptrunc float %mul.i.i.3 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %178), !dbg !157, !noalias !165
  %180 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %181 = fptrunc float %mul.i.i965.3 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %180), !dbg !170, !noalias !165
  %182 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %183 = fptrunc float %mul.i.i970.3 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %182), !dbg !172, !noalias !176
  %184 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %185 = fptrunc float %mul.i.i975.3 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %184), !dbg !181, !noalias !176
  %186 = insertelement <4 x half> poison, half %179, i64 0, !dbg !183
  %187 = insertelement <4 x half> %186, half %181, i64 1, !dbg !183
  %188 = insertelement <4 x half> %187, half %183, i64 2, !dbg !183
  %189 = insertelement <4 x half> %188, half %185, i64 3, !dbg !183
  br label %if.end415.3, !dbg !184

if.end415.3:                                      ; preds = %if.end.1.3, %if.end415.2
  %190 = phi <4 x half> [ zeroinitializer, %if.end415.2 ], [ %189, %if.end.1.3 ], !dbg !83
  %max_cache.sroa.0.7 = phi float [ %max_cache.sroa.0.5, %if.end415.2 ], [ %max_cache.sroa.0.6, %if.end.1.3 ], !dbg !83
  %global_max.sroa.0.1.3 = phi float [ %global_max.sroa.0.1.2, %if.end415.2 ], [ %173, %if.end.1.3 ], !dbg !83
  %191 = or disjoint i64 %23, 4, !dbg !185
  %arrayidx130.4 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %191, !dbg !69
  %192 = load i32, ptr addrspace(1) %arrayidx130.4, align 4, !dbg !69, !tbaa !30
  %mul131.4 = shl nsw i32 %192, 4, !dbg !70
  %cmp132.4 = icmp slt i32 %192, 0, !dbg !71
  %cmp134.not.4 = icmp sgt i32 %mul131.4, %1
  %or.cond.4 = select i1 %cmp132.4, i1 true, i1 %cmp134.not.4, !dbg !72
  br i1 %or.cond.4, label %if.end415.4, label %if.then.4, !dbg !72

if.then.4:                                        ; preds = %if.end415.3
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add141.4 = add nuw nsw i32 %mul131.4, %shr140
  %conv151.4 = zext nneg i32 %mul131.4 to i64
  %.idx.4 = shl nuw nsw i64 %conv151.4, 7
  %gep.4 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1049, i64 %.idx.4, !dbg !78
  %cmp144.4 = icmp ult i32 %add141.4, 1024, !dbg !79
  br i1 %cmp144.4, label %if.then145.4, label %if.end.4, !dbg !80

if.then145.4:                                     ; preds = %if.then.4
  %gep1042.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.4, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.4, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.4, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.4, i64 4
  %condval.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %gep1042.4, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.4, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.4, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.4, align 4, !dbg !81, !tbaa !30
  br label %if.end.4, !dbg !82

if.end.4:                                         ; preds = %if.then145.4, %if.then.4
  %condval.sroa.0.0.4 = phi i32 [ %condval.sroa.0.0.copyload.4, %if.then145.4 ], [ 0, %if.then.4 ], !dbg !83
  %condval.sroa.5.0.4 = phi i32 [ %condval.sroa.5.0.copyload.4, %if.then145.4 ], [ 0, %if.then.4 ], !dbg !83
  %condval.sroa.6.0.4 = phi i32 [ %condval.sroa.6.0.copyload.4, %if.then145.4 ], [ 0, %if.then.4 ], !dbg !83
  %condval.sroa.7.0.4 = phi i32 [ %condval.sroa.7.0.copyload.4, %if.then145.4 ], [ 0, %if.then.4 ], !dbg !83
  store i32 %condval.sroa.0.0.4, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.4, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.4, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.4, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.4, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.4, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.4, align 4, !dbg !84, !tbaa !30
  %cmp144.1.4 = icmp ult i32 %add141.4, 1016, !dbg !79
  br i1 %cmp144.1.4, label %if.then145.1.4, label %if.end.1.4, !dbg !80

if.then145.1.4:                                   ; preds = %if.end.4
  %add150.1.4 = or disjoint i64 %mul147, 512
  %gep1042.1.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.4, i64 %add150.1.4
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1.4, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1.4, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1.4, i64 4
  %condval.sroa.0.0.copyload.1.4 = load i32, ptr addrspace(4) %gep1042.1.4, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.4 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.4, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.4 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.4, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.4 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.4, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.4, !dbg !82

if.end.1.4:                                       ; preds = %if.then145.1.4, %if.end.4
  %condval.sroa.0.0.1.4 = phi i32 [ %condval.sroa.0.0.copyload.1.4, %if.then145.1.4 ], [ 0, %if.end.4 ], !dbg !83
  %condval.sroa.5.0.1.4 = phi i32 [ %condval.sroa.5.0.copyload.1.4, %if.then145.1.4 ], [ 0, %if.end.4 ], !dbg !83
  %condval.sroa.6.0.1.4 = phi i32 [ %condval.sroa.6.0.copyload.1.4, %if.then145.1.4 ], [ 0, %if.end.4 ], !dbg !83
  %condval.sroa.7.0.1.4 = phi i32 [ %condval.sroa.7.0.copyload.1.4, %if.then145.1.4 ], [ 0, %if.end.4 ], !dbg !83
  store i32 %condval.sroa.0.0.1.4, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.4, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1.4, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.4, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1.4, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.4, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1.4, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %193 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %194 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %16, <4 x float> %193), !dbg !91
  %k_local.sroa.0.0.copyload.2.4 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %195 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.4, <4 x half> %18, <4 x float> %194), !dbg !91
  %k_local.sroa.0.0.copyload.3.4 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %196 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.4, <4 x half> %22, <4 x float> %195), !dbg !91
  %add282.4 = add nuw nsw i32 %mul131.4, %mul281
  %cmp285.not.4 = icmp sgt i32 %add282.4, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2303 = extractelement <4 x float> %196, i64 0
  %spec.select2731 = select i1 %cmp285.not.4, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2303, !dbg !93
  %cmp285.not.1.4.not = icmp slt i32 %add282.4, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2394 = extractelement <4 x float> %196, i64 1, !dbg !93
  %condval_1.0.1.4 = select i1 %cmp285.not.1.4.not, float %scores.sroa.0.4.vec.extract2394, float 0xFFF0000000000000, !dbg !93
  %add283.2.4 = or disjoint i32 %add282.4, 2, !dbg !94
  %cmp285.not.2.4 = icmp sgt i32 %add283.2.4, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2471 = extractelement <4 x float> %196, i64 2, !dbg !93
  %condval_1.0.2.4 = select i1 %cmp285.not.2.4, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2471, !dbg !93
  %add283.3.4 = or disjoint i32 %add282.4, 3, !dbg !94
  %cmp285.not.3.4 = icmp sgt i32 %add283.3.4, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2548 = extractelement <4 x float> %196, i64 3, !dbg !93
  %condval_1.0.3.4 = select i1 %cmp285.not.3.4, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2548, !dbg !93
  %197 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2731, float 0xFFF0000000000000), !dbg !95
  %198 = tail call contract noundef float @llvm.maxnum.f32(float %197, float %condval_1.0.1.4), !dbg !95
  %199 = tail call contract noundef float @llvm.maxnum.f32(float %198, float %condval_1.0.2.4), !dbg !95
  %200 = tail call contract noundef float @llvm.maxnum.f32(float %199, float %condval_1.0.3.4), !dbg !95
  %201 = bitcast float %200 to i32, !dbg !99
  %202 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !102
  %203 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %202) #11, !dbg !107
  %xor.i.i.4 = xor i32 %203, 32, !dbg !108
  %204 = and i32 %203, -64, !dbg !109
  %and.i.i.4 = add nsw i32 %204, 64, !dbg !109
  %cmp.not.i.i.4 = icmp slt i32 %xor.i.i.4, %and.i.i.4, !dbg !110
  %cond.i.i.4 = select i1 %cmp.not.i.i.4, i32 %xor.i.i.4, i32 %203, !dbg !111
  %shl.i.i.4 = shl i32 %cond.i.i.4, 2, !dbg !112
  %205 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.4, i32 %201), !dbg !113
  %206 = bitcast i32 %205 to float, !dbg !114
  %207 = tail call contract noundef float @llvm.maxnum.f32(float %200, float %206), !dbg !115
  %208 = bitcast float %207 to i32, !dbg !117
  %209 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !119
  %210 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %209) #11, !dbg !122
  %xor.i.i951.4 = xor i32 %210, 16, !dbg !123
  %211 = and i32 %210, -64, !dbg !124
  %and.i.i952.4 = add nsw i32 %211, 64, !dbg !124
  %cmp.not.i.i953.4 = icmp slt i32 %xor.i.i951.4, %and.i.i952.4, !dbg !125
  %cond.i.i954.4 = select i1 %cmp.not.i.i953.4, i32 %xor.i.i951.4, i32 %210, !dbg !126
  %shl.i.i955.4 = shl i32 %cond.i.i954.4, 2, !dbg !127
  %212 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i955.4, i32 %208), !dbg !128
  %213 = bitcast i32 %212 to float, !dbg !129
  %214 = tail call contract noundef float @llvm.maxnum.f32(float %207, float %213), !dbg !130
  %cmp326.4 = icmp ult i32 %2, 16, !dbg !132
  %max_cache.sroa.11.0 = select i1 %cmp326.4, float %214, float 0xFFF0000000000000, !dbg !133
  %215 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.3, float %214), !dbg !134
  %sub.4 = fsub contract float %spec.select2731, %214, !dbg !136
  %sub347.4 = fsub contract float %condval_1.0.1.4, %214, !dbg !137
  %sub350.4 = fsub contract float %condval_1.0.2.4, %214, !dbg !138
  %sub353.4 = fsub contract float %condval_1.0.3.4, %214, !dbg !139
  %mul358.4 = fmul contract float %sub.4, 0x3FC7154760000000, !dbg !140
  %mul362.4 = fmul contract float %sub347.4, 0x3FC7154760000000, !dbg !141
  %mul366.4 = fmul contract float %sub350.4, 0x3FC7154760000000, !dbg !142
  %mul370.4 = fmul contract float %sub353.4, 0x3FC7154760000000, !dbg !143
  %add375.4 = fadd contract float %mul358.4, 8.000000e+00, !dbg !144
  %add379.4 = fadd contract float %mul362.4, 8.000000e+00, !dbg !145
  %add383.4 = fadd contract float %mul366.4, 8.000000e+00, !dbg !146
  %add387.4 = fadd contract float %mul370.4, 8.000000e+00, !dbg !147
  %cmp.i.i.4 = fcmp contract olt float %add375.4, -1.260000e+02, !dbg !148
  %cond.i.i960.4 = select contract i1 %cmp.i.i.4, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i.4 = fadd contract float %add375.4, %cond.i.i960.4, !dbg !148
  %216 = tail call contract float @llvm.exp2.f32(float %add.i.i.4), !dbg !148
  %cond2.i.i.4 = select contract i1 %cmp.i.i.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i.4 = fmul contract float %cond2.i.i.4, %216, !dbg !148
  %cmp.i.i961.4 = fcmp contract olt float %add379.4, -1.260000e+02, !dbg !151
  %cond.i.i962.4 = select contract i1 %cmp.i.i961.4, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i963.4 = fadd contract float %add379.4, %cond.i.i962.4, !dbg !151
  %217 = tail call contract float @llvm.exp2.f32(float %add.i.i963.4), !dbg !151
  %cond2.i.i964.4 = select contract i1 %cmp.i.i961.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i965.4 = fmul contract float %cond2.i.i964.4, %217, !dbg !151
  %cmp.i.i966.4 = fcmp contract olt float %add383.4, -1.260000e+02, !dbg !153
  %cond.i.i967.4 = select contract i1 %cmp.i.i966.4, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i968.4 = fadd contract float %add383.4, %cond.i.i967.4, !dbg !153
  %218 = tail call contract float @llvm.exp2.f32(float %add.i.i968.4), !dbg !153
  %cond2.i.i969.4 = select contract i1 %cmp.i.i966.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i970.4 = fmul contract float %cond2.i.i969.4, %218, !dbg !153
  %cmp.i.i971.4 = fcmp contract olt float %add387.4, -1.260000e+02, !dbg !155
  %cond.i.i972.4 = select contract i1 %cmp.i.i971.4, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i973.4 = fadd contract float %add387.4, %cond.i.i972.4, !dbg !155
  %219 = tail call contract float @llvm.exp2.f32(float %add.i.i973.4), !dbg !155
  %cond2.i.i974.4 = select contract i1 %cmp.i.i971.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i975.4 = fmul contract float %cond2.i.i974.4, %219, !dbg !155
  %220 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %221 = fptrunc float %mul.i.i.4 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %220), !dbg !157, !noalias !165
  %222 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %223 = fptrunc float %mul.i.i965.4 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %222), !dbg !170, !noalias !165
  %224 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %225 = fptrunc float %mul.i.i970.4 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %224), !dbg !172, !noalias !176
  %226 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %227 = fptrunc float %mul.i.i975.4 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %226), !dbg !181, !noalias !176
  %228 = insertelement <4 x half> poison, half %221, i64 0, !dbg !183
  %229 = insertelement <4 x half> %228, half %223, i64 1, !dbg !183
  %230 = insertelement <4 x half> %229, half %225, i64 2, !dbg !183
  %231 = insertelement <4 x half> %230, half %227, i64 3, !dbg !183
  br label %if.end415.4, !dbg !184

if.end415.4:                                      ; preds = %if.end.1.4, %if.end415.3
  %232 = phi <4 x half> [ zeroinitializer, %if.end415.3 ], [ %231, %if.end.1.4 ], !dbg !83
  %max_cache.sroa.11.1 = phi float [ 0xFFF0000000000000, %if.end415.3 ], [ %max_cache.sroa.11.0, %if.end.1.4 ], !dbg !83
  %global_max.sroa.0.1.4 = phi float [ %global_max.sroa.0.1.3, %if.end415.3 ], [ %215, %if.end.1.4 ], !dbg !83
  %233 = or disjoint i64 %23, 5, !dbg !185
  %arrayidx130.5 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %233, !dbg !69
  %234 = load i32, ptr addrspace(1) %arrayidx130.5, align 4, !dbg !69, !tbaa !30
  %mul131.5 = shl nsw i32 %234, 4, !dbg !70
  %cmp132.5 = icmp slt i32 %234, 0, !dbg !71
  %cmp134.not.5 = icmp sgt i32 %mul131.5, %1
  %or.cond.5 = select i1 %cmp132.5, i1 true, i1 %cmp134.not.5, !dbg !72
  br i1 %or.cond.5, label %if.end415.5, label %if.then.5, !dbg !72

if.then.5:                                        ; preds = %if.end415.4
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add141.5 = add nuw nsw i32 %mul131.5, %shr140
  %conv151.5 = zext nneg i32 %mul131.5 to i64
  %.idx.5 = shl nuw nsw i64 %conv151.5, 7
  %gep.5 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1049, i64 %.idx.5, !dbg !78
  %cmp144.5 = icmp ult i32 %add141.5, 1024, !dbg !79
  br i1 %cmp144.5, label %if.then145.5, label %if.end.5, !dbg !80

if.then145.5:                                     ; preds = %if.then.5
  %gep1042.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.5, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.5, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.5, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.5, i64 4
  %condval.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %gep1042.5, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.5, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.5, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.5, align 4, !dbg !81, !tbaa !30
  br label %if.end.5, !dbg !82

if.end.5:                                         ; preds = %if.then145.5, %if.then.5
  %condval.sroa.0.0.5 = phi i32 [ %condval.sroa.0.0.copyload.5, %if.then145.5 ], [ 0, %if.then.5 ], !dbg !83
  %condval.sroa.5.0.5 = phi i32 [ %condval.sroa.5.0.copyload.5, %if.then145.5 ], [ 0, %if.then.5 ], !dbg !83
  %condval.sroa.6.0.5 = phi i32 [ %condval.sroa.6.0.copyload.5, %if.then145.5 ], [ 0, %if.then.5 ], !dbg !83
  %condval.sroa.7.0.5 = phi i32 [ %condval.sroa.7.0.copyload.5, %if.then145.5 ], [ 0, %if.then.5 ], !dbg !83
  store i32 %condval.sroa.0.0.5, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.5, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.5, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.5, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.5, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.5, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.5, align 4, !dbg !84, !tbaa !30
  %cmp144.1.5 = icmp ult i32 %add141.5, 1016, !dbg !79
  br i1 %cmp144.1.5, label %if.then145.1.5, label %if.end.1.5, !dbg !80

if.then145.1.5:                                   ; preds = %if.end.5
  %add150.1.5 = or disjoint i64 %mul147, 512
  %gep1042.1.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.5, i64 %add150.1.5
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1.5, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1.5, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1.5, i64 4
  %condval.sroa.0.0.copyload.1.5 = load i32, ptr addrspace(4) %gep1042.1.5, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.5 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.5, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.5 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.5, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.5 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.5, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.5, !dbg !82

if.end.1.5:                                       ; preds = %if.then145.1.5, %if.end.5
  %condval.sroa.0.0.1.5 = phi i32 [ %condval.sroa.0.0.copyload.1.5, %if.then145.1.5 ], [ 0, %if.end.5 ], !dbg !83
  %condval.sroa.5.0.1.5 = phi i32 [ %condval.sroa.5.0.copyload.1.5, %if.then145.1.5 ], [ 0, %if.end.5 ], !dbg !83
  %condval.sroa.6.0.1.5 = phi i32 [ %condval.sroa.6.0.copyload.1.5, %if.then145.1.5 ], [ 0, %if.end.5 ], !dbg !83
  %condval.sroa.7.0.1.5 = phi i32 [ %condval.sroa.7.0.copyload.1.5, %if.then145.1.5 ], [ 0, %if.end.5 ], !dbg !83
  store i32 %condval.sroa.0.0.1.5, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.5, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1.5, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.5, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1.5, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.5, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1.5, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %235 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %236 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %16, <4 x float> %235), !dbg !91
  %k_local.sroa.0.0.copyload.2.5 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %237 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.5, <4 x half> %18, <4 x float> %236), !dbg !91
  %k_local.sroa.0.0.copyload.3.5 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %238 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.5, <4 x half> %22, <4 x float> %237), !dbg !91
  %add282.5 = add nuw nsw i32 %mul131.5, %mul281
  %cmp285.not.5 = icmp sgt i32 %add282.5, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2313 = extractelement <4 x float> %238, i64 0
  %spec.select2732 = select i1 %cmp285.not.5, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2313, !dbg !93
  %cmp285.not.1.5.not = icmp slt i32 %add282.5, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2400 = extractelement <4 x float> %238, i64 1, !dbg !93
  %condval_1.0.1.5 = select i1 %cmp285.not.1.5.not, float %scores.sroa.0.4.vec.extract2400, float 0xFFF0000000000000, !dbg !93
  %add283.2.5 = or disjoint i32 %add282.5, 2, !dbg !94
  %cmp285.not.2.5 = icmp sgt i32 %add283.2.5, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2477 = extractelement <4 x float> %238, i64 2, !dbg !93
  %condval_1.0.2.5 = select i1 %cmp285.not.2.5, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2477, !dbg !93
  %add283.3.5 = or disjoint i32 %add282.5, 3, !dbg !94
  %cmp285.not.3.5 = icmp sgt i32 %add283.3.5, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2554 = extractelement <4 x float> %238, i64 3, !dbg !93
  %condval_1.0.3.5 = select i1 %cmp285.not.3.5, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2554, !dbg !93
  %239 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2732, float 0xFFF0000000000000), !dbg !95
  %240 = tail call contract noundef float @llvm.maxnum.f32(float %239, float %condval_1.0.1.5), !dbg !95
  %241 = tail call contract noundef float @llvm.maxnum.f32(float %240, float %condval_1.0.2.5), !dbg !95
  %242 = tail call contract noundef float @llvm.maxnum.f32(float %241, float %condval_1.0.3.5), !dbg !95
  %243 = bitcast float %242 to i32, !dbg !99
  %244 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !102
  %245 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %244) #11, !dbg !107
  %xor.i.i.5 = xor i32 %245, 32, !dbg !108
  %246 = and i32 %245, -64, !dbg !109
  %and.i.i.5 = add nsw i32 %246, 64, !dbg !109
  %cmp.not.i.i.5 = icmp slt i32 %xor.i.i.5, %and.i.i.5, !dbg !110
  %cond.i.i.5 = select i1 %cmp.not.i.i.5, i32 %xor.i.i.5, i32 %245, !dbg !111
  %shl.i.i.5 = shl i32 %cond.i.i.5, 2, !dbg !112
  %247 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.5, i32 %243), !dbg !113
  %248 = bitcast i32 %247 to float, !dbg !114
  %249 = tail call contract noundef float @llvm.maxnum.f32(float %242, float %248), !dbg !115
  %250 = bitcast float %249 to i32, !dbg !117
  %251 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !119
  %252 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %251) #11, !dbg !122
  %xor.i.i951.5 = xor i32 %252, 16, !dbg !123
  %253 = and i32 %252, -64, !dbg !124
  %and.i.i952.5 = add nsw i32 %253, 64, !dbg !124
  %cmp.not.i.i953.5 = icmp slt i32 %xor.i.i951.5, %and.i.i952.5, !dbg !125
  %cond.i.i954.5 = select i1 %cmp.not.i.i953.5, i32 %xor.i.i951.5, i32 %252, !dbg !126
  %shl.i.i955.5 = shl i32 %cond.i.i954.5, 2, !dbg !127
  %254 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i955.5, i32 %250), !dbg !128
  %255 = bitcast i32 %254 to float, !dbg !129
  %256 = tail call contract noundef float @llvm.maxnum.f32(float %249, float %255), !dbg !130
  %cmp326.5 = icmp eq i32 %shr324, 1, !dbg !132
  %max_cache.sroa.11.2 = select i1 %cmp326.5, float %256, float %max_cache.sroa.11.1, !dbg !133
  %257 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.4, float %256), !dbg !134
  %sub.5 = fsub contract float %spec.select2732, %256, !dbg !136
  %sub347.5 = fsub contract float %condval_1.0.1.5, %256, !dbg !137
  %sub350.5 = fsub contract float %condval_1.0.2.5, %256, !dbg !138
  %sub353.5 = fsub contract float %condval_1.0.3.5, %256, !dbg !139
  %mul358.5 = fmul contract float %sub.5, 0x3FC7154760000000, !dbg !140
  %mul362.5 = fmul contract float %sub347.5, 0x3FC7154760000000, !dbg !141
  %mul366.5 = fmul contract float %sub350.5, 0x3FC7154760000000, !dbg !142
  %mul370.5 = fmul contract float %sub353.5, 0x3FC7154760000000, !dbg !143
  %add375.5 = fadd contract float %mul358.5, 8.000000e+00, !dbg !144
  %add379.5 = fadd contract float %mul362.5, 8.000000e+00, !dbg !145
  %add383.5 = fadd contract float %mul366.5, 8.000000e+00, !dbg !146
  %add387.5 = fadd contract float %mul370.5, 8.000000e+00, !dbg !147
  %cmp.i.i.5 = fcmp contract olt float %add375.5, -1.260000e+02, !dbg !148
  %cond.i.i960.5 = select contract i1 %cmp.i.i.5, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i.5 = fadd contract float %add375.5, %cond.i.i960.5, !dbg !148
  %258 = tail call contract float @llvm.exp2.f32(float %add.i.i.5), !dbg !148
  %cond2.i.i.5 = select contract i1 %cmp.i.i.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i.5 = fmul contract float %cond2.i.i.5, %258, !dbg !148
  %cmp.i.i961.5 = fcmp contract olt float %add379.5, -1.260000e+02, !dbg !151
  %cond.i.i962.5 = select contract i1 %cmp.i.i961.5, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i963.5 = fadd contract float %add379.5, %cond.i.i962.5, !dbg !151
  %259 = tail call contract float @llvm.exp2.f32(float %add.i.i963.5), !dbg !151
  %cond2.i.i964.5 = select contract i1 %cmp.i.i961.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i965.5 = fmul contract float %cond2.i.i964.5, %259, !dbg !151
  %cmp.i.i966.5 = fcmp contract olt float %add383.5, -1.260000e+02, !dbg !153
  %cond.i.i967.5 = select contract i1 %cmp.i.i966.5, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i968.5 = fadd contract float %add383.5, %cond.i.i967.5, !dbg !153
  %260 = tail call contract float @llvm.exp2.f32(float %add.i.i968.5), !dbg !153
  %cond2.i.i969.5 = select contract i1 %cmp.i.i966.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i970.5 = fmul contract float %cond2.i.i969.5, %260, !dbg !153
  %cmp.i.i971.5 = fcmp contract olt float %add387.5, -1.260000e+02, !dbg !155
  %cond.i.i972.5 = select contract i1 %cmp.i.i971.5, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i973.5 = fadd contract float %add387.5, %cond.i.i972.5, !dbg !155
  %261 = tail call contract float @llvm.exp2.f32(float %add.i.i973.5), !dbg !155
  %cond2.i.i974.5 = select contract i1 %cmp.i.i971.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i975.5 = fmul contract float %cond2.i.i974.5, %261, !dbg !155
  %262 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %263 = fptrunc float %mul.i.i.5 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %262), !dbg !157, !noalias !165
  %264 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %265 = fptrunc float %mul.i.i965.5 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %264), !dbg !170, !noalias !165
  %266 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %267 = fptrunc float %mul.i.i970.5 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %266), !dbg !172, !noalias !176
  %268 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %269 = fptrunc float %mul.i.i975.5 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %268), !dbg !181, !noalias !176
  %270 = insertelement <4 x half> poison, half %263, i64 0, !dbg !183
  %271 = insertelement <4 x half> %270, half %265, i64 1, !dbg !183
  %272 = insertelement <4 x half> %271, half %267, i64 2, !dbg !183
  %273 = insertelement <4 x half> %272, half %269, i64 3, !dbg !183
  br label %if.end415.5, !dbg !184

if.end415.5:                                      ; preds = %if.end.1.5, %if.end415.4
  %274 = phi <4 x half> [ zeroinitializer, %if.end415.4 ], [ %273, %if.end.1.5 ], !dbg !83
  %max_cache.sroa.11.3 = phi float [ %max_cache.sroa.11.1, %if.end415.4 ], [ %max_cache.sroa.11.2, %if.end.1.5 ], !dbg !83
  %global_max.sroa.0.1.5 = phi float [ %global_max.sroa.0.1.4, %if.end415.4 ], [ %257, %if.end.1.5 ], !dbg !83
  %275 = or disjoint i64 %23, 6, !dbg !185
  %arrayidx130.6 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %275, !dbg !69
  %276 = load i32, ptr addrspace(1) %arrayidx130.6, align 4, !dbg !69, !tbaa !30
  %mul131.6 = shl nsw i32 %276, 4, !dbg !70
  %cmp132.6 = icmp slt i32 %276, 0, !dbg !71
  %cmp134.not.6 = icmp sgt i32 %mul131.6, %1
  %or.cond.6 = select i1 %cmp132.6, i1 true, i1 %cmp134.not.6, !dbg !72
  br i1 %or.cond.6, label %if.end415.6, label %if.then.6, !dbg !72

if.then.6:                                        ; preds = %if.end415.5
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add141.6 = add nuw nsw i32 %mul131.6, %shr140
  %conv151.6 = zext nneg i32 %mul131.6 to i64
  %.idx.6 = shl nuw nsw i64 %conv151.6, 7
  %gep.6 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1049, i64 %.idx.6, !dbg !78
  %cmp144.6 = icmp ult i32 %add141.6, 1024, !dbg !79
  br i1 %cmp144.6, label %if.then145.6, label %if.end.6, !dbg !80

if.then145.6:                                     ; preds = %if.then.6
  %gep1042.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.6, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.6, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.6, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.6, i64 4
  %condval.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %gep1042.6, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.6, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.6, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.6, align 4, !dbg !81, !tbaa !30
  br label %if.end.6, !dbg !82

if.end.6:                                         ; preds = %if.then145.6, %if.then.6
  %condval.sroa.0.0.6 = phi i32 [ %condval.sroa.0.0.copyload.6, %if.then145.6 ], [ 0, %if.then.6 ], !dbg !83
  %condval.sroa.5.0.6 = phi i32 [ %condval.sroa.5.0.copyload.6, %if.then145.6 ], [ 0, %if.then.6 ], !dbg !83
  %condval.sroa.6.0.6 = phi i32 [ %condval.sroa.6.0.copyload.6, %if.then145.6 ], [ 0, %if.then.6 ], !dbg !83
  %condval.sroa.7.0.6 = phi i32 [ %condval.sroa.7.0.copyload.6, %if.then145.6 ], [ 0, %if.then.6 ], !dbg !83
  store i32 %condval.sroa.0.0.6, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.6, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.6, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.6, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.6, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.6, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.6, align 4, !dbg !84, !tbaa !30
  %cmp144.1.6 = icmp ult i32 %add141.6, 1016, !dbg !79
  br i1 %cmp144.1.6, label %if.then145.1.6, label %if.end.1.6, !dbg !80

if.then145.1.6:                                   ; preds = %if.end.6
  %add150.1.6 = or disjoint i64 %mul147, 512
  %gep1042.1.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.6, i64 %add150.1.6
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1.6, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1.6, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1.6, i64 4
  %condval.sroa.0.0.copyload.1.6 = load i32, ptr addrspace(4) %gep1042.1.6, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.6 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.6, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.6 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.6, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.6 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.6, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.6, !dbg !82

if.end.1.6:                                       ; preds = %if.then145.1.6, %if.end.6
  %condval.sroa.0.0.1.6 = phi i32 [ %condval.sroa.0.0.copyload.1.6, %if.then145.1.6 ], [ 0, %if.end.6 ], !dbg !83
  %condval.sroa.5.0.1.6 = phi i32 [ %condval.sroa.5.0.copyload.1.6, %if.then145.1.6 ], [ 0, %if.end.6 ], !dbg !83
  %condval.sroa.6.0.1.6 = phi i32 [ %condval.sroa.6.0.copyload.1.6, %if.then145.1.6 ], [ 0, %if.end.6 ], !dbg !83
  %condval.sroa.7.0.1.6 = phi i32 [ %condval.sroa.7.0.copyload.1.6, %if.then145.1.6 ], [ 0, %if.end.6 ], !dbg !83
  store i32 %condval.sroa.0.0.1.6, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.6, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1.6, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.6, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1.6, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.6, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1.6, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %277 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %278 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %16, <4 x float> %277), !dbg !91
  %k_local.sroa.0.0.copyload.2.6 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %279 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.6, <4 x half> %18, <4 x float> %278), !dbg !91
  %k_local.sroa.0.0.copyload.3.6 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %280 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.6, <4 x half> %22, <4 x float> %279), !dbg !91
  %add282.6 = add nuw nsw i32 %mul131.6, %mul281
  %cmp285.not.6 = icmp sgt i32 %add282.6, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2323 = extractelement <4 x float> %280, i64 0
  %spec.select2733 = select i1 %cmp285.not.6, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2323, !dbg !93
  %cmp285.not.1.6.not = icmp slt i32 %add282.6, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2406 = extractelement <4 x float> %280, i64 1, !dbg !93
  %condval_1.0.1.6 = select i1 %cmp285.not.1.6.not, float %scores.sroa.0.4.vec.extract2406, float 0xFFF0000000000000, !dbg !93
  %add283.2.6 = or disjoint i32 %add282.6, 2, !dbg !94
  %cmp285.not.2.6 = icmp sgt i32 %add283.2.6, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2483 = extractelement <4 x float> %280, i64 2, !dbg !93
  %condval_1.0.2.6 = select i1 %cmp285.not.2.6, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2483, !dbg !93
  %add283.3.6 = or disjoint i32 %add282.6, 3, !dbg !94
  %cmp285.not.3.6 = icmp sgt i32 %add283.3.6, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2560 = extractelement <4 x float> %280, i64 3, !dbg !93
  %condval_1.0.3.6 = select i1 %cmp285.not.3.6, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2560, !dbg !93
  %281 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2733, float 0xFFF0000000000000), !dbg !95
  %282 = tail call contract noundef float @llvm.maxnum.f32(float %281, float %condval_1.0.1.6), !dbg !95
  %283 = tail call contract noundef float @llvm.maxnum.f32(float %282, float %condval_1.0.2.6), !dbg !95
  %284 = tail call contract noundef float @llvm.maxnum.f32(float %283, float %condval_1.0.3.6), !dbg !95
  %285 = bitcast float %284 to i32, !dbg !99
  %286 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !102
  %287 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %286) #11, !dbg !107
  %xor.i.i.6 = xor i32 %287, 32, !dbg !108
  %288 = and i32 %287, -64, !dbg !109
  %and.i.i.6 = add nsw i32 %288, 64, !dbg !109
  %cmp.not.i.i.6 = icmp slt i32 %xor.i.i.6, %and.i.i.6, !dbg !110
  %cond.i.i.6 = select i1 %cmp.not.i.i.6, i32 %xor.i.i.6, i32 %287, !dbg !111
  %shl.i.i.6 = shl i32 %cond.i.i.6, 2, !dbg !112
  %289 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.6, i32 %285), !dbg !113
  %290 = bitcast i32 %289 to float, !dbg !114
  %291 = tail call contract noundef float @llvm.maxnum.f32(float %284, float %290), !dbg !115
  %292 = bitcast float %291 to i32, !dbg !117
  %293 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !119
  %294 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %293) #11, !dbg !122
  %xor.i.i951.6 = xor i32 %294, 16, !dbg !123
  %295 = and i32 %294, -64, !dbg !124
  %and.i.i952.6 = add nsw i32 %295, 64, !dbg !124
  %cmp.not.i.i953.6 = icmp slt i32 %xor.i.i951.6, %and.i.i952.6, !dbg !125
  %cond.i.i954.6 = select i1 %cmp.not.i.i953.6, i32 %xor.i.i951.6, i32 %294, !dbg !126
  %shl.i.i955.6 = shl i32 %cond.i.i954.6, 2, !dbg !127
  %296 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i955.6, i32 %292), !dbg !128
  %297 = bitcast i32 %296 to float, !dbg !129
  %298 = tail call contract noundef float @llvm.maxnum.f32(float %291, float %297), !dbg !130
  %cmp326.6 = icmp eq i32 %shr324, 2, !dbg !132
  %max_cache.sroa.11.4 = select i1 %cmp326.6, float %298, float %max_cache.sroa.11.3, !dbg !133
  %299 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.5, float %298), !dbg !134
  %sub.6 = fsub contract float %spec.select2733, %298, !dbg !136
  %sub347.6 = fsub contract float %condval_1.0.1.6, %298, !dbg !137
  %sub350.6 = fsub contract float %condval_1.0.2.6, %298, !dbg !138
  %sub353.6 = fsub contract float %condval_1.0.3.6, %298, !dbg !139
  %mul358.6 = fmul contract float %sub.6, 0x3FC7154760000000, !dbg !140
  %mul362.6 = fmul contract float %sub347.6, 0x3FC7154760000000, !dbg !141
  %mul366.6 = fmul contract float %sub350.6, 0x3FC7154760000000, !dbg !142
  %mul370.6 = fmul contract float %sub353.6, 0x3FC7154760000000, !dbg !143
  %add375.6 = fadd contract float %mul358.6, 8.000000e+00, !dbg !144
  %add379.6 = fadd contract float %mul362.6, 8.000000e+00, !dbg !145
  %add383.6 = fadd contract float %mul366.6, 8.000000e+00, !dbg !146
  %add387.6 = fadd contract float %mul370.6, 8.000000e+00, !dbg !147
  %cmp.i.i.6 = fcmp contract olt float %add375.6, -1.260000e+02, !dbg !148
  %cond.i.i960.6 = select contract i1 %cmp.i.i.6, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i.6 = fadd contract float %add375.6, %cond.i.i960.6, !dbg !148
  %300 = tail call contract float @llvm.exp2.f32(float %add.i.i.6), !dbg !148
  %cond2.i.i.6 = select contract i1 %cmp.i.i.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i.6 = fmul contract float %cond2.i.i.6, %300, !dbg !148
  %cmp.i.i961.6 = fcmp contract olt float %add379.6, -1.260000e+02, !dbg !151
  %cond.i.i962.6 = select contract i1 %cmp.i.i961.6, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i963.6 = fadd contract float %add379.6, %cond.i.i962.6, !dbg !151
  %301 = tail call contract float @llvm.exp2.f32(float %add.i.i963.6), !dbg !151
  %cond2.i.i964.6 = select contract i1 %cmp.i.i961.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i965.6 = fmul contract float %cond2.i.i964.6, %301, !dbg !151
  %cmp.i.i966.6 = fcmp contract olt float %add383.6, -1.260000e+02, !dbg !153
  %cond.i.i967.6 = select contract i1 %cmp.i.i966.6, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i968.6 = fadd contract float %add383.6, %cond.i.i967.6, !dbg !153
  %302 = tail call contract float @llvm.exp2.f32(float %add.i.i968.6), !dbg !153
  %cond2.i.i969.6 = select contract i1 %cmp.i.i966.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i970.6 = fmul contract float %cond2.i.i969.6, %302, !dbg !153
  %cmp.i.i971.6 = fcmp contract olt float %add387.6, -1.260000e+02, !dbg !155
  %cond.i.i972.6 = select contract i1 %cmp.i.i971.6, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i973.6 = fadd contract float %add387.6, %cond.i.i972.6, !dbg !155
  %303 = tail call contract float @llvm.exp2.f32(float %add.i.i973.6), !dbg !155
  %cond2.i.i974.6 = select contract i1 %cmp.i.i971.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i975.6 = fmul contract float %cond2.i.i974.6, %303, !dbg !155
  %304 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %305 = fptrunc float %mul.i.i.6 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %304), !dbg !157, !noalias !165
  %306 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %307 = fptrunc float %mul.i.i965.6 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %306), !dbg !170, !noalias !165
  %308 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %309 = fptrunc float %mul.i.i970.6 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %308), !dbg !172, !noalias !176
  %310 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %311 = fptrunc float %mul.i.i975.6 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %310), !dbg !181, !noalias !176
  %312 = insertelement <4 x half> poison, half %305, i64 0, !dbg !183
  %313 = insertelement <4 x half> %312, half %307, i64 1, !dbg !183
  %314 = insertelement <4 x half> %313, half %309, i64 2, !dbg !183
  %315 = insertelement <4 x half> %314, half %311, i64 3, !dbg !183
  br label %if.end415.6, !dbg !184

if.end415.6:                                      ; preds = %if.end.1.6, %if.end415.5
  %316 = phi <4 x half> [ zeroinitializer, %if.end415.5 ], [ %315, %if.end.1.6 ], !dbg !83
  %max_cache.sroa.11.5 = phi float [ %max_cache.sroa.11.3, %if.end415.5 ], [ %max_cache.sroa.11.4, %if.end.1.6 ], !dbg !83
  %global_max.sroa.0.1.6 = phi float [ %global_max.sroa.0.1.5, %if.end415.5 ], [ %299, %if.end.1.6 ], !dbg !83
  %317 = or disjoint i64 %23, 7, !dbg !185
  %arrayidx130.7 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %317, !dbg !69
  %318 = load i32, ptr addrspace(1) %arrayidx130.7, align 4, !dbg !69, !tbaa !30
  %mul131.7 = shl nsw i32 %318, 4, !dbg !70
  %cmp132.7 = icmp slt i32 %318, 0, !dbg !71
  %cmp134.not.7 = icmp sgt i32 %mul131.7, %1
  %or.cond.7 = select i1 %cmp132.7, i1 true, i1 %cmp134.not.7, !dbg !72
  br i1 %or.cond.7, label %if.end415.7, label %if.then.7, !dbg !72

if.then.7:                                        ; preds = %if.end415.6
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add141.7 = add nuw nsw i32 %mul131.7, %shr140
  %conv151.7 = zext nneg i32 %mul131.7 to i64
  %.idx.7 = shl nuw nsw i64 %conv151.7, 7
  %gep.7 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1049, i64 %.idx.7, !dbg !78
  %cmp144.7 = icmp ult i32 %add141.7, 1024, !dbg !79
  br i1 %cmp144.7, label %if.then145.7, label %if.end.7, !dbg !80

if.then145.7:                                     ; preds = %if.then.7
  %gep1042.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.7, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.7, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.7, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.7, i64 4
  %condval.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %gep1042.7, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.7, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.7, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.7, align 4, !dbg !81, !tbaa !30
  br label %if.end.7, !dbg !82

if.end.7:                                         ; preds = %if.then145.7, %if.then.7
  %condval.sroa.0.0.7 = phi i32 [ %condval.sroa.0.0.copyload.7, %if.then145.7 ], [ 0, %if.then.7 ], !dbg !83
  %condval.sroa.5.0.7 = phi i32 [ %condval.sroa.5.0.copyload.7, %if.then145.7 ], [ 0, %if.then.7 ], !dbg !83
  %condval.sroa.6.0.7 = phi i32 [ %condval.sroa.6.0.copyload.7, %if.then145.7 ], [ 0, %if.then.7 ], !dbg !83
  %condval.sroa.7.0.7 = phi i32 [ %condval.sroa.7.0.copyload.7, %if.then145.7 ], [ 0, %if.then.7 ], !dbg !83
  store i32 %condval.sroa.0.0.7, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.7, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.7, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.7, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.7, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.7, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.7, align 4, !dbg !84, !tbaa !30
  %cmp144.1.7 = icmp ult i32 %add141.7, 1016, !dbg !79
  br i1 %cmp144.1.7, label %if.then145.1.7, label %if.end.1.7, !dbg !80

if.then145.1.7:                                   ; preds = %if.end.7
  %add150.1.7 = or disjoint i64 %mul147, 512
  %gep1042.1.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.7, i64 %add150.1.7
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1.7, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1.7, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1042.1.7, i64 4
  %condval.sroa.0.0.copyload.1.7 = load i32, ptr addrspace(4) %gep1042.1.7, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.7 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.7, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.7 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.7, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.7 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.7, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.7, !dbg !82

if.end.1.7:                                       ; preds = %if.then145.1.7, %if.end.7
  %condval.sroa.0.0.1.7 = phi i32 [ %condval.sroa.0.0.copyload.1.7, %if.then145.1.7 ], [ 0, %if.end.7 ], !dbg !83
  %condval.sroa.5.0.1.7 = phi i32 [ %condval.sroa.5.0.copyload.1.7, %if.then145.1.7 ], [ 0, %if.end.7 ], !dbg !83
  %condval.sroa.6.0.1.7 = phi i32 [ %condval.sroa.6.0.copyload.1.7, %if.then145.1.7 ], [ 0, %if.end.7 ], !dbg !83
  %condval.sroa.7.0.1.7 = phi i32 [ %condval.sroa.7.0.copyload.1.7, %if.then145.1.7 ], [ 0, %if.end.7 ], !dbg !83
  store i32 %condval.sroa.0.0.1.7, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.7, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1.7, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.7, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1.7, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.7, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1.7, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %319 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %320 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %16, <4 x float> %319), !dbg !91
  %k_local.sroa.0.0.copyload.2.7 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %321 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.7, <4 x half> %18, <4 x float> %320), !dbg !91
  %k_local.sroa.0.0.copyload.3.7 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %322 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.7, <4 x half> %22, <4 x float> %321), !dbg !91
  %add282.7 = add nuw nsw i32 %mul131.7, %mul281
  %cmp285.not.7 = icmp sgt i32 %add282.7, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2333 = extractelement <4 x float> %322, i64 0
  %spec.select2734 = select i1 %cmp285.not.7, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2333, !dbg !93
  %cmp285.not.1.7.not = icmp slt i32 %add282.7, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2412 = extractelement <4 x float> %322, i64 1, !dbg !93
  %condval_1.0.1.7 = select i1 %cmp285.not.1.7.not, float %scores.sroa.0.4.vec.extract2412, float 0xFFF0000000000000, !dbg !93
  %add283.2.7 = or disjoint i32 %add282.7, 2, !dbg !94
  %cmp285.not.2.7 = icmp sgt i32 %add283.2.7, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2489 = extractelement <4 x float> %322, i64 2, !dbg !93
  %condval_1.0.2.7 = select i1 %cmp285.not.2.7, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2489, !dbg !93
  %add283.3.7 = or disjoint i32 %add282.7, 3, !dbg !94
  %cmp285.not.3.7 = icmp sgt i32 %add283.3.7, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2566 = extractelement <4 x float> %322, i64 3, !dbg !93
  %condval_1.0.3.7 = select i1 %cmp285.not.3.7, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2566, !dbg !93
  %323 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2734, float 0xFFF0000000000000), !dbg !95
  %324 = tail call contract noundef float @llvm.maxnum.f32(float %323, float %condval_1.0.1.7), !dbg !95
  %325 = tail call contract noundef float @llvm.maxnum.f32(float %324, float %condval_1.0.2.7), !dbg !95
  %326 = tail call contract noundef float @llvm.maxnum.f32(float %325, float %condval_1.0.3.7), !dbg !95
  %327 = bitcast float %326 to i32, !dbg !99
  %328 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !102
  %329 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %328) #11, !dbg !107
  %xor.i.i.7 = xor i32 %329, 32, !dbg !108
  %330 = and i32 %329, -64, !dbg !109
  %and.i.i.7 = add nsw i32 %330, 64, !dbg !109
  %cmp.not.i.i.7 = icmp slt i32 %xor.i.i.7, %and.i.i.7, !dbg !110
  %cond.i.i.7 = select i1 %cmp.not.i.i.7, i32 %xor.i.i.7, i32 %329, !dbg !111
  %shl.i.i.7 = shl i32 %cond.i.i.7, 2, !dbg !112
  %331 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.7, i32 %327), !dbg !113
  %332 = bitcast i32 %331 to float, !dbg !114
  %333 = tail call contract noundef float @llvm.maxnum.f32(float %326, float %332), !dbg !115
  %334 = bitcast float %333 to i32, !dbg !117
  %335 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !119
  %336 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %335) #11, !dbg !122
  %xor.i.i951.7 = xor i32 %336, 16, !dbg !123
  %337 = and i32 %336, -64, !dbg !124
  %and.i.i952.7 = add nsw i32 %337, 64, !dbg !124
  %cmp.not.i.i953.7 = icmp slt i32 %xor.i.i951.7, %and.i.i952.7, !dbg !125
  %cond.i.i954.7 = select i1 %cmp.not.i.i953.7, i32 %xor.i.i951.7, i32 %336, !dbg !126
  %shl.i.i955.7 = shl i32 %cond.i.i954.7, 2, !dbg !127
  %338 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i955.7, i32 %334), !dbg !128
  %339 = bitcast i32 %338 to float, !dbg !129
  %340 = tail call contract noundef float @llvm.maxnum.f32(float %333, float %339), !dbg !130
  %cmp326.7 = icmp eq i32 %shr324, 3, !dbg !132
  %max_cache.sroa.11.6 = select i1 %cmp326.7, float %340, float %max_cache.sroa.11.5, !dbg !133
  %341 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.6, float %340), !dbg !134
  %sub.7 = fsub contract float %spec.select2734, %340, !dbg !136
  %sub347.7 = fsub contract float %condval_1.0.1.7, %340, !dbg !137
  %sub350.7 = fsub contract float %condval_1.0.2.7, %340, !dbg !138
  %sub353.7 = fsub contract float %condval_1.0.3.7, %340, !dbg !139
  %mul358.7 = fmul contract float %sub.7, 0x3FC7154760000000, !dbg !140
  %mul362.7 = fmul contract float %sub347.7, 0x3FC7154760000000, !dbg !141
  %mul366.7 = fmul contract float %sub350.7, 0x3FC7154760000000, !dbg !142
  %mul370.7 = fmul contract float %sub353.7, 0x3FC7154760000000, !dbg !143
  %add375.7 = fadd contract float %mul358.7, 8.000000e+00, !dbg !144
  %add379.7 = fadd contract float %mul362.7, 8.000000e+00, !dbg !145
  %add383.7 = fadd contract float %mul366.7, 8.000000e+00, !dbg !146
  %add387.7 = fadd contract float %mul370.7, 8.000000e+00, !dbg !147
  %cmp.i.i.7 = fcmp contract olt float %add375.7, -1.260000e+02, !dbg !148
  %cond.i.i960.7 = select contract i1 %cmp.i.i.7, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i.7 = fadd contract float %add375.7, %cond.i.i960.7, !dbg !148
  %342 = tail call contract float @llvm.exp2.f32(float %add.i.i.7), !dbg !148
  %cond2.i.i.7 = select contract i1 %cmp.i.i.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i.7 = fmul contract float %cond2.i.i.7, %342, !dbg !148
  %cmp.i.i961.7 = fcmp contract olt float %add379.7, -1.260000e+02, !dbg !151
  %cond.i.i962.7 = select contract i1 %cmp.i.i961.7, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i963.7 = fadd contract float %add379.7, %cond.i.i962.7, !dbg !151
  %343 = tail call contract float @llvm.exp2.f32(float %add.i.i963.7), !dbg !151
  %cond2.i.i964.7 = select contract i1 %cmp.i.i961.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i965.7 = fmul contract float %cond2.i.i964.7, %343, !dbg !151
  %cmp.i.i966.7 = fcmp contract olt float %add383.7, -1.260000e+02, !dbg !153
  %cond.i.i967.7 = select contract i1 %cmp.i.i966.7, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i968.7 = fadd contract float %add383.7, %cond.i.i967.7, !dbg !153
  %344 = tail call contract float @llvm.exp2.f32(float %add.i.i968.7), !dbg !153
  %cond2.i.i969.7 = select contract i1 %cmp.i.i966.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i970.7 = fmul contract float %cond2.i.i969.7, %344, !dbg !153
  %cmp.i.i971.7 = fcmp contract olt float %add387.7, -1.260000e+02, !dbg !155
  %cond.i.i972.7 = select contract i1 %cmp.i.i971.7, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i973.7 = fadd contract float %add387.7, %cond.i.i972.7, !dbg !155
  %345 = tail call contract float @llvm.exp2.f32(float %add.i.i973.7), !dbg !155
  %cond2.i.i974.7 = select contract i1 %cmp.i.i971.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i975.7 = fmul contract float %cond2.i.i974.7, %345, !dbg !155
  %346 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %347 = fptrunc float %mul.i.i.7 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %346), !dbg !157, !noalias !165
  %348 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %349 = fptrunc float %mul.i.i965.7 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %348), !dbg !170, !noalias !165
  %350 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %351 = fptrunc float %mul.i.i970.7 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %350), !dbg !172, !noalias !176
  %352 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %353 = fptrunc float %mul.i.i975.7 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %352), !dbg !181, !noalias !176
  %354 = insertelement <4 x half> poison, half %347, i64 0, !dbg !183
  %355 = insertelement <4 x half> %354, half %349, i64 1, !dbg !183
  %356 = insertelement <4 x half> %355, half %351, i64 2, !dbg !183
  %357 = insertelement <4 x half> %356, half %353, i64 3, !dbg !183
  br label %if.end415.7, !dbg !184

if.end415.7:                                      ; preds = %if.end.1.7, %if.end415.6
  %358 = phi <4 x half> [ zeroinitializer, %if.end415.6 ], [ %357, %if.end.1.7 ], !dbg !83
  %max_cache.sroa.11.7 = phi float [ %max_cache.sroa.11.5, %if.end415.6 ], [ %max_cache.sroa.11.6, %if.end.1.7 ], !dbg !83
  %global_max.sroa.0.1.7 = phi float [ %global_max.sroa.0.1.6, %if.end415.6 ], [ %341, %if.end.1.7 ], !dbg !83
  %and469 = and i32 %2, 15
  %359 = shl nuw nsw i32 %2, 4
  %360 = and i32 %359, 16128
  %361 = shl nuw nsw i32 %2, 2
  %362 = and i32 %361, 60
  %363 = or disjoint i32 %360, %362
  %364 = zext nneg i32 %363 to i64
  %add543 = or disjoint i64 %mul147, %364
  %mul596 = and i32 %359, 240
  %shr602 = and i32 %and55, 3
  %xor = xor i32 %shr602, %shr324
  %and616 = shl nuw nsw i32 %2, 8
  %mul617 = and i32 %and616, 768
  %mul623 = and i32 %361, 48
  %and629 = and i32 %2, 3
  %365 = xor i32 %shr324, %and629
  %366 = load i32, ptr addrspace(1) %arrayidx130, align 4, !dbg !186, !tbaa !30
  %mul444 = shl nsw i32 %366, 4, !dbg !187
  %cmp445 = icmp slt i32 %366, 0, !dbg !188
  %cmp448.not = icmp sgt i32 %mul444, %1
  %or.cond1029 = select i1 %cmp445, i1 true, i1 %cmp448.not, !dbg !189
  br i1 %or.cond1029, label %if.end661, label %if.then449, !dbg !189

if.then449:                                       ; preds = %if.end415.7
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454 = icmp ult i32 %2, 16, !dbg !195
  br i1 %cmp454, label %if.then455, label %if.end464, !dbg !196

if.then455:                                       ; preds = %if.then449
  %sub460 = fsub contract float %max_cache.sroa.0.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461 = fmul contract float %sub460, 0x3FC7154760000000, !dbg !198
  %cmp.i.i977 = fcmp contract olt float %mul461, -1.260000e+02, !dbg !199
  %cond.i.i978 = select contract i1 %cmp.i.i977, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i979 = fadd contract float %mul461, %cond.i.i978, !dbg !199
  %367 = tail call contract float @llvm.exp2.f32(float %add.i.i979), !dbg !199
  %cond2.i.i980 = select contract i1 %cmp.i.i977, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i981 = fmul contract float %cond2.i.i980, %367, !dbg !199
  br label %if.end464, !dbg !201

if.end464:                                        ; preds = %if.then455, %if.then449
  %rescale.sroa.0.0 = phi float [ %mul.i.i981, %if.then455 ], [ 0.000000e+00, %if.then449 ], !dbg !83
  %368 = bitcast float %rescale.sroa.0.0 to i32, !dbg !202
  %369 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %370 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %369) #11, !dbg !209
  %and.i.i982 = and i32 %370, 1073741760, !dbg !210
  %add.i.i983 = or disjoint i32 %and.i.i982, %and469, !dbg !211
  %shl.i.i984 = shl nuw i32 %add.i.i983, 2, !dbg !212
  %371 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i984, i32 %368), !dbg !213
  %372 = bitcast i32 %371 to float, !dbg !214
  %373 = extractelement <4 x half> %64, i64 0, !dbg !215
  %conv.i985 = fpext half %373 to float, !dbg !215
  %374 = extractelement <4 x half> %64, i64 1, !dbg !218
  %conv6.i = fpext half %374 to float, !dbg !218
  %375 = extractelement <4 x half> %64, i64 2, !dbg !219
  %conv.i987 = fpext half %375 to float, !dbg !219
  %376 = extractelement <4 x half> %64, i64 3, !dbg !221
  %conv6.i989 = fpext half %376 to float, !dbg !221
  %mul494 = fmul contract float %372, %conv.i985, !dbg !222
  %mul498 = fmul contract float %372, %conv6.i, !dbg !223
  %mul502 = fmul contract float %372, %conv.i987, !dbg !224
  %mul506 = fmul contract float %372, %conv6.i989, !dbg !225
  %377 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %378 = fptrunc float %mul494 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %377), !dbg !226, !noalias !230
  %379 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %380 = fptrunc float %mul498 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %379), !dbg !235, !noalias !230
  %381 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %382 = fptrunc float %mul502 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %381), !dbg !237, !noalias !241
  %383 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %384 = fptrunc float %mul506 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %383), !dbg !246, !noalias !241
  %385 = insertelement <4 x half> poison, half %378, i64 0, !dbg !248
  %386 = insertelement <4 x half> %385, half %380, i64 1, !dbg !248
  %387 = insertelement <4 x half> %386, half %382, i64 2, !dbg !248
  %388 = insertelement <4 x half> %387, half %384, i64 3, !dbg !248
  %shr529 = lshr exact i32 %mul444, 2
  %add530 = add nuw nsw i32 %shr529, %shr324
  %cmp531 = icmp ult i32 %add530, 256
  %conv541 = zext nneg i32 %mul444 to i64
  br i1 %cmp531, label %if.then532, label %if.end566, !dbg !249

if.then532:                                       ; preds = %if.end464
  %389 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065 = shl nuw nsw i64 %conv541, 7, !dbg !250
  %390 = getelementptr inbounds i8, ptr addrspace(4) %389, i64 %.idx1065, !dbg !250
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %390, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %390, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx, align 4, !dbg !251, !tbaa !30
  br label %if.end566, !dbg !252

if.end566:                                        ; preds = %if.end464, %if.then532
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then532 ], [ 0, %if.end464 ], !dbg !83
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then532 ], [ 0, %if.end464 ], !dbg !83
  br i1 %cmp531, label %if.then532.1, label %if.end566.1, !dbg !249

if.then532.1:                                     ; preds = %if.end566
  %391 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.1 = shl nuw nsw i64 %conv541, 7, !dbg !250
  %392 = getelementptr inbounds i8, ptr addrspace(4) %391, i64 %.idx1065.1, !dbg !250
  %add.ptr552.1 = getelementptr inbounds i8, ptr addrspace(4) %392, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %add.ptr552.1, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %392, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1, align 4, !dbg !251, !tbaa !30
  br label %if.end566.1, !dbg !252

if.end566.1:                                      ; preds = %if.then532.1, %if.end566
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then532.1 ], [ 0, %if.end566 ], !dbg !83
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then532.1 ], [ 0, %if.end566 ], !dbg !83
  br i1 %cmp531, label %if.then532.2, label %if.end566.2, !dbg !249

if.then532.2:                                     ; preds = %if.end566.1
  %393 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.2 = shl nuw nsw i64 %conv541, 7, !dbg !250
  %394 = getelementptr inbounds i8, ptr addrspace(4) %393, i64 %.idx1065.2, !dbg !250
  %add.ptr552.2 = getelementptr inbounds i8, ptr addrspace(4) %394, i64 256, !dbg !250
  %condval_2.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %add.ptr552.2, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %394, i64 260, !dbg !251
  %condval_2.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.2, align 4, !dbg !251, !tbaa !30
  br label %if.end566.2, !dbg !252

if.end566.2:                                      ; preds = %if.then532.2, %if.end566.1
  %condval_2.sroa.5.0.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2, %if.then532.2 ], [ 0, %if.end566.1 ], !dbg !83
  %condval_2.sroa.0.0.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2, %if.then532.2 ], [ 0, %if.end566.1 ], !dbg !83
  br i1 %cmp531, label %if.then532.3, label %if.end566.3, !dbg !249

if.then532.3:                                     ; preds = %if.end566.2
  %395 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.3 = shl nuw nsw i64 %conv541, 7, !dbg !250
  %396 = getelementptr inbounds i8, ptr addrspace(4) %395, i64 %.idx1065.3, !dbg !250
  %add.ptr552.3 = getelementptr inbounds i8, ptr addrspace(4) %396, i64 384, !dbg !250
  %condval_2.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %add.ptr552.3, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %396, i64 388, !dbg !251
  %condval_2.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.3, align 4, !dbg !251, !tbaa !30
  br label %if.end566.3, !dbg !252

if.end566.3:                                      ; preds = %if.then532.3, %if.end566.2
  %condval_2.sroa.5.0.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3, %if.then532.3 ], [ 0, %if.end566.2 ], !dbg !83
  %condval_2.sroa.0.0.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3, %if.then532.3 ], [ 0, %if.end566.2 ], !dbg !83
  %397 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul596, !dbg !253
  %add.ptr607.idx = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607 = getelementptr inbounds i8, ptr addrspace(3) %397, i32 %add.ptr607.idx, !dbg !253
  %398 = and i32 %condval_2.sroa.0.0.3, 65535, !dbg !254
  %v_column_local.sroa.130.0.insert.ext = zext nneg i32 %398 to i64, !dbg !254
  %v_column_local.sroa.130.0.insert.shift = shl nuw i64 %v_column_local.sroa.130.0.insert.ext, 48, !dbg !254
  %399 = and i32 %condval_2.sroa.0.0.2, 65535, !dbg !254
  %v_column_local.sroa.98.0.insert.ext = zext nneg i32 %399 to i64, !dbg !254
  %v_column_local.sroa.98.0.insert.shift = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert = or disjoint i64 %v_column_local.sroa.130.0.insert.shift, %v_column_local.sroa.98.0.insert.shift, !dbg !254
  %400 = shl i32 %condval_2.sroa.0.0.1, 16, !dbg !254
  %v_column_local.sroa.66.0.insert.shift = zext i32 %400 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert = or disjoint i64 %v_column_local.sroa.98.0.insert.insert, %v_column_local.sroa.66.0.insert.shift, !dbg !254
  %401 = and i32 %condval_2.sroa.0.0, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.ext = zext nneg i32 %401 to i64, !dbg !254
  %v_column_local.sroa.0.0.insert.insert = or disjoint i64 %v_column_local.sroa.66.0.insert.insert, %v_column_local.sroa.0.0.insert.ext, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr607, align 8, !dbg !254
  %v_tile_local.sroa.0.2.extract.shift = lshr i32 %condval_2.sroa.0.0, 16, !dbg !255
  %v_tile_local.sroa.0.2.extract.trunc = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift to i64, !dbg !255
  %v_tile_local.sroa.50.10.extract.shift = and i32 %condval_2.sroa.0.0.1, -65536, !dbg !254
  %v_tile_local.sroa.98.18.extract.shift = lshr i32 %condval_2.sroa.0.0.2, 16, !dbg !255
  %v_tile_local.sroa.98.18.extract.trunc = zext nneg i32 %v_tile_local.sroa.98.18.extract.shift to i64, !dbg !255
  %v_tile_local.sroa.146.26.extract.shift = lshr i32 %condval_2.sroa.0.0.3, 16, !dbg !255
  %v_tile_local.sroa.146.26.extract.trunc = zext nneg i32 %v_tile_local.sroa.146.26.extract.shift to i64, !dbg !255
  %add597.1 = or disjoint i32 %mul596, 256, !dbg !256
  %402 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.1, !dbg !253
  %xor603.1 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.1 = xor i32 %xor603.1, 8, !dbg !253
  %add.ptr607.1 = getelementptr inbounds i8, ptr addrspace(3) %402, i32 %add.ptr607.idx.1, !dbg !253
  %v_column_local.sroa.130.0.insert.shift1650 = shl nuw i64 %v_tile_local.sroa.146.26.extract.trunc, 48, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1495 = shl nuw nsw i64 %v_tile_local.sroa.98.18.extract.trunc, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1497 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1650, %v_column_local.sroa.98.0.insert.shift1495, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1340 = zext i32 %v_tile_local.sroa.50.10.extract.shift to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1342 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1497, %v_column_local.sroa.66.0.insert.shift1340, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1217 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1342, %v_tile_local.sroa.0.2.extract.trunc, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1217, ptr addrspace(3) %add.ptr607.1, align 8, !dbg !254
  %add597.2 = or disjoint i32 %mul596, 512, !dbg !256
  %403 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.2, !dbg !253
  %xor603.2 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.2 = xor i32 %xor603.2, 16, !dbg !253
  %add.ptr607.2 = getelementptr inbounds i8, ptr addrspace(3) %403, i32 %add.ptr607.idx.2, !dbg !253
  %404 = and i32 %condval_2.sroa.5.0.3, 65535, !dbg !254
  %v_column_local.sroa.130.0.insert.ext1654 = zext nneg i32 %404 to i64, !dbg !254
  %v_column_local.sroa.130.0.insert.shift1655 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1654, 48, !dbg !254
  %405 = and i32 %condval_2.sroa.5.0.2, 65535, !dbg !254
  %v_column_local.sroa.98.0.insert.ext1499 = zext nneg i32 %405 to i64, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1500 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1499, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1502 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1655, %v_column_local.sroa.98.0.insert.shift1500, !dbg !254
  %406 = shl i32 %condval_2.sroa.5.0.1, 16, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1345 = zext i32 %406 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1347 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1502, %v_column_local.sroa.66.0.insert.shift1345, !dbg !254
  %407 = and i32 %condval_2.sroa.5.0, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1219 = zext nneg i32 %407 to i64, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1221 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1347, %v_column_local.sroa.0.0.insert.ext1219, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1221, ptr addrspace(3) %add.ptr607.2, align 8, !dbg !254
  %v_tile_local.sroa.26.6.extract.shift = lshr i32 %condval_2.sroa.5.0, 16, !dbg !255
  %v_tile_local.sroa.26.6.extract.trunc = zext nneg i32 %v_tile_local.sroa.26.6.extract.shift to i64, !dbg !255
  %v_tile_local.sroa.74.14.extract.shift = and i32 %condval_2.sroa.5.0.1, -65536, !dbg !254
  %v_tile_local.sroa.122.22.extract.shift = lshr i32 %condval_2.sroa.5.0.2, 16, !dbg !255
  %v_tile_local.sroa.122.22.extract.trunc = zext nneg i32 %v_tile_local.sroa.122.22.extract.shift to i64, !dbg !255
  %v_tile_local.sroa.170.30.extract.shift = lshr i32 %condval_2.sroa.5.0.3, 16, !dbg !255
  %v_tile_local.sroa.170.30.extract.trunc = zext nneg i32 %v_tile_local.sroa.170.30.extract.shift to i64, !dbg !255
  %add597.3 = or disjoint i32 %mul596, 768, !dbg !256
  %408 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.3, !dbg !253
  %xor603.3 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.3 = xor i32 %xor603.3, 24, !dbg !253
  %add.ptr607.3 = getelementptr inbounds i8, ptr addrspace(3) %408, i32 %add.ptr607.idx.3, !dbg !253
  %v_column_local.sroa.130.0.insert.shift1660 = shl nuw i64 %v_tile_local.sroa.170.30.extract.trunc, 48, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1505 = shl nuw nsw i64 %v_tile_local.sroa.122.22.extract.trunc, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1507 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1660, %v_column_local.sroa.98.0.insert.shift1505, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1350 = zext i32 %v_tile_local.sroa.74.14.extract.shift to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1352 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1507, %v_column_local.sroa.66.0.insert.shift1350, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1225 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1352, %v_tile_local.sroa.26.6.extract.trunc, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1225, ptr addrspace(3) %add.ptr607.3, align 8, !dbg !254
  fence syncscope("warp") release, !dbg !257
  tail call void @llvm.mxc.barrier.warp(), !dbg !260
  fence syncscope("warp") acquire, !dbg !261
  %add624 = or disjoint i32 %mul617, %mul623, !dbg !262
  %409 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624, !dbg !263
  %add.ptr634.idx = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634 = getelementptr inbounds i8, ptr addrspace(3) %409, i32 %add.ptr634.idx, !dbg !263
  %410 = load <4 x half>, ptr addrspace(3) %add.ptr634, align 8, !dbg !264
  %add619.1 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.1 = or disjoint i32 %add619.1, 64, !dbg !262
  %411 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.1, !dbg !263
  %xor630.1 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.1 = xor i32 %xor630.1, 8, !dbg !263
  %add.ptr634.1 = getelementptr inbounds i8, ptr addrspace(3) %411, i32 %add.ptr634.idx.1, !dbg !263
  %412 = load <4 x half>, ptr addrspace(3) %add.ptr634.1, align 8, !dbg !264
  %add619.2 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.2 = or disjoint i32 %add619.2, 128, !dbg !262
  %413 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.2, !dbg !263
  %xor630.2 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.2 = xor i32 %xor630.2, 16, !dbg !263
  %add.ptr634.2 = getelementptr inbounds i8, ptr addrspace(3) %413, i32 %add.ptr634.idx.2, !dbg !263
  %414 = load <4 x half>, ptr addrspace(3) %add.ptr634.2, align 8, !dbg !264
  %add619.3 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.3 = or disjoint i32 %add619.3, 192, !dbg !262
  %415 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.3, !dbg !263
  %xor630.3 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.3 = xor i32 %xor630.3, 24, !dbg !263
  %add.ptr634.3 = getelementptr inbounds i8, ptr addrspace(3) %415, i32 %add.ptr634.idx.3, !dbg !263
  %416 = load <4 x half>, ptr addrspace(3) %add.ptr634.3, align 8, !dbg !264
  %417 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %410, <4 x half> %388, <4 x float> zeroinitializer), !dbg !265
  %418 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %412, <4 x half> %388, <4 x float> zeroinitializer), !dbg !265
  %419 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %414, <4 x half> %388, <4 x float> zeroinitializer), !dbg !265
  %420 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %416, <4 x half> %388, <4 x float> zeroinitializer), !dbg !265
  br label %if.end661, !dbg !266

if.end661:                                        ; preds = %if.end566.3, %if.end415.7
  %bc2699 = phi <4 x half> [ %64, %if.end415.7 ], [ %388, %if.end566.3 ], !dbg !83
  %output_acc.sroa.98.0 = phi <4 x float> [ zeroinitializer, %if.end415.7 ], [ %420, %if.end566.3 ], !dbg !83
  %output_acc.sroa.66.0 = phi <4 x float> [ zeroinitializer, %if.end415.7 ], [ %419, %if.end566.3 ], !dbg !83
  %output_acc.sroa.34.0 = phi <4 x float> [ zeroinitializer, %if.end415.7 ], [ %418, %if.end566.3 ], !dbg !83
  %output_acc.sroa.0.0 = phi <4 x float> [ zeroinitializer, %if.end415.7 ], [ %417, %if.end566.3 ], !dbg !83
  %421 = load i32, ptr addrspace(1) %arrayidx130.1, align 4, !dbg !186, !tbaa !30
  %mul444.1 = shl nsw i32 %421, 4, !dbg !187
  %cmp445.1 = icmp slt i32 %421, 0, !dbg !188
  %cmp448.not.1 = icmp sgt i32 %mul444.1, %1
  %or.cond1029.1 = select i1 %cmp445.1, i1 true, i1 %cmp448.not.1, !dbg !189
  br i1 %or.cond1029.1, label %if.end661.1, label %if.then449.1, !dbg !189

if.then449.1:                                     ; preds = %if.end661
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454.1 = icmp eq i32 %shr324, 1, !dbg !195
  br i1 %cmp454.1, label %if.then455.1, label %if.end464.1, !dbg !196

if.then455.1:                                     ; preds = %if.then449.1
  %sub460.1 = fsub contract float %max_cache.sroa.0.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461.1 = fmul contract float %sub460.1, 0x3FC7154760000000, !dbg !198
  %cmp.i.i977.1 = fcmp contract olt float %mul461.1, -1.260000e+02, !dbg !199
  %cond.i.i978.1 = select contract i1 %cmp.i.i977.1, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i979.1 = fadd contract float %mul461.1, %cond.i.i978.1, !dbg !199
  %422 = tail call contract float @llvm.exp2.f32(float %add.i.i979.1), !dbg !199
  %cond2.i.i980.1 = select contract i1 %cmp.i.i977.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i981.1 = fmul contract float %cond2.i.i980.1, %422, !dbg !199
  br label %if.end464.1, !dbg !201

if.end464.1:                                      ; preds = %if.then455.1, %if.then449.1
  %rescale.sroa.0.0.1 = phi float [ %mul.i.i981.1, %if.then455.1 ], [ 0.000000e+00, %if.then449.1 ], !dbg !83
  %423 = bitcast float %rescale.sroa.0.0.1 to i32, !dbg !202
  %424 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %425 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %424) #11, !dbg !209
  %rem.i.i.1 = or disjoint i32 %and469, 16, !dbg !267
  %and.i.i982.1 = and i32 %425, 1073741760, !dbg !210
  %add.i.i983.1 = or disjoint i32 %and.i.i982.1, %rem.i.i.1, !dbg !211
  %shl.i.i984.1 = shl nuw i32 %add.i.i983.1, 2, !dbg !212
  %426 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i984.1, i32 %423), !dbg !213
  %427 = bitcast i32 %426 to float, !dbg !214
  %428 = extractelement <4 x half> %106, i64 0, !dbg !215
  %conv.i985.1 = fpext half %428 to float, !dbg !215
  %429 = extractelement <4 x half> %106, i64 1, !dbg !218
  %conv6.i.1 = fpext half %429 to float, !dbg !218
  %430 = extractelement <4 x half> %106, i64 2, !dbg !219
  %conv.i987.1 = fpext half %430 to float, !dbg !219
  %431 = extractelement <4 x half> %106, i64 3, !dbg !221
  %conv6.i989.1 = fpext half %431 to float, !dbg !221
  %mul494.1 = fmul contract float %427, %conv.i985.1, !dbg !222
  %mul498.1 = fmul contract float %427, %conv6.i.1, !dbg !223
  %mul502.1 = fmul contract float %427, %conv.i987.1, !dbg !224
  %mul506.1 = fmul contract float %427, %conv6.i989.1, !dbg !225
  %432 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %433 = fptrunc float %mul494.1 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %432), !dbg !226, !noalias !230
  %434 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %435 = fptrunc float %mul498.1 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %434), !dbg !235, !noalias !230
  %436 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %437 = fptrunc float %mul502.1 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %436), !dbg !237, !noalias !241
  %438 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %439 = fptrunc float %mul506.1 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %438), !dbg !246, !noalias !241
  %440 = insertelement <4 x half> poison, half %433, i64 0, !dbg !248
  %441 = insertelement <4 x half> %440, half %435, i64 1, !dbg !248
  %442 = insertelement <4 x half> %441, half %437, i64 2, !dbg !248
  %443 = insertelement <4 x half> %442, half %439, i64 3, !dbg !248
  %shr529.1 = lshr exact i32 %mul444.1, 2
  %add530.1 = add nuw nsw i32 %shr529.1, %shr324
  %cmp531.1 = icmp ult i32 %add530.1, 256
  %conv541.1 = zext nneg i32 %mul444.1 to i64
  br i1 %cmp531.1, label %if.then532.11152, label %if.end566.11156, !dbg !249

if.then532.11152:                                 ; preds = %if.end464.1
  %444 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.11148 = shl nuw nsw i64 %conv541.1, 7, !dbg !250
  %445 = getelementptr inbounds i8, ptr addrspace(4) %444, i64 %.idx1065.11148, !dbg !250
  %condval_2.sroa.0.0.copyload.11149 = load i32, ptr addrspace(4) %445, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.11150 = getelementptr inbounds i8, ptr addrspace(4) %445, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload.11151 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.11150, align 4, !dbg !251, !tbaa !30
  br label %if.end566.11156, !dbg !252

if.end566.11156:                                  ; preds = %if.then532.11152, %if.end464.1
  %condval_2.sroa.5.0.11153 = phi i32 [ %condval_2.sroa.5.0.copyload.11151, %if.then532.11152 ], [ 0, %if.end464.1 ], !dbg !83
  %condval_2.sroa.0.0.11154 = phi i32 [ %condval_2.sroa.0.0.copyload.11149, %if.then532.11152 ], [ 0, %if.end464.1 ], !dbg !83
  br i1 %cmp531.1, label %if.then532.1.1, label %if.end566.1.1, !dbg !249

if.then532.1.1:                                   ; preds = %if.end566.11156
  %446 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.1.1 = shl nuw nsw i64 %conv541.1, 7, !dbg !250
  %447 = getelementptr inbounds i8, ptr addrspace(4) %446, i64 %.idx1065.1.1, !dbg !250
  %add.ptr552.1.1 = getelementptr inbounds i8, ptr addrspace(4) %447, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %add.ptr552.1.1, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %447, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.1, align 4, !dbg !251, !tbaa !30
  br label %if.end566.1.1, !dbg !252

if.end566.1.1:                                    ; preds = %if.then532.1.1, %if.end566.11156
  %condval_2.sroa.5.0.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1, %if.then532.1.1 ], [ 0, %if.end566.11156 ], !dbg !83
  %condval_2.sroa.0.0.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1, %if.then532.1.1 ], [ 0, %if.end566.11156 ], !dbg !83
  br i1 %cmp531.1, label %if.then532.2.1, label %if.end566.2.1, !dbg !249

if.then532.2.1:                                   ; preds = %if.end566.1.1
  %448 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.2.1 = shl nuw nsw i64 %conv541.1, 7, !dbg !250
  %449 = getelementptr inbounds i8, ptr addrspace(4) %448, i64 %.idx1065.2.1, !dbg !250
  %add.ptr552.2.1 = getelementptr inbounds i8, ptr addrspace(4) %449, i64 256, !dbg !250
  %condval_2.sroa.0.0.copyload.2.1 = load i32, ptr addrspace(4) %add.ptr552.2.1, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.2.1 = getelementptr inbounds i8, ptr addrspace(4) %449, i64 260, !dbg !251
  %condval_2.sroa.5.0.copyload.2.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.2.1, align 4, !dbg !251, !tbaa !30
  br label %if.end566.2.1, !dbg !252

if.end566.2.1:                                    ; preds = %if.then532.2.1, %if.end566.1.1
  %condval_2.sroa.5.0.2.1 = phi i32 [ %condval_2.sroa.5.0.copyload.2.1, %if.then532.2.1 ], [ 0, %if.end566.1.1 ], !dbg !83
  %condval_2.sroa.0.0.2.1 = phi i32 [ %condval_2.sroa.0.0.copyload.2.1, %if.then532.2.1 ], [ 0, %if.end566.1.1 ], !dbg !83
  br i1 %cmp531.1, label %if.then532.3.1, label %if.end566.3.1, !dbg !249

if.then532.3.1:                                   ; preds = %if.end566.2.1
  %450 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.3.1 = shl nuw nsw i64 %conv541.1, 7, !dbg !250
  %451 = getelementptr inbounds i8, ptr addrspace(4) %450, i64 %.idx1065.3.1, !dbg !250
  %add.ptr552.3.1 = getelementptr inbounds i8, ptr addrspace(4) %451, i64 384, !dbg !250
  %condval_2.sroa.0.0.copyload.3.1 = load i32, ptr addrspace(4) %add.ptr552.3.1, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.3.1 = getelementptr inbounds i8, ptr addrspace(4) %451, i64 388, !dbg !251
  %condval_2.sroa.5.0.copyload.3.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.3.1, align 4, !dbg !251, !tbaa !30
  br label %if.end566.3.1, !dbg !252

if.end566.3.1:                                    ; preds = %if.then532.3.1, %if.end566.2.1
  %condval_2.sroa.5.0.3.1 = phi i32 [ %condval_2.sroa.5.0.copyload.3.1, %if.then532.3.1 ], [ 0, %if.end566.2.1 ], !dbg !83
  %condval_2.sroa.0.0.3.1 = phi i32 [ %condval_2.sroa.0.0.copyload.3.1, %if.then532.3.1 ], [ 0, %if.end566.2.1 ], !dbg !83
  %452 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul596, !dbg !253
  %add.ptr607.idx.11163 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.11164 = getelementptr inbounds i8, ptr addrspace(3) %452, i32 %add.ptr607.idx.11163, !dbg !253
  %453 = and i32 %condval_2.sroa.0.0.3.1, 65535, !dbg !254
  %v_column_local.sroa.130.0.insert.ext1664 = zext nneg i32 %453 to i64, !dbg !254
  %v_column_local.sroa.130.0.insert.shift1665 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1664, 48, !dbg !254
  %454 = and i32 %condval_2.sroa.0.0.2.1, 65535, !dbg !254
  %v_column_local.sroa.98.0.insert.ext1509 = zext nneg i32 %454 to i64, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1510 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1509, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1512 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1665, %v_column_local.sroa.98.0.insert.shift1510, !dbg !254
  %455 = shl i32 %condval_2.sroa.0.0.1.1, 16, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1355 = zext i32 %455 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1357 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1512, %v_column_local.sroa.66.0.insert.shift1355, !dbg !254
  %456 = and i32 %condval_2.sroa.0.0.11154, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1227 = zext nneg i32 %456 to i64, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1229 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1357, %v_column_local.sroa.0.0.insert.ext1227, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1229, ptr addrspace(3) %add.ptr607.11164, align 8, !dbg !254
  %v_tile_local.sroa.0.2.extract.shift1878 = lshr i32 %condval_2.sroa.0.0.11154, 16, !dbg !255
  %v_tile_local.sroa.0.2.extract.trunc1879 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1878 to i64, !dbg !255
  %v_tile_local.sroa.50.10.extract.shift1948 = and i32 %condval_2.sroa.0.0.1.1, -65536, !dbg !254
  %v_tile_local.sroa.98.18.extract.shift2018 = lshr i32 %condval_2.sroa.0.0.2.1, 16, !dbg !255
  %v_tile_local.sroa.98.18.extract.trunc2019 = zext nneg i32 %v_tile_local.sroa.98.18.extract.shift2018 to i64, !dbg !255
  %v_tile_local.sroa.146.26.extract.shift2088 = lshr i32 %condval_2.sroa.0.0.3.1, 16, !dbg !255
  %v_tile_local.sroa.146.26.extract.trunc2089 = zext nneg i32 %v_tile_local.sroa.146.26.extract.shift2088 to i64, !dbg !255
  %add597.1.1 = or disjoint i32 %mul596, 256, !dbg !256
  %457 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.1.1, !dbg !253
  %xor603.1.1 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.1.1 = xor i32 %xor603.1.1, 8, !dbg !253
  %add.ptr607.1.1 = getelementptr inbounds i8, ptr addrspace(3) %457, i32 %add.ptr607.idx.1.1, !dbg !253
  %v_column_local.sroa.130.0.insert.shift1670 = shl nuw i64 %v_tile_local.sroa.146.26.extract.trunc2089, 48, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1515 = shl nuw nsw i64 %v_tile_local.sroa.98.18.extract.trunc2019, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1517 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1670, %v_column_local.sroa.98.0.insert.shift1515, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1360 = zext i32 %v_tile_local.sroa.50.10.extract.shift1948 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1362 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1517, %v_column_local.sroa.66.0.insert.shift1360, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1233 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1362, %v_tile_local.sroa.0.2.extract.trunc1879, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1233, ptr addrspace(3) %add.ptr607.1.1, align 8, !dbg !254
  %add597.2.1 = or disjoint i32 %mul596, 512, !dbg !256
  %458 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.2.1, !dbg !253
  %xor603.2.1 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.2.1 = xor i32 %xor603.2.1, 16, !dbg !253
  %add.ptr607.2.1 = getelementptr inbounds i8, ptr addrspace(3) %458, i32 %add.ptr607.idx.2.1, !dbg !253
  %459 = and i32 %condval_2.sroa.5.0.3.1, 65535, !dbg !254
  %v_column_local.sroa.130.0.insert.ext1674 = zext nneg i32 %459 to i64, !dbg !254
  %v_column_local.sroa.130.0.insert.shift1675 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1674, 48, !dbg !254
  %460 = and i32 %condval_2.sroa.5.0.2.1, 65535, !dbg !254
  %v_column_local.sroa.98.0.insert.ext1519 = zext nneg i32 %460 to i64, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1520 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1519, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1522 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1675, %v_column_local.sroa.98.0.insert.shift1520, !dbg !254
  %461 = shl i32 %condval_2.sroa.5.0.1.1, 16, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1365 = zext i32 %461 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1367 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1522, %v_column_local.sroa.66.0.insert.shift1365, !dbg !254
  %462 = and i32 %condval_2.sroa.5.0.11153, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1235 = zext nneg i32 %462 to i64, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1237 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1367, %v_column_local.sroa.0.0.insert.ext1235, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1237, ptr addrspace(3) %add.ptr607.2.1, align 8, !dbg !254
  %v_tile_local.sroa.26.6.extract.shift1913 = lshr i32 %condval_2.sroa.5.0.11153, 16, !dbg !255
  %v_tile_local.sroa.26.6.extract.trunc1914 = zext nneg i32 %v_tile_local.sroa.26.6.extract.shift1913 to i64, !dbg !255
  %v_tile_local.sroa.74.14.extract.shift1983 = and i32 %condval_2.sroa.5.0.1.1, -65536, !dbg !254
  %v_tile_local.sroa.122.22.extract.shift2053 = lshr i32 %condval_2.sroa.5.0.2.1, 16, !dbg !255
  %v_tile_local.sroa.122.22.extract.trunc2054 = zext nneg i32 %v_tile_local.sroa.122.22.extract.shift2053 to i64, !dbg !255
  %v_tile_local.sroa.170.30.extract.shift2123 = lshr i32 %condval_2.sroa.5.0.3.1, 16, !dbg !255
  %v_tile_local.sroa.170.30.extract.trunc2124 = zext nneg i32 %v_tile_local.sroa.170.30.extract.shift2123 to i64, !dbg !255
  %add597.3.1 = or disjoint i32 %mul596, 768, !dbg !256
  %463 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.3.1, !dbg !253
  %xor603.3.1 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.3.1 = xor i32 %xor603.3.1, 24, !dbg !253
  %add.ptr607.3.1 = getelementptr inbounds i8, ptr addrspace(3) %463, i32 %add.ptr607.idx.3.1, !dbg !253
  %v_column_local.sroa.130.0.insert.shift1680 = shl nuw i64 %v_tile_local.sroa.170.30.extract.trunc2124, 48, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1525 = shl nuw nsw i64 %v_tile_local.sroa.122.22.extract.trunc2054, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1527 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1680, %v_column_local.sroa.98.0.insert.shift1525, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1370 = zext i32 %v_tile_local.sroa.74.14.extract.shift1983 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1372 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1527, %v_column_local.sroa.66.0.insert.shift1370, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1241 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1372, %v_tile_local.sroa.26.6.extract.trunc1914, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1241, ptr addrspace(3) %add.ptr607.3.1, align 8, !dbg !254
  fence syncscope("warp") release, !dbg !257
  tail call void @llvm.mxc.barrier.warp(), !dbg !260
  fence syncscope("warp") acquire, !dbg !261
  %add624.11166 = or disjoint i32 %mul617, %mul623, !dbg !262
  %464 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.11166, !dbg !263
  %add.ptr634.idx.11167 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.11168 = getelementptr inbounds i8, ptr addrspace(3) %464, i32 %add.ptr634.idx.11167, !dbg !263
  %465 = load <4 x half>, ptr addrspace(3) %add.ptr634.11168, align 8, !dbg !264
  %add619.1.1 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.1.1 = or disjoint i32 %add619.1.1, 64, !dbg !262
  %466 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.1.1, !dbg !263
  %xor630.1.1 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.1.1 = xor i32 %xor630.1.1, 8, !dbg !263
  %add.ptr634.1.1 = getelementptr inbounds i8, ptr addrspace(3) %466, i32 %add.ptr634.idx.1.1, !dbg !263
  %467 = load <4 x half>, ptr addrspace(3) %add.ptr634.1.1, align 8, !dbg !264
  %add619.2.1 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.2.1 = or disjoint i32 %add619.2.1, 128, !dbg !262
  %468 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.2.1, !dbg !263
  %xor630.2.1 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.2.1 = xor i32 %xor630.2.1, 16, !dbg !263
  %add.ptr634.2.1 = getelementptr inbounds i8, ptr addrspace(3) %468, i32 %add.ptr634.idx.2.1, !dbg !263
  %469 = load <4 x half>, ptr addrspace(3) %add.ptr634.2.1, align 8, !dbg !264
  %add619.3.1 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.3.1 = or disjoint i32 %add619.3.1, 192, !dbg !262
  %470 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.3.1, !dbg !263
  %xor630.3.1 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.3.1 = xor i32 %xor630.3.1, 24, !dbg !263
  %add.ptr634.3.1 = getelementptr inbounds i8, ptr addrspace(3) %470, i32 %add.ptr634.idx.3.1, !dbg !263
  %471 = load <4 x half>, ptr addrspace(3) %add.ptr634.3.1, align 8, !dbg !264
  %472 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %465, <4 x half> %443, <4 x float> %output_acc.sroa.0.0), !dbg !265
  %473 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %467, <4 x half> %443, <4 x float> %output_acc.sroa.34.0), !dbg !265
  %474 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %469, <4 x half> %443, <4 x float> %output_acc.sroa.66.0), !dbg !265
  %475 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %471, <4 x half> %443, <4 x float> %output_acc.sroa.98.0), !dbg !265
  br label %if.end661.1, !dbg !266

if.end661.1:                                      ; preds = %if.end566.3.1, %if.end661
  %bc2703 = phi <4 x half> [ %106, %if.end661 ], [ %443, %if.end566.3.1 ], !dbg !83
  %output_acc.sroa.98.1 = phi <4 x float> [ %output_acc.sroa.98.0, %if.end661 ], [ %475, %if.end566.3.1 ], !dbg !83
  %output_acc.sroa.66.1 = phi <4 x float> [ %output_acc.sroa.66.0, %if.end661 ], [ %474, %if.end566.3.1 ], !dbg !83
  %output_acc.sroa.34.1 = phi <4 x float> [ %output_acc.sroa.34.0, %if.end661 ], [ %473, %if.end566.3.1 ], !dbg !83
  %output_acc.sroa.0.1 = phi <4 x float> [ %output_acc.sroa.0.0, %if.end661 ], [ %472, %if.end566.3.1 ], !dbg !83
  %476 = load i32, ptr addrspace(1) %arrayidx130.2, align 4, !dbg !186, !tbaa !30
  %mul444.2 = shl nsw i32 %476, 4, !dbg !187
  %cmp445.2 = icmp slt i32 %476, 0, !dbg !188
  %cmp448.not.2 = icmp sgt i32 %mul444.2, %1
  %or.cond1029.2 = select i1 %cmp445.2, i1 true, i1 %cmp448.not.2, !dbg !189
  br i1 %or.cond1029.2, label %if.end661.2, label %if.then449.2, !dbg !189

if.then449.2:                                     ; preds = %if.end661.1
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454.2 = icmp eq i32 %shr324, 2, !dbg !195
  br i1 %cmp454.2, label %if.then455.2, label %if.end464.2, !dbg !196

if.then455.2:                                     ; preds = %if.then449.2
  %sub460.2 = fsub contract float %max_cache.sroa.0.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461.2 = fmul contract float %sub460.2, 0x3FC7154760000000, !dbg !198
  %cmp.i.i977.2 = fcmp contract olt float %mul461.2, -1.260000e+02, !dbg !199
  %cond.i.i978.2 = select contract i1 %cmp.i.i977.2, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i979.2 = fadd contract float %mul461.2, %cond.i.i978.2, !dbg !199
  %477 = tail call contract float @llvm.exp2.f32(float %add.i.i979.2), !dbg !199
  %cond2.i.i980.2 = select contract i1 %cmp.i.i977.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i981.2 = fmul contract float %cond2.i.i980.2, %477, !dbg !199
  br label %if.end464.2, !dbg !201

if.end464.2:                                      ; preds = %if.then455.2, %if.then449.2
  %rescale.sroa.0.0.2 = phi float [ %mul.i.i981.2, %if.then455.2 ], [ 0.000000e+00, %if.then449.2 ], !dbg !83
  %478 = bitcast float %rescale.sroa.0.0.2 to i32, !dbg !202
  %479 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %480 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %479) #11, !dbg !209
  %rem.i.i.2 = or disjoint i32 %and469, 32, !dbg !267
  %and.i.i982.2 = and i32 %480, 1073741760, !dbg !210
  %add.i.i983.2 = or disjoint i32 %and.i.i982.2, %rem.i.i.2, !dbg !211
  %shl.i.i984.2 = shl nuw i32 %add.i.i983.2, 2, !dbg !212
  %481 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i984.2, i32 %478), !dbg !213
  %482 = bitcast i32 %481 to float, !dbg !214
  %483 = extractelement <4 x half> %148, i64 0, !dbg !215
  %conv.i985.2 = fpext half %483 to float, !dbg !215
  %484 = extractelement <4 x half> %148, i64 1, !dbg !218
  %conv6.i.2 = fpext half %484 to float, !dbg !218
  %485 = extractelement <4 x half> %148, i64 2, !dbg !219
  %conv.i987.2 = fpext half %485 to float, !dbg !219
  %486 = extractelement <4 x half> %148, i64 3, !dbg !221
  %conv6.i989.2 = fpext half %486 to float, !dbg !221
  %mul494.2 = fmul contract float %482, %conv.i985.2, !dbg !222
  %mul498.2 = fmul contract float %482, %conv6.i.2, !dbg !223
  %mul502.2 = fmul contract float %482, %conv.i987.2, !dbg !224
  %mul506.2 = fmul contract float %482, %conv6.i989.2, !dbg !225
  %487 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %488 = fptrunc float %mul494.2 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %487), !dbg !226, !noalias !230
  %489 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %490 = fptrunc float %mul498.2 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %489), !dbg !235, !noalias !230
  %491 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %492 = fptrunc float %mul502.2 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %491), !dbg !237, !noalias !241
  %493 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %494 = fptrunc float %mul506.2 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %493), !dbg !246, !noalias !241
  %495 = insertelement <4 x half> poison, half %488, i64 0, !dbg !248
  %496 = insertelement <4 x half> %495, half %490, i64 1, !dbg !248
  %497 = insertelement <4 x half> %496, half %492, i64 2, !dbg !248
  %498 = insertelement <4 x half> %497, half %494, i64 3, !dbg !248
  %shr529.2 = lshr exact i32 %mul444.2, 2
  %add530.2 = add nuw nsw i32 %shr529.2, %shr324
  %cmp531.2 = icmp ult i32 %add530.2, 256
  %conv541.2 = zext nneg i32 %mul444.2 to i64
  br i1 %cmp531.2, label %if.then532.21173, label %if.end566.21177, !dbg !249

if.then532.21173:                                 ; preds = %if.end464.2
  %499 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.21169 = shl nuw nsw i64 %conv541.2, 7, !dbg !250
  %500 = getelementptr inbounds i8, ptr addrspace(4) %499, i64 %.idx1065.21169, !dbg !250
  %condval_2.sroa.0.0.copyload.21170 = load i32, ptr addrspace(4) %500, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.21171 = getelementptr inbounds i8, ptr addrspace(4) %500, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload.21172 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.21171, align 4, !dbg !251, !tbaa !30
  br label %if.end566.21177, !dbg !252

if.end566.21177:                                  ; preds = %if.then532.21173, %if.end464.2
  %condval_2.sroa.5.0.21174 = phi i32 [ %condval_2.sroa.5.0.copyload.21172, %if.then532.21173 ], [ 0, %if.end464.2 ], !dbg !83
  %condval_2.sroa.0.0.21175 = phi i32 [ %condval_2.sroa.0.0.copyload.21170, %if.then532.21173 ], [ 0, %if.end464.2 ], !dbg !83
  br i1 %cmp531.2, label %if.then532.1.2, label %if.end566.1.2, !dbg !249

if.then532.1.2:                                   ; preds = %if.end566.21177
  %501 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.1.2 = shl nuw nsw i64 %conv541.2, 7, !dbg !250
  %502 = getelementptr inbounds i8, ptr addrspace(4) %501, i64 %.idx1065.1.2, !dbg !250
  %add.ptr552.1.2 = getelementptr inbounds i8, ptr addrspace(4) %502, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %add.ptr552.1.2, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %502, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.2, align 4, !dbg !251, !tbaa !30
  br label %if.end566.1.2, !dbg !252

if.end566.1.2:                                    ; preds = %if.then532.1.2, %if.end566.21177
  %condval_2.sroa.5.0.1.2 = phi i32 [ %condval_2.sroa.5.0.copyload.1.2, %if.then532.1.2 ], [ 0, %if.end566.21177 ], !dbg !83
  %condval_2.sroa.0.0.1.2 = phi i32 [ %condval_2.sroa.0.0.copyload.1.2, %if.then532.1.2 ], [ 0, %if.end566.21177 ], !dbg !83
  br i1 %cmp531.2, label %if.then532.2.2, label %if.end566.2.2, !dbg !249

if.then532.2.2:                                   ; preds = %if.end566.1.2
  %503 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.2.2 = shl nuw nsw i64 %conv541.2, 7, !dbg !250
  %504 = getelementptr inbounds i8, ptr addrspace(4) %503, i64 %.idx1065.2.2, !dbg !250
  %add.ptr552.2.2 = getelementptr inbounds i8, ptr addrspace(4) %504, i64 256, !dbg !250
  %condval_2.sroa.0.0.copyload.2.2 = load i32, ptr addrspace(4) %add.ptr552.2.2, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.2.2 = getelementptr inbounds i8, ptr addrspace(4) %504, i64 260, !dbg !251
  %condval_2.sroa.5.0.copyload.2.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.2.2, align 4, !dbg !251, !tbaa !30
  br label %if.end566.2.2, !dbg !252

if.end566.2.2:                                    ; preds = %if.then532.2.2, %if.end566.1.2
  %condval_2.sroa.5.0.2.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2.2, %if.then532.2.2 ], [ 0, %if.end566.1.2 ], !dbg !83
  %condval_2.sroa.0.0.2.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2.2, %if.then532.2.2 ], [ 0, %if.end566.1.2 ], !dbg !83
  br i1 %cmp531.2, label %if.then532.3.2, label %if.end566.3.2, !dbg !249

if.then532.3.2:                                   ; preds = %if.end566.2.2
  %505 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.3.2 = shl nuw nsw i64 %conv541.2, 7, !dbg !250
  %506 = getelementptr inbounds i8, ptr addrspace(4) %505, i64 %.idx1065.3.2, !dbg !250
  %add.ptr552.3.2 = getelementptr inbounds i8, ptr addrspace(4) %506, i64 384, !dbg !250
  %condval_2.sroa.0.0.copyload.3.2 = load i32, ptr addrspace(4) %add.ptr552.3.2, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.3.2 = getelementptr inbounds i8, ptr addrspace(4) %506, i64 388, !dbg !251
  %condval_2.sroa.5.0.copyload.3.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.3.2, align 4, !dbg !251, !tbaa !30
  br label %if.end566.3.2, !dbg !252

if.end566.3.2:                                    ; preds = %if.then532.3.2, %if.end566.2.2
  %condval_2.sroa.5.0.3.2 = phi i32 [ %condval_2.sroa.5.0.copyload.3.2, %if.then532.3.2 ], [ 0, %if.end566.2.2 ], !dbg !83
  %condval_2.sroa.0.0.3.2 = phi i32 [ %condval_2.sroa.0.0.copyload.3.2, %if.then532.3.2 ], [ 0, %if.end566.2.2 ], !dbg !83
  %507 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul596, !dbg !253
  %add.ptr607.idx.21184 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.21185 = getelementptr inbounds i8, ptr addrspace(3) %507, i32 %add.ptr607.idx.21184, !dbg !253
  %508 = and i32 %condval_2.sroa.0.0.3.2, 65535, !dbg !254
  %v_column_local.sroa.130.0.insert.ext1684 = zext nneg i32 %508 to i64, !dbg !254
  %v_column_local.sroa.130.0.insert.shift1685 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1684, 48, !dbg !254
  %509 = and i32 %condval_2.sroa.0.0.2.2, 65535, !dbg !254
  %v_column_local.sroa.98.0.insert.ext1529 = zext nneg i32 %509 to i64, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1530 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1529, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1532 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1685, %v_column_local.sroa.98.0.insert.shift1530, !dbg !254
  %510 = shl i32 %condval_2.sroa.0.0.1.2, 16, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1375 = zext i32 %510 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1377 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1532, %v_column_local.sroa.66.0.insert.shift1375, !dbg !254
  %511 = and i32 %condval_2.sroa.0.0.21175, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1243 = zext nneg i32 %511 to i64, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1245 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1377, %v_column_local.sroa.0.0.insert.ext1243, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1245, ptr addrspace(3) %add.ptr607.21185, align 8, !dbg !254
  %v_tile_local.sroa.0.2.extract.shift1881 = lshr i32 %condval_2.sroa.0.0.21175, 16, !dbg !255
  %v_tile_local.sroa.0.2.extract.trunc1882 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1881 to i64, !dbg !255
  %v_tile_local.sroa.50.10.extract.shift1951 = and i32 %condval_2.sroa.0.0.1.2, -65536, !dbg !254
  %v_tile_local.sroa.98.18.extract.shift2021 = lshr i32 %condval_2.sroa.0.0.2.2, 16, !dbg !255
  %v_tile_local.sroa.98.18.extract.trunc2022 = zext nneg i32 %v_tile_local.sroa.98.18.extract.shift2021 to i64, !dbg !255
  %v_tile_local.sroa.146.26.extract.shift2091 = lshr i32 %condval_2.sroa.0.0.3.2, 16, !dbg !255
  %v_tile_local.sroa.146.26.extract.trunc2092 = zext nneg i32 %v_tile_local.sroa.146.26.extract.shift2091 to i64, !dbg !255
  %add597.1.2 = or disjoint i32 %mul596, 256, !dbg !256
  %512 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.1.2, !dbg !253
  %xor603.1.2 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.1.2 = xor i32 %xor603.1.2, 8, !dbg !253
  %add.ptr607.1.2 = getelementptr inbounds i8, ptr addrspace(3) %512, i32 %add.ptr607.idx.1.2, !dbg !253
  %v_column_local.sroa.130.0.insert.shift1690 = shl nuw i64 %v_tile_local.sroa.146.26.extract.trunc2092, 48, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1535 = shl nuw nsw i64 %v_tile_local.sroa.98.18.extract.trunc2022, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1537 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1690, %v_column_local.sroa.98.0.insert.shift1535, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1380 = zext i32 %v_tile_local.sroa.50.10.extract.shift1951 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1382 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1537, %v_column_local.sroa.66.0.insert.shift1380, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1249 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1382, %v_tile_local.sroa.0.2.extract.trunc1882, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1249, ptr addrspace(3) %add.ptr607.1.2, align 8, !dbg !254
  %add597.2.2 = or disjoint i32 %mul596, 512, !dbg !256
  %513 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.2.2, !dbg !253
  %xor603.2.2 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.2.2 = xor i32 %xor603.2.2, 16, !dbg !253
  %add.ptr607.2.2 = getelementptr inbounds i8, ptr addrspace(3) %513, i32 %add.ptr607.idx.2.2, !dbg !253
  %514 = and i32 %condval_2.sroa.5.0.3.2, 65535, !dbg !254
  %v_column_local.sroa.130.0.insert.ext1694 = zext nneg i32 %514 to i64, !dbg !254
  %v_column_local.sroa.130.0.insert.shift1695 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1694, 48, !dbg !254
  %515 = and i32 %condval_2.sroa.5.0.2.2, 65535, !dbg !254
  %v_column_local.sroa.98.0.insert.ext1539 = zext nneg i32 %515 to i64, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1540 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1539, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1542 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1695, %v_column_local.sroa.98.0.insert.shift1540, !dbg !254
  %516 = shl i32 %condval_2.sroa.5.0.1.2, 16, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1385 = zext i32 %516 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1387 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1542, %v_column_local.sroa.66.0.insert.shift1385, !dbg !254
  %517 = and i32 %condval_2.sroa.5.0.21174, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1251 = zext nneg i32 %517 to i64, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1253 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1387, %v_column_local.sroa.0.0.insert.ext1251, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1253, ptr addrspace(3) %add.ptr607.2.2, align 8, !dbg !254
  %v_tile_local.sroa.26.6.extract.shift1916 = lshr i32 %condval_2.sroa.5.0.21174, 16, !dbg !255
  %v_tile_local.sroa.26.6.extract.trunc1917 = zext nneg i32 %v_tile_local.sroa.26.6.extract.shift1916 to i64, !dbg !255
  %v_tile_local.sroa.74.14.extract.shift1986 = and i32 %condval_2.sroa.5.0.1.2, -65536, !dbg !254
  %v_tile_local.sroa.122.22.extract.shift2056 = lshr i32 %condval_2.sroa.5.0.2.2, 16, !dbg !255
  %v_tile_local.sroa.122.22.extract.trunc2057 = zext nneg i32 %v_tile_local.sroa.122.22.extract.shift2056 to i64, !dbg !255
  %v_tile_local.sroa.170.30.extract.shift2126 = lshr i32 %condval_2.sroa.5.0.3.2, 16, !dbg !255
  %v_tile_local.sroa.170.30.extract.trunc2127 = zext nneg i32 %v_tile_local.sroa.170.30.extract.shift2126 to i64, !dbg !255
  %add597.3.2 = or disjoint i32 %mul596, 768, !dbg !256
  %518 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.3.2, !dbg !253
  %xor603.3.2 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.3.2 = xor i32 %xor603.3.2, 24, !dbg !253
  %add.ptr607.3.2 = getelementptr inbounds i8, ptr addrspace(3) %518, i32 %add.ptr607.idx.3.2, !dbg !253
  %v_column_local.sroa.130.0.insert.shift1700 = shl nuw i64 %v_tile_local.sroa.170.30.extract.trunc2127, 48, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1545 = shl nuw nsw i64 %v_tile_local.sroa.122.22.extract.trunc2057, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1547 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1700, %v_column_local.sroa.98.0.insert.shift1545, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1390 = zext i32 %v_tile_local.sroa.74.14.extract.shift1986 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1392 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1547, %v_column_local.sroa.66.0.insert.shift1390, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1257 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1392, %v_tile_local.sroa.26.6.extract.trunc1917, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1257, ptr addrspace(3) %add.ptr607.3.2, align 8, !dbg !254
  fence syncscope("warp") release, !dbg !257
  tail call void @llvm.mxc.barrier.warp(), !dbg !260
  fence syncscope("warp") acquire, !dbg !261
  %add624.21187 = or disjoint i32 %mul617, %mul623, !dbg !262
  %519 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.21187, !dbg !263
  %add.ptr634.idx.21188 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.21189 = getelementptr inbounds i8, ptr addrspace(3) %519, i32 %add.ptr634.idx.21188, !dbg !263
  %520 = load <4 x half>, ptr addrspace(3) %add.ptr634.21189, align 8, !dbg !264
  %add619.1.2 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.1.2 = or disjoint i32 %add619.1.2, 64, !dbg !262
  %521 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.1.2, !dbg !263
  %xor630.1.2 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.1.2 = xor i32 %xor630.1.2, 8, !dbg !263
  %add.ptr634.1.2 = getelementptr inbounds i8, ptr addrspace(3) %521, i32 %add.ptr634.idx.1.2, !dbg !263
  %522 = load <4 x half>, ptr addrspace(3) %add.ptr634.1.2, align 8, !dbg !264
  %add619.2.2 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.2.2 = or disjoint i32 %add619.2.2, 128, !dbg !262
  %523 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.2.2, !dbg !263
  %xor630.2.2 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.2.2 = xor i32 %xor630.2.2, 16, !dbg !263
  %add.ptr634.2.2 = getelementptr inbounds i8, ptr addrspace(3) %523, i32 %add.ptr634.idx.2.2, !dbg !263
  %524 = load <4 x half>, ptr addrspace(3) %add.ptr634.2.2, align 8, !dbg !264
  %add619.3.2 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.3.2 = or disjoint i32 %add619.3.2, 192, !dbg !262
  %525 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.3.2, !dbg !263
  %xor630.3.2 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.3.2 = xor i32 %xor630.3.2, 24, !dbg !263
  %add.ptr634.3.2 = getelementptr inbounds i8, ptr addrspace(3) %525, i32 %add.ptr634.idx.3.2, !dbg !263
  %526 = load <4 x half>, ptr addrspace(3) %add.ptr634.3.2, align 8, !dbg !264
  %527 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %520, <4 x half> %498, <4 x float> %output_acc.sroa.0.1), !dbg !265
  %528 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %522, <4 x half> %498, <4 x float> %output_acc.sroa.34.1), !dbg !265
  %529 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %524, <4 x half> %498, <4 x float> %output_acc.sroa.66.1), !dbg !265
  %530 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %526, <4 x half> %498, <4 x float> %output_acc.sroa.98.1), !dbg !265
  br label %if.end661.2, !dbg !266

if.end661.2:                                      ; preds = %if.end566.3.2, %if.end661.1
  %bc2707 = phi <4 x half> [ %148, %if.end661.1 ], [ %498, %if.end566.3.2 ], !dbg !83
  %output_acc.sroa.98.2 = phi <4 x float> [ %output_acc.sroa.98.1, %if.end661.1 ], [ %530, %if.end566.3.2 ], !dbg !83
  %output_acc.sroa.66.2 = phi <4 x float> [ %output_acc.sroa.66.1, %if.end661.1 ], [ %529, %if.end566.3.2 ], !dbg !83
  %output_acc.sroa.34.2 = phi <4 x float> [ %output_acc.sroa.34.1, %if.end661.1 ], [ %528, %if.end566.3.2 ], !dbg !83
  %output_acc.sroa.0.2 = phi <4 x float> [ %output_acc.sroa.0.1, %if.end661.1 ], [ %527, %if.end566.3.2 ], !dbg !83
  %531 = load i32, ptr addrspace(1) %arrayidx130.3, align 4, !dbg !186, !tbaa !30
  %mul444.3 = shl nsw i32 %531, 4, !dbg !187
  %cmp445.3 = icmp slt i32 %531, 0, !dbg !188
  %cmp448.not.3 = icmp sgt i32 %mul444.3, %1
  %or.cond1029.3 = select i1 %cmp445.3, i1 true, i1 %cmp448.not.3, !dbg !189
  br i1 %or.cond1029.3, label %if.end661.3, label %if.then449.3, !dbg !189

if.then449.3:                                     ; preds = %if.end661.2
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454.3 = icmp eq i32 %shr324, 3, !dbg !195
  br i1 %cmp454.3, label %if.then455.3, label %if.end464.3, !dbg !196

if.then455.3:                                     ; preds = %if.then449.3
  %sub460.3 = fsub contract float %max_cache.sroa.0.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461.3 = fmul contract float %sub460.3, 0x3FC7154760000000, !dbg !198
  %cmp.i.i977.3 = fcmp contract olt float %mul461.3, -1.260000e+02, !dbg !199
  %cond.i.i978.3 = select contract i1 %cmp.i.i977.3, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i979.3 = fadd contract float %mul461.3, %cond.i.i978.3, !dbg !199
  %532 = tail call contract float @llvm.exp2.f32(float %add.i.i979.3), !dbg !199
  %cond2.i.i980.3 = select contract i1 %cmp.i.i977.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i981.3 = fmul contract float %cond2.i.i980.3, %532, !dbg !199
  br label %if.end464.3, !dbg !201

if.end464.3:                                      ; preds = %if.then455.3, %if.then449.3
  %rescale.sroa.0.0.3 = phi float [ %mul.i.i981.3, %if.then455.3 ], [ 0.000000e+00, %if.then449.3 ], !dbg !83
  %533 = bitcast float %rescale.sroa.0.0.3 to i32, !dbg !202
  %534 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %535 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %534) #11, !dbg !209
  %rem.i.i.3 = or disjoint i32 %and469, 48, !dbg !267
  %and.i.i982.3 = and i32 %535, 1073741760, !dbg !210
  %add.i.i983.3 = or disjoint i32 %and.i.i982.3, %rem.i.i.3, !dbg !211
  %shl.i.i984.3 = shl nuw i32 %add.i.i983.3, 2, !dbg !212
  %536 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i984.3, i32 %533), !dbg !213
  %537 = bitcast i32 %536 to float, !dbg !214
  %538 = extractelement <4 x half> %190, i64 0, !dbg !215
  %conv.i985.3 = fpext half %538 to float, !dbg !215
  %539 = extractelement <4 x half> %190, i64 1, !dbg !218
  %conv6.i.3 = fpext half %539 to float, !dbg !218
  %540 = extractelement <4 x half> %190, i64 2, !dbg !219
  %conv.i987.3 = fpext half %540 to float, !dbg !219
  %541 = extractelement <4 x half> %190, i64 3, !dbg !221
  %conv6.i989.3 = fpext half %541 to float, !dbg !221
  %mul494.3 = fmul contract float %537, %conv.i985.3, !dbg !222
  %mul498.3 = fmul contract float %537, %conv6.i.3, !dbg !223
  %mul502.3 = fmul contract float %537, %conv.i987.3, !dbg !224
  %mul506.3 = fmul contract float %537, %conv6.i989.3, !dbg !225
  %542 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %543 = fptrunc float %mul494.3 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %542), !dbg !226, !noalias !230
  %544 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %545 = fptrunc float %mul498.3 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %544), !dbg !235, !noalias !230
  %546 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %547 = fptrunc float %mul502.3 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %546), !dbg !237, !noalias !241
  %548 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %549 = fptrunc float %mul506.3 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %548), !dbg !246, !noalias !241
  %550 = insertelement <4 x half> poison, half %543, i64 0, !dbg !248
  %551 = insertelement <4 x half> %550, half %545, i64 1, !dbg !248
  %552 = insertelement <4 x half> %551, half %547, i64 2, !dbg !248
  %553 = insertelement <4 x half> %552, half %549, i64 3, !dbg !248
  %shr529.3 = lshr exact i32 %mul444.3, 2
  %add530.3 = add nuw nsw i32 %shr529.3, %shr324
  %cmp531.3 = icmp ult i32 %add530.3, 256
  %conv541.3 = zext nneg i32 %mul444.3 to i64
  br i1 %cmp531.3, label %if.then532.31194, label %if.end566.31198, !dbg !249

if.then532.31194:                                 ; preds = %if.end464.3
  %554 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.31190 = shl nuw nsw i64 %conv541.3, 7, !dbg !250
  %555 = getelementptr inbounds i8, ptr addrspace(4) %554, i64 %.idx1065.31190, !dbg !250
  %condval_2.sroa.0.0.copyload.31191 = load i32, ptr addrspace(4) %555, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.31192 = getelementptr inbounds i8, ptr addrspace(4) %555, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload.31193 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.31192, align 4, !dbg !251, !tbaa !30
  br label %if.end566.31198, !dbg !252

if.end566.31198:                                  ; preds = %if.then532.31194, %if.end464.3
  %condval_2.sroa.5.0.31195 = phi i32 [ %condval_2.sroa.5.0.copyload.31193, %if.then532.31194 ], [ 0, %if.end464.3 ], !dbg !83
  %condval_2.sroa.0.0.31196 = phi i32 [ %condval_2.sroa.0.0.copyload.31191, %if.then532.31194 ], [ 0, %if.end464.3 ], !dbg !83
  br i1 %cmp531.3, label %if.then532.1.3, label %if.end566.1.3, !dbg !249

if.then532.1.3:                                   ; preds = %if.end566.31198
  %556 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.1.3 = shl nuw nsw i64 %conv541.3, 7, !dbg !250
  %557 = getelementptr inbounds i8, ptr addrspace(4) %556, i64 %.idx1065.1.3, !dbg !250
  %add.ptr552.1.3 = getelementptr inbounds i8, ptr addrspace(4) %557, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %add.ptr552.1.3, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %557, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.3, align 4, !dbg !251, !tbaa !30
  br label %if.end566.1.3, !dbg !252

if.end566.1.3:                                    ; preds = %if.then532.1.3, %if.end566.31198
  %condval_2.sroa.5.0.1.3 = phi i32 [ %condval_2.sroa.5.0.copyload.1.3, %if.then532.1.3 ], [ 0, %if.end566.31198 ], !dbg !83
  %condval_2.sroa.0.0.1.3 = phi i32 [ %condval_2.sroa.0.0.copyload.1.3, %if.then532.1.3 ], [ 0, %if.end566.31198 ], !dbg !83
  br i1 %cmp531.3, label %if.then532.2.3, label %if.end566.2.3, !dbg !249

if.then532.2.3:                                   ; preds = %if.end566.1.3
  %558 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.2.3 = shl nuw nsw i64 %conv541.3, 7, !dbg !250
  %559 = getelementptr inbounds i8, ptr addrspace(4) %558, i64 %.idx1065.2.3, !dbg !250
  %add.ptr552.2.3 = getelementptr inbounds i8, ptr addrspace(4) %559, i64 256, !dbg !250
  %condval_2.sroa.0.0.copyload.2.3 = load i32, ptr addrspace(4) %add.ptr552.2.3, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.2.3 = getelementptr inbounds i8, ptr addrspace(4) %559, i64 260, !dbg !251
  %condval_2.sroa.5.0.copyload.2.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.2.3, align 4, !dbg !251, !tbaa !30
  br label %if.end566.2.3, !dbg !252

if.end566.2.3:                                    ; preds = %if.then532.2.3, %if.end566.1.3
  %condval_2.sroa.5.0.2.3 = phi i32 [ %condval_2.sroa.5.0.copyload.2.3, %if.then532.2.3 ], [ 0, %if.end566.1.3 ], !dbg !83
  %condval_2.sroa.0.0.2.3 = phi i32 [ %condval_2.sroa.0.0.copyload.2.3, %if.then532.2.3 ], [ 0, %if.end566.1.3 ], !dbg !83
  br i1 %cmp531.3, label %if.then532.3.3, label %if.end566.3.3, !dbg !249

if.then532.3.3:                                   ; preds = %if.end566.2.3
  %560 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.3.3 = shl nuw nsw i64 %conv541.3, 7, !dbg !250
  %561 = getelementptr inbounds i8, ptr addrspace(4) %560, i64 %.idx1065.3.3, !dbg !250
  %add.ptr552.3.3 = getelementptr inbounds i8, ptr addrspace(4) %561, i64 384, !dbg !250
  %condval_2.sroa.0.0.copyload.3.3 = load i32, ptr addrspace(4) %add.ptr552.3.3, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.3.3 = getelementptr inbounds i8, ptr addrspace(4) %561, i64 388, !dbg !251
  %condval_2.sroa.5.0.copyload.3.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.3.3, align 4, !dbg !251, !tbaa !30
  br label %if.end566.3.3, !dbg !252

if.end566.3.3:                                    ; preds = %if.then532.3.3, %if.end566.2.3
  %condval_2.sroa.5.0.3.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3.3, %if.then532.3.3 ], [ 0, %if.end566.2.3 ], !dbg !83
  %condval_2.sroa.0.0.3.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3.3, %if.then532.3.3 ], [ 0, %if.end566.2.3 ], !dbg !83
  %562 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul596, !dbg !253
  %add.ptr607.idx.31205 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.31206 = getelementptr inbounds i8, ptr addrspace(3) %562, i32 %add.ptr607.idx.31205, !dbg !253
  %563 = and i32 %condval_2.sroa.0.0.3.3, 65535, !dbg !254
  %v_column_local.sroa.130.0.insert.ext1704 = zext nneg i32 %563 to i64, !dbg !254
  %v_column_local.sroa.130.0.insert.shift1705 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1704, 48, !dbg !254
  %564 = and i32 %condval_2.sroa.0.0.2.3, 65535, !dbg !254
  %v_column_local.sroa.98.0.insert.ext1549 = zext nneg i32 %564 to i64, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1550 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1549, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1552 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1705, %v_column_local.sroa.98.0.insert.shift1550, !dbg !254
  %565 = shl i32 %condval_2.sroa.0.0.1.3, 16, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1395 = zext i32 %565 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1397 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1552, %v_column_local.sroa.66.0.insert.shift1395, !dbg !254
  %566 = and i32 %condval_2.sroa.0.0.31196, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1259 = zext nneg i32 %566 to i64, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1261 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1397, %v_column_local.sroa.0.0.insert.ext1259, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1261, ptr addrspace(3) %add.ptr607.31206, align 8, !dbg !254
  %v_tile_local.sroa.0.2.extract.shift1884 = lshr i32 %condval_2.sroa.0.0.31196, 16, !dbg !255
  %v_tile_local.sroa.0.2.extract.trunc1885 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1884 to i64, !dbg !255
  %v_tile_local.sroa.50.10.extract.shift1954 = and i32 %condval_2.sroa.0.0.1.3, -65536, !dbg !254
  %v_tile_local.sroa.98.18.extract.shift2024 = lshr i32 %condval_2.sroa.0.0.2.3, 16, !dbg !255
  %v_tile_local.sroa.98.18.extract.trunc2025 = zext nneg i32 %v_tile_local.sroa.98.18.extract.shift2024 to i64, !dbg !255
  %v_tile_local.sroa.146.26.extract.shift2094 = lshr i32 %condval_2.sroa.0.0.3.3, 16, !dbg !255
  %v_tile_local.sroa.146.26.extract.trunc2095 = zext nneg i32 %v_tile_local.sroa.146.26.extract.shift2094 to i64, !dbg !255
  %add597.1.3 = or disjoint i32 %mul596, 256, !dbg !256
  %567 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.1.3, !dbg !253
  %xor603.1.3 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.1.3 = xor i32 %xor603.1.3, 8, !dbg !253
  %add.ptr607.1.3 = getelementptr inbounds i8, ptr addrspace(3) %567, i32 %add.ptr607.idx.1.3, !dbg !253
  %v_column_local.sroa.130.0.insert.shift1710 = shl nuw i64 %v_tile_local.sroa.146.26.extract.trunc2095, 48, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1555 = shl nuw nsw i64 %v_tile_local.sroa.98.18.extract.trunc2025, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1557 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1710, %v_column_local.sroa.98.0.insert.shift1555, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1400 = zext i32 %v_tile_local.sroa.50.10.extract.shift1954 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1402 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1557, %v_column_local.sroa.66.0.insert.shift1400, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1265 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1402, %v_tile_local.sroa.0.2.extract.trunc1885, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1265, ptr addrspace(3) %add.ptr607.1.3, align 8, !dbg !254
  %add597.2.3 = or disjoint i32 %mul596, 512, !dbg !256
  %568 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.2.3, !dbg !253
  %xor603.2.3 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.2.3 = xor i32 %xor603.2.3, 16, !dbg !253
  %add.ptr607.2.3 = getelementptr inbounds i8, ptr addrspace(3) %568, i32 %add.ptr607.idx.2.3, !dbg !253
  %569 = and i32 %condval_2.sroa.5.0.3.3, 65535, !dbg !254
  %v_column_local.sroa.130.0.insert.ext1714 = zext nneg i32 %569 to i64, !dbg !254
  %v_column_local.sroa.130.0.insert.shift1715 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1714, 48, !dbg !254
  %570 = and i32 %condval_2.sroa.5.0.2.3, 65535, !dbg !254
  %v_column_local.sroa.98.0.insert.ext1559 = zext nneg i32 %570 to i64, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1560 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1559, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1562 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1715, %v_column_local.sroa.98.0.insert.shift1560, !dbg !254
  %571 = shl i32 %condval_2.sroa.5.0.1.3, 16, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1405 = zext i32 %571 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1407 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1562, %v_column_local.sroa.66.0.insert.shift1405, !dbg !254
  %572 = and i32 %condval_2.sroa.5.0.31195, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1267 = zext nneg i32 %572 to i64, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1269 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1407, %v_column_local.sroa.0.0.insert.ext1267, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1269, ptr addrspace(3) %add.ptr607.2.3, align 8, !dbg !254
  %v_tile_local.sroa.26.6.extract.shift1919 = lshr i32 %condval_2.sroa.5.0.31195, 16, !dbg !255
  %v_tile_local.sroa.26.6.extract.trunc1920 = zext nneg i32 %v_tile_local.sroa.26.6.extract.shift1919 to i64, !dbg !255
  %v_tile_local.sroa.74.14.extract.shift1989 = and i32 %condval_2.sroa.5.0.1.3, -65536, !dbg !254
  %v_tile_local.sroa.122.22.extract.shift2059 = lshr i32 %condval_2.sroa.5.0.2.3, 16, !dbg !255
  %v_tile_local.sroa.122.22.extract.trunc2060 = zext nneg i32 %v_tile_local.sroa.122.22.extract.shift2059 to i64, !dbg !255
  %v_tile_local.sroa.170.30.extract.shift2129 = lshr i32 %condval_2.sroa.5.0.3.3, 16, !dbg !255
  %v_tile_local.sroa.170.30.extract.trunc2130 = zext nneg i32 %v_tile_local.sroa.170.30.extract.shift2129 to i64, !dbg !255
  %add597.3.3 = or disjoint i32 %mul596, 768, !dbg !256
  %573 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.3.3, !dbg !253
  %xor603.3.3 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.3.3 = xor i32 %xor603.3.3, 24, !dbg !253
  %add.ptr607.3.3 = getelementptr inbounds i8, ptr addrspace(3) %573, i32 %add.ptr607.idx.3.3, !dbg !253
  %v_column_local.sroa.130.0.insert.shift1720 = shl nuw i64 %v_tile_local.sroa.170.30.extract.trunc2130, 48, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1565 = shl nuw nsw i64 %v_tile_local.sroa.122.22.extract.trunc2060, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1567 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1720, %v_column_local.sroa.98.0.insert.shift1565, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1410 = zext i32 %v_tile_local.sroa.74.14.extract.shift1989 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1412 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1567, %v_column_local.sroa.66.0.insert.shift1410, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1273 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1412, %v_tile_local.sroa.26.6.extract.trunc1920, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1273, ptr addrspace(3) %add.ptr607.3.3, align 8, !dbg !254
  fence syncscope("warp") release, !dbg !257
  tail call void @llvm.mxc.barrier.warp(), !dbg !260
  fence syncscope("warp") acquire, !dbg !261
  %add624.31208 = or disjoint i32 %mul617, %mul623, !dbg !262
  %574 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.31208, !dbg !263
  %add.ptr634.idx.31209 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.31210 = getelementptr inbounds i8, ptr addrspace(3) %574, i32 %add.ptr634.idx.31209, !dbg !263
  %575 = load <4 x half>, ptr addrspace(3) %add.ptr634.31210, align 8, !dbg !264
  %add619.1.3 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.1.3 = or disjoint i32 %add619.1.3, 64, !dbg !262
  %576 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.1.3, !dbg !263
  %xor630.1.3 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.1.3 = xor i32 %xor630.1.3, 8, !dbg !263
  %add.ptr634.1.3 = getelementptr inbounds i8, ptr addrspace(3) %576, i32 %add.ptr634.idx.1.3, !dbg !263
  %577 = load <4 x half>, ptr addrspace(3) %add.ptr634.1.3, align 8, !dbg !264
  %add619.2.3 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.2.3 = or disjoint i32 %add619.2.3, 128, !dbg !262
  %578 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.2.3, !dbg !263
  %xor630.2.3 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.2.3 = xor i32 %xor630.2.3, 16, !dbg !263
  %add.ptr634.2.3 = getelementptr inbounds i8, ptr addrspace(3) %578, i32 %add.ptr634.idx.2.3, !dbg !263
  %579 = load <4 x half>, ptr addrspace(3) %add.ptr634.2.3, align 8, !dbg !264
  %add619.3.3 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.3.3 = or disjoint i32 %add619.3.3, 192, !dbg !262
  %580 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.3.3, !dbg !263
  %xor630.3.3 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.3.3 = xor i32 %xor630.3.3, 24, !dbg !263
  %add.ptr634.3.3 = getelementptr inbounds i8, ptr addrspace(3) %580, i32 %add.ptr634.idx.3.3, !dbg !263
  %581 = load <4 x half>, ptr addrspace(3) %add.ptr634.3.3, align 8, !dbg !264
  %582 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %575, <4 x half> %553, <4 x float> %output_acc.sroa.0.2), !dbg !265
  %583 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %577, <4 x half> %553, <4 x float> %output_acc.sroa.34.2), !dbg !265
  %584 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %579, <4 x half> %553, <4 x float> %output_acc.sroa.66.2), !dbg !265
  %585 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %581, <4 x half> %553, <4 x float> %output_acc.sroa.98.2), !dbg !265
  br label %if.end661.3, !dbg !266

if.end661.3:                                      ; preds = %if.end566.3.3, %if.end661.2
  %bc2711 = phi <4 x half> [ %190, %if.end661.2 ], [ %553, %if.end566.3.3 ], !dbg !83
  %output_acc.sroa.98.3 = phi <4 x float> [ %output_acc.sroa.98.2, %if.end661.2 ], [ %585, %if.end566.3.3 ], !dbg !83
  %output_acc.sroa.66.3 = phi <4 x float> [ %output_acc.sroa.66.2, %if.end661.2 ], [ %584, %if.end566.3.3 ], !dbg !83
  %output_acc.sroa.34.3 = phi <4 x float> [ %output_acc.sroa.34.2, %if.end661.2 ], [ %583, %if.end566.3.3 ], !dbg !83
  %output_acc.sroa.0.3 = phi <4 x float> [ %output_acc.sroa.0.2, %if.end661.2 ], [ %582, %if.end566.3.3 ], !dbg !83
  %586 = load i32, ptr addrspace(1) %arrayidx130.4, align 4, !dbg !186, !tbaa !30
  %mul444.4 = shl nsw i32 %586, 4, !dbg !187
  %cmp445.4 = icmp slt i32 %586, 0, !dbg !188
  %cmp448.not.4 = icmp sgt i32 %mul444.4, %1
  %or.cond1029.4 = select i1 %cmp445.4, i1 true, i1 %cmp448.not.4, !dbg !189
  br i1 %or.cond1029.4, label %if.end661.4, label %if.then449.4, !dbg !189

if.then449.4:                                     ; preds = %if.end661.3
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454.4 = icmp ult i32 %2, 16, !dbg !195
  br i1 %cmp454.4, label %if.then455.4, label %if.end464.4, !dbg !196

if.then455.4:                                     ; preds = %if.then449.4
  %sub460.4 = fsub contract float %max_cache.sroa.11.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461.4 = fmul contract float %sub460.4, 0x3FC7154760000000, !dbg !198
  %cmp.i.i977.4 = fcmp contract olt float %mul461.4, -1.260000e+02, !dbg !199
  %cond.i.i978.4 = select contract i1 %cmp.i.i977.4, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i979.4 = fadd contract float %mul461.4, %cond.i.i978.4, !dbg !199
  %587 = tail call contract float @llvm.exp2.f32(float %add.i.i979.4), !dbg !199
  %cond2.i.i980.4 = select contract i1 %cmp.i.i977.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i981.4 = fmul contract float %cond2.i.i980.4, %587, !dbg !199
  br label %if.end464.4, !dbg !201

if.end464.4:                                      ; preds = %if.then455.4, %if.then449.4
  %rescale.sroa.0.0.4 = phi float [ %mul.i.i981.4, %if.then455.4 ], [ 0.000000e+00, %if.then449.4 ], !dbg !83
  %588 = bitcast float %rescale.sroa.0.0.4 to i32, !dbg !202
  %589 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %590 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %589) #11, !dbg !209
  %and.i.i982.4 = and i32 %590, 1073741760, !dbg !210
  %add.i.i983.4 = or disjoint i32 %and.i.i982.4, %and469, !dbg !211
  %shl.i.i984.4 = shl nuw i32 %add.i.i983.4, 2, !dbg !212
  %591 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i984.4, i32 %588), !dbg !213
  %592 = bitcast i32 %591 to float, !dbg !214
  %593 = extractelement <4 x half> %232, i64 0, !dbg !215
  %conv.i985.4 = fpext half %593 to float, !dbg !215
  %594 = extractelement <4 x half> %232, i64 1, !dbg !218
  %conv6.i.4 = fpext half %594 to float, !dbg !218
  %595 = extractelement <4 x half> %232, i64 2, !dbg !219
  %conv.i987.4 = fpext half %595 to float, !dbg !219
  %596 = extractelement <4 x half> %232, i64 3, !dbg !221
  %conv6.i989.4 = fpext half %596 to float, !dbg !221
  %mul494.4 = fmul contract float %592, %conv.i985.4, !dbg !222
  %mul498.4 = fmul contract float %592, %conv6.i.4, !dbg !223
  %mul502.4 = fmul contract float %592, %conv.i987.4, !dbg !224
  %mul506.4 = fmul contract float %592, %conv6.i989.4, !dbg !225
  %597 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %598 = fptrunc float %mul494.4 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %597), !dbg !226, !noalias !230
  %599 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %600 = fptrunc float %mul498.4 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %599), !dbg !235, !noalias !230
  %601 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %602 = fptrunc float %mul502.4 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %601), !dbg !237, !noalias !241
  %603 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %604 = fptrunc float %mul506.4 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %603), !dbg !246, !noalias !241
  %605 = insertelement <4 x half> poison, half %598, i64 0, !dbg !248
  %606 = insertelement <4 x half> %605, half %600, i64 1, !dbg !248
  %607 = insertelement <4 x half> %606, half %602, i64 2, !dbg !248
  %608 = insertelement <4 x half> %607, half %604, i64 3, !dbg !248
  %shr529.4 = lshr exact i32 %mul444.4, 2
  %add530.4 = add nuw nsw i32 %shr529.4, %shr324
  %cmp531.4 = icmp ult i32 %add530.4, 256
  %conv541.4 = zext nneg i32 %mul444.4 to i64
  br i1 %cmp531.4, label %if.then532.4, label %if.end566.4, !dbg !249

if.then532.4:                                     ; preds = %if.end464.4
  %609 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.4 = shl nuw nsw i64 %conv541.4, 7, !dbg !250
  %610 = getelementptr inbounds i8, ptr addrspace(4) %609, i64 %.idx1065.4, !dbg !250
  %condval_2.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %610, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %610, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.4, align 4, !dbg !251, !tbaa !30
  br label %if.end566.4, !dbg !252

if.end566.4:                                      ; preds = %if.then532.4, %if.end464.4
  %condval_2.sroa.5.0.4 = phi i32 [ %condval_2.sroa.5.0.copyload.4, %if.then532.4 ], [ 0, %if.end464.4 ], !dbg !83
  %condval_2.sroa.0.0.4 = phi i32 [ %condval_2.sroa.0.0.copyload.4, %if.then532.4 ], [ 0, %if.end464.4 ], !dbg !83
  br i1 %cmp531.4, label %if.then532.1.4, label %if.end566.1.4, !dbg !249

if.then532.1.4:                                   ; preds = %if.end566.4
  %611 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.1.4 = shl nuw nsw i64 %conv541.4, 7, !dbg !250
  %612 = getelementptr inbounds i8, ptr addrspace(4) %611, i64 %.idx1065.1.4, !dbg !250
  %add.ptr552.1.4 = getelementptr inbounds i8, ptr addrspace(4) %612, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1.4 = load i32, ptr addrspace(4) %add.ptr552.1.4, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %612, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.4, align 4, !dbg !251, !tbaa !30
  br label %if.end566.1.4, !dbg !252

if.end566.1.4:                                    ; preds = %if.then532.1.4, %if.end566.4
  %condval_2.sroa.5.0.1.4 = phi i32 [ %condval_2.sroa.5.0.copyload.1.4, %if.then532.1.4 ], [ 0, %if.end566.4 ], !dbg !83
  %condval_2.sroa.0.0.1.4 = phi i32 [ %condval_2.sroa.0.0.copyload.1.4, %if.then532.1.4 ], [ 0, %if.end566.4 ], !dbg !83
  br i1 %cmp531.4, label %if.then532.2.4, label %if.end566.2.4, !dbg !249

if.then532.2.4:                                   ; preds = %if.end566.1.4
  %613 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.2.4 = shl nuw nsw i64 %conv541.4, 7, !dbg !250
  %614 = getelementptr inbounds i8, ptr addrspace(4) %613, i64 %.idx1065.2.4, !dbg !250
  %add.ptr552.2.4 = getelementptr inbounds i8, ptr addrspace(4) %614, i64 256, !dbg !250
  %condval_2.sroa.0.0.copyload.2.4 = load i32, ptr addrspace(4) %add.ptr552.2.4, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.2.4 = getelementptr inbounds i8, ptr addrspace(4) %614, i64 260, !dbg !251
  %condval_2.sroa.5.0.copyload.2.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.2.4, align 4, !dbg !251, !tbaa !30
  br label %if.end566.2.4, !dbg !252

if.end566.2.4:                                    ; preds = %if.then532.2.4, %if.end566.1.4
  %condval_2.sroa.5.0.2.4 = phi i32 [ %condval_2.sroa.5.0.copyload.2.4, %if.then532.2.4 ], [ 0, %if.end566.1.4 ], !dbg !83
  %condval_2.sroa.0.0.2.4 = phi i32 [ %condval_2.sroa.0.0.copyload.2.4, %if.then532.2.4 ], [ 0, %if.end566.1.4 ], !dbg !83
  br i1 %cmp531.4, label %if.then532.3.4, label %if.end566.3.4, !dbg !249

if.then532.3.4:                                   ; preds = %if.end566.2.4
  %615 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.3.4 = shl nuw nsw i64 %conv541.4, 7, !dbg !250
  %616 = getelementptr inbounds i8, ptr addrspace(4) %615, i64 %.idx1065.3.4, !dbg !250
  %add.ptr552.3.4 = getelementptr inbounds i8, ptr addrspace(4) %616, i64 384, !dbg !250
  %condval_2.sroa.0.0.copyload.3.4 = load i32, ptr addrspace(4) %add.ptr552.3.4, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.3.4 = getelementptr inbounds i8, ptr addrspace(4) %616, i64 388, !dbg !251
  %condval_2.sroa.5.0.copyload.3.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.3.4, align 4, !dbg !251, !tbaa !30
  br label %if.end566.3.4, !dbg !252

if.end566.3.4:                                    ; preds = %if.then532.3.4, %if.end566.2.4
  %condval_2.sroa.5.0.3.4 = phi i32 [ %condval_2.sroa.5.0.copyload.3.4, %if.then532.3.4 ], [ 0, %if.end566.2.4 ], !dbg !83
  %condval_2.sroa.0.0.3.4 = phi i32 [ %condval_2.sroa.0.0.copyload.3.4, %if.then532.3.4 ], [ 0, %if.end566.2.4 ], !dbg !83
  %617 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul596, !dbg !253
  %add.ptr607.idx.4 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.4 = getelementptr inbounds i8, ptr addrspace(3) %617, i32 %add.ptr607.idx.4, !dbg !253
  %618 = and i32 %condval_2.sroa.0.0.3.4, 65535, !dbg !254
  %v_column_local.sroa.130.0.insert.ext1724 = zext nneg i32 %618 to i64, !dbg !254
  %v_column_local.sroa.130.0.insert.shift1725 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1724, 48, !dbg !254
  %619 = and i32 %condval_2.sroa.0.0.2.4, 65535, !dbg !254
  %v_column_local.sroa.98.0.insert.ext1569 = zext nneg i32 %619 to i64, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1570 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1569, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1572 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1725, %v_column_local.sroa.98.0.insert.shift1570, !dbg !254
  %620 = shl i32 %condval_2.sroa.0.0.1.4, 16, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1415 = zext i32 %620 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1417 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1572, %v_column_local.sroa.66.0.insert.shift1415, !dbg !254
  %621 = and i32 %condval_2.sroa.0.0.4, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1275 = zext nneg i32 %621 to i64, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1277 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1417, %v_column_local.sroa.0.0.insert.ext1275, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1277, ptr addrspace(3) %add.ptr607.4, align 8, !dbg !254
  %v_tile_local.sroa.0.2.extract.shift1887 = lshr i32 %condval_2.sroa.0.0.4, 16, !dbg !255
  %v_tile_local.sroa.0.2.extract.trunc1888 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1887 to i64, !dbg !255
  %v_tile_local.sroa.50.10.extract.shift1957 = and i32 %condval_2.sroa.0.0.1.4, -65536, !dbg !254
  %v_tile_local.sroa.98.18.extract.shift2027 = lshr i32 %condval_2.sroa.0.0.2.4, 16, !dbg !255
  %v_tile_local.sroa.98.18.extract.trunc2028 = zext nneg i32 %v_tile_local.sroa.98.18.extract.shift2027 to i64, !dbg !255
  %v_tile_local.sroa.146.26.extract.shift2097 = lshr i32 %condval_2.sroa.0.0.3.4, 16, !dbg !255
  %v_tile_local.sroa.146.26.extract.trunc2098 = zext nneg i32 %v_tile_local.sroa.146.26.extract.shift2097 to i64, !dbg !255
  %add597.1.4 = or disjoint i32 %mul596, 256, !dbg !256
  %622 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.1.4, !dbg !253
  %xor603.1.4 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.1.4 = xor i32 %xor603.1.4, 8, !dbg !253
  %add.ptr607.1.4 = getelementptr inbounds i8, ptr addrspace(3) %622, i32 %add.ptr607.idx.1.4, !dbg !253
  %v_column_local.sroa.130.0.insert.shift1730 = shl nuw i64 %v_tile_local.sroa.146.26.extract.trunc2098, 48, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1575 = shl nuw nsw i64 %v_tile_local.sroa.98.18.extract.trunc2028, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1577 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1730, %v_column_local.sroa.98.0.insert.shift1575, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1420 = zext i32 %v_tile_local.sroa.50.10.extract.shift1957 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1422 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1577, %v_column_local.sroa.66.0.insert.shift1420, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1281 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1422, %v_tile_local.sroa.0.2.extract.trunc1888, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1281, ptr addrspace(3) %add.ptr607.1.4, align 8, !dbg !254
  %add597.2.4 = or disjoint i32 %mul596, 512, !dbg !256
  %623 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.2.4, !dbg !253
  %xor603.2.4 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.2.4 = xor i32 %xor603.2.4, 16, !dbg !253
  %add.ptr607.2.4 = getelementptr inbounds i8, ptr addrspace(3) %623, i32 %add.ptr607.idx.2.4, !dbg !253
  %624 = and i32 %condval_2.sroa.5.0.3.4, 65535, !dbg !254
  %v_column_local.sroa.130.0.insert.ext1734 = zext nneg i32 %624 to i64, !dbg !254
  %v_column_local.sroa.130.0.insert.shift1735 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1734, 48, !dbg !254
  %625 = and i32 %condval_2.sroa.5.0.2.4, 65535, !dbg !254
  %v_column_local.sroa.98.0.insert.ext1579 = zext nneg i32 %625 to i64, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1580 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1579, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1582 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1735, %v_column_local.sroa.98.0.insert.shift1580, !dbg !254
  %626 = shl i32 %condval_2.sroa.5.0.1.4, 16, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1425 = zext i32 %626 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1427 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1582, %v_column_local.sroa.66.0.insert.shift1425, !dbg !254
  %627 = and i32 %condval_2.sroa.5.0.4, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1283 = zext nneg i32 %627 to i64, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1285 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1427, %v_column_local.sroa.0.0.insert.ext1283, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1285, ptr addrspace(3) %add.ptr607.2.4, align 8, !dbg !254
  %v_tile_local.sroa.26.6.extract.shift1922 = lshr i32 %condval_2.sroa.5.0.4, 16, !dbg !255
  %v_tile_local.sroa.26.6.extract.trunc1923 = zext nneg i32 %v_tile_local.sroa.26.6.extract.shift1922 to i64, !dbg !255
  %v_tile_local.sroa.74.14.extract.shift1992 = and i32 %condval_2.sroa.5.0.1.4, -65536, !dbg !254
  %v_tile_local.sroa.122.22.extract.shift2062 = lshr i32 %condval_2.sroa.5.0.2.4, 16, !dbg !255
  %v_tile_local.sroa.122.22.extract.trunc2063 = zext nneg i32 %v_tile_local.sroa.122.22.extract.shift2062 to i64, !dbg !255
  %v_tile_local.sroa.170.30.extract.shift2132 = lshr i32 %condval_2.sroa.5.0.3.4, 16, !dbg !255
  %v_tile_local.sroa.170.30.extract.trunc2133 = zext nneg i32 %v_tile_local.sroa.170.30.extract.shift2132 to i64, !dbg !255
  %add597.3.4 = or disjoint i32 %mul596, 768, !dbg !256
  %628 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.3.4, !dbg !253
  %xor603.3.4 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.3.4 = xor i32 %xor603.3.4, 24, !dbg !253
  %add.ptr607.3.4 = getelementptr inbounds i8, ptr addrspace(3) %628, i32 %add.ptr607.idx.3.4, !dbg !253
  %v_column_local.sroa.130.0.insert.shift1740 = shl nuw i64 %v_tile_local.sroa.170.30.extract.trunc2133, 48, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1585 = shl nuw nsw i64 %v_tile_local.sroa.122.22.extract.trunc2063, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1587 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1740, %v_column_local.sroa.98.0.insert.shift1585, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1430 = zext i32 %v_tile_local.sroa.74.14.extract.shift1992 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1432 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1587, %v_column_local.sroa.66.0.insert.shift1430, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1289 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1432, %v_tile_local.sroa.26.6.extract.trunc1923, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1289, ptr addrspace(3) %add.ptr607.3.4, align 8, !dbg !254
  fence syncscope("warp") release, !dbg !257
  tail call void @llvm.mxc.barrier.warp(), !dbg !260
  fence syncscope("warp") acquire, !dbg !261
  %add624.4 = or disjoint i32 %mul617, %mul623, !dbg !262
  %629 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.4, !dbg !263
  %add.ptr634.idx.4 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.4 = getelementptr inbounds i8, ptr addrspace(3) %629, i32 %add.ptr634.idx.4, !dbg !263
  %630 = load <4 x half>, ptr addrspace(3) %add.ptr634.4, align 8, !dbg !264
  %add619.1.4 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.1.4 = or disjoint i32 %add619.1.4, 64, !dbg !262
  %631 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.1.4, !dbg !263
  %xor630.1.4 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.1.4 = xor i32 %xor630.1.4, 8, !dbg !263
  %add.ptr634.1.4 = getelementptr inbounds i8, ptr addrspace(3) %631, i32 %add.ptr634.idx.1.4, !dbg !263
  %632 = load <4 x half>, ptr addrspace(3) %add.ptr634.1.4, align 8, !dbg !264
  %add619.2.4 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.2.4 = or disjoint i32 %add619.2.4, 128, !dbg !262
  %633 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.2.4, !dbg !263
  %xor630.2.4 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.2.4 = xor i32 %xor630.2.4, 16, !dbg !263
  %add.ptr634.2.4 = getelementptr inbounds i8, ptr addrspace(3) %633, i32 %add.ptr634.idx.2.4, !dbg !263
  %634 = load <4 x half>, ptr addrspace(3) %add.ptr634.2.4, align 8, !dbg !264
  %add619.3.4 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.3.4 = or disjoint i32 %add619.3.4, 192, !dbg !262
  %635 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.3.4, !dbg !263
  %xor630.3.4 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.3.4 = xor i32 %xor630.3.4, 24, !dbg !263
  %add.ptr634.3.4 = getelementptr inbounds i8, ptr addrspace(3) %635, i32 %add.ptr634.idx.3.4, !dbg !263
  %636 = load <4 x half>, ptr addrspace(3) %add.ptr634.3.4, align 8, !dbg !264
  %637 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %630, <4 x half> %608, <4 x float> %output_acc.sroa.0.3), !dbg !265
  %638 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %632, <4 x half> %608, <4 x float> %output_acc.sroa.34.3), !dbg !265
  %639 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %634, <4 x half> %608, <4 x float> %output_acc.sroa.66.3), !dbg !265
  %640 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %636, <4 x half> %608, <4 x float> %output_acc.sroa.98.3), !dbg !265
  br label %if.end661.4, !dbg !266

if.end661.4:                                      ; preds = %if.end566.3.4, %if.end661.3
  %bc2715 = phi <4 x half> [ %232, %if.end661.3 ], [ %608, %if.end566.3.4 ], !dbg !83
  %output_acc.sroa.98.4 = phi <4 x float> [ %output_acc.sroa.98.3, %if.end661.3 ], [ %640, %if.end566.3.4 ], !dbg !83
  %output_acc.sroa.66.4 = phi <4 x float> [ %output_acc.sroa.66.3, %if.end661.3 ], [ %639, %if.end566.3.4 ], !dbg !83
  %output_acc.sroa.34.4 = phi <4 x float> [ %output_acc.sroa.34.3, %if.end661.3 ], [ %638, %if.end566.3.4 ], !dbg !83
  %output_acc.sroa.0.4 = phi <4 x float> [ %output_acc.sroa.0.3, %if.end661.3 ], [ %637, %if.end566.3.4 ], !dbg !83
  %641 = load i32, ptr addrspace(1) %arrayidx130.5, align 4, !dbg !186, !tbaa !30
  %mul444.5 = shl nsw i32 %641, 4, !dbg !187
  %cmp445.5 = icmp slt i32 %641, 0, !dbg !188
  %cmp448.not.5 = icmp sgt i32 %mul444.5, %1
  %or.cond1029.5 = select i1 %cmp445.5, i1 true, i1 %cmp448.not.5, !dbg !189
  br i1 %or.cond1029.5, label %if.end661.5, label %if.then449.5, !dbg !189

if.then449.5:                                     ; preds = %if.end661.4
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454.5 = icmp eq i32 %shr324, 1, !dbg !195
  br i1 %cmp454.5, label %if.then455.5, label %if.end464.5, !dbg !196

if.then455.5:                                     ; preds = %if.then449.5
  %sub460.5 = fsub contract float %max_cache.sroa.11.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461.5 = fmul contract float %sub460.5, 0x3FC7154760000000, !dbg !198
  %cmp.i.i977.5 = fcmp contract olt float %mul461.5, -1.260000e+02, !dbg !199
  %cond.i.i978.5 = select contract i1 %cmp.i.i977.5, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i979.5 = fadd contract float %mul461.5, %cond.i.i978.5, !dbg !199
  %642 = tail call contract float @llvm.exp2.f32(float %add.i.i979.5), !dbg !199
  %cond2.i.i980.5 = select contract i1 %cmp.i.i977.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i981.5 = fmul contract float %cond2.i.i980.5, %642, !dbg !199
  br label %if.end464.5, !dbg !201

if.end464.5:                                      ; preds = %if.then455.5, %if.then449.5
  %rescale.sroa.0.0.5 = phi float [ %mul.i.i981.5, %if.then455.5 ], [ 0.000000e+00, %if.then449.5 ], !dbg !83
  %643 = bitcast float %rescale.sroa.0.0.5 to i32, !dbg !202
  %644 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %645 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %644) #11, !dbg !209
  %rem.i.i.5 = or disjoint i32 %and469, 16, !dbg !267
  %and.i.i982.5 = and i32 %645, 1073741760, !dbg !210
  %add.i.i983.5 = or disjoint i32 %and.i.i982.5, %rem.i.i.5, !dbg !211
  %shl.i.i984.5 = shl nuw i32 %add.i.i983.5, 2, !dbg !212
  %646 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i984.5, i32 %643), !dbg !213
  %647 = bitcast i32 %646 to float, !dbg !214
  %648 = extractelement <4 x half> %274, i64 0, !dbg !215
  %conv.i985.5 = fpext half %648 to float, !dbg !215
  %649 = extractelement <4 x half> %274, i64 1, !dbg !218
  %conv6.i.5 = fpext half %649 to float, !dbg !218
  %650 = extractelement <4 x half> %274, i64 2, !dbg !219
  %conv.i987.5 = fpext half %650 to float, !dbg !219
  %651 = extractelement <4 x half> %274, i64 3, !dbg !221
  %conv6.i989.5 = fpext half %651 to float, !dbg !221
  %mul494.5 = fmul contract float %647, %conv.i985.5, !dbg !222
  %mul498.5 = fmul contract float %647, %conv6.i.5, !dbg !223
  %mul502.5 = fmul contract float %647, %conv.i987.5, !dbg !224
  %mul506.5 = fmul contract float %647, %conv6.i989.5, !dbg !225
  %652 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %653 = fptrunc float %mul494.5 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %652), !dbg !226, !noalias !230
  %654 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %655 = fptrunc float %mul498.5 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %654), !dbg !235, !noalias !230
  %656 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %657 = fptrunc float %mul502.5 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %656), !dbg !237, !noalias !241
  %658 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %659 = fptrunc float %mul506.5 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %658), !dbg !246, !noalias !241
  %660 = insertelement <4 x half> poison, half %653, i64 0, !dbg !248
  %661 = insertelement <4 x half> %660, half %655, i64 1, !dbg !248
  %662 = insertelement <4 x half> %661, half %657, i64 2, !dbg !248
  %663 = insertelement <4 x half> %662, half %659, i64 3, !dbg !248
  %shr529.5 = lshr exact i32 %mul444.5, 2
  %add530.5 = add nuw nsw i32 %shr529.5, %shr324
  %cmp531.5 = icmp ult i32 %add530.5, 256
  %conv541.5 = zext nneg i32 %mul444.5 to i64
  br i1 %cmp531.5, label %if.then532.5, label %if.end566.5, !dbg !249

if.then532.5:                                     ; preds = %if.end464.5
  %664 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.5 = shl nuw nsw i64 %conv541.5, 7, !dbg !250
  %665 = getelementptr inbounds i8, ptr addrspace(4) %664, i64 %.idx1065.5, !dbg !250
  %condval_2.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %665, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %665, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.5, align 4, !dbg !251, !tbaa !30
  br label %if.end566.5, !dbg !252

if.end566.5:                                      ; preds = %if.then532.5, %if.end464.5
  %condval_2.sroa.5.0.5 = phi i32 [ %condval_2.sroa.5.0.copyload.5, %if.then532.5 ], [ 0, %if.end464.5 ], !dbg !83
  %condval_2.sroa.0.0.5 = phi i32 [ %condval_2.sroa.0.0.copyload.5, %if.then532.5 ], [ 0, %if.end464.5 ], !dbg !83
  br i1 %cmp531.5, label %if.then532.1.5, label %if.end566.1.5, !dbg !249

if.then532.1.5:                                   ; preds = %if.end566.5
  %666 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.1.5 = shl nuw nsw i64 %conv541.5, 7, !dbg !250
  %667 = getelementptr inbounds i8, ptr addrspace(4) %666, i64 %.idx1065.1.5, !dbg !250
  %add.ptr552.1.5 = getelementptr inbounds i8, ptr addrspace(4) %667, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1.5 = load i32, ptr addrspace(4) %add.ptr552.1.5, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %667, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.5, align 4, !dbg !251, !tbaa !30
  br label %if.end566.1.5, !dbg !252

if.end566.1.5:                                    ; preds = %if.then532.1.5, %if.end566.5
  %condval_2.sroa.5.0.1.5 = phi i32 [ %condval_2.sroa.5.0.copyload.1.5, %if.then532.1.5 ], [ 0, %if.end566.5 ], !dbg !83
  %condval_2.sroa.0.0.1.5 = phi i32 [ %condval_2.sroa.0.0.copyload.1.5, %if.then532.1.5 ], [ 0, %if.end566.5 ], !dbg !83
  br i1 %cmp531.5, label %if.then532.2.5, label %if.end566.2.5, !dbg !249

if.then532.2.5:                                   ; preds = %if.end566.1.5
  %668 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.2.5 = shl nuw nsw i64 %conv541.5, 7, !dbg !250
  %669 = getelementptr inbounds i8, ptr addrspace(4) %668, i64 %.idx1065.2.5, !dbg !250
  %add.ptr552.2.5 = getelementptr inbounds i8, ptr addrspace(4) %669, i64 256, !dbg !250
  %condval_2.sroa.0.0.copyload.2.5 = load i32, ptr addrspace(4) %add.ptr552.2.5, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.2.5 = getelementptr inbounds i8, ptr addrspace(4) %669, i64 260, !dbg !251
  %condval_2.sroa.5.0.copyload.2.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.2.5, align 4, !dbg !251, !tbaa !30
  br label %if.end566.2.5, !dbg !252

if.end566.2.5:                                    ; preds = %if.then532.2.5, %if.end566.1.5
  %condval_2.sroa.5.0.2.5 = phi i32 [ %condval_2.sroa.5.0.copyload.2.5, %if.then532.2.5 ], [ 0, %if.end566.1.5 ], !dbg !83
  %condval_2.sroa.0.0.2.5 = phi i32 [ %condval_2.sroa.0.0.copyload.2.5, %if.then532.2.5 ], [ 0, %if.end566.1.5 ], !dbg !83
  br i1 %cmp531.5, label %if.then532.3.5, label %if.end566.3.5, !dbg !249

if.then532.3.5:                                   ; preds = %if.end566.2.5
  %670 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.3.5 = shl nuw nsw i64 %conv541.5, 7, !dbg !250
  %671 = getelementptr inbounds i8, ptr addrspace(4) %670, i64 %.idx1065.3.5, !dbg !250
  %add.ptr552.3.5 = getelementptr inbounds i8, ptr addrspace(4) %671, i64 384, !dbg !250
  %condval_2.sroa.0.0.copyload.3.5 = load i32, ptr addrspace(4) %add.ptr552.3.5, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.3.5 = getelementptr inbounds i8, ptr addrspace(4) %671, i64 388, !dbg !251
  %condval_2.sroa.5.0.copyload.3.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.3.5, align 4, !dbg !251, !tbaa !30
  br label %if.end566.3.5, !dbg !252

if.end566.3.5:                                    ; preds = %if.then532.3.5, %if.end566.2.5
  %condval_2.sroa.5.0.3.5 = phi i32 [ %condval_2.sroa.5.0.copyload.3.5, %if.then532.3.5 ], [ 0, %if.end566.2.5 ], !dbg !83
  %condval_2.sroa.0.0.3.5 = phi i32 [ %condval_2.sroa.0.0.copyload.3.5, %if.then532.3.5 ], [ 0, %if.end566.2.5 ], !dbg !83
  %672 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul596, !dbg !253
  %add.ptr607.idx.5 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.5 = getelementptr inbounds i8, ptr addrspace(3) %672, i32 %add.ptr607.idx.5, !dbg !253
  %673 = and i32 %condval_2.sroa.0.0.3.5, 65535, !dbg !254
  %v_column_local.sroa.130.0.insert.ext1744 = zext nneg i32 %673 to i64, !dbg !254
  %v_column_local.sroa.130.0.insert.shift1745 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1744, 48, !dbg !254
  %674 = and i32 %condval_2.sroa.0.0.2.5, 65535, !dbg !254
  %v_column_local.sroa.98.0.insert.ext1589 = zext nneg i32 %674 to i64, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1590 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1589, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1592 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1745, %v_column_local.sroa.98.0.insert.shift1590, !dbg !254
  %675 = shl i32 %condval_2.sroa.0.0.1.5, 16, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1435 = zext i32 %675 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1437 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1592, %v_column_local.sroa.66.0.insert.shift1435, !dbg !254
  %676 = and i32 %condval_2.sroa.0.0.5, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1291 = zext nneg i32 %676 to i64, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1293 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1437, %v_column_local.sroa.0.0.insert.ext1291, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1293, ptr addrspace(3) %add.ptr607.5, align 8, !dbg !254
  %v_tile_local.sroa.0.2.extract.shift1890 = lshr i32 %condval_2.sroa.0.0.5, 16, !dbg !255
  %v_tile_local.sroa.0.2.extract.trunc1891 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1890 to i64, !dbg !255
  %v_tile_local.sroa.50.10.extract.shift1960 = and i32 %condval_2.sroa.0.0.1.5, -65536, !dbg !254
  %v_tile_local.sroa.98.18.extract.shift2030 = lshr i32 %condval_2.sroa.0.0.2.5, 16, !dbg !255
  %v_tile_local.sroa.98.18.extract.trunc2031 = zext nneg i32 %v_tile_local.sroa.98.18.extract.shift2030 to i64, !dbg !255
  %v_tile_local.sroa.146.26.extract.shift2100 = lshr i32 %condval_2.sroa.0.0.3.5, 16, !dbg !255
  %v_tile_local.sroa.146.26.extract.trunc2101 = zext nneg i32 %v_tile_local.sroa.146.26.extract.shift2100 to i64, !dbg !255
  %add597.1.5 = or disjoint i32 %mul596, 256, !dbg !256
  %677 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.1.5, !dbg !253
  %xor603.1.5 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.1.5 = xor i32 %xor603.1.5, 8, !dbg !253
  %add.ptr607.1.5 = getelementptr inbounds i8, ptr addrspace(3) %677, i32 %add.ptr607.idx.1.5, !dbg !253
  %v_column_local.sroa.130.0.insert.shift1750 = shl nuw i64 %v_tile_local.sroa.146.26.extract.trunc2101, 48, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1595 = shl nuw nsw i64 %v_tile_local.sroa.98.18.extract.trunc2031, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1597 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1750, %v_column_local.sroa.98.0.insert.shift1595, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1440 = zext i32 %v_tile_local.sroa.50.10.extract.shift1960 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1442 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1597, %v_column_local.sroa.66.0.insert.shift1440, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1297 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1442, %v_tile_local.sroa.0.2.extract.trunc1891, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1297, ptr addrspace(3) %add.ptr607.1.5, align 8, !dbg !254
  %add597.2.5 = or disjoint i32 %mul596, 512, !dbg !256
  %678 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.2.5, !dbg !253
  %xor603.2.5 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.2.5 = xor i32 %xor603.2.5, 16, !dbg !253
  %add.ptr607.2.5 = getelementptr inbounds i8, ptr addrspace(3) %678, i32 %add.ptr607.idx.2.5, !dbg !253
  %679 = and i32 %condval_2.sroa.5.0.3.5, 65535, !dbg !254
  %v_column_local.sroa.130.0.insert.ext1754 = zext nneg i32 %679 to i64, !dbg !254
  %v_column_local.sroa.130.0.insert.shift1755 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1754, 48, !dbg !254
  %680 = and i32 %condval_2.sroa.5.0.2.5, 65535, !dbg !254
  %v_column_local.sroa.98.0.insert.ext1599 = zext nneg i32 %680 to i64, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1600 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1599, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1602 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1755, %v_column_local.sroa.98.0.insert.shift1600, !dbg !254
  %681 = shl i32 %condval_2.sroa.5.0.1.5, 16, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1445 = zext i32 %681 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1447 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1602, %v_column_local.sroa.66.0.insert.shift1445, !dbg !254
  %682 = and i32 %condval_2.sroa.5.0.5, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1299 = zext nneg i32 %682 to i64, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1301 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1447, %v_column_local.sroa.0.0.insert.ext1299, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1301, ptr addrspace(3) %add.ptr607.2.5, align 8, !dbg !254
  %v_tile_local.sroa.26.6.extract.shift1925 = lshr i32 %condval_2.sroa.5.0.5, 16, !dbg !255
  %v_tile_local.sroa.26.6.extract.trunc1926 = zext nneg i32 %v_tile_local.sroa.26.6.extract.shift1925 to i64, !dbg !255
  %v_tile_local.sroa.74.14.extract.shift1995 = and i32 %condval_2.sroa.5.0.1.5, -65536, !dbg !254
  %v_tile_local.sroa.122.22.extract.shift2065 = lshr i32 %condval_2.sroa.5.0.2.5, 16, !dbg !255
  %v_tile_local.sroa.122.22.extract.trunc2066 = zext nneg i32 %v_tile_local.sroa.122.22.extract.shift2065 to i64, !dbg !255
  %v_tile_local.sroa.170.30.extract.shift2135 = lshr i32 %condval_2.sroa.5.0.3.5, 16, !dbg !255
  %v_tile_local.sroa.170.30.extract.trunc2136 = zext nneg i32 %v_tile_local.sroa.170.30.extract.shift2135 to i64, !dbg !255
  %add597.3.5 = or disjoint i32 %mul596, 768, !dbg !256
  %683 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.3.5, !dbg !253
  %xor603.3.5 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.3.5 = xor i32 %xor603.3.5, 24, !dbg !253
  %add.ptr607.3.5 = getelementptr inbounds i8, ptr addrspace(3) %683, i32 %add.ptr607.idx.3.5, !dbg !253
  %v_column_local.sroa.130.0.insert.shift1760 = shl nuw i64 %v_tile_local.sroa.170.30.extract.trunc2136, 48, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1605 = shl nuw nsw i64 %v_tile_local.sroa.122.22.extract.trunc2066, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1607 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1760, %v_column_local.sroa.98.0.insert.shift1605, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1450 = zext i32 %v_tile_local.sroa.74.14.extract.shift1995 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1452 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1607, %v_column_local.sroa.66.0.insert.shift1450, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1305 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1452, %v_tile_local.sroa.26.6.extract.trunc1926, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1305, ptr addrspace(3) %add.ptr607.3.5, align 8, !dbg !254
  fence syncscope("warp") release, !dbg !257
  tail call void @llvm.mxc.barrier.warp(), !dbg !260
  fence syncscope("warp") acquire, !dbg !261
  %add624.5 = or disjoint i32 %mul617, %mul623, !dbg !262
  %684 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.5, !dbg !263
  %add.ptr634.idx.5 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.5 = getelementptr inbounds i8, ptr addrspace(3) %684, i32 %add.ptr634.idx.5, !dbg !263
  %685 = load <4 x half>, ptr addrspace(3) %add.ptr634.5, align 8, !dbg !264
  %add619.1.5 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.1.5 = or disjoint i32 %add619.1.5, 64, !dbg !262
  %686 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.1.5, !dbg !263
  %xor630.1.5 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.1.5 = xor i32 %xor630.1.5, 8, !dbg !263
  %add.ptr634.1.5 = getelementptr inbounds i8, ptr addrspace(3) %686, i32 %add.ptr634.idx.1.5, !dbg !263
  %687 = load <4 x half>, ptr addrspace(3) %add.ptr634.1.5, align 8, !dbg !264
  %add619.2.5 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.2.5 = or disjoint i32 %add619.2.5, 128, !dbg !262
  %688 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.2.5, !dbg !263
  %xor630.2.5 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.2.5 = xor i32 %xor630.2.5, 16, !dbg !263
  %add.ptr634.2.5 = getelementptr inbounds i8, ptr addrspace(3) %688, i32 %add.ptr634.idx.2.5, !dbg !263
  %689 = load <4 x half>, ptr addrspace(3) %add.ptr634.2.5, align 8, !dbg !264
  %add619.3.5 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.3.5 = or disjoint i32 %add619.3.5, 192, !dbg !262
  %690 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.3.5, !dbg !263
  %xor630.3.5 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.3.5 = xor i32 %xor630.3.5, 24, !dbg !263
  %add.ptr634.3.5 = getelementptr inbounds i8, ptr addrspace(3) %690, i32 %add.ptr634.idx.3.5, !dbg !263
  %691 = load <4 x half>, ptr addrspace(3) %add.ptr634.3.5, align 8, !dbg !264
  %692 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %685, <4 x half> %663, <4 x float> %output_acc.sroa.0.4), !dbg !265
  %693 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %687, <4 x half> %663, <4 x float> %output_acc.sroa.34.4), !dbg !265
  %694 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %689, <4 x half> %663, <4 x float> %output_acc.sroa.66.4), !dbg !265
  %695 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %691, <4 x half> %663, <4 x float> %output_acc.sroa.98.4), !dbg !265
  br label %if.end661.5, !dbg !266

if.end661.5:                                      ; preds = %if.end566.3.5, %if.end661.4
  %bc2719 = phi <4 x half> [ %274, %if.end661.4 ], [ %663, %if.end566.3.5 ], !dbg !83
  %output_acc.sroa.98.5 = phi <4 x float> [ %output_acc.sroa.98.4, %if.end661.4 ], [ %695, %if.end566.3.5 ], !dbg !83
  %output_acc.sroa.66.5 = phi <4 x float> [ %output_acc.sroa.66.4, %if.end661.4 ], [ %694, %if.end566.3.5 ], !dbg !83
  %output_acc.sroa.34.5 = phi <4 x float> [ %output_acc.sroa.34.4, %if.end661.4 ], [ %693, %if.end566.3.5 ], !dbg !83
  %output_acc.sroa.0.5 = phi <4 x float> [ %output_acc.sroa.0.4, %if.end661.4 ], [ %692, %if.end566.3.5 ], !dbg !83
  %696 = load i32, ptr addrspace(1) %arrayidx130.6, align 4, !dbg !186, !tbaa !30
  %mul444.6 = shl nsw i32 %696, 4, !dbg !187
  %cmp445.6 = icmp slt i32 %696, 0, !dbg !188
  %cmp448.not.6 = icmp sgt i32 %mul444.6, %1
  %or.cond1029.6 = select i1 %cmp445.6, i1 true, i1 %cmp448.not.6, !dbg !189
  br i1 %or.cond1029.6, label %if.end661.6, label %if.then449.6, !dbg !189

if.then449.6:                                     ; preds = %if.end661.5
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454.6 = icmp eq i32 %shr324, 2, !dbg !195
  br i1 %cmp454.6, label %if.then455.6, label %if.end464.6, !dbg !196

if.then455.6:                                     ; preds = %if.then449.6
  %sub460.6 = fsub contract float %max_cache.sroa.11.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461.6 = fmul contract float %sub460.6, 0x3FC7154760000000, !dbg !198
  %cmp.i.i977.6 = fcmp contract olt float %mul461.6, -1.260000e+02, !dbg !199
  %cond.i.i978.6 = select contract i1 %cmp.i.i977.6, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i979.6 = fadd contract float %mul461.6, %cond.i.i978.6, !dbg !199
  %697 = tail call contract float @llvm.exp2.f32(float %add.i.i979.6), !dbg !199
  %cond2.i.i980.6 = select contract i1 %cmp.i.i977.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i981.6 = fmul contract float %cond2.i.i980.6, %697, !dbg !199
  %698 = bitcast float %mul.i.i981.6 to i32, !dbg !202
  br label %if.end464.6, !dbg !201

if.end464.6:                                      ; preds = %if.then455.6, %if.then449.6
  %rescale.sroa.0.0.6 = phi i32 [ %698, %if.then455.6 ], [ 0, %if.then449.6 ], !dbg !83
  %699 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %700 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %699) #11, !dbg !209
  %rem.i.i.6 = or disjoint i32 %and469, 32, !dbg !267
  %and.i.i982.6 = and i32 %700, 1073741760, !dbg !210
  %add.i.i983.6 = or disjoint i32 %and.i.i982.6, %rem.i.i.6, !dbg !211
  %shl.i.i984.6 = shl nuw i32 %add.i.i983.6, 2, !dbg !212
  %701 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i984.6, i32 %rescale.sroa.0.0.6), !dbg !213
  %702 = bitcast i32 %701 to float, !dbg !214
  %703 = extractelement <4 x half> %316, i64 0, !dbg !215
  %conv.i985.6 = fpext half %703 to float, !dbg !215
  %704 = extractelement <4 x half> %316, i64 1, !dbg !218
  %conv6.i.6 = fpext half %704 to float, !dbg !218
  %705 = extractelement <4 x half> %316, i64 2, !dbg !219
  %conv.i987.6 = fpext half %705 to float, !dbg !219
  %706 = extractelement <4 x half> %316, i64 3, !dbg !221
  %conv6.i989.6 = fpext half %706 to float, !dbg !221
  %mul494.6 = fmul contract float %702, %conv.i985.6, !dbg !222
  %mul498.6 = fmul contract float %702, %conv6.i.6, !dbg !223
  %mul502.6 = fmul contract float %702, %conv.i987.6, !dbg !224
  %mul506.6 = fmul contract float %702, %conv6.i989.6, !dbg !225
  %707 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %708 = fptrunc float %mul494.6 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %707), !dbg !226, !noalias !230
  %709 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %710 = fptrunc float %mul498.6 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %709), !dbg !235, !noalias !230
  %711 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %712 = fptrunc float %mul502.6 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %711), !dbg !237, !noalias !241
  %713 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %714 = fptrunc float %mul506.6 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %713), !dbg !246, !noalias !241
  %715 = insertelement <4 x half> poison, half %708, i64 0, !dbg !248
  %716 = insertelement <4 x half> %715, half %710, i64 1, !dbg !248
  %717 = insertelement <4 x half> %716, half %712, i64 2, !dbg !248
  %718 = insertelement <4 x half> %717, half %714, i64 3, !dbg !248
  %shr529.6 = lshr exact i32 %mul444.6, 2
  %add530.6 = add nuw nsw i32 %shr529.6, %shr324
  %cmp531.6 = icmp ult i32 %add530.6, 256
  %conv541.6 = zext nneg i32 %mul444.6 to i64
  br i1 %cmp531.6, label %if.then532.6, label %if.end566.6, !dbg !249

if.then532.6:                                     ; preds = %if.end464.6
  %719 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.6 = shl nuw nsw i64 %conv541.6, 7, !dbg !250
  %720 = getelementptr inbounds i8, ptr addrspace(4) %719, i64 %.idx1065.6, !dbg !250
  %condval_2.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %720, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %720, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.6, align 4, !dbg !251, !tbaa !30
  br label %if.end566.6, !dbg !252

if.end566.6:                                      ; preds = %if.then532.6, %if.end464.6
  %condval_2.sroa.5.0.6 = phi i32 [ %condval_2.sroa.5.0.copyload.6, %if.then532.6 ], [ 0, %if.end464.6 ], !dbg !83
  %condval_2.sroa.0.0.6 = phi i32 [ %condval_2.sroa.0.0.copyload.6, %if.then532.6 ], [ 0, %if.end464.6 ], !dbg !83
  br i1 %cmp531.6, label %if.then532.1.6, label %if.end566.1.6, !dbg !249

if.then532.1.6:                                   ; preds = %if.end566.6
  %721 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.1.6 = shl nuw nsw i64 %conv541.6, 7, !dbg !250
  %722 = getelementptr inbounds i8, ptr addrspace(4) %721, i64 %.idx1065.1.6, !dbg !250
  %add.ptr552.1.6 = getelementptr inbounds i8, ptr addrspace(4) %722, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1.6 = load i32, ptr addrspace(4) %add.ptr552.1.6, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %722, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.6, align 4, !dbg !251, !tbaa !30
  br label %if.end566.1.6, !dbg !252

if.end566.1.6:                                    ; preds = %if.then532.1.6, %if.end566.6
  %condval_2.sroa.5.0.1.6 = phi i32 [ %condval_2.sroa.5.0.copyload.1.6, %if.then532.1.6 ], [ 0, %if.end566.6 ], !dbg !83
  %condval_2.sroa.0.0.1.6 = phi i32 [ %condval_2.sroa.0.0.copyload.1.6, %if.then532.1.6 ], [ 0, %if.end566.6 ], !dbg !83
  br i1 %cmp531.6, label %if.then532.2.6, label %if.end566.2.6, !dbg !249

if.then532.2.6:                                   ; preds = %if.end566.1.6
  %723 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.2.6 = shl nuw nsw i64 %conv541.6, 7, !dbg !250
  %724 = getelementptr inbounds i8, ptr addrspace(4) %723, i64 %.idx1065.2.6, !dbg !250
  %add.ptr552.2.6 = getelementptr inbounds i8, ptr addrspace(4) %724, i64 256, !dbg !250
  %condval_2.sroa.0.0.copyload.2.6 = load i32, ptr addrspace(4) %add.ptr552.2.6, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.2.6 = getelementptr inbounds i8, ptr addrspace(4) %724, i64 260, !dbg !251
  %condval_2.sroa.5.0.copyload.2.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.2.6, align 4, !dbg !251, !tbaa !30
  br label %if.end566.2.6, !dbg !252

if.end566.2.6:                                    ; preds = %if.then532.2.6, %if.end566.1.6
  %condval_2.sroa.5.0.2.6 = phi i32 [ %condval_2.sroa.5.0.copyload.2.6, %if.then532.2.6 ], [ 0, %if.end566.1.6 ], !dbg !83
  %condval_2.sroa.0.0.2.6 = phi i32 [ %condval_2.sroa.0.0.copyload.2.6, %if.then532.2.6 ], [ 0, %if.end566.1.6 ], !dbg !83
  br i1 %cmp531.6, label %if.then532.3.6, label %if.end566.3.6, !dbg !249

if.then532.3.6:                                   ; preds = %if.end566.2.6
  %725 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.3.6 = shl nuw nsw i64 %conv541.6, 7, !dbg !250
  %726 = getelementptr inbounds i8, ptr addrspace(4) %725, i64 %.idx1065.3.6, !dbg !250
  %add.ptr552.3.6 = getelementptr inbounds i8, ptr addrspace(4) %726, i64 384, !dbg !250
  %condval_2.sroa.0.0.copyload.3.6 = load i32, ptr addrspace(4) %add.ptr552.3.6, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.3.6 = getelementptr inbounds i8, ptr addrspace(4) %726, i64 388, !dbg !251
  %condval_2.sroa.5.0.copyload.3.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.3.6, align 4, !dbg !251, !tbaa !30
  br label %if.end566.3.6, !dbg !252

if.end566.3.6:                                    ; preds = %if.then532.3.6, %if.end566.2.6
  %condval_2.sroa.5.0.3.6 = phi i32 [ %condval_2.sroa.5.0.copyload.3.6, %if.then532.3.6 ], [ 0, %if.end566.2.6 ], !dbg !83
  %condval_2.sroa.0.0.3.6 = phi i32 [ %condval_2.sroa.0.0.copyload.3.6, %if.then532.3.6 ], [ 0, %if.end566.2.6 ], !dbg !83
  %727 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul596, !dbg !253
  %add.ptr607.idx.6 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.6 = getelementptr inbounds i8, ptr addrspace(3) %727, i32 %add.ptr607.idx.6, !dbg !253
  %728 = and i32 %condval_2.sroa.0.0.3.6, 65535, !dbg !254
  %v_column_local.sroa.130.0.insert.ext1764 = zext nneg i32 %728 to i64, !dbg !254
  %v_column_local.sroa.130.0.insert.shift1765 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1764, 48, !dbg !254
  %729 = and i32 %condval_2.sroa.0.0.2.6, 65535, !dbg !254
  %v_column_local.sroa.98.0.insert.ext1609 = zext nneg i32 %729 to i64, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1610 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1609, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1612 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1765, %v_column_local.sroa.98.0.insert.shift1610, !dbg !254
  %730 = shl i32 %condval_2.sroa.0.0.1.6, 16, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1455 = zext i32 %730 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1457 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1612, %v_column_local.sroa.66.0.insert.shift1455, !dbg !254
  %731 = and i32 %condval_2.sroa.0.0.6, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1307 = zext nneg i32 %731 to i64, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1309 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1457, %v_column_local.sroa.0.0.insert.ext1307, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1309, ptr addrspace(3) %add.ptr607.6, align 8, !dbg !254
  %v_tile_local.sroa.0.2.extract.shift1893 = lshr i32 %condval_2.sroa.0.0.6, 16, !dbg !255
  %v_tile_local.sroa.0.2.extract.trunc1894 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1893 to i64, !dbg !255
  %v_tile_local.sroa.50.10.extract.shift1963 = and i32 %condval_2.sroa.0.0.1.6, -65536, !dbg !254
  %v_tile_local.sroa.98.18.extract.shift2033 = lshr i32 %condval_2.sroa.0.0.2.6, 16, !dbg !255
  %v_tile_local.sroa.98.18.extract.trunc2034 = zext nneg i32 %v_tile_local.sroa.98.18.extract.shift2033 to i64, !dbg !255
  %v_tile_local.sroa.146.26.extract.shift2103 = lshr i32 %condval_2.sroa.0.0.3.6, 16, !dbg !255
  %v_tile_local.sroa.146.26.extract.trunc2104 = zext nneg i32 %v_tile_local.sroa.146.26.extract.shift2103 to i64, !dbg !255
  %add597.1.6 = or disjoint i32 %mul596, 256, !dbg !256
  %732 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.1.6, !dbg !253
  %xor603.1.6 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.1.6 = xor i32 %xor603.1.6, 8, !dbg !253
  %add.ptr607.1.6 = getelementptr inbounds i8, ptr addrspace(3) %732, i32 %add.ptr607.idx.1.6, !dbg !253
  %v_column_local.sroa.130.0.insert.shift1770 = shl nuw i64 %v_tile_local.sroa.146.26.extract.trunc2104, 48, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1615 = shl nuw nsw i64 %v_tile_local.sroa.98.18.extract.trunc2034, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1617 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1770, %v_column_local.sroa.98.0.insert.shift1615, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1460 = zext i32 %v_tile_local.sroa.50.10.extract.shift1963 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1462 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1617, %v_column_local.sroa.66.0.insert.shift1460, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1313 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1462, %v_tile_local.sroa.0.2.extract.trunc1894, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1313, ptr addrspace(3) %add.ptr607.1.6, align 8, !dbg !254
  %add597.2.6 = or disjoint i32 %mul596, 512, !dbg !256
  %733 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.2.6, !dbg !253
  %xor603.2.6 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.2.6 = xor i32 %xor603.2.6, 16, !dbg !253
  %add.ptr607.2.6 = getelementptr inbounds i8, ptr addrspace(3) %733, i32 %add.ptr607.idx.2.6, !dbg !253
  %734 = and i32 %condval_2.sroa.5.0.3.6, 65535, !dbg !254
  %v_column_local.sroa.130.0.insert.ext1774 = zext nneg i32 %734 to i64, !dbg !254
  %v_column_local.sroa.130.0.insert.shift1775 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1774, 48, !dbg !254
  %735 = and i32 %condval_2.sroa.5.0.2.6, 65535, !dbg !254
  %v_column_local.sroa.98.0.insert.ext1619 = zext nneg i32 %735 to i64, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1620 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1619, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1622 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1775, %v_column_local.sroa.98.0.insert.shift1620, !dbg !254
  %736 = shl i32 %condval_2.sroa.5.0.1.6, 16, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1465 = zext i32 %736 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1467 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1622, %v_column_local.sroa.66.0.insert.shift1465, !dbg !254
  %737 = and i32 %condval_2.sroa.5.0.6, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1315 = zext nneg i32 %737 to i64, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1317 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1467, %v_column_local.sroa.0.0.insert.ext1315, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1317, ptr addrspace(3) %add.ptr607.2.6, align 8, !dbg !254
  %v_tile_local.sroa.26.6.extract.shift1928 = lshr i32 %condval_2.sroa.5.0.6, 16, !dbg !255
  %v_tile_local.sroa.26.6.extract.trunc1929 = zext nneg i32 %v_tile_local.sroa.26.6.extract.shift1928 to i64, !dbg !255
  %v_tile_local.sroa.74.14.extract.shift1998 = and i32 %condval_2.sroa.5.0.1.6, -65536, !dbg !254
  %v_tile_local.sroa.122.22.extract.shift2068 = lshr i32 %condval_2.sroa.5.0.2.6, 16, !dbg !255
  %v_tile_local.sroa.122.22.extract.trunc2069 = zext nneg i32 %v_tile_local.sroa.122.22.extract.shift2068 to i64, !dbg !255
  %v_tile_local.sroa.170.30.extract.shift2138 = lshr i32 %condval_2.sroa.5.0.3.6, 16, !dbg !255
  %v_tile_local.sroa.170.30.extract.trunc2139 = zext nneg i32 %v_tile_local.sroa.170.30.extract.shift2138 to i64, !dbg !255
  %add597.3.6 = or disjoint i32 %mul596, 768, !dbg !256
  %738 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.3.6, !dbg !253
  %xor603.3.6 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.3.6 = xor i32 %xor603.3.6, 24, !dbg !253
  %add.ptr607.3.6 = getelementptr inbounds i8, ptr addrspace(3) %738, i32 %add.ptr607.idx.3.6, !dbg !253
  %v_column_local.sroa.130.0.insert.shift1780 = shl nuw i64 %v_tile_local.sroa.170.30.extract.trunc2139, 48, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1625 = shl nuw nsw i64 %v_tile_local.sroa.122.22.extract.trunc2069, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1627 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1780, %v_column_local.sroa.98.0.insert.shift1625, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1470 = zext i32 %v_tile_local.sroa.74.14.extract.shift1998 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1472 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1627, %v_column_local.sroa.66.0.insert.shift1470, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1321 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1472, %v_tile_local.sroa.26.6.extract.trunc1929, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1321, ptr addrspace(3) %add.ptr607.3.6, align 8, !dbg !254
  fence syncscope("warp") release, !dbg !257
  tail call void @llvm.mxc.barrier.warp(), !dbg !260
  fence syncscope("warp") acquire, !dbg !261
  %add624.6 = or disjoint i32 %mul617, %mul623, !dbg !262
  %739 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.6, !dbg !263
  %add.ptr634.idx.6 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.6 = getelementptr inbounds i8, ptr addrspace(3) %739, i32 %add.ptr634.idx.6, !dbg !263
  %740 = load <4 x half>, ptr addrspace(3) %add.ptr634.6, align 8, !dbg !264
  %add619.1.6 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.1.6 = or disjoint i32 %add619.1.6, 64, !dbg !262
  %741 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.1.6, !dbg !263
  %xor630.1.6 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.1.6 = xor i32 %xor630.1.6, 8, !dbg !263
  %add.ptr634.1.6 = getelementptr inbounds i8, ptr addrspace(3) %741, i32 %add.ptr634.idx.1.6, !dbg !263
  %742 = load <4 x half>, ptr addrspace(3) %add.ptr634.1.6, align 8, !dbg !264
  %add619.2.6 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.2.6 = or disjoint i32 %add619.2.6, 128, !dbg !262
  %743 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.2.6, !dbg !263
  %xor630.2.6 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.2.6 = xor i32 %xor630.2.6, 16, !dbg !263
  %add.ptr634.2.6 = getelementptr inbounds i8, ptr addrspace(3) %743, i32 %add.ptr634.idx.2.6, !dbg !263
  %744 = load <4 x half>, ptr addrspace(3) %add.ptr634.2.6, align 8, !dbg !264
  %add619.3.6 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.3.6 = or disjoint i32 %add619.3.6, 192, !dbg !262
  %745 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.3.6, !dbg !263
  %xor630.3.6 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.3.6 = xor i32 %xor630.3.6, 24, !dbg !263
  %add.ptr634.3.6 = getelementptr inbounds i8, ptr addrspace(3) %745, i32 %add.ptr634.idx.3.6, !dbg !263
  %746 = load <4 x half>, ptr addrspace(3) %add.ptr634.3.6, align 8, !dbg !264
  %747 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %740, <4 x half> %718, <4 x float> %output_acc.sroa.0.5), !dbg !265
  %748 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %742, <4 x half> %718, <4 x float> %output_acc.sroa.34.5), !dbg !265
  %749 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %744, <4 x half> %718, <4 x float> %output_acc.sroa.66.5), !dbg !265
  %750 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %746, <4 x half> %718, <4 x float> %output_acc.sroa.98.5), !dbg !265
  br label %if.end661.6, !dbg !266

if.end661.6:                                      ; preds = %if.end566.3.6, %if.end661.5
  %bc2723 = phi <4 x half> [ %316, %if.end661.5 ], [ %718, %if.end566.3.6 ], !dbg !83
  %output_acc.sroa.98.6 = phi <4 x float> [ %output_acc.sroa.98.5, %if.end661.5 ], [ %750, %if.end566.3.6 ], !dbg !83
  %output_acc.sroa.66.6 = phi <4 x float> [ %output_acc.sroa.66.5, %if.end661.5 ], [ %749, %if.end566.3.6 ], !dbg !83
  %output_acc.sroa.34.6 = phi <4 x float> [ %output_acc.sroa.34.5, %if.end661.5 ], [ %748, %if.end566.3.6 ], !dbg !83
  %output_acc.sroa.0.6 = phi <4 x float> [ %output_acc.sroa.0.5, %if.end661.5 ], [ %747, %if.end566.3.6 ], !dbg !83
  %751 = load i32, ptr addrspace(1) %arrayidx130.7, align 4, !dbg !186, !tbaa !30
  %mul444.7 = shl nsw i32 %751, 4, !dbg !187
  %cmp445.7 = icmp slt i32 %751, 0, !dbg !188
  %cmp448.not.7 = icmp sgt i32 %mul444.7, %1
  %or.cond1029.7 = select i1 %cmp445.7, i1 true, i1 %cmp448.not.7, !dbg !189
  br i1 %or.cond1029.7, label %if.end661.7, label %if.then449.7, !dbg !189

if.then449.7:                                     ; preds = %if.end661.6
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454.7 = icmp eq i32 %shr324, 3, !dbg !195
  br i1 %cmp454.7, label %if.then455.7, label %if.end464.7, !dbg !196

if.then455.7:                                     ; preds = %if.then449.7
  %sub460.7 = fsub contract float %max_cache.sroa.11.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461.7 = fmul contract float %sub460.7, 0x3FC7154760000000, !dbg !198
  %cmp.i.i977.7 = fcmp contract olt float %mul461.7, -1.260000e+02, !dbg !199
  %cond.i.i978.7 = select contract i1 %cmp.i.i977.7, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i979.7 = fadd contract float %mul461.7, %cond.i.i978.7, !dbg !199
  %752 = tail call contract float @llvm.exp2.f32(float %add.i.i979.7), !dbg !199
  %cond2.i.i980.7 = select contract i1 %cmp.i.i977.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i981.7 = fmul contract float %cond2.i.i980.7, %752, !dbg !199
  %753 = bitcast float %mul.i.i981.7 to i32, !dbg !202
  br label %if.end464.7, !dbg !201

if.end464.7:                                      ; preds = %if.then455.7, %if.then449.7
  %rescale.sroa.0.0.7 = phi i32 [ %753, %if.then455.7 ], [ 0, %if.then449.7 ], !dbg !83
  %754 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %755 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %754) #11, !dbg !209
  %rem.i.i.7 = or disjoint i32 %and469, 48, !dbg !267
  %and.i.i982.7 = and i32 %755, 1073741760, !dbg !210
  %add.i.i983.7 = or disjoint i32 %and.i.i982.7, %rem.i.i.7, !dbg !211
  %shl.i.i984.7 = shl nuw i32 %add.i.i983.7, 2, !dbg !212
  %756 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i984.7, i32 %rescale.sroa.0.0.7), !dbg !213
  %757 = bitcast i32 %756 to float, !dbg !214
  %758 = extractelement <4 x half> %358, i64 0, !dbg !215
  %conv.i985.7 = fpext half %758 to float, !dbg !215
  %759 = extractelement <4 x half> %358, i64 1, !dbg !218
  %conv6.i.7 = fpext half %759 to float, !dbg !218
  %760 = extractelement <4 x half> %358, i64 2, !dbg !219
  %conv.i987.7 = fpext half %760 to float, !dbg !219
  %761 = extractelement <4 x half> %358, i64 3, !dbg !221
  %conv6.i989.7 = fpext half %761 to float, !dbg !221
  %mul494.7 = fmul contract float %757, %conv.i985.7, !dbg !222
  %mul498.7 = fmul contract float %757, %conv6.i.7, !dbg !223
  %mul502.7 = fmul contract float %757, %conv.i987.7, !dbg !224
  %mul506.7 = fmul contract float %757, %conv6.i989.7, !dbg !225
  %762 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %763 = fptrunc float %mul494.7 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %762), !dbg !226, !noalias !230
  %764 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %765 = fptrunc float %mul498.7 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %764), !dbg !235, !noalias !230
  %766 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %767 = fptrunc float %mul502.7 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %766), !dbg !237, !noalias !241
  %768 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %769 = fptrunc float %mul506.7 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %768), !dbg !246, !noalias !241
  %770 = insertelement <4 x half> poison, half %763, i64 0, !dbg !248
  %771 = insertelement <4 x half> %770, half %765, i64 1, !dbg !248
  %772 = insertelement <4 x half> %771, half %767, i64 2, !dbg !248
  %773 = insertelement <4 x half> %772, half %769, i64 3, !dbg !248
  %shr529.7 = lshr exact i32 %mul444.7, 2
  %add530.7 = add nuw nsw i32 %shr529.7, %shr324
  %cmp531.7 = icmp ult i32 %add530.7, 256
  %conv541.7 = zext nneg i32 %mul444.7 to i64
  br i1 %cmp531.7, label %if.then532.7, label %if.end566.7, !dbg !249

if.then532.7:                                     ; preds = %if.end464.7
  %774 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.7 = shl nuw nsw i64 %conv541.7, 7, !dbg !250
  %775 = getelementptr inbounds i8, ptr addrspace(4) %774, i64 %.idx1065.7, !dbg !250
  %condval_2.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %775, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %775, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.7, align 4, !dbg !251, !tbaa !30
  br label %if.end566.7, !dbg !252

if.end566.7:                                      ; preds = %if.then532.7, %if.end464.7
  %condval_2.sroa.5.0.7 = phi i32 [ %condval_2.sroa.5.0.copyload.7, %if.then532.7 ], [ 0, %if.end464.7 ], !dbg !83
  %condval_2.sroa.0.0.7 = phi i32 [ %condval_2.sroa.0.0.copyload.7, %if.then532.7 ], [ 0, %if.end464.7 ], !dbg !83
  br i1 %cmp531.7, label %if.then532.1.7, label %if.end566.1.7, !dbg !249

if.then532.1.7:                                   ; preds = %if.end566.7
  %776 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.1.7 = shl nuw nsw i64 %conv541.7, 7, !dbg !250
  %777 = getelementptr inbounds i8, ptr addrspace(4) %776, i64 %.idx1065.1.7, !dbg !250
  %add.ptr552.1.7 = getelementptr inbounds i8, ptr addrspace(4) %777, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1.7 = load i32, ptr addrspace(4) %add.ptr552.1.7, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %777, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.7, align 4, !dbg !251, !tbaa !30
  br label %if.end566.1.7, !dbg !252

if.end566.1.7:                                    ; preds = %if.then532.1.7, %if.end566.7
  %condval_2.sroa.5.0.1.7 = phi i32 [ %condval_2.sroa.5.0.copyload.1.7, %if.then532.1.7 ], [ 0, %if.end566.7 ], !dbg !83
  %condval_2.sroa.0.0.1.7 = phi i32 [ %condval_2.sroa.0.0.copyload.1.7, %if.then532.1.7 ], [ 0, %if.end566.7 ], !dbg !83
  br i1 %cmp531.7, label %if.then532.2.7, label %if.end566.2.7, !dbg !249

if.then532.2.7:                                   ; preds = %if.end566.1.7
  %778 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.2.7 = shl nuw nsw i64 %conv541.7, 7, !dbg !250
  %779 = getelementptr inbounds i8, ptr addrspace(4) %778, i64 %.idx1065.2.7, !dbg !250
  %add.ptr552.2.7 = getelementptr inbounds i8, ptr addrspace(4) %779, i64 256, !dbg !250
  %condval_2.sroa.0.0.copyload.2.7 = load i32, ptr addrspace(4) %add.ptr552.2.7, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.2.7 = getelementptr inbounds i8, ptr addrspace(4) %779, i64 260, !dbg !251
  %condval_2.sroa.5.0.copyload.2.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.2.7, align 4, !dbg !251, !tbaa !30
  br label %if.end566.2.7, !dbg !252

if.end566.2.7:                                    ; preds = %if.then532.2.7, %if.end566.1.7
  %condval_2.sroa.5.0.2.7 = phi i32 [ %condval_2.sroa.5.0.copyload.2.7, %if.then532.2.7 ], [ 0, %if.end566.1.7 ], !dbg !83
  %condval_2.sroa.0.0.2.7 = phi i32 [ %condval_2.sroa.0.0.copyload.2.7, %if.then532.2.7 ], [ 0, %if.end566.1.7 ], !dbg !83
  br i1 %cmp531.7, label %if.then532.3.7, label %if.end566.3.7, !dbg !249

if.then532.3.7:                                   ; preds = %if.end566.2.7
  %780 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1065.3.7 = shl nuw nsw i64 %conv541.7, 7, !dbg !250
  %781 = getelementptr inbounds i8, ptr addrspace(4) %780, i64 %.idx1065.3.7, !dbg !250
  %add.ptr552.3.7 = getelementptr inbounds i8, ptr addrspace(4) %781, i64 384, !dbg !250
  %condval_2.sroa.0.0.copyload.3.7 = load i32, ptr addrspace(4) %add.ptr552.3.7, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.3.7 = getelementptr inbounds i8, ptr addrspace(4) %781, i64 388, !dbg !251
  %condval_2.sroa.5.0.copyload.3.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.3.7, align 4, !dbg !251, !tbaa !30
  br label %if.end566.3.7, !dbg !252

if.end566.3.7:                                    ; preds = %if.then532.3.7, %if.end566.2.7
  %condval_2.sroa.5.0.3.7 = phi i32 [ %condval_2.sroa.5.0.copyload.3.7, %if.then532.3.7 ], [ 0, %if.end566.2.7 ], !dbg !83
  %condval_2.sroa.0.0.3.7 = phi i32 [ %condval_2.sroa.0.0.copyload.3.7, %if.then532.3.7 ], [ 0, %if.end566.2.7 ], !dbg !83
  %782 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul596, !dbg !253
  %add.ptr607.idx.7 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.7 = getelementptr inbounds i8, ptr addrspace(3) %782, i32 %add.ptr607.idx.7, !dbg !253
  %783 = and i32 %condval_2.sroa.0.0.3.7, 65535, !dbg !254
  %v_column_local.sroa.130.0.insert.ext1784 = zext nneg i32 %783 to i64, !dbg !254
  %v_column_local.sroa.130.0.insert.shift1785 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1784, 48, !dbg !254
  %784 = and i32 %condval_2.sroa.0.0.2.7, 65535, !dbg !254
  %v_column_local.sroa.98.0.insert.ext1629 = zext nneg i32 %784 to i64, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1630 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1629, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1632 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1785, %v_column_local.sroa.98.0.insert.shift1630, !dbg !254
  %785 = shl i32 %condval_2.sroa.0.0.1.7, 16, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1475 = zext i32 %785 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1477 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1632, %v_column_local.sroa.66.0.insert.shift1475, !dbg !254
  %786 = and i32 %condval_2.sroa.0.0.7, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1323 = zext nneg i32 %786 to i64, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1325 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1477, %v_column_local.sroa.0.0.insert.ext1323, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1325, ptr addrspace(3) %add.ptr607.7, align 8, !dbg !254
  %v_tile_local.sroa.0.2.extract.shift1896 = lshr i32 %condval_2.sroa.0.0.7, 16, !dbg !255
  %v_tile_local.sroa.0.2.extract.trunc1897 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1896 to i64, !dbg !255
  %v_tile_local.sroa.50.10.extract.shift1966 = and i32 %condval_2.sroa.0.0.1.7, -65536, !dbg !254
  %v_tile_local.sroa.98.18.extract.shift2036 = lshr i32 %condval_2.sroa.0.0.2.7, 16, !dbg !255
  %v_tile_local.sroa.98.18.extract.trunc2037 = zext nneg i32 %v_tile_local.sroa.98.18.extract.shift2036 to i64, !dbg !255
  %v_tile_local.sroa.146.26.extract.shift2106 = lshr i32 %condval_2.sroa.0.0.3.7, 16, !dbg !255
  %v_tile_local.sroa.146.26.extract.trunc2107 = zext nneg i32 %v_tile_local.sroa.146.26.extract.shift2106 to i64, !dbg !255
  %add597.1.7 = or disjoint i32 %mul596, 256, !dbg !256
  %787 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.1.7, !dbg !253
  %xor603.1.7 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.1.7 = xor i32 %xor603.1.7, 8, !dbg !253
  %add.ptr607.1.7 = getelementptr inbounds i8, ptr addrspace(3) %787, i32 %add.ptr607.idx.1.7, !dbg !253
  %v_column_local.sroa.130.0.insert.shift1790 = shl nuw i64 %v_tile_local.sroa.146.26.extract.trunc2107, 48, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1635 = shl nuw nsw i64 %v_tile_local.sroa.98.18.extract.trunc2037, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1637 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1790, %v_column_local.sroa.98.0.insert.shift1635, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1480 = zext i32 %v_tile_local.sroa.50.10.extract.shift1966 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1482 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1637, %v_column_local.sroa.66.0.insert.shift1480, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1329 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1482, %v_tile_local.sroa.0.2.extract.trunc1897, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1329, ptr addrspace(3) %add.ptr607.1.7, align 8, !dbg !254
  %add597.2.7 = or disjoint i32 %mul596, 512, !dbg !256
  %788 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.2.7, !dbg !253
  %xor603.2.7 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.2.7 = xor i32 %xor603.2.7, 16, !dbg !253
  %add.ptr607.2.7 = getelementptr inbounds i8, ptr addrspace(3) %788, i32 %add.ptr607.idx.2.7, !dbg !253
  %789 = and i32 %condval_2.sroa.5.0.3.7, 65535, !dbg !254
  %v_column_local.sroa.130.0.insert.ext1794 = zext nneg i32 %789 to i64, !dbg !254
  %v_column_local.sroa.130.0.insert.shift1795 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1794, 48, !dbg !254
  %790 = and i32 %condval_2.sroa.5.0.2.7, 65535, !dbg !254
  %v_column_local.sroa.98.0.insert.ext1639 = zext nneg i32 %790 to i64, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1640 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1639, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1642 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1795, %v_column_local.sroa.98.0.insert.shift1640, !dbg !254
  %791 = shl i32 %condval_2.sroa.5.0.1.7, 16, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1485 = zext i32 %791 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1487 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1642, %v_column_local.sroa.66.0.insert.shift1485, !dbg !254
  %792 = and i32 %condval_2.sroa.5.0.7, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1331 = zext nneg i32 %792 to i64, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1333 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1487, %v_column_local.sroa.0.0.insert.ext1331, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1333, ptr addrspace(3) %add.ptr607.2.7, align 8, !dbg !254
  %v_tile_local.sroa.26.6.extract.shift1931 = lshr i32 %condval_2.sroa.5.0.7, 16, !dbg !255
  %v_tile_local.sroa.26.6.extract.trunc1932 = zext nneg i32 %v_tile_local.sroa.26.6.extract.shift1931 to i64, !dbg !255
  %v_tile_local.sroa.74.14.extract.shift2001 = and i32 %condval_2.sroa.5.0.1.7, -65536, !dbg !254
  %v_tile_local.sroa.122.22.extract.shift2071 = lshr i32 %condval_2.sroa.5.0.2.7, 16, !dbg !255
  %v_tile_local.sroa.122.22.extract.trunc2072 = zext nneg i32 %v_tile_local.sroa.122.22.extract.shift2071 to i64, !dbg !255
  %v_tile_local.sroa.170.30.extract.shift2141 = lshr i32 %condval_2.sroa.5.0.3.7, 16, !dbg !255
  %v_tile_local.sroa.170.30.extract.trunc2142 = zext nneg i32 %v_tile_local.sroa.170.30.extract.shift2141 to i64, !dbg !255
  %add597.3.7 = or disjoint i32 %mul596, 768, !dbg !256
  %793 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add597.3.7, !dbg !253
  %xor603.3.7 = shl nuw nsw i32 %xor, 3, !dbg !253
  %add.ptr607.idx.3.7 = xor i32 %xor603.3.7, 24, !dbg !253
  %add.ptr607.3.7 = getelementptr inbounds i8, ptr addrspace(3) %793, i32 %add.ptr607.idx.3.7, !dbg !253
  %v_column_local.sroa.130.0.insert.shift1800 = shl nuw i64 %v_tile_local.sroa.170.30.extract.trunc2142, 48, !dbg !254
  %v_column_local.sroa.98.0.insert.shift1645 = shl nuw nsw i64 %v_tile_local.sroa.122.22.extract.trunc2072, 32, !dbg !254
  %v_column_local.sroa.98.0.insert.insert1647 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1800, %v_column_local.sroa.98.0.insert.shift1645, !dbg !254
  %v_column_local.sroa.66.0.insert.shift1490 = zext i32 %v_tile_local.sroa.74.14.extract.shift2001 to i64, !dbg !254
  %v_column_local.sroa.66.0.insert.insert1492 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1647, %v_column_local.sroa.66.0.insert.shift1490, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1337 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1492, %v_tile_local.sroa.26.6.extract.trunc1932, !dbg !254
  store i64 %v_column_local.sroa.0.0.insert.insert1337, ptr addrspace(3) %add.ptr607.3.7, align 8, !dbg !254
  fence syncscope("warp") release, !dbg !257
  tail call void @llvm.mxc.barrier.warp(), !dbg !260
  fence syncscope("warp") acquire, !dbg !261
  %add624.7 = or disjoint i32 %mul617, %mul623, !dbg !262
  %794 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.7, !dbg !263
  %add.ptr634.idx.7 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.7 = getelementptr inbounds i8, ptr addrspace(3) %794, i32 %add.ptr634.idx.7, !dbg !263
  %795 = load <4 x half>, ptr addrspace(3) %add.ptr634.7, align 8, !dbg !264
  %add619.1.7 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.1.7 = or disjoint i32 %add619.1.7, 64, !dbg !262
  %796 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.1.7, !dbg !263
  %xor630.1.7 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.1.7 = xor i32 %xor630.1.7, 8, !dbg !263
  %add.ptr634.1.7 = getelementptr inbounds i8, ptr addrspace(3) %796, i32 %add.ptr634.idx.1.7, !dbg !263
  %797 = load <4 x half>, ptr addrspace(3) %add.ptr634.1.7, align 8, !dbg !264
  %add619.2.7 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.2.7 = or disjoint i32 %add619.2.7, 128, !dbg !262
  %798 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.2.7, !dbg !263
  %xor630.2.7 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.2.7 = xor i32 %xor630.2.7, 16, !dbg !263
  %add.ptr634.2.7 = getelementptr inbounds i8, ptr addrspace(3) %798, i32 %add.ptr634.idx.2.7, !dbg !263
  %799 = load <4 x half>, ptr addrspace(3) %add.ptr634.2.7, align 8, !dbg !264
  %add619.3.7 = or disjoint i32 %mul617, %mul623, !dbg !262
  %add624.3.7 = or disjoint i32 %add619.3.7, 192, !dbg !262
  %800 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add624.3.7, !dbg !263
  %xor630.3.7 = shl nuw nsw i32 %365, 3, !dbg !263
  %add.ptr634.idx.3.7 = xor i32 %xor630.3.7, 24, !dbg !263
  %add.ptr634.3.7 = getelementptr inbounds i8, ptr addrspace(3) %800, i32 %add.ptr634.idx.3.7, !dbg !263
  %801 = load <4 x half>, ptr addrspace(3) %add.ptr634.3.7, align 8, !dbg !264
  %802 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %795, <4 x half> %773, <4 x float> %output_acc.sroa.0.6), !dbg !265
  %803 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %797, <4 x half> %773, <4 x float> %output_acc.sroa.34.6), !dbg !265
  %804 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %799, <4 x half> %773, <4 x float> %output_acc.sroa.66.6), !dbg !265
  %805 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %801, <4 x half> %773, <4 x float> %output_acc.sroa.98.6), !dbg !265
  br label %if.end661.7, !dbg !266

if.end661.7:                                      ; preds = %if.end566.3.7, %if.end661.6
  %bc2727 = phi <4 x half> [ %358, %if.end661.6 ], [ %773, %if.end566.3.7 ], !dbg !83
  %output_acc.sroa.98.7 = phi <4 x float> [ %output_acc.sroa.98.6, %if.end661.6 ], [ %805, %if.end566.3.7 ], !dbg !83
  %output_acc.sroa.66.7 = phi <4 x float> [ %output_acc.sroa.66.6, %if.end661.6 ], [ %804, %if.end566.3.7 ], !dbg !83
  %output_acc.sroa.34.7 = phi <4 x float> [ %output_acc.sroa.34.6, %if.end661.6 ], [ %803, %if.end566.3.7 ], !dbg !83
  %output_acc.sroa.0.7 = phi <4 x float> [ %output_acc.sroa.0.6, %if.end661.6 ], [ %802, %if.end566.3.7 ], !dbg !83
  fence syncscope("warp") release, !dbg !268
  tail call void @llvm.mxc.barrier.warp(), !dbg !271
  fence syncscope("warp") acquire, !dbg !272
  %806 = extractelement <4 x half> %bc2699, i64 0, !dbg !273
  %conv.i.i = fpext half %806 to float, !dbg !274
  %add674 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !279
  %807 = extractelement <4 x half> %bc2699, i64 1, !dbg !273
  %conv.i.i.1 = fpext half %807 to float, !dbg !274
  %add674.1 = fadd contract float %add674, %conv.i.i.1, !dbg !279
  %808 = extractelement <4 x half> %bc2699, i64 2, !dbg !273
  %conv.i.i.2 = fpext half %808 to float, !dbg !274
  %add674.2 = fadd contract float %add674.1, %conv.i.i.2, !dbg !279
  %809 = extractelement <4 x half> %bc2699, i64 3, !dbg !273
  %conv.i.i.3 = fpext half %809 to float, !dbg !274
  %add674.3 = fadd contract float %add674.2, %conv.i.i.3, !dbg !279
  %810 = extractelement <4 x half> %bc2703, i64 0, !dbg !273
  %conv.i.i.4 = fpext half %810 to float, !dbg !274
  %add674.4 = fadd contract float %add674.3, %conv.i.i.4, !dbg !279
  %811 = extractelement <4 x half> %bc2703, i64 1, !dbg !273
  %conv.i.i.5 = fpext half %811 to float, !dbg !274
  %add674.5 = fadd contract float %add674.4, %conv.i.i.5, !dbg !279
  %812 = extractelement <4 x half> %bc2703, i64 2, !dbg !273
  %conv.i.i.6 = fpext half %812 to float, !dbg !274
  %add674.6 = fadd contract float %add674.5, %conv.i.i.6, !dbg !279
  %813 = extractelement <4 x half> %bc2703, i64 3, !dbg !273
  %conv.i.i.7 = fpext half %813 to float, !dbg !274
  %add674.7 = fadd contract float %add674.6, %conv.i.i.7, !dbg !279
  %814 = extractelement <4 x half> %bc2707, i64 0, !dbg !273
  %conv.i.i.8 = fpext half %814 to float, !dbg !274
  %add674.8 = fadd contract float %add674.7, %conv.i.i.8, !dbg !279
  %815 = extractelement <4 x half> %bc2707, i64 1, !dbg !273
  %conv.i.i.9 = fpext half %815 to float, !dbg !274
  %add674.9 = fadd contract float %add674.8, %conv.i.i.9, !dbg !279
  %816 = extractelement <4 x half> %bc2707, i64 2, !dbg !273
  %conv.i.i.10 = fpext half %816 to float, !dbg !274
  %add674.10 = fadd contract float %add674.9, %conv.i.i.10, !dbg !279
  %817 = extractelement <4 x half> %bc2707, i64 3, !dbg !273
  %conv.i.i.11 = fpext half %817 to float, !dbg !274
  %add674.11 = fadd contract float %add674.10, %conv.i.i.11, !dbg !279
  %818 = extractelement <4 x half> %bc2711, i64 0, !dbg !273
  %conv.i.i.12 = fpext half %818 to float, !dbg !274
  %add674.12 = fadd contract float %add674.11, %conv.i.i.12, !dbg !279
  %819 = extractelement <4 x half> %bc2711, i64 1, !dbg !273
  %conv.i.i.13 = fpext half %819 to float, !dbg !274
  %add674.13 = fadd contract float %add674.12, %conv.i.i.13, !dbg !279
  %820 = extractelement <4 x half> %bc2711, i64 2, !dbg !273
  %conv.i.i.14 = fpext half %820 to float, !dbg !274
  %add674.14 = fadd contract float %add674.13, %conv.i.i.14, !dbg !279
  %821 = extractelement <4 x half> %bc2711, i64 3, !dbg !273
  %conv.i.i.15 = fpext half %821 to float, !dbg !274
  %add674.15 = fadd contract float %add674.14, %conv.i.i.15, !dbg !279
  %822 = extractelement <4 x half> %bc2715, i64 0, !dbg !273
  %conv.i.i.16 = fpext half %822 to float, !dbg !274
  %add674.16 = fadd contract float %add674.15, %conv.i.i.16, !dbg !279
  %823 = extractelement <4 x half> %bc2715, i64 1, !dbg !273
  %conv.i.i.17 = fpext half %823 to float, !dbg !274
  %add674.17 = fadd contract float %add674.16, %conv.i.i.17, !dbg !279
  %824 = extractelement <4 x half> %bc2715, i64 2, !dbg !273
  %conv.i.i.18 = fpext half %824 to float, !dbg !274
  %add674.18 = fadd contract float %add674.17, %conv.i.i.18, !dbg !279
  %825 = extractelement <4 x half> %bc2715, i64 3, !dbg !273
  %conv.i.i.19 = fpext half %825 to float, !dbg !274
  %add674.19 = fadd contract float %add674.18, %conv.i.i.19, !dbg !279
  %826 = extractelement <4 x half> %bc2719, i64 0, !dbg !273
  %conv.i.i.20 = fpext half %826 to float, !dbg !274
  %add674.20 = fadd contract float %add674.19, %conv.i.i.20, !dbg !279
  %827 = extractelement <4 x half> %bc2719, i64 1, !dbg !273
  %conv.i.i.21 = fpext half %827 to float, !dbg !274
  %add674.21 = fadd contract float %add674.20, %conv.i.i.21, !dbg !279
  %828 = extractelement <4 x half> %bc2719, i64 2, !dbg !273
  %conv.i.i.22 = fpext half %828 to float, !dbg !274
  %add674.22 = fadd contract float %add674.21, %conv.i.i.22, !dbg !279
  %829 = extractelement <4 x half> %bc2719, i64 3, !dbg !273
  %conv.i.i.23 = fpext half %829 to float, !dbg !274
  %add674.23 = fadd contract float %add674.22, %conv.i.i.23, !dbg !279
  %830 = extractelement <4 x half> %bc2723, i64 0, !dbg !273
  %conv.i.i.24 = fpext half %830 to float, !dbg !274
  %add674.24 = fadd contract float %add674.23, %conv.i.i.24, !dbg !279
  %831 = extractelement <4 x half> %bc2723, i64 1, !dbg !273
  %conv.i.i.25 = fpext half %831 to float, !dbg !274
  %add674.25 = fadd contract float %add674.24, %conv.i.i.25, !dbg !279
  %832 = extractelement <4 x half> %bc2723, i64 2, !dbg !273
  %conv.i.i.26 = fpext half %832 to float, !dbg !274
  %add674.26 = fadd contract float %add674.25, %conv.i.i.26, !dbg !279
  %833 = extractelement <4 x half> %bc2723, i64 3, !dbg !273
  %conv.i.i.27 = fpext half %833 to float, !dbg !274
  %add674.27 = fadd contract float %add674.26, %conv.i.i.27, !dbg !279
  %834 = extractelement <4 x half> %bc2727, i64 0, !dbg !273
  %conv.i.i.28 = fpext half %834 to float, !dbg !274
  %add674.28 = fadd contract float %add674.27, %conv.i.i.28, !dbg !279
  %835 = extractelement <4 x half> %bc2727, i64 1, !dbg !273
  %conv.i.i.29 = fpext half %835 to float, !dbg !274
  %add674.29 = fadd contract float %add674.28, %conv.i.i.29, !dbg !279
  %836 = extractelement <4 x half> %bc2727, i64 2, !dbg !273
  %conv.i.i.30 = fpext half %836 to float, !dbg !274
  %add674.30 = fadd contract float %add674.29, %conv.i.i.30, !dbg !279
  %837 = extractelement <4 x half> %bc2727, i64 3, !dbg !273
  %conv.i.i.31 = fpext half %837 to float, !dbg !274
  %add674.31 = fadd contract float %add674.30, %conv.i.i.31, !dbg !279
  %838 = bitcast float %add674.31 to i32, !dbg !280
  %839 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !282
  %840 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %839) #11, !dbg !285
  %xor.i.i1000 = xor i32 %840, 32, !dbg !286
  %841 = and i32 %840, -64, !dbg !287
  %and.i.i1001 = add nsw i32 %841, 64, !dbg !287
  %cmp.not.i.i1002 = icmp slt i32 %xor.i.i1000, %and.i.i1001, !dbg !288
  %cond.i.i1003 = select i1 %cmp.not.i.i1002, i32 %xor.i.i1000, i32 %840, !dbg !289
  %shl.i.i1004 = shl i32 %cond.i.i1003, 2, !dbg !290
  %842 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1004, i32 %838), !dbg !291
  %843 = bitcast i32 %842 to float, !dbg !292
  %add682 = fadd contract float %add674.31, %843, !dbg !293
  %844 = bitcast float %add682 to i32, !dbg !294
  %845 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !296
  %846 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %845) #11, !dbg !299
  %xor.i.i1005 = xor i32 %846, 16, !dbg !300
  %847 = and i32 %846, -64, !dbg !301
  %and.i.i1006 = add nsw i32 %847, 64, !dbg !301
  %cmp.not.i.i1007 = icmp slt i32 %xor.i.i1005, %and.i.i1006, !dbg !302
  %cond.i.i1008 = select i1 %cmp.not.i.i1007, i32 %xor.i.i1005, i32 %846, !dbg !303
  %shl.i.i1009 = shl i32 %cond.i.i1008, 2, !dbg !304
  %848 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1009, i32 %844), !dbg !305
  %849 = bitcast i32 %848 to float, !dbg !306
  %add687 = fadd contract float %add682, %849, !dbg !307
  %output_acc.sroa.0.0.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 0, !dbg !308
  %div = fdiv contract float %output_acc.sroa.0.0.vec.extract, %add687, !dbg !309
  %output_acc.sroa.0.4.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 1, !dbg !308
  %div.1 = fdiv contract float %output_acc.sroa.0.4.vec.extract, %add687, !dbg !309
  %output_acc.sroa.0.8.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 2, !dbg !308
  %div.2 = fdiv contract float %output_acc.sroa.0.8.vec.extract, %add687, !dbg !309
  %output_acc.sroa.0.12.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 3, !dbg !308
  %div.3 = fdiv contract float %output_acc.sroa.0.12.vec.extract, %add687, !dbg !309
  %output_acc.sroa.34.16.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 0, !dbg !308
  %div.4 = fdiv contract float %output_acc.sroa.34.16.vec.extract, %add687, !dbg !309
  %output_acc.sroa.34.20.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 1, !dbg !308
  %div.5 = fdiv contract float %output_acc.sroa.34.20.vec.extract, %add687, !dbg !309
  %output_acc.sroa.34.24.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 2, !dbg !308
  %div.6 = fdiv contract float %output_acc.sroa.34.24.vec.extract, %add687, !dbg !309
  %output_acc.sroa.34.28.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 3, !dbg !308
  %div.7 = fdiv contract float %output_acc.sroa.34.28.vec.extract, %add687, !dbg !309
  %output_acc.sroa.66.32.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 0, !dbg !308
  %div.8 = fdiv contract float %output_acc.sroa.66.32.vec.extract, %add687, !dbg !309
  %output_acc.sroa.66.36.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 1, !dbg !308
  %div.9 = fdiv contract float %output_acc.sroa.66.36.vec.extract, %add687, !dbg !309
  %output_acc.sroa.66.40.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 2, !dbg !308
  %div.10 = fdiv contract float %output_acc.sroa.66.40.vec.extract, %add687, !dbg !309
  %output_acc.sroa.66.44.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 3, !dbg !308
  %div.11 = fdiv contract float %output_acc.sroa.66.44.vec.extract, %add687, !dbg !309
  %output_acc.sroa.98.48.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 0, !dbg !308
  %div.12 = fdiv contract float %output_acc.sroa.98.48.vec.extract, %add687, !dbg !309
  %output_acc.sroa.98.52.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 1, !dbg !308
  %div.13 = fdiv contract float %output_acc.sroa.98.52.vec.extract, %add687, !dbg !309
  %output_acc.sroa.98.56.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 2, !dbg !308
  %div.14 = fdiv contract float %output_acc.sroa.98.56.vec.extract, %add687, !dbg !309
  %output_acc.sroa.98.60.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 3, !dbg !308
  %div.15 = fdiv contract float %output_acc.sroa.98.60.vec.extract, %add687, !dbg !309
  %and733 = and i32 %2, 7
  %850 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !310
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !310, !noalias !314
  %851 = fptrunc float %div to half, !dbg !310
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %850), !dbg !310, !noalias !314
  %852 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !319
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !319, !noalias !314
  %853 = fptrunc float %div.1 to half, !dbg !319
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %852), !dbg !319, !noalias !314
  %854 = bitcast half %851 to i16, !dbg !321
  %855 = bitcast half %853 to i16, !dbg !324
  %856 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !325
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !325, !noalias !329
  %857 = fptrunc float %div.2 to half, !dbg !325
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %856), !dbg !325, !noalias !329
  %858 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !334
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !334, !noalias !329
  %859 = fptrunc float %div.3 to half, !dbg !334
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %858), !dbg !334, !noalias !329
  %860 = bitcast half %857 to i16, !dbg !336
  %861 = bitcast half %859 to i16, !dbg !338
  %__9.sroa.6.0.insert.ext = zext i16 %861 to i64, !dbg !339
  %__9.sroa.6.0.insert.shift = shl nuw i64 %__9.sroa.6.0.insert.ext, 48, !dbg !339
  %__9.sroa.5.0.insert.ext = zext i16 %860 to i64, !dbg !339
  %__9.sroa.5.0.insert.shift = shl nuw nsw i64 %__9.sroa.5.0.insert.ext, 32, !dbg !339
  %__9.sroa.5.0.insert.insert = or disjoint i64 %__9.sroa.6.0.insert.shift, %__9.sroa.5.0.insert.shift, !dbg !339
  %__9.sroa.4.0.insert.ext = zext i16 %855 to i64, !dbg !339
  %__9.sroa.4.0.insert.shift = shl nuw nsw i64 %__9.sroa.4.0.insert.ext, 16, !dbg !339
  %__9.sroa.4.0.insert.insert = or disjoint i64 %__9.sroa.5.0.insert.insert, %__9.sroa.4.0.insert.shift, !dbg !339
  %__9.sroa.0.0.insert.ext = zext i16 %854 to i64, !dbg !339
  %__9.sroa.0.0.insert.insert = or disjoint i64 %__9.sroa.4.0.insert.insert, %__9.sroa.0.0.insert.ext, !dbg !339
  %xor734 = xor i32 %shr71, %and733, !dbg !340
  %mul735 = shl nuw nsw i32 %xor734, 3, !dbg !341
  %add736 = add nuw nsw i32 %mul735, %mul53, !dbg !342
  %add741 = or disjoint i32 %add736, %mul81, !dbg !343
  %add.ptr743 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add741, !dbg !344
  store i64 %__9.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr743, align 8, !dbg !345
  %862 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !310
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !310, !noalias !314
  %863 = fptrunc float %div.4 to half, !dbg !310
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %862), !dbg !310, !noalias !314
  %864 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !319
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !319, !noalias !314
  %865 = fptrunc float %div.5 to half, !dbg !319
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %864), !dbg !319, !noalias !314
  %866 = bitcast half %863 to i16, !dbg !321
  %867 = bitcast half %865 to i16, !dbg !324
  %868 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !325
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !325, !noalias !329
  %869 = fptrunc float %div.6 to half, !dbg !325
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %868), !dbg !325, !noalias !329
  %870 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !334
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !334, !noalias !329
  %871 = fptrunc float %div.7 to half, !dbg !334
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %870), !dbg !334, !noalias !329
  %872 = bitcast half %869 to i16, !dbg !336
  %873 = bitcast half %871 to i16, !dbg !338
  %__9.sroa.6.0.insert.ext.1 = zext i16 %873 to i64, !dbg !339
  %__9.sroa.6.0.insert.shift.1 = shl nuw i64 %__9.sroa.6.0.insert.ext.1, 48, !dbg !339
  %__9.sroa.5.0.insert.ext.1 = zext i16 %872 to i64, !dbg !339
  %__9.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__9.sroa.5.0.insert.ext.1, 32, !dbg !339
  %__9.sroa.5.0.insert.insert.1 = or disjoint i64 %__9.sroa.6.0.insert.shift.1, %__9.sroa.5.0.insert.shift.1, !dbg !339
  %__9.sroa.4.0.insert.ext.1 = zext i16 %867 to i64, !dbg !339
  %__9.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__9.sroa.4.0.insert.ext.1, 16, !dbg !339
  %__9.sroa.4.0.insert.insert.1 = or disjoint i64 %__9.sroa.5.0.insert.insert.1, %__9.sroa.4.0.insert.shift.1, !dbg !339
  %__9.sroa.0.0.insert.ext.1 = zext i16 %866 to i64, !dbg !339
  %__9.sroa.0.0.insert.insert.1 = or disjoint i64 %__9.sroa.4.0.insert.insert.1, %__9.sroa.0.0.insert.ext.1, !dbg !339
  %add731.1 = add nuw nsw i32 %shr71, 2, !dbg !346
  %xor734.1 = xor i32 %add731.1, %and733, !dbg !340
  %mul735.1 = shl nuw nsw i32 %xor734.1, 3, !dbg !341
  %add736.1 = add nuw nsw i32 %mul735.1, %mul53, !dbg !342
  %add741.1 = or disjoint i32 %add736.1, %mul81, !dbg !343
  %add.ptr743.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add741.1, !dbg !344
  store i64 %__9.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr743.1, align 8, !dbg !345
  %874 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !310
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !310, !noalias !314
  %875 = fptrunc float %div.8 to half, !dbg !310
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %874), !dbg !310, !noalias !314
  %876 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !319
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !319, !noalias !314
  %877 = fptrunc float %div.9 to half, !dbg !319
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %876), !dbg !319, !noalias !314
  %878 = bitcast half %875 to i16, !dbg !321
  %879 = bitcast half %877 to i16, !dbg !324
  %880 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !325
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !325, !noalias !329
  %881 = fptrunc float %div.10 to half, !dbg !325
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %880), !dbg !325, !noalias !329
  %882 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !334
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !334, !noalias !329
  %883 = fptrunc float %div.11 to half, !dbg !334
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %882), !dbg !334, !noalias !329
  %884 = bitcast half %881 to i16, !dbg !336
  %885 = bitcast half %883 to i16, !dbg !338
  %__9.sroa.6.0.insert.ext.2 = zext i16 %885 to i64, !dbg !339
  %__9.sroa.6.0.insert.shift.2 = shl nuw i64 %__9.sroa.6.0.insert.ext.2, 48, !dbg !339
  %__9.sroa.5.0.insert.ext.2 = zext i16 %884 to i64, !dbg !339
  %__9.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__9.sroa.5.0.insert.ext.2, 32, !dbg !339
  %__9.sroa.5.0.insert.insert.2 = or disjoint i64 %__9.sroa.6.0.insert.shift.2, %__9.sroa.5.0.insert.shift.2, !dbg !339
  %__9.sroa.4.0.insert.ext.2 = zext i16 %879 to i64, !dbg !339
  %__9.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__9.sroa.4.0.insert.ext.2, 16, !dbg !339
  %__9.sroa.4.0.insert.insert.2 = or disjoint i64 %__9.sroa.5.0.insert.insert.2, %__9.sroa.4.0.insert.shift.2, !dbg !339
  %__9.sroa.0.0.insert.ext.2 = zext i16 %878 to i64, !dbg !339
  %__9.sroa.0.0.insert.insert.2 = or disjoint i64 %__9.sroa.4.0.insert.insert.2, %__9.sroa.0.0.insert.ext.2, !dbg !339
  %add731.2 = add nuw nsw i32 %shr71, 4, !dbg !346
  %xor734.2 = xor i32 %add731.2, %and733, !dbg !340
  %mul735.2 = shl nuw nsw i32 %xor734.2, 3, !dbg !341
  %add736.2 = add nuw nsw i32 %mul735.2, %mul53, !dbg !342
  %add741.2 = or disjoint i32 %add736.2, %mul81, !dbg !343
  %add.ptr743.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add741.2, !dbg !344
  store i64 %__9.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr743.2, align 8, !dbg !345
  %886 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !310
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !310, !noalias !314
  %887 = fptrunc float %div.12 to half, !dbg !310
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %886), !dbg !310, !noalias !314
  %888 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !319
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !319, !noalias !314
  %889 = fptrunc float %div.13 to half, !dbg !319
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %888), !dbg !319, !noalias !314
  %890 = bitcast half %887 to i16, !dbg !321
  %891 = bitcast half %889 to i16, !dbg !324
  %892 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !325
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !325, !noalias !329
  %893 = fptrunc float %div.14 to half, !dbg !325
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %892), !dbg !325, !noalias !329
  %894 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !334
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !334, !noalias !329
  %895 = fptrunc float %div.15 to half, !dbg !334
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %894), !dbg !334, !noalias !329
  %896 = bitcast half %893 to i16, !dbg !336
  %897 = bitcast half %895 to i16, !dbg !338
  %__9.sroa.6.0.insert.ext.3 = zext i16 %897 to i64, !dbg !339
  %__9.sroa.6.0.insert.shift.3 = shl nuw i64 %__9.sroa.6.0.insert.ext.3, 48, !dbg !339
  %__9.sroa.5.0.insert.ext.3 = zext i16 %896 to i64, !dbg !339
  %__9.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__9.sroa.5.0.insert.ext.3, 32, !dbg !339
  %__9.sroa.5.0.insert.insert.3 = or disjoint i64 %__9.sroa.6.0.insert.shift.3, %__9.sroa.5.0.insert.shift.3, !dbg !339
  %__9.sroa.4.0.insert.ext.3 = zext i16 %891 to i64, !dbg !339
  %__9.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__9.sroa.4.0.insert.ext.3, 16, !dbg !339
  %__9.sroa.4.0.insert.insert.3 = or disjoint i64 %__9.sroa.5.0.insert.insert.3, %__9.sroa.4.0.insert.shift.3, !dbg !339
  %__9.sroa.0.0.insert.ext.3 = zext i16 %890 to i64, !dbg !339
  %__9.sroa.0.0.insert.insert.3 = or disjoint i64 %__9.sroa.4.0.insert.insert.3, %__9.sroa.0.0.insert.ext.3, !dbg !339
  %add731.3 = add nuw nsw i32 %shr71, 6, !dbg !346
  %xor734.3 = xor i32 %add731.3, %and733, !dbg !340
  %mul735.3 = shl nuw nsw i32 %xor734.3, 3, !dbg !341
  %add736.3 = add nuw nsw i32 %mul735.3, %mul53, !dbg !342
  %add741.3 = or disjoint i32 %add736.3, %mul81, !dbg !343
  %add.ptr743.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add741.3, !dbg !344
  store i64 %__9.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr743.3, align 8, !dbg !345
  fence syncscope("warp") release, !dbg !347
  tail call void @llvm.mxc.barrier.warp(), !dbg !350
  fence syncscope("warp") acquire, !dbg !351
  %xor760905 = and i32 %mul11, 56
  %call758.masked = and i32 %2, 1016
  %mul761 = xor i32 %xor760905, %call758.masked
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul15, !dbg !352
  %invariant.gep1062 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul761, !dbg !352
  %add.ptr776 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !353
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr776, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep1062, i64 16, i1 false), !dbg !354, !tbaa.struct !50, !call_argsrelate !355
  %gep1063.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1062, i32 1024, !dbg !356
  %add.ptr776.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %7, !dbg !353
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr776.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep1063.1, i64 16, i1 false), !dbg !354, !tbaa.struct !50, !call_argsrelate !355
  ret void, !dbg !357
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v042_codex_power_s8_lane_normalizer_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v042_codex_power_s8_lane_normalizer_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!68 = !DILocation(line: 44, column: 3, scope: !40)
!69 = !DILocation(line: 45, column: 24, scope: !40)
!70 = !DILocation(line: 45, column: 106, scope: !40)
!71 = !DILocation(line: 46, column: 12, scope: !40)
!72 = !DILocation(line: 46, column: 28, scope: !40)
!73 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !74)
!74 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !75)
!75 = distinct !DILocation(line: 47, column: 7, scope: !40)
!76 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !74)
!77 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !74)
!78 = !DILocation(line: 49, column: 7, scope: !40)
!79 = !DILocation(line: 52, column: 71, scope: !40)
!80 = !DILocation(line: 52, column: 13, scope: !40)
!81 = !DILocation(line: 53, column: 19, scope: !40)
!82 = !DILocation(line: 54, column: 9, scope: !40)
!83 = !DILocation(line: 0, scope: !40)
!84 = !DILocation(line: 57, column: 339, scope: !40)
!85 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !86)
!86 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !87)
!87 = distinct !DILocation(line: 59, column: 7, scope: !40)
!88 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !86)
!89 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !86)
!90 = !DILocation(line: 63, column: 32, scope: !40)
!91 = !DILocation(line: 65, column: 37, scope: !40)
!92 = !DILocation(line: 73, column: 74, scope: !40)
!93 = !DILocation(line: 73, column: 13, scope: !40)
!94 = !DILocation(line: 73, column: 63, scope: !40)
!95 = !DILocation(line: 351, column: 10, scope: !96, inlinedAt: !98)
!96 = distinct !DISubprogram(name: "max", scope: !97, file: !97, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!97 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!98 = distinct !DILocation(line: 83, column: 24, scope: !40)
!99 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !101)
!100 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !56, file: !56, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!101 = distinct !DILocation(line: 85, column: 40, scope: !40)
!102 = !DILocation(line: 171, column: 37, scope: !103, inlinedAt: !104)
!103 = distinct !DISubprogram(name: "__lane_id", scope: !56, file: !56, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!104 = distinct !DILocation(line: 990, column: 14, scope: !105, inlinedAt: !106)
!105 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !56, file: !56, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!106 = distinct !DILocation(line: 1019, column: 11, scope: !100, inlinedAt: !101)
!107 = !DILocation(line: 171, column: 10, scope: !103, inlinedAt: !104)
!108 = !DILocation(line: 991, column: 20, scope: !105, inlinedAt: !106)
!109 = !DILocation(line: 992, column: 36, scope: !105, inlinedAt: !106)
!110 = !DILocation(line: 992, column: 17, scope: !105, inlinedAt: !106)
!111 = !DILocation(line: 992, column: 11, scope: !105, inlinedAt: !106)
!112 = !DILocation(line: 993, column: 43, scope: !105, inlinedAt: !106)
!113 = !DILocation(line: 993, column: 10, scope: !105, inlinedAt: !106)
!114 = !DILocation(line: 1020, column: 14, scope: !100, inlinedAt: !101)
!115 = !DILocation(line: 351, column: 10, scope: !96, inlinedAt: !116)
!116 = distinct !DILocation(line: 85, column: 22, scope: !40)
!117 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !118)
!118 = distinct !DILocation(line: 86, column: 40, scope: !40)
!119 = !DILocation(line: 171, column: 37, scope: !103, inlinedAt: !120)
!120 = distinct !DILocation(line: 990, column: 14, scope: !105, inlinedAt: !121)
!121 = distinct !DILocation(line: 1019, column: 11, scope: !100, inlinedAt: !118)
!122 = !DILocation(line: 171, column: 10, scope: !103, inlinedAt: !120)
!123 = !DILocation(line: 991, column: 20, scope: !105, inlinedAt: !121)
!124 = !DILocation(line: 992, column: 36, scope: !105, inlinedAt: !121)
!125 = !DILocation(line: 992, column: 17, scope: !105, inlinedAt: !121)
!126 = !DILocation(line: 992, column: 11, scope: !105, inlinedAt: !121)
!127 = !DILocation(line: 993, column: 43, scope: !105, inlinedAt: !121)
!128 = !DILocation(line: 993, column: 10, scope: !105, inlinedAt: !121)
!129 = !DILocation(line: 1020, column: 14, scope: !100, inlinedAt: !118)
!130 = !DILocation(line: 351, column: 10, scope: !96, inlinedAt: !131)
!131 = distinct !DILocation(line: 86, column: 22, scope: !40)
!132 = !DILocation(line: 87, column: 37, scope: !40)
!133 = !DILocation(line: 87, column: 11, scope: !40)
!134 = !DILocation(line: 351, column: 10, scope: !96, inlinedAt: !135)
!135 = distinct !DILocation(line: 90, column: 23, scope: !40)
!136 = !DILocation(line: 100, column: 26, scope: !40)
!137 = !DILocation(line: 101, column: 26, scope: !40)
!138 = !DILocation(line: 102, column: 26, scope: !40)
!139 = !DILocation(line: 103, column: 26, scope: !40)
!140 = !DILocation(line: 105, column: 25, scope: !40)
!141 = !DILocation(line: 106, column: 25, scope: !40)
!142 = !DILocation(line: 107, column: 25, scope: !40)
!143 = !DILocation(line: 108, column: 25, scope: !40)
!144 = !DILocation(line: 110, column: 23, scope: !40)
!145 = !DILocation(line: 111, column: 23, scope: !40)
!146 = !DILocation(line: 112, column: 23, scope: !40)
!147 = !DILocation(line: 113, column: 23, scope: !40)
!148 = !DILocation(line: 285, column: 49, scope: !149, inlinedAt: !150)
!149 = distinct !DISubprogram(name: "exp2f", scope: !97, file: !97, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!150 = distinct !DILocation(line: 114, column: 15, scope: !40)
!151 = !DILocation(line: 285, column: 49, scope: !149, inlinedAt: !152)
!152 = distinct !DILocation(line: 115, column: 15, scope: !40)
!153 = !DILocation(line: 285, column: 49, scope: !149, inlinedAt: !154)
!154 = distinct !DILocation(line: 116, column: 15, scope: !40)
!155 = !DILocation(line: 285, column: 49, scope: !149, inlinedAt: !156)
!156 = distinct !DILocation(line: 117, column: 15, scope: !40)
!157 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !160)
!158 = distinct !DISubprogram(name: "__float2half_rn", scope: !159, file: !159, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!159 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!160 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !162)
!161 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !159, file: !159, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!162 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !164)
!163 = distinct !DISubprogram(name: "__float22half2_rn", scope: !159, file: !159, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!164 = distinct !DILocation(line: 118, column: 29, scope: !40)
!165 = !{!166, !168}
!166 = distinct !{!166, !167, !"_ZL17__floats2half2_rnff: %agg.result"}
!167 = distinct !{!167, !"_ZL17__floats2half2_rnff"}
!168 = distinct !{!168, !169, !"_ZL17__float22half2_rn6float2: %agg.result"}
!169 = distinct !{!169, !"_ZL17__float22half2_rn6float2"}
!170 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !171)
!171 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !162)
!172 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !173)
!173 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !174)
!174 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !175)
!175 = distinct !DILocation(line: 119, column: 29, scope: !40)
!176 = !{!177, !179}
!177 = distinct !{!177, !178, !"_ZL17__floats2half2_rnff: %agg.result"}
!178 = distinct !{!178, !"_ZL17__floats2half2_rnff"}
!179 = distinct !{!179, !180, !"_ZL17__float22half2_rn6float2: %agg.result"}
!180 = distinct !{!180, !"_ZL17__float22half2_rn6float2"}
!181 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !182)
!182 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !174)
!183 = !DILocation(line: 120, column: 53, scope: !40)
!184 = !DILocation(line: 121, column: 5, scope: !40)
!185 = !DILocation(line: 45, column: 93, scope: !40)
!186 = !DILocation(line: 130, column: 26, scope: !40)
!187 = !DILocation(line: 130, column: 110, scope: !40)
!188 = !DILocation(line: 131, column: 12, scope: !40)
!189 = !DILocation(line: 131, column: 30, scope: !40)
!190 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !191)
!191 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !192)
!192 = distinct !DILocation(line: 132, column: 7, scope: !40)
!193 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !191)
!194 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !191)
!195 = !DILocation(line: 134, column: 37, scope: !40)
!196 = !DILocation(line: 134, column: 11, scope: !40)
!197 = !DILocation(line: 135, column: 59, scope: !40)
!198 = !DILocation(line: 135, column: 76, scope: !40)
!199 = !DILocation(line: 285, column: 49, scope: !149, inlinedAt: !200)
!200 = distinct !DILocation(line: 135, column: 22, scope: !40)
!201 = !DILocation(line: 136, column: 7, scope: !40)
!202 = !DILocation(line: 606, column: 9, scope: !203, inlinedAt: !204)
!203 = distinct !DISubprogram(name: "__shfl_sync", scope: !56, file: !56, line: 599, type: !7, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!204 = distinct !DILocation(line: 137, column: 20, scope: !40)
!205 = !DILocation(line: 171, column: 37, scope: !103, inlinedAt: !206)
!206 = distinct !DILocation(line: 580, column: 14, scope: !207, inlinedAt: !208)
!207 = distinct !DISubprogram(name: "__shfl_sync", scope: !56, file: !56, line: 578, type: !7, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!208 = distinct !DILocation(line: 607, column: 11, scope: !203, inlinedAt: !204)
!209 = !DILocation(line: 171, column: 10, scope: !103, inlinedAt: !206)
!210 = !DILocation(line: 582, column: 31, scope: !207, inlinedAt: !208)
!211 = !DILocation(line: 582, column: 23, scope: !207, inlinedAt: !208)
!212 = !DILocation(line: 583, column: 43, scope: !207, inlinedAt: !208)
!213 = !DILocation(line: 583, column: 10, scope: !207, inlinedAt: !208)
!214 = !DILocation(line: 608, column: 14, scope: !203, inlinedAt: !204)
!215 = !DILocation(line: 1301, column: 28, scope: !216, inlinedAt: !217)
!216 = distinct !DISubprogram(name: "__half22float2", scope: !159, file: !159, line: 1299, type: !7, scopeLine: 1299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!217 = distinct !DILocation(line: 142, column: 32, scope: !40)
!218 = !DILocation(line: 1302, column: 28, scope: !216, inlinedAt: !217)
!219 = !DILocation(line: 1301, column: 28, scope: !216, inlinedAt: !220)
!220 = distinct !DILocation(line: 143, column: 32, scope: !40)
!221 = !DILocation(line: 1302, column: 28, scope: !216, inlinedAt: !220)
!222 = !DILocation(line: 145, column: 23, scope: !40)
!223 = !DILocation(line: 146, column: 23, scope: !40)
!224 = !DILocation(line: 147, column: 23, scope: !40)
!225 = !DILocation(line: 148, column: 23, scope: !40)
!226 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !227)
!227 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !228)
!228 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !229)
!229 = distinct !DILocation(line: 149, column: 29, scope: !40)
!230 = !{!231, !233}
!231 = distinct !{!231, !232, !"_ZL17__floats2half2_rnff: %agg.result"}
!232 = distinct !{!232, !"_ZL17__floats2half2_rnff"}
!233 = distinct !{!233, !234, !"_ZL17__float22half2_rn6float2: %agg.result"}
!234 = distinct !{!234, !"_ZL17__float22half2_rn6float2"}
!235 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !236)
!236 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !228)
!237 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !238)
!238 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !239)
!239 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !240)
!240 = distinct !DILocation(line: 150, column: 29, scope: !40)
!241 = !{!242, !244}
!242 = distinct !{!242, !243, !"_ZL17__floats2half2_rnff: %agg.result"}
!243 = distinct !{!243, !"_ZL17__floats2half2_rnff"}
!244 = distinct !{!244, !245, !"_ZL17__float22half2_rn6float2: %agg.result"}
!245 = distinct !{!245, !"_ZL17__float22half2_rn6float2"}
!246 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !247)
!247 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !239)
!248 = !DILocation(line: 151, column: 55, scope: !40)
!249 = !DILocation(line: 156, column: 13, scope: !40)
!250 = !DILocation(line: 157, column: 35, scope: !40)
!251 = !DILocation(line: 157, column: 21, scope: !40)
!252 = !DILocation(line: 158, column: 9, scope: !40)
!253 = !DILocation(line: 169, column: 44, scope: !40)
!254 = !DILocation(line: 169, column: 187, scope: !40)
!255 = !DILocation(line: 167, column: 38, scope: !40)
!256 = !DILocation(line: 169, column: 65, scope: !40)
!257 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !258)
!258 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !259)
!259 = distinct !DILocation(line: 171, column: 7, scope: !40)
!260 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !258)
!261 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !258)
!262 = !DILocation(line: 174, column: 139, scope: !40)
!263 = !DILocation(line: 174, column: 83, scope: !40)
!264 = !DILocation(line: 174, column: 46, scope: !40)
!265 = !DILocation(line: 179, column: 47, scope: !40)
!266 = !DILocation(line: 129, column: 44, scope: !40)
!267 = !DILocation(line: 581, column: 31, scope: !207, inlinedAt: !208)
!268 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !269)
!269 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !270)
!270 = distinct !DILocation(line: 186, column: 3, scope: !40)
!271 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !269)
!272 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !269)
!273 = !DILocation(line: 190, column: 44, scope: !40)
!274 = !DILocation(line: 1082, column: 16, scope: !275, inlinedAt: !276)
!275 = distinct !DISubprogram(name: "__half2float", scope: !159, file: !159, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!276 = distinct !DILocation(line: 136, column: 55, scope: !277, inlinedAt: !278)
!277 = distinct !DISubprogram(name: "operator float", scope: !159, file: !159, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!278 = distinct !DILocation(line: 190, column: 44, scope: !40)
!279 = !DILocation(line: 190, column: 34, scope: !40)
!280 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !281)
!281 = distinct !DILocation(line: 192, column: 34, scope: !40)
!282 = !DILocation(line: 171, column: 37, scope: !103, inlinedAt: !283)
!283 = distinct !DILocation(line: 990, column: 14, scope: !105, inlinedAt: !284)
!284 = distinct !DILocation(line: 1019, column: 11, scope: !100, inlinedAt: !281)
!285 = !DILocation(line: 171, column: 10, scope: !103, inlinedAt: !283)
!286 = !DILocation(line: 991, column: 20, scope: !105, inlinedAt: !284)
!287 = !DILocation(line: 992, column: 36, scope: !105, inlinedAt: !284)
!288 = !DILocation(line: 992, column: 17, scope: !105, inlinedAt: !284)
!289 = !DILocation(line: 992, column: 11, scope: !105, inlinedAt: !284)
!290 = !DILocation(line: 993, column: 43, scope: !105, inlinedAt: !284)
!291 = !DILocation(line: 993, column: 10, scope: !105, inlinedAt: !284)
!292 = !DILocation(line: 1020, column: 14, scope: !100, inlinedAt: !281)
!293 = !DILocation(line: 192, column: 32, scope: !40)
!294 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !295)
!295 = distinct !DILocation(line: 193, column: 34, scope: !40)
!296 = !DILocation(line: 171, column: 37, scope: !103, inlinedAt: !297)
!297 = distinct !DILocation(line: 990, column: 14, scope: !105, inlinedAt: !298)
!298 = distinct !DILocation(line: 1019, column: 11, scope: !100, inlinedAt: !295)
!299 = !DILocation(line: 171, column: 10, scope: !103, inlinedAt: !297)
!300 = !DILocation(line: 991, column: 20, scope: !105, inlinedAt: !298)
!301 = !DILocation(line: 992, column: 36, scope: !105, inlinedAt: !298)
!302 = !DILocation(line: 992, column: 17, scope: !105, inlinedAt: !298)
!303 = !DILocation(line: 992, column: 11, scope: !105, inlinedAt: !298)
!304 = !DILocation(line: 993, column: 43, scope: !105, inlinedAt: !298)
!305 = !DILocation(line: 993, column: 10, scope: !105, inlinedAt: !298)
!306 = !DILocation(line: 1020, column: 14, scope: !100, inlinedAt: !295)
!307 = !DILocation(line: 193, column: 32, scope: !40)
!308 = !DILocation(line: 197, column: 24, scope: !40)
!309 = !DILocation(line: 197, column: 40, scope: !40)
!310 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !311)
!311 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !312)
!312 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !313)
!313 = distinct !DILocation(line: 203, column: 27, scope: !40)
!314 = !{!315, !317}
!315 = distinct !{!315, !316, !"_ZL17__floats2half2_rnff: %agg.result"}
!316 = distinct !{!316, !"_ZL17__floats2half2_rnff"}
!317 = distinct !{!317, !318, !"_ZL17__float22half2_rn6float2: %agg.result"}
!318 = distinct !{!318, !"_ZL17__float22half2_rn6float2"}
!319 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !320)
!320 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !312)
!321 = !DILocation(line: 596, column: 67, scope: !322, inlinedAt: !323)
!322 = distinct !DISubprogram(name: "__half2", scope: !159, file: !159, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!323 = distinct !DILocation(line: 1077, column: 10, scope: !161, inlinedAt: !312)
!324 = !DILocation(line: 596, column: 73, scope: !322, inlinedAt: !323)
!325 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !326)
!326 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !327)
!327 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !328)
!328 = distinct !DILocation(line: 204, column: 27, scope: !40)
!329 = !{!330, !332}
!330 = distinct !{!330, !331, !"_ZL17__floats2half2_rnff: %agg.result"}
!331 = distinct !{!331, !"_ZL17__floats2half2_rnff"}
!332 = distinct !{!332, !333, !"_ZL17__float22half2_rn6float2: %agg.result"}
!333 = distinct !{!333, !"_ZL17__float22half2_rn6float2"}
!334 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !335)
!335 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !327)
!336 = !DILocation(line: 596, column: 67, scope: !322, inlinedAt: !337)
!337 = distinct !DILocation(line: 1077, column: 10, scope: !161, inlinedAt: !327)
!338 = !DILocation(line: 596, column: 73, scope: !322, inlinedAt: !337)
!339 = !DILocation(line: 205, column: 45, scope: !40)
!340 = !DILocation(line: 206, column: 121, scope: !40)
!341 = !DILocation(line: 206, column: 149, scope: !40)
!342 = !DILocation(line: 206, column: 77, scope: !40)
!343 = !DILocation(line: 206, column: 155, scope: !40)
!344 = !DILocation(line: 206, column: 40, scope: !40)
!345 = !DILocation(line: 206, column: 198, scope: !40)
!346 = !DILocation(line: 206, column: 92, scope: !40)
!347 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !348)
!348 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !349)
!349 = distinct !DILocation(line: 208, column: 3, scope: !40)
!350 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !348)
!351 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !348)
!352 = !DILocation(line: 210, column: 8, scope: !40)
!353 = !DILocation(line: 211, column: 22, scope: !40)
!354 = !DILocation(line: 211, column: 131, scope: !40)
!355 = !{i32 2, i32 -1, i32 -1, i32 -1}
!356 = !DILocation(line: 211, column: 168, scope: !40)
!357 = !DILocation(line: 213, column: 1, scope: !40)
