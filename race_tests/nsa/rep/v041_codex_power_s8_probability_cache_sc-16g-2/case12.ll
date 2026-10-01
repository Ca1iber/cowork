; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v041_codex_power_s8_probability_cache_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v041_codex_power_s8_probability_cache_sc-16g-2/codegen/case12.device.cpp"
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
  %add21855 = and i32 %mul11, 32
  %shr18856 = add nuw nsw i32 %add21855, %2
  %mul23 = and i32 %shr18856, 32
  %add31857 = and i32 %mul11, 16
  %and26858 = add nuw nsw i32 %add31857, %2
  %mul33 = and i32 %and26858, 16
  %and36860 = mul nuw nsw i32 %2, 9
  %mul42 = and i32 %and36860, 8
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
  %mul133 = shl nsw i32 %0, 13
  %mul135 = shl nsw i32 %1, 3
  %add136 = add nuw nsw i32 %mul133, %mul135
  %shr147 = lshr i32 %2, 3
  %conv = zext nneg i32 %0 to i64
  %mul154 = shl nuw nsw i64 %conv, 16
  %mul163 = zext nneg i32 %mul11 to i64
  %invariant.gep963 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul163, !dbg !68
  %mul288 = and i32 %and55, 252
  %23 = zext nneg i32 %add136 to i64, !dbg !68
  %arrayidx = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %23, !dbg !69
  %24 = load i32, ptr addrspace(1) %arrayidx, align 4, !dbg !69, !tbaa !30
  %mul138 = shl nsw i32 %24, 4, !dbg !70
  %cmp139 = icmp slt i32 %24, 0, !dbg !71
  %cmp141.not = icmp sgt i32 %mul138, %1
  %or.cond = select i1 %cmp139, i1 true, i1 %cmp141.not, !dbg !72
  br i1 %or.cond, label %if.end358, label %if.then, !dbg !72

if.then:                                          ; preds = %entry
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add148 = add nuw nsw i32 %mul138, %shr147
  %conv158 = zext nneg i32 %mul138 to i64
  %.idx = shl nuw nsw i64 %conv158, 7
  %gep = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep963, i64 %.idx, !dbg !78
  %cmp151 = icmp ult i32 %add148, 1024, !dbg !79
  br i1 %cmp151, label %if.then152, label %if.end, !dbg !80

if.then152:                                       ; preds = %if.then
  %gep955 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %mul154
  %condval.sroa.7.0.add.ptr165.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep955, i64 12
  %condval.sroa.6.0.add.ptr165.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep955, i64 8
  %condval.sroa.5.0.add.ptr165.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep955, i64 4
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep955, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr165.sroa_idx, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr165.sroa_idx, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr165.sroa_idx, align 4, !dbg !81, !tbaa !30
  br label %if.end, !dbg !82

if.end:                                           ; preds = %if.then, %if.then152
  %condval.sroa.0.0 = phi i32 [ %condval.sroa.0.0.copyload, %if.then152 ], [ 0, %if.then ], !dbg !83
  %condval.sroa.5.0 = phi i32 [ %condval.sroa.5.0.copyload, %if.then152 ], [ 0, %if.then ], !dbg !83
  %condval.sroa.6.0 = phi i32 [ %condval.sroa.6.0.copyload, %if.then152 ], [ 0, %if.then ], !dbg !83
  %condval.sroa.7.0 = phi i32 [ %condval.sroa.7.0.copyload, %if.then152 ], [ 0, %if.then ], !dbg !83
  store i32 %condval.sroa.0.0, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr222.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0, ptr addrspace(3) %condval.sroa.5.0.add.ptr222.sroa_idx, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr222.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0, ptr addrspace(3) %condval.sroa.6.0.add.ptr222.sroa_idx, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr222.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0, ptr addrspace(3) %condval.sroa.7.0.add.ptr222.sroa_idx, align 4, !dbg !84, !tbaa !30
  %cmp151.1 = icmp ult i32 %add148, 1016, !dbg !79
  br i1 %cmp151.1, label %if.then152.1, label %if.end.1, !dbg !80

if.then152.1:                                     ; preds = %if.end
  %add157.1 = or disjoint i64 %mul154, 512
  %gep955.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %add157.1
  %condval.sroa.7.0.add.ptr165.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1, i64 12
  %condval.sroa.6.0.add.ptr165.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1, i64 8
  %condval.sroa.5.0.add.ptr165.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1, i64 4
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep955.1, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr165.sroa_idx.1, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr165.sroa_idx.1, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr165.sroa_idx.1, align 4, !dbg !81, !tbaa !30
  br label %if.end.1, !dbg !82

if.end.1:                                         ; preds = %if.then152.1, %if.end
  %condval.sroa.0.0.1 = phi i32 [ %condval.sroa.0.0.copyload.1, %if.then152.1 ], [ 0, %if.end ], !dbg !83
  %condval.sroa.5.0.1 = phi i32 [ %condval.sroa.5.0.copyload.1, %if.then152.1 ], [ 0, %if.end ], !dbg !83
  %condval.sroa.6.0.1 = phi i32 [ %condval.sroa.6.0.copyload.1, %if.then152.1 ], [ 0, %if.end ], !dbg !83
  %condval.sroa.7.0.1 = phi i32 [ %condval.sroa.7.0.copyload.1, %if.then152.1 ], [ 0, %if.end ], !dbg !83
  store i32 %condval.sroa.0.0.1, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr222.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr222.sroa_idx.1, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr222.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr222.sroa_idx.1, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr222.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr222.sroa_idx.1, align 4, !dbg !84, !tbaa !30
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
  %add289 = add nuw nsw i32 %mul138, %mul288
  %cmp292.not = icmp sgt i32 %add289, %1, !dbg !92
  %scores.sroa.0.0.vec.extract = extractelement <4 x float> %28, i64 0
  %spec.select = select i1 %cmp292.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract, !dbg !93
  %cmp292.not.1.not = icmp slt i32 %add289, %1, !dbg !92
  %scores.sroa.0.4.vec.extract = extractelement <4 x float> %28, i64 1, !dbg !93
  %condval_1.0.1 = select i1 %cmp292.not.1.not, float %scores.sroa.0.4.vec.extract, float 0xFFF0000000000000, !dbg !93
  %add290.2 = or disjoint i32 %add289, 2, !dbg !94
  %cmp292.not.2 = icmp sgt i32 %add290.2, %1, !dbg !92
  %scores.sroa.0.8.vec.extract = extractelement <4 x float> %28, i64 2, !dbg !93
  %condval_1.0.2 = select i1 %cmp292.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract, !dbg !93
  %add290.3 = or disjoint i32 %add289, 3, !dbg !94
  %cmp292.not.3 = icmp sgt i32 %add290.3, %1, !dbg !92
  %scores.sroa.0.12.vec.extract = extractelement <4 x float> %28, i64 3, !dbg !93
  %condval_1.0.3 = select i1 %cmp292.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract, !dbg !93
  %29 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !95
  %30 = tail call contract noundef float @llvm.maxnum.f32(float %29, float %condval_1.0.1), !dbg !95
  %31 = tail call contract noundef float @llvm.maxnum.f32(float %30, float %condval_1.0.2), !dbg !95
  %32 = tail call contract noundef float @llvm.maxnum.f32(float %31, float %condval_1.0.3), !dbg !95
  %33 = bitcast float %32 to i32, !dbg !99
  %34 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !108
  %35 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %34) #11, !dbg !113
  %xor.i.i.i = xor i32 %35, 32, !dbg !114
  %36 = and i32 %35, -64, !dbg !115
  %and.i.i.i = add nsw i32 %36, 64, !dbg !115
  %cmp.not.i.i.i = icmp slt i32 %xor.i.i.i, %and.i.i.i, !dbg !116
  %cond.i.i.i = select i1 %cmp.not.i.i.i, i32 %xor.i.i.i, i32 %35, !dbg !117
  %shl.i.i.i = shl i32 %cond.i.i.i, 2, !dbg !118
  %37 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i, i32 %33), !dbg !119
  %38 = bitcast i32 %37 to float, !dbg !120
  %39 = tail call contract noundef float @llvm.maxnum.f32(float %32, float %38), !dbg !121
  %40 = bitcast float %39 to i32, !dbg !129
  %41 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !134
  %42 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %41) #11, !dbg !137
  %xor.i.i.i.i = xor i32 %42, 16, !dbg !138
  %43 = and i32 %42, -64, !dbg !139
  %and.i.i.i.i = add nsw i32 %43, 64, !dbg !139
  %cmp.not.i.i.i.i = icmp slt i32 %xor.i.i.i.i, %and.i.i.i.i, !dbg !140
  %cond.i.i.i.i = select i1 %cmp.not.i.i.i.i, i32 %xor.i.i.i.i, i32 %42, !dbg !141
  %shl.i.i.i.i = shl i32 %cond.i.i.i.i, 2, !dbg !142
  %44 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i, i32 %40), !dbg !143
  %45 = bitcast i32 %44 to float, !dbg !144
  %46 = tail call contract noundef float @llvm.maxnum.f32(float %39, float %45), !dbg !145
  %sub = fsub contract float %spec.select, %46, !dbg !149
  %mul336 = fmul contract float %sub, 0x3FC7154760000000, !dbg !150
  %add337 = fadd contract float %mul336, 8.000000e+00, !dbg !151
  %cmp.i.i = fcmp contract olt float %add337, -1.260000e+02, !dbg !152
  %cond.i.i = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i = fadd contract float %add337, %cond.i.i, !dbg !152
  %47 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !152
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i = fmul contract float %cond2.i.i, %47, !dbg !152
  %sub.1 = fsub contract float %condval_1.0.1, %46, !dbg !149
  %mul336.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !150
  %add337.1 = fadd contract float %mul336.1, 8.000000e+00, !dbg !151
  %cmp.i.i.1 = fcmp contract olt float %add337.1, -1.260000e+02, !dbg !152
  %cond.i.i.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.1 = fadd contract float %add337.1, %cond.i.i.1, !dbg !152
  %48 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !152
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %48, !dbg !152
  %sub.2 = fsub contract float %condval_1.0.2, %46, !dbg !149
  %mul336.2 = fmul contract float %sub.2, 0x3FC7154760000000, !dbg !150
  %add337.2 = fadd contract float %mul336.2, 8.000000e+00, !dbg !151
  %cmp.i.i.2 = fcmp contract olt float %add337.2, -1.260000e+02, !dbg !152
  %cond.i.i.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.2 = fadd contract float %add337.2, %cond.i.i.2, !dbg !152
  %49 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !152
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %49, !dbg !152
  %sub.3 = fsub contract float %condval_1.0.3, %46, !dbg !149
  %mul336.3 = fmul contract float %sub.3, 0x3FC7154760000000, !dbg !150
  %add337.3 = fadd contract float %mul336.3, 8.000000e+00, !dbg !151
  %cmp.i.i.3 = fcmp contract olt float %add337.3, -1.260000e+02, !dbg !152
  %cond.i.i.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.3 = fadd contract float %add337.3, %cond.i.i.3, !dbg !152
  %50 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !152
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %50, !dbg !152
  %conv.i.i = fptrunc float %mul.i.i to half, !dbg !155
  %51 = insertelement <4 x half> poison, half %conv.i.i, i64 0, !dbg !161
  %conv.i.i.1 = fptrunc float %mul.i.i.1 to half, !dbg !155
  %52 = insertelement <4 x half> %51, half %conv.i.i.1, i64 1, !dbg !161
  %conv.i.i.2 = fptrunc float %mul.i.i.2 to half, !dbg !155
  %53 = insertelement <4 x half> %52, half %conv.i.i.2, i64 2, !dbg !161
  %conv.i.i.3 = fptrunc float %mul.i.i.3 to half, !dbg !155
  %54 = insertelement <4 x half> %53, half %conv.i.i.3, i64 3, !dbg !161
  br label %if.end358, !dbg !162

if.end358:                                        ; preds = %if.end.1, %entry
  %55 = phi <4 x half> [ zeroinitializer, %entry ], [ %54, %if.end.1 ], !dbg !83
  %max_cache.sroa.0.0 = phi float [ 0xFFF0000000000000, %entry ], [ %46, %if.end.1 ], !dbg !83
  %56 = or disjoint i64 %23, 1, !dbg !163
  %arrayidx.1 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %56, !dbg !69
  %57 = load i32, ptr addrspace(1) %arrayidx.1, align 4, !dbg !69, !tbaa !30
  %mul138.1 = shl nsw i32 %57, 4, !dbg !70
  %cmp139.1 = icmp slt i32 %57, 0, !dbg !71
  %cmp141.not.1 = icmp sgt i32 %mul138.1, %1
  %or.cond.1 = select i1 %cmp139.1, i1 true, i1 %cmp141.not.1, !dbg !72
  br i1 %or.cond.1, label %if.end358.1, label %if.then.1, !dbg !72

if.then.1:                                        ; preds = %if.end358
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add148.1 = add nuw nsw i32 %mul138.1, %shr147
  %conv158.1 = zext nneg i32 %mul138.1 to i64
  %.idx.1 = shl nuw nsw i64 %conv158.1, 7
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep963, i64 %.idx.1, !dbg !78
  %cmp151.11006 = icmp ult i32 %add148.1, 1024, !dbg !79
  br i1 %cmp151.11006, label %if.then152.11015, label %if.end.11024, !dbg !80

if.then152.11015:                                 ; preds = %if.then.1
  %gep955.11007 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.1, i64 %mul154
  %condval.sroa.7.0.add.ptr165.sroa_idx.11008 = getelementptr inbounds i8, ptr addrspace(4) %gep955.11007, i64 12
  %condval.sroa.6.0.add.ptr165.sroa_idx.11009 = getelementptr inbounds i8, ptr addrspace(4) %gep955.11007, i64 8
  %condval.sroa.5.0.add.ptr165.sroa_idx.11010 = getelementptr inbounds i8, ptr addrspace(4) %gep955.11007, i64 4
  %condval.sroa.0.0.copyload.11011 = load i32, ptr addrspace(4) %gep955.11007, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.11012 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr165.sroa_idx.11010, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.11013 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr165.sroa_idx.11009, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.11014 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr165.sroa_idx.11008, align 4, !dbg !81, !tbaa !30
  br label %if.end.11024, !dbg !82

if.end.11024:                                     ; preds = %if.then152.11015, %if.then.1
  %condval.sroa.0.0.11016 = phi i32 [ %condval.sroa.0.0.copyload.11011, %if.then152.11015 ], [ 0, %if.then.1 ], !dbg !83
  %condval.sroa.5.0.11017 = phi i32 [ %condval.sroa.5.0.copyload.11012, %if.then152.11015 ], [ 0, %if.then.1 ], !dbg !83
  %condval.sroa.6.0.11018 = phi i32 [ %condval.sroa.6.0.copyload.11013, %if.then152.11015 ], [ 0, %if.then.1 ], !dbg !83
  %condval.sroa.7.0.11019 = phi i32 [ %condval.sroa.7.0.copyload.11014, %if.then152.11015 ], [ 0, %if.then.1 ], !dbg !83
  store i32 %condval.sroa.0.0.11016, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr222.sroa_idx.11021 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.11017, ptr addrspace(3) %condval.sroa.5.0.add.ptr222.sroa_idx.11021, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr222.sroa_idx.11022 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.11018, ptr addrspace(3) %condval.sroa.6.0.add.ptr222.sroa_idx.11022, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr222.sroa_idx.11023 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.11019, ptr addrspace(3) %condval.sroa.7.0.add.ptr222.sroa_idx.11023, align 4, !dbg !84, !tbaa !30
  %cmp151.1.1 = icmp ult i32 %add148.1, 1016, !dbg !79
  br i1 %cmp151.1.1, label %if.then152.1.1, label %if.end.1.1, !dbg !80

if.then152.1.1:                                   ; preds = %if.end.11024
  %add157.1.1 = or disjoint i64 %mul154, 512
  %gep955.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.1, i64 %add157.1.1
  %condval.sroa.7.0.add.ptr165.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1.1, i64 12
  %condval.sroa.6.0.add.ptr165.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1.1, i64 8
  %condval.sroa.5.0.add.ptr165.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1.1, i64 4
  %condval.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %gep955.1.1, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr165.sroa_idx.1.1, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr165.sroa_idx.1.1, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr165.sroa_idx.1.1, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.1, !dbg !82

if.end.1.1:                                       ; preds = %if.then152.1.1, %if.end.11024
  %condval.sroa.0.0.1.1 = phi i32 [ %condval.sroa.0.0.copyload.1.1, %if.then152.1.1 ], [ 0, %if.end.11024 ], !dbg !83
  %condval.sroa.5.0.1.1 = phi i32 [ %condval.sroa.5.0.copyload.1.1, %if.then152.1.1 ], [ 0, %if.end.11024 ], !dbg !83
  %condval.sroa.6.0.1.1 = phi i32 [ %condval.sroa.6.0.copyload.1.1, %if.then152.1.1 ], [ 0, %if.end.11024 ], !dbg !83
  %condval.sroa.7.0.1.1 = phi i32 [ %condval.sroa.7.0.copyload.1.1, %if.then152.1.1 ], [ 0, %if.end.11024 ], !dbg !83
  store i32 %condval.sroa.0.0.1.1, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr222.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr222.sroa_idx.1.1, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr222.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr222.sroa_idx.1.1, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr222.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr222.sroa_idx.1.1, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.11032 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %58 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11032, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %59 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %16, <4 x float> %58), !dbg !91
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %60 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %18, <4 x float> %59), !dbg !91
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %61 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %22, <4 x float> %60), !dbg !91
  %add289.1 = add nuw nsw i32 %mul138.1, %mul288
  %cmp292.not.11033 = icmp sgt i32 %add289.1, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2232 = extractelement <4 x float> %61, i64 0
  %spec.select2851 = select i1 %cmp292.not.11033, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2232, !dbg !93
  %cmp292.not.1.1.not = icmp slt i32 %add289.1, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2357 = extractelement <4 x float> %61, i64 1, !dbg !93
  %condval_1.0.1.1 = select i1 %cmp292.not.1.1.not, float %scores.sroa.0.4.vec.extract2357, float 0xFFF0000000000000, !dbg !93
  %add290.2.1 = or disjoint i32 %add289.1, 2, !dbg !94
  %cmp292.not.2.1 = icmp sgt i32 %add290.2.1, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2470 = extractelement <4 x float> %61, i64 2, !dbg !93
  %condval_1.0.2.1 = select i1 %cmp292.not.2.1, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2470, !dbg !93
  %add290.3.1 = or disjoint i32 %add289.1, 3, !dbg !94
  %cmp292.not.3.1 = icmp sgt i32 %add290.3.1, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2583 = extractelement <4 x float> %61, i64 3, !dbg !93
  %condval_1.0.3.1 = select i1 %cmp292.not.3.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2583, !dbg !93
  %62 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2851, float 0xFFF0000000000000), !dbg !95
  %63 = tail call contract noundef float @llvm.maxnum.f32(float %62, float %condval_1.0.1.1), !dbg !95
  %64 = tail call contract noundef float @llvm.maxnum.f32(float %63, float %condval_1.0.2.1), !dbg !95
  %65 = tail call contract noundef float @llvm.maxnum.f32(float %64, float %condval_1.0.3.1), !dbg !95
  %66 = bitcast float %65 to i32, !dbg !99
  %67 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !108
  %68 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %67) #11, !dbg !113
  %xor.i.i.i.1 = xor i32 %68, 32, !dbg !114
  %69 = and i32 %68, -64, !dbg !115
  %and.i.i.i.1 = add nsw i32 %69, 64, !dbg !115
  %cmp.not.i.i.i.1 = icmp slt i32 %xor.i.i.i.1, %and.i.i.i.1, !dbg !116
  %cond.i.i.i.1 = select i1 %cmp.not.i.i.i.1, i32 %xor.i.i.i.1, i32 %68, !dbg !117
  %shl.i.i.i.1 = shl i32 %cond.i.i.i.1, 2, !dbg !118
  %70 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.1, i32 %66), !dbg !119
  %71 = bitcast i32 %70 to float, !dbg !120
  %72 = tail call contract noundef float @llvm.maxnum.f32(float %65, float %71), !dbg !121
  %73 = bitcast float %72 to i32, !dbg !129
  %74 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !134
  %75 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %74) #11, !dbg !137
  %xor.i.i.i.i.1 = xor i32 %75, 16, !dbg !138
  %76 = and i32 %75, -64, !dbg !139
  %and.i.i.i.i.1 = add nsw i32 %76, 64, !dbg !139
  %cmp.not.i.i.i.i.1 = icmp slt i32 %xor.i.i.i.i.1, %and.i.i.i.i.1, !dbg !140
  %cond.i.i.i.i.1 = select i1 %cmp.not.i.i.i.i.1, i32 %xor.i.i.i.i.1, i32 %75, !dbg !141
  %shl.i.i.i.i.1 = shl i32 %cond.i.i.i.i.1, 2, !dbg !142
  %77 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.1, i32 %73), !dbg !143
  %78 = bitcast i32 %77 to float, !dbg !144
  %79 = tail call contract noundef float @llvm.maxnum.f32(float %72, float %78), !dbg !145
  %sub.11037 = fsub contract float %spec.select2851, %79, !dbg !149
  %mul336.11038 = fmul contract float %sub.11037, 0x3FC7154760000000, !dbg !150
  %add337.11039 = fadd contract float %mul336.11038, 8.000000e+00, !dbg !151
  %cmp.i.i.11040 = fcmp contract olt float %add337.11039, -1.260000e+02, !dbg !152
  %cond.i.i.11041 = select contract i1 %cmp.i.i.11040, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.11042 = fadd contract float %add337.11039, %cond.i.i.11041, !dbg !152
  %80 = tail call contract float @llvm.exp2.f32(float %add.i.i.11042), !dbg !152
  %cond2.i.i.11043 = select contract i1 %cmp.i.i.11040, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.11044 = fmul contract float %cond2.i.i.11043, %80, !dbg !152
  %sub.1.1 = fsub contract float %condval_1.0.1.1, %79, !dbg !149
  %mul336.1.1 = fmul contract float %sub.1.1, 0x3FC7154760000000, !dbg !150
  %add337.1.1 = fadd contract float %mul336.1.1, 8.000000e+00, !dbg !151
  %cmp.i.i.1.1 = fcmp contract olt float %add337.1.1, -1.260000e+02, !dbg !152
  %cond.i.i.1.1 = select contract i1 %cmp.i.i.1.1, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.1.1 = fadd contract float %add337.1.1, %cond.i.i.1.1, !dbg !152
  %81 = tail call contract float @llvm.exp2.f32(float %add.i.i.1.1), !dbg !152
  %cond2.i.i.1.1 = select contract i1 %cmp.i.i.1.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.1.1 = fmul contract float %cond2.i.i.1.1, %81, !dbg !152
  %sub.2.1 = fsub contract float %condval_1.0.2.1, %79, !dbg !149
  %mul336.2.1 = fmul contract float %sub.2.1, 0x3FC7154760000000, !dbg !150
  %add337.2.1 = fadd contract float %mul336.2.1, 8.000000e+00, !dbg !151
  %cmp.i.i.2.1 = fcmp contract olt float %add337.2.1, -1.260000e+02, !dbg !152
  %cond.i.i.2.1 = select contract i1 %cmp.i.i.2.1, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.2.1 = fadd contract float %add337.2.1, %cond.i.i.2.1, !dbg !152
  %82 = tail call contract float @llvm.exp2.f32(float %add.i.i.2.1), !dbg !152
  %cond2.i.i.2.1 = select contract i1 %cmp.i.i.2.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.2.1 = fmul contract float %cond2.i.i.2.1, %82, !dbg !152
  %sub.3.1 = fsub contract float %condval_1.0.3.1, %79, !dbg !149
  %mul336.3.1 = fmul contract float %sub.3.1, 0x3FC7154760000000, !dbg !150
  %add337.3.1 = fadd contract float %mul336.3.1, 8.000000e+00, !dbg !151
  %cmp.i.i.3.1 = fcmp contract olt float %add337.3.1, -1.260000e+02, !dbg !152
  %cond.i.i.3.1 = select contract i1 %cmp.i.i.3.1, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.3.1 = fadd contract float %add337.3.1, %cond.i.i.3.1, !dbg !152
  %83 = tail call contract float @llvm.exp2.f32(float %add.i.i.3.1), !dbg !152
  %cond2.i.i.3.1 = select contract i1 %cmp.i.i.3.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.3.1 = fmul contract float %cond2.i.i.3.1, %83, !dbg !152
  %conv.i.i.11045 = fptrunc float %mul.i.i.11044 to half, !dbg !155
  %84 = insertelement <4 x half> poison, half %conv.i.i.11045, i64 0, !dbg !161
  %conv.i.i.1.1 = fptrunc float %mul.i.i.1.1 to half, !dbg !155
  %85 = insertelement <4 x half> %84, half %conv.i.i.1.1, i64 1, !dbg !161
  %conv.i.i.2.1 = fptrunc float %mul.i.i.2.1 to half, !dbg !155
  %86 = insertelement <4 x half> %85, half %conv.i.i.2.1, i64 2, !dbg !161
  %conv.i.i.3.1 = fptrunc float %mul.i.i.3.1 to half, !dbg !155
  %87 = insertelement <4 x half> %86, half %conv.i.i.3.1, i64 3, !dbg !161
  br label %if.end358.1, !dbg !162

if.end358.1:                                      ; preds = %if.end.1.1, %if.end358
  %88 = phi <4 x half> [ zeroinitializer, %if.end358 ], [ %87, %if.end.1.1 ], !dbg !83
  %max_cache.sroa.6.0 = phi float [ 0xFFF0000000000000, %if.end358 ], [ %79, %if.end.1.1 ], !dbg !83
  %89 = or disjoint i64 %23, 2, !dbg !163
  %arrayidx.2 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %89, !dbg !69
  %90 = load i32, ptr addrspace(1) %arrayidx.2, align 4, !dbg !69, !tbaa !30
  %mul138.2 = shl nsw i32 %90, 4, !dbg !70
  %cmp139.2 = icmp slt i32 %90, 0, !dbg !71
  %cmp141.not.2 = icmp sgt i32 %mul138.2, %1
  %or.cond.2 = select i1 %cmp139.2, i1 true, i1 %cmp141.not.2, !dbg !72
  br i1 %or.cond.2, label %if.end358.2, label %if.then.2, !dbg !72

if.then.2:                                        ; preds = %if.end358.1
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add148.2 = add nuw nsw i32 %mul138.2, %shr147
  %conv158.2 = zext nneg i32 %mul138.2 to i64
  %.idx.2 = shl nuw nsw i64 %conv158.2, 7
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep963, i64 %.idx.2, !dbg !78
  %cmp151.2 = icmp ult i32 %add148.2, 1024, !dbg !79
  br i1 %cmp151.2, label %if.then152.2, label %if.end.2, !dbg !80

if.then152.2:                                     ; preds = %if.then.2
  %gep955.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.2, i64 %mul154
  %condval.sroa.7.0.add.ptr165.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep955.2, i64 12
  %condval.sroa.6.0.add.ptr165.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep955.2, i64 8
  %condval.sroa.5.0.add.ptr165.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep955.2, i64 4
  %condval.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %gep955.2, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr165.sroa_idx.2, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr165.sroa_idx.2, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr165.sroa_idx.2, align 4, !dbg !81, !tbaa !30
  br label %if.end.2, !dbg !82

if.end.2:                                         ; preds = %if.then152.2, %if.then.2
  %condval.sroa.0.0.2 = phi i32 [ %condval.sroa.0.0.copyload.2, %if.then152.2 ], [ 0, %if.then.2 ], !dbg !83
  %condval.sroa.5.0.2 = phi i32 [ %condval.sroa.5.0.copyload.2, %if.then152.2 ], [ 0, %if.then.2 ], !dbg !83
  %condval.sroa.6.0.2 = phi i32 [ %condval.sroa.6.0.copyload.2, %if.then152.2 ], [ 0, %if.then.2 ], !dbg !83
  %condval.sroa.7.0.2 = phi i32 [ %condval.sroa.7.0.copyload.2, %if.then152.2 ], [ 0, %if.then.2 ], !dbg !83
  store i32 %condval.sroa.0.0.2, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr222.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr222.sroa_idx.2, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr222.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr222.sroa_idx.2, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr222.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr222.sroa_idx.2, align 4, !dbg !84, !tbaa !30
  %cmp151.1.2 = icmp ult i32 %add148.2, 1016, !dbg !79
  br i1 %cmp151.1.2, label %if.then152.1.2, label %if.end.1.2, !dbg !80

if.then152.1.2:                                   ; preds = %if.end.2
  %add157.1.2 = or disjoint i64 %mul154, 512
  %gep955.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.2, i64 %add157.1.2
  %condval.sroa.7.0.add.ptr165.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1.2, i64 12
  %condval.sroa.6.0.add.ptr165.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1.2, i64 8
  %condval.sroa.5.0.add.ptr165.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1.2, i64 4
  %condval.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %gep955.1.2, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr165.sroa_idx.1.2, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr165.sroa_idx.1.2, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr165.sroa_idx.1.2, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.2, !dbg !82

if.end.1.2:                                       ; preds = %if.then152.1.2, %if.end.2
  %condval.sroa.0.0.1.2 = phi i32 [ %condval.sroa.0.0.copyload.1.2, %if.then152.1.2 ], [ 0, %if.end.2 ], !dbg !83
  %condval.sroa.5.0.1.2 = phi i32 [ %condval.sroa.5.0.copyload.1.2, %if.then152.1.2 ], [ 0, %if.end.2 ], !dbg !83
  %condval.sroa.6.0.1.2 = phi i32 [ %condval.sroa.6.0.copyload.1.2, %if.then152.1.2 ], [ 0, %if.end.2 ], !dbg !83
  %condval.sroa.7.0.1.2 = phi i32 [ %condval.sroa.7.0.copyload.1.2, %if.then152.1.2 ], [ 0, %if.end.2 ], !dbg !83
  store i32 %condval.sroa.0.0.1.2, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr222.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr222.sroa_idx.1.2, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr222.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr222.sroa_idx.1.2, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr222.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr222.sroa_idx.1.2, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.21054 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %91 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.21054, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %92 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %16, <4 x float> %91), !dbg !91
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %93 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %18, <4 x float> %92), !dbg !91
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %94 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %22, <4 x float> %93), !dbg !91
  %add289.2 = add nuw nsw i32 %mul138.2, %mul288
  %cmp292.not.21055 = icmp sgt i32 %add289.2, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2246 = extractelement <4 x float> %94, i64 0
  %spec.select2852 = select i1 %cmp292.not.21055, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2246, !dbg !93
  %cmp292.not.1.2.not = icmp slt i32 %add289.2, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2369 = extractelement <4 x float> %94, i64 1, !dbg !93
  %condval_1.0.1.2 = select i1 %cmp292.not.1.2.not, float %scores.sroa.0.4.vec.extract2369, float 0xFFF0000000000000, !dbg !93
  %add290.2.2 = or disjoint i32 %add289.2, 2, !dbg !94
  %cmp292.not.2.2 = icmp sgt i32 %add290.2.2, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2482 = extractelement <4 x float> %94, i64 2, !dbg !93
  %condval_1.0.2.2 = select i1 %cmp292.not.2.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2482, !dbg !93
  %add290.3.2 = or disjoint i32 %add289.2, 3, !dbg !94
  %cmp292.not.3.2 = icmp sgt i32 %add290.3.2, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2595 = extractelement <4 x float> %94, i64 3, !dbg !93
  %condval_1.0.3.2 = select i1 %cmp292.not.3.2, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2595, !dbg !93
  %95 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2852, float 0xFFF0000000000000), !dbg !95
  %96 = tail call contract noundef float @llvm.maxnum.f32(float %95, float %condval_1.0.1.2), !dbg !95
  %97 = tail call contract noundef float @llvm.maxnum.f32(float %96, float %condval_1.0.2.2), !dbg !95
  %98 = tail call contract noundef float @llvm.maxnum.f32(float %97, float %condval_1.0.3.2), !dbg !95
  %99 = bitcast float %98 to i32, !dbg !99
  %100 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !108
  %101 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %100) #11, !dbg !113
  %xor.i.i.i.2 = xor i32 %101, 32, !dbg !114
  %102 = and i32 %101, -64, !dbg !115
  %and.i.i.i.2 = add nsw i32 %102, 64, !dbg !115
  %cmp.not.i.i.i.2 = icmp slt i32 %xor.i.i.i.2, %and.i.i.i.2, !dbg !116
  %cond.i.i.i.2 = select i1 %cmp.not.i.i.i.2, i32 %xor.i.i.i.2, i32 %101, !dbg !117
  %shl.i.i.i.2 = shl i32 %cond.i.i.i.2, 2, !dbg !118
  %103 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.2, i32 %99), !dbg !119
  %104 = bitcast i32 %103 to float, !dbg !120
  %105 = tail call contract noundef float @llvm.maxnum.f32(float %98, float %104), !dbg !121
  %106 = bitcast float %105 to i32, !dbg !129
  %107 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !134
  %108 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %107) #11, !dbg !137
  %xor.i.i.i.i.2 = xor i32 %108, 16, !dbg !138
  %109 = and i32 %108, -64, !dbg !139
  %and.i.i.i.i.2 = add nsw i32 %109, 64, !dbg !139
  %cmp.not.i.i.i.i.2 = icmp slt i32 %xor.i.i.i.i.2, %and.i.i.i.i.2, !dbg !140
  %cond.i.i.i.i.2 = select i1 %cmp.not.i.i.i.i.2, i32 %xor.i.i.i.i.2, i32 %108, !dbg !141
  %shl.i.i.i.i.2 = shl i32 %cond.i.i.i.i.2, 2, !dbg !142
  %110 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.2, i32 %106), !dbg !143
  %111 = bitcast i32 %110 to float, !dbg !144
  %112 = tail call contract noundef float @llvm.maxnum.f32(float %105, float %111), !dbg !145
  %sub.21059 = fsub contract float %spec.select2852, %112, !dbg !149
  %mul336.21060 = fmul contract float %sub.21059, 0x3FC7154760000000, !dbg !150
  %add337.21061 = fadd contract float %mul336.21060, 8.000000e+00, !dbg !151
  %cmp.i.i.21062 = fcmp contract olt float %add337.21061, -1.260000e+02, !dbg !152
  %cond.i.i.21063 = select contract i1 %cmp.i.i.21062, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.21064 = fadd contract float %add337.21061, %cond.i.i.21063, !dbg !152
  %113 = tail call contract float @llvm.exp2.f32(float %add.i.i.21064), !dbg !152
  %cond2.i.i.21065 = select contract i1 %cmp.i.i.21062, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.21066 = fmul contract float %cond2.i.i.21065, %113, !dbg !152
  %sub.1.2 = fsub contract float %condval_1.0.1.2, %112, !dbg !149
  %mul336.1.2 = fmul contract float %sub.1.2, 0x3FC7154760000000, !dbg !150
  %add337.1.2 = fadd contract float %mul336.1.2, 8.000000e+00, !dbg !151
  %cmp.i.i.1.2 = fcmp contract olt float %add337.1.2, -1.260000e+02, !dbg !152
  %cond.i.i.1.2 = select contract i1 %cmp.i.i.1.2, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.1.2 = fadd contract float %add337.1.2, %cond.i.i.1.2, !dbg !152
  %114 = tail call contract float @llvm.exp2.f32(float %add.i.i.1.2), !dbg !152
  %cond2.i.i.1.2 = select contract i1 %cmp.i.i.1.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.1.2 = fmul contract float %cond2.i.i.1.2, %114, !dbg !152
  %sub.2.2 = fsub contract float %condval_1.0.2.2, %112, !dbg !149
  %mul336.2.2 = fmul contract float %sub.2.2, 0x3FC7154760000000, !dbg !150
  %add337.2.2 = fadd contract float %mul336.2.2, 8.000000e+00, !dbg !151
  %cmp.i.i.2.2 = fcmp contract olt float %add337.2.2, -1.260000e+02, !dbg !152
  %cond.i.i.2.2 = select contract i1 %cmp.i.i.2.2, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.2.2 = fadd contract float %add337.2.2, %cond.i.i.2.2, !dbg !152
  %115 = tail call contract float @llvm.exp2.f32(float %add.i.i.2.2), !dbg !152
  %cond2.i.i.2.2 = select contract i1 %cmp.i.i.2.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.2.2 = fmul contract float %cond2.i.i.2.2, %115, !dbg !152
  %sub.3.2 = fsub contract float %condval_1.0.3.2, %112, !dbg !149
  %mul336.3.2 = fmul contract float %sub.3.2, 0x3FC7154760000000, !dbg !150
  %add337.3.2 = fadd contract float %mul336.3.2, 8.000000e+00, !dbg !151
  %cmp.i.i.3.2 = fcmp contract olt float %add337.3.2, -1.260000e+02, !dbg !152
  %cond.i.i.3.2 = select contract i1 %cmp.i.i.3.2, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.3.2 = fadd contract float %add337.3.2, %cond.i.i.3.2, !dbg !152
  %116 = tail call contract float @llvm.exp2.f32(float %add.i.i.3.2), !dbg !152
  %cond2.i.i.3.2 = select contract i1 %cmp.i.i.3.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.3.2 = fmul contract float %cond2.i.i.3.2, %116, !dbg !152
  %conv.i.i.21067 = fptrunc float %mul.i.i.21066 to half, !dbg !155
  %117 = insertelement <4 x half> poison, half %conv.i.i.21067, i64 0, !dbg !161
  %conv.i.i.1.2 = fptrunc float %mul.i.i.1.2 to half, !dbg !155
  %118 = insertelement <4 x half> %117, half %conv.i.i.1.2, i64 1, !dbg !161
  %conv.i.i.2.2 = fptrunc float %mul.i.i.2.2 to half, !dbg !155
  %119 = insertelement <4 x half> %118, half %conv.i.i.2.2, i64 2, !dbg !161
  %conv.i.i.3.2 = fptrunc float %mul.i.i.3.2 to half, !dbg !155
  %120 = insertelement <4 x half> %119, half %conv.i.i.3.2, i64 3, !dbg !161
  br label %if.end358.2, !dbg !162

