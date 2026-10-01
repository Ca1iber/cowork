; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v045_codex_power_s8_value_select_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v045_codex_power_s8_value_select_sc-16g-2/codegen/case12.device.cpp"
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
  %add211067 = and i32 %mul11, 32
  %shr181068 = add nuw nsw i32 %add211067, %2
  %mul23 = and i32 %shr181068, 32
  %add311069 = and i32 %mul11, 16
  %and261070 = add nuw nsw i32 %add311069, %2
  %mul33 = and i32 %and261070, 16
  %and361072 = mul nuw nsw i32 %2, 9
  %mul42 = and i32 %and361072, 8
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
  %invariant.gep1224 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul156, !dbg !68
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
  %gep = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1224, i64 %.idx, !dbg !78
  %cmp144 = icmp ult i32 %add141, 1024, !dbg !79
  br i1 %cmp144, label %if.then145, label %if.end, !dbg !80

if.then145:                                       ; preds = %if.then
  %gep1217 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1217, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1217, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1217, i64 4
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep1217, align 16, !dbg !81, !tbaa !30
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
  %gep1217.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %add150.1
  %condval.sroa.7.0.add.ptr158.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1, i64 4
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep1217.1, align 16, !dbg !81, !tbaa !30
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
  %scores.sroa.0.0.vec.extract2332 = extractelement <4 x float> %28, i64 0
  %spec.select = select i1 %cmp285.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2332, !dbg !93
  %cmp285.not.1.not = icmp slt i32 %add282, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2437 = extractelement <4 x float> %28, i64 1, !dbg !93
  %condval_1.0.1 = select i1 %cmp285.not.1.not, float %scores.sroa.0.4.vec.extract2437, float 0xFFF0000000000000, !dbg !93
  %add283.2 = or disjoint i32 %add282, 2, !dbg !94
  %cmp285.not.2 = icmp sgt i32 %add283.2, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2514 = extractelement <4 x float> %28, i64 2, !dbg !93
  %condval_1.0.2 = select i1 %cmp285.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2514, !dbg !93
  %add283.3 = or disjoint i32 %add282, 3, !dbg !94
  %cmp285.not.3 = icmp sgt i32 %add283.3, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2591 = extractelement <4 x float> %28, i64 3, !dbg !93
  %condval_1.0.3 = select i1 %cmp285.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2591, !dbg !93
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
  %xor.i.i1113 = xor i32 %42, 16, !dbg !123
  %43 = and i32 %42, -64, !dbg !124
  %and.i.i1114 = add nsw i32 %43, 64, !dbg !124
  %cmp.not.i.i1115 = icmp slt i32 %xor.i.i1113, %and.i.i1114, !dbg !125
  %cond.i.i1116 = select i1 %cmp.not.i.i1115, i32 %xor.i.i1113, i32 %42, !dbg !126
  %shl.i.i1117 = shl i32 %cond.i.i1116, 2, !dbg !127
  %44 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1117, i32 %40), !dbg !128
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
  %cond.i.i1122 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i = fadd contract float %add375, %cond.i.i1122, !dbg !148
  %48 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !148
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i = fmul contract float %cond2.i.i, %48, !dbg !148
  %cmp.i.i1123 = fcmp contract olt float %add379, -1.260000e+02, !dbg !151
  %cond.i.i1124 = select contract i1 %cmp.i.i1123, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i1125 = fadd contract float %add379, %cond.i.i1124, !dbg !151
  %49 = tail call contract float @llvm.exp2.f32(float %add.i.i1125), !dbg !151
  %cond2.i.i1126 = select contract i1 %cmp.i.i1123, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i1127 = fmul contract float %cond2.i.i1126, %49, !dbg !151
  %cmp.i.i1128 = fcmp contract olt float %add383, -1.260000e+02, !dbg !153
  %cond.i.i1129 = select contract i1 %cmp.i.i1128, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i1130 = fadd contract float %add383, %cond.i.i1129, !dbg !153
  %50 = tail call contract float @llvm.exp2.f32(float %add.i.i1130), !dbg !153
  %cond2.i.i1131 = select contract i1 %cmp.i.i1128, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i1132 = fmul contract float %cond2.i.i1131, %50, !dbg !153
  %cmp.i.i1133 = fcmp contract olt float %add387, -1.260000e+02, !dbg !155
  %cond.i.i1134 = select contract i1 %cmp.i.i1133, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i1135 = fadd contract float %add387, %cond.i.i1134, !dbg !155
  %51 = tail call contract float @llvm.exp2.f32(float %add.i.i1135), !dbg !155
  %cond2.i.i1136 = select contract i1 %cmp.i.i1133, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i1137 = fmul contract float %cond2.i.i1136, %51, !dbg !155
  %52 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %53 = fptrunc float %mul.i.i to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %52), !dbg !157, !noalias !165
  %54 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %55 = fptrunc float %mul.i.i1127 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %54), !dbg !170, !noalias !165
  %56 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %57 = fptrunc float %mul.i.i1132 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %56), !dbg !172, !noalias !176
  %58 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %59 = fptrunc float %mul.i.i1137 to half, !dbg !181
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
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1224, i64 %.idx.1, !dbg !78
  %cmp144.11260 = icmp ult i32 %add141.1, 1024, !dbg !79
  br i1 %cmp144.11260, label %if.then145.11269, label %if.end.11278, !dbg !80

if.then145.11269:                                 ; preds = %if.then.1
  %gep1217.11261 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.1, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.11262 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.11261, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.11263 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.11261, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.11264 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.11261, i64 4
  %condval.sroa.0.0.copyload.11265 = load i32, ptr addrspace(4) %gep1217.11261, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.11266 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.11264, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.11267 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.11263, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.11268 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.11262, align 4, !dbg !81, !tbaa !30
  br label %if.end.11278, !dbg !82

if.end.11278:                                     ; preds = %if.then145.11269, %if.then.1
  %condval.sroa.0.0.11270 = phi i32 [ %condval.sroa.0.0.copyload.11265, %if.then145.11269 ], [ 0, %if.then.1 ], !dbg !83
  %condval.sroa.5.0.11271 = phi i32 [ %condval.sroa.5.0.copyload.11266, %if.then145.11269 ], [ 0, %if.then.1 ], !dbg !83
  %condval.sroa.6.0.11272 = phi i32 [ %condval.sroa.6.0.copyload.11267, %if.then145.11269 ], [ 0, %if.then.1 ], !dbg !83
  %condval.sroa.7.0.11273 = phi i32 [ %condval.sroa.7.0.copyload.11268, %if.then145.11269 ], [ 0, %if.then.1 ], !dbg !83
  store i32 %condval.sroa.0.0.11270, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.11275 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.11271, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.11275, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.11276 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.11272, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.11276, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.11277 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.11273, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.11277, align 4, !dbg !84, !tbaa !30
  %cmp144.1.1 = icmp ult i32 %add141.1, 1016, !dbg !79
  br i1 %cmp144.1.1, label %if.then145.1.1, label %if.end.1.1, !dbg !80

if.then145.1.1:                                   ; preds = %if.end.11278
  %add150.1.1 = or disjoint i64 %mul147, 512
  %gep1217.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.1, i64 %add150.1.1
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1.1, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1.1, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1.1, i64 4
  %condval.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %gep1217.1.1, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.1, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.1, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.1, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.1, !dbg !82

if.end.1.1:                                       ; preds = %if.then145.1.1, %if.end.11278
  %condval.sroa.0.0.1.1 = phi i32 [ %condval.sroa.0.0.copyload.1.1, %if.then145.1.1 ], [ 0, %if.end.11278 ], !dbg !83
  %condval.sroa.5.0.1.1 = phi i32 [ %condval.sroa.5.0.copyload.1.1, %if.then145.1.1 ], [ 0, %if.end.11278 ], !dbg !83
  %condval.sroa.6.0.1.1 = phi i32 [ %condval.sroa.6.0.copyload.1.1, %if.then145.1.1 ], [ 0, %if.end.11278 ], !dbg !83
  %condval.sroa.7.0.1.1 = phi i32 [ %condval.sroa.7.0.copyload.1.1, %if.then145.1.1 ], [ 0, %if.end.11278 ], !dbg !83
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
  %k_local.sroa.0.0.copyload.11286 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %67 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11286, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %68 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %16, <4 x float> %67), !dbg !91
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %69 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %18, <4 x float> %68), !dbg !91
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %70 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %22, <4 x float> %69), !dbg !91
  %add282.1 = add nuw nsw i32 %mul131.1, %mul281
  %cmp285.not.11287 = icmp sgt i32 %add282.1, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2340 = extractelement <4 x float> %70, i64 0
  %spec.select2795 = select i1 %cmp285.not.11287, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2340, !dbg !93
  %cmp285.not.1.1.not = icmp slt i32 %add282.1, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2443 = extractelement <4 x float> %70, i64 1, !dbg !93
  %condval_1.0.1.1 = select i1 %cmp285.not.1.1.not, float %scores.sroa.0.4.vec.extract2443, float 0xFFF0000000000000, !dbg !93
  %add283.2.1 = or disjoint i32 %add282.1, 2, !dbg !94
  %cmp285.not.2.1 = icmp sgt i32 %add283.2.1, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2520 = extractelement <4 x float> %70, i64 2, !dbg !93
  %condval_1.0.2.1 = select i1 %cmp285.not.2.1, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2520, !dbg !93
  %add283.3.1 = or disjoint i32 %add282.1, 3, !dbg !94
  %cmp285.not.3.1 = icmp sgt i32 %add283.3.1, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2597 = extractelement <4 x float> %70, i64 3, !dbg !93
  %condval_1.0.3.1 = select i1 %cmp285.not.3.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2597, !dbg !93
  %71 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2795, float 0xFFF0000000000000), !dbg !95
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
  %xor.i.i1113.1 = xor i32 %84, 16, !dbg !123
  %85 = and i32 %84, -64, !dbg !124
  %and.i.i1114.1 = add nsw i32 %85, 64, !dbg !124
  %cmp.not.i.i1115.1 = icmp slt i32 %xor.i.i1113.1, %and.i.i1114.1, !dbg !125
  %cond.i.i1116.1 = select i1 %cmp.not.i.i1115.1, i32 %xor.i.i1113.1, i32 %84, !dbg !126
  %shl.i.i1117.1 = shl i32 %cond.i.i1116.1, 2, !dbg !127
  %86 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1117.1, i32 %82), !dbg !128
  %87 = bitcast i32 %86 to float, !dbg !129
  %88 = tail call contract noundef float @llvm.maxnum.f32(float %81, float %87), !dbg !130
  %cmp326.1 = icmp eq i32 %shr324, 1, !dbg !132
  %max_cache.sroa.0.2 = select i1 %cmp326.1, float %88, float %max_cache.sroa.0.1, !dbg !133
  %89 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1, float %88), !dbg !134
  %sub.1 = fsub contract float %spec.select2795, %88, !dbg !136
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
  %cond.i.i1122.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i.1 = fadd contract float %add375.1, %cond.i.i1122.1, !dbg !148
  %90 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !148
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %90, !dbg !148
  %cmp.i.i1123.1 = fcmp contract olt float %add379.1, -1.260000e+02, !dbg !151
  %cond.i.i1124.1 = select contract i1 %cmp.i.i1123.1, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i1125.1 = fadd contract float %add379.1, %cond.i.i1124.1, !dbg !151
  %91 = tail call contract float @llvm.exp2.f32(float %add.i.i1125.1), !dbg !151
  %cond2.i.i1126.1 = select contract i1 %cmp.i.i1123.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i1127.1 = fmul contract float %cond2.i.i1126.1, %91, !dbg !151
  %cmp.i.i1128.1 = fcmp contract olt float %add383.1, -1.260000e+02, !dbg !153
  %cond.i.i1129.1 = select contract i1 %cmp.i.i1128.1, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i1130.1 = fadd contract float %add383.1, %cond.i.i1129.1, !dbg !153
  %92 = tail call contract float @llvm.exp2.f32(float %add.i.i1130.1), !dbg !153
  %cond2.i.i1131.1 = select contract i1 %cmp.i.i1128.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i1132.1 = fmul contract float %cond2.i.i1131.1, %92, !dbg !153
  %cmp.i.i1133.1 = fcmp contract olt float %add387.1, -1.260000e+02, !dbg !155
  %cond.i.i1134.1 = select contract i1 %cmp.i.i1133.1, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i1135.1 = fadd contract float %add387.1, %cond.i.i1134.1, !dbg !155
  %93 = tail call contract float @llvm.exp2.f32(float %add.i.i1135.1), !dbg !155
  %cond2.i.i1136.1 = select contract i1 %cmp.i.i1133.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i1137.1 = fmul contract float %cond2.i.i1136.1, %93, !dbg !155
  %94 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %95 = fptrunc float %mul.i.i.1 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %94), !dbg !157, !noalias !165
  %96 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %97 = fptrunc float %mul.i.i1127.1 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %96), !dbg !170, !noalias !165
  %98 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %99 = fptrunc float %mul.i.i1132.1 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %98), !dbg !172, !noalias !176
  %100 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %101 = fptrunc float %mul.i.i1137.1 to half, !dbg !181
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
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1224, i64 %.idx.2, !dbg !78
  %cmp144.2 = icmp ult i32 %add141.2, 1024, !dbg !79
  br i1 %cmp144.2, label %if.then145.2, label %if.end.2, !dbg !80

if.then145.2:                                     ; preds = %if.then.2
  %gep1217.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.2, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.2, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.2, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.2, i64 4
  %condval.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %gep1217.2, align 16, !dbg !81, !tbaa !30
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
  %gep1217.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.2, i64 %add150.1.2
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1.2, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1.2, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1.2, i64 4
  %condval.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %gep1217.1.2, align 16, !dbg !81, !tbaa !30
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
  %k_local.sroa.0.0.copyload.21298 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %109 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.21298, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %110 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %16, <4 x float> %109), !dbg !91
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %111 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %18, <4 x float> %110), !dbg !91
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %112 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %22, <4 x float> %111), !dbg !91
  %add282.2 = add nuw nsw i32 %mul131.2, %mul281
  %cmp285.not.21299 = icmp sgt i32 %add282.2, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2350 = extractelement <4 x float> %112, i64 0
  %spec.select2796 = select i1 %cmp285.not.21299, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2350, !dbg !93
  %cmp285.not.1.2.not = icmp slt i32 %add282.2, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2449 = extractelement <4 x float> %112, i64 1, !dbg !93
  %condval_1.0.1.2 = select i1 %cmp285.not.1.2.not, float %scores.sroa.0.4.vec.extract2449, float 0xFFF0000000000000, !dbg !93
  %add283.2.2 = or disjoint i32 %add282.2, 2, !dbg !94
  %cmp285.not.2.2 = icmp sgt i32 %add283.2.2, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2526 = extractelement <4 x float> %112, i64 2, !dbg !93
  %condval_1.0.2.2 = select i1 %cmp285.not.2.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2526, !dbg !93
  %add283.3.2 = or disjoint i32 %add282.2, 3, !dbg !94
  %cmp285.not.3.2 = icmp sgt i32 %add283.3.2, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2603 = extractelement <4 x float> %112, i64 3, !dbg !93
  %condval_1.0.3.2 = select i1 %cmp285.not.3.2, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2603, !dbg !93
  %113 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2796, float 0xFFF0000000000000), !dbg !95
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
  %xor.i.i1113.2 = xor i32 %126, 16, !dbg !123
  %127 = and i32 %126, -64, !dbg !124
  %and.i.i1114.2 = add nsw i32 %127, 64, !dbg !124
  %cmp.not.i.i1115.2 = icmp slt i32 %xor.i.i1113.2, %and.i.i1114.2, !dbg !125
  %cond.i.i1116.2 = select i1 %cmp.not.i.i1115.2, i32 %xor.i.i1113.2, i32 %126, !dbg !126
  %shl.i.i1117.2 = shl i32 %cond.i.i1116.2, 2, !dbg !127
  %128 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1117.2, i32 %124), !dbg !128
  %129 = bitcast i32 %128 to float, !dbg !129
  %130 = tail call contract noundef float @llvm.maxnum.f32(float %123, float %129), !dbg !130
  %cmp326.2 = icmp eq i32 %shr324, 2, !dbg !132
  %max_cache.sroa.0.4 = select i1 %cmp326.2, float %130, float %max_cache.sroa.0.3, !dbg !133
  %131 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.1, float %130), !dbg !134
  %sub.2 = fsub contract float %spec.select2796, %130, !dbg !136
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
  %cond.i.i1122.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i.2 = fadd contract float %add375.2, %cond.i.i1122.2, !dbg !148
  %132 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !148
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %132, !dbg !148
  %cmp.i.i1123.2 = fcmp contract olt float %add379.2, -1.260000e+02, !dbg !151
  %cond.i.i1124.2 = select contract i1 %cmp.i.i1123.2, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i1125.2 = fadd contract float %add379.2, %cond.i.i1124.2, !dbg !151
  %133 = tail call contract float @llvm.exp2.f32(float %add.i.i1125.2), !dbg !151
  %cond2.i.i1126.2 = select contract i1 %cmp.i.i1123.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i1127.2 = fmul contract float %cond2.i.i1126.2, %133, !dbg !151
  %cmp.i.i1128.2 = fcmp contract olt float %add383.2, -1.260000e+02, !dbg !153
  %cond.i.i1129.2 = select contract i1 %cmp.i.i1128.2, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i1130.2 = fadd contract float %add383.2, %cond.i.i1129.2, !dbg !153
  %134 = tail call contract float @llvm.exp2.f32(float %add.i.i1130.2), !dbg !153
  %cond2.i.i1131.2 = select contract i1 %cmp.i.i1128.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i1132.2 = fmul contract float %cond2.i.i1131.2, %134, !dbg !153
  %cmp.i.i1133.2 = fcmp contract olt float %add387.2, -1.260000e+02, !dbg !155
  %cond.i.i1134.2 = select contract i1 %cmp.i.i1133.2, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i1135.2 = fadd contract float %add387.2, %cond.i.i1134.2, !dbg !155
  %135 = tail call contract float @llvm.exp2.f32(float %add.i.i1135.2), !dbg !155
  %cond2.i.i1136.2 = select contract i1 %cmp.i.i1133.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i1137.2 = fmul contract float %cond2.i.i1136.2, %135, !dbg !155
  %136 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %137 = fptrunc float %mul.i.i.2 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %136), !dbg !157, !noalias !165
  %138 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %139 = fptrunc float %mul.i.i1127.2 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %138), !dbg !170, !noalias !165
  %140 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %141 = fptrunc float %mul.i.i1132.2 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %140), !dbg !172, !noalias !176
  %142 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %143 = fptrunc float %mul.i.i1137.2 to half, !dbg !181
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
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1224, i64 %.idx.3, !dbg !78
  %cmp144.3 = icmp ult i32 %add141.3, 1024, !dbg !79
  br i1 %cmp144.3, label %if.then145.3, label %if.end.3, !dbg !80

if.then145.3:                                     ; preds = %if.then.3
  %gep1217.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.3, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.3, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.3, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.3, i64 4
  %condval.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %gep1217.3, align 16, !dbg !81, !tbaa !30
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
  %gep1217.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.3, i64 %add150.1.3
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1.3, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1.3, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1.3, i64 4
  %condval.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %gep1217.1.3, align 16, !dbg !81, !tbaa !30
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
  %k_local.sroa.0.0.copyload.31310 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %151 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.31310, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %152 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %16, <4 x float> %151), !dbg !91
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %153 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %18, <4 x float> %152), !dbg !91
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %154 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %22, <4 x float> %153), !dbg !91
  %add282.3 = add nuw nsw i32 %mul131.3, %mul281
  %cmp285.not.31311 = icmp sgt i32 %add282.3, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2360 = extractelement <4 x float> %154, i64 0
  %spec.select2797 = select i1 %cmp285.not.31311, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2360, !dbg !93
  %cmp285.not.1.3.not = icmp slt i32 %add282.3, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2455 = extractelement <4 x float> %154, i64 1, !dbg !93
  %condval_1.0.1.3 = select i1 %cmp285.not.1.3.not, float %scores.sroa.0.4.vec.extract2455, float 0xFFF0000000000000, !dbg !93
  %add283.2.3 = or disjoint i32 %add282.3, 2, !dbg !94
  %cmp285.not.2.3 = icmp sgt i32 %add283.2.3, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2532 = extractelement <4 x float> %154, i64 2, !dbg !93
  %condval_1.0.2.3 = select i1 %cmp285.not.2.3, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2532, !dbg !93
  %add283.3.3 = or disjoint i32 %add282.3, 3, !dbg !94
  %cmp285.not.3.3 = icmp sgt i32 %add283.3.3, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2609 = extractelement <4 x float> %154, i64 3, !dbg !93
  %condval_1.0.3.3 = select i1 %cmp285.not.3.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2609, !dbg !93
  %155 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2797, float 0xFFF0000000000000), !dbg !95
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
  %xor.i.i1113.3 = xor i32 %168, 16, !dbg !123
  %169 = and i32 %168, -64, !dbg !124
  %and.i.i1114.3 = add nsw i32 %169, 64, !dbg !124
  %cmp.not.i.i1115.3 = icmp slt i32 %xor.i.i1113.3, %and.i.i1114.3, !dbg !125
  %cond.i.i1116.3 = select i1 %cmp.not.i.i1115.3, i32 %xor.i.i1113.3, i32 %168, !dbg !126
  %shl.i.i1117.3 = shl i32 %cond.i.i1116.3, 2, !dbg !127
  %170 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1117.3, i32 %166), !dbg !128
  %171 = bitcast i32 %170 to float, !dbg !129
  %172 = tail call contract noundef float @llvm.maxnum.f32(float %165, float %171), !dbg !130
  %cmp326.3 = icmp eq i32 %shr324, 3, !dbg !132
  %max_cache.sroa.0.6 = select i1 %cmp326.3, float %172, float %max_cache.sroa.0.5, !dbg !133
  %173 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.2, float %172), !dbg !134
  %sub.3 = fsub contract float %spec.select2797, %172, !dbg !136
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
  %cond.i.i1122.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i.3 = fadd contract float %add375.3, %cond.i.i1122.3, !dbg !148
  %174 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !148
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %174, !dbg !148
  %cmp.i.i1123.3 = fcmp contract olt float %add379.3, -1.260000e+02, !dbg !151
  %cond.i.i1124.3 = select contract i1 %cmp.i.i1123.3, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i1125.3 = fadd contract float %add379.3, %cond.i.i1124.3, !dbg !151
  %175 = tail call contract float @llvm.exp2.f32(float %add.i.i1125.3), !dbg !151
  %cond2.i.i1126.3 = select contract i1 %cmp.i.i1123.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i1127.3 = fmul contract float %cond2.i.i1126.3, %175, !dbg !151
  %cmp.i.i1128.3 = fcmp contract olt float %add383.3, -1.260000e+02, !dbg !153
  %cond.i.i1129.3 = select contract i1 %cmp.i.i1128.3, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i1130.3 = fadd contract float %add383.3, %cond.i.i1129.3, !dbg !153
  %176 = tail call contract float @llvm.exp2.f32(float %add.i.i1130.3), !dbg !153
  %cond2.i.i1131.3 = select contract i1 %cmp.i.i1128.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i1132.3 = fmul contract float %cond2.i.i1131.3, %176, !dbg !153
  %cmp.i.i1133.3 = fcmp contract olt float %add387.3, -1.260000e+02, !dbg !155
  %cond.i.i1134.3 = select contract i1 %cmp.i.i1133.3, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i1135.3 = fadd contract float %add387.3, %cond.i.i1134.3, !dbg !155
  %177 = tail call contract float @llvm.exp2.f32(float %add.i.i1135.3), !dbg !155
  %cond2.i.i1136.3 = select contract i1 %cmp.i.i1133.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i1137.3 = fmul contract float %cond2.i.i1136.3, %177, !dbg !155
  %178 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %179 = fptrunc float %mul.i.i.3 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %178), !dbg !157, !noalias !165
  %180 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %181 = fptrunc float %mul.i.i1127.3 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %180), !dbg !170, !noalias !165
  %182 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %183 = fptrunc float %mul.i.i1132.3 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %182), !dbg !172, !noalias !176
  %184 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %185 = fptrunc float %mul.i.i1137.3 to half, !dbg !181
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
  %gep.4 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1224, i64 %.idx.4, !dbg !78
  %cmp144.4 = icmp ult i32 %add141.4, 1024, !dbg !79
  br i1 %cmp144.4, label %if.then145.4, label %if.end.4, !dbg !80

if.then145.4:                                     ; preds = %if.then.4
  %gep1217.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.4, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.4, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.4, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.4, i64 4
  %condval.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %gep1217.4, align 16, !dbg !81, !tbaa !30
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
  %gep1217.1.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.4, i64 %add150.1.4
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1.4, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1.4, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1.4, i64 4
  %condval.sroa.0.0.copyload.1.4 = load i32, ptr addrspace(4) %gep1217.1.4, align 16, !dbg !81, !tbaa !30
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
  %scores.sroa.0.0.vec.extract2370 = extractelement <4 x float> %196, i64 0
  %spec.select2798 = select i1 %cmp285.not.4, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2370, !dbg !93
  %cmp285.not.1.4.not = icmp slt i32 %add282.4, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2461 = extractelement <4 x float> %196, i64 1, !dbg !93
  %condval_1.0.1.4 = select i1 %cmp285.not.1.4.not, float %scores.sroa.0.4.vec.extract2461, float 0xFFF0000000000000, !dbg !93
  %add283.2.4 = or disjoint i32 %add282.4, 2, !dbg !94
  %cmp285.not.2.4 = icmp sgt i32 %add283.2.4, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2538 = extractelement <4 x float> %196, i64 2, !dbg !93
  %condval_1.0.2.4 = select i1 %cmp285.not.2.4, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2538, !dbg !93
  %add283.3.4 = or disjoint i32 %add282.4, 3, !dbg !94
  %cmp285.not.3.4 = icmp sgt i32 %add283.3.4, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2615 = extractelement <4 x float> %196, i64 3, !dbg !93
  %condval_1.0.3.4 = select i1 %cmp285.not.3.4, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2615, !dbg !93
  %197 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2798, float 0xFFF0000000000000), !dbg !95
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
  %xor.i.i1113.4 = xor i32 %210, 16, !dbg !123
  %211 = and i32 %210, -64, !dbg !124
  %and.i.i1114.4 = add nsw i32 %211, 64, !dbg !124
  %cmp.not.i.i1115.4 = icmp slt i32 %xor.i.i1113.4, %and.i.i1114.4, !dbg !125
  %cond.i.i1116.4 = select i1 %cmp.not.i.i1115.4, i32 %xor.i.i1113.4, i32 %210, !dbg !126
  %shl.i.i1117.4 = shl i32 %cond.i.i1116.4, 2, !dbg !127
  %212 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1117.4, i32 %208), !dbg !128
  %213 = bitcast i32 %212 to float, !dbg !129
  %214 = tail call contract noundef float @llvm.maxnum.f32(float %207, float %213), !dbg !130
  %cmp326.4 = icmp ult i32 %2, 16, !dbg !132
  %max_cache.sroa.11.0 = select i1 %cmp326.4, float %214, float 0xFFF0000000000000, !dbg !133
  %215 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.3, float %214), !dbg !134
  %sub.4 = fsub contract float %spec.select2798, %214, !dbg !136
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
  %cond.i.i1122.4 = select contract i1 %cmp.i.i.4, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i.4 = fadd contract float %add375.4, %cond.i.i1122.4, !dbg !148
  %216 = tail call contract float @llvm.exp2.f32(float %add.i.i.4), !dbg !148
  %cond2.i.i.4 = select contract i1 %cmp.i.i.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i.4 = fmul contract float %cond2.i.i.4, %216, !dbg !148
  %cmp.i.i1123.4 = fcmp contract olt float %add379.4, -1.260000e+02, !dbg !151
  %cond.i.i1124.4 = select contract i1 %cmp.i.i1123.4, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i1125.4 = fadd contract float %add379.4, %cond.i.i1124.4, !dbg !151
  %217 = tail call contract float @llvm.exp2.f32(float %add.i.i1125.4), !dbg !151
  %cond2.i.i1126.4 = select contract i1 %cmp.i.i1123.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i1127.4 = fmul contract float %cond2.i.i1126.4, %217, !dbg !151
  %cmp.i.i1128.4 = fcmp contract olt float %add383.4, -1.260000e+02, !dbg !153
  %cond.i.i1129.4 = select contract i1 %cmp.i.i1128.4, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i1130.4 = fadd contract float %add383.4, %cond.i.i1129.4, !dbg !153
  %218 = tail call contract float @llvm.exp2.f32(float %add.i.i1130.4), !dbg !153
  %cond2.i.i1131.4 = select contract i1 %cmp.i.i1128.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i1132.4 = fmul contract float %cond2.i.i1131.4, %218, !dbg !153
  %cmp.i.i1133.4 = fcmp contract olt float %add387.4, -1.260000e+02, !dbg !155
  %cond.i.i1134.4 = select contract i1 %cmp.i.i1133.4, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i1135.4 = fadd contract float %add387.4, %cond.i.i1134.4, !dbg !155
  %219 = tail call contract float @llvm.exp2.f32(float %add.i.i1135.4), !dbg !155
  %cond2.i.i1136.4 = select contract i1 %cmp.i.i1133.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i1137.4 = fmul contract float %cond2.i.i1136.4, %219, !dbg !155
  %220 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %221 = fptrunc float %mul.i.i.4 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %220), !dbg !157, !noalias !165
  %222 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %223 = fptrunc float %mul.i.i1127.4 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %222), !dbg !170, !noalias !165
  %224 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %225 = fptrunc float %mul.i.i1132.4 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %224), !dbg !172, !noalias !176
  %226 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %227 = fptrunc float %mul.i.i1137.4 to half, !dbg !181
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
  %gep.5 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1224, i64 %.idx.5, !dbg !78
  %cmp144.5 = icmp ult i32 %add141.5, 1024, !dbg !79
  br i1 %cmp144.5, label %if.then145.5, label %if.end.5, !dbg !80

if.then145.5:                                     ; preds = %if.then.5
  %gep1217.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.5, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.5, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.5, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.5, i64 4
  %condval.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %gep1217.5, align 16, !dbg !81, !tbaa !30
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
  %gep1217.1.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.5, i64 %add150.1.5
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1.5, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1.5, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1.5, i64 4
  %condval.sroa.0.0.copyload.1.5 = load i32, ptr addrspace(4) %gep1217.1.5, align 16, !dbg !81, !tbaa !30
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
  %scores.sroa.0.0.vec.extract2380 = extractelement <4 x float> %238, i64 0
  %spec.select2799 = select i1 %cmp285.not.5, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2380, !dbg !93
  %cmp285.not.1.5.not = icmp slt i32 %add282.5, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2467 = extractelement <4 x float> %238, i64 1, !dbg !93
  %condval_1.0.1.5 = select i1 %cmp285.not.1.5.not, float %scores.sroa.0.4.vec.extract2467, float 0xFFF0000000000000, !dbg !93
  %add283.2.5 = or disjoint i32 %add282.5, 2, !dbg !94
  %cmp285.not.2.5 = icmp sgt i32 %add283.2.5, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2544 = extractelement <4 x float> %238, i64 2, !dbg !93
  %condval_1.0.2.5 = select i1 %cmp285.not.2.5, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2544, !dbg !93
  %add283.3.5 = or disjoint i32 %add282.5, 3, !dbg !94
  %cmp285.not.3.5 = icmp sgt i32 %add283.3.5, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2621 = extractelement <4 x float> %238, i64 3, !dbg !93
  %condval_1.0.3.5 = select i1 %cmp285.not.3.5, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2621, !dbg !93
  %239 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2799, float 0xFFF0000000000000), !dbg !95
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
  %xor.i.i1113.5 = xor i32 %252, 16, !dbg !123
  %253 = and i32 %252, -64, !dbg !124
  %and.i.i1114.5 = add nsw i32 %253, 64, !dbg !124
  %cmp.not.i.i1115.5 = icmp slt i32 %xor.i.i1113.5, %and.i.i1114.5, !dbg !125
  %cond.i.i1116.5 = select i1 %cmp.not.i.i1115.5, i32 %xor.i.i1113.5, i32 %252, !dbg !126
  %shl.i.i1117.5 = shl i32 %cond.i.i1116.5, 2, !dbg !127
  %254 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1117.5, i32 %250), !dbg !128
  %255 = bitcast i32 %254 to float, !dbg !129
  %256 = tail call contract noundef float @llvm.maxnum.f32(float %249, float %255), !dbg !130
  %cmp326.5 = icmp eq i32 %shr324, 1, !dbg !132
  %max_cache.sroa.11.2 = select i1 %cmp326.5, float %256, float %max_cache.sroa.11.1, !dbg !133
  %257 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.4, float %256), !dbg !134
  %sub.5 = fsub contract float %spec.select2799, %256, !dbg !136
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
  %cond.i.i1122.5 = select contract i1 %cmp.i.i.5, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i.5 = fadd contract float %add375.5, %cond.i.i1122.5, !dbg !148
  %258 = tail call contract float @llvm.exp2.f32(float %add.i.i.5), !dbg !148
  %cond2.i.i.5 = select contract i1 %cmp.i.i.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i.5 = fmul contract float %cond2.i.i.5, %258, !dbg !148
  %cmp.i.i1123.5 = fcmp contract olt float %add379.5, -1.260000e+02, !dbg !151
  %cond.i.i1124.5 = select contract i1 %cmp.i.i1123.5, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i1125.5 = fadd contract float %add379.5, %cond.i.i1124.5, !dbg !151
  %259 = tail call contract float @llvm.exp2.f32(float %add.i.i1125.5), !dbg !151
  %cond2.i.i1126.5 = select contract i1 %cmp.i.i1123.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i1127.5 = fmul contract float %cond2.i.i1126.5, %259, !dbg !151
  %cmp.i.i1128.5 = fcmp contract olt float %add383.5, -1.260000e+02, !dbg !153
  %cond.i.i1129.5 = select contract i1 %cmp.i.i1128.5, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i1130.5 = fadd contract float %add383.5, %cond.i.i1129.5, !dbg !153
  %260 = tail call contract float @llvm.exp2.f32(float %add.i.i1130.5), !dbg !153
  %cond2.i.i1131.5 = select contract i1 %cmp.i.i1128.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i1132.5 = fmul contract float %cond2.i.i1131.5, %260, !dbg !153
  %cmp.i.i1133.5 = fcmp contract olt float %add387.5, -1.260000e+02, !dbg !155
  %cond.i.i1134.5 = select contract i1 %cmp.i.i1133.5, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i1135.5 = fadd contract float %add387.5, %cond.i.i1134.5, !dbg !155
  %261 = tail call contract float @llvm.exp2.f32(float %add.i.i1135.5), !dbg !155
  %cond2.i.i1136.5 = select contract i1 %cmp.i.i1133.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i1137.5 = fmul contract float %cond2.i.i1136.5, %261, !dbg !155
  %262 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %263 = fptrunc float %mul.i.i.5 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %262), !dbg !157, !noalias !165
  %264 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %265 = fptrunc float %mul.i.i1127.5 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %264), !dbg !170, !noalias !165
  %266 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %267 = fptrunc float %mul.i.i1132.5 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %266), !dbg !172, !noalias !176
  %268 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %269 = fptrunc float %mul.i.i1137.5 to half, !dbg !181
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
  %gep.6 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1224, i64 %.idx.6, !dbg !78
  %cmp144.6 = icmp ult i32 %add141.6, 1024, !dbg !79
  br i1 %cmp144.6, label %if.then145.6, label %if.end.6, !dbg !80

