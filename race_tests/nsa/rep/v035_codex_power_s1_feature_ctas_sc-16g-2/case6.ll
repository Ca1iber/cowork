; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v035_codex_power_s1_feature_ctas_sc-16g-2/case6.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v035_codex_power_s1_feature_ctas_sc-16g-2/codegen/case6.device.cpp"
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
  %0 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.y(), !dbg !42, !range !29
  %mul = shl nsw i32 %0, 10, !dbg !46
  %1 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !dbg !47, !range !29
  %shr = lshr i32 %1, 1, !dbg !50
  %add = add nuw nsw i32 %mul, %shr, !dbg !51
  %idxprom = zext nneg i32 %add to i64, !dbg !52
  %arrayidx = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %idxprom, !dbg !52
  %2 = load i32, ptr addrspace(1) %arrayidx, align 4, !dbg !52, !tbaa !30
  %mul7 = shl nsw i32 %2, 5, !dbg !53
  %cmp = icmp slt i32 %2, 0, !dbg !54
  %cmp11.not = icmp sgt i32 %mul7, %shr
  %or.cond = select i1 %cmp, i1 true, i1 %cmp11.not, !dbg !55
  br i1 %or.cond, label %if.end500, label %for.cond.preheader, !dbg !55

for.cond.preheader:                               ; preds = %entry
  %mul14 = shl nsw i32 %0, 21
  %3 = shl nuw nsw i32 %1, 10
  %mul17 = and i32 %3, 2147481600
  %4 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !56
  %mul22 = shl nuw nsw i32 %4, 3
  %add18 = or disjoint i32 %mul22, %mul14
  %add20 = add nuw nsw i32 %add18, %mul17
  %5 = shl nuw nsw i32 %4, 7
  %mul26 = and i32 %5, 1024
  %6 = shl nuw nsw i32 %4, 2
  %mul31 = and i32 %6, 4032
  %add28 = add nuw nsw i32 %mul31, %mul26
  %and34 = lshr i32 %4, 2
  %shr42 = lshr i32 %4, 5
  %and44 = lshr i32 %4, 1
  %add46 = add nuw nsw i32 %shr42, %and44
  %and47 = shl nuw nsw i32 %add46, 4
  %mul48 = and i32 %and47, 16
  %and51 = lshr i32 %4, 4
  %add55 = add nuw nsw i32 %and51, %4
  %and56 = shl nuw nsw i32 %add55, 3
  %mul57 = and i32 %and56, 8
  %add32 = or disjoint i32 %add28, %mul48
  %add40 = or disjoint i32 %add32, %mul57
  %7 = zext nneg i32 %add20 to i64, !dbg !57
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !58
  %8 = shl nuw nsw i32 %and34, 5, !dbg !59
  %mul39 = and i32 %8, 32, !dbg !59
  %add58 = or disjoint i32 %add40, %mul39, !dbg !60
  %add.ptr60 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add58, !dbg !61
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr60, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr, i64 16, i1 false), !dbg !62, !tbaa.struct !63, !call_argsrelate !64
  %9 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !58
  %add.ptr.1 = getelementptr inbounds i8, ptr addrspace(4) %9, i64 1024, !dbg !58
  %10 = shl nuw nsw i32 %and34, 5, !dbg !59
  %11 = and i32 %10, 32, !dbg !59
  %mul39.1 = xor i32 %11, 32, !dbg !59
  %12 = add nuw nsw i32 %add40, 256, !dbg !65
  %add58.1 = or disjoint i32 %12, %mul39.1, !dbg !60
  %add.ptr60.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add58.1, !dbg !61
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr60.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr.1, i64 16, i1 false), !dbg !62, !tbaa.struct !63, !call_argsrelate !64
  %13 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !58
  %add.ptr.2 = getelementptr inbounds i8, ptr addrspace(4) %13, i64 2048, !dbg !58
  %14 = shl nuw nsw i32 %and34, 5, !dbg !59
  %mul39.2 = and i32 %14, 32, !dbg !59
  %15 = add nuw nsw i32 %add40, 512, !dbg !65
  %add58.2 = or disjoint i32 %15, %mul39.2, !dbg !60
  %add.ptr60.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add58.2, !dbg !61
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr60.2, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr.2, i64 16, i1 false), !dbg !62, !tbaa.struct !63, !call_argsrelate !64
  %16 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !58
  %add.ptr.3 = getelementptr inbounds i8, ptr addrspace(4) %16, i64 3072, !dbg !58
  %17 = shl nuw nsw i32 %and34, 5, !dbg !59
  %18 = and i32 %17, 32, !dbg !59
  %mul39.3 = xor i32 %18, 32, !dbg !59
  %narrow = add nuw nsw i32 %add40, 768, !dbg !65
  %add58.3 = or disjoint i32 %narrow, %mul39.3, !dbg !60
  %add.ptr60.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add58.3, !dbg !61
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr60.3, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr.3, i64 16, i1 false), !dbg !62, !tbaa.struct !63, !call_argsrelate !64
  fence syncscope("warp") release, !dbg !66
  tail call void @llvm.mxc.barrier.warp(), !dbg !72
  fence syncscope("warp") acquire, !dbg !73
  %and69 = shl nuw nsw i32 %4, 6
  %mul70 = and i32 %and69, 960
  %add93 = add nuw nsw i32 %shr42, %4
  %and94 = shl nuw nsw i32 %add93, 3
  %mul95 = and i32 %and94, 8
  %mul100 = and i32 %and34, 4
  %add71 = or disjoint i32 %mul100, %mul70
  %add80 = or disjoint i32 %add71, %mul95
  %and78 = shl nuw nsw i32 %and34, 5, !dbg !74
  %mul79 = and i32 %and78, 32, !dbg !74
  %and86 = shl nuw nsw i32 %and44, 4, !dbg !75
  %mul87 = and i32 %and86, 16, !dbg !75
  %add96 = or disjoint i32 %add80, %mul87, !dbg !76
  %add101 = or disjoint i32 %add96, %mul79, !dbg !77
  %add.ptr103 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add101, !dbg !78
  %19 = load <4 x half>, ptr addrspace(3) %add.ptr103, align 8, !dbg !79
  %add85.1 = shl nuw nsw i32 %and44, 4, !dbg !75
  %20 = and i32 %add85.1, 16, !dbg !75
  %mul87.1 = xor i32 %20, 16, !dbg !75
  %add96.1 = or disjoint i32 %add80, %mul87.1, !dbg !76
  %add101.1 = or disjoint i32 %add96.1, %mul79, !dbg !77
  %add.ptr103.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add101.1, !dbg !78
  %21 = load <4 x half>, ptr addrspace(3) %add.ptr103.1, align 8, !dbg !79
  %add77.2 = shl nuw nsw i32 %and34, 5, !dbg !74
  %22 = and i32 %add77.2, 32, !dbg !74
  %mul79.2 = xor i32 %22, 32, !dbg !74
  %add85.2 = shl nuw nsw i32 %and44, 4, !dbg !75
  %mul87.2 = and i32 %add85.2, 16, !dbg !75
  %add96.2 = or disjoint i32 %add80, %mul87.2, !dbg !76
  %add101.2 = or disjoint i32 %add96.2, %mul79.2, !dbg !77
  %add.ptr103.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add101.2, !dbg !78
  %23 = load <4 x half>, ptr addrspace(3) %add.ptr103.2, align 8, !dbg !79
  %add85.3 = shl nuw nsw i32 %and44, 4, !dbg !75
  %24 = and i32 %add85.3, 16, !dbg !75
  %mul87.3 = xor i32 %24, 16, !dbg !75
  %add96.3 = or disjoint i32 %add80, %mul87.3, !dbg !76
  %add101.3 = or disjoint i32 %add96.3, %mul79.2, !dbg !77
  %add.ptr103.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add101.3, !dbg !78
  %25 = load <4 x half>, ptr addrspace(3) %add.ptr103.3, align 8, !dbg !79
  %add77.4 = shl nuw nsw i32 %and34, 5, !dbg !74
  %mul79.4 = and i32 %add77.4, 32, !dbg !74
  %add85.4 = shl nuw nsw i32 %and44, 4, !dbg !75
  %mul87.4 = and i32 %add85.4, 16, !dbg !75
  %add88.4 = or disjoint i32 %add80, 1024, !dbg !80
  %add96.4 = or disjoint i32 %add88.4, %mul87.4, !dbg !76
  %add101.4 = or disjoint i32 %add96.4, %mul79.4, !dbg !77
  %add.ptr103.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add101.4, !dbg !78
  %26 = load <4 x half>, ptr addrspace(3) %add.ptr103.4, align 8, !dbg !79
  %add85.5 = shl nuw nsw i32 %and44, 4, !dbg !75
  %27 = and i32 %add85.5, 16, !dbg !75
  %mul87.5 = xor i32 %27, 16, !dbg !75
  %add96.5 = or disjoint i32 %add88.4, %mul87.5, !dbg !76
  %add101.5 = or disjoint i32 %add96.5, %mul79.4, !dbg !77
  %add.ptr103.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add101.5, !dbg !78
  %28 = load <4 x half>, ptr addrspace(3) %add.ptr103.5, align 8, !dbg !79
  %add77.6 = shl nuw nsw i32 %and34, 5, !dbg !74
  %29 = and i32 %add77.6, 32, !dbg !74
  %mul79.6 = xor i32 %29, 32, !dbg !74
  %add85.6 = shl nuw nsw i32 %and44, 4, !dbg !75
  %mul87.6 = and i32 %add85.6, 16, !dbg !75
  %add96.6 = or disjoint i32 %add88.4, %mul87.6, !dbg !76
  %add101.6 = or disjoint i32 %add96.6, %mul79.6, !dbg !77
  %add.ptr103.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add101.6, !dbg !78
  %30 = load <4 x half>, ptr addrspace(3) %add.ptr103.6, align 8, !dbg !79
  %add85.7 = shl nuw nsw i32 %and44, 4, !dbg !75
  %31 = and i32 %add85.7, 16, !dbg !75
  %mul87.7 = xor i32 %31, 16, !dbg !75
  %add96.7 = or disjoint i32 %add88.4, %mul87.7, !dbg !76
  %add101.7 = or disjoint i32 %add96.7, %mul79.6, !dbg !77
  %add.ptr103.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add101.7, !dbg !78
  %32 = load <4 x half>, ptr addrspace(3) %add.ptr103.7, align 8, !dbg !79
  fence syncscope("warp") release, !dbg !81
  tail call void @llvm.mxc.barrier.warp(), !dbg !84
  fence syncscope("warp") acquire, !dbg !85
  %add117 = add nuw nsw i32 %mul7, %and51
  %33 = and i32 %4, 8
  %conv = zext nneg i32 %0 to i64
  %mul123 = shl nuw nsw i64 %conv, 17
  %conv127 = zext nneg i32 %mul7 to i64
  %.idx = shl nuw nsw i64 %conv127, 8
  %invariant.gep = getelementptr inbounds i8, ptr addrspace(4) %K.coerce, i64 %.idx, !dbg !86
  %mul132 = zext nneg i32 %mul22 to i64
  %invariant.gep847 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %mul132, !dbg !86
  %cmp120 = icmp ult i32 %add117, 1024, !dbg !87
  br i1 %cmp120, label %if.then121, label %if.end, !dbg !88

if.then121:                                       ; preds = %for.cond.preheader
  %gep848 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep847, i64 %mul123
  %condval.sroa.7.0.add.ptr134.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep848, i64 12
  %condval.sroa.6.0.add.ptr134.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep848, i64 8
  %condval.sroa.5.0.add.ptr134.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep848, i64 4
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep848, align 16, !dbg !89, !tbaa !30
  %condval.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr134.sroa_idx, align 4, !dbg !89, !tbaa !30
  %condval.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr134.sroa_idx, align 8, !dbg !89, !tbaa !30
  %condval.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr134.sroa_idx, align 4, !dbg !89, !tbaa !30
  br label %if.end, !dbg !90

if.end:                                           ; preds = %for.cond.preheader, %if.then121
  %condval.sroa.0.0 = phi i32 [ %condval.sroa.0.0.copyload, %if.then121 ], [ 0, %for.cond.preheader ], !dbg !91
  %condval.sroa.5.0 = phi i32 [ %condval.sroa.5.0.copyload, %if.then121 ], [ 0, %for.cond.preheader ], !dbg !91
  %condval.sroa.6.0 = phi i32 [ %condval.sroa.6.0.copyload, %if.then121 ], [ 0, %for.cond.preheader ], !dbg !91
  %condval.sroa.7.0 = phi i32 [ %condval.sroa.7.0.copyload, %if.then121 ], [ 0, %for.cond.preheader ], !dbg !91
  %34 = shl nuw nsw i32 %33, 8, !dbg !92
  %35 = add nuw nsw i32 %34, %mul31, !dbg !93
  %add171 = or disjoint i32 %35, %mul39, !dbg !94
  %add180 = or disjoint i32 %add171, %mul48, !dbg !95
  %add189 = or disjoint i32 %add180, %mul57, !dbg !96
  %36 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add189, !dbg !97
  %add.ptr192 = getelementptr inbounds i8, ptr addrspace(3) %36, i32 4096, !dbg !97
  store i32 %condval.sroa.0.0, ptr addrspace(3) %add.ptr192, align 16, !dbg !98, !tbaa !30
  %condval.sroa.5.0.add.ptr192.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %36, i32 4100, !dbg !98
  store i32 %condval.sroa.5.0, ptr addrspace(3) %condval.sroa.5.0.add.ptr192.sroa_idx, align 4, !dbg !98, !tbaa !30
  %condval.sroa.6.0.add.ptr192.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %36, i32 4104, !dbg !98
  store i32 %condval.sroa.6.0, ptr addrspace(3) %condval.sroa.6.0.add.ptr192.sroa_idx, align 8, !dbg !98, !tbaa !30
  %condval.sroa.7.0.add.ptr192.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %36, i32 4108, !dbg !98
  store i32 %condval.sroa.7.0, ptr addrspace(3) %condval.sroa.7.0.add.ptr192.sroa_idx, align 4, !dbg !98, !tbaa !30
  %cmp120.1 = icmp ult i32 %add117, 1020, !dbg !87
  br i1 %cmp120.1, label %if.then121.1, label %if.end.1, !dbg !88

if.then121.1:                                     ; preds = %if.end
  %add126.1 = or disjoint i64 %mul123, 512
  %gep848.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep847, i64 %add126.1
  %condval.sroa.7.0.add.ptr134.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep848.1, i64 12
  %condval.sroa.6.0.add.ptr134.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep848.1, i64 8
  %condval.sroa.5.0.add.ptr134.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep848.1, i64 4
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep848.1, align 16, !dbg !89, !tbaa !30
  %condval.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr134.sroa_idx.1, align 4, !dbg !89, !tbaa !30
  %condval.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr134.sroa_idx.1, align 8, !dbg !89, !tbaa !30
  %condval.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr134.sroa_idx.1, align 4, !dbg !89, !tbaa !30
  br label %if.end.1, !dbg !90

if.end.1:                                         ; preds = %if.then121.1, %if.end
  %condval.sroa.0.0.1 = phi i32 [ %condval.sroa.0.0.copyload.1, %if.then121.1 ], [ 0, %if.end ], !dbg !91
  %condval.sroa.5.0.1 = phi i32 [ %condval.sroa.5.0.copyload.1, %if.then121.1 ], [ 0, %if.end ], !dbg !91
  %condval.sroa.6.0.1 = phi i32 [ %condval.sroa.6.0.copyload.1, %if.then121.1 ], [ 0, %if.end ], !dbg !91
  %condval.sroa.7.0.1 = phi i32 [ %condval.sroa.7.0.copyload.1, %if.then121.1 ], [ 0, %if.end ], !dbg !91
  %37 = shl nuw nsw i32 %33, 8, !dbg !92
  %38 = or disjoint i32 %37, 256, !dbg !92
  %39 = add nuw nsw i32 %38, %mul31, !dbg !93
  %add171.1 = or disjoint i32 %39, %mul39.1, !dbg !94
  %add180.1 = or disjoint i32 %add171.1, %mul48, !dbg !95
  %add189.1 = or disjoint i32 %add180.1, %mul57, !dbg !96
  %40 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add189.1, !dbg !97
  %add.ptr192.1 = getelementptr inbounds i8, ptr addrspace(3) %40, i32 4096, !dbg !97
  store i32 %condval.sroa.0.0.1, ptr addrspace(3) %add.ptr192.1, align 16, !dbg !98, !tbaa !30
  %condval.sroa.5.0.add.ptr192.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %40, i32 4100, !dbg !98
  store i32 %condval.sroa.5.0.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr192.sroa_idx.1, align 4, !dbg !98, !tbaa !30
  %condval.sroa.6.0.add.ptr192.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %40, i32 4104, !dbg !98
  store i32 %condval.sroa.6.0.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr192.sroa_idx.1, align 8, !dbg !98, !tbaa !30
  %condval.sroa.7.0.add.ptr192.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %40, i32 4108, !dbg !98
  store i32 %condval.sroa.7.0.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr192.sroa_idx.1, align 4, !dbg !98, !tbaa !30
  %cmp120.2 = icmp ult i32 %add117, 1016, !dbg !87
  br i1 %cmp120.2, label %if.then121.2, label %if.end.2, !dbg !88