if.end358.2:                                      ; preds = %if.end.1.2, %if.end358.1
  %121 = phi <4 x half> [ zeroinitializer, %if.end358.1 ], [ %120, %if.end.1.2 ], !dbg !83
  %max_cache.sroa.10.0 = phi float [ 0xFFF0000000000000, %if.end358.1 ], [ %112, %if.end.1.2 ], !dbg !83
  %122 = or disjoint i64 %23, 3, !dbg !163
  %arrayidx.3 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %122, !dbg !69
  %123 = load i32, ptr addrspace(1) %arrayidx.3, align 4, !dbg !69, !tbaa !30
  %mul138.3 = shl nsw i32 %123, 4, !dbg !70
  %cmp139.3 = icmp slt i32 %123, 0, !dbg !71
  %cmp141.not.3 = icmp sgt i32 %mul138.3, %1
  %or.cond.3 = select i1 %cmp139.3, i1 true, i1 %cmp141.not.3, !dbg !72
  br i1 %or.cond.3, label %if.end358.3, label %if.then.3, !dbg !72

if.then.3:                                        ; preds = %if.end358.2
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add148.3 = add nuw nsw i32 %mul138.3, %shr147
  %conv158.3 = zext nneg i32 %mul138.3 to i64
  %.idx.3 = shl nuw nsw i64 %conv158.3, 7
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep963, i64 %.idx.3, !dbg !78
  %cmp151.3 = icmp ult i32 %add148.3, 1024, !dbg !79
  br i1 %cmp151.3, label %if.then152.3, label %if.end.3, !dbg !80

if.then152.3:                                     ; preds = %if.then.3
  %gep955.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.3, i64 %mul154
  %condval.sroa.7.0.add.ptr165.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep955.3, i64 12
  %condval.sroa.6.0.add.ptr165.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep955.3, i64 8
  %condval.sroa.5.0.add.ptr165.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep955.3, i64 4
  %condval.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %gep955.3, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr165.sroa_idx.3, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr165.sroa_idx.3, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr165.sroa_idx.3, align 4, !dbg !81, !tbaa !30
  br label %if.end.3, !dbg !82

if.end.3:                                         ; preds = %if.then152.3, %if.then.3
  %condval.sroa.0.0.3 = phi i32 [ %condval.sroa.0.0.copyload.3, %if.then152.3 ], [ 0, %if.then.3 ], !dbg !83
  %condval.sroa.5.0.3 = phi i32 [ %condval.sroa.5.0.copyload.3, %if.then152.3 ], [ 0, %if.then.3 ], !dbg !83
  %condval.sroa.6.0.3 = phi i32 [ %condval.sroa.6.0.copyload.3, %if.then152.3 ], [ 0, %if.then.3 ], !dbg !83
  %condval.sroa.7.0.3 = phi i32 [ %condval.sroa.7.0.copyload.3, %if.then152.3 ], [ 0, %if.then.3 ], !dbg !83
  store i32 %condval.sroa.0.0.3, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr222.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr222.sroa_idx.3, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr222.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr222.sroa_idx.3, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr222.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr222.sroa_idx.3, align 4, !dbg !84, !tbaa !30
  %cmp151.1.3 = icmp ult i32 %add148.3, 1016, !dbg !79
  br i1 %cmp151.1.3, label %if.then152.1.3, label %if.end.1.3, !dbg !80

if.then152.1.3:                                   ; preds = %if.end.3
  %add157.1.3 = or disjoint i64 %mul154, 512
  %gep955.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.3, i64 %add157.1.3
  %condval.sroa.7.0.add.ptr165.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1.3, i64 12
  %condval.sroa.6.0.add.ptr165.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1.3, i64 8
  %condval.sroa.5.0.add.ptr165.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1.3, i64 4
  %condval.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %gep955.1.3, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr165.sroa_idx.1.3, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr165.sroa_idx.1.3, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr165.sroa_idx.1.3, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.3, !dbg !82

if.end.1.3:                                       ; preds = %if.then152.1.3, %if.end.3
  %condval.sroa.0.0.1.3 = phi i32 [ %condval.sroa.0.0.copyload.1.3, %if.then152.1.3 ], [ 0, %if.end.3 ], !dbg !83
  %condval.sroa.5.0.1.3 = phi i32 [ %condval.sroa.5.0.copyload.1.3, %if.then152.1.3 ], [ 0, %if.end.3 ], !dbg !83
  %condval.sroa.6.0.1.3 = phi i32 [ %condval.sroa.6.0.copyload.1.3, %if.then152.1.3 ], [ 0, %if.end.3 ], !dbg !83
  %condval.sroa.7.0.1.3 = phi i32 [ %condval.sroa.7.0.copyload.1.3, %if.then152.1.3 ], [ 0, %if.end.3 ], !dbg !83
  store i32 %condval.sroa.0.0.1.3, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr222.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr222.sroa_idx.1.3, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr222.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr222.sroa_idx.1.3, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr222.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr222.sroa_idx.1.3, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.31076 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %124 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.31076, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %125 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %16, <4 x float> %124), !dbg !91
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %126 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %18, <4 x float> %125), !dbg !91
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %127 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %22, <4 x float> %126), !dbg !91
  %add289.3 = add nuw nsw i32 %mul138.3, %mul288
  %cmp292.not.31077 = icmp sgt i32 %add289.3, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2260 = extractelement <4 x float> %127, i64 0
  %spec.select2853 = select i1 %cmp292.not.31077, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2260, !dbg !93
  %cmp292.not.1.3.not = icmp slt i32 %add289.3, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2381 = extractelement <4 x float> %127, i64 1, !dbg !93
  %condval_1.0.1.3 = select i1 %cmp292.not.1.3.not, float %scores.sroa.0.4.vec.extract2381, float 0xFFF0000000000000, !dbg !93
  %add290.2.3 = or disjoint i32 %add289.3, 2, !dbg !94
  %cmp292.not.2.3 = icmp sgt i32 %add290.2.3, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2494 = extractelement <4 x float> %127, i64 2, !dbg !93
  %condval_1.0.2.3 = select i1 %cmp292.not.2.3, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2494, !dbg !93
  %add290.3.3 = or disjoint i32 %add289.3, 3, !dbg !94
  %cmp292.not.3.3 = icmp sgt i32 %add290.3.3, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2607 = extractelement <4 x float> %127, i64 3, !dbg !93
  %condval_1.0.3.3 = select i1 %cmp292.not.3.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2607, !dbg !93
  %128 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2853, float 0xFFF0000000000000), !dbg !95
  %129 = tail call contract noundef float @llvm.maxnum.f32(float %128, float %condval_1.0.1.3), !dbg !95
  %130 = tail call contract noundef float @llvm.maxnum.f32(float %129, float %condval_1.0.2.3), !dbg !95
  %131 = tail call contract noundef float @llvm.maxnum.f32(float %130, float %condval_1.0.3.3), !dbg !95
  %132 = bitcast float %131 to i32, !dbg !99
  %133 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !108
  %134 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %133) #11, !dbg !113
  %xor.i.i.i.3 = xor i32 %134, 32, !dbg !114
  %135 = and i32 %134, -64, !dbg !115
  %and.i.i.i.3 = add nsw i32 %135, 64, !dbg !115
  %cmp.not.i.i.i.3 = icmp slt i32 %xor.i.i.i.3, %and.i.i.i.3, !dbg !116
  %cond.i.i.i.3 = select i1 %cmp.not.i.i.i.3, i32 %xor.i.i.i.3, i32 %134, !dbg !117
  %shl.i.i.i.3 = shl i32 %cond.i.i.i.3, 2, !dbg !118
  %136 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.3, i32 %132), !dbg !119
  %137 = bitcast i32 %136 to float, !dbg !120
  %138 = tail call contract noundef float @llvm.maxnum.f32(float %131, float %137), !dbg !121
  %139 = bitcast float %138 to i32, !dbg !129
  %140 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !134
  %141 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %140) #11, !dbg !137
  %xor.i.i.i.i.3 = xor i32 %141, 16, !dbg !138
  %142 = and i32 %141, -64, !dbg !139
  %and.i.i.i.i.3 = add nsw i32 %142, 64, !dbg !139
  %cmp.not.i.i.i.i.3 = icmp slt i32 %xor.i.i.i.i.3, %and.i.i.i.i.3, !dbg !140
  %cond.i.i.i.i.3 = select i1 %cmp.not.i.i.i.i.3, i32 %xor.i.i.i.i.3, i32 %141, !dbg !141
  %shl.i.i.i.i.3 = shl i32 %cond.i.i.i.i.3, 2, !dbg !142
  %143 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.3, i32 %139), !dbg !143
  %144 = bitcast i32 %143 to float, !dbg !144
  %145 = tail call contract noundef float @llvm.maxnum.f32(float %138, float %144), !dbg !145
  %sub.31081 = fsub contract float %spec.select2853, %145, !dbg !149
  %mul336.31082 = fmul contract float %sub.31081, 0x3FC7154760000000, !dbg !150
  %add337.31083 = fadd contract float %mul336.31082, 8.000000e+00, !dbg !151
  %cmp.i.i.31084 = fcmp contract olt float %add337.31083, -1.260000e+02, !dbg !152
  %cond.i.i.31085 = select contract i1 %cmp.i.i.31084, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.31086 = fadd contract float %add337.31083, %cond.i.i.31085, !dbg !152
  %146 = tail call contract float @llvm.exp2.f32(float %add.i.i.31086), !dbg !152
  %cond2.i.i.31087 = select contract i1 %cmp.i.i.31084, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.31088 = fmul contract float %cond2.i.i.31087, %146, !dbg !152
  %sub.1.3 = fsub contract float %condval_1.0.1.3, %145, !dbg !149
  %mul336.1.3 = fmul contract float %sub.1.3, 0x3FC7154760000000, !dbg !150
  %add337.1.3 = fadd contract float %mul336.1.3, 8.000000e+00, !dbg !151
  %cmp.i.i.1.3 = fcmp contract olt float %add337.1.3, -1.260000e+02, !dbg !152
  %cond.i.i.1.3 = select contract i1 %cmp.i.i.1.3, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.1.3 = fadd contract float %add337.1.3, %cond.i.i.1.3, !dbg !152
  %147 = tail call contract float @llvm.exp2.f32(float %add.i.i.1.3), !dbg !152
  %cond2.i.i.1.3 = select contract i1 %cmp.i.i.1.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.1.3 = fmul contract float %cond2.i.i.1.3, %147, !dbg !152
  %sub.2.3 = fsub contract float %condval_1.0.2.3, %145, !dbg !149
  %mul336.2.3 = fmul contract float %sub.2.3, 0x3FC7154760000000, !dbg !150
  %add337.2.3 = fadd contract float %mul336.2.3, 8.000000e+00, !dbg !151
  %cmp.i.i.2.3 = fcmp contract olt float %add337.2.3, -1.260000e+02, !dbg !152
  %cond.i.i.2.3 = select contract i1 %cmp.i.i.2.3, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.2.3 = fadd contract float %add337.2.3, %cond.i.i.2.3, !dbg !152
  %148 = tail call contract float @llvm.exp2.f32(float %add.i.i.2.3), !dbg !152
  %cond2.i.i.2.3 = select contract i1 %cmp.i.i.2.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.2.3 = fmul contract float %cond2.i.i.2.3, %148, !dbg !152
  %sub.3.3 = fsub contract float %condval_1.0.3.3, %145, !dbg !149
  %mul336.3.3 = fmul contract float %sub.3.3, 0x3FC7154760000000, !dbg !150
  %add337.3.3 = fadd contract float %mul336.3.3, 8.000000e+00, !dbg !151
  %cmp.i.i.3.3 = fcmp contract olt float %add337.3.3, -1.260000e+02, !dbg !152
  %cond.i.i.3.3 = select contract i1 %cmp.i.i.3.3, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.3.3 = fadd contract float %add337.3.3, %cond.i.i.3.3, !dbg !152
  %149 = tail call contract float @llvm.exp2.f32(float %add.i.i.3.3), !dbg !152
  %cond2.i.i.3.3 = select contract i1 %cmp.i.i.3.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.3.3 = fmul contract float %cond2.i.i.3.3, %149, !dbg !152
  %conv.i.i.31089 = fptrunc float %mul.i.i.31088 to half, !dbg !155
  %150 = insertelement <4 x half> poison, half %conv.i.i.31089, i64 0, !dbg !161
  %conv.i.i.1.3 = fptrunc float %mul.i.i.1.3 to half, !dbg !155
  %151 = insertelement <4 x half> %150, half %conv.i.i.1.3, i64 1, !dbg !161
  %conv.i.i.2.3 = fptrunc float %mul.i.i.2.3 to half, !dbg !155
  %152 = insertelement <4 x half> %151, half %conv.i.i.2.3, i64 2, !dbg !161
  %conv.i.i.3.3 = fptrunc float %mul.i.i.3.3 to half, !dbg !155
  %153 = insertelement <4 x half> %152, half %conv.i.i.3.3, i64 3, !dbg !161
  br label %if.end358.3, !dbg !162

if.end358.3:                                      ; preds = %if.end.1.3, %if.end358.2
  %154 = phi <4 x half> [ zeroinitializer, %if.end358.2 ], [ %153, %if.end.1.3 ], !dbg !83
  %max_cache.sroa.14.0 = phi float [ 0xFFF0000000000000, %if.end358.2 ], [ %145, %if.end.1.3 ], !dbg !83
  %155 = or disjoint i64 %23, 4, !dbg !163
  %arrayidx.4 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %155, !dbg !69
  %156 = load i32, ptr addrspace(1) %arrayidx.4, align 4, !dbg !69, !tbaa !30
  %mul138.4 = shl nsw i32 %156, 4, !dbg !70
  %cmp139.4 = icmp slt i32 %156, 0, !dbg !71
  %cmp141.not.4 = icmp sgt i32 %mul138.4, %1
  %or.cond.4 = select i1 %cmp139.4, i1 true, i1 %cmp141.not.4, !dbg !72
  br i1 %or.cond.4, label %if.end358.4, label %if.then.4, !dbg !72

if.then.4:                                        ; preds = %if.end358.3
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add148.4 = add nuw nsw i32 %mul138.4, %shr147
  %conv158.4 = zext nneg i32 %mul138.4 to i64
  %.idx.4 = shl nuw nsw i64 %conv158.4, 7
  %gep.4 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep963, i64 %.idx.4, !dbg !78
  %cmp151.4 = icmp ult i32 %add148.4, 1024, !dbg !79
  br i1 %cmp151.4, label %if.then152.4, label %if.end.4, !dbg !80

if.then152.4:                                     ; preds = %if.then.4
  %gep955.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.4, i64 %mul154
  %condval.sroa.7.0.add.ptr165.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep955.4, i64 12
  %condval.sroa.6.0.add.ptr165.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep955.4, i64 8
  %condval.sroa.5.0.add.ptr165.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep955.4, i64 4
  %condval.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %gep955.4, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr165.sroa_idx.4, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr165.sroa_idx.4, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr165.sroa_idx.4, align 4, !dbg !81, !tbaa !30
  br label %if.end.4, !dbg !82

if.end.4:                                         ; preds = %if.then152.4, %if.then.4
  %condval.sroa.0.0.4 = phi i32 [ %condval.sroa.0.0.copyload.4, %if.then152.4 ], [ 0, %if.then.4 ], !dbg !83
  %condval.sroa.5.0.4 = phi i32 [ %condval.sroa.5.0.copyload.4, %if.then152.4 ], [ 0, %if.then.4 ], !dbg !83
  %condval.sroa.6.0.4 = phi i32 [ %condval.sroa.6.0.copyload.4, %if.then152.4 ], [ 0, %if.then.4 ], !dbg !83
  %condval.sroa.7.0.4 = phi i32 [ %condval.sroa.7.0.copyload.4, %if.then152.4 ], [ 0, %if.then.4 ], !dbg !83
  store i32 %condval.sroa.0.0.4, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr222.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.4, ptr addrspace(3) %condval.sroa.5.0.add.ptr222.sroa_idx.4, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr222.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.4, ptr addrspace(3) %condval.sroa.6.0.add.ptr222.sroa_idx.4, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr222.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.4, ptr addrspace(3) %condval.sroa.7.0.add.ptr222.sroa_idx.4, align 4, !dbg !84, !tbaa !30
  %cmp151.1.4 = icmp ult i32 %add148.4, 1016, !dbg !79
  br i1 %cmp151.1.4, label %if.then152.1.4, label %if.end.1.4, !dbg !80

if.then152.1.4:                                   ; preds = %if.end.4
  %add157.1.4 = or disjoint i64 %mul154, 512
  %gep955.1.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.4, i64 %add157.1.4
  %condval.sroa.7.0.add.ptr165.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1.4, i64 12
  %condval.sroa.6.0.add.ptr165.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1.4, i64 8
  %condval.sroa.5.0.add.ptr165.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1.4, i64 4
  %condval.sroa.0.0.copyload.1.4 = load i32, ptr addrspace(4) %gep955.1.4, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.4 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr165.sroa_idx.1.4, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.4 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr165.sroa_idx.1.4, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.4 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr165.sroa_idx.1.4, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.4, !dbg !82

if.end.1.4:                                       ; preds = %if.then152.1.4, %if.end.4
  %condval.sroa.0.0.1.4 = phi i32 [ %condval.sroa.0.0.copyload.1.4, %if.then152.1.4 ], [ 0, %if.end.4 ], !dbg !83
  %condval.sroa.5.0.1.4 = phi i32 [ %condval.sroa.5.0.copyload.1.4, %if.then152.1.4 ], [ 0, %if.end.4 ], !dbg !83
  %condval.sroa.6.0.1.4 = phi i32 [ %condval.sroa.6.0.copyload.1.4, %if.then152.1.4 ], [ 0, %if.end.4 ], !dbg !83
  %condval.sroa.7.0.1.4 = phi i32 [ %condval.sroa.7.0.copyload.1.4, %if.then152.1.4 ], [ 0, %if.end.4 ], !dbg !83
  store i32 %condval.sroa.0.0.1.4, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr222.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.4, ptr addrspace(3) %condval.sroa.5.0.add.ptr222.sroa_idx.1.4, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr222.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.4, ptr addrspace(3) %condval.sroa.6.0.add.ptr222.sroa_idx.1.4, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr222.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.4, ptr addrspace(3) %condval.sroa.7.0.add.ptr222.sroa_idx.1.4, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %157 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %158 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %16, <4 x float> %157), !dbg !91
  %k_local.sroa.0.0.copyload.2.4 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %159 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.4, <4 x half> %18, <4 x float> %158), !dbg !91
  %k_local.sroa.0.0.copyload.3.4 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %160 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.4, <4 x half> %22, <4 x float> %159), !dbg !91
  %add289.4 = add nuw nsw i32 %mul138.4, %mul288
  %cmp292.not.4 = icmp sgt i32 %add289.4, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2274 = extractelement <4 x float> %160, i64 0
  %spec.select2854 = select i1 %cmp292.not.4, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2274, !dbg !93
  %cmp292.not.1.4.not = icmp slt i32 %add289.4, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2393 = extractelement <4 x float> %160, i64 1, !dbg !93
  %condval_1.0.1.4 = select i1 %cmp292.not.1.4.not, float %scores.sroa.0.4.vec.extract2393, float 0xFFF0000000000000, !dbg !93
  %add290.2.4 = or disjoint i32 %add289.4, 2, !dbg !94
  %cmp292.not.2.4 = icmp sgt i32 %add290.2.4, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2506 = extractelement <4 x float> %160, i64 2, !dbg !93
  %condval_1.0.2.4 = select i1 %cmp292.not.2.4, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2506, !dbg !93
  %add290.3.4 = or disjoint i32 %add289.4, 3, !dbg !94
  %cmp292.not.3.4 = icmp sgt i32 %add290.3.4, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2619 = extractelement <4 x float> %160, i64 3, !dbg !93
  %condval_1.0.3.4 = select i1 %cmp292.not.3.4, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2619, !dbg !93
  %161 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2854, float 0xFFF0000000000000), !dbg !95
  %162 = tail call contract noundef float @llvm.maxnum.f32(float %161, float %condval_1.0.1.4), !dbg !95
  %163 = tail call contract noundef float @llvm.maxnum.f32(float %162, float %condval_1.0.2.4), !dbg !95
  %164 = tail call contract noundef float @llvm.maxnum.f32(float %163, float %condval_1.0.3.4), !dbg !95
  %165 = bitcast float %164 to i32, !dbg !99
  %166 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !108
  %167 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %166) #11, !dbg !113
  %xor.i.i.i.4 = xor i32 %167, 32, !dbg !114
  %168 = and i32 %167, -64, !dbg !115
  %and.i.i.i.4 = add nsw i32 %168, 64, !dbg !115
  %cmp.not.i.i.i.4 = icmp slt i32 %xor.i.i.i.4, %and.i.i.i.4, !dbg !116
  %cond.i.i.i.4 = select i1 %cmp.not.i.i.i.4, i32 %xor.i.i.i.4, i32 %167, !dbg !117
  %shl.i.i.i.4 = shl i32 %cond.i.i.i.4, 2, !dbg !118
  %169 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.4, i32 %165), !dbg !119
  %170 = bitcast i32 %169 to float, !dbg !120
  %171 = tail call contract noundef float @llvm.maxnum.f32(float %164, float %170), !dbg !121
  %172 = bitcast float %171 to i32, !dbg !129
  %173 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !134
  %174 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %173) #11, !dbg !137
  %xor.i.i.i.i.4 = xor i32 %174, 16, !dbg !138
  %175 = and i32 %174, -64, !dbg !139
  %and.i.i.i.i.4 = add nsw i32 %175, 64, !dbg !139
  %cmp.not.i.i.i.i.4 = icmp slt i32 %xor.i.i.i.i.4, %and.i.i.i.i.4, !dbg !140
  %cond.i.i.i.i.4 = select i1 %cmp.not.i.i.i.i.4, i32 %xor.i.i.i.i.4, i32 %174, !dbg !141
  %shl.i.i.i.i.4 = shl i32 %cond.i.i.i.i.4, 2, !dbg !142
  %176 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.4, i32 %172), !dbg !143
  %177 = bitcast i32 %176 to float, !dbg !144
  %178 = tail call contract noundef float @llvm.maxnum.f32(float %171, float %177), !dbg !145
  %sub.4 = fsub contract float %spec.select2854, %178, !dbg !149
  %mul336.4 = fmul contract float %sub.4, 0x3FC7154760000000, !dbg !150
  %add337.4 = fadd contract float %mul336.4, 8.000000e+00, !dbg !151
  %cmp.i.i.4 = fcmp contract olt float %add337.4, -1.260000e+02, !dbg !152
  %cond.i.i.4 = select contract i1 %cmp.i.i.4, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.4 = fadd contract float %add337.4, %cond.i.i.4, !dbg !152
  %179 = tail call contract float @llvm.exp2.f32(float %add.i.i.4), !dbg !152
  %cond2.i.i.4 = select contract i1 %cmp.i.i.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.4 = fmul contract float %cond2.i.i.4, %179, !dbg !152
  %sub.1.4 = fsub contract float %condval_1.0.1.4, %178, !dbg !149
  %mul336.1.4 = fmul contract float %sub.1.4, 0x3FC7154760000000, !dbg !150
  %add337.1.4 = fadd contract float %mul336.1.4, 8.000000e+00, !dbg !151
  %cmp.i.i.1.4 = fcmp contract olt float %add337.1.4, -1.260000e+02, !dbg !152
  %cond.i.i.1.4 = select contract i1 %cmp.i.i.1.4, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.1.4 = fadd contract float %add337.1.4, %cond.i.i.1.4, !dbg !152
  %180 = tail call contract float @llvm.exp2.f32(float %add.i.i.1.4), !dbg !152
  %cond2.i.i.1.4 = select contract i1 %cmp.i.i.1.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.1.4 = fmul contract float %cond2.i.i.1.4, %180, !dbg !152
  %sub.2.4 = fsub contract float %condval_1.0.2.4, %178, !dbg !149
  %mul336.2.4 = fmul contract float %sub.2.4, 0x3FC7154760000000, !dbg !150
  %add337.2.4 = fadd contract float %mul336.2.4, 8.000000e+00, !dbg !151
  %cmp.i.i.2.4 = fcmp contract olt float %add337.2.4, -1.260000e+02, !dbg !152
  %cond.i.i.2.4 = select contract i1 %cmp.i.i.2.4, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.2.4 = fadd contract float %add337.2.4, %cond.i.i.2.4, !dbg !152
  %181 = tail call contract float @llvm.exp2.f32(float %add.i.i.2.4), !dbg !152
  %cond2.i.i.2.4 = select contract i1 %cmp.i.i.2.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.2.4 = fmul contract float %cond2.i.i.2.4, %181, !dbg !152
  %sub.3.4 = fsub contract float %condval_1.0.3.4, %178, !dbg !149
  %mul336.3.4 = fmul contract float %sub.3.4, 0x3FC7154760000000, !dbg !150
  %add337.3.4 = fadd contract float %mul336.3.4, 8.000000e+00, !dbg !151
  %cmp.i.i.3.4 = fcmp contract olt float %add337.3.4, -1.260000e+02, !dbg !152
  %cond.i.i.3.4 = select contract i1 %cmp.i.i.3.4, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.3.4 = fadd contract float %add337.3.4, %cond.i.i.3.4, !dbg !152
  %182 = tail call contract float @llvm.exp2.f32(float %add.i.i.3.4), !dbg !152
  %cond2.i.i.3.4 = select contract i1 %cmp.i.i.3.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.3.4 = fmul contract float %cond2.i.i.3.4, %182, !dbg !152
  %conv.i.i.4 = fptrunc float %mul.i.i.4 to half, !dbg !155
  %183 = insertelement <4 x half> poison, half %conv.i.i.4, i64 0, !dbg !161
  %conv.i.i.1.4 = fptrunc float %mul.i.i.1.4 to half, !dbg !155
  %184 = insertelement <4 x half> %183, half %conv.i.i.1.4, i64 1, !dbg !161
  %conv.i.i.2.4 = fptrunc float %mul.i.i.2.4 to half, !dbg !155
  %185 = insertelement <4 x half> %184, half %conv.i.i.2.4, i64 2, !dbg !161
  %conv.i.i.3.4 = fptrunc float %mul.i.i.3.4 to half, !dbg !155
  %186 = insertelement <4 x half> %185, half %conv.i.i.3.4, i64 3, !dbg !161
  br label %if.end358.4, !dbg !162

if.end358.4:                                      ; preds = %if.end.1.4, %if.end358.3
  %187 = phi <4 x half> [ zeroinitializer, %if.end358.3 ], [ %186, %if.end.1.4 ], !dbg !83
  %max_cache.sroa.18.0 = phi float [ 0xFFF0000000000000, %if.end358.3 ], [ %178, %if.end.1.4 ], !dbg !83
  %188 = or disjoint i64 %23, 5, !dbg !163
  %arrayidx.5 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %188, !dbg !69
  %189 = load i32, ptr addrspace(1) %arrayidx.5, align 4, !dbg !69, !tbaa !30
  %mul138.5 = shl nsw i32 %189, 4, !dbg !70
  %cmp139.5 = icmp slt i32 %189, 0, !dbg !71
  %cmp141.not.5 = icmp sgt i32 %mul138.5, %1
  %or.cond.5 = select i1 %cmp139.5, i1 true, i1 %cmp141.not.5, !dbg !72
  br i1 %or.cond.5, label %if.end358.5, label %if.then.5, !dbg !72

if.then.5:                                        ; preds = %if.end358.4
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add148.5 = add nuw nsw i32 %mul138.5, %shr147
  %conv158.5 = zext nneg i32 %mul138.5 to i64
  %.idx.5 = shl nuw nsw i64 %conv158.5, 7
  %gep.5 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep963, i64 %.idx.5, !dbg !78
  %cmp151.5 = icmp ult i32 %add148.5, 1024, !dbg !79
  br i1 %cmp151.5, label %if.then152.5, label %if.end.5, !dbg !80

if.then152.5:                                     ; preds = %if.then.5
  %gep955.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.5, i64 %mul154
  %condval.sroa.7.0.add.ptr165.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep955.5, i64 12
  %condval.sroa.6.0.add.ptr165.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep955.5, i64 8
  %condval.sroa.5.0.add.ptr165.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep955.5, i64 4
  %condval.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %gep955.5, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr165.sroa_idx.5, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr165.sroa_idx.5, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr165.sroa_idx.5, align 4, !dbg !81, !tbaa !30
  br label %if.end.5, !dbg !82

if.end.5:                                         ; preds = %if.then152.5, %if.then.5
  %condval.sroa.0.0.5 = phi i32 [ %condval.sroa.0.0.copyload.5, %if.then152.5 ], [ 0, %if.then.5 ], !dbg !83
  %condval.sroa.5.0.5 = phi i32 [ %condval.sroa.5.0.copyload.5, %if.then152.5 ], [ 0, %if.then.5 ], !dbg !83
  %condval.sroa.6.0.5 = phi i32 [ %condval.sroa.6.0.copyload.5, %if.then152.5 ], [ 0, %if.then.5 ], !dbg !83
  %condval.sroa.7.0.5 = phi i32 [ %condval.sroa.7.0.copyload.5, %if.then152.5 ], [ 0, %if.then.5 ], !dbg !83
  store i32 %condval.sroa.0.0.5, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr222.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.5, ptr addrspace(3) %condval.sroa.5.0.add.ptr222.sroa_idx.5, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr222.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.5, ptr addrspace(3) %condval.sroa.6.0.add.ptr222.sroa_idx.5, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr222.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.5, ptr addrspace(3) %condval.sroa.7.0.add.ptr222.sroa_idx.5, align 4, !dbg !84, !tbaa !30
  %cmp151.1.5 = icmp ult i32 %add148.5, 1016, !dbg !79
  br i1 %cmp151.1.5, label %if.then152.1.5, label %if.end.1.5, !dbg !80

if.then152.1.5:                                   ; preds = %if.end.5
  %add157.1.5 = or disjoint i64 %mul154, 512
  %gep955.1.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.5, i64 %add157.1.5
  %condval.sroa.7.0.add.ptr165.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1.5, i64 12
  %condval.sroa.6.0.add.ptr165.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1.5, i64 8
  %condval.sroa.5.0.add.ptr165.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1.5, i64 4
  %condval.sroa.0.0.copyload.1.5 = load i32, ptr addrspace(4) %gep955.1.5, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.5 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr165.sroa_idx.1.5, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.5 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr165.sroa_idx.1.5, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.5 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr165.sroa_idx.1.5, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.5, !dbg !82

if.end.1.5:                                       ; preds = %if.then152.1.5, %if.end.5
  %condval.sroa.0.0.1.5 = phi i32 [ %condval.sroa.0.0.copyload.1.5, %if.then152.1.5 ], [ 0, %if.end.5 ], !dbg !83
  %condval.sroa.5.0.1.5 = phi i32 [ %condval.sroa.5.0.copyload.1.5, %if.then152.1.5 ], [ 0, %if.end.5 ], !dbg !83
  %condval.sroa.6.0.1.5 = phi i32 [ %condval.sroa.6.0.copyload.1.5, %if.then152.1.5 ], [ 0, %if.end.5 ], !dbg !83
  %condval.sroa.7.0.1.5 = phi i32 [ %condval.sroa.7.0.copyload.1.5, %if.then152.1.5 ], [ 0, %if.end.5 ], !dbg !83
  store i32 %condval.sroa.0.0.1.5, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr222.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.5, ptr addrspace(3) %condval.sroa.5.0.add.ptr222.sroa_idx.1.5, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr222.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.5, ptr addrspace(3) %condval.sroa.6.0.add.ptr222.sroa_idx.1.5, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr222.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.5, ptr addrspace(3) %condval.sroa.7.0.add.ptr222.sroa_idx.1.5, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %190 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %191 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %16, <4 x float> %190), !dbg !91
  %k_local.sroa.0.0.copyload.2.5 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %192 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.5, <4 x half> %18, <4 x float> %191), !dbg !91
  %k_local.sroa.0.0.copyload.3.5 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %193 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.5, <4 x half> %22, <4 x float> %192), !dbg !91
  %add289.5 = add nuw nsw i32 %mul138.5, %mul288
  %cmp292.not.5 = icmp sgt i32 %add289.5, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2288 = extractelement <4 x float> %193, i64 0
  %spec.select2855 = select i1 %cmp292.not.5, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2288, !dbg !93
  %cmp292.not.1.5.not = icmp slt i32 %add289.5, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2405 = extractelement <4 x float> %193, i64 1, !dbg !93
  %condval_1.0.1.5 = select i1 %cmp292.not.1.5.not, float %scores.sroa.0.4.vec.extract2405, float 0xFFF0000000000000, !dbg !93
  %add290.2.5 = or disjoint i32 %add289.5, 2, !dbg !94
  %cmp292.not.2.5 = icmp sgt i32 %add290.2.5, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2518 = extractelement <4 x float> %193, i64 2, !dbg !93
  %condval_1.0.2.5 = select i1 %cmp292.not.2.5, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2518, !dbg !93
  %add290.3.5 = or disjoint i32 %add289.5, 3, !dbg !94
  %cmp292.not.3.5 = icmp sgt i32 %add290.3.5, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2631 = extractelement <4 x float> %193, i64 3, !dbg !93
  %condval_1.0.3.5 = select i1 %cmp292.not.3.5, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2631, !dbg !93
  %194 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2855, float 0xFFF0000000000000), !dbg !95
  %195 = tail call contract noundef float @llvm.maxnum.f32(float %194, float %condval_1.0.1.5), !dbg !95
  %196 = tail call contract noundef float @llvm.maxnum.f32(float %195, float %condval_1.0.2.5), !dbg !95
  %197 = tail call contract noundef float @llvm.maxnum.f32(float %196, float %condval_1.0.3.5), !dbg !95
  %198 = bitcast float %197 to i32, !dbg !99
  %199 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !108
  %200 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %199) #11, !dbg !113
  %xor.i.i.i.5 = xor i32 %200, 32, !dbg !114
  %201 = and i32 %200, -64, !dbg !115
  %and.i.i.i.5 = add nsw i32 %201, 64, !dbg !115
  %cmp.not.i.i.i.5 = icmp slt i32 %xor.i.i.i.5, %and.i.i.i.5, !dbg !116
  %cond.i.i.i.5 = select i1 %cmp.not.i.i.i.5, i32 %xor.i.i.i.5, i32 %200, !dbg !117
  %shl.i.i.i.5 = shl i32 %cond.i.i.i.5, 2, !dbg !118
  %202 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.5, i32 %198), !dbg !119
  %203 = bitcast i32 %202 to float, !dbg !120
  %204 = tail call contract noundef float @llvm.maxnum.f32(float %197, float %203), !dbg !121
  %205 = bitcast float %204 to i32, !dbg !129
  %206 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !134
  %207 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %206) #11, !dbg !137
  %xor.i.i.i.i.5 = xor i32 %207, 16, !dbg !138
  %208 = and i32 %207, -64, !dbg !139
  %and.i.i.i.i.5 = add nsw i32 %208, 64, !dbg !139
  %cmp.not.i.i.i.i.5 = icmp slt i32 %xor.i.i.i.i.5, %and.i.i.i.i.5, !dbg !140
  %cond.i.i.i.i.5 = select i1 %cmp.not.i.i.i.i.5, i32 %xor.i.i.i.i.5, i32 %207, !dbg !141
  %shl.i.i.i.i.5 = shl i32 %cond.i.i.i.i.5, 2, !dbg !142
  %209 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.5, i32 %205), !dbg !143
  %210 = bitcast i32 %209 to float, !dbg !144
  %211 = tail call contract noundef float @llvm.maxnum.f32(float %204, float %210), !dbg !145
  %sub.5 = fsub contract float %spec.select2855, %211, !dbg !149
  %mul336.5 = fmul contract float %sub.5, 0x3FC7154760000000, !dbg !150
  %add337.5 = fadd contract float %mul336.5, 8.000000e+00, !dbg !151
  %cmp.i.i.5 = fcmp contract olt float %add337.5, -1.260000e+02, !dbg !152
  %cond.i.i.5 = select contract i1 %cmp.i.i.5, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.5 = fadd contract float %add337.5, %cond.i.i.5, !dbg !152
  %212 = tail call contract float @llvm.exp2.f32(float %add.i.i.5), !dbg !152
  %cond2.i.i.5 = select contract i1 %cmp.i.i.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.5 = fmul contract float %cond2.i.i.5, %212, !dbg !152
  %sub.1.5 = fsub contract float %condval_1.0.1.5, %211, !dbg !149
  %mul336.1.5 = fmul contract float %sub.1.5, 0x3FC7154760000000, !dbg !150
  %add337.1.5 = fadd contract float %mul336.1.5, 8.000000e+00, !dbg !151
  %cmp.i.i.1.5 = fcmp contract olt float %add337.1.5, -1.260000e+02, !dbg !152
  %cond.i.i.1.5 = select contract i1 %cmp.i.i.1.5, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.1.5 = fadd contract float %add337.1.5, %cond.i.i.1.5, !dbg !152
  %213 = tail call contract float @llvm.exp2.f32(float %add.i.i.1.5), !dbg !152
  %cond2.i.i.1.5 = select contract i1 %cmp.i.i.1.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.1.5 = fmul contract float %cond2.i.i.1.5, %213, !dbg !152
  %sub.2.5 = fsub contract float %condval_1.0.2.5, %211, !dbg !149
  %mul336.2.5 = fmul contract float %sub.2.5, 0x3FC7154760000000, !dbg !150
  %add337.2.5 = fadd contract float %mul336.2.5, 8.000000e+00, !dbg !151
  %cmp.i.i.2.5 = fcmp contract olt float %add337.2.5, -1.260000e+02, !dbg !152
  %cond.i.i.2.5 = select contract i1 %cmp.i.i.2.5, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.2.5 = fadd contract float %add337.2.5, %cond.i.i.2.5, !dbg !152
  %214 = tail call contract float @llvm.exp2.f32(float %add.i.i.2.5), !dbg !152
  %cond2.i.i.2.5 = select contract i1 %cmp.i.i.2.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.2.5 = fmul contract float %cond2.i.i.2.5, %214, !dbg !152
  %sub.3.5 = fsub contract float %condval_1.0.3.5, %211, !dbg !149
  %mul336.3.5 = fmul contract float %sub.3.5, 0x3FC7154760000000, !dbg !150
  %add337.3.5 = fadd contract float %mul336.3.5, 8.000000e+00, !dbg !151
  %cmp.i.i.3.5 = fcmp contract olt float %add337.3.5, -1.260000e+02, !dbg !152
  %cond.i.i.3.5 = select contract i1 %cmp.i.i.3.5, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.3.5 = fadd contract float %add337.3.5, %cond.i.i.3.5, !dbg !152
  %215 = tail call contract float @llvm.exp2.f32(float %add.i.i.3.5), !dbg !152
  %cond2.i.i.3.5 = select contract i1 %cmp.i.i.3.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.3.5 = fmul contract float %cond2.i.i.3.5, %215, !dbg !152
  %conv.i.i.5 = fptrunc float %mul.i.i.5 to half, !dbg !155
  %216 = insertelement <4 x half> poison, half %conv.i.i.5, i64 0, !dbg !161
  %conv.i.i.1.5 = fptrunc float %mul.i.i.1.5 to half, !dbg !155
  %217 = insertelement <4 x half> %216, half %conv.i.i.1.5, i64 1, !dbg !161
  %conv.i.i.2.5 = fptrunc float %mul.i.i.2.5 to half, !dbg !155
  %218 = insertelement <4 x half> %217, half %conv.i.i.2.5, i64 2, !dbg !161
  %conv.i.i.3.5 = fptrunc float %mul.i.i.3.5 to half, !dbg !155
  %219 = insertelement <4 x half> %218, half %conv.i.i.3.5, i64 3, !dbg !161
  br label %if.end358.5, !dbg !162