if.then145.6:                                     ; preds = %if.then.6
  %gep1217.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.6, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.6, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.6, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.6, i64 4
  %condval.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %gep1217.6, align 16, !dbg !81, !tbaa !30
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
  %gep1217.1.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.6, i64 %add150.1.6
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1.6, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1.6, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1.6, i64 4
  %condval.sroa.0.0.copyload.1.6 = load i32, ptr addrspace(4) %gep1217.1.6, align 16, !dbg !81, !tbaa !30
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
  %scores.sroa.0.0.vec.extract2390 = extractelement <4 x float> %280, i64 0
  %spec.select2800 = select i1 %cmp285.not.6, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2390, !dbg !93
  %cmp285.not.1.6.not = icmp slt i32 %add282.6, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2473 = extractelement <4 x float> %280, i64 1, !dbg !93
  %condval_1.0.1.6 = select i1 %cmp285.not.1.6.not, float %scores.sroa.0.4.vec.extract2473, float 0xFFF0000000000000, !dbg !93
  %add283.2.6 = or disjoint i32 %add282.6, 2, !dbg !94
  %cmp285.not.2.6 = icmp sgt i32 %add283.2.6, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2550 = extractelement <4 x float> %280, i64 2, !dbg !93
  %condval_1.0.2.6 = select i1 %cmp285.not.2.6, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2550, !dbg !93
  %add283.3.6 = or disjoint i32 %add282.6, 3, !dbg !94
  %cmp285.not.3.6 = icmp sgt i32 %add283.3.6, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2627 = extractelement <4 x float> %280, i64 3, !dbg !93
  %condval_1.0.3.6 = select i1 %cmp285.not.3.6, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2627, !dbg !93
  %281 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2800, float 0xFFF0000000000000), !dbg !95
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
  %xor.i.i1113.6 = xor i32 %294, 16, !dbg !123
  %295 = and i32 %294, -64, !dbg !124
  %and.i.i1114.6 = add nsw i32 %295, 64, !dbg !124
  %cmp.not.i.i1115.6 = icmp slt i32 %xor.i.i1113.6, %and.i.i1114.6, !dbg !125
  %cond.i.i1116.6 = select i1 %cmp.not.i.i1115.6, i32 %xor.i.i1113.6, i32 %294, !dbg !126
  %shl.i.i1117.6 = shl i32 %cond.i.i1116.6, 2, !dbg !127
  %296 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1117.6, i32 %292), !dbg !128
  %297 = bitcast i32 %296 to float, !dbg !129
  %298 = tail call contract noundef float @llvm.maxnum.f32(float %291, float %297), !dbg !130
  %cmp326.6 = icmp eq i32 %shr324, 2, !dbg !132
  %max_cache.sroa.11.4 = select i1 %cmp326.6, float %298, float %max_cache.sroa.11.3, !dbg !133
  %299 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.5, float %298), !dbg !134
  %sub.6 = fsub contract float %spec.select2800, %298, !dbg !136
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
  %cond.i.i1122.6 = select contract i1 %cmp.i.i.6, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i.6 = fadd contract float %add375.6, %cond.i.i1122.6, !dbg !148
  %300 = tail call contract float @llvm.exp2.f32(float %add.i.i.6), !dbg !148
  %cond2.i.i.6 = select contract i1 %cmp.i.i.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i.6 = fmul contract float %cond2.i.i.6, %300, !dbg !148
  %cmp.i.i1123.6 = fcmp contract olt float %add379.6, -1.260000e+02, !dbg !151
  %cond.i.i1124.6 = select contract i1 %cmp.i.i1123.6, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i1125.6 = fadd contract float %add379.6, %cond.i.i1124.6, !dbg !151
  %301 = tail call contract float @llvm.exp2.f32(float %add.i.i1125.6), !dbg !151
  %cond2.i.i1126.6 = select contract i1 %cmp.i.i1123.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i1127.6 = fmul contract float %cond2.i.i1126.6, %301, !dbg !151
  %cmp.i.i1128.6 = fcmp contract olt float %add383.6, -1.260000e+02, !dbg !153
  %cond.i.i1129.6 = select contract i1 %cmp.i.i1128.6, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i1130.6 = fadd contract float %add383.6, %cond.i.i1129.6, !dbg !153
  %302 = tail call contract float @llvm.exp2.f32(float %add.i.i1130.6), !dbg !153
  %cond2.i.i1131.6 = select contract i1 %cmp.i.i1128.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i1132.6 = fmul contract float %cond2.i.i1131.6, %302, !dbg !153
  %cmp.i.i1133.6 = fcmp contract olt float %add387.6, -1.260000e+02, !dbg !155
  %cond.i.i1134.6 = select contract i1 %cmp.i.i1133.6, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i1135.6 = fadd contract float %add387.6, %cond.i.i1134.6, !dbg !155
  %303 = tail call contract float @llvm.exp2.f32(float %add.i.i1135.6), !dbg !155
  %cond2.i.i1136.6 = select contract i1 %cmp.i.i1133.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i1137.6 = fmul contract float %cond2.i.i1136.6, %303, !dbg !155
  %304 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %305 = fptrunc float %mul.i.i.6 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %304), !dbg !157, !noalias !165
  %306 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %307 = fptrunc float %mul.i.i1127.6 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %306), !dbg !170, !noalias !165
  %308 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %309 = fptrunc float %mul.i.i1132.6 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %308), !dbg !172, !noalias !176
  %310 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %311 = fptrunc float %mul.i.i1137.6 to half, !dbg !181
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
  %gep.7 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1224, i64 %.idx.7, !dbg !78
  %cmp144.7 = icmp ult i32 %add141.7, 1024, !dbg !79
  br i1 %cmp144.7, label %if.then145.7, label %if.end.7, !dbg !80

if.then145.7:                                     ; preds = %if.then.7
  %gep1217.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.7, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.7, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.7, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.7, i64 4
  %condval.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %gep1217.7, align 16, !dbg !81, !tbaa !30
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
  %gep1217.1.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.7, i64 %add150.1.7
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1.7, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1.7, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1217.1.7, i64 4
  %condval.sroa.0.0.copyload.1.7 = load i32, ptr addrspace(4) %gep1217.1.7, align 16, !dbg !81, !tbaa !30
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
  %scores.sroa.0.0.vec.extract2400 = extractelement <4 x float> %322, i64 0
  %spec.select2801 = select i1 %cmp285.not.7, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2400, !dbg !93
  %cmp285.not.1.7.not = icmp slt i32 %add282.7, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2479 = extractelement <4 x float> %322, i64 1, !dbg !93
  %condval_1.0.1.7 = select i1 %cmp285.not.1.7.not, float %scores.sroa.0.4.vec.extract2479, float 0xFFF0000000000000, !dbg !93
  %add283.2.7 = or disjoint i32 %add282.7, 2, !dbg !94
  %cmp285.not.2.7 = icmp sgt i32 %add283.2.7, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2556 = extractelement <4 x float> %322, i64 2, !dbg !93
  %condval_1.0.2.7 = select i1 %cmp285.not.2.7, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2556, !dbg !93
  %add283.3.7 = or disjoint i32 %add282.7, 3, !dbg !94
  %cmp285.not.3.7 = icmp sgt i32 %add283.3.7, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2633 = extractelement <4 x float> %322, i64 3, !dbg !93
  %condval_1.0.3.7 = select i1 %cmp285.not.3.7, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2633, !dbg !93
  %323 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2801, float 0xFFF0000000000000), !dbg !95
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
  %xor.i.i1113.7 = xor i32 %336, 16, !dbg !123
  %337 = and i32 %336, -64, !dbg !124
  %and.i.i1114.7 = add nsw i32 %337, 64, !dbg !124
  %cmp.not.i.i1115.7 = icmp slt i32 %xor.i.i1113.7, %and.i.i1114.7, !dbg !125
  %cond.i.i1116.7 = select i1 %cmp.not.i.i1115.7, i32 %xor.i.i1113.7, i32 %336, !dbg !126
  %shl.i.i1117.7 = shl i32 %cond.i.i1116.7, 2, !dbg !127
  %338 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1117.7, i32 %334), !dbg !128
  %339 = bitcast i32 %338 to float, !dbg !129
  %340 = tail call contract noundef float @llvm.maxnum.f32(float %333, float %339), !dbg !130
  %cmp326.7 = icmp eq i32 %shr324, 3, !dbg !132
  %max_cache.sroa.11.6 = select i1 %cmp326.7, float %340, float %max_cache.sroa.11.5, !dbg !133
  %341 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.6, float %340), !dbg !134
  %sub.7 = fsub contract float %spec.select2801, %340, !dbg !136
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
  %cond.i.i1122.7 = select contract i1 %cmp.i.i.7, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i.7 = fadd contract float %add375.7, %cond.i.i1122.7, !dbg !148
  %342 = tail call contract float @llvm.exp2.f32(float %add.i.i.7), !dbg !148
  %cond2.i.i.7 = select contract i1 %cmp.i.i.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i.7 = fmul contract float %cond2.i.i.7, %342, !dbg !148
  %cmp.i.i1123.7 = fcmp contract olt float %add379.7, -1.260000e+02, !dbg !151
  %cond.i.i1124.7 = select contract i1 %cmp.i.i1123.7, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i1125.7 = fadd contract float %add379.7, %cond.i.i1124.7, !dbg !151
  %343 = tail call contract float @llvm.exp2.f32(float %add.i.i1125.7), !dbg !151
  %cond2.i.i1126.7 = select contract i1 %cmp.i.i1123.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i1127.7 = fmul contract float %cond2.i.i1126.7, %343, !dbg !151
  %cmp.i.i1128.7 = fcmp contract olt float %add383.7, -1.260000e+02, !dbg !153
  %cond.i.i1129.7 = select contract i1 %cmp.i.i1128.7, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i1130.7 = fadd contract float %add383.7, %cond.i.i1129.7, !dbg !153
  %344 = tail call contract float @llvm.exp2.f32(float %add.i.i1130.7), !dbg !153
  %cond2.i.i1131.7 = select contract i1 %cmp.i.i1128.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i1132.7 = fmul contract float %cond2.i.i1131.7, %344, !dbg !153
  %cmp.i.i1133.7 = fcmp contract olt float %add387.7, -1.260000e+02, !dbg !155
  %cond.i.i1134.7 = select contract i1 %cmp.i.i1133.7, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i1135.7 = fadd contract float %add387.7, %cond.i.i1134.7, !dbg !155
  %345 = tail call contract float @llvm.exp2.f32(float %add.i.i1135.7), !dbg !155
  %cond2.i.i1136.7 = select contract i1 %cmp.i.i1133.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i1137.7 = fmul contract float %cond2.i.i1136.7, %345, !dbg !155
  %346 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %347 = fptrunc float %mul.i.i.7 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %346), !dbg !157, !noalias !165
  %348 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %349 = fptrunc float %mul.i.i1127.7 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %348), !dbg !170, !noalias !165
  %350 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %351 = fptrunc float %mul.i.i1132.7 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %350), !dbg !172, !noalias !176
  %352 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %353 = fptrunc float %mul.i.i1137.7 to half, !dbg !181
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
  %360 = and i32 %359, 16256
  %361 = and i32 %mul11, 56
  %362 = or disjoint i32 %360, %361
  %363 = zext nneg i32 %362 to i64
  %add543 = or disjoint i64 %mul147, %363
  %364 = and i32 %2, 8
  %cmp624 = icmp eq i32 %364, 0
  %and722 = shl nuw nsw i32 %2, 5
  %mul723 = and i32 %and722, 224
  %365 = shl nuw nsw i32 %2, 1
  %mul728 = and i32 %365, 16
  %shr734 = and i32 %and63, 3
  %xor = xor i32 %shr734, %shr324
  %and748 = shl nuw nsw i32 %2, 8
  %mul749 = and i32 %and748, 768
  %366 = shl nuw nsw i32 %2, 2
  %mul755 = and i32 %366, 48
  %and761 = and i32 %2, 3
  %367 = xor i32 %shr324, %and761
  %368 = load i32, ptr addrspace(1) %arrayidx130, align 4, !dbg !186, !tbaa !30
  %mul444 = shl nsw i32 %368, 4, !dbg !187
  %cmp445 = icmp slt i32 %368, 0, !dbg !188
  %cmp448.not = icmp sgt i32 %mul444, %1
  %or.cond1204 = select i1 %cmp445, i1 true, i1 %cmp448.not, !dbg !189
  br i1 %or.cond1204, label %if.end793, label %if.then449, !dbg !189

if.then449:                                       ; preds = %if.end415.7
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454 = icmp ult i32 %2, 16, !dbg !195
  br i1 %cmp454, label %if.then455, label %if.end464, !dbg !196

if.then455:                                       ; preds = %if.then449
  %sub460 = fsub contract float %max_cache.sroa.0.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461 = fmul contract float %sub460, 0x3FC7154760000000, !dbg !198
  %cmp.i.i1139 = fcmp contract olt float %mul461, -1.260000e+02, !dbg !199
  %cond.i.i1140 = select contract i1 %cmp.i.i1139, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i1141 = fadd contract float %mul461, %cond.i.i1140, !dbg !199
  %369 = tail call contract float @llvm.exp2.f32(float %add.i.i1141), !dbg !199
  %cond2.i.i1142 = select contract i1 %cmp.i.i1139, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i1143 = fmul contract float %cond2.i.i1142, %369, !dbg !199
  br label %if.end464, !dbg !201

if.end464:                                        ; preds = %if.then455, %if.then449
  %rescale.sroa.0.0 = phi float [ %mul.i.i1143, %if.then455 ], [ 0.000000e+00, %if.then449 ], !dbg !83
  %370 = bitcast float %rescale.sroa.0.0 to i32, !dbg !202
  %371 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %372 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %371) #11, !dbg !209
  %and.i.i1144 = and i32 %372, 1073741760, !dbg !210
  %add.i.i1145 = or disjoint i32 %and.i.i1144, %and469, !dbg !211
  %shl.i.i1146 = shl nuw i32 %add.i.i1145, 2, !dbg !212
  %373 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1146, i32 %370), !dbg !213
  %374 = bitcast i32 %373 to float, !dbg !214
  %375 = extractelement <4 x half> %64, i64 0, !dbg !215
  %conv.i1147 = fpext half %375 to float, !dbg !215
  %376 = extractelement <4 x half> %64, i64 1, !dbg !218
  %conv6.i = fpext half %376 to float, !dbg !218
  %377 = extractelement <4 x half> %64, i64 2, !dbg !219
  %conv.i1149 = fpext half %377 to float, !dbg !219
  %378 = extractelement <4 x half> %64, i64 3, !dbg !221
  %conv6.i1151 = fpext half %378 to float, !dbg !221
  %mul494 = fmul contract float %374, %conv.i1147, !dbg !222
  %mul498 = fmul contract float %374, %conv6.i, !dbg !223
  %mul502 = fmul contract float %374, %conv.i1149, !dbg !224
  %mul506 = fmul contract float %374, %conv6.i1151, !dbg !225
  %379 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %380 = fptrunc float %mul494 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %379), !dbg !226, !noalias !230
  %381 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %382 = fptrunc float %mul498 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %381), !dbg !235, !noalias !230
  %383 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %384 = fptrunc float %mul502 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %383), !dbg !237, !noalias !241
  %385 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %386 = fptrunc float %mul506 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %385), !dbg !246, !noalias !241
  %387 = insertelement <4 x half> poison, half %380, i64 0, !dbg !248
  %388 = insertelement <4 x half> %387, half %382, i64 1, !dbg !248
  %389 = insertelement <4 x half> %388, half %384, i64 2, !dbg !248
  %390 = insertelement <4 x half> %389, half %386, i64 3, !dbg !248
  %shr529 = lshr exact i32 %mul444, 1
  %add530 = add nuw nsw i32 %shr529, %shr140
  %cmp531 = icmp ult i32 %add530, 512
  %conv541 = zext nneg i32 %mul444 to i64
  br i1 %cmp531, label %if.then532, label %if.end576, !dbg !249

if.then532:                                       ; preds = %if.end464
  %391 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1241 = shl nuw nsw i64 %conv541, 7, !dbg !250
  %392 = getelementptr inbounds i8, ptr addrspace(4) %391, i64 %.idx1241, !dbg !250
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %392, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %392, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %392, i64 8, !dbg !251
  %condval_2.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %392, i64 12, !dbg !251
  %condval_2.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx, align 4, !dbg !251, !tbaa !30
  br label %if.end576, !dbg !252

if.end576:                                        ; preds = %if.end464, %if.then532
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then532 ], [ 0, %if.end464 ], !dbg !83
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then532 ], [ 0, %if.end464 ], !dbg !83
  %condval_2.sroa.6.0 = phi i32 [ %condval_2.sroa.6.0.copyload, %if.then532 ], [ 0, %if.end464 ], !dbg !83
  %condval_2.sroa.7.0 = phi i32 [ %condval_2.sroa.7.0.copyload, %if.then532 ], [ 0, %if.end464 ], !dbg !83
  br i1 %cmp531, label %if.then532.1, label %if.end576.1, !dbg !249

if.then532.1:                                     ; preds = %if.end576
  %393 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1241.1 = shl nuw nsw i64 %conv541, 7, !dbg !250
  %394 = getelementptr inbounds i8, ptr addrspace(4) %393, i64 %.idx1241.1, !dbg !250
  %add.ptr552.1 = getelementptr inbounds i8, ptr addrspace(4) %394, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %add.ptr552.1, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %394, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %394, i64 136, !dbg !251
  %condval_2.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %394, i64 140, !dbg !251
  %condval_2.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1, align 4, !dbg !251, !tbaa !30
  br label %if.end576.1, !dbg !252

if.end576.1:                                      ; preds = %if.then532.1, %if.end576
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then532.1 ], [ 0, %if.end576 ], !dbg !83
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then532.1 ], [ 0, %if.end576 ], !dbg !83
  %condval_2.sroa.6.0.1 = phi i32 [ %condval_2.sroa.6.0.copyload.1, %if.then532.1 ], [ 0, %if.end576 ], !dbg !83
  %condval_2.sroa.7.0.1 = phi i32 [ %condval_2.sroa.7.0.copyload.1, %if.then532.1 ], [ 0, %if.end576 ], !dbg !83
  %v_fetch_local.sroa.0.0.extract.trunc = trunc i32 %condval_2.sroa.0.0 to i16, !dbg !253
  %v_fetch_local.sroa.0.2.extract.shift = lshr i32 %condval_2.sroa.0.0, 16, !dbg !254
  %v_fetch_local.sroa.0.2.extract.trunc = trunc nuw i32 %v_fetch_local.sroa.0.2.extract.shift to i16, !dbg !254
  %v_fetch_local.sroa.82.8.extract.trunc1761 = trunc i32 %condval_2.sroa.6.0 to i16, !dbg !255
  %v_fetch_local.sroa.82.10.extract.shift = lshr i32 %condval_2.sroa.6.0, 16, !dbg !256
  %v_fetch_local.sroa.82.10.extract.trunc = trunc nuw i32 %v_fetch_local.sroa.82.10.extract.shift to i16, !dbg !256
  %cond = select i1 %cmp624, i32 %condval_2.sroa.6.0, i32 %condval_2.sroa.0.0, !dbg !257
  %395 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %396 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %395) #11, !dbg !263
  %xor.i.i1164 = xor i32 %396, 8, !dbg !264
  %397 = and i32 %396, -64, !dbg !265
  %and.i.i1165 = add nsw i32 %397, 64, !dbg !265
  %cmp.not.i.i1166 = icmp slt i32 %xor.i.i1164, %and.i.i1165, !dbg !266
  %cond.i.i1167 = select i1 %cmp.not.i.i1166, i32 %xor.i.i1164, i32 %396, !dbg !267
  %shl.i.i1168 = shl i32 %cond.i.i1167, 2, !dbg !268
  %398 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168, i32 %cond), !dbg !269
  %v_fetch_local.sroa.42.4.extract.trunc = trunc i32 %condval_2.sroa.5.0 to i16, !dbg !253
  %v_fetch_local.sroa.42.6.extract.shift = lshr i32 %condval_2.sroa.5.0, 16, !dbg !254
  %v_fetch_local.sroa.42.6.extract.trunc = trunc nuw i32 %v_fetch_local.sroa.42.6.extract.shift to i16, !dbg !254
  %v_fetch_local.sroa.122.12.extract.trunc = trunc i32 %condval_2.sroa.7.0 to i16, !dbg !255
  %v_fetch_local.sroa.122.14.extract.shift = lshr i32 %condval_2.sroa.7.0, 16, !dbg !256
  %v_fetch_local.sroa.122.14.extract.trunc = trunc nuw i32 %v_fetch_local.sroa.122.14.extract.shift to i16, !dbg !256
  %cond.1 = select i1 %cmp624, i32 %condval_2.sroa.7.0, i32 %condval_2.sroa.5.0, !dbg !257
  %399 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %400 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %399) #11, !dbg !263
  %xor.i.i1164.1 = xor i32 %400, 8, !dbg !264
  %401 = and i32 %400, -64, !dbg !265
  %and.i.i1165.1 = add nsw i32 %401, 64, !dbg !265
  %cmp.not.i.i1166.1 = icmp slt i32 %xor.i.i1164.1, %and.i.i1165.1, !dbg !266
  %cond.i.i1167.1 = select i1 %cmp.not.i.i1166.1, i32 %xor.i.i1164.1, i32 %400, !dbg !267
  %shl.i.i1168.1 = shl i32 %cond.i.i1167.1, 2, !dbg !268
  %402 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.1, i32 %cond.1), !dbg !269
  %v_fetch_local.sroa.162.16.extract.trunc1911 = trunc i32 %condval_2.sroa.0.0.1 to i16, !dbg !253
  %v_fetch_local.sroa.162.18.extract.shift = lshr i32 %condval_2.sroa.0.0.1, 16, !dbg !254
  %v_fetch_local.sroa.162.18.extract.trunc = trunc nuw i32 %v_fetch_local.sroa.162.18.extract.shift to i16, !dbg !254
  %v_fetch_local.sroa.242.24.extract.trunc2061 = trunc i32 %condval_2.sroa.6.0.1 to i16, !dbg !255
  %v_fetch_local.sroa.242.26.extract.shift = lshr i32 %condval_2.sroa.6.0.1, 16, !dbg !256
  %v_fetch_local.sroa.242.26.extract.trunc = trunc nuw i32 %v_fetch_local.sroa.242.26.extract.shift to i16, !dbg !256
  %cond.11336 = select i1 %cmp624, i32 %condval_2.sroa.6.0.1, i32 %condval_2.sroa.0.0.1, !dbg !257
  %403 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %404 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %403) #11, !dbg !263
  %xor.i.i1164.11337 = xor i32 %404, 8, !dbg !264
  %405 = and i32 %404, -64, !dbg !265
  %and.i.i1165.11338 = add nsw i32 %405, 64, !dbg !265
  %cmp.not.i.i1166.11339 = icmp slt i32 %xor.i.i1164.11337, %and.i.i1165.11338, !dbg !266
  %cond.i.i1167.11340 = select i1 %cmp.not.i.i1166.11339, i32 %xor.i.i1164.11337, i32 %404, !dbg !267
  %shl.i.i1168.11341 = shl i32 %cond.i.i1167.11340, 2, !dbg !268
  %406 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.11341, i32 %cond.11336), !dbg !269
  %v_fetch_local.sroa.202.20.extract.trunc = trunc i32 %condval_2.sroa.5.0.1 to i16, !dbg !253
  %v_fetch_local.sroa.202.22.extract.shift = lshr i32 %condval_2.sroa.5.0.1, 16, !dbg !254
  %v_fetch_local.sroa.202.22.extract.trunc = trunc nuw i32 %v_fetch_local.sroa.202.22.extract.shift to i16, !dbg !254
  %v_fetch_local.sroa.282.28.extract.trunc = trunc i32 %condval_2.sroa.7.0.1 to i16, !dbg !255
  %v_fetch_local.sroa.282.30.extract.shift = lshr i32 %condval_2.sroa.7.0.1, 16, !dbg !256
  %v_fetch_local.sroa.282.30.extract.trunc = trunc nuw i32 %v_fetch_local.sroa.282.30.extract.shift to i16, !dbg !256
  %cond.1.1 = select i1 %cmp624, i32 %condval_2.sroa.7.0.1, i32 %condval_2.sroa.5.0.1, !dbg !257
  %407 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %408 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %407) #11, !dbg !263
  %xor.i.i1164.1.1 = xor i32 %408, 8, !dbg !264
  %409 = and i32 %408, -64, !dbg !265
  %and.i.i1165.1.1 = add nsw i32 %409, 64, !dbg !265
  %cmp.not.i.i1166.1.1 = icmp slt i32 %xor.i.i1164.1.1, %and.i.i1165.1.1, !dbg !266
  %cond.i.i1167.1.1 = select i1 %cmp.not.i.i1166.1.1, i32 %xor.i.i1164.1.1, i32 %408, !dbg !267
  %shl.i.i1168.1.1 = shl i32 %cond.i.i1167.1.1, 2, !dbg !268
  %410 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.1.1, i32 %cond.1.1), !dbg !269
  %conv673 = trunc i32 %398 to i16, !dbg !270
  %conv681 = trunc i32 %406 to i16, !dbg !271
  %411 = select i1 %cmp624, i16 %v_fetch_local.sroa.0.0.extract.trunc, i16 %conv673, !dbg !272
  %412 = select i1 %cmp624, i16 %v_fetch_local.sroa.162.16.extract.trunc1911, i16 %conv681, !dbg !273
  %413 = select i1 %cmp624, i16 %conv673, i16 %v_fetch_local.sroa.82.8.extract.trunc1761, !dbg !274
  %414 = select i1 %cmp624, i16 %conv681, i16 %v_fetch_local.sroa.242.24.extract.trunc2061, !dbg !275
  %add729 = or disjoint i32 %mul723, %mul728, !dbg !276
  %415 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729, !dbg !277
  %add.ptr739.idx = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739 = getelementptr inbounds i8, ptr addrspace(3) %415, i32 %add.ptr739.idx, !dbg !277
  %v_column_local.sroa.6.0.insert.ext = zext i16 %414 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift = shl nuw i64 %v_column_local.sroa.6.0.insert.ext, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext = zext i16 %413 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert = or disjoint i64 %v_column_local.sroa.6.0.insert.shift, %v_column_local.sroa.5.0.insert.shift, !dbg !278
  %v_column_local.sroa.4.0.insert.ext = zext i16 %412 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert = or disjoint i64 %v_column_local.sroa.5.0.insert.insert, %v_column_local.sroa.4.0.insert.shift, !dbg !278
  %v_column_local.sroa.0.0.insert.ext = zext i16 %411 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert = or disjoint i64 %v_column_local.sroa.4.0.insert.insert, %v_column_local.sroa.0.0.insert.ext, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr739, align 8, !dbg !278
  %shr672.1 = lshr i32 %398, 16, !dbg !279
  %conv673.1 = trunc nuw i32 %shr672.1 to i16, !dbg !270
  %shr680.1 = lshr i32 %406, 16, !dbg !280
  %conv681.1 = trunc nuw i32 %shr680.1 to i16, !dbg !271
  %416 = select i1 %cmp624, i16 %v_fetch_local.sroa.0.2.extract.trunc, i16 %conv673.1, !dbg !272
  %417 = select i1 %cmp624, i16 %v_fetch_local.sroa.162.18.extract.trunc, i16 %conv681.1, !dbg !273
  %418 = select i1 %cmp624, i16 %conv673.1, i16 %v_fetch_local.sroa.82.10.extract.trunc, !dbg !274
  %419 = select i1 %cmp624, i16 %conv681.1, i16 %v_fetch_local.sroa.242.26.extract.trunc, !dbg !275
  %add724.1 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.1 = or disjoint i32 %add724.1, 256, !dbg !276
  %420 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.1, !dbg !277
  %xor735.1 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.1 = xor i32 %xor735.1, 8, !dbg !277
  %add.ptr739.1 = getelementptr inbounds i8, ptr addrspace(3) %420, i32 %add.ptr739.idx.1, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.1 = zext i16 %419 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.1 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.1, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.1 = zext i16 %418 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.1, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.1 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.1, %v_column_local.sroa.5.0.insert.shift.1, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.1 = zext i16 %417 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.1, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.1 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.1, %v_column_local.sroa.4.0.insert.shift.1, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.1 = zext i16 %416 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.1 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.1, %v_column_local.sroa.0.0.insert.ext.1, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr739.1, align 8, !dbg !278
  %conv673.2 = trunc i32 %402 to i16, !dbg !270
  %conv681.2 = trunc i32 %410 to i16, !dbg !271
  %421 = select i1 %cmp624, i16 %v_fetch_local.sroa.42.4.extract.trunc, i16 %conv673.2, !dbg !272
  %422 = select i1 %cmp624, i16 %v_fetch_local.sroa.202.20.extract.trunc, i16 %conv681.2, !dbg !273
  %423 = select i1 %cmp624, i16 %conv673.2, i16 %v_fetch_local.sroa.122.12.extract.trunc, !dbg !274
  %424 = select i1 %cmp624, i16 %conv681.2, i16 %v_fetch_local.sroa.282.28.extract.trunc, !dbg !275
  %add724.2 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.2 = or disjoint i32 %add724.2, 512, !dbg !276
  %425 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.2, !dbg !277
  %xor735.2 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.2 = xor i32 %xor735.2, 16, !dbg !277
  %add.ptr739.2 = getelementptr inbounds i8, ptr addrspace(3) %425, i32 %add.ptr739.idx.2, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.2 = zext i16 %424 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.2 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.2, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.2 = zext i16 %423 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.2, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.2 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.2, %v_column_local.sroa.5.0.insert.shift.2, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.2 = zext i16 %422 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.2, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.2 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.2, %v_column_local.sroa.4.0.insert.shift.2, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.2 = zext i16 %421 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.2 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.2, %v_column_local.sroa.0.0.insert.ext.2, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr739.2, align 8, !dbg !278
  %shr672.3 = lshr i32 %402, 16, !dbg !279
  %conv673.3 = trunc nuw i32 %shr672.3 to i16, !dbg !270
  %shr680.3 = lshr i32 %410, 16, !dbg !280
  %conv681.3 = trunc nuw i32 %shr680.3 to i16, !dbg !271
  %426 = select i1 %cmp624, i16 %v_fetch_local.sroa.42.6.extract.trunc, i16 %conv673.3, !dbg !272
  %427 = select i1 %cmp624, i16 %v_fetch_local.sroa.202.22.extract.trunc, i16 %conv681.3, !dbg !273
  %428 = select i1 %cmp624, i16 %conv673.3, i16 %v_fetch_local.sroa.122.14.extract.trunc, !dbg !274
  %429 = select i1 %cmp624, i16 %conv681.3, i16 %v_fetch_local.sroa.282.30.extract.trunc, !dbg !275
  %add724.3 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.3 = or disjoint i32 %add724.3, 768, !dbg !276
  %430 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.3, !dbg !277
  %xor735.3 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.3 = xor i32 %xor735.3, 24, !dbg !277
  %add.ptr739.3 = getelementptr inbounds i8, ptr addrspace(3) %430, i32 %add.ptr739.idx.3, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.3 = zext i16 %429 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.3 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.3, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.3 = zext i16 %428 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.3, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.3 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.3, %v_column_local.sroa.5.0.insert.shift.3, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.3 = zext i16 %427 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.3, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.3 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.3, %v_column_local.sroa.4.0.insert.shift.3, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.3 = zext i16 %426 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.3 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.3, %v_column_local.sroa.0.0.insert.ext.3, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr739.3, align 8, !dbg !278
  fence syncscope("warp") release, !dbg !281
  tail call void @llvm.mxc.barrier.warp(), !dbg !284
  fence syncscope("warp") acquire, !dbg !285
  %add756 = or disjoint i32 %mul749, %mul755, !dbg !286
  %431 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756, !dbg !287
  %add.ptr766.idx = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766 = getelementptr inbounds i8, ptr addrspace(3) %431, i32 %add.ptr766.idx, !dbg !287
  %432 = load <4 x half>, ptr addrspace(3) %add.ptr766, align 8, !dbg !288
  %add751.1 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.1 = or disjoint i32 %add751.1, 64, !dbg !286
  %433 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.1, !dbg !287
  %xor762.1 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.1 = xor i32 %xor762.1, 8, !dbg !287
  %add.ptr766.1 = getelementptr inbounds i8, ptr addrspace(3) %433, i32 %add.ptr766.idx.1, !dbg !287
  %434 = load <4 x half>, ptr addrspace(3) %add.ptr766.1, align 8, !dbg !288
  %add751.2 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.2 = or disjoint i32 %add751.2, 128, !dbg !286
  %435 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.2, !dbg !287
  %xor762.2 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.2 = xor i32 %xor762.2, 16, !dbg !287
  %add.ptr766.2 = getelementptr inbounds i8, ptr addrspace(3) %435, i32 %add.ptr766.idx.2, !dbg !287
  %436 = load <4 x half>, ptr addrspace(3) %add.ptr766.2, align 8, !dbg !288
  %add751.3 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.3 = or disjoint i32 %add751.3, 192, !dbg !286
  %437 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.3, !dbg !287
  %xor762.3 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.3 = xor i32 %xor762.3, 24, !dbg !287
  %add.ptr766.3 = getelementptr inbounds i8, ptr addrspace(3) %437, i32 %add.ptr766.idx.3, !dbg !287
  %438 = load <4 x half>, ptr addrspace(3) %add.ptr766.3, align 8, !dbg !288
  %439 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %432, <4 x half> %390, <4 x float> zeroinitializer), !dbg !289
  %440 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %434, <4 x half> %390, <4 x float> zeroinitializer), !dbg !289
  %441 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %436, <4 x half> %390, <4 x float> zeroinitializer), !dbg !289
  %442 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %438, <4 x half> %390, <4 x float> zeroinitializer), !dbg !289
  br label %if.end793, !dbg !290

if.end793:                                        ; preds = %if.end576.1, %if.end415.7
  %bc2766 = phi <4 x half> [ %64, %if.end415.7 ], [ %390, %if.end576.1 ], !dbg !83
  %output_acc.sroa.98.0 = phi <4 x float> [ zeroinitializer, %if.end415.7 ], [ %442, %if.end576.1 ], !dbg !83
  %output_acc.sroa.66.0 = phi <4 x float> [ zeroinitializer, %if.end415.7 ], [ %441, %if.end576.1 ], !dbg !83
  %output_acc.sroa.34.0 = phi <4 x float> [ zeroinitializer, %if.end415.7 ], [ %440, %if.end576.1 ], !dbg !83
  %output_acc.sroa.0.0 = phi <4 x float> [ zeroinitializer, %if.end415.7 ], [ %439, %if.end576.1 ], !dbg !83
  %443 = load i32, ptr addrspace(1) %arrayidx130.1, align 4, !dbg !186, !tbaa !30
  %mul444.1 = shl nsw i32 %443, 4, !dbg !187
  %cmp445.1 = icmp slt i32 %443, 0, !dbg !188
  %cmp448.not.1 = icmp sgt i32 %mul444.1, %1
  %or.cond1204.1 = select i1 %cmp445.1, i1 true, i1 %cmp448.not.1, !dbg !189
  br i1 %or.cond1204.1, label %if.end793.1, label %if.then449.1, !dbg !189

if.then449.1:                                     ; preds = %if.end793
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454.1 = icmp eq i32 %shr324, 1, !dbg !195
  br i1 %cmp454.1, label %if.then455.1, label %if.end464.1, !dbg !196

if.then455.1:                                     ; preds = %if.then449.1
  %sub460.1 = fsub contract float %max_cache.sroa.0.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461.1 = fmul contract float %sub460.1, 0x3FC7154760000000, !dbg !198
  %cmp.i.i1139.1 = fcmp contract olt float %mul461.1, -1.260000e+02, !dbg !199
  %cond.i.i1140.1 = select contract i1 %cmp.i.i1139.1, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i1141.1 = fadd contract float %mul461.1, %cond.i.i1140.1, !dbg !199
  %444 = tail call contract float @llvm.exp2.f32(float %add.i.i1141.1), !dbg !199
  %cond2.i.i1142.1 = select contract i1 %cmp.i.i1139.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i1143.1 = fmul contract float %cond2.i.i1142.1, %444, !dbg !199
  br label %if.end464.1, !dbg !201