if.then121.2:                                     ; preds = %if.end.1
  %add126.2 = or disjoint i64 %mul123, 1024
  %gep848.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep847, i64 %add126.2
  %condval.sroa.7.0.add.ptr134.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep848.2, i64 12
  %condval.sroa.6.0.add.ptr134.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep848.2, i64 8
  %condval.sroa.5.0.add.ptr134.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep848.2, i64 4
  %condval.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %gep848.2, align 16, !dbg !89, !tbaa !30
  %condval.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr134.sroa_idx.2, align 4, !dbg !89, !tbaa !30
  %condval.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr134.sroa_idx.2, align 8, !dbg !89, !tbaa !30
  %condval.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr134.sroa_idx.2, align 4, !dbg !89, !tbaa !30
  br label %if.end.2, !dbg !90

if.end.2:                                         ; preds = %if.then121.2, %if.end.1
  %condval.sroa.0.0.2 = phi i32 [ %condval.sroa.0.0.copyload.2, %if.then121.2 ], [ 0, %if.end.1 ], !dbg !91
  %condval.sroa.5.0.2 = phi i32 [ %condval.sroa.5.0.copyload.2, %if.then121.2 ], [ 0, %if.end.1 ], !dbg !91
  %condval.sroa.6.0.2 = phi i32 [ %condval.sroa.6.0.copyload.2, %if.then121.2 ], [ 0, %if.end.1 ], !dbg !91
  %condval.sroa.7.0.2 = phi i32 [ %condval.sroa.7.0.copyload.2, %if.then121.2 ], [ 0, %if.end.1 ], !dbg !91
  %41 = shl nuw nsw i32 %33, 8, !dbg !92
  %42 = or disjoint i32 %41, 512, !dbg !92
  %43 = add nuw nsw i32 %42, %mul31, !dbg !93
  %add171.2 = or disjoint i32 %43, %mul39.2, !dbg !94
  %add180.2 = or disjoint i32 %add171.2, %mul48, !dbg !95
  %add189.2 = or disjoint i32 %add180.2, %mul57, !dbg !96
  %44 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add189.2, !dbg !97
  %add.ptr192.2 = getelementptr inbounds i8, ptr addrspace(3) %44, i32 4096, !dbg !97
  store i32 %condval.sroa.0.0.2, ptr addrspace(3) %add.ptr192.2, align 16, !dbg !98, !tbaa !30
  %condval.sroa.5.0.add.ptr192.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %44, i32 4100, !dbg !98
  store i32 %condval.sroa.5.0.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr192.sroa_idx.2, align 4, !dbg !98, !tbaa !30
  %condval.sroa.6.0.add.ptr192.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %44, i32 4104, !dbg !98
  store i32 %condval.sroa.6.0.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr192.sroa_idx.2, align 8, !dbg !98, !tbaa !30
  %condval.sroa.7.0.add.ptr192.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %44, i32 4108, !dbg !98
  store i32 %condval.sroa.7.0.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr192.sroa_idx.2, align 4, !dbg !98, !tbaa !30
  %cmp120.3 = icmp ult i32 %add117, 1012, !dbg !87
  br i1 %cmp120.3, label %if.then121.3, label %if.end.3, !dbg !88

if.then121.3:                                     ; preds = %if.end.2
  %add126.3 = or disjoint i64 %mul123, 1536
  %gep848.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep847, i64 %add126.3
  %condval.sroa.7.0.add.ptr134.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep848.3, i64 12
  %condval.sroa.6.0.add.ptr134.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep848.3, i64 8
  %condval.sroa.5.0.add.ptr134.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep848.3, i64 4
  %condval.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %gep848.3, align 16, !dbg !89, !tbaa !30
  %condval.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr134.sroa_idx.3, align 4, !dbg !89, !tbaa !30
  %condval.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr134.sroa_idx.3, align 8, !dbg !89, !tbaa !30
  %condval.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr134.sroa_idx.3, align 4, !dbg !89, !tbaa !30
  br label %if.end.3, !dbg !90

if.end.3:                                         ; preds = %if.then121.3, %if.end.2
  %condval.sroa.0.0.3 = phi i32 [ %condval.sroa.0.0.copyload.3, %if.then121.3 ], [ 0, %if.end.2 ], !dbg !91
  %condval.sroa.5.0.3 = phi i32 [ %condval.sroa.5.0.copyload.3, %if.then121.3 ], [ 0, %if.end.2 ], !dbg !91
  %condval.sroa.6.0.3 = phi i32 [ %condval.sroa.6.0.copyload.3, %if.then121.3 ], [ 0, %if.end.2 ], !dbg !91
  %condval.sroa.7.0.3 = phi i32 [ %condval.sroa.7.0.copyload.3, %if.then121.3 ], [ 0, %if.end.2 ], !dbg !91
  %45 = shl nuw nsw i32 %33, 8, !dbg !92
  %46 = or disjoint i32 %45, 768, !dbg !92
  %47 = add nuw nsw i32 %46, %mul31, !dbg !93
  %add171.3 = or disjoint i32 %47, %mul39.3, !dbg !94
  %add180.3 = or disjoint i32 %add171.3, %mul48, !dbg !95
  %add189.3 = or disjoint i32 %add180.3, %mul57, !dbg !96
  %48 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add189.3, !dbg !97
  %add.ptr192.3 = getelementptr inbounds i8, ptr addrspace(3) %48, i32 4096, !dbg !97
  store i32 %condval.sroa.0.0.3, ptr addrspace(3) %add.ptr192.3, align 16, !dbg !98, !tbaa !30
  %condval.sroa.5.0.add.ptr192.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %48, i32 4100, !dbg !98
  store i32 %condval.sroa.5.0.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr192.sroa_idx.3, align 4, !dbg !98, !tbaa !30
  %condval.sroa.6.0.add.ptr192.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %48, i32 4104, !dbg !98
  store i32 %condval.sroa.6.0.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr192.sroa_idx.3, align 8, !dbg !98, !tbaa !30
  %condval.sroa.7.0.add.ptr192.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %48, i32 4108, !dbg !98
  store i32 %condval.sroa.7.0.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr192.sroa_idx.3, align 4, !dbg !98, !tbaa !30
  %cmp120.4 = icmp ult i32 %add117, 1008, !dbg !87
  br i1 %cmp120.4, label %if.then121.4, label %if.end.4, !dbg !88

if.then121.4:                                     ; preds = %if.end.3
  %add126.4 = or disjoint i64 %mul123, 2048
  %gep848.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep847, i64 %add126.4
  %condval.sroa.7.0.add.ptr134.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep848.4, i64 12
  %condval.sroa.6.0.add.ptr134.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep848.4, i64 8
  %condval.sroa.5.0.add.ptr134.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep848.4, i64 4
  %condval.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %gep848.4, align 16, !dbg !89, !tbaa !30
  %condval.sroa.5.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr134.sroa_idx.4, align 4, !dbg !89, !tbaa !30
  %condval.sroa.6.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr134.sroa_idx.4, align 8, !dbg !89, !tbaa !30
  %condval.sroa.7.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr134.sroa_idx.4, align 4, !dbg !89, !tbaa !30
  br label %if.end.4, !dbg !90

if.end.4:                                         ; preds = %if.then121.4, %if.end.3
  %condval.sroa.0.0.4 = phi i32 [ %condval.sroa.0.0.copyload.4, %if.then121.4 ], [ 0, %if.end.3 ], !dbg !91
  %condval.sroa.5.0.4 = phi i32 [ %condval.sroa.5.0.copyload.4, %if.then121.4 ], [ 0, %if.end.3 ], !dbg !91
  %condval.sroa.6.0.4 = phi i32 [ %condval.sroa.6.0.copyload.4, %if.then121.4 ], [ 0, %if.end.3 ], !dbg !91
  %condval.sroa.7.0.4 = phi i32 [ %condval.sroa.7.0.copyload.4, %if.then121.4 ], [ 0, %if.end.3 ], !dbg !91
  %49 = shl nuw nsw i32 %33, 8, !dbg !92
  %50 = or disjoint i32 %49, 1024, !dbg !92
  %51 = add nuw nsw i32 %50, %mul31, !dbg !93
  %52 = shl nuw nsw i32 %and34, 5, !dbg !99
  %mul170.4 = and i32 %52, 32, !dbg !99
  %add171.4 = or disjoint i32 %51, %mul170.4, !dbg !94
  %add180.4 = or disjoint i32 %add171.4, %mul48, !dbg !95
  %add189.4 = or disjoint i32 %add180.4, %mul57, !dbg !96
  %53 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add189.4, !dbg !97
  %add.ptr192.4 = getelementptr inbounds i8, ptr addrspace(3) %53, i32 4096, !dbg !97
  store i32 %condval.sroa.0.0.4, ptr addrspace(3) %add.ptr192.4, align 16, !dbg !98, !tbaa !30
  %condval.sroa.5.0.add.ptr192.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %53, i32 4100, !dbg !98
  store i32 %condval.sroa.5.0.4, ptr addrspace(3) %condval.sroa.5.0.add.ptr192.sroa_idx.4, align 4, !dbg !98, !tbaa !30
  %condval.sroa.6.0.add.ptr192.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %53, i32 4104, !dbg !98
  store i32 %condval.sroa.6.0.4, ptr addrspace(3) %condval.sroa.6.0.add.ptr192.sroa_idx.4, align 8, !dbg !98, !tbaa !30
  %condval.sroa.7.0.add.ptr192.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %53, i32 4108, !dbg !98
  store i32 %condval.sroa.7.0.4, ptr addrspace(3) %condval.sroa.7.0.add.ptr192.sroa_idx.4, align 4, !dbg !98, !tbaa !30
  %cmp120.5 = icmp ult i32 %add117, 1004, !dbg !87
  br i1 %cmp120.5, label %if.then121.5, label %if.end.5, !dbg !88

if.then121.5:                                     ; preds = %if.end.4
  %add126.5 = or disjoint i64 %mul123, 2560
  %gep848.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep847, i64 %add126.5
  %condval.sroa.7.0.add.ptr134.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep848.5, i64 12
  %condval.sroa.6.0.add.ptr134.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep848.5, i64 8
  %condval.sroa.5.0.add.ptr134.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep848.5, i64 4
  %condval.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %gep848.5, align 16, !dbg !89, !tbaa !30
  %condval.sroa.5.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr134.sroa_idx.5, align 4, !dbg !89, !tbaa !30
  %condval.sroa.6.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr134.sroa_idx.5, align 8, !dbg !89, !tbaa !30
  %condval.sroa.7.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr134.sroa_idx.5, align 4, !dbg !89, !tbaa !30
  br label %if.end.5, !dbg !90

if.end.5:                                         ; preds = %if.then121.5, %if.end.4
  %condval.sroa.0.0.5 = phi i32 [ %condval.sroa.0.0.copyload.5, %if.then121.5 ], [ 0, %if.end.4 ], !dbg !91
  %condval.sroa.5.0.5 = phi i32 [ %condval.sroa.5.0.copyload.5, %if.then121.5 ], [ 0, %if.end.4 ], !dbg !91
  %condval.sroa.6.0.5 = phi i32 [ %condval.sroa.6.0.copyload.5, %if.then121.5 ], [ 0, %if.end.4 ], !dbg !91
  %condval.sroa.7.0.5 = phi i32 [ %condval.sroa.7.0.copyload.5, %if.then121.5 ], [ 0, %if.end.4 ], !dbg !91
  %54 = shl nuw nsw i32 %33, 8, !dbg !92
  %55 = or disjoint i32 %54, 1280, !dbg !92
  %56 = add nuw nsw i32 %55, %mul31, !dbg !93
  %57 = shl nuw nsw i32 %and34, 5, !dbg !99
  %58 = and i32 %57, 32, !dbg !99
  %59 = or disjoint i32 %58, %56, !dbg !94
  %60 = or disjoint i32 %59, %mul48, !dbg !95
  %61 = or disjoint i32 %60, %mul57, !dbg !96
  %add189.5 = xor i32 %61, 32, !dbg !96
  %62 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add189.5, !dbg !97
  %add.ptr192.5 = getelementptr inbounds i8, ptr addrspace(3) %62, i32 4096, !dbg !97
  store i32 %condval.sroa.0.0.5, ptr addrspace(3) %add.ptr192.5, align 16, !dbg !98, !tbaa !30
  %condval.sroa.5.0.add.ptr192.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %62, i32 4100, !dbg !98
  store i32 %condval.sroa.5.0.5, ptr addrspace(3) %condval.sroa.5.0.add.ptr192.sroa_idx.5, align 4, !dbg !98, !tbaa !30
  %condval.sroa.6.0.add.ptr192.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %62, i32 4104, !dbg !98
  store i32 %condval.sroa.6.0.5, ptr addrspace(3) %condval.sroa.6.0.add.ptr192.sroa_idx.5, align 8, !dbg !98, !tbaa !30
  %condval.sroa.7.0.add.ptr192.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %62, i32 4108, !dbg !98
  store i32 %condval.sroa.7.0.5, ptr addrspace(3) %condval.sroa.7.0.add.ptr192.sroa_idx.5, align 4, !dbg !98, !tbaa !30
  %cmp120.6 = icmp ult i32 %add117, 1000, !dbg !87
  br i1 %cmp120.6, label %if.then121.6, label %if.end.6, !dbg !88

if.then121.6:                                     ; preds = %if.end.5
  %add126.6 = or disjoint i64 %mul123, 3072
  %gep848.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep847, i64 %add126.6
  %condval.sroa.7.0.add.ptr134.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep848.6, i64 12
  %condval.sroa.6.0.add.ptr134.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep848.6, i64 8
  %condval.sroa.5.0.add.ptr134.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep848.6, i64 4
  %condval.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %gep848.6, align 16, !dbg !89, !tbaa !30
  %condval.sroa.5.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr134.sroa_idx.6, align 4, !dbg !89, !tbaa !30
  %condval.sroa.6.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr134.sroa_idx.6, align 8, !dbg !89, !tbaa !30
  %condval.sroa.7.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr134.sroa_idx.6, align 4, !dbg !89, !tbaa !30
  br label %if.end.6, !dbg !90

if.end.6:                                         ; preds = %if.then121.6, %if.end.5
  %condval.sroa.0.0.6 = phi i32 [ %condval.sroa.0.0.copyload.6, %if.then121.6 ], [ 0, %if.end.5 ], !dbg !91
  %condval.sroa.5.0.6 = phi i32 [ %condval.sroa.5.0.copyload.6, %if.then121.6 ], [ 0, %if.end.5 ], !dbg !91
  %condval.sroa.6.0.6 = phi i32 [ %condval.sroa.6.0.copyload.6, %if.then121.6 ], [ 0, %if.end.5 ], !dbg !91
  %condval.sroa.7.0.6 = phi i32 [ %condval.sroa.7.0.copyload.6, %if.then121.6 ], [ 0, %if.end.5 ], !dbg !91
  %63 = shl nuw nsw i32 %33, 8, !dbg !92
  %64 = or disjoint i32 %63, 1536, !dbg !92
  %65 = add nuw nsw i32 %64, %mul31, !dbg !93
  %66 = shl nuw nsw i32 %and34, 5, !dbg !99
  %mul170.6 = and i32 %66, 32, !dbg !99
  %add171.6 = or disjoint i32 %65, %mul170.6, !dbg !94
  %add180.6 = or disjoint i32 %add171.6, %mul48, !dbg !95
  %add189.6 = or disjoint i32 %add180.6, %mul57, !dbg !96
  %67 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add189.6, !dbg !97
  %add.ptr192.6 = getelementptr inbounds i8, ptr addrspace(3) %67, i32 4096, !dbg !97
  store i32 %condval.sroa.0.0.6, ptr addrspace(3) %add.ptr192.6, align 16, !dbg !98, !tbaa !30
  %condval.sroa.5.0.add.ptr192.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %67, i32 4100, !dbg !98
  store i32 %condval.sroa.5.0.6, ptr addrspace(3) %condval.sroa.5.0.add.ptr192.sroa_idx.6, align 4, !dbg !98, !tbaa !30
  %condval.sroa.6.0.add.ptr192.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %67, i32 4104, !dbg !98
  store i32 %condval.sroa.6.0.6, ptr addrspace(3) %condval.sroa.6.0.add.ptr192.sroa_idx.6, align 8, !dbg !98, !tbaa !30
  %condval.sroa.7.0.add.ptr192.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %67, i32 4108, !dbg !98
  store i32 %condval.sroa.7.0.6, ptr addrspace(3) %condval.sroa.7.0.add.ptr192.sroa_idx.6, align 4, !dbg !98, !tbaa !30
  %cmp120.7 = icmp ult i32 %add117, 996, !dbg !87
  br i1 %cmp120.7, label %if.then121.7, label %if.end.7, !dbg !88