if.end358.5:                                      ; preds = %if.end.1.5, %if.end358.4
  %220 = phi <4 x half> [ zeroinitializer, %if.end358.4 ], [ %219, %if.end.1.5 ], !dbg !83
  %max_cache.sroa.22.0 = phi float [ 0xFFF0000000000000, %if.end358.4 ], [ %211, %if.end.1.5 ], !dbg !83
  %221 = or disjoint i64 %23, 6, !dbg !163
  %arrayidx.6 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %221, !dbg !69
  %222 = load i32, ptr addrspace(1) %arrayidx.6, align 4, !dbg !69, !tbaa !30
  %mul138.6 = shl nsw i32 %222, 4, !dbg !70
  %cmp139.6 = icmp slt i32 %222, 0, !dbg !71
  %cmp141.not.6 = icmp sgt i32 %mul138.6, %1
  %or.cond.6 = select i1 %cmp139.6, i1 true, i1 %cmp141.not.6, !dbg !72
  br i1 %or.cond.6, label %if.end358.6, label %if.then.6, !dbg !72

if.then.6:                                        ; preds = %if.end358.5
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add148.6 = add nuw nsw i32 %mul138.6, %shr147
  %conv158.6 = zext nneg i32 %mul138.6 to i64
  %.idx.6 = shl nuw nsw i64 %conv158.6, 7
  %gep.6 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep963, i64 %.idx.6, !dbg !78
  %cmp151.6 = icmp ult i32 %add148.6, 1024, !dbg !79
  br i1 %cmp151.6, label %if.then152.6, label %if.end.6, !dbg !80

if.then152.6:                                     ; preds = %if.then.6
  %gep955.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.6, i64 %mul154
  %condval.sroa.7.0.add.ptr165.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep955.6, i64 12
  %condval.sroa.6.0.add.ptr165.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep955.6, i64 8
  %condval.sroa.5.0.add.ptr165.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep955.6, i64 4
  %condval.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %gep955.6, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr165.sroa_idx.6, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr165.sroa_idx.6, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr165.sroa_idx.6, align 4, !dbg !81, !tbaa !30
  br label %if.end.6, !dbg !82

if.end.6:                                         ; preds = %if.then152.6, %if.then.6
  %condval.sroa.0.0.6 = phi i32 [ %condval.sroa.0.0.copyload.6, %if.then152.6 ], [ 0, %if.then.6 ], !dbg !83
  %condval.sroa.5.0.6 = phi i32 [ %condval.sroa.5.0.copyload.6, %if.then152.6 ], [ 0, %if.then.6 ], !dbg !83
  %condval.sroa.6.0.6 = phi i32 [ %condval.sroa.6.0.copyload.6, %if.then152.6 ], [ 0, %if.then.6 ], !dbg !83
  %condval.sroa.7.0.6 = phi i32 [ %condval.sroa.7.0.copyload.6, %if.then152.6 ], [ 0, %if.then.6 ], !dbg !83
  store i32 %condval.sroa.0.0.6, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr222.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.6, ptr addrspace(3) %condval.sroa.5.0.add.ptr222.sroa_idx.6, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr222.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.6, ptr addrspace(3) %condval.sroa.6.0.add.ptr222.sroa_idx.6, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr222.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.6, ptr addrspace(3) %condval.sroa.7.0.add.ptr222.sroa_idx.6, align 4, !dbg !84, !tbaa !30
  %cmp151.1.6 = icmp ult i32 %add148.6, 1016, !dbg !79
  br i1 %cmp151.1.6, label %if.then152.1.6, label %if.end.1.6, !dbg !80

if.then152.1.6:                                   ; preds = %if.end.6
  %add157.1.6 = or disjoint i64 %mul154, 512
  %gep955.1.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.6, i64 %add157.1.6
  %condval.sroa.7.0.add.ptr165.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1.6, i64 12
  %condval.sroa.6.0.add.ptr165.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1.6, i64 8
  %condval.sroa.5.0.add.ptr165.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1.6, i64 4
  %condval.sroa.0.0.copyload.1.6 = load i32, ptr addrspace(4) %gep955.1.6, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.6 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr165.sroa_idx.1.6, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.6 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr165.sroa_idx.1.6, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.6 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr165.sroa_idx.1.6, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.6, !dbg !82

if.end.1.6:                                       ; preds = %if.then152.1.6, %if.end.6
  %condval.sroa.0.0.1.6 = phi i32 [ %condval.sroa.0.0.copyload.1.6, %if.then152.1.6 ], [ 0, %if.end.6 ], !dbg !83
  %condval.sroa.5.0.1.6 = phi i32 [ %condval.sroa.5.0.copyload.1.6, %if.then152.1.6 ], [ 0, %if.end.6 ], !dbg !83
  %condval.sroa.6.0.1.6 = phi i32 [ %condval.sroa.6.0.copyload.1.6, %if.then152.1.6 ], [ 0, %if.end.6 ], !dbg !83
  %condval.sroa.7.0.1.6 = phi i32 [ %condval.sroa.7.0.copyload.1.6, %if.then152.1.6 ], [ 0, %if.end.6 ], !dbg !83
  store i32 %condval.sroa.0.0.1.6, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr222.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.6, ptr addrspace(3) %condval.sroa.5.0.add.ptr222.sroa_idx.1.6, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr222.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.6, ptr addrspace(3) %condval.sroa.6.0.add.ptr222.sroa_idx.1.6, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr222.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.6, ptr addrspace(3) %condval.sroa.7.0.add.ptr222.sroa_idx.1.6, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %223 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %224 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %16, <4 x float> %223), !dbg !91
  %k_local.sroa.0.0.copyload.2.6 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %225 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.6, <4 x half> %18, <4 x float> %224), !dbg !91
  %k_local.sroa.0.0.copyload.3.6 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %226 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.6, <4 x half> %22, <4 x float> %225), !dbg !91
  %add289.6 = add nuw nsw i32 %mul138.6, %mul288
  %cmp292.not.6 = icmp sgt i32 %add289.6, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2302 = extractelement <4 x float> %226, i64 0
  %spec.select2856 = select i1 %cmp292.not.6, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2302, !dbg !93
  %cmp292.not.1.6.not = icmp slt i32 %add289.6, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2417 = extractelement <4 x float> %226, i64 1, !dbg !93
  %condval_1.0.1.6 = select i1 %cmp292.not.1.6.not, float %scores.sroa.0.4.vec.extract2417, float 0xFFF0000000000000, !dbg !93
  %add290.2.6 = or disjoint i32 %add289.6, 2, !dbg !94
  %cmp292.not.2.6 = icmp sgt i32 %add290.2.6, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2530 = extractelement <4 x float> %226, i64 2, !dbg !93
  %condval_1.0.2.6 = select i1 %cmp292.not.2.6, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2530, !dbg !93
  %add290.3.6 = or disjoint i32 %add289.6, 3, !dbg !94
  %cmp292.not.3.6 = icmp sgt i32 %add290.3.6, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2643 = extractelement <4 x float> %226, i64 3, !dbg !93
  %condval_1.0.3.6 = select i1 %cmp292.not.3.6, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2643, !dbg !93
  %227 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2856, float 0xFFF0000000000000), !dbg !95
  %228 = tail call contract noundef float @llvm.maxnum.f32(float %227, float %condval_1.0.1.6), !dbg !95
  %229 = tail call contract noundef float @llvm.maxnum.f32(float %228, float %condval_1.0.2.6), !dbg !95
  %230 = tail call contract noundef float @llvm.maxnum.f32(float %229, float %condval_1.0.3.6), !dbg !95
  %231 = bitcast float %230 to i32, !dbg !99
  %232 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !108
  %233 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %232) #11, !dbg !113
  %xor.i.i.i.6 = xor i32 %233, 32, !dbg !114
  %234 = and i32 %233, -64, !dbg !115
  %and.i.i.i.6 = add nsw i32 %234, 64, !dbg !115
  %cmp.not.i.i.i.6 = icmp slt i32 %xor.i.i.i.6, %and.i.i.i.6, !dbg !116
  %cond.i.i.i.6 = select i1 %cmp.not.i.i.i.6, i32 %xor.i.i.i.6, i32 %233, !dbg !117
  %shl.i.i.i.6 = shl i32 %cond.i.i.i.6, 2, !dbg !118
  %235 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.6, i32 %231), !dbg !119
  %236 = bitcast i32 %235 to float, !dbg !120
  %237 = tail call contract noundef float @llvm.maxnum.f32(float %230, float %236), !dbg !121
  %238 = bitcast float %237 to i32, !dbg !129
  %239 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !134
  %240 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %239) #11, !dbg !137
  %xor.i.i.i.i.6 = xor i32 %240, 16, !dbg !138
  %241 = and i32 %240, -64, !dbg !139
  %and.i.i.i.i.6 = add nsw i32 %241, 64, !dbg !139
  %cmp.not.i.i.i.i.6 = icmp slt i32 %xor.i.i.i.i.6, %and.i.i.i.i.6, !dbg !140
  %cond.i.i.i.i.6 = select i1 %cmp.not.i.i.i.i.6, i32 %xor.i.i.i.i.6, i32 %240, !dbg !141
  %shl.i.i.i.i.6 = shl i32 %cond.i.i.i.i.6, 2, !dbg !142
  %242 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.6, i32 %238), !dbg !143
  %243 = bitcast i32 %242 to float, !dbg !144
  %244 = tail call contract noundef float @llvm.maxnum.f32(float %237, float %243), !dbg !145
  %sub.6 = fsub contract float %spec.select2856, %244, !dbg !149
  %mul336.6 = fmul contract float %sub.6, 0x3FC7154760000000, !dbg !150
  %add337.6 = fadd contract float %mul336.6, 8.000000e+00, !dbg !151
  %cmp.i.i.6 = fcmp contract olt float %add337.6, -1.260000e+02, !dbg !152
  %cond.i.i.6 = select contract i1 %cmp.i.i.6, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.6 = fadd contract float %add337.6, %cond.i.i.6, !dbg !152
  %245 = tail call contract float @llvm.exp2.f32(float %add.i.i.6), !dbg !152
  %cond2.i.i.6 = select contract i1 %cmp.i.i.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.6 = fmul contract float %cond2.i.i.6, %245, !dbg !152
  %sub.1.6 = fsub contract float %condval_1.0.1.6, %244, !dbg !149
  %mul336.1.6 = fmul contract float %sub.1.6, 0x3FC7154760000000, !dbg !150
  %add337.1.6 = fadd contract float %mul336.1.6, 8.000000e+00, !dbg !151
  %cmp.i.i.1.6 = fcmp contract olt float %add337.1.6, -1.260000e+02, !dbg !152
  %cond.i.i.1.6 = select contract i1 %cmp.i.i.1.6, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.1.6 = fadd contract float %add337.1.6, %cond.i.i.1.6, !dbg !152
  %246 = tail call contract float @llvm.exp2.f32(float %add.i.i.1.6), !dbg !152
  %cond2.i.i.1.6 = select contract i1 %cmp.i.i.1.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.1.6 = fmul contract float %cond2.i.i.1.6, %246, !dbg !152
  %sub.2.6 = fsub contract float %condval_1.0.2.6, %244, !dbg !149
  %mul336.2.6 = fmul contract float %sub.2.6, 0x3FC7154760000000, !dbg !150
  %add337.2.6 = fadd contract float %mul336.2.6, 8.000000e+00, !dbg !151
  %cmp.i.i.2.6 = fcmp contract olt float %add337.2.6, -1.260000e+02, !dbg !152
  %cond.i.i.2.6 = select contract i1 %cmp.i.i.2.6, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.2.6 = fadd contract float %add337.2.6, %cond.i.i.2.6, !dbg !152
  %247 = tail call contract float @llvm.exp2.f32(float %add.i.i.2.6), !dbg !152
  %cond2.i.i.2.6 = select contract i1 %cmp.i.i.2.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.2.6 = fmul contract float %cond2.i.i.2.6, %247, !dbg !152
  %sub.3.6 = fsub contract float %condval_1.0.3.6, %244, !dbg !149
  %mul336.3.6 = fmul contract float %sub.3.6, 0x3FC7154760000000, !dbg !150
  %add337.3.6 = fadd contract float %mul336.3.6, 8.000000e+00, !dbg !151
  %cmp.i.i.3.6 = fcmp contract olt float %add337.3.6, -1.260000e+02, !dbg !152
  %cond.i.i.3.6 = select contract i1 %cmp.i.i.3.6, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.3.6 = fadd contract float %add337.3.6, %cond.i.i.3.6, !dbg !152
  %248 = tail call contract float @llvm.exp2.f32(float %add.i.i.3.6), !dbg !152
  %cond2.i.i.3.6 = select contract i1 %cmp.i.i.3.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.3.6 = fmul contract float %cond2.i.i.3.6, %248, !dbg !152
  %conv.i.i.6 = fptrunc float %mul.i.i.6 to half, !dbg !155
  %249 = insertelement <4 x half> poison, half %conv.i.i.6, i64 0, !dbg !161
  %conv.i.i.1.6 = fptrunc float %mul.i.i.1.6 to half, !dbg !155
  %250 = insertelement <4 x half> %249, half %conv.i.i.1.6, i64 1, !dbg !161
  %conv.i.i.2.6 = fptrunc float %mul.i.i.2.6 to half, !dbg !155
  %251 = insertelement <4 x half> %250, half %conv.i.i.2.6, i64 2, !dbg !161
  %conv.i.i.3.6 = fptrunc float %mul.i.i.3.6 to half, !dbg !155
  %252 = insertelement <4 x half> %251, half %conv.i.i.3.6, i64 3, !dbg !161
  br label %if.end358.6, !dbg !162

if.end358.6:                                      ; preds = %if.end.1.6, %if.end358.5
  %253 = phi <4 x half> [ zeroinitializer, %if.end358.5 ], [ %252, %if.end.1.6 ], !dbg !83
  %max_cache.sroa.26.0 = phi float [ 0xFFF0000000000000, %if.end358.5 ], [ %244, %if.end.1.6 ], !dbg !83
  %254 = or disjoint i64 %23, 7, !dbg !163
  %arrayidx.7 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %254, !dbg !69
  %255 = load i32, ptr addrspace(1) %arrayidx.7, align 4, !dbg !69, !tbaa !30
  %mul138.7 = shl nsw i32 %255, 4, !dbg !70
  %cmp139.7 = icmp slt i32 %255, 0, !dbg !71
  %cmp141.not.7 = icmp sgt i32 %mul138.7, %1
  %or.cond.7 = select i1 %cmp139.7, i1 true, i1 %cmp141.not.7, !dbg !72
  br i1 %or.cond.7, label %if.end358.7, label %if.then.7, !dbg !72

if.then.7:                                        ; preds = %if.end358.6
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add148.7 = add nuw nsw i32 %mul138.7, %shr147
  %conv158.7 = zext nneg i32 %mul138.7 to i64
  %.idx.7 = shl nuw nsw i64 %conv158.7, 7
  %gep.7 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep963, i64 %.idx.7, !dbg !78
  %cmp151.7 = icmp ult i32 %add148.7, 1024, !dbg !79
  br i1 %cmp151.7, label %if.then152.7, label %if.end.7, !dbg !80

if.then152.7:                                     ; preds = %if.then.7
  %gep955.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.7, i64 %mul154
  %condval.sroa.7.0.add.ptr165.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep955.7, i64 12
  %condval.sroa.6.0.add.ptr165.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep955.7, i64 8
  %condval.sroa.5.0.add.ptr165.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep955.7, i64 4
  %condval.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %gep955.7, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr165.sroa_idx.7, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr165.sroa_idx.7, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr165.sroa_idx.7, align 4, !dbg !81, !tbaa !30
  br label %if.end.7, !dbg !82

if.end.7:                                         ; preds = %if.then152.7, %if.then.7
  %condval.sroa.0.0.7 = phi i32 [ %condval.sroa.0.0.copyload.7, %if.then152.7 ], [ 0, %if.then.7 ], !dbg !83
  %condval.sroa.5.0.7 = phi i32 [ %condval.sroa.5.0.copyload.7, %if.then152.7 ], [ 0, %if.then.7 ], !dbg !83
  %condval.sroa.6.0.7 = phi i32 [ %condval.sroa.6.0.copyload.7, %if.then152.7 ], [ 0, %if.then.7 ], !dbg !83
  %condval.sroa.7.0.7 = phi i32 [ %condval.sroa.7.0.copyload.7, %if.then152.7 ], [ 0, %if.then.7 ], !dbg !83
  store i32 %condval.sroa.0.0.7, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr222.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.7, ptr addrspace(3) %condval.sroa.5.0.add.ptr222.sroa_idx.7, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr222.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.7, ptr addrspace(3) %condval.sroa.6.0.add.ptr222.sroa_idx.7, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr222.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.7, ptr addrspace(3) %condval.sroa.7.0.add.ptr222.sroa_idx.7, align 4, !dbg !84, !tbaa !30
  %cmp151.1.7 = icmp ult i32 %add148.7, 1016, !dbg !79
  br i1 %cmp151.1.7, label %if.then152.1.7, label %if.end.1.7, !dbg !80

if.then152.1.7:                                   ; preds = %if.end.7
  %add157.1.7 = or disjoint i64 %mul154, 512
  %gep955.1.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.7, i64 %add157.1.7
  %condval.sroa.7.0.add.ptr165.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1.7, i64 12
  %condval.sroa.6.0.add.ptr165.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1.7, i64 8
  %condval.sroa.5.0.add.ptr165.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep955.1.7, i64 4
  %condval.sroa.0.0.copyload.1.7 = load i32, ptr addrspace(4) %gep955.1.7, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.7 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr165.sroa_idx.1.7, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.7 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr165.sroa_idx.1.7, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.7 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr165.sroa_idx.1.7, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.7, !dbg !82

if.end.1.7:                                       ; preds = %if.then152.1.7, %if.end.7
  %condval.sroa.0.0.1.7 = phi i32 [ %condval.sroa.0.0.copyload.1.7, %if.then152.1.7 ], [ 0, %if.end.7 ], !dbg !83
  %condval.sroa.5.0.1.7 = phi i32 [ %condval.sroa.5.0.copyload.1.7, %if.then152.1.7 ], [ 0, %if.end.7 ], !dbg !83
  %condval.sroa.6.0.1.7 = phi i32 [ %condval.sroa.6.0.copyload.1.7, %if.then152.1.7 ], [ 0, %if.end.7 ], !dbg !83
  %condval.sroa.7.0.1.7 = phi i32 [ %condval.sroa.7.0.copyload.1.7, %if.then152.1.7 ], [ 0, %if.end.7 ], !dbg !83
  store i32 %condval.sroa.0.0.1.7, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr222.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.7, ptr addrspace(3) %condval.sroa.5.0.add.ptr222.sroa_idx.1.7, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr222.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.7, ptr addrspace(3) %condval.sroa.6.0.add.ptr222.sroa_idx.1.7, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr222.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.7, ptr addrspace(3) %condval.sroa.7.0.add.ptr222.sroa_idx.1.7, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %256 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %257 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %16, <4 x float> %256), !dbg !91
  %k_local.sroa.0.0.copyload.2.7 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %258 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.7, <4 x half> %18, <4 x float> %257), !dbg !91
  %k_local.sroa.0.0.copyload.3.7 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %259 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.7, <4 x half> %22, <4 x float> %258), !dbg !91
  %add289.7 = add nuw nsw i32 %mul138.7, %mul288
  %cmp292.not.7 = icmp sgt i32 %add289.7, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2316 = extractelement <4 x float> %259, i64 0
  %spec.select2857 = select i1 %cmp292.not.7, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2316, !dbg !93
  %cmp292.not.1.7.not = icmp slt i32 %add289.7, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2429 = extractelement <4 x float> %259, i64 1, !dbg !93
  %condval_1.0.1.7 = select i1 %cmp292.not.1.7.not, float %scores.sroa.0.4.vec.extract2429, float 0xFFF0000000000000, !dbg !93
  %add290.2.7 = or disjoint i32 %add289.7, 2, !dbg !94
  %cmp292.not.2.7 = icmp sgt i32 %add290.2.7, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2542 = extractelement <4 x float> %259, i64 2, !dbg !93
  %condval_1.0.2.7 = select i1 %cmp292.not.2.7, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2542, !dbg !93
  %add290.3.7 = or disjoint i32 %add289.7, 3, !dbg !94
  %cmp292.not.3.7 = icmp sgt i32 %add290.3.7, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2655 = extractelement <4 x float> %259, i64 3, !dbg !93
  %condval_1.0.3.7 = select i1 %cmp292.not.3.7, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2655, !dbg !93
  %260 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2857, float 0xFFF0000000000000), !dbg !95
  %261 = tail call contract noundef float @llvm.maxnum.f32(float %260, float %condval_1.0.1.7), !dbg !95
  %262 = tail call contract noundef float @llvm.maxnum.f32(float %261, float %condval_1.0.2.7), !dbg !95
  %263 = tail call contract noundef float @llvm.maxnum.f32(float %262, float %condval_1.0.3.7), !dbg !95
  %264 = bitcast float %263 to i32, !dbg !99
  %265 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !108
  %266 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %265) #11, !dbg !113
  %xor.i.i.i.7 = xor i32 %266, 32, !dbg !114
  %267 = and i32 %266, -64, !dbg !115
  %and.i.i.i.7 = add nsw i32 %267, 64, !dbg !115
  %cmp.not.i.i.i.7 = icmp slt i32 %xor.i.i.i.7, %and.i.i.i.7, !dbg !116
  %cond.i.i.i.7 = select i1 %cmp.not.i.i.i.7, i32 %xor.i.i.i.7, i32 %266, !dbg !117
  %shl.i.i.i.7 = shl i32 %cond.i.i.i.7, 2, !dbg !118
  %268 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.7, i32 %264), !dbg !119
  %269 = bitcast i32 %268 to float, !dbg !120
  %270 = tail call contract noundef float @llvm.maxnum.f32(float %263, float %269), !dbg !121
  %271 = bitcast float %270 to i32, !dbg !129
  %272 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !134
  %273 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %272) #11, !dbg !137
  %xor.i.i.i.i.7 = xor i32 %273, 16, !dbg !138
  %274 = and i32 %273, -64, !dbg !139
  %and.i.i.i.i.7 = add nsw i32 %274, 64, !dbg !139
  %cmp.not.i.i.i.i.7 = icmp slt i32 %xor.i.i.i.i.7, %and.i.i.i.i.7, !dbg !140
  %cond.i.i.i.i.7 = select i1 %cmp.not.i.i.i.i.7, i32 %xor.i.i.i.i.7, i32 %273, !dbg !141
  %shl.i.i.i.i.7 = shl i32 %cond.i.i.i.i.7, 2, !dbg !142
  %275 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i.7, i32 %271), !dbg !143
  %276 = bitcast i32 %275 to float, !dbg !144
  %277 = tail call contract noundef float @llvm.maxnum.f32(float %270, float %276), !dbg !145
  %sub.7 = fsub contract float %spec.select2857, %277, !dbg !149
  %mul336.7 = fmul contract float %sub.7, 0x3FC7154760000000, !dbg !150
  %add337.7 = fadd contract float %mul336.7, 8.000000e+00, !dbg !151
  %cmp.i.i.7 = fcmp contract olt float %add337.7, -1.260000e+02, !dbg !152
  %cond.i.i.7 = select contract i1 %cmp.i.i.7, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.7 = fadd contract float %add337.7, %cond.i.i.7, !dbg !152
  %278 = tail call contract float @llvm.exp2.f32(float %add.i.i.7), !dbg !152
  %cond2.i.i.7 = select contract i1 %cmp.i.i.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.7 = fmul contract float %cond2.i.i.7, %278, !dbg !152
  %sub.1.7 = fsub contract float %condval_1.0.1.7, %277, !dbg !149
  %mul336.1.7 = fmul contract float %sub.1.7, 0x3FC7154760000000, !dbg !150
  %add337.1.7 = fadd contract float %mul336.1.7, 8.000000e+00, !dbg !151
  %cmp.i.i.1.7 = fcmp contract olt float %add337.1.7, -1.260000e+02, !dbg !152
  %cond.i.i.1.7 = select contract i1 %cmp.i.i.1.7, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.1.7 = fadd contract float %add337.1.7, %cond.i.i.1.7, !dbg !152
  %279 = tail call contract float @llvm.exp2.f32(float %add.i.i.1.7), !dbg !152
  %cond2.i.i.1.7 = select contract i1 %cmp.i.i.1.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.1.7 = fmul contract float %cond2.i.i.1.7, %279, !dbg !152
  %sub.2.7 = fsub contract float %condval_1.0.2.7, %277, !dbg !149
  %mul336.2.7 = fmul contract float %sub.2.7, 0x3FC7154760000000, !dbg !150
  %add337.2.7 = fadd contract float %mul336.2.7, 8.000000e+00, !dbg !151
  %cmp.i.i.2.7 = fcmp contract olt float %add337.2.7, -1.260000e+02, !dbg !152
  %cond.i.i.2.7 = select contract i1 %cmp.i.i.2.7, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.2.7 = fadd contract float %add337.2.7, %cond.i.i.2.7, !dbg !152
  %280 = tail call contract float @llvm.exp2.f32(float %add.i.i.2.7), !dbg !152
  %cond2.i.i.2.7 = select contract i1 %cmp.i.i.2.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.2.7 = fmul contract float %cond2.i.i.2.7, %280, !dbg !152
  %sub.3.7 = fsub contract float %condval_1.0.3.7, %277, !dbg !149
  %mul336.3.7 = fmul contract float %sub.3.7, 0x3FC7154760000000, !dbg !150
  %add337.3.7 = fadd contract float %mul336.3.7, 8.000000e+00, !dbg !151
  %cmp.i.i.3.7 = fcmp contract olt float %add337.3.7, -1.260000e+02, !dbg !152
  %cond.i.i.3.7 = select contract i1 %cmp.i.i.3.7, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.3.7 = fadd contract float %add337.3.7, %cond.i.i.3.7, !dbg !152
  %281 = tail call contract float @llvm.exp2.f32(float %add.i.i.3.7), !dbg !152
  %cond2.i.i.3.7 = select contract i1 %cmp.i.i.3.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.3.7 = fmul contract float %cond2.i.i.3.7, %281, !dbg !152
  %conv.i.i.7 = fptrunc float %mul.i.i.7 to half, !dbg !155
  %282 = insertelement <4 x half> poison, half %conv.i.i.7, i64 0, !dbg !161
  %conv.i.i.1.7 = fptrunc float %mul.i.i.1.7 to half, !dbg !155
  %283 = insertelement <4 x half> %282, half %conv.i.i.1.7, i64 1, !dbg !161
  %conv.i.i.2.7 = fptrunc float %mul.i.i.2.7 to half, !dbg !155
  %284 = insertelement <4 x half> %283, half %conv.i.i.2.7, i64 2, !dbg !161
  %conv.i.i.3.7 = fptrunc float %mul.i.i.3.7 to half, !dbg !155
  %285 = insertelement <4 x half> %284, half %conv.i.i.3.7, i64 3, !dbg !161
  br label %if.end358.7, !dbg !162

if.end358.7:                                      ; preds = %if.end.1.7, %if.end358.6
  %286 = phi <4 x half> [ zeroinitializer, %if.end358.6 ], [ %285, %if.end.1.7 ], !dbg !83
  %max_cache.sroa.30.0 = phi float [ 0xFFF0000000000000, %if.end358.6 ], [ %277, %if.end.1.7 ], !dbg !83
  %287 = tail call contract noundef float @llvm.maxnum.f32(float %max_cache.sroa.0.0, float 0xFFF0000000000000), !dbg !164
  %288 = tail call contract noundef float @llvm.maxnum.f32(float %287, float %max_cache.sroa.6.0), !dbg !164
  %289 = tail call contract noundef float @llvm.maxnum.f32(float %288, float %max_cache.sroa.10.0), !dbg !164
  %290 = tail call contract noundef float @llvm.maxnum.f32(float %289, float %max_cache.sroa.14.0), !dbg !164
  %291 = tail call contract noundef float @llvm.maxnum.f32(float %290, float %max_cache.sroa.18.0), !dbg !164
  %292 = tail call contract noundef float @llvm.maxnum.f32(float %291, float %max_cache.sroa.22.0), !dbg !164
  %293 = tail call contract noundef float @llvm.maxnum.f32(float %292, float %max_cache.sroa.26.0), !dbg !164
  %294 = tail call contract noundef float @llvm.maxnum.f32(float %293, float %max_cache.sroa.30.0), !dbg !164
  %shr465 = lshr i32 %2, 4
  %295 = shl nuw nsw i32 %2, 4
  %296 = and i32 %295, 16128
  %297 = shl nuw nsw i32 %2, 2
  %298 = and i32 %297, 60
  %299 = or disjoint i32 %296, %298
  %300 = zext nneg i32 %299 to i64
  %add481 = or disjoint i64 %mul154, %300
  %mul534 = and i32 %295, 240
  %shr540 = and i32 %and55, 3
  %xor = xor i32 %shr540, %shr465
  %and554 = shl nuw nsw i32 %2, 8
  %mul555 = and i32 %and554, 768
  %mul561 = and i32 %297, 48
  %and567 = and i32 %2, 3
  %301 = xor i32 %shr465, %and567
  %302 = load i32, ptr addrspace(1) %arrayidx, align 4, !dbg !166, !tbaa !30
  %mul402 = shl nsw i32 %302, 4, !dbg !167
  %cmp403 = icmp slt i32 %302, 0, !dbg !168
  %cmp406.not = icmp sgt i32 %mul402, %1
  %or.cond941 = select i1 %cmp403, i1 true, i1 %cmp406.not, !dbg !169
  br i1 %or.cond941, label %if.end599, label %if.then407, !dbg !169

if.then407:                                       ; preds = %if.end358.7
  fence syncscope("warp") release, !dbg !170
  tail call void @llvm.mxc.barrier.warp(), !dbg !173
  fence syncscope("warp") acquire, !dbg !174
  %sub411 = fsub contract float %max_cache.sroa.0.0, %294, !dbg !175
  %mul412 = fmul contract float %sub411, 0x3FC7154760000000, !dbg !176
  %cmp.i.i895 = fcmp contract olt float %mul412, -1.260000e+02, !dbg !177
  %cond.i.i896 = select contract i1 %cmp.i.i895, float 6.400000e+01, float 0.000000e+00, !dbg !177
  %add.i.i897 = fadd contract float %mul412, %cond.i.i896, !dbg !177
  %303 = tail call contract float @llvm.exp2.f32(float %add.i.i897), !dbg !177
  %cond2.i.i898 = select contract i1 %cmp.i.i895, float 0x3BF0000000000000, float 1.000000e+00, !dbg !177
  %mul.i.i899 = fmul contract float %cond2.i.i898, %303, !dbg !177
  %304 = extractelement <4 x half> %55, i64 0, !dbg !179
  %conv.i900 = fpext half %304 to float, !dbg !179
  %305 = extractelement <4 x half> %55, i64 1, !dbg !182
  %conv6.i = fpext half %305 to float, !dbg !182
  %306 = extractelement <4 x half> %55, i64 2, !dbg !183
  %conv.i902 = fpext half %306 to float, !dbg !183
  %307 = extractelement <4 x half> %55, i64 3, !dbg !185
  %conv6.i904 = fpext half %307 to float, !dbg !185
  %mul435 = fmul contract float %mul.i.i899, %conv.i900, !dbg !186
  %mul438 = fmul contract float %mul.i.i899, %conv6.i, !dbg !187
  %mul441 = fmul contract float %mul.i.i899, %conv.i902, !dbg !188
  %mul444 = fmul contract float %mul.i.i899, %conv6.i904, !dbg !189
  %308 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !190, !noalias !197
  %309 = fptrunc float %mul435 to half, !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %308), !dbg !190, !noalias !197
  %310 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !202, !noalias !197
  %311 = fptrunc float %mul438 to half, !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %310), !dbg !202, !noalias !197
  %312 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !204
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !204, !noalias !208
  %313 = fptrunc float %mul441 to half, !dbg !204
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %312), !dbg !204, !noalias !208
  %314 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !213, !noalias !208
  %315 = fptrunc float %mul444 to half, !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %314), !dbg !213, !noalias !208
  %316 = insertelement <4 x half> poison, half %309, i64 0, !dbg !215
  %317 = insertelement <4 x half> %316, half %311, i64 1, !dbg !215
  %318 = insertelement <4 x half> %317, half %313, i64 2, !dbg !215
  %319 = insertelement <4 x half> %318, half %315, i64 3, !dbg !215
  %shr467 = lshr exact i32 %mul402, 2
  %add468 = add nuw nsw i32 %shr467, %shr465
  %cmp469 = icmp ult i32 %add468, 256
  %conv479 = zext nneg i32 %mul402 to i64
  br i1 %cmp469, label %if.then470, label %if.end504, !dbg !216

if.then470:                                       ; preds = %if.then407
  %320 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983 = shl nuw nsw i64 %conv479, 7, !dbg !217
  %321 = getelementptr inbounds i8, ptr addrspace(4) %320, i64 %.idx983, !dbg !217
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %321, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %321, i64 4, !dbg !218
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx, align 4, !dbg !218, !tbaa !30
  br label %if.end504, !dbg !219

if.end504:                                        ; preds = %if.then407, %if.then470
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then470 ], [ 0, %if.then407 ], !dbg !83
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then470 ], [ 0, %if.then407 ], !dbg !83
  br i1 %cmp469, label %if.then470.1, label %if.end504.1, !dbg !216

if.then470.1:                                     ; preds = %if.end504
  %322 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.1 = shl nuw nsw i64 %conv479, 7, !dbg !217
  %323 = getelementptr inbounds i8, ptr addrspace(4) %322, i64 %.idx983.1, !dbg !217
  %add.ptr490.1 = getelementptr inbounds i8, ptr addrspace(4) %323, i64 128, !dbg !217
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %add.ptr490.1, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %323, i64 132, !dbg !218
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.1, align 4, !dbg !218, !tbaa !30
  br label %if.end504.1, !dbg !219

if.end504.1:                                      ; preds = %if.then470.1, %if.end504
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then470.1 ], [ 0, %if.end504 ], !dbg !83
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then470.1 ], [ 0, %if.end504 ], !dbg !83
  br i1 %cmp469, label %if.then470.2, label %if.end504.2, !dbg !216

if.then470.2:                                     ; preds = %if.end504.1
  %324 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.2 = shl nuw nsw i64 %conv479, 7, !dbg !217
  %325 = getelementptr inbounds i8, ptr addrspace(4) %324, i64 %.idx983.2, !dbg !217
  %add.ptr490.2 = getelementptr inbounds i8, ptr addrspace(4) %325, i64 256, !dbg !217
  %condval_2.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %add.ptr490.2, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %325, i64 260, !dbg !218
  %condval_2.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.2, align 4, !dbg !218, !tbaa !30
  br label %if.end504.2, !dbg !219

if.end504.2:                                      ; preds = %if.then470.2, %if.end504.1
  %condval_2.sroa.5.0.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2, %if.then470.2 ], [ 0, %if.end504.1 ], !dbg !83
  %condval_2.sroa.0.0.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2, %if.then470.2 ], [ 0, %if.end504.1 ], !dbg !83
  br i1 %cmp469, label %if.then470.3, label %if.end504.3, !dbg !216