if.end464.1:                                      ; preds = %if.then455.1, %if.then449.1
  %rescale.sroa.0.0.1 = phi float [ %mul.i.i1143.1, %if.then455.1 ], [ 0.000000e+00, %if.then449.1 ], !dbg !83
  %445 = bitcast float %rescale.sroa.0.0.1 to i32, !dbg !202
  %446 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %447 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %446) #11, !dbg !209
  %rem.i.i.1 = or disjoint i32 %and469, 16, !dbg !291
  %and.i.i1144.1 = and i32 %447, 1073741760, !dbg !210
  %add.i.i1145.1 = or disjoint i32 %and.i.i1144.1, %rem.i.i.1, !dbg !211
  %shl.i.i1146.1 = shl nuw i32 %add.i.i1145.1, 2, !dbg !212
  %448 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1146.1, i32 %445), !dbg !213
  %449 = bitcast i32 %448 to float, !dbg !214
  %450 = extractelement <4 x half> %106, i64 0, !dbg !215
  %conv.i1147.1 = fpext half %450 to float, !dbg !215
  %451 = extractelement <4 x half> %106, i64 1, !dbg !218
  %conv6.i.1 = fpext half %451 to float, !dbg !218
  %452 = extractelement <4 x half> %106, i64 2, !dbg !219
  %conv.i1149.1 = fpext half %452 to float, !dbg !219
  %453 = extractelement <4 x half> %106, i64 3, !dbg !221
  %conv6.i1151.1 = fpext half %453 to float, !dbg !221
  %mul494.1 = fmul contract float %449, %conv.i1147.1, !dbg !222
  %mul498.1 = fmul contract float %449, %conv6.i.1, !dbg !223
  %mul502.1 = fmul contract float %449, %conv.i1149.1, !dbg !224
  %mul506.1 = fmul contract float %449, %conv6.i1151.1, !dbg !225
  %454 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %455 = fptrunc float %mul494.1 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %454), !dbg !226, !noalias !230
  %456 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %457 = fptrunc float %mul498.1 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %456), !dbg !235, !noalias !230
  %458 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %459 = fptrunc float %mul502.1 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %458), !dbg !237, !noalias !241
  %460 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %461 = fptrunc float %mul506.1 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %460), !dbg !246, !noalias !241
  %462 = insertelement <4 x half> poison, half %455, i64 0, !dbg !248
  %463 = insertelement <4 x half> %462, half %457, i64 1, !dbg !248
  %464 = insertelement <4 x half> %463, half %459, i64 2, !dbg !248
  %465 = insertelement <4 x half> %464, half %461, i64 3, !dbg !248
  %shr529.1 = lshr exact i32 %mul444.1, 1
  %add530.1 = add nuw nsw i32 %shr529.1, %shr140
  %cmp531.1 = icmp ult i32 %add530.1, 512
  %conv541.1 = zext nneg i32 %mul444.1 to i64
  br i1 %cmp531.1, label %if.then532.11355, label %if.end576.11363, !dbg !249

if.then532.11355:                                 ; preds = %if.end464.1
  %466 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1241.11347 = shl nuw nsw i64 %conv541.1, 7, !dbg !250
  %467 = getelementptr inbounds i8, ptr addrspace(4) %466, i64 %.idx1241.11347, !dbg !250
  %condval_2.sroa.0.0.copyload.11348 = load i32, ptr addrspace(4) %467, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.11349 = getelementptr inbounds i8, ptr addrspace(4) %467, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload.11350 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.11349, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.11351 = getelementptr inbounds i8, ptr addrspace(4) %467, i64 8, !dbg !251
  %condval_2.sroa.6.0.copyload.11352 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.11351, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.11353 = getelementptr inbounds i8, ptr addrspace(4) %467, i64 12, !dbg !251
  %condval_2.sroa.7.0.copyload.11354 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.11353, align 4, !dbg !251, !tbaa !30
  br label %if.end576.11363, !dbg !252

if.end576.11363:                                  ; preds = %if.then532.11355, %if.end464.1
  %condval_2.sroa.0.0.11356 = phi i32 [ %condval_2.sroa.0.0.copyload.11348, %if.then532.11355 ], [ 0, %if.end464.1 ], !dbg !83
  %condval_2.sroa.5.0.11357 = phi i32 [ %condval_2.sroa.5.0.copyload.11350, %if.then532.11355 ], [ 0, %if.end464.1 ], !dbg !83
  %condval_2.sroa.6.0.11358 = phi i32 [ %condval_2.sroa.6.0.copyload.11352, %if.then532.11355 ], [ 0, %if.end464.1 ], !dbg !83
  %condval_2.sroa.7.0.11359 = phi i32 [ %condval_2.sroa.7.0.copyload.11354, %if.then532.11355 ], [ 0, %if.end464.1 ], !dbg !83
  br i1 %cmp531.1, label %if.then532.1.1, label %if.end576.1.1, !dbg !249

if.then532.1.1:                                   ; preds = %if.end576.11363
  %468 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1241.1.1 = shl nuw nsw i64 %conv541.1, 7, !dbg !250
  %469 = getelementptr inbounds i8, ptr addrspace(4) %468, i64 %.idx1241.1.1, !dbg !250
  %add.ptr552.1.1 = getelementptr inbounds i8, ptr addrspace(4) %469, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %add.ptr552.1.1, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %469, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.1, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %469, i64 136, !dbg !251
  %condval_2.sroa.6.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.1, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %469, i64 140, !dbg !251
  %condval_2.sroa.7.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.1, align 4, !dbg !251, !tbaa !30
  br label %if.end576.1.1, !dbg !252

if.end576.1.1:                                    ; preds = %if.then532.1.1, %if.end576.11363
  %condval_2.sroa.0.0.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1, %if.then532.1.1 ], [ 0, %if.end576.11363 ], !dbg !83
  %condval_2.sroa.5.0.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1, %if.then532.1.1 ], [ 0, %if.end576.11363 ], !dbg !83
  %condval_2.sroa.6.0.1.1 = phi i32 [ %condval_2.sroa.6.0.copyload.1.1, %if.then532.1.1 ], [ 0, %if.end576.11363 ], !dbg !83
  %condval_2.sroa.7.0.1.1 = phi i32 [ %condval_2.sroa.7.0.copyload.1.1, %if.then532.1.1 ], [ 0, %if.end576.11363 ], !dbg !83
  %v_fetch_local.sroa.0.0.extract.trunc1613 = trunc i32 %condval_2.sroa.0.0.11356 to i16, !dbg !253
  %v_fetch_local.sroa.0.2.extract.shift1644 = lshr i32 %condval_2.sroa.0.0.11356, 16, !dbg !254
  %v_fetch_local.sroa.0.2.extract.trunc1645 = trunc nuw i32 %v_fetch_local.sroa.0.2.extract.shift1644 to i16, !dbg !254
  %v_fetch_local.sroa.82.8.extract.trunc1763 = trunc i32 %condval_2.sroa.6.0.11358 to i16, !dbg !255
  %v_fetch_local.sroa.82.10.extract.shift1794 = lshr i32 %condval_2.sroa.6.0.11358, 16, !dbg !256
  %v_fetch_local.sroa.82.10.extract.trunc1795 = trunc nuw i32 %v_fetch_local.sroa.82.10.extract.shift1794 to i16, !dbg !256
  %cond.11379 = select i1 %cmp624, i32 %condval_2.sroa.6.0.11358, i32 %condval_2.sroa.0.0.11356, !dbg !257
  %470 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %471 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %470) #11, !dbg !263
  %xor.i.i1164.11380 = xor i32 %471, 8, !dbg !264
  %472 = and i32 %471, -64, !dbg !265
  %and.i.i1165.11381 = add nsw i32 %472, 64, !dbg !265
  %cmp.not.i.i1166.11382 = icmp slt i32 %xor.i.i1164.11380, %and.i.i1165.11381, !dbg !266
  %cond.i.i1167.11383 = select i1 %cmp.not.i.i1166.11382, i32 %xor.i.i1164.11380, i32 %471, !dbg !267
  %shl.i.i1168.11384 = shl i32 %cond.i.i1167.11383, 2, !dbg !268
  %473 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.11384, i32 %cond.11379), !dbg !269
  %v_fetch_local.sroa.42.4.extract.trunc1688 = trunc i32 %condval_2.sroa.5.0.11357 to i16, !dbg !253
  %v_fetch_local.sroa.42.6.extract.shift1719 = lshr i32 %condval_2.sroa.5.0.11357, 16, !dbg !254
  %v_fetch_local.sroa.42.6.extract.trunc1720 = trunc nuw i32 %v_fetch_local.sroa.42.6.extract.shift1719 to i16, !dbg !254
  %v_fetch_local.sroa.122.12.extract.trunc1838 = trunc i32 %condval_2.sroa.7.0.11359 to i16, !dbg !255
  %v_fetch_local.sroa.122.14.extract.shift1869 = lshr i32 %condval_2.sroa.7.0.11359, 16, !dbg !256
  %v_fetch_local.sroa.122.14.extract.trunc1870 = trunc nuw i32 %v_fetch_local.sroa.122.14.extract.shift1869 to i16, !dbg !256
  %cond.1.11401 = select i1 %cmp624, i32 %condval_2.sroa.7.0.11359, i32 %condval_2.sroa.5.0.11357, !dbg !257
  %474 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %475 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %474) #11, !dbg !263
  %xor.i.i1164.1.11402 = xor i32 %475, 8, !dbg !264
  %476 = and i32 %475, -64, !dbg !265
  %and.i.i1165.1.11403 = add nsw i32 %476, 64, !dbg !265
  %cmp.not.i.i1166.1.11404 = icmp slt i32 %xor.i.i1164.1.11402, %and.i.i1165.1.11403, !dbg !266
  %cond.i.i1167.1.11405 = select i1 %cmp.not.i.i1166.1.11404, i32 %xor.i.i1164.1.11402, i32 %475, !dbg !267
  %shl.i.i1168.1.11406 = shl i32 %cond.i.i1167.1.11405, 2, !dbg !268
  %477 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.1.11406, i32 %cond.1.11401), !dbg !269
  %v_fetch_local.sroa.162.16.extract.trunc1913 = trunc i32 %condval_2.sroa.0.0.1.1 to i16, !dbg !253
  %v_fetch_local.sroa.162.18.extract.shift1944 = lshr i32 %condval_2.sroa.0.0.1.1, 16, !dbg !254
  %v_fetch_local.sroa.162.18.extract.trunc1945 = trunc nuw i32 %v_fetch_local.sroa.162.18.extract.shift1944 to i16, !dbg !254
  %v_fetch_local.sroa.242.24.extract.trunc2063 = trunc i32 %condval_2.sroa.6.0.1.1 to i16, !dbg !255
  %v_fetch_local.sroa.242.26.extract.shift2094 = lshr i32 %condval_2.sroa.6.0.1.1, 16, !dbg !256
  %v_fetch_local.sroa.242.26.extract.trunc2095 = trunc nuw i32 %v_fetch_local.sroa.242.26.extract.shift2094 to i16, !dbg !256
  %cond.11336.1 = select i1 %cmp624, i32 %condval_2.sroa.6.0.1.1, i32 %condval_2.sroa.0.0.1.1, !dbg !257
  %478 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %479 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %478) #11, !dbg !263
  %xor.i.i1164.11337.1 = xor i32 %479, 8, !dbg !264
  %480 = and i32 %479, -64, !dbg !265
  %and.i.i1165.11338.1 = add nsw i32 %480, 64, !dbg !265
  %cmp.not.i.i1166.11339.1 = icmp slt i32 %xor.i.i1164.11337.1, %and.i.i1165.11338.1, !dbg !266
  %cond.i.i1167.11340.1 = select i1 %cmp.not.i.i1166.11339.1, i32 %xor.i.i1164.11337.1, i32 %479, !dbg !267
  %shl.i.i1168.11341.1 = shl i32 %cond.i.i1167.11340.1, 2, !dbg !268
  %481 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.11341.1, i32 %cond.11336.1), !dbg !269
  %v_fetch_local.sroa.202.20.extract.trunc1988 = trunc i32 %condval_2.sroa.5.0.1.1 to i16, !dbg !253
  %v_fetch_local.sroa.202.22.extract.shift2019 = lshr i32 %condval_2.sroa.5.0.1.1, 16, !dbg !254
  %v_fetch_local.sroa.202.22.extract.trunc2020 = trunc nuw i32 %v_fetch_local.sroa.202.22.extract.shift2019 to i16, !dbg !254
  %v_fetch_local.sroa.282.28.extract.trunc2138 = trunc i32 %condval_2.sroa.7.0.1.1 to i16, !dbg !255
  %v_fetch_local.sroa.282.30.extract.shift2169 = lshr i32 %condval_2.sroa.7.0.1.1, 16, !dbg !256
  %v_fetch_local.sroa.282.30.extract.trunc2170 = trunc nuw i32 %v_fetch_local.sroa.282.30.extract.shift2169 to i16, !dbg !256
  %cond.1.1.1 = select i1 %cmp624, i32 %condval_2.sroa.7.0.1.1, i32 %condval_2.sroa.5.0.1.1, !dbg !257
  %482 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %483 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %482) #11, !dbg !263
  %xor.i.i1164.1.1.1 = xor i32 %483, 8, !dbg !264
  %484 = and i32 %483, -64, !dbg !265
  %and.i.i1165.1.1.1 = add nsw i32 %484, 64, !dbg !265
  %cmp.not.i.i1166.1.1.1 = icmp slt i32 %xor.i.i1164.1.1.1, %and.i.i1165.1.1.1, !dbg !266
  %cond.i.i1167.1.1.1 = select i1 %cmp.not.i.i1166.1.1.1, i32 %xor.i.i1164.1.1.1, i32 %483, !dbg !267
  %shl.i.i1168.1.1.1 = shl i32 %cond.i.i1167.1.1.1, 2, !dbg !268
  %485 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.1.1.1, i32 %cond.1.1.1), !dbg !269
  %conv673.11416 = trunc i32 %473 to i16, !dbg !270
  %conv681.11418 = trunc i32 %481 to i16, !dbg !271
  %486 = select i1 %cmp624, i16 %v_fetch_local.sroa.0.0.extract.trunc1613, i16 %conv673.11416, !dbg !272
  %487 = select i1 %cmp624, i16 %v_fetch_local.sroa.162.16.extract.trunc1913, i16 %conv681.11418, !dbg !273
  %488 = select i1 %cmp624, i16 %conv673.11416, i16 %v_fetch_local.sroa.82.8.extract.trunc1763, !dbg !274
  %489 = select i1 %cmp624, i16 %conv681.11418, i16 %v_fetch_local.sroa.242.24.extract.trunc2063, !dbg !275
  %add729.11419 = or disjoint i32 %mul723, %mul728, !dbg !276
  %490 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.11419, !dbg !277
  %add.ptr739.idx.11420 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.11421 = getelementptr inbounds i8, ptr addrspace(3) %490, i32 %add.ptr739.idx.11420, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.11422 = zext i16 %489 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.11423 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.11422, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.11424 = zext i16 %488 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.11425 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.11424, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.11426 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.11423, %v_column_local.sroa.5.0.insert.shift.11425, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.11427 = zext i16 %487 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.11428 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.11427, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.11429 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.11426, %v_column_local.sroa.4.0.insert.shift.11428, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.11430 = zext i16 %486 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.11431 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.11429, %v_column_local.sroa.0.0.insert.ext.11430, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.11431, ptr addrspace(3) %add.ptr739.11421, align 8, !dbg !278
  %shr672.1.1 = lshr i32 %473, 16, !dbg !279
  %conv673.1.1 = trunc nuw i32 %shr672.1.1 to i16, !dbg !270
  %shr680.1.1 = lshr i32 %481, 16, !dbg !280
  %conv681.1.1 = trunc nuw i32 %shr680.1.1 to i16, !dbg !271
  %491 = select i1 %cmp624, i16 %v_fetch_local.sroa.0.2.extract.trunc1645, i16 %conv673.1.1, !dbg !272
  %492 = select i1 %cmp624, i16 %v_fetch_local.sroa.162.18.extract.trunc1945, i16 %conv681.1.1, !dbg !273
  %493 = select i1 %cmp624, i16 %conv673.1.1, i16 %v_fetch_local.sroa.82.10.extract.trunc1795, !dbg !274
  %494 = select i1 %cmp624, i16 %conv681.1.1, i16 %v_fetch_local.sroa.242.26.extract.trunc2095, !dbg !275
  %add724.1.1 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.1.1 = or disjoint i32 %add724.1.1, 256, !dbg !276
  %495 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.1.1, !dbg !277
  %xor735.1.1 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.1.1 = xor i32 %xor735.1.1, 8, !dbg !277
  %add.ptr739.1.1 = getelementptr inbounds i8, ptr addrspace(3) %495, i32 %add.ptr739.idx.1.1, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.1.1 = zext i16 %494 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.1.1 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.1.1, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.1.1 = zext i16 %493 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.1.1 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.1.1, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.1.1 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.1.1, %v_column_local.sroa.5.0.insert.shift.1.1, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.1.1 = zext i16 %492 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.1.1 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.1.1, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.1.1 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.1.1, %v_column_local.sroa.4.0.insert.shift.1.1, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.1.1 = zext i16 %491 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.1.1 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.1.1, %v_column_local.sroa.0.0.insert.ext.1.1, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.1.1, ptr addrspace(3) %add.ptr739.1.1, align 8, !dbg !278
  %conv673.2.1 = trunc i32 %477 to i16, !dbg !270
  %conv681.2.1 = trunc i32 %485 to i16, !dbg !271
  %496 = select i1 %cmp624, i16 %v_fetch_local.sroa.42.4.extract.trunc1688, i16 %conv673.2.1, !dbg !272
  %497 = select i1 %cmp624, i16 %v_fetch_local.sroa.202.20.extract.trunc1988, i16 %conv681.2.1, !dbg !273
  %498 = select i1 %cmp624, i16 %conv673.2.1, i16 %v_fetch_local.sroa.122.12.extract.trunc1838, !dbg !274
  %499 = select i1 %cmp624, i16 %conv681.2.1, i16 %v_fetch_local.sroa.282.28.extract.trunc2138, !dbg !275
  %add724.2.1 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.2.1 = or disjoint i32 %add724.2.1, 512, !dbg !276
  %500 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.2.1, !dbg !277
  %xor735.2.1 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.2.1 = xor i32 %xor735.2.1, 16, !dbg !277
  %add.ptr739.2.1 = getelementptr inbounds i8, ptr addrspace(3) %500, i32 %add.ptr739.idx.2.1, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.2.1 = zext i16 %499 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.2.1 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.2.1, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.2.1 = zext i16 %498 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.2.1 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.2.1, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.2.1 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.2.1, %v_column_local.sroa.5.0.insert.shift.2.1, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.2.1 = zext i16 %497 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.2.1 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.2.1, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.2.1 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.2.1, %v_column_local.sroa.4.0.insert.shift.2.1, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.2.1 = zext i16 %496 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.2.1 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.2.1, %v_column_local.sroa.0.0.insert.ext.2.1, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.2.1, ptr addrspace(3) %add.ptr739.2.1, align 8, !dbg !278
  %shr672.3.1 = lshr i32 %477, 16, !dbg !279
  %conv673.3.1 = trunc nuw i32 %shr672.3.1 to i16, !dbg !270
  %shr680.3.1 = lshr i32 %485, 16, !dbg !280
  %conv681.3.1 = trunc nuw i32 %shr680.3.1 to i16, !dbg !271
  %501 = select i1 %cmp624, i16 %v_fetch_local.sroa.42.6.extract.trunc1720, i16 %conv673.3.1, !dbg !272
  %502 = select i1 %cmp624, i16 %v_fetch_local.sroa.202.22.extract.trunc2020, i16 %conv681.3.1, !dbg !273
  %503 = select i1 %cmp624, i16 %conv673.3.1, i16 %v_fetch_local.sroa.122.14.extract.trunc1870, !dbg !274
  %504 = select i1 %cmp624, i16 %conv681.3.1, i16 %v_fetch_local.sroa.282.30.extract.trunc2170, !dbg !275
  %add724.3.1 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.3.1 = or disjoint i32 %add724.3.1, 768, !dbg !276
  %505 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.3.1, !dbg !277
  %xor735.3.1 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.3.1 = xor i32 %xor735.3.1, 24, !dbg !277
  %add.ptr739.3.1 = getelementptr inbounds i8, ptr addrspace(3) %505, i32 %add.ptr739.idx.3.1, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.3.1 = zext i16 %504 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.3.1 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.3.1, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.3.1 = zext i16 %503 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.3.1 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.3.1, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.3.1 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.3.1, %v_column_local.sroa.5.0.insert.shift.3.1, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.3.1 = zext i16 %502 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.3.1 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.3.1, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.3.1 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.3.1, %v_column_local.sroa.4.0.insert.shift.3.1, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.3.1 = zext i16 %501 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.3.1 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.3.1, %v_column_local.sroa.0.0.insert.ext.3.1, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.3.1, ptr addrspace(3) %add.ptr739.3.1, align 8, !dbg !278
  fence syncscope("warp") release, !dbg !281
  tail call void @llvm.mxc.barrier.warp(), !dbg !284
  fence syncscope("warp") acquire, !dbg !285
  %add756.11432 = or disjoint i32 %mul749, %mul755, !dbg !286
  %506 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.11432, !dbg !287
  %add.ptr766.idx.11433 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.11434 = getelementptr inbounds i8, ptr addrspace(3) %506, i32 %add.ptr766.idx.11433, !dbg !287
  %507 = load <4 x half>, ptr addrspace(3) %add.ptr766.11434, align 8, !dbg !288
  %add751.1.1 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.1.1 = or disjoint i32 %add751.1.1, 64, !dbg !286
  %508 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.1.1, !dbg !287
  %xor762.1.1 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.1.1 = xor i32 %xor762.1.1, 8, !dbg !287
  %add.ptr766.1.1 = getelementptr inbounds i8, ptr addrspace(3) %508, i32 %add.ptr766.idx.1.1, !dbg !287
  %509 = load <4 x half>, ptr addrspace(3) %add.ptr766.1.1, align 8, !dbg !288
  %add751.2.1 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.2.1 = or disjoint i32 %add751.2.1, 128, !dbg !286
  %510 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.2.1, !dbg !287
  %xor762.2.1 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.2.1 = xor i32 %xor762.2.1, 16, !dbg !287
  %add.ptr766.2.1 = getelementptr inbounds i8, ptr addrspace(3) %510, i32 %add.ptr766.idx.2.1, !dbg !287
  %511 = load <4 x half>, ptr addrspace(3) %add.ptr766.2.1, align 8, !dbg !288
  %add751.3.1 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.3.1 = or disjoint i32 %add751.3.1, 192, !dbg !286
  %512 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.3.1, !dbg !287
  %xor762.3.1 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.3.1 = xor i32 %xor762.3.1, 24, !dbg !287
  %add.ptr766.3.1 = getelementptr inbounds i8, ptr addrspace(3) %512, i32 %add.ptr766.idx.3.1, !dbg !287
  %513 = load <4 x half>, ptr addrspace(3) %add.ptr766.3.1, align 8, !dbg !288
  %514 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %507, <4 x half> %465, <4 x float> %output_acc.sroa.0.0), !dbg !289
  %515 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %509, <4 x half> %465, <4 x float> %output_acc.sroa.34.0), !dbg !289
  %516 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %511, <4 x half> %465, <4 x float> %output_acc.sroa.66.0), !dbg !289
  %517 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %513, <4 x half> %465, <4 x float> %output_acc.sroa.98.0), !dbg !289
  br label %if.end793.1, !dbg !290

if.end793.1:                                      ; preds = %if.end576.1.1, %if.end793
  %bc2770 = phi <4 x half> [ %106, %if.end793 ], [ %465, %if.end576.1.1 ], !dbg !83
  %output_acc.sroa.98.1 = phi <4 x float> [ %output_acc.sroa.98.0, %if.end793 ], [ %517, %if.end576.1.1 ], !dbg !83
  %output_acc.sroa.66.1 = phi <4 x float> [ %output_acc.sroa.66.0, %if.end793 ], [ %516, %if.end576.1.1 ], !dbg !83
  %output_acc.sroa.34.1 = phi <4 x float> [ %output_acc.sroa.34.0, %if.end793 ], [ %515, %if.end576.1.1 ], !dbg !83
  %output_acc.sroa.0.1 = phi <4 x float> [ %output_acc.sroa.0.0, %if.end793 ], [ %514, %if.end576.1.1 ], !dbg !83
  %518 = load i32, ptr addrspace(1) %arrayidx130.2, align 4, !dbg !186, !tbaa !30
  %mul444.2 = shl nsw i32 %518, 4, !dbg !187
  %cmp445.2 = icmp slt i32 %518, 0, !dbg !188
  %cmp448.not.2 = icmp sgt i32 %mul444.2, %1
  %or.cond1204.2 = select i1 %cmp445.2, i1 true, i1 %cmp448.not.2, !dbg !189
  br i1 %or.cond1204.2, label %if.end793.2, label %if.then449.2, !dbg !189

if.then449.2:                                     ; preds = %if.end793.1
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454.2 = icmp eq i32 %shr324, 2, !dbg !195
  br i1 %cmp454.2, label %if.then455.2, label %if.end464.2, !dbg !196

if.then455.2:                                     ; preds = %if.then449.2
  %sub460.2 = fsub contract float %max_cache.sroa.0.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461.2 = fmul contract float %sub460.2, 0x3FC7154760000000, !dbg !198
  %cmp.i.i1139.2 = fcmp contract olt float %mul461.2, -1.260000e+02, !dbg !199
  %cond.i.i1140.2 = select contract i1 %cmp.i.i1139.2, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i1141.2 = fadd contract float %mul461.2, %cond.i.i1140.2, !dbg !199
  %519 = tail call contract float @llvm.exp2.f32(float %add.i.i1141.2), !dbg !199
  %cond2.i.i1142.2 = select contract i1 %cmp.i.i1139.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i1143.2 = fmul contract float %cond2.i.i1142.2, %519, !dbg !199
  br label %if.end464.2, !dbg !201

if.end464.2:                                      ; preds = %if.then455.2, %if.then449.2
  %rescale.sroa.0.0.2 = phi float [ %mul.i.i1143.2, %if.then455.2 ], [ 0.000000e+00, %if.then449.2 ], !dbg !83
  %520 = bitcast float %rescale.sroa.0.0.2 to i32, !dbg !202
  %521 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %522 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %521) #11, !dbg !209
  %rem.i.i.2 = or disjoint i32 %and469, 32, !dbg !291
  %and.i.i1144.2 = and i32 %522, 1073741760, !dbg !210
  %add.i.i1145.2 = or disjoint i32 %and.i.i1144.2, %rem.i.i.2, !dbg !211
  %shl.i.i1146.2 = shl nuw i32 %add.i.i1145.2, 2, !dbg !212
  %523 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1146.2, i32 %520), !dbg !213
  %524 = bitcast i32 %523 to float, !dbg !214
  %525 = extractelement <4 x half> %148, i64 0, !dbg !215
  %conv.i1147.2 = fpext half %525 to float, !dbg !215
  %526 = extractelement <4 x half> %148, i64 1, !dbg !218
  %conv6.i.2 = fpext half %526 to float, !dbg !218
  %527 = extractelement <4 x half> %148, i64 2, !dbg !219
  %conv.i1149.2 = fpext half %527 to float, !dbg !219
  %528 = extractelement <4 x half> %148, i64 3, !dbg !221
  %conv6.i1151.2 = fpext half %528 to float, !dbg !221
  %mul494.2 = fmul contract float %524, %conv.i1147.2, !dbg !222
  %mul498.2 = fmul contract float %524, %conv6.i.2, !dbg !223
  %mul502.2 = fmul contract float %524, %conv.i1149.2, !dbg !224
  %mul506.2 = fmul contract float %524, %conv6.i1151.2, !dbg !225
  %529 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %530 = fptrunc float %mul494.2 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %529), !dbg !226, !noalias !230
  %531 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %532 = fptrunc float %mul498.2 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %531), !dbg !235, !noalias !230
  %533 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %534 = fptrunc float %mul502.2 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %533), !dbg !237, !noalias !241
  %535 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %536 = fptrunc float %mul506.2 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %535), !dbg !246, !noalias !241
  %537 = insertelement <4 x half> poison, half %530, i64 0, !dbg !248
  %538 = insertelement <4 x half> %537, half %532, i64 1, !dbg !248
  %539 = insertelement <4 x half> %538, half %534, i64 2, !dbg !248
  %540 = insertelement <4 x half> %539, half %536, i64 3, !dbg !248
  %shr529.2 = lshr exact i32 %mul444.2, 1
  %add530.2 = add nuw nsw i32 %shr529.2, %shr140
  %cmp531.2 = icmp ult i32 %add530.2, 512
  %conv541.2 = zext nneg i32 %mul444.2 to i64
  br i1 %cmp531.2, label %if.then532.2, label %if.end576.2, !dbg !249

if.then532.2:                                     ; preds = %if.end464.2
  %541 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1241.2 = shl nuw nsw i64 %conv541.2, 7, !dbg !250
  %542 = getelementptr inbounds i8, ptr addrspace(4) %541, i64 %.idx1241.2, !dbg !250
  %condval_2.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %542, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %542, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.2, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %542, i64 8, !dbg !251
  %condval_2.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.2, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %542, i64 12, !dbg !251
  %condval_2.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.2, align 4, !dbg !251, !tbaa !30
  br label %if.end576.2, !dbg !252

if.end576.2:                                      ; preds = %if.then532.2, %if.end464.2
  %condval_2.sroa.0.0.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2, %if.then532.2 ], [ 0, %if.end464.2 ], !dbg !83
  %condval_2.sroa.5.0.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2, %if.then532.2 ], [ 0, %if.end464.2 ], !dbg !83
  %condval_2.sroa.6.0.2 = phi i32 [ %condval_2.sroa.6.0.copyload.2, %if.then532.2 ], [ 0, %if.end464.2 ], !dbg !83
  %condval_2.sroa.7.0.2 = phi i32 [ %condval_2.sroa.7.0.copyload.2, %if.then532.2 ], [ 0, %if.end464.2 ], !dbg !83
  br i1 %cmp531.2, label %if.then532.1.2, label %if.end576.1.2, !dbg !249

if.then532.1.2:                                   ; preds = %if.end576.2
  %543 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1241.1.2 = shl nuw nsw i64 %conv541.2, 7, !dbg !250
  %544 = getelementptr inbounds i8, ptr addrspace(4) %543, i64 %.idx1241.1.2, !dbg !250
  %add.ptr552.1.2 = getelementptr inbounds i8, ptr addrspace(4) %544, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %add.ptr552.1.2, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %544, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.2, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %544, i64 136, !dbg !251
  %condval_2.sroa.6.0.copyload.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.2, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %544, i64 140, !dbg !251
  %condval_2.sroa.7.0.copyload.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.2, align 4, !dbg !251, !tbaa !30
  br label %if.end576.1.2, !dbg !252