if.then121.7:                                     ; preds = %if.end.6
  %add126.7 = or disjoint i64 %mul123, 3584
  %gep848.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep847, i64 %add126.7
  %condval.sroa.7.0.add.ptr134.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep848.7, i64 12
  %condval.sroa.6.0.add.ptr134.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep848.7, i64 8
  %condval.sroa.5.0.add.ptr134.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep848.7, i64 4
  %condval.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %gep848.7, align 16, !dbg !89, !tbaa !30
  %condval.sroa.5.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr134.sroa_idx.7, align 4, !dbg !89, !tbaa !30
  %condval.sroa.6.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr134.sroa_idx.7, align 8, !dbg !89, !tbaa !30
  %condval.sroa.7.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr134.sroa_idx.7, align 4, !dbg !89, !tbaa !30
  br label %if.end.7, !dbg !90

if.end.7:                                         ; preds = %if.then121.7, %if.end.6
  %condval.sroa.0.0.7 = phi i32 [ %condval.sroa.0.0.copyload.7, %if.then121.7 ], [ 0, %if.end.6 ], !dbg !91
  %condval.sroa.5.0.7 = phi i32 [ %condval.sroa.5.0.copyload.7, %if.then121.7 ], [ 0, %if.end.6 ], !dbg !91
  %condval.sroa.6.0.7 = phi i32 [ %condval.sroa.6.0.copyload.7, %if.then121.7 ], [ 0, %if.end.6 ], !dbg !91
  %condval.sroa.7.0.7 = phi i32 [ %condval.sroa.7.0.copyload.7, %if.then121.7 ], [ 0, %if.end.6 ], !dbg !91
  %68 = shl nuw nsw i32 %33, 8, !dbg !92
  %69 = or disjoint i32 %68, 1792, !dbg !92
  %narrow1250 = add nuw nsw i32 %69, %mul31, !dbg !93
  %narrow1251 = shl nuw nsw i32 %and34, 5, !dbg !99
  %70 = and i32 %narrow1251, 32, !dbg !99
  %71 = or disjoint i32 %70, %narrow1250, !dbg !94
  %72 = or disjoint i32 %71, %mul48, !dbg !95
  %73 = or disjoint i32 %72, %mul57, !dbg !96
  %add189.7 = xor i32 %73, 32, !dbg !96
  %74 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add189.7, !dbg !97
  %add.ptr192.7 = getelementptr inbounds i8, ptr addrspace(3) %74, i32 4096, !dbg !97
  store i32 %condval.sroa.0.0.7, ptr addrspace(3) %add.ptr192.7, align 16, !dbg !98, !tbaa !30
  %condval.sroa.5.0.add.ptr192.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %74, i32 4100, !dbg !98
  store i32 %condval.sroa.5.0.7, ptr addrspace(3) %condval.sroa.5.0.add.ptr192.sroa_idx.7, align 4, !dbg !98, !tbaa !30
  %condval.sroa.6.0.add.ptr192.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %74, i32 4104, !dbg !98
  store i32 %condval.sroa.6.0.7, ptr addrspace(3) %condval.sroa.6.0.add.ptr192.sroa_idx.7, align 8, !dbg !98, !tbaa !30
  %condval.sroa.7.0.add.ptr192.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %74, i32 4108, !dbg !98
  store i32 %condval.sroa.7.0.7, ptr addrspace(3) %condval.sroa.7.0.add.ptr192.sroa_idx.7, align 4, !dbg !98, !tbaa !30
  fence syncscope("warp") release, !dbg !100
  tail call void @llvm.mxc.barrier.warp(), !dbg !103
  fence syncscope("warp") acquire, !dbg !104
  %add235 = or disjoint i32 %mul70, %mul79, !dbg !105
  %add243 = or disjoint i32 %add235, %mul87, !dbg !106
  %add251 = or disjoint i32 %add243, %mul95, !dbg !107
  %add256 = or disjoint i32 %add251, %mul100, !dbg !108
  %gep = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @buf_dyn_shmem, i32 4096), i32 %add256, !dbg !109
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %gep, align 8, !dbg !110
  %75 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %19, <4 x float> zeroinitializer), !dbg !111
  %add226.1 = or disjoint i32 %mul70, 1024, !dbg !112
  %add235.1 = or disjoint i32 %add226.1, %mul79, !dbg !105
  %add243.1 = or disjoint i32 %add235.1, %mul87, !dbg !106
  %add251.1 = or disjoint i32 %add243.1, %mul95, !dbg !107
  %add256.1 = or disjoint i32 %add251.1, %mul100, !dbg !108
  %gep.1 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @buf_dyn_shmem, i32 4096), i32 %add256.1, !dbg !109
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %gep.1, align 8, !dbg !110
  %76 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %19, <4 x float> zeroinitializer), !dbg !111
  %add243.1884 = or disjoint i32 %add235, %mul87.1, !dbg !106
  %add251.1885 = or disjoint i32 %add243.1884, %mul95, !dbg !107
  %add256.1886 = or disjoint i32 %add251.1885, %mul100, !dbg !108
  %gep.1887 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @buf_dyn_shmem, i32 4096), i32 %add256.1886, !dbg !109
  %k_local.sroa.0.0.copyload.1888 = load <4 x half>, ptr addrspace(3) %gep.1887, align 8, !dbg !110
  %77 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1888, <4 x half> %21, <4 x float> %75), !dbg !111
  %add243.1.1 = or disjoint i32 %add235.1, %mul87.1, !dbg !106
  %add251.1.1 = or disjoint i32 %add243.1.1, %mul95, !dbg !107
  %add256.1.1 = or disjoint i32 %add251.1.1, %mul100, !dbg !108
  %gep.1.1 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @buf_dyn_shmem, i32 4096), i32 %add256.1.1, !dbg !109
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %gep.1.1, align 8, !dbg !110
  %78 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %21, <4 x float> %76), !dbg !111
  %add235.2 = or disjoint i32 %mul70, %mul79.2, !dbg !105
  %add243.2 = or disjoint i32 %add235.2, %mul87.2, !dbg !106
  %add251.2 = or disjoint i32 %add243.2, %mul95, !dbg !107
  %add256.2 = or disjoint i32 %add251.2, %mul100, !dbg !108
  %gep.2 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @buf_dyn_shmem, i32 4096), i32 %add256.2, !dbg !109
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %gep.2, align 8, !dbg !110
  %79 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %23, <4 x float> %77), !dbg !111
  %add235.1.2 = or disjoint i32 %add226.1, %mul79.2, !dbg !105
  %add243.1.2 = or disjoint i32 %add235.1.2, %mul87.2, !dbg !106
  %add251.1.2 = or disjoint i32 %add243.1.2, %mul95, !dbg !107
  %add256.1.2 = or disjoint i32 %add251.1.2, %mul100, !dbg !108
  %gep.1.2 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @buf_dyn_shmem, i32 4096), i32 %add256.1.2, !dbg !109
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %gep.1.2, align 8, !dbg !110
  %80 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %23, <4 x float> %78), !dbg !111
  %add243.3 = or disjoint i32 %add235.2, %mul87.3, !dbg !106
  %add251.3 = or disjoint i32 %add243.3, %mul95, !dbg !107
  %add256.3 = or disjoint i32 %add251.3, %mul100, !dbg !108
  %gep.3 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @buf_dyn_shmem, i32 4096), i32 %add256.3, !dbg !109
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %gep.3, align 8, !dbg !110
  %81 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %25, <4 x float> %79), !dbg !111
  %add243.1.3 = or disjoint i32 %add235.1.2, %mul87.3, !dbg !106
  %add251.1.3 = or disjoint i32 %add243.1.3, %mul95, !dbg !107
  %add256.1.3 = or disjoint i32 %add251.1.3, %mul100, !dbg !108
  %gep.1.3 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @buf_dyn_shmem, i32 4096), i32 %add256.1.3, !dbg !109
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %gep.1.3, align 8, !dbg !110
  %82 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %25, <4 x float> %80), !dbg !111
  %add226.4 = or disjoint i32 %mul70, 2048, !dbg !112
  %add235.4 = or disjoint i32 %add226.4, %mul79.4, !dbg !105
  %add243.4 = or disjoint i32 %add235.4, %mul87.4, !dbg !106
  %add251.4 = or disjoint i32 %add243.4, %mul95, !dbg !107
  %add256.4 = or disjoint i32 %add251.4, %mul100, !dbg !108
  %gep.4 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @buf_dyn_shmem, i32 4096), i32 %add256.4, !dbg !109
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %gep.4, align 8, !dbg !110
  %83 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %26, <4 x float> %81), !dbg !111
  %add226.1.4 = or disjoint i32 %mul70, 3072, !dbg !112
  %add235.1.4 = or disjoint i32 %add226.1.4, %mul79.4, !dbg !105
  %add243.1.4 = or disjoint i32 %add235.1.4, %mul87.4, !dbg !106
  %add251.1.4 = or disjoint i32 %add243.1.4, %mul95, !dbg !107
  %add256.1.4 = or disjoint i32 %add251.1.4, %mul100, !dbg !108
  %gep.1.4 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @buf_dyn_shmem, i32 4096), i32 %add256.1.4, !dbg !109
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %gep.1.4, align 8, !dbg !110
  %84 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %26, <4 x float> %82), !dbg !111
  %add243.5 = or disjoint i32 %add235.4, %mul87.5, !dbg !106
  %add251.5 = or disjoint i32 %add243.5, %mul95, !dbg !107
  %add256.5 = or disjoint i32 %add251.5, %mul100, !dbg !108
  %gep.5 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @buf_dyn_shmem, i32 4096), i32 %add256.5, !dbg !109
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %gep.5, align 8, !dbg !110
  %85 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %28, <4 x float> %83), !dbg !111
  %add243.1.5 = or disjoint i32 %add235.1.4, %mul87.5, !dbg !106
  %add251.1.5 = or disjoint i32 %add243.1.5, %mul95, !dbg !107
  %add256.1.5 = or disjoint i32 %add251.1.5, %mul100, !dbg !108
  %gep.1.5 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @buf_dyn_shmem, i32 4096), i32 %add256.1.5, !dbg !109
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %gep.1.5, align 8, !dbg !110
  %86 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %28, <4 x float> %84), !dbg !111
  %add235.6 = or disjoint i32 %add226.4, %mul79.6, !dbg !105
  %add243.6 = or disjoint i32 %add235.6, %mul87.6, !dbg !106
  %add251.6 = or disjoint i32 %add243.6, %mul95, !dbg !107
  %add256.6 = or disjoint i32 %add251.6, %mul100, !dbg !108
  %gep.6 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @buf_dyn_shmem, i32 4096), i32 %add256.6, !dbg !109
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %gep.6, align 8, !dbg !110
  %87 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %30, <4 x float> %85), !dbg !111
  %add235.1.6 = or disjoint i32 %add226.1.4, %mul79.6, !dbg !105
  %add243.1.6 = or disjoint i32 %add235.1.6, %mul87.6, !dbg !106
  %add251.1.6 = or disjoint i32 %add243.1.6, %mul95, !dbg !107
  %add256.1.6 = or disjoint i32 %add251.1.6, %mul100, !dbg !108
  %gep.1.6 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @buf_dyn_shmem, i32 4096), i32 %add256.1.6, !dbg !109
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %gep.1.6, align 8, !dbg !110
  %88 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %30, <4 x float> %86), !dbg !111
  %add243.7 = or disjoint i32 %add235.6, %mul87.7, !dbg !106
  %add251.7 = or disjoint i32 %add243.7, %mul95, !dbg !107
  %add256.7 = or disjoint i32 %add251.7, %mul100, !dbg !108
  %gep.7 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @buf_dyn_shmem, i32 4096), i32 %add256.7, !dbg !109
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %gep.7, align 8, !dbg !110
  %89 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %32, <4 x float> %87), !dbg !111
  %add243.1.7 = or disjoint i32 %add235.1.6, %mul87.7, !dbg !106
  %add251.1.7 = or disjoint i32 %add243.1.7, %mul95, !dbg !107
  %add256.1.7 = or disjoint i32 %add251.1.7, %mul100, !dbg !108
  %gep.1.7 = getelementptr %struct.__half, ptr addrspace(3) getelementptr (i8, ptr addrspace(3) @buf_dyn_shmem, i32 4096), i32 %add256.1.7, !dbg !109
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %gep.1.7, align 8, !dbg !110
  %90 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %32, <4 x float> %88), !dbg !111
  %mul287 = and i32 %and34, 252
  %add288 = add nuw nsw i32 %mul7, %mul287
  %cmp294.not = icmp sgt i32 %add288, %shr, !dbg !113
  %scores.sroa.0.0.vec.extract = extractelement <4 x float> %89, i64 0
  %spec.select = select i1 %cmp294.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract, !dbg !114
  %cmp294.not.1.not = icmp slt i32 %add288, %shr, !dbg !113
  %scores.sroa.0.4.vec.extract = extractelement <4 x float> %89, i64 1, !dbg !114
  %condval_1.0.1 = select i1 %cmp294.not.1.not, float %scores.sroa.0.4.vec.extract, float 0xFFF0000000000000, !dbg !114
  %add289.2 = or disjoint i32 %add288, 2, !dbg !115
  %cmp294.not.2 = icmp sgt i32 %add289.2, %shr, !dbg !113
  %scores.sroa.0.8.vec.extract = extractelement <4 x float> %89, i64 2, !dbg !114
  %condval_1.0.2 = select i1 %cmp294.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract, !dbg !114
  %add289.3 = or disjoint i32 %add288, 3, !dbg !115
  %cmp294.not.3 = icmp sgt i32 %add289.3, %shr, !dbg !113
  %scores.sroa.0.12.vec.extract = extractelement <4 x float> %89, i64 3, !dbg !114
  %condval_1.0.3 = select i1 %cmp294.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract, !dbg !114
  %add291.4 = add nuw nsw i32 %add288, 16, !dbg !116
  %cmp294.not.4 = icmp sgt i32 %add291.4, %shr, !dbg !113
  %scores.sroa.58.16.vec.extract = extractelement <4 x float> %90, i64 0, !dbg !114
  %condval_1.0.4 = select i1 %cmp294.not.4, float 0xFFF0000000000000, float %scores.sroa.58.16.vec.extract, !dbg !114
  %add291.5 = add nuw nsw i32 %add288, 17, !dbg !116
  %cmp294.not.5 = icmp sgt i32 %add291.5, %shr, !dbg !113
  %scores.sroa.58.20.vec.extract = extractelement <4 x float> %90, i64 1, !dbg !114
  %condval_1.0.5 = select i1 %cmp294.not.5, float 0xFFF0000000000000, float %scores.sroa.58.20.vec.extract, !dbg !114
  %add291.6 = add nuw nsw i32 %add288, 18, !dbg !116
  %cmp294.not.6 = icmp sgt i32 %add291.6, %shr, !dbg !113
  %scores.sroa.58.24.vec.extract = extractelement <4 x float> %90, i64 2, !dbg !114
  %condval_1.0.6 = select i1 %cmp294.not.6, float 0xFFF0000000000000, float %scores.sroa.58.24.vec.extract, !dbg !114
  %add291.7 = add nuw nsw i32 %add288, 19, !dbg !116
  %cmp294.not.7 = icmp sgt i32 %add291.7, %shr, !dbg !113
  %scores.sroa.58.28.vec.extract = extractelement <4 x float> %90, i64 3, !dbg !114
  %condval_1.0.7 = select i1 %cmp294.not.7, float 0xFFF0000000000000, float %scores.sroa.58.28.vec.extract, !dbg !114
  %91 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !117
  %92 = tail call contract noundef float @llvm.maxnum.f32(float %91, float %condval_1.0.4), !dbg !117
  %93 = tail call contract noundef float @llvm.maxnum.f32(float %92, float %condval_1.0.1), !dbg !117
  %94 = tail call contract noundef float @llvm.maxnum.f32(float %93, float %condval_1.0.5), !dbg !117
  %95 = tail call contract noundef float @llvm.maxnum.f32(float %94, float %condval_1.0.2), !dbg !117
  %96 = tail call contract noundef float @llvm.maxnum.f32(float %95, float %condval_1.0.6), !dbg !117
  %97 = tail call contract noundef float @llvm.maxnum.f32(float %96, float %condval_1.0.3), !dbg !117
  %98 = tail call contract noundef float @llvm.maxnum.f32(float %97, float %condval_1.0.7), !dbg !117
  %99 = bitcast float %98 to i32, !dbg !121
  %100 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !130
  %101 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %100) #11, !dbg !135
  %xor.i.i.i = xor i32 %101, 32, !dbg !136
  %102 = and i32 %101, -64, !dbg !137
  %and.i.i.i = add nsw i32 %102, 64, !dbg !137
  %cmp.not.i.i.i = icmp slt i32 %xor.i.i.i, %and.i.i.i, !dbg !138
  %cond.i.i.i = select i1 %cmp.not.i.i.i, i32 %xor.i.i.i, i32 %101, !dbg !139
  %shl.i.i.i = shl i32 %cond.i.i.i, 2, !dbg !140
  %103 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i, i32 %99), !dbg !141
  %104 = bitcast i32 %103 to float, !dbg !142
  %105 = tail call contract noundef float @llvm.maxnum.f32(float %98, float %104), !dbg !143
  %106 = bitcast float %105 to i32, !dbg !151
  %107 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !156
  %108 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %107) #11, !dbg !159
  %xor.i.i.i.i = xor i32 %108, 16, !dbg !160
  %109 = and i32 %108, -64, !dbg !161
  %and.i.i.i.i = add nsw i32 %109, 64, !dbg !161
  %cmp.not.i.i.i.i = icmp slt i32 %xor.i.i.i.i, %and.i.i.i.i, !dbg !162
  %cond.i.i.i.i = select i1 %cmp.not.i.i.i.i, i32 %xor.i.i.i.i, i32 %108, !dbg !163
  %shl.i.i.i.i = shl i32 %cond.i.i.i.i, 2, !dbg !164
  %110 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i, i32 %106), !dbg !165
  %111 = bitcast i32 %110 to float, !dbg !166
  %112 = tail call contract noundef float @llvm.maxnum.f32(float %105, float %111), !dbg !167
  %sub = fsub contract float %spec.select, %112, !dbg !171
  %mul338 = fmul contract float %sub, 0x3FC0527DC0000000, !dbg !172
  %cmp.i.i = fcmp contract olt float %mul338, -1.260000e+02, !dbg !173
  %cond.i.i = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !173
  %add.i.i = fadd contract float %mul338, %cond.i.i, !dbg !173
  %113 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !173
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !173
  %mul.i.i = fmul contract float %cond2.i.i, %113, !dbg !173
  %sub.1 = fsub contract float %condval_1.0.1, %112, !dbg !171
  %mul338.1 = fmul contract float %sub.1, 0x3FC0527DC0000000, !dbg !172
  %cmp.i.i.1 = fcmp contract olt float %mul338.1, -1.260000e+02, !dbg !173
  %cond.i.i.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !173
  %add.i.i.1 = fadd contract float %mul338.1, %cond.i.i.1, !dbg !173
  %114 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !173
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !173
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %114, !dbg !173
  %sub.2 = fsub contract float %condval_1.0.2, %112, !dbg !171
  %mul338.2 = fmul contract float %sub.2, 0x3FC0527DC0000000, !dbg !172
  %cmp.i.i.2 = fcmp contract olt float %mul338.2, -1.260000e+02, !dbg !173
  %cond.i.i.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !173
  %add.i.i.2 = fadd contract float %mul338.2, %cond.i.i.2, !dbg !173
  %115 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !173
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !173
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %115, !dbg !173
  %sub.3 = fsub contract float %condval_1.0.3, %112, !dbg !171
  %mul338.3 = fmul contract float %sub.3, 0x3FC0527DC0000000, !dbg !172
  %cmp.i.i.3 = fcmp contract olt float %mul338.3, -1.260000e+02, !dbg !173
  %cond.i.i.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !173
  %add.i.i.3 = fadd contract float %mul338.3, %cond.i.i.3, !dbg !173
  %116 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !173
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !173
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %116, !dbg !173
  %sub.4 = fsub contract float %condval_1.0.4, %112, !dbg !171
  %mul338.4 = fmul contract float %sub.4, 0x3FC0527DC0000000, !dbg !172
  %cmp.i.i.4 = fcmp contract olt float %mul338.4, -1.260000e+02, !dbg !173
  %cond.i.i.4 = select contract i1 %cmp.i.i.4, float 6.400000e+01, float 0.000000e+00, !dbg !173
  %add.i.i.4 = fadd contract float %mul338.4, %cond.i.i.4, !dbg !173
  %117 = tail call contract float @llvm.exp2.f32(float %add.i.i.4), !dbg !173
  %cond2.i.i.4 = select contract i1 %cmp.i.i.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !173
  %mul.i.i.4 = fmul contract float %cond2.i.i.4, %117, !dbg !173
  %sub.5 = fsub contract float %condval_1.0.5, %112, !dbg !171
  %mul338.5 = fmul contract float %sub.5, 0x3FC0527DC0000000, !dbg !172
  %cmp.i.i.5 = fcmp contract olt float %mul338.5, -1.260000e+02, !dbg !173
  %cond.i.i.5 = select contract i1 %cmp.i.i.5, float 6.400000e+01, float 0.000000e+00, !dbg !173
  %add.i.i.5 = fadd contract float %mul338.5, %cond.i.i.5, !dbg !173
  %118 = tail call contract float @llvm.exp2.f32(float %add.i.i.5), !dbg !173
  %cond2.i.i.5 = select contract i1 %cmp.i.i.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !173
  %mul.i.i.5 = fmul contract float %cond2.i.i.5, %118, !dbg !173
  %sub.6 = fsub contract float %condval_1.0.6, %112, !dbg !171
  %mul338.6 = fmul contract float %sub.6, 0x3FC0527DC0000000, !dbg !172
  %cmp.i.i.6 = fcmp contract olt float %mul338.6, -1.260000e+02, !dbg !173
  %cond.i.i.6 = select contract i1 %cmp.i.i.6, float 6.400000e+01, float 0.000000e+00, !dbg !173
  %add.i.i.6 = fadd contract float %mul338.6, %cond.i.i.6, !dbg !173
  %119 = tail call contract float @llvm.exp2.f32(float %add.i.i.6), !dbg !173
  %cond2.i.i.6 = select contract i1 %cmp.i.i.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !173
  %mul.i.i.6 = fmul contract float %cond2.i.i.6, %119, !dbg !173
  %sub.7 = fsub contract float %condval_1.0.7, %112, !dbg !171
  %mul338.7 = fmul contract float %sub.7, 0x3FC0527DC0000000, !dbg !172
  %cmp.i.i.7 = fcmp contract olt float %mul338.7, -1.260000e+02, !dbg !173
  %cond.i.i.7 = select contract i1 %cmp.i.i.7, float 6.400000e+01, float 0.000000e+00, !dbg !173
  %add.i.i.7 = fadd contract float %mul338.7, %cond.i.i.7, !dbg !173
  %120 = tail call contract float @llvm.exp2.f32(float %add.i.i.7), !dbg !173
  %cond2.i.i.7 = select contract i1 %cmp.i.i.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !173
  %mul.i.i.7 = fmul contract float %cond2.i.i.7, %120, !dbg !173
  %add357 = fadd contract float %mul.i.i, 0.000000e+00, !dbg !176
  %add357.1 = fadd contract float %add357, %mul.i.i.4, !dbg !176
  %add357.2 = fadd contract float %add357.1, %mul.i.i.1, !dbg !176
  %add357.3 = fadd contract float %add357.2, %mul.i.i.5, !dbg !176
  %add357.4 = fadd contract float %add357.3, %mul.i.i.2, !dbg !176
  %add357.5 = fadd contract float %add357.4, %mul.i.i.6, !dbg !176
  %add357.6 = fadd contract float %add357.5, %mul.i.i.3, !dbg !176
  %add357.7 = fadd contract float %add357.6, %mul.i.i.7, !dbg !176
  %121 = bitcast float %add357.7 to i32, !dbg !177
  %122 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !182
  %123 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %122) #11, !dbg !185
  %xor.i.i.i802 = xor i32 %123, 32, !dbg !186
  %124 = and i32 %123, -64, !dbg !187
  %and.i.i.i803 = add nsw i32 %124, 64, !dbg !187
  %cmp.not.i.i.i804 = icmp slt i32 %xor.i.i.i802, %and.i.i.i803, !dbg !188
  %cond.i.i.i805 = select i1 %cmp.not.i.i.i804, i32 %xor.i.i.i802, i32 %123, !dbg !189
  %shl.i.i.i806 = shl i32 %cond.i.i.i805, 2, !dbg !190
  %125 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i806, i32 %121), !dbg !191
  %126 = bitcast i32 %125 to float, !dbg !192
  %add.i.i807 = fadd contract float %add357.7, %126, !dbg !193
  %127 = bitcast float %add.i.i807 to i32, !dbg !196
  %128 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !201
  %129 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %128) #11, !dbg !204
  %xor.i.i.i.i808 = xor i32 %129, 16, !dbg !205
  %130 = and i32 %129, -64, !dbg !206
  %and.i.i.i.i809 = add nsw i32 %130, 64, !dbg !206
  %cmp.not.i.i.i.i810 = icmp slt i32 %xor.i.i.i.i808, %and.i.i.i.i809, !dbg !207
  %cond.i.i.i.i811 = select i1 %cmp.not.i.i.i.i810, i32 %xor.i.i.i.i808, i32 %129, !dbg !208
  %shl.i.i.i.i812 = shl i32 %cond.i.i.i.i811, 2, !dbg !209
  %131 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i812, i32 %127), !dbg !210
  %132 = bitcast i32 %131 to float, !dbg !211
  %add.i.i.i = fadd contract float %add.i.i807, %132, !dbg !212
  %div = fdiv contract float %mul.i.i, %add.i.i.i, !dbg !214
  %div.1 = fdiv contract float %mul.i.i.1, %add.i.i.i, !dbg !214
  %div.2 = fdiv contract float %mul.i.i.2, %add.i.i.i, !dbg !214
  %div.3 = fdiv contract float %mul.i.i.3, %add.i.i.i, !dbg !214
  %div.4 = fdiv contract float %mul.i.i.4, %add.i.i.i, !dbg !214
  %div.5 = fdiv contract float %mul.i.i.5, %add.i.i.i, !dbg !214
  %div.6 = fdiv contract float %mul.i.i.6, %add.i.i.i, !dbg !214
  %div.7 = fdiv contract float %mul.i.i.7, %add.i.i.i, !dbg !214
  %133 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !215
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !215, !noalias !223
  %134 = fptrunc float %div to half, !dbg !215
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %133), !dbg !215, !noalias !223
  %135 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !228
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !228, !noalias !223
  %136 = fptrunc float %div.1 to half, !dbg !228
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %135), !dbg !228, !noalias !223
  %137 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !230
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !230, !noalias !234
  %138 = fptrunc float %div.2 to half, !dbg !230
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %137), !dbg !230, !noalias !234
  %139 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !239, !noalias !234
  %140 = fptrunc float %div.3 to half, !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %139), !dbg !239, !noalias !234
  %141 = insertelement <4 x half> poison, half %134, i64 0, !dbg !241
  %142 = insertelement <4 x half> %141, half %136, i64 1, !dbg !241
  %143 = insertelement <4 x half> %142, half %138, i64 2, !dbg !241
  %144 = insertelement <4 x half> %143, half %140, i64 3, !dbg !241
  %145 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !215
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !215, !noalias !223
  %146 = fptrunc float %div.4 to half, !dbg !215
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %145), !dbg !215, !noalias !223
  %147 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !228
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !228, !noalias !223
  %148 = fptrunc float %div.5 to half, !dbg !228
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %147), !dbg !228, !noalias !223
  %149 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !230
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !230, !noalias !234
  %150 = fptrunc float %div.6 to half, !dbg !230
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %149), !dbg !230, !noalias !234
  %151 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !239, !noalias !234
  %152 = fptrunc float %div.7 to half, !dbg !239
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %151), !dbg !239, !noalias !234
  %153 = insertelement <4 x half> poison, half %146, i64 0, !dbg !241
  %154 = insertelement <4 x half> %153, half %148, i64 1, !dbg !241
  %155 = insertelement <4 x half> %154, half %150, i64 2, !dbg !241
  %156 = insertelement <4 x half> %155, half %152, i64 3, !dbg !241
  fence syncscope("warp") release, !dbg !242
  tail call void @llvm.mxc.barrier.warp(), !dbg !245
  fence syncscope("warp") acquire, !dbg !246
  %shr407 = lshr i32 %4, 3
  %add408 = add nuw nsw i32 %mul7, %shr407
  %mul465 = and i32 %mul22, 8128
  %add472768 = and i32 %mul22, 32
  %shr468769 = add nuw nsw i32 %add472768, %4
  %mul474 = and i32 %shr468769, 32
  %add482770 = and i32 %mul22, 16
  %and477771 = add nuw nsw i32 %add482770, %4
  %mul484 = and i32 %and477771, 16
  %and487773 = mul nuw nsw i32 %4, 9
  %mul493 = and i32 %and487773, 8
  %157 = shl nuw nsw i32 %4, 4
  %158 = and i32 %157, 16256
  %159 = shl i32 %1, 6
  %160 = and i32 %159, 64
  %161 = and i32 %mul22, 56
  %162 = or disjoint i32 %158, %160
  %163 = or disjoint i32 %162, %161
  %164 = zext nneg i32 %163 to i64
  %add426 = or disjoint i64 %mul123, %164
  %cmp411 = icmp ult i32 %add408, 1024, !dbg !247
  br i1 %cmp411, label %if.then412, label %if.end461, !dbg !248