if.then470.3:                                     ; preds = %if.end504.2
  %326 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.3 = shl nuw nsw i64 %conv479, 7, !dbg !217
  %327 = getelementptr inbounds i8, ptr addrspace(4) %326, i64 %.idx983.3, !dbg !217
  %add.ptr490.3 = getelementptr inbounds i8, ptr addrspace(4) %327, i64 384, !dbg !217
  %condval_2.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %add.ptr490.3, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %327, i64 388, !dbg !218
  %condval_2.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.3, align 4, !dbg !218, !tbaa !30
  br label %if.end504.3, !dbg !219

if.end504.3:                                      ; preds = %if.then470.3, %if.end504.2
  %condval_2.sroa.5.0.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3, %if.then470.3 ], [ 0, %if.end504.2 ], !dbg !83
  %condval_2.sroa.0.0.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3, %if.then470.3 ], [ 0, %if.end504.2 ], !dbg !83
  %328 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul534, !dbg !220
  %add.ptr545.idx = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545 = getelementptr inbounds i8, ptr addrspace(3) %328, i32 %add.ptr545.idx, !dbg !220
  %329 = and i32 %condval_2.sroa.0.0.3, 65535, !dbg !221
  %v_column_local.sroa.130.0.insert.ext = zext nneg i32 %329 to i64, !dbg !221
  %v_column_local.sroa.130.0.insert.shift = shl nuw i64 %v_column_local.sroa.130.0.insert.ext, 48, !dbg !221
  %330 = and i32 %condval_2.sroa.0.0.2, 65535, !dbg !221
  %v_column_local.sroa.98.0.insert.ext = zext nneg i32 %330 to i64, !dbg !221
  %v_column_local.sroa.98.0.insert.shift = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert = or disjoint i64 %v_column_local.sroa.130.0.insert.shift, %v_column_local.sroa.98.0.insert.shift, !dbg !221
  %331 = shl i32 %condval_2.sroa.0.0.1, 16, !dbg !221
  %v_column_local.sroa.66.0.insert.shift = zext i32 %331 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert = or disjoint i64 %v_column_local.sroa.98.0.insert.insert, %v_column_local.sroa.66.0.insert.shift, !dbg !221
  %332 = and i32 %condval_2.sroa.0.0, 65535, !dbg !221
  %v_column_local.sroa.0.0.insert.ext = zext nneg i32 %332 to i64, !dbg !221
  %v_column_local.sroa.0.0.insert.insert = or disjoint i64 %v_column_local.sroa.66.0.insert.insert, %v_column_local.sroa.0.0.insert.ext, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr545, align 8, !dbg !221
  %v_tile_local.sroa.0.2.extract.shift = lshr i32 %condval_2.sroa.0.0, 16, !dbg !222
  %v_tile_local.sroa.0.2.extract.trunc = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift to i64, !dbg !222
  %v_tile_local.sroa.50.10.extract.shift = and i32 %condval_2.sroa.0.0.1, -65536, !dbg !221
  %v_tile_local.sroa.98.18.extract.shift = lshr i32 %condval_2.sroa.0.0.2, 16, !dbg !222
  %v_tile_local.sroa.98.18.extract.trunc = zext nneg i32 %v_tile_local.sroa.98.18.extract.shift to i64, !dbg !222
  %v_tile_local.sroa.146.26.extract.shift = lshr i32 %condval_2.sroa.0.0.3, 16, !dbg !222
  %v_tile_local.sroa.146.26.extract.trunc = zext nneg i32 %v_tile_local.sroa.146.26.extract.shift to i64, !dbg !222
  %add535.1 = or disjoint i32 %mul534, 256, !dbg !223
  %333 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.1, !dbg !220
  %xor541.1 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.1 = xor i32 %xor541.1, 8, !dbg !220
  %add.ptr545.1 = getelementptr inbounds i8, ptr addrspace(3) %333, i32 %add.ptr545.idx.1, !dbg !220
  %v_column_local.sroa.130.0.insert.shift1601 = shl nuw i64 %v_tile_local.sroa.146.26.extract.trunc, 48, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1446 = shl nuw nsw i64 %v_tile_local.sroa.98.18.extract.trunc, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1448 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1601, %v_column_local.sroa.98.0.insert.shift1446, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1291 = zext i32 %v_tile_local.sroa.50.10.extract.shift to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1293 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1448, %v_column_local.sroa.66.0.insert.shift1291, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1168 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1293, %v_tile_local.sroa.0.2.extract.trunc, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1168, ptr addrspace(3) %add.ptr545.1, align 8, !dbg !221
  %add535.2 = or disjoint i32 %mul534, 512, !dbg !223
  %334 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.2, !dbg !220
  %xor541.2 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.2 = xor i32 %xor541.2, 16, !dbg !220
  %add.ptr545.2 = getelementptr inbounds i8, ptr addrspace(3) %334, i32 %add.ptr545.idx.2, !dbg !220
  %335 = and i32 %condval_2.sroa.5.0.3, 65535, !dbg !221
  %v_column_local.sroa.130.0.insert.ext1605 = zext nneg i32 %335 to i64, !dbg !221
  %v_column_local.sroa.130.0.insert.shift1606 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1605, 48, !dbg !221
  %336 = and i32 %condval_2.sroa.5.0.2, 65535, !dbg !221
  %v_column_local.sroa.98.0.insert.ext1450 = zext nneg i32 %336 to i64, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1451 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1450, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1453 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1606, %v_column_local.sroa.98.0.insert.shift1451, !dbg !221
  %337 = shl i32 %condval_2.sroa.5.0.1, 16, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1296 = zext i32 %337 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1298 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1453, %v_column_local.sroa.66.0.insert.shift1296, !dbg !221
  %338 = and i32 %condval_2.sroa.5.0, 65535, !dbg !221
  %v_column_local.sroa.0.0.insert.ext1170 = zext nneg i32 %338 to i64, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1172 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1298, %v_column_local.sroa.0.0.insert.ext1170, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1172, ptr addrspace(3) %add.ptr545.2, align 8, !dbg !221
  %v_tile_local.sroa.26.6.extract.shift = lshr i32 %condval_2.sroa.5.0, 16, !dbg !222
  %v_tile_local.sroa.26.6.extract.trunc = zext nneg i32 %v_tile_local.sroa.26.6.extract.shift to i64, !dbg !222
  %v_tile_local.sroa.74.14.extract.shift = and i32 %condval_2.sroa.5.0.1, -65536, !dbg !221
  %v_tile_local.sroa.122.22.extract.shift = lshr i32 %condval_2.sroa.5.0.2, 16, !dbg !222
  %v_tile_local.sroa.122.22.extract.trunc = zext nneg i32 %v_tile_local.sroa.122.22.extract.shift to i64, !dbg !222
  %v_tile_local.sroa.170.30.extract.shift = lshr i32 %condval_2.sroa.5.0.3, 16, !dbg !222
  %v_tile_local.sroa.170.30.extract.trunc = zext nneg i32 %v_tile_local.sroa.170.30.extract.shift to i64, !dbg !222
  %add535.3 = or disjoint i32 %mul534, 768, !dbg !223
  %339 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.3, !dbg !220
  %xor541.3 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.3 = xor i32 %xor541.3, 24, !dbg !220
  %add.ptr545.3 = getelementptr inbounds i8, ptr addrspace(3) %339, i32 %add.ptr545.idx.3, !dbg !220
  %v_column_local.sroa.130.0.insert.shift1611 = shl nuw i64 %v_tile_local.sroa.170.30.extract.trunc, 48, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1456 = shl nuw nsw i64 %v_tile_local.sroa.122.22.extract.trunc, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1458 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1611, %v_column_local.sroa.98.0.insert.shift1456, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1301 = zext i32 %v_tile_local.sroa.74.14.extract.shift to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1303 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1458, %v_column_local.sroa.66.0.insert.shift1301, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1176 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1303, %v_tile_local.sroa.26.6.extract.trunc, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1176, ptr addrspace(3) %add.ptr545.3, align 8, !dbg !221
  fence syncscope("warp") release, !dbg !224
  tail call void @llvm.mxc.barrier.warp(), !dbg !227
  fence syncscope("warp") acquire, !dbg !228
  %add562 = or disjoint i32 %mul555, %mul561, !dbg !229
  %340 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562, !dbg !230
  %add.ptr572.idx = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572 = getelementptr inbounds i8, ptr addrspace(3) %340, i32 %add.ptr572.idx, !dbg !230
  %341 = load <4 x half>, ptr addrspace(3) %add.ptr572, align 8, !dbg !231
  %add557.1 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.1 = or disjoint i32 %add557.1, 64, !dbg !229
  %342 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.1, !dbg !230
  %xor568.1 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.1 = xor i32 %xor568.1, 8, !dbg !230
  %add.ptr572.1 = getelementptr inbounds i8, ptr addrspace(3) %342, i32 %add.ptr572.idx.1, !dbg !230
  %343 = load <4 x half>, ptr addrspace(3) %add.ptr572.1, align 8, !dbg !231
  %add557.2 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.2 = or disjoint i32 %add557.2, 128, !dbg !229
  %344 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.2, !dbg !230
  %xor568.2 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.2 = xor i32 %xor568.2, 16, !dbg !230
  %add.ptr572.2 = getelementptr inbounds i8, ptr addrspace(3) %344, i32 %add.ptr572.idx.2, !dbg !230
  %345 = load <4 x half>, ptr addrspace(3) %add.ptr572.2, align 8, !dbg !231
  %add557.3 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.3 = or disjoint i32 %add557.3, 192, !dbg !229
  %346 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.3, !dbg !230
  %xor568.3 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.3 = xor i32 %xor568.3, 24, !dbg !230
  %add.ptr572.3 = getelementptr inbounds i8, ptr addrspace(3) %346, i32 %add.ptr572.idx.3, !dbg !230
  %347 = load <4 x half>, ptr addrspace(3) %add.ptr572.3, align 8, !dbg !231
  %348 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %341, <4 x half> %319, <4 x float> zeroinitializer), !dbg !232
  %349 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %343, <4 x half> %319, <4 x float> zeroinitializer), !dbg !232
  %350 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %345, <4 x half> %319, <4 x float> zeroinitializer), !dbg !232
  %351 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %347, <4 x half> %319, <4 x float> zeroinitializer), !dbg !232
  br label %if.end599, !dbg !233

if.end599:                                        ; preds = %if.end504.3, %if.end358.7
  %bc2822 = phi <4 x half> [ %55, %if.end358.7 ], [ %319, %if.end504.3 ], !dbg !83
  %output_acc.sroa.98.0 = phi <4 x float> [ zeroinitializer, %if.end358.7 ], [ %351, %if.end504.3 ], !dbg !83
  %output_acc.sroa.66.0 = phi <4 x float> [ zeroinitializer, %if.end358.7 ], [ %350, %if.end504.3 ], !dbg !83
  %output_acc.sroa.34.0 = phi <4 x float> [ zeroinitializer, %if.end358.7 ], [ %349, %if.end504.3 ], !dbg !83
  %output_acc.sroa.0.0 = phi <4 x float> [ zeroinitializer, %if.end358.7 ], [ %348, %if.end504.3 ], !dbg !83
  %352 = load i32, ptr addrspace(1) %arrayidx.1, align 4, !dbg !166, !tbaa !30
  %mul402.1 = shl nsw i32 %352, 4, !dbg !167
  %cmp403.1 = icmp slt i32 %352, 0, !dbg !168
  %cmp406.not.1 = icmp sgt i32 %mul402.1, %1
  %or.cond941.1 = select i1 %cmp403.1, i1 true, i1 %cmp406.not.1, !dbg !169
  br i1 %or.cond941.1, label %if.end599.1, label %if.then407.1, !dbg !169

if.then407.1:                                     ; preds = %if.end599
  fence syncscope("warp") release, !dbg !170
  tail call void @llvm.mxc.barrier.warp(), !dbg !173
  fence syncscope("warp") acquire, !dbg !174
  %sub411.1 = fsub contract float %max_cache.sroa.6.0, %294, !dbg !175
  %mul412.1 = fmul contract float %sub411.1, 0x3FC7154760000000, !dbg !176
  %cmp.i.i895.1 = fcmp contract olt float %mul412.1, -1.260000e+02, !dbg !177
  %cond.i.i896.1 = select contract i1 %cmp.i.i895.1, float 6.400000e+01, float 0.000000e+00, !dbg !177
  %add.i.i897.1 = fadd contract float %mul412.1, %cond.i.i896.1, !dbg !177
  %353 = tail call contract float @llvm.exp2.f32(float %add.i.i897.1), !dbg !177
  %cond2.i.i898.1 = select contract i1 %cmp.i.i895.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !177
  %mul.i.i899.1 = fmul contract float %cond2.i.i898.1, %353, !dbg !177
  %354 = extractelement <4 x half> %88, i64 0, !dbg !179
  %conv.i900.1 = fpext half %354 to float, !dbg !179
  %355 = extractelement <4 x half> %88, i64 1, !dbg !182
  %conv6.i.1 = fpext half %355 to float, !dbg !182
  %356 = extractelement <4 x half> %88, i64 2, !dbg !183
  %conv.i902.1 = fpext half %356 to float, !dbg !183
  %357 = extractelement <4 x half> %88, i64 3, !dbg !185
  %conv6.i904.1 = fpext half %357 to float, !dbg !185
  %mul435.1 = fmul contract float %mul.i.i899.1, %conv.i900.1, !dbg !186
  %mul438.1 = fmul contract float %mul.i.i899.1, %conv6.i.1, !dbg !187
  %mul441.1 = fmul contract float %mul.i.i899.1, %conv.i902.1, !dbg !188
  %mul444.1 = fmul contract float %mul.i.i899.1, %conv6.i904.1, !dbg !189
  %358 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !190, !noalias !197
  %359 = fptrunc float %mul435.1 to half, !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %358), !dbg !190, !noalias !197
  %360 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !202, !noalias !197
  %361 = fptrunc float %mul438.1 to half, !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %360), !dbg !202, !noalias !197
  %362 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !204
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !204, !noalias !208
  %363 = fptrunc float %mul441.1 to half, !dbg !204
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %362), !dbg !204, !noalias !208
  %364 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !213, !noalias !208
  %365 = fptrunc float %mul444.1 to half, !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %364), !dbg !213, !noalias !208
  %366 = insertelement <4 x half> poison, half %359, i64 0, !dbg !215
  %367 = insertelement <4 x half> %366, half %361, i64 1, !dbg !215
  %368 = insertelement <4 x half> %367, half %363, i64 2, !dbg !215
  %369 = insertelement <4 x half> %368, half %365, i64 3, !dbg !215
  %shr467.1 = lshr exact i32 %mul402.1, 2
  %add468.1 = add nuw nsw i32 %shr467.1, %shr465
  %cmp469.1 = icmp ult i32 %add468.1, 256
  %conv479.1 = zext nneg i32 %mul402.1 to i64
  br i1 %cmp469.1, label %if.then470.11103, label %if.end504.11107, !dbg !216

if.then470.11103:                                 ; preds = %if.then407.1
  %370 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.11099 = shl nuw nsw i64 %conv479.1, 7, !dbg !217
  %371 = getelementptr inbounds i8, ptr addrspace(4) %370, i64 %.idx983.11099, !dbg !217
  %condval_2.sroa.0.0.copyload.11100 = load i32, ptr addrspace(4) %371, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.11101 = getelementptr inbounds i8, ptr addrspace(4) %371, i64 4, !dbg !218
  %condval_2.sroa.5.0.copyload.11102 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.11101, align 4, !dbg !218, !tbaa !30
  br label %if.end504.11107, !dbg !219

if.end504.11107:                                  ; preds = %if.then470.11103, %if.then407.1
  %condval_2.sroa.5.0.11104 = phi i32 [ %condval_2.sroa.5.0.copyload.11102, %if.then470.11103 ], [ 0, %if.then407.1 ], !dbg !83
  %condval_2.sroa.0.0.11105 = phi i32 [ %condval_2.sroa.0.0.copyload.11100, %if.then470.11103 ], [ 0, %if.then407.1 ], !dbg !83
  br i1 %cmp469.1, label %if.then470.1.1, label %if.end504.1.1, !dbg !216

if.then470.1.1:                                   ; preds = %if.end504.11107
  %372 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.1.1 = shl nuw nsw i64 %conv479.1, 7, !dbg !217
  %373 = getelementptr inbounds i8, ptr addrspace(4) %372, i64 %.idx983.1.1, !dbg !217
  %add.ptr490.1.1 = getelementptr inbounds i8, ptr addrspace(4) %373, i64 128, !dbg !217
  %condval_2.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %add.ptr490.1.1, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %373, i64 132, !dbg !218
  %condval_2.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.1.1, align 4, !dbg !218, !tbaa !30
  br label %if.end504.1.1, !dbg !219

if.end504.1.1:                                    ; preds = %if.then470.1.1, %if.end504.11107
  %condval_2.sroa.5.0.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1, %if.then470.1.1 ], [ 0, %if.end504.11107 ], !dbg !83
  %condval_2.sroa.0.0.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1, %if.then470.1.1 ], [ 0, %if.end504.11107 ], !dbg !83
  br i1 %cmp469.1, label %if.then470.2.1, label %if.end504.2.1, !dbg !216

if.then470.2.1:                                   ; preds = %if.end504.1.1
  %374 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.2.1 = shl nuw nsw i64 %conv479.1, 7, !dbg !217
  %375 = getelementptr inbounds i8, ptr addrspace(4) %374, i64 %.idx983.2.1, !dbg !217
  %add.ptr490.2.1 = getelementptr inbounds i8, ptr addrspace(4) %375, i64 256, !dbg !217
  %condval_2.sroa.0.0.copyload.2.1 = load i32, ptr addrspace(4) %add.ptr490.2.1, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.2.1 = getelementptr inbounds i8, ptr addrspace(4) %375, i64 260, !dbg !218
  %condval_2.sroa.5.0.copyload.2.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.2.1, align 4, !dbg !218, !tbaa !30
  br label %if.end504.2.1, !dbg !219

if.end504.2.1:                                    ; preds = %if.then470.2.1, %if.end504.1.1
  %condval_2.sroa.5.0.2.1 = phi i32 [ %condval_2.sroa.5.0.copyload.2.1, %if.then470.2.1 ], [ 0, %if.end504.1.1 ], !dbg !83
  %condval_2.sroa.0.0.2.1 = phi i32 [ %condval_2.sroa.0.0.copyload.2.1, %if.then470.2.1 ], [ 0, %if.end504.1.1 ], !dbg !83
  br i1 %cmp469.1, label %if.then470.3.1, label %if.end504.3.1, !dbg !216

if.then470.3.1:                                   ; preds = %if.end504.2.1
  %376 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.3.1 = shl nuw nsw i64 %conv479.1, 7, !dbg !217
  %377 = getelementptr inbounds i8, ptr addrspace(4) %376, i64 %.idx983.3.1, !dbg !217
  %add.ptr490.3.1 = getelementptr inbounds i8, ptr addrspace(4) %377, i64 384, !dbg !217
  %condval_2.sroa.0.0.copyload.3.1 = load i32, ptr addrspace(4) %add.ptr490.3.1, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.3.1 = getelementptr inbounds i8, ptr addrspace(4) %377, i64 388, !dbg !218
  %condval_2.sroa.5.0.copyload.3.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.3.1, align 4, !dbg !218, !tbaa !30
  br label %if.end504.3.1, !dbg !219

if.end504.3.1:                                    ; preds = %if.then470.3.1, %if.end504.2.1
  %condval_2.sroa.5.0.3.1 = phi i32 [ %condval_2.sroa.5.0.copyload.3.1, %if.then470.3.1 ], [ 0, %if.end504.2.1 ], !dbg !83
  %condval_2.sroa.0.0.3.1 = phi i32 [ %condval_2.sroa.0.0.copyload.3.1, %if.then470.3.1 ], [ 0, %if.end504.2.1 ], !dbg !83
  %378 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul534, !dbg !220
  %add.ptr545.idx.11114 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.11115 = getelementptr inbounds i8, ptr addrspace(3) %378, i32 %add.ptr545.idx.11114, !dbg !220
  %379 = and i32 %condval_2.sroa.0.0.3.1, 65535, !dbg !221
  %v_column_local.sroa.130.0.insert.ext1615 = zext nneg i32 %379 to i64, !dbg !221
  %v_column_local.sroa.130.0.insert.shift1616 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1615, 48, !dbg !221
  %380 = and i32 %condval_2.sroa.0.0.2.1, 65535, !dbg !221
  %v_column_local.sroa.98.0.insert.ext1460 = zext nneg i32 %380 to i64, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1461 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1460, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1463 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1616, %v_column_local.sroa.98.0.insert.shift1461, !dbg !221
  %381 = shl i32 %condval_2.sroa.0.0.1.1, 16, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1306 = zext i32 %381 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1308 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1463, %v_column_local.sroa.66.0.insert.shift1306, !dbg !221
  %382 = and i32 %condval_2.sroa.0.0.11105, 65535, !dbg !221
  %v_column_local.sroa.0.0.insert.ext1178 = zext nneg i32 %382 to i64, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1180 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1308, %v_column_local.sroa.0.0.insert.ext1178, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1180, ptr addrspace(3) %add.ptr545.11115, align 8, !dbg !221
  %v_tile_local.sroa.0.2.extract.shift1829 = lshr i32 %condval_2.sroa.0.0.11105, 16, !dbg !222
  %v_tile_local.sroa.0.2.extract.trunc1830 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1829 to i64, !dbg !222
  %v_tile_local.sroa.50.10.extract.shift1899 = and i32 %condval_2.sroa.0.0.1.1, -65536, !dbg !221
  %v_tile_local.sroa.98.18.extract.shift1969 = lshr i32 %condval_2.sroa.0.0.2.1, 16, !dbg !222
  %v_tile_local.sroa.98.18.extract.trunc1970 = zext nneg i32 %v_tile_local.sroa.98.18.extract.shift1969 to i64, !dbg !222
  %v_tile_local.sroa.146.26.extract.shift2039 = lshr i32 %condval_2.sroa.0.0.3.1, 16, !dbg !222
  %v_tile_local.sroa.146.26.extract.trunc2040 = zext nneg i32 %v_tile_local.sroa.146.26.extract.shift2039 to i64, !dbg !222
  %add535.1.1 = or disjoint i32 %mul534, 256, !dbg !223
  %383 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.1.1, !dbg !220
  %xor541.1.1 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.1.1 = xor i32 %xor541.1.1, 8, !dbg !220
  %add.ptr545.1.1 = getelementptr inbounds i8, ptr addrspace(3) %383, i32 %add.ptr545.idx.1.1, !dbg !220
  %v_column_local.sroa.130.0.insert.shift1621 = shl nuw i64 %v_tile_local.sroa.146.26.extract.trunc2040, 48, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1466 = shl nuw nsw i64 %v_tile_local.sroa.98.18.extract.trunc1970, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1468 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1621, %v_column_local.sroa.98.0.insert.shift1466, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1311 = zext i32 %v_tile_local.sroa.50.10.extract.shift1899 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1313 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1468, %v_column_local.sroa.66.0.insert.shift1311, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1184 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1313, %v_tile_local.sroa.0.2.extract.trunc1830, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1184, ptr addrspace(3) %add.ptr545.1.1, align 8, !dbg !221
  %add535.2.1 = or disjoint i32 %mul534, 512, !dbg !223
  %384 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.2.1, !dbg !220
  %xor541.2.1 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.2.1 = xor i32 %xor541.2.1, 16, !dbg !220
  %add.ptr545.2.1 = getelementptr inbounds i8, ptr addrspace(3) %384, i32 %add.ptr545.idx.2.1, !dbg !220
  %385 = and i32 %condval_2.sroa.5.0.3.1, 65535, !dbg !221
  %v_column_local.sroa.130.0.insert.ext1625 = zext nneg i32 %385 to i64, !dbg !221
  %v_column_local.sroa.130.0.insert.shift1626 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1625, 48, !dbg !221
  %386 = and i32 %condval_2.sroa.5.0.2.1, 65535, !dbg !221
  %v_column_local.sroa.98.0.insert.ext1470 = zext nneg i32 %386 to i64, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1471 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1470, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1473 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1626, %v_column_local.sroa.98.0.insert.shift1471, !dbg !221
  %387 = shl i32 %condval_2.sroa.5.0.1.1, 16, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1316 = zext i32 %387 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1318 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1473, %v_column_local.sroa.66.0.insert.shift1316, !dbg !221
  %388 = and i32 %condval_2.sroa.5.0.11104, 65535, !dbg !221
  %v_column_local.sroa.0.0.insert.ext1186 = zext nneg i32 %388 to i64, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1188 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1318, %v_column_local.sroa.0.0.insert.ext1186, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1188, ptr addrspace(3) %add.ptr545.2.1, align 8, !dbg !221
  %v_tile_local.sroa.26.6.extract.shift1864 = lshr i32 %condval_2.sroa.5.0.11104, 16, !dbg !222
  %v_tile_local.sroa.26.6.extract.trunc1865 = zext nneg i32 %v_tile_local.sroa.26.6.extract.shift1864 to i64, !dbg !222
  %v_tile_local.sroa.74.14.extract.shift1934 = and i32 %condval_2.sroa.5.0.1.1, -65536, !dbg !221
  %v_tile_local.sroa.122.22.extract.shift2004 = lshr i32 %condval_2.sroa.5.0.2.1, 16, !dbg !222
  %v_tile_local.sroa.122.22.extract.trunc2005 = zext nneg i32 %v_tile_local.sroa.122.22.extract.shift2004 to i64, !dbg !222
  %v_tile_local.sroa.170.30.extract.shift2074 = lshr i32 %condval_2.sroa.5.0.3.1, 16, !dbg !222
  %v_tile_local.sroa.170.30.extract.trunc2075 = zext nneg i32 %v_tile_local.sroa.170.30.extract.shift2074 to i64, !dbg !222
  %add535.3.1 = or disjoint i32 %mul534, 768, !dbg !223
  %389 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.3.1, !dbg !220
  %xor541.3.1 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.3.1 = xor i32 %xor541.3.1, 24, !dbg !220
  %add.ptr545.3.1 = getelementptr inbounds i8, ptr addrspace(3) %389, i32 %add.ptr545.idx.3.1, !dbg !220
  %v_column_local.sroa.130.0.insert.shift1631 = shl nuw i64 %v_tile_local.sroa.170.30.extract.trunc2075, 48, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1476 = shl nuw nsw i64 %v_tile_local.sroa.122.22.extract.trunc2005, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1478 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1631, %v_column_local.sroa.98.0.insert.shift1476, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1321 = zext i32 %v_tile_local.sroa.74.14.extract.shift1934 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1323 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1478, %v_column_local.sroa.66.0.insert.shift1321, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1192 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1323, %v_tile_local.sroa.26.6.extract.trunc1865, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1192, ptr addrspace(3) %add.ptr545.3.1, align 8, !dbg !221
  fence syncscope("warp") release, !dbg !224
  tail call void @llvm.mxc.barrier.warp(), !dbg !227
  fence syncscope("warp") acquire, !dbg !228
  %add562.11117 = or disjoint i32 %mul555, %mul561, !dbg !229
  %390 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.11117, !dbg !230
  %add.ptr572.idx.11118 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.11119 = getelementptr inbounds i8, ptr addrspace(3) %390, i32 %add.ptr572.idx.11118, !dbg !230
  %391 = load <4 x half>, ptr addrspace(3) %add.ptr572.11119, align 8, !dbg !231
  %add557.1.1 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.1.1 = or disjoint i32 %add557.1.1, 64, !dbg !229
  %392 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.1.1, !dbg !230
  %xor568.1.1 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.1.1 = xor i32 %xor568.1.1, 8, !dbg !230
  %add.ptr572.1.1 = getelementptr inbounds i8, ptr addrspace(3) %392, i32 %add.ptr572.idx.1.1, !dbg !230
  %393 = load <4 x half>, ptr addrspace(3) %add.ptr572.1.1, align 8, !dbg !231
  %add557.2.1 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.2.1 = or disjoint i32 %add557.2.1, 128, !dbg !229
  %394 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.2.1, !dbg !230
  %xor568.2.1 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.2.1 = xor i32 %xor568.2.1, 16, !dbg !230
  %add.ptr572.2.1 = getelementptr inbounds i8, ptr addrspace(3) %394, i32 %add.ptr572.idx.2.1, !dbg !230
  %395 = load <4 x half>, ptr addrspace(3) %add.ptr572.2.1, align 8, !dbg !231
  %add557.3.1 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.3.1 = or disjoint i32 %add557.3.1, 192, !dbg !229
  %396 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.3.1, !dbg !230
  %xor568.3.1 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.3.1 = xor i32 %xor568.3.1, 24, !dbg !230
  %add.ptr572.3.1 = getelementptr inbounds i8, ptr addrspace(3) %396, i32 %add.ptr572.idx.3.1, !dbg !230
  %397 = load <4 x half>, ptr addrspace(3) %add.ptr572.3.1, align 8, !dbg !231
  %398 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %391, <4 x half> %369, <4 x float> %output_acc.sroa.0.0), !dbg !232
  %399 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %393, <4 x half> %369, <4 x float> %output_acc.sroa.34.0), !dbg !232
  %400 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %395, <4 x half> %369, <4 x float> %output_acc.sroa.66.0), !dbg !232
  %401 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %397, <4 x half> %369, <4 x float> %output_acc.sroa.98.0), !dbg !232
  br label %if.end599.1, !dbg !233

if.end599.1:                                      ; preds = %if.end504.3.1, %if.end599
  %bc2826 = phi <4 x half> [ %88, %if.end599 ], [ %369, %if.end504.3.1 ], !dbg !83
  %output_acc.sroa.98.1 = phi <4 x float> [ %output_acc.sroa.98.0, %if.end599 ], [ %401, %if.end504.3.1 ], !dbg !83
  %output_acc.sroa.66.1 = phi <4 x float> [ %output_acc.sroa.66.0, %if.end599 ], [ %400, %if.end504.3.1 ], !dbg !83
  %output_acc.sroa.34.1 = phi <4 x float> [ %output_acc.sroa.34.0, %if.end599 ], [ %399, %if.end504.3.1 ], !dbg !83
  %output_acc.sroa.0.1 = phi <4 x float> [ %output_acc.sroa.0.0, %if.end599 ], [ %398, %if.end504.3.1 ], !dbg !83
  %402 = load i32, ptr addrspace(1) %arrayidx.2, align 4, !dbg !166, !tbaa !30
  %mul402.2 = shl nsw i32 %402, 4, !dbg !167
  %cmp403.2 = icmp slt i32 %402, 0, !dbg !168
  %cmp406.not.2 = icmp sgt i32 %mul402.2, %1
  %or.cond941.2 = select i1 %cmp403.2, i1 true, i1 %cmp406.not.2, !dbg !169
  br i1 %or.cond941.2, label %if.end599.2, label %if.then407.2, !dbg !169

if.then407.2:                                     ; preds = %if.end599.1
  fence syncscope("warp") release, !dbg !170
  tail call void @llvm.mxc.barrier.warp(), !dbg !173
  fence syncscope("warp") acquire, !dbg !174
  %sub411.2 = fsub contract float %max_cache.sroa.10.0, %294, !dbg !175
  %mul412.2 = fmul contract float %sub411.2, 0x3FC7154760000000, !dbg !176
  %cmp.i.i895.2 = fcmp contract olt float %mul412.2, -1.260000e+02, !dbg !177
  %cond.i.i896.2 = select contract i1 %cmp.i.i895.2, float 6.400000e+01, float 0.000000e+00, !dbg !177
  %add.i.i897.2 = fadd contract float %mul412.2, %cond.i.i896.2, !dbg !177
  %403 = tail call contract float @llvm.exp2.f32(float %add.i.i897.2), !dbg !177
  %cond2.i.i898.2 = select contract i1 %cmp.i.i895.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !177
  %mul.i.i899.2 = fmul contract float %cond2.i.i898.2, %403, !dbg !177
  %404 = extractelement <4 x half> %121, i64 0, !dbg !179
  %conv.i900.2 = fpext half %404 to float, !dbg !179
  %405 = extractelement <4 x half> %121, i64 1, !dbg !182
  %conv6.i.2 = fpext half %405 to float, !dbg !182
  %406 = extractelement <4 x half> %121, i64 2, !dbg !183
  %conv.i902.2 = fpext half %406 to float, !dbg !183
  %407 = extractelement <4 x half> %121, i64 3, !dbg !185
  %conv6.i904.2 = fpext half %407 to float, !dbg !185
  %mul435.2 = fmul contract float %mul.i.i899.2, %conv.i900.2, !dbg !186
  %mul438.2 = fmul contract float %mul.i.i899.2, %conv6.i.2, !dbg !187
  %mul441.2 = fmul contract float %mul.i.i899.2, %conv.i902.2, !dbg !188
  %mul444.2 = fmul contract float %mul.i.i899.2, %conv6.i904.2, !dbg !189
  %408 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !190, !noalias !197
  %409 = fptrunc float %mul435.2 to half, !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %408), !dbg !190, !noalias !197
  %410 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !202, !noalias !197
  %411 = fptrunc float %mul438.2 to half, !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %410), !dbg !202, !noalias !197
  %412 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !204
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !204, !noalias !208
  %413 = fptrunc float %mul441.2 to half, !dbg !204
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %412), !dbg !204, !noalias !208
  %414 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !213, !noalias !208
  %415 = fptrunc float %mul444.2 to half, !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %414), !dbg !213, !noalias !208
  %416 = insertelement <4 x half> poison, half %409, i64 0, !dbg !215
  %417 = insertelement <4 x half> %416, half %411, i64 1, !dbg !215
  %418 = insertelement <4 x half> %417, half %413, i64 2, !dbg !215
  %419 = insertelement <4 x half> %418, half %415, i64 3, !dbg !215
  %shr467.2 = lshr exact i32 %mul402.2, 2
  %add468.2 = add nuw nsw i32 %shr467.2, %shr465
  %cmp469.2 = icmp ult i32 %add468.2, 256
  %conv479.2 = zext nneg i32 %mul402.2 to i64
  br i1 %cmp469.2, label %if.then470.21124, label %if.end504.21128, !dbg !216

if.then470.21124:                                 ; preds = %if.then407.2
  %420 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.21120 = shl nuw nsw i64 %conv479.2, 7, !dbg !217
  %421 = getelementptr inbounds i8, ptr addrspace(4) %420, i64 %.idx983.21120, !dbg !217
  %condval_2.sroa.0.0.copyload.21121 = load i32, ptr addrspace(4) %421, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.21122 = getelementptr inbounds i8, ptr addrspace(4) %421, i64 4, !dbg !218
  %condval_2.sroa.5.0.copyload.21123 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.21122, align 4, !dbg !218, !tbaa !30
  br label %if.end504.21128, !dbg !219

if.end504.21128:                                  ; preds = %if.then470.21124, %if.then407.2
  %condval_2.sroa.5.0.21125 = phi i32 [ %condval_2.sroa.5.0.copyload.21123, %if.then470.21124 ], [ 0, %if.then407.2 ], !dbg !83
  %condval_2.sroa.0.0.21126 = phi i32 [ %condval_2.sroa.0.0.copyload.21121, %if.then470.21124 ], [ 0, %if.then407.2 ], !dbg !83
  br i1 %cmp469.2, label %if.then470.1.2, label %if.end504.1.2, !dbg !216

if.then470.1.2:                                   ; preds = %if.end504.21128
  %422 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.1.2 = shl nuw nsw i64 %conv479.2, 7, !dbg !217
  %423 = getelementptr inbounds i8, ptr addrspace(4) %422, i64 %.idx983.1.2, !dbg !217
  %add.ptr490.1.2 = getelementptr inbounds i8, ptr addrspace(4) %423, i64 128, !dbg !217
  %condval_2.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %add.ptr490.1.2, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %423, i64 132, !dbg !218
  %condval_2.sroa.5.0.copyload.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.1.2, align 4, !dbg !218, !tbaa !30
  br label %if.end504.1.2, !dbg !219

if.end504.1.2:                                    ; preds = %if.then470.1.2, %if.end504.21128
  %condval_2.sroa.5.0.1.2 = phi i32 [ %condval_2.sroa.5.0.copyload.1.2, %if.then470.1.2 ], [ 0, %if.end504.21128 ], !dbg !83
  %condval_2.sroa.0.0.1.2 = phi i32 [ %condval_2.sroa.0.0.copyload.1.2, %if.then470.1.2 ], [ 0, %if.end504.21128 ], !dbg !83
  br i1 %cmp469.2, label %if.then470.2.2, label %if.end504.2.2, !dbg !216

if.then470.2.2:                                   ; preds = %if.end504.1.2
  %424 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.2.2 = shl nuw nsw i64 %conv479.2, 7, !dbg !217
  %425 = getelementptr inbounds i8, ptr addrspace(4) %424, i64 %.idx983.2.2, !dbg !217
  %add.ptr490.2.2 = getelementptr inbounds i8, ptr addrspace(4) %425, i64 256, !dbg !217
  %condval_2.sroa.0.0.copyload.2.2 = load i32, ptr addrspace(4) %add.ptr490.2.2, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.2.2 = getelementptr inbounds i8, ptr addrspace(4) %425, i64 260, !dbg !218
  %condval_2.sroa.5.0.copyload.2.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.2.2, align 4, !dbg !218, !tbaa !30
  br label %if.end504.2.2, !dbg !219

if.end504.2.2:                                    ; preds = %if.then470.2.2, %if.end504.1.2
  %condval_2.sroa.5.0.2.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2.2, %if.then470.2.2 ], [ 0, %if.end504.1.2 ], !dbg !83
  %condval_2.sroa.0.0.2.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2.2, %if.then470.2.2 ], [ 0, %if.end504.1.2 ], !dbg !83
  br i1 %cmp469.2, label %if.then470.3.2, label %if.end504.3.2, !dbg !216