if.end576.1.2:                                    ; preds = %if.then532.1.2, %if.end576.2
  %condval_2.sroa.0.0.1.2 = phi i32 [ %condval_2.sroa.0.0.copyload.1.2, %if.then532.1.2 ], [ 0, %if.end576.2 ], !dbg !83
  %condval_2.sroa.5.0.1.2 = phi i32 [ %condval_2.sroa.5.0.copyload.1.2, %if.then532.1.2 ], [ 0, %if.end576.2 ], !dbg !83
  %condval_2.sroa.6.0.1.2 = phi i32 [ %condval_2.sroa.6.0.copyload.1.2, %if.then532.1.2 ], [ 0, %if.end576.2 ], !dbg !83
  %condval_2.sroa.7.0.1.2 = phi i32 [ %condval_2.sroa.7.0.copyload.1.2, %if.then532.1.2 ], [ 0, %if.end576.2 ], !dbg !83
  %v_fetch_local.sroa.0.0.extract.trunc1617 = trunc i32 %condval_2.sroa.0.0.2 to i16, !dbg !253
  %v_fetch_local.sroa.0.2.extract.shift1650 = lshr i32 %condval_2.sroa.0.0.2, 16, !dbg !254
  %v_fetch_local.sroa.0.2.extract.trunc1651 = trunc nuw i32 %v_fetch_local.sroa.0.2.extract.shift1650 to i16, !dbg !254
  %v_fetch_local.sroa.82.8.extract.trunc1767 = trunc i32 %condval_2.sroa.6.0.2 to i16, !dbg !255
  %v_fetch_local.sroa.82.10.extract.shift1800 = lshr i32 %condval_2.sroa.6.0.2, 16, !dbg !256
  %v_fetch_local.sroa.82.10.extract.trunc1801 = trunc nuw i32 %v_fetch_local.sroa.82.10.extract.shift1800 to i16, !dbg !256
  %cond.2 = select i1 %cmp624, i32 %condval_2.sroa.6.0.2, i32 %condval_2.sroa.0.0.2, !dbg !257
  %545 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %546 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %545) #11, !dbg !263
  %xor.i.i1164.2 = xor i32 %546, 8, !dbg !264
  %547 = and i32 %546, -64, !dbg !265
  %and.i.i1165.2 = add nsw i32 %547, 64, !dbg !265
  %cmp.not.i.i1166.2 = icmp slt i32 %xor.i.i1164.2, %and.i.i1165.2, !dbg !266
  %cond.i.i1167.2 = select i1 %cmp.not.i.i1166.2, i32 %xor.i.i1164.2, i32 %546, !dbg !267
  %shl.i.i1168.2 = shl i32 %cond.i.i1167.2, 2, !dbg !268
  %548 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.2, i32 %cond.2), !dbg !269
  %v_fetch_local.sroa.42.4.extract.trunc1692 = trunc i32 %condval_2.sroa.5.0.2 to i16, !dbg !253
  %v_fetch_local.sroa.42.6.extract.shift1725 = lshr i32 %condval_2.sroa.5.0.2, 16, !dbg !254
  %v_fetch_local.sroa.42.6.extract.trunc1726 = trunc nuw i32 %v_fetch_local.sroa.42.6.extract.shift1725 to i16, !dbg !254
  %v_fetch_local.sroa.122.12.extract.trunc1842 = trunc i32 %condval_2.sroa.7.0.2 to i16, !dbg !255
  %v_fetch_local.sroa.122.14.extract.shift1875 = lshr i32 %condval_2.sroa.7.0.2, 16, !dbg !256
  %v_fetch_local.sroa.122.14.extract.trunc1876 = trunc nuw i32 %v_fetch_local.sroa.122.14.extract.shift1875 to i16, !dbg !256
  %cond.1.2 = select i1 %cmp624, i32 %condval_2.sroa.7.0.2, i32 %condval_2.sroa.5.0.2, !dbg !257
  %549 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %550 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %549) #11, !dbg !263
  %xor.i.i1164.1.2 = xor i32 %550, 8, !dbg !264
  %551 = and i32 %550, -64, !dbg !265
  %and.i.i1165.1.2 = add nsw i32 %551, 64, !dbg !265
  %cmp.not.i.i1166.1.2 = icmp slt i32 %xor.i.i1164.1.2, %and.i.i1165.1.2, !dbg !266
  %cond.i.i1167.1.2 = select i1 %cmp.not.i.i1166.1.2, i32 %xor.i.i1164.1.2, i32 %550, !dbg !267
  %shl.i.i1168.1.2 = shl i32 %cond.i.i1167.1.2, 2, !dbg !268
  %552 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.1.2, i32 %cond.1.2), !dbg !269
  %v_fetch_local.sroa.162.16.extract.trunc1917 = trunc i32 %condval_2.sroa.0.0.1.2 to i16, !dbg !253
  %v_fetch_local.sroa.162.18.extract.shift1950 = lshr i32 %condval_2.sroa.0.0.1.2, 16, !dbg !254
  %v_fetch_local.sroa.162.18.extract.trunc1951 = trunc nuw i32 %v_fetch_local.sroa.162.18.extract.shift1950 to i16, !dbg !254
  %v_fetch_local.sroa.242.24.extract.trunc2067 = trunc i32 %condval_2.sroa.6.0.1.2 to i16, !dbg !255
  %v_fetch_local.sroa.242.26.extract.shift2100 = lshr i32 %condval_2.sroa.6.0.1.2, 16, !dbg !256
  %v_fetch_local.sroa.242.26.extract.trunc2101 = trunc nuw i32 %v_fetch_local.sroa.242.26.extract.shift2100 to i16, !dbg !256
  %cond.11336.2 = select i1 %cmp624, i32 %condval_2.sroa.6.0.1.2, i32 %condval_2.sroa.0.0.1.2, !dbg !257
  %553 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %554 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %553) #11, !dbg !263
  %xor.i.i1164.11337.2 = xor i32 %554, 8, !dbg !264
  %555 = and i32 %554, -64, !dbg !265
  %and.i.i1165.11338.2 = add nsw i32 %555, 64, !dbg !265
  %cmp.not.i.i1166.11339.2 = icmp slt i32 %xor.i.i1164.11337.2, %and.i.i1165.11338.2, !dbg !266
  %cond.i.i1167.11340.2 = select i1 %cmp.not.i.i1166.11339.2, i32 %xor.i.i1164.11337.2, i32 %554, !dbg !267
  %shl.i.i1168.11341.2 = shl i32 %cond.i.i1167.11340.2, 2, !dbg !268
  %556 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.11341.2, i32 %cond.11336.2), !dbg !269
  %v_fetch_local.sroa.202.20.extract.trunc1992 = trunc i32 %condval_2.sroa.5.0.1.2 to i16, !dbg !253
  %v_fetch_local.sroa.202.22.extract.shift2025 = lshr i32 %condval_2.sroa.5.0.1.2, 16, !dbg !254
  %v_fetch_local.sroa.202.22.extract.trunc2026 = trunc nuw i32 %v_fetch_local.sroa.202.22.extract.shift2025 to i16, !dbg !254
  %v_fetch_local.sroa.282.28.extract.trunc2142 = trunc i32 %condval_2.sroa.7.0.1.2 to i16, !dbg !255
  %v_fetch_local.sroa.282.30.extract.shift2175 = lshr i32 %condval_2.sroa.7.0.1.2, 16, !dbg !256
  %v_fetch_local.sroa.282.30.extract.trunc2176 = trunc nuw i32 %v_fetch_local.sroa.282.30.extract.shift2175 to i16, !dbg !256
  %cond.1.1.2 = select i1 %cmp624, i32 %condval_2.sroa.7.0.1.2, i32 %condval_2.sroa.5.0.1.2, !dbg !257
  %557 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %558 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %557) #11, !dbg !263
  %xor.i.i1164.1.1.2 = xor i32 %558, 8, !dbg !264
  %559 = and i32 %558, -64, !dbg !265
  %and.i.i1165.1.1.2 = add nsw i32 %559, 64, !dbg !265
  %cmp.not.i.i1166.1.1.2 = icmp slt i32 %xor.i.i1164.1.1.2, %and.i.i1165.1.1.2, !dbg !266
  %cond.i.i1167.1.1.2 = select i1 %cmp.not.i.i1166.1.1.2, i32 %xor.i.i1164.1.1.2, i32 %558, !dbg !267
  %shl.i.i1168.1.1.2 = shl i32 %cond.i.i1167.1.1.2, 2, !dbg !268
  %560 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.1.1.2, i32 %cond.1.1.2), !dbg !269
  %conv673.21442 = trunc i32 %548 to i16, !dbg !270
  %conv681.21444 = trunc i32 %556 to i16, !dbg !271
  %561 = select i1 %cmp624, i16 %v_fetch_local.sroa.0.0.extract.trunc1617, i16 %conv673.21442, !dbg !272
  %562 = select i1 %cmp624, i16 %v_fetch_local.sroa.162.16.extract.trunc1917, i16 %conv681.21444, !dbg !273
  %563 = select i1 %cmp624, i16 %conv673.21442, i16 %v_fetch_local.sroa.82.8.extract.trunc1767, !dbg !274
  %564 = select i1 %cmp624, i16 %conv681.21444, i16 %v_fetch_local.sroa.242.24.extract.trunc2067, !dbg !275
  %add729.21445 = or disjoint i32 %mul723, %mul728, !dbg !276
  %565 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.21445, !dbg !277
  %add.ptr739.idx.21446 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.21447 = getelementptr inbounds i8, ptr addrspace(3) %565, i32 %add.ptr739.idx.21446, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.21448 = zext i16 %564 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.21449 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.21448, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.21450 = zext i16 %563 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.21451 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.21450, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.21452 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.21449, %v_column_local.sroa.5.0.insert.shift.21451, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.21453 = zext i16 %562 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.21454 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.21453, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.21455 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.21452, %v_column_local.sroa.4.0.insert.shift.21454, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.21456 = zext i16 %561 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.21457 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.21455, %v_column_local.sroa.0.0.insert.ext.21456, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.21457, ptr addrspace(3) %add.ptr739.21447, align 8, !dbg !278
  %shr672.1.2 = lshr i32 %548, 16, !dbg !279
  %conv673.1.2 = trunc nuw i32 %shr672.1.2 to i16, !dbg !270
  %shr680.1.2 = lshr i32 %556, 16, !dbg !280
  %conv681.1.2 = trunc nuw i32 %shr680.1.2 to i16, !dbg !271
  %566 = select i1 %cmp624, i16 %v_fetch_local.sroa.0.2.extract.trunc1651, i16 %conv673.1.2, !dbg !272
  %567 = select i1 %cmp624, i16 %v_fetch_local.sroa.162.18.extract.trunc1951, i16 %conv681.1.2, !dbg !273
  %568 = select i1 %cmp624, i16 %conv673.1.2, i16 %v_fetch_local.sroa.82.10.extract.trunc1801, !dbg !274
  %569 = select i1 %cmp624, i16 %conv681.1.2, i16 %v_fetch_local.sroa.242.26.extract.trunc2101, !dbg !275
  %add724.1.2 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.1.2 = or disjoint i32 %add724.1.2, 256, !dbg !276
  %570 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.1.2, !dbg !277
  %xor735.1.2 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.1.2 = xor i32 %xor735.1.2, 8, !dbg !277
  %add.ptr739.1.2 = getelementptr inbounds i8, ptr addrspace(3) %570, i32 %add.ptr739.idx.1.2, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.1.2 = zext i16 %569 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.1.2 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.1.2, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.1.2 = zext i16 %568 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.1.2 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.1.2, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.1.2 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.1.2, %v_column_local.sroa.5.0.insert.shift.1.2, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.1.2 = zext i16 %567 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.1.2 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.1.2, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.1.2 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.1.2, %v_column_local.sroa.4.0.insert.shift.1.2, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.1.2 = zext i16 %566 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.1.2 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.1.2, %v_column_local.sroa.0.0.insert.ext.1.2, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.1.2, ptr addrspace(3) %add.ptr739.1.2, align 8, !dbg !278
  %conv673.2.2 = trunc i32 %552 to i16, !dbg !270
  %conv681.2.2 = trunc i32 %560 to i16, !dbg !271
  %571 = select i1 %cmp624, i16 %v_fetch_local.sroa.42.4.extract.trunc1692, i16 %conv673.2.2, !dbg !272
  %572 = select i1 %cmp624, i16 %v_fetch_local.sroa.202.20.extract.trunc1992, i16 %conv681.2.2, !dbg !273
  %573 = select i1 %cmp624, i16 %conv673.2.2, i16 %v_fetch_local.sroa.122.12.extract.trunc1842, !dbg !274
  %574 = select i1 %cmp624, i16 %conv681.2.2, i16 %v_fetch_local.sroa.282.28.extract.trunc2142, !dbg !275
  %add724.2.2 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.2.2 = or disjoint i32 %add724.2.2, 512, !dbg !276
  %575 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.2.2, !dbg !277
  %xor735.2.2 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.2.2 = xor i32 %xor735.2.2, 16, !dbg !277
  %add.ptr739.2.2 = getelementptr inbounds i8, ptr addrspace(3) %575, i32 %add.ptr739.idx.2.2, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.2.2 = zext i16 %574 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.2.2 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.2.2, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.2.2 = zext i16 %573 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.2.2 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.2.2, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.2.2 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.2.2, %v_column_local.sroa.5.0.insert.shift.2.2, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.2.2 = zext i16 %572 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.2.2 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.2.2, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.2.2 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.2.2, %v_column_local.sroa.4.0.insert.shift.2.2, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.2.2 = zext i16 %571 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.2.2 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.2.2, %v_column_local.sroa.0.0.insert.ext.2.2, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.2.2, ptr addrspace(3) %add.ptr739.2.2, align 8, !dbg !278
  %shr672.3.2 = lshr i32 %552, 16, !dbg !279
  %conv673.3.2 = trunc nuw i32 %shr672.3.2 to i16, !dbg !270
  %shr680.3.2 = lshr i32 %560, 16, !dbg !280
  %conv681.3.2 = trunc nuw i32 %shr680.3.2 to i16, !dbg !271
  %576 = select i1 %cmp624, i16 %v_fetch_local.sroa.42.6.extract.trunc1726, i16 %conv673.3.2, !dbg !272
  %577 = select i1 %cmp624, i16 %v_fetch_local.sroa.202.22.extract.trunc2026, i16 %conv681.3.2, !dbg !273
  %578 = select i1 %cmp624, i16 %conv673.3.2, i16 %v_fetch_local.sroa.122.14.extract.trunc1876, !dbg !274
  %579 = select i1 %cmp624, i16 %conv681.3.2, i16 %v_fetch_local.sroa.282.30.extract.trunc2176, !dbg !275
  %add724.3.2 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.3.2 = or disjoint i32 %add724.3.2, 768, !dbg !276
  %580 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.3.2, !dbg !277
  %xor735.3.2 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.3.2 = xor i32 %xor735.3.2, 24, !dbg !277
  %add.ptr739.3.2 = getelementptr inbounds i8, ptr addrspace(3) %580, i32 %add.ptr739.idx.3.2, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.3.2 = zext i16 %579 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.3.2 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.3.2, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.3.2 = zext i16 %578 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.3.2 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.3.2, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.3.2 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.3.2, %v_column_local.sroa.5.0.insert.shift.3.2, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.3.2 = zext i16 %577 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.3.2 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.3.2, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.3.2 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.3.2, %v_column_local.sroa.4.0.insert.shift.3.2, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.3.2 = zext i16 %576 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.3.2 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.3.2, %v_column_local.sroa.0.0.insert.ext.3.2, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.3.2, ptr addrspace(3) %add.ptr739.3.2, align 8, !dbg !278
  fence syncscope("warp") release, !dbg !281
  tail call void @llvm.mxc.barrier.warp(), !dbg !284
  fence syncscope("warp") acquire, !dbg !285
  %add756.21458 = or disjoint i32 %mul749, %mul755, !dbg !286
  %581 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.21458, !dbg !287
  %add.ptr766.idx.21459 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.21460 = getelementptr inbounds i8, ptr addrspace(3) %581, i32 %add.ptr766.idx.21459, !dbg !287
  %582 = load <4 x half>, ptr addrspace(3) %add.ptr766.21460, align 8, !dbg !288
  %add751.1.2 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.1.2 = or disjoint i32 %add751.1.2, 64, !dbg !286
  %583 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.1.2, !dbg !287
  %xor762.1.2 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.1.2 = xor i32 %xor762.1.2, 8, !dbg !287
  %add.ptr766.1.2 = getelementptr inbounds i8, ptr addrspace(3) %583, i32 %add.ptr766.idx.1.2, !dbg !287
  %584 = load <4 x half>, ptr addrspace(3) %add.ptr766.1.2, align 8, !dbg !288
  %add751.2.2 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.2.2 = or disjoint i32 %add751.2.2, 128, !dbg !286
  %585 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.2.2, !dbg !287
  %xor762.2.2 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.2.2 = xor i32 %xor762.2.2, 16, !dbg !287
  %add.ptr766.2.2 = getelementptr inbounds i8, ptr addrspace(3) %585, i32 %add.ptr766.idx.2.2, !dbg !287
  %586 = load <4 x half>, ptr addrspace(3) %add.ptr766.2.2, align 8, !dbg !288
  %add751.3.2 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.3.2 = or disjoint i32 %add751.3.2, 192, !dbg !286
  %587 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.3.2, !dbg !287
  %xor762.3.2 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.3.2 = xor i32 %xor762.3.2, 24, !dbg !287
  %add.ptr766.3.2 = getelementptr inbounds i8, ptr addrspace(3) %587, i32 %add.ptr766.idx.3.2, !dbg !287
  %588 = load <4 x half>, ptr addrspace(3) %add.ptr766.3.2, align 8, !dbg !288
  %589 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %582, <4 x half> %540, <4 x float> %output_acc.sroa.0.1), !dbg !289
  %590 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %584, <4 x half> %540, <4 x float> %output_acc.sroa.34.1), !dbg !289
  %591 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %586, <4 x half> %540, <4 x float> %output_acc.sroa.66.1), !dbg !289
  %592 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %588, <4 x half> %540, <4 x float> %output_acc.sroa.98.1), !dbg !289
  br label %if.end793.2, !dbg !290

if.end793.2:                                      ; preds = %if.end576.1.2, %if.end793.1
  %bc2774 = phi <4 x half> [ %148, %if.end793.1 ], [ %540, %if.end576.1.2 ], !dbg !83
  %output_acc.sroa.98.2 = phi <4 x float> [ %output_acc.sroa.98.1, %if.end793.1 ], [ %592, %if.end576.1.2 ], !dbg !83
  %output_acc.sroa.66.2 = phi <4 x float> [ %output_acc.sroa.66.1, %if.end793.1 ], [ %591, %if.end576.1.2 ], !dbg !83
  %output_acc.sroa.34.2 = phi <4 x float> [ %output_acc.sroa.34.1, %if.end793.1 ], [ %590, %if.end576.1.2 ], !dbg !83
  %output_acc.sroa.0.2 = phi <4 x float> [ %output_acc.sroa.0.1, %if.end793.1 ], [ %589, %if.end576.1.2 ], !dbg !83
  %593 = load i32, ptr addrspace(1) %arrayidx130.3, align 4, !dbg !186, !tbaa !30
  %mul444.3 = shl nsw i32 %593, 4, !dbg !187
  %cmp445.3 = icmp slt i32 %593, 0, !dbg !188
  %cmp448.not.3 = icmp sgt i32 %mul444.3, %1
  %or.cond1204.3 = select i1 %cmp445.3, i1 true, i1 %cmp448.not.3, !dbg !189
  br i1 %or.cond1204.3, label %if.end793.3, label %if.then449.3, !dbg !189

if.then449.3:                                     ; preds = %if.end793.2
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454.3 = icmp eq i32 %shr324, 3, !dbg !195
  br i1 %cmp454.3, label %if.then455.3, label %if.end464.3, !dbg !196

if.then455.3:                                     ; preds = %if.then449.3
  %sub460.3 = fsub contract float %max_cache.sroa.0.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461.3 = fmul contract float %sub460.3, 0x3FC7154760000000, !dbg !198
  %cmp.i.i1139.3 = fcmp contract olt float %mul461.3, -1.260000e+02, !dbg !199
  %cond.i.i1140.3 = select contract i1 %cmp.i.i1139.3, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i1141.3 = fadd contract float %mul461.3, %cond.i.i1140.3, !dbg !199
  %594 = tail call contract float @llvm.exp2.f32(float %add.i.i1141.3), !dbg !199
  %cond2.i.i1142.3 = select contract i1 %cmp.i.i1139.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i1143.3 = fmul contract float %cond2.i.i1142.3, %594, !dbg !199
  br label %if.end464.3, !dbg !201

if.end464.3:                                      ; preds = %if.then455.3, %if.then449.3
  %rescale.sroa.0.0.3 = phi float [ %mul.i.i1143.3, %if.then455.3 ], [ 0.000000e+00, %if.then449.3 ], !dbg !83
  %595 = bitcast float %rescale.sroa.0.0.3 to i32, !dbg !202
  %596 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %597 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %596) #11, !dbg !209
  %rem.i.i.3 = or disjoint i32 %and469, 48, !dbg !291
  %and.i.i1144.3 = and i32 %597, 1073741760, !dbg !210
  %add.i.i1145.3 = or disjoint i32 %and.i.i1144.3, %rem.i.i.3, !dbg !211
  %shl.i.i1146.3 = shl nuw i32 %add.i.i1145.3, 2, !dbg !212
  %598 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1146.3, i32 %595), !dbg !213
  %599 = bitcast i32 %598 to float, !dbg !214
  %600 = extractelement <4 x half> %190, i64 0, !dbg !215
  %conv.i1147.3 = fpext half %600 to float, !dbg !215
  %601 = extractelement <4 x half> %190, i64 1, !dbg !218
  %conv6.i.3 = fpext half %601 to float, !dbg !218
  %602 = extractelement <4 x half> %190, i64 2, !dbg !219
  %conv.i1149.3 = fpext half %602 to float, !dbg !219
  %603 = extractelement <4 x half> %190, i64 3, !dbg !221
  %conv6.i1151.3 = fpext half %603 to float, !dbg !221
  %mul494.3 = fmul contract float %599, %conv.i1147.3, !dbg !222
  %mul498.3 = fmul contract float %599, %conv6.i.3, !dbg !223
  %mul502.3 = fmul contract float %599, %conv.i1149.3, !dbg !224
  %mul506.3 = fmul contract float %599, %conv6.i1151.3, !dbg !225
  %604 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %605 = fptrunc float %mul494.3 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %604), !dbg !226, !noalias !230
  %606 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %607 = fptrunc float %mul498.3 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %606), !dbg !235, !noalias !230
  %608 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %609 = fptrunc float %mul502.3 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %608), !dbg !237, !noalias !241
  %610 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %611 = fptrunc float %mul506.3 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %610), !dbg !246, !noalias !241
  %612 = insertelement <4 x half> poison, half %605, i64 0, !dbg !248
  %613 = insertelement <4 x half> %612, half %607, i64 1, !dbg !248
  %614 = insertelement <4 x half> %613, half %609, i64 2, !dbg !248
  %615 = insertelement <4 x half> %614, half %611, i64 3, !dbg !248
  %shr529.3 = lshr exact i32 %mul444.3, 1
  %add530.3 = add nuw nsw i32 %shr529.3, %shr140
  %cmp531.3 = icmp ult i32 %add530.3, 512
  %conv541.3 = zext nneg i32 %mul444.3 to i64
  br i1 %cmp531.3, label %if.then532.3, label %if.end576.3, !dbg !249

if.then532.3:                                     ; preds = %if.end464.3
  %616 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1241.3 = shl nuw nsw i64 %conv541.3, 7, !dbg !250
  %617 = getelementptr inbounds i8, ptr addrspace(4) %616, i64 %.idx1241.3, !dbg !250
  %condval_2.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %617, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %617, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.3, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %617, i64 8, !dbg !251
  %condval_2.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.3, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %617, i64 12, !dbg !251
  %condval_2.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.3, align 4, !dbg !251, !tbaa !30
  br label %if.end576.3, !dbg !252

if.end576.3:                                      ; preds = %if.then532.3, %if.end464.3
  %condval_2.sroa.0.0.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3, %if.then532.3 ], [ 0, %if.end464.3 ], !dbg !83
  %condval_2.sroa.5.0.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3, %if.then532.3 ], [ 0, %if.end464.3 ], !dbg !83
  %condval_2.sroa.6.0.3 = phi i32 [ %condval_2.sroa.6.0.copyload.3, %if.then532.3 ], [ 0, %if.end464.3 ], !dbg !83
  %condval_2.sroa.7.0.3 = phi i32 [ %condval_2.sroa.7.0.copyload.3, %if.then532.3 ], [ 0, %if.end464.3 ], !dbg !83
  br i1 %cmp531.3, label %if.then532.1.3, label %if.end576.1.3, !dbg !249

if.then532.1.3:                                   ; preds = %if.end576.3
  %618 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1241.1.3 = shl nuw nsw i64 %conv541.3, 7, !dbg !250
  %619 = getelementptr inbounds i8, ptr addrspace(4) %618, i64 %.idx1241.1.3, !dbg !250
  %add.ptr552.1.3 = getelementptr inbounds i8, ptr addrspace(4) %619, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %add.ptr552.1.3, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %619, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.3, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %619, i64 136, !dbg !251
  %condval_2.sroa.6.0.copyload.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.3, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %619, i64 140, !dbg !251
  %condval_2.sroa.7.0.copyload.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.3, align 4, !dbg !251, !tbaa !30
  br label %if.end576.1.3, !dbg !252

if.end576.1.3:                                    ; preds = %if.then532.1.3, %if.end576.3
  %condval_2.sroa.0.0.1.3 = phi i32 [ %condval_2.sroa.0.0.copyload.1.3, %if.then532.1.3 ], [ 0, %if.end576.3 ], !dbg !83
  %condval_2.sroa.5.0.1.3 = phi i32 [ %condval_2.sroa.5.0.copyload.1.3, %if.then532.1.3 ], [ 0, %if.end576.3 ], !dbg !83
  %condval_2.sroa.6.0.1.3 = phi i32 [ %condval_2.sroa.6.0.copyload.1.3, %if.then532.1.3 ], [ 0, %if.end576.3 ], !dbg !83
  %condval_2.sroa.7.0.1.3 = phi i32 [ %condval_2.sroa.7.0.copyload.1.3, %if.then532.1.3 ], [ 0, %if.end576.3 ], !dbg !83
  %v_fetch_local.sroa.0.0.extract.trunc1621 = trunc i32 %condval_2.sroa.0.0.3 to i16, !dbg !253
  %v_fetch_local.sroa.0.2.extract.shift1656 = lshr i32 %condval_2.sroa.0.0.3, 16, !dbg !254
  %v_fetch_local.sroa.0.2.extract.trunc1657 = trunc nuw i32 %v_fetch_local.sroa.0.2.extract.shift1656 to i16, !dbg !254
  %v_fetch_local.sroa.82.8.extract.trunc1771 = trunc i32 %condval_2.sroa.6.0.3 to i16, !dbg !255
  %v_fetch_local.sroa.82.10.extract.shift1806 = lshr i32 %condval_2.sroa.6.0.3, 16, !dbg !256
  %v_fetch_local.sroa.82.10.extract.trunc1807 = trunc nuw i32 %v_fetch_local.sroa.82.10.extract.shift1806 to i16, !dbg !256
  %cond.3 = select i1 %cmp624, i32 %condval_2.sroa.6.0.3, i32 %condval_2.sroa.0.0.3, !dbg !257
  %620 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %621 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %620) #11, !dbg !263
  %xor.i.i1164.3 = xor i32 %621, 8, !dbg !264
  %622 = and i32 %621, -64, !dbg !265
  %and.i.i1165.3 = add nsw i32 %622, 64, !dbg !265
  %cmp.not.i.i1166.3 = icmp slt i32 %xor.i.i1164.3, %and.i.i1165.3, !dbg !266
  %cond.i.i1167.3 = select i1 %cmp.not.i.i1166.3, i32 %xor.i.i1164.3, i32 %621, !dbg !267
  %shl.i.i1168.3 = shl i32 %cond.i.i1167.3, 2, !dbg !268
  %623 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.3, i32 %cond.3), !dbg !269
  %v_fetch_local.sroa.42.4.extract.trunc1696 = trunc i32 %condval_2.sroa.5.0.3 to i16, !dbg !253
  %v_fetch_local.sroa.42.6.extract.shift1731 = lshr i32 %condval_2.sroa.5.0.3, 16, !dbg !254
  %v_fetch_local.sroa.42.6.extract.trunc1732 = trunc nuw i32 %v_fetch_local.sroa.42.6.extract.shift1731 to i16, !dbg !254
  %v_fetch_local.sroa.122.12.extract.trunc1846 = trunc i32 %condval_2.sroa.7.0.3 to i16, !dbg !255
  %v_fetch_local.sroa.122.14.extract.shift1881 = lshr i32 %condval_2.sroa.7.0.3, 16, !dbg !256
  %v_fetch_local.sroa.122.14.extract.trunc1882 = trunc nuw i32 %v_fetch_local.sroa.122.14.extract.shift1881 to i16, !dbg !256
  %cond.1.3 = select i1 %cmp624, i32 %condval_2.sroa.7.0.3, i32 %condval_2.sroa.5.0.3, !dbg !257
  %624 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %625 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %624) #11, !dbg !263
  %xor.i.i1164.1.3 = xor i32 %625, 8, !dbg !264
  %626 = and i32 %625, -64, !dbg !265
  %and.i.i1165.1.3 = add nsw i32 %626, 64, !dbg !265
  %cmp.not.i.i1166.1.3 = icmp slt i32 %xor.i.i1164.1.3, %and.i.i1165.1.3, !dbg !266
  %cond.i.i1167.1.3 = select i1 %cmp.not.i.i1166.1.3, i32 %xor.i.i1164.1.3, i32 %625, !dbg !267
  %shl.i.i1168.1.3 = shl i32 %cond.i.i1167.1.3, 2, !dbg !268
  %627 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.1.3, i32 %cond.1.3), !dbg !269
  %v_fetch_local.sroa.162.16.extract.trunc1921 = trunc i32 %condval_2.sroa.0.0.1.3 to i16, !dbg !253
  %v_fetch_local.sroa.162.18.extract.shift1956 = lshr i32 %condval_2.sroa.0.0.1.3, 16, !dbg !254
  %v_fetch_local.sroa.162.18.extract.trunc1957 = trunc nuw i32 %v_fetch_local.sroa.162.18.extract.shift1956 to i16, !dbg !254
  %v_fetch_local.sroa.242.24.extract.trunc2071 = trunc i32 %condval_2.sroa.6.0.1.3 to i16, !dbg !255
  %v_fetch_local.sroa.242.26.extract.shift2106 = lshr i32 %condval_2.sroa.6.0.1.3, 16, !dbg !256
  %v_fetch_local.sroa.242.26.extract.trunc2107 = trunc nuw i32 %v_fetch_local.sroa.242.26.extract.shift2106 to i16, !dbg !256
  %cond.11336.3 = select i1 %cmp624, i32 %condval_2.sroa.6.0.1.3, i32 %condval_2.sroa.0.0.1.3, !dbg !257
  %628 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %629 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %628) #11, !dbg !263
  %xor.i.i1164.11337.3 = xor i32 %629, 8, !dbg !264
  %630 = and i32 %629, -64, !dbg !265
  %and.i.i1165.11338.3 = add nsw i32 %630, 64, !dbg !265
  %cmp.not.i.i1166.11339.3 = icmp slt i32 %xor.i.i1164.11337.3, %and.i.i1165.11338.3, !dbg !266
  %cond.i.i1167.11340.3 = select i1 %cmp.not.i.i1166.11339.3, i32 %xor.i.i1164.11337.3, i32 %629, !dbg !267
  %shl.i.i1168.11341.3 = shl i32 %cond.i.i1167.11340.3, 2, !dbg !268
  %631 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.11341.3, i32 %cond.11336.3), !dbg !269
  %v_fetch_local.sroa.202.20.extract.trunc1996 = trunc i32 %condval_2.sroa.5.0.1.3 to i16, !dbg !253
  %v_fetch_local.sroa.202.22.extract.shift2031 = lshr i32 %condval_2.sroa.5.0.1.3, 16, !dbg !254
  %v_fetch_local.sroa.202.22.extract.trunc2032 = trunc nuw i32 %v_fetch_local.sroa.202.22.extract.shift2031 to i16, !dbg !254
  %v_fetch_local.sroa.282.28.extract.trunc2146 = trunc i32 %condval_2.sroa.7.0.1.3 to i16, !dbg !255
  %v_fetch_local.sroa.282.30.extract.shift2181 = lshr i32 %condval_2.sroa.7.0.1.3, 16, !dbg !256
  %v_fetch_local.sroa.282.30.extract.trunc2182 = trunc nuw i32 %v_fetch_local.sroa.282.30.extract.shift2181 to i16, !dbg !256
  %cond.1.1.3 = select i1 %cmp624, i32 %condval_2.sroa.7.0.1.3, i32 %condval_2.sroa.5.0.1.3, !dbg !257
  %632 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %633 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %632) #11, !dbg !263
  %xor.i.i1164.1.1.3 = xor i32 %633, 8, !dbg !264
  %634 = and i32 %633, -64, !dbg !265
  %and.i.i1165.1.1.3 = add nsw i32 %634, 64, !dbg !265
  %cmp.not.i.i1166.1.1.3 = icmp slt i32 %xor.i.i1164.1.1.3, %and.i.i1165.1.1.3, !dbg !266
  %cond.i.i1167.1.1.3 = select i1 %cmp.not.i.i1166.1.1.3, i32 %xor.i.i1164.1.1.3, i32 %633, !dbg !267
  %shl.i.i1168.1.1.3 = shl i32 %cond.i.i1167.1.1.3, 2, !dbg !268
  %635 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.1.1.3, i32 %cond.1.1.3), !dbg !269
  %conv673.31468 = trunc i32 %623 to i16, !dbg !270
  %conv681.31470 = trunc i32 %631 to i16, !dbg !271
  %636 = select i1 %cmp624, i16 %v_fetch_local.sroa.0.0.extract.trunc1621, i16 %conv673.31468, !dbg !272
  %637 = select i1 %cmp624, i16 %v_fetch_local.sroa.162.16.extract.trunc1921, i16 %conv681.31470, !dbg !273
  %638 = select i1 %cmp624, i16 %conv673.31468, i16 %v_fetch_local.sroa.82.8.extract.trunc1771, !dbg !274
  %639 = select i1 %cmp624, i16 %conv681.31470, i16 %v_fetch_local.sroa.242.24.extract.trunc2071, !dbg !275
  %add729.31471 = or disjoint i32 %mul723, %mul728, !dbg !276
  %640 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.31471, !dbg !277
  %add.ptr739.idx.31472 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.31473 = getelementptr inbounds i8, ptr addrspace(3) %640, i32 %add.ptr739.idx.31472, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.31474 = zext i16 %639 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.31475 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.31474, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.31476 = zext i16 %638 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.31477 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.31476, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.31478 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.31475, %v_column_local.sroa.5.0.insert.shift.31477, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.31479 = zext i16 %637 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.31480 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.31479, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.31481 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.31478, %v_column_local.sroa.4.0.insert.shift.31480, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.31482 = zext i16 %636 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.31483 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.31481, %v_column_local.sroa.0.0.insert.ext.31482, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.31483, ptr addrspace(3) %add.ptr739.31473, align 8, !dbg !278
  %shr672.1.3 = lshr i32 %623, 16, !dbg !279
  %conv673.1.3 = trunc nuw i32 %shr672.1.3 to i16, !dbg !270
  %shr680.1.3 = lshr i32 %631, 16, !dbg !280
  %conv681.1.3 = trunc nuw i32 %shr680.1.3 to i16, !dbg !271
  %641 = select i1 %cmp624, i16 %v_fetch_local.sroa.0.2.extract.trunc1657, i16 %conv673.1.3, !dbg !272
  %642 = select i1 %cmp624, i16 %v_fetch_local.sroa.162.18.extract.trunc1957, i16 %conv681.1.3, !dbg !273
  %643 = select i1 %cmp624, i16 %conv673.1.3, i16 %v_fetch_local.sroa.82.10.extract.trunc1807, !dbg !274
  %644 = select i1 %cmp624, i16 %conv681.1.3, i16 %v_fetch_local.sroa.242.26.extract.trunc2107, !dbg !275
  %add724.1.3 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.1.3 = or disjoint i32 %add724.1.3, 256, !dbg !276
  %645 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.1.3, !dbg !277
  %xor735.1.3 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.1.3 = xor i32 %xor735.1.3, 8, !dbg !277
  %add.ptr739.1.3 = getelementptr inbounds i8, ptr addrspace(3) %645, i32 %add.ptr739.idx.1.3, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.1.3 = zext i16 %644 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.1.3 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.1.3, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.1.3 = zext i16 %643 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.1.3 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.1.3, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.1.3 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.1.3, %v_column_local.sroa.5.0.insert.shift.1.3, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.1.3 = zext i16 %642 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.1.3 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.1.3, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.1.3 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.1.3, %v_column_local.sroa.4.0.insert.shift.1.3, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.1.3 = zext i16 %641 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.1.3 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.1.3, %v_column_local.sroa.0.0.insert.ext.1.3, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.1.3, ptr addrspace(3) %add.ptr739.1.3, align 8, !dbg !278
  %conv673.2.3 = trunc i32 %627 to i16, !dbg !270
  %conv681.2.3 = trunc i32 %635 to i16, !dbg !271
  %646 = select i1 %cmp624, i16 %v_fetch_local.sroa.42.4.extract.trunc1696, i16 %conv673.2.3, !dbg !272
  %647 = select i1 %cmp624, i16 %v_fetch_local.sroa.202.20.extract.trunc1996, i16 %conv681.2.3, !dbg !273
  %648 = select i1 %cmp624, i16 %conv673.2.3, i16 %v_fetch_local.sroa.122.12.extract.trunc1846, !dbg !274
  %649 = select i1 %cmp624, i16 %conv681.2.3, i16 %v_fetch_local.sroa.282.28.extract.trunc2146, !dbg !275
  %add724.2.3 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.2.3 = or disjoint i32 %add724.2.3, 512, !dbg !276
  %650 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.2.3, !dbg !277
  %xor735.2.3 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.2.3 = xor i32 %xor735.2.3, 16, !dbg !277
  %add.ptr739.2.3 = getelementptr inbounds i8, ptr addrspace(3) %650, i32 %add.ptr739.idx.2.3, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.2.3 = zext i16 %649 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.2.3 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.2.3, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.2.3 = zext i16 %648 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.2.3 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.2.3, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.2.3 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.2.3, %v_column_local.sroa.5.0.insert.shift.2.3, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.2.3 = zext i16 %647 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.2.3 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.2.3, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.2.3 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.2.3, %v_column_local.sroa.4.0.insert.shift.2.3, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.2.3 = zext i16 %646 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.2.3 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.2.3, %v_column_local.sroa.0.0.insert.ext.2.3, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.2.3, ptr addrspace(3) %add.ptr739.2.3, align 8, !dbg !278
  %shr672.3.3 = lshr i32 %627, 16, !dbg !279
  %conv673.3.3 = trunc nuw i32 %shr672.3.3 to i16, !dbg !270
  %shr680.3.3 = lshr i32 %635, 16, !dbg !280
  %conv681.3.3 = trunc nuw i32 %shr680.3.3 to i16, !dbg !271
  %651 = select i1 %cmp624, i16 %v_fetch_local.sroa.42.6.extract.trunc1732, i16 %conv673.3.3, !dbg !272
  %652 = select i1 %cmp624, i16 %v_fetch_local.sroa.202.22.extract.trunc2032, i16 %conv681.3.3, !dbg !273
  %653 = select i1 %cmp624, i16 %conv673.3.3, i16 %v_fetch_local.sroa.122.14.extract.trunc1882, !dbg !274
  %654 = select i1 %cmp624, i16 %conv681.3.3, i16 %v_fetch_local.sroa.282.30.extract.trunc2182, !dbg !275
  %add724.3.3 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.3.3 = or disjoint i32 %add724.3.3, 768, !dbg !276
  %655 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.3.3, !dbg !277
  %xor735.3.3 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.3.3 = xor i32 %xor735.3.3, 24, !dbg !277
  %add.ptr739.3.3 = getelementptr inbounds i8, ptr addrspace(3) %655, i32 %add.ptr739.idx.3.3, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.3.3 = zext i16 %654 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.3.3 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.3.3, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.3.3 = zext i16 %653 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.3.3 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.3.3, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.3.3 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.3.3, %v_column_local.sroa.5.0.insert.shift.3.3, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.3.3 = zext i16 %652 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.3.3 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.3.3, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.3.3 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.3.3, %v_column_local.sroa.4.0.insert.shift.3.3, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.3.3 = zext i16 %651 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.3.3 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.3.3, %v_column_local.sroa.0.0.insert.ext.3.3, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.3.3, ptr addrspace(3) %add.ptr739.3.3, align 8, !dbg !278
  fence syncscope("warp") release, !dbg !281
  tail call void @llvm.mxc.barrier.warp(), !dbg !284
  fence syncscope("warp") acquire, !dbg !285
  %add756.31484 = or disjoint i32 %mul749, %mul755, !dbg !286
  %656 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.31484, !dbg !287
  %add.ptr766.idx.31485 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.31486 = getelementptr inbounds i8, ptr addrspace(3) %656, i32 %add.ptr766.idx.31485, !dbg !287
  %657 = load <4 x half>, ptr addrspace(3) %add.ptr766.31486, align 8, !dbg !288
  %add751.1.3 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.1.3 = or disjoint i32 %add751.1.3, 64, !dbg !286
  %658 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.1.3, !dbg !287
  %xor762.1.3 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.1.3 = xor i32 %xor762.1.3, 8, !dbg !287
  %add.ptr766.1.3 = getelementptr inbounds i8, ptr addrspace(3) %658, i32 %add.ptr766.idx.1.3, !dbg !287
  %659 = load <4 x half>, ptr addrspace(3) %add.ptr766.1.3, align 8, !dbg !288
  %add751.2.3 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.2.3 = or disjoint i32 %add751.2.3, 128, !dbg !286
  %660 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.2.3, !dbg !287
  %xor762.2.3 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.2.3 = xor i32 %xor762.2.3, 16, !dbg !287
  %add.ptr766.2.3 = getelementptr inbounds i8, ptr addrspace(3) %660, i32 %add.ptr766.idx.2.3, !dbg !287
  %661 = load <4 x half>, ptr addrspace(3) %add.ptr766.2.3, align 8, !dbg !288
  %add751.3.3 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.3.3 = or disjoint i32 %add751.3.3, 192, !dbg !286
  %662 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.3.3, !dbg !287
  %xor762.3.3 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.3.3 = xor i32 %xor762.3.3, 24, !dbg !287
  %add.ptr766.3.3 = getelementptr inbounds i8, ptr addrspace(3) %662, i32 %add.ptr766.idx.3.3, !dbg !287
  %663 = load <4 x half>, ptr addrspace(3) %add.ptr766.3.3, align 8, !dbg !288
  %664 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %657, <4 x half> %615, <4 x float> %output_acc.sroa.0.2), !dbg !289
  %665 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %659, <4 x half> %615, <4 x float> %output_acc.sroa.34.2), !dbg !289
  %666 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %661, <4 x half> %615, <4 x float> %output_acc.sroa.66.2), !dbg !289
  %667 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %663, <4 x half> %615, <4 x float> %output_acc.sroa.98.2), !dbg !289
  br label %if.end793.3, !dbg !290

