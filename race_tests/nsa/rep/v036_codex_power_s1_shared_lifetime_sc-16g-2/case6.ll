; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v036_codex_power_s1_shared_lifetime_sc-16g-2/case6.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v036_codex_power_s1_shared_lifetime_sc-16g-2/codegen/case6.device.cpp"
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
  %add = add nuw nsw i32 %mul, %1, !dbg !50
  %idxprom = zext nneg i32 %add to i64, !dbg !51
  %arrayidx = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %idxprom, !dbg !51
  %2 = load i32, ptr addrspace(1) %arrayidx, align 4, !dbg !51, !tbaa !30
  %mul7 = shl nsw i32 %2, 5, !dbg !52
  %cmp = icmp slt i32 %2, 0, !dbg !53
  %cmp10.not = icmp sgt i32 %mul7, %1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp10.not, !dbg !54
  br i1 %or.cond, label %if.end486, label %for.cond.preheader, !dbg !54

for.cond.preheader:                               ; preds = %entry
  %mul13 = shl nsw i32 %0, 21
  %mul15 = shl nsw i32 %1, 11
  %add16 = add nuw nsw i32 %mul13, %mul15
  %3 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  %mul20 = shl nuw nsw i32 %3, 3
  %add18 = add nuw nsw i32 %add16, %mul20
  %4 = and i32 %3, 8
  %5 = shl nuw nsw i32 %3, 2
  %mul28 = and i32 %5, 4032
  %and31 = lshr i32 %3, 2
  %shr39 = lshr i32 %3, 5
  %and41 = lshr i32 %3, 1
  %add43 = add nuw nsw i32 %shr39, %and41
  %and44 = shl nuw nsw i32 %add43, 4
  %mul45 = and i32 %and44, 16
  %and48 = lshr i32 %3, 4
  %add52 = add nuw nsw i32 %and48, %3
  %and53 = shl nuw nsw i32 %add52, 3
  %mul54 = and i32 %and53, 8
  %6 = zext nneg i32 %add18 to i64, !dbg !56
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %6, !dbg !57
  %7 = shl nuw nsw i32 %4, 8, !dbg !58
  %8 = add nuw nsw i32 %7, %mul28, !dbg !59
  %9 = shl nuw nsw i32 %and31, 5, !dbg !60
  %mul36 = and i32 %9, 32, !dbg !60
  %add37 = or disjoint i32 %8, %mul36, !dbg !61
  %add46 = or disjoint i32 %add37, %mul45, !dbg !62
  %add55 = or disjoint i32 %add46, %mul54, !dbg !63
  %add.ptr57 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add55, !dbg !64
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr57, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr, i64 16, i1 false), !dbg !65, !tbaa.struct !66, !call_argsrelate !67
  %10 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %6, !dbg !57
  %add.ptr.1 = getelementptr inbounds i8, ptr addrspace(4) %10, i64 1024, !dbg !57
  %11 = shl nuw nsw i32 %4, 8, !dbg !58
  %12 = or disjoint i32 %11, 256, !dbg !58
  %13 = add nuw nsw i32 %12, %mul28, !dbg !59
  %14 = shl nuw nsw i32 %and31, 5, !dbg !60
  %15 = and i32 %14, 32, !dbg !60
  %16 = or disjoint i32 %15, %13, !dbg !61
  %17 = or disjoint i32 %16, %mul45, !dbg !62
  %18 = or disjoint i32 %17, %mul54, !dbg !63
  %add55.1 = xor i32 %18, 32, !dbg !63
  %add.ptr57.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add55.1, !dbg !64
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr57.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr.1, i64 16, i1 false), !dbg !65, !tbaa.struct !66, !call_argsrelate !67
  %19 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %6, !dbg !57
  %add.ptr.2 = getelementptr inbounds i8, ptr addrspace(4) %19, i64 2048, !dbg !57
  %20 = shl nuw nsw i32 %4, 8, !dbg !58
  %21 = or disjoint i32 %20, 512, !dbg !58
  %22 = add nuw nsw i32 %21, %mul28, !dbg !59
  %23 = shl nuw nsw i32 %and31, 5, !dbg !60
  %mul36.2 = and i32 %23, 32, !dbg !60
  %add37.2 = or disjoint i32 %22, %mul36.2, !dbg !61
  %add46.2 = or disjoint i32 %add37.2, %mul45, !dbg !62
  %add55.2 = or disjoint i32 %add46.2, %mul54, !dbg !63
  %add.ptr57.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add55.2, !dbg !64
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr57.2, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr.2, i64 16, i1 false), !dbg !65, !tbaa.struct !66, !call_argsrelate !67
  %24 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %6, !dbg !57
  %add.ptr.3 = getelementptr inbounds i8, ptr addrspace(4) %24, i64 3072, !dbg !57
  %25 = shl nuw nsw i32 %4, 8, !dbg !58
  %26 = or disjoint i32 %25, 768, !dbg !58
  %27 = add nuw nsw i32 %26, %mul28, !dbg !59
  %28 = shl nuw nsw i32 %and31, 5, !dbg !60
  %29 = and i32 %28, 32, !dbg !60
  %30 = or disjoint i32 %29, %27, !dbg !61
  %31 = or disjoint i32 %30, %mul45, !dbg !62
  %32 = or disjoint i32 %31, %mul54, !dbg !63
  %add55.3 = xor i32 %32, 32, !dbg !63
  %add.ptr57.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add55.3, !dbg !64
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr57.3, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr.3, i64 16, i1 false), !dbg !65, !tbaa.struct !66, !call_argsrelate !67
  fence syncscope("warp") release, !dbg !68
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %and66 = shl nuw nsw i32 %3, 6
  %mul67 = and i32 %and66, 960
  %add90 = add nuw nsw i32 %shr39, %3
  %and91 = shl nuw nsw i32 %add90, 3
  %mul92 = and i32 %and91, 8
  %mul97 = and i32 %and31, 4
  %add68 = or disjoint i32 %mul97, %mul67
  %add77 = or disjoint i32 %add68, %mul92
  %and75 = shl nuw nsw i32 %and31, 5, !dbg !76
  %mul76 = and i32 %and75, 32, !dbg !76
  %and83 = shl nuw nsw i32 %and41, 4, !dbg !77
  %mul84 = and i32 %and83, 16, !dbg !77
  %add93 = or disjoint i32 %add77, %mul84, !dbg !78
  %add98 = or disjoint i32 %add93, %mul76, !dbg !79
  %add.ptr100 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add98, !dbg !80
  %33 = load <4 x half>, ptr addrspace(3) %add.ptr100, align 8, !dbg !81
  %add82.1 = shl nuw nsw i32 %and41, 4, !dbg !77
  %34 = and i32 %add82.1, 16, !dbg !77
  %mul84.1 = xor i32 %34, 16, !dbg !77
  %add93.1 = or disjoint i32 %add77, %mul84.1, !dbg !78
  %add98.1 = or disjoint i32 %add93.1, %mul76, !dbg !79
  %add.ptr100.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add98.1, !dbg !80
  %35 = load <4 x half>, ptr addrspace(3) %add.ptr100.1, align 8, !dbg !81
  %add74.2 = shl nuw nsw i32 %and31, 5, !dbg !76
  %36 = and i32 %add74.2, 32, !dbg !76
  %mul76.2 = xor i32 %36, 32, !dbg !76
  %add82.2 = shl nuw nsw i32 %and41, 4, !dbg !77
  %mul84.2 = and i32 %add82.2, 16, !dbg !77
  %add93.2 = or disjoint i32 %add77, %mul84.2, !dbg !78
  %add98.2 = or disjoint i32 %add93.2, %mul76.2, !dbg !79
  %add.ptr100.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add98.2, !dbg !80
  %37 = load <4 x half>, ptr addrspace(3) %add.ptr100.2, align 8, !dbg !81
  %add82.3 = shl nuw nsw i32 %and41, 4, !dbg !77
  %38 = and i32 %add82.3, 16, !dbg !77
  %mul84.3 = xor i32 %38, 16, !dbg !77
  %add93.3 = or disjoint i32 %add77, %mul84.3, !dbg !78
  %add98.3 = or disjoint i32 %add93.3, %mul76.2, !dbg !79
  %add.ptr100.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add98.3, !dbg !80
  %39 = load <4 x half>, ptr addrspace(3) %add.ptr100.3, align 8, !dbg !81
  %add74.4 = shl nuw nsw i32 %and31, 5, !dbg !76
  %mul76.4 = and i32 %add74.4, 32, !dbg !76
  %add82.4 = shl nuw nsw i32 %and41, 4, !dbg !77
  %mul84.4 = and i32 %add82.4, 16, !dbg !77
  %add85.4 = or disjoint i32 %add77, 2048, !dbg !82
  %add93.4 = or disjoint i32 %add85.4, %mul84.4, !dbg !78
  %add98.4 = or disjoint i32 %add93.4, %mul76.4, !dbg !79
  %add.ptr100.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add98.4, !dbg !80
  %40 = load <4 x half>, ptr addrspace(3) %add.ptr100.4, align 8, !dbg !81
  %add82.5 = shl nuw nsw i32 %and41, 4, !dbg !77
  %41 = and i32 %add82.5, 16, !dbg !77
  %mul84.5 = xor i32 %41, 16, !dbg !77
  %add93.5 = or disjoint i32 %add85.4, %mul84.5, !dbg !78
  %add98.5 = or disjoint i32 %add93.5, %mul76.4, !dbg !79
  %add.ptr100.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add98.5, !dbg !80
  %42 = load <4 x half>, ptr addrspace(3) %add.ptr100.5, align 8, !dbg !81
  %add74.6 = shl nuw nsw i32 %and31, 5, !dbg !76
  %43 = and i32 %add74.6, 32, !dbg !76
  %mul76.6 = xor i32 %43, 32, !dbg !76
  %add82.6 = shl nuw nsw i32 %and41, 4, !dbg !77
  %mul84.6 = and i32 %add82.6, 16, !dbg !77
  %add93.6 = or disjoint i32 %add85.4, %mul84.6, !dbg !78
  %add98.6 = or disjoint i32 %add93.6, %mul76.6, !dbg !79
  %add.ptr100.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add98.6, !dbg !80
  %44 = load <4 x half>, ptr addrspace(3) %add.ptr100.6, align 8, !dbg !81
  %add82.7 = shl nuw nsw i32 %and41, 4, !dbg !77
  %45 = and i32 %add82.7, 16, !dbg !77
  %mul84.7 = xor i32 %45, 16, !dbg !77
  %add93.7 = or disjoint i32 %add85.4, %mul84.7, !dbg !78
  %add98.7 = or disjoint i32 %add93.7, %mul76.6, !dbg !79
  %add.ptr100.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add98.7, !dbg !80
  %46 = load <4 x half>, ptr addrspace(3) %add.ptr100.7, align 8, !dbg !81
  fence syncscope("warp") release, !dbg !83
  tail call void @llvm.mxc.barrier.warp(), !dbg !86
  fence syncscope("warp") acquire, !dbg !87
  %add114 = add nuw nsw i32 %mul7, %and48
  %conv = zext nneg i32 %0 to i64
  %mul120 = shl nuw nsw i64 %conv, 17
  %conv124 = zext nneg i32 %mul7 to i64
  %.idx754 = shl nuw nsw i64 %conv124, 8
  %invariant.gep = getelementptr inbounds i8, ptr addrspace(4) %K.coerce, i64 %.idx754, !dbg !88
  %mul129 = zext nneg i32 %mul20 to i64
  %invariant.gep828 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %mul129, !dbg !88
  %cmp117 = icmp ult i32 %add114, 1024, !dbg !89
  br i1 %cmp117, label %if.then118, label %if.end, !dbg !90

if.then118:                                       ; preds = %for.cond.preheader
  %gep829 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep828, i64 %mul120
  %condval.sroa.7.0.add.ptr131.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep829, i64 12
  %condval.sroa.6.0.add.ptr131.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep829, i64 8
  %condval.sroa.5.0.add.ptr131.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep829, i64 4
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep829, align 16, !dbg !91, !tbaa !30
  %condval.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr131.sroa_idx, align 4, !dbg !91, !tbaa !30
  %condval.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr131.sroa_idx, align 8, !dbg !91, !tbaa !30
  %condval.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr131.sroa_idx, align 4, !dbg !91, !tbaa !30
  br label %if.end, !dbg !92

if.end:                                           ; preds = %for.cond.preheader, %if.then118
  %condval.sroa.0.0 = phi i32 [ %condval.sroa.0.0.copyload, %if.then118 ], [ 0, %for.cond.preheader ], !dbg !93
  %condval.sroa.5.0 = phi i32 [ %condval.sroa.5.0.copyload, %if.then118 ], [ 0, %for.cond.preheader ], !dbg !93
  %condval.sroa.6.0 = phi i32 [ %condval.sroa.6.0.copyload, %if.then118 ], [ 0, %for.cond.preheader ], !dbg !93
  %condval.sroa.7.0 = phi i32 [ %condval.sroa.7.0.copyload, %if.then118 ], [ 0, %for.cond.preheader ], !dbg !93
  store i32 %condval.sroa.0.0, ptr addrspace(3) %add.ptr57, align 16, !dbg !94, !tbaa !30
  %condval.sroa.5.0.add.ptr188.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr57, i32 4, !dbg !94
  store i32 %condval.sroa.5.0, ptr addrspace(3) %condval.sroa.5.0.add.ptr188.sroa_idx, align 4, !dbg !94, !tbaa !30
  %condval.sroa.6.0.add.ptr188.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr57, i32 8, !dbg !94
  store i32 %condval.sroa.6.0, ptr addrspace(3) %condval.sroa.6.0.add.ptr188.sroa_idx, align 8, !dbg !94, !tbaa !30
  %condval.sroa.7.0.add.ptr188.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr57, i32 12, !dbg !94
  store i32 %condval.sroa.7.0, ptr addrspace(3) %condval.sroa.7.0.add.ptr188.sroa_idx, align 4, !dbg !94, !tbaa !30
  %cmp117.1 = icmp ult i32 %add114, 1020, !dbg !89
  br i1 %cmp117.1, label %if.then118.1, label %if.end.1, !dbg !90

if.then118.1:                                     ; preds = %if.end
  %add123.1 = or disjoint i64 %mul120, 512
  %gep829.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep828, i64 %add123.1
  %condval.sroa.7.0.add.ptr131.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep829.1, i64 12
  %condval.sroa.6.0.add.ptr131.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep829.1, i64 8
  %condval.sroa.5.0.add.ptr131.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep829.1, i64 4
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep829.1, align 16, !dbg !91, !tbaa !30
  %condval.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr131.sroa_idx.1, align 4, !dbg !91, !tbaa !30
  %condval.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr131.sroa_idx.1, align 8, !dbg !91, !tbaa !30
  %condval.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr131.sroa_idx.1, align 4, !dbg !91, !tbaa !30
  br label %if.end.1, !dbg !92

if.end.1:                                         ; preds = %if.then118.1, %if.end
  %condval.sroa.0.0.1 = phi i32 [ %condval.sroa.0.0.copyload.1, %if.then118.1 ], [ 0, %if.end ], !dbg !93
  %condval.sroa.5.0.1 = phi i32 [ %condval.sroa.5.0.copyload.1, %if.then118.1 ], [ 0, %if.end ], !dbg !93
  %condval.sroa.6.0.1 = phi i32 [ %condval.sroa.6.0.copyload.1, %if.then118.1 ], [ 0, %if.end ], !dbg !93
  %condval.sroa.7.0.1 = phi i32 [ %condval.sroa.7.0.copyload.1, %if.then118.1 ], [ 0, %if.end ], !dbg !93
  store i32 %condval.sroa.0.0.1, ptr addrspace(3) %add.ptr57.1, align 16, !dbg !94, !tbaa !30
  %condval.sroa.5.0.add.ptr188.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr57.1, i32 4, !dbg !94
  store i32 %condval.sroa.5.0.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr188.sroa_idx.1, align 4, !dbg !94, !tbaa !30
  %condval.sroa.6.0.add.ptr188.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr57.1, i32 8, !dbg !94
  store i32 %condval.sroa.6.0.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr188.sroa_idx.1, align 8, !dbg !94, !tbaa !30
  %condval.sroa.7.0.add.ptr188.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr57.1, i32 12, !dbg !94
  store i32 %condval.sroa.7.0.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr188.sroa_idx.1, align 4, !dbg !94, !tbaa !30
  %cmp117.2 = icmp ult i32 %add114, 1016, !dbg !89
  br i1 %cmp117.2, label %if.then118.2, label %if.end.2, !dbg !90

if.then118.2:                                     ; preds = %if.end.1
  %add123.2 = or disjoint i64 %mul120, 1024
  %gep829.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep828, i64 %add123.2
  %condval.sroa.7.0.add.ptr131.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep829.2, i64 12
  %condval.sroa.6.0.add.ptr131.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep829.2, i64 8
  %condval.sroa.5.0.add.ptr131.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep829.2, i64 4
  %condval.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %gep829.2, align 16, !dbg !91, !tbaa !30
  %condval.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr131.sroa_idx.2, align 4, !dbg !91, !tbaa !30
  %condval.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr131.sroa_idx.2, align 8, !dbg !91, !tbaa !30
  %condval.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr131.sroa_idx.2, align 4, !dbg !91, !tbaa !30
  br label %if.end.2, !dbg !92

if.end.2:                                         ; preds = %if.then118.2, %if.end.1
  %condval.sroa.0.0.2 = phi i32 [ %condval.sroa.0.0.copyload.2, %if.then118.2 ], [ 0, %if.end.1 ], !dbg !93
  %condval.sroa.5.0.2 = phi i32 [ %condval.sroa.5.0.copyload.2, %if.then118.2 ], [ 0, %if.end.1 ], !dbg !93
  %condval.sroa.6.0.2 = phi i32 [ %condval.sroa.6.0.copyload.2, %if.then118.2 ], [ 0, %if.end.1 ], !dbg !93
  %condval.sroa.7.0.2 = phi i32 [ %condval.sroa.7.0.copyload.2, %if.then118.2 ], [ 0, %if.end.1 ], !dbg !93
  store i32 %condval.sroa.0.0.2, ptr addrspace(3) %add.ptr57.2, align 16, !dbg !94, !tbaa !30
  %condval.sroa.5.0.add.ptr188.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr57.2, i32 4, !dbg !94
  store i32 %condval.sroa.5.0.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr188.sroa_idx.2, align 4, !dbg !94, !tbaa !30
  %condval.sroa.6.0.add.ptr188.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr57.2, i32 8, !dbg !94
  store i32 %condval.sroa.6.0.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr188.sroa_idx.2, align 8, !dbg !94, !tbaa !30
  %condval.sroa.7.0.add.ptr188.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr57.2, i32 12, !dbg !94
  store i32 %condval.sroa.7.0.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr188.sroa_idx.2, align 4, !dbg !94, !tbaa !30
  %cmp117.3 = icmp ult i32 %add114, 1012, !dbg !89
  br i1 %cmp117.3, label %if.then118.3, label %if.end.3, !dbg !90