if.then470.3.2:                                   ; preds = %if.end504.2.2
  %426 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.3.2 = shl nuw nsw i64 %conv479.2, 7, !dbg !217
  %427 = getelementptr inbounds i8, ptr addrspace(4) %426, i64 %.idx983.3.2, !dbg !217
  %add.ptr490.3.2 = getelementptr inbounds i8, ptr addrspace(4) %427, i64 384, !dbg !217
  %condval_2.sroa.0.0.copyload.3.2 = load i32, ptr addrspace(4) %add.ptr490.3.2, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.3.2 = getelementptr inbounds i8, ptr addrspace(4) %427, i64 388, !dbg !218
  %condval_2.sroa.5.0.copyload.3.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.3.2, align 4, !dbg !218, !tbaa !30
  br label %if.end504.3.2, !dbg !219

if.end504.3.2:                                    ; preds = %if.then470.3.2, %if.end504.2.2
  %condval_2.sroa.5.0.3.2 = phi i32 [ %condval_2.sroa.5.0.copyload.3.2, %if.then470.3.2 ], [ 0, %if.end504.2.2 ], !dbg !83
  %condval_2.sroa.0.0.3.2 = phi i32 [ %condval_2.sroa.0.0.copyload.3.2, %if.then470.3.2 ], [ 0, %if.end504.2.2 ], !dbg !83
  %428 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul534, !dbg !220
  %add.ptr545.idx.21135 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.21136 = getelementptr inbounds i8, ptr addrspace(3) %428, i32 %add.ptr545.idx.21135, !dbg !220
  %429 = and i32 %condval_2.sroa.0.0.3.2, 65535, !dbg !221
  %v_column_local.sroa.130.0.insert.ext1635 = zext nneg i32 %429 to i64, !dbg !221
  %v_column_local.sroa.130.0.insert.shift1636 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1635, 48, !dbg !221
  %430 = and i32 %condval_2.sroa.0.0.2.2, 65535, !dbg !221
  %v_column_local.sroa.98.0.insert.ext1480 = zext nneg i32 %430 to i64, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1481 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1480, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1483 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1636, %v_column_local.sroa.98.0.insert.shift1481, !dbg !221
  %431 = shl i32 %condval_2.sroa.0.0.1.2, 16, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1326 = zext i32 %431 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1328 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1483, %v_column_local.sroa.66.0.insert.shift1326, !dbg !221
  %432 = and i32 %condval_2.sroa.0.0.21126, 65535, !dbg !221
  %v_column_local.sroa.0.0.insert.ext1194 = zext nneg i32 %432 to i64, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1196 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1328, %v_column_local.sroa.0.0.insert.ext1194, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1196, ptr addrspace(3) %add.ptr545.21136, align 8, !dbg !221
  %v_tile_local.sroa.0.2.extract.shift1832 = lshr i32 %condval_2.sroa.0.0.21126, 16, !dbg !222
  %v_tile_local.sroa.0.2.extract.trunc1833 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1832 to i64, !dbg !222
  %v_tile_local.sroa.50.10.extract.shift1902 = and i32 %condval_2.sroa.0.0.1.2, -65536, !dbg !221
  %v_tile_local.sroa.98.18.extract.shift1972 = lshr i32 %condval_2.sroa.0.0.2.2, 16, !dbg !222
  %v_tile_local.sroa.98.18.extract.trunc1973 = zext nneg i32 %v_tile_local.sroa.98.18.extract.shift1972 to i64, !dbg !222
  %v_tile_local.sroa.146.26.extract.shift2042 = lshr i32 %condval_2.sroa.0.0.3.2, 16, !dbg !222
  %v_tile_local.sroa.146.26.extract.trunc2043 = zext nneg i32 %v_tile_local.sroa.146.26.extract.shift2042 to i64, !dbg !222
  %add535.1.2 = or disjoint i32 %mul534, 256, !dbg !223
  %433 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.1.2, !dbg !220
  %xor541.1.2 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.1.2 = xor i32 %xor541.1.2, 8, !dbg !220
  %add.ptr545.1.2 = getelementptr inbounds i8, ptr addrspace(3) %433, i32 %add.ptr545.idx.1.2, !dbg !220
  %v_column_local.sroa.130.0.insert.shift1641 = shl nuw i64 %v_tile_local.sroa.146.26.extract.trunc2043, 48, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1486 = shl nuw nsw i64 %v_tile_local.sroa.98.18.extract.trunc1973, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1488 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1641, %v_column_local.sroa.98.0.insert.shift1486, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1331 = zext i32 %v_tile_local.sroa.50.10.extract.shift1902 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1333 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1488, %v_column_local.sroa.66.0.insert.shift1331, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1200 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1333, %v_tile_local.sroa.0.2.extract.trunc1833, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1200, ptr addrspace(3) %add.ptr545.1.2, align 8, !dbg !221
  %add535.2.2 = or disjoint i32 %mul534, 512, !dbg !223
  %434 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.2.2, !dbg !220
  %xor541.2.2 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.2.2 = xor i32 %xor541.2.2, 16, !dbg !220
  %add.ptr545.2.2 = getelementptr inbounds i8, ptr addrspace(3) %434, i32 %add.ptr545.idx.2.2, !dbg !220
  %435 = and i32 %condval_2.sroa.5.0.3.2, 65535, !dbg !221
  %v_column_local.sroa.130.0.insert.ext1645 = zext nneg i32 %435 to i64, !dbg !221
  %v_column_local.sroa.130.0.insert.shift1646 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1645, 48, !dbg !221
  %436 = and i32 %condval_2.sroa.5.0.2.2, 65535, !dbg !221
  %v_column_local.sroa.98.0.insert.ext1490 = zext nneg i32 %436 to i64, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1491 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1490, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1493 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1646, %v_column_local.sroa.98.0.insert.shift1491, !dbg !221
  %437 = shl i32 %condval_2.sroa.5.0.1.2, 16, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1336 = zext i32 %437 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1338 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1493, %v_column_local.sroa.66.0.insert.shift1336, !dbg !221
  %438 = and i32 %condval_2.sroa.5.0.21125, 65535, !dbg !221
  %v_column_local.sroa.0.0.insert.ext1202 = zext nneg i32 %438 to i64, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1204 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1338, %v_column_local.sroa.0.0.insert.ext1202, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1204, ptr addrspace(3) %add.ptr545.2.2, align 8, !dbg !221
  %v_tile_local.sroa.26.6.extract.shift1867 = lshr i32 %condval_2.sroa.5.0.21125, 16, !dbg !222
  %v_tile_local.sroa.26.6.extract.trunc1868 = zext nneg i32 %v_tile_local.sroa.26.6.extract.shift1867 to i64, !dbg !222
  %v_tile_local.sroa.74.14.extract.shift1937 = and i32 %condval_2.sroa.5.0.1.2, -65536, !dbg !221
  %v_tile_local.sroa.122.22.extract.shift2007 = lshr i32 %condval_2.sroa.5.0.2.2, 16, !dbg !222
  %v_tile_local.sroa.122.22.extract.trunc2008 = zext nneg i32 %v_tile_local.sroa.122.22.extract.shift2007 to i64, !dbg !222
  %v_tile_local.sroa.170.30.extract.shift2077 = lshr i32 %condval_2.sroa.5.0.3.2, 16, !dbg !222
  %v_tile_local.sroa.170.30.extract.trunc2078 = zext nneg i32 %v_tile_local.sroa.170.30.extract.shift2077 to i64, !dbg !222
  %add535.3.2 = or disjoint i32 %mul534, 768, !dbg !223
  %439 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.3.2, !dbg !220
  %xor541.3.2 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.3.2 = xor i32 %xor541.3.2, 24, !dbg !220
  %add.ptr545.3.2 = getelementptr inbounds i8, ptr addrspace(3) %439, i32 %add.ptr545.idx.3.2, !dbg !220
  %v_column_local.sroa.130.0.insert.shift1651 = shl nuw i64 %v_tile_local.sroa.170.30.extract.trunc2078, 48, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1496 = shl nuw nsw i64 %v_tile_local.sroa.122.22.extract.trunc2008, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1498 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1651, %v_column_local.sroa.98.0.insert.shift1496, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1341 = zext i32 %v_tile_local.sroa.74.14.extract.shift1937 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1343 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1498, %v_column_local.sroa.66.0.insert.shift1341, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1208 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1343, %v_tile_local.sroa.26.6.extract.trunc1868, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1208, ptr addrspace(3) %add.ptr545.3.2, align 8, !dbg !221
  fence syncscope("warp") release, !dbg !224
  tail call void @llvm.mxc.barrier.warp(), !dbg !227
  fence syncscope("warp") acquire, !dbg !228
  %add562.21138 = or disjoint i32 %mul555, %mul561, !dbg !229
  %440 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.21138, !dbg !230
  %add.ptr572.idx.21139 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.21140 = getelementptr inbounds i8, ptr addrspace(3) %440, i32 %add.ptr572.idx.21139, !dbg !230
  %441 = load <4 x half>, ptr addrspace(3) %add.ptr572.21140, align 8, !dbg !231
  %add557.1.2 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.1.2 = or disjoint i32 %add557.1.2, 64, !dbg !229
  %442 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.1.2, !dbg !230
  %xor568.1.2 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.1.2 = xor i32 %xor568.1.2, 8, !dbg !230
  %add.ptr572.1.2 = getelementptr inbounds i8, ptr addrspace(3) %442, i32 %add.ptr572.idx.1.2, !dbg !230
  %443 = load <4 x half>, ptr addrspace(3) %add.ptr572.1.2, align 8, !dbg !231
  %add557.2.2 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.2.2 = or disjoint i32 %add557.2.2, 128, !dbg !229
  %444 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.2.2, !dbg !230
  %xor568.2.2 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.2.2 = xor i32 %xor568.2.2, 16, !dbg !230
  %add.ptr572.2.2 = getelementptr inbounds i8, ptr addrspace(3) %444, i32 %add.ptr572.idx.2.2, !dbg !230
  %445 = load <4 x half>, ptr addrspace(3) %add.ptr572.2.2, align 8, !dbg !231
  %add557.3.2 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.3.2 = or disjoint i32 %add557.3.2, 192, !dbg !229
  %446 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.3.2, !dbg !230
  %xor568.3.2 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.3.2 = xor i32 %xor568.3.2, 24, !dbg !230
  %add.ptr572.3.2 = getelementptr inbounds i8, ptr addrspace(3) %446, i32 %add.ptr572.idx.3.2, !dbg !230
  %447 = load <4 x half>, ptr addrspace(3) %add.ptr572.3.2, align 8, !dbg !231
  %448 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %441, <4 x half> %419, <4 x float> %output_acc.sroa.0.1), !dbg !232
  %449 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %443, <4 x half> %419, <4 x float> %output_acc.sroa.34.1), !dbg !232
  %450 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %445, <4 x half> %419, <4 x float> %output_acc.sroa.66.1), !dbg !232
  %451 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %447, <4 x half> %419, <4 x float> %output_acc.sroa.98.1), !dbg !232
  br label %if.end599.2, !dbg !233

if.end599.2:                                      ; preds = %if.end504.3.2, %if.end599.1
  %bc2830 = phi <4 x half> [ %121, %if.end599.1 ], [ %419, %if.end504.3.2 ], !dbg !83
  %output_acc.sroa.98.2 = phi <4 x float> [ %output_acc.sroa.98.1, %if.end599.1 ], [ %451, %if.end504.3.2 ], !dbg !83
  %output_acc.sroa.66.2 = phi <4 x float> [ %output_acc.sroa.66.1, %if.end599.1 ], [ %450, %if.end504.3.2 ], !dbg !83
  %output_acc.sroa.34.2 = phi <4 x float> [ %output_acc.sroa.34.1, %if.end599.1 ], [ %449, %if.end504.3.2 ], !dbg !83
  %output_acc.sroa.0.2 = phi <4 x float> [ %output_acc.sroa.0.1, %if.end599.1 ], [ %448, %if.end504.3.2 ], !dbg !83
  %452 = load i32, ptr addrspace(1) %arrayidx.3, align 4, !dbg !166, !tbaa !30
  %mul402.3 = shl nsw i32 %452, 4, !dbg !167
  %cmp403.3 = icmp slt i32 %452, 0, !dbg !168
  %cmp406.not.3 = icmp sgt i32 %mul402.3, %1
  %or.cond941.3 = select i1 %cmp403.3, i1 true, i1 %cmp406.not.3, !dbg !169
  br i1 %or.cond941.3, label %if.end599.3, label %if.then407.3, !dbg !169

if.then407.3:                                     ; preds = %if.end599.2
  fence syncscope("warp") release, !dbg !170
  tail call void @llvm.mxc.barrier.warp(), !dbg !173
  fence syncscope("warp") acquire, !dbg !174
  %sub411.3 = fsub contract float %max_cache.sroa.14.0, %294, !dbg !175
  %mul412.3 = fmul contract float %sub411.3, 0x3FC7154760000000, !dbg !176
  %cmp.i.i895.3 = fcmp contract olt float %mul412.3, -1.260000e+02, !dbg !177
  %cond.i.i896.3 = select contract i1 %cmp.i.i895.3, float 6.400000e+01, float 0.000000e+00, !dbg !177
  %add.i.i897.3 = fadd contract float %mul412.3, %cond.i.i896.3, !dbg !177
  %453 = tail call contract float @llvm.exp2.f32(float %add.i.i897.3), !dbg !177
  %cond2.i.i898.3 = select contract i1 %cmp.i.i895.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !177
  %mul.i.i899.3 = fmul contract float %cond2.i.i898.3, %453, !dbg !177
  %454 = extractelement <4 x half> %154, i64 0, !dbg !179
  %conv.i900.3 = fpext half %454 to float, !dbg !179
  %455 = extractelement <4 x half> %154, i64 1, !dbg !182
  %conv6.i.3 = fpext half %455 to float, !dbg !182
  %456 = extractelement <4 x half> %154, i64 2, !dbg !183
  %conv.i902.3 = fpext half %456 to float, !dbg !183
  %457 = extractelement <4 x half> %154, i64 3, !dbg !185
  %conv6.i904.3 = fpext half %457 to float, !dbg !185
  %mul435.3 = fmul contract float %mul.i.i899.3, %conv.i900.3, !dbg !186
  %mul438.3 = fmul contract float %mul.i.i899.3, %conv6.i.3, !dbg !187
  %mul441.3 = fmul contract float %mul.i.i899.3, %conv.i902.3, !dbg !188
  %mul444.3 = fmul contract float %mul.i.i899.3, %conv6.i904.3, !dbg !189
  %458 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !190, !noalias !197
  %459 = fptrunc float %mul435.3 to half, !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %458), !dbg !190, !noalias !197
  %460 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !202, !noalias !197
  %461 = fptrunc float %mul438.3 to half, !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %460), !dbg !202, !noalias !197
  %462 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !204
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !204, !noalias !208
  %463 = fptrunc float %mul441.3 to half, !dbg !204
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %462), !dbg !204, !noalias !208
  %464 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !213, !noalias !208
  %465 = fptrunc float %mul444.3 to half, !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %464), !dbg !213, !noalias !208
  %466 = insertelement <4 x half> poison, half %459, i64 0, !dbg !215
  %467 = insertelement <4 x half> %466, half %461, i64 1, !dbg !215
  %468 = insertelement <4 x half> %467, half %463, i64 2, !dbg !215
  %469 = insertelement <4 x half> %468, half %465, i64 3, !dbg !215
  %shr467.3 = lshr exact i32 %mul402.3, 2
  %add468.3 = add nuw nsw i32 %shr467.3, %shr465
  %cmp469.3 = icmp ult i32 %add468.3, 256
  %conv479.3 = zext nneg i32 %mul402.3 to i64
  br i1 %cmp469.3, label %if.then470.31145, label %if.end504.31149, !dbg !216

if.then470.31145:                                 ; preds = %if.then407.3
  %470 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.31141 = shl nuw nsw i64 %conv479.3, 7, !dbg !217
  %471 = getelementptr inbounds i8, ptr addrspace(4) %470, i64 %.idx983.31141, !dbg !217
  %condval_2.sroa.0.0.copyload.31142 = load i32, ptr addrspace(4) %471, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.31143 = getelementptr inbounds i8, ptr addrspace(4) %471, i64 4, !dbg !218
  %condval_2.sroa.5.0.copyload.31144 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.31143, align 4, !dbg !218, !tbaa !30
  br label %if.end504.31149, !dbg !219

if.end504.31149:                                  ; preds = %if.then470.31145, %if.then407.3
  %condval_2.sroa.5.0.31146 = phi i32 [ %condval_2.sroa.5.0.copyload.31144, %if.then470.31145 ], [ 0, %if.then407.3 ], !dbg !83
  %condval_2.sroa.0.0.31147 = phi i32 [ %condval_2.sroa.0.0.copyload.31142, %if.then470.31145 ], [ 0, %if.then407.3 ], !dbg !83
  br i1 %cmp469.3, label %if.then470.1.3, label %if.end504.1.3, !dbg !216

if.then470.1.3:                                   ; preds = %if.end504.31149
  %472 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.1.3 = shl nuw nsw i64 %conv479.3, 7, !dbg !217
  %473 = getelementptr inbounds i8, ptr addrspace(4) %472, i64 %.idx983.1.3, !dbg !217
  %add.ptr490.1.3 = getelementptr inbounds i8, ptr addrspace(4) %473, i64 128, !dbg !217
  %condval_2.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %add.ptr490.1.3, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %473, i64 132, !dbg !218
  %condval_2.sroa.5.0.copyload.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.1.3, align 4, !dbg !218, !tbaa !30
  br label %if.end504.1.3, !dbg !219

if.end504.1.3:                                    ; preds = %if.then470.1.3, %if.end504.31149
  %condval_2.sroa.5.0.1.3 = phi i32 [ %condval_2.sroa.5.0.copyload.1.3, %if.then470.1.3 ], [ 0, %if.end504.31149 ], !dbg !83
  %condval_2.sroa.0.0.1.3 = phi i32 [ %condval_2.sroa.0.0.copyload.1.3, %if.then470.1.3 ], [ 0, %if.end504.31149 ], !dbg !83
  br i1 %cmp469.3, label %if.then470.2.3, label %if.end504.2.3, !dbg !216

if.then470.2.3:                                   ; preds = %if.end504.1.3
  %474 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.2.3 = shl nuw nsw i64 %conv479.3, 7, !dbg !217
  %475 = getelementptr inbounds i8, ptr addrspace(4) %474, i64 %.idx983.2.3, !dbg !217
  %add.ptr490.2.3 = getelementptr inbounds i8, ptr addrspace(4) %475, i64 256, !dbg !217
  %condval_2.sroa.0.0.copyload.2.3 = load i32, ptr addrspace(4) %add.ptr490.2.3, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.2.3 = getelementptr inbounds i8, ptr addrspace(4) %475, i64 260, !dbg !218
  %condval_2.sroa.5.0.copyload.2.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.2.3, align 4, !dbg !218, !tbaa !30
  br label %if.end504.2.3, !dbg !219

if.end504.2.3:                                    ; preds = %if.then470.2.3, %if.end504.1.3
  %condval_2.sroa.5.0.2.3 = phi i32 [ %condval_2.sroa.5.0.copyload.2.3, %if.then470.2.3 ], [ 0, %if.end504.1.3 ], !dbg !83
  %condval_2.sroa.0.0.2.3 = phi i32 [ %condval_2.sroa.0.0.copyload.2.3, %if.then470.2.3 ], [ 0, %if.end504.1.3 ], !dbg !83
  br i1 %cmp469.3, label %if.then470.3.3, label %if.end504.3.3, !dbg !216

if.then470.3.3:                                   ; preds = %if.end504.2.3
  %476 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.3.3 = shl nuw nsw i64 %conv479.3, 7, !dbg !217
  %477 = getelementptr inbounds i8, ptr addrspace(4) %476, i64 %.idx983.3.3, !dbg !217
  %add.ptr490.3.3 = getelementptr inbounds i8, ptr addrspace(4) %477, i64 384, !dbg !217
  %condval_2.sroa.0.0.copyload.3.3 = load i32, ptr addrspace(4) %add.ptr490.3.3, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.3.3 = getelementptr inbounds i8, ptr addrspace(4) %477, i64 388, !dbg !218
  %condval_2.sroa.5.0.copyload.3.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.3.3, align 4, !dbg !218, !tbaa !30
  br label %if.end504.3.3, !dbg !219

if.end504.3.3:                                    ; preds = %if.then470.3.3, %if.end504.2.3
  %condval_2.sroa.5.0.3.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3.3, %if.then470.3.3 ], [ 0, %if.end504.2.3 ], !dbg !83
  %condval_2.sroa.0.0.3.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3.3, %if.then470.3.3 ], [ 0, %if.end504.2.3 ], !dbg !83
  %478 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul534, !dbg !220
  %add.ptr545.idx.31156 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.31157 = getelementptr inbounds i8, ptr addrspace(3) %478, i32 %add.ptr545.idx.31156, !dbg !220
  %479 = and i32 %condval_2.sroa.0.0.3.3, 65535, !dbg !221
  %v_column_local.sroa.130.0.insert.ext1655 = zext nneg i32 %479 to i64, !dbg !221
  %v_column_local.sroa.130.0.insert.shift1656 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1655, 48, !dbg !221
  %480 = and i32 %condval_2.sroa.0.0.2.3, 65535, !dbg !221
  %v_column_local.sroa.98.0.insert.ext1500 = zext nneg i32 %480 to i64, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1501 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1500, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1503 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1656, %v_column_local.sroa.98.0.insert.shift1501, !dbg !221
  %481 = shl i32 %condval_2.sroa.0.0.1.3, 16, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1346 = zext i32 %481 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1348 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1503, %v_column_local.sroa.66.0.insert.shift1346, !dbg !221
  %482 = and i32 %condval_2.sroa.0.0.31147, 65535, !dbg !221
  %v_column_local.sroa.0.0.insert.ext1210 = zext nneg i32 %482 to i64, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1212 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1348, %v_column_local.sroa.0.0.insert.ext1210, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1212, ptr addrspace(3) %add.ptr545.31157, align 8, !dbg !221
  %v_tile_local.sroa.0.2.extract.shift1835 = lshr i32 %condval_2.sroa.0.0.31147, 16, !dbg !222
  %v_tile_local.sroa.0.2.extract.trunc1836 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1835 to i64, !dbg !222
  %v_tile_local.sroa.50.10.extract.shift1905 = and i32 %condval_2.sroa.0.0.1.3, -65536, !dbg !221
  %v_tile_local.sroa.98.18.extract.shift1975 = lshr i32 %condval_2.sroa.0.0.2.3, 16, !dbg !222
  %v_tile_local.sroa.98.18.extract.trunc1976 = zext nneg i32 %v_tile_local.sroa.98.18.extract.shift1975 to i64, !dbg !222
  %v_tile_local.sroa.146.26.extract.shift2045 = lshr i32 %condval_2.sroa.0.0.3.3, 16, !dbg !222
  %v_tile_local.sroa.146.26.extract.trunc2046 = zext nneg i32 %v_tile_local.sroa.146.26.extract.shift2045 to i64, !dbg !222
  %add535.1.3 = or disjoint i32 %mul534, 256, !dbg !223
  %483 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.1.3, !dbg !220
  %xor541.1.3 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.1.3 = xor i32 %xor541.1.3, 8, !dbg !220
  %add.ptr545.1.3 = getelementptr inbounds i8, ptr addrspace(3) %483, i32 %add.ptr545.idx.1.3, !dbg !220
  %v_column_local.sroa.130.0.insert.shift1661 = shl nuw i64 %v_tile_local.sroa.146.26.extract.trunc2046, 48, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1506 = shl nuw nsw i64 %v_tile_local.sroa.98.18.extract.trunc1976, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1508 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1661, %v_column_local.sroa.98.0.insert.shift1506, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1351 = zext i32 %v_tile_local.sroa.50.10.extract.shift1905 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1353 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1508, %v_column_local.sroa.66.0.insert.shift1351, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1216 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1353, %v_tile_local.sroa.0.2.extract.trunc1836, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1216, ptr addrspace(3) %add.ptr545.1.3, align 8, !dbg !221
  %add535.2.3 = or disjoint i32 %mul534, 512, !dbg !223
  %484 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.2.3, !dbg !220
  %xor541.2.3 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.2.3 = xor i32 %xor541.2.3, 16, !dbg !220
  %add.ptr545.2.3 = getelementptr inbounds i8, ptr addrspace(3) %484, i32 %add.ptr545.idx.2.3, !dbg !220
  %485 = and i32 %condval_2.sroa.5.0.3.3, 65535, !dbg !221
  %v_column_local.sroa.130.0.insert.ext1665 = zext nneg i32 %485 to i64, !dbg !221
  %v_column_local.sroa.130.0.insert.shift1666 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1665, 48, !dbg !221
  %486 = and i32 %condval_2.sroa.5.0.2.3, 65535, !dbg !221
  %v_column_local.sroa.98.0.insert.ext1510 = zext nneg i32 %486 to i64, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1511 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1510, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1513 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1666, %v_column_local.sroa.98.0.insert.shift1511, !dbg !221
  %487 = shl i32 %condval_2.sroa.5.0.1.3, 16, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1356 = zext i32 %487 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1358 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1513, %v_column_local.sroa.66.0.insert.shift1356, !dbg !221
  %488 = and i32 %condval_2.sroa.5.0.31146, 65535, !dbg !221
  %v_column_local.sroa.0.0.insert.ext1218 = zext nneg i32 %488 to i64, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1220 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1358, %v_column_local.sroa.0.0.insert.ext1218, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1220, ptr addrspace(3) %add.ptr545.2.3, align 8, !dbg !221
  %v_tile_local.sroa.26.6.extract.shift1870 = lshr i32 %condval_2.sroa.5.0.31146, 16, !dbg !222
  %v_tile_local.sroa.26.6.extract.trunc1871 = zext nneg i32 %v_tile_local.sroa.26.6.extract.shift1870 to i64, !dbg !222
  %v_tile_local.sroa.74.14.extract.shift1940 = and i32 %condval_2.sroa.5.0.1.3, -65536, !dbg !221
  %v_tile_local.sroa.122.22.extract.shift2010 = lshr i32 %condval_2.sroa.5.0.2.3, 16, !dbg !222
  %v_tile_local.sroa.122.22.extract.trunc2011 = zext nneg i32 %v_tile_local.sroa.122.22.extract.shift2010 to i64, !dbg !222
  %v_tile_local.sroa.170.30.extract.shift2080 = lshr i32 %condval_2.sroa.5.0.3.3, 16, !dbg !222
  %v_tile_local.sroa.170.30.extract.trunc2081 = zext nneg i32 %v_tile_local.sroa.170.30.extract.shift2080 to i64, !dbg !222
  %add535.3.3 = or disjoint i32 %mul534, 768, !dbg !223
  %489 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.3.3, !dbg !220
  %xor541.3.3 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.3.3 = xor i32 %xor541.3.3, 24, !dbg !220
  %add.ptr545.3.3 = getelementptr inbounds i8, ptr addrspace(3) %489, i32 %add.ptr545.idx.3.3, !dbg !220
  %v_column_local.sroa.130.0.insert.shift1671 = shl nuw i64 %v_tile_local.sroa.170.30.extract.trunc2081, 48, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1516 = shl nuw nsw i64 %v_tile_local.sroa.122.22.extract.trunc2011, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1518 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1671, %v_column_local.sroa.98.0.insert.shift1516, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1361 = zext i32 %v_tile_local.sroa.74.14.extract.shift1940 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1363 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1518, %v_column_local.sroa.66.0.insert.shift1361, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1224 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1363, %v_tile_local.sroa.26.6.extract.trunc1871, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1224, ptr addrspace(3) %add.ptr545.3.3, align 8, !dbg !221
  fence syncscope("warp") release, !dbg !224
  tail call void @llvm.mxc.barrier.warp(), !dbg !227
  fence syncscope("warp") acquire, !dbg !228
  %add562.31159 = or disjoint i32 %mul555, %mul561, !dbg !229
  %490 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.31159, !dbg !230
  %add.ptr572.idx.31160 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.31161 = getelementptr inbounds i8, ptr addrspace(3) %490, i32 %add.ptr572.idx.31160, !dbg !230
  %491 = load <4 x half>, ptr addrspace(3) %add.ptr572.31161, align 8, !dbg !231
  %add557.1.3 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.1.3 = or disjoint i32 %add557.1.3, 64, !dbg !229
  %492 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.1.3, !dbg !230
  %xor568.1.3 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.1.3 = xor i32 %xor568.1.3, 8, !dbg !230
  %add.ptr572.1.3 = getelementptr inbounds i8, ptr addrspace(3) %492, i32 %add.ptr572.idx.1.3, !dbg !230
  %493 = load <4 x half>, ptr addrspace(3) %add.ptr572.1.3, align 8, !dbg !231
  %add557.2.3 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.2.3 = or disjoint i32 %add557.2.3, 128, !dbg !229
  %494 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.2.3, !dbg !230
  %xor568.2.3 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.2.3 = xor i32 %xor568.2.3, 16, !dbg !230
  %add.ptr572.2.3 = getelementptr inbounds i8, ptr addrspace(3) %494, i32 %add.ptr572.idx.2.3, !dbg !230
  %495 = load <4 x half>, ptr addrspace(3) %add.ptr572.2.3, align 8, !dbg !231
  %add557.3.3 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.3.3 = or disjoint i32 %add557.3.3, 192, !dbg !229
  %496 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.3.3, !dbg !230
  %xor568.3.3 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.3.3 = xor i32 %xor568.3.3, 24, !dbg !230
  %add.ptr572.3.3 = getelementptr inbounds i8, ptr addrspace(3) %496, i32 %add.ptr572.idx.3.3, !dbg !230
  %497 = load <4 x half>, ptr addrspace(3) %add.ptr572.3.3, align 8, !dbg !231
  %498 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %491, <4 x half> %469, <4 x float> %output_acc.sroa.0.2), !dbg !232
  %499 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %493, <4 x half> %469, <4 x float> %output_acc.sroa.34.2), !dbg !232
  %500 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %495, <4 x half> %469, <4 x float> %output_acc.sroa.66.2), !dbg !232
  %501 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %497, <4 x half> %469, <4 x float> %output_acc.sroa.98.2), !dbg !232
  br label %if.end599.3, !dbg !233

if.end599.3:                                      ; preds = %if.end504.3.3, %if.end599.2
  %bc2834 = phi <4 x half> [ %154, %if.end599.2 ], [ %469, %if.end504.3.3 ], !dbg !83
  %output_acc.sroa.98.3 = phi <4 x float> [ %output_acc.sroa.98.2, %if.end599.2 ], [ %501, %if.end504.3.3 ], !dbg !83
  %output_acc.sroa.66.3 = phi <4 x float> [ %output_acc.sroa.66.2, %if.end599.2 ], [ %500, %if.end504.3.3 ], !dbg !83
  %output_acc.sroa.34.3 = phi <4 x float> [ %output_acc.sroa.34.2, %if.end599.2 ], [ %499, %if.end504.3.3 ], !dbg !83
  %output_acc.sroa.0.3 = phi <4 x float> [ %output_acc.sroa.0.2, %if.end599.2 ], [ %498, %if.end504.3.3 ], !dbg !83
  %502 = load i32, ptr addrspace(1) %arrayidx.4, align 4, !dbg !166, !tbaa !30
  %mul402.4 = shl nsw i32 %502, 4, !dbg !167
  %cmp403.4 = icmp slt i32 %502, 0, !dbg !168
  %cmp406.not.4 = icmp sgt i32 %mul402.4, %1
  %or.cond941.4 = select i1 %cmp403.4, i1 true, i1 %cmp406.not.4, !dbg !169
  br i1 %or.cond941.4, label %if.end599.4, label %if.then407.4, !dbg !169

if.then407.4:                                     ; preds = %if.end599.3
  fence syncscope("warp") release, !dbg !170
  tail call void @llvm.mxc.barrier.warp(), !dbg !173
  fence syncscope("warp") acquire, !dbg !174
  %sub411.4 = fsub contract float %max_cache.sroa.18.0, %294, !dbg !175
  %mul412.4 = fmul contract float %sub411.4, 0x3FC7154760000000, !dbg !176
  %cmp.i.i895.4 = fcmp contract olt float %mul412.4, -1.260000e+02, !dbg !177
  %cond.i.i896.4 = select contract i1 %cmp.i.i895.4, float 6.400000e+01, float 0.000000e+00, !dbg !177
  %add.i.i897.4 = fadd contract float %mul412.4, %cond.i.i896.4, !dbg !177
  %503 = tail call contract float @llvm.exp2.f32(float %add.i.i897.4), !dbg !177
  %cond2.i.i898.4 = select contract i1 %cmp.i.i895.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !177
  %mul.i.i899.4 = fmul contract float %cond2.i.i898.4, %503, !dbg !177
  %504 = extractelement <4 x half> %187, i64 0, !dbg !179
  %conv.i900.4 = fpext half %504 to float, !dbg !179
  %505 = extractelement <4 x half> %187, i64 1, !dbg !182
  %conv6.i.4 = fpext half %505 to float, !dbg !182
  %506 = extractelement <4 x half> %187, i64 2, !dbg !183
  %conv.i902.4 = fpext half %506 to float, !dbg !183
  %507 = extractelement <4 x half> %187, i64 3, !dbg !185
  %conv6.i904.4 = fpext half %507 to float, !dbg !185
  %mul435.4 = fmul contract float %mul.i.i899.4, %conv.i900.4, !dbg !186
  %mul438.4 = fmul contract float %mul.i.i899.4, %conv6.i.4, !dbg !187
  %mul441.4 = fmul contract float %mul.i.i899.4, %conv.i902.4, !dbg !188
  %mul444.4 = fmul contract float %mul.i.i899.4, %conv6.i904.4, !dbg !189
  %508 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !190, !noalias !197
  %509 = fptrunc float %mul435.4 to half, !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %508), !dbg !190, !noalias !197
  %510 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !202, !noalias !197
  %511 = fptrunc float %mul438.4 to half, !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %510), !dbg !202, !noalias !197
  %512 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !204
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !204, !noalias !208
  %513 = fptrunc float %mul441.4 to half, !dbg !204
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %512), !dbg !204, !noalias !208
  %514 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !213, !noalias !208
  %515 = fptrunc float %mul444.4 to half, !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %514), !dbg !213, !noalias !208
  %516 = insertelement <4 x half> poison, half %509, i64 0, !dbg !215
  %517 = insertelement <4 x half> %516, half %511, i64 1, !dbg !215
  %518 = insertelement <4 x half> %517, half %513, i64 2, !dbg !215
  %519 = insertelement <4 x half> %518, half %515, i64 3, !dbg !215
  %shr467.4 = lshr exact i32 %mul402.4, 2
  %add468.4 = add nuw nsw i32 %shr467.4, %shr465
  %cmp469.4 = icmp ult i32 %add468.4, 256
  %conv479.4 = zext nneg i32 %mul402.4 to i64
  br i1 %cmp469.4, label %if.then470.4, label %if.end504.4, !dbg !216

if.then470.4:                                     ; preds = %if.then407.4
  %520 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.4 = shl nuw nsw i64 %conv479.4, 7, !dbg !217
  %521 = getelementptr inbounds i8, ptr addrspace(4) %520, i64 %.idx983.4, !dbg !217
  %condval_2.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %521, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %521, i64 4, !dbg !218
  %condval_2.sroa.5.0.copyload.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.4, align 4, !dbg !218, !tbaa !30
  br label %if.end504.4, !dbg !219

if.end504.4:                                      ; preds = %if.then470.4, %if.then407.4
  %condval_2.sroa.5.0.4 = phi i32 [ %condval_2.sroa.5.0.copyload.4, %if.then470.4 ], [ 0, %if.then407.4 ], !dbg !83
  %condval_2.sroa.0.0.4 = phi i32 [ %condval_2.sroa.0.0.copyload.4, %if.then470.4 ], [ 0, %if.then407.4 ], !dbg !83
  br i1 %cmp469.4, label %if.then470.1.4, label %if.end504.1.4, !dbg !216

if.then470.1.4:                                   ; preds = %if.end504.4
  %522 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.1.4 = shl nuw nsw i64 %conv479.4, 7, !dbg !217
  %523 = getelementptr inbounds i8, ptr addrspace(4) %522, i64 %.idx983.1.4, !dbg !217
  %add.ptr490.1.4 = getelementptr inbounds i8, ptr addrspace(4) %523, i64 128, !dbg !217
  %condval_2.sroa.0.0.copyload.1.4 = load i32, ptr addrspace(4) %add.ptr490.1.4, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %523, i64 132, !dbg !218
  %condval_2.sroa.5.0.copyload.1.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.1.4, align 4, !dbg !218, !tbaa !30
  br label %if.end504.1.4, !dbg !219

if.end504.1.4:                                    ; preds = %if.then470.1.4, %if.end504.4
  %condval_2.sroa.5.0.1.4 = phi i32 [ %condval_2.sroa.5.0.copyload.1.4, %if.then470.1.4 ], [ 0, %if.end504.4 ], !dbg !83
  %condval_2.sroa.0.0.1.4 = phi i32 [ %condval_2.sroa.0.0.copyload.1.4, %if.then470.1.4 ], [ 0, %if.end504.4 ], !dbg !83
  br i1 %cmp469.4, label %if.then470.2.4, label %if.end504.2.4, !dbg !216