if.end793.3:                                      ; preds = %if.end576.1.3, %if.end793.2
  %bc2778 = phi <4 x half> [ %190, %if.end793.2 ], [ %615, %if.end576.1.3 ], !dbg !83
  %output_acc.sroa.98.3 = phi <4 x float> [ %output_acc.sroa.98.2, %if.end793.2 ], [ %667, %if.end576.1.3 ], !dbg !83
  %output_acc.sroa.66.3 = phi <4 x float> [ %output_acc.sroa.66.2, %if.end793.2 ], [ %666, %if.end576.1.3 ], !dbg !83
  %output_acc.sroa.34.3 = phi <4 x float> [ %output_acc.sroa.34.2, %if.end793.2 ], [ %665, %if.end576.1.3 ], !dbg !83
  %output_acc.sroa.0.3 = phi <4 x float> [ %output_acc.sroa.0.2, %if.end793.2 ], [ %664, %if.end576.1.3 ], !dbg !83
  %668 = load i32, ptr addrspace(1) %arrayidx130.4, align 4, !dbg !186, !tbaa !30
  %mul444.4 = shl nsw i32 %668, 4, !dbg !187
  %cmp445.4 = icmp slt i32 %668, 0, !dbg !188
  %cmp448.not.4 = icmp sgt i32 %mul444.4, %1
  %or.cond1204.4 = select i1 %cmp445.4, i1 true, i1 %cmp448.not.4, !dbg !189
  br i1 %or.cond1204.4, label %if.end793.4, label %if.then449.4, !dbg !189

if.then449.4:                                     ; preds = %if.end793.3
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454.4 = icmp ult i32 %2, 16, !dbg !195
  br i1 %cmp454.4, label %if.then455.4, label %if.end464.4, !dbg !196

if.then455.4:                                     ; preds = %if.then449.4
  %sub460.4 = fsub contract float %max_cache.sroa.11.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461.4 = fmul contract float %sub460.4, 0x3FC7154760000000, !dbg !198
  %cmp.i.i1139.4 = fcmp contract olt float %mul461.4, -1.260000e+02, !dbg !199
  %cond.i.i1140.4 = select contract i1 %cmp.i.i1139.4, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i1141.4 = fadd contract float %mul461.4, %cond.i.i1140.4, !dbg !199
  %669 = tail call contract float @llvm.exp2.f32(float %add.i.i1141.4), !dbg !199
  %cond2.i.i1142.4 = select contract i1 %cmp.i.i1139.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i1143.4 = fmul contract float %cond2.i.i1142.4, %669, !dbg !199
  %670 = bitcast float %mul.i.i1143.4 to i32, !dbg !202
  br label %if.end464.4, !dbg !201

if.end464.4:                                      ; preds = %if.then455.4, %if.then449.4
  %rescale.sroa.0.0.4 = phi i32 [ %670, %if.then455.4 ], [ 0, %if.then449.4 ], !dbg !83
  %671 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %672 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %671) #11, !dbg !209
  %and.i.i1144.4 = and i32 %672, 1073741760, !dbg !210
  %add.i.i1145.4 = or disjoint i32 %and.i.i1144.4, %and469, !dbg !211
  %shl.i.i1146.4 = shl nuw i32 %add.i.i1145.4, 2, !dbg !212
  %673 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1146.4, i32 %rescale.sroa.0.0.4), !dbg !213
  %674 = bitcast i32 %673 to float, !dbg !214
  %675 = extractelement <4 x half> %232, i64 0, !dbg !215
  %conv.i1147.4 = fpext half %675 to float, !dbg !215
  %676 = extractelement <4 x half> %232, i64 1, !dbg !218
  %conv6.i.4 = fpext half %676 to float, !dbg !218
  %677 = extractelement <4 x half> %232, i64 2, !dbg !219
  %conv.i1149.4 = fpext half %677 to float, !dbg !219
  %678 = extractelement <4 x half> %232, i64 3, !dbg !221
  %conv6.i1151.4 = fpext half %678 to float, !dbg !221
  %mul494.4 = fmul contract float %674, %conv.i1147.4, !dbg !222
  %mul498.4 = fmul contract float %674, %conv6.i.4, !dbg !223
  %mul502.4 = fmul contract float %674, %conv.i1149.4, !dbg !224
  %mul506.4 = fmul contract float %674, %conv6.i1151.4, !dbg !225
  %679 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %680 = fptrunc float %mul494.4 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %679), !dbg !226, !noalias !230
  %681 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %682 = fptrunc float %mul498.4 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %681), !dbg !235, !noalias !230
  %683 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %684 = fptrunc float %mul502.4 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %683), !dbg !237, !noalias !241
  %685 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %686 = fptrunc float %mul506.4 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %685), !dbg !246, !noalias !241
  %687 = insertelement <4 x half> poison, half %680, i64 0, !dbg !248
  %688 = insertelement <4 x half> %687, half %682, i64 1, !dbg !248
  %689 = insertelement <4 x half> %688, half %684, i64 2, !dbg !248
  %690 = insertelement <4 x half> %689, half %686, i64 3, !dbg !248
  %shr529.4 = lshr exact i32 %mul444.4, 1
  %add530.4 = add nuw nsw i32 %shr529.4, %shr140
  %cmp531.4 = icmp ult i32 %add530.4, 512
  %conv541.4 = zext nneg i32 %mul444.4 to i64
  br i1 %cmp531.4, label %if.then532.4, label %if.end576.4, !dbg !249

if.then532.4:                                     ; preds = %if.end464.4
  %691 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1241.4 = shl nuw nsw i64 %conv541.4, 7, !dbg !250
  %692 = getelementptr inbounds i8, ptr addrspace(4) %691, i64 %.idx1241.4, !dbg !250
  %condval_2.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %692, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %692, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.4, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %692, i64 8, !dbg !251
  %condval_2.sroa.6.0.copyload.4 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.4, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %692, i64 12, !dbg !251
  %condval_2.sroa.7.0.copyload.4 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.4, align 4, !dbg !251, !tbaa !30
  br label %if.end576.4, !dbg !252

if.end576.4:                                      ; preds = %if.then532.4, %if.end464.4
  %condval_2.sroa.0.0.4 = phi i32 [ %condval_2.sroa.0.0.copyload.4, %if.then532.4 ], [ 0, %if.end464.4 ], !dbg !83
  %condval_2.sroa.5.0.4 = phi i32 [ %condval_2.sroa.5.0.copyload.4, %if.then532.4 ], [ 0, %if.end464.4 ], !dbg !83
  %condval_2.sroa.6.0.4 = phi i32 [ %condval_2.sroa.6.0.copyload.4, %if.then532.4 ], [ 0, %if.end464.4 ], !dbg !83
  %condval_2.sroa.7.0.4 = phi i32 [ %condval_2.sroa.7.0.copyload.4, %if.then532.4 ], [ 0, %if.end464.4 ], !dbg !83
  br i1 %cmp531.4, label %if.then532.1.4, label %if.end576.1.4, !dbg !249

if.then532.1.4:                                   ; preds = %if.end576.4
  %693 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1241.1.4 = shl nuw nsw i64 %conv541.4, 7, !dbg !250
  %694 = getelementptr inbounds i8, ptr addrspace(4) %693, i64 %.idx1241.1.4, !dbg !250
  %add.ptr552.1.4 = getelementptr inbounds i8, ptr addrspace(4) %694, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1.4 = load i32, ptr addrspace(4) %add.ptr552.1.4, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %694, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.4, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %694, i64 136, !dbg !251
  %condval_2.sroa.6.0.copyload.1.4 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.4, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %694, i64 140, !dbg !251
  %condval_2.sroa.7.0.copyload.1.4 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.4, align 4, !dbg !251, !tbaa !30
  br label %if.end576.1.4, !dbg !252

if.end576.1.4:                                    ; preds = %if.then532.1.4, %if.end576.4
  %condval_2.sroa.0.0.1.4 = phi i32 [ %condval_2.sroa.0.0.copyload.1.4, %if.then532.1.4 ], [ 0, %if.end576.4 ], !dbg !83
  %condval_2.sroa.5.0.1.4 = phi i32 [ %condval_2.sroa.5.0.copyload.1.4, %if.then532.1.4 ], [ 0, %if.end576.4 ], !dbg !83
  %condval_2.sroa.6.0.1.4 = phi i32 [ %condval_2.sroa.6.0.copyload.1.4, %if.then532.1.4 ], [ 0, %if.end576.4 ], !dbg !83
  %condval_2.sroa.7.0.1.4 = phi i32 [ %condval_2.sroa.7.0.copyload.1.4, %if.then532.1.4 ], [ 0, %if.end576.4 ], !dbg !83
  %v_fetch_local.sroa.0.0.extract.trunc1625 = trunc i32 %condval_2.sroa.0.0.4 to i16, !dbg !253
  %v_fetch_local.sroa.0.2.extract.shift1662 = lshr i32 %condval_2.sroa.0.0.4, 16, !dbg !254
  %v_fetch_local.sroa.0.2.extract.trunc1663 = trunc nuw i32 %v_fetch_local.sroa.0.2.extract.shift1662 to i16, !dbg !254
  %v_fetch_local.sroa.82.8.extract.trunc1775 = trunc i32 %condval_2.sroa.6.0.4 to i16, !dbg !255
  %v_fetch_local.sroa.82.10.extract.shift1812 = lshr i32 %condval_2.sroa.6.0.4, 16, !dbg !256
  %v_fetch_local.sroa.82.10.extract.trunc1813 = trunc nuw i32 %v_fetch_local.sroa.82.10.extract.shift1812 to i16, !dbg !256
  %cond.4 = select i1 %cmp624, i32 %condval_2.sroa.6.0.4, i32 %condval_2.sroa.0.0.4, !dbg !257
  %695 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %696 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %695) #11, !dbg !263
  %xor.i.i1164.4 = xor i32 %696, 8, !dbg !264
  %697 = and i32 %696, -64, !dbg !265
  %and.i.i1165.4 = add nsw i32 %697, 64, !dbg !265
  %cmp.not.i.i1166.4 = icmp slt i32 %xor.i.i1164.4, %and.i.i1165.4, !dbg !266
  %cond.i.i1167.4 = select i1 %cmp.not.i.i1166.4, i32 %xor.i.i1164.4, i32 %696, !dbg !267
  %shl.i.i1168.4 = shl i32 %cond.i.i1167.4, 2, !dbg !268
  %698 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.4, i32 %cond.4), !dbg !269
  %v_fetch_local.sroa.42.4.extract.trunc1700 = trunc i32 %condval_2.sroa.5.0.4 to i16, !dbg !253
  %v_fetch_local.sroa.42.6.extract.shift1737 = lshr i32 %condval_2.sroa.5.0.4, 16, !dbg !254
  %v_fetch_local.sroa.42.6.extract.trunc1738 = trunc nuw i32 %v_fetch_local.sroa.42.6.extract.shift1737 to i16, !dbg !254
  %v_fetch_local.sroa.122.12.extract.trunc1850 = trunc i32 %condval_2.sroa.7.0.4 to i16, !dbg !255
  %v_fetch_local.sroa.122.14.extract.shift1887 = lshr i32 %condval_2.sroa.7.0.4, 16, !dbg !256
  %v_fetch_local.sroa.122.14.extract.trunc1888 = trunc nuw i32 %v_fetch_local.sroa.122.14.extract.shift1887 to i16, !dbg !256
  %cond.1.4 = select i1 %cmp624, i32 %condval_2.sroa.7.0.4, i32 %condval_2.sroa.5.0.4, !dbg !257
  %699 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %700 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %699) #11, !dbg !263
  %xor.i.i1164.1.4 = xor i32 %700, 8, !dbg !264
  %701 = and i32 %700, -64, !dbg !265
  %and.i.i1165.1.4 = add nsw i32 %701, 64, !dbg !265
  %cmp.not.i.i1166.1.4 = icmp slt i32 %xor.i.i1164.1.4, %and.i.i1165.1.4, !dbg !266
  %cond.i.i1167.1.4 = select i1 %cmp.not.i.i1166.1.4, i32 %xor.i.i1164.1.4, i32 %700, !dbg !267
  %shl.i.i1168.1.4 = shl i32 %cond.i.i1167.1.4, 2, !dbg !268
  %702 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.1.4, i32 %cond.1.4), !dbg !269
  %v_fetch_local.sroa.162.16.extract.trunc1925 = trunc i32 %condval_2.sroa.0.0.1.4 to i16, !dbg !253
  %v_fetch_local.sroa.162.18.extract.shift1962 = lshr i32 %condval_2.sroa.0.0.1.4, 16, !dbg !254
  %v_fetch_local.sroa.162.18.extract.trunc1963 = trunc nuw i32 %v_fetch_local.sroa.162.18.extract.shift1962 to i16, !dbg !254
  %v_fetch_local.sroa.242.24.extract.trunc2075 = trunc i32 %condval_2.sroa.6.0.1.4 to i16, !dbg !255
  %v_fetch_local.sroa.242.26.extract.shift2112 = lshr i32 %condval_2.sroa.6.0.1.4, 16, !dbg !256
  %v_fetch_local.sroa.242.26.extract.trunc2113 = trunc nuw i32 %v_fetch_local.sroa.242.26.extract.shift2112 to i16, !dbg !256
  %cond.11336.4 = select i1 %cmp624, i32 %condval_2.sroa.6.0.1.4, i32 %condval_2.sroa.0.0.1.4, !dbg !257
  %703 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %704 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %703) #11, !dbg !263
  %xor.i.i1164.11337.4 = xor i32 %704, 8, !dbg !264
  %705 = and i32 %704, -64, !dbg !265
  %and.i.i1165.11338.4 = add nsw i32 %705, 64, !dbg !265
  %cmp.not.i.i1166.11339.4 = icmp slt i32 %xor.i.i1164.11337.4, %and.i.i1165.11338.4, !dbg !266
  %cond.i.i1167.11340.4 = select i1 %cmp.not.i.i1166.11339.4, i32 %xor.i.i1164.11337.4, i32 %704, !dbg !267
  %shl.i.i1168.11341.4 = shl i32 %cond.i.i1167.11340.4, 2, !dbg !268
  %706 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.11341.4, i32 %cond.11336.4), !dbg !269
  %v_fetch_local.sroa.202.20.extract.trunc2000 = trunc i32 %condval_2.sroa.5.0.1.4 to i16, !dbg !253
  %v_fetch_local.sroa.202.22.extract.shift2037 = lshr i32 %condval_2.sroa.5.0.1.4, 16, !dbg !254
  %v_fetch_local.sroa.202.22.extract.trunc2038 = trunc nuw i32 %v_fetch_local.sroa.202.22.extract.shift2037 to i16, !dbg !254
  %v_fetch_local.sroa.282.28.extract.trunc2150 = trunc i32 %condval_2.sroa.7.0.1.4 to i16, !dbg !255
  %v_fetch_local.sroa.282.30.extract.shift2187 = lshr i32 %condval_2.sroa.7.0.1.4, 16, !dbg !256
  %v_fetch_local.sroa.282.30.extract.trunc2188 = trunc nuw i32 %v_fetch_local.sroa.282.30.extract.shift2187 to i16, !dbg !256
  %cond.1.1.4 = select i1 %cmp624, i32 %condval_2.sroa.7.0.1.4, i32 %condval_2.sroa.5.0.1.4, !dbg !257
  %707 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %708 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %707) #11, !dbg !263
  %xor.i.i1164.1.1.4 = xor i32 %708, 8, !dbg !264
  %709 = and i32 %708, -64, !dbg !265
  %and.i.i1165.1.1.4 = add nsw i32 %709, 64, !dbg !265
  %cmp.not.i.i1166.1.1.4 = icmp slt i32 %xor.i.i1164.1.1.4, %and.i.i1165.1.1.4, !dbg !266
  %cond.i.i1167.1.1.4 = select i1 %cmp.not.i.i1166.1.1.4, i32 %xor.i.i1164.1.1.4, i32 %708, !dbg !267
  %shl.i.i1168.1.1.4 = shl i32 %cond.i.i1167.1.1.4, 2, !dbg !268
  %710 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.1.1.4, i32 %cond.1.1.4), !dbg !269
  %conv673.4 = trunc i32 %698 to i16, !dbg !270
  %conv681.4 = trunc i32 %706 to i16, !dbg !271
  %711 = select i1 %cmp624, i16 %v_fetch_local.sroa.0.0.extract.trunc1625, i16 %conv673.4, !dbg !272
  %712 = select i1 %cmp624, i16 %v_fetch_local.sroa.162.16.extract.trunc1925, i16 %conv681.4, !dbg !273
  %713 = select i1 %cmp624, i16 %conv673.4, i16 %v_fetch_local.sroa.82.8.extract.trunc1775, !dbg !274
  %714 = select i1 %cmp624, i16 %conv681.4, i16 %v_fetch_local.sroa.242.24.extract.trunc2075, !dbg !275
  %add729.4 = or disjoint i32 %mul723, %mul728, !dbg !276
  %715 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.4, !dbg !277
  %add.ptr739.idx.4 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.4 = getelementptr inbounds i8, ptr addrspace(3) %715, i32 %add.ptr739.idx.4, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.4 = zext i16 %714 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.4 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.4, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.4 = zext i16 %713 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.4 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.4, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.4 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.4, %v_column_local.sroa.5.0.insert.shift.4, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.4 = zext i16 %712 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.4 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.4, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.4 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.4, %v_column_local.sroa.4.0.insert.shift.4, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.4 = zext i16 %711 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.4 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.4, %v_column_local.sroa.0.0.insert.ext.4, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.4, ptr addrspace(3) %add.ptr739.4, align 8, !dbg !278
  %shr672.1.4 = lshr i32 %698, 16, !dbg !279
  %conv673.1.4 = trunc nuw i32 %shr672.1.4 to i16, !dbg !270
  %shr680.1.4 = lshr i32 %706, 16, !dbg !280
  %conv681.1.4 = trunc nuw i32 %shr680.1.4 to i16, !dbg !271
  %716 = select i1 %cmp624, i16 %v_fetch_local.sroa.0.2.extract.trunc1663, i16 %conv673.1.4, !dbg !272
  %717 = select i1 %cmp624, i16 %v_fetch_local.sroa.162.18.extract.trunc1963, i16 %conv681.1.4, !dbg !273
  %718 = select i1 %cmp624, i16 %conv673.1.4, i16 %v_fetch_local.sroa.82.10.extract.trunc1813, !dbg !274
  %719 = select i1 %cmp624, i16 %conv681.1.4, i16 %v_fetch_local.sroa.242.26.extract.trunc2113, !dbg !275
  %add724.1.4 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.1.4 = or disjoint i32 %add724.1.4, 256, !dbg !276
  %720 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.1.4, !dbg !277
  %xor735.1.4 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.1.4 = xor i32 %xor735.1.4, 8, !dbg !277
  %add.ptr739.1.4 = getelementptr inbounds i8, ptr addrspace(3) %720, i32 %add.ptr739.idx.1.4, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.1.4 = zext i16 %719 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.1.4 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.1.4, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.1.4 = zext i16 %718 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.1.4 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.1.4, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.1.4 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.1.4, %v_column_local.sroa.5.0.insert.shift.1.4, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.1.4 = zext i16 %717 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.1.4 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.1.4, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.1.4 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.1.4, %v_column_local.sroa.4.0.insert.shift.1.4, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.1.4 = zext i16 %716 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.1.4 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.1.4, %v_column_local.sroa.0.0.insert.ext.1.4, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.1.4, ptr addrspace(3) %add.ptr739.1.4, align 8, !dbg !278
  %conv673.2.4 = trunc i32 %702 to i16, !dbg !270
  %conv681.2.4 = trunc i32 %710 to i16, !dbg !271
  %721 = select i1 %cmp624, i16 %v_fetch_local.sroa.42.4.extract.trunc1700, i16 %conv673.2.4, !dbg !272
  %722 = select i1 %cmp624, i16 %v_fetch_local.sroa.202.20.extract.trunc2000, i16 %conv681.2.4, !dbg !273
  %723 = select i1 %cmp624, i16 %conv673.2.4, i16 %v_fetch_local.sroa.122.12.extract.trunc1850, !dbg !274
  %724 = select i1 %cmp624, i16 %conv681.2.4, i16 %v_fetch_local.sroa.282.28.extract.trunc2150, !dbg !275
  %add724.2.4 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.2.4 = or disjoint i32 %add724.2.4, 512, !dbg !276
  %725 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.2.4, !dbg !277
  %xor735.2.4 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.2.4 = xor i32 %xor735.2.4, 16, !dbg !277
  %add.ptr739.2.4 = getelementptr inbounds i8, ptr addrspace(3) %725, i32 %add.ptr739.idx.2.4, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.2.4 = zext i16 %724 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.2.4 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.2.4, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.2.4 = zext i16 %723 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.2.4 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.2.4, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.2.4 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.2.4, %v_column_local.sroa.5.0.insert.shift.2.4, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.2.4 = zext i16 %722 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.2.4 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.2.4, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.2.4 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.2.4, %v_column_local.sroa.4.0.insert.shift.2.4, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.2.4 = zext i16 %721 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.2.4 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.2.4, %v_column_local.sroa.0.0.insert.ext.2.4, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.2.4, ptr addrspace(3) %add.ptr739.2.4, align 8, !dbg !278
  %shr672.3.4 = lshr i32 %702, 16, !dbg !279
  %conv673.3.4 = trunc nuw i32 %shr672.3.4 to i16, !dbg !270
  %shr680.3.4 = lshr i32 %710, 16, !dbg !280
  %conv681.3.4 = trunc nuw i32 %shr680.3.4 to i16, !dbg !271
  %726 = select i1 %cmp624, i16 %v_fetch_local.sroa.42.6.extract.trunc1738, i16 %conv673.3.4, !dbg !272
  %727 = select i1 %cmp624, i16 %v_fetch_local.sroa.202.22.extract.trunc2038, i16 %conv681.3.4, !dbg !273
  %728 = select i1 %cmp624, i16 %conv673.3.4, i16 %v_fetch_local.sroa.122.14.extract.trunc1888, !dbg !274
  %729 = select i1 %cmp624, i16 %conv681.3.4, i16 %v_fetch_local.sroa.282.30.extract.trunc2188, !dbg !275
  %add724.3.4 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.3.4 = or disjoint i32 %add724.3.4, 768, !dbg !276
  %730 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.3.4, !dbg !277
  %xor735.3.4 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.3.4 = xor i32 %xor735.3.4, 24, !dbg !277
  %add.ptr739.3.4 = getelementptr inbounds i8, ptr addrspace(3) %730, i32 %add.ptr739.idx.3.4, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.3.4 = zext i16 %729 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.3.4 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.3.4, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.3.4 = zext i16 %728 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.3.4 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.3.4, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.3.4 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.3.4, %v_column_local.sroa.5.0.insert.shift.3.4, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.3.4 = zext i16 %727 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.3.4 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.3.4, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.3.4 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.3.4, %v_column_local.sroa.4.0.insert.shift.3.4, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.3.4 = zext i16 %726 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.3.4 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.3.4, %v_column_local.sroa.0.0.insert.ext.3.4, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.3.4, ptr addrspace(3) %add.ptr739.3.4, align 8, !dbg !278
  fence syncscope("warp") release, !dbg !281
  tail call void @llvm.mxc.barrier.warp(), !dbg !284
  fence syncscope("warp") acquire, !dbg !285
  %add756.4 = or disjoint i32 %mul749, %mul755, !dbg !286
  %731 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.4, !dbg !287
  %add.ptr766.idx.4 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.4 = getelementptr inbounds i8, ptr addrspace(3) %731, i32 %add.ptr766.idx.4, !dbg !287
  %732 = load <4 x half>, ptr addrspace(3) %add.ptr766.4, align 8, !dbg !288
  %add751.1.4 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.1.4 = or disjoint i32 %add751.1.4, 64, !dbg !286
  %733 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.1.4, !dbg !287
  %xor762.1.4 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.1.4 = xor i32 %xor762.1.4, 8, !dbg !287
  %add.ptr766.1.4 = getelementptr inbounds i8, ptr addrspace(3) %733, i32 %add.ptr766.idx.1.4, !dbg !287
  %734 = load <4 x half>, ptr addrspace(3) %add.ptr766.1.4, align 8, !dbg !288
  %add751.2.4 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.2.4 = or disjoint i32 %add751.2.4, 128, !dbg !286
  %735 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.2.4, !dbg !287
  %xor762.2.4 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.2.4 = xor i32 %xor762.2.4, 16, !dbg !287
  %add.ptr766.2.4 = getelementptr inbounds i8, ptr addrspace(3) %735, i32 %add.ptr766.idx.2.4, !dbg !287
  %736 = load <4 x half>, ptr addrspace(3) %add.ptr766.2.4, align 8, !dbg !288
  %add751.3.4 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.3.4 = or disjoint i32 %add751.3.4, 192, !dbg !286
  %737 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.3.4, !dbg !287
  %xor762.3.4 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.3.4 = xor i32 %xor762.3.4, 24, !dbg !287
  %add.ptr766.3.4 = getelementptr inbounds i8, ptr addrspace(3) %737, i32 %add.ptr766.idx.3.4, !dbg !287
  %738 = load <4 x half>, ptr addrspace(3) %add.ptr766.3.4, align 8, !dbg !288
  %739 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %732, <4 x half> %690, <4 x float> %output_acc.sroa.0.3), !dbg !289
  %740 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %734, <4 x half> %690, <4 x float> %output_acc.sroa.34.3), !dbg !289
  %741 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %736, <4 x half> %690, <4 x float> %output_acc.sroa.66.3), !dbg !289
  %742 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %738, <4 x half> %690, <4 x float> %output_acc.sroa.98.3), !dbg !289
  br label %if.end793.4, !dbg !290

if.end793.4:                                      ; preds = %if.end576.1.4, %if.end793.3
  %bc2782 = phi <4 x half> [ %232, %if.end793.3 ], [ %690, %if.end576.1.4 ], !dbg !83
  %output_acc.sroa.98.4 = phi <4 x float> [ %output_acc.sroa.98.3, %if.end793.3 ], [ %742, %if.end576.1.4 ], !dbg !83
  %output_acc.sroa.66.4 = phi <4 x float> [ %output_acc.sroa.66.3, %if.end793.3 ], [ %741, %if.end576.1.4 ], !dbg !83
  %output_acc.sroa.34.4 = phi <4 x float> [ %output_acc.sroa.34.3, %if.end793.3 ], [ %740, %if.end576.1.4 ], !dbg !83
  %output_acc.sroa.0.4 = phi <4 x float> [ %output_acc.sroa.0.3, %if.end793.3 ], [ %739, %if.end576.1.4 ], !dbg !83
  %743 = load i32, ptr addrspace(1) %arrayidx130.5, align 4, !dbg !186, !tbaa !30
  %mul444.5 = shl nsw i32 %743, 4, !dbg !187
  %cmp445.5 = icmp slt i32 %743, 0, !dbg !188
  %cmp448.not.5 = icmp sgt i32 %mul444.5, %1
  %or.cond1204.5 = select i1 %cmp445.5, i1 true, i1 %cmp448.not.5, !dbg !189
  br i1 %or.cond1204.5, label %if.end793.5, label %if.then449.5, !dbg !189

if.then449.5:                                     ; preds = %if.end793.4
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454.5 = icmp eq i32 %shr324, 1, !dbg !195
  br i1 %cmp454.5, label %if.then455.5, label %if.end464.5, !dbg !196

if.then455.5:                                     ; preds = %if.then449.5
  %sub460.5 = fsub contract float %max_cache.sroa.11.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461.5 = fmul contract float %sub460.5, 0x3FC7154760000000, !dbg !198
  %cmp.i.i1139.5 = fcmp contract olt float %mul461.5, -1.260000e+02, !dbg !199
  %cond.i.i1140.5 = select contract i1 %cmp.i.i1139.5, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i1141.5 = fadd contract float %mul461.5, %cond.i.i1140.5, !dbg !199
  %744 = tail call contract float @llvm.exp2.f32(float %add.i.i1141.5), !dbg !199
  %cond2.i.i1142.5 = select contract i1 %cmp.i.i1139.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i1143.5 = fmul contract float %cond2.i.i1142.5, %744, !dbg !199
  %745 = bitcast float %mul.i.i1143.5 to i32, !dbg !202
  br label %if.end464.5, !dbg !201

if.end464.5:                                      ; preds = %if.then455.5, %if.then449.5
  %rescale.sroa.0.0.5 = phi i32 [ %745, %if.then455.5 ], [ 0, %if.then449.5 ], !dbg !83
  %746 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %747 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %746) #11, !dbg !209
  %rem.i.i.5 = or disjoint i32 %and469, 16, !dbg !291
  %and.i.i1144.5 = and i32 %747, 1073741760, !dbg !210
  %add.i.i1145.5 = or disjoint i32 %and.i.i1144.5, %rem.i.i.5, !dbg !211
  %shl.i.i1146.5 = shl nuw i32 %add.i.i1145.5, 2, !dbg !212
  %748 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1146.5, i32 %rescale.sroa.0.0.5), !dbg !213
  %749 = bitcast i32 %748 to float, !dbg !214
  %750 = extractelement <4 x half> %274, i64 0, !dbg !215
  %conv.i1147.5 = fpext half %750 to float, !dbg !215
  %751 = extractelement <4 x half> %274, i64 1, !dbg !218
  %conv6.i.5 = fpext half %751 to float, !dbg !218
  %752 = extractelement <4 x half> %274, i64 2, !dbg !219
  %conv.i1149.5 = fpext half %752 to float, !dbg !219
  %753 = extractelement <4 x half> %274, i64 3, !dbg !221
  %conv6.i1151.5 = fpext half %753 to float, !dbg !221
  %mul494.5 = fmul contract float %749, %conv.i1147.5, !dbg !222
  %mul498.5 = fmul contract float %749, %conv6.i.5, !dbg !223
  %mul502.5 = fmul contract float %749, %conv.i1149.5, !dbg !224
  %mul506.5 = fmul contract float %749, %conv6.i1151.5, !dbg !225
  %754 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %755 = fptrunc float %mul494.5 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %754), !dbg !226, !noalias !230
  %756 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %757 = fptrunc float %mul498.5 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %756), !dbg !235, !noalias !230
  %758 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %759 = fptrunc float %mul502.5 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %758), !dbg !237, !noalias !241
  %760 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %761 = fptrunc float %mul506.5 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %760), !dbg !246, !noalias !241
  %762 = insertelement <4 x half> poison, half %755, i64 0, !dbg !248
  %763 = insertelement <4 x half> %762, half %757, i64 1, !dbg !248
  %764 = insertelement <4 x half> %763, half %759, i64 2, !dbg !248
  %765 = insertelement <4 x half> %764, half %761, i64 3, !dbg !248
  %shr529.5 = lshr exact i32 %mul444.5, 1
  %add530.5 = add nuw nsw i32 %shr529.5, %shr140
  %cmp531.5 = icmp ult i32 %add530.5, 512
  %conv541.5 = zext nneg i32 %mul444.5 to i64
  br i1 %cmp531.5, label %if.then532.5, label %if.end576.5, !dbg !249

if.then532.5:                                     ; preds = %if.end464.5
  %766 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1241.5 = shl nuw nsw i64 %conv541.5, 7, !dbg !250
  %767 = getelementptr inbounds i8, ptr addrspace(4) %766, i64 %.idx1241.5, !dbg !250
  %condval_2.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %767, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %767, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.5, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %767, i64 8, !dbg !251
  %condval_2.sroa.6.0.copyload.5 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.5, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %767, i64 12, !dbg !251
  %condval_2.sroa.7.0.copyload.5 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.5, align 4, !dbg !251, !tbaa !30
  br label %if.end576.5, !dbg !252

if.end576.5:                                      ; preds = %if.then532.5, %if.end464.5
  %condval_2.sroa.0.0.5 = phi i32 [ %condval_2.sroa.0.0.copyload.5, %if.then532.5 ], [ 0, %if.end464.5 ], !dbg !83
  %condval_2.sroa.5.0.5 = phi i32 [ %condval_2.sroa.5.0.copyload.5, %if.then532.5 ], [ 0, %if.end464.5 ], !dbg !83
  %condval_2.sroa.6.0.5 = phi i32 [ %condval_2.sroa.6.0.copyload.5, %if.then532.5 ], [ 0, %if.end464.5 ], !dbg !83
  %condval_2.sroa.7.0.5 = phi i32 [ %condval_2.sroa.7.0.copyload.5, %if.then532.5 ], [ 0, %if.end464.5 ], !dbg !83
  br i1 %cmp531.5, label %if.then532.1.5, label %if.end576.1.5, !dbg !249

if.then532.1.5:                                   ; preds = %if.end576.5
  %768 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1241.1.5 = shl nuw nsw i64 %conv541.5, 7, !dbg !250
  %769 = getelementptr inbounds i8, ptr addrspace(4) %768, i64 %.idx1241.1.5, !dbg !250
  %add.ptr552.1.5 = getelementptr inbounds i8, ptr addrspace(4) %769, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1.5 = load i32, ptr addrspace(4) %add.ptr552.1.5, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %769, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.5, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %769, i64 136, !dbg !251
  %condval_2.sroa.6.0.copyload.1.5 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.5, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %769, i64 140, !dbg !251
  %condval_2.sroa.7.0.copyload.1.5 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.5, align 4, !dbg !251, !tbaa !30
  br label %if.end576.1.5, !dbg !252