if.then118.3:                                     ; preds = %if.end.2
  %add123.3 = or disjoint i64 %mul120, 1536
  %gep829.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep828, i64 %add123.3
  %condval.sroa.7.0.add.ptr131.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep829.3, i64 12
  %condval.sroa.6.0.add.ptr131.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep829.3, i64 8
  %condval.sroa.5.0.add.ptr131.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep829.3, i64 4
  %condval.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %gep829.3, align 16, !dbg !91, !tbaa !30
  %condval.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr131.sroa_idx.3, align 4, !dbg !91, !tbaa !30
  %condval.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr131.sroa_idx.3, align 8, !dbg !91, !tbaa !30
  %condval.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr131.sroa_idx.3, align 4, !dbg !91, !tbaa !30
  br label %if.end.3, !dbg !92

if.end.3:                                         ; preds = %if.then118.3, %if.end.2
  %condval.sroa.0.0.3 = phi i32 [ %condval.sroa.0.0.copyload.3, %if.then118.3 ], [ 0, %if.end.2 ], !dbg !93
  %condval.sroa.5.0.3 = phi i32 [ %condval.sroa.5.0.copyload.3, %if.then118.3 ], [ 0, %if.end.2 ], !dbg !93
  %condval.sroa.6.0.3 = phi i32 [ %condval.sroa.6.0.copyload.3, %if.then118.3 ], [ 0, %if.end.2 ], !dbg !93
  %condval.sroa.7.0.3 = phi i32 [ %condval.sroa.7.0.copyload.3, %if.then118.3 ], [ 0, %if.end.2 ], !dbg !93
  store i32 %condval.sroa.0.0.3, ptr addrspace(3) %add.ptr57.3, align 16, !dbg !94, !tbaa !30
  %condval.sroa.5.0.add.ptr188.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr57.3, i32 4, !dbg !94
  store i32 %condval.sroa.5.0.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr188.sroa_idx.3, align 4, !dbg !94, !tbaa !30
  %condval.sroa.6.0.add.ptr188.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr57.3, i32 8, !dbg !94
  store i32 %condval.sroa.6.0.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr188.sroa_idx.3, align 8, !dbg !94, !tbaa !30
  %condval.sroa.7.0.add.ptr188.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr57.3, i32 12, !dbg !94
  store i32 %condval.sroa.7.0.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr188.sroa_idx.3, align 4, !dbg !94, !tbaa !30
  %cmp117.4 = icmp ult i32 %add114, 1008, !dbg !89
  br i1 %cmp117.4, label %if.then118.4, label %if.end.4, !dbg !90

if.then118.4:                                     ; preds = %if.end.3
  %add123.4 = or disjoint i64 %mul120, 2048
  %gep829.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep828, i64 %add123.4
  %condval.sroa.7.0.add.ptr131.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep829.4, i64 12
  %condval.sroa.6.0.add.ptr131.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep829.4, i64 8
  %condval.sroa.5.0.add.ptr131.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep829.4, i64 4
  %condval.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %gep829.4, align 16, !dbg !91, !tbaa !30
  %condval.sroa.5.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr131.sroa_idx.4, align 4, !dbg !91, !tbaa !30
  %condval.sroa.6.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr131.sroa_idx.4, align 8, !dbg !91, !tbaa !30
  %condval.sroa.7.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr131.sroa_idx.4, align 4, !dbg !91, !tbaa !30
  br label %if.end.4, !dbg !92

if.end.4:                                         ; preds = %if.then118.4, %if.end.3
  %condval.sroa.0.0.4 = phi i32 [ %condval.sroa.0.0.copyload.4, %if.then118.4 ], [ 0, %if.end.3 ], !dbg !93
  %condval.sroa.5.0.4 = phi i32 [ %condval.sroa.5.0.copyload.4, %if.then118.4 ], [ 0, %if.end.3 ], !dbg !93
  %condval.sroa.6.0.4 = phi i32 [ %condval.sroa.6.0.copyload.4, %if.then118.4 ], [ 0, %if.end.3 ], !dbg !93
  %condval.sroa.7.0.4 = phi i32 [ %condval.sroa.7.0.copyload.4, %if.then118.4 ], [ 0, %if.end.3 ], !dbg !93
  %47 = shl nuw nsw i32 %4, 8, !dbg !95
  %48 = or disjoint i32 %47, 1024, !dbg !95
  %49 = add nuw nsw i32 %48, %mul28, !dbg !96
  %50 = shl nuw nsw i32 %and31, 5, !dbg !97
  %mul167.4 = and i32 %50, 32, !dbg !97
  %add168.4 = or disjoint i32 %49, %mul167.4, !dbg !98
  %add177.4 = or disjoint i32 %add168.4, %mul45, !dbg !99
  %add186.4 = or disjoint i32 %add177.4, %mul54, !dbg !100
  %add.ptr188.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add186.4, !dbg !101
  store i32 %condval.sroa.0.0.4, ptr addrspace(3) %add.ptr188.4, align 16, !dbg !94, !tbaa !30
  %condval.sroa.5.0.add.ptr188.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr188.4, i32 4, !dbg !94
  store i32 %condval.sroa.5.0.4, ptr addrspace(3) %condval.sroa.5.0.add.ptr188.sroa_idx.4, align 4, !dbg !94, !tbaa !30
  %condval.sroa.6.0.add.ptr188.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr188.4, i32 8, !dbg !94
  store i32 %condval.sroa.6.0.4, ptr addrspace(3) %condval.sroa.6.0.add.ptr188.sroa_idx.4, align 8, !dbg !94, !tbaa !30
  %condval.sroa.7.0.add.ptr188.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr188.4, i32 12, !dbg !94
  store i32 %condval.sroa.7.0.4, ptr addrspace(3) %condval.sroa.7.0.add.ptr188.sroa_idx.4, align 4, !dbg !94, !tbaa !30
  %cmp117.5 = icmp ult i32 %add114, 1004, !dbg !89
  br i1 %cmp117.5, label %if.then118.5, label %if.end.5, !dbg !90

if.then118.5:                                     ; preds = %if.end.4
  %add123.5 = or disjoint i64 %mul120, 2560
  %gep829.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep828, i64 %add123.5
  %condval.sroa.7.0.add.ptr131.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep829.5, i64 12
  %condval.sroa.6.0.add.ptr131.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep829.5, i64 8
  %condval.sroa.5.0.add.ptr131.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep829.5, i64 4
  %condval.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %gep829.5, align 16, !dbg !91, !tbaa !30
  %condval.sroa.5.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr131.sroa_idx.5, align 4, !dbg !91, !tbaa !30
  %condval.sroa.6.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr131.sroa_idx.5, align 8, !dbg !91, !tbaa !30
  %condval.sroa.7.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr131.sroa_idx.5, align 4, !dbg !91, !tbaa !30
  br label %if.end.5, !dbg !92

if.end.5:                                         ; preds = %if.then118.5, %if.end.4
  %condval.sroa.0.0.5 = phi i32 [ %condval.sroa.0.0.copyload.5, %if.then118.5 ], [ 0, %if.end.4 ], !dbg !93
  %condval.sroa.5.0.5 = phi i32 [ %condval.sroa.5.0.copyload.5, %if.then118.5 ], [ 0, %if.end.4 ], !dbg !93
  %condval.sroa.6.0.5 = phi i32 [ %condval.sroa.6.0.copyload.5, %if.then118.5 ], [ 0, %if.end.4 ], !dbg !93
  %condval.sroa.7.0.5 = phi i32 [ %condval.sroa.7.0.copyload.5, %if.then118.5 ], [ 0, %if.end.4 ], !dbg !93
  %51 = shl nuw nsw i32 %4, 8, !dbg !95
  %52 = or disjoint i32 %51, 1280, !dbg !95
  %53 = add nuw nsw i32 %52, %mul28, !dbg !96
  %54 = shl nuw nsw i32 %and31, 5, !dbg !97
  %55 = and i32 %54, 32, !dbg !97
  %56 = or disjoint i32 %55, %53, !dbg !98
  %57 = or disjoint i32 %56, %mul45, !dbg !99
  %58 = or disjoint i32 %57, %mul54, !dbg !100
  %add186.5 = xor i32 %58, 32, !dbg !100
  %add.ptr188.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add186.5, !dbg !101
  store i32 %condval.sroa.0.0.5, ptr addrspace(3) %add.ptr188.5, align 16, !dbg !94, !tbaa !30
  %condval.sroa.5.0.add.ptr188.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr188.5, i32 4, !dbg !94
  store i32 %condval.sroa.5.0.5, ptr addrspace(3) %condval.sroa.5.0.add.ptr188.sroa_idx.5, align 4, !dbg !94, !tbaa !30
  %condval.sroa.6.0.add.ptr188.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr188.5, i32 8, !dbg !94
  store i32 %condval.sroa.6.0.5, ptr addrspace(3) %condval.sroa.6.0.add.ptr188.sroa_idx.5, align 8, !dbg !94, !tbaa !30
  %condval.sroa.7.0.add.ptr188.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr188.5, i32 12, !dbg !94
  store i32 %condval.sroa.7.0.5, ptr addrspace(3) %condval.sroa.7.0.add.ptr188.sroa_idx.5, align 4, !dbg !94, !tbaa !30
  %cmp117.6 = icmp ult i32 %add114, 1000, !dbg !89
  br i1 %cmp117.6, label %if.then118.6, label %if.end.6, !dbg !90

if.then118.6:                                     ; preds = %if.end.5
  %add123.6 = or disjoint i64 %mul120, 3072
  %gep829.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep828, i64 %add123.6
  %condval.sroa.7.0.add.ptr131.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep829.6, i64 12
  %condval.sroa.6.0.add.ptr131.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep829.6, i64 8
  %condval.sroa.5.0.add.ptr131.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep829.6, i64 4
  %condval.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %gep829.6, align 16, !dbg !91, !tbaa !30
  %condval.sroa.5.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr131.sroa_idx.6, align 4, !dbg !91, !tbaa !30
  %condval.sroa.6.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr131.sroa_idx.6, align 8, !dbg !91, !tbaa !30
  %condval.sroa.7.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr131.sroa_idx.6, align 4, !dbg !91, !tbaa !30
  br label %if.end.6, !dbg !92

if.end.6:                                         ; preds = %if.then118.6, %if.end.5
  %condval.sroa.0.0.6 = phi i32 [ %condval.sroa.0.0.copyload.6, %if.then118.6 ], [ 0, %if.end.5 ], !dbg !93
  %condval.sroa.5.0.6 = phi i32 [ %condval.sroa.5.0.copyload.6, %if.then118.6 ], [ 0, %if.end.5 ], !dbg !93
  %condval.sroa.6.0.6 = phi i32 [ %condval.sroa.6.0.copyload.6, %if.then118.6 ], [ 0, %if.end.5 ], !dbg !93
  %condval.sroa.7.0.6 = phi i32 [ %condval.sroa.7.0.copyload.6, %if.then118.6 ], [ 0, %if.end.5 ], !dbg !93
  %59 = shl nuw nsw i32 %4, 8, !dbg !95
  %60 = or disjoint i32 %59, 1536, !dbg !95
  %61 = add nuw nsw i32 %60, %mul28, !dbg !96
  %62 = shl nuw nsw i32 %and31, 5, !dbg !97
  %mul167.6 = and i32 %62, 32, !dbg !97
  %add168.6 = or disjoint i32 %61, %mul167.6, !dbg !98
  %add177.6 = or disjoint i32 %add168.6, %mul45, !dbg !99
  %add186.6 = or disjoint i32 %add177.6, %mul54, !dbg !100
  %add.ptr188.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add186.6, !dbg !101
  store i32 %condval.sroa.0.0.6, ptr addrspace(3) %add.ptr188.6, align 16, !dbg !94, !tbaa !30
  %condval.sroa.5.0.add.ptr188.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr188.6, i32 4, !dbg !94
  store i32 %condval.sroa.5.0.6, ptr addrspace(3) %condval.sroa.5.0.add.ptr188.sroa_idx.6, align 4, !dbg !94, !tbaa !30
  %condval.sroa.6.0.add.ptr188.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr188.6, i32 8, !dbg !94
  store i32 %condval.sroa.6.0.6, ptr addrspace(3) %condval.sroa.6.0.add.ptr188.sroa_idx.6, align 8, !dbg !94, !tbaa !30
  %condval.sroa.7.0.add.ptr188.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr188.6, i32 12, !dbg !94
  store i32 %condval.sroa.7.0.6, ptr addrspace(3) %condval.sroa.7.0.add.ptr188.sroa_idx.6, align 4, !dbg !94, !tbaa !30
  %cmp117.7 = icmp ult i32 %add114, 996, !dbg !89
  br i1 %cmp117.7, label %if.then118.7, label %if.end.7, !dbg !90

if.then118.7:                                     ; preds = %if.end.6
  %add123.7 = or disjoint i64 %mul120, 3584
  %gep829.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep828, i64 %add123.7
  %condval.sroa.7.0.add.ptr131.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep829.7, i64 12
  %condval.sroa.6.0.add.ptr131.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep829.7, i64 8
  %condval.sroa.5.0.add.ptr131.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep829.7, i64 4
  %condval.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %gep829.7, align 16, !dbg !91, !tbaa !30
  %condval.sroa.5.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr131.sroa_idx.7, align 4, !dbg !91, !tbaa !30
  %condval.sroa.6.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr131.sroa_idx.7, align 8, !dbg !91, !tbaa !30
  %condval.sroa.7.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr131.sroa_idx.7, align 4, !dbg !91, !tbaa !30
  br label %if.end.7, !dbg !92