if.then470.2.4:                                   ; preds = %if.end504.1.4
  %524 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.2.4 = shl nuw nsw i64 %conv479.4, 7, !dbg !217
  %525 = getelementptr inbounds i8, ptr addrspace(4) %524, i64 %.idx983.2.4, !dbg !217
  %add.ptr490.2.4 = getelementptr inbounds i8, ptr addrspace(4) %525, i64 256, !dbg !217
  %condval_2.sroa.0.0.copyload.2.4 = load i32, ptr addrspace(4) %add.ptr490.2.4, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.2.4 = getelementptr inbounds i8, ptr addrspace(4) %525, i64 260, !dbg !218
  %condval_2.sroa.5.0.copyload.2.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.2.4, align 4, !dbg !218, !tbaa !30
  br label %if.end504.2.4, !dbg !219

if.end504.2.4:                                    ; preds = %if.then470.2.4, %if.end504.1.4
  %condval_2.sroa.5.0.2.4 = phi i32 [ %condval_2.sroa.5.0.copyload.2.4, %if.then470.2.4 ], [ 0, %if.end504.1.4 ], !dbg !83
  %condval_2.sroa.0.0.2.4 = phi i32 [ %condval_2.sroa.0.0.copyload.2.4, %if.then470.2.4 ], [ 0, %if.end504.1.4 ], !dbg !83
  br i1 %cmp469.4, label %if.then470.3.4, label %if.end504.3.4, !dbg !216

if.then470.3.4:                                   ; preds = %if.end504.2.4
  %526 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.3.4 = shl nuw nsw i64 %conv479.4, 7, !dbg !217
  %527 = getelementptr inbounds i8, ptr addrspace(4) %526, i64 %.idx983.3.4, !dbg !217
  %add.ptr490.3.4 = getelementptr inbounds i8, ptr addrspace(4) %527, i64 384, !dbg !217
  %condval_2.sroa.0.0.copyload.3.4 = load i32, ptr addrspace(4) %add.ptr490.3.4, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.3.4 = getelementptr inbounds i8, ptr addrspace(4) %527, i64 388, !dbg !218
  %condval_2.sroa.5.0.copyload.3.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.3.4, align 4, !dbg !218, !tbaa !30
  br label %if.end504.3.4, !dbg !219

if.end504.3.4:                                    ; preds = %if.then470.3.4, %if.end504.2.4
  %condval_2.sroa.5.0.3.4 = phi i32 [ %condval_2.sroa.5.0.copyload.3.4, %if.then470.3.4 ], [ 0, %if.end504.2.4 ], !dbg !83
  %condval_2.sroa.0.0.3.4 = phi i32 [ %condval_2.sroa.0.0.copyload.3.4, %if.then470.3.4 ], [ 0, %if.end504.2.4 ], !dbg !83
  %528 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul534, !dbg !220
  %add.ptr545.idx.4 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.4 = getelementptr inbounds i8, ptr addrspace(3) %528, i32 %add.ptr545.idx.4, !dbg !220
  %529 = and i32 %condval_2.sroa.0.0.3.4, 65535, !dbg !221
  %v_column_local.sroa.130.0.insert.ext1675 = zext nneg i32 %529 to i64, !dbg !221
  %v_column_local.sroa.130.0.insert.shift1676 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1675, 48, !dbg !221
  %530 = and i32 %condval_2.sroa.0.0.2.4, 65535, !dbg !221
  %v_column_local.sroa.98.0.insert.ext1520 = zext nneg i32 %530 to i64, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1521 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1520, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1523 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1676, %v_column_local.sroa.98.0.insert.shift1521, !dbg !221
  %531 = shl i32 %condval_2.sroa.0.0.1.4, 16, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1366 = zext i32 %531 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1368 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1523, %v_column_local.sroa.66.0.insert.shift1366, !dbg !221
  %532 = and i32 %condval_2.sroa.0.0.4, 65535, !dbg !221
  %v_column_local.sroa.0.0.insert.ext1226 = zext nneg i32 %532 to i64, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1228 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1368, %v_column_local.sroa.0.0.insert.ext1226, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1228, ptr addrspace(3) %add.ptr545.4, align 8, !dbg !221
  %v_tile_local.sroa.0.2.extract.shift1838 = lshr i32 %condval_2.sroa.0.0.4, 16, !dbg !222
  %v_tile_local.sroa.0.2.extract.trunc1839 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1838 to i64, !dbg !222
  %v_tile_local.sroa.50.10.extract.shift1908 = and i32 %condval_2.sroa.0.0.1.4, -65536, !dbg !221
  %v_tile_local.sroa.98.18.extract.shift1978 = lshr i32 %condval_2.sroa.0.0.2.4, 16, !dbg !222
  %v_tile_local.sroa.98.18.extract.trunc1979 = zext nneg i32 %v_tile_local.sroa.98.18.extract.shift1978 to i64, !dbg !222
  %v_tile_local.sroa.146.26.extract.shift2048 = lshr i32 %condval_2.sroa.0.0.3.4, 16, !dbg !222
  %v_tile_local.sroa.146.26.extract.trunc2049 = zext nneg i32 %v_tile_local.sroa.146.26.extract.shift2048 to i64, !dbg !222
  %add535.1.4 = or disjoint i32 %mul534, 256, !dbg !223
  %533 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.1.4, !dbg !220
  %xor541.1.4 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.1.4 = xor i32 %xor541.1.4, 8, !dbg !220
  %add.ptr545.1.4 = getelementptr inbounds i8, ptr addrspace(3) %533, i32 %add.ptr545.idx.1.4, !dbg !220
  %v_column_local.sroa.130.0.insert.shift1681 = shl nuw i64 %v_tile_local.sroa.146.26.extract.trunc2049, 48, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1526 = shl nuw nsw i64 %v_tile_local.sroa.98.18.extract.trunc1979, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1528 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1681, %v_column_local.sroa.98.0.insert.shift1526, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1371 = zext i32 %v_tile_local.sroa.50.10.extract.shift1908 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1373 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1528, %v_column_local.sroa.66.0.insert.shift1371, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1232 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1373, %v_tile_local.sroa.0.2.extract.trunc1839, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1232, ptr addrspace(3) %add.ptr545.1.4, align 8, !dbg !221
  %add535.2.4 = or disjoint i32 %mul534, 512, !dbg !223
  %534 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.2.4, !dbg !220
  %xor541.2.4 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.2.4 = xor i32 %xor541.2.4, 16, !dbg !220
  %add.ptr545.2.4 = getelementptr inbounds i8, ptr addrspace(3) %534, i32 %add.ptr545.idx.2.4, !dbg !220
  %535 = and i32 %condval_2.sroa.5.0.3.4, 65535, !dbg !221
  %v_column_local.sroa.130.0.insert.ext1685 = zext nneg i32 %535 to i64, !dbg !221
  %v_column_local.sroa.130.0.insert.shift1686 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1685, 48, !dbg !221
  %536 = and i32 %condval_2.sroa.5.0.2.4, 65535, !dbg !221
  %v_column_local.sroa.98.0.insert.ext1530 = zext nneg i32 %536 to i64, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1531 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1530, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1533 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1686, %v_column_local.sroa.98.0.insert.shift1531, !dbg !221
  %537 = shl i32 %condval_2.sroa.5.0.1.4, 16, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1376 = zext i32 %537 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1378 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1533, %v_column_local.sroa.66.0.insert.shift1376, !dbg !221
  %538 = and i32 %condval_2.sroa.5.0.4, 65535, !dbg !221
  %v_column_local.sroa.0.0.insert.ext1234 = zext nneg i32 %538 to i64, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1236 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1378, %v_column_local.sroa.0.0.insert.ext1234, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1236, ptr addrspace(3) %add.ptr545.2.4, align 8, !dbg !221
  %v_tile_local.sroa.26.6.extract.shift1873 = lshr i32 %condval_2.sroa.5.0.4, 16, !dbg !222
  %v_tile_local.sroa.26.6.extract.trunc1874 = zext nneg i32 %v_tile_local.sroa.26.6.extract.shift1873 to i64, !dbg !222
  %v_tile_local.sroa.74.14.extract.shift1943 = and i32 %condval_2.sroa.5.0.1.4, -65536, !dbg !221
  %v_tile_local.sroa.122.22.extract.shift2013 = lshr i32 %condval_2.sroa.5.0.2.4, 16, !dbg !222
  %v_tile_local.sroa.122.22.extract.trunc2014 = zext nneg i32 %v_tile_local.sroa.122.22.extract.shift2013 to i64, !dbg !222
  %v_tile_local.sroa.170.30.extract.shift2083 = lshr i32 %condval_2.sroa.5.0.3.4, 16, !dbg !222
  %v_tile_local.sroa.170.30.extract.trunc2084 = zext nneg i32 %v_tile_local.sroa.170.30.extract.shift2083 to i64, !dbg !222
  %add535.3.4 = or disjoint i32 %mul534, 768, !dbg !223
  %539 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.3.4, !dbg !220
  %xor541.3.4 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.3.4 = xor i32 %xor541.3.4, 24, !dbg !220
  %add.ptr545.3.4 = getelementptr inbounds i8, ptr addrspace(3) %539, i32 %add.ptr545.idx.3.4, !dbg !220
  %v_column_local.sroa.130.0.insert.shift1691 = shl nuw i64 %v_tile_local.sroa.170.30.extract.trunc2084, 48, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1536 = shl nuw nsw i64 %v_tile_local.sroa.122.22.extract.trunc2014, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1538 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1691, %v_column_local.sroa.98.0.insert.shift1536, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1381 = zext i32 %v_tile_local.sroa.74.14.extract.shift1943 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1383 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1538, %v_column_local.sroa.66.0.insert.shift1381, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1240 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1383, %v_tile_local.sroa.26.6.extract.trunc1874, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1240, ptr addrspace(3) %add.ptr545.3.4, align 8, !dbg !221
  fence syncscope("warp") release, !dbg !224
  tail call void @llvm.mxc.barrier.warp(), !dbg !227
  fence syncscope("warp") acquire, !dbg !228
  %add562.4 = or disjoint i32 %mul555, %mul561, !dbg !229
  %540 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.4, !dbg !230
  %add.ptr572.idx.4 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.4 = getelementptr inbounds i8, ptr addrspace(3) %540, i32 %add.ptr572.idx.4, !dbg !230
  %541 = load <4 x half>, ptr addrspace(3) %add.ptr572.4, align 8, !dbg !231
  %add557.1.4 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.1.4 = or disjoint i32 %add557.1.4, 64, !dbg !229
  %542 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.1.4, !dbg !230
  %xor568.1.4 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.1.4 = xor i32 %xor568.1.4, 8, !dbg !230
  %add.ptr572.1.4 = getelementptr inbounds i8, ptr addrspace(3) %542, i32 %add.ptr572.idx.1.4, !dbg !230
  %543 = load <4 x half>, ptr addrspace(3) %add.ptr572.1.4, align 8, !dbg !231
  %add557.2.4 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.2.4 = or disjoint i32 %add557.2.4, 128, !dbg !229
  %544 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.2.4, !dbg !230
  %xor568.2.4 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.2.4 = xor i32 %xor568.2.4, 16, !dbg !230
  %add.ptr572.2.4 = getelementptr inbounds i8, ptr addrspace(3) %544, i32 %add.ptr572.idx.2.4, !dbg !230
  %545 = load <4 x half>, ptr addrspace(3) %add.ptr572.2.4, align 8, !dbg !231
  %add557.3.4 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.3.4 = or disjoint i32 %add557.3.4, 192, !dbg !229
  %546 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.3.4, !dbg !230
  %xor568.3.4 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.3.4 = xor i32 %xor568.3.4, 24, !dbg !230
  %add.ptr572.3.4 = getelementptr inbounds i8, ptr addrspace(3) %546, i32 %add.ptr572.idx.3.4, !dbg !230
  %547 = load <4 x half>, ptr addrspace(3) %add.ptr572.3.4, align 8, !dbg !231
  %548 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %541, <4 x half> %519, <4 x float> %output_acc.sroa.0.3), !dbg !232
  %549 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %543, <4 x half> %519, <4 x float> %output_acc.sroa.34.3), !dbg !232
  %550 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %545, <4 x half> %519, <4 x float> %output_acc.sroa.66.3), !dbg !232
  %551 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %547, <4 x half> %519, <4 x float> %output_acc.sroa.98.3), !dbg !232
  br label %if.end599.4, !dbg !233

if.end599.4:                                      ; preds = %if.end504.3.4, %if.end599.3
  %bc2838 = phi <4 x half> [ %187, %if.end599.3 ], [ %519, %if.end504.3.4 ], !dbg !83
  %output_acc.sroa.98.4 = phi <4 x float> [ %output_acc.sroa.98.3, %if.end599.3 ], [ %551, %if.end504.3.4 ], !dbg !83
  %output_acc.sroa.66.4 = phi <4 x float> [ %output_acc.sroa.66.3, %if.end599.3 ], [ %550, %if.end504.3.4 ], !dbg !83
  %output_acc.sroa.34.4 = phi <4 x float> [ %output_acc.sroa.34.3, %if.end599.3 ], [ %549, %if.end504.3.4 ], !dbg !83
  %output_acc.sroa.0.4 = phi <4 x float> [ %output_acc.sroa.0.3, %if.end599.3 ], [ %548, %if.end504.3.4 ], !dbg !83
  %552 = load i32, ptr addrspace(1) %arrayidx.5, align 4, !dbg !166, !tbaa !30
  %mul402.5 = shl nsw i32 %552, 4, !dbg !167
  %cmp403.5 = icmp slt i32 %552, 0, !dbg !168
  %cmp406.not.5 = icmp sgt i32 %mul402.5, %1
  %or.cond941.5 = select i1 %cmp403.5, i1 true, i1 %cmp406.not.5, !dbg !169
  br i1 %or.cond941.5, label %if.end599.5, label %if.then407.5, !dbg !169

if.then407.5:                                     ; preds = %if.end599.4
  fence syncscope("warp") release, !dbg !170
  tail call void @llvm.mxc.barrier.warp(), !dbg !173
  fence syncscope("warp") acquire, !dbg !174
  %sub411.5 = fsub contract float %max_cache.sroa.22.0, %294, !dbg !175
  %mul412.5 = fmul contract float %sub411.5, 0x3FC7154760000000, !dbg !176
  %cmp.i.i895.5 = fcmp contract olt float %mul412.5, -1.260000e+02, !dbg !177
  %cond.i.i896.5 = select contract i1 %cmp.i.i895.5, float 6.400000e+01, float 0.000000e+00, !dbg !177
  %add.i.i897.5 = fadd contract float %mul412.5, %cond.i.i896.5, !dbg !177
  %553 = tail call contract float @llvm.exp2.f32(float %add.i.i897.5), !dbg !177
  %cond2.i.i898.5 = select contract i1 %cmp.i.i895.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !177
  %mul.i.i899.5 = fmul contract float %cond2.i.i898.5, %553, !dbg !177
  %554 = extractelement <4 x half> %220, i64 0, !dbg !179
  %conv.i900.5 = fpext half %554 to float, !dbg !179
  %555 = extractelement <4 x half> %220, i64 1, !dbg !182
  %conv6.i.5 = fpext half %555 to float, !dbg !182
  %556 = extractelement <4 x half> %220, i64 2, !dbg !183
  %conv.i902.5 = fpext half %556 to float, !dbg !183
  %557 = extractelement <4 x half> %220, i64 3, !dbg !185
  %conv6.i904.5 = fpext half %557 to float, !dbg !185
  %mul435.5 = fmul contract float %mul.i.i899.5, %conv.i900.5, !dbg !186
  %mul438.5 = fmul contract float %mul.i.i899.5, %conv6.i.5, !dbg !187
  %mul441.5 = fmul contract float %mul.i.i899.5, %conv.i902.5, !dbg !188
  %mul444.5 = fmul contract float %mul.i.i899.5, %conv6.i904.5, !dbg !189
  %558 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !190, !noalias !197
  %559 = fptrunc float %mul435.5 to half, !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %558), !dbg !190, !noalias !197
  %560 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !202, !noalias !197
  %561 = fptrunc float %mul438.5 to half, !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %560), !dbg !202, !noalias !197
  %562 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !204
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !204, !noalias !208
  %563 = fptrunc float %mul441.5 to half, !dbg !204
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %562), !dbg !204, !noalias !208
  %564 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !213, !noalias !208
  %565 = fptrunc float %mul444.5 to half, !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %564), !dbg !213, !noalias !208
  %566 = insertelement <4 x half> poison, half %559, i64 0, !dbg !215
  %567 = insertelement <4 x half> %566, half %561, i64 1, !dbg !215
  %568 = insertelement <4 x half> %567, half %563, i64 2, !dbg !215
  %569 = insertelement <4 x half> %568, half %565, i64 3, !dbg !215
  %shr467.5 = lshr exact i32 %mul402.5, 2
  %add468.5 = add nuw nsw i32 %shr467.5, %shr465
  %cmp469.5 = icmp ult i32 %add468.5, 256
  %conv479.5 = zext nneg i32 %mul402.5 to i64
  br i1 %cmp469.5, label %if.then470.5, label %if.end504.5, !dbg !216

if.then470.5:                                     ; preds = %if.then407.5
  %570 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.5 = shl nuw nsw i64 %conv479.5, 7, !dbg !217
  %571 = getelementptr inbounds i8, ptr addrspace(4) %570, i64 %.idx983.5, !dbg !217
  %condval_2.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %571, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %571, i64 4, !dbg !218
  %condval_2.sroa.5.0.copyload.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.5, align 4, !dbg !218, !tbaa !30
  br label %if.end504.5, !dbg !219

if.end504.5:                                      ; preds = %if.then470.5, %if.then407.5
  %condval_2.sroa.5.0.5 = phi i32 [ %condval_2.sroa.5.0.copyload.5, %if.then470.5 ], [ 0, %if.then407.5 ], !dbg !83
  %condval_2.sroa.0.0.5 = phi i32 [ %condval_2.sroa.0.0.copyload.5, %if.then470.5 ], [ 0, %if.then407.5 ], !dbg !83
  br i1 %cmp469.5, label %if.then470.1.5, label %if.end504.1.5, !dbg !216

if.then470.1.5:                                   ; preds = %if.end504.5
  %572 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.1.5 = shl nuw nsw i64 %conv479.5, 7, !dbg !217
  %573 = getelementptr inbounds i8, ptr addrspace(4) %572, i64 %.idx983.1.5, !dbg !217
  %add.ptr490.1.5 = getelementptr inbounds i8, ptr addrspace(4) %573, i64 128, !dbg !217
  %condval_2.sroa.0.0.copyload.1.5 = load i32, ptr addrspace(4) %add.ptr490.1.5, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %573, i64 132, !dbg !218
  %condval_2.sroa.5.0.copyload.1.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.1.5, align 4, !dbg !218, !tbaa !30
  br label %if.end504.1.5, !dbg !219

if.end504.1.5:                                    ; preds = %if.then470.1.5, %if.end504.5
  %condval_2.sroa.5.0.1.5 = phi i32 [ %condval_2.sroa.5.0.copyload.1.5, %if.then470.1.5 ], [ 0, %if.end504.5 ], !dbg !83
  %condval_2.sroa.0.0.1.5 = phi i32 [ %condval_2.sroa.0.0.copyload.1.5, %if.then470.1.5 ], [ 0, %if.end504.5 ], !dbg !83
  br i1 %cmp469.5, label %if.then470.2.5, label %if.end504.2.5, !dbg !216

if.then470.2.5:                                   ; preds = %if.end504.1.5
  %574 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.2.5 = shl nuw nsw i64 %conv479.5, 7, !dbg !217
  %575 = getelementptr inbounds i8, ptr addrspace(4) %574, i64 %.idx983.2.5, !dbg !217
  %add.ptr490.2.5 = getelementptr inbounds i8, ptr addrspace(4) %575, i64 256, !dbg !217
  %condval_2.sroa.0.0.copyload.2.5 = load i32, ptr addrspace(4) %add.ptr490.2.5, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.2.5 = getelementptr inbounds i8, ptr addrspace(4) %575, i64 260, !dbg !218
  %condval_2.sroa.5.0.copyload.2.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.2.5, align 4, !dbg !218, !tbaa !30
  br label %if.end504.2.5, !dbg !219

if.end504.2.5:                                    ; preds = %if.then470.2.5, %if.end504.1.5
  %condval_2.sroa.5.0.2.5 = phi i32 [ %condval_2.sroa.5.0.copyload.2.5, %if.then470.2.5 ], [ 0, %if.end504.1.5 ], !dbg !83
  %condval_2.sroa.0.0.2.5 = phi i32 [ %condval_2.sroa.0.0.copyload.2.5, %if.then470.2.5 ], [ 0, %if.end504.1.5 ], !dbg !83
  br i1 %cmp469.5, label %if.then470.3.5, label %if.end504.3.5, !dbg !216

if.then470.3.5:                                   ; preds = %if.end504.2.5
  %576 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.3.5 = shl nuw nsw i64 %conv479.5, 7, !dbg !217
  %577 = getelementptr inbounds i8, ptr addrspace(4) %576, i64 %.idx983.3.5, !dbg !217
  %add.ptr490.3.5 = getelementptr inbounds i8, ptr addrspace(4) %577, i64 384, !dbg !217
  %condval_2.sroa.0.0.copyload.3.5 = load i32, ptr addrspace(4) %add.ptr490.3.5, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.3.5 = getelementptr inbounds i8, ptr addrspace(4) %577, i64 388, !dbg !218
  %condval_2.sroa.5.0.copyload.3.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.3.5, align 4, !dbg !218, !tbaa !30
  br label %if.end504.3.5, !dbg !219

if.end504.3.5:                                    ; preds = %if.then470.3.5, %if.end504.2.5
  %condval_2.sroa.5.0.3.5 = phi i32 [ %condval_2.sroa.5.0.copyload.3.5, %if.then470.3.5 ], [ 0, %if.end504.2.5 ], !dbg !83
  %condval_2.sroa.0.0.3.5 = phi i32 [ %condval_2.sroa.0.0.copyload.3.5, %if.then470.3.5 ], [ 0, %if.end504.2.5 ], !dbg !83
  %578 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul534, !dbg !220
  %add.ptr545.idx.5 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.5 = getelementptr inbounds i8, ptr addrspace(3) %578, i32 %add.ptr545.idx.5, !dbg !220
  %579 = and i32 %condval_2.sroa.0.0.3.5, 65535, !dbg !221
  %v_column_local.sroa.130.0.insert.ext1695 = zext nneg i32 %579 to i64, !dbg !221
  %v_column_local.sroa.130.0.insert.shift1696 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1695, 48, !dbg !221
  %580 = and i32 %condval_2.sroa.0.0.2.5, 65535, !dbg !221
  %v_column_local.sroa.98.0.insert.ext1540 = zext nneg i32 %580 to i64, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1541 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1540, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1543 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1696, %v_column_local.sroa.98.0.insert.shift1541, !dbg !221
  %581 = shl i32 %condval_2.sroa.0.0.1.5, 16, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1386 = zext i32 %581 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1388 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1543, %v_column_local.sroa.66.0.insert.shift1386, !dbg !221
  %582 = and i32 %condval_2.sroa.0.0.5, 65535, !dbg !221
  %v_column_local.sroa.0.0.insert.ext1242 = zext nneg i32 %582 to i64, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1244 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1388, %v_column_local.sroa.0.0.insert.ext1242, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1244, ptr addrspace(3) %add.ptr545.5, align 8, !dbg !221
  %v_tile_local.sroa.0.2.extract.shift1841 = lshr i32 %condval_2.sroa.0.0.5, 16, !dbg !222
  %v_tile_local.sroa.0.2.extract.trunc1842 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1841 to i64, !dbg !222
  %v_tile_local.sroa.50.10.extract.shift1911 = and i32 %condval_2.sroa.0.0.1.5, -65536, !dbg !221
  %v_tile_local.sroa.98.18.extract.shift1981 = lshr i32 %condval_2.sroa.0.0.2.5, 16, !dbg !222
  %v_tile_local.sroa.98.18.extract.trunc1982 = zext nneg i32 %v_tile_local.sroa.98.18.extract.shift1981 to i64, !dbg !222
  %v_tile_local.sroa.146.26.extract.shift2051 = lshr i32 %condval_2.sroa.0.0.3.5, 16, !dbg !222
  %v_tile_local.sroa.146.26.extract.trunc2052 = zext nneg i32 %v_tile_local.sroa.146.26.extract.shift2051 to i64, !dbg !222
  %add535.1.5 = or disjoint i32 %mul534, 256, !dbg !223
  %583 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.1.5, !dbg !220
  %xor541.1.5 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.1.5 = xor i32 %xor541.1.5, 8, !dbg !220
  %add.ptr545.1.5 = getelementptr inbounds i8, ptr addrspace(3) %583, i32 %add.ptr545.idx.1.5, !dbg !220
  %v_column_local.sroa.130.0.insert.shift1701 = shl nuw i64 %v_tile_local.sroa.146.26.extract.trunc2052, 48, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1546 = shl nuw nsw i64 %v_tile_local.sroa.98.18.extract.trunc1982, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1548 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1701, %v_column_local.sroa.98.0.insert.shift1546, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1391 = zext i32 %v_tile_local.sroa.50.10.extract.shift1911 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1393 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1548, %v_column_local.sroa.66.0.insert.shift1391, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1248 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1393, %v_tile_local.sroa.0.2.extract.trunc1842, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1248, ptr addrspace(3) %add.ptr545.1.5, align 8, !dbg !221
  %add535.2.5 = or disjoint i32 %mul534, 512, !dbg !223
  %584 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.2.5, !dbg !220
  %xor541.2.5 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.2.5 = xor i32 %xor541.2.5, 16, !dbg !220
  %add.ptr545.2.5 = getelementptr inbounds i8, ptr addrspace(3) %584, i32 %add.ptr545.idx.2.5, !dbg !220
  %585 = and i32 %condval_2.sroa.5.0.3.5, 65535, !dbg !221
  %v_column_local.sroa.130.0.insert.ext1705 = zext nneg i32 %585 to i64, !dbg !221
  %v_column_local.sroa.130.0.insert.shift1706 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1705, 48, !dbg !221
  %586 = and i32 %condval_2.sroa.5.0.2.5, 65535, !dbg !221
  %v_column_local.sroa.98.0.insert.ext1550 = zext nneg i32 %586 to i64, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1551 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1550, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1553 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1706, %v_column_local.sroa.98.0.insert.shift1551, !dbg !221
  %587 = shl i32 %condval_2.sroa.5.0.1.5, 16, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1396 = zext i32 %587 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1398 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1553, %v_column_local.sroa.66.0.insert.shift1396, !dbg !221
  %588 = and i32 %condval_2.sroa.5.0.5, 65535, !dbg !221
  %v_column_local.sroa.0.0.insert.ext1250 = zext nneg i32 %588 to i64, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1252 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1398, %v_column_local.sroa.0.0.insert.ext1250, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1252, ptr addrspace(3) %add.ptr545.2.5, align 8, !dbg !221
  %v_tile_local.sroa.26.6.extract.shift1876 = lshr i32 %condval_2.sroa.5.0.5, 16, !dbg !222
  %v_tile_local.sroa.26.6.extract.trunc1877 = zext nneg i32 %v_tile_local.sroa.26.6.extract.shift1876 to i64, !dbg !222
  %v_tile_local.sroa.74.14.extract.shift1946 = and i32 %condval_2.sroa.5.0.1.5, -65536, !dbg !221
  %v_tile_local.sroa.122.22.extract.shift2016 = lshr i32 %condval_2.sroa.5.0.2.5, 16, !dbg !222
  %v_tile_local.sroa.122.22.extract.trunc2017 = zext nneg i32 %v_tile_local.sroa.122.22.extract.shift2016 to i64, !dbg !222
  %v_tile_local.sroa.170.30.extract.shift2086 = lshr i32 %condval_2.sroa.5.0.3.5, 16, !dbg !222
  %v_tile_local.sroa.170.30.extract.trunc2087 = zext nneg i32 %v_tile_local.sroa.170.30.extract.shift2086 to i64, !dbg !222
  %add535.3.5 = or disjoint i32 %mul534, 768, !dbg !223
  %589 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.3.5, !dbg !220
  %xor541.3.5 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.3.5 = xor i32 %xor541.3.5, 24, !dbg !220
  %add.ptr545.3.5 = getelementptr inbounds i8, ptr addrspace(3) %589, i32 %add.ptr545.idx.3.5, !dbg !220
  %v_column_local.sroa.130.0.insert.shift1711 = shl nuw i64 %v_tile_local.sroa.170.30.extract.trunc2087, 48, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1556 = shl nuw nsw i64 %v_tile_local.sroa.122.22.extract.trunc2017, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1558 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1711, %v_column_local.sroa.98.0.insert.shift1556, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1401 = zext i32 %v_tile_local.sroa.74.14.extract.shift1946 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1403 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1558, %v_column_local.sroa.66.0.insert.shift1401, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1256 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1403, %v_tile_local.sroa.26.6.extract.trunc1877, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1256, ptr addrspace(3) %add.ptr545.3.5, align 8, !dbg !221
  fence syncscope("warp") release, !dbg !224
  tail call void @llvm.mxc.barrier.warp(), !dbg !227
  fence syncscope("warp") acquire, !dbg !228
  %add562.5 = or disjoint i32 %mul555, %mul561, !dbg !229
  %590 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.5, !dbg !230
  %add.ptr572.idx.5 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.5 = getelementptr inbounds i8, ptr addrspace(3) %590, i32 %add.ptr572.idx.5, !dbg !230
  %591 = load <4 x half>, ptr addrspace(3) %add.ptr572.5, align 8, !dbg !231
  %add557.1.5 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.1.5 = or disjoint i32 %add557.1.5, 64, !dbg !229
  %592 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.1.5, !dbg !230
  %xor568.1.5 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.1.5 = xor i32 %xor568.1.5, 8, !dbg !230
  %add.ptr572.1.5 = getelementptr inbounds i8, ptr addrspace(3) %592, i32 %add.ptr572.idx.1.5, !dbg !230
  %593 = load <4 x half>, ptr addrspace(3) %add.ptr572.1.5, align 8, !dbg !231
  %add557.2.5 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.2.5 = or disjoint i32 %add557.2.5, 128, !dbg !229
  %594 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.2.5, !dbg !230
  %xor568.2.5 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.2.5 = xor i32 %xor568.2.5, 16, !dbg !230
  %add.ptr572.2.5 = getelementptr inbounds i8, ptr addrspace(3) %594, i32 %add.ptr572.idx.2.5, !dbg !230
  %595 = load <4 x half>, ptr addrspace(3) %add.ptr572.2.5, align 8, !dbg !231
  %add557.3.5 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.3.5 = or disjoint i32 %add557.3.5, 192, !dbg !229
  %596 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.3.5, !dbg !230
  %xor568.3.5 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.3.5 = xor i32 %xor568.3.5, 24, !dbg !230
  %add.ptr572.3.5 = getelementptr inbounds i8, ptr addrspace(3) %596, i32 %add.ptr572.idx.3.5, !dbg !230
  %597 = load <4 x half>, ptr addrspace(3) %add.ptr572.3.5, align 8, !dbg !231
  %598 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %591, <4 x half> %569, <4 x float> %output_acc.sroa.0.4), !dbg !232
  %599 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %593, <4 x half> %569, <4 x float> %output_acc.sroa.34.4), !dbg !232
  %600 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %595, <4 x half> %569, <4 x float> %output_acc.sroa.66.4), !dbg !232
  %601 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %597, <4 x half> %569, <4 x float> %output_acc.sroa.98.4), !dbg !232
  br label %if.end599.5, !dbg !233

if.end599.5:                                      ; preds = %if.end504.3.5, %if.end599.4
  %bc2842 = phi <4 x half> [ %220, %if.end599.4 ], [ %569, %if.end504.3.5 ], !dbg !83
  %output_acc.sroa.98.5 = phi <4 x float> [ %output_acc.sroa.98.4, %if.end599.4 ], [ %601, %if.end504.3.5 ], !dbg !83
  %output_acc.sroa.66.5 = phi <4 x float> [ %output_acc.sroa.66.4, %if.end599.4 ], [ %600, %if.end504.3.5 ], !dbg !83
  %output_acc.sroa.34.5 = phi <4 x float> [ %output_acc.sroa.34.4, %if.end599.4 ], [ %599, %if.end504.3.5 ], !dbg !83
  %output_acc.sroa.0.5 = phi <4 x float> [ %output_acc.sroa.0.4, %if.end599.4 ], [ %598, %if.end504.3.5 ], !dbg !83
  %602 = load i32, ptr addrspace(1) %arrayidx.6, align 4, !dbg !166, !tbaa !30
  %mul402.6 = shl nsw i32 %602, 4, !dbg !167
  %cmp403.6 = icmp slt i32 %602, 0, !dbg !168
  %cmp406.not.6 = icmp sgt i32 %mul402.6, %1
  %or.cond941.6 = select i1 %cmp403.6, i1 true, i1 %cmp406.not.6, !dbg !169
  br i1 %or.cond941.6, label %if.end599.6, label %if.then407.6, !dbg !169

if.then407.6:                                     ; preds = %if.end599.5
  fence syncscope("warp") release, !dbg !170
  tail call void @llvm.mxc.barrier.warp(), !dbg !173
  fence syncscope("warp") acquire, !dbg !174
  %sub411.6 = fsub contract float %max_cache.sroa.26.0, %294, !dbg !175
  %mul412.6 = fmul contract float %sub411.6, 0x3FC7154760000000, !dbg !176
  %cmp.i.i895.6 = fcmp contract olt float %mul412.6, -1.260000e+02, !dbg !177
  %cond.i.i896.6 = select contract i1 %cmp.i.i895.6, float 6.400000e+01, float 0.000000e+00, !dbg !177
  %add.i.i897.6 = fadd contract float %mul412.6, %cond.i.i896.6, !dbg !177
  %603 = tail call contract float @llvm.exp2.f32(float %add.i.i897.6), !dbg !177
  %cond2.i.i898.6 = select contract i1 %cmp.i.i895.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !177
  %mul.i.i899.6 = fmul contract float %cond2.i.i898.6, %603, !dbg !177
  %604 = extractelement <4 x half> %253, i64 0, !dbg !179
  %conv.i900.6 = fpext half %604 to float, !dbg !179
  %605 = extractelement <4 x half> %253, i64 1, !dbg !182
  %conv6.i.6 = fpext half %605 to float, !dbg !182
  %606 = extractelement <4 x half> %253, i64 2, !dbg !183
  %conv.i902.6 = fpext half %606 to float, !dbg !183
  %607 = extractelement <4 x half> %253, i64 3, !dbg !185
  %conv6.i904.6 = fpext half %607 to float, !dbg !185
  %mul435.6 = fmul contract float %mul.i.i899.6, %conv.i900.6, !dbg !186
  %mul438.6 = fmul contract float %mul.i.i899.6, %conv6.i.6, !dbg !187
  %mul441.6 = fmul contract float %mul.i.i899.6, %conv.i902.6, !dbg !188
  %mul444.6 = fmul contract float %mul.i.i899.6, %conv6.i904.6, !dbg !189
  %608 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !190, !noalias !197
  %609 = fptrunc float %mul435.6 to half, !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %608), !dbg !190, !noalias !197
  %610 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !202, !noalias !197
  %611 = fptrunc float %mul438.6 to half, !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %610), !dbg !202, !noalias !197
  %612 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !204
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !204, !noalias !208
  %613 = fptrunc float %mul441.6 to half, !dbg !204
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %612), !dbg !204, !noalias !208
  %614 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !213, !noalias !208
  %615 = fptrunc float %mul444.6 to half, !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %614), !dbg !213, !noalias !208
  %616 = insertelement <4 x half> poison, half %609, i64 0, !dbg !215
  %617 = insertelement <4 x half> %616, half %611, i64 1, !dbg !215
  %618 = insertelement <4 x half> %617, half %613, i64 2, !dbg !215
  %619 = insertelement <4 x half> %618, half %615, i64 3, !dbg !215
  %shr467.6 = lshr exact i32 %mul402.6, 2
  %add468.6 = add nuw nsw i32 %shr467.6, %shr465
  %cmp469.6 = icmp ult i32 %add468.6, 256
  %conv479.6 = zext nneg i32 %mul402.6 to i64
  br i1 %cmp469.6, label %if.then470.6, label %if.end504.6, !dbg !216

if.then470.6:                                     ; preds = %if.then407.6
  %620 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.6 = shl nuw nsw i64 %conv479.6, 7, !dbg !217
  %621 = getelementptr inbounds i8, ptr addrspace(4) %620, i64 %.idx983.6, !dbg !217
  %condval_2.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %621, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %621, i64 4, !dbg !218
  %condval_2.sroa.5.0.copyload.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.6, align 4, !dbg !218, !tbaa !30
  br label %if.end504.6, !dbg !219

if.end504.6:                                      ; preds = %if.then470.6, %if.then407.6
  %condval_2.sroa.5.0.6 = phi i32 [ %condval_2.sroa.5.0.copyload.6, %if.then470.6 ], [ 0, %if.then407.6 ], !dbg !83
  %condval_2.sroa.0.0.6 = phi i32 [ %condval_2.sroa.0.0.copyload.6, %if.then470.6 ], [ 0, %if.then407.6 ], !dbg !83
  br i1 %cmp469.6, label %if.then470.1.6, label %if.end504.1.6, !dbg !216

if.then470.1.6:                                   ; preds = %if.end504.6
  %622 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.1.6 = shl nuw nsw i64 %conv479.6, 7, !dbg !217
  %623 = getelementptr inbounds i8, ptr addrspace(4) %622, i64 %.idx983.1.6, !dbg !217
  %add.ptr490.1.6 = getelementptr inbounds i8, ptr addrspace(4) %623, i64 128, !dbg !217
  %condval_2.sroa.0.0.copyload.1.6 = load i32, ptr addrspace(4) %add.ptr490.1.6, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %623, i64 132, !dbg !218
  %condval_2.sroa.5.0.copyload.1.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.1.6, align 4, !dbg !218, !tbaa !30
  br label %if.end504.1.6, !dbg !219