if.end576.1.5:                                    ; preds = %if.then532.1.5, %if.end576.5
  %condval_2.sroa.0.0.1.5 = phi i32 [ %condval_2.sroa.0.0.copyload.1.5, %if.then532.1.5 ], [ 0, %if.end576.5 ], !dbg !83
  %condval_2.sroa.5.0.1.5 = phi i32 [ %condval_2.sroa.5.0.copyload.1.5, %if.then532.1.5 ], [ 0, %if.end576.5 ], !dbg !83
  %condval_2.sroa.6.0.1.5 = phi i32 [ %condval_2.sroa.6.0.copyload.1.5, %if.then532.1.5 ], [ 0, %if.end576.5 ], !dbg !83
  %condval_2.sroa.7.0.1.5 = phi i32 [ %condval_2.sroa.7.0.copyload.1.5, %if.then532.1.5 ], [ 0, %if.end576.5 ], !dbg !83
  %v_fetch_local.sroa.0.0.extract.trunc1629 = trunc i32 %condval_2.sroa.0.0.5 to i16, !dbg !253
  %v_fetch_local.sroa.0.2.extract.shift1668 = lshr i32 %condval_2.sroa.0.0.5, 16, !dbg !254
  %v_fetch_local.sroa.0.2.extract.trunc1669 = trunc nuw i32 %v_fetch_local.sroa.0.2.extract.shift1668 to i16, !dbg !254
  %v_fetch_local.sroa.82.8.extract.trunc1779 = trunc i32 %condval_2.sroa.6.0.5 to i16, !dbg !255
  %v_fetch_local.sroa.82.10.extract.shift1818 = lshr i32 %condval_2.sroa.6.0.5, 16, !dbg !256
  %v_fetch_local.sroa.82.10.extract.trunc1819 = trunc nuw i32 %v_fetch_local.sroa.82.10.extract.shift1818 to i16, !dbg !256
  %cond.5 = select i1 %cmp624, i32 %condval_2.sroa.6.0.5, i32 %condval_2.sroa.0.0.5, !dbg !257
  %770 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %771 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %770) #11, !dbg !263
  %xor.i.i1164.5 = xor i32 %771, 8, !dbg !264
  %772 = and i32 %771, -64, !dbg !265
  %and.i.i1165.5 = add nsw i32 %772, 64, !dbg !265
  %cmp.not.i.i1166.5 = icmp slt i32 %xor.i.i1164.5, %and.i.i1165.5, !dbg !266
  %cond.i.i1167.5 = select i1 %cmp.not.i.i1166.5, i32 %xor.i.i1164.5, i32 %771, !dbg !267
  %shl.i.i1168.5 = shl i32 %cond.i.i1167.5, 2, !dbg !268
  %773 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.5, i32 %cond.5), !dbg !269
  %v_fetch_local.sroa.42.4.extract.trunc1704 = trunc i32 %condval_2.sroa.5.0.5 to i16, !dbg !253
  %v_fetch_local.sroa.42.6.extract.shift1743 = lshr i32 %condval_2.sroa.5.0.5, 16, !dbg !254
  %v_fetch_local.sroa.42.6.extract.trunc1744 = trunc nuw i32 %v_fetch_local.sroa.42.6.extract.shift1743 to i16, !dbg !254
  %v_fetch_local.sroa.122.12.extract.trunc1854 = trunc i32 %condval_2.sroa.7.0.5 to i16, !dbg !255
  %v_fetch_local.sroa.122.14.extract.shift1893 = lshr i32 %condval_2.sroa.7.0.5, 16, !dbg !256
  %v_fetch_local.sroa.122.14.extract.trunc1894 = trunc nuw i32 %v_fetch_local.sroa.122.14.extract.shift1893 to i16, !dbg !256
  %cond.1.5 = select i1 %cmp624, i32 %condval_2.sroa.7.0.5, i32 %condval_2.sroa.5.0.5, !dbg !257
  %774 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %775 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %774) #11, !dbg !263
  %xor.i.i1164.1.5 = xor i32 %775, 8, !dbg !264
  %776 = and i32 %775, -64, !dbg !265
  %and.i.i1165.1.5 = add nsw i32 %776, 64, !dbg !265
  %cmp.not.i.i1166.1.5 = icmp slt i32 %xor.i.i1164.1.5, %and.i.i1165.1.5, !dbg !266
  %cond.i.i1167.1.5 = select i1 %cmp.not.i.i1166.1.5, i32 %xor.i.i1164.1.5, i32 %775, !dbg !267
  %shl.i.i1168.1.5 = shl i32 %cond.i.i1167.1.5, 2, !dbg !268
  %777 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.1.5, i32 %cond.1.5), !dbg !269
  %v_fetch_local.sroa.162.16.extract.trunc1929 = trunc i32 %condval_2.sroa.0.0.1.5 to i16, !dbg !253
  %v_fetch_local.sroa.162.18.extract.shift1968 = lshr i32 %condval_2.sroa.0.0.1.5, 16, !dbg !254
  %v_fetch_local.sroa.162.18.extract.trunc1969 = trunc nuw i32 %v_fetch_local.sroa.162.18.extract.shift1968 to i16, !dbg !254
  %v_fetch_local.sroa.242.24.extract.trunc2079 = trunc i32 %condval_2.sroa.6.0.1.5 to i16, !dbg !255
  %v_fetch_local.sroa.242.26.extract.shift2118 = lshr i32 %condval_2.sroa.6.0.1.5, 16, !dbg !256
  %v_fetch_local.sroa.242.26.extract.trunc2119 = trunc nuw i32 %v_fetch_local.sroa.242.26.extract.shift2118 to i16, !dbg !256
  %cond.11336.5 = select i1 %cmp624, i32 %condval_2.sroa.6.0.1.5, i32 %condval_2.sroa.0.0.1.5, !dbg !257
  %778 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %779 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %778) #11, !dbg !263
  %xor.i.i1164.11337.5 = xor i32 %779, 8, !dbg !264
  %780 = and i32 %779, -64, !dbg !265
  %and.i.i1165.11338.5 = add nsw i32 %780, 64, !dbg !265
  %cmp.not.i.i1166.11339.5 = icmp slt i32 %xor.i.i1164.11337.5, %and.i.i1165.11338.5, !dbg !266
  %cond.i.i1167.11340.5 = select i1 %cmp.not.i.i1166.11339.5, i32 %xor.i.i1164.11337.5, i32 %779, !dbg !267
  %shl.i.i1168.11341.5 = shl i32 %cond.i.i1167.11340.5, 2, !dbg !268
  %781 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.11341.5, i32 %cond.11336.5), !dbg !269
  %v_fetch_local.sroa.202.20.extract.trunc2004 = trunc i32 %condval_2.sroa.5.0.1.5 to i16, !dbg !253
  %v_fetch_local.sroa.202.22.extract.shift2043 = lshr i32 %condval_2.sroa.5.0.1.5, 16, !dbg !254
  %v_fetch_local.sroa.202.22.extract.trunc2044 = trunc nuw i32 %v_fetch_local.sroa.202.22.extract.shift2043 to i16, !dbg !254
  %v_fetch_local.sroa.282.28.extract.trunc2154 = trunc i32 %condval_2.sroa.7.0.1.5 to i16, !dbg !255
  %v_fetch_local.sroa.282.30.extract.shift2193 = lshr i32 %condval_2.sroa.7.0.1.5, 16, !dbg !256
  %v_fetch_local.sroa.282.30.extract.trunc2194 = trunc nuw i32 %v_fetch_local.sroa.282.30.extract.shift2193 to i16, !dbg !256
  %cond.1.1.5 = select i1 %cmp624, i32 %condval_2.sroa.7.0.1.5, i32 %condval_2.sroa.5.0.1.5, !dbg !257
  %782 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %783 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %782) #11, !dbg !263
  %xor.i.i1164.1.1.5 = xor i32 %783, 8, !dbg !264
  %784 = and i32 %783, -64, !dbg !265
  %and.i.i1165.1.1.5 = add nsw i32 %784, 64, !dbg !265
  %cmp.not.i.i1166.1.1.5 = icmp slt i32 %xor.i.i1164.1.1.5, %and.i.i1165.1.1.5, !dbg !266
  %cond.i.i1167.1.1.5 = select i1 %cmp.not.i.i1166.1.1.5, i32 %xor.i.i1164.1.1.5, i32 %783, !dbg !267
  %shl.i.i1168.1.1.5 = shl i32 %cond.i.i1167.1.1.5, 2, !dbg !268
  %785 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.1.1.5, i32 %cond.1.1.5), !dbg !269
  %conv673.5 = trunc i32 %773 to i16, !dbg !270
  %conv681.5 = trunc i32 %781 to i16, !dbg !271
  %786 = select i1 %cmp624, i16 %v_fetch_local.sroa.0.0.extract.trunc1629, i16 %conv673.5, !dbg !272
  %787 = select i1 %cmp624, i16 %v_fetch_local.sroa.162.16.extract.trunc1929, i16 %conv681.5, !dbg !273
  %788 = select i1 %cmp624, i16 %conv673.5, i16 %v_fetch_local.sroa.82.8.extract.trunc1779, !dbg !274
  %789 = select i1 %cmp624, i16 %conv681.5, i16 %v_fetch_local.sroa.242.24.extract.trunc2079, !dbg !275
  %add729.5 = or disjoint i32 %mul723, %mul728, !dbg !276
  %790 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.5, !dbg !277
  %add.ptr739.idx.5 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.5 = getelementptr inbounds i8, ptr addrspace(3) %790, i32 %add.ptr739.idx.5, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.5 = zext i16 %789 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.5 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.5, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.5 = zext i16 %788 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.5 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.5, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.5 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.5, %v_column_local.sroa.5.0.insert.shift.5, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.5 = zext i16 %787 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.5 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.5, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.5 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.5, %v_column_local.sroa.4.0.insert.shift.5, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.5 = zext i16 %786 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.5 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.5, %v_column_local.sroa.0.0.insert.ext.5, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.5, ptr addrspace(3) %add.ptr739.5, align 8, !dbg !278
  %shr672.1.5 = lshr i32 %773, 16, !dbg !279
  %conv673.1.5 = trunc nuw i32 %shr672.1.5 to i16, !dbg !270
  %shr680.1.5 = lshr i32 %781, 16, !dbg !280
  %conv681.1.5 = trunc nuw i32 %shr680.1.5 to i16, !dbg !271
  %791 = select i1 %cmp624, i16 %v_fetch_local.sroa.0.2.extract.trunc1669, i16 %conv673.1.5, !dbg !272
  %792 = select i1 %cmp624, i16 %v_fetch_local.sroa.162.18.extract.trunc1969, i16 %conv681.1.5, !dbg !273
  %793 = select i1 %cmp624, i16 %conv673.1.5, i16 %v_fetch_local.sroa.82.10.extract.trunc1819, !dbg !274
  %794 = select i1 %cmp624, i16 %conv681.1.5, i16 %v_fetch_local.sroa.242.26.extract.trunc2119, !dbg !275
  %add724.1.5 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.1.5 = or disjoint i32 %add724.1.5, 256, !dbg !276
  %795 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.1.5, !dbg !277
  %xor735.1.5 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.1.5 = xor i32 %xor735.1.5, 8, !dbg !277
  %add.ptr739.1.5 = getelementptr inbounds i8, ptr addrspace(3) %795, i32 %add.ptr739.idx.1.5, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.1.5 = zext i16 %794 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.1.5 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.1.5, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.1.5 = zext i16 %793 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.1.5 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.1.5, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.1.5 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.1.5, %v_column_local.sroa.5.0.insert.shift.1.5, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.1.5 = zext i16 %792 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.1.5 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.1.5, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.1.5 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.1.5, %v_column_local.sroa.4.0.insert.shift.1.5, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.1.5 = zext i16 %791 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.1.5 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.1.5, %v_column_local.sroa.0.0.insert.ext.1.5, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.1.5, ptr addrspace(3) %add.ptr739.1.5, align 8, !dbg !278
  %conv673.2.5 = trunc i32 %777 to i16, !dbg !270
  %conv681.2.5 = trunc i32 %785 to i16, !dbg !271
  %796 = select i1 %cmp624, i16 %v_fetch_local.sroa.42.4.extract.trunc1704, i16 %conv673.2.5, !dbg !272
  %797 = select i1 %cmp624, i16 %v_fetch_local.sroa.202.20.extract.trunc2004, i16 %conv681.2.5, !dbg !273
  %798 = select i1 %cmp624, i16 %conv673.2.5, i16 %v_fetch_local.sroa.122.12.extract.trunc1854, !dbg !274
  %799 = select i1 %cmp624, i16 %conv681.2.5, i16 %v_fetch_local.sroa.282.28.extract.trunc2154, !dbg !275
  %add724.2.5 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.2.5 = or disjoint i32 %add724.2.5, 512, !dbg !276
  %800 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.2.5, !dbg !277
  %xor735.2.5 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.2.5 = xor i32 %xor735.2.5, 16, !dbg !277
  %add.ptr739.2.5 = getelementptr inbounds i8, ptr addrspace(3) %800, i32 %add.ptr739.idx.2.5, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.2.5 = zext i16 %799 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.2.5 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.2.5, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.2.5 = zext i16 %798 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.2.5 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.2.5, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.2.5 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.2.5, %v_column_local.sroa.5.0.insert.shift.2.5, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.2.5 = zext i16 %797 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.2.5 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.2.5, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.2.5 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.2.5, %v_column_local.sroa.4.0.insert.shift.2.5, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.2.5 = zext i16 %796 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.2.5 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.2.5, %v_column_local.sroa.0.0.insert.ext.2.5, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.2.5, ptr addrspace(3) %add.ptr739.2.5, align 8, !dbg !278
  %shr672.3.5 = lshr i32 %777, 16, !dbg !279
  %conv673.3.5 = trunc nuw i32 %shr672.3.5 to i16, !dbg !270
  %shr680.3.5 = lshr i32 %785, 16, !dbg !280
  %conv681.3.5 = trunc nuw i32 %shr680.3.5 to i16, !dbg !271
  %801 = select i1 %cmp624, i16 %v_fetch_local.sroa.42.6.extract.trunc1744, i16 %conv673.3.5, !dbg !272
  %802 = select i1 %cmp624, i16 %v_fetch_local.sroa.202.22.extract.trunc2044, i16 %conv681.3.5, !dbg !273
  %803 = select i1 %cmp624, i16 %conv673.3.5, i16 %v_fetch_local.sroa.122.14.extract.trunc1894, !dbg !274
  %804 = select i1 %cmp624, i16 %conv681.3.5, i16 %v_fetch_local.sroa.282.30.extract.trunc2194, !dbg !275
  %add724.3.5 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.3.5 = or disjoint i32 %add724.3.5, 768, !dbg !276
  %805 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.3.5, !dbg !277
  %xor735.3.5 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.3.5 = xor i32 %xor735.3.5, 24, !dbg !277
  %add.ptr739.3.5 = getelementptr inbounds i8, ptr addrspace(3) %805, i32 %add.ptr739.idx.3.5, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.3.5 = zext i16 %804 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.3.5 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.3.5, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.3.5 = zext i16 %803 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.3.5 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.3.5, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.3.5 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.3.5, %v_column_local.sroa.5.0.insert.shift.3.5, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.3.5 = zext i16 %802 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.3.5 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.3.5, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.3.5 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.3.5, %v_column_local.sroa.4.0.insert.shift.3.5, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.3.5 = zext i16 %801 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.3.5 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.3.5, %v_column_local.sroa.0.0.insert.ext.3.5, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.3.5, ptr addrspace(3) %add.ptr739.3.5, align 8, !dbg !278
  fence syncscope("warp") release, !dbg !281
  tail call void @llvm.mxc.barrier.warp(), !dbg !284
  fence syncscope("warp") acquire, !dbg !285
  %add756.5 = or disjoint i32 %mul749, %mul755, !dbg !286
  %806 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.5, !dbg !287
  %add.ptr766.idx.5 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.5 = getelementptr inbounds i8, ptr addrspace(3) %806, i32 %add.ptr766.idx.5, !dbg !287
  %807 = load <4 x half>, ptr addrspace(3) %add.ptr766.5, align 8, !dbg !288
  %add751.1.5 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.1.5 = or disjoint i32 %add751.1.5, 64, !dbg !286
  %808 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.1.5, !dbg !287
  %xor762.1.5 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.1.5 = xor i32 %xor762.1.5, 8, !dbg !287
  %add.ptr766.1.5 = getelementptr inbounds i8, ptr addrspace(3) %808, i32 %add.ptr766.idx.1.5, !dbg !287
  %809 = load <4 x half>, ptr addrspace(3) %add.ptr766.1.5, align 8, !dbg !288
  %add751.2.5 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.2.5 = or disjoint i32 %add751.2.5, 128, !dbg !286
  %810 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.2.5, !dbg !287
  %xor762.2.5 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.2.5 = xor i32 %xor762.2.5, 16, !dbg !287
  %add.ptr766.2.5 = getelementptr inbounds i8, ptr addrspace(3) %810, i32 %add.ptr766.idx.2.5, !dbg !287
  %811 = load <4 x half>, ptr addrspace(3) %add.ptr766.2.5, align 8, !dbg !288
  %add751.3.5 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.3.5 = or disjoint i32 %add751.3.5, 192, !dbg !286
  %812 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.3.5, !dbg !287
  %xor762.3.5 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.3.5 = xor i32 %xor762.3.5, 24, !dbg !287
  %add.ptr766.3.5 = getelementptr inbounds i8, ptr addrspace(3) %812, i32 %add.ptr766.idx.3.5, !dbg !287
  %813 = load <4 x half>, ptr addrspace(3) %add.ptr766.3.5, align 8, !dbg !288
  %814 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %807, <4 x half> %765, <4 x float> %output_acc.sroa.0.4), !dbg !289
  %815 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %809, <4 x half> %765, <4 x float> %output_acc.sroa.34.4), !dbg !289
  %816 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %811, <4 x half> %765, <4 x float> %output_acc.sroa.66.4), !dbg !289
  %817 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %813, <4 x half> %765, <4 x float> %output_acc.sroa.98.4), !dbg !289
  br label %if.end793.5, !dbg !290

if.end793.5:                                      ; preds = %if.end576.1.5, %if.end793.4
  %bc2786 = phi <4 x half> [ %274, %if.end793.4 ], [ %765, %if.end576.1.5 ], !dbg !83
  %output_acc.sroa.98.5 = phi <4 x float> [ %output_acc.sroa.98.4, %if.end793.4 ], [ %817, %if.end576.1.5 ], !dbg !83
  %output_acc.sroa.66.5 = phi <4 x float> [ %output_acc.sroa.66.4, %if.end793.4 ], [ %816, %if.end576.1.5 ], !dbg !83
  %output_acc.sroa.34.5 = phi <4 x float> [ %output_acc.sroa.34.4, %if.end793.4 ], [ %815, %if.end576.1.5 ], !dbg !83
  %output_acc.sroa.0.5 = phi <4 x float> [ %output_acc.sroa.0.4, %if.end793.4 ], [ %814, %if.end576.1.5 ], !dbg !83
  %818 = load i32, ptr addrspace(1) %arrayidx130.6, align 4, !dbg !186, !tbaa !30
  %mul444.6 = shl nsw i32 %818, 4, !dbg !187
  %cmp445.6 = icmp slt i32 %818, 0, !dbg !188
  %cmp448.not.6 = icmp sgt i32 %mul444.6, %1
  %or.cond1204.6 = select i1 %cmp445.6, i1 true, i1 %cmp448.not.6, !dbg !189
  br i1 %or.cond1204.6, label %if.end793.6, label %if.then449.6, !dbg !189

if.then449.6:                                     ; preds = %if.end793.5
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454.6 = icmp eq i32 %shr324, 2, !dbg !195
  br i1 %cmp454.6, label %if.then455.6, label %if.end464.6, !dbg !196

if.then455.6:                                     ; preds = %if.then449.6
  %sub460.6 = fsub contract float %max_cache.sroa.11.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461.6 = fmul contract float %sub460.6, 0x3FC7154760000000, !dbg !198
  %cmp.i.i1139.6 = fcmp contract olt float %mul461.6, -1.260000e+02, !dbg !199
  %cond.i.i1140.6 = select contract i1 %cmp.i.i1139.6, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i1141.6 = fadd contract float %mul461.6, %cond.i.i1140.6, !dbg !199
  %819 = tail call contract float @llvm.exp2.f32(float %add.i.i1141.6), !dbg !199
  %cond2.i.i1142.6 = select contract i1 %cmp.i.i1139.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i1143.6 = fmul contract float %cond2.i.i1142.6, %819, !dbg !199
  %820 = bitcast float %mul.i.i1143.6 to i32, !dbg !202
  br label %if.end464.6, !dbg !201

if.end464.6:                                      ; preds = %if.then455.6, %if.then449.6
  %rescale.sroa.0.0.6 = phi i32 [ %820, %if.then455.6 ], [ 0, %if.then449.6 ], !dbg !83
  %821 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %822 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %821) #11, !dbg !209
  %rem.i.i.6 = or disjoint i32 %and469, 32, !dbg !291
  %and.i.i1144.6 = and i32 %822, 1073741760, !dbg !210
  %add.i.i1145.6 = or disjoint i32 %and.i.i1144.6, %rem.i.i.6, !dbg !211
  %shl.i.i1146.6 = shl nuw i32 %add.i.i1145.6, 2, !dbg !212
  %823 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1146.6, i32 %rescale.sroa.0.0.6), !dbg !213
  %824 = bitcast i32 %823 to float, !dbg !214
  %825 = extractelement <4 x half> %316, i64 0, !dbg !215
  %conv.i1147.6 = fpext half %825 to float, !dbg !215
  %826 = extractelement <4 x half> %316, i64 1, !dbg !218
  %conv6.i.6 = fpext half %826 to float, !dbg !218
  %827 = extractelement <4 x half> %316, i64 2, !dbg !219
  %conv.i1149.6 = fpext half %827 to float, !dbg !219
  %828 = extractelement <4 x half> %316, i64 3, !dbg !221
  %conv6.i1151.6 = fpext half %828 to float, !dbg !221
  %mul494.6 = fmul contract float %824, %conv.i1147.6, !dbg !222
  %mul498.6 = fmul contract float %824, %conv6.i.6, !dbg !223
  %mul502.6 = fmul contract float %824, %conv.i1149.6, !dbg !224
  %mul506.6 = fmul contract float %824, %conv6.i1151.6, !dbg !225
  %829 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %830 = fptrunc float %mul494.6 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %829), !dbg !226, !noalias !230
  %831 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %832 = fptrunc float %mul498.6 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %831), !dbg !235, !noalias !230
  %833 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %834 = fptrunc float %mul502.6 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %833), !dbg !237, !noalias !241
  %835 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %836 = fptrunc float %mul506.6 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %835), !dbg !246, !noalias !241
  %837 = insertelement <4 x half> poison, half %830, i64 0, !dbg !248
  %838 = insertelement <4 x half> %837, half %832, i64 1, !dbg !248
  %839 = insertelement <4 x half> %838, half %834, i64 2, !dbg !248
  %840 = insertelement <4 x half> %839, half %836, i64 3, !dbg !248
  %shr529.6 = lshr exact i32 %mul444.6, 1
  %add530.6 = add nuw nsw i32 %shr529.6, %shr140
  %cmp531.6 = icmp ult i32 %add530.6, 512
  %conv541.6 = zext nneg i32 %mul444.6 to i64
  br i1 %cmp531.6, label %if.then532.6, label %if.end576.6, !dbg !249

if.then532.6:                                     ; preds = %if.end464.6
  %841 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1241.6 = shl nuw nsw i64 %conv541.6, 7, !dbg !250
  %842 = getelementptr inbounds i8, ptr addrspace(4) %841, i64 %.idx1241.6, !dbg !250
  %condval_2.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %842, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %842, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.6, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %842, i64 8, !dbg !251
  %condval_2.sroa.6.0.copyload.6 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.6, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %842, i64 12, !dbg !251
  %condval_2.sroa.7.0.copyload.6 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.6, align 4, !dbg !251, !tbaa !30
  br label %if.end576.6, !dbg !252

if.end576.6:                                      ; preds = %if.then532.6, %if.end464.6
  %condval_2.sroa.0.0.6 = phi i32 [ %condval_2.sroa.0.0.copyload.6, %if.then532.6 ], [ 0, %if.end464.6 ], !dbg !83
  %condval_2.sroa.5.0.6 = phi i32 [ %condval_2.sroa.5.0.copyload.6, %if.then532.6 ], [ 0, %if.end464.6 ], !dbg !83
  %condval_2.sroa.6.0.6 = phi i32 [ %condval_2.sroa.6.0.copyload.6, %if.then532.6 ], [ 0, %if.end464.6 ], !dbg !83
  %condval_2.sroa.7.0.6 = phi i32 [ %condval_2.sroa.7.0.copyload.6, %if.then532.6 ], [ 0, %if.end464.6 ], !dbg !83
  br i1 %cmp531.6, label %if.then532.1.6, label %if.end576.1.6, !dbg !249

if.then532.1.6:                                   ; preds = %if.end576.6
  %843 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1241.1.6 = shl nuw nsw i64 %conv541.6, 7, !dbg !250
  %844 = getelementptr inbounds i8, ptr addrspace(4) %843, i64 %.idx1241.1.6, !dbg !250
  %add.ptr552.1.6 = getelementptr inbounds i8, ptr addrspace(4) %844, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1.6 = load i32, ptr addrspace(4) %add.ptr552.1.6, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %844, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.6, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %844, i64 136, !dbg !251
  %condval_2.sroa.6.0.copyload.1.6 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.6, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %844, i64 140, !dbg !251
  %condval_2.sroa.7.0.copyload.1.6 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.6, align 4, !dbg !251, !tbaa !30
  br label %if.end576.1.6, !dbg !252

if.end576.1.6:                                    ; preds = %if.then532.1.6, %if.end576.6
  %condval_2.sroa.0.0.1.6 = phi i32 [ %condval_2.sroa.0.0.copyload.1.6, %if.then532.1.6 ], [ 0, %if.end576.6 ], !dbg !83
  %condval_2.sroa.5.0.1.6 = phi i32 [ %condval_2.sroa.5.0.copyload.1.6, %if.then532.1.6 ], [ 0, %if.end576.6 ], !dbg !83
  %condval_2.sroa.6.0.1.6 = phi i32 [ %condval_2.sroa.6.0.copyload.1.6, %if.then532.1.6 ], [ 0, %if.end576.6 ], !dbg !83
  %condval_2.sroa.7.0.1.6 = phi i32 [ %condval_2.sroa.7.0.copyload.1.6, %if.then532.1.6 ], [ 0, %if.end576.6 ], !dbg !83
  %v_fetch_local.sroa.0.0.extract.trunc1633 = trunc i32 %condval_2.sroa.0.0.6 to i16, !dbg !253
  %v_fetch_local.sroa.0.2.extract.shift1674 = lshr i32 %condval_2.sroa.0.0.6, 16, !dbg !254
  %v_fetch_local.sroa.0.2.extract.trunc1675 = trunc nuw i32 %v_fetch_local.sroa.0.2.extract.shift1674 to i16, !dbg !254
  %v_fetch_local.sroa.82.8.extract.trunc1783 = trunc i32 %condval_2.sroa.6.0.6 to i16, !dbg !255
  %v_fetch_local.sroa.82.10.extract.shift1824 = lshr i32 %condval_2.sroa.6.0.6, 16, !dbg !256
  %v_fetch_local.sroa.82.10.extract.trunc1825 = trunc nuw i32 %v_fetch_local.sroa.82.10.extract.shift1824 to i16, !dbg !256
  %cond.6 = select i1 %cmp624, i32 %condval_2.sroa.6.0.6, i32 %condval_2.sroa.0.0.6, !dbg !257
  %845 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %846 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %845) #11, !dbg !263
  %xor.i.i1164.6 = xor i32 %846, 8, !dbg !264
  %847 = and i32 %846, -64, !dbg !265
  %and.i.i1165.6 = add nsw i32 %847, 64, !dbg !265
  %cmp.not.i.i1166.6 = icmp slt i32 %xor.i.i1164.6, %and.i.i1165.6, !dbg !266
  %cond.i.i1167.6 = select i1 %cmp.not.i.i1166.6, i32 %xor.i.i1164.6, i32 %846, !dbg !267
  %shl.i.i1168.6 = shl i32 %cond.i.i1167.6, 2, !dbg !268
  %848 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.6, i32 %cond.6), !dbg !269
  %v_fetch_local.sroa.42.4.extract.trunc1708 = trunc i32 %condval_2.sroa.5.0.6 to i16, !dbg !253
  %v_fetch_local.sroa.42.6.extract.shift1749 = lshr i32 %condval_2.sroa.5.0.6, 16, !dbg !254
  %v_fetch_local.sroa.42.6.extract.trunc1750 = trunc nuw i32 %v_fetch_local.sroa.42.6.extract.shift1749 to i16, !dbg !254
  %v_fetch_local.sroa.122.12.extract.trunc1858 = trunc i32 %condval_2.sroa.7.0.6 to i16, !dbg !255
  %v_fetch_local.sroa.122.14.extract.shift1899 = lshr i32 %condval_2.sroa.7.0.6, 16, !dbg !256
  %v_fetch_local.sroa.122.14.extract.trunc1900 = trunc nuw i32 %v_fetch_local.sroa.122.14.extract.shift1899 to i16, !dbg !256
  %cond.1.6 = select i1 %cmp624, i32 %condval_2.sroa.7.0.6, i32 %condval_2.sroa.5.0.6, !dbg !257
  %849 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %850 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %849) #11, !dbg !263
  %xor.i.i1164.1.6 = xor i32 %850, 8, !dbg !264
  %851 = and i32 %850, -64, !dbg !265
  %and.i.i1165.1.6 = add nsw i32 %851, 64, !dbg !265
  %cmp.not.i.i1166.1.6 = icmp slt i32 %xor.i.i1164.1.6, %and.i.i1165.1.6, !dbg !266
  %cond.i.i1167.1.6 = select i1 %cmp.not.i.i1166.1.6, i32 %xor.i.i1164.1.6, i32 %850, !dbg !267
  %shl.i.i1168.1.6 = shl i32 %cond.i.i1167.1.6, 2, !dbg !268
  %852 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.1.6, i32 %cond.1.6), !dbg !269
  %v_fetch_local.sroa.162.16.extract.trunc1933 = trunc i32 %condval_2.sroa.0.0.1.6 to i16, !dbg !253
  %v_fetch_local.sroa.162.18.extract.shift1974 = lshr i32 %condval_2.sroa.0.0.1.6, 16, !dbg !254
  %v_fetch_local.sroa.162.18.extract.trunc1975 = trunc nuw i32 %v_fetch_local.sroa.162.18.extract.shift1974 to i16, !dbg !254
  %v_fetch_local.sroa.242.24.extract.trunc2083 = trunc i32 %condval_2.sroa.6.0.1.6 to i16, !dbg !255
  %v_fetch_local.sroa.242.26.extract.shift2124 = lshr i32 %condval_2.sroa.6.0.1.6, 16, !dbg !256
  %v_fetch_local.sroa.242.26.extract.trunc2125 = trunc nuw i32 %v_fetch_local.sroa.242.26.extract.shift2124 to i16, !dbg !256
  %cond.11336.6 = select i1 %cmp624, i32 %condval_2.sroa.6.0.1.6, i32 %condval_2.sroa.0.0.1.6, !dbg !257
  %853 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %854 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %853) #11, !dbg !263
  %xor.i.i1164.11337.6 = xor i32 %854, 8, !dbg !264
  %855 = and i32 %854, -64, !dbg !265
  %and.i.i1165.11338.6 = add nsw i32 %855, 64, !dbg !265
  %cmp.not.i.i1166.11339.6 = icmp slt i32 %xor.i.i1164.11337.6, %and.i.i1165.11338.6, !dbg !266
  %cond.i.i1167.11340.6 = select i1 %cmp.not.i.i1166.11339.6, i32 %xor.i.i1164.11337.6, i32 %854, !dbg !267
  %shl.i.i1168.11341.6 = shl i32 %cond.i.i1167.11340.6, 2, !dbg !268
  %856 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.11341.6, i32 %cond.11336.6), !dbg !269
  %v_fetch_local.sroa.202.20.extract.trunc2008 = trunc i32 %condval_2.sroa.5.0.1.6 to i16, !dbg !253
  %v_fetch_local.sroa.202.22.extract.shift2049 = lshr i32 %condval_2.sroa.5.0.1.6, 16, !dbg !254
  %v_fetch_local.sroa.202.22.extract.trunc2050 = trunc nuw i32 %v_fetch_local.sroa.202.22.extract.shift2049 to i16, !dbg !254
  %v_fetch_local.sroa.282.28.extract.trunc2158 = trunc i32 %condval_2.sroa.7.0.1.6 to i16, !dbg !255
  %v_fetch_local.sroa.282.30.extract.shift2199 = lshr i32 %condval_2.sroa.7.0.1.6, 16, !dbg !256
  %v_fetch_local.sroa.282.30.extract.trunc2200 = trunc nuw i32 %v_fetch_local.sroa.282.30.extract.shift2199 to i16, !dbg !256
  %cond.1.1.6 = select i1 %cmp624, i32 %condval_2.sroa.7.0.1.6, i32 %condval_2.sroa.5.0.1.6, !dbg !257
  %857 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %858 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %857) #11, !dbg !263
  %xor.i.i1164.1.1.6 = xor i32 %858, 8, !dbg !264
  %859 = and i32 %858, -64, !dbg !265
  %and.i.i1165.1.1.6 = add nsw i32 %859, 64, !dbg !265
  %cmp.not.i.i1166.1.1.6 = icmp slt i32 %xor.i.i1164.1.1.6, %and.i.i1165.1.1.6, !dbg !266
  %cond.i.i1167.1.1.6 = select i1 %cmp.not.i.i1166.1.1.6, i32 %xor.i.i1164.1.1.6, i32 %858, !dbg !267
  %shl.i.i1168.1.1.6 = shl i32 %cond.i.i1167.1.1.6, 2, !dbg !268
  %860 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.1.1.6, i32 %cond.1.1.6), !dbg !269
  %conv673.6 = trunc i32 %848 to i16, !dbg !270
  %conv681.6 = trunc i32 %856 to i16, !dbg !271
  %861 = select i1 %cmp624, i16 %v_fetch_local.sroa.0.0.extract.trunc1633, i16 %conv673.6, !dbg !272
  %862 = select i1 %cmp624, i16 %v_fetch_local.sroa.162.16.extract.trunc1933, i16 %conv681.6, !dbg !273
  %863 = select i1 %cmp624, i16 %conv673.6, i16 %v_fetch_local.sroa.82.8.extract.trunc1783, !dbg !274
  %864 = select i1 %cmp624, i16 %conv681.6, i16 %v_fetch_local.sroa.242.24.extract.trunc2083, !dbg !275
  %add729.6 = or disjoint i32 %mul723, %mul728, !dbg !276
  %865 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.6, !dbg !277
  %add.ptr739.idx.6 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.6 = getelementptr inbounds i8, ptr addrspace(3) %865, i32 %add.ptr739.idx.6, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.6 = zext i16 %864 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.6 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.6, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.6 = zext i16 %863 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.6 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.6, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.6 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.6, %v_column_local.sroa.5.0.insert.shift.6, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.6 = zext i16 %862 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.6 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.6, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.6 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.6, %v_column_local.sroa.4.0.insert.shift.6, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.6 = zext i16 %861 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.6 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.6, %v_column_local.sroa.0.0.insert.ext.6, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.6, ptr addrspace(3) %add.ptr739.6, align 8, !dbg !278
  %shr672.1.6 = lshr i32 %848, 16, !dbg !279
  %conv673.1.6 = trunc nuw i32 %shr672.1.6 to i16, !dbg !270
  %shr680.1.6 = lshr i32 %856, 16, !dbg !280
  %conv681.1.6 = trunc nuw i32 %shr680.1.6 to i16, !dbg !271
  %866 = select i1 %cmp624, i16 %v_fetch_local.sroa.0.2.extract.trunc1675, i16 %conv673.1.6, !dbg !272
  %867 = select i1 %cmp624, i16 %v_fetch_local.sroa.162.18.extract.trunc1975, i16 %conv681.1.6, !dbg !273
  %868 = select i1 %cmp624, i16 %conv673.1.6, i16 %v_fetch_local.sroa.82.10.extract.trunc1825, !dbg !274
  %869 = select i1 %cmp624, i16 %conv681.1.6, i16 %v_fetch_local.sroa.242.26.extract.trunc2125, !dbg !275
  %add724.1.6 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.1.6 = or disjoint i32 %add724.1.6, 256, !dbg !276
  %870 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.1.6, !dbg !277
  %xor735.1.6 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.1.6 = xor i32 %xor735.1.6, 8, !dbg !277
  %add.ptr739.1.6 = getelementptr inbounds i8, ptr addrspace(3) %870, i32 %add.ptr739.idx.1.6, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.1.6 = zext i16 %869 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.1.6 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.1.6, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.1.6 = zext i16 %868 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.1.6 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.1.6, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.1.6 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.1.6, %v_column_local.sroa.5.0.insert.shift.1.6, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.1.6 = zext i16 %867 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.1.6 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.1.6, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.1.6 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.1.6, %v_column_local.sroa.4.0.insert.shift.1.6, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.1.6 = zext i16 %866 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.1.6 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.1.6, %v_column_local.sroa.0.0.insert.ext.1.6, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.1.6, ptr addrspace(3) %add.ptr739.1.6, align 8, !dbg !278
  %conv673.2.6 = trunc i32 %852 to i16, !dbg !270
  %conv681.2.6 = trunc i32 %860 to i16, !dbg !271
  %871 = select i1 %cmp624, i16 %v_fetch_local.sroa.42.4.extract.trunc1708, i16 %conv673.2.6, !dbg !272
  %872 = select i1 %cmp624, i16 %v_fetch_local.sroa.202.20.extract.trunc2008, i16 %conv681.2.6, !dbg !273
  %873 = select i1 %cmp624, i16 %conv673.2.6, i16 %v_fetch_local.sroa.122.12.extract.trunc1858, !dbg !274
  %874 = select i1 %cmp624, i16 %conv681.2.6, i16 %v_fetch_local.sroa.282.28.extract.trunc2158, !dbg !275
  %add724.2.6 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.2.6 = or disjoint i32 %add724.2.6, 512, !dbg !276
  %875 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.2.6, !dbg !277
  %xor735.2.6 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.2.6 = xor i32 %xor735.2.6, 16, !dbg !277
  %add.ptr739.2.6 = getelementptr inbounds i8, ptr addrspace(3) %875, i32 %add.ptr739.idx.2.6, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.2.6 = zext i16 %874 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.2.6 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.2.6, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.2.6 = zext i16 %873 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.2.6 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.2.6, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.2.6 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.2.6, %v_column_local.sroa.5.0.insert.shift.2.6, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.2.6 = zext i16 %872 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.2.6 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.2.6, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.2.6 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.2.6, %v_column_local.sroa.4.0.insert.shift.2.6, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.2.6 = zext i16 %871 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.2.6 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.2.6, %v_column_local.sroa.0.0.insert.ext.2.6, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.2.6, ptr addrspace(3) %add.ptr739.2.6, align 8, !dbg !278
  %shr672.3.6 = lshr i32 %852, 16, !dbg !279
  %conv673.3.6 = trunc nuw i32 %shr672.3.6 to i16, !dbg !270
  %shr680.3.6 = lshr i32 %860, 16, !dbg !280
  %conv681.3.6 = trunc nuw i32 %shr680.3.6 to i16, !dbg !271
  %876 = select i1 %cmp624, i16 %v_fetch_local.sroa.42.6.extract.trunc1750, i16 %conv673.3.6, !dbg !272
  %877 = select i1 %cmp624, i16 %v_fetch_local.sroa.202.22.extract.trunc2050, i16 %conv681.3.6, !dbg !273
  %878 = select i1 %cmp624, i16 %conv673.3.6, i16 %v_fetch_local.sroa.122.14.extract.trunc1900, !dbg !274
  %879 = select i1 %cmp624, i16 %conv681.3.6, i16 %v_fetch_local.sroa.282.30.extract.trunc2200, !dbg !275
  %add724.3.6 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.3.6 = or disjoint i32 %add724.3.6, 768, !dbg !276
  %880 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.3.6, !dbg !277
  %xor735.3.6 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.3.6 = xor i32 %xor735.3.6, 24, !dbg !277
  %add.ptr739.3.6 = getelementptr inbounds i8, ptr addrspace(3) %880, i32 %add.ptr739.idx.3.6, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.3.6 = zext i16 %879 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.3.6 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.3.6, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.3.6 = zext i16 %878 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.3.6 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.3.6, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.3.6 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.3.6, %v_column_local.sroa.5.0.insert.shift.3.6, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.3.6 = zext i16 %877 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.3.6 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.3.6, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.3.6 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.3.6, %v_column_local.sroa.4.0.insert.shift.3.6, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.3.6 = zext i16 %876 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.3.6 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.3.6, %v_column_local.sroa.0.0.insert.ext.3.6, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.3.6, ptr addrspace(3) %add.ptr739.3.6, align 8, !dbg !278
  fence syncscope("warp") release, !dbg !281
  tail call void @llvm.mxc.barrier.warp(), !dbg !284
  fence syncscope("warp") acquire, !dbg !285
  %add756.6 = or disjoint i32 %mul749, %mul755, !dbg !286
  %881 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.6, !dbg !287
  %add.ptr766.idx.6 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.6 = getelementptr inbounds i8, ptr addrspace(3) %881, i32 %add.ptr766.idx.6, !dbg !287
  %882 = load <4 x half>, ptr addrspace(3) %add.ptr766.6, align 8, !dbg !288
  %add751.1.6 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.1.6 = or disjoint i32 %add751.1.6, 64, !dbg !286
  %883 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.1.6, !dbg !287
  %xor762.1.6 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.1.6 = xor i32 %xor762.1.6, 8, !dbg !287
  %add.ptr766.1.6 = getelementptr inbounds i8, ptr addrspace(3) %883, i32 %add.ptr766.idx.1.6, !dbg !287
  %884 = load <4 x half>, ptr addrspace(3) %add.ptr766.1.6, align 8, !dbg !288
  %add751.2.6 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.2.6 = or disjoint i32 %add751.2.6, 128, !dbg !286
  %885 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.2.6, !dbg !287
  %xor762.2.6 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.2.6 = xor i32 %xor762.2.6, 16, !dbg !287
  %add.ptr766.2.6 = getelementptr inbounds i8, ptr addrspace(3) %885, i32 %add.ptr766.idx.2.6, !dbg !287
  %886 = load <4 x half>, ptr addrspace(3) %add.ptr766.2.6, align 8, !dbg !288
  %add751.3.6 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.3.6 = or disjoint i32 %add751.3.6, 192, !dbg !286
  %887 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.3.6, !dbg !287
  %xor762.3.6 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.3.6 = xor i32 %xor762.3.6, 24, !dbg !287
  %add.ptr766.3.6 = getelementptr inbounds i8, ptr addrspace(3) %887, i32 %add.ptr766.idx.3.6, !dbg !287
  %888 = load <4 x half>, ptr addrspace(3) %add.ptr766.3.6, align 8, !dbg !288
  %889 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %882, <4 x half> %840, <4 x float> %output_acc.sroa.0.5), !dbg !289
  %890 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %884, <4 x half> %840, <4 x float> %output_acc.sroa.34.5), !dbg !289
  %891 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %886, <4 x half> %840, <4 x float> %output_acc.sroa.66.5), !dbg !289
  %892 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %888, <4 x half> %840, <4 x float> %output_acc.sroa.98.5), !dbg !289
  br label %if.end793.6, !dbg !290