if.end.7:                                         ; preds = %if.then118.7, %if.end.6
  %condval.sroa.0.0.7 = phi i32 [ %condval.sroa.0.0.copyload.7, %if.then118.7 ], [ 0, %if.end.6 ], !dbg !93
  %condval.sroa.5.0.7 = phi i32 [ %condval.sroa.5.0.copyload.7, %if.then118.7 ], [ 0, %if.end.6 ], !dbg !93
  %condval.sroa.6.0.7 = phi i32 [ %condval.sroa.6.0.copyload.7, %if.then118.7 ], [ 0, %if.end.6 ], !dbg !93
  %condval.sroa.7.0.7 = phi i32 [ %condval.sroa.7.0.copyload.7, %if.then118.7 ], [ 0, %if.end.6 ], !dbg !93
  %63 = shl nuw nsw i32 %4, 8, !dbg !95
  %64 = or disjoint i32 %63, 1792, !dbg !95
  %narrow = add nuw nsw i32 %64, %mul28, !dbg !96
  %narrow1347 = shl nuw nsw i32 %and31, 5, !dbg !97
  %65 = and i32 %narrow1347, 32, !dbg !97
  %66 = or disjoint i32 %65, %narrow, !dbg !98
  %67 = or disjoint i32 %66, %mul45, !dbg !99
  %68 = or disjoint i32 %67, %mul54, !dbg !100
  %add186.7 = xor i32 %68, 32, !dbg !100
  %add.ptr188.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add186.7, !dbg !101
  store i32 %condval.sroa.0.0.7, ptr addrspace(3) %add.ptr188.7, align 16, !dbg !94, !tbaa !30
  %condval.sroa.5.0.add.ptr188.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr188.7, i32 4, !dbg !94
  store i32 %condval.sroa.5.0.7, ptr addrspace(3) %condval.sroa.5.0.add.ptr188.sroa_idx.7, align 4, !dbg !94, !tbaa !30
  %condval.sroa.6.0.add.ptr188.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr188.7, i32 8, !dbg !94
  store i32 %condval.sroa.6.0.7, ptr addrspace(3) %condval.sroa.6.0.add.ptr188.sroa_idx.7, align 8, !dbg !94, !tbaa !30
  %condval.sroa.7.0.add.ptr188.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr188.7, i32 12, !dbg !94
  store i32 %condval.sroa.7.0.7, ptr addrspace(3) %condval.sroa.7.0.add.ptr188.sroa_idx.7, align 4, !dbg !94, !tbaa !30
  fence syncscope("warp") release, !dbg !102
  tail call void @llvm.mxc.barrier.warp(), !dbg !105
  fence syncscope("warp") acquire, !dbg !106
  %add231 = or disjoint i32 %mul67, %mul76, !dbg !107
  %add239 = or disjoint i32 %add231, %mul84, !dbg !108
  %add247 = or disjoint i32 %add239, %mul92, !dbg !109
  %add252 = or disjoint i32 %add247, %mul97, !dbg !110
  %add.ptr254 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add252, !dbg !111
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr254, align 8, !dbg !112
  %69 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %33, <4 x float> zeroinitializer), !dbg !113
  %add222.1 = or disjoint i32 %mul67, 1024, !dbg !114
  %add231.1 = or disjoint i32 %add222.1, %mul76, !dbg !107
  %add239.1 = or disjoint i32 %add231.1, %mul84, !dbg !108
  %add247.1 = or disjoint i32 %add239.1, %mul92, !dbg !109
  %add252.1 = or disjoint i32 %add247.1, %mul97, !dbg !110
  %add.ptr254.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add252.1, !dbg !111
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr254.1, align 8, !dbg !112
  %70 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %33, <4 x float> zeroinitializer), !dbg !113
  %add239.1868 = or disjoint i32 %add231, %mul84.1, !dbg !108
  %add247.1869 = or disjoint i32 %add239.1868, %mul92, !dbg !109
  %add252.1870 = or disjoint i32 %add247.1869, %mul97, !dbg !110
  %add.ptr254.1871 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add252.1870, !dbg !111
  %k_local.sroa.0.0.copyload.1872 = load <4 x half>, ptr addrspace(3) %add.ptr254.1871, align 8, !dbg !112
  %71 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1872, <4 x half> %35, <4 x float> %69), !dbg !113
  %add239.1.1 = or disjoint i32 %add231.1, %mul84.1, !dbg !108
  %add247.1.1 = or disjoint i32 %add239.1.1, %mul92, !dbg !109
  %add252.1.1 = or disjoint i32 %add247.1.1, %mul97, !dbg !110
  %add.ptr254.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add252.1.1, !dbg !111
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr254.1.1, align 8, !dbg !112
  %72 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %35, <4 x float> %70), !dbg !113
  %add231.2 = or disjoint i32 %mul67, %mul76.2, !dbg !107
  %add239.2 = or disjoint i32 %add231.2, %mul84.2, !dbg !108
  %add247.2 = or disjoint i32 %add239.2, %mul92, !dbg !109
  %add252.2 = or disjoint i32 %add247.2, %mul97, !dbg !110
  %add.ptr254.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add252.2, !dbg !111
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr254.2, align 8, !dbg !112
  %73 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %37, <4 x float> %71), !dbg !113
  %add231.1.2 = or disjoint i32 %add222.1, %mul76.2, !dbg !107
  %add239.1.2 = or disjoint i32 %add231.1.2, %mul84.2, !dbg !108
  %add247.1.2 = or disjoint i32 %add239.1.2, %mul92, !dbg !109
  %add252.1.2 = or disjoint i32 %add247.1.2, %mul97, !dbg !110
  %add.ptr254.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add252.1.2, !dbg !111
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr254.1.2, align 8, !dbg !112
  %74 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %37, <4 x float> %72), !dbg !113
  %add239.3 = or disjoint i32 %add231.2, %mul84.3, !dbg !108
  %add247.3 = or disjoint i32 %add239.3, %mul92, !dbg !109
  %add252.3 = or disjoint i32 %add247.3, %mul97, !dbg !110
  %add.ptr254.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add252.3, !dbg !111
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr254.3, align 8, !dbg !112
  %75 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %39, <4 x float> %73), !dbg !113
  %add239.1.3 = or disjoint i32 %add231.1.2, %mul84.3, !dbg !108
  %add247.1.3 = or disjoint i32 %add239.1.3, %mul92, !dbg !109
  %add252.1.3 = or disjoint i32 %add247.1.3, %mul97, !dbg !110
  %add.ptr254.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add252.1.3, !dbg !111
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr254.1.3, align 8, !dbg !112
  %76 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %39, <4 x float> %74), !dbg !113
  %add222.4 = or disjoint i32 %mul67, 2048, !dbg !114
  %add231.4 = or disjoint i32 %add222.4, %mul76.4, !dbg !107
  %add239.4 = or disjoint i32 %add231.4, %mul84.4, !dbg !108
  %add247.4 = or disjoint i32 %add239.4, %mul92, !dbg !109
  %add252.4 = or disjoint i32 %add247.4, %mul97, !dbg !110
  %add.ptr254.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add252.4, !dbg !111
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %add.ptr254.4, align 8, !dbg !112
  %77 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %40, <4 x float> %75), !dbg !113
  %add222.1.4 = or disjoint i32 %mul67, 3072, !dbg !114
  %add231.1.4 = or disjoint i32 %add222.1.4, %mul76.4, !dbg !107
  %add239.1.4 = or disjoint i32 %add231.1.4, %mul84.4, !dbg !108
  %add247.1.4 = or disjoint i32 %add239.1.4, %mul92, !dbg !109
  %add252.1.4 = or disjoint i32 %add247.1.4, %mul97, !dbg !110
  %add.ptr254.1.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add252.1.4, !dbg !111
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr254.1.4, align 8, !dbg !112
  %78 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %40, <4 x float> %76), !dbg !113
  %add239.5 = or disjoint i32 %add231.4, %mul84.5, !dbg !108
  %add247.5 = or disjoint i32 %add239.5, %mul92, !dbg !109
  %add252.5 = or disjoint i32 %add247.5, %mul97, !dbg !110
  %add.ptr254.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add252.5, !dbg !111
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %add.ptr254.5, align 8, !dbg !112
  %79 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %42, <4 x float> %77), !dbg !113
  %add239.1.5 = or disjoint i32 %add231.1.4, %mul84.5, !dbg !108
  %add247.1.5 = or disjoint i32 %add239.1.5, %mul92, !dbg !109
  %add252.1.5 = or disjoint i32 %add247.1.5, %mul97, !dbg !110
  %add.ptr254.1.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add252.1.5, !dbg !111
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr254.1.5, align 8, !dbg !112
  %80 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %42, <4 x float> %78), !dbg !113
  %add231.6 = or disjoint i32 %add222.4, %mul76.6, !dbg !107
  %add239.6 = or disjoint i32 %add231.6, %mul84.6, !dbg !108
  %add247.6 = or disjoint i32 %add239.6, %mul92, !dbg !109
  %add252.6 = or disjoint i32 %add247.6, %mul97, !dbg !110
  %add.ptr254.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add252.6, !dbg !111
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %add.ptr254.6, align 8, !dbg !112
  %81 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %44, <4 x float> %79), !dbg !113
  %add231.1.6 = or disjoint i32 %add222.1.4, %mul76.6, !dbg !107
  %add239.1.6 = or disjoint i32 %add231.1.6, %mul84.6, !dbg !108
  %add247.1.6 = or disjoint i32 %add239.1.6, %mul92, !dbg !109
  %add252.1.6 = or disjoint i32 %add247.1.6, %mul97, !dbg !110
  %add.ptr254.1.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add252.1.6, !dbg !111
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr254.1.6, align 8, !dbg !112
  %82 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %44, <4 x float> %80), !dbg !113
  %add239.7 = or disjoint i32 %add231.6, %mul84.7, !dbg !108
  %add247.7 = or disjoint i32 %add239.7, %mul92, !dbg !109
  %add252.7 = or disjoint i32 %add247.7, %mul97, !dbg !110
  %add.ptr254.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add252.7, !dbg !111
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %add.ptr254.7, align 8, !dbg !112
  %83 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %46, <4 x float> %81), !dbg !113
  %add239.1.7 = or disjoint i32 %add231.1.6, %mul84.7, !dbg !108
  %add247.1.7 = or disjoint i32 %add239.1.7, %mul92, !dbg !109
  %add252.1.7 = or disjoint i32 %add247.1.7, %mul97, !dbg !110
  %add.ptr254.1.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add252.1.7, !dbg !111
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr254.1.7, align 8, !dbg !112
  %84 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %46, <4 x float> %82), !dbg !113
  %mul282 = and i32 %and31, 252
  %add283 = add nuw nsw i32 %mul7, %mul282
  %cmp288.not = icmp sgt i32 %add283, %1, !dbg !115
  %scores.sroa.0.0.vec.extract = extractelement <4 x float> %83, i64 0
  %spec.select = select i1 %cmp288.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract, !dbg !116
  %cmp288.not.1.not = icmp slt i32 %add283, %1, !dbg !115
  %scores.sroa.0.4.vec.extract = extractelement <4 x float> %83, i64 1, !dbg !116
  %condval_1.0.1 = select i1 %cmp288.not.1.not, float %scores.sroa.0.4.vec.extract, float 0xFFF0000000000000, !dbg !116
  %add284.2 = or disjoint i32 %add283, 2, !dbg !117
  %cmp288.not.2 = icmp sgt i32 %add284.2, %1, !dbg !115
  %scores.sroa.0.8.vec.extract = extractelement <4 x float> %83, i64 2, !dbg !116
  %condval_1.0.2 = select i1 %cmp288.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract, !dbg !116
  %add284.3 = or disjoint i32 %add283, 3, !dbg !117
  %cmp288.not.3 = icmp sgt i32 %add284.3, %1, !dbg !115
  %scores.sroa.0.12.vec.extract = extractelement <4 x float> %83, i64 3, !dbg !116
  %condval_1.0.3 = select i1 %cmp288.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract, !dbg !116
  %add286.4 = add nuw nsw i32 %add283, 16, !dbg !118
  %cmp288.not.4 = icmp sgt i32 %add286.4, %1, !dbg !115
  %scores.sroa.58.16.vec.extract = extractelement <4 x float> %84, i64 0, !dbg !116
  %condval_1.0.4 = select i1 %cmp288.not.4, float 0xFFF0000000000000, float %scores.sroa.58.16.vec.extract, !dbg !116
  %add286.5 = add nuw nsw i32 %add283, 17, !dbg !118
  %cmp288.not.5 = icmp sgt i32 %add286.5, %1, !dbg !115
  %scores.sroa.58.20.vec.extract = extractelement <4 x float> %84, i64 1, !dbg !116
  %condval_1.0.5 = select i1 %cmp288.not.5, float 0xFFF0000000000000, float %scores.sroa.58.20.vec.extract, !dbg !116
  %add286.6 = add nuw nsw i32 %add283, 18, !dbg !118
  %cmp288.not.6 = icmp sgt i32 %add286.6, %1, !dbg !115
  %scores.sroa.58.24.vec.extract = extractelement <4 x float> %84, i64 2, !dbg !116
  %condval_1.0.6 = select i1 %cmp288.not.6, float 0xFFF0000000000000, float %scores.sroa.58.24.vec.extract, !dbg !116
  %add286.7 = add nuw nsw i32 %add283, 19, !dbg !118
  %cmp288.not.7 = icmp sgt i32 %add286.7, %1, !dbg !115
  %scores.sroa.58.28.vec.extract = extractelement <4 x float> %84, i64 3, !dbg !116
  %condval_1.0.7 = select i1 %cmp288.not.7, float 0xFFF0000000000000, float %scores.sroa.58.28.vec.extract, !dbg !116
  %85 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !119
  %86 = tail call contract noundef float @llvm.maxnum.f32(float %85, float %condval_1.0.4), !dbg !119
  %87 = tail call contract noundef float @llvm.maxnum.f32(float %86, float %condval_1.0.1), !dbg !119
  %88 = tail call contract noundef float @llvm.maxnum.f32(float %87, float %condval_1.0.5), !dbg !119
  %89 = tail call contract noundef float @llvm.maxnum.f32(float %88, float %condval_1.0.2), !dbg !119
  %90 = tail call contract noundef float @llvm.maxnum.f32(float %89, float %condval_1.0.6), !dbg !119
  %91 = tail call contract noundef float @llvm.maxnum.f32(float %90, float %condval_1.0.3), !dbg !119
  %92 = tail call contract noundef float @llvm.maxnum.f32(float %91, float %condval_1.0.7), !dbg !119
  %93 = bitcast float %92 to i32, !dbg !123
  %94 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !132
  %95 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %94) #11, !dbg !137
  %xor.i.i.i = xor i32 %95, 32, !dbg !138
  %96 = and i32 %95, -64, !dbg !139
  %and.i.i.i = add nsw i32 %96, 64, !dbg !139
  %cmp.not.i.i.i = icmp slt i32 %xor.i.i.i, %and.i.i.i, !dbg !140
  %cond.i.i.i = select i1 %cmp.not.i.i.i, i32 %xor.i.i.i, i32 %95, !dbg !141
  %shl.i.i.i = shl i32 %cond.i.i.i, 2, !dbg !142
  %97 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i, i32 %93), !dbg !143
  %98 = bitcast i32 %97 to float, !dbg !144
  %99 = tail call contract noundef float @llvm.maxnum.f32(float %92, float %98), !dbg !145
  %100 = bitcast float %99 to i32, !dbg !153
  %101 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !158
  %102 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %101) #11, !dbg !161
  %xor.i.i.i.i = xor i32 %102, 16, !dbg !162
  %103 = and i32 %102, -64, !dbg !163
  %and.i.i.i.i = add nsw i32 %103, 64, !dbg !163
  %cmp.not.i.i.i.i = icmp slt i32 %xor.i.i.i.i, %and.i.i.i.i, !dbg !164
  %cond.i.i.i.i = select i1 %cmp.not.i.i.i.i, i32 %xor.i.i.i.i, i32 %102, !dbg !165
  %shl.i.i.i.i = shl i32 %cond.i.i.i.i, 2, !dbg !166
  %104 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i, i32 %100), !dbg !167
  %105 = bitcast i32 %104 to float, !dbg !168
  %106 = tail call contract noundef float @llvm.maxnum.f32(float %99, float %105), !dbg !169
  %sub = fsub contract float %spec.select, %106, !dbg !173
  %mul332 = fmul contract float %sub, 0x3FC0527DC0000000, !dbg !174
  %cmp.i.i = fcmp contract olt float %mul332, -1.260000e+02, !dbg !175
  %cond.i.i = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !175
  %add.i.i = fadd contract float %mul332, %cond.i.i, !dbg !175
  %107 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !175
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !175
  %mul.i.i = fmul contract float %cond2.i.i, %107, !dbg !175
  %sub.1 = fsub contract float %condval_1.0.1, %106, !dbg !173
  %mul332.1 = fmul contract float %sub.1, 0x3FC0527DC0000000, !dbg !174
  %cmp.i.i.1 = fcmp contract olt float %mul332.1, -1.260000e+02, !dbg !175
  %cond.i.i.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !175
  %add.i.i.1 = fadd contract float %mul332.1, %cond.i.i.1, !dbg !175
  %108 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !175
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !175
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %108, !dbg !175
  %sub.2 = fsub contract float %condval_1.0.2, %106, !dbg !173
  %mul332.2 = fmul contract float %sub.2, 0x3FC0527DC0000000, !dbg !174
  %cmp.i.i.2 = fcmp contract olt float %mul332.2, -1.260000e+02, !dbg !175
  %cond.i.i.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !175
  %add.i.i.2 = fadd contract float %mul332.2, %cond.i.i.2, !dbg !175
  %109 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !175
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !175
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %109, !dbg !175
  %sub.3 = fsub contract float %condval_1.0.3, %106, !dbg !173
  %mul332.3 = fmul contract float %sub.3, 0x3FC0527DC0000000, !dbg !174
  %cmp.i.i.3 = fcmp contract olt float %mul332.3, -1.260000e+02, !dbg !175
  %cond.i.i.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !175
  %add.i.i.3 = fadd contract float %mul332.3, %cond.i.i.3, !dbg !175
  %110 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !175
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !175
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %110, !dbg !175
  %sub.4 = fsub contract float %condval_1.0.4, %106, !dbg !173
  %mul332.4 = fmul contract float %sub.4, 0x3FC0527DC0000000, !dbg !174
  %cmp.i.i.4 = fcmp contract olt float %mul332.4, -1.260000e+02, !dbg !175
  %cond.i.i.4 = select contract i1 %cmp.i.i.4, float 6.400000e+01, float 0.000000e+00, !dbg !175
  %add.i.i.4 = fadd contract float %mul332.4, %cond.i.i.4, !dbg !175
  %111 = tail call contract float @llvm.exp2.f32(float %add.i.i.4), !dbg !175
  %cond2.i.i.4 = select contract i1 %cmp.i.i.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !175
  %mul.i.i.4 = fmul contract float %cond2.i.i.4, %111, !dbg !175
  %sub.5 = fsub contract float %condval_1.0.5, %106, !dbg !173
  %mul332.5 = fmul contract float %sub.5, 0x3FC0527DC0000000, !dbg !174
  %cmp.i.i.5 = fcmp contract olt float %mul332.5, -1.260000e+02, !dbg !175
  %cond.i.i.5 = select contract i1 %cmp.i.i.5, float 6.400000e+01, float 0.000000e+00, !dbg !175
  %add.i.i.5 = fadd contract float %mul332.5, %cond.i.i.5, !dbg !175
  %112 = tail call contract float @llvm.exp2.f32(float %add.i.i.5), !dbg !175
  %cond2.i.i.5 = select contract i1 %cmp.i.i.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !175
  %mul.i.i.5 = fmul contract float %cond2.i.i.5, %112, !dbg !175
  %sub.6 = fsub contract float %condval_1.0.6, %106, !dbg !173
  %mul332.6 = fmul contract float %sub.6, 0x3FC0527DC0000000, !dbg !174
  %cmp.i.i.6 = fcmp contract olt float %mul332.6, -1.260000e+02, !dbg !175
  %cond.i.i.6 = select contract i1 %cmp.i.i.6, float 6.400000e+01, float 0.000000e+00, !dbg !175
  %add.i.i.6 = fadd contract float %mul332.6, %cond.i.i.6, !dbg !175
  %113 = tail call contract float @llvm.exp2.f32(float %add.i.i.6), !dbg !175
  %cond2.i.i.6 = select contract i1 %cmp.i.i.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !175
  %mul.i.i.6 = fmul contract float %cond2.i.i.6, %113, !dbg !175
  %sub.7 = fsub contract float %condval_1.0.7, %106, !dbg !173
  %mul332.7 = fmul contract float %sub.7, 0x3FC0527DC0000000, !dbg !174
  %cmp.i.i.7 = fcmp contract olt float %mul332.7, -1.260000e+02, !dbg !175
  %cond.i.i.7 = select contract i1 %cmp.i.i.7, float 6.400000e+01, float 0.000000e+00, !dbg !175
  %add.i.i.7 = fadd contract float %mul332.7, %cond.i.i.7, !dbg !175
  %114 = tail call contract float @llvm.exp2.f32(float %add.i.i.7), !dbg !175
  %cond2.i.i.7 = select contract i1 %cmp.i.i.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !175
  %mul.i.i.7 = fmul contract float %cond2.i.i.7, %114, !dbg !175
  %add351 = fadd contract float %mul.i.i, 0.000000e+00, !dbg !178
  %add351.1 = fadd contract float %add351, %mul.i.i.4, !dbg !178
  %add351.2 = fadd contract float %add351.1, %mul.i.i.1, !dbg !178
  %add351.3 = fadd contract float %add351.2, %mul.i.i.5, !dbg !178
  %add351.4 = fadd contract float %add351.3, %mul.i.i.2, !dbg !178
  %add351.5 = fadd contract float %add351.4, %mul.i.i.6, !dbg !178
  %add351.6 = fadd contract float %add351.5, %mul.i.i.3, !dbg !178
  %add351.7 = fadd contract float %add351.6, %mul.i.i.7, !dbg !178
  %115 = bitcast float %add351.7 to i32, !dbg !179
  %116 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !184
  %117 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %116) #11, !dbg !187
  %xor.i.i.i783 = xor i32 %117, 32, !dbg !188
  %118 = and i32 %117, -64, !dbg !189
  %and.i.i.i784 = add nsw i32 %118, 64, !dbg !189
  %cmp.not.i.i.i785 = icmp slt i32 %xor.i.i.i783, %and.i.i.i784, !dbg !190
  %cond.i.i.i786 = select i1 %cmp.not.i.i.i785, i32 %xor.i.i.i783, i32 %117, !dbg !191
  %shl.i.i.i787 = shl i32 %cond.i.i.i786, 2, !dbg !192
  %119 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i787, i32 %115), !dbg !193
  %120 = bitcast i32 %119 to float, !dbg !194
  %add.i.i788 = fadd contract float %add351.7, %120, !dbg !195
  %121 = bitcast float %add.i.i788 to i32, !dbg !198
  %122 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !203
  %123 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %122) #11, !dbg !206
  %xor.i.i.i.i789 = xor i32 %123, 16, !dbg !207
  %124 = and i32 %123, -64, !dbg !208
  %and.i.i.i.i790 = add nsw i32 %124, 64, !dbg !208
  %cmp.not.i.i.i.i791 = icmp slt i32 %xor.i.i.i.i789, %and.i.i.i.i790, !dbg !209
  %cond.i.i.i.i792 = select i1 %cmp.not.i.i.i.i791, i32 %xor.i.i.i.i789, i32 %123, !dbg !210
  %shl.i.i.i.i793 = shl i32 %cond.i.i.i.i792, 2, !dbg !211
  %125 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i793, i32 %121), !dbg !212
  %126 = bitcast i32 %125 to float, !dbg !213
  %add.i.i.i = fadd contract float %add.i.i788, %126, !dbg !214
  %div = fdiv contract float %mul.i.i, %add.i.i.i, !dbg !216
  %div.1 = fdiv contract float %mul.i.i.1, %add.i.i.i, !dbg !216
  %div.2 = fdiv contract float %mul.i.i.2, %add.i.i.i, !dbg !216
  %div.3 = fdiv contract float %mul.i.i.3, %add.i.i.i, !dbg !216
  %div.4 = fdiv contract float %mul.i.i.4, %add.i.i.i, !dbg !216
  %div.5 = fdiv contract float %mul.i.i.5, %add.i.i.i, !dbg !216
  %div.6 = fdiv contract float %mul.i.i.6, %add.i.i.i, !dbg !216
  %div.7 = fdiv contract float %mul.i.i.7, %add.i.i.i, !dbg !216
  %127 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !217
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !217, !noalias !225
  %128 = fptrunc float %div to half, !dbg !217
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %127), !dbg !217, !noalias !225
  %129 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !230
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !230, !noalias !225
  %130 = fptrunc float %div.1 to half, !dbg !230
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %129), !dbg !230, !noalias !225
  %131 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !232
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !232, !noalias !236
  %132 = fptrunc float %div.2 to half, !dbg !232
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %131), !dbg !232, !noalias !236
  %133 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !241
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !241, !noalias !236
  %134 = fptrunc float %div.3 to half, !dbg !241
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %133), !dbg !241, !noalias !236
  %135 = insertelement <4 x half> poison, half %128, i64 0, !dbg !243
  %136 = insertelement <4 x half> %135, half %130, i64 1, !dbg !243
  %137 = insertelement <4 x half> %136, half %132, i64 2, !dbg !243
  %138 = insertelement <4 x half> %137, half %134, i64 3, !dbg !243
  %139 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !217
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !217, !noalias !225
  %140 = fptrunc float %div.4 to half, !dbg !217
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %139), !dbg !217, !noalias !225
  %141 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !230
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !230, !noalias !225
  %142 = fptrunc float %div.5 to half, !dbg !230
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %141), !dbg !230, !noalias !225
  %143 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !232
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !232, !noalias !236
  %144 = fptrunc float %div.6 to half, !dbg !232
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %143), !dbg !232, !noalias !236
  %145 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !241
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !241, !noalias !236
  %146 = fptrunc float %div.7 to half, !dbg !241
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %145), !dbg !241, !noalias !236
  %147 = insertelement <4 x half> poison, half %140, i64 0, !dbg !243
  %148 = insertelement <4 x half> %147, half %142, i64 1, !dbg !243
  %149 = insertelement <4 x half> %148, half %144, i64 2, !dbg !243
  %150 = insertelement <4 x half> %149, half %146, i64 3, !dbg !243
  fence syncscope("warp") release, !dbg !244
  tail call void @llvm.mxc.barrier.warp(), !dbg !247
  fence syncscope("warp") acquire, !dbg !248
  %invariant.gep842 = getelementptr inbounds i8, ptr addrspace(4) %V.coerce, i64 %.idx754, !dbg !249
  %invariant.gep843 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep842, i64 %mul129, !dbg !249
  br i1 %cmp117, label %if.then406, label %if.end444, !dbg !250