if.then412:                                       ; preds = %if.end.7
  %165 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add426, !dbg !249
  %166 = getelementptr inbounds i8, ptr addrspace(4) %165, i64 %.idx, !dbg !249
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %166, align 16, !dbg !250, !tbaa !30
  %condval_2.sroa.5.0.add.ptr437.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %166, i64 4, !dbg !250
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr437.sroa_idx, align 4, !dbg !250, !tbaa !30
  %condval_2.sroa.6.0.add.ptr437.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %166, i64 8, !dbg !250
  %condval_2.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr437.sroa_idx, align 8, !dbg !250, !tbaa !30
  %condval_2.sroa.7.0.add.ptr437.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %166, i64 12, !dbg !250
  %condval_2.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr437.sroa_idx, align 4, !dbg !250, !tbaa !30
  br label %if.end461, !dbg !251

if.end461:                                        ; preds = %if.end.7, %if.then412
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then412 ], [ 0, %if.end.7 ], !dbg !91
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then412 ], [ 0, %if.end.7 ], !dbg !91
  %condval_2.sroa.6.0 = phi i32 [ %condval_2.sroa.6.0.copyload, %if.then412 ], [ 0, %if.end.7 ], !dbg !91
  %condval_2.sroa.7.0 = phi i32 [ %condval_2.sroa.7.0.copyload, %if.then412 ], [ 0, %if.end.7 ], !dbg !91
  %167 = or disjoint i32 %mul465, %mul474, !dbg !252
  %168 = or disjoint i32 %167, %mul484, !dbg !253
  %169 = or disjoint i32 %168, %mul493, !dbg !254
  %add.ptr496 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %169, !dbg !255
  store i32 %condval_2.sroa.0.0, ptr addrspace(3) %add.ptr496, align 16, !dbg !256, !tbaa !30
  %condval_2.sroa.5.0.add.ptr496.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr496, i32 4, !dbg !256
  store i32 %condval_2.sroa.5.0, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr496.sroa_idx, align 4, !dbg !256, !tbaa !30
  %condval_2.sroa.6.0.add.ptr496.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr496, i32 8, !dbg !256
  store i32 %condval_2.sroa.6.0, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr496.sroa_idx, align 8, !dbg !256, !tbaa !30
  %condval_2.sroa.7.0.add.ptr496.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr496, i32 12, !dbg !256
  store i32 %condval_2.sroa.7.0, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr496.sroa_idx, align 4, !dbg !256, !tbaa !30
  %cmp411.1 = icmp ult i32 %add408, 1016, !dbg !247
  br i1 %cmp411.1, label %if.then412.1, label %if.end461.1, !dbg !248