if.end793.6:                                      ; preds = %if.end576.1.6, %if.end793.5
  %bc2790 = phi <4 x half> [ %316, %if.end793.5 ], [ %840, %if.end576.1.6 ], !dbg !83
  %output_acc.sroa.98.6 = phi <4 x float> [ %output_acc.sroa.98.5, %if.end793.5 ], [ %892, %if.end576.1.6 ], !dbg !83
  %output_acc.sroa.66.6 = phi <4 x float> [ %output_acc.sroa.66.5, %if.end793.5 ], [ %891, %if.end576.1.6 ], !dbg !83
  %output_acc.sroa.34.6 = phi <4 x float> [ %output_acc.sroa.34.5, %if.end793.5 ], [ %890, %if.end576.1.6 ], !dbg !83
  %output_acc.sroa.0.6 = phi <4 x float> [ %output_acc.sroa.0.5, %if.end793.5 ], [ %889, %if.end576.1.6 ], !dbg !83
  %893 = load i32, ptr addrspace(1) %arrayidx130.7, align 4, !dbg !186, !tbaa !30
  %mul444.7 = shl nsw i32 %893, 4, !dbg !187
  %cmp445.7 = icmp slt i32 %893, 0, !dbg !188
  %cmp448.not.7 = icmp sgt i32 %mul444.7, %1
  %or.cond1204.7 = select i1 %cmp445.7, i1 true, i1 %cmp448.not.7, !dbg !189
  br i1 %or.cond1204.7, label %if.end793.7, label %if.then449.7, !dbg !189

if.then449.7:                                     ; preds = %if.end793.6
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454.7 = icmp eq i32 %shr324, 3, !dbg !195
  br i1 %cmp454.7, label %if.then455.7, label %if.end464.7, !dbg !196

if.then455.7:                                     ; preds = %if.then449.7
  %sub460.7 = fsub contract float %max_cache.sroa.11.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461.7 = fmul contract float %sub460.7, 0x3FC7154760000000, !dbg !198
  %cmp.i.i1139.7 = fcmp contract olt float %mul461.7, -1.260000e+02, !dbg !199
  %cond.i.i1140.7 = select contract i1 %cmp.i.i1139.7, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i1141.7 = fadd contract float %mul461.7, %cond.i.i1140.7, !dbg !199
  %894 = tail call contract float @llvm.exp2.f32(float %add.i.i1141.7), !dbg !199
  %cond2.i.i1142.7 = select contract i1 %cmp.i.i1139.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i1143.7 = fmul contract float %cond2.i.i1142.7, %894, !dbg !199
  %895 = bitcast float %mul.i.i1143.7 to i32, !dbg !202
  br label %if.end464.7, !dbg !201

if.end464.7:                                      ; preds = %if.then455.7, %if.then449.7
  %rescale.sroa.0.0.7 = phi i32 [ %895, %if.then455.7 ], [ 0, %if.then449.7 ], !dbg !83
  %896 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %897 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %896) #11, !dbg !209
  %rem.i.i.7 = or disjoint i32 %and469, 48, !dbg !291
  %and.i.i1144.7 = and i32 %897, 1073741760, !dbg !210
  %add.i.i1145.7 = or disjoint i32 %and.i.i1144.7, %rem.i.i.7, !dbg !211
  %shl.i.i1146.7 = shl nuw i32 %add.i.i1145.7, 2, !dbg !212
  %898 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1146.7, i32 %rescale.sroa.0.0.7), !dbg !213
  %899 = bitcast i32 %898 to float, !dbg !214
  %900 = extractelement <4 x half> %358, i64 0, !dbg !215
  %conv.i1147.7 = fpext half %900 to float, !dbg !215
  %901 = extractelement <4 x half> %358, i64 1, !dbg !218
  %conv6.i.7 = fpext half %901 to float, !dbg !218
  %902 = extractelement <4 x half> %358, i64 2, !dbg !219
  %conv.i1149.7 = fpext half %902 to float, !dbg !219
  %903 = extractelement <4 x half> %358, i64 3, !dbg !221
  %conv6.i1151.7 = fpext half %903 to float, !dbg !221
  %mul494.7 = fmul contract float %899, %conv.i1147.7, !dbg !222
  %mul498.7 = fmul contract float %899, %conv6.i.7, !dbg !223
  %mul502.7 = fmul contract float %899, %conv.i1149.7, !dbg !224
  %mul506.7 = fmul contract float %899, %conv6.i1151.7, !dbg !225
  %904 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %905 = fptrunc float %mul494.7 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %904), !dbg !226, !noalias !230
  %906 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %907 = fptrunc float %mul498.7 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %906), !dbg !235, !noalias !230
  %908 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %909 = fptrunc float %mul502.7 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %908), !dbg !237, !noalias !241
  %910 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %911 = fptrunc float %mul506.7 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %910), !dbg !246, !noalias !241
  %912 = insertelement <4 x half> poison, half %905, i64 0, !dbg !248
  %913 = insertelement <4 x half> %912, half %907, i64 1, !dbg !248
  %914 = insertelement <4 x half> %913, half %909, i64 2, !dbg !248
  %915 = insertelement <4 x half> %914, half %911, i64 3, !dbg !248
  %shr529.7 = lshr exact i32 %mul444.7, 1
  %add530.7 = add nuw nsw i32 %shr529.7, %shr140
  %cmp531.7 = icmp ult i32 %add530.7, 512
  %conv541.7 = zext nneg i32 %mul444.7 to i64
  br i1 %cmp531.7, label %if.then532.7, label %if.end576.7, !dbg !249

if.then532.7:                                     ; preds = %if.end464.7
  %916 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1241.7 = shl nuw nsw i64 %conv541.7, 7, !dbg !250
  %917 = getelementptr inbounds i8, ptr addrspace(4) %916, i64 %.idx1241.7, !dbg !250
  %condval_2.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %917, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %917, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.7, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %917, i64 8, !dbg !251
  %condval_2.sroa.6.0.copyload.7 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.7, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %917, i64 12, !dbg !251
  %condval_2.sroa.7.0.copyload.7 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.7, align 4, !dbg !251, !tbaa !30
  br label %if.end576.7, !dbg !252

if.end576.7:                                      ; preds = %if.then532.7, %if.end464.7
  %condval_2.sroa.0.0.7 = phi i32 [ %condval_2.sroa.0.0.copyload.7, %if.then532.7 ], [ 0, %if.end464.7 ], !dbg !83
  %condval_2.sroa.5.0.7 = phi i32 [ %condval_2.sroa.5.0.copyload.7, %if.then532.7 ], [ 0, %if.end464.7 ], !dbg !83
  %condval_2.sroa.6.0.7 = phi i32 [ %condval_2.sroa.6.0.copyload.7, %if.then532.7 ], [ 0, %if.end464.7 ], !dbg !83
  %condval_2.sroa.7.0.7 = phi i32 [ %condval_2.sroa.7.0.copyload.7, %if.then532.7 ], [ 0, %if.end464.7 ], !dbg !83
  br i1 %cmp531.7, label %if.then532.1.7, label %if.end576.1.7, !dbg !249

if.then532.1.7:                                   ; preds = %if.end576.7
  %918 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1241.1.7 = shl nuw nsw i64 %conv541.7, 7, !dbg !250
  %919 = getelementptr inbounds i8, ptr addrspace(4) %918, i64 %.idx1241.1.7, !dbg !250
  %add.ptr552.1.7 = getelementptr inbounds i8, ptr addrspace(4) %919, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1.7 = load i32, ptr addrspace(4) %add.ptr552.1.7, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %919, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.7, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %919, i64 136, !dbg !251
  %condval_2.sroa.6.0.copyload.1.7 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.7, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %919, i64 140, !dbg !251
  %condval_2.sroa.7.0.copyload.1.7 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.7, align 4, !dbg !251, !tbaa !30
  br label %if.end576.1.7, !dbg !252

if.end576.1.7:                                    ; preds = %if.then532.1.7, %if.end576.7
  %condval_2.sroa.0.0.1.7 = phi i32 [ %condval_2.sroa.0.0.copyload.1.7, %if.then532.1.7 ], [ 0, %if.end576.7 ], !dbg !83
  %condval_2.sroa.5.0.1.7 = phi i32 [ %condval_2.sroa.5.0.copyload.1.7, %if.then532.1.7 ], [ 0, %if.end576.7 ], !dbg !83
  %condval_2.sroa.6.0.1.7 = phi i32 [ %condval_2.sroa.6.0.copyload.1.7, %if.then532.1.7 ], [ 0, %if.end576.7 ], !dbg !83
  %condval_2.sroa.7.0.1.7 = phi i32 [ %condval_2.sroa.7.0.copyload.1.7, %if.then532.1.7 ], [ 0, %if.end576.7 ], !dbg !83
  %v_fetch_local.sroa.0.0.extract.trunc1637 = trunc i32 %condval_2.sroa.0.0.7 to i16, !dbg !253
  %v_fetch_local.sroa.0.2.extract.shift1680 = lshr i32 %condval_2.sroa.0.0.7, 16, !dbg !254
  %v_fetch_local.sroa.0.2.extract.trunc1681 = trunc nuw i32 %v_fetch_local.sroa.0.2.extract.shift1680 to i16, !dbg !254
  %v_fetch_local.sroa.82.8.extract.trunc1787 = trunc i32 %condval_2.sroa.6.0.7 to i16, !dbg !255
  %v_fetch_local.sroa.82.10.extract.shift1830 = lshr i32 %condval_2.sroa.6.0.7, 16, !dbg !256
  %v_fetch_local.sroa.82.10.extract.trunc1831 = trunc nuw i32 %v_fetch_local.sroa.82.10.extract.shift1830 to i16, !dbg !256
  %cond.7 = select i1 %cmp624, i32 %condval_2.sroa.6.0.7, i32 %condval_2.sroa.0.0.7, !dbg !257
  %920 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %921 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %920) #11, !dbg !263
  %xor.i.i1164.7 = xor i32 %921, 8, !dbg !264
  %922 = and i32 %921, -64, !dbg !265
  %and.i.i1165.7 = add nsw i32 %922, 64, !dbg !265
  %cmp.not.i.i1166.7 = icmp slt i32 %xor.i.i1164.7, %and.i.i1165.7, !dbg !266
  %cond.i.i1167.7 = select i1 %cmp.not.i.i1166.7, i32 %xor.i.i1164.7, i32 %921, !dbg !267
  %shl.i.i1168.7 = shl i32 %cond.i.i1167.7, 2, !dbg !268
  %923 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.7, i32 %cond.7), !dbg !269
  %v_fetch_local.sroa.42.4.extract.trunc1712 = trunc i32 %condval_2.sroa.5.0.7 to i16, !dbg !253
  %v_fetch_local.sroa.42.6.extract.shift1755 = lshr i32 %condval_2.sroa.5.0.7, 16, !dbg !254
  %v_fetch_local.sroa.42.6.extract.trunc1756 = trunc nuw i32 %v_fetch_local.sroa.42.6.extract.shift1755 to i16, !dbg !254
  %v_fetch_local.sroa.122.12.extract.trunc1862 = trunc i32 %condval_2.sroa.7.0.7 to i16, !dbg !255
  %v_fetch_local.sroa.122.14.extract.shift1905 = lshr i32 %condval_2.sroa.7.0.7, 16, !dbg !256
  %v_fetch_local.sroa.122.14.extract.trunc1906 = trunc nuw i32 %v_fetch_local.sroa.122.14.extract.shift1905 to i16, !dbg !256
  %cond.1.7 = select i1 %cmp624, i32 %condval_2.sroa.7.0.7, i32 %condval_2.sroa.5.0.7, !dbg !257
  %924 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %925 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %924) #11, !dbg !263
  %xor.i.i1164.1.7 = xor i32 %925, 8, !dbg !264
  %926 = and i32 %925, -64, !dbg !265
  %and.i.i1165.1.7 = add nsw i32 %926, 64, !dbg !265
  %cmp.not.i.i1166.1.7 = icmp slt i32 %xor.i.i1164.1.7, %and.i.i1165.1.7, !dbg !266
  %cond.i.i1167.1.7 = select i1 %cmp.not.i.i1166.1.7, i32 %xor.i.i1164.1.7, i32 %925, !dbg !267
  %shl.i.i1168.1.7 = shl i32 %cond.i.i1167.1.7, 2, !dbg !268
  %927 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.1.7, i32 %cond.1.7), !dbg !269
  %v_fetch_local.sroa.162.16.extract.trunc1937 = trunc i32 %condval_2.sroa.0.0.1.7 to i16, !dbg !253
  %v_fetch_local.sroa.162.18.extract.shift1980 = lshr i32 %condval_2.sroa.0.0.1.7, 16, !dbg !254
  %v_fetch_local.sroa.162.18.extract.trunc1981 = trunc nuw i32 %v_fetch_local.sroa.162.18.extract.shift1980 to i16, !dbg !254
  %v_fetch_local.sroa.242.24.extract.trunc2087 = trunc i32 %condval_2.sroa.6.0.1.7 to i16, !dbg !255
  %v_fetch_local.sroa.242.26.extract.shift2130 = lshr i32 %condval_2.sroa.6.0.1.7, 16, !dbg !256
  %v_fetch_local.sroa.242.26.extract.trunc2131 = trunc nuw i32 %v_fetch_local.sroa.242.26.extract.shift2130 to i16, !dbg !256
  %cond.11336.7 = select i1 %cmp624, i32 %condval_2.sroa.6.0.1.7, i32 %condval_2.sroa.0.0.1.7, !dbg !257
  %928 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %929 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %928) #11, !dbg !263
  %xor.i.i1164.11337.7 = xor i32 %929, 8, !dbg !264
  %930 = and i32 %929, -64, !dbg !265
  %and.i.i1165.11338.7 = add nsw i32 %930, 64, !dbg !265
  %cmp.not.i.i1166.11339.7 = icmp slt i32 %xor.i.i1164.11337.7, %and.i.i1165.11338.7, !dbg !266
  %cond.i.i1167.11340.7 = select i1 %cmp.not.i.i1166.11339.7, i32 %xor.i.i1164.11337.7, i32 %929, !dbg !267
  %shl.i.i1168.11341.7 = shl i32 %cond.i.i1167.11340.7, 2, !dbg !268
  %931 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.11341.7, i32 %cond.11336.7), !dbg !269
  %v_fetch_local.sroa.202.20.extract.trunc2012 = trunc i32 %condval_2.sroa.5.0.1.7 to i16, !dbg !253
  %v_fetch_local.sroa.202.22.extract.shift2055 = lshr i32 %condval_2.sroa.5.0.1.7, 16, !dbg !254
  %v_fetch_local.sroa.202.22.extract.trunc2056 = trunc nuw i32 %v_fetch_local.sroa.202.22.extract.shift2055 to i16, !dbg !254
  %v_fetch_local.sroa.282.28.extract.trunc2162 = trunc i32 %condval_2.sroa.7.0.1.7 to i16, !dbg !255
  %v_fetch_local.sroa.282.30.extract.shift2205 = lshr i32 %condval_2.sroa.7.0.1.7, 16, !dbg !256
  %v_fetch_local.sroa.282.30.extract.trunc2206 = trunc nuw i32 %v_fetch_local.sroa.282.30.extract.shift2205 to i16, !dbg !256
  %cond.1.1.7 = select i1 %cmp624, i32 %condval_2.sroa.7.0.1.7, i32 %condval_2.sroa.5.0.1.7, !dbg !257
  %932 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !258
  %933 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %932) #11, !dbg !263
  %xor.i.i1164.1.1.7 = xor i32 %933, 8, !dbg !264
  %934 = and i32 %933, -64, !dbg !265
  %and.i.i1165.1.1.7 = add nsw i32 %934, 64, !dbg !265
  %cmp.not.i.i1166.1.1.7 = icmp slt i32 %xor.i.i1164.1.1.7, %and.i.i1165.1.1.7, !dbg !266
  %cond.i.i1167.1.1.7 = select i1 %cmp.not.i.i1166.1.1.7, i32 %xor.i.i1164.1.1.7, i32 %933, !dbg !267
  %shl.i.i1168.1.1.7 = shl i32 %cond.i.i1167.1.1.7, 2, !dbg !268
  %935 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1168.1.1.7, i32 %cond.1.1.7), !dbg !269
  %conv673.7 = trunc i32 %923 to i16, !dbg !270
  %conv681.7 = trunc i32 %931 to i16, !dbg !271
  %936 = select i1 %cmp624, i16 %v_fetch_local.sroa.0.0.extract.trunc1637, i16 %conv673.7, !dbg !272
  %937 = select i1 %cmp624, i16 %v_fetch_local.sroa.162.16.extract.trunc1937, i16 %conv681.7, !dbg !273
  %938 = select i1 %cmp624, i16 %conv673.7, i16 %v_fetch_local.sroa.82.8.extract.trunc1787, !dbg !274
  %939 = select i1 %cmp624, i16 %conv681.7, i16 %v_fetch_local.sroa.242.24.extract.trunc2087, !dbg !275
  %add729.7 = or disjoint i32 %mul723, %mul728, !dbg !276
  %940 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.7, !dbg !277
  %add.ptr739.idx.7 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.7 = getelementptr inbounds i8, ptr addrspace(3) %940, i32 %add.ptr739.idx.7, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.7 = zext i16 %939 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.7 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.7, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.7 = zext i16 %938 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.7 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.7, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.7 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.7, %v_column_local.sroa.5.0.insert.shift.7, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.7 = zext i16 %937 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.7 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.7, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.7 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.7, %v_column_local.sroa.4.0.insert.shift.7, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.7 = zext i16 %936 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.7 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.7, %v_column_local.sroa.0.0.insert.ext.7, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.7, ptr addrspace(3) %add.ptr739.7, align 8, !dbg !278
  %shr672.1.7 = lshr i32 %923, 16, !dbg !279
  %conv673.1.7 = trunc nuw i32 %shr672.1.7 to i16, !dbg !270
  %shr680.1.7 = lshr i32 %931, 16, !dbg !280
  %conv681.1.7 = trunc nuw i32 %shr680.1.7 to i16, !dbg !271
  %941 = select i1 %cmp624, i16 %v_fetch_local.sroa.0.2.extract.trunc1681, i16 %conv673.1.7, !dbg !272
  %942 = select i1 %cmp624, i16 %v_fetch_local.sroa.162.18.extract.trunc1981, i16 %conv681.1.7, !dbg !273
  %943 = select i1 %cmp624, i16 %conv673.1.7, i16 %v_fetch_local.sroa.82.10.extract.trunc1831, !dbg !274
  %944 = select i1 %cmp624, i16 %conv681.1.7, i16 %v_fetch_local.sroa.242.26.extract.trunc2131, !dbg !275
  %add724.1.7 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.1.7 = or disjoint i32 %add724.1.7, 256, !dbg !276
  %945 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.1.7, !dbg !277
  %xor735.1.7 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.1.7 = xor i32 %xor735.1.7, 8, !dbg !277
  %add.ptr739.1.7 = getelementptr inbounds i8, ptr addrspace(3) %945, i32 %add.ptr739.idx.1.7, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.1.7 = zext i16 %944 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.1.7 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.1.7, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.1.7 = zext i16 %943 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.1.7 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.1.7, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.1.7 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.1.7, %v_column_local.sroa.5.0.insert.shift.1.7, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.1.7 = zext i16 %942 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.1.7 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.1.7, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.1.7 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.1.7, %v_column_local.sroa.4.0.insert.shift.1.7, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.1.7 = zext i16 %941 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.1.7 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.1.7, %v_column_local.sroa.0.0.insert.ext.1.7, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.1.7, ptr addrspace(3) %add.ptr739.1.7, align 8, !dbg !278
  %conv673.2.7 = trunc i32 %927 to i16, !dbg !270
  %conv681.2.7 = trunc i32 %935 to i16, !dbg !271
  %946 = select i1 %cmp624, i16 %v_fetch_local.sroa.42.4.extract.trunc1712, i16 %conv673.2.7, !dbg !272
  %947 = select i1 %cmp624, i16 %v_fetch_local.sroa.202.20.extract.trunc2012, i16 %conv681.2.7, !dbg !273
  %948 = select i1 %cmp624, i16 %conv673.2.7, i16 %v_fetch_local.sroa.122.12.extract.trunc1862, !dbg !274
  %949 = select i1 %cmp624, i16 %conv681.2.7, i16 %v_fetch_local.sroa.282.28.extract.trunc2162, !dbg !275
  %add724.2.7 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.2.7 = or disjoint i32 %add724.2.7, 512, !dbg !276
  %950 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.2.7, !dbg !277
  %xor735.2.7 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.2.7 = xor i32 %xor735.2.7, 16, !dbg !277
  %add.ptr739.2.7 = getelementptr inbounds i8, ptr addrspace(3) %950, i32 %add.ptr739.idx.2.7, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.2.7 = zext i16 %949 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.2.7 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.2.7, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.2.7 = zext i16 %948 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.2.7 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.2.7, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.2.7 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.2.7, %v_column_local.sroa.5.0.insert.shift.2.7, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.2.7 = zext i16 %947 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.2.7 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.2.7, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.2.7 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.2.7, %v_column_local.sroa.4.0.insert.shift.2.7, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.2.7 = zext i16 %946 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.2.7 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.2.7, %v_column_local.sroa.0.0.insert.ext.2.7, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.2.7, ptr addrspace(3) %add.ptr739.2.7, align 8, !dbg !278
  %shr672.3.7 = lshr i32 %927, 16, !dbg !279
  %conv673.3.7 = trunc nuw i32 %shr672.3.7 to i16, !dbg !270
  %shr680.3.7 = lshr i32 %935, 16, !dbg !280
  %conv681.3.7 = trunc nuw i32 %shr680.3.7 to i16, !dbg !271
  %951 = select i1 %cmp624, i16 %v_fetch_local.sroa.42.6.extract.trunc1756, i16 %conv673.3.7, !dbg !272
  %952 = select i1 %cmp624, i16 %v_fetch_local.sroa.202.22.extract.trunc2056, i16 %conv681.3.7, !dbg !273
  %953 = select i1 %cmp624, i16 %conv673.3.7, i16 %v_fetch_local.sroa.122.14.extract.trunc1906, !dbg !274
  %954 = select i1 %cmp624, i16 %conv681.3.7, i16 %v_fetch_local.sroa.282.30.extract.trunc2206, !dbg !275
  %add724.3.7 = or disjoint i32 %mul723, %mul728, !dbg !276
  %add729.3.7 = or disjoint i32 %add724.3.7, 768, !dbg !276
  %955 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add729.3.7, !dbg !277
  %xor735.3.7 = shl nuw nsw i32 %xor, 3, !dbg !277
  %add.ptr739.idx.3.7 = xor i32 %xor735.3.7, 24, !dbg !277
  %add.ptr739.3.7 = getelementptr inbounds i8, ptr addrspace(3) %955, i32 %add.ptr739.idx.3.7, !dbg !277
  %v_column_local.sroa.6.0.insert.ext.3.7 = zext i16 %954 to i64, !dbg !278
  %v_column_local.sroa.6.0.insert.shift.3.7 = shl nuw i64 %v_column_local.sroa.6.0.insert.ext.3.7, 48, !dbg !278
  %v_column_local.sroa.5.0.insert.ext.3.7 = zext i16 %953 to i64, !dbg !278
  %v_column_local.sroa.5.0.insert.shift.3.7 = shl nuw nsw i64 %v_column_local.sroa.5.0.insert.ext.3.7, 32, !dbg !278
  %v_column_local.sroa.5.0.insert.insert.3.7 = or disjoint i64 %v_column_local.sroa.6.0.insert.shift.3.7, %v_column_local.sroa.5.0.insert.shift.3.7, !dbg !278
  %v_column_local.sroa.4.0.insert.ext.3.7 = zext i16 %952 to i64, !dbg !278
  %v_column_local.sroa.4.0.insert.shift.3.7 = shl nuw nsw i64 %v_column_local.sroa.4.0.insert.ext.3.7, 16, !dbg !278
  %v_column_local.sroa.4.0.insert.insert.3.7 = or disjoint i64 %v_column_local.sroa.5.0.insert.insert.3.7, %v_column_local.sroa.4.0.insert.shift.3.7, !dbg !278
  %v_column_local.sroa.0.0.insert.ext.3.7 = zext i16 %951 to i64, !dbg !278
  %v_column_local.sroa.0.0.insert.insert.3.7 = or disjoint i64 %v_column_local.sroa.4.0.insert.insert.3.7, %v_column_local.sroa.0.0.insert.ext.3.7, !dbg !278
  store i64 %v_column_local.sroa.0.0.insert.insert.3.7, ptr addrspace(3) %add.ptr739.3.7, align 8, !dbg !278
  fence syncscope("warp") release, !dbg !281
  tail call void @llvm.mxc.barrier.warp(), !dbg !284
  fence syncscope("warp") acquire, !dbg !285
  %add756.7 = or disjoint i32 %mul749, %mul755, !dbg !286
  %956 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.7, !dbg !287
  %add.ptr766.idx.7 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.7 = getelementptr inbounds i8, ptr addrspace(3) %956, i32 %add.ptr766.idx.7, !dbg !287
  %957 = load <4 x half>, ptr addrspace(3) %add.ptr766.7, align 8, !dbg !288
  %add751.1.7 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.1.7 = or disjoint i32 %add751.1.7, 64, !dbg !286
  %958 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.1.7, !dbg !287
  %xor762.1.7 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.1.7 = xor i32 %xor762.1.7, 8, !dbg !287
  %add.ptr766.1.7 = getelementptr inbounds i8, ptr addrspace(3) %958, i32 %add.ptr766.idx.1.7, !dbg !287
  %959 = load <4 x half>, ptr addrspace(3) %add.ptr766.1.7, align 8, !dbg !288
  %add751.2.7 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.2.7 = or disjoint i32 %add751.2.7, 128, !dbg !286
  %960 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.2.7, !dbg !287
  %xor762.2.7 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.2.7 = xor i32 %xor762.2.7, 16, !dbg !287
  %add.ptr766.2.7 = getelementptr inbounds i8, ptr addrspace(3) %960, i32 %add.ptr766.idx.2.7, !dbg !287
  %961 = load <4 x half>, ptr addrspace(3) %add.ptr766.2.7, align 8, !dbg !288
  %add751.3.7 = or disjoint i32 %mul749, %mul755, !dbg !286
  %add756.3.7 = or disjoint i32 %add751.3.7, 192, !dbg !286
  %962 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add756.3.7, !dbg !287
  %xor762.3.7 = shl nuw nsw i32 %367, 3, !dbg !287
  %add.ptr766.idx.3.7 = xor i32 %xor762.3.7, 24, !dbg !287
  %add.ptr766.3.7 = getelementptr inbounds i8, ptr addrspace(3) %962, i32 %add.ptr766.idx.3.7, !dbg !287
  %963 = load <4 x half>, ptr addrspace(3) %add.ptr766.3.7, align 8, !dbg !288
  %964 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %957, <4 x half> %915, <4 x float> %output_acc.sroa.0.6), !dbg !289
  %965 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %959, <4 x half> %915, <4 x float> %output_acc.sroa.34.6), !dbg !289
  %966 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %961, <4 x half> %915, <4 x float> %output_acc.sroa.66.6), !dbg !289
  %967 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %963, <4 x half> %915, <4 x float> %output_acc.sroa.98.6), !dbg !289
  br label %if.end793.7, !dbg !290