if.then406:                                       ; preds = %if.end.7
  %gep844 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep843, i64 %mul120
  %condval_2.sroa.7.0.add.ptr420.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep844, i64 12
  %condval_2.sroa.6.0.add.ptr420.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep844, i64 8
  %condval_2.sroa.5.0.add.ptr420.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep844, i64 4
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep844, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr420.sroa_idx, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr420.sroa_idx, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr420.sroa_idx, align 4, !dbg !251, !tbaa !30
  br label %if.end444, !dbg !252

if.end444:                                        ; preds = %if.end.7, %if.then406
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then406 ], [ 0, %if.end.7 ], !dbg !93
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then406 ], [ 0, %if.end.7 ], !dbg !93
  %condval_2.sroa.6.0 = phi i32 [ %condval_2.sroa.6.0.copyload, %if.then406 ], [ 0, %if.end.7 ], !dbg !93
  %condval_2.sroa.7.0 = phi i32 [ %condval_2.sroa.7.0.copyload, %if.then406 ], [ 0, %if.end.7 ], !dbg !93
  store i32 %condval_2.sroa.0.0, ptr addrspace(3) %add.ptr57, align 16, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.5.0, ptr addrspace(3) %condval.sroa.5.0.add.ptr188.sroa_idx, align 4, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.6.0, ptr addrspace(3) %condval.sroa.6.0.add.ptr188.sroa_idx, align 8, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.7.0, ptr addrspace(3) %condval.sroa.7.0.add.ptr188.sroa_idx, align 4, !dbg !253, !tbaa !30
  br i1 %cmp117.1, label %if.then406.1, label %if.end444.1, !dbg !250

if.then406.1:                                     ; preds = %if.end444
  %add412.1 = or disjoint i64 %mul120, 512
  %gep844.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep843, i64 %add412.1
  %condval_2.sroa.7.0.add.ptr420.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep844.1, i64 12
  %condval_2.sroa.6.0.add.ptr420.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep844.1, i64 8
  %condval_2.sroa.5.0.add.ptr420.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep844.1, i64 4
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep844.1, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr420.sroa_idx.1, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr420.sroa_idx.1, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr420.sroa_idx.1, align 4, !dbg !251, !tbaa !30
  br label %if.end444.1, !dbg !252

if.end444.1:                                      ; preds = %if.then406.1, %if.end444
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then406.1 ], [ 0, %if.end444 ], !dbg !93
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then406.1 ], [ 0, %if.end444 ], !dbg !93
  %condval_2.sroa.6.0.1 = phi i32 [ %condval_2.sroa.6.0.copyload.1, %if.then406.1 ], [ 0, %if.end444 ], !dbg !93
  %condval_2.sroa.7.0.1 = phi i32 [ %condval_2.sroa.7.0.copyload.1, %if.then406.1 ], [ 0, %if.end444 ], !dbg !93
  store i32 %condval_2.sroa.0.0.1, ptr addrspace(3) %add.ptr57.1, align 16, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.5.0.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr188.sroa_idx.1, align 4, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.6.0.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr188.sroa_idx.1, align 8, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.7.0.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr188.sroa_idx.1, align 4, !dbg !253, !tbaa !30
  br i1 %cmp117.2, label %if.then406.2, label %if.end444.2, !dbg !250

if.then406.2:                                     ; preds = %if.end444.1
  %add412.2 = or disjoint i64 %mul120, 1024
  %gep844.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep843, i64 %add412.2
  %condval_2.sroa.7.0.add.ptr420.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep844.2, i64 12
  %condval_2.sroa.6.0.add.ptr420.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep844.2, i64 8
  %condval_2.sroa.5.0.add.ptr420.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep844.2, i64 4
  %condval_2.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %gep844.2, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr420.sroa_idx.2, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr420.sroa_idx.2, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr420.sroa_idx.2, align 4, !dbg !251, !tbaa !30
  br label %if.end444.2, !dbg !252

if.end444.2:                                      ; preds = %if.then406.2, %if.end444.1
  %condval_2.sroa.0.0.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2, %if.then406.2 ], [ 0, %if.end444.1 ], !dbg !93
  %condval_2.sroa.5.0.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2, %if.then406.2 ], [ 0, %if.end444.1 ], !dbg !93
  %condval_2.sroa.6.0.2 = phi i32 [ %condval_2.sroa.6.0.copyload.2, %if.then406.2 ], [ 0, %if.end444.1 ], !dbg !93
  %condval_2.sroa.7.0.2 = phi i32 [ %condval_2.sroa.7.0.copyload.2, %if.then406.2 ], [ 0, %if.end444.1 ], !dbg !93
  store i32 %condval_2.sroa.0.0.2, ptr addrspace(3) %add.ptr57.2, align 16, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.5.0.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr188.sroa_idx.2, align 4, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.6.0.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr188.sroa_idx.2, align 8, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.7.0.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr188.sroa_idx.2, align 4, !dbg !253, !tbaa !30
  br i1 %cmp117.3, label %if.then406.3, label %if.end444.3, !dbg !250

if.then406.3:                                     ; preds = %if.end444.2
  %add412.3 = or disjoint i64 %mul120, 1536
  %gep844.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep843, i64 %add412.3
  %condval_2.sroa.7.0.add.ptr420.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep844.3, i64 12
  %condval_2.sroa.6.0.add.ptr420.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep844.3, i64 8
  %condval_2.sroa.5.0.add.ptr420.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep844.3, i64 4
  %condval_2.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %gep844.3, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr420.sroa_idx.3, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr420.sroa_idx.3, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr420.sroa_idx.3, align 4, !dbg !251, !tbaa !30
  br label %if.end444.3, !dbg !252

if.end444.3:                                      ; preds = %if.then406.3, %if.end444.2
  %condval_2.sroa.0.0.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3, %if.then406.3 ], [ 0, %if.end444.2 ], !dbg !93
  %condval_2.sroa.5.0.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3, %if.then406.3 ], [ 0, %if.end444.2 ], !dbg !93
  %condval_2.sroa.6.0.3 = phi i32 [ %condval_2.sroa.6.0.copyload.3, %if.then406.3 ], [ 0, %if.end444.2 ], !dbg !93
  %condval_2.sroa.7.0.3 = phi i32 [ %condval_2.sroa.7.0.copyload.3, %if.then406.3 ], [ 0, %if.end444.2 ], !dbg !93
  store i32 %condval_2.sroa.0.0.3, ptr addrspace(3) %add.ptr57.3, align 16, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.5.0.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr188.sroa_idx.3, align 4, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.6.0.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr188.sroa_idx.3, align 8, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.7.0.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr188.sroa_idx.3, align 4, !dbg !253, !tbaa !30
  br i1 %cmp117.4, label %if.then406.4, label %if.end444.4, !dbg !250

if.then406.4:                                     ; preds = %if.end444.3
  %add412.4 = or disjoint i64 %mul120, 2048
  %gep844.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep843, i64 %add412.4
  %condval_2.sroa.7.0.add.ptr420.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep844.4, i64 12
  %condval_2.sroa.6.0.add.ptr420.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep844.4, i64 8
  %condval_2.sroa.5.0.add.ptr420.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep844.4, i64 4
  %condval_2.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %gep844.4, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.copyload.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr420.sroa_idx.4, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.copyload.4 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr420.sroa_idx.4, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.copyload.4 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr420.sroa_idx.4, align 4, !dbg !251, !tbaa !30
  br label %if.end444.4, !dbg !252

if.end444.4:                                      ; preds = %if.then406.4, %if.end444.3
  %condval_2.sroa.0.0.4 = phi i32 [ %condval_2.sroa.0.0.copyload.4, %if.then406.4 ], [ 0, %if.end444.3 ], !dbg !93
  %condval_2.sroa.5.0.4 = phi i32 [ %condval_2.sroa.5.0.copyload.4, %if.then406.4 ], [ 0, %if.end444.3 ], !dbg !93
  %condval_2.sroa.6.0.4 = phi i32 [ %condval_2.sroa.6.0.copyload.4, %if.then406.4 ], [ 0, %if.end444.3 ], !dbg !93
  %condval_2.sroa.7.0.4 = phi i32 [ %condval_2.sroa.7.0.copyload.4, %if.then406.4 ], [ 0, %if.end444.3 ], !dbg !93
  store i32 %condval_2.sroa.0.0.4, ptr addrspace(3) %add.ptr188.4, align 16, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.5.0.4, ptr addrspace(3) %condval.sroa.5.0.add.ptr188.sroa_idx.4, align 4, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.6.0.4, ptr addrspace(3) %condval.sroa.6.0.add.ptr188.sroa_idx.4, align 8, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.7.0.4, ptr addrspace(3) %condval.sroa.7.0.add.ptr188.sroa_idx.4, align 4, !dbg !253, !tbaa !30
  br i1 %cmp117.5, label %if.then406.5, label %if.end444.5, !dbg !250

if.then406.5:                                     ; preds = %if.end444.4
  %add412.5 = or disjoint i64 %mul120, 2560
  %gep844.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep843, i64 %add412.5
  %condval_2.sroa.7.0.add.ptr420.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep844.5, i64 12
  %condval_2.sroa.6.0.add.ptr420.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep844.5, i64 8
  %condval_2.sroa.5.0.add.ptr420.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep844.5, i64 4
  %condval_2.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %gep844.5, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.copyload.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr420.sroa_idx.5, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.copyload.5 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr420.sroa_idx.5, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.copyload.5 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr420.sroa_idx.5, align 4, !dbg !251, !tbaa !30
  br label %if.end444.5, !dbg !252

if.end444.5:                                      ; preds = %if.then406.5, %if.end444.4
  %condval_2.sroa.0.0.5 = phi i32 [ %condval_2.sroa.0.0.copyload.5, %if.then406.5 ], [ 0, %if.end444.4 ], !dbg !93
  %condval_2.sroa.5.0.5 = phi i32 [ %condval_2.sroa.5.0.copyload.5, %if.then406.5 ], [ 0, %if.end444.4 ], !dbg !93
  %condval_2.sroa.6.0.5 = phi i32 [ %condval_2.sroa.6.0.copyload.5, %if.then406.5 ], [ 0, %if.end444.4 ], !dbg !93
  %condval_2.sroa.7.0.5 = phi i32 [ %condval_2.sroa.7.0.copyload.5, %if.then406.5 ], [ 0, %if.end444.4 ], !dbg !93
  store i32 %condval_2.sroa.0.0.5, ptr addrspace(3) %add.ptr188.5, align 16, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.5.0.5, ptr addrspace(3) %condval.sroa.5.0.add.ptr188.sroa_idx.5, align 4, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.6.0.5, ptr addrspace(3) %condval.sroa.6.0.add.ptr188.sroa_idx.5, align 8, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.7.0.5, ptr addrspace(3) %condval.sroa.7.0.add.ptr188.sroa_idx.5, align 4, !dbg !253, !tbaa !30
  br i1 %cmp117.6, label %if.then406.6, label %if.end444.6, !dbg !250

if.then406.6:                                     ; preds = %if.end444.5
  %add412.6 = or disjoint i64 %mul120, 3072
  %gep844.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep843, i64 %add412.6
  %condval_2.sroa.7.0.add.ptr420.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep844.6, i64 12
  %condval_2.sroa.6.0.add.ptr420.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep844.6, i64 8
  %condval_2.sroa.5.0.add.ptr420.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep844.6, i64 4
  %condval_2.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %gep844.6, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.copyload.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr420.sroa_idx.6, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.copyload.6 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr420.sroa_idx.6, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.copyload.6 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr420.sroa_idx.6, align 4, !dbg !251, !tbaa !30
  br label %if.end444.6, !dbg !252

if.end444.6:                                      ; preds = %if.then406.6, %if.end444.5
  %condval_2.sroa.0.0.6 = phi i32 [ %condval_2.sroa.0.0.copyload.6, %if.then406.6 ], [ 0, %if.end444.5 ], !dbg !93
  %condval_2.sroa.5.0.6 = phi i32 [ %condval_2.sroa.5.0.copyload.6, %if.then406.6 ], [ 0, %if.end444.5 ], !dbg !93
  %condval_2.sroa.6.0.6 = phi i32 [ %condval_2.sroa.6.0.copyload.6, %if.then406.6 ], [ 0, %if.end444.5 ], !dbg !93
  %condval_2.sroa.7.0.6 = phi i32 [ %condval_2.sroa.7.0.copyload.6, %if.then406.6 ], [ 0, %if.end444.5 ], !dbg !93
  store i32 %condval_2.sroa.0.0.6, ptr addrspace(3) %add.ptr188.6, align 16, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.5.0.6, ptr addrspace(3) %condval.sroa.5.0.add.ptr188.sroa_idx.6, align 4, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.6.0.6, ptr addrspace(3) %condval.sroa.6.0.add.ptr188.sroa_idx.6, align 8, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.7.0.6, ptr addrspace(3) %condval.sroa.7.0.add.ptr188.sroa_idx.6, align 4, !dbg !253, !tbaa !30
  br i1 %cmp117.7, label %if.then406.7, label %if.end444.7, !dbg !250

if.then406.7:                                     ; preds = %if.end444.6
  %add412.7 = or disjoint i64 %mul120, 3584
  %gep844.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep843, i64 %add412.7
  %condval_2.sroa.7.0.add.ptr420.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep844.7, i64 12
  %condval_2.sroa.6.0.add.ptr420.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep844.7, i64 8
  %condval_2.sroa.5.0.add.ptr420.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep844.7, i64 4
  %condval_2.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %gep844.7, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.copyload.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr420.sroa_idx.7, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.copyload.7 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr420.sroa_idx.7, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.copyload.7 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr420.sroa_idx.7, align 4, !dbg !251, !tbaa !30
  br label %if.end444.7, !dbg !252

if.end444.7:                                      ; preds = %if.then406.7, %if.end444.6
  %condval_2.sroa.0.0.7 = phi i32 [ %condval_2.sroa.0.0.copyload.7, %if.then406.7 ], [ 0, %if.end444.6 ], !dbg !93
  %condval_2.sroa.5.0.7 = phi i32 [ %condval_2.sroa.5.0.copyload.7, %if.then406.7 ], [ 0, %if.end444.6 ], !dbg !93
  %condval_2.sroa.6.0.7 = phi i32 [ %condval_2.sroa.6.0.copyload.7, %if.then406.7 ], [ 0, %if.end444.6 ], !dbg !93
  %condval_2.sroa.7.0.7 = phi i32 [ %condval_2.sroa.7.0.copyload.7, %if.then406.7 ], [ 0, %if.end444.6 ], !dbg !93
  store i32 %condval_2.sroa.0.0.7, ptr addrspace(3) %add.ptr188.7, align 16, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.5.0.7, ptr addrspace(3) %condval.sroa.5.0.add.ptr188.sroa_idx.7, align 4, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.6.0.7, ptr addrspace(3) %condval.sroa.6.0.add.ptr188.sroa_idx.7, align 8, !dbg !253, !tbaa !30
  store i32 %condval_2.sroa.7.0.7, ptr addrspace(3) %condval.sroa.7.0.add.ptr188.sroa_idx.7, align 4, !dbg !253, !tbaa !30
  fence syncscope("warp") release, !dbg !254
  tail call void @llvm.mxc.barrier.warp(), !dbg !257
  fence syncscope("warp") acquire, !dbg !258
  br label %if.end486, !dbg !259

if.end486:                                        ; preds = %if.end444.7, %entry
  %scores_half.sroa.4.0 = phi <4 x half> [ undef, %entry ], [ %150, %if.end444.7 ]
  %scores_half.sroa.0.0 = phi <4 x half> [ undef, %entry ], [ %138, %if.end444.7 ]
  %denominator.sroa.0.1 = phi float [ 0.000000e+00, %entry ], [ %add.i.i.i, %if.end444.7 ], !dbg !93
  br i1 %or.cond, label %for.body591.preheader, label %if.then504, !dbg !260