if.end504.1.6:                                    ; preds = %if.then470.1.6, %if.end504.6
  %condval_2.sroa.5.0.1.6 = phi i32 [ %condval_2.sroa.5.0.copyload.1.6, %if.then470.1.6 ], [ 0, %if.end504.6 ], !dbg !83
  %condval_2.sroa.0.0.1.6 = phi i32 [ %condval_2.sroa.0.0.copyload.1.6, %if.then470.1.6 ], [ 0, %if.end504.6 ], !dbg !83
  br i1 %cmp469.6, label %if.then470.2.6, label %if.end504.2.6, !dbg !216

if.then470.2.6:                                   ; preds = %if.end504.1.6
  %624 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.2.6 = shl nuw nsw i64 %conv479.6, 7, !dbg !217
  %625 = getelementptr inbounds i8, ptr addrspace(4) %624, i64 %.idx983.2.6, !dbg !217
  %add.ptr490.2.6 = getelementptr inbounds i8, ptr addrspace(4) %625, i64 256, !dbg !217
  %condval_2.sroa.0.0.copyload.2.6 = load i32, ptr addrspace(4) %add.ptr490.2.6, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.2.6 = getelementptr inbounds i8, ptr addrspace(4) %625, i64 260, !dbg !218
  %condval_2.sroa.5.0.copyload.2.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.2.6, align 4, !dbg !218, !tbaa !30
  br label %if.end504.2.6, !dbg !219

if.end504.2.6:                                    ; preds = %if.then470.2.6, %if.end504.1.6
  %condval_2.sroa.5.0.2.6 = phi i32 [ %condval_2.sroa.5.0.copyload.2.6, %if.then470.2.6 ], [ 0, %if.end504.1.6 ], !dbg !83
  %condval_2.sroa.0.0.2.6 = phi i32 [ %condval_2.sroa.0.0.copyload.2.6, %if.then470.2.6 ], [ 0, %if.end504.1.6 ], !dbg !83
  br i1 %cmp469.6, label %if.then470.3.6, label %if.end504.3.6, !dbg !216

if.then470.3.6:                                   ; preds = %if.end504.2.6
  %626 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.3.6 = shl nuw nsw i64 %conv479.6, 7, !dbg !217
  %627 = getelementptr inbounds i8, ptr addrspace(4) %626, i64 %.idx983.3.6, !dbg !217
  %add.ptr490.3.6 = getelementptr inbounds i8, ptr addrspace(4) %627, i64 384, !dbg !217
  %condval_2.sroa.0.0.copyload.3.6 = load i32, ptr addrspace(4) %add.ptr490.3.6, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.3.6 = getelementptr inbounds i8, ptr addrspace(4) %627, i64 388, !dbg !218
  %condval_2.sroa.5.0.copyload.3.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.3.6, align 4, !dbg !218, !tbaa !30
  br label %if.end504.3.6, !dbg !219

if.end504.3.6:                                    ; preds = %if.then470.3.6, %if.end504.2.6
  %condval_2.sroa.5.0.3.6 = phi i32 [ %condval_2.sroa.5.0.copyload.3.6, %if.then470.3.6 ], [ 0, %if.end504.2.6 ], !dbg !83
  %condval_2.sroa.0.0.3.6 = phi i32 [ %condval_2.sroa.0.0.copyload.3.6, %if.then470.3.6 ], [ 0, %if.end504.2.6 ], !dbg !83
  %628 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul534, !dbg !220
  %add.ptr545.idx.6 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.6 = getelementptr inbounds i8, ptr addrspace(3) %628, i32 %add.ptr545.idx.6, !dbg !220
  %629 = and i32 %condval_2.sroa.0.0.3.6, 65535, !dbg !221
  %v_column_local.sroa.130.0.insert.ext1715 = zext nneg i32 %629 to i64, !dbg !221
  %v_column_local.sroa.130.0.insert.shift1716 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1715, 48, !dbg !221
  %630 = and i32 %condval_2.sroa.0.0.2.6, 65535, !dbg !221
  %v_column_local.sroa.98.0.insert.ext1560 = zext nneg i32 %630 to i64, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1561 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1560, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1563 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1716, %v_column_local.sroa.98.0.insert.shift1561, !dbg !221
  %631 = shl i32 %condval_2.sroa.0.0.1.6, 16, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1406 = zext i32 %631 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1408 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1563, %v_column_local.sroa.66.0.insert.shift1406, !dbg !221
  %632 = and i32 %condval_2.sroa.0.0.6, 65535, !dbg !221
  %v_column_local.sroa.0.0.insert.ext1258 = zext nneg i32 %632 to i64, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1260 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1408, %v_column_local.sroa.0.0.insert.ext1258, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1260, ptr addrspace(3) %add.ptr545.6, align 8, !dbg !221
  %v_tile_local.sroa.0.2.extract.shift1844 = lshr i32 %condval_2.sroa.0.0.6, 16, !dbg !222
  %v_tile_local.sroa.0.2.extract.trunc1845 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1844 to i64, !dbg !222
  %v_tile_local.sroa.50.10.extract.shift1914 = and i32 %condval_2.sroa.0.0.1.6, -65536, !dbg !221
  %v_tile_local.sroa.98.18.extract.shift1984 = lshr i32 %condval_2.sroa.0.0.2.6, 16, !dbg !222
  %v_tile_local.sroa.98.18.extract.trunc1985 = zext nneg i32 %v_tile_local.sroa.98.18.extract.shift1984 to i64, !dbg !222
  %v_tile_local.sroa.146.26.extract.shift2054 = lshr i32 %condval_2.sroa.0.0.3.6, 16, !dbg !222
  %v_tile_local.sroa.146.26.extract.trunc2055 = zext nneg i32 %v_tile_local.sroa.146.26.extract.shift2054 to i64, !dbg !222
  %add535.1.6 = or disjoint i32 %mul534, 256, !dbg !223
  %633 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.1.6, !dbg !220
  %xor541.1.6 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.1.6 = xor i32 %xor541.1.6, 8, !dbg !220
  %add.ptr545.1.6 = getelementptr inbounds i8, ptr addrspace(3) %633, i32 %add.ptr545.idx.1.6, !dbg !220
  %v_column_local.sroa.130.0.insert.shift1721 = shl nuw i64 %v_tile_local.sroa.146.26.extract.trunc2055, 48, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1566 = shl nuw nsw i64 %v_tile_local.sroa.98.18.extract.trunc1985, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1568 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1721, %v_column_local.sroa.98.0.insert.shift1566, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1411 = zext i32 %v_tile_local.sroa.50.10.extract.shift1914 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1413 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1568, %v_column_local.sroa.66.0.insert.shift1411, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1264 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1413, %v_tile_local.sroa.0.2.extract.trunc1845, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1264, ptr addrspace(3) %add.ptr545.1.6, align 8, !dbg !221
  %add535.2.6 = or disjoint i32 %mul534, 512, !dbg !223
  %634 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.2.6, !dbg !220
  %xor541.2.6 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.2.6 = xor i32 %xor541.2.6, 16, !dbg !220
  %add.ptr545.2.6 = getelementptr inbounds i8, ptr addrspace(3) %634, i32 %add.ptr545.idx.2.6, !dbg !220
  %635 = and i32 %condval_2.sroa.5.0.3.6, 65535, !dbg !221
  %v_column_local.sroa.130.0.insert.ext1725 = zext nneg i32 %635 to i64, !dbg !221
  %v_column_local.sroa.130.0.insert.shift1726 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1725, 48, !dbg !221
  %636 = and i32 %condval_2.sroa.5.0.2.6, 65535, !dbg !221
  %v_column_local.sroa.98.0.insert.ext1570 = zext nneg i32 %636 to i64, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1571 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1570, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1573 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1726, %v_column_local.sroa.98.0.insert.shift1571, !dbg !221
  %637 = shl i32 %condval_2.sroa.5.0.1.6, 16, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1416 = zext i32 %637 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1418 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1573, %v_column_local.sroa.66.0.insert.shift1416, !dbg !221
  %638 = and i32 %condval_2.sroa.5.0.6, 65535, !dbg !221
  %v_column_local.sroa.0.0.insert.ext1266 = zext nneg i32 %638 to i64, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1268 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1418, %v_column_local.sroa.0.0.insert.ext1266, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1268, ptr addrspace(3) %add.ptr545.2.6, align 8, !dbg !221
  %v_tile_local.sroa.26.6.extract.shift1879 = lshr i32 %condval_2.sroa.5.0.6, 16, !dbg !222
  %v_tile_local.sroa.26.6.extract.trunc1880 = zext nneg i32 %v_tile_local.sroa.26.6.extract.shift1879 to i64, !dbg !222
  %v_tile_local.sroa.74.14.extract.shift1949 = and i32 %condval_2.sroa.5.0.1.6, -65536, !dbg !221
  %v_tile_local.sroa.122.22.extract.shift2019 = lshr i32 %condval_2.sroa.5.0.2.6, 16, !dbg !222
  %v_tile_local.sroa.122.22.extract.trunc2020 = zext nneg i32 %v_tile_local.sroa.122.22.extract.shift2019 to i64, !dbg !222
  %v_tile_local.sroa.170.30.extract.shift2089 = lshr i32 %condval_2.sroa.5.0.3.6, 16, !dbg !222
  %v_tile_local.sroa.170.30.extract.trunc2090 = zext nneg i32 %v_tile_local.sroa.170.30.extract.shift2089 to i64, !dbg !222
  %add535.3.6 = or disjoint i32 %mul534, 768, !dbg !223
  %639 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.3.6, !dbg !220
  %xor541.3.6 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.3.6 = xor i32 %xor541.3.6, 24, !dbg !220
  %add.ptr545.3.6 = getelementptr inbounds i8, ptr addrspace(3) %639, i32 %add.ptr545.idx.3.6, !dbg !220
  %v_column_local.sroa.130.0.insert.shift1731 = shl nuw i64 %v_tile_local.sroa.170.30.extract.trunc2090, 48, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1576 = shl nuw nsw i64 %v_tile_local.sroa.122.22.extract.trunc2020, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1578 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1731, %v_column_local.sroa.98.0.insert.shift1576, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1421 = zext i32 %v_tile_local.sroa.74.14.extract.shift1949 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1423 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1578, %v_column_local.sroa.66.0.insert.shift1421, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1272 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1423, %v_tile_local.sroa.26.6.extract.trunc1880, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1272, ptr addrspace(3) %add.ptr545.3.6, align 8, !dbg !221
  fence syncscope("warp") release, !dbg !224
  tail call void @llvm.mxc.barrier.warp(), !dbg !227
  fence syncscope("warp") acquire, !dbg !228
  %add562.6 = or disjoint i32 %mul555, %mul561, !dbg !229
  %640 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.6, !dbg !230
  %add.ptr572.idx.6 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.6 = getelementptr inbounds i8, ptr addrspace(3) %640, i32 %add.ptr572.idx.6, !dbg !230
  %641 = load <4 x half>, ptr addrspace(3) %add.ptr572.6, align 8, !dbg !231
  %add557.1.6 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.1.6 = or disjoint i32 %add557.1.6, 64, !dbg !229
  %642 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.1.6, !dbg !230
  %xor568.1.6 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.1.6 = xor i32 %xor568.1.6, 8, !dbg !230
  %add.ptr572.1.6 = getelementptr inbounds i8, ptr addrspace(3) %642, i32 %add.ptr572.idx.1.6, !dbg !230
  %643 = load <4 x half>, ptr addrspace(3) %add.ptr572.1.6, align 8, !dbg !231
  %add557.2.6 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.2.6 = or disjoint i32 %add557.2.6, 128, !dbg !229
  %644 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.2.6, !dbg !230
  %xor568.2.6 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.2.6 = xor i32 %xor568.2.6, 16, !dbg !230
  %add.ptr572.2.6 = getelementptr inbounds i8, ptr addrspace(3) %644, i32 %add.ptr572.idx.2.6, !dbg !230
  %645 = load <4 x half>, ptr addrspace(3) %add.ptr572.2.6, align 8, !dbg !231
  %add557.3.6 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.3.6 = or disjoint i32 %add557.3.6, 192, !dbg !229
  %646 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.3.6, !dbg !230
  %xor568.3.6 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.3.6 = xor i32 %xor568.3.6, 24, !dbg !230
  %add.ptr572.3.6 = getelementptr inbounds i8, ptr addrspace(3) %646, i32 %add.ptr572.idx.3.6, !dbg !230
  %647 = load <4 x half>, ptr addrspace(3) %add.ptr572.3.6, align 8, !dbg !231
  %648 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %641, <4 x half> %619, <4 x float> %output_acc.sroa.0.5), !dbg !232
  %649 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %643, <4 x half> %619, <4 x float> %output_acc.sroa.34.5), !dbg !232
  %650 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %645, <4 x half> %619, <4 x float> %output_acc.sroa.66.5), !dbg !232
  %651 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %647, <4 x half> %619, <4 x float> %output_acc.sroa.98.5), !dbg !232
  br label %if.end599.6, !dbg !233

if.end599.6:                                      ; preds = %if.end504.3.6, %if.end599.5
  %bc2846 = phi <4 x half> [ %253, %if.end599.5 ], [ %619, %if.end504.3.6 ], !dbg !83
  %output_acc.sroa.98.6 = phi <4 x float> [ %output_acc.sroa.98.5, %if.end599.5 ], [ %651, %if.end504.3.6 ], !dbg !83
  %output_acc.sroa.66.6 = phi <4 x float> [ %output_acc.sroa.66.5, %if.end599.5 ], [ %650, %if.end504.3.6 ], !dbg !83
  %output_acc.sroa.34.6 = phi <4 x float> [ %output_acc.sroa.34.5, %if.end599.5 ], [ %649, %if.end504.3.6 ], !dbg !83
  %output_acc.sroa.0.6 = phi <4 x float> [ %output_acc.sroa.0.5, %if.end599.5 ], [ %648, %if.end504.3.6 ], !dbg !83
  %652 = load i32, ptr addrspace(1) %arrayidx.7, align 4, !dbg !166, !tbaa !30
  %mul402.7 = shl nsw i32 %652, 4, !dbg !167
  %cmp403.7 = icmp slt i32 %652, 0, !dbg !168
  %cmp406.not.7 = icmp sgt i32 %mul402.7, %1
  %or.cond941.7 = select i1 %cmp403.7, i1 true, i1 %cmp406.not.7, !dbg !169
  br i1 %or.cond941.7, label %if.end599.7, label %if.then407.7, !dbg !169

if.then407.7:                                     ; preds = %if.end599.6
  fence syncscope("warp") release, !dbg !170
  tail call void @llvm.mxc.barrier.warp(), !dbg !173
  fence syncscope("warp") acquire, !dbg !174
  %sub411.7 = fsub contract float %max_cache.sroa.30.0, %294, !dbg !175
  %mul412.7 = fmul contract float %sub411.7, 0x3FC7154760000000, !dbg !176
  %cmp.i.i895.7 = fcmp contract olt float %mul412.7, -1.260000e+02, !dbg !177
  %cond.i.i896.7 = select contract i1 %cmp.i.i895.7, float 6.400000e+01, float 0.000000e+00, !dbg !177
  %add.i.i897.7 = fadd contract float %mul412.7, %cond.i.i896.7, !dbg !177
  %653 = tail call contract float @llvm.exp2.f32(float %add.i.i897.7), !dbg !177
  %cond2.i.i898.7 = select contract i1 %cmp.i.i895.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !177
  %mul.i.i899.7 = fmul contract float %cond2.i.i898.7, %653, !dbg !177
  %654 = extractelement <4 x half> %286, i64 0, !dbg !179
  %conv.i900.7 = fpext half %654 to float, !dbg !179
  %655 = extractelement <4 x half> %286, i64 1, !dbg !182
  %conv6.i.7 = fpext half %655 to float, !dbg !182
  %656 = extractelement <4 x half> %286, i64 2, !dbg !183
  %conv.i902.7 = fpext half %656 to float, !dbg !183
  %657 = extractelement <4 x half> %286, i64 3, !dbg !185
  %conv6.i904.7 = fpext half %657 to float, !dbg !185
  %mul435.7 = fmul contract float %mul.i.i899.7, %conv.i900.7, !dbg !186
  %mul438.7 = fmul contract float %mul.i.i899.7, %conv6.i.7, !dbg !187
  %mul441.7 = fmul contract float %mul.i.i899.7, %conv.i902.7, !dbg !188
  %mul444.7 = fmul contract float %mul.i.i899.7, %conv6.i904.7, !dbg !189
  %658 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !190, !noalias !197
  %659 = fptrunc float %mul435.7 to half, !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %658), !dbg !190, !noalias !197
  %660 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !202, !noalias !197
  %661 = fptrunc float %mul438.7 to half, !dbg !202
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %660), !dbg !202, !noalias !197
  %662 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !204
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !204, !noalias !208
  %663 = fptrunc float %mul441.7 to half, !dbg !204
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %662), !dbg !204, !noalias !208
  %664 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !213, !noalias !208
  %665 = fptrunc float %mul444.7 to half, !dbg !213
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %664), !dbg !213, !noalias !208
  %666 = insertelement <4 x half> poison, half %659, i64 0, !dbg !215
  %667 = insertelement <4 x half> %666, half %661, i64 1, !dbg !215
  %668 = insertelement <4 x half> %667, half %663, i64 2, !dbg !215
  %669 = insertelement <4 x half> %668, half %665, i64 3, !dbg !215
  %shr467.7 = lshr exact i32 %mul402.7, 2
  %add468.7 = add nuw nsw i32 %shr467.7, %shr465
  %cmp469.7 = icmp ult i32 %add468.7, 256
  %conv479.7 = zext nneg i32 %mul402.7 to i64
  br i1 %cmp469.7, label %if.then470.7, label %if.end504.7, !dbg !216

if.then470.7:                                     ; preds = %if.then407.7
  %670 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.7 = shl nuw nsw i64 %conv479.7, 7, !dbg !217
  %671 = getelementptr inbounds i8, ptr addrspace(4) %670, i64 %.idx983.7, !dbg !217
  %condval_2.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %671, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %671, i64 4, !dbg !218
  %condval_2.sroa.5.0.copyload.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.7, align 4, !dbg !218, !tbaa !30
  br label %if.end504.7, !dbg !219

if.end504.7:                                      ; preds = %if.then470.7, %if.then407.7
  %condval_2.sroa.5.0.7 = phi i32 [ %condval_2.sroa.5.0.copyload.7, %if.then470.7 ], [ 0, %if.then407.7 ], !dbg !83
  %condval_2.sroa.0.0.7 = phi i32 [ %condval_2.sroa.0.0.copyload.7, %if.then470.7 ], [ 0, %if.then407.7 ], !dbg !83
  br i1 %cmp469.7, label %if.then470.1.7, label %if.end504.1.7, !dbg !216

if.then470.1.7:                                   ; preds = %if.end504.7
  %672 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.1.7 = shl nuw nsw i64 %conv479.7, 7, !dbg !217
  %673 = getelementptr inbounds i8, ptr addrspace(4) %672, i64 %.idx983.1.7, !dbg !217
  %add.ptr490.1.7 = getelementptr inbounds i8, ptr addrspace(4) %673, i64 128, !dbg !217
  %condval_2.sroa.0.0.copyload.1.7 = load i32, ptr addrspace(4) %add.ptr490.1.7, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %673, i64 132, !dbg !218
  %condval_2.sroa.5.0.copyload.1.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.1.7, align 4, !dbg !218, !tbaa !30
  br label %if.end504.1.7, !dbg !219

if.end504.1.7:                                    ; preds = %if.then470.1.7, %if.end504.7
  %condval_2.sroa.5.0.1.7 = phi i32 [ %condval_2.sroa.5.0.copyload.1.7, %if.then470.1.7 ], [ 0, %if.end504.7 ], !dbg !83
  %condval_2.sroa.0.0.1.7 = phi i32 [ %condval_2.sroa.0.0.copyload.1.7, %if.then470.1.7 ], [ 0, %if.end504.7 ], !dbg !83
  br i1 %cmp469.7, label %if.then470.2.7, label %if.end504.2.7, !dbg !216

if.then470.2.7:                                   ; preds = %if.end504.1.7
  %674 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.2.7 = shl nuw nsw i64 %conv479.7, 7, !dbg !217
  %675 = getelementptr inbounds i8, ptr addrspace(4) %674, i64 %.idx983.2.7, !dbg !217
  %add.ptr490.2.7 = getelementptr inbounds i8, ptr addrspace(4) %675, i64 256, !dbg !217
  %condval_2.sroa.0.0.copyload.2.7 = load i32, ptr addrspace(4) %add.ptr490.2.7, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.2.7 = getelementptr inbounds i8, ptr addrspace(4) %675, i64 260, !dbg !218
  %condval_2.sroa.5.0.copyload.2.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.2.7, align 4, !dbg !218, !tbaa !30
  br label %if.end504.2.7, !dbg !219

if.end504.2.7:                                    ; preds = %if.then470.2.7, %if.end504.1.7
  %condval_2.sroa.5.0.2.7 = phi i32 [ %condval_2.sroa.5.0.copyload.2.7, %if.then470.2.7 ], [ 0, %if.end504.1.7 ], !dbg !83
  %condval_2.sroa.0.0.2.7 = phi i32 [ %condval_2.sroa.0.0.copyload.2.7, %if.then470.2.7 ], [ 0, %if.end504.1.7 ], !dbg !83
  br i1 %cmp469.7, label %if.then470.3.7, label %if.end504.3.7, !dbg !216

if.then470.3.7:                                   ; preds = %if.end504.2.7
  %676 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add481, !dbg !217
  %.idx983.3.7 = shl nuw nsw i64 %conv479.7, 7, !dbg !217
  %677 = getelementptr inbounds i8, ptr addrspace(4) %676, i64 %.idx983.3.7, !dbg !217
  %add.ptr490.3.7 = getelementptr inbounds i8, ptr addrspace(4) %677, i64 384, !dbg !217
  %condval_2.sroa.0.0.copyload.3.7 = load i32, ptr addrspace(4) %add.ptr490.3.7, align 8, !dbg !218, !tbaa !30
  %condval_2.sroa.5.0.add.ptr490.sroa_idx.3.7 = getelementptr inbounds i8, ptr addrspace(4) %677, i64 388, !dbg !218
  %condval_2.sroa.5.0.copyload.3.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr490.sroa_idx.3.7, align 4, !dbg !218, !tbaa !30
  br label %if.end504.3.7, !dbg !219

if.end504.3.7:                                    ; preds = %if.then470.3.7, %if.end504.2.7
  %condval_2.sroa.5.0.3.7 = phi i32 [ %condval_2.sroa.5.0.copyload.3.7, %if.then470.3.7 ], [ 0, %if.end504.2.7 ], !dbg !83
  %condval_2.sroa.0.0.3.7 = phi i32 [ %condval_2.sroa.0.0.copyload.3.7, %if.then470.3.7 ], [ 0, %if.end504.2.7 ], !dbg !83
  %678 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul534, !dbg !220
  %add.ptr545.idx.7 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.7 = getelementptr inbounds i8, ptr addrspace(3) %678, i32 %add.ptr545.idx.7, !dbg !220
  %679 = and i32 %condval_2.sroa.0.0.3.7, 65535, !dbg !221
  %v_column_local.sroa.130.0.insert.ext1735 = zext nneg i32 %679 to i64, !dbg !221
  %v_column_local.sroa.130.0.insert.shift1736 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1735, 48, !dbg !221
  %680 = and i32 %condval_2.sroa.0.0.2.7, 65535, !dbg !221
  %v_column_local.sroa.98.0.insert.ext1580 = zext nneg i32 %680 to i64, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1581 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1580, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1583 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1736, %v_column_local.sroa.98.0.insert.shift1581, !dbg !221
  %681 = shl i32 %condval_2.sroa.0.0.1.7, 16, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1426 = zext i32 %681 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1428 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1583, %v_column_local.sroa.66.0.insert.shift1426, !dbg !221
  %682 = and i32 %condval_2.sroa.0.0.7, 65535, !dbg !221
  %v_column_local.sroa.0.0.insert.ext1274 = zext nneg i32 %682 to i64, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1276 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1428, %v_column_local.sroa.0.0.insert.ext1274, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1276, ptr addrspace(3) %add.ptr545.7, align 8, !dbg !221
  %v_tile_local.sroa.0.2.extract.shift1847 = lshr i32 %condval_2.sroa.0.0.7, 16, !dbg !222
  %v_tile_local.sroa.0.2.extract.trunc1848 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1847 to i64, !dbg !222
  %v_tile_local.sroa.50.10.extract.shift1917 = and i32 %condval_2.sroa.0.0.1.7, -65536, !dbg !221
  %v_tile_local.sroa.98.18.extract.shift1987 = lshr i32 %condval_2.sroa.0.0.2.7, 16, !dbg !222
  %v_tile_local.sroa.98.18.extract.trunc1988 = zext nneg i32 %v_tile_local.sroa.98.18.extract.shift1987 to i64, !dbg !222
  %v_tile_local.sroa.146.26.extract.shift2057 = lshr i32 %condval_2.sroa.0.0.3.7, 16, !dbg !222
  %v_tile_local.sroa.146.26.extract.trunc2058 = zext nneg i32 %v_tile_local.sroa.146.26.extract.shift2057 to i64, !dbg !222
  %add535.1.7 = or disjoint i32 %mul534, 256, !dbg !223
  %683 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.1.7, !dbg !220
  %xor541.1.7 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.1.7 = xor i32 %xor541.1.7, 8, !dbg !220
  %add.ptr545.1.7 = getelementptr inbounds i8, ptr addrspace(3) %683, i32 %add.ptr545.idx.1.7, !dbg !220
  %v_column_local.sroa.130.0.insert.shift1741 = shl nuw i64 %v_tile_local.sroa.146.26.extract.trunc2058, 48, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1586 = shl nuw nsw i64 %v_tile_local.sroa.98.18.extract.trunc1988, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1588 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1741, %v_column_local.sroa.98.0.insert.shift1586, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1431 = zext i32 %v_tile_local.sroa.50.10.extract.shift1917 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1433 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1588, %v_column_local.sroa.66.0.insert.shift1431, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1280 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1433, %v_tile_local.sroa.0.2.extract.trunc1848, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1280, ptr addrspace(3) %add.ptr545.1.7, align 8, !dbg !221
  %add535.2.7 = or disjoint i32 %mul534, 512, !dbg !223
  %684 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.2.7, !dbg !220
  %xor541.2.7 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.2.7 = xor i32 %xor541.2.7, 16, !dbg !220
  %add.ptr545.2.7 = getelementptr inbounds i8, ptr addrspace(3) %684, i32 %add.ptr545.idx.2.7, !dbg !220
  %685 = and i32 %condval_2.sroa.5.0.3.7, 65535, !dbg !221
  %v_column_local.sroa.130.0.insert.ext1745 = zext nneg i32 %685 to i64, !dbg !221
  %v_column_local.sroa.130.0.insert.shift1746 = shl nuw i64 %v_column_local.sroa.130.0.insert.ext1745, 48, !dbg !221
  %686 = and i32 %condval_2.sroa.5.0.2.7, 65535, !dbg !221
  %v_column_local.sroa.98.0.insert.ext1590 = zext nneg i32 %686 to i64, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1591 = shl nuw nsw i64 %v_column_local.sroa.98.0.insert.ext1590, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1593 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1746, %v_column_local.sroa.98.0.insert.shift1591, !dbg !221
  %687 = shl i32 %condval_2.sroa.5.0.1.7, 16, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1436 = zext i32 %687 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1438 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1593, %v_column_local.sroa.66.0.insert.shift1436, !dbg !221
  %688 = and i32 %condval_2.sroa.5.0.7, 65535, !dbg !221
  %v_column_local.sroa.0.0.insert.ext1282 = zext nneg i32 %688 to i64, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1284 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1438, %v_column_local.sroa.0.0.insert.ext1282, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1284, ptr addrspace(3) %add.ptr545.2.7, align 8, !dbg !221
  %v_tile_local.sroa.26.6.extract.shift1882 = lshr i32 %condval_2.sroa.5.0.7, 16, !dbg !222
  %v_tile_local.sroa.26.6.extract.trunc1883 = zext nneg i32 %v_tile_local.sroa.26.6.extract.shift1882 to i64, !dbg !222
  %v_tile_local.sroa.74.14.extract.shift1952 = and i32 %condval_2.sroa.5.0.1.7, -65536, !dbg !221
  %v_tile_local.sroa.122.22.extract.shift2022 = lshr i32 %condval_2.sroa.5.0.2.7, 16, !dbg !222
  %v_tile_local.sroa.122.22.extract.trunc2023 = zext nneg i32 %v_tile_local.sroa.122.22.extract.shift2022 to i64, !dbg !222
  %v_tile_local.sroa.170.30.extract.shift2092 = lshr i32 %condval_2.sroa.5.0.3.7, 16, !dbg !222
  %v_tile_local.sroa.170.30.extract.trunc2093 = zext nneg i32 %v_tile_local.sroa.170.30.extract.shift2092 to i64, !dbg !222
  %add535.3.7 = or disjoint i32 %mul534, 768, !dbg !223
  %689 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add535.3.7, !dbg !220
  %xor541.3.7 = shl nuw nsw i32 %xor, 3, !dbg !220
  %add.ptr545.idx.3.7 = xor i32 %xor541.3.7, 24, !dbg !220
  %add.ptr545.3.7 = getelementptr inbounds i8, ptr addrspace(3) %689, i32 %add.ptr545.idx.3.7, !dbg !220
  %v_column_local.sroa.130.0.insert.shift1751 = shl nuw i64 %v_tile_local.sroa.170.30.extract.trunc2093, 48, !dbg !221
  %v_column_local.sroa.98.0.insert.shift1596 = shl nuw nsw i64 %v_tile_local.sroa.122.22.extract.trunc2023, 32, !dbg !221
  %v_column_local.sroa.98.0.insert.insert1598 = or disjoint i64 %v_column_local.sroa.130.0.insert.shift1751, %v_column_local.sroa.98.0.insert.shift1596, !dbg !221
  %v_column_local.sroa.66.0.insert.shift1441 = zext i32 %v_tile_local.sroa.74.14.extract.shift1952 to i64, !dbg !221
  %v_column_local.sroa.66.0.insert.insert1443 = or disjoint i64 %v_column_local.sroa.98.0.insert.insert1598, %v_column_local.sroa.66.0.insert.shift1441, !dbg !221
  %v_column_local.sroa.0.0.insert.insert1288 = or disjoint i64 %v_column_local.sroa.66.0.insert.insert1443, %v_tile_local.sroa.26.6.extract.trunc1883, !dbg !221
  store i64 %v_column_local.sroa.0.0.insert.insert1288, ptr addrspace(3) %add.ptr545.3.7, align 8, !dbg !221
  fence syncscope("warp") release, !dbg !224
  tail call void @llvm.mxc.barrier.warp(), !dbg !227
  fence syncscope("warp") acquire, !dbg !228
  %add562.7 = or disjoint i32 %mul555, %mul561, !dbg !229
  %690 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.7, !dbg !230
  %add.ptr572.idx.7 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.7 = getelementptr inbounds i8, ptr addrspace(3) %690, i32 %add.ptr572.idx.7, !dbg !230
  %691 = load <4 x half>, ptr addrspace(3) %add.ptr572.7, align 8, !dbg !231
  %add557.1.7 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.1.7 = or disjoint i32 %add557.1.7, 64, !dbg !229
  %692 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.1.7, !dbg !230
  %xor568.1.7 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.1.7 = xor i32 %xor568.1.7, 8, !dbg !230
  %add.ptr572.1.7 = getelementptr inbounds i8, ptr addrspace(3) %692, i32 %add.ptr572.idx.1.7, !dbg !230
  %693 = load <4 x half>, ptr addrspace(3) %add.ptr572.1.7, align 8, !dbg !231
  %add557.2.7 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.2.7 = or disjoint i32 %add557.2.7, 128, !dbg !229
  %694 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.2.7, !dbg !230
  %xor568.2.7 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.2.7 = xor i32 %xor568.2.7, 16, !dbg !230
  %add.ptr572.2.7 = getelementptr inbounds i8, ptr addrspace(3) %694, i32 %add.ptr572.idx.2.7, !dbg !230
  %695 = load <4 x half>, ptr addrspace(3) %add.ptr572.2.7, align 8, !dbg !231
  %add557.3.7 = or disjoint i32 %mul555, %mul561, !dbg !229
  %add562.3.7 = or disjoint i32 %add557.3.7, 192, !dbg !229
  %696 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add562.3.7, !dbg !230
  %xor568.3.7 = shl nuw nsw i32 %301, 3, !dbg !230
  %add.ptr572.idx.3.7 = xor i32 %xor568.3.7, 24, !dbg !230
  %add.ptr572.3.7 = getelementptr inbounds i8, ptr addrspace(3) %696, i32 %add.ptr572.idx.3.7, !dbg !230
  %697 = load <4 x half>, ptr addrspace(3) %add.ptr572.3.7, align 8, !dbg !231
  %698 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %691, <4 x half> %669, <4 x float> %output_acc.sroa.0.6), !dbg !232
  %699 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %693, <4 x half> %669, <4 x float> %output_acc.sroa.34.6), !dbg !232
  %700 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %695, <4 x half> %669, <4 x float> %output_acc.sroa.66.6), !dbg !232
  %701 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %697, <4 x half> %669, <4 x float> %output_acc.sroa.98.6), !dbg !232
  br label %if.end599.7, !dbg !233