if.end793.7:                                      ; preds = %if.end576.1.7, %if.end793.6
  %bc2794 = phi <4 x half> [ %358, %if.end793.6 ], [ %915, %if.end576.1.7 ], !dbg !83
  %output_acc.sroa.98.7 = phi <4 x float> [ %output_acc.sroa.98.6, %if.end793.6 ], [ %967, %if.end576.1.7 ], !dbg !83
  %output_acc.sroa.66.7 = phi <4 x float> [ %output_acc.sroa.66.6, %if.end793.6 ], [ %966, %if.end576.1.7 ], !dbg !83
  %output_acc.sroa.34.7 = phi <4 x float> [ %output_acc.sroa.34.6, %if.end793.6 ], [ %965, %if.end576.1.7 ], !dbg !83
  %output_acc.sroa.0.7 = phi <4 x float> [ %output_acc.sroa.0.6, %if.end793.6 ], [ %964, %if.end576.1.7 ], !dbg !83
  fence syncscope("warp") release, !dbg !292
  tail call void @llvm.mxc.barrier.warp(), !dbg !295
  fence syncscope("warp") acquire, !dbg !296
  %968 = extractelement <4 x half> %bc2766, i64 0, !dbg !297
  %conv.i.i = fpext half %968 to float, !dbg !298
  %add806 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !303
  %969 = extractelement <4 x half> %bc2766, i64 1, !dbg !297
  %conv.i.i.1 = fpext half %969 to float, !dbg !298
  %add806.1 = fadd contract float %add806, %conv.i.i.1, !dbg !303
  %970 = extractelement <4 x half> %bc2766, i64 2, !dbg !297
  %conv.i.i.2 = fpext half %970 to float, !dbg !298
  %add806.2 = fadd contract float %add806.1, %conv.i.i.2, !dbg !303
  %971 = extractelement <4 x half> %bc2766, i64 3, !dbg !297
  %conv.i.i.3 = fpext half %971 to float, !dbg !298
  %add806.3 = fadd contract float %add806.2, %conv.i.i.3, !dbg !303
  %972 = extractelement <4 x half> %bc2770, i64 0, !dbg !297
  %conv.i.i.4 = fpext half %972 to float, !dbg !298
  %add806.4 = fadd contract float %add806.3, %conv.i.i.4, !dbg !303
  %973 = extractelement <4 x half> %bc2770, i64 1, !dbg !297
  %conv.i.i.5 = fpext half %973 to float, !dbg !298
  %add806.5 = fadd contract float %add806.4, %conv.i.i.5, !dbg !303
  %974 = extractelement <4 x half> %bc2770, i64 2, !dbg !297
  %conv.i.i.6 = fpext half %974 to float, !dbg !298
  %add806.6 = fadd contract float %add806.5, %conv.i.i.6, !dbg !303
  %975 = extractelement <4 x half> %bc2770, i64 3, !dbg !297
  %conv.i.i.7 = fpext half %975 to float, !dbg !298
  %add806.7 = fadd contract float %add806.6, %conv.i.i.7, !dbg !303
  %976 = extractelement <4 x half> %bc2774, i64 0, !dbg !297
  %conv.i.i.8 = fpext half %976 to float, !dbg !298
  %add806.8 = fadd contract float %add806.7, %conv.i.i.8, !dbg !303
  %977 = extractelement <4 x half> %bc2774, i64 1, !dbg !297
  %conv.i.i.9 = fpext half %977 to float, !dbg !298
  %add806.9 = fadd contract float %add806.8, %conv.i.i.9, !dbg !303
  %978 = extractelement <4 x half> %bc2774, i64 2, !dbg !297
  %conv.i.i.10 = fpext half %978 to float, !dbg !298
  %add806.10 = fadd contract float %add806.9, %conv.i.i.10, !dbg !303
  %979 = extractelement <4 x half> %bc2774, i64 3, !dbg !297
  %conv.i.i.11 = fpext half %979 to float, !dbg !298
  %add806.11 = fadd contract float %add806.10, %conv.i.i.11, !dbg !303
  %980 = extractelement <4 x half> %bc2778, i64 0, !dbg !297
  %conv.i.i.12 = fpext half %980 to float, !dbg !298
  %add806.12 = fadd contract float %add806.11, %conv.i.i.12, !dbg !303
  %981 = extractelement <4 x half> %bc2778, i64 1, !dbg !297
  %conv.i.i.13 = fpext half %981 to float, !dbg !298
  %add806.13 = fadd contract float %add806.12, %conv.i.i.13, !dbg !303
  %982 = extractelement <4 x half> %bc2778, i64 2, !dbg !297
  %conv.i.i.14 = fpext half %982 to float, !dbg !298
  %add806.14 = fadd contract float %add806.13, %conv.i.i.14, !dbg !303
  %983 = extractelement <4 x half> %bc2778, i64 3, !dbg !297
  %conv.i.i.15 = fpext half %983 to float, !dbg !298
  %add806.15 = fadd contract float %add806.14, %conv.i.i.15, !dbg !303
  %984 = extractelement <4 x half> %bc2782, i64 0, !dbg !297
  %conv.i.i.16 = fpext half %984 to float, !dbg !298
  %add806.16 = fadd contract float %add806.15, %conv.i.i.16, !dbg !303
  %985 = extractelement <4 x half> %bc2782, i64 1, !dbg !297
  %conv.i.i.17 = fpext half %985 to float, !dbg !298
  %add806.17 = fadd contract float %add806.16, %conv.i.i.17, !dbg !303
  %986 = extractelement <4 x half> %bc2782, i64 2, !dbg !297
  %conv.i.i.18 = fpext half %986 to float, !dbg !298
  %add806.18 = fadd contract float %add806.17, %conv.i.i.18, !dbg !303
  %987 = extractelement <4 x half> %bc2782, i64 3, !dbg !297
  %conv.i.i.19 = fpext half %987 to float, !dbg !298
  %add806.19 = fadd contract float %add806.18, %conv.i.i.19, !dbg !303
  %988 = extractelement <4 x half> %bc2786, i64 0, !dbg !297
  %conv.i.i.20 = fpext half %988 to float, !dbg !298
  %add806.20 = fadd contract float %add806.19, %conv.i.i.20, !dbg !303
  %989 = extractelement <4 x half> %bc2786, i64 1, !dbg !297
  %conv.i.i.21 = fpext half %989 to float, !dbg !298
  %add806.21 = fadd contract float %add806.20, %conv.i.i.21, !dbg !303
  %990 = extractelement <4 x half> %bc2786, i64 2, !dbg !297
  %conv.i.i.22 = fpext half %990 to float, !dbg !298
  %add806.22 = fadd contract float %add806.21, %conv.i.i.22, !dbg !303
  %991 = extractelement <4 x half> %bc2786, i64 3, !dbg !297
  %conv.i.i.23 = fpext half %991 to float, !dbg !298
  %add806.23 = fadd contract float %add806.22, %conv.i.i.23, !dbg !303
  %992 = extractelement <4 x half> %bc2790, i64 0, !dbg !297
  %conv.i.i.24 = fpext half %992 to float, !dbg !298
  %add806.24 = fadd contract float %add806.23, %conv.i.i.24, !dbg !303
  %993 = extractelement <4 x half> %bc2790, i64 1, !dbg !297
  %conv.i.i.25 = fpext half %993 to float, !dbg !298
  %add806.25 = fadd contract float %add806.24, %conv.i.i.25, !dbg !303
  %994 = extractelement <4 x half> %bc2790, i64 2, !dbg !297
  %conv.i.i.26 = fpext half %994 to float, !dbg !298
  %add806.26 = fadd contract float %add806.25, %conv.i.i.26, !dbg !303
  %995 = extractelement <4 x half> %bc2790, i64 3, !dbg !297
  %conv.i.i.27 = fpext half %995 to float, !dbg !298
  %add806.27 = fadd contract float %add806.26, %conv.i.i.27, !dbg !303
  %996 = extractelement <4 x half> %bc2794, i64 0, !dbg !297
  %conv.i.i.28 = fpext half %996 to float, !dbg !298
  %add806.28 = fadd contract float %add806.27, %conv.i.i.28, !dbg !303
  %997 = extractelement <4 x half> %bc2794, i64 1, !dbg !297
  %conv.i.i.29 = fpext half %997 to float, !dbg !298
  %add806.29 = fadd contract float %add806.28, %conv.i.i.29, !dbg !303
  %998 = extractelement <4 x half> %bc2794, i64 2, !dbg !297
  %conv.i.i.30 = fpext half %998 to float, !dbg !298
  %add806.30 = fadd contract float %add806.29, %conv.i.i.30, !dbg !303
  %999 = extractelement <4 x half> %bc2794, i64 3, !dbg !297
  %conv.i.i.31 = fpext half %999 to float, !dbg !298
  %add806.31 = fadd contract float %add806.30, %conv.i.i.31, !dbg !303
  %1000 = bitcast float %add806.31 to i32, !dbg !304
  %1001 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !306
  %1002 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %1001) #11, !dbg !309
  %xor.i.i1169 = xor i32 %1002, 32, !dbg !310
  %1003 = and i32 %1002, -64, !dbg !311
  %and.i.i1170 = add nsw i32 %1003, 64, !dbg !311
  %cmp.not.i.i1171 = icmp slt i32 %xor.i.i1169, %and.i.i1170, !dbg !312
  %cond.i.i1172 = select i1 %cmp.not.i.i1171, i32 %xor.i.i1169, i32 %1002, !dbg !313
  %shl.i.i1173 = shl i32 %cond.i.i1172, 2, !dbg !314
  %1004 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1173, i32 %1000), !dbg !315
  %1005 = bitcast i32 %1004 to float, !dbg !316
  %add814 = fadd contract float %add806.31, %1005, !dbg !317
  %1006 = bitcast float %add814 to i32, !dbg !318
  %1007 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !320
  %1008 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %1007) #11, !dbg !323
  %xor.i.i1174 = xor i32 %1008, 16, !dbg !324
  %1009 = and i32 %1008, -64, !dbg !325
  %and.i.i1175 = add nsw i32 %1009, 64, !dbg !325
  %cmp.not.i.i1176 = icmp slt i32 %xor.i.i1174, %and.i.i1175, !dbg !326
  %cond.i.i1177 = select i1 %cmp.not.i.i1176, i32 %xor.i.i1174, i32 %1008, !dbg !327
  %shl.i.i1178 = shl i32 %cond.i.i1177, 2, !dbg !328
  %1010 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1178, i32 %1006), !dbg !329
  %1011 = bitcast i32 %1010 to float, !dbg !330
  %add819 = fadd contract float %add814, %1011, !dbg !331
  %output_acc.sroa.0.0.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 0, !dbg !332
  %div = fdiv contract float %output_acc.sroa.0.0.vec.extract, %add819, !dbg !333
  %output_acc.sroa.0.4.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 1, !dbg !332
  %div.1 = fdiv contract float %output_acc.sroa.0.4.vec.extract, %add819, !dbg !333
  %output_acc.sroa.0.8.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 2, !dbg !332
  %div.2 = fdiv contract float %output_acc.sroa.0.8.vec.extract, %add819, !dbg !333
  %output_acc.sroa.0.12.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 3, !dbg !332
  %div.3 = fdiv contract float %output_acc.sroa.0.12.vec.extract, %add819, !dbg !333
  %output_acc.sroa.34.16.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 0, !dbg !332
  %div.4 = fdiv contract float %output_acc.sroa.34.16.vec.extract, %add819, !dbg !333
  %output_acc.sroa.34.20.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 1, !dbg !332
  %div.5 = fdiv contract float %output_acc.sroa.34.20.vec.extract, %add819, !dbg !333
  %output_acc.sroa.34.24.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 2, !dbg !332
  %div.6 = fdiv contract float %output_acc.sroa.34.24.vec.extract, %add819, !dbg !333
  %output_acc.sroa.34.28.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 3, !dbg !332
  %div.7 = fdiv contract float %output_acc.sroa.34.28.vec.extract, %add819, !dbg !333
  %output_acc.sroa.66.32.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 0, !dbg !332
  %div.8 = fdiv contract float %output_acc.sroa.66.32.vec.extract, %add819, !dbg !333
  %output_acc.sroa.66.36.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 1, !dbg !332
  %div.9 = fdiv contract float %output_acc.sroa.66.36.vec.extract, %add819, !dbg !333
  %output_acc.sroa.66.40.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 2, !dbg !332
  %div.10 = fdiv contract float %output_acc.sroa.66.40.vec.extract, %add819, !dbg !333
  %output_acc.sroa.66.44.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 3, !dbg !332
  %div.11 = fdiv contract float %output_acc.sroa.66.44.vec.extract, %add819, !dbg !333
  %output_acc.sroa.98.48.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 0, !dbg !332
  %div.12 = fdiv contract float %output_acc.sroa.98.48.vec.extract, %add819, !dbg !333
  %output_acc.sroa.98.52.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 1, !dbg !332
  %div.13 = fdiv contract float %output_acc.sroa.98.52.vec.extract, %add819, !dbg !333
  %output_acc.sroa.98.56.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 2, !dbg !332
  %div.14 = fdiv contract float %output_acc.sroa.98.56.vec.extract, %add819, !dbg !333
  %output_acc.sroa.98.60.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 3, !dbg !332
  %div.15 = fdiv contract float %output_acc.sroa.98.60.vec.extract, %add819, !dbg !333
  %and865 = and i32 %2, 7
  %1012 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !334
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !334, !noalias !338
  %1013 = fptrunc float %div to half, !dbg !334
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %1012), !dbg !334, !noalias !338
  %1014 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !343
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !343, !noalias !338
  %1015 = fptrunc float %div.1 to half, !dbg !343
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %1014), !dbg !343, !noalias !338
  %1016 = bitcast half %1013 to i16, !dbg !345
  %1017 = bitcast half %1015 to i16, !dbg !348
  %1018 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !349
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !349, !noalias !353
  %1019 = fptrunc float %div.2 to half, !dbg !349
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %1018), !dbg !349, !noalias !353
  %1020 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !358
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !358, !noalias !353
  %1021 = fptrunc float %div.3 to half, !dbg !358
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %1020), !dbg !358, !noalias !353
  %1022 = bitcast half %1019 to i16, !dbg !360
  %1023 = bitcast half %1021 to i16, !dbg !362
  %__9.sroa.6.0.insert.ext = zext i16 %1023 to i64, !dbg !363
  %__9.sroa.6.0.insert.shift = shl nuw i64 %__9.sroa.6.0.insert.ext, 48, !dbg !363
  %__9.sroa.5.0.insert.ext = zext i16 %1022 to i64, !dbg !363
  %__9.sroa.5.0.insert.shift = shl nuw nsw i64 %__9.sroa.5.0.insert.ext, 32, !dbg !363
  %__9.sroa.5.0.insert.insert = or disjoint i64 %__9.sroa.6.0.insert.shift, %__9.sroa.5.0.insert.shift, !dbg !363
  %__9.sroa.4.0.insert.ext = zext i16 %1017 to i64, !dbg !363
  %__9.sroa.4.0.insert.shift = shl nuw nsw i64 %__9.sroa.4.0.insert.ext, 16, !dbg !363
  %__9.sroa.4.0.insert.insert = or disjoint i64 %__9.sroa.5.0.insert.insert, %__9.sroa.4.0.insert.shift, !dbg !363
  %__9.sroa.0.0.insert.ext = zext i16 %1016 to i64, !dbg !363
  %__9.sroa.0.0.insert.insert = or disjoint i64 %__9.sroa.4.0.insert.insert, %__9.sroa.0.0.insert.ext, !dbg !363
  %xor866 = xor i32 %shr71, %and865, !dbg !364
  %mul867 = shl nuw nsw i32 %xor866, 3, !dbg !365
  %add868 = add nuw nsw i32 %mul867, %mul53, !dbg !366
  %add873 = or disjoint i32 %add868, %mul81, !dbg !367
  %add.ptr875 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add873, !dbg !368
  store i64 %__9.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr875, align 8, !dbg !369
  %1024 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !334
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !334, !noalias !338
  %1025 = fptrunc float %div.4 to half, !dbg !334
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %1024), !dbg !334, !noalias !338
  %1026 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !343
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !343, !noalias !338
  %1027 = fptrunc float %div.5 to half, !dbg !343
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %1026), !dbg !343, !noalias !338
  %1028 = bitcast half %1025 to i16, !dbg !345
  %1029 = bitcast half %1027 to i16, !dbg !348
  %1030 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !349
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !349, !noalias !353
  %1031 = fptrunc float %div.6 to half, !dbg !349
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %1030), !dbg !349, !noalias !353
  %1032 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !358
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !358, !noalias !353
  %1033 = fptrunc float %div.7 to half, !dbg !358
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %1032), !dbg !358, !noalias !353
  %1034 = bitcast half %1031 to i16, !dbg !360
  %1035 = bitcast half %1033 to i16, !dbg !362
  %__9.sroa.6.0.insert.ext.1 = zext i16 %1035 to i64, !dbg !363
  %__9.sroa.6.0.insert.shift.1 = shl nuw i64 %__9.sroa.6.0.insert.ext.1, 48, !dbg !363
  %__9.sroa.5.0.insert.ext.1 = zext i16 %1034 to i64, !dbg !363
  %__9.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__9.sroa.5.0.insert.ext.1, 32, !dbg !363
  %__9.sroa.5.0.insert.insert.1 = or disjoint i64 %__9.sroa.6.0.insert.shift.1, %__9.sroa.5.0.insert.shift.1, !dbg !363
  %__9.sroa.4.0.insert.ext.1 = zext i16 %1029 to i64, !dbg !363
  %__9.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__9.sroa.4.0.insert.ext.1, 16, !dbg !363
  %__9.sroa.4.0.insert.insert.1 = or disjoint i64 %__9.sroa.5.0.insert.insert.1, %__9.sroa.4.0.insert.shift.1, !dbg !363
  %__9.sroa.0.0.insert.ext.1 = zext i16 %1028 to i64, !dbg !363
  %__9.sroa.0.0.insert.insert.1 = or disjoint i64 %__9.sroa.4.0.insert.insert.1, %__9.sroa.0.0.insert.ext.1, !dbg !363
  %add863.1 = add nuw nsw i32 %shr71, 2, !dbg !370
  %xor866.1 = xor i32 %add863.1, %and865, !dbg !364
  %mul867.1 = shl nuw nsw i32 %xor866.1, 3, !dbg !365
  %add868.1 = add nuw nsw i32 %mul867.1, %mul53, !dbg !366
  %add873.1 = or disjoint i32 %add868.1, %mul81, !dbg !367
  %add.ptr875.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add873.1, !dbg !368
  store i64 %__9.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr875.1, align 8, !dbg !369
  %1036 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !334
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !334, !noalias !338
  %1037 = fptrunc float %div.8 to half, !dbg !334
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %1036), !dbg !334, !noalias !338
  %1038 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !343
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !343, !noalias !338
  %1039 = fptrunc float %div.9 to half, !dbg !343
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %1038), !dbg !343, !noalias !338
  %1040 = bitcast half %1037 to i16, !dbg !345
  %1041 = bitcast half %1039 to i16, !dbg !348
  %1042 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !349
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !349, !noalias !353
  %1043 = fptrunc float %div.10 to half, !dbg !349
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %1042), !dbg !349, !noalias !353
  %1044 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !358
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !358, !noalias !353
  %1045 = fptrunc float %div.11 to half, !dbg !358
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %1044), !dbg !358, !noalias !353
  %1046 = bitcast half %1043 to i16, !dbg !360
  %1047 = bitcast half %1045 to i16, !dbg !362
  %__9.sroa.6.0.insert.ext.2 = zext i16 %1047 to i64, !dbg !363
  %__9.sroa.6.0.insert.shift.2 = shl nuw i64 %__9.sroa.6.0.insert.ext.2, 48, !dbg !363
  %__9.sroa.5.0.insert.ext.2 = zext i16 %1046 to i64, !dbg !363
  %__9.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__9.sroa.5.0.insert.ext.2, 32, !dbg !363
  %__9.sroa.5.0.insert.insert.2 = or disjoint i64 %__9.sroa.6.0.insert.shift.2, %__9.sroa.5.0.insert.shift.2, !dbg !363
  %__9.sroa.4.0.insert.ext.2 = zext i16 %1041 to i64, !dbg !363
  %__9.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__9.sroa.4.0.insert.ext.2, 16, !dbg !363
  %__9.sroa.4.0.insert.insert.2 = or disjoint i64 %__9.sroa.5.0.insert.insert.2, %__9.sroa.4.0.insert.shift.2, !dbg !363
  %__9.sroa.0.0.insert.ext.2 = zext i16 %1040 to i64, !dbg !363
  %__9.sroa.0.0.insert.insert.2 = or disjoint i64 %__9.sroa.4.0.insert.insert.2, %__9.sroa.0.0.insert.ext.2, !dbg !363
  %add863.2 = add nuw nsw i32 %shr71, 4, !dbg !370
  %xor866.2 = xor i32 %add863.2, %and865, !dbg !364
  %mul867.2 = shl nuw nsw i32 %xor866.2, 3, !dbg !365
  %add868.2 = add nuw nsw i32 %mul867.2, %mul53, !dbg !366
  %add873.2 = or disjoint i32 %add868.2, %mul81, !dbg !367
  %add.ptr875.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add873.2, !dbg !368
  store i64 %__9.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr875.2, align 8, !dbg !369
  %1048 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !334
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !334, !noalias !338
  %1049 = fptrunc float %div.12 to half, !dbg !334
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %1048), !dbg !334, !noalias !338
  %1050 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !343
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !343, !noalias !338
  %1051 = fptrunc float %div.13 to half, !dbg !343
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %1050), !dbg !343, !noalias !338
  %1052 = bitcast half %1049 to i16, !dbg !345
  %1053 = bitcast half %1051 to i16, !dbg !348
  %1054 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !349
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !349, !noalias !353
  %1055 = fptrunc float %div.14 to half, !dbg !349
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %1054), !dbg !349, !noalias !353
  %1056 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !358
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !358, !noalias !353
  %1057 = fptrunc float %div.15 to half, !dbg !358
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %1056), !dbg !358, !noalias !353
  %1058 = bitcast half %1055 to i16, !dbg !360
  %1059 = bitcast half %1057 to i16, !dbg !362
  %__9.sroa.6.0.insert.ext.3 = zext i16 %1059 to i64, !dbg !363
  %__9.sroa.6.0.insert.shift.3 = shl nuw i64 %__9.sroa.6.0.insert.ext.3, 48, !dbg !363
  %__9.sroa.5.0.insert.ext.3 = zext i16 %1058 to i64, !dbg !363
  %__9.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__9.sroa.5.0.insert.ext.3, 32, !dbg !363
  %__9.sroa.5.0.insert.insert.3 = or disjoint i64 %__9.sroa.6.0.insert.shift.3, %__9.sroa.5.0.insert.shift.3, !dbg !363
  %__9.sroa.4.0.insert.ext.3 = zext i16 %1053 to i64, !dbg !363
  %__9.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__9.sroa.4.0.insert.ext.3, 16, !dbg !363
  %__9.sroa.4.0.insert.insert.3 = or disjoint i64 %__9.sroa.5.0.insert.insert.3, %__9.sroa.4.0.insert.shift.3, !dbg !363
  %__9.sroa.0.0.insert.ext.3 = zext i16 %1052 to i64, !dbg !363
  %__9.sroa.0.0.insert.insert.3 = or disjoint i64 %__9.sroa.4.0.insert.insert.3, %__9.sroa.0.0.insert.ext.3, !dbg !363
  %add863.3 = add nuw nsw i32 %shr71, 6, !dbg !370
  %xor866.3 = xor i32 %add863.3, %and865, !dbg !364
  %mul867.3 = shl nuw nsw i32 %xor866.3, 3, !dbg !365
  %add868.3 = add nuw nsw i32 %mul867.3, %mul53, !dbg !366
  %add873.3 = or disjoint i32 %add868.3, %mul81, !dbg !367
  %add.ptr875.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add873.3, !dbg !368
  store i64 %__9.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr875.3, align 8, !dbg !369
  fence syncscope("warp") release, !dbg !371
  tail call void @llvm.mxc.barrier.warp(), !dbg !374
  fence syncscope("warp") acquire, !dbg !375
  %call890.masked = and i32 %2, 1016
  %mul893 = xor i32 %361, %call890.masked
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul15, !dbg !376
  %invariant.gep1238 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul893, !dbg !376
  %add.ptr908 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !377
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr908, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep1238, i64 16, i1 false), !dbg !378, !tbaa.struct !50, !call_argsrelate !379
  %gep1239.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1238, i32 1024, !dbg !380
  %add.ptr908.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %7, !dbg !377
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr908.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep1239.1, i64 16, i1 false), !dbg !378, !tbaa.struct !50, !call_argsrelate !379
  ret void, !dbg !381
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v045_codex_power_s8_value_select_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v045_codex_power_s8_value_select_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!68 = !DILocation(line: 45, column: 3, scope: !40)
!69 = !DILocation(line: 46, column: 24, scope: !40)
!70 = !DILocation(line: 46, column: 106, scope: !40)
!71 = !DILocation(line: 47, column: 12, scope: !40)
!72 = !DILocation(line: 47, column: 28, scope: !40)
!73 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !74)
!74 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !75)
!75 = distinct !DILocation(line: 48, column: 7, scope: !40)
!76 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !74)
!77 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !74)
!78 = !DILocation(line: 50, column: 7, scope: !40)
!79 = !DILocation(line: 53, column: 71, scope: !40)
!80 = !DILocation(line: 53, column: 13, scope: !40)
!81 = !DILocation(line: 54, column: 19, scope: !40)
!82 = !DILocation(line: 55, column: 9, scope: !40)
!83 = !DILocation(line: 0, scope: !40)
!84 = !DILocation(line: 58, column: 339, scope: !40)
!85 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !86)
!86 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !87)
!87 = distinct !DILocation(line: 60, column: 7, scope: !40)
!88 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !86)
!89 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !86)
!90 = !DILocation(line: 64, column: 32, scope: !40)
!91 = !DILocation(line: 66, column: 37, scope: !40)
!92 = !DILocation(line: 74, column: 74, scope: !40)
!93 = !DILocation(line: 74, column: 13, scope: !40)
!94 = !DILocation(line: 74, column: 63, scope: !40)
!95 = !DILocation(line: 351, column: 10, scope: !96, inlinedAt: !98)
!96 = distinct !DISubprogram(name: "max", scope: !97, file: !97, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!97 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!98 = distinct !DILocation(line: 84, column: 24, scope: !40)
!99 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !101)
!100 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !56, file: !56, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!101 = distinct !DILocation(line: 86, column: 40, scope: !40)
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
!116 = distinct !DILocation(line: 86, column: 22, scope: !40)
!117 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !118)
!118 = distinct !DILocation(line: 87, column: 40, scope: !40)
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
!131 = distinct !DILocation(line: 87, column: 22, scope: !40)
!132 = !DILocation(line: 88, column: 37, scope: !40)
!133 = !DILocation(line: 88, column: 11, scope: !40)
!134 = !DILocation(line: 351, column: 10, scope: !96, inlinedAt: !135)
!135 = distinct !DILocation(line: 91, column: 23, scope: !40)
!136 = !DILocation(line: 101, column: 26, scope: !40)
!137 = !DILocation(line: 102, column: 26, scope: !40)
!138 = !DILocation(line: 103, column: 26, scope: !40)
!139 = !DILocation(line: 104, column: 26, scope: !40)
!140 = !DILocation(line: 106, column: 25, scope: !40)
!141 = !DILocation(line: 107, column: 25, scope: !40)
!142 = !DILocation(line: 108, column: 25, scope: !40)
!143 = !DILocation(line: 109, column: 25, scope: !40)
!144 = !DILocation(line: 111, column: 23, scope: !40)
!145 = !DILocation(line: 112, column: 23, scope: !40)
!146 = !DILocation(line: 113, column: 23, scope: !40)
!147 = !DILocation(line: 114, column: 23, scope: !40)
!148 = !DILocation(line: 285, column: 49, scope: !149, inlinedAt: !150)
!149 = distinct !DISubprogram(name: "exp2f", scope: !97, file: !97, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!150 = distinct !DILocation(line: 115, column: 15, scope: !40)
!151 = !DILocation(line: 285, column: 49, scope: !149, inlinedAt: !152)
!152 = distinct !DILocation(line: 116, column: 15, scope: !40)
!153 = !DILocation(line: 285, column: 49, scope: !149, inlinedAt: !154)
!154 = distinct !DILocation(line: 117, column: 15, scope: !40)
!155 = !DILocation(line: 285, column: 49, scope: !149, inlinedAt: !156)
!156 = distinct !DILocation(line: 118, column: 15, scope: !40)
!157 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !160)
!158 = distinct !DISubprogram(name: "__float2half_rn", scope: !159, file: !159, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!159 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!160 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !162)
!161 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !159, file: !159, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!162 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !164)
!163 = distinct !DISubprogram(name: "__float22half2_rn", scope: !159, file: !159, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!164 = distinct !DILocation(line: 119, column: 29, scope: !40)
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
!175 = distinct !DILocation(line: 120, column: 29, scope: !40)
!176 = !{!177, !179}
!177 = distinct !{!177, !178, !"_ZL17__floats2half2_rnff: %agg.result"}
!178 = distinct !{!178, !"_ZL17__floats2half2_rnff"}
!179 = distinct !{!179, !180, !"_ZL17__float22half2_rn6float2: %agg.result"}
!180 = distinct !{!180, !"_ZL17__float22half2_rn6float2"}
!181 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !182)
!182 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !174)
!183 = !DILocation(line: 121, column: 53, scope: !40)
!184 = !DILocation(line: 122, column: 5, scope: !40)
!185 = !DILocation(line: 46, column: 93, scope: !40)
!186 = !DILocation(line: 131, column: 26, scope: !40)
!187 = !DILocation(line: 131, column: 110, scope: !40)
!188 = !DILocation(line: 132, column: 12, scope: !40)
!189 = !DILocation(line: 132, column: 30, scope: !40)
!190 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !191)
!191 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !192)
!192 = distinct !DILocation(line: 133, column: 7, scope: !40)
!193 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !191)
!194 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !191)
!195 = !DILocation(line: 135, column: 37, scope: !40)
!196 = !DILocation(line: 135, column: 11, scope: !40)
!197 = !DILocation(line: 136, column: 59, scope: !40)
!198 = !DILocation(line: 136, column: 76, scope: !40)
!199 = !DILocation(line: 285, column: 49, scope: !149, inlinedAt: !200)
!200 = distinct !DILocation(line: 136, column: 22, scope: !40)
!201 = !DILocation(line: 137, column: 7, scope: !40)
!202 = !DILocation(line: 606, column: 9, scope: !203, inlinedAt: !204)
!203 = distinct !DISubprogram(name: "__shfl_sync", scope: !56, file: !56, line: 599, type: !7, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!204 = distinct !DILocation(line: 138, column: 20, scope: !40)
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
!217 = distinct !DILocation(line: 143, column: 32, scope: !40)
!218 = !DILocation(line: 1302, column: 28, scope: !216, inlinedAt: !217)
!219 = !DILocation(line: 1301, column: 28, scope: !216, inlinedAt: !220)
!220 = distinct !DILocation(line: 144, column: 32, scope: !40)
!221 = !DILocation(line: 1302, column: 28, scope: !216, inlinedAt: !220)
!222 = !DILocation(line: 146, column: 23, scope: !40)
!223 = !DILocation(line: 147, column: 23, scope: !40)
!224 = !DILocation(line: 148, column: 23, scope: !40)
!225 = !DILocation(line: 149, column: 23, scope: !40)
!226 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !227)
!227 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !228)
!228 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !229)
!229 = distinct !DILocation(line: 150, column: 29, scope: !40)
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
!240 = distinct !DILocation(line: 151, column: 29, scope: !40)
!241 = !{!242, !244}
!242 = distinct !{!242, !243, !"_ZL17__floats2half2_rnff: %agg.result"}
!243 = distinct !{!243, !"_ZL17__floats2half2_rnff"}
!244 = distinct !{!244, !245, !"_ZL17__float22half2_rn6float2: %agg.result"}
!245 = distinct !{!245, !"_ZL17__float22half2_rn6float2"}
!246 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !247)
!247 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !239)
!248 = !DILocation(line: 152, column: 55, scope: !40)
!249 = !DILocation(line: 157, column: 13, scope: !40)
!250 = !DILocation(line: 158, column: 35, scope: !40)
!251 = !DILocation(line: 158, column: 21, scope: !40)
!252 = !DILocation(line: 159, column: 9, scope: !40)
!253 = !DILocation(line: 168, column: 25, scope: !40)
!254 = !DILocation(line: 169, column: 25, scope: !40)
!255 = !DILocation(line: 171, column: 25, scope: !40)
!256 = !DILocation(line: 172, column: 25, scope: !40)
!257 = !DILocation(line: 174, column: 29, scope: !40)
!258 = !DILocation(line: 171, column: 37, scope: !103, inlinedAt: !259)
!259 = distinct !DILocation(line: 990, column: 14, scope: !105, inlinedAt: !260)
!260 = distinct !DILocation(line: 1006, column: 11, scope: !261, inlinedAt: !262)
!261 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !56, file: !56, line: 996, type: !7, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!262 = distinct !DILocation(line: 175, column: 57, scope: !40)
!263 = !DILocation(line: 171, column: 10, scope: !103, inlinedAt: !259)
!264 = !DILocation(line: 991, column: 20, scope: !105, inlinedAt: !260)
!265 = !DILocation(line: 992, column: 36, scope: !105, inlinedAt: !260)
!266 = !DILocation(line: 992, column: 17, scope: !105, inlinedAt: !260)
!267 = !DILocation(line: 992, column: 11, scope: !105, inlinedAt: !260)
!268 = !DILocation(line: 993, column: 43, scope: !105, inlinedAt: !260)
!269 = !DILocation(line: 993, column: 10, scope: !105, inlinedAt: !260)
!270 = !DILocation(line: 192, column: 32, scope: !40)
!271 = !DILocation(line: 194, column: 32, scope: !40)
!272 = !DILocation(line: 196, column: 27, scope: !40)
!273 = !DILocation(line: 197, column: 27, scope: !40)
!274 = !DILocation(line: 198, column: 27, scope: !40)
!275 = !DILocation(line: 199, column: 27, scope: !40)
!276 = !DILocation(line: 200, column: 101, scope: !40)
!277 = !DILocation(line: 200, column: 44, scope: !40)
!278 = !DILocation(line: 200, column: 229, scope: !40)
!279 = !DILocation(line: 192, column: 67, scope: !40)
!280 = !DILocation(line: 194, column: 73, scope: !40)
!281 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !282)
!282 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !283)
!283 = distinct !DILocation(line: 202, column: 7, scope: !40)
!284 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !282)
!285 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !282)
!286 = !DILocation(line: 205, column: 139, scope: !40)
!287 = !DILocation(line: 205, column: 83, scope: !40)
!288 = !DILocation(line: 205, column: 46, scope: !40)
!289 = !DILocation(line: 210, column: 47, scope: !40)
!290 = !DILocation(line: 130, column: 44, scope: !40)
!291 = !DILocation(line: 581, column: 31, scope: !207, inlinedAt: !208)
!292 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !293)
!293 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !294)
!294 = distinct !DILocation(line: 217, column: 3, scope: !40)
!295 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !293)
!296 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !293)
!297 = !DILocation(line: 221, column: 44, scope: !40)
!298 = !DILocation(line: 1082, column: 16, scope: !299, inlinedAt: !300)
!299 = distinct !DISubprogram(name: "__half2float", scope: !159, file: !159, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!300 = distinct !DILocation(line: 136, column: 55, scope: !301, inlinedAt: !302)
!301 = distinct !DISubprogram(name: "operator float", scope: !159, file: !159, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!302 = distinct !DILocation(line: 221, column: 44, scope: !40)
!303 = !DILocation(line: 221, column: 34, scope: !40)
!304 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !305)
!305 = distinct !DILocation(line: 223, column: 34, scope: !40)
!306 = !DILocation(line: 171, column: 37, scope: !103, inlinedAt: !307)
!307 = distinct !DILocation(line: 990, column: 14, scope: !105, inlinedAt: !308)
!308 = distinct !DILocation(line: 1019, column: 11, scope: !100, inlinedAt: !305)
!309 = !DILocation(line: 171, column: 10, scope: !103, inlinedAt: !307)
!310 = !DILocation(line: 991, column: 20, scope: !105, inlinedAt: !308)
!311 = !DILocation(line: 992, column: 36, scope: !105, inlinedAt: !308)
!312 = !DILocation(line: 992, column: 17, scope: !105, inlinedAt: !308)
!313 = !DILocation(line: 992, column: 11, scope: !105, inlinedAt: !308)
!314 = !DILocation(line: 993, column: 43, scope: !105, inlinedAt: !308)
!315 = !DILocation(line: 993, column: 10, scope: !105, inlinedAt: !308)
!316 = !DILocation(line: 1020, column: 14, scope: !100, inlinedAt: !305)
!317 = !DILocation(line: 223, column: 32, scope: !40)
!318 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !319)
!319 = distinct !DILocation(line: 224, column: 34, scope: !40)
!320 = !DILocation(line: 171, column: 37, scope: !103, inlinedAt: !321)
!321 = distinct !DILocation(line: 990, column: 14, scope: !105, inlinedAt: !322)
!322 = distinct !DILocation(line: 1019, column: 11, scope: !100, inlinedAt: !319)
!323 = !DILocation(line: 171, column: 10, scope: !103, inlinedAt: !321)
!324 = !DILocation(line: 991, column: 20, scope: !105, inlinedAt: !322)
!325 = !DILocation(line: 992, column: 36, scope: !105, inlinedAt: !322)
!326 = !DILocation(line: 992, column: 17, scope: !105, inlinedAt: !322)
!327 = !DILocation(line: 992, column: 11, scope: !105, inlinedAt: !322)
!328 = !DILocation(line: 993, column: 43, scope: !105, inlinedAt: !322)
!329 = !DILocation(line: 993, column: 10, scope: !105, inlinedAt: !322)
!330 = !DILocation(line: 1020, column: 14, scope: !100, inlinedAt: !319)
!331 = !DILocation(line: 224, column: 32, scope: !40)
!332 = !DILocation(line: 228, column: 24, scope: !40)
!333 = !DILocation(line: 228, column: 40, scope: !40)
!334 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !335)
!335 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !336)
!336 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !337)
!337 = distinct !DILocation(line: 234, column: 27, scope: !40)
!338 = !{!339, !341}
!339 = distinct !{!339, !340, !"_ZL17__floats2half2_rnff: %agg.result"}
!340 = distinct !{!340, !"_ZL17__floats2half2_rnff"}
!341 = distinct !{!341, !342, !"_ZL17__float22half2_rn6float2: %agg.result"}
!342 = distinct !{!342, !"_ZL17__float22half2_rn6float2"}
!343 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !344)
!344 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !336)
!345 = !DILocation(line: 596, column: 67, scope: !346, inlinedAt: !347)
!346 = distinct !DISubprogram(name: "__half2", scope: !159, file: !159, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!347 = distinct !DILocation(line: 1077, column: 10, scope: !161, inlinedAt: !336)
!348 = !DILocation(line: 596, column: 73, scope: !346, inlinedAt: !347)
!349 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !350)
!350 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !351)
!351 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !352)
!352 = distinct !DILocation(line: 235, column: 27, scope: !40)
!353 = !{!354, !356}
!354 = distinct !{!354, !355, !"_ZL17__floats2half2_rnff: %agg.result"}
!355 = distinct !{!355, !"_ZL17__floats2half2_rnff"}
!356 = distinct !{!356, !357, !"_ZL17__float22half2_rn6float2: %agg.result"}
!357 = distinct !{!357, !"_ZL17__float22half2_rn6float2"}
!358 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !359)
!359 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !351)
!360 = !DILocation(line: 596, column: 67, scope: !346, inlinedAt: !361)
!361 = distinct !DILocation(line: 1077, column: 10, scope: !161, inlinedAt: !351)
!362 = !DILocation(line: 596, column: 73, scope: !346, inlinedAt: !361)
!363 = !DILocation(line: 236, column: 45, scope: !40)
!364 = !DILocation(line: 237, column: 121, scope: !40)
!365 = !DILocation(line: 237, column: 149, scope: !40)
!366 = !DILocation(line: 237, column: 77, scope: !40)
!367 = !DILocation(line: 237, column: 155, scope: !40)
!368 = !DILocation(line: 237, column: 40, scope: !40)
!369 = !DILocation(line: 237, column: 198, scope: !40)
!370 = !DILocation(line: 237, column: 92, scope: !40)
!371 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !372)
!372 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !373)
!373 = distinct !DILocation(line: 239, column: 3, scope: !40)
!374 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !372)
!375 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !372)
!376 = !DILocation(line: 241, column: 8, scope: !40)
!377 = !DILocation(line: 242, column: 22, scope: !40)
!378 = !DILocation(line: 242, column: 131, scope: !40)
!379 = !{i32 2, i32 -1, i32 -1, i32 -1}
!380 = !DILocation(line: 242, column: 168, scope: !40)
!381 = !DILocation(line: 244, column: 1, scope: !40)