if.then412.1:                                     ; preds = %if.end461
  %170 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add426, !dbg !249
  %171 = getelementptr inbounds i8, ptr addrspace(4) %170, i64 %.idx, !dbg !249
  %add.ptr437.1 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 2048, !dbg !249
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %add.ptr437.1, align 16, !dbg !250, !tbaa !30
  %condval_2.sroa.5.0.add.ptr437.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 2052, !dbg !250
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr437.sroa_idx.1, align 4, !dbg !250, !tbaa !30
  %condval_2.sroa.6.0.add.ptr437.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 2056, !dbg !250
  %condval_2.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr437.sroa_idx.1, align 8, !dbg !250, !tbaa !30
  %condval_2.sroa.7.0.add.ptr437.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 2060, !dbg !250
  %condval_2.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr437.sroa_idx.1, align 4, !dbg !250, !tbaa !30
  br label %if.end461.1, !dbg !251

if.end461.1:                                      ; preds = %if.then412.1, %if.end461
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then412.1 ], [ 0, %if.end461 ], !dbg !91
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then412.1 ], [ 0, %if.end461 ], !dbg !91
  %condval_2.sroa.6.0.1 = phi i32 [ %condval_2.sroa.6.0.copyload.1, %if.then412.1 ], [ 0, %if.end461 ], !dbg !91
  %condval_2.sroa.7.0.1 = phi i32 [ %condval_2.sroa.7.0.copyload.1, %if.then412.1 ], [ 0, %if.end461 ], !dbg !91
  %172 = add nuw nsw i32 %mul465, 512, !dbg !257
  %173 = or disjoint i32 %172, %mul474, !dbg !252
  %174 = or disjoint i32 %173, %mul484, !dbg !253
  %175 = or disjoint i32 %174, %mul493, !dbg !254
  %add.ptr496.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %175, !dbg !255
  store i32 %condval_2.sroa.0.0.1, ptr addrspace(3) %add.ptr496.1, align 16, !dbg !256, !tbaa !30
  %condval_2.sroa.5.0.add.ptr496.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr496.1, i32 4, !dbg !256
  store i32 %condval_2.sroa.5.0.1, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr496.sroa_idx.1, align 4, !dbg !256, !tbaa !30
  %condval_2.sroa.6.0.add.ptr496.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr496.1, i32 8, !dbg !256
  store i32 %condval_2.sroa.6.0.1, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr496.sroa_idx.1, align 8, !dbg !256, !tbaa !30
  %condval_2.sroa.7.0.add.ptr496.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr496.1, i32 12, !dbg !256
  store i32 %condval_2.sroa.7.0.1, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr496.sroa_idx.1, align 4, !dbg !256, !tbaa !30
  %cmp411.2 = icmp ult i32 %add408, 1008, !dbg !247
  br i1 %cmp411.2, label %if.then412.2, label %if.end461.2, !dbg !248

if.then412.2:                                     ; preds = %if.end461.1
  %176 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add426, !dbg !249
  %177 = getelementptr inbounds i8, ptr addrspace(4) %176, i64 %.idx, !dbg !249
  %add.ptr437.2 = getelementptr inbounds i8, ptr addrspace(4) %177, i64 4096, !dbg !249
  %condval_2.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %add.ptr437.2, align 16, !dbg !250, !tbaa !30
  %condval_2.sroa.5.0.add.ptr437.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %177, i64 4100, !dbg !250
  %condval_2.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr437.sroa_idx.2, align 4, !dbg !250, !tbaa !30
  %condval_2.sroa.6.0.add.ptr437.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %177, i64 4104, !dbg !250
  %condval_2.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr437.sroa_idx.2, align 8, !dbg !250, !tbaa !30
  %condval_2.sroa.7.0.add.ptr437.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %177, i64 4108, !dbg !250
  %condval_2.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr437.sroa_idx.2, align 4, !dbg !250, !tbaa !30
  br label %if.end461.2, !dbg !251

if.end461.2:                                      ; preds = %if.then412.2, %if.end461.1
  %condval_2.sroa.0.0.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2, %if.then412.2 ], [ 0, %if.end461.1 ], !dbg !91
  %condval_2.sroa.5.0.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2, %if.then412.2 ], [ 0, %if.end461.1 ], !dbg !91
  %condval_2.sroa.6.0.2 = phi i32 [ %condval_2.sroa.6.0.copyload.2, %if.then412.2 ], [ 0, %if.end461.1 ], !dbg !91
  %condval_2.sroa.7.0.2 = phi i32 [ %condval_2.sroa.7.0.copyload.2, %if.then412.2 ], [ 0, %if.end461.1 ], !dbg !91
  %178 = add nuw nsw i32 %mul465, 1024, !dbg !257
  %179 = or disjoint i32 %178, %mul474, !dbg !252
  %180 = or disjoint i32 %179, %mul484, !dbg !253
  %181 = or disjoint i32 %180, %mul493, !dbg !254
  %add.ptr496.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %181, !dbg !255
  store i32 %condval_2.sroa.0.0.2, ptr addrspace(3) %add.ptr496.2, align 16, !dbg !256, !tbaa !30
  %condval_2.sroa.5.0.add.ptr496.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr496.2, i32 4, !dbg !256
  store i32 %condval_2.sroa.5.0.2, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr496.sroa_idx.2, align 4, !dbg !256, !tbaa !30
  %condval_2.sroa.6.0.add.ptr496.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr496.2, i32 8, !dbg !256
  store i32 %condval_2.sroa.6.0.2, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr496.sroa_idx.2, align 8, !dbg !256, !tbaa !30
  %condval_2.sroa.7.0.add.ptr496.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr496.2, i32 12, !dbg !256
  store i32 %condval_2.sroa.7.0.2, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr496.sroa_idx.2, align 4, !dbg !256, !tbaa !30
  %cmp411.3 = icmp ult i32 %add408, 1000, !dbg !247
  br i1 %cmp411.3, label %if.then412.3, label %if.end461.3, !dbg !248

if.then412.3:                                     ; preds = %if.end461.2
  %182 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add426, !dbg !249
  %183 = getelementptr inbounds i8, ptr addrspace(4) %182, i64 %.idx, !dbg !249
  %add.ptr437.3 = getelementptr inbounds i8, ptr addrspace(4) %183, i64 6144, !dbg !249
  %condval_2.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %add.ptr437.3, align 16, !dbg !250, !tbaa !30
  %condval_2.sroa.5.0.add.ptr437.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %183, i64 6148, !dbg !250
  %condval_2.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr437.sroa_idx.3, align 4, !dbg !250, !tbaa !30
  %condval_2.sroa.6.0.add.ptr437.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %183, i64 6152, !dbg !250
  %condval_2.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr437.sroa_idx.3, align 8, !dbg !250, !tbaa !30
  %condval_2.sroa.7.0.add.ptr437.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %183, i64 6156, !dbg !250
  %condval_2.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr437.sroa_idx.3, align 4, !dbg !250, !tbaa !30
  br label %if.end461.3, !dbg !251

if.end461.3:                                      ; preds = %if.then412.3, %if.end461.2
  %condval_2.sroa.0.0.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3, %if.then412.3 ], [ 0, %if.end461.2 ], !dbg !91
  %condval_2.sroa.5.0.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3, %if.then412.3 ], [ 0, %if.end461.2 ], !dbg !91
  %condval_2.sroa.6.0.3 = phi i32 [ %condval_2.sroa.6.0.copyload.3, %if.then412.3 ], [ 0, %if.end461.2 ], !dbg !91
  %condval_2.sroa.7.0.3 = phi i32 [ %condval_2.sroa.7.0.copyload.3, %if.then412.3 ], [ 0, %if.end461.2 ], !dbg !91
  %narrow1253 = add nuw nsw i32 %mul465, 1536, !dbg !257
  %184 = or disjoint i32 %narrow1253, %mul474, !dbg !252
  %185 = or disjoint i32 %184, %mul484, !dbg !253
  %186 = or disjoint i32 %185, %mul493, !dbg !254
  %add.ptr496.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %186, !dbg !255
  store i32 %condval_2.sroa.0.0.3, ptr addrspace(3) %add.ptr496.3, align 16, !dbg !256, !tbaa !30
  %condval_2.sroa.5.0.add.ptr496.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr496.3, i32 4, !dbg !256
  store i32 %condval_2.sroa.5.0.3, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr496.sroa_idx.3, align 4, !dbg !256, !tbaa !30
  %condval_2.sroa.6.0.add.ptr496.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr496.3, i32 8, !dbg !256
  store i32 %condval_2.sroa.6.0.3, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr496.sroa_idx.3, align 8, !dbg !256, !tbaa !30
  %condval_2.sroa.7.0.add.ptr496.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr496.3, i32 12, !dbg !256
  store i32 %condval_2.sroa.7.0.3, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr496.sroa_idx.3, align 4, !dbg !256, !tbaa !30
  fence syncscope("warp") release, !dbg !258
  tail call void @llvm.mxc.barrier.warp(), !dbg !261
  fence syncscope("warp") acquire, !dbg !262
  br label %if.end500, !dbg !263

if.end500:                                        ; preds = %if.end461.3, %entry
  %scores_half.sroa.4.0 = phi <4 x half> [ undef, %entry ], [ %156, %if.end461.3 ]
  %scores_half.sroa.0.0 = phi <4 x half> [ undef, %entry ], [ %144, %if.end461.3 ]
  %denominator.sroa.0.1 = phi float [ 0.000000e+00, %entry ], [ %add.i.i.i, %if.end461.3 ], !dbg !91
  br i1 %or.cond, label %for.body602.preheader, label %if.then519, !dbg !264

for.body602.preheader:                            ; preds = %if.end500
  %div606 = fdiv contract float 0.000000e+00, %denominator.sroa.0.1, !dbg !265
  %output_acc.sroa.0.0.vec.insert1003 = insertelement <4 x float> poison, float %div606, i64 0, !dbg !266
  %output_acc.sroa.0.12.vec.insert1018 = shufflevector <4 x float> %output_acc.sroa.0.0.vec.insert1003, <4 x float> poison, <4 x i32> zeroinitializer, !dbg !266
  %.pre = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !56
  br label %if.end612