if.end599.7:                                      ; preds = %if.end504.3.7, %if.end599.6
  %bc2850 = phi <4 x half> [ %286, %if.end599.6 ], [ %669, %if.end504.3.7 ], !dbg !83
  %output_acc.sroa.98.7 = phi <4 x float> [ %output_acc.sroa.98.6, %if.end599.6 ], [ %701, %if.end504.3.7 ], !dbg !83
  %output_acc.sroa.66.7 = phi <4 x float> [ %output_acc.sroa.66.6, %if.end599.6 ], [ %700, %if.end504.3.7 ], !dbg !83
  %output_acc.sroa.34.7 = phi <4 x float> [ %output_acc.sroa.34.6, %if.end599.6 ], [ %699, %if.end504.3.7 ], !dbg !83
  %output_acc.sroa.0.7 = phi <4 x float> [ %output_acc.sroa.0.6, %if.end599.6 ], [ %698, %if.end504.3.7 ], !dbg !83
  fence syncscope("warp") release, !dbg !234
  tail call void @llvm.mxc.barrier.warp(), !dbg !237
  fence syncscope("warp") acquire, !dbg !238
  %702 = extractelement <4 x half> %bc2822, i64 0, !dbg !239
  %conv.i.i914 = fpext half %702 to float, !dbg !240
  %add612 = fadd contract float %conv.i.i914, 0.000000e+00, !dbg !245
  %703 = extractelement <4 x half> %bc2822, i64 1, !dbg !239
  %conv.i.i914.1 = fpext half %703 to float, !dbg !240
  %add612.1 = fadd contract float %add612, %conv.i.i914.1, !dbg !245
  %704 = extractelement <4 x half> %bc2822, i64 2, !dbg !239
  %conv.i.i914.2 = fpext half %704 to float, !dbg !240
  %add612.2 = fadd contract float %add612.1, %conv.i.i914.2, !dbg !245
  %705 = extractelement <4 x half> %bc2822, i64 3, !dbg !239
  %conv.i.i914.3 = fpext half %705 to float, !dbg !240
  %add612.3 = fadd contract float %add612.2, %conv.i.i914.3, !dbg !245
  %706 = extractelement <4 x half> %bc2826, i64 0, !dbg !239
  %conv.i.i914.4 = fpext half %706 to float, !dbg !240
  %add612.4 = fadd contract float %add612.3, %conv.i.i914.4, !dbg !245
  %707 = extractelement <4 x half> %bc2826, i64 1, !dbg !239
  %conv.i.i914.5 = fpext half %707 to float, !dbg !240
  %add612.5 = fadd contract float %add612.4, %conv.i.i914.5, !dbg !245
  %708 = extractelement <4 x half> %bc2826, i64 2, !dbg !239
  %conv.i.i914.6 = fpext half %708 to float, !dbg !240
  %add612.6 = fadd contract float %add612.5, %conv.i.i914.6, !dbg !245
  %709 = extractelement <4 x half> %bc2826, i64 3, !dbg !239
  %conv.i.i914.7 = fpext half %709 to float, !dbg !240
  %add612.7 = fadd contract float %add612.6, %conv.i.i914.7, !dbg !245
  %710 = extractelement <4 x half> %bc2830, i64 0, !dbg !239
  %conv.i.i914.8 = fpext half %710 to float, !dbg !240
  %add612.8 = fadd contract float %add612.7, %conv.i.i914.8, !dbg !245
  %711 = extractelement <4 x half> %bc2830, i64 1, !dbg !239
  %conv.i.i914.9 = fpext half %711 to float, !dbg !240
  %add612.9 = fadd contract float %add612.8, %conv.i.i914.9, !dbg !245
  %712 = extractelement <4 x half> %bc2830, i64 2, !dbg !239
  %conv.i.i914.10 = fpext half %712 to float, !dbg !240
  %add612.10 = fadd contract float %add612.9, %conv.i.i914.10, !dbg !245
  %713 = extractelement <4 x half> %bc2830, i64 3, !dbg !239
  %conv.i.i914.11 = fpext half %713 to float, !dbg !240
  %add612.11 = fadd contract float %add612.10, %conv.i.i914.11, !dbg !245
  %714 = extractelement <4 x half> %bc2834, i64 0, !dbg !239
  %conv.i.i914.12 = fpext half %714 to float, !dbg !240
  %add612.12 = fadd contract float %add612.11, %conv.i.i914.12, !dbg !245
  %715 = extractelement <4 x half> %bc2834, i64 1, !dbg !239
  %conv.i.i914.13 = fpext half %715 to float, !dbg !240
  %add612.13 = fadd contract float %add612.12, %conv.i.i914.13, !dbg !245
  %716 = extractelement <4 x half> %bc2834, i64 2, !dbg !239
  %conv.i.i914.14 = fpext half %716 to float, !dbg !240
  %add612.14 = fadd contract float %add612.13, %conv.i.i914.14, !dbg !245
  %717 = extractelement <4 x half> %bc2834, i64 3, !dbg !239
  %conv.i.i914.15 = fpext half %717 to float, !dbg !240
  %add612.15 = fadd contract float %add612.14, %conv.i.i914.15, !dbg !245
  %718 = extractelement <4 x half> %bc2838, i64 0, !dbg !239
  %conv.i.i914.16 = fpext half %718 to float, !dbg !240
  %add612.16 = fadd contract float %add612.15, %conv.i.i914.16, !dbg !245
  %719 = extractelement <4 x half> %bc2838, i64 1, !dbg !239
  %conv.i.i914.17 = fpext half %719 to float, !dbg !240
  %add612.17 = fadd contract float %add612.16, %conv.i.i914.17, !dbg !245
  %720 = extractelement <4 x half> %bc2838, i64 2, !dbg !239
  %conv.i.i914.18 = fpext half %720 to float, !dbg !240
  %add612.18 = fadd contract float %add612.17, %conv.i.i914.18, !dbg !245
  %721 = extractelement <4 x half> %bc2838, i64 3, !dbg !239
  %conv.i.i914.19 = fpext half %721 to float, !dbg !240
  %add612.19 = fadd contract float %add612.18, %conv.i.i914.19, !dbg !245
  %722 = extractelement <4 x half> %bc2842, i64 0, !dbg !239
  %conv.i.i914.20 = fpext half %722 to float, !dbg !240
  %add612.20 = fadd contract float %add612.19, %conv.i.i914.20, !dbg !245
  %723 = extractelement <4 x half> %bc2842, i64 1, !dbg !239
  %conv.i.i914.21 = fpext half %723 to float, !dbg !240
  %add612.21 = fadd contract float %add612.20, %conv.i.i914.21, !dbg !245
  %724 = extractelement <4 x half> %bc2842, i64 2, !dbg !239
  %conv.i.i914.22 = fpext half %724 to float, !dbg !240
  %add612.22 = fadd contract float %add612.21, %conv.i.i914.22, !dbg !245
  %725 = extractelement <4 x half> %bc2842, i64 3, !dbg !239
  %conv.i.i914.23 = fpext half %725 to float, !dbg !240
  %add612.23 = fadd contract float %add612.22, %conv.i.i914.23, !dbg !245
  %726 = extractelement <4 x half> %bc2846, i64 0, !dbg !239
  %conv.i.i914.24 = fpext half %726 to float, !dbg !240
  %add612.24 = fadd contract float %add612.23, %conv.i.i914.24, !dbg !245
  %727 = extractelement <4 x half> %bc2846, i64 1, !dbg !239
  %conv.i.i914.25 = fpext half %727 to float, !dbg !240
  %add612.25 = fadd contract float %add612.24, %conv.i.i914.25, !dbg !245
  %728 = extractelement <4 x half> %bc2846, i64 2, !dbg !239
  %conv.i.i914.26 = fpext half %728 to float, !dbg !240
  %add612.26 = fadd contract float %add612.25, %conv.i.i914.26, !dbg !245
  %729 = extractelement <4 x half> %bc2846, i64 3, !dbg !239
  %conv.i.i914.27 = fpext half %729 to float, !dbg !240
  %add612.27 = fadd contract float %add612.26, %conv.i.i914.27, !dbg !245
  %730 = extractelement <4 x half> %bc2850, i64 0, !dbg !239
  %conv.i.i914.28 = fpext half %730 to float, !dbg !240
  %add612.28 = fadd contract float %add612.27, %conv.i.i914.28, !dbg !245
  %731 = extractelement <4 x half> %bc2850, i64 1, !dbg !239
  %conv.i.i914.29 = fpext half %731 to float, !dbg !240
  %add612.29 = fadd contract float %add612.28, %conv.i.i914.29, !dbg !245
  %732 = extractelement <4 x half> %bc2850, i64 2, !dbg !239
  %conv.i.i914.30 = fpext half %732 to float, !dbg !240
  %add612.30 = fadd contract float %add612.29, %conv.i.i914.30, !dbg !245
  %733 = extractelement <4 x half> %bc2850, i64 3, !dbg !239
  %conv.i.i914.31 = fpext half %733 to float, !dbg !240
  %add612.31 = fadd contract float %add612.30, %conv.i.i914.31, !dbg !245
  %add631 = fadd contract float %add612.31, 0.000000e+00, !dbg !246
  %add631.1 = fadd contract float %add631, 0.000000e+00, !dbg !246
  %add631.2 = fadd contract float %add631.1, 0.000000e+00, !dbg !246
  %add631.3 = fadd contract float %add631.2, 0.000000e+00, !dbg !246
  %734 = bitcast float %add631.3 to i32, !dbg !247
  %735 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !252
  %736 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %735) #11, !dbg !255
  %xor.i.i.i915 = xor i32 %736, 32, !dbg !256
  %737 = and i32 %736, -64, !dbg !257
  %and.i.i.i916 = add nsw i32 %737, 64, !dbg !257
  %cmp.not.i.i.i917 = icmp slt i32 %xor.i.i.i915, %and.i.i.i916, !dbg !258
  %cond.i.i.i918 = select i1 %cmp.not.i.i.i917, i32 %xor.i.i.i915, i32 %736, !dbg !259
  %shl.i.i.i919 = shl i32 %cond.i.i.i918, 2, !dbg !260
  %738 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i919, i32 %734), !dbg !261
  %739 = bitcast i32 %738 to float, !dbg !262
  %add.i.i920 = fadd contract float %add631.3, %739, !dbg !263
  %740 = bitcast float %add.i.i920 to i32, !dbg !266
  %741 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !271
  %742 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %741) #11, !dbg !274
  %xor.i.i.i.i921 = xor i32 %742, 16, !dbg !275
  %743 = and i32 %742, -64, !dbg !276
  %and.i.i.i.i922 = add nsw i32 %743, 64, !dbg !276
  %cmp.not.i.i.i.i923 = icmp slt i32 %xor.i.i.i.i921, %and.i.i.i.i922, !dbg !277
  %cond.i.i.i.i924 = select i1 %cmp.not.i.i.i.i923, i32 %xor.i.i.i.i921, i32 %742, !dbg !278
  %shl.i.i.i.i925 = shl i32 %cond.i.i.i.i924, 2, !dbg !279
  %744 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i925, i32 %740), !dbg !280
  %745 = bitcast i32 %744 to float, !dbg !281
  %add.i.i.i = fadd contract float %add.i.i920, %745, !dbg !282
  %output_acc.sroa.0.0.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 0, !dbg !284
  %div = fdiv contract float %output_acc.sroa.0.0.vec.extract, %add.i.i.i, !dbg !285
  %output_acc.sroa.0.4.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 1, !dbg !284
  %div.1 = fdiv contract float %output_acc.sroa.0.4.vec.extract, %add.i.i.i, !dbg !285
  %output_acc.sroa.0.8.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 2, !dbg !284
  %div.2 = fdiv contract float %output_acc.sroa.0.8.vec.extract, %add.i.i.i, !dbg !285
  %output_acc.sroa.0.12.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 3, !dbg !284
  %div.3 = fdiv contract float %output_acc.sroa.0.12.vec.extract, %add.i.i.i, !dbg !285
  %output_acc.sroa.34.16.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 0, !dbg !284
  %div.4 = fdiv contract float %output_acc.sroa.34.16.vec.extract, %add.i.i.i, !dbg !285
  %output_acc.sroa.34.20.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 1, !dbg !284
  %div.5 = fdiv contract float %output_acc.sroa.34.20.vec.extract, %add.i.i.i, !dbg !285
  %output_acc.sroa.34.24.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 2, !dbg !284
  %div.6 = fdiv contract float %output_acc.sroa.34.24.vec.extract, %add.i.i.i, !dbg !285
  %output_acc.sroa.34.28.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 3, !dbg !284
  %div.7 = fdiv contract float %output_acc.sroa.34.28.vec.extract, %add.i.i.i, !dbg !285
  %output_acc.sroa.66.32.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 0, !dbg !284
  %div.8 = fdiv contract float %output_acc.sroa.66.32.vec.extract, %add.i.i.i, !dbg !285
  %output_acc.sroa.66.36.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 1, !dbg !284
  %div.9 = fdiv contract float %output_acc.sroa.66.36.vec.extract, %add.i.i.i, !dbg !285
  %output_acc.sroa.66.40.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 2, !dbg !284
  %div.10 = fdiv contract float %output_acc.sroa.66.40.vec.extract, %add.i.i.i, !dbg !285
  %output_acc.sroa.66.44.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 3, !dbg !284
  %div.11 = fdiv contract float %output_acc.sroa.66.44.vec.extract, %add.i.i.i, !dbg !285
  %output_acc.sroa.98.48.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 0, !dbg !284
  %div.12 = fdiv contract float %output_acc.sroa.98.48.vec.extract, %add.i.i.i, !dbg !285
  %output_acc.sroa.98.52.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 1, !dbg !284
  %div.13 = fdiv contract float %output_acc.sroa.98.52.vec.extract, %add.i.i.i, !dbg !285
  %output_acc.sroa.98.56.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 2, !dbg !284
  %div.14 = fdiv contract float %output_acc.sroa.98.56.vec.extract, %add.i.i.i, !dbg !285
  %output_acc.sroa.98.60.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 3, !dbg !284
  %div.15 = fdiv contract float %output_acc.sroa.98.60.vec.extract, %add.i.i.i, !dbg !285
  %and681 = and i32 %2, 7
  %746 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !286
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !286, !noalias !290
  %747 = fptrunc float %div to half, !dbg !286
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %746), !dbg !286, !noalias !290
  %748 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !295
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !295, !noalias !290
  %749 = fptrunc float %div.1 to half, !dbg !295
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %748), !dbg !295, !noalias !290
  %750 = bitcast half %747 to i16, !dbg !297
  %751 = bitcast half %749 to i16, !dbg !300
  %752 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !301
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !301, !noalias !305
  %753 = fptrunc float %div.2 to half, !dbg !301
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %752), !dbg !301, !noalias !305
  %754 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !310
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !310, !noalias !305
  %755 = fptrunc float %div.3 to half, !dbg !310
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %754), !dbg !310, !noalias !305
  %756 = bitcast half %753 to i16, !dbg !312
  %757 = bitcast half %755 to i16, !dbg !314
  %__4.sroa.6.0.insert.ext = zext i16 %757 to i64, !dbg !315
  %__4.sroa.6.0.insert.shift = shl nuw i64 %__4.sroa.6.0.insert.ext, 48, !dbg !315
  %__4.sroa.5.0.insert.ext = zext i16 %756 to i64, !dbg !315
  %__4.sroa.5.0.insert.shift = shl nuw nsw i64 %__4.sroa.5.0.insert.ext, 32, !dbg !315
  %__4.sroa.5.0.insert.insert = or disjoint i64 %__4.sroa.6.0.insert.shift, %__4.sroa.5.0.insert.shift, !dbg !315
  %__4.sroa.4.0.insert.ext = zext i16 %751 to i64, !dbg !315
  %__4.sroa.4.0.insert.shift = shl nuw nsw i64 %__4.sroa.4.0.insert.ext, 16, !dbg !315
  %__4.sroa.4.0.insert.insert = or disjoint i64 %__4.sroa.5.0.insert.insert, %__4.sroa.4.0.insert.shift, !dbg !315
  %__4.sroa.0.0.insert.ext = zext i16 %750 to i64, !dbg !315
  %__4.sroa.0.0.insert.insert = or disjoint i64 %__4.sroa.4.0.insert.insert, %__4.sroa.0.0.insert.ext, !dbg !315
  %xor682 = xor i32 %shr71, %and681, !dbg !316
  %mul683 = shl nuw nsw i32 %xor682, 3, !dbg !317
  %add684 = add nuw nsw i32 %mul683, %mul53, !dbg !318
  %add689 = or disjoint i32 %add684, %mul81, !dbg !319
  %add.ptr691 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add689, !dbg !320
  store i64 %__4.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr691, align 8, !dbg !321
  %758 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !286
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !286, !noalias !290
  %759 = fptrunc float %div.4 to half, !dbg !286
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %758), !dbg !286, !noalias !290
  %760 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !295
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !295, !noalias !290
  %761 = fptrunc float %div.5 to half, !dbg !295
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %760), !dbg !295, !noalias !290
  %762 = bitcast half %759 to i16, !dbg !297
  %763 = bitcast half %761 to i16, !dbg !300
  %764 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !301
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !301, !noalias !305
  %765 = fptrunc float %div.6 to half, !dbg !301
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %764), !dbg !301, !noalias !305
  %766 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !310
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !310, !noalias !305
  %767 = fptrunc float %div.7 to half, !dbg !310
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %766), !dbg !310, !noalias !305
  %768 = bitcast half %765 to i16, !dbg !312
  %769 = bitcast half %767 to i16, !dbg !314
  %__4.sroa.6.0.insert.ext.1 = zext i16 %769 to i64, !dbg !315
  %__4.sroa.6.0.insert.shift.1 = shl nuw i64 %__4.sroa.6.0.insert.ext.1, 48, !dbg !315
  %__4.sroa.5.0.insert.ext.1 = zext i16 %768 to i64, !dbg !315
  %__4.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__4.sroa.5.0.insert.ext.1, 32, !dbg !315
  %__4.sroa.5.0.insert.insert.1 = or disjoint i64 %__4.sroa.6.0.insert.shift.1, %__4.sroa.5.0.insert.shift.1, !dbg !315
  %__4.sroa.4.0.insert.ext.1 = zext i16 %763 to i64, !dbg !315
  %__4.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__4.sroa.4.0.insert.ext.1, 16, !dbg !315
  %__4.sroa.4.0.insert.insert.1 = or disjoint i64 %__4.sroa.5.0.insert.insert.1, %__4.sroa.4.0.insert.shift.1, !dbg !315
  %__4.sroa.0.0.insert.ext.1 = zext i16 %762 to i64, !dbg !315
  %__4.sroa.0.0.insert.insert.1 = or disjoint i64 %__4.sroa.4.0.insert.insert.1, %__4.sroa.0.0.insert.ext.1, !dbg !315
  %add679.1 = add nuw nsw i32 %shr71, 2, !dbg !322
  %xor682.1 = xor i32 %add679.1, %and681, !dbg !316
  %mul683.1 = shl nuw nsw i32 %xor682.1, 3, !dbg !317
  %add684.1 = add nuw nsw i32 %mul683.1, %mul53, !dbg !318
  %add689.1 = or disjoint i32 %add684.1, %mul81, !dbg !319
  %add.ptr691.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add689.1, !dbg !320
  store i64 %__4.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr691.1, align 8, !dbg !321
  %770 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !286
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !286, !noalias !290
  %771 = fptrunc float %div.8 to half, !dbg !286
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %770), !dbg !286, !noalias !290
  %772 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !295
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !295, !noalias !290
  %773 = fptrunc float %div.9 to half, !dbg !295
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %772), !dbg !295, !noalias !290
  %774 = bitcast half %771 to i16, !dbg !297
  %775 = bitcast half %773 to i16, !dbg !300
  %776 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !301
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !301, !noalias !305
  %777 = fptrunc float %div.10 to half, !dbg !301
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %776), !dbg !301, !noalias !305
  %778 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !310
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !310, !noalias !305
  %779 = fptrunc float %div.11 to half, !dbg !310
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %778), !dbg !310, !noalias !305
  %780 = bitcast half %777 to i16, !dbg !312
  %781 = bitcast half %779 to i16, !dbg !314
  %__4.sroa.6.0.insert.ext.2 = zext i16 %781 to i64, !dbg !315
  %__4.sroa.6.0.insert.shift.2 = shl nuw i64 %__4.sroa.6.0.insert.ext.2, 48, !dbg !315
  %__4.sroa.5.0.insert.ext.2 = zext i16 %780 to i64, !dbg !315
  %__4.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__4.sroa.5.0.insert.ext.2, 32, !dbg !315
  %__4.sroa.5.0.insert.insert.2 = or disjoint i64 %__4.sroa.6.0.insert.shift.2, %__4.sroa.5.0.insert.shift.2, !dbg !315
  %__4.sroa.4.0.insert.ext.2 = zext i16 %775 to i64, !dbg !315
  %__4.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__4.sroa.4.0.insert.ext.2, 16, !dbg !315
  %__4.sroa.4.0.insert.insert.2 = or disjoint i64 %__4.sroa.5.0.insert.insert.2, %__4.sroa.4.0.insert.shift.2, !dbg !315
  %__4.sroa.0.0.insert.ext.2 = zext i16 %774 to i64, !dbg !315
  %__4.sroa.0.0.insert.insert.2 = or disjoint i64 %__4.sroa.4.0.insert.insert.2, %__4.sroa.0.0.insert.ext.2, !dbg !315
  %add679.2 = add nuw nsw i32 %shr71, 4, !dbg !322
  %xor682.2 = xor i32 %add679.2, %and681, !dbg !316
  %mul683.2 = shl nuw nsw i32 %xor682.2, 3, !dbg !317
  %add684.2 = add nuw nsw i32 %mul683.2, %mul53, !dbg !318
  %add689.2 = or disjoint i32 %add684.2, %mul81, !dbg !319
  %add.ptr691.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add689.2, !dbg !320
  store i64 %__4.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr691.2, align 8, !dbg !321
  %782 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !286
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !286, !noalias !290
  %783 = fptrunc float %div.12 to half, !dbg !286
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %782), !dbg !286, !noalias !290
  %784 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !295
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !295, !noalias !290
  %785 = fptrunc float %div.13 to half, !dbg !295
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %784), !dbg !295, !noalias !290
  %786 = bitcast half %783 to i16, !dbg !297
  %787 = bitcast half %785 to i16, !dbg !300
  %788 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !301
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !301, !noalias !305
  %789 = fptrunc float %div.14 to half, !dbg !301
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %788), !dbg !301, !noalias !305
  %790 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !310
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !310, !noalias !305
  %791 = fptrunc float %div.15 to half, !dbg !310
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %790), !dbg !310, !noalias !305
  %792 = bitcast half %789 to i16, !dbg !312
  %793 = bitcast half %791 to i16, !dbg !314
  %__4.sroa.6.0.insert.ext.3 = zext i16 %793 to i64, !dbg !315
  %__4.sroa.6.0.insert.shift.3 = shl nuw i64 %__4.sroa.6.0.insert.ext.3, 48, !dbg !315
  %__4.sroa.5.0.insert.ext.3 = zext i16 %792 to i64, !dbg !315
  %__4.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__4.sroa.5.0.insert.ext.3, 32, !dbg !315
  %__4.sroa.5.0.insert.insert.3 = or disjoint i64 %__4.sroa.6.0.insert.shift.3, %__4.sroa.5.0.insert.shift.3, !dbg !315
  %__4.sroa.4.0.insert.ext.3 = zext i16 %787 to i64, !dbg !315
  %__4.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__4.sroa.4.0.insert.ext.3, 16, !dbg !315
  %__4.sroa.4.0.insert.insert.3 = or disjoint i64 %__4.sroa.5.0.insert.insert.3, %__4.sroa.4.0.insert.shift.3, !dbg !315
  %__4.sroa.0.0.insert.ext.3 = zext i16 %786 to i64, !dbg !315
  %__4.sroa.0.0.insert.insert.3 = or disjoint i64 %__4.sroa.4.0.insert.insert.3, %__4.sroa.0.0.insert.ext.3, !dbg !315
  %add679.3 = add nuw nsw i32 %shr71, 6, !dbg !322
  %xor682.3 = xor i32 %add679.3, %and681, !dbg !316
  %mul683.3 = shl nuw nsw i32 %xor682.3, 3, !dbg !317
  %add684.3 = add nuw nsw i32 %mul683.3, %mul53, !dbg !318
  %add689.3 = or disjoint i32 %add684.3, %mul81, !dbg !319
  %add.ptr691.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add689.3, !dbg !320
  store i64 %__4.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr691.3, align 8, !dbg !321
  fence syncscope("warp") release, !dbg !323
  tail call void @llvm.mxc.barrier.warp(), !dbg !326
  fence syncscope("warp") acquire, !dbg !327
  %xor708847 = and i32 %mul11, 56
  %call706.masked = and i32 %2, 1016
  %mul709 = xor i32 %xor708847, %call706.masked
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul15, !dbg !328
  %invariant.gep980 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul709, !dbg !328
  %add.ptr724 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !329
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr724, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep980, i64 16, i1 false), !dbg !330, !tbaa.struct !50, !call_argsrelate !331
  %gep981.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep980, i32 1024, !dbg !332
  %add.ptr724.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %7, !dbg !329
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr724.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep981.1, i64 16, i1 false), !dbg !330, !tbaa.struct !50, !call_argsrelate !331
  ret void, !dbg !333
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v041_codex_power_s8_probability_cache_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v041_codex_power_s8_probability_cache_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!68 = !DILocation(line: 46, column: 3, scope: !40)
!69 = !DILocation(line: 47, column: 24, scope: !40)
!70 = !DILocation(line: 47, column: 106, scope: !40)
!71 = !DILocation(line: 48, column: 12, scope: !40)
!72 = !DILocation(line: 48, column: 28, scope: !40)
!73 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !74)
!74 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !75)
!75 = distinct !DILocation(line: 49, column: 7, scope: !40)
!76 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !74)
!77 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !74)
!78 = !DILocation(line: 51, column: 7, scope: !40)
!79 = !DILocation(line: 54, column: 71, scope: !40)
!80 = !DILocation(line: 54, column: 13, scope: !40)
!81 = !DILocation(line: 55, column: 19, scope: !40)
!82 = !DILocation(line: 56, column: 9, scope: !40)
!83 = !DILocation(line: 0, scope: !40)
!84 = !DILocation(line: 59, column: 339, scope: !40)
!85 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !86)
!86 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !87)
!87 = distinct !DILocation(line: 61, column: 7, scope: !40)
!88 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !86)
!89 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !86)
!90 = !DILocation(line: 65, column: 32, scope: !40)
!91 = !DILocation(line: 67, column: 37, scope: !40)
!92 = !DILocation(line: 75, column: 70, scope: !40)
!93 = !DILocation(line: 75, column: 13, scope: !40)
!94 = !DILocation(line: 75, column: 63, scope: !40)
!95 = !DILocation(line: 351, column: 10, scope: !96, inlinedAt: !98)
!96 = distinct !DISubprogram(name: "max", scope: !97, file: !97, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!97 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!98 = distinct !DILocation(line: 86, column: 24, scope: !40)
!99 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !101)
!100 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !56, file: !56, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!101 = distinct !DILocation(line: 338, column: 10, scope: !102, inlinedAt: !104)
!102 = distinct !DISubprogram(name: "shfl_xor_sync<float>", scope: !103, file: !103, line: 337, type: !7, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!103 = !DIFile(filename: "src/tl_templates/maca/common.h", directory: "/root/tilelang-metax")
!104 = distinct !DILocation(line: 95, column: 24, scope: !105, inlinedAt: !107)
!105 = distinct !DISubprogram(name: "run<float>", scope: !106, file: !106, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!106 = !DIFile(filename: "src/tl_templates/maca/reduce.h", directory: "/root/tilelang-metax")
!107 = distinct !DILocation(line: 88, column: 22, scope: !40)
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
!149 = !DILocation(line: 92, column: 44, scope: !40)
!150 = !DILocation(line: 92, column: 60, scope: !40)
!151 = !DILocation(line: 92, column: 101, scope: !40)
!152 = !DILocation(line: 285, column: 49, scope: !153, inlinedAt: !154)
!153 = distinct !DISubprogram(name: "exp2f", scope: !97, file: !97, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!154 = distinct !DILocation(line: 92, column: 23, scope: !40)
!155 = !DILocation(line: 984, column: 21, scope: !156, inlinedAt: !158)
!156 = distinct !DISubprogram(name: "__float2half", scope: !157, file: !157, line: 979, type: !7, scopeLine: 979, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!157 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!158 = distinct !DILocation(line: 133, column: 53, scope: !159, inlinedAt: !160)
!159 = distinct !DISubprogram(name: "__half", scope: !157, file: !157, line: 133, type: !7, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!160 = distinct !DILocation(line: 95, column: 58, scope: !40)
!161 = !DILocation(line: 95, column: 55, scope: !40)
!162 = !DILocation(line: 46, column: 40, scope: !40)
!163 = !DILocation(line: 47, column: 93, scope: !40)
!164 = !DILocation(line: 351, column: 10, scope: !96, inlinedAt: !165)
!165 = distinct !DILocation(line: 102, column: 21, scope: !40)
!166 = !DILocation(line: 111, column: 26, scope: !40)
!167 = !DILocation(line: 111, column: 110, scope: !40)
!168 = !DILocation(line: 112, column: 12, scope: !40)
!169 = !DILocation(line: 112, column: 30, scope: !40)
!170 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !171)
!171 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !172)
!172 = distinct !DILocation(line: 113, column: 7, scope: !40)
!173 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !171)
!174 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !171)
!175 = !DILocation(line: 114, column: 50, scope: !40)
!176 = !DILocation(line: 114, column: 67, scope: !40)
!177 = !DILocation(line: 285, column: 49, scope: !153, inlinedAt: !178)
!178 = distinct !DILocation(line: 114, column: 20, scope: !40)
!179 = !DILocation(line: 1301, column: 28, scope: !180, inlinedAt: !181)
!180 = distinct !DISubprogram(name: "__half22float2", scope: !157, file: !157, line: 1299, type: !7, scopeLine: 1299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!181 = distinct !DILocation(line: 119, column: 32, scope: !40)
!182 = !DILocation(line: 1302, column: 28, scope: !180, inlinedAt: !181)
!183 = !DILocation(line: 1301, column: 28, scope: !180, inlinedAt: !184)
!184 = distinct !DILocation(line: 120, column: 32, scope: !40)
!185 = !DILocation(line: 1302, column: 28, scope: !180, inlinedAt: !184)
!186 = !DILocation(line: 122, column: 23, scope: !40)
!187 = !DILocation(line: 123, column: 23, scope: !40)
!188 = !DILocation(line: 124, column: 23, scope: !40)
!189 = !DILocation(line: 125, column: 23, scope: !40)
!190 = !DILocation(line: 1007, column: 10, scope: !191, inlinedAt: !192)
!191 = distinct !DISubprogram(name: "__float2half_rn", scope: !157, file: !157, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!192 = distinct !DILocation(line: 1077, column: 18, scope: !193, inlinedAt: !194)
!193 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !157, file: !157, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!194 = distinct !DILocation(line: 1295, column: 23, scope: !195, inlinedAt: !196)
!195 = distinct !DISubprogram(name: "__float22half2_rn", scope: !157, file: !157, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!196 = distinct !DILocation(line: 126, column: 29, scope: !40)
!197 = !{!198, !200}
!198 = distinct !{!198, !199, !"_ZL17__floats2half2_rnff: %agg.result"}
!199 = distinct !{!199, !"_ZL17__floats2half2_rnff"}
!200 = distinct !{!200, !201, !"_ZL17__float22half2_rn6float2: %agg.result"}
!201 = distinct !{!201, !"_ZL17__float22half2_rn6float2"}
!202 = !DILocation(line: 1007, column: 10, scope: !191, inlinedAt: !203)
!203 = distinct !DILocation(line: 1077, column: 38, scope: !193, inlinedAt: !194)
!204 = !DILocation(line: 1007, column: 10, scope: !191, inlinedAt: !205)
!205 = distinct !DILocation(line: 1077, column: 18, scope: !193, inlinedAt: !206)
!206 = distinct !DILocation(line: 1295, column: 23, scope: !195, inlinedAt: !207)
!207 = distinct !DILocation(line: 127, column: 29, scope: !40)
!208 = !{!209, !211}
!209 = distinct !{!209, !210, !"_ZL17__floats2half2_rnff: %agg.result"}
!210 = distinct !{!210, !"_ZL17__floats2half2_rnff"}
!211 = distinct !{!211, !212, !"_ZL17__float22half2_rn6float2: %agg.result"}
!212 = distinct !{!212, !"_ZL17__float22half2_rn6float2"}
!213 = !DILocation(line: 1007, column: 10, scope: !191, inlinedAt: !214)
!214 = distinct !DILocation(line: 1077, column: 38, scope: !193, inlinedAt: !206)
!215 = !DILocation(line: 128, column: 55, scope: !40)
!216 = !DILocation(line: 133, column: 13, scope: !40)
!217 = !DILocation(line: 134, column: 35, scope: !40)
!218 = !DILocation(line: 134, column: 21, scope: !40)
!219 = !DILocation(line: 135, column: 9, scope: !40)
!220 = !DILocation(line: 146, column: 44, scope: !40)
!221 = !DILocation(line: 146, column: 187, scope: !40)
!222 = !DILocation(line: 144, column: 38, scope: !40)
!223 = !DILocation(line: 146, column: 65, scope: !40)
!224 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !225)
!225 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !226)
!226 = distinct !DILocation(line: 148, column: 7, scope: !40)
!227 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !225)
!228 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !225)
!229 = !DILocation(line: 151, column: 139, scope: !40)
!230 = !DILocation(line: 151, column: 83, scope: !40)
!231 = !DILocation(line: 151, column: 46, scope: !40)
!232 = !DILocation(line: 156, column: 47, scope: !40)
!233 = !DILocation(line: 110, column: 44, scope: !40)
!234 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !235)
!235 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !236)
!236 = distinct !DILocation(line: 163, column: 3, scope: !40)
!237 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !235)
!238 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !235)
!239 = !DILocation(line: 167, column: 44, scope: !40)
!240 = !DILocation(line: 1082, column: 16, scope: !241, inlinedAt: !242)
!241 = distinct !DISubprogram(name: "__half2float", scope: !157, file: !157, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!242 = distinct !DILocation(line: 136, column: 55, scope: !243, inlinedAt: !244)
!243 = distinct !DISubprogram(name: "operator float", scope: !157, file: !157, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!244 = distinct !DILocation(line: 167, column: 44, scope: !40)
!245 = !DILocation(line: 167, column: 34, scope: !40)
!246 = !DILocation(line: 175, column: 38, scope: !40)
!247 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !248)
!248 = distinct !DILocation(line: 338, column: 10, scope: !102, inlinedAt: !249)
!249 = distinct !DILocation(line: 95, column: 24, scope: !250, inlinedAt: !251)
!250 = distinct !DISubprogram(name: "run<float>", scope: !106, file: !106, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!251 = distinct !DILocation(line: 177, column: 20, scope: !40)
!252 = !DILocation(line: 171, column: 37, scope: !109, inlinedAt: !253)
!253 = distinct !DILocation(line: 990, column: 14, scope: !111, inlinedAt: !254)
!254 = distinct !DILocation(line: 1019, column: 11, scope: !100, inlinedAt: !248)
!255 = !DILocation(line: 171, column: 10, scope: !109, inlinedAt: !253)
!256 = !DILocation(line: 991, column: 20, scope: !111, inlinedAt: !254)
!257 = !DILocation(line: 992, column: 36, scope: !111, inlinedAt: !254)
!258 = !DILocation(line: 992, column: 17, scope: !111, inlinedAt: !254)
!259 = !DILocation(line: 992, column: 11, scope: !111, inlinedAt: !254)
!260 = !DILocation(line: 993, column: 43, scope: !111, inlinedAt: !254)
!261 = !DILocation(line: 993, column: 10, scope: !111, inlinedAt: !254)
!262 = !DILocation(line: 1020, column: 14, scope: !100, inlinedAt: !248)
!263 = !DILocation(line: 25, column: 14, scope: !264, inlinedAt: !265)
!264 = distinct !DISubprogram(name: "operator()<float>", scope: !106, file: !106, line: 24, type: !7, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!265 = distinct !DILocation(line: 95, column: 11, scope: !250, inlinedAt: !251)
!266 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !267)
!267 = distinct !DILocation(line: 338, column: 10, scope: !102, inlinedAt: !268)
!268 = distinct !DILocation(line: 95, column: 24, scope: !269, inlinedAt: !270)
!269 = distinct !DISubprogram(name: "run<float>", scope: !106, file: !106, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!270 = distinct !DILocation(line: 100, column: 14, scope: !250, inlinedAt: !251)
!271 = !DILocation(line: 171, column: 37, scope: !109, inlinedAt: !272)
!272 = distinct !DILocation(line: 990, column: 14, scope: !111, inlinedAt: !273)
!273 = distinct !DILocation(line: 1019, column: 11, scope: !100, inlinedAt: !267)
!274 = !DILocation(line: 171, column: 10, scope: !109, inlinedAt: !272)
!275 = !DILocation(line: 991, column: 20, scope: !111, inlinedAt: !273)
!276 = !DILocation(line: 992, column: 36, scope: !111, inlinedAt: !273)
!277 = !DILocation(line: 992, column: 17, scope: !111, inlinedAt: !273)
!278 = !DILocation(line: 992, column: 11, scope: !111, inlinedAt: !273)
!279 = !DILocation(line: 993, column: 43, scope: !111, inlinedAt: !273)
!280 = !DILocation(line: 993, column: 10, scope: !111, inlinedAt: !273)
!281 = !DILocation(line: 1020, column: 14, scope: !100, inlinedAt: !267)
!282 = !DILocation(line: 25, column: 14, scope: !264, inlinedAt: !283)
!283 = distinct !DILocation(line: 95, column: 11, scope: !269, inlinedAt: !270)
!284 = !DILocation(line: 180, column: 24, scope: !40)
!285 = !DILocation(line: 180, column: 40, scope: !40)
!286 = !DILocation(line: 1007, column: 10, scope: !191, inlinedAt: !287)
!287 = distinct !DILocation(line: 1077, column: 18, scope: !193, inlinedAt: !288)
!288 = distinct !DILocation(line: 1295, column: 23, scope: !195, inlinedAt: !289)
!289 = distinct !DILocation(line: 186, column: 27, scope: !40)
!290 = !{!291, !293}
!291 = distinct !{!291, !292, !"_ZL17__floats2half2_rnff: %agg.result"}
!292 = distinct !{!292, !"_ZL17__floats2half2_rnff"}
!293 = distinct !{!293, !294, !"_ZL17__float22half2_rn6float2: %agg.result"}
!294 = distinct !{!294, !"_ZL17__float22half2_rn6float2"}
!295 = !DILocation(line: 1007, column: 10, scope: !191, inlinedAt: !296)
!296 = distinct !DILocation(line: 1077, column: 38, scope: !193, inlinedAt: !288)
!297 = !DILocation(line: 596, column: 67, scope: !298, inlinedAt: !299)
!298 = distinct !DISubprogram(name: "__half2", scope: !157, file: !157, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!299 = distinct !DILocation(line: 1077, column: 10, scope: !193, inlinedAt: !288)
!300 = !DILocation(line: 596, column: 73, scope: !298, inlinedAt: !299)
!301 = !DILocation(line: 1007, column: 10, scope: !191, inlinedAt: !302)
!302 = distinct !DILocation(line: 1077, column: 18, scope: !193, inlinedAt: !303)
!303 = distinct !DILocation(line: 1295, column: 23, scope: !195, inlinedAt: !304)
!304 = distinct !DILocation(line: 187, column: 27, scope: !40)
!305 = !{!306, !308}
!306 = distinct !{!306, !307, !"_ZL17__floats2half2_rnff: %agg.result"}
!307 = distinct !{!307, !"_ZL17__floats2half2_rnff"}
!308 = distinct !{!308, !309, !"_ZL17__float22half2_rn6float2: %agg.result"}
!309 = distinct !{!309, !"_ZL17__float22half2_rn6float2"}
!310 = !DILocation(line: 1007, column: 10, scope: !191, inlinedAt: !311)
!311 = distinct !DILocation(line: 1077, column: 38, scope: !193, inlinedAt: !303)
!312 = !DILocation(line: 596, column: 67, scope: !298, inlinedAt: !313)
!313 = distinct !DILocation(line: 1077, column: 10, scope: !193, inlinedAt: !303)
!314 = !DILocation(line: 596, column: 73, scope: !298, inlinedAt: !313)
!315 = !DILocation(line: 188, column: 45, scope: !40)
!316 = !DILocation(line: 189, column: 121, scope: !40)
!317 = !DILocation(line: 189, column: 149, scope: !40)
!318 = !DILocation(line: 189, column: 77, scope: !40)
!319 = !DILocation(line: 189, column: 155, scope: !40)
!320 = !DILocation(line: 189, column: 40, scope: !40)
!321 = !DILocation(line: 189, column: 198, scope: !40)
!322 = !DILocation(line: 189, column: 92, scope: !40)
!323 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !324)
!324 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !325)
!325 = distinct !DILocation(line: 191, column: 3, scope: !40)
!326 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !324)
!327 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !324)
!328 = !DILocation(line: 193, column: 8, scope: !40)
!329 = !DILocation(line: 194, column: 22, scope: !40)
!330 = !DILocation(line: 194, column: 131, scope: !40)
!331 = !{i32 2, i32 -1, i32 -1, i32 -1}
!332 = !DILocation(line: 194, column: 168, scope: !40)
!333 = !DILocation(line: 196, column: 1, scope: !40)