for.body591.preheader:                            ; preds = %if.end486
  %div595 = fdiv contract float 0.000000e+00, %denominator.sroa.0.1, !dbg !261
  %output_acc.sroa.0.0.vec.insert1013 = insertelement <4 x float> poison, float %div595, i64 0, !dbg !262
  %output_acc.sroa.0.12.vec.insert1028 = shufflevector <4 x float> %output_acc.sroa.0.0.vec.insert1013, <4 x float> poison, <4 x i32> zeroinitializer, !dbg !262
  %.pre = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  br label %if.end601

if.then504:                                       ; preds = %if.end486
  %151 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  %152 = shl nuw nsw i32 %151, 4
  %mul523 = and i32 %152, 16128
  %and528 = lshr i32 %151, 4
  %and551 = and i32 %151, 7
  %invariant.gep846 = getelementptr %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %and551
  %and533 = shl nuw nsw i32 %and528, 5
  %mul534 = and i32 %and533, 32
  %add526 = or disjoint i32 %mul523, %mul534
  %mul548 = and i32 %151, 8, !dbg !263
  %add541 = or disjoint i32 %add526, %mul548, !dbg !264
  %gep = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541, !dbg !265
  %153 = load half, ptr addrspace(3) %gep, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.0.0.vec.insert = insertelement <4 x half> poison, half %153, i64 0, !dbg !266
  %154 = and i32 %151, 8, !dbg !263
  %mul548.1 = xor i32 %154, 8, !dbg !263
  %add535.1 = or disjoint i32 %add526, %mul548.1, !dbg !264
  %add541.1 = or disjoint i32 %add535.1, 64, !dbg !264
  %gep.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.1, !dbg !265
  %155 = load half, ptr addrspace(3) %gep.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.0.2.vec.insert = insertelement <4 x half> %B_local.sroa.0.0.vec.insert, half %155, i64 1, !dbg !266
  %mul548.2 = and i32 %151, 8, !dbg !263
  %add535.2 = or disjoint i32 %add526, %mul548.2, !dbg !264
  %add541.2 = or disjoint i32 %add535.2, 128, !dbg !264
  %add549.2 = or disjoint i32 %add535.2, 144, !dbg !268
  %gep.2 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.2, !dbg !265
  %156 = load half, ptr addrspace(3) %gep.2, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.0.4.vec.insert = insertelement <4 x half> %B_local.sroa.0.2.vec.insert, half %156, i64 2, !dbg !266
  %157 = and i32 %151, 8, !dbg !263
  %mul548.3 = xor i32 %157, 8, !dbg !263
  %add535.3 = or disjoint i32 %add526, %mul548.3, !dbg !264
  %add541.3 = or disjoint i32 %add535.3, 192, !dbg !264
  %add549.3 = or disjoint i32 %add535.3, 208, !dbg !268
  %gep.3 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.3, !dbg !265
  %158 = load half, ptr addrspace(3) %gep.3, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.0.6.vec.insert = insertelement <4 x half> %B_local.sroa.0.4.vec.insert, half %158, i64 3, !dbg !266
  %add549.1883 = or disjoint i32 %add541, 16, !dbg !268
  %gep.1884 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.1883, !dbg !265
  %159 = load half, ptr addrspace(3) %gep.1884, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.12.8.vec.insert = insertelement <4 x half> poison, half %159, i64 0, !dbg !266
  %add549.1.1 = or disjoint i32 %add535.1, 80, !dbg !268
  %gep.1.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.1.1, !dbg !265
  %160 = load half, ptr addrspace(3) %gep.1.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.12.10.vec.insert = insertelement <4 x half> %B_local.sroa.12.8.vec.insert, half %160, i64 1, !dbg !266
  %gep.2.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.2, !dbg !265
  %161 = load half, ptr addrspace(3) %gep.2.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.12.12.vec.insert = insertelement <4 x half> %B_local.sroa.12.10.vec.insert, half %161, i64 2, !dbg !266
  %gep.3.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.3, !dbg !265
  %162 = load half, ptr addrspace(3) %gep.3.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.12.14.vec.insert = insertelement <4 x half> %B_local.sroa.12.12.vec.insert, half %162, i64 3, !dbg !266
  %add532.2 = shl nuw nsw i32 %and528, 5
  %163 = and i32 %add532.2, 32
  %mul534.2 = xor i32 %163, 32
  %add526.2 = or disjoint i32 %mul523, %mul534.2
  %add541.2889 = or disjoint i32 %add526.2, %mul548, !dbg !264
  %gep.2891 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.2889, !dbg !265
  %164 = load half, ptr addrspace(3) %gep.2891, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.22.16.vec.insert = insertelement <4 x half> poison, half %164, i64 0, !dbg !266
  %add535.1.2 = or disjoint i32 %add526.2, %mul548.1, !dbg !264
  %add541.1.2 = or disjoint i32 %add535.1.2, 64, !dbg !264
  %gep.1.2 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.1.2, !dbg !265
  %165 = load half, ptr addrspace(3) %gep.1.2, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.22.18.vec.insert = insertelement <4 x half> %B_local.sroa.22.16.vec.insert, half %165, i64 1, !dbg !266
  %add535.2.2 = or disjoint i32 %add526.2, %mul548.2, !dbg !264
  %add541.2.2 = or disjoint i32 %add535.2.2, 128, !dbg !264
  %add549.2.2 = or disjoint i32 %add535.2.2, 144, !dbg !268
  %gep.2.2 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.2.2, !dbg !265
  %166 = load half, ptr addrspace(3) %gep.2.2, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.22.20.vec.insert = insertelement <4 x half> %B_local.sroa.22.18.vec.insert, half %166, i64 2, !dbg !266
  %add535.3.2 = or disjoint i32 %add526.2, %mul548.3, !dbg !264
  %add541.3.2 = or disjoint i32 %add535.3.2, 192, !dbg !264
  %add549.3.2 = or disjoint i32 %add535.3.2, 208, !dbg !268
  %gep.3.2 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.3.2, !dbg !265
  %167 = load half, ptr addrspace(3) %gep.3.2, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.22.22.vec.insert = insertelement <4 x half> %B_local.sroa.22.20.vec.insert, half %167, i64 3, !dbg !266
  %add549.3897 = or disjoint i32 %add541.2889, 16, !dbg !268
  %gep.3898 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.3897, !dbg !265
  %168 = load half, ptr addrspace(3) %gep.3898, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.32.24.vec.insert = insertelement <4 x half> poison, half %168, i64 0, !dbg !266
  %add549.1.3 = or disjoint i32 %add535.1.2, 80, !dbg !268
  %gep.1.3 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.1.3, !dbg !265
  %169 = load half, ptr addrspace(3) %gep.1.3, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.32.26.vec.insert = insertelement <4 x half> %B_local.sroa.32.24.vec.insert, half %169, i64 1, !dbg !266
  %gep.2.3 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.2.2, !dbg !265
  %170 = load half, ptr addrspace(3) %gep.2.3, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.32.28.vec.insert = insertelement <4 x half> %B_local.sroa.32.26.vec.insert, half %170, i64 2, !dbg !266
  %gep.3.3 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.3.2, !dbg !265
  %171 = load half, ptr addrspace(3) %gep.3.3, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.32.30.vec.insert = insertelement <4 x half> %B_local.sroa.32.28.vec.insert, half %171, i64 3, !dbg !266
  %add524.4 = add nuw nsw i32 %mul523, 2048
  %add532.4 = shl nuw nsw i32 %and528, 5
  %mul534.4 = and i32 %add532.4, 32
  %add526.4 = or disjoint i32 %add524.4, %mul534.4
  %add541.4 = or disjoint i32 %add526.4, %mul548, !dbg !264
  %gep.4 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.4, !dbg !265
  %172 = load half, ptr addrspace(3) %gep.4, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.42.32.vec.insert = insertelement <4 x half> poison, half %172, i64 0, !dbg !266
  %add535.1.4 = or disjoint i32 %add526.4, %mul548.1, !dbg !264
  %add541.1.4 = or disjoint i32 %add535.1.4, 64, !dbg !264
  %gep.1.4 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.1.4, !dbg !265
  %173 = load half, ptr addrspace(3) %gep.1.4, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.42.34.vec.insert = insertelement <4 x half> %B_local.sroa.42.32.vec.insert, half %173, i64 1, !dbg !266
  %add535.2.4 = or disjoint i32 %add526.4, %mul548.2, !dbg !264
  %add541.2.4 = or disjoint i32 %add535.2.4, 128, !dbg !264
  %add549.2.4 = or disjoint i32 %add535.2.4, 144, !dbg !268
  %gep.2.4 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.2.4, !dbg !265
  %174 = load half, ptr addrspace(3) %gep.2.4, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.42.36.vec.insert = insertelement <4 x half> %B_local.sroa.42.34.vec.insert, half %174, i64 2, !dbg !266
  %add535.3.4 = or disjoint i32 %add526.4, %mul548.3, !dbg !264
  %add541.3.4 = or disjoint i32 %add535.3.4, 192, !dbg !264
  %add549.3.4 = or disjoint i32 %add535.3.4, 208, !dbg !268
  %gep.3.4 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.3.4, !dbg !265
  %175 = load half, ptr addrspace(3) %gep.3.4, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.42.38.vec.insert = insertelement <4 x half> %B_local.sroa.42.36.vec.insert, half %175, i64 3, !dbg !266
  %add549.5 = or disjoint i32 %add541.4, 16, !dbg !268
  %gep.5 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.5, !dbg !265
  %176 = load half, ptr addrspace(3) %gep.5, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.52.40.vec.insert = insertelement <4 x half> poison, half %176, i64 0, !dbg !266
  %add549.1.5 = or disjoint i32 %add535.1.4, 80, !dbg !268
  %gep.1.5 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.1.5, !dbg !265
  %177 = load half, ptr addrspace(3) %gep.1.5, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.52.42.vec.insert = insertelement <4 x half> %B_local.sroa.52.40.vec.insert, half %177, i64 1, !dbg !266
  %gep.2.5 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.2.4, !dbg !265
  %178 = load half, ptr addrspace(3) %gep.2.5, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.52.44.vec.insert = insertelement <4 x half> %B_local.sroa.52.42.vec.insert, half %178, i64 2, !dbg !266
  %gep.3.5 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.3.4, !dbg !265
  %179 = load half, ptr addrspace(3) %gep.3.5, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.52.46.vec.insert = insertelement <4 x half> %B_local.sroa.52.44.vec.insert, half %179, i64 3, !dbg !266
  %add532.6 = shl nuw nsw i32 %and528, 5
  %180 = and i32 %add532.6, 32
  %mul534.6 = xor i32 %180, 32
  %add526.6 = or disjoint i32 %add524.4, %mul534.6
  %add541.6 = or disjoint i32 %add526.6, %mul548, !dbg !264
  %gep.6 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.6, !dbg !265
  %181 = load half, ptr addrspace(3) %gep.6, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.62.48.vec.insert = insertelement <4 x half> poison, half %181, i64 0, !dbg !266
  %add535.1.6 = or disjoint i32 %add526.6, %mul548.1, !dbg !264
  %add541.1.6 = or disjoint i32 %add535.1.6, 64, !dbg !264
  %gep.1.6 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.1.6, !dbg !265
  %182 = load half, ptr addrspace(3) %gep.1.6, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.62.50.vec.insert = insertelement <4 x half> %B_local.sroa.62.48.vec.insert, half %182, i64 1, !dbg !266
  %add535.2.6 = or disjoint i32 %add526.6, %mul548.2, !dbg !264
  %add541.2.6 = or disjoint i32 %add535.2.6, 128, !dbg !264
  %add549.2.6 = or disjoint i32 %add535.2.6, 144, !dbg !268
  %gep.2.6 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.2.6, !dbg !265
  %183 = load half, ptr addrspace(3) %gep.2.6, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.62.52.vec.insert = insertelement <4 x half> %B_local.sroa.62.50.vec.insert, half %183, i64 2, !dbg !266
  %add535.3.6 = or disjoint i32 %add526.6, %mul548.3, !dbg !264
  %add541.3.6 = or disjoint i32 %add535.3.6, 192, !dbg !264
  %add549.3.6 = or disjoint i32 %add535.3.6, 208, !dbg !268
  %gep.3.6 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.3.6, !dbg !265
  %184 = load half, ptr addrspace(3) %gep.3.6, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.62.54.vec.insert = insertelement <4 x half> %B_local.sroa.62.52.vec.insert, half %184, i64 3, !dbg !266
  %add549.7 = or disjoint i32 %add541.6, 16, !dbg !268
  %gep.7 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.7, !dbg !265
  %185 = load half, ptr addrspace(3) %gep.7, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.72.56.vec.insert = insertelement <4 x half> poison, half %185, i64 0, !dbg !266
  %add549.1.7 = or disjoint i32 %add535.1.6, 80, !dbg !268
  %gep.1.7 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.1.7, !dbg !265
  %186 = load half, ptr addrspace(3) %gep.1.7, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.72.58.vec.insert = insertelement <4 x half> %B_local.sroa.72.56.vec.insert, half %186, i64 1, !dbg !266
  %gep.2.7 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.2.6, !dbg !265
  %187 = load half, ptr addrspace(3) %gep.2.7, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.72.60.vec.insert = insertelement <4 x half> %B_local.sroa.72.58.vec.insert, half %187, i64 2, !dbg !266
  %gep.3.7 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.3.6, !dbg !265
  %188 = load half, ptr addrspace(3) %gep.3.7, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.72.62.vec.insert = insertelement <4 x half> %B_local.sroa.72.60.vec.insert, half %188, i64 3, !dbg !266
  %189 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.0.6.vec.insert, <4 x half> %scores_half.sroa.0.0, <4 x float> zeroinitializer), !dbg !269
  %190 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.12.14.vec.insert, <4 x half> %scores_half.sroa.0.0, <4 x float> zeroinitializer), !dbg !269
  %191 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.22.22.vec.insert, <4 x half> %scores_half.sroa.0.0, <4 x float> zeroinitializer), !dbg !269
  %192 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.32.30.vec.insert, <4 x half> %scores_half.sroa.0.0, <4 x float> zeroinitializer), !dbg !269
  %193 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.42.38.vec.insert, <4 x half> %scores_half.sroa.0.0, <4 x float> zeroinitializer), !dbg !269
  %194 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.52.46.vec.insert, <4 x half> %scores_half.sroa.0.0, <4 x float> zeroinitializer), !dbg !269
  %195 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.62.54.vec.insert, <4 x half> %scores_half.sroa.0.0, <4 x float> zeroinitializer), !dbg !269
  %196 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.72.62.vec.insert, <4 x half> %scores_half.sroa.0.0, <4 x float> zeroinitializer), !dbg !269
  %add520.1 = add nuw nsw i32 %mul523, 1024
  %add526.1902 = or disjoint i32 %add520.1, %mul534
  %add541.1904 = or disjoint i32 %add526.1902, %mul548, !dbg !264
  %gep.1905 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.1904, !dbg !265
  %197 = load half, ptr addrspace(3) %gep.1905, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.0.0.vec.insert932 = insertelement <4 x half> poison, half %197, i64 0, !dbg !266
  %add535.1.1908 = or disjoint i32 %add526.1902, %mul548.1, !dbg !264
  %add541.1.1909 = or disjoint i32 %add535.1.1908, 64, !dbg !264
  %gep.1.1910 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.1.1909, !dbg !265
  %198 = load half, ptr addrspace(3) %gep.1.1910, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.0.2.vec.insert934 = insertelement <4 x half> %B_local.sroa.0.0.vec.insert932, half %198, i64 1, !dbg !266
  %add535.2.1914 = or disjoint i32 %add526.1902, %mul548.2, !dbg !264
  %add541.2.1915 = or disjoint i32 %add535.2.1914, 128, !dbg !264
  %add549.2.1 = or disjoint i32 %add535.2.1914, 144, !dbg !268
  %gep.2.1916 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.2.1, !dbg !265
  %199 = load half, ptr addrspace(3) %gep.2.1916, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.0.4.vec.insert936 = insertelement <4 x half> %B_local.sroa.0.2.vec.insert934, half %199, i64 2, !dbg !266
  %add535.3.1920 = or disjoint i32 %add526.1902, %mul548.3, !dbg !264
  %add541.3.1921 = or disjoint i32 %add535.3.1920, 192, !dbg !264
  %add549.3.1 = or disjoint i32 %add535.3.1920, 208, !dbg !268
  %gep.3.1922 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.3.1, !dbg !265
  %200 = load half, ptr addrspace(3) %gep.3.1922, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.0.6.vec.insert938 = insertelement <4 x half> %B_local.sroa.0.4.vec.insert936, half %200, i64 3, !dbg !266
  %add549.1883.1 = or disjoint i32 %add541.1904, 16, !dbg !268
  %gep.1884.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.1883.1, !dbg !265
  %201 = load half, ptr addrspace(3) %gep.1884.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.12.8.vec.insert942 = insertelement <4 x half> poison, half %201, i64 0, !dbg !266
  %add549.1.1.1 = or disjoint i32 %add535.1.1908, 80, !dbg !268
  %gep.1.1.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.1.1.1, !dbg !265
  %202 = load half, ptr addrspace(3) %gep.1.1.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.12.10.vec.insert944 = insertelement <4 x half> %B_local.sroa.12.8.vec.insert942, half %202, i64 1, !dbg !266
  %gep.2.1.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.2.1915, !dbg !265
  %203 = load half, ptr addrspace(3) %gep.2.1.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.12.12.vec.insert946 = insertelement <4 x half> %B_local.sroa.12.10.vec.insert944, half %203, i64 2, !dbg !266
  %gep.3.1.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.3.1921, !dbg !265
  %204 = load half, ptr addrspace(3) %gep.3.1.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.12.14.vec.insert948 = insertelement <4 x half> %B_local.sroa.12.12.vec.insert946, half %204, i64 3, !dbg !266
  %add526.2.1 = or disjoint i32 %add520.1, %mul534.2
  %add541.2889.1 = or disjoint i32 %add526.2.1, %mul548, !dbg !264
  %gep.2891.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.2889.1, !dbg !265
  %205 = load half, ptr addrspace(3) %gep.2891.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.22.16.vec.insert952 = insertelement <4 x half> poison, half %205, i64 0, !dbg !266
  %add535.1.2.1 = or disjoint i32 %add526.2.1, %mul548.1, !dbg !264
  %add541.1.2.1 = or disjoint i32 %add535.1.2.1, 64, !dbg !264
  %gep.1.2.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.1.2.1, !dbg !265
  %206 = load half, ptr addrspace(3) %gep.1.2.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.22.18.vec.insert954 = insertelement <4 x half> %B_local.sroa.22.16.vec.insert952, half %206, i64 1, !dbg !266
  %add535.2.2.1 = or disjoint i32 %add526.2.1, %mul548.2, !dbg !264
  %add541.2.2.1 = or disjoint i32 %add535.2.2.1, 128, !dbg !264
  %add549.2.2.1 = or disjoint i32 %add535.2.2.1, 144, !dbg !268
  %gep.2.2.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.2.2.1, !dbg !265
  %207 = load half, ptr addrspace(3) %gep.2.2.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.22.20.vec.insert956 = insertelement <4 x half> %B_local.sroa.22.18.vec.insert954, half %207, i64 2, !dbg !266
  %add535.3.2.1 = or disjoint i32 %add526.2.1, %mul548.3, !dbg !264
  %add541.3.2.1 = or disjoint i32 %add535.3.2.1, 192, !dbg !264
  %add549.3.2.1 = or disjoint i32 %add535.3.2.1, 208, !dbg !268
  %gep.3.2.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.3.2.1, !dbg !265
  %208 = load half, ptr addrspace(3) %gep.3.2.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.22.22.vec.insert958 = insertelement <4 x half> %B_local.sroa.22.20.vec.insert956, half %208, i64 3, !dbg !266
  %add549.3897.1 = or disjoint i32 %add541.2889.1, 16, !dbg !268
  %gep.3898.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.3897.1, !dbg !265
  %209 = load half, ptr addrspace(3) %gep.3898.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.32.24.vec.insert962 = insertelement <4 x half> poison, half %209, i64 0, !dbg !266
  %add549.1.3.1 = or disjoint i32 %add535.1.2.1, 80, !dbg !268
  %gep.1.3.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.1.3.1, !dbg !265
  %210 = load half, ptr addrspace(3) %gep.1.3.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.32.26.vec.insert964 = insertelement <4 x half> %B_local.sroa.32.24.vec.insert962, half %210, i64 1, !dbg !266
  %gep.2.3.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.2.2.1, !dbg !265
  %211 = load half, ptr addrspace(3) %gep.2.3.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.32.28.vec.insert966 = insertelement <4 x half> %B_local.sroa.32.26.vec.insert964, half %211, i64 2, !dbg !266
  %gep.3.3.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.3.2.1, !dbg !265
  %212 = load half, ptr addrspace(3) %gep.3.3.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.32.30.vec.insert968 = insertelement <4 x half> %B_local.sroa.32.28.vec.insert966, half %212, i64 3, !dbg !266
  %add524.4.1 = add nuw nsw i32 %mul523, 3072
  %add526.4.1 = or disjoint i32 %add524.4.1, %mul534.4
  %add541.4.1 = or disjoint i32 %add526.4.1, %mul548, !dbg !264
  %gep.4.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.4.1, !dbg !265
  %213 = load half, ptr addrspace(3) %gep.4.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.42.32.vec.insert972 = insertelement <4 x half> poison, half %213, i64 0, !dbg !266
  %add535.1.4.1 = or disjoint i32 %add526.4.1, %mul548.1, !dbg !264
  %add541.1.4.1 = or disjoint i32 %add535.1.4.1, 64, !dbg !264
  %gep.1.4.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.1.4.1, !dbg !265
  %214 = load half, ptr addrspace(3) %gep.1.4.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.42.34.vec.insert974 = insertelement <4 x half> %B_local.sroa.42.32.vec.insert972, half %214, i64 1, !dbg !266
  %add535.2.4.1 = or disjoint i32 %add526.4.1, %mul548.2, !dbg !264
  %add541.2.4.1 = or disjoint i32 %add535.2.4.1, 128, !dbg !264
  %add549.2.4.1 = or disjoint i32 %add535.2.4.1, 144, !dbg !268
  %gep.2.4.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.2.4.1, !dbg !265
  %215 = load half, ptr addrspace(3) %gep.2.4.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.42.36.vec.insert976 = insertelement <4 x half> %B_local.sroa.42.34.vec.insert974, half %215, i64 2, !dbg !266
  %add535.3.4.1 = or disjoint i32 %add526.4.1, %mul548.3, !dbg !264
  %add541.3.4.1 = or disjoint i32 %add535.3.4.1, 192, !dbg !264
  %add549.3.4.1 = or disjoint i32 %add535.3.4.1, 208, !dbg !268
  %gep.3.4.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.3.4.1, !dbg !265
  %216 = load half, ptr addrspace(3) %gep.3.4.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.42.38.vec.insert978 = insertelement <4 x half> %B_local.sroa.42.36.vec.insert976, half %216, i64 3, !dbg !266
  %add549.5.1 = or disjoint i32 %add541.4.1, 16, !dbg !268
  %gep.5.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.5.1, !dbg !265
  %217 = load half, ptr addrspace(3) %gep.5.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.52.40.vec.insert982 = insertelement <4 x half> poison, half %217, i64 0, !dbg !266
  %add549.1.5.1 = or disjoint i32 %add535.1.4.1, 80, !dbg !268
  %gep.1.5.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.1.5.1, !dbg !265
  %218 = load half, ptr addrspace(3) %gep.1.5.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.52.42.vec.insert984 = insertelement <4 x half> %B_local.sroa.52.40.vec.insert982, half %218, i64 1, !dbg !266
  %gep.2.5.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.2.4.1, !dbg !265
  %219 = load half, ptr addrspace(3) %gep.2.5.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.52.44.vec.insert986 = insertelement <4 x half> %B_local.sroa.52.42.vec.insert984, half %219, i64 2, !dbg !266
  %gep.3.5.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.3.4.1, !dbg !265
  %220 = load half, ptr addrspace(3) %gep.3.5.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.52.46.vec.insert988 = insertelement <4 x half> %B_local.sroa.52.44.vec.insert986, half %220, i64 3, !dbg !266
  %add526.6.1 = or disjoint i32 %add524.4.1, %mul534.6
  %add541.6.1 = or disjoint i32 %add526.6.1, %mul548, !dbg !264
  %gep.6.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.6.1, !dbg !265
  %221 = load half, ptr addrspace(3) %gep.6.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.62.48.vec.insert992 = insertelement <4 x half> poison, half %221, i64 0, !dbg !266
  %add535.1.6.1 = or disjoint i32 %add526.6.1, %mul548.1, !dbg !264
  %add541.1.6.1 = or disjoint i32 %add535.1.6.1, 64, !dbg !264
  %gep.1.6.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.1.6.1, !dbg !265
  %222 = load half, ptr addrspace(3) %gep.1.6.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.62.50.vec.insert994 = insertelement <4 x half> %B_local.sroa.62.48.vec.insert992, half %222, i64 1, !dbg !266
  %add535.2.6.1 = or disjoint i32 %add526.6.1, %mul548.2, !dbg !264
  %add541.2.6.1 = or disjoint i32 %add535.2.6.1, 128, !dbg !264
  %add549.2.6.1 = or disjoint i32 %add535.2.6.1, 144, !dbg !268
  %gep.2.6.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.2.6.1, !dbg !265
  %223 = load half, ptr addrspace(3) %gep.2.6.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.62.52.vec.insert996 = insertelement <4 x half> %B_local.sroa.62.50.vec.insert994, half %223, i64 2, !dbg !266
  %add535.3.6.1 = or disjoint i32 %add526.6.1, %mul548.3, !dbg !264
  %add541.3.6.1 = or disjoint i32 %add535.3.6.1, 192, !dbg !264
  %add549.3.6.1 = or disjoint i32 %add535.3.6.1, 208, !dbg !268
  %gep.3.6.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.3.6.1, !dbg !265
  %224 = load half, ptr addrspace(3) %gep.3.6.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.62.54.vec.insert998 = insertelement <4 x half> %B_local.sroa.62.52.vec.insert996, half %224, i64 3, !dbg !266
  %add549.7.1 = or disjoint i32 %add541.6.1, 16, !dbg !268
  %gep.7.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.7.1, !dbg !265
  %225 = load half, ptr addrspace(3) %gep.7.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.72.56.vec.insert1002 = insertelement <4 x half> poison, half %225, i64 0, !dbg !266
  %add549.1.7.1 = or disjoint i32 %add535.1.6.1, 80, !dbg !268
  %gep.1.7.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add549.1.7.1, !dbg !265
  %226 = load half, ptr addrspace(3) %gep.1.7.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.72.58.vec.insert1004 = insertelement <4 x half> %B_local.sroa.72.56.vec.insert1002, half %226, i64 1, !dbg !266
  %gep.2.7.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.2.6.1, !dbg !265
  %227 = load half, ptr addrspace(3) %gep.2.7.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.72.60.vec.insert1006 = insertelement <4 x half> %B_local.sroa.72.58.vec.insert1004, half %227, i64 2, !dbg !266
  %gep.3.7.1 = getelementptr %struct.__half, ptr addrspace(3) %invariant.gep846, i32 %add541.3.6.1, !dbg !265
  %228 = load half, ptr addrspace(3) %gep.3.7.1, align 2, !dbg !266, !tbaa !267
  %B_local.sroa.72.62.vec.insert1008 = insertelement <4 x half> %B_local.sroa.72.60.vec.insert1006, half %228, i64 3, !dbg !266
  %229 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.0.6.vec.insert938, <4 x half> %scores_half.sroa.4.0, <4 x float> %189), !dbg !269
  %230 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.12.14.vec.insert948, <4 x half> %scores_half.sroa.4.0, <4 x float> %190), !dbg !269
  %231 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.22.22.vec.insert958, <4 x half> %scores_half.sroa.4.0, <4 x float> %191), !dbg !269
  %232 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.32.30.vec.insert968, <4 x half> %scores_half.sroa.4.0, <4 x float> %192), !dbg !269
  %233 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.42.38.vec.insert978, <4 x half> %scores_half.sroa.4.0, <4 x float> %193), !dbg !269
  %234 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.52.46.vec.insert988, <4 x half> %scores_half.sroa.4.0, <4 x float> %194), !dbg !269
  %235 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.62.54.vec.insert998, <4 x half> %scores_half.sroa.4.0, <4 x float> %195), !dbg !269
  %236 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.72.62.vec.insert1008, <4 x half> %scores_half.sroa.4.0, <4 x float> %196), !dbg !269
  br label %if.end601, !dbg !270