if.then519:                                       ; preds = %if.end500
  %187 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !56
  %188 = shl nuw nsw i32 %187, 4
  %mul535 = and i32 %188, 16128
  %and540 = lshr i32 %187, 4
  %and562 = and i32 %187, 7
  %and544 = shl nuw nsw i32 %and540, 5
  %mul545 = and i32 %and544, 32
  %add546 = or disjoint i32 %mul535, %mul545, !dbg !267
  %mul559 = and i32 %187, 8, !dbg !268
  %add560 = or disjoint i32 %add546, %mul559, !dbg !269
  %add563 = or disjoint i32 %add560, %and562, !dbg !270
  %arrayidx565 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563, !dbg !271
  %189 = load half, ptr addrspace(3) %arrayidx565, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.0.0.vec.insert = insertelement <4 x half> poison, half %189, i64 0, !dbg !272
  %add538.1 = or disjoint i32 %mul535, 64, !dbg !274
  %add546.1 = or disjoint i32 %add538.1, %mul545, !dbg !267
  %190 = and i32 %187, 8, !dbg !268
  %mul559.1 = xor i32 %190, 8, !dbg !268
  %add560.1 = or disjoint i32 %add546.1, %mul559.1, !dbg !269
  %add563.1 = or disjoint i32 %add560.1, %and562, !dbg !270
  %arrayidx565.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.1, !dbg !271
  %191 = load half, ptr addrspace(3) %arrayidx565.1, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.0.2.vec.insert = insertelement <4 x half> %B_local.sroa.0.0.vec.insert, half %191, i64 1, !dbg !272
  %add538.2 = or disjoint i32 %mul535, 128, !dbg !274
  %add546.2 = or disjoint i32 %add538.2, %mul545, !dbg !267
  %mul559.2 = and i32 %187, 8, !dbg !268
  %add552.2 = or disjoint i32 %add546.2, %mul559.2, !dbg !269
  %add560.2 = or disjoint i32 %add552.2, %and562, !dbg !270
  %add563.2 = or disjoint i32 %add560.2, 16, !dbg !270
  %arrayidx565.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.2, !dbg !271
  %192 = load half, ptr addrspace(3) %arrayidx565.2, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.0.4.vec.insert = insertelement <4 x half> %B_local.sroa.0.2.vec.insert, half %192, i64 2, !dbg !272
  %add538.3 = or disjoint i32 %mul535, 192, !dbg !274
  %add546.3 = or disjoint i32 %add538.3, %mul545, !dbg !267
  %193 = and i32 %187, 8, !dbg !268
  %mul559.3 = xor i32 %193, 8, !dbg !268
  %add552.3 = or disjoint i32 %add546.3, %mul559.3, !dbg !269
  %add560.3 = or disjoint i32 %add552.3, %and562, !dbg !270
  %add563.3 = or disjoint i32 %add560.3, 16, !dbg !270
  %arrayidx565.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.3, !dbg !271
  %194 = load half, ptr addrspace(3) %arrayidx565.3, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.0.6.vec.insert = insertelement <4 x half> %B_local.sroa.0.4.vec.insert, half %194, i64 3, !dbg !272
  %add552.1899 = or disjoint i32 %add546, %mul559, !dbg !269
  %add560.1901 = or disjoint i32 %add552.1899, %and562, !dbg !270
  %add563.1902 = or disjoint i32 %add560.1901, 16, !dbg !270
  %arrayidx565.1903 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.1902, !dbg !271
  %195 = load half, ptr addrspace(3) %arrayidx565.1903, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.12.8.vec.insert = insertelement <4 x half> poison, half %195, i64 0, !dbg !272
  %add552.1.1 = or disjoint i32 %add546.1, %mul559.1, !dbg !269
  %add560.1.1 = or disjoint i32 %add552.1.1, %and562, !dbg !270
  %add563.1.1 = or disjoint i32 %add560.1.1, 16, !dbg !270
  %arrayidx565.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.1.1, !dbg !271
  %196 = load half, ptr addrspace(3) %arrayidx565.1.1, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.12.10.vec.insert = insertelement <4 x half> %B_local.sroa.12.8.vec.insert, half %196, i64 1, !dbg !272
  %add560.2.1 = or disjoint i32 %add546.2, %mul559.2, !dbg !269
  %add563.2.1 = or disjoint i32 %add560.2.1, %and562, !dbg !270
  %arrayidx565.2.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.2.1, !dbg !271
  %197 = load half, ptr addrspace(3) %arrayidx565.2.1, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.12.12.vec.insert = insertelement <4 x half> %B_local.sroa.12.10.vec.insert, half %197, i64 2, !dbg !272
  %add560.3.1 = or disjoint i32 %add546.3, %mul559.3, !dbg !269
  %add563.3.1 = or disjoint i32 %add560.3.1, %and562, !dbg !270
  %arrayidx565.3.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.3.1, !dbg !271
  %198 = load half, ptr addrspace(3) %arrayidx565.3.1, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.12.14.vec.insert = insertelement <4 x half> %B_local.sroa.12.12.vec.insert, half %198, i64 3, !dbg !272
  %add543.2 = shl nuw nsw i32 %and540, 5
  %199 = and i32 %add543.2, 32
  %mul545.2 = xor i32 %199, 32
  %add546.2905 = or disjoint i32 %mul535, %mul545.2, !dbg !267
  %add560.2910 = or disjoint i32 %add546.2905, %mul559, !dbg !269
  %add563.2911 = or disjoint i32 %add560.2910, %and562, !dbg !270
  %arrayidx565.2912 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.2911, !dbg !271
  %200 = load half, ptr addrspace(3) %arrayidx565.2912, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.22.16.vec.insert = insertelement <4 x half> poison, half %200, i64 0, !dbg !272
  %add546.1.2 = or disjoint i32 %add538.1, %mul545.2, !dbg !267
  %add560.1.2 = or disjoint i32 %add546.1.2, %mul559.1, !dbg !269
  %add563.1.2 = or disjoint i32 %add560.1.2, %and562, !dbg !270
  %arrayidx565.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.1.2, !dbg !271
  %201 = load half, ptr addrspace(3) %arrayidx565.1.2, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.22.18.vec.insert = insertelement <4 x half> %B_local.sroa.22.16.vec.insert, half %201, i64 1, !dbg !272
  %add546.2.2 = or disjoint i32 %add538.2, %mul545.2, !dbg !267
  %add552.2.2 = or disjoint i32 %add546.2.2, %mul559.2, !dbg !269
  %add560.2.2 = or disjoint i32 %add552.2.2, %and562, !dbg !270
  %add563.2.2 = or disjoint i32 %add560.2.2, 16, !dbg !270
  %arrayidx565.2.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.2.2, !dbg !271
  %202 = load half, ptr addrspace(3) %arrayidx565.2.2, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.22.20.vec.insert = insertelement <4 x half> %B_local.sroa.22.18.vec.insert, half %202, i64 2, !dbg !272
  %add546.3.2 = or disjoint i32 %add538.3, %mul545.2, !dbg !267
  %add552.3.2 = or disjoint i32 %add546.3.2, %mul559.3, !dbg !269
  %add560.3.2 = or disjoint i32 %add552.3.2, %and562, !dbg !270
  %add563.3.2 = or disjoint i32 %add560.3.2, 16, !dbg !270
  %arrayidx565.3.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.3.2, !dbg !271
  %203 = load half, ptr addrspace(3) %arrayidx565.3.2, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.22.22.vec.insert = insertelement <4 x half> %B_local.sroa.22.20.vec.insert, half %203, i64 3, !dbg !272
  %add552.3917 = or disjoint i32 %add546.2905, %mul559, !dbg !269
  %add560.3919 = or disjoint i32 %add552.3917, %and562, !dbg !270
  %add563.3920 = or disjoint i32 %add560.3919, 16, !dbg !270
  %arrayidx565.3921 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.3920, !dbg !271
  %204 = load half, ptr addrspace(3) %arrayidx565.3921, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.32.24.vec.insert = insertelement <4 x half> poison, half %204, i64 0, !dbg !272
  %add552.1.3 = or disjoint i32 %add546.1.2, %mul559.1, !dbg !269
  %add560.1.3 = or disjoint i32 %add552.1.3, %and562, !dbg !270
  %add563.1.3 = or disjoint i32 %add560.1.3, 16, !dbg !270
  %arrayidx565.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.1.3, !dbg !271
  %205 = load half, ptr addrspace(3) %arrayidx565.1.3, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.32.26.vec.insert = insertelement <4 x half> %B_local.sroa.32.24.vec.insert, half %205, i64 1, !dbg !272
  %add560.2.3 = or disjoint i32 %add546.2.2, %mul559.2, !dbg !269
  %add563.2.3 = or disjoint i32 %add560.2.3, %and562, !dbg !270
  %arrayidx565.2.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.2.3, !dbg !271
  %206 = load half, ptr addrspace(3) %arrayidx565.2.3, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.32.28.vec.insert = insertelement <4 x half> %B_local.sroa.32.26.vec.insert, half %206, i64 2, !dbg !272
  %add560.3.3 = or disjoint i32 %add546.3.2, %mul559.3, !dbg !269
  %add563.3.3 = or disjoint i32 %add560.3.3, %and562, !dbg !270
  %arrayidx565.3.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.3.3, !dbg !271
  %207 = load half, ptr addrspace(3) %arrayidx565.3.3, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.32.30.vec.insert = insertelement <4 x half> %B_local.sroa.32.28.vec.insert, half %207, i64 3, !dbg !272
  %208 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.0.6.vec.insert, <4 x half> %scores_half.sroa.0.0, <4 x float> zeroinitializer), !dbg !275
  %209 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.12.14.vec.insert, <4 x half> %scores_half.sroa.0.0, <4 x float> zeroinitializer), !dbg !275
  %210 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.22.22.vec.insert, <4 x half> %scores_half.sroa.0.0, <4 x float> zeroinitializer), !dbg !275
  %211 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.32.30.vec.insert, <4 x half> %scores_half.sroa.0.0, <4 x float> zeroinitializer), !dbg !275
  %add536.1 = add nuw nsw i32 %mul535, 1024
  %add546.1925 = or disjoint i32 %add536.1, %mul545, !dbg !267
  %add560.1927 = or disjoint i32 %add546.1925, %mul559, !dbg !269
  %add563.1928 = or disjoint i32 %add560.1927, %and562, !dbg !270
  %arrayidx565.1929 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.1928, !dbg !271
  %212 = load half, ptr addrspace(3) %arrayidx565.1929, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.0.0.vec.insert962 = insertelement <4 x half> poison, half %212, i64 0, !dbg !272
  %add538.1.1930 = add nuw nsw i32 %mul535, 1088, !dbg !274
  %add546.1.1931 = or disjoint i32 %add538.1.1930, %mul545, !dbg !267
  %add560.1.1934 = or disjoint i32 %add546.1.1931, %mul559.1, !dbg !269
  %add563.1.1935 = or disjoint i32 %add560.1.1934, %and562, !dbg !270
  %arrayidx565.1.1936 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.1.1935, !dbg !271
  %213 = load half, ptr addrspace(3) %arrayidx565.1.1936, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.0.2.vec.insert964 = insertelement <4 x half> %B_local.sroa.0.0.vec.insert962, half %213, i64 1, !dbg !272
  %add538.2.1938 = add nuw nsw i32 %mul535, 1152, !dbg !274
  %add546.2.1939 = or disjoint i32 %add538.2.1938, %mul545, !dbg !267
  %add552.2.1 = or disjoint i32 %add546.2.1939, %mul559.2, !dbg !269
  %add560.2.1942 = or disjoint i32 %add552.2.1, %and562, !dbg !270
  %add563.2.1943 = or disjoint i32 %add560.2.1942, 16, !dbg !270
  %arrayidx565.2.1944 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.2.1943, !dbg !271
  %214 = load half, ptr addrspace(3) %arrayidx565.2.1944, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.0.4.vec.insert966 = insertelement <4 x half> %B_local.sroa.0.2.vec.insert964, half %214, i64 2, !dbg !272
  %add538.3.1946 = add nuw nsw i32 %mul535, 1216, !dbg !274
  %add546.3.1947 = or disjoint i32 %add538.3.1946, %mul545, !dbg !267
  %add552.3.1 = or disjoint i32 %add546.3.1947, %mul559.3, !dbg !269
  %add560.3.1950 = or disjoint i32 %add552.3.1, %and562, !dbg !270
  %add563.3.1951 = or disjoint i32 %add560.3.1950, 16, !dbg !270
  %arrayidx565.3.1952 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.3.1951, !dbg !271
  %215 = load half, ptr addrspace(3) %arrayidx565.3.1952, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.0.6.vec.insert968 = insertelement <4 x half> %B_local.sroa.0.4.vec.insert966, half %215, i64 3, !dbg !272
  %add552.1899.1 = or disjoint i32 %add546.1925, %mul559, !dbg !269
  %add560.1901.1 = or disjoint i32 %add552.1899.1, %and562, !dbg !270
  %add563.1902.1 = or disjoint i32 %add560.1901.1, 16, !dbg !270
  %arrayidx565.1903.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.1902.1, !dbg !271
  %216 = load half, ptr addrspace(3) %arrayidx565.1903.1, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.12.8.vec.insert972 = insertelement <4 x half> poison, half %216, i64 0, !dbg !272
  %add552.1.1.1 = or disjoint i32 %add546.1.1931, %mul559.1, !dbg !269
  %add560.1.1.1 = or disjoint i32 %add552.1.1.1, %and562, !dbg !270
  %add563.1.1.1 = or disjoint i32 %add560.1.1.1, 16, !dbg !270
  %arrayidx565.1.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.1.1.1, !dbg !271
  %217 = load half, ptr addrspace(3) %arrayidx565.1.1.1, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.12.10.vec.insert974 = insertelement <4 x half> %B_local.sroa.12.8.vec.insert972, half %217, i64 1, !dbg !272
  %add560.2.1.1 = or disjoint i32 %add546.2.1939, %mul559.2, !dbg !269
  %add563.2.1.1 = or disjoint i32 %add560.2.1.1, %and562, !dbg !270
  %arrayidx565.2.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.2.1.1, !dbg !271
  %218 = load half, ptr addrspace(3) %arrayidx565.2.1.1, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.12.12.vec.insert976 = insertelement <4 x half> %B_local.sroa.12.10.vec.insert974, half %218, i64 2, !dbg !272
  %add560.3.1.1 = or disjoint i32 %add546.3.1947, %mul559.3, !dbg !269
  %add563.3.1.1 = or disjoint i32 %add560.3.1.1, %and562, !dbg !270
  %arrayidx565.3.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.3.1.1, !dbg !271
  %219 = load half, ptr addrspace(3) %arrayidx565.3.1.1, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.12.14.vec.insert978 = insertelement <4 x half> %B_local.sroa.12.12.vec.insert976, half %219, i64 3, !dbg !272
  %add546.2905.1 = or disjoint i32 %add536.1, %mul545.2, !dbg !267
  %add560.2910.1 = or disjoint i32 %add546.2905.1, %mul559, !dbg !269
  %add563.2911.1 = or disjoint i32 %add560.2910.1, %and562, !dbg !270
  %arrayidx565.2912.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.2911.1, !dbg !271
  %220 = load half, ptr addrspace(3) %arrayidx565.2912.1, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.22.16.vec.insert982 = insertelement <4 x half> poison, half %220, i64 0, !dbg !272
  %add546.1.2.1 = or disjoint i32 %add538.1.1930, %mul545.2, !dbg !267
  %add560.1.2.1 = or disjoint i32 %add546.1.2.1, %mul559.1, !dbg !269
  %add563.1.2.1 = or disjoint i32 %add560.1.2.1, %and562, !dbg !270
  %arrayidx565.1.2.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.1.2.1, !dbg !271
  %221 = load half, ptr addrspace(3) %arrayidx565.1.2.1, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.22.18.vec.insert984 = insertelement <4 x half> %B_local.sroa.22.16.vec.insert982, half %221, i64 1, !dbg !272
  %add546.2.2.1 = or disjoint i32 %add538.2.1938, %mul545.2, !dbg !267
  %add552.2.2.1 = or disjoint i32 %add546.2.2.1, %mul559.2, !dbg !269
  %add560.2.2.1 = or disjoint i32 %add552.2.2.1, %and562, !dbg !270
  %add563.2.2.1 = or disjoint i32 %add560.2.2.1, 16, !dbg !270
  %arrayidx565.2.2.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.2.2.1, !dbg !271
  %222 = load half, ptr addrspace(3) %arrayidx565.2.2.1, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.22.20.vec.insert986 = insertelement <4 x half> %B_local.sroa.22.18.vec.insert984, half %222, i64 2, !dbg !272
  %add546.3.2.1 = or disjoint i32 %add538.3.1946, %mul545.2, !dbg !267
  %add552.3.2.1 = or disjoint i32 %add546.3.2.1, %mul559.3, !dbg !269
  %add560.3.2.1 = or disjoint i32 %add552.3.2.1, %and562, !dbg !270
  %add563.3.2.1 = or disjoint i32 %add560.3.2.1, 16, !dbg !270
  %arrayidx565.3.2.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.3.2.1, !dbg !271
  %223 = load half, ptr addrspace(3) %arrayidx565.3.2.1, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.22.22.vec.insert988 = insertelement <4 x half> %B_local.sroa.22.20.vec.insert986, half %223, i64 3, !dbg !272
  %add552.3917.1 = or disjoint i32 %add546.2905.1, %mul559, !dbg !269
  %add560.3919.1 = or disjoint i32 %add552.3917.1, %and562, !dbg !270
  %add563.3920.1 = or disjoint i32 %add560.3919.1, 16, !dbg !270
  %arrayidx565.3921.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.3920.1, !dbg !271
  %224 = load half, ptr addrspace(3) %arrayidx565.3921.1, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.32.24.vec.insert992 = insertelement <4 x half> poison, half %224, i64 0, !dbg !272
  %add552.1.3.1 = or disjoint i32 %add546.1.2.1, %mul559.1, !dbg !269
  %add560.1.3.1 = or disjoint i32 %add552.1.3.1, %and562, !dbg !270
  %add563.1.3.1 = or disjoint i32 %add560.1.3.1, 16, !dbg !270
  %arrayidx565.1.3.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.1.3.1, !dbg !271
  %225 = load half, ptr addrspace(3) %arrayidx565.1.3.1, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.32.26.vec.insert994 = insertelement <4 x half> %B_local.sroa.32.24.vec.insert992, half %225, i64 1, !dbg !272
  %add560.2.3.1 = or disjoint i32 %add546.2.2.1, %mul559.2, !dbg !269
  %add563.2.3.1 = or disjoint i32 %add560.2.3.1, %and562, !dbg !270
  %arrayidx565.2.3.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.2.3.1, !dbg !271
  %226 = load half, ptr addrspace(3) %arrayidx565.2.3.1, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.32.28.vec.insert996 = insertelement <4 x half> %B_local.sroa.32.26.vec.insert994, half %226, i64 2, !dbg !272
  %add560.3.3.1 = or disjoint i32 %add546.3.2.1, %mul559.3, !dbg !269
  %add563.3.3.1 = or disjoint i32 %add560.3.3.1, %and562, !dbg !270
  %arrayidx565.3.3.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add563.3.3.1, !dbg !271
  %227 = load half, ptr addrspace(3) %arrayidx565.3.3.1, align 2, !dbg !272, !tbaa !273
  %B_local.sroa.32.30.vec.insert998 = insertelement <4 x half> %B_local.sroa.32.28.vec.insert996, half %227, i64 3, !dbg !272
  %228 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.0.6.vec.insert968, <4 x half> %scores_half.sroa.4.0, <4 x float> %208), !dbg !275
  %229 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.12.14.vec.insert978, <4 x half> %scores_half.sroa.4.0, <4 x float> %209), !dbg !275
  %230 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.22.22.vec.insert988, <4 x half> %scores_half.sroa.4.0, <4 x float> %210), !dbg !275
  %231 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.32.30.vec.insert998, <4 x half> %scores_half.sroa.4.0, <4 x float> %211), !dbg !275
  br label %if.end612, !dbg !276