if.end601:                                        ; preds = %for.body591.preheader, %if.then504
  %.pre-phi = phi i32 [ %.pre, %for.body591.preheader ], [ %151, %if.then504 ]
  %output_acc.sroa.142.0 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1028, %for.body591.preheader ], [ %236, %if.then504 ], !dbg !93
  %output_acc.sroa.122.0 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1028, %for.body591.preheader ], [ %235, %if.then504 ], !dbg !93
  %output_acc.sroa.102.0 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1028, %for.body591.preheader ], [ %234, %if.then504 ], !dbg !93
  %output_acc.sroa.82.0 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1028, %for.body591.preheader ], [ %233, %if.then504 ], !dbg !93
  %output_acc.sroa.62.0 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1028, %for.body591.preheader ], [ %232, %if.then504 ], !dbg !93
  %output_acc.sroa.42.0 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1028, %for.body591.preheader ], [ %231, %if.then504 ], !dbg !93
  %output_acc.sroa.22.0 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1028, %for.body591.preheader ], [ %230, %if.then504 ], !dbg !93
  %output_acc.sroa.0.0 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert1028, %for.body591.preheader ], [ %229, %if.then504 ], !dbg !93
  %mul625 = shl nsw i32 %0, 21
  %mul627 = shl nsw i32 %1, 11
  %add628 = add nuw nsw i32 %mul625, %mul627
  %and630 = shl nuw nsw i32 %.pre-phi, 7
  %mul631 = and i32 %and630, 1920
  %add632 = or disjoint i32 %add628, %mul631
  %237 = lshr i32 %.pre-phi, 2
  %mul637 = and i32 %237, 252
  %add634 = add nuw nsw i32 %add632, %mul637
  %238 = zext nneg i32 %add634 to i64, !dbg !271
  %output_acc.sroa.0.0.vec.extract1015 = extractelement <4 x float> %output_acc.sroa.0.0, i64 0, !dbg !272
  %output_acc.sroa.0.4.vec.extract1020 = extractelement <4 x float> %output_acc.sroa.0.0, i64 1, !dbg !272
  %output_acc.sroa.0.8.vec.extract1025 = extractelement <4 x float> %output_acc.sroa.0.0, i64 2, !dbg !272
  %output_acc.sroa.0.12.vec.extract1030 = extractelement <4 x float> %output_acc.sroa.0.0, i64 3, !dbg !272
  %239 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !273, !noalias !277
  %240 = fptrunc float %output_acc.sroa.0.0.vec.extract1015 to half, !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %239), !dbg !273, !noalias !277
  %241 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !277
  %242 = fptrunc float %output_acc.sroa.0.4.vec.extract1020 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %241), !dbg !282, !noalias !277
  %243 = bitcast half %240 to i16, !dbg !284
  %244 = bitcast half %242 to i16, !dbg !287
  %245 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !288, !noalias !292
  %246 = fptrunc float %output_acc.sroa.0.8.vec.extract1025 to half, !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %245), !dbg !288, !noalias !292
  %247 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !297, !noalias !292
  %248 = fptrunc float %output_acc.sroa.0.12.vec.extract1030 to half, !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %247), !dbg !297, !noalias !292
  %249 = bitcast half %246 to i16, !dbg !299
  %250 = bitcast half %248 to i16, !dbg !301
  %__2.sroa.6.0.insert.ext = zext i16 %250 to i64, !dbg !302
  %__2.sroa.6.0.insert.shift = shl nuw i64 %__2.sroa.6.0.insert.ext, 48, !dbg !302
  %__2.sroa.5.0.insert.ext = zext i16 %249 to i64, !dbg !302
  %__2.sroa.5.0.insert.shift = shl nuw nsw i64 %__2.sroa.5.0.insert.ext, 32, !dbg !302
  %__2.sroa.5.0.insert.insert = or disjoint i64 %__2.sroa.6.0.insert.shift, %__2.sroa.5.0.insert.shift, !dbg !302
  %__2.sroa.4.0.insert.ext = zext i16 %244 to i64, !dbg !302
  %__2.sroa.4.0.insert.shift = shl nuw nsw i64 %__2.sroa.4.0.insert.ext, 16, !dbg !302
  %__2.sroa.4.0.insert.insert = or disjoint i64 %__2.sroa.5.0.insert.insert, %__2.sroa.4.0.insert.shift, !dbg !302
  %__2.sroa.0.0.insert.ext = zext i16 %243 to i64, !dbg !302
  %__2.sroa.0.0.insert.insert = or disjoint i64 %__2.sroa.4.0.insert.insert, %__2.sroa.0.0.insert.ext, !dbg !302
  %add.ptr640 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %238, !dbg !303
  store i64 %__2.sroa.0.0.insert.insert, ptr addrspace(1) %add.ptr640, align 8, !dbg !304
  %output_acc.sroa.22.16.vec.extract1037 = extractelement <4 x float> %output_acc.sroa.22.0, i64 0, !dbg !272
  %output_acc.sroa.22.20.vec.extract1042 = extractelement <4 x float> %output_acc.sroa.22.0, i64 1, !dbg !272
  %output_acc.sroa.22.24.vec.extract1047 = extractelement <4 x float> %output_acc.sroa.22.0, i64 2, !dbg !272
  %output_acc.sroa.22.28.vec.extract1052 = extractelement <4 x float> %output_acc.sroa.22.0, i64 3, !dbg !272
  %251 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !273, !noalias !277
  %252 = fptrunc float %output_acc.sroa.22.16.vec.extract1037 to half, !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %251), !dbg !273, !noalias !277
  %253 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !277
  %254 = fptrunc float %output_acc.sroa.22.20.vec.extract1042 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %253), !dbg !282, !noalias !277
  %255 = bitcast half %252 to i16, !dbg !284
  %256 = bitcast half %254 to i16, !dbg !287
  %257 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !288, !noalias !292
  %258 = fptrunc float %output_acc.sroa.22.24.vec.extract1047 to half, !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %257), !dbg !288, !noalias !292
  %259 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !297, !noalias !292
  %260 = fptrunc float %output_acc.sroa.22.28.vec.extract1052 to half, !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %259), !dbg !297, !noalias !292
  %261 = bitcast half %258 to i16, !dbg !299
  %262 = bitcast half %260 to i16, !dbg !301
  %__2.sroa.6.0.insert.ext.1 = zext i16 %262 to i64, !dbg !302
  %__2.sroa.6.0.insert.shift.1 = shl nuw i64 %__2.sroa.6.0.insert.ext.1, 48, !dbg !302
  %__2.sroa.5.0.insert.ext.1 = zext i16 %261 to i64, !dbg !302
  %__2.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.1, 32, !dbg !302
  %__2.sroa.5.0.insert.insert.1 = or disjoint i64 %__2.sroa.6.0.insert.shift.1, %__2.sroa.5.0.insert.shift.1, !dbg !302
  %__2.sroa.4.0.insert.ext.1 = zext i16 %256 to i64, !dbg !302
  %__2.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.1, 16, !dbg !302
  %__2.sroa.4.0.insert.insert.1 = or disjoint i64 %__2.sroa.5.0.insert.insert.1, %__2.sroa.4.0.insert.shift.1, !dbg !302
  %__2.sroa.0.0.insert.ext.1 = zext i16 %255 to i64, !dbg !302
  %__2.sroa.0.0.insert.insert.1 = or disjoint i64 %__2.sroa.4.0.insert.insert.1, %__2.sroa.0.0.insert.ext.1, !dbg !302
  %263 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %238, !dbg !303
  %add.ptr640.1 = getelementptr inbounds i8, ptr addrspace(1) %263, i64 32, !dbg !303
  store i64 %__2.sroa.0.0.insert.insert.1, ptr addrspace(1) %add.ptr640.1, align 8, !dbg !304
  %output_acc.sroa.42.32.vec.extract1059 = extractelement <4 x float> %output_acc.sroa.42.0, i64 0, !dbg !272
  %output_acc.sroa.42.36.vec.extract1064 = extractelement <4 x float> %output_acc.sroa.42.0, i64 1, !dbg !272
  %output_acc.sroa.42.40.vec.extract1069 = extractelement <4 x float> %output_acc.sroa.42.0, i64 2, !dbg !272
  %output_acc.sroa.42.44.vec.extract1074 = extractelement <4 x float> %output_acc.sroa.42.0, i64 3, !dbg !272
  %264 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !273, !noalias !277
  %265 = fptrunc float %output_acc.sroa.42.32.vec.extract1059 to half, !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %264), !dbg !273, !noalias !277
  %266 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !277
  %267 = fptrunc float %output_acc.sroa.42.36.vec.extract1064 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %266), !dbg !282, !noalias !277
  %268 = bitcast half %265 to i16, !dbg !284
  %269 = bitcast half %267 to i16, !dbg !287
  %270 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !288, !noalias !292
  %271 = fptrunc float %output_acc.sroa.42.40.vec.extract1069 to half, !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %270), !dbg !288, !noalias !292
  %272 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !297, !noalias !292
  %273 = fptrunc float %output_acc.sroa.42.44.vec.extract1074 to half, !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %272), !dbg !297, !noalias !292
  %274 = bitcast half %271 to i16, !dbg !299
  %275 = bitcast half %273 to i16, !dbg !301
  %__2.sroa.6.0.insert.ext.2 = zext i16 %275 to i64, !dbg !302
  %__2.sroa.6.0.insert.shift.2 = shl nuw i64 %__2.sroa.6.0.insert.ext.2, 48, !dbg !302
  %__2.sroa.5.0.insert.ext.2 = zext i16 %274 to i64, !dbg !302
  %__2.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.2, 32, !dbg !302
  %__2.sroa.5.0.insert.insert.2 = or disjoint i64 %__2.sroa.6.0.insert.shift.2, %__2.sroa.5.0.insert.shift.2, !dbg !302
  %__2.sroa.4.0.insert.ext.2 = zext i16 %269 to i64, !dbg !302
  %__2.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.2, 16, !dbg !302
  %__2.sroa.4.0.insert.insert.2 = or disjoint i64 %__2.sroa.5.0.insert.insert.2, %__2.sroa.4.0.insert.shift.2, !dbg !302
  %__2.sroa.0.0.insert.ext.2 = zext i16 %268 to i64, !dbg !302
  %__2.sroa.0.0.insert.insert.2 = or disjoint i64 %__2.sroa.4.0.insert.insert.2, %__2.sroa.0.0.insert.ext.2, !dbg !302
  %276 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %238, !dbg !303
  %add.ptr640.2 = getelementptr inbounds i8, ptr addrspace(1) %276, i64 64, !dbg !303
  store i64 %__2.sroa.0.0.insert.insert.2, ptr addrspace(1) %add.ptr640.2, align 8, !dbg !304
  %output_acc.sroa.62.48.vec.extract1081 = extractelement <4 x float> %output_acc.sroa.62.0, i64 0, !dbg !272
  %output_acc.sroa.62.52.vec.extract1086 = extractelement <4 x float> %output_acc.sroa.62.0, i64 1, !dbg !272
  %output_acc.sroa.62.56.vec.extract1091 = extractelement <4 x float> %output_acc.sroa.62.0, i64 2, !dbg !272
  %output_acc.sroa.62.60.vec.extract1096 = extractelement <4 x float> %output_acc.sroa.62.0, i64 3, !dbg !272
  %277 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !273, !noalias !277
  %278 = fptrunc float %output_acc.sroa.62.48.vec.extract1081 to half, !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %277), !dbg !273, !noalias !277
  %279 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !277
  %280 = fptrunc float %output_acc.sroa.62.52.vec.extract1086 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %279), !dbg !282, !noalias !277
  %281 = bitcast half %278 to i16, !dbg !284
  %282 = bitcast half %280 to i16, !dbg !287
  %283 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !288, !noalias !292
  %284 = fptrunc float %output_acc.sroa.62.56.vec.extract1091 to half, !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %283), !dbg !288, !noalias !292
  %285 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !297, !noalias !292
  %286 = fptrunc float %output_acc.sroa.62.60.vec.extract1096 to half, !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %285), !dbg !297, !noalias !292
  %287 = bitcast half %284 to i16, !dbg !299
  %288 = bitcast half %286 to i16, !dbg !301
  %__2.sroa.6.0.insert.ext.3 = zext i16 %288 to i64, !dbg !302
  %__2.sroa.6.0.insert.shift.3 = shl nuw i64 %__2.sroa.6.0.insert.ext.3, 48, !dbg !302
  %__2.sroa.5.0.insert.ext.3 = zext i16 %287 to i64, !dbg !302
  %__2.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.3, 32, !dbg !302
  %__2.sroa.5.0.insert.insert.3 = or disjoint i64 %__2.sroa.6.0.insert.shift.3, %__2.sroa.5.0.insert.shift.3, !dbg !302
  %__2.sroa.4.0.insert.ext.3 = zext i16 %282 to i64, !dbg !302
  %__2.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.3, 16, !dbg !302
  %__2.sroa.4.0.insert.insert.3 = or disjoint i64 %__2.sroa.5.0.insert.insert.3, %__2.sroa.4.0.insert.shift.3, !dbg !302
  %__2.sroa.0.0.insert.ext.3 = zext i16 %281 to i64, !dbg !302
  %__2.sroa.0.0.insert.insert.3 = or disjoint i64 %__2.sroa.4.0.insert.insert.3, %__2.sroa.0.0.insert.ext.3, !dbg !302
  %289 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %238, !dbg !303
  %add.ptr640.3 = getelementptr inbounds i8, ptr addrspace(1) %289, i64 96, !dbg !303
  store i64 %__2.sroa.0.0.insert.insert.3, ptr addrspace(1) %add.ptr640.3, align 8, !dbg !304
  %output_acc.sroa.82.64.vec.extract1103 = extractelement <4 x float> %output_acc.sroa.82.0, i64 0, !dbg !272
  %output_acc.sroa.82.68.vec.extract1108 = extractelement <4 x float> %output_acc.sroa.82.0, i64 1, !dbg !272
  %output_acc.sroa.82.72.vec.extract1113 = extractelement <4 x float> %output_acc.sroa.82.0, i64 2, !dbg !272
  %output_acc.sroa.82.76.vec.extract1118 = extractelement <4 x float> %output_acc.sroa.82.0, i64 3, !dbg !272
  %290 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !273, !noalias !277
  %291 = fptrunc float %output_acc.sroa.82.64.vec.extract1103 to half, !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %290), !dbg !273, !noalias !277
  %292 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !277
  %293 = fptrunc float %output_acc.sroa.82.68.vec.extract1108 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %292), !dbg !282, !noalias !277
  %294 = bitcast half %291 to i16, !dbg !284
  %295 = bitcast half %293 to i16, !dbg !287
  %296 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !288, !noalias !292
  %297 = fptrunc float %output_acc.sroa.82.72.vec.extract1113 to half, !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %296), !dbg !288, !noalias !292
  %298 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !297, !noalias !292
  %299 = fptrunc float %output_acc.sroa.82.76.vec.extract1118 to half, !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %298), !dbg !297, !noalias !292
  %300 = bitcast half %297 to i16, !dbg !299
  %301 = bitcast half %299 to i16, !dbg !301
  %__2.sroa.6.0.insert.ext.4 = zext i16 %301 to i64, !dbg !302
  %__2.sroa.6.0.insert.shift.4 = shl nuw i64 %__2.sroa.6.0.insert.ext.4, 48, !dbg !302
  %__2.sroa.5.0.insert.ext.4 = zext i16 %300 to i64, !dbg !302
  %__2.sroa.5.0.insert.shift.4 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.4, 32, !dbg !302
  %__2.sroa.5.0.insert.insert.4 = or disjoint i64 %__2.sroa.6.0.insert.shift.4, %__2.sroa.5.0.insert.shift.4, !dbg !302
  %__2.sroa.4.0.insert.ext.4 = zext i16 %295 to i64, !dbg !302
  %__2.sroa.4.0.insert.shift.4 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.4, 16, !dbg !302
  %__2.sroa.4.0.insert.insert.4 = or disjoint i64 %__2.sroa.5.0.insert.insert.4, %__2.sroa.4.0.insert.shift.4, !dbg !302
  %__2.sroa.0.0.insert.ext.4 = zext i16 %294 to i64, !dbg !302
  %__2.sroa.0.0.insert.insert.4 = or disjoint i64 %__2.sroa.4.0.insert.insert.4, %__2.sroa.0.0.insert.ext.4, !dbg !302
  %302 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %238, !dbg !303
  %add.ptr640.4 = getelementptr inbounds i8, ptr addrspace(1) %302, i64 128, !dbg !303
  store i64 %__2.sroa.0.0.insert.insert.4, ptr addrspace(1) %add.ptr640.4, align 8, !dbg !304
  %output_acc.sroa.102.80.vec.extract1125 = extractelement <4 x float> %output_acc.sroa.102.0, i64 0, !dbg !272
  %output_acc.sroa.102.84.vec.extract1130 = extractelement <4 x float> %output_acc.sroa.102.0, i64 1, !dbg !272
  %output_acc.sroa.102.88.vec.extract1135 = extractelement <4 x float> %output_acc.sroa.102.0, i64 2, !dbg !272
  %output_acc.sroa.102.92.vec.extract1140 = extractelement <4 x float> %output_acc.sroa.102.0, i64 3, !dbg !272
  %303 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !273, !noalias !277
  %304 = fptrunc float %output_acc.sroa.102.80.vec.extract1125 to half, !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %303), !dbg !273, !noalias !277
  %305 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !277
  %306 = fptrunc float %output_acc.sroa.102.84.vec.extract1130 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %305), !dbg !282, !noalias !277
  %307 = bitcast half %304 to i16, !dbg !284
  %308 = bitcast half %306 to i16, !dbg !287
  %309 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !288, !noalias !292
  %310 = fptrunc float %output_acc.sroa.102.88.vec.extract1135 to half, !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %309), !dbg !288, !noalias !292
  %311 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !297, !noalias !292
  %312 = fptrunc float %output_acc.sroa.102.92.vec.extract1140 to half, !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %311), !dbg !297, !noalias !292
  %313 = bitcast half %310 to i16, !dbg !299
  %314 = bitcast half %312 to i16, !dbg !301
  %__2.sroa.6.0.insert.ext.5 = zext i16 %314 to i64, !dbg !302
  %__2.sroa.6.0.insert.shift.5 = shl nuw i64 %__2.sroa.6.0.insert.ext.5, 48, !dbg !302
  %__2.sroa.5.0.insert.ext.5 = zext i16 %313 to i64, !dbg !302
  %__2.sroa.5.0.insert.shift.5 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.5, 32, !dbg !302
  %__2.sroa.5.0.insert.insert.5 = or disjoint i64 %__2.sroa.6.0.insert.shift.5, %__2.sroa.5.0.insert.shift.5, !dbg !302
  %__2.sroa.4.0.insert.ext.5 = zext i16 %308 to i64, !dbg !302
  %__2.sroa.4.0.insert.shift.5 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.5, 16, !dbg !302
  %__2.sroa.4.0.insert.insert.5 = or disjoint i64 %__2.sroa.5.0.insert.insert.5, %__2.sroa.4.0.insert.shift.5, !dbg !302
  %__2.sroa.0.0.insert.ext.5 = zext i16 %307 to i64, !dbg !302
  %__2.sroa.0.0.insert.insert.5 = or disjoint i64 %__2.sroa.4.0.insert.insert.5, %__2.sroa.0.0.insert.ext.5, !dbg !302
  %315 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %238, !dbg !303
  %add.ptr640.5 = getelementptr inbounds i8, ptr addrspace(1) %315, i64 160, !dbg !303
  store i64 %__2.sroa.0.0.insert.insert.5, ptr addrspace(1) %add.ptr640.5, align 8, !dbg !304
  %output_acc.sroa.122.96.vec.extract1147 = extractelement <4 x float> %output_acc.sroa.122.0, i64 0, !dbg !272
  %output_acc.sroa.122.100.vec.extract1152 = extractelement <4 x float> %output_acc.sroa.122.0, i64 1, !dbg !272
  %output_acc.sroa.122.104.vec.extract1157 = extractelement <4 x float> %output_acc.sroa.122.0, i64 2, !dbg !272
  %output_acc.sroa.122.108.vec.extract1162 = extractelement <4 x float> %output_acc.sroa.122.0, i64 3, !dbg !272
  %316 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !273, !noalias !277
  %317 = fptrunc float %output_acc.sroa.122.96.vec.extract1147 to half, !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %316), !dbg !273, !noalias !277
  %318 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !277
  %319 = fptrunc float %output_acc.sroa.122.100.vec.extract1152 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %318), !dbg !282, !noalias !277
  %320 = bitcast half %317 to i16, !dbg !284
  %321 = bitcast half %319 to i16, !dbg !287
  %322 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !288, !noalias !292
  %323 = fptrunc float %output_acc.sroa.122.104.vec.extract1157 to half, !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %322), !dbg !288, !noalias !292
  %324 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !297, !noalias !292
  %325 = fptrunc float %output_acc.sroa.122.108.vec.extract1162 to half, !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %324), !dbg !297, !noalias !292
  %326 = bitcast half %323 to i16, !dbg !299
  %327 = bitcast half %325 to i16, !dbg !301
  %__2.sroa.6.0.insert.ext.6 = zext i16 %327 to i64, !dbg !302
  %__2.sroa.6.0.insert.shift.6 = shl nuw i64 %__2.sroa.6.0.insert.ext.6, 48, !dbg !302
  %__2.sroa.5.0.insert.ext.6 = zext i16 %326 to i64, !dbg !302
  %__2.sroa.5.0.insert.shift.6 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.6, 32, !dbg !302
  %__2.sroa.5.0.insert.insert.6 = or disjoint i64 %__2.sroa.6.0.insert.shift.6, %__2.sroa.5.0.insert.shift.6, !dbg !302
  %__2.sroa.4.0.insert.ext.6 = zext i16 %321 to i64, !dbg !302
  %__2.sroa.4.0.insert.shift.6 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.6, 16, !dbg !302
  %__2.sroa.4.0.insert.insert.6 = or disjoint i64 %__2.sroa.5.0.insert.insert.6, %__2.sroa.4.0.insert.shift.6, !dbg !302
  %__2.sroa.0.0.insert.ext.6 = zext i16 %320 to i64, !dbg !302
  %__2.sroa.0.0.insert.insert.6 = or disjoint i64 %__2.sroa.4.0.insert.insert.6, %__2.sroa.0.0.insert.ext.6, !dbg !302
  %328 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %238, !dbg !303
  %add.ptr640.6 = getelementptr inbounds i8, ptr addrspace(1) %328, i64 192, !dbg !303
  store i64 %__2.sroa.0.0.insert.insert.6, ptr addrspace(1) %add.ptr640.6, align 8, !dbg !304
  %output_acc.sroa.142.112.vec.extract1169 = extractelement <4 x float> %output_acc.sroa.142.0, i64 0, !dbg !272
  %output_acc.sroa.142.116.vec.extract1174 = extractelement <4 x float> %output_acc.sroa.142.0, i64 1, !dbg !272
  %output_acc.sroa.142.120.vec.extract1179 = extractelement <4 x float> %output_acc.sroa.142.0, i64 2, !dbg !272
  %output_acc.sroa.142.124.vec.extract1184 = extractelement <4 x float> %output_acc.sroa.142.0, i64 3, !dbg !272
  %329 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !273, !noalias !277
  %330 = fptrunc float %output_acc.sroa.142.112.vec.extract1169 to half, !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %329), !dbg !273, !noalias !277
  %331 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !277
  %332 = fptrunc float %output_acc.sroa.142.116.vec.extract1174 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %331), !dbg !282, !noalias !277
  %333 = bitcast half %330 to i16, !dbg !284
  %334 = bitcast half %332 to i16, !dbg !287
  %335 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !288, !noalias !292
  %336 = fptrunc float %output_acc.sroa.142.120.vec.extract1179 to half, !dbg !288
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %335), !dbg !288, !noalias !292
  %337 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !297, !noalias !292
  %338 = fptrunc float %output_acc.sroa.142.124.vec.extract1184 to half, !dbg !297
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %337), !dbg !297, !noalias !292
  %339 = bitcast half %336 to i16, !dbg !299
  %340 = bitcast half %338 to i16, !dbg !301
  %__2.sroa.6.0.insert.ext.7 = zext i16 %340 to i64, !dbg !302
  %__2.sroa.6.0.insert.shift.7 = shl nuw i64 %__2.sroa.6.0.insert.ext.7, 48, !dbg !302
  %__2.sroa.5.0.insert.ext.7 = zext i16 %339 to i64, !dbg !302
  %__2.sroa.5.0.insert.shift.7 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.7, 32, !dbg !302
  %__2.sroa.5.0.insert.insert.7 = or disjoint i64 %__2.sroa.6.0.insert.shift.7, %__2.sroa.5.0.insert.shift.7, !dbg !302
  %__2.sroa.4.0.insert.ext.7 = zext i16 %334 to i64, !dbg !302
  %__2.sroa.4.0.insert.shift.7 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.7, 16, !dbg !302
  %__2.sroa.4.0.insert.insert.7 = or disjoint i64 %__2.sroa.5.0.insert.insert.7, %__2.sroa.4.0.insert.shift.7, !dbg !302
  %__2.sroa.0.0.insert.ext.7 = zext i16 %333 to i64, !dbg !302
  %__2.sroa.0.0.insert.insert.7 = or disjoint i64 %__2.sroa.4.0.insert.insert.7, %__2.sroa.0.0.insert.ext.7, !dbg !302
  %341 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %238, !dbg !303
  %add.ptr640.7 = getelementptr inbounds i8, ptr addrspace(1) %341, i64 224, !dbg !303
  store i64 %__2.sroa.0.0.insert.insert.7, ptr addrspace(1) %add.ptr640.7, align 8, !dbg !304
  ret void, !dbg !305
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v036_codex_power_s1_shared_lifetime_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v036_codex_power_s1_shared_lifetime_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
!42 = !DILocation(line: 78, column: 3, scope: !43, inlinedAt: !45)
!43 = distinct !DISubprogram(name: "__fetch_builtin_y", scope: !44, file: !44, line: 78, type: !7, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!44 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_builtin_vars.h", directory: "")
!45 = distinct !DILocation(line: 20, column: 43, scope: !40)
!46 = !DILocation(line: 20, column: 55, scope: !40)
!47 = !DILocation(line: 77, column: 3, scope: !48, inlinedAt: !49)
!48 = distinct !DISubprogram(name: "__fetch_builtin_x", scope: !44, file: !44, line: 77, type: !7, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!49 = distinct !DILocation(line: 20, column: 71, scope: !40)
!50 = !DILocation(line: 20, column: 63, scope: !40)
!51 = !DILocation(line: 20, column: 22, scope: !40)
!52 = !DILocation(line: 20, column: 85, scope: !40)
!53 = !DILocation(line: 22, column: 10, scope: !40)
!54 = !DILocation(line: 22, column: 26, scope: !40)
!55 = !{i32 0, i32 1024}
!56 = !DILocation(line: 24, column: 5, scope: !40)
!57 = !DILocation(line: 25, column: 370, scope: !40)
!58 = !DILocation(line: 25, column: 91, scope: !40)
!59 = !DILocation(line: 25, column: 104, scope: !40)
!60 = !DILocation(line: 25, column: 193, scope: !40)
!61 = !DILocation(line: 25, column: 140, scope: !40)
!62 = !DILocation(line: 25, column: 200, scope: !40)
!63 = !DILocation(line: 25, column: 278, scope: !40)
!64 = !DILocation(line: 25, column: 42, scope: !40)
!65 = !DILocation(line: 25, column: 356, scope: !40)
!66 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!67 = !{i32 -1, i32 3, i32 -1, i32 -1}
!68 = !DILocation(line: 68, column: 3, scope: !69, inlinedAt: !71)
!69 = distinct !DISubprogram(name: "__barrier_warp", scope: !70, file: !70, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!70 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!71 = distinct !DILocation(line: 192, column: 3, scope: !72, inlinedAt: !73)
!72 = distinct !DISubprogram(name: "__syncwarp", scope: !70, file: !70, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!73 = distinct !DILocation(line: 27, column: 5, scope: !40)
!74 = !DILocation(line: 69, column: 3, scope: !69, inlinedAt: !71)
!75 = !DILocation(line: 70, column: 3, scope: !69, inlinedAt: !71)
!76 = !DILocation(line: 30, column: 206, scope: !40)
!77 = !DILocation(line: 30, column: 270, scope: !40)
!78 = !DILocation(line: 30, column: 277, scope: !40)
!79 = !DILocation(line: 30, column: 347, scope: !40)
!80 = !DILocation(line: 30, column: 77, scope: !40)
!81 = !DILocation(line: 30, column: 40, scope: !40)
!82 = !DILocation(line: 30, column: 213, scope: !40)
!83 = !DILocation(line: 68, column: 3, scope: !69, inlinedAt: !84)
!84 = distinct !DILocation(line: 192, column: 3, scope: !72, inlinedAt: !85)
!85 = distinct !DILocation(line: 32, column: 5, scope: !40)
!86 = !DILocation(line: 69, column: 3, scope: !69, inlinedAt: !84)
!87 = !DILocation(line: 70, column: 3, scope: !69, inlinedAt: !84)
!88 = !DILocation(line: 34, column: 5, scope: !40)
!89 = !DILocation(line: 37, column: 69, scope: !40)
!90 = !DILocation(line: 37, column: 11, scope: !40)
!91 = !DILocation(line: 38, column: 17, scope: !40)
!92 = !DILocation(line: 39, column: 7, scope: !40)
!93 = !DILocation(line: 0, scope: !40)
!94 = !DILocation(line: 42, column: 360, scope: !40)
!95 = !DILocation(line: 42, column: 91, scope: !40)
!96 = !DILocation(line: 42, column: 106, scope: !40)
!97 = !DILocation(line: 42, column: 197, scope: !40)
!98 = !DILocation(line: 42, column: 142, scope: !40)
!99 = !DILocation(line: 42, column: 204, scope: !40)
!100 = !DILocation(line: 42, column: 282, scope: !40)
!101 = !DILocation(line: 42, column: 42, scope: !40)
!102 = !DILocation(line: 68, column: 3, scope: !69, inlinedAt: !103)
!103 = distinct !DILocation(line: 192, column: 3, scope: !72, inlinedAt: !104)
!104 = distinct !DILocation(line: 44, column: 5, scope: !40)
!105 = !DILocation(line: 69, column: 3, scope: !69, inlinedAt: !103)
!106 = !DILocation(line: 70, column: 3, scope: !69, inlinedAt: !103)
!107 = !DILocation(line: 54, column: 158, scope: !40)
!108 = !DILocation(line: 54, column: 231, scope: !40)
!109 = !DILocation(line: 54, column: 297, scope: !40)
!110 = !DILocation(line: 54, column: 367, scope: !40)
!111 = !DILocation(line: 54, column: 69, scope: !40)
!112 = !DILocation(line: 54, column: 32, scope: !40)
!113 = !DILocation(line: 56, column: 44, scope: !40)
!114 = !DILocation(line: 54, column: 122, scope: !40)
!115 = !DILocation(line: 65, column: 96, scope: !40)
!116 = !DILocation(line: 65, column: 11, scope: !40)
!117 = !DILocation(line: 65, column: 68, scope: !40)
!118 = !DILocation(line: 65, column: 83, scope: !40)
!119 = !DILocation(line: 351, column: 10, scope: !120, inlinedAt: !122)
!120 = distinct !DISubprogram(name: "max", scope: !121, file: !121, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!121 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!122 = distinct !DILocation(line: 76, column: 22, scope: !40)
!123 = !DILocation(line: 1018, column: 9, scope: !124, inlinedAt: !125)
!124 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !70, file: !70, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!125 = distinct !DILocation(line: 338, column: 10, scope: !126, inlinedAt: !128)
!126 = distinct !DISubprogram(name: "shfl_xor_sync<float>", scope: !127, file: !127, line: 337, type: !7, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!127 = !DIFile(filename: "src/tl_templates/maca/common.h", directory: "/root/tilelang-metax")
!128 = distinct !DILocation(line: 95, column: 24, scope: !129, inlinedAt: !131)
!129 = distinct !DISubprogram(name: "run<float>", scope: !130, file: !130, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!130 = !DIFile(filename: "src/tl_templates/maca/reduce.h", directory: "/root/tilelang-metax")
!131 = distinct !DILocation(line: 78, column: 20, scope: !40)
!132 = !DILocation(line: 171, column: 37, scope: !133, inlinedAt: !134)
!133 = distinct !DISubprogram(name: "__lane_id", scope: !70, file: !70, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!134 = distinct !DILocation(line: 990, column: 14, scope: !135, inlinedAt: !136)
!135 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !70, file: !70, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!136 = distinct !DILocation(line: 1019, column: 11, scope: !124, inlinedAt: !125)
!137 = !DILocation(line: 171, column: 10, scope: !133, inlinedAt: !134)
!138 = !DILocation(line: 991, column: 20, scope: !135, inlinedAt: !136)
!139 = !DILocation(line: 992, column: 36, scope: !135, inlinedAt: !136)
!140 = !DILocation(line: 992, column: 17, scope: !135, inlinedAt: !136)
!141 = !DILocation(line: 992, column: 11, scope: !135, inlinedAt: !136)
!142 = !DILocation(line: 993, column: 43, scope: !135, inlinedAt: !136)
!143 = !DILocation(line: 993, column: 10, scope: !135, inlinedAt: !136)
!144 = !DILocation(line: 1020, column: 14, scope: !124, inlinedAt: !125)
!145 = !DILocation(line: 306, column: 10, scope: !146, inlinedAt: !147)
!146 = distinct !DISubprogram(name: "fmaxf", scope: !121, file: !121, line: 305, type: !7, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!147 = distinct !DILocation(line: 633, column: 10, scope: !148, inlinedAt: !150)
!148 = distinct !DISubprogram(name: "fast_max<float>", scope: !149, file: !149, line: 632, type: !7, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!149 = !DIFile(filename: "/opt/maca/include/mctlass/fast_math.h", directory: "")
!150 = distinct !DILocation(line: 31, column: 12, scope: !151, inlinedAt: !152)
!151 = distinct !DISubprogram(name: "operator()<float>", scope: !130, file: !130, line: 30, type: !7, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!152 = distinct !DILocation(line: 95, column: 11, scope: !129, inlinedAt: !131)
!153 = !DILocation(line: 1018, column: 9, scope: !124, inlinedAt: !154)
!154 = distinct !DILocation(line: 338, column: 10, scope: !126, inlinedAt: !155)
!155 = distinct !DILocation(line: 95, column: 24, scope: !156, inlinedAt: !157)
!156 = distinct !DISubprogram(name: "run<float>", scope: !130, file: !130, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!157 = distinct !DILocation(line: 100, column: 14, scope: !129, inlinedAt: !131)
!158 = !DILocation(line: 171, column: 37, scope: !133, inlinedAt: !159)
!159 = distinct !DILocation(line: 990, column: 14, scope: !135, inlinedAt: !160)
!160 = distinct !DILocation(line: 1019, column: 11, scope: !124, inlinedAt: !154)
!161 = !DILocation(line: 171, column: 10, scope: !133, inlinedAt: !159)
!162 = !DILocation(line: 991, column: 20, scope: !135, inlinedAt: !160)
!163 = !DILocation(line: 992, column: 36, scope: !135, inlinedAt: !160)
!164 = !DILocation(line: 992, column: 17, scope: !135, inlinedAt: !160)
!165 = !DILocation(line: 992, column: 11, scope: !135, inlinedAt: !160)
!166 = !DILocation(line: 993, column: 43, scope: !135, inlinedAt: !160)
!167 = !DILocation(line: 993, column: 10, scope: !135, inlinedAt: !160)
!168 = !DILocation(line: 1020, column: 14, scope: !124, inlinedAt: !154)
!169 = !DILocation(line: 306, column: 10, scope: !146, inlinedAt: !170)
!170 = distinct !DILocation(line: 633, column: 10, scope: !148, inlinedAt: !171)
!171 = distinct !DILocation(line: 31, column: 12, scope: !151, inlinedAt: !172)
!172 = distinct !DILocation(line: 95, column: 11, scope: !156, inlinedAt: !157)
!173 = !DILocation(line: 81, column: 41, scope: !40)
!174 = !DILocation(line: 81, column: 57, scope: !40)
!175 = !DILocation(line: 285, column: 49, scope: !176, inlinedAt: !177)
!176 = distinct !DISubprogram(name: "exp2f", scope: !121, file: !121, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!177 = distinct !DILocation(line: 81, column: 21, scope: !40)
!178 = !DILocation(line: 86, column: 40, scope: !40)
!179 = !DILocation(line: 1018, column: 9, scope: !124, inlinedAt: !180)
!180 = distinct !DILocation(line: 338, column: 10, scope: !126, inlinedAt: !181)
!181 = distinct !DILocation(line: 95, column: 24, scope: !182, inlinedAt: !183)
!182 = distinct !DISubprogram(name: "run<float>", scope: !130, file: !130, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!183 = distinct !DILocation(line: 88, column: 22, scope: !40)
!184 = !DILocation(line: 171, column: 37, scope: !133, inlinedAt: !185)
!185 = distinct !DILocation(line: 990, column: 14, scope: !135, inlinedAt: !186)
!186 = distinct !DILocation(line: 1019, column: 11, scope: !124, inlinedAt: !180)
!187 = !DILocation(line: 171, column: 10, scope: !133, inlinedAt: !185)
!188 = !DILocation(line: 991, column: 20, scope: !135, inlinedAt: !186)
!189 = !DILocation(line: 992, column: 36, scope: !135, inlinedAt: !186)
!190 = !DILocation(line: 992, column: 17, scope: !135, inlinedAt: !186)
!191 = !DILocation(line: 992, column: 11, scope: !135, inlinedAt: !186)
!192 = !DILocation(line: 993, column: 43, scope: !135, inlinedAt: !186)
!193 = !DILocation(line: 993, column: 10, scope: !135, inlinedAt: !186)
!194 = !DILocation(line: 1020, column: 14, scope: !124, inlinedAt: !180)
!195 = !DILocation(line: 25, column: 14, scope: !196, inlinedAt: !197)
!196 = distinct !DISubprogram(name: "operator()<float>", scope: !130, file: !130, line: 24, type: !7, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!197 = distinct !DILocation(line: 95, column: 11, scope: !182, inlinedAt: !183)
!198 = !DILocation(line: 1018, column: 9, scope: !124, inlinedAt: !199)
!199 = distinct !DILocation(line: 338, column: 10, scope: !126, inlinedAt: !200)
!200 = distinct !DILocation(line: 95, column: 24, scope: !201, inlinedAt: !202)
!201 = distinct !DISubprogram(name: "run<float>", scope: !130, file: !130, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!202 = distinct !DILocation(line: 100, column: 14, scope: !182, inlinedAt: !183)
!203 = !DILocation(line: 171, column: 37, scope: !133, inlinedAt: !204)
!204 = distinct !DILocation(line: 990, column: 14, scope: !135, inlinedAt: !205)
!205 = distinct !DILocation(line: 1019, column: 11, scope: !124, inlinedAt: !199)
!206 = !DILocation(line: 171, column: 10, scope: !133, inlinedAt: !204)
!207 = !DILocation(line: 991, column: 20, scope: !135, inlinedAt: !205)
!208 = !DILocation(line: 992, column: 36, scope: !135, inlinedAt: !205)
!209 = !DILocation(line: 992, column: 17, scope: !135, inlinedAt: !205)
!210 = !DILocation(line: 992, column: 11, scope: !135, inlinedAt: !205)
!211 = !DILocation(line: 993, column: 43, scope: !135, inlinedAt: !205)
!212 = !DILocation(line: 993, column: 10, scope: !135, inlinedAt: !205)
!213 = !DILocation(line: 1020, column: 14, scope: !124, inlinedAt: !199)
!214 = !DILocation(line: 25, column: 14, scope: !196, inlinedAt: !215)
!215 = distinct !DILocation(line: 95, column: 11, scope: !201, inlinedAt: !202)
!216 = !DILocation(line: 91, column: 34, scope: !40)
!217 = !DILocation(line: 1007, column: 10, scope: !218, inlinedAt: !220)
!218 = distinct !DISubprogram(name: "__float2half_rn", scope: !219, file: !219, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!219 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!220 = distinct !DILocation(line: 1077, column: 18, scope: !221, inlinedAt: !222)
!221 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !219, file: !219, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!222 = distinct !DILocation(line: 1295, column: 23, scope: !223, inlinedAt: !224)
!223 = distinct !DISubprogram(name: "__float22half2_rn", scope: !219, file: !219, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!224 = distinct !DILocation(line: 97, column: 29, scope: !40)
!225 = !{!226, !228}
!226 = distinct !{!226, !227, !"_ZL17__floats2half2_rnff: %agg.result"}
!227 = distinct !{!227, !"_ZL17__floats2half2_rnff"}
!228 = distinct !{!228, !229, !"_ZL17__float22half2_rn6float2: %agg.result"}
!229 = distinct !{!229, !"_ZL17__float22half2_rn6float2"}
!230 = !DILocation(line: 1007, column: 10, scope: !218, inlinedAt: !231)
!231 = distinct !DILocation(line: 1077, column: 38, scope: !221, inlinedAt: !222)
!232 = !DILocation(line: 1007, column: 10, scope: !218, inlinedAt: !233)
!233 = distinct !DILocation(line: 1077, column: 18, scope: !221, inlinedAt: !234)
!234 = distinct !DILocation(line: 1295, column: 23, scope: !223, inlinedAt: !235)
!235 = distinct !DILocation(line: 98, column: 29, scope: !40)
!236 = !{!237, !239}
!237 = distinct !{!237, !238, !"_ZL17__floats2half2_rnff: %agg.result"}
!238 = distinct !{!238, !"_ZL17__floats2half2_rnff"}
!239 = distinct !{!239, !240, !"_ZL17__float22half2_rn6float2: %agg.result"}
!240 = distinct !{!240, !"_ZL17__float22half2_rn6float2"}
!241 = !DILocation(line: 1007, column: 10, scope: !218, inlinedAt: !242)
!242 = distinct !DILocation(line: 1077, column: 38, scope: !221, inlinedAt: !234)
!243 = !DILocation(line: 99, column: 42, scope: !40)
!244 = !DILocation(line: 68, column: 3, scope: !69, inlinedAt: !245)
!245 = distinct !DILocation(line: 192, column: 3, scope: !72, inlinedAt: !246)
!246 = distinct !DILocation(line: 101, column: 5, scope: !40)
!247 = !DILocation(line: 69, column: 3, scope: !69, inlinedAt: !245)
!248 = !DILocation(line: 70, column: 3, scope: !69, inlinedAt: !245)
!249 = !DILocation(line: 103, column: 5, scope: !40)
!250 = !DILocation(line: 106, column: 11, scope: !40)
!251 = !DILocation(line: 107, column: 19, scope: !40)
!252 = !DILocation(line: 108, column: 7, scope: !40)
!253 = !DILocation(line: 111, column: 360, scope: !40)
!254 = !DILocation(line: 68, column: 3, scope: !69, inlinedAt: !255)
!255 = distinct !DILocation(line: 192, column: 3, scope: !72, inlinedAt: !256)
!256 = distinct !DILocation(line: 113, column: 5, scope: !40)
!257 = !DILocation(line: 69, column: 3, scope: !69, inlinedAt: !255)
!258 = !DILocation(line: 70, column: 3, scope: !69, inlinedAt: !255)
!259 = !DILocation(line: 114, column: 3, scope: !40)
!260 = !DILocation(line: 120, column: 26, scope: !40)
!261 = !DILocation(line: 139, column: 42, scope: !40)
!262 = !DILocation(line: 139, column: 23, scope: !40)
!263 = !DILocation(line: 125, column: 337, scope: !40)
!264 = !DILocation(line: 125, column: 232, scope: !40)
!265 = !DILocation(line: 125, column: 43, scope: !40)
!266 = !DILocation(line: 125, column: 41, scope: !40)
!267 = !{!26, !26, i64 0}
!268 = !DILocation(line: 125, column: 276, scope: !40)
!269 = !DILocation(line: 130, column: 43, scope: !40)
!270 = !DILocation(line: 136, column: 3, scope: !40)
!271 = !DILocation(line: 143, column: 3, scope: !40)
!272 = !DILocation(line: 145, column: 19, scope: !40)
!273 = !DILocation(line: 1007, column: 10, scope: !218, inlinedAt: !274)
!274 = distinct !DILocation(line: 1077, column: 18, scope: !221, inlinedAt: !275)
!275 = distinct !DILocation(line: 1295, column: 23, scope: !223, inlinedAt: !276)
!276 = distinct !DILocation(line: 146, column: 27, scope: !40)
!277 = !{!278, !280}
!278 = distinct !{!278, !279, !"_ZL17__floats2half2_rnff: %agg.result"}
!279 = distinct !{!279, !"_ZL17__floats2half2_rnff"}
!280 = distinct !{!280, !281, !"_ZL17__float22half2_rn6float2: %agg.result"}
!281 = distinct !{!281, !"_ZL17__float22half2_rn6float2"}
!282 = !DILocation(line: 1007, column: 10, scope: !218, inlinedAt: !283)
!283 = distinct !DILocation(line: 1077, column: 38, scope: !221, inlinedAt: !275)
!284 = !DILocation(line: 596, column: 67, scope: !285, inlinedAt: !286)
!285 = distinct !DISubprogram(name: "__half2", scope: !219, file: !219, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!286 = distinct !DILocation(line: 1077, column: 10, scope: !221, inlinedAt: !275)
!287 = !DILocation(line: 596, column: 73, scope: !285, inlinedAt: !286)
!288 = !DILocation(line: 1007, column: 10, scope: !218, inlinedAt: !289)
!289 = distinct !DILocation(line: 1077, column: 18, scope: !221, inlinedAt: !290)
!290 = distinct !DILocation(line: 1295, column: 23, scope: !223, inlinedAt: !291)
!291 = distinct !DILocation(line: 147, column: 27, scope: !40)
!292 = !{!293, !295}
!293 = distinct !{!293, !294, !"_ZL17__floats2half2_rnff: %agg.result"}
!294 = distinct !{!294, !"_ZL17__floats2half2_rnff"}
!295 = distinct !{!295, !296, !"_ZL17__float22half2_rn6float2: %agg.result"}
!296 = distinct !{!296, !"_ZL17__float22half2_rn6float2"}
!297 = !DILocation(line: 1007, column: 10, scope: !218, inlinedAt: !298)
!298 = distinct !DILocation(line: 1077, column: 38, scope: !221, inlinedAt: !290)
!299 = !DILocation(line: 596, column: 67, scope: !285, inlinedAt: !300)
!300 = distinct !DILocation(line: 1077, column: 10, scope: !221, inlinedAt: !290)
!301 = !DILocation(line: 596, column: 73, scope: !285, inlinedAt: !300)
!302 = !DILocation(line: 148, column: 38, scope: !40)
!303 = !DILocation(line: 149, column: 22, scope: !40)
!304 = !DILocation(line: 149, column: 176, scope: !40)
!305 = !DILocation(line: 151, column: 1, scope: !40)