if.end612:                                        ; preds = %for.body602.preheader, %if.then519
  %.pre-phi = phi i32 [ %.pre, %for.body602.preheader ], [ %187, %if.then519 ]
  %output_acc.sroa.62.0 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1018, %for.body602.preheader ], [ %231, %if.then519 ], !dbg !91
  %output_acc.sroa.42.0 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1018, %for.body602.preheader ], [ %230, %if.then519 ], !dbg !91
  %output_acc.sroa.22.0 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1018, %for.body602.preheader ], [ %229, %if.then519 ], !dbg !91
  %output_acc.sroa.0.0 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1018, %for.body602.preheader ], [ %228, %if.then519 ], !dbg !91
  %mul636 = shl nsw i32 %0, 21
  %232 = shl nuw nsw i32 %1, 10
  %mul639 = and i32 %232, 2147481600
  %add640 = add nuw nsw i32 %mul639, %mul636
  %and642 = shl nuw nsw i32 %.pre-phi, 7
  %mul643 = and i32 %and642, 1920
  %add644 = or disjoint i32 %add640, %mul643
  %and646 = shl i32 %1, 6
  %mul647 = and i32 %and646, 64
  %add648 = or disjoint i32 %add644, %mul647
  %233 = lshr i32 %.pre-phi, 2
  %mul653 = and i32 %233, 252
  %add650 = add nuw nsw i32 %add648, %mul653
  %234 = zext nneg i32 %add650 to i64, !dbg !277
  %output_acc.sroa.0.0.vec.extract1005 = extractelement <4 x float> %output_acc.sroa.0.0, i64 0, !dbg !278
  %output_acc.sroa.0.4.vec.extract1010 = extractelement <4 x float> %output_acc.sroa.0.0, i64 1, !dbg !278
  %output_acc.sroa.0.8.vec.extract1015 = extractelement <4 x float> %output_acc.sroa.0.0, i64 2, !dbg !278
  %output_acc.sroa.0.12.vec.extract1020 = extractelement <4 x float> %output_acc.sroa.0.0, i64 3, !dbg !278
  %235 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !283
  %236 = fptrunc float %output_acc.sroa.0.0.vec.extract1005 to half, !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %235), !dbg !279, !noalias !283
  %237 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !288, !noalias !283
  %238 = fptrunc float %output_acc.sroa.0.4.vec.extract1010 to half, !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %237), !dbg !288, !noalias !283
  %239 = bitcast half %236 to i16, !dbg !290
  %240 = bitcast half %238 to i16, !dbg !293
  %241 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !294
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !294, !noalias !298
  %242 = fptrunc float %output_acc.sroa.0.8.vec.extract1015 to half, !dbg !294
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %241), !dbg !294, !noalias !298
  %243 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !303
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !303, !noalias !298
  %244 = fptrunc float %output_acc.sroa.0.12.vec.extract1020 to half, !dbg !303
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %243), !dbg !303, !noalias !298
  %245 = bitcast half %242 to i16, !dbg !305
  %246 = bitcast half %244 to i16, !dbg !307
  %__2.sroa.6.0.insert.ext = zext i16 %246 to i64, !dbg !308
  %__2.sroa.6.0.insert.shift = shl nuw i64 %__2.sroa.6.0.insert.ext, 48, !dbg !308
  %__2.sroa.5.0.insert.ext = zext i16 %245 to i64, !dbg !308
  %__2.sroa.5.0.insert.shift = shl nuw nsw i64 %__2.sroa.5.0.insert.ext, 32, !dbg !308
  %__2.sroa.5.0.insert.insert = or disjoint i64 %__2.sroa.6.0.insert.shift, %__2.sroa.5.0.insert.shift, !dbg !308
  %__2.sroa.4.0.insert.ext = zext i16 %240 to i64, !dbg !308
  %__2.sroa.4.0.insert.shift = shl nuw nsw i64 %__2.sroa.4.0.insert.ext, 16, !dbg !308
  %__2.sroa.4.0.insert.insert = or disjoint i64 %__2.sroa.5.0.insert.insert, %__2.sroa.4.0.insert.shift, !dbg !308
  %__2.sroa.0.0.insert.ext = zext i16 %239 to i64, !dbg !308
  %__2.sroa.0.0.insert.insert = or disjoint i64 %__2.sroa.4.0.insert.insert, %__2.sroa.0.0.insert.ext, !dbg !308
  %add.ptr656 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %234, !dbg !309
  store i64 %__2.sroa.0.0.insert.insert, ptr addrspace(1) %add.ptr656, align 8, !dbg !310
  %output_acc.sroa.22.16.vec.extract1027 = extractelement <4 x float> %output_acc.sroa.22.0, i64 0, !dbg !278
  %output_acc.sroa.22.20.vec.extract1032 = extractelement <4 x float> %output_acc.sroa.22.0, i64 1, !dbg !278
  %output_acc.sroa.22.24.vec.extract1037 = extractelement <4 x float> %output_acc.sroa.22.0, i64 2, !dbg !278
  %output_acc.sroa.22.28.vec.extract1042 = extractelement <4 x float> %output_acc.sroa.22.0, i64 3, !dbg !278
  %247 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !283
  %248 = fptrunc float %output_acc.sroa.22.16.vec.extract1027 to half, !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %247), !dbg !279, !noalias !283
  %249 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !288, !noalias !283
  %250 = fptrunc float %output_acc.sroa.22.20.vec.extract1032 to half, !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %249), !dbg !288, !noalias !283
  %251 = bitcast half %248 to i16, !dbg !290
  %252 = bitcast half %250 to i16, !dbg !293
  %253 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !294
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !294, !noalias !298
  %254 = fptrunc float %output_acc.sroa.22.24.vec.extract1037 to half, !dbg !294
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %253), !dbg !294, !noalias !298
  %255 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !303
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !303, !noalias !298
  %256 = fptrunc float %output_acc.sroa.22.28.vec.extract1042 to half, !dbg !303
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %255), !dbg !303, !noalias !298
  %257 = bitcast half %254 to i16, !dbg !305
  %258 = bitcast half %256 to i16, !dbg !307
  %__2.sroa.6.0.insert.ext.1 = zext i16 %258 to i64, !dbg !308
  %__2.sroa.6.0.insert.shift.1 = shl nuw i64 %__2.sroa.6.0.insert.ext.1, 48, !dbg !308
  %__2.sroa.5.0.insert.ext.1 = zext i16 %257 to i64, !dbg !308
  %__2.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.1, 32, !dbg !308
  %__2.sroa.5.0.insert.insert.1 = or disjoint i64 %__2.sroa.6.0.insert.shift.1, %__2.sroa.5.0.insert.shift.1, !dbg !308
  %__2.sroa.4.0.insert.ext.1 = zext i16 %252 to i64, !dbg !308
  %__2.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.1, 16, !dbg !308
  %__2.sroa.4.0.insert.insert.1 = or disjoint i64 %__2.sroa.5.0.insert.insert.1, %__2.sroa.4.0.insert.shift.1, !dbg !308
  %__2.sroa.0.0.insert.ext.1 = zext i16 %251 to i64, !dbg !308
  %__2.sroa.0.0.insert.insert.1 = or disjoint i64 %__2.sroa.4.0.insert.insert.1, %__2.sroa.0.0.insert.ext.1, !dbg !308
  %259 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %234, !dbg !309
  %add.ptr656.1 = getelementptr inbounds i8, ptr addrspace(1) %259, i64 32, !dbg !309
  store i64 %__2.sroa.0.0.insert.insert.1, ptr addrspace(1) %add.ptr656.1, align 8, !dbg !310
  %output_acc.sroa.42.32.vec.extract1049 = extractelement <4 x float> %output_acc.sroa.42.0, i64 0, !dbg !278
  %output_acc.sroa.42.36.vec.extract1054 = extractelement <4 x float> %output_acc.sroa.42.0, i64 1, !dbg !278
  %output_acc.sroa.42.40.vec.extract1059 = extractelement <4 x float> %output_acc.sroa.42.0, i64 2, !dbg !278
  %output_acc.sroa.42.44.vec.extract1064 = extractelement <4 x float> %output_acc.sroa.42.0, i64 3, !dbg !278
  %260 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !283
  %261 = fptrunc float %output_acc.sroa.42.32.vec.extract1049 to half, !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %260), !dbg !279, !noalias !283
  %262 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !288, !noalias !283
  %263 = fptrunc float %output_acc.sroa.42.36.vec.extract1054 to half, !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %262), !dbg !288, !noalias !283
  %264 = bitcast half %261 to i16, !dbg !290
  %265 = bitcast half %263 to i16, !dbg !293
  %266 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !294
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !294, !noalias !298
  %267 = fptrunc float %output_acc.sroa.42.40.vec.extract1059 to half, !dbg !294
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %266), !dbg !294, !noalias !298
  %268 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !303
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !303, !noalias !298
  %269 = fptrunc float %output_acc.sroa.42.44.vec.extract1064 to half, !dbg !303
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %268), !dbg !303, !noalias !298
  %270 = bitcast half %267 to i16, !dbg !305
  %271 = bitcast half %269 to i16, !dbg !307
  %__2.sroa.6.0.insert.ext.2 = zext i16 %271 to i64, !dbg !308
  %__2.sroa.6.0.insert.shift.2 = shl nuw i64 %__2.sroa.6.0.insert.ext.2, 48, !dbg !308
  %__2.sroa.5.0.insert.ext.2 = zext i16 %270 to i64, !dbg !308
  %__2.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.2, 32, !dbg !308
  %__2.sroa.5.0.insert.insert.2 = or disjoint i64 %__2.sroa.6.0.insert.shift.2, %__2.sroa.5.0.insert.shift.2, !dbg !308
  %__2.sroa.4.0.insert.ext.2 = zext i16 %265 to i64, !dbg !308
  %__2.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.2, 16, !dbg !308
  %__2.sroa.4.0.insert.insert.2 = or disjoint i64 %__2.sroa.5.0.insert.insert.2, %__2.sroa.4.0.insert.shift.2, !dbg !308
  %__2.sroa.0.0.insert.ext.2 = zext i16 %264 to i64, !dbg !308
  %__2.sroa.0.0.insert.insert.2 = or disjoint i64 %__2.sroa.4.0.insert.insert.2, %__2.sroa.0.0.insert.ext.2, !dbg !308
  %272 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %234, !dbg !309
  %add.ptr656.2 = getelementptr inbounds i8, ptr addrspace(1) %272, i64 64, !dbg !309
  store i64 %__2.sroa.0.0.insert.insert.2, ptr addrspace(1) %add.ptr656.2, align 8, !dbg !310
  %output_acc.sroa.62.48.vec.extract1071 = extractelement <4 x float> %output_acc.sroa.62.0, i64 0, !dbg !278
  %output_acc.sroa.62.52.vec.extract1076 = extractelement <4 x float> %output_acc.sroa.62.0, i64 1, !dbg !278
  %output_acc.sroa.62.56.vec.extract1081 = extractelement <4 x float> %output_acc.sroa.62.0, i64 2, !dbg !278
  %output_acc.sroa.62.60.vec.extract1086 = extractelement <4 x float> %output_acc.sroa.62.0, i64 3, !dbg !278
  %273 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !283
  %274 = fptrunc float %output_acc.sroa.62.48.vec.extract1071 to half, !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %273), !dbg !279, !noalias !283
  %275 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !288, !noalias !283
  %276 = fptrunc float %output_acc.sroa.62.52.vec.extract1076 to half, !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %275), !dbg !288, !noalias !283
  %277 = bitcast half %274 to i16, !dbg !290
  %278 = bitcast half %276 to i16, !dbg !293
  %279 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !294
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !294, !noalias !298
  %280 = fptrunc float %output_acc.sroa.62.56.vec.extract1081 to half, !dbg !294
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %279), !dbg !294, !noalias !298
  %281 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !303
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !303, !noalias !298
  %282 = fptrunc float %output_acc.sroa.62.60.vec.extract1086 to half, !dbg !303
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %281), !dbg !303, !noalias !298
  %283 = bitcast half %280 to i16, !dbg !305
  %284 = bitcast half %282 to i16, !dbg !307
  %__2.sroa.6.0.insert.ext.3 = zext i16 %284 to i64, !dbg !308
  %__2.sroa.6.0.insert.shift.3 = shl nuw i64 %__2.sroa.6.0.insert.ext.3, 48, !dbg !308
  %__2.sroa.5.0.insert.ext.3 = zext i16 %283 to i64, !dbg !308
  %__2.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.3, 32, !dbg !308
  %__2.sroa.5.0.insert.insert.3 = or disjoint i64 %__2.sroa.6.0.insert.shift.3, %__2.sroa.5.0.insert.shift.3, !dbg !308
  %__2.sroa.4.0.insert.ext.3 = zext i16 %278 to i64, !dbg !308
  %__2.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.3, 16, !dbg !308
  %__2.sroa.4.0.insert.insert.3 = or disjoint i64 %__2.sroa.5.0.insert.insert.3, %__2.sroa.4.0.insert.shift.3, !dbg !308
  %__2.sroa.0.0.insert.ext.3 = zext i16 %277 to i64, !dbg !308
  %__2.sroa.0.0.insert.insert.3 = or disjoint i64 %__2.sroa.4.0.insert.insert.3, %__2.sroa.0.0.insert.ext.3, !dbg !308
  %285 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %234, !dbg !309
  %add.ptr656.3 = getelementptr inbounds i8, ptr addrspace(1) %285, i64 96, !dbg !309
  store i64 %__2.sroa.0.0.insert.insert.3, ptr addrspace(1) %add.ptr656.3, align 8, !dbg !310
  ret void, !dbg !311
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v035_codex_power_s1_feature_ctas_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v035_codex_power_s1_feature_ctas_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
!42 = !DILocation(line: 78, column: 3, scope: !43, inlinedAt: !45)
!43 = distinct !DISubprogram(name: "__fetch_builtin_y", scope: !44, file: !44, line: 78, type: !7, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!44 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_builtin_vars.h", directory: "")
!45 = distinct !DILocation(line: 20, column: 43, scope: !40)
!46 = !DILocation(line: 20, column: 55, scope: !40)
!47 = !DILocation(line: 77, column: 3, scope: !48, inlinedAt: !49)
!48 = distinct !DISubprogram(name: "__fetch_builtin_x", scope: !44, file: !44, line: 77, type: !7, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!49 = distinct !DILocation(line: 20, column: 72, scope: !40)
!50 = !DILocation(line: 20, column: 84, scope: !40)
!51 = !DILocation(line: 20, column: 63, scope: !40)
!52 = !DILocation(line: 20, column: 22, scope: !40)
!53 = !DILocation(line: 20, column: 92, scope: !40)
!54 = !DILocation(line: 22, column: 10, scope: !40)
!55 = !DILocation(line: 22, column: 26, scope: !40)
!56 = !{i32 0, i32 1024}
!57 = !DILocation(line: 24, column: 5, scope: !40)
!58 = !DILocation(line: 25, column: 370, scope: !40)
!59 = !DILocation(line: 25, column: 193, scope: !40)
!60 = !DILocation(line: 25, column: 278, scope: !40)
!61 = !DILocation(line: 25, column: 42, scope: !40)
!62 = !DILocation(line: 25, column: 356, scope: !40)
!63 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!64 = !{i32 -1, i32 3, i32 -1, i32 -1}
!65 = !DILocation(line: 25, column: 200, scope: !40)
!66 = !DILocation(line: 68, column: 3, scope: !67, inlinedAt: !69)
!67 = distinct !DISubprogram(name: "__barrier_warp", scope: !68, file: !68, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!68 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!69 = distinct !DILocation(line: 192, column: 3, scope: !70, inlinedAt: !71)
!70 = distinct !DISubprogram(name: "__syncwarp", scope: !68, file: !68, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!71 = distinct !DILocation(line: 27, column: 5, scope: !40)
!72 = !DILocation(line: 69, column: 3, scope: !67, inlinedAt: !69)
!73 = !DILocation(line: 70, column: 3, scope: !67, inlinedAt: !69)
!74 = !DILocation(line: 30, column: 206, scope: !40)
!75 = !DILocation(line: 30, column: 270, scope: !40)
!76 = !DILocation(line: 30, column: 277, scope: !40)
!77 = !DILocation(line: 30, column: 347, scope: !40)
!78 = !DILocation(line: 30, column: 77, scope: !40)
!79 = !DILocation(line: 30, column: 40, scope: !40)
!80 = !DILocation(line: 30, column: 213, scope: !40)
!81 = !DILocation(line: 68, column: 3, scope: !67, inlinedAt: !82)
!82 = distinct !DILocation(line: 192, column: 3, scope: !70, inlinedAt: !83)
!83 = distinct !DILocation(line: 32, column: 5, scope: !40)
!84 = !DILocation(line: 69, column: 3, scope: !67, inlinedAt: !82)
!85 = !DILocation(line: 70, column: 3, scope: !67, inlinedAt: !82)
!86 = !DILocation(line: 34, column: 5, scope: !40)
!87 = !DILocation(line: 37, column: 69, scope: !40)
!88 = !DILocation(line: 37, column: 11, scope: !40)
!89 = !DILocation(line: 38, column: 17, scope: !40)
!90 = !DILocation(line: 39, column: 7, scope: !40)
!91 = !DILocation(line: 0, scope: !40)
!92 = !DILocation(line: 42, column: 92, scope: !40)
!93 = !DILocation(line: 42, column: 107, scope: !40)
!94 = !DILocation(line: 42, column: 143, scope: !40)
!95 = !DILocation(line: 42, column: 205, scope: !40)
!96 = !DILocation(line: 42, column: 283, scope: !40)
!97 = !DILocation(line: 42, column: 42, scope: !40)
!98 = !DILocation(line: 42, column: 369, scope: !40)
!99 = !DILocation(line: 42, column: 198, scope: !40)
!100 = !DILocation(line: 68, column: 3, scope: !67, inlinedAt: !101)
!101 = distinct !DILocation(line: 192, column: 3, scope: !70, inlinedAt: !102)
!102 = distinct !DILocation(line: 44, column: 5, scope: !40)
!103 = !DILocation(line: 69, column: 3, scope: !67, inlinedAt: !101)
!104 = !DILocation(line: 70, column: 3, scope: !67, inlinedAt: !101)
!105 = !DILocation(line: 54, column: 159, scope: !40)
!106 = !DILocation(line: 54, column: 232, scope: !40)
!107 = !DILocation(line: 54, column: 298, scope: !40)
!108 = !DILocation(line: 54, column: 368, scope: !40)
!109 = !DILocation(line: 54, column: 69, scope: !40)
!110 = !DILocation(line: 54, column: 32, scope: !40)
!111 = !DILocation(line: 56, column: 44, scope: !40)
!112 = !DILocation(line: 54, column: 123, scope: !40)
!113 = !DILocation(line: 65, column: 96, scope: !40)
!114 = !DILocation(line: 65, column: 11, scope: !40)
!115 = !DILocation(line: 65, column: 68, scope: !40)
!116 = !DILocation(line: 65, column: 83, scope: !40)
!117 = !DILocation(line: 351, column: 10, scope: !118, inlinedAt: !120)
!118 = distinct !DISubprogram(name: "max", scope: !119, file: !119, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!119 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!120 = distinct !DILocation(line: 76, column: 22, scope: !40)
!121 = !DILocation(line: 1018, column: 9, scope: !122, inlinedAt: !123)
!122 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !68, file: !68, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!123 = distinct !DILocation(line: 338, column: 10, scope: !124, inlinedAt: !126)
!124 = distinct !DISubprogram(name: "shfl_xor_sync<float>", scope: !125, file: !125, line: 337, type: !7, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!125 = !DIFile(filename: "src/tl_templates/maca/common.h", directory: "/root/tilelang-metax")
!126 = distinct !DILocation(line: 95, column: 24, scope: !127, inlinedAt: !129)
!127 = distinct !DISubprogram(name: "run<float>", scope: !128, file: !128, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!128 = !DIFile(filename: "src/tl_templates/maca/reduce.h", directory: "/root/tilelang-metax")
!129 = distinct !DILocation(line: 78, column: 20, scope: !40)
!130 = !DILocation(line: 171, column: 37, scope: !131, inlinedAt: !132)
!131 = distinct !DISubprogram(name: "__lane_id", scope: !68, file: !68, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!132 = distinct !DILocation(line: 990, column: 14, scope: !133, inlinedAt: !134)
!133 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !68, file: !68, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!134 = distinct !DILocation(line: 1019, column: 11, scope: !122, inlinedAt: !123)
!135 = !DILocation(line: 171, column: 10, scope: !131, inlinedAt: !132)
!136 = !DILocation(line: 991, column: 20, scope: !133, inlinedAt: !134)
!137 = !DILocation(line: 992, column: 36, scope: !133, inlinedAt: !134)
!138 = !DILocation(line: 992, column: 17, scope: !133, inlinedAt: !134)
!139 = !DILocation(line: 992, column: 11, scope: !133, inlinedAt: !134)
!140 = !DILocation(line: 993, column: 43, scope: !133, inlinedAt: !134)
!141 = !DILocation(line: 993, column: 10, scope: !133, inlinedAt: !134)
!142 = !DILocation(line: 1020, column: 14, scope: !122, inlinedAt: !123)
!143 = !DILocation(line: 306, column: 10, scope: !144, inlinedAt: !145)
!144 = distinct !DISubprogram(name: "fmaxf", scope: !119, file: !119, line: 305, type: !7, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!145 = distinct !DILocation(line: 633, column: 10, scope: !146, inlinedAt: !148)
!146 = distinct !DISubprogram(name: "fast_max<float>", scope: !147, file: !147, line: 632, type: !7, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!147 = !DIFile(filename: "/opt/maca/include/mctlass/fast_math.h", directory: "")
!148 = distinct !DILocation(line: 31, column: 12, scope: !149, inlinedAt: !150)
!149 = distinct !DISubprogram(name: "operator()<float>", scope: !128, file: !128, line: 30, type: !7, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!150 = distinct !DILocation(line: 95, column: 11, scope: !127, inlinedAt: !129)
!151 = !DILocation(line: 1018, column: 9, scope: !122, inlinedAt: !152)
!152 = distinct !DILocation(line: 338, column: 10, scope: !124, inlinedAt: !153)
!153 = distinct !DILocation(line: 95, column: 24, scope: !154, inlinedAt: !155)
!154 = distinct !DISubprogram(name: "run<float>", scope: !128, file: !128, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!155 = distinct !DILocation(line: 100, column: 14, scope: !127, inlinedAt: !129)
!156 = !DILocation(line: 171, column: 37, scope: !131, inlinedAt: !157)
!157 = distinct !DILocation(line: 990, column: 14, scope: !133, inlinedAt: !158)
!158 = distinct !DILocation(line: 1019, column: 11, scope: !122, inlinedAt: !152)
!159 = !DILocation(line: 171, column: 10, scope: !131, inlinedAt: !157)
!160 = !DILocation(line: 991, column: 20, scope: !133, inlinedAt: !158)
!161 = !DILocation(line: 992, column: 36, scope: !133, inlinedAt: !158)
!162 = !DILocation(line: 992, column: 17, scope: !133, inlinedAt: !158)
!163 = !DILocation(line: 992, column: 11, scope: !133, inlinedAt: !158)
!164 = !DILocation(line: 993, column: 43, scope: !133, inlinedAt: !158)
!165 = !DILocation(line: 993, column: 10, scope: !133, inlinedAt: !158)
!166 = !DILocation(line: 1020, column: 14, scope: !122, inlinedAt: !152)
!167 = !DILocation(line: 306, column: 10, scope: !144, inlinedAt: !168)
!168 = distinct !DILocation(line: 633, column: 10, scope: !146, inlinedAt: !169)
!169 = distinct !DILocation(line: 31, column: 12, scope: !149, inlinedAt: !170)
!170 = distinct !DILocation(line: 95, column: 11, scope: !154, inlinedAt: !155)
!171 = !DILocation(line: 81, column: 41, scope: !40)
!172 = !DILocation(line: 81, column: 57, scope: !40)
!173 = !DILocation(line: 285, column: 49, scope: !174, inlinedAt: !175)
!174 = distinct !DISubprogram(name: "exp2f", scope: !119, file: !119, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!175 = distinct !DILocation(line: 81, column: 21, scope: !40)
!176 = !DILocation(line: 86, column: 40, scope: !40)
!177 = !DILocation(line: 1018, column: 9, scope: !122, inlinedAt: !178)
!178 = distinct !DILocation(line: 338, column: 10, scope: !124, inlinedAt: !179)
!179 = distinct !DILocation(line: 95, column: 24, scope: !180, inlinedAt: !181)
!180 = distinct !DISubprogram(name: "run<float>", scope: !128, file: !128, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!181 = distinct !DILocation(line: 88, column: 22, scope: !40)
!182 = !DILocation(line: 171, column: 37, scope: !131, inlinedAt: !183)
!183 = distinct !DILocation(line: 990, column: 14, scope: !133, inlinedAt: !184)
!184 = distinct !DILocation(line: 1019, column: 11, scope: !122, inlinedAt: !178)
!185 = !DILocation(line: 171, column: 10, scope: !131, inlinedAt: !183)
!186 = !DILocation(line: 991, column: 20, scope: !133, inlinedAt: !184)
!187 = !DILocation(line: 992, column: 36, scope: !133, inlinedAt: !184)
!188 = !DILocation(line: 992, column: 17, scope: !133, inlinedAt: !184)
!189 = !DILocation(line: 992, column: 11, scope: !133, inlinedAt: !184)
!190 = !DILocation(line: 993, column: 43, scope: !133, inlinedAt: !184)
!191 = !DILocation(line: 993, column: 10, scope: !133, inlinedAt: !184)
!192 = !DILocation(line: 1020, column: 14, scope: !122, inlinedAt: !178)
!193 = !DILocation(line: 25, column: 14, scope: !194, inlinedAt: !195)
!194 = distinct !DISubprogram(name: "operator()<float>", scope: !128, file: !128, line: 24, type: !7, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!195 = distinct !DILocation(line: 95, column: 11, scope: !180, inlinedAt: !181)
!196 = !DILocation(line: 1018, column: 9, scope: !122, inlinedAt: !197)
!197 = distinct !DILocation(line: 338, column: 10, scope: !124, inlinedAt: !198)
!198 = distinct !DILocation(line: 95, column: 24, scope: !199, inlinedAt: !200)
!199 = distinct !DISubprogram(name: "run<float>", scope: !128, file: !128, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!200 = distinct !DILocation(line: 100, column: 14, scope: !180, inlinedAt: !181)
!201 = !DILocation(line: 171, column: 37, scope: !131, inlinedAt: !202)
!202 = distinct !DILocation(line: 990, column: 14, scope: !133, inlinedAt: !203)
!203 = distinct !DILocation(line: 1019, column: 11, scope: !122, inlinedAt: !197)
!204 = !DILocation(line: 171, column: 10, scope: !131, inlinedAt: !202)
!205 = !DILocation(line: 991, column: 20, scope: !133, inlinedAt: !203)
!206 = !DILocation(line: 992, column: 36, scope: !133, inlinedAt: !203)
!207 = !DILocation(line: 992, column: 17, scope: !133, inlinedAt: !203)
!208 = !DILocation(line: 992, column: 11, scope: !133, inlinedAt: !203)
!209 = !DILocation(line: 993, column: 43, scope: !133, inlinedAt: !203)
!210 = !DILocation(line: 993, column: 10, scope: !133, inlinedAt: !203)
!211 = !DILocation(line: 1020, column: 14, scope: !122, inlinedAt: !197)
!212 = !DILocation(line: 25, column: 14, scope: !194, inlinedAt: !213)
!213 = distinct !DILocation(line: 95, column: 11, scope: !199, inlinedAt: !200)
!214 = !DILocation(line: 91, column: 34, scope: !40)
!215 = !DILocation(line: 1007, column: 10, scope: !216, inlinedAt: !218)
!216 = distinct !DISubprogram(name: "__float2half_rn", scope: !217, file: !217, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!217 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!218 = distinct !DILocation(line: 1077, column: 18, scope: !219, inlinedAt: !220)
!219 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !217, file: !217, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!220 = distinct !DILocation(line: 1295, column: 23, scope: !221, inlinedAt: !222)
!221 = distinct !DISubprogram(name: "__float22half2_rn", scope: !217, file: !217, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!222 = distinct !DILocation(line: 97, column: 29, scope: !40)
!223 = !{!224, !226}
!224 = distinct !{!224, !225, !"_ZL17__floats2half2_rnff: %agg.result"}
!225 = distinct !{!225, !"_ZL17__floats2half2_rnff"}
!226 = distinct !{!226, !227, !"_ZL17__float22half2_rn6float2: %agg.result"}
!227 = distinct !{!227, !"_ZL17__float22half2_rn6float2"}
!228 = !DILocation(line: 1007, column: 10, scope: !216, inlinedAt: !229)
!229 = distinct !DILocation(line: 1077, column: 38, scope: !219, inlinedAt: !220)
!230 = !DILocation(line: 1007, column: 10, scope: !216, inlinedAt: !231)
!231 = distinct !DILocation(line: 1077, column: 18, scope: !219, inlinedAt: !232)
!232 = distinct !DILocation(line: 1295, column: 23, scope: !221, inlinedAt: !233)
!233 = distinct !DILocation(line: 98, column: 29, scope: !40)
!234 = !{!235, !237}
!235 = distinct !{!235, !236, !"_ZL17__floats2half2_rnff: %agg.result"}
!236 = distinct !{!236, !"_ZL17__floats2half2_rnff"}
!237 = distinct !{!237, !238, !"_ZL17__float22half2_rn6float2: %agg.result"}
!238 = distinct !{!238, !"_ZL17__float22half2_rn6float2"}
!239 = !DILocation(line: 1007, column: 10, scope: !216, inlinedAt: !240)
!240 = distinct !DILocation(line: 1077, column: 38, scope: !219, inlinedAt: !232)
!241 = !DILocation(line: 99, column: 42, scope: !40)
!242 = !DILocation(line: 68, column: 3, scope: !67, inlinedAt: !243)
!243 = distinct !DILocation(line: 192, column: 3, scope: !70, inlinedAt: !244)
!244 = distinct !DILocation(line: 101, column: 5, scope: !40)
!245 = !DILocation(line: 69, column: 3, scope: !67, inlinedAt: !243)
!246 = !DILocation(line: 70, column: 3, scope: !67, inlinedAt: !243)
!247 = !DILocation(line: 106, column: 69, scope: !40)
!248 = !DILocation(line: 106, column: 11, scope: !40)
!249 = !DILocation(line: 107, column: 33, scope: !40)
!250 = !DILocation(line: 107, column: 19, scope: !40)
!251 = !DILocation(line: 108, column: 7, scope: !40)
!252 = !DILocation(line: 111, column: 96, scope: !40)
!253 = !DILocation(line: 111, column: 174, scope: !40)
!254 = !DILocation(line: 111, column: 259, scope: !40)
!255 = !DILocation(line: 111, column: 42, scope: !40)
!256 = !DILocation(line: 111, column: 337, scope: !40)
!257 = !DILocation(line: 111, column: 60, scope: !40)
!258 = !DILocation(line: 68, column: 3, scope: !67, inlinedAt: !259)
!259 = distinct !DILocation(line: 192, column: 3, scope: !70, inlinedAt: !260)
!260 = distinct !DILocation(line: 113, column: 5, scope: !40)
!261 = !DILocation(line: 69, column: 3, scope: !67, inlinedAt: !259)
!262 = !DILocation(line: 70, column: 3, scope: !67, inlinedAt: !259)
!263 = !DILocation(line: 114, column: 3, scope: !40)
!264 = !DILocation(line: 120, column: 26, scope: !40)
!265 = !DILocation(line: 139, column: 42, scope: !40)
!266 = !DILocation(line: 139, column: 23, scope: !40)
!267 = !DILocation(line: 125, column: 142, scope: !40)
!268 = !DILocation(line: 125, column: 309, scope: !40)
!269 = !DILocation(line: 125, column: 248, scope: !40)
!270 = !DILocation(line: 125, column: 315, scope: !40)
!271 = !DILocation(line: 125, column: 43, scope: !40)
!272 = !DILocation(line: 125, column: 41, scope: !40)
!273 = !{!26, !26, i64 0}
!274 = !DILocation(line: 125, column: 123, scope: !40)
!275 = !DILocation(line: 130, column: 43, scope: !40)
!276 = !DILocation(line: 136, column: 3, scope: !40)
!277 = !DILocation(line: 143, column: 3, scope: !40)
!278 = !DILocation(line: 145, column: 19, scope: !40)
!279 = !DILocation(line: 1007, column: 10, scope: !216, inlinedAt: !280)
!280 = distinct !DILocation(line: 1077, column: 18, scope: !219, inlinedAt: !281)
!281 = distinct !DILocation(line: 1295, column: 23, scope: !221, inlinedAt: !282)
!282 = distinct !DILocation(line: 146, column: 27, scope: !40)
!283 = !{!284, !286}
!284 = distinct !{!284, !285, !"_ZL17__floats2half2_rnff: %agg.result"}
!285 = distinct !{!285, !"_ZL17__floats2half2_rnff"}
!286 = distinct !{!286, !287, !"_ZL17__float22half2_rn6float2: %agg.result"}
!287 = distinct !{!287, !"_ZL17__float22half2_rn6float2"}
!288 = !DILocation(line: 1007, column: 10, scope: !216, inlinedAt: !289)
!289 = distinct !DILocation(line: 1077, column: 38, scope: !219, inlinedAt: !281)
!290 = !DILocation(line: 596, column: 67, scope: !291, inlinedAt: !292)
!291 = distinct !DISubprogram(name: "__half2", scope: !217, file: !217, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!292 = distinct !DILocation(line: 1077, column: 10, scope: !219, inlinedAt: !281)
!293 = !DILocation(line: 596, column: 73, scope: !291, inlinedAt: !292)
!294 = !DILocation(line: 1007, column: 10, scope: !216, inlinedAt: !295)
!295 = distinct !DILocation(line: 1077, column: 18, scope: !219, inlinedAt: !296)
!296 = distinct !DILocation(line: 1295, column: 23, scope: !221, inlinedAt: !297)
!297 = distinct !DILocation(line: 147, column: 27, scope: !40)
!298 = !{!299, !301}
!299 = distinct !{!299, !300, !"_ZL17__floats2half2_rnff: %agg.result"}
!300 = distinct !{!300, !"_ZL17__floats2half2_rnff"}
!301 = distinct !{!301, !302, !"_ZL17__float22half2_rn6float2: %agg.result"}
!302 = distinct !{!302, !"_ZL17__float22half2_rn6float2"}
!303 = !DILocation(line: 1007, column: 10, scope: !216, inlinedAt: !304)
!304 = distinct !DILocation(line: 1077, column: 38, scope: !219, inlinedAt: !296)
!305 = !DILocation(line: 596, column: 67, scope: !291, inlinedAt: !306)
!306 = distinct !DILocation(line: 1077, column: 10, scope: !219, inlinedAt: !296)
!307 = !DILocation(line: 596, column: 73, scope: !291, inlinedAt: !306)
!308 = !DILocation(line: 148, column: 38, scope: !40)
!309 = !DILocation(line: 149, column: 22, scope: !40)
!310 = !DILocation(line: 149, column: 218, scope: !40)
!311 = !DILocation(line: 151, column: 1, scope: !40)
