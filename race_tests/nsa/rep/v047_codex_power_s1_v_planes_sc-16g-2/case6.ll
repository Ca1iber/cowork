; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v047_codex_power_s1_v_planes_sc-16g-2/case6.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v047_codex_power_s1_v_planes_sc-16g-2/codegen/case6.device.cpp"
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
define protected metaxgpu_kernel void @native_sparse_attention_kernel(ptr addrspace(1) noalias nocapture noundef readonly %Indices.coerce, ptr addrspace(4) noalias nocapture noundef readonly %K.coerce, ptr addrspace(1) noalias nocapture noundef writeonly %Output.coerce, ptr addrspace(4) noalias nocapture noundef readonly %Q.coerce, ptr addrspace(4) noalias nocapture noundef readonly %V.coerce) local_unnamed_addr #3 !dbg !40 {
entry:
  %0 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.y(), !dbg !42, !range !29
  %mul = shl nsw i32 %0, 10, !dbg !46
  %1 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !dbg !47, !range !29
  %add = add nuw nsw i32 %mul, %1, !dbg !50
  %idxprom = zext nneg i32 %add to i64, !dbg !51
  %arrayidx = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %idxprom, !dbg !51
  %2 = load i32, ptr addrspace(1) %arrayidx, align 4, !dbg !51, !tbaa !30
  %mul7 = shl nsw i32 %2, 5, !dbg !52
  %cmp = icmp slt i32 %2, 0, !dbg !53
  %cmp10.not = icmp sgt i32 %mul7, %1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp10.not, !dbg !54
  br i1 %or.cond, label %for.body677.preheader, label %for.cond.preheader, !dbg !54

for.body677.preheader:                            ; preds = %entry
  %.pre = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  %.pre2090 = shl nuw nsw i32 %.pre, 7
  %.pre2091 = lshr i32 %.pre, 5
  %.pre2092 = and i32 %.pre, 7
  %.pre2093 = lshr i32 %.pre, 2
  %.pre2095 = and i32 %.pre2093, 4
  %.pre2096 = shl nuw nsw i32 %.pre, 3
  %.pre2098 = lshr i32 %.pre, 4
  %.pre2099 = shl nsw i32 %0, 21
  %.pre2100 = shl nsw i32 %1, 11
  %.pre2101 = add nuw nsw i32 %.pre2099, %.pre2100
  %.pre2102 = add nuw nsw i32 %.pre2101, %.pre2096
  %.pre2103 = zext nneg i32 %.pre2102 to i64, !dbg !56
  %.pre2105 = add nuw nsw i64 %.pre2103, 512, !dbg !57
  %.pre2107 = add nuw nsw i64 %.pre2103, 1024, !dbg !57
  %.pre2109 = add nuw nsw i64 %.pre2103, 1536, !dbg !57
  br label %if.end687, !dbg !58

for.cond.preheader:                               ; preds = %entry
  %mul13 = shl nsw i32 %0, 21
  %mul15 = shl nsw i32 %1, 11
  %add16 = add nuw nsw i32 %mul13, %mul15
  %3 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  %mul20 = shl nuw nsw i32 %3, 3
  %add18 = add nuw nsw i32 %add16, %mul20
  %4 = shl nuw nsw i32 %3, 7
  %mul23 = and i32 %4, 1024
  %5 = shl nuw nsw i32 %3, 2
  %mul28 = and i32 %5, 4032
  %add25 = add nuw nsw i32 %mul28, %mul23
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
  %add29 = or disjoint i32 %add25, %mul45
  %add37 = or disjoint i32 %add29, %mul54
  %6 = zext nneg i32 %add18 to i64, !dbg !59
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %6, !dbg !60
  %7 = shl nuw nsw i32 %and31, 5, !dbg !61
  %mul36 = and i32 %7, 32, !dbg !61
  %add55 = or disjoint i32 %add37, %mul36, !dbg !62
  %gep = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 16384), i32 %add55, !dbg !63
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr, i64 16, i1 false), !dbg !64, !tbaa.struct !65, !call_argsrelate !66
  %8 = add nuw nsw i64 %6, 512, !dbg !67
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %8, !dbg !60
  %9 = shl nuw nsw i32 %and31, 5, !dbg !61
  %10 = and i32 %9, 32, !dbg !61
  %mul36.1 = xor i32 %10, 32, !dbg !61
  %11 = add nuw nsw i32 %add37, 256, !dbg !68
  %add55.1 = or disjoint i32 %11, %mul36.1, !dbg !62
  %gep.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 16384), i32 %add55.1, !dbg !63
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr.1, i64 16, i1 false), !dbg !64, !tbaa.struct !65, !call_argsrelate !66
  %12 = add nuw nsw i64 %6, 1024, !dbg !67
  %add.ptr.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %12, !dbg !60
  %13 = shl nuw nsw i32 %and31, 5, !dbg !61
  %mul36.2 = and i32 %13, 32, !dbg !61
  %14 = add nuw nsw i32 %add37, 512, !dbg !68
  %add55.2 = or disjoint i32 %14, %mul36.2, !dbg !62
  %gep.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 16384), i32 %add55.2, !dbg !63
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep.2, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr.2, i64 16, i1 false), !dbg !64, !tbaa.struct !65, !call_argsrelate !66
  %15 = add nuw nsw i64 %6, 1536, !dbg !67
  %add.ptr.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %15, !dbg !60
  %16 = shl nuw nsw i32 %and31, 5, !dbg !61
  %17 = and i32 %16, 32, !dbg !61
  %mul36.3 = xor i32 %17, 32, !dbg !61
  %narrow = add nuw nsw i32 %add37, 768, !dbg !68
  %add55.3 = or disjoint i32 %narrow, %mul36.3, !dbg !62
  %gep.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 16384), i32 %add55.3, !dbg !63
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep.3, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr.3, i64 16, i1 false), !dbg !64, !tbaa.struct !65, !call_argsrelate !66
  fence syncscope("warp") release, !dbg !69
  tail call void @llvm.mxc.barrier.warp(), !dbg !75
  fence syncscope("warp") acquire, !dbg !76
  %and67 = shl nuw nsw i32 %3, 6
  %mul68 = and i32 %and67, 960
  %add91 = add nuw nsw i32 %shr39, %3
  %and92 = shl nuw nsw i32 %add91, 3
  %mul93 = and i32 %and92, 8
  %mul98 = and i32 %and31, 4
  %add69 = or disjoint i32 %mul68, %mul98
  %add78 = or disjoint i32 %add69, %mul93
  %and76 = shl nuw nsw i32 %and31, 5, !dbg !77
  %mul77 = and i32 %and76, 32, !dbg !77
  %and84 = shl nuw nsw i32 %and41, 4, !dbg !78
  %mul85 = and i32 %and84, 16, !dbg !78
  %add94 = or disjoint i32 %add78, %mul85, !dbg !79
  %add99 = or disjoint i32 %add94, %mul77, !dbg !80
  %add100 = or disjoint i32 %add99, 8192, !dbg !80
  %add.ptr102 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add100, !dbg !81
  %18 = load <4 x half>, ptr addrspace(3) %add.ptr102, align 8, !dbg !82
  %add83.1 = shl nuw nsw i32 %and41, 4, !dbg !78
  %19 = and i32 %add83.1, 16, !dbg !78
  %mul85.1 = xor i32 %19, 16, !dbg !78
  %add94.1 = or disjoint i32 %add78, %mul85.1, !dbg !79
  %add99.1 = or disjoint i32 %add94.1, %mul77, !dbg !80
  %add100.1 = or disjoint i32 %add99.1, 8192, !dbg !80
  %add.ptr102.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add100.1, !dbg !81
  %20 = load <4 x half>, ptr addrspace(3) %add.ptr102.1, align 8, !dbg !82
  %add75.2 = shl nuw nsw i32 %and31, 5, !dbg !77
  %21 = and i32 %add75.2, 32, !dbg !77
  %mul77.2 = xor i32 %21, 32, !dbg !77
  %add83.2 = shl nuw nsw i32 %and41, 4, !dbg !78
  %mul85.2 = and i32 %add83.2, 16, !dbg !78
  %add94.2 = or disjoint i32 %add78, %mul85.2, !dbg !79
  %add99.2 = or disjoint i32 %add94.2, %mul77.2, !dbg !80
  %add100.2 = or disjoint i32 %add99.2, 8192, !dbg !80
  %add.ptr102.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add100.2, !dbg !81
  %22 = load <4 x half>, ptr addrspace(3) %add.ptr102.2, align 8, !dbg !82
  %add83.3 = shl nuw nsw i32 %and41, 4, !dbg !78
  %23 = and i32 %add83.3, 16, !dbg !78
  %mul85.3 = xor i32 %23, 16, !dbg !78
  %add94.3 = or disjoint i32 %add78, %mul85.3, !dbg !79
  %add99.3 = or disjoint i32 %add94.3, %mul77.2, !dbg !80
  %add100.3 = or disjoint i32 %add99.3, 8192, !dbg !80
  %add.ptr102.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add100.3, !dbg !81
  %24 = load <4 x half>, ptr addrspace(3) %add.ptr102.3, align 8, !dbg !82
  %add75.4 = shl nuw nsw i32 %and31, 5, !dbg !77
  %mul77.4 = and i32 %add75.4, 32, !dbg !77
  %add83.4 = shl nuw nsw i32 %and41, 4, !dbg !78
  %mul85.4 = and i32 %add83.4, 16, !dbg !78
  %add86.4 = or disjoint i32 %add78, 1024, !dbg !83
  %add94.4 = or disjoint i32 %add86.4, %mul85.4, !dbg !79
  %add99.4 = or disjoint i32 %add94.4, %mul77.4, !dbg !80
  %add100.4 = or i32 %add99.4, 8192, !dbg !80
  %add.ptr102.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add100.4, !dbg !81
  %25 = load <4 x half>, ptr addrspace(3) %add.ptr102.4, align 8, !dbg !82
  %add83.5 = shl nuw nsw i32 %and41, 4, !dbg !78
  %26 = and i32 %add83.5, 16, !dbg !78
  %mul85.5 = xor i32 %26, 16, !dbg !78
  %add94.5 = or disjoint i32 %add86.4, %mul85.5, !dbg !79
  %add99.5 = or disjoint i32 %add94.5, %mul77.4, !dbg !80
  %add100.5 = or i32 %add99.5, 8192, !dbg !80
  %add.ptr102.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add100.5, !dbg !81
  %27 = load <4 x half>, ptr addrspace(3) %add.ptr102.5, align 8, !dbg !82
  %add75.6 = shl nuw nsw i32 %and31, 5, !dbg !77
  %28 = and i32 %add75.6, 32, !dbg !77
  %mul77.6 = xor i32 %28, 32, !dbg !77
  %add83.6 = shl nuw nsw i32 %and41, 4, !dbg !78
  %mul85.6 = and i32 %add83.6, 16, !dbg !78
  %add94.6 = or disjoint i32 %add86.4, %mul85.6, !dbg !79
  %add99.6 = or disjoint i32 %add94.6, %mul77.6, !dbg !80
  %add100.6 = or i32 %add99.6, 8192, !dbg !80
  %add.ptr102.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add100.6, !dbg !81
  %29 = load <4 x half>, ptr addrspace(3) %add.ptr102.6, align 8, !dbg !82
  %add83.7 = shl nuw nsw i32 %and41, 4, !dbg !78
  %30 = and i32 %add83.7, 16, !dbg !78
  %mul85.7 = xor i32 %30, 16, !dbg !78
  %add94.7 = or disjoint i32 %add86.4, %mul85.7, !dbg !79
  %add99.7 = or disjoint i32 %add94.7, %mul77.6, !dbg !80
  %add100.7 = or i32 %add99.7, 8192, !dbg !80
  %add.ptr102.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add100.7, !dbg !81
  %31 = load <4 x half>, ptr addrspace(3) %add.ptr102.7, align 8, !dbg !82
  fence syncscope("warp") release, !dbg !84
  tail call void @llvm.mxc.barrier.warp(), !dbg !87
  fence syncscope("warp") acquire, !dbg !88
  %add116 = add nuw nsw i32 %mul7, %and48
  %32 = and i32 %3, 8
  %conv = zext nneg i32 %0 to i64
  %mul122 = shl nuw nsw i64 %conv, 17
  %conv126 = zext nneg i32 %mul7 to i64
  %.idx = shl nuw nsw i64 %conv126, 8
  %invariant.gep = getelementptr inbounds i8, ptr addrspace(4) %K.coerce, i64 %.idx, !dbg !89
  %mul131 = zext nneg i32 %mul20 to i64
  %invariant.gep1014 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %mul131, !dbg !89
  %cmp119 = icmp ult i32 %add116, 1024, !dbg !90
  br i1 %cmp119, label %if.then120, label %if.end, !dbg !91

if.then120:                                       ; preds = %for.cond.preheader
  %gep1015 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep1014, i64 %mul122
  %condval.sroa.7.0.add.ptr133.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1015, i64 12
  %condval.sroa.6.0.add.ptr133.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1015, i64 8
  %condval.sroa.5.0.add.ptr133.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1015, i64 4
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep1015, align 16, !dbg !92, !tbaa !30
  %condval.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr133.sroa_idx, align 4, !dbg !92, !tbaa !30
  %condval.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr133.sroa_idx, align 8, !dbg !92, !tbaa !30
  %condval.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr133.sroa_idx, align 4, !dbg !92, !tbaa !30
  br label %if.end, !dbg !93

if.end:                                           ; preds = %for.cond.preheader, %if.then120
  %condval.sroa.0.0 = phi i32 [ %condval.sroa.0.0.copyload, %if.then120 ], [ 0, %for.cond.preheader ], !dbg !94
  %condval.sroa.5.0 = phi i32 [ %condval.sroa.5.0.copyload, %if.then120 ], [ 0, %for.cond.preheader ], !dbg !94
  %condval.sroa.6.0 = phi i32 [ %condval.sroa.6.0.copyload, %if.then120 ], [ 0, %for.cond.preheader ], !dbg !94
  %condval.sroa.7.0 = phi i32 [ %condval.sroa.7.0.copyload, %if.then120 ], [ 0, %for.cond.preheader ], !dbg !94
  %33 = shl nuw nsw i32 %32, 8, !dbg !95
  %34 = add nuw nsw i32 %33, %mul28, !dbg !96
  %add170 = or disjoint i32 %34, %mul36, !dbg !97
  %add179 = or disjoint i32 %add170, %mul45, !dbg !98
  %add188 = or disjoint i32 %add179, %mul54, !dbg !99
  %add.ptr190 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add188, !dbg !100
  store i32 %condval.sroa.0.0, ptr addrspace(3) %add.ptr190, align 16, !dbg !101, !tbaa !30
  %condval.sroa.5.0.add.ptr190.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190, i32 4, !dbg !101
  store i32 %condval.sroa.5.0, ptr addrspace(3) %condval.sroa.5.0.add.ptr190.sroa_idx, align 4, !dbg !101, !tbaa !30
  %condval.sroa.6.0.add.ptr190.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190, i32 8, !dbg !101
  store i32 %condval.sroa.6.0, ptr addrspace(3) %condval.sroa.6.0.add.ptr190.sroa_idx, align 8, !dbg !101, !tbaa !30
  %condval.sroa.7.0.add.ptr190.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190, i32 12, !dbg !101
  store i32 %condval.sroa.7.0, ptr addrspace(3) %condval.sroa.7.0.add.ptr190.sroa_idx, align 4, !dbg !101, !tbaa !30
  %cmp119.1 = icmp ult i32 %add116, 1020, !dbg !90
  br i1 %cmp119.1, label %if.then120.1, label %if.end.1, !dbg !91

if.then120.1:                                     ; preds = %if.end
  %add125.1 = or disjoint i64 %mul122, 512
  %gep1015.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep1014, i64 %add125.1
  %condval.sroa.7.0.add.ptr133.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1015.1, i64 12
  %condval.sroa.6.0.add.ptr133.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1015.1, i64 8
  %condval.sroa.5.0.add.ptr133.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1015.1, i64 4
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep1015.1, align 16, !dbg !92, !tbaa !30
  %condval.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr133.sroa_idx.1, align 4, !dbg !92, !tbaa !30
  %condval.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr133.sroa_idx.1, align 8, !dbg !92, !tbaa !30
  %condval.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr133.sroa_idx.1, align 4, !dbg !92, !tbaa !30
  br label %if.end.1, !dbg !93

if.end.1:                                         ; preds = %if.then120.1, %if.end
  %condval.sroa.0.0.1 = phi i32 [ %condval.sroa.0.0.copyload.1, %if.then120.1 ], [ 0, %if.end ], !dbg !94
  %condval.sroa.5.0.1 = phi i32 [ %condval.sroa.5.0.copyload.1, %if.then120.1 ], [ 0, %if.end ], !dbg !94
  %condval.sroa.6.0.1 = phi i32 [ %condval.sroa.6.0.copyload.1, %if.then120.1 ], [ 0, %if.end ], !dbg !94
  %condval.sroa.7.0.1 = phi i32 [ %condval.sroa.7.0.copyload.1, %if.then120.1 ], [ 0, %if.end ], !dbg !94
  %35 = shl nuw nsw i32 %32, 8, !dbg !95
  %36 = or disjoint i32 %35, 256, !dbg !95
  %37 = add nuw nsw i32 %36, %mul28, !dbg !96
  %add170.1 = or disjoint i32 %37, %mul36.1, !dbg !97
  %add179.1 = or disjoint i32 %add170.1, %mul45, !dbg !98
  %add188.1 = or disjoint i32 %add179.1, %mul54, !dbg !99
  %add.ptr190.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add188.1, !dbg !100
  store i32 %condval.sroa.0.0.1, ptr addrspace(3) %add.ptr190.1, align 16, !dbg !101, !tbaa !30
  %condval.sroa.5.0.add.ptr190.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190.1, i32 4, !dbg !101
  store i32 %condval.sroa.5.0.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr190.sroa_idx.1, align 4, !dbg !101, !tbaa !30
  %condval.sroa.6.0.add.ptr190.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190.1, i32 8, !dbg !101
  store i32 %condval.sroa.6.0.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr190.sroa_idx.1, align 8, !dbg !101, !tbaa !30
  %condval.sroa.7.0.add.ptr190.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190.1, i32 12, !dbg !101
  store i32 %condval.sroa.7.0.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr190.sroa_idx.1, align 4, !dbg !101, !tbaa !30
  %cmp119.2 = icmp ult i32 %add116, 1016, !dbg !90
  br i1 %cmp119.2, label %if.then120.2, label %if.end.2, !dbg !91

if.then120.2:                                     ; preds = %if.end.1
  %add125.2 = or disjoint i64 %mul122, 1024
  %gep1015.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep1014, i64 %add125.2
  %condval.sroa.7.0.add.ptr133.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1015.2, i64 12
  %condval.sroa.6.0.add.ptr133.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1015.2, i64 8
  %condval.sroa.5.0.add.ptr133.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1015.2, i64 4
  %condval.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %gep1015.2, align 16, !dbg !92, !tbaa !30
  %condval.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr133.sroa_idx.2, align 4, !dbg !92, !tbaa !30
  %condval.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr133.sroa_idx.2, align 8, !dbg !92, !tbaa !30
  %condval.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr133.sroa_idx.2, align 4, !dbg !92, !tbaa !30
  br label %if.end.2, !dbg !93

if.end.2:                                         ; preds = %if.then120.2, %if.end.1
  %condval.sroa.0.0.2 = phi i32 [ %condval.sroa.0.0.copyload.2, %if.then120.2 ], [ 0, %if.end.1 ], !dbg !94
  %condval.sroa.5.0.2 = phi i32 [ %condval.sroa.5.0.copyload.2, %if.then120.2 ], [ 0, %if.end.1 ], !dbg !94
  %condval.sroa.6.0.2 = phi i32 [ %condval.sroa.6.0.copyload.2, %if.then120.2 ], [ 0, %if.end.1 ], !dbg !94
  %condval.sroa.7.0.2 = phi i32 [ %condval.sroa.7.0.copyload.2, %if.then120.2 ], [ 0, %if.end.1 ], !dbg !94
  %38 = shl nuw nsw i32 %32, 8, !dbg !95
  %39 = or disjoint i32 %38, 512, !dbg !95
  %40 = add nuw nsw i32 %39, %mul28, !dbg !96
  %add170.2 = or disjoint i32 %40, %mul36.2, !dbg !97
  %add179.2 = or disjoint i32 %add170.2, %mul45, !dbg !98
  %add188.2 = or disjoint i32 %add179.2, %mul54, !dbg !99
  %add.ptr190.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add188.2, !dbg !100
  store i32 %condval.sroa.0.0.2, ptr addrspace(3) %add.ptr190.2, align 16, !dbg !101, !tbaa !30
  %condval.sroa.5.0.add.ptr190.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190.2, i32 4, !dbg !101
  store i32 %condval.sroa.5.0.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr190.sroa_idx.2, align 4, !dbg !101, !tbaa !30
  %condval.sroa.6.0.add.ptr190.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190.2, i32 8, !dbg !101
  store i32 %condval.sroa.6.0.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr190.sroa_idx.2, align 8, !dbg !101, !tbaa !30
  %condval.sroa.7.0.add.ptr190.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190.2, i32 12, !dbg !101
  store i32 %condval.sroa.7.0.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr190.sroa_idx.2, align 4, !dbg !101, !tbaa !30
  %cmp119.3 = icmp ult i32 %add116, 1012, !dbg !90
  br i1 %cmp119.3, label %if.then120.3, label %if.end.3, !dbg !91

if.then120.3:                                     ; preds = %if.end.2
  %add125.3 = or disjoint i64 %mul122, 1536
  %gep1015.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep1014, i64 %add125.3
  %condval.sroa.7.0.add.ptr133.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1015.3, i64 12
  %condval.sroa.6.0.add.ptr133.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1015.3, i64 8
  %condval.sroa.5.0.add.ptr133.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1015.3, i64 4
  %condval.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %gep1015.3, align 16, !dbg !92, !tbaa !30
  %condval.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr133.sroa_idx.3, align 4, !dbg !92, !tbaa !30
  %condval.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr133.sroa_idx.3, align 8, !dbg !92, !tbaa !30
  %condval.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr133.sroa_idx.3, align 4, !dbg !92, !tbaa !30
  br label %if.end.3, !dbg !93

if.end.3:                                         ; preds = %if.then120.3, %if.end.2
  %condval.sroa.0.0.3 = phi i32 [ %condval.sroa.0.0.copyload.3, %if.then120.3 ], [ 0, %if.end.2 ], !dbg !94
  %condval.sroa.5.0.3 = phi i32 [ %condval.sroa.5.0.copyload.3, %if.then120.3 ], [ 0, %if.end.2 ], !dbg !94
  %condval.sroa.6.0.3 = phi i32 [ %condval.sroa.6.0.copyload.3, %if.then120.3 ], [ 0, %if.end.2 ], !dbg !94
  %condval.sroa.7.0.3 = phi i32 [ %condval.sroa.7.0.copyload.3, %if.then120.3 ], [ 0, %if.end.2 ], !dbg !94
  %41 = shl nuw nsw i32 %32, 8, !dbg !95
  %42 = or disjoint i32 %41, 768, !dbg !95
  %43 = add nuw nsw i32 %42, %mul28, !dbg !96
  %add170.3 = or disjoint i32 %43, %mul36.3, !dbg !97
  %add179.3 = or disjoint i32 %add170.3, %mul45, !dbg !98
  %add188.3 = or disjoint i32 %add179.3, %mul54, !dbg !99
  %add.ptr190.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add188.3, !dbg !100
  store i32 %condval.sroa.0.0.3, ptr addrspace(3) %add.ptr190.3, align 16, !dbg !101, !tbaa !30
  %condval.sroa.5.0.add.ptr190.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190.3, i32 4, !dbg !101
  store i32 %condval.sroa.5.0.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr190.sroa_idx.3, align 4, !dbg !101, !tbaa !30
  %condval.sroa.6.0.add.ptr190.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190.3, i32 8, !dbg !101
  store i32 %condval.sroa.6.0.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr190.sroa_idx.3, align 8, !dbg !101, !tbaa !30
  %condval.sroa.7.0.add.ptr190.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190.3, i32 12, !dbg !101
  store i32 %condval.sroa.7.0.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr190.sroa_idx.3, align 4, !dbg !101, !tbaa !30
  %cmp119.4 = icmp ult i32 %add116, 1008, !dbg !90
  br i1 %cmp119.4, label %if.then120.4, label %if.end.4, !dbg !91

if.then120.4:                                     ; preds = %if.end.3
  %add125.4 = or disjoint i64 %mul122, 2048
  %gep1015.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep1014, i64 %add125.4
  %condval.sroa.7.0.add.ptr133.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1015.4, i64 12
  %condval.sroa.6.0.add.ptr133.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1015.4, i64 8
  %condval.sroa.5.0.add.ptr133.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1015.4, i64 4
  %condval.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %gep1015.4, align 16, !dbg !92, !tbaa !30
  %condval.sroa.5.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr133.sroa_idx.4, align 4, !dbg !92, !tbaa !30
  %condval.sroa.6.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr133.sroa_idx.4, align 8, !dbg !92, !tbaa !30
  %condval.sroa.7.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr133.sroa_idx.4, align 4, !dbg !92, !tbaa !30
  br label %if.end.4, !dbg !93

if.end.4:                                         ; preds = %if.then120.4, %if.end.3
  %condval.sroa.0.0.4 = phi i32 [ %condval.sroa.0.0.copyload.4, %if.then120.4 ], [ 0, %if.end.3 ], !dbg !94
  %condval.sroa.5.0.4 = phi i32 [ %condval.sroa.5.0.copyload.4, %if.then120.4 ], [ 0, %if.end.3 ], !dbg !94
  %condval.sroa.6.0.4 = phi i32 [ %condval.sroa.6.0.copyload.4, %if.then120.4 ], [ 0, %if.end.3 ], !dbg !94
  %condval.sroa.7.0.4 = phi i32 [ %condval.sroa.7.0.copyload.4, %if.then120.4 ], [ 0, %if.end.3 ], !dbg !94
  %44 = shl nuw nsw i32 %32, 8, !dbg !95
  %45 = or disjoint i32 %44, 1024, !dbg !95
  %46 = add nuw nsw i32 %45, %mul28, !dbg !96
  %47 = shl nuw nsw i32 %and31, 5, !dbg !102
  %mul169.4 = and i32 %47, 32, !dbg !102
  %add170.4 = or disjoint i32 %46, %mul169.4, !dbg !97
  %add179.4 = or disjoint i32 %add170.4, %mul45, !dbg !98
  %add188.4 = or disjoint i32 %add179.4, %mul54, !dbg !99
  %add.ptr190.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add188.4, !dbg !100
  store i32 %condval.sroa.0.0.4, ptr addrspace(3) %add.ptr190.4, align 16, !dbg !101, !tbaa !30
  %condval.sroa.5.0.add.ptr190.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190.4, i32 4, !dbg !101
  store i32 %condval.sroa.5.0.4, ptr addrspace(3) %condval.sroa.5.0.add.ptr190.sroa_idx.4, align 4, !dbg !101, !tbaa !30
  %condval.sroa.6.0.add.ptr190.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190.4, i32 8, !dbg !101
  store i32 %condval.sroa.6.0.4, ptr addrspace(3) %condval.sroa.6.0.add.ptr190.sroa_idx.4, align 8, !dbg !101, !tbaa !30
  %condval.sroa.7.0.add.ptr190.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190.4, i32 12, !dbg !101
  store i32 %condval.sroa.7.0.4, ptr addrspace(3) %condval.sroa.7.0.add.ptr190.sroa_idx.4, align 4, !dbg !101, !tbaa !30
  %cmp119.5 = icmp ult i32 %add116, 1004, !dbg !90
  br i1 %cmp119.5, label %if.then120.5, label %if.end.5, !dbg !91

if.then120.5:                                     ; preds = %if.end.4
  %add125.5 = or disjoint i64 %mul122, 2560
  %gep1015.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep1014, i64 %add125.5
  %condval.sroa.7.0.add.ptr133.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1015.5, i64 12
  %condval.sroa.6.0.add.ptr133.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1015.5, i64 8
  %condval.sroa.5.0.add.ptr133.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1015.5, i64 4
  %condval.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %gep1015.5, align 16, !dbg !92, !tbaa !30
  %condval.sroa.5.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr133.sroa_idx.5, align 4, !dbg !92, !tbaa !30
  %condval.sroa.6.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr133.sroa_idx.5, align 8, !dbg !92, !tbaa !30
  %condval.sroa.7.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr133.sroa_idx.5, align 4, !dbg !92, !tbaa !30
  br label %if.end.5, !dbg !93

if.end.5:                                         ; preds = %if.then120.5, %if.end.4
  %condval.sroa.0.0.5 = phi i32 [ %condval.sroa.0.0.copyload.5, %if.then120.5 ], [ 0, %if.end.4 ], !dbg !94
  %condval.sroa.5.0.5 = phi i32 [ %condval.sroa.5.0.copyload.5, %if.then120.5 ], [ 0, %if.end.4 ], !dbg !94
  %condval.sroa.6.0.5 = phi i32 [ %condval.sroa.6.0.copyload.5, %if.then120.5 ], [ 0, %if.end.4 ], !dbg !94
  %condval.sroa.7.0.5 = phi i32 [ %condval.sroa.7.0.copyload.5, %if.then120.5 ], [ 0, %if.end.4 ], !dbg !94
  %48 = shl nuw nsw i32 %32, 8, !dbg !95
  %49 = or disjoint i32 %48, 1280, !dbg !95
  %50 = add nuw nsw i32 %49, %mul28, !dbg !96
  %51 = shl nuw nsw i32 %and31, 5, !dbg !102
  %52 = and i32 %51, 32, !dbg !102
  %53 = or disjoint i32 %52, %50, !dbg !97
  %54 = or disjoint i32 %53, %mul45, !dbg !98
  %55 = or disjoint i32 %54, %mul54, !dbg !99
  %add188.5 = xor i32 %55, 32, !dbg !99
  %add.ptr190.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add188.5, !dbg !100
  store i32 %condval.sroa.0.0.5, ptr addrspace(3) %add.ptr190.5, align 16, !dbg !101, !tbaa !30
  %condval.sroa.5.0.add.ptr190.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190.5, i32 4, !dbg !101
  store i32 %condval.sroa.5.0.5, ptr addrspace(3) %condval.sroa.5.0.add.ptr190.sroa_idx.5, align 4, !dbg !101, !tbaa !30
  %condval.sroa.6.0.add.ptr190.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190.5, i32 8, !dbg !101
  store i32 %condval.sroa.6.0.5, ptr addrspace(3) %condval.sroa.6.0.add.ptr190.sroa_idx.5, align 8, !dbg !101, !tbaa !30
  %condval.sroa.7.0.add.ptr190.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190.5, i32 12, !dbg !101
  store i32 %condval.sroa.7.0.5, ptr addrspace(3) %condval.sroa.7.0.add.ptr190.sroa_idx.5, align 4, !dbg !101, !tbaa !30
  %cmp119.6 = icmp ult i32 %add116, 1000, !dbg !90
  br i1 %cmp119.6, label %if.then120.6, label %if.end.6, !dbg !91

if.then120.6:                                     ; preds = %if.end.5
  %add125.6 = or disjoint i64 %mul122, 3072
  %gep1015.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep1014, i64 %add125.6
  %condval.sroa.7.0.add.ptr133.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1015.6, i64 12
  %condval.sroa.6.0.add.ptr133.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1015.6, i64 8
  %condval.sroa.5.0.add.ptr133.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1015.6, i64 4
  %condval.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %gep1015.6, align 16, !dbg !92, !tbaa !30
  %condval.sroa.5.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr133.sroa_idx.6, align 4, !dbg !92, !tbaa !30
  %condval.sroa.6.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr133.sroa_idx.6, align 8, !dbg !92, !tbaa !30
  %condval.sroa.7.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr133.sroa_idx.6, align 4, !dbg !92, !tbaa !30
  br label %if.end.6, !dbg !93

if.end.6:                                         ; preds = %if.then120.6, %if.end.5
  %condval.sroa.0.0.6 = phi i32 [ %condval.sroa.0.0.copyload.6, %if.then120.6 ], [ 0, %if.end.5 ], !dbg !94
  %condval.sroa.5.0.6 = phi i32 [ %condval.sroa.5.0.copyload.6, %if.then120.6 ], [ 0, %if.end.5 ], !dbg !94
  %condval.sroa.6.0.6 = phi i32 [ %condval.sroa.6.0.copyload.6, %if.then120.6 ], [ 0, %if.end.5 ], !dbg !94
  %condval.sroa.7.0.6 = phi i32 [ %condval.sroa.7.0.copyload.6, %if.then120.6 ], [ 0, %if.end.5 ], !dbg !94
  %56 = shl nuw nsw i32 %32, 8, !dbg !95
  %57 = or disjoint i32 %56, 1536, !dbg !95
  %58 = add nuw nsw i32 %57, %mul28, !dbg !96
  %59 = shl nuw nsw i32 %and31, 5, !dbg !102
  %mul169.6 = and i32 %59, 32, !dbg !102
  %add170.6 = or disjoint i32 %58, %mul169.6, !dbg !97
  %add179.6 = or disjoint i32 %add170.6, %mul45, !dbg !98
  %add188.6 = or disjoint i32 %add179.6, %mul54, !dbg !99
  %add.ptr190.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add188.6, !dbg !100
  store i32 %condval.sroa.0.0.6, ptr addrspace(3) %add.ptr190.6, align 16, !dbg !101, !tbaa !30
  %condval.sroa.5.0.add.ptr190.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190.6, i32 4, !dbg !101
  store i32 %condval.sroa.5.0.6, ptr addrspace(3) %condval.sroa.5.0.add.ptr190.sroa_idx.6, align 4, !dbg !101, !tbaa !30
  %condval.sroa.6.0.add.ptr190.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190.6, i32 8, !dbg !101
  store i32 %condval.sroa.6.0.6, ptr addrspace(3) %condval.sroa.6.0.add.ptr190.sroa_idx.6, align 8, !dbg !101, !tbaa !30
  %condval.sroa.7.0.add.ptr190.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190.6, i32 12, !dbg !101
  store i32 %condval.sroa.7.0.6, ptr addrspace(3) %condval.sroa.7.0.add.ptr190.sroa_idx.6, align 4, !dbg !101, !tbaa !30
  %cmp119.7 = icmp ult i32 %add116, 996, !dbg !90
  br i1 %cmp119.7, label %if.then120.7, label %if.end.7, !dbg !91

if.then120.7:                                     ; preds = %if.end.6
  %add125.7 = or disjoint i64 %mul122, 3584
  %gep1015.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep1014, i64 %add125.7
  %condval.sroa.7.0.add.ptr133.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1015.7, i64 12
  %condval.sroa.6.0.add.ptr133.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1015.7, i64 8
  %condval.sroa.5.0.add.ptr133.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1015.7, i64 4
  %condval.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %gep1015.7, align 16, !dbg !92, !tbaa !30
  %condval.sroa.5.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr133.sroa_idx.7, align 4, !dbg !92, !tbaa !30
  %condval.sroa.6.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr133.sroa_idx.7, align 8, !dbg !92, !tbaa !30
  %condval.sroa.7.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr133.sroa_idx.7, align 4, !dbg !92, !tbaa !30
  br label %if.end.7, !dbg !93

if.end.7:                                         ; preds = %if.then120.7, %if.end.6
  %condval.sroa.0.0.7 = phi i32 [ %condval.sroa.0.0.copyload.7, %if.then120.7 ], [ 0, %if.end.6 ], !dbg !94
  %condval.sroa.5.0.7 = phi i32 [ %condval.sroa.5.0.copyload.7, %if.then120.7 ], [ 0, %if.end.6 ], !dbg !94
  %condval.sroa.6.0.7 = phi i32 [ %condval.sroa.6.0.copyload.7, %if.then120.7 ], [ 0, %if.end.6 ], !dbg !94
  %condval.sroa.7.0.7 = phi i32 [ %condval.sroa.7.0.copyload.7, %if.then120.7 ], [ 0, %if.end.6 ], !dbg !94
  %60 = shl nuw nsw i32 %32, 8, !dbg !95
  %61 = or disjoint i32 %60, 1792, !dbg !95
  %narrow2112 = add nuw nsw i32 %61, %mul28, !dbg !96
  %narrow2113 = shl nuw nsw i32 %and31, 5, !dbg !102
  %62 = and i32 %narrow2113, 32, !dbg !102
  %63 = or disjoint i32 %62, %narrow2112, !dbg !97
  %64 = or disjoint i32 %63, %mul45, !dbg !98
  %65 = or disjoint i32 %64, %mul54, !dbg !99
  %add188.7 = xor i32 %65, 32, !dbg !99
  %add.ptr190.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add188.7, !dbg !100
  store i32 %condval.sroa.0.0.7, ptr addrspace(3) %add.ptr190.7, align 16, !dbg !101, !tbaa !30
  %condval.sroa.5.0.add.ptr190.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190.7, i32 4, !dbg !101
  store i32 %condval.sroa.5.0.7, ptr addrspace(3) %condval.sroa.5.0.add.ptr190.sroa_idx.7, align 4, !dbg !101, !tbaa !30
  %condval.sroa.6.0.add.ptr190.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190.7, i32 8, !dbg !101
  store i32 %condval.sroa.6.0.7, ptr addrspace(3) %condval.sroa.6.0.add.ptr190.sroa_idx.7, align 8, !dbg !101, !tbaa !30
  %condval.sroa.7.0.add.ptr190.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr190.7, i32 12, !dbg !101
  store i32 %condval.sroa.7.0.7, ptr addrspace(3) %condval.sroa.7.0.add.ptr190.sroa_idx.7, align 4, !dbg !101, !tbaa !30
  fence syncscope("warp") release, !dbg !103
  tail call void @llvm.mxc.barrier.warp(), !dbg !106
  fence syncscope("warp") acquire, !dbg !107
  %add233 = or disjoint i32 %mul68, %mul77, !dbg !108
  %add241 = or disjoint i32 %add233, %mul85, !dbg !109
  %add249 = or disjoint i32 %add241, %mul93, !dbg !110
  %add254 = or disjoint i32 %add249, %mul98, !dbg !111
  %add.ptr256 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add254, !dbg !112
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr256, align 8, !dbg !113
  %66 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %18, <4 x float> zeroinitializer), !dbg !114
  %add224.1 = or disjoint i32 %mul68, 1024, !dbg !115
  %add233.1 = or disjoint i32 %add224.1, %mul77, !dbg !108
  %add241.1 = or disjoint i32 %add233.1, %mul85, !dbg !109
  %add249.1 = or disjoint i32 %add241.1, %mul93, !dbg !110
  %add254.1 = or disjoint i32 %add249.1, %mul98, !dbg !111
  %add.ptr256.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add254.1, !dbg !112
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr256.1, align 8, !dbg !113
  %67 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %18, <4 x float> zeroinitializer), !dbg !114
  %add241.11066 = or disjoint i32 %add233, %mul85.1, !dbg !109
  %add249.11067 = or disjoint i32 %add241.11066, %mul93, !dbg !110
  %add254.11068 = or disjoint i32 %add249.11067, %mul98, !dbg !111
  %add.ptr256.11069 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add254.11068, !dbg !112
  %k_local.sroa.0.0.copyload.11070 = load <4 x half>, ptr addrspace(3) %add.ptr256.11069, align 8, !dbg !113
  %68 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11070, <4 x half> %20, <4 x float> %66), !dbg !114
  %add241.1.1 = or disjoint i32 %add233.1, %mul85.1, !dbg !109
  %add249.1.1 = or disjoint i32 %add241.1.1, %mul93, !dbg !110
  %add254.1.1 = or disjoint i32 %add249.1.1, %mul98, !dbg !111
  %add.ptr256.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add254.1.1, !dbg !112
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr256.1.1, align 8, !dbg !113
  %69 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %20, <4 x float> %67), !dbg !114
  %add233.2 = or disjoint i32 %mul68, %mul77.2, !dbg !108
  %add241.2 = or disjoint i32 %add233.2, %mul85.2, !dbg !109
  %add249.2 = or disjoint i32 %add241.2, %mul93, !dbg !110
  %add254.2 = or disjoint i32 %add249.2, %mul98, !dbg !111
  %add.ptr256.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add254.2, !dbg !112
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr256.2, align 8, !dbg !113
  %70 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %22, <4 x float> %68), !dbg !114
  %add233.1.2 = or disjoint i32 %add224.1, %mul77.2, !dbg !108
  %add241.1.2 = or disjoint i32 %add233.1.2, %mul85.2, !dbg !109
  %add249.1.2 = or disjoint i32 %add241.1.2, %mul93, !dbg !110
  %add254.1.2 = or disjoint i32 %add249.1.2, %mul98, !dbg !111
  %add.ptr256.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add254.1.2, !dbg !112
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr256.1.2, align 8, !dbg !113
  %71 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %22, <4 x float> %69), !dbg !114
  %add241.3 = or disjoint i32 %add233.2, %mul85.3, !dbg !109
  %add249.3 = or disjoint i32 %add241.3, %mul93, !dbg !110
  %add254.3 = or disjoint i32 %add249.3, %mul98, !dbg !111
  %add.ptr256.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add254.3, !dbg !112
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr256.3, align 8, !dbg !113
  %72 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %24, <4 x float> %70), !dbg !114
  %add241.1.3 = or disjoint i32 %add233.1.2, %mul85.3, !dbg !109
  %add249.1.3 = or disjoint i32 %add241.1.3, %mul93, !dbg !110
  %add254.1.3 = or disjoint i32 %add249.1.3, %mul98, !dbg !111
  %add.ptr256.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add254.1.3, !dbg !112
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr256.1.3, align 8, !dbg !113
  %73 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %24, <4 x float> %71), !dbg !114
  %add224.4 = or disjoint i32 %mul68, 2048, !dbg !115
  %add233.4 = or disjoint i32 %add224.4, %mul77.4, !dbg !108
  %add241.4 = or disjoint i32 %add233.4, %mul85.4, !dbg !109
  %add249.4 = or disjoint i32 %add241.4, %mul93, !dbg !110
  %add254.4 = or disjoint i32 %add249.4, %mul98, !dbg !111
  %add.ptr256.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add254.4, !dbg !112
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %add.ptr256.4, align 8, !dbg !113
  %74 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %25, <4 x float> %72), !dbg !114
  %add224.1.4 = or disjoint i32 %mul68, 3072, !dbg !115
  %add233.1.4 = or disjoint i32 %add224.1.4, %mul77.4, !dbg !108
  %add241.1.4 = or disjoint i32 %add233.1.4, %mul85.4, !dbg !109
  %add249.1.4 = or disjoint i32 %add241.1.4, %mul93, !dbg !110
  %add254.1.4 = or disjoint i32 %add249.1.4, %mul98, !dbg !111
  %add.ptr256.1.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add254.1.4, !dbg !112
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr256.1.4, align 8, !dbg !113
  %75 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %25, <4 x float> %73), !dbg !114
  %add241.5 = or disjoint i32 %add233.4, %mul85.5, !dbg !109
  %add249.5 = or disjoint i32 %add241.5, %mul93, !dbg !110
  %add254.5 = or disjoint i32 %add249.5, %mul98, !dbg !111
  %add.ptr256.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add254.5, !dbg !112
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %add.ptr256.5, align 8, !dbg !113
  %76 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %27, <4 x float> %74), !dbg !114
  %add241.1.5 = or disjoint i32 %add233.1.4, %mul85.5, !dbg !109
  %add249.1.5 = or disjoint i32 %add241.1.5, %mul93, !dbg !110
  %add254.1.5 = or disjoint i32 %add249.1.5, %mul98, !dbg !111
  %add.ptr256.1.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add254.1.5, !dbg !112
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr256.1.5, align 8, !dbg !113
  %77 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %27, <4 x float> %75), !dbg !114
  %add233.6 = or disjoint i32 %add224.4, %mul77.6, !dbg !108
  %add241.6 = or disjoint i32 %add233.6, %mul85.6, !dbg !109
  %add249.6 = or disjoint i32 %add241.6, %mul93, !dbg !110
  %add254.6 = or disjoint i32 %add249.6, %mul98, !dbg !111
  %add.ptr256.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add254.6, !dbg !112
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %add.ptr256.6, align 8, !dbg !113
  %78 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %29, <4 x float> %76), !dbg !114
  %add233.1.6 = or disjoint i32 %add224.1.4, %mul77.6, !dbg !108
  %add241.1.6 = or disjoint i32 %add233.1.6, %mul85.6, !dbg !109
  %add249.1.6 = or disjoint i32 %add241.1.6, %mul93, !dbg !110
  %add254.1.6 = or disjoint i32 %add249.1.6, %mul98, !dbg !111
  %add.ptr256.1.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add254.1.6, !dbg !112
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr256.1.6, align 8, !dbg !113
  %79 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %29, <4 x float> %77), !dbg !114
  %add241.7 = or disjoint i32 %add233.6, %mul85.7, !dbg !109
  %add249.7 = or disjoint i32 %add241.7, %mul93, !dbg !110
  %add254.7 = or disjoint i32 %add249.7, %mul98, !dbg !111
  %add.ptr256.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add254.7, !dbg !112
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %add.ptr256.7, align 8, !dbg !113
  %80 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %31, <4 x float> %78), !dbg !114
  %add241.1.7 = or disjoint i32 %add233.1.6, %mul85.7, !dbg !109
  %add249.1.7 = or disjoint i32 %add241.1.7, %mul93, !dbg !110
  %add254.1.7 = or disjoint i32 %add249.1.7, %mul98, !dbg !111
  %add.ptr256.1.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add254.1.7, !dbg !112
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr256.1.7, align 8, !dbg !113
  %81 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %31, <4 x float> %79), !dbg !114
  %mul287 = and i32 %and31, 252
  %add288 = add nuw nsw i32 %mul7, %mul287
  %cmp292.not = icmp sgt i32 %add288, %1, !dbg !116
  %scores.sroa.0.0.vec.extract = extractelement <4 x float> %80, i64 0
  %spec.select = select i1 %cmp292.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract, !dbg !117
  %cmp292.not.1.not = icmp slt i32 %add288, %1, !dbg !116
  %scores.sroa.0.4.vec.extract = extractelement <4 x float> %80, i64 1, !dbg !117
  %condval_1.0.1 = select i1 %cmp292.not.1.not, float %scores.sroa.0.4.vec.extract, float 0xFFF0000000000000, !dbg !117
  %add290.2 = or disjoint i32 %add288, 2, !dbg !118
  %cmp292.not.2 = icmp sgt i32 %add290.2, %1, !dbg !116
  %scores.sroa.0.8.vec.extract = extractelement <4 x float> %80, i64 2, !dbg !117
  %condval_1.0.2 = select i1 %cmp292.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract, !dbg !117
  %add290.3 = or disjoint i32 %add288, 3, !dbg !118
  %cmp292.not.3 = icmp sgt i32 %add290.3, %1, !dbg !116
  %scores.sroa.0.12.vec.extract = extractelement <4 x float> %80, i64 3, !dbg !117
  %condval_1.0.3 = select i1 %cmp292.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract, !dbg !117
  %add289.1 = add nuw nsw i32 %add288, 16
  %cmp292.not.11071 = icmp sgt i32 %add289.1, %1, !dbg !116
  %scores.sroa.38.16.vec.extract = extractelement <4 x float> %81, i64 0, !dbg !117
  %condval_1.0.11074 = select i1 %cmp292.not.11071, float 0xFFF0000000000000, float %scores.sroa.38.16.vec.extract, !dbg !117
  %add290.1.1 = add nuw nsw i32 %add288, 17, !dbg !118
  %cmp292.not.1.1 = icmp sgt i32 %add290.1.1, %1, !dbg !116
  %scores.sroa.38.20.vec.extract = extractelement <4 x float> %81, i64 1, !dbg !117
  %condval_1.0.1.1 = select i1 %cmp292.not.1.1, float 0xFFF0000000000000, float %scores.sroa.38.20.vec.extract, !dbg !117
  %add290.2.1 = add nuw nsw i32 %add288, 18, !dbg !118
  %cmp292.not.2.1 = icmp sgt i32 %add290.2.1, %1, !dbg !116
  %scores.sroa.38.24.vec.extract = extractelement <4 x float> %81, i64 2, !dbg !117
  %condval_1.0.2.1 = select i1 %cmp292.not.2.1, float 0xFFF0000000000000, float %scores.sroa.38.24.vec.extract, !dbg !117
  %add290.3.1 = add nuw nsw i32 %add288, 19, !dbg !118
  %cmp292.not.3.1 = icmp sgt i32 %add290.3.1, %1, !dbg !116
  %scores.sroa.38.28.vec.extract = extractelement <4 x float> %81, i64 3, !dbg !117
  %condval_1.0.3.1 = select i1 %cmp292.not.3.1, float 0xFFF0000000000000, float %scores.sroa.38.28.vec.extract, !dbg !117
  %82 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !119
  %83 = tail call contract noundef float @llvm.maxnum.f32(float %82, float %condval_1.0.1), !dbg !119
  %84 = tail call contract noundef float @llvm.maxnum.f32(float %83, float %condval_1.0.2), !dbg !119
  %85 = tail call contract noundef float @llvm.maxnum.f32(float %84, float %condval_1.0.3), !dbg !119
  %86 = tail call contract noundef float @llvm.maxnum.f32(float %85, float %condval_1.0.11074), !dbg !119
  %87 = tail call contract noundef float @llvm.maxnum.f32(float %86, float %condval_1.0.1.1), !dbg !119
  %88 = tail call contract noundef float @llvm.maxnum.f32(float %87, float %condval_1.0.2.1), !dbg !119
  %89 = tail call contract noundef float @llvm.maxnum.f32(float %88, float %condval_1.0.3.1), !dbg !119
  %90 = bitcast float %89 to i32, !dbg !123
  %91 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !126
  %92 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %91) #11, !dbg !131
  %xor.i.i = xor i32 %92, 32, !dbg !132
  %93 = and i32 %92, -64, !dbg !133
  %and.i.i = add nsw i32 %93, 64, !dbg !133
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !134
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %92, !dbg !135
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !136
  %94 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %90), !dbg !137
  %95 = bitcast i32 %94 to float, !dbg !138
  %96 = tail call contract noundef float @llvm.maxnum.f32(float %89, float %95), !dbg !139
  %97 = bitcast float %96 to i32, !dbg !141
  %98 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !143
  %99 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %98) #11, !dbg !146
  %xor.i.i946 = xor i32 %99, 16, !dbg !147
  %100 = and i32 %99, -64, !dbg !148
  %and.i.i947 = add nsw i32 %100, 64, !dbg !148
  %cmp.not.i.i948 = icmp slt i32 %xor.i.i946, %and.i.i947, !dbg !149
  %cond.i.i949 = select i1 %cmp.not.i.i948, i32 %xor.i.i946, i32 %99, !dbg !150
  %shl.i.i950 = shl i32 %cond.i.i949, 2, !dbg !151
  %101 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i950, i32 %97), !dbg !152
  %102 = bitcast i32 %101 to float, !dbg !153
  %103 = tail call contract noundef float @llvm.maxnum.f32(float %96, float %102), !dbg !154
  %sub = fsub contract float %spec.select, %103, !dbg !156
  %sub352 = fsub contract float %condval_1.0.1, %103, !dbg !157
  %sub355 = fsub contract float %condval_1.0.2, %103, !dbg !158
  %sub358 = fsub contract float %condval_1.0.3, %103, !dbg !159
  %mul363 = fmul contract float %sub, 0x3FC0527DC0000000, !dbg !160
  %mul367 = fmul contract float %sub352, 0x3FC0527DC0000000, !dbg !161
  %mul371 = fmul contract float %sub355, 0x3FC0527DC0000000, !dbg !162
  %mul375 = fmul contract float %sub358, 0x3FC0527DC0000000, !dbg !163
  %add380 = fadd contract float %mul363, 8.000000e+00, !dbg !164
  %add384 = fadd contract float %mul367, 8.000000e+00, !dbg !165
  %add388 = fadd contract float %mul371, 8.000000e+00, !dbg !166
  %add392 = fadd contract float %mul375, 8.000000e+00, !dbg !167
  %cmp.i.i = fcmp contract olt float %add380, -1.260000e+02, !dbg !168
  %cond.i.i955 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !168
  %add.i.i = fadd contract float %add380, %cond.i.i955, !dbg !168
  %104 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !168
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !168
  %mul.i.i = fmul contract float %cond2.i.i, %104, !dbg !168
  %cmp.i.i956 = fcmp contract olt float %add384, -1.260000e+02, !dbg !171
  %cond.i.i957 = select contract i1 %cmp.i.i956, float 6.400000e+01, float 0.000000e+00, !dbg !171
  %add.i.i958 = fadd contract float %add384, %cond.i.i957, !dbg !171
  %105 = tail call contract float @llvm.exp2.f32(float %add.i.i958), !dbg !171
  %cond2.i.i959 = select contract i1 %cmp.i.i956, float 0x3BF0000000000000, float 1.000000e+00, !dbg !171
  %mul.i.i960 = fmul contract float %cond2.i.i959, %105, !dbg !171
  %cmp.i.i961 = fcmp contract olt float %add388, -1.260000e+02, !dbg !173
  %cond.i.i962 = select contract i1 %cmp.i.i961, float 6.400000e+01, float 0.000000e+00, !dbg !173
  %add.i.i963 = fadd contract float %add388, %cond.i.i962, !dbg !173
  %106 = tail call contract float @llvm.exp2.f32(float %add.i.i963), !dbg !173
  %cond2.i.i964 = select contract i1 %cmp.i.i961, float 0x3BF0000000000000, float 1.000000e+00, !dbg !173
  %mul.i.i965 = fmul contract float %cond2.i.i964, %106, !dbg !173
  %cmp.i.i966 = fcmp contract olt float %add392, -1.260000e+02, !dbg !175
  %cond.i.i967 = select contract i1 %cmp.i.i966, float 6.400000e+01, float 0.000000e+00, !dbg !175
  %add.i.i968 = fadd contract float %add392, %cond.i.i967, !dbg !175
  %107 = tail call contract float @llvm.exp2.f32(float %add.i.i968), !dbg !175
  %cond2.i.i969 = select contract i1 %cmp.i.i966, float 0x3BF0000000000000, float 1.000000e+00, !dbg !175
  %mul.i.i970 = fmul contract float %cond2.i.i969, %107, !dbg !175
  %108 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !177
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !177, !noalias !185
  %109 = fptrunc float %mul.i.i to half, !dbg !177
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %108), !dbg !177, !noalias !185
  %110 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !190, !noalias !185
  %111 = fptrunc float %mul.i.i960 to half, !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %110), !dbg !190, !noalias !185
  %112 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !192, !noalias !196
  %113 = fptrunc float %mul.i.i965 to half, !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %112), !dbg !192, !noalias !196
  %114 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !201
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !201, !noalias !196
  %115 = fptrunc float %mul.i.i970 to half, !dbg !201
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %114), !dbg !201, !noalias !196
  %116 = insertelement <4 x half> poison, half %109, i64 0, !dbg !203
  %117 = insertelement <4 x half> %116, half %111, i64 1, !dbg !203
  %118 = insertelement <4 x half> %117, half %113, i64 2, !dbg !203
  %119 = insertelement <4 x half> %118, half %115, i64 3, !dbg !203
  %sub.1 = fsub contract float %condval_1.0.11074, %103, !dbg !156
  %sub352.1 = fsub contract float %condval_1.0.1.1, %103, !dbg !157
  %sub355.1 = fsub contract float %condval_1.0.2.1, %103, !dbg !158
  %sub358.1 = fsub contract float %condval_1.0.3.1, %103, !dbg !159
  %mul363.1 = fmul contract float %sub.1, 0x3FC0527DC0000000, !dbg !160
  %mul367.1 = fmul contract float %sub352.1, 0x3FC0527DC0000000, !dbg !161
  %mul371.1 = fmul contract float %sub355.1, 0x3FC0527DC0000000, !dbg !162
  %mul375.1 = fmul contract float %sub358.1, 0x3FC0527DC0000000, !dbg !163
  %add380.1 = fadd contract float %mul363.1, 8.000000e+00, !dbg !164
  %add384.1 = fadd contract float %mul367.1, 8.000000e+00, !dbg !165
  %add388.1 = fadd contract float %mul371.1, 8.000000e+00, !dbg !166
  %add392.1 = fadd contract float %mul375.1, 8.000000e+00, !dbg !167
  %cmp.i.i.1 = fcmp contract olt float %add380.1, -1.260000e+02, !dbg !168
  %cond.i.i955.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !168
  %add.i.i.1 = fadd contract float %add380.1, %cond.i.i955.1, !dbg !168
  %120 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !168
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !168
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %120, !dbg !168
  %cmp.i.i956.1 = fcmp contract olt float %add384.1, -1.260000e+02, !dbg !171
  %cond.i.i957.1 = select contract i1 %cmp.i.i956.1, float 6.400000e+01, float 0.000000e+00, !dbg !171
  %add.i.i958.1 = fadd contract float %add384.1, %cond.i.i957.1, !dbg !171
  %121 = tail call contract float @llvm.exp2.f32(float %add.i.i958.1), !dbg !171
  %cond2.i.i959.1 = select contract i1 %cmp.i.i956.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !171
  %mul.i.i960.1 = fmul contract float %cond2.i.i959.1, %121, !dbg !171
  %cmp.i.i961.1 = fcmp contract olt float %add388.1, -1.260000e+02, !dbg !173
  %cond.i.i962.1 = select contract i1 %cmp.i.i961.1, float 6.400000e+01, float 0.000000e+00, !dbg !173
  %add.i.i963.1 = fadd contract float %add388.1, %cond.i.i962.1, !dbg !173
  %122 = tail call contract float @llvm.exp2.f32(float %add.i.i963.1), !dbg !173
  %cond2.i.i964.1 = select contract i1 %cmp.i.i961.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !173
  %mul.i.i965.1 = fmul contract float %cond2.i.i964.1, %122, !dbg !173
  %cmp.i.i966.1 = fcmp contract olt float %add392.1, -1.260000e+02, !dbg !175
  %cond.i.i967.1 = select contract i1 %cmp.i.i966.1, float 6.400000e+01, float 0.000000e+00, !dbg !175
  %add.i.i968.1 = fadd contract float %add392.1, %cond.i.i967.1, !dbg !175
  %123 = tail call contract float @llvm.exp2.f32(float %add.i.i968.1), !dbg !175
  %cond2.i.i969.1 = select contract i1 %cmp.i.i966.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !175
  %mul.i.i970.1 = fmul contract float %cond2.i.i969.1, %123, !dbg !175
  %124 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !177
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !177, !noalias !185
  %125 = fptrunc float %mul.i.i.1 to half, !dbg !177
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %124), !dbg !177, !noalias !185
  %126 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !190, !noalias !185
  %127 = fptrunc float %mul.i.i960.1 to half, !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %126), !dbg !190, !noalias !185
  %128 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !192, !noalias !196
  %129 = fptrunc float %mul.i.i965.1 to half, !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %128), !dbg !192, !noalias !196
  %130 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !201
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !201, !noalias !196
  %131 = fptrunc float %mul.i.i970.1 to half, !dbg !201
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %130), !dbg !201, !noalias !196
  %132 = insertelement <4 x half> poison, half %125, i64 0, !dbg !203
  %133 = insertelement <4 x half> %132, half %127, i64 1, !dbg !203
  %134 = insertelement <4 x half> %133, half %129, i64 2, !dbg !203
  %135 = insertelement <4 x half> %134, half %131, i64 3, !dbg !203
  %conv.i.i = fpext half %109 to float, !dbg !204
  %add431 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !209
  %conv.i.i.1 = fpext half %111 to float, !dbg !204
  %add431.1 = fadd contract float %add431, %conv.i.i.1, !dbg !209
  %conv.i.i.2 = fpext half %113 to float, !dbg !204
  %add431.2 = fadd contract float %add431.1, %conv.i.i.2, !dbg !209
  %conv.i.i.3 = fpext half %115 to float, !dbg !204
  %add431.3 = fadd contract float %add431.2, %conv.i.i.3, !dbg !209
  %conv.i.i.4 = fpext half %125 to float, !dbg !204
  %add431.4 = fadd contract float %add431.3, %conv.i.i.4, !dbg !209
  %conv.i.i.5 = fpext half %127 to float, !dbg !204
  %add431.5 = fadd contract float %add431.4, %conv.i.i.5, !dbg !209
  %conv.i.i.6 = fpext half %129 to float, !dbg !204
  %add431.6 = fadd contract float %add431.5, %conv.i.i.6, !dbg !209
  %conv.i.i.7 = fpext half %131 to float, !dbg !204
  %add431.7 = fadd contract float %add431.6, %conv.i.i.7, !dbg !209
  %136 = bitcast float %add431.7 to i32, !dbg !210
  %137 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !212
  %138 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %137) #11, !dbg !215
  %xor.i.i972 = xor i32 %138, 32, !dbg !216
  %139 = and i32 %138, -64, !dbg !217
  %and.i.i973 = add nsw i32 %139, 64, !dbg !217
  %cmp.not.i.i974 = icmp slt i32 %xor.i.i972, %and.i.i973, !dbg !218
  %cond.i.i975 = select i1 %cmp.not.i.i974, i32 %xor.i.i972, i32 %138, !dbg !219
  %shl.i.i976 = shl i32 %cond.i.i975, 2, !dbg !220
  %140 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i976, i32 %136), !dbg !221
  %141 = bitcast i32 %140 to float, !dbg !222
  %add439 = fadd contract float %add431.7, %141, !dbg !223
  %142 = bitcast float %add439 to i32, !dbg !224
  %143 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !226
  %144 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %143) #11, !dbg !229
  %xor.i.i977 = xor i32 %144, 16, !dbg !230
  %145 = and i32 %144, -64, !dbg !231
  %and.i.i978 = add nsw i32 %145, 64, !dbg !231
  %cmp.not.i.i979 = icmp slt i32 %xor.i.i977, %and.i.i978, !dbg !232
  %cond.i.i980 = select i1 %cmp.not.i.i979, i32 %xor.i.i977, i32 %144, !dbg !233
  %shl.i.i981 = shl i32 %cond.i.i980, 2, !dbg !234
  %146 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i981, i32 %142), !dbg !235
  %147 = bitcast i32 %146 to float, !dbg !236
  fence syncscope("warp") release, !dbg !237
  tail call void @llvm.mxc.barrier.warp(), !dbg !240
  fence syncscope("warp") acquire, !dbg !241
  %mul461 = and i32 %and31, 254
  %add462 = add nuw nsw i32 %mul7, %mul461
  %148 = shl nuw nsw i32 %3, 5
  %149 = and i32 %148, 32512
  %mul476 = zext nneg i32 %149 to i64
  %add472 = or disjoint i64 %mul122, %mul476
  %150 = and i32 %mul20, 56
  %mul490 = zext nneg i32 %150 to i64
  %invariant.gep1027 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %mul490
  %mul548 = and i32 %148, 224
  %shr552 = lshr i32 %3, 3
  %and555 = and i32 %3, 7
  %xor = xor i32 %shr552, %and555
  %cmp465 = icmp slt i32 %add462, 1024, !dbg !242
  br i1 %cmp465, label %if.then466, label %if.end516, !dbg !243

if.then466:                                       ; preds = %if.end.7
  %151 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep1027, i64 %add472, !dbg !244
  %152 = getelementptr inbounds i8, ptr addrspace(4) %151, i64 %.idx, !dbg !244
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %152, align 16, !dbg !245, !tbaa !30
  %condval_2.sroa.5.0.add.ptr492.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %152, i64 4, !dbg !245
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr492.sroa_idx, align 4, !dbg !245, !tbaa !30
  %condval_2.sroa.6.0.add.ptr492.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %152, i64 8, !dbg !245
  %condval_2.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr492.sroa_idx, align 8, !dbg !245, !tbaa !30
  %condval_2.sroa.7.0.add.ptr492.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %152, i64 12, !dbg !245
  %condval_2.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr492.sroa_idx, align 4, !dbg !245, !tbaa !30
  br label %if.end516, !dbg !246

if.end516:                                        ; preds = %if.end.7, %if.then466
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then466 ], [ 0, %if.end.7 ], !dbg !94
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then466 ], [ 0, %if.end.7 ], !dbg !94
  %condval_2.sroa.6.0 = phi i32 [ %condval_2.sroa.6.0.copyload, %if.then466 ], [ 0, %if.end.7 ], !dbg !94
  %condval_2.sroa.7.0 = phi i32 [ %condval_2.sroa.7.0.copyload, %if.then466 ], [ 0, %if.end.7 ], !dbg !94
  %153 = or disjoint i32 %add462, 1, !dbg !247
  %cmp465.1 = icmp slt i32 %153, 1024, !dbg !242
  br i1 %cmp465.1, label %if.then466.1, label %if.end516.1, !dbg !243

if.then466.1:                                     ; preds = %if.end516
  %154 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep1027, i64 %add472, !dbg !244
  %155 = getelementptr inbounds i8, ptr addrspace(4) %154, i64 %.idx, !dbg !244
  %gep1028.1 = getelementptr inbounds i8, ptr addrspace(4) %155, i64 256, !dbg !244
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep1028.1, align 16, !dbg !245, !tbaa !30
  %condval_2.sroa.5.0.add.ptr492.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %155, i64 260, !dbg !245
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr492.sroa_idx.1, align 4, !dbg !245, !tbaa !30
  %condval_2.sroa.6.0.add.ptr492.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %155, i64 264, !dbg !245
  %condval_2.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr492.sroa_idx.1, align 8, !dbg !245, !tbaa !30
  %condval_2.sroa.7.0.add.ptr492.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %155, i64 268, !dbg !245
  %condval_2.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr492.sroa_idx.1, align 4, !dbg !245, !tbaa !30
  br label %if.end516.1, !dbg !246

if.end516.1:                                      ; preds = %if.then466.1, %if.end516
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then466.1 ], [ 0, %if.end516 ], !dbg !94
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then466.1 ], [ 0, %if.end516 ], !dbg !94
  %condval_2.sroa.6.0.1 = phi i32 [ %condval_2.sroa.6.0.copyload.1, %if.then466.1 ], [ 0, %if.end516 ], !dbg !94
  %condval_2.sroa.7.0.1 = phi i32 [ %condval_2.sroa.7.0.copyload.1, %if.then466.1 ], [ 0, %if.end516 ], !dbg !94
  %156 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul548, !dbg !248
  %.idx1003 = shl nuw nsw i32 %xor, 2, !dbg !248
  %157 = getelementptr inbounds i8, ptr addrspace(3) %156, i32 %.idx1003, !dbg !248
  %add.ptr561 = getelementptr inbounds i8, ptr addrspace(3) %157, i32 8192, !dbg !248
  %v_column.sroa.66.0.insert.ext = shl i32 %condval_2.sroa.0.0.1, 16, !dbg !249
  %v_column.sroa.0.0.insert.ext = and i32 %condval_2.sroa.0.0, 65535, !dbg !249
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.66.0.insert.ext, %v_column.sroa.0.0.insert.ext, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr561, align 4, !dbg !249, !tbaa !30
  %v_fetch.sroa.0.2.extract.shift = lshr i32 %condval_2.sroa.0.0, 16, !dbg !250
  %v_fetch.sroa.50.18.extract.shift = and i32 %condval_2.sroa.0.0.1, -65536, !dbg !249
  %158 = or disjoint i32 %mul548, 256, !dbg !251
  %159 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %158, !dbg !248
  %xor556.1 = shl nuw nsw i32 %xor, 2, !dbg !248
  %.idx1003.1 = xor i32 %xor556.1, 4, !dbg !248
  %160 = getelementptr inbounds i8, ptr addrspace(3) %159, i32 %.idx1003.1, !dbg !248
  %add.ptr561.1 = getelementptr inbounds i8, ptr addrspace(3) %160, i32 8192, !dbg !248
  %v_column.sroa.0.0.insert.insert1370 = or disjoint i32 %v_fetch.sroa.50.18.extract.shift, %v_fetch.sroa.0.2.extract.shift, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1370, ptr addrspace(3) %add.ptr561.1, align 4, !dbg !249, !tbaa !30
  %161 = or disjoint i32 %mul548, 512, !dbg !251
  %162 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %161, !dbg !248
  %xor556.2 = shl nuw nsw i32 %xor, 2, !dbg !248
  %.idx1003.2 = xor i32 %xor556.2, 8, !dbg !248
  %163 = getelementptr inbounds i8, ptr addrspace(3) %162, i32 %.idx1003.2, !dbg !248
  %add.ptr561.2 = getelementptr inbounds i8, ptr addrspace(3) %163, i32 8192, !dbg !248
  %v_column.sroa.66.0.insert.ext1497 = shl i32 %condval_2.sroa.5.0.1, 16, !dbg !249
  %v_column.sroa.0.0.insert.ext1372 = and i32 %condval_2.sroa.5.0, 65535, !dbg !249
  %v_column.sroa.0.0.insert.insert1374 = or disjoint i32 %v_column.sroa.66.0.insert.ext1497, %v_column.sroa.0.0.insert.ext1372, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1374, ptr addrspace(3) %add.ptr561.2, align 4, !dbg !249, !tbaa !30
  %v_fetch.sroa.14.6.extract.shift = lshr i32 %condval_2.sroa.5.0, 16, !dbg !250
  %v_fetch.sroa.62.22.extract.shift = and i32 %condval_2.sroa.5.0.1, -65536, !dbg !249
  %164 = or disjoint i32 %mul548, 768, !dbg !251
  %165 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %164, !dbg !248
  %xor556.3 = shl nuw nsw i32 %xor, 2, !dbg !248
  %.idx1003.3 = xor i32 %xor556.3, 12, !dbg !248
  %166 = getelementptr inbounds i8, ptr addrspace(3) %165, i32 %.idx1003.3, !dbg !248
  %add.ptr561.3 = getelementptr inbounds i8, ptr addrspace(3) %166, i32 8192, !dbg !248
  %v_column.sroa.0.0.insert.insert1378 = or disjoint i32 %v_fetch.sroa.62.22.extract.shift, %v_fetch.sroa.14.6.extract.shift, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1378, ptr addrspace(3) %add.ptr561.3, align 4, !dbg !249, !tbaa !30
  %167 = or disjoint i32 %mul548, 1024, !dbg !251
  %168 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %167, !dbg !248
  %xor556.4 = shl nuw nsw i32 %xor, 2, !dbg !248
  %.idx1003.4 = xor i32 %xor556.4, 16, !dbg !248
  %169 = getelementptr inbounds i8, ptr addrspace(3) %168, i32 %.idx1003.4, !dbg !248
  %add.ptr561.4 = getelementptr inbounds i8, ptr addrspace(3) %169, i32 8192, !dbg !248
  %v_column.sroa.66.0.insert.ext1507 = shl i32 %condval_2.sroa.6.0.1, 16, !dbg !249
  %v_column.sroa.0.0.insert.ext1380 = and i32 %condval_2.sroa.6.0, 65535, !dbg !249
  %v_column.sroa.0.0.insert.insert1382 = or disjoint i32 %v_column.sroa.66.0.insert.ext1507, %v_column.sroa.0.0.insert.ext1380, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1382, ptr addrspace(3) %add.ptr561.4, align 4, !dbg !249, !tbaa !30
  %v_fetch.sroa.26.10.extract.shift = lshr i32 %condval_2.sroa.6.0, 16, !dbg !250
  %v_fetch.sroa.74.26.extract.shift = and i32 %condval_2.sroa.6.0.1, -65536, !dbg !249
  %170 = or disjoint i32 %mul548, 1280, !dbg !251
  %171 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %170, !dbg !248
  %xor556.5 = shl nuw nsw i32 %xor, 2, !dbg !248
  %.idx1003.5 = xor i32 %xor556.5, 20, !dbg !248
  %172 = getelementptr inbounds i8, ptr addrspace(3) %171, i32 %.idx1003.5, !dbg !248
  %add.ptr561.5 = getelementptr inbounds i8, ptr addrspace(3) %172, i32 8192, !dbg !248
  %v_column.sroa.0.0.insert.insert1386 = or disjoint i32 %v_fetch.sroa.74.26.extract.shift, %v_fetch.sroa.26.10.extract.shift, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1386, ptr addrspace(3) %add.ptr561.5, align 4, !dbg !249, !tbaa !30
  %173 = or disjoint i32 %mul548, 1536, !dbg !251
  %174 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %173, !dbg !248
  %xor556.6 = shl nuw nsw i32 %xor, 2, !dbg !248
  %.idx1003.6 = xor i32 %xor556.6, 24, !dbg !248
  %175 = getelementptr inbounds i8, ptr addrspace(3) %174, i32 %.idx1003.6, !dbg !248
  %add.ptr561.6 = getelementptr inbounds i8, ptr addrspace(3) %175, i32 8192, !dbg !248
  %v_column.sroa.66.0.insert.ext1517 = shl i32 %condval_2.sroa.7.0.1, 16, !dbg !249
  %v_column.sroa.0.0.insert.ext1388 = and i32 %condval_2.sroa.7.0, 65535, !dbg !249
  %v_column.sroa.0.0.insert.insert1390 = or disjoint i32 %v_column.sroa.66.0.insert.ext1517, %v_column.sroa.0.0.insert.ext1388, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1390, ptr addrspace(3) %add.ptr561.6, align 4, !dbg !249, !tbaa !30
  %v_fetch.sroa.38.14.extract.shift = lshr i32 %condval_2.sroa.7.0, 16, !dbg !250
  %v_fetch.sroa.86.30.extract.shift = and i32 %condval_2.sroa.7.0.1, -65536, !dbg !249
  %176 = or disjoint i32 %mul548, 1792, !dbg !251
  %177 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %176, !dbg !248
  %xor556.7 = shl nuw nsw i32 %xor, 2, !dbg !248
  %.idx1003.7 = xor i32 %xor556.7, 28, !dbg !248
  %178 = getelementptr inbounds i8, ptr addrspace(3) %177, i32 %.idx1003.7, !dbg !248
  %add.ptr561.7 = getelementptr inbounds i8, ptr addrspace(3) %178, i32 8192, !dbg !248
  %v_column.sroa.0.0.insert.insert1394 = or disjoint i32 %v_fetch.sroa.86.30.extract.shift, %v_fetch.sroa.38.14.extract.shift, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1394, ptr addrspace(3) %add.ptr561.7, align 4, !dbg !249, !tbaa !30
  br i1 %cmp465, label %if.then466.11107, label %if.end516.11115, !dbg !243

if.then466.11107:                                 ; preds = %if.end516.1
  %179 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep1027, i64 %add472, !dbg !244
  %180 = getelementptr inbounds i8, ptr addrspace(4) %179, i64 %.idx, !dbg !244
  %181 = getelementptr inbounds i8, ptr addrspace(4) %180, i64 128, !dbg !244
  %condval_2.sroa.0.0.copyload.11100 = load i32, ptr addrspace(4) %181, align 16, !dbg !245, !tbaa !30
  %condval_2.sroa.5.0.add.ptr492.sroa_idx.11101 = getelementptr inbounds i8, ptr addrspace(4) %180, i64 132, !dbg !245
  %condval_2.sroa.5.0.copyload.11102 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr492.sroa_idx.11101, align 4, !dbg !245, !tbaa !30
  %condval_2.sroa.6.0.add.ptr492.sroa_idx.11103 = getelementptr inbounds i8, ptr addrspace(4) %180, i64 136, !dbg !245
  %condval_2.sroa.6.0.copyload.11104 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr492.sroa_idx.11103, align 8, !dbg !245, !tbaa !30
  %condval_2.sroa.7.0.add.ptr492.sroa_idx.11105 = getelementptr inbounds i8, ptr addrspace(4) %180, i64 140, !dbg !245
  %condval_2.sroa.7.0.copyload.11106 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr492.sroa_idx.11105, align 4, !dbg !245, !tbaa !30
  br label %if.end516.11115, !dbg !246

if.end516.11115:                                  ; preds = %if.then466.11107, %if.end516.1
  %condval_2.sroa.0.0.11108 = phi i32 [ %condval_2.sroa.0.0.copyload.11100, %if.then466.11107 ], [ 0, %if.end516.1 ], !dbg !94
  %condval_2.sroa.5.0.11109 = phi i32 [ %condval_2.sroa.5.0.copyload.11102, %if.then466.11107 ], [ 0, %if.end516.1 ], !dbg !94
  %condval_2.sroa.6.0.11110 = phi i32 [ %condval_2.sroa.6.0.copyload.11104, %if.then466.11107 ], [ 0, %if.end516.1 ], !dbg !94
  %condval_2.sroa.7.0.11111 = phi i32 [ %condval_2.sroa.7.0.copyload.11106, %if.then466.11107 ], [ 0, %if.end516.1 ], !dbg !94
  br i1 %cmp465.1, label %if.then466.1.1, label %if.end516.1.1, !dbg !243

if.then466.1.1:                                   ; preds = %if.end516.11115
  %182 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep1027, i64 %add472, !dbg !244
  %183 = getelementptr inbounds i8, ptr addrspace(4) %182, i64 %.idx, !dbg !244
  %gep1028.1.1 = getelementptr inbounds i8, ptr addrspace(4) %183, i64 384, !dbg !244
  %condval_2.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %gep1028.1.1, align 16, !dbg !245, !tbaa !30
  %condval_2.sroa.5.0.add.ptr492.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %183, i64 388, !dbg !245
  %condval_2.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr492.sroa_idx.1.1, align 4, !dbg !245, !tbaa !30
  %condval_2.sroa.6.0.add.ptr492.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %183, i64 392, !dbg !245
  %condval_2.sroa.6.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr492.sroa_idx.1.1, align 8, !dbg !245, !tbaa !30
  %condval_2.sroa.7.0.add.ptr492.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %183, i64 396, !dbg !245
  %condval_2.sroa.7.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr492.sroa_idx.1.1, align 4, !dbg !245, !tbaa !30
  br label %if.end516.1.1, !dbg !246

if.end516.1.1:                                    ; preds = %if.then466.1.1, %if.end516.11115
  %condval_2.sroa.0.0.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1, %if.then466.1.1 ], [ 0, %if.end516.11115 ], !dbg !94
  %condval_2.sroa.5.0.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1, %if.then466.1.1 ], [ 0, %if.end516.11115 ], !dbg !94
  %condval_2.sroa.6.0.1.1 = phi i32 [ %condval_2.sroa.6.0.copyload.1.1, %if.then466.1.1 ], [ 0, %if.end516.11115 ], !dbg !94
  %condval_2.sroa.7.0.1.1 = phi i32 [ %condval_2.sroa.7.0.copyload.1.1, %if.then466.1.1 ], [ 0, %if.end516.11115 ], !dbg !94
  %184 = or disjoint i32 %mul548, 2048, !dbg !251
  %185 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %184, !dbg !248
  %186 = getelementptr inbounds i8, ptr addrspace(3) %185, i32 %.idx1003, !dbg !248
  %add.ptr561.11119 = getelementptr inbounds i8, ptr addrspace(3) %186, i32 8192, !dbg !248
  %v_column.sroa.66.0.insert.ext1527 = shl i32 %condval_2.sroa.0.0.1.1, 16, !dbg !249
  %v_column.sroa.0.0.insert.ext1396 = and i32 %condval_2.sroa.0.0.11108, 65535, !dbg !249
  %v_column.sroa.0.0.insert.insert1398 = or disjoint i32 %v_column.sroa.66.0.insert.ext1527, %v_column.sroa.0.0.insert.ext1396, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1398, ptr addrspace(3) %add.ptr561.11119, align 4, !dbg !249, !tbaa !30
  %v_fetch.sroa.0.2.extract.shift1653 = lshr i32 %condval_2.sroa.0.0.11108, 16, !dbg !250
  %v_fetch.sroa.50.18.extract.shift1713 = and i32 %condval_2.sroa.0.0.1.1, -65536, !dbg !249
  %187 = or disjoint i32 %mul548, 2304, !dbg !251
  %188 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %187, !dbg !248
  %189 = getelementptr inbounds i8, ptr addrspace(3) %188, i32 %.idx1003.1, !dbg !248
  %add.ptr561.1.1 = getelementptr inbounds i8, ptr addrspace(3) %189, i32 8192, !dbg !248
  %v_column.sroa.0.0.insert.insert1402 = or disjoint i32 %v_fetch.sroa.50.18.extract.shift1713, %v_fetch.sroa.0.2.extract.shift1653, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1402, ptr addrspace(3) %add.ptr561.1.1, align 4, !dbg !249, !tbaa !30
  %190 = or disjoint i32 %mul548, 2560, !dbg !251
  %191 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %190, !dbg !248
  %192 = getelementptr inbounds i8, ptr addrspace(3) %191, i32 %.idx1003.2, !dbg !248
  %add.ptr561.2.1 = getelementptr inbounds i8, ptr addrspace(3) %192, i32 8192, !dbg !248
  %v_column.sroa.66.0.insert.ext1537 = shl i32 %condval_2.sroa.5.0.1.1, 16, !dbg !249
  %v_column.sroa.0.0.insert.ext1404 = and i32 %condval_2.sroa.5.0.11109, 65535, !dbg !249
  %v_column.sroa.0.0.insert.insert1406 = or disjoint i32 %v_column.sroa.66.0.insert.ext1537, %v_column.sroa.0.0.insert.ext1404, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1406, ptr addrspace(3) %add.ptr561.2.1, align 4, !dbg !249, !tbaa !30
  %v_fetch.sroa.14.6.extract.shift1668 = lshr i32 %condval_2.sroa.5.0.11109, 16, !dbg !250
  %v_fetch.sroa.62.22.extract.shift1728 = and i32 %condval_2.sroa.5.0.1.1, -65536, !dbg !249
  %193 = or disjoint i32 %mul548, 2816, !dbg !251
  %194 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %193, !dbg !248
  %195 = getelementptr inbounds i8, ptr addrspace(3) %194, i32 %.idx1003.3, !dbg !248
  %add.ptr561.3.1 = getelementptr inbounds i8, ptr addrspace(3) %195, i32 8192, !dbg !248
  %v_column.sroa.0.0.insert.insert1410 = or disjoint i32 %v_fetch.sroa.62.22.extract.shift1728, %v_fetch.sroa.14.6.extract.shift1668, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1410, ptr addrspace(3) %add.ptr561.3.1, align 4, !dbg !249, !tbaa !30
  %196 = or disjoint i32 %mul548, 3072, !dbg !251
  %197 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %196, !dbg !248
  %198 = getelementptr inbounds i8, ptr addrspace(3) %197, i32 %.idx1003.4, !dbg !248
  %add.ptr561.4.1 = getelementptr inbounds i8, ptr addrspace(3) %198, i32 8192, !dbg !248
  %v_column.sroa.66.0.insert.ext1547 = shl i32 %condval_2.sroa.6.0.1.1, 16, !dbg !249
  %v_column.sroa.0.0.insert.ext1412 = and i32 %condval_2.sroa.6.0.11110, 65535, !dbg !249
  %v_column.sroa.0.0.insert.insert1414 = or disjoint i32 %v_column.sroa.66.0.insert.ext1547, %v_column.sroa.0.0.insert.ext1412, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1414, ptr addrspace(3) %add.ptr561.4.1, align 4, !dbg !249, !tbaa !30
  %v_fetch.sroa.26.10.extract.shift1683 = lshr i32 %condval_2.sroa.6.0.11110, 16, !dbg !250
  %v_fetch.sroa.74.26.extract.shift1743 = and i32 %condval_2.sroa.6.0.1.1, -65536, !dbg !249
  %199 = or disjoint i32 %mul548, 3328, !dbg !251
  %200 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %199, !dbg !248
  %201 = getelementptr inbounds i8, ptr addrspace(3) %200, i32 %.idx1003.5, !dbg !248
  %add.ptr561.5.1 = getelementptr inbounds i8, ptr addrspace(3) %201, i32 8192, !dbg !248
  %v_column.sroa.0.0.insert.insert1418 = or disjoint i32 %v_fetch.sroa.74.26.extract.shift1743, %v_fetch.sroa.26.10.extract.shift1683, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1418, ptr addrspace(3) %add.ptr561.5.1, align 4, !dbg !249, !tbaa !30
  %202 = or disjoint i32 %mul548, 3584, !dbg !251
  %203 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %202, !dbg !248
  %204 = getelementptr inbounds i8, ptr addrspace(3) %203, i32 %.idx1003.6, !dbg !248
  %add.ptr561.6.1 = getelementptr inbounds i8, ptr addrspace(3) %204, i32 8192, !dbg !248
  %v_column.sroa.66.0.insert.ext1557 = shl i32 %condval_2.sroa.7.0.1.1, 16, !dbg !249
  %v_column.sroa.0.0.insert.ext1420 = and i32 %condval_2.sroa.7.0.11111, 65535, !dbg !249
  %v_column.sroa.0.0.insert.insert1422 = or disjoint i32 %v_column.sroa.66.0.insert.ext1557, %v_column.sroa.0.0.insert.ext1420, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1422, ptr addrspace(3) %add.ptr561.6.1, align 4, !dbg !249, !tbaa !30
  %v_fetch.sroa.38.14.extract.shift1698 = lshr i32 %condval_2.sroa.7.0.11111, 16, !dbg !250
  %v_fetch.sroa.86.30.extract.shift1758 = and i32 %condval_2.sroa.7.0.1.1, -65536, !dbg !249
  %205 = or disjoint i32 %mul548, 3840, !dbg !251
  %206 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %205, !dbg !248
  %207 = getelementptr inbounds i8, ptr addrspace(3) %206, i32 %.idx1003.7, !dbg !248
  %add.ptr561.7.1 = getelementptr inbounds i8, ptr addrspace(3) %207, i32 8192, !dbg !248
  %v_column.sroa.0.0.insert.insert1426 = or disjoint i32 %v_fetch.sroa.86.30.extract.shift1758, %v_fetch.sroa.38.14.extract.shift1698, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1426, ptr addrspace(3) %add.ptr561.7.1, align 4, !dbg !249, !tbaa !30
  %208 = add nuw i32 %add462, 16
  %narrow2114 = add nuw nsw i32 %shr552, 8
  %xor.1 = xor i32 %narrow2114, %and555
  %cmp465.11126 = icmp slt i32 %208, 1024, !dbg !242
  br i1 %cmp465.11126, label %if.then466.11136, label %if.end516.11145, !dbg !243

if.then466.11136:                                 ; preds = %if.end516.1.1
  %209 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep1027, i64 %add472, !dbg !244
  %210 = getelementptr inbounds i8, ptr addrspace(4) %209, i64 %.idx, !dbg !244
  %211 = getelementptr inbounds i8, ptr addrspace(4) %210, i64 4096, !dbg !244
  %condval_2.sroa.0.0.copyload.11129 = load i32, ptr addrspace(4) %211, align 16, !dbg !245, !tbaa !30
  %condval_2.sroa.5.0.add.ptr492.sroa_idx.11130 = getelementptr inbounds i8, ptr addrspace(4) %210, i64 4100, !dbg !245
  %condval_2.sroa.5.0.copyload.11131 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr492.sroa_idx.11130, align 4, !dbg !245, !tbaa !30
  %condval_2.sroa.6.0.add.ptr492.sroa_idx.11132 = getelementptr inbounds i8, ptr addrspace(4) %210, i64 4104, !dbg !245
  %condval_2.sroa.6.0.copyload.11133 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr492.sroa_idx.11132, align 8, !dbg !245, !tbaa !30
  %condval_2.sroa.7.0.add.ptr492.sroa_idx.11134 = getelementptr inbounds i8, ptr addrspace(4) %210, i64 4108, !dbg !245
  %condval_2.sroa.7.0.copyload.11135 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr492.sroa_idx.11134, align 4, !dbg !245, !tbaa !30
  br label %if.end516.11145, !dbg !246

if.end516.11145:                                  ; preds = %if.then466.11136, %if.end516.1.1
  %condval_2.sroa.0.0.11137 = phi i32 [ %condval_2.sroa.0.0.copyload.11129, %if.then466.11136 ], [ 0, %if.end516.1.1 ], !dbg !94
  %condval_2.sroa.5.0.11138 = phi i32 [ %condval_2.sroa.5.0.copyload.11131, %if.then466.11136 ], [ 0, %if.end516.1.1 ], !dbg !94
  %condval_2.sroa.6.0.11139 = phi i32 [ %condval_2.sroa.6.0.copyload.11133, %if.then466.11136 ], [ 0, %if.end516.1.1 ], !dbg !94
  %condval_2.sroa.7.0.11140 = phi i32 [ %condval_2.sroa.7.0.copyload.11135, %if.then466.11136 ], [ 0, %if.end516.1.1 ], !dbg !94
  %narrow2115 = add nuw i32 %add462, 17, !dbg !247
  %cmp465.1.11144 = icmp slt i32 %narrow2115, 1024, !dbg !242
  br i1 %cmp465.1.11144, label %if.then466.1.11155, label %if.end516.1.11164, !dbg !243

if.then466.1.11155:                               ; preds = %if.end516.11145
  %212 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep1027, i64 %add472, !dbg !244
  %213 = getelementptr inbounds i8, ptr addrspace(4) %212, i64 %.idx, !dbg !244
  %gep1028.1.11147 = getelementptr inbounds i8, ptr addrspace(4) %213, i64 4352, !dbg !244
  %condval_2.sroa.0.0.copyload.1.11148 = load i32, ptr addrspace(4) %gep1028.1.11147, align 16, !dbg !245, !tbaa !30
  %condval_2.sroa.5.0.add.ptr492.sroa_idx.1.11149 = getelementptr inbounds i8, ptr addrspace(4) %213, i64 4356, !dbg !245
  %condval_2.sroa.5.0.copyload.1.11150 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr492.sroa_idx.1.11149, align 4, !dbg !245, !tbaa !30
  %condval_2.sroa.6.0.add.ptr492.sroa_idx.1.11151 = getelementptr inbounds i8, ptr addrspace(4) %213, i64 4360, !dbg !245
  %condval_2.sroa.6.0.copyload.1.11152 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr492.sroa_idx.1.11151, align 8, !dbg !245, !tbaa !30
  %condval_2.sroa.7.0.add.ptr492.sroa_idx.1.11153 = getelementptr inbounds i8, ptr addrspace(4) %213, i64 4364, !dbg !245
  %condval_2.sroa.7.0.copyload.1.11154 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr492.sroa_idx.1.11153, align 4, !dbg !245, !tbaa !30
  br label %if.end516.1.11164, !dbg !246

if.end516.1.11164:                                ; preds = %if.then466.1.11155, %if.end516.11145
  %condval_2.sroa.0.0.1.11156 = phi i32 [ %condval_2.sroa.0.0.copyload.1.11148, %if.then466.1.11155 ], [ 0, %if.end516.11145 ], !dbg !94
  %condval_2.sroa.5.0.1.11157 = phi i32 [ %condval_2.sroa.5.0.copyload.1.11150, %if.then466.1.11155 ], [ 0, %if.end516.11145 ], !dbg !94
  %condval_2.sroa.6.0.1.11158 = phi i32 [ %condval_2.sroa.6.0.copyload.1.11152, %if.then466.1.11155 ], [ 0, %if.end516.11145 ], !dbg !94
  %condval_2.sroa.7.0.1.11159 = phi i32 [ %condval_2.sroa.7.0.copyload.1.11154, %if.then466.1.11155 ], [ 0, %if.end516.11145 ], !dbg !94
  %.idx1003.11168 = shl nuw nsw i32 %xor.1, 2, !dbg !248
  %214 = getelementptr inbounds i8, ptr addrspace(3) %156, i32 %.idx1003.11168, !dbg !248
  %add.ptr561.11169 = getelementptr inbounds i8, ptr addrspace(3) %214, i32 8192, !dbg !248
  %v_column.sroa.66.0.insert.ext1567 = shl i32 %condval_2.sroa.0.0.1.11156, 16, !dbg !249
  %v_column.sroa.0.0.insert.ext1428 = and i32 %condval_2.sroa.0.0.11137, 65535, !dbg !249
  %v_column.sroa.0.0.insert.insert1430 = or disjoint i32 %v_column.sroa.66.0.insert.ext1567, %v_column.sroa.0.0.insert.ext1428, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1430, ptr addrspace(3) %add.ptr561.11169, align 4, !dbg !249, !tbaa !30
  %v_fetch.sroa.0.2.extract.shift1656 = lshr i32 %condval_2.sroa.0.0.11137, 16, !dbg !250
  %v_fetch.sroa.50.18.extract.shift1716 = and i32 %condval_2.sroa.0.0.1.11156, -65536, !dbg !249
  %xor556.1.11174 = shl nuw nsw i32 %xor.1, 2, !dbg !248
  %.idx1003.1.11175 = xor i32 %xor556.1.11174, 4, !dbg !248
  %215 = getelementptr inbounds i8, ptr addrspace(3) %159, i32 %.idx1003.1.11175, !dbg !248
  %add.ptr561.1.11176 = getelementptr inbounds i8, ptr addrspace(3) %215, i32 8192, !dbg !248
  %v_column.sroa.0.0.insert.insert1434 = or disjoint i32 %v_fetch.sroa.50.18.extract.shift1716, %v_fetch.sroa.0.2.extract.shift1656, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1434, ptr addrspace(3) %add.ptr561.1.11176, align 4, !dbg !249, !tbaa !30
  %xor556.2.11181 = shl nuw nsw i32 %xor.1, 2, !dbg !248
  %.idx1003.2.11182 = xor i32 %xor556.2.11181, 8, !dbg !248
  %216 = getelementptr inbounds i8, ptr addrspace(3) %162, i32 %.idx1003.2.11182, !dbg !248
  %add.ptr561.2.11183 = getelementptr inbounds i8, ptr addrspace(3) %216, i32 8192, !dbg !248
  %v_column.sroa.66.0.insert.ext1577 = shl i32 %condval_2.sroa.5.0.1.11157, 16, !dbg !249
  %v_column.sroa.0.0.insert.ext1436 = and i32 %condval_2.sroa.5.0.11138, 65535, !dbg !249
  %v_column.sroa.0.0.insert.insert1438 = or disjoint i32 %v_column.sroa.66.0.insert.ext1577, %v_column.sroa.0.0.insert.ext1436, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1438, ptr addrspace(3) %add.ptr561.2.11183, align 4, !dbg !249, !tbaa !30
  %v_fetch.sroa.14.6.extract.shift1671 = lshr i32 %condval_2.sroa.5.0.11138, 16, !dbg !250
  %v_fetch.sroa.62.22.extract.shift1731 = and i32 %condval_2.sroa.5.0.1.11157, -65536, !dbg !249
  %xor556.3.11188 = shl nuw nsw i32 %xor.1, 2, !dbg !248
  %.idx1003.3.11189 = xor i32 %xor556.3.11188, 12, !dbg !248
  %217 = getelementptr inbounds i8, ptr addrspace(3) %165, i32 %.idx1003.3.11189, !dbg !248
  %add.ptr561.3.11190 = getelementptr inbounds i8, ptr addrspace(3) %217, i32 8192, !dbg !248
  %v_column.sroa.0.0.insert.insert1442 = or disjoint i32 %v_fetch.sroa.62.22.extract.shift1731, %v_fetch.sroa.14.6.extract.shift1671, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1442, ptr addrspace(3) %add.ptr561.3.11190, align 4, !dbg !249, !tbaa !30
  %xor556.4.11195 = shl nuw nsw i32 %xor.1, 2, !dbg !248
  %.idx1003.4.11196 = xor i32 %xor556.4.11195, 16, !dbg !248
  %218 = getelementptr inbounds i8, ptr addrspace(3) %168, i32 %.idx1003.4.11196, !dbg !248
  %add.ptr561.4.11197 = getelementptr inbounds i8, ptr addrspace(3) %218, i32 8192, !dbg !248
  %v_column.sroa.66.0.insert.ext1587 = shl i32 %condval_2.sroa.6.0.1.11158, 16, !dbg !249
  %v_column.sroa.0.0.insert.ext1444 = and i32 %condval_2.sroa.6.0.11139, 65535, !dbg !249
  %v_column.sroa.0.0.insert.insert1446 = or disjoint i32 %v_column.sroa.66.0.insert.ext1587, %v_column.sroa.0.0.insert.ext1444, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1446, ptr addrspace(3) %add.ptr561.4.11197, align 4, !dbg !249, !tbaa !30
  %v_fetch.sroa.26.10.extract.shift1686 = lshr i32 %condval_2.sroa.6.0.11139, 16, !dbg !250
  %v_fetch.sroa.74.26.extract.shift1746 = and i32 %condval_2.sroa.6.0.1.11158, -65536, !dbg !249
  %xor556.5.11202 = shl nuw nsw i32 %xor.1, 2, !dbg !248
  %.idx1003.5.11203 = xor i32 %xor556.5.11202, 20, !dbg !248
  %219 = getelementptr inbounds i8, ptr addrspace(3) %171, i32 %.idx1003.5.11203, !dbg !248
  %add.ptr561.5.11204 = getelementptr inbounds i8, ptr addrspace(3) %219, i32 8192, !dbg !248
  %v_column.sroa.0.0.insert.insert1450 = or disjoint i32 %v_fetch.sroa.74.26.extract.shift1746, %v_fetch.sroa.26.10.extract.shift1686, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1450, ptr addrspace(3) %add.ptr561.5.11204, align 4, !dbg !249, !tbaa !30
  %xor556.6.11209 = shl nuw nsw i32 %xor.1, 2, !dbg !248
  %.idx1003.6.11210 = xor i32 %xor556.6.11209, 24, !dbg !248
  %220 = getelementptr inbounds i8, ptr addrspace(3) %174, i32 %.idx1003.6.11210, !dbg !248
  %add.ptr561.6.11211 = getelementptr inbounds i8, ptr addrspace(3) %220, i32 8192, !dbg !248
  %v_column.sroa.66.0.insert.ext1597 = shl i32 %condval_2.sroa.7.0.1.11159, 16, !dbg !249
  %v_column.sroa.0.0.insert.ext1452 = and i32 %condval_2.sroa.7.0.11140, 65535, !dbg !249
  %v_column.sroa.0.0.insert.insert1454 = or disjoint i32 %v_column.sroa.66.0.insert.ext1597, %v_column.sroa.0.0.insert.ext1452, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1454, ptr addrspace(3) %add.ptr561.6.11211, align 4, !dbg !249, !tbaa !30
  %v_fetch.sroa.38.14.extract.shift1701 = lshr i32 %condval_2.sroa.7.0.11140, 16, !dbg !250
  %v_fetch.sroa.86.30.extract.shift1761 = and i32 %condval_2.sroa.7.0.1.11159, -65536, !dbg !249
  %xor556.7.11216 = shl nuw nsw i32 %xor.1, 2, !dbg !248
  %.idx1003.7.11217 = xor i32 %xor556.7.11216, 28, !dbg !248
  %221 = getelementptr inbounds i8, ptr addrspace(3) %177, i32 %.idx1003.7.11217, !dbg !248
  %add.ptr561.7.11218 = getelementptr inbounds i8, ptr addrspace(3) %221, i32 8192, !dbg !248
  %v_column.sroa.0.0.insert.insert1458 = or disjoint i32 %v_fetch.sroa.86.30.extract.shift1761, %v_fetch.sroa.38.14.extract.shift1701, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1458, ptr addrspace(3) %add.ptr561.7.11218, align 4, !dbg !249, !tbaa !30
  br i1 %cmp465.11126, label %if.then466.11107.1, label %if.end516.11115.1, !dbg !243

if.then466.11107.1:                               ; preds = %if.end516.1.11164
  %222 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep1027, i64 %add472, !dbg !244
  %223 = getelementptr inbounds i8, ptr addrspace(4) %222, i64 %.idx, !dbg !244
  %224 = getelementptr inbounds i8, ptr addrspace(4) %223, i64 4224, !dbg !244
  %condval_2.sroa.0.0.copyload.11100.1 = load i32, ptr addrspace(4) %224, align 16, !dbg !245, !tbaa !30
  %condval_2.sroa.5.0.add.ptr492.sroa_idx.11101.1 = getelementptr inbounds i8, ptr addrspace(4) %223, i64 4228, !dbg !245
  %condval_2.sroa.5.0.copyload.11102.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr492.sroa_idx.11101.1, align 4, !dbg !245, !tbaa !30
  %condval_2.sroa.6.0.add.ptr492.sroa_idx.11103.1 = getelementptr inbounds i8, ptr addrspace(4) %223, i64 4232, !dbg !245
  %condval_2.sroa.6.0.copyload.11104.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr492.sroa_idx.11103.1, align 8, !dbg !245, !tbaa !30
  %condval_2.sroa.7.0.add.ptr492.sroa_idx.11105.1 = getelementptr inbounds i8, ptr addrspace(4) %223, i64 4236, !dbg !245
  %condval_2.sroa.7.0.copyload.11106.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr492.sroa_idx.11105.1, align 4, !dbg !245, !tbaa !30
  br label %if.end516.11115.1, !dbg !246

if.end516.11115.1:                                ; preds = %if.then466.11107.1, %if.end516.1.11164
  %condval_2.sroa.0.0.11108.1 = phi i32 [ %condval_2.sroa.0.0.copyload.11100.1, %if.then466.11107.1 ], [ 0, %if.end516.1.11164 ], !dbg !94
  %condval_2.sroa.5.0.11109.1 = phi i32 [ %condval_2.sroa.5.0.copyload.11102.1, %if.then466.11107.1 ], [ 0, %if.end516.1.11164 ], !dbg !94
  %condval_2.sroa.6.0.11110.1 = phi i32 [ %condval_2.sroa.6.0.copyload.11104.1, %if.then466.11107.1 ], [ 0, %if.end516.1.11164 ], !dbg !94
  %condval_2.sroa.7.0.11111.1 = phi i32 [ %condval_2.sroa.7.0.copyload.11106.1, %if.then466.11107.1 ], [ 0, %if.end516.1.11164 ], !dbg !94
  br i1 %cmp465.1.11144, label %if.then466.1.1.1, label %if.end516.1.1.1, !dbg !243

if.then466.1.1.1:                                 ; preds = %if.end516.11115.1
  %225 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep1027, i64 %add472, !dbg !244
  %226 = getelementptr inbounds i8, ptr addrspace(4) %225, i64 %.idx, !dbg !244
  %gep1028.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %226, i64 4480, !dbg !244
  %condval_2.sroa.0.0.copyload.1.1.1 = load i32, ptr addrspace(4) %gep1028.1.1.1, align 16, !dbg !245, !tbaa !30
  %condval_2.sroa.5.0.add.ptr492.sroa_idx.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %226, i64 4484, !dbg !245
  %condval_2.sroa.5.0.copyload.1.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr492.sroa_idx.1.1.1, align 4, !dbg !245, !tbaa !30
  %condval_2.sroa.6.0.add.ptr492.sroa_idx.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %226, i64 4488, !dbg !245
  %condval_2.sroa.6.0.copyload.1.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr492.sroa_idx.1.1.1, align 8, !dbg !245, !tbaa !30
  %condval_2.sroa.7.0.add.ptr492.sroa_idx.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %226, i64 4492, !dbg !245
  %condval_2.sroa.7.0.copyload.1.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr492.sroa_idx.1.1.1, align 4, !dbg !245, !tbaa !30
  br label %if.end516.1.1.1, !dbg !246

if.end516.1.1.1:                                  ; preds = %if.then466.1.1.1, %if.end516.11115.1
  %condval_2.sroa.0.0.1.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1.1, %if.then466.1.1.1 ], [ 0, %if.end516.11115.1 ], !dbg !94
  %condval_2.sroa.5.0.1.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1.1, %if.then466.1.1.1 ], [ 0, %if.end516.11115.1 ], !dbg !94
  %condval_2.sroa.6.0.1.1.1 = phi i32 [ %condval_2.sroa.6.0.copyload.1.1.1, %if.then466.1.1.1 ], [ 0, %if.end516.11115.1 ], !dbg !94
  %condval_2.sroa.7.0.1.1.1 = phi i32 [ %condval_2.sroa.7.0.copyload.1.1.1, %if.then466.1.1.1 ], [ 0, %if.end516.11115.1 ], !dbg !94
  %227 = getelementptr inbounds i8, ptr addrspace(3) %185, i32 %.idx1003.11168, !dbg !248
  %add.ptr561.11119.1 = getelementptr inbounds i8, ptr addrspace(3) %227, i32 8192, !dbg !248
  %v_column.sroa.66.0.insert.ext1607 = shl i32 %condval_2.sroa.0.0.1.1.1, 16, !dbg !249
  %v_column.sroa.0.0.insert.ext1460 = and i32 %condval_2.sroa.0.0.11108.1, 65535, !dbg !249
  %v_column.sroa.0.0.insert.insert1462 = or disjoint i32 %v_column.sroa.66.0.insert.ext1607, %v_column.sroa.0.0.insert.ext1460, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1462, ptr addrspace(3) %add.ptr561.11119.1, align 4, !dbg !249, !tbaa !30
  %v_fetch.sroa.0.2.extract.shift1659 = lshr i32 %condval_2.sroa.0.0.11108.1, 16, !dbg !250
  %v_fetch.sroa.50.18.extract.shift1719 = and i32 %condval_2.sroa.0.0.1.1.1, -65536, !dbg !249
  %228 = getelementptr inbounds i8, ptr addrspace(3) %188, i32 %.idx1003.1.11175, !dbg !248
  %add.ptr561.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %228, i32 8192, !dbg !248
  %v_column.sroa.0.0.insert.insert1466 = or disjoint i32 %v_fetch.sroa.50.18.extract.shift1719, %v_fetch.sroa.0.2.extract.shift1659, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1466, ptr addrspace(3) %add.ptr561.1.1.1, align 4, !dbg !249, !tbaa !30
  %229 = getelementptr inbounds i8, ptr addrspace(3) %191, i32 %.idx1003.2.11182, !dbg !248
  %add.ptr561.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %229, i32 8192, !dbg !248
  %v_column.sroa.66.0.insert.ext1617 = shl i32 %condval_2.sroa.5.0.1.1.1, 16, !dbg !249
  %v_column.sroa.0.0.insert.ext1468 = and i32 %condval_2.sroa.5.0.11109.1, 65535, !dbg !249
  %v_column.sroa.0.0.insert.insert1470 = or disjoint i32 %v_column.sroa.66.0.insert.ext1617, %v_column.sroa.0.0.insert.ext1468, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1470, ptr addrspace(3) %add.ptr561.2.1.1, align 4, !dbg !249, !tbaa !30
  %v_fetch.sroa.14.6.extract.shift1674 = lshr i32 %condval_2.sroa.5.0.11109.1, 16, !dbg !250
  %v_fetch.sroa.62.22.extract.shift1734 = and i32 %condval_2.sroa.5.0.1.1.1, -65536, !dbg !249
  %230 = getelementptr inbounds i8, ptr addrspace(3) %194, i32 %.idx1003.3.11189, !dbg !248
  %add.ptr561.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %230, i32 8192, !dbg !248
  %v_column.sroa.0.0.insert.insert1474 = or disjoint i32 %v_fetch.sroa.62.22.extract.shift1734, %v_fetch.sroa.14.6.extract.shift1674, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1474, ptr addrspace(3) %add.ptr561.3.1.1, align 4, !dbg !249, !tbaa !30
  %231 = getelementptr inbounds i8, ptr addrspace(3) %197, i32 %.idx1003.4.11196, !dbg !248
  %add.ptr561.4.1.1 = getelementptr inbounds i8, ptr addrspace(3) %231, i32 8192, !dbg !248
  %v_column.sroa.66.0.insert.ext1627 = shl i32 %condval_2.sroa.6.0.1.1.1, 16, !dbg !249
  %v_column.sroa.0.0.insert.ext1476 = and i32 %condval_2.sroa.6.0.11110.1, 65535, !dbg !249
  %v_column.sroa.0.0.insert.insert1478 = or disjoint i32 %v_column.sroa.66.0.insert.ext1627, %v_column.sroa.0.0.insert.ext1476, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1478, ptr addrspace(3) %add.ptr561.4.1.1, align 4, !dbg !249, !tbaa !30
  %v_fetch.sroa.26.10.extract.shift1689 = lshr i32 %condval_2.sroa.6.0.11110.1, 16, !dbg !250
  %v_fetch.sroa.74.26.extract.shift1749 = and i32 %condval_2.sroa.6.0.1.1.1, -65536, !dbg !249
  %232 = getelementptr inbounds i8, ptr addrspace(3) %200, i32 %.idx1003.5.11203, !dbg !248
  %add.ptr561.5.1.1 = getelementptr inbounds i8, ptr addrspace(3) %232, i32 8192, !dbg !248
  %v_column.sroa.0.0.insert.insert1482 = or disjoint i32 %v_fetch.sroa.74.26.extract.shift1749, %v_fetch.sroa.26.10.extract.shift1689, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1482, ptr addrspace(3) %add.ptr561.5.1.1, align 4, !dbg !249, !tbaa !30
  %233 = getelementptr inbounds i8, ptr addrspace(3) %203, i32 %.idx1003.6.11210, !dbg !248
  %add.ptr561.6.1.1 = getelementptr inbounds i8, ptr addrspace(3) %233, i32 8192, !dbg !248
  %v_column.sroa.66.0.insert.ext1637 = shl i32 %condval_2.sroa.7.0.1.1.1, 16, !dbg !249
  %v_column.sroa.0.0.insert.ext1484 = and i32 %condval_2.sroa.7.0.11111.1, 65535, !dbg !249
  %v_column.sroa.0.0.insert.insert1486 = or disjoint i32 %v_column.sroa.66.0.insert.ext1637, %v_column.sroa.0.0.insert.ext1484, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1486, ptr addrspace(3) %add.ptr561.6.1.1, align 4, !dbg !249, !tbaa !30
  %v_fetch.sroa.38.14.extract.shift1704 = lshr i32 %condval_2.sroa.7.0.11111.1, 16, !dbg !250
  %v_fetch.sroa.86.30.extract.shift1764 = and i32 %condval_2.sroa.7.0.1.1.1, -65536, !dbg !249
  %234 = getelementptr inbounds i8, ptr addrspace(3) %206, i32 %.idx1003.7.11217, !dbg !248
  %add.ptr561.7.1.1 = getelementptr inbounds i8, ptr addrspace(3) %234, i32 8192, !dbg !248
  %v_column.sroa.0.0.insert.insert1490 = or disjoint i32 %v_fetch.sroa.86.30.extract.shift1764, %v_fetch.sroa.38.14.extract.shift1704, !dbg !249
  store i32 %v_column.sroa.0.0.insert.insert1490, ptr addrspace(3) %add.ptr561.7.1.1, align 4, !dbg !249, !tbaa !30
  fence syncscope("warp") release, !dbg !252
  tail call void @llvm.mxc.barrier.warp(), !dbg !255
  fence syncscope("warp") acquire, !dbg !256
  %and602 = shl nuw nsw i32 %3, 8
  %mul603 = and i32 %and602, 1792
  %mul610 = and i32 %5, 32
  %mul615 = and i32 %shr552, 126
  %shr621 = and i32 %shr552, 1
  %add611 = or disjoint i32 %mul603, %mul610
  %xor623 = xor i32 %shr621, %and555
  %gep1037 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 8192), i32 %add611, !dbg !257
  %xor626 = xor i32 %xor623, %mul615, !dbg !258
  %.idx1002 = shl nuw nsw i32 %xor626, 2, !dbg !259
  %gep1035 = getelementptr inbounds i8, ptr addrspace(3) %gep1037, i32 %.idx1002, !dbg !259
  %235 = load i32, ptr addrspace(3) %gep1035, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.0.0.vec.insert = insertelement <2 x i32> poison, i32 %235, i64 0, !dbg !260
  %add617.1 = or i32 %shr552, 1, !dbg !261
  %xor626.1 = xor i32 %xor623, %add617.1, !dbg !258
  %.idx1002.1 = shl nuw nsw i32 %xor626.1, 2, !dbg !259
  %gep1035.1 = getelementptr inbounds i8, ptr addrspace(3) %gep1037, i32 %.idx1002.1, !dbg !259
  %236 = load i32, ptr addrspace(3) %gep1035.1, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.0.4.vec.insert = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert, i32 %236, i64 1, !dbg !260
  %add606.1 = or disjoint i32 %mul603, %mul610
  %add611.1 = or disjoint i32 %add606.1, 64
  %add622.1 = or disjoint i32 %shr621, 2
  %xor623.1 = xor i32 %add622.1, %and555
  %gep1037.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 8192), i32 %add611.1, !dbg !257
  %xor626.11220 = xor i32 %xor623.1, %mul615, !dbg !258
  %.idx1002.11221 = shl nuw nsw i32 %xor626.11220, 2, !dbg !259
  %gep1035.11222 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.1, i32 %.idx1002.11221, !dbg !259
  %237 = load i32, ptr addrspace(3) %gep1035.11222, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.14.8.vec.insert = insertelement <2 x i32> poison, i32 %237, i64 0, !dbg !260
  %xor626.1.1 = xor i32 %xor623.1, %add617.1, !dbg !258
  %.idx1002.1.1 = shl nuw nsw i32 %xor626.1.1, 2, !dbg !259
  %gep1035.1.1 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.1, i32 %.idx1002.1.1, !dbg !259
  %238 = load i32, ptr addrspace(3) %gep1035.1.1, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.14.12.vec.insert = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert, i32 %238, i64 1, !dbg !260
  %add606.2 = or disjoint i32 %mul603, %mul610
  %add611.2 = or disjoint i32 %add606.2, 128
  %add622.2 = or disjoint i32 %shr621, 4
  %xor623.2 = xor i32 %add622.2, %and555
  %gep1037.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 8192), i32 %add611.2, !dbg !257
  %xor626.2 = xor i32 %xor623.2, %mul615, !dbg !258
  %.idx1002.2 = shl nuw nsw i32 %xor626.2, 2, !dbg !259
  %gep1035.2 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.2, i32 %.idx1002.2, !dbg !259
  %239 = load i32, ptr addrspace(3) %gep1035.2, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.26.16.vec.insert = insertelement <2 x i32> poison, i32 %239, i64 0, !dbg !260
  %xor626.1.2 = xor i32 %xor623.2, %add617.1, !dbg !258
  %.idx1002.1.2 = shl nuw nsw i32 %xor626.1.2, 2, !dbg !259
  %gep1035.1.2 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.2, i32 %.idx1002.1.2, !dbg !259
  %240 = load i32, ptr addrspace(3) %gep1035.1.2, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.26.20.vec.insert = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert, i32 %240, i64 1, !dbg !260
  %add606.3 = or disjoint i32 %mul603, %mul610
  %add611.3 = or disjoint i32 %add606.3, 192
  %add622.3 = or disjoint i32 %shr621, 6
  %xor623.3 = xor i32 %add622.3, %and555
  %gep1037.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 8192), i32 %add611.3, !dbg !257
  %xor626.3 = xor i32 %xor623.3, %mul615, !dbg !258
  %.idx1002.3 = shl nuw nsw i32 %xor626.3, 2, !dbg !259
  %gep1035.3 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.3, i32 %.idx1002.3, !dbg !259
  %241 = load i32, ptr addrspace(3) %gep1035.3, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.38.24.vec.insert = insertelement <2 x i32> poison, i32 %241, i64 0, !dbg !260
  %xor626.1.3 = xor i32 %xor623.3, %add617.1, !dbg !258
  %.idx1002.1.3 = shl nuw nsw i32 %xor626.1.3, 2, !dbg !259
  %gep1035.1.3 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.3, i32 %.idx1002.1.3, !dbg !259
  %242 = load i32, ptr addrspace(3) %gep1035.1.3, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.38.28.vec.insert = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert, i32 %242, i64 1, !dbg !260
  %243 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert to <4 x half>, !dbg !262
  %244 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %243, <4 x half> %119, <4 x float> zeroinitializer), !dbg !263
  %245 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert to <4 x half>, !dbg !262
  %246 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %245, <4 x half> %119, <4 x float> zeroinitializer), !dbg !263
  %247 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert to <4 x half>, !dbg !262
  %248 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %247, <4 x half> %119, <4 x float> zeroinitializer), !dbg !263
  %249 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert to <4 x half>, !dbg !262
  %250 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %249, <4 x half> %119, <4 x float> zeroinitializer), !dbg !263
  %add604.1 = or disjoint i32 %mul603, %mul610
  %add611.11225 = or disjoint i32 %add604.1, 2048
  %gep1037.11227 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 8192), i32 %add611.11225, !dbg !257
  %gep1035.11230 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.11227, i32 %.idx1002, !dbg !259
  %251 = load i32, ptr addrspace(3) %gep1035.11230, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1308 = insertelement <2 x i32> poison, i32 %251, i64 0, !dbg !260
  %gep1035.1.11234 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.11227, i32 %.idx1002.1, !dbg !259
  %252 = load i32, ptr addrspace(3) %gep1035.1.11234, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1314 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1308, i32 %252, i64 1, !dbg !260
  %add606.1.1 = or disjoint i32 %mul603, %mul610
  %add611.1.1 = or disjoint i32 %add606.1.1, 2112
  %gep1037.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 8192), i32 %add611.1.1, !dbg !257
  %gep1035.11222.1 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.1.1, i32 %.idx1002.11221, !dbg !259
  %253 = load i32, ptr addrspace(3) %gep1035.11222.1, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1324 = insertelement <2 x i32> poison, i32 %253, i64 0, !dbg !260
  %gep1035.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.1.1, i32 %.idx1002.1.1, !dbg !259
  %254 = load i32, ptr addrspace(3) %gep1035.1.1.1, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1330 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1324, i32 %254, i64 1, !dbg !260
  %add606.2.1 = or disjoint i32 %mul603, %mul610
  %add611.2.1 = or disjoint i32 %add606.2.1, 2176
  %gep1037.2.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 8192), i32 %add611.2.1, !dbg !257
  %gep1035.2.1 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.2.1, i32 %.idx1002.2, !dbg !259
  %255 = load i32, ptr addrspace(3) %gep1035.2.1, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1340 = insertelement <2 x i32> poison, i32 %255, i64 0, !dbg !260
  %gep1035.1.2.1 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.2.1, i32 %.idx1002.1.2, !dbg !259
  %256 = load i32, ptr addrspace(3) %gep1035.1.2.1, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1346 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1340, i32 %256, i64 1, !dbg !260
  %add606.3.1 = or disjoint i32 %mul603, %mul610
  %add611.3.1 = or disjoint i32 %add606.3.1, 2240
  %gep1037.3.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 8192), i32 %add611.3.1, !dbg !257
  %gep1035.3.1 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.3.1, i32 %.idx1002.3, !dbg !259
  %257 = load i32, ptr addrspace(3) %gep1035.3.1, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1356 = insertelement <2 x i32> poison, i32 %257, i64 0, !dbg !260
  %gep1035.1.3.1 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.3.1, i32 %.idx1002.1.3, !dbg !259
  %258 = load i32, ptr addrspace(3) %gep1035.1.3.1, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1362 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1356, i32 %258, i64 1, !dbg !260
  %259 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1314 to <4 x half>, !dbg !262
  %260 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %259, <4 x half> %119, <4 x float> zeroinitializer), !dbg !263
  %261 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1330 to <4 x half>, !dbg !262
  %262 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %261, <4 x half> %119, <4 x float> zeroinitializer), !dbg !263
  %263 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1346 to <4 x half>, !dbg !262
  %264 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %263, <4 x half> %119, <4 x float> zeroinitializer), !dbg !263
  %265 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1362 to <4 x half>, !dbg !262
  %266 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %265, <4 x half> %119, <4 x float> zeroinitializer), !dbg !263
  %add616.1 = add nuw nsw i32 %mul615, 8
  %xor626.11242 = xor i32 %xor623, %add616.1, !dbg !258
  %.idx1002.11243 = shl nuw nsw i32 %xor626.11242, 2, !dbg !259
  %gep1035.11244 = getelementptr inbounds i8, ptr addrspace(3) %gep1037, i32 %.idx1002.11243, !dbg !259
  %267 = load i32, ptr addrspace(3) %gep1035.11244, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1310 = insertelement <2 x i32> poison, i32 %267, i64 0, !dbg !260
  %add617.1.11245 = add nuw nsw i32 %mul615, 9, !dbg !261
  %xor626.1.11246 = xor i32 %xor623, %add617.1.11245, !dbg !258
  %.idx1002.1.11247 = shl nuw nsw i32 %xor626.1.11246, 2, !dbg !259
  %gep1035.1.11248 = getelementptr inbounds i8, ptr addrspace(3) %gep1037, i32 %.idx1002.1.11247, !dbg !259
  %268 = load i32, ptr addrspace(3) %gep1035.1.11248, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1316 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1310, i32 %268, i64 1, !dbg !260
  %xor626.11220.11255 = xor i32 %xor623.1, %add616.1, !dbg !258
  %.idx1002.11221.11256 = shl nuw nsw i32 %xor626.11220.11255, 2, !dbg !259
  %gep1035.11222.11257 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.1, i32 %.idx1002.11221.11256, !dbg !259
  %269 = load i32, ptr addrspace(3) %gep1035.11222.11257, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1326 = insertelement <2 x i32> poison, i32 %269, i64 0, !dbg !260
  %xor626.1.1.11260 = xor i32 %xor623.1, %add617.1.11245, !dbg !258
  %.idx1002.1.1.11261 = shl nuw nsw i32 %xor626.1.1.11260, 2, !dbg !259
  %gep1035.1.1.11262 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.1, i32 %.idx1002.1.1.11261, !dbg !259
  %270 = load i32, ptr addrspace(3) %gep1035.1.1.11262, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1332 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1326, i32 %270, i64 1, !dbg !260
  %xor626.2.11270 = xor i32 %xor623.2, %add616.1, !dbg !258
  %.idx1002.2.11271 = shl nuw nsw i32 %xor626.2.11270, 2, !dbg !259
  %gep1035.2.11272 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.2, i32 %.idx1002.2.11271, !dbg !259
  %271 = load i32, ptr addrspace(3) %gep1035.2.11272, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1342 = insertelement <2 x i32> poison, i32 %271, i64 0, !dbg !260
  %xor626.1.2.11275 = xor i32 %xor623.2, %add617.1.11245, !dbg !258
  %.idx1002.1.2.11276 = shl nuw nsw i32 %xor626.1.2.11275, 2, !dbg !259
  %gep1035.1.2.11277 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.2, i32 %.idx1002.1.2.11276, !dbg !259
  %272 = load i32, ptr addrspace(3) %gep1035.1.2.11277, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1348 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1342, i32 %272, i64 1, !dbg !260
  %xor626.3.11285 = xor i32 %xor623.3, %add616.1, !dbg !258
  %.idx1002.3.11286 = shl nuw nsw i32 %xor626.3.11285, 2, !dbg !259
  %gep1035.3.11287 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.3, i32 %.idx1002.3.11286, !dbg !259
  %273 = load i32, ptr addrspace(3) %gep1035.3.11287, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1358 = insertelement <2 x i32> poison, i32 %273, i64 0, !dbg !260
  %xor626.1.3.11290 = xor i32 %xor623.3, %add617.1.11245, !dbg !258
  %.idx1002.1.3.11291 = shl nuw nsw i32 %xor626.1.3.11290, 2, !dbg !259
  %gep1035.1.3.11292 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.3, i32 %.idx1002.1.3.11291, !dbg !259
  %274 = load i32, ptr addrspace(3) %gep1035.1.3.11292, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1364 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1358, i32 %274, i64 1, !dbg !260
  %275 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1316 to <4 x half>, !dbg !262
  %276 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %275, <4 x half> %135, <4 x float> %244), !dbg !263
  %277 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1332 to <4 x half>, !dbg !262
  %278 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %277, <4 x half> %135, <4 x float> %246), !dbg !263
  %279 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1348 to <4 x half>, !dbg !262
  %280 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %279, <4 x half> %135, <4 x float> %248), !dbg !263
  %281 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1364 to <4 x half>, !dbg !262
  %282 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %281, <4 x half> %135, <4 x float> %250), !dbg !263
  %gep1035.11230.1 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.11227, i32 %.idx1002.11243, !dbg !259
  %283 = load i32, ptr addrspace(3) %gep1035.11230.1, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1312 = insertelement <2 x i32> poison, i32 %283, i64 0, !dbg !260
  %gep1035.1.11234.1 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.11227, i32 %.idx1002.1.11247, !dbg !259
  %284 = load i32, ptr addrspace(3) %gep1035.1.11234.1, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1318 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1312, i32 %284, i64 1, !dbg !260
  %gep1035.11222.1.1 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.1.1, i32 %.idx1002.11221.11256, !dbg !259
  %285 = load i32, ptr addrspace(3) %gep1035.11222.1.1, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1328 = insertelement <2 x i32> poison, i32 %285, i64 0, !dbg !260
  %gep1035.1.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.1.1, i32 %.idx1002.1.1.11261, !dbg !259
  %286 = load i32, ptr addrspace(3) %gep1035.1.1.1.1, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1334 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1328, i32 %286, i64 1, !dbg !260
  %gep1035.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.2.1, i32 %.idx1002.2.11271, !dbg !259
  %287 = load i32, ptr addrspace(3) %gep1035.2.1.1, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1344 = insertelement <2 x i32> poison, i32 %287, i64 0, !dbg !260
  %gep1035.1.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.2.1, i32 %.idx1002.1.2.11276, !dbg !259
  %288 = load i32, ptr addrspace(3) %gep1035.1.2.1.1, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1350 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1344, i32 %288, i64 1, !dbg !260
  %gep1035.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.3.1, i32 %.idx1002.3.11286, !dbg !259
  %289 = load i32, ptr addrspace(3) %gep1035.3.1.1, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1360 = insertelement <2 x i32> poison, i32 %289, i64 0, !dbg !260
  %gep1035.1.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %gep1037.3.1, i32 %.idx1002.1.3.11291, !dbg !259
  %290 = load i32, ptr addrspace(3) %gep1035.1.3.1.1, align 4, !dbg !260, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1366 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1360, i32 %290, i64 1, !dbg !260
  %291 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1318 to <4 x half>, !dbg !262
  %292 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %291, <4 x half> %135, <4 x float> %260), !dbg !263
  %293 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1334 to <4 x half>, !dbg !262
  %294 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %293, <4 x half> %135, <4 x float> %262), !dbg !263
  %295 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1350 to <4 x half>, !dbg !262
  %296 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %295, <4 x half> %135, <4 x float> %264), !dbg !263
  %297 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1366 to <4 x half>, !dbg !262
  %298 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %297, <4 x half> %135, <4 x float> %266), !dbg !263
  %add444 = fadd contract float %add439, %147, !dbg !264
  br label %if.end687, !dbg !58

if.end687:                                        ; preds = %if.end516.1.1.1, %for.body677.preheader
  %.pre-phi2110 = phi i64 [ %15, %if.end516.1.1.1 ], [ %.pre2109, %for.body677.preheader ], !dbg !57
  %.pre-phi2108 = phi i64 [ %12, %if.end516.1.1.1 ], [ %.pre2107, %for.body677.preheader ], !dbg !57
  %.pre-phi2106 = phi i64 [ %8, %if.end516.1.1.1 ], [ %.pre2105, %for.body677.preheader ], !dbg !57
  %.pre-phi2104 = phi i64 [ %6, %if.end516.1.1.1 ], [ %.pre2103, %for.body677.preheader ], !dbg !56
  %shr758.pre-phi = phi i32 [ %and48, %if.end516.1.1.1 ], [ %.pre2098, %for.body677.preheader ]
  %.pre-phi2097 = phi i32 [ %mul20, %if.end516.1.1.1 ], [ %.pre2096, %for.body677.preheader ]
  %mul737.pre-phi = phi i32 [ %mul98, %if.end516.1.1.1 ], [ %.pre2095, %for.body677.preheader ]
  %and730.pre-phi = phi i32 [ %and555, %if.end516.1.1.1 ], [ %.pre2092, %for.body677.preheader ]
  %shr727.pre-phi = phi i32 [ %shr39, %if.end516.1.1.1 ], [ %.pre2091, %for.body677.preheader ]
  %and723.pre-phi = phi i32 [ %4, %if.end516.1.1.1 ], [ %.pre2090, %for.body677.preheader ]
  %.pre-phi = phi i32 [ %3, %if.end516.1.1.1 ], [ %.pre, %for.body677.preheader ]
  %numerator.sroa.170.0 = phi <4 x float> [ %298, %if.end516.1.1.1 ], [ zeroinitializer, %for.body677.preheader ], !dbg !94
  %numerator.sroa.146.0 = phi <4 x float> [ %296, %if.end516.1.1.1 ], [ zeroinitializer, %for.body677.preheader ], !dbg !94
  %numerator.sroa.122.0 = phi <4 x float> [ %294, %if.end516.1.1.1 ], [ zeroinitializer, %for.body677.preheader ], !dbg !94
  %numerator.sroa.98.0 = phi <4 x float> [ %292, %if.end516.1.1.1 ], [ zeroinitializer, %for.body677.preheader ], !dbg !94
  %numerator.sroa.74.0 = phi <4 x float> [ %282, %if.end516.1.1.1 ], [ zeroinitializer, %for.body677.preheader ], !dbg !94
  %numerator.sroa.50.0 = phi <4 x float> [ %280, %if.end516.1.1.1 ], [ zeroinitializer, %for.body677.preheader ], !dbg !94
  %numerator.sroa.26.0 = phi <4 x float> [ %278, %if.end516.1.1.1 ], [ zeroinitializer, %for.body677.preheader ], !dbg !94
  %numerator.sroa.0.0 = phi <4 x float> [ %276, %if.end516.1.1.1 ], [ zeroinitializer, %for.body677.preheader ], !dbg !94
  %denominator.sroa.0.1 = phi float [ %add444, %if.end516.1.1.1 ], [ 0.000000e+00, %for.body677.preheader ], !dbg !94
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !265
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !265
  %div.1 = fdiv contract float %numerator.sroa.0.4.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !265
  %div.2 = fdiv contract float %numerator.sroa.0.8.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !265
  %div.3 = fdiv contract float %numerator.sroa.0.12.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.26.16.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 0, !dbg !265
  %div.4 = fdiv contract float %numerator.sroa.26.16.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.26.20.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 1, !dbg !265
  %div.5 = fdiv contract float %numerator.sroa.26.20.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.26.24.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 2, !dbg !265
  %div.6 = fdiv contract float %numerator.sroa.26.24.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.26.28.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 3, !dbg !265
  %div.7 = fdiv contract float %numerator.sroa.26.28.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.50.32.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 0, !dbg !265
  %div.8 = fdiv contract float %numerator.sroa.50.32.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.50.36.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 1, !dbg !265
  %div.9 = fdiv contract float %numerator.sroa.50.36.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.50.40.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 2, !dbg !265
  %div.10 = fdiv contract float %numerator.sroa.50.40.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.50.44.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 3, !dbg !265
  %div.11 = fdiv contract float %numerator.sroa.50.44.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.74.48.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 0, !dbg !265
  %div.12 = fdiv contract float %numerator.sroa.74.48.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.74.52.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 1, !dbg !265
  %div.13 = fdiv contract float %numerator.sroa.74.52.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.74.56.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 2, !dbg !265
  %div.14 = fdiv contract float %numerator.sroa.74.56.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.74.60.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 3, !dbg !265
  %div.15 = fdiv contract float %numerator.sroa.74.60.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.98.64.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 0, !dbg !265
  %div.16 = fdiv contract float %numerator.sroa.98.64.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.98.68.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 1, !dbg !265
  %div.17 = fdiv contract float %numerator.sroa.98.68.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.98.72.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 2, !dbg !265
  %div.18 = fdiv contract float %numerator.sroa.98.72.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.98.76.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 3, !dbg !265
  %div.19 = fdiv contract float %numerator.sroa.98.76.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.122.80.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 0, !dbg !265
  %div.20 = fdiv contract float %numerator.sroa.122.80.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.122.84.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 1, !dbg !265
  %div.21 = fdiv contract float %numerator.sroa.122.84.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.122.88.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 2, !dbg !265
  %div.22 = fdiv contract float %numerator.sroa.122.88.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.122.92.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 3, !dbg !265
  %div.23 = fdiv contract float %numerator.sroa.122.92.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.146.96.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 0, !dbg !265
  %div.24 = fdiv contract float %numerator.sroa.146.96.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.146.100.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 1, !dbg !265
  %div.25 = fdiv contract float %numerator.sroa.146.100.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.146.104.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 2, !dbg !265
  %div.26 = fdiv contract float %numerator.sroa.146.104.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.146.108.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 3, !dbg !265
  %div.27 = fdiv contract float %numerator.sroa.146.108.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.170.112.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 0, !dbg !265
  %div.28 = fdiv contract float %numerator.sroa.170.112.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.170.116.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 1, !dbg !265
  %div.29 = fdiv contract float %numerator.sroa.170.116.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.170.120.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 2, !dbg !265
  %div.30 = fdiv contract float %numerator.sroa.170.120.vec.extract, %denominator.sroa.0.1, !dbg !266
  %numerator.sroa.170.124.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 3, !dbg !265
  %div.31 = fdiv contract float %numerator.sroa.170.124.vec.extract, %denominator.sroa.0.1, !dbg !266
  %mul724 = and i32 %and723.pre-phi, 1920
  %299 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !271
  %300 = fptrunc float %div to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %299), !dbg !267, !noalias !271
  %301 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !271
  %302 = fptrunc float %div.1 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %301), !dbg !276, !noalias !271
  %303 = bitcast half %300 to i16, !dbg !278
  %304 = bitcast half %302 to i16, !dbg !281
  %305 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !286
  %306 = fptrunc float %div.2 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %305), !dbg !282, !noalias !286
  %307 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !291, !noalias !286
  %308 = fptrunc float %div.3 to half, !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %307), !dbg !291, !noalias !286
  %309 = bitcast half %306 to i16, !dbg !293
  %310 = bitcast half %308 to i16, !dbg !295
  %__6.sroa.6.0.insert.ext = zext i16 %310 to i64, !dbg !296
  %__6.sroa.6.0.insert.shift = shl nuw i64 %__6.sroa.6.0.insert.ext, 48, !dbg !296
  %__6.sroa.5.0.insert.ext = zext i16 %309 to i64, !dbg !296
  %__6.sroa.5.0.insert.shift = shl nuw nsw i64 %__6.sroa.5.0.insert.ext, 32, !dbg !296
  %__6.sroa.5.0.insert.insert = or disjoint i64 %__6.sroa.6.0.insert.shift, %__6.sroa.5.0.insert.shift, !dbg !296
  %__6.sroa.4.0.insert.ext = zext i16 %304 to i64, !dbg !296
  %__6.sroa.4.0.insert.shift = shl nuw nsw i64 %__6.sroa.4.0.insert.ext, 16, !dbg !296
  %__6.sroa.4.0.insert.insert = or disjoint i64 %__6.sroa.5.0.insert.insert, %__6.sroa.4.0.insert.shift, !dbg !296
  %__6.sroa.0.0.insert.ext = zext i16 %303 to i64, !dbg !296
  %__6.sroa.0.0.insert.insert = or disjoint i64 %__6.sroa.4.0.insert.insert, %__6.sroa.0.0.insert.ext, !dbg !296
  %xor731 = xor i32 %shr727.pre-phi, %and730.pre-phi, !dbg !297
  %mul732 = shl nuw nsw i32 %xor731, 3, !dbg !298
  %add733 = add nuw nsw i32 %mul732, %mul724, !dbg !299
  %add738 = or disjoint i32 %add733, %mul737.pre-phi, !dbg !300
  %add.ptr740 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add738, !dbg !301
  store i64 %__6.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr740, align 8, !dbg !302
  %311 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !271
  %312 = fptrunc float %div.4 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %311), !dbg !267, !noalias !271
  %313 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !271
  %314 = fptrunc float %div.5 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %313), !dbg !276, !noalias !271
  %315 = bitcast half %312 to i16, !dbg !278
  %316 = bitcast half %314 to i16, !dbg !281
  %317 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !286
  %318 = fptrunc float %div.6 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %317), !dbg !282, !noalias !286
  %319 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !291, !noalias !286
  %320 = fptrunc float %div.7 to half, !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %319), !dbg !291, !noalias !286
  %321 = bitcast half %318 to i16, !dbg !293
  %322 = bitcast half %320 to i16, !dbg !295
  %__6.sroa.6.0.insert.ext.1 = zext i16 %322 to i64, !dbg !296
  %__6.sroa.6.0.insert.shift.1 = shl nuw i64 %__6.sroa.6.0.insert.ext.1, 48, !dbg !296
  %__6.sroa.5.0.insert.ext.1 = zext i16 %321 to i64, !dbg !296
  %__6.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.1, 32, !dbg !296
  %__6.sroa.5.0.insert.insert.1 = or disjoint i64 %__6.sroa.6.0.insert.shift.1, %__6.sroa.5.0.insert.shift.1, !dbg !296
  %__6.sroa.4.0.insert.ext.1 = zext i16 %316 to i64, !dbg !296
  %__6.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.1, 16, !dbg !296
  %__6.sroa.4.0.insert.insert.1 = or disjoint i64 %__6.sroa.5.0.insert.insert.1, %__6.sroa.4.0.insert.shift.1, !dbg !296
  %__6.sroa.0.0.insert.ext.1 = zext i16 %315 to i64, !dbg !296
  %__6.sroa.0.0.insert.insert.1 = or disjoint i64 %__6.sroa.4.0.insert.insert.1, %__6.sroa.0.0.insert.ext.1, !dbg !296
  %add728.1 = add nuw nsw i32 %shr727.pre-phi, 2, !dbg !303
  %xor731.1 = xor i32 %add728.1, %and730.pre-phi, !dbg !297
  %mul732.1 = shl nuw nsw i32 %xor731.1, 3, !dbg !298
  %add733.1 = add nuw nsw i32 %mul732.1, %mul724, !dbg !299
  %add738.1 = or disjoint i32 %add733.1, %mul737.pre-phi, !dbg !300
  %add.ptr740.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add738.1, !dbg !301
  store i64 %__6.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr740.1, align 8, !dbg !302
  %323 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !271
  %324 = fptrunc float %div.8 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %323), !dbg !267, !noalias !271
  %325 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !271
  %326 = fptrunc float %div.9 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %325), !dbg !276, !noalias !271
  %327 = bitcast half %324 to i16, !dbg !278
  %328 = bitcast half %326 to i16, !dbg !281
  %329 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !286
  %330 = fptrunc float %div.10 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %329), !dbg !282, !noalias !286
  %331 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !291, !noalias !286
  %332 = fptrunc float %div.11 to half, !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %331), !dbg !291, !noalias !286
  %333 = bitcast half %330 to i16, !dbg !293
  %334 = bitcast half %332 to i16, !dbg !295
  %__6.sroa.6.0.insert.ext.2 = zext i16 %334 to i64, !dbg !296
  %__6.sroa.6.0.insert.shift.2 = shl nuw i64 %__6.sroa.6.0.insert.ext.2, 48, !dbg !296
  %__6.sroa.5.0.insert.ext.2 = zext i16 %333 to i64, !dbg !296
  %__6.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.2, 32, !dbg !296
  %__6.sroa.5.0.insert.insert.2 = or disjoint i64 %__6.sroa.6.0.insert.shift.2, %__6.sroa.5.0.insert.shift.2, !dbg !296
  %__6.sroa.4.0.insert.ext.2 = zext i16 %328 to i64, !dbg !296
  %__6.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.2, 16, !dbg !296
  %__6.sroa.4.0.insert.insert.2 = or disjoint i64 %__6.sroa.5.0.insert.insert.2, %__6.sroa.4.0.insert.shift.2, !dbg !296
  %__6.sroa.0.0.insert.ext.2 = zext i16 %327 to i64, !dbg !296
  %__6.sroa.0.0.insert.insert.2 = or disjoint i64 %__6.sroa.4.0.insert.insert.2, %__6.sroa.0.0.insert.ext.2, !dbg !296
  %add728.2 = add nuw nsw i32 %shr727.pre-phi, 4, !dbg !303
  %xor731.2 = xor i32 %add728.2, %and730.pre-phi, !dbg !297
  %mul732.2 = shl nuw nsw i32 %xor731.2, 3, !dbg !298
  %add733.2 = add nuw nsw i32 %mul732.2, %mul724, !dbg !299
  %add738.2 = or disjoint i32 %add733.2, %mul737.pre-phi, !dbg !300
  %add.ptr740.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add738.2, !dbg !301
  store i64 %__6.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr740.2, align 8, !dbg !302
  %335 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !271
  %336 = fptrunc float %div.12 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %335), !dbg !267, !noalias !271
  %337 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !271
  %338 = fptrunc float %div.13 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %337), !dbg !276, !noalias !271
  %339 = bitcast half %336 to i16, !dbg !278
  %340 = bitcast half %338 to i16, !dbg !281
  %341 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !286
  %342 = fptrunc float %div.14 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %341), !dbg !282, !noalias !286
  %343 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !291, !noalias !286
  %344 = fptrunc float %div.15 to half, !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %343), !dbg !291, !noalias !286
  %345 = bitcast half %342 to i16, !dbg !293
  %346 = bitcast half %344 to i16, !dbg !295
  %__6.sroa.6.0.insert.ext.3 = zext i16 %346 to i64, !dbg !296
  %__6.sroa.6.0.insert.shift.3 = shl nuw i64 %__6.sroa.6.0.insert.ext.3, 48, !dbg !296
  %__6.sroa.5.0.insert.ext.3 = zext i16 %345 to i64, !dbg !296
  %__6.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.3, 32, !dbg !296
  %__6.sroa.5.0.insert.insert.3 = or disjoint i64 %__6.sroa.6.0.insert.shift.3, %__6.sroa.5.0.insert.shift.3, !dbg !296
  %__6.sroa.4.0.insert.ext.3 = zext i16 %340 to i64, !dbg !296
  %__6.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.3, 16, !dbg !296
  %__6.sroa.4.0.insert.insert.3 = or disjoint i64 %__6.sroa.5.0.insert.insert.3, %__6.sroa.4.0.insert.shift.3, !dbg !296
  %__6.sroa.0.0.insert.ext.3 = zext i16 %339 to i64, !dbg !296
  %__6.sroa.0.0.insert.insert.3 = or disjoint i64 %__6.sroa.4.0.insert.insert.3, %__6.sroa.0.0.insert.ext.3, !dbg !296
  %add728.3 = add nuw nsw i32 %shr727.pre-phi, 6, !dbg !303
  %xor731.3 = xor i32 %add728.3, %and730.pre-phi, !dbg !297
  %mul732.3 = shl nuw nsw i32 %xor731.3, 3, !dbg !298
  %add733.3 = add nuw nsw i32 %mul732.3, %mul724, !dbg !299
  %add738.3 = or disjoint i32 %add733.3, %mul737.pre-phi, !dbg !300
  %add.ptr740.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add738.3, !dbg !301
  store i64 %__6.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr740.3, align 8, !dbg !302
  %347 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !271
  %348 = fptrunc float %div.16 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %347), !dbg !267, !noalias !271
  %349 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !271
  %350 = fptrunc float %div.17 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %349), !dbg !276, !noalias !271
  %351 = bitcast half %348 to i16, !dbg !278
  %352 = bitcast half %350 to i16, !dbg !281
  %353 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !286
  %354 = fptrunc float %div.18 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %353), !dbg !282, !noalias !286
  %355 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !291, !noalias !286
  %356 = fptrunc float %div.19 to half, !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %355), !dbg !291, !noalias !286
  %357 = bitcast half %354 to i16, !dbg !293
  %358 = bitcast half %356 to i16, !dbg !295
  %__6.sroa.6.0.insert.ext.4 = zext i16 %358 to i64, !dbg !296
  %__6.sroa.6.0.insert.shift.4 = shl nuw i64 %__6.sroa.6.0.insert.ext.4, 48, !dbg !296
  %__6.sroa.5.0.insert.ext.4 = zext i16 %357 to i64, !dbg !296
  %__6.sroa.5.0.insert.shift.4 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.4, 32, !dbg !296
  %__6.sroa.5.0.insert.insert.4 = or disjoint i64 %__6.sroa.6.0.insert.shift.4, %__6.sroa.5.0.insert.shift.4, !dbg !296
  %__6.sroa.4.0.insert.ext.4 = zext i16 %352 to i64, !dbg !296
  %__6.sroa.4.0.insert.shift.4 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.4, 16, !dbg !296
  %__6.sroa.4.0.insert.insert.4 = or disjoint i64 %__6.sroa.5.0.insert.insert.4, %__6.sroa.4.0.insert.shift.4, !dbg !296
  %__6.sroa.0.0.insert.ext.4 = zext i16 %351 to i64, !dbg !296
  %__6.sroa.0.0.insert.insert.4 = or disjoint i64 %__6.sroa.4.0.insert.insert.4, %__6.sroa.0.0.insert.ext.4, !dbg !296
  %add728.4 = add nuw nsw i32 %shr727.pre-phi, 8, !dbg !303
  %xor731.4 = xor i32 %add728.4, %and730.pre-phi, !dbg !297
  %mul732.4 = shl nuw nsw i32 %xor731.4, 3, !dbg !298
  %add733.4 = add nuw nsw i32 %mul732.4, %mul724, !dbg !299
  %add738.4 = or disjoint i32 %add733.4, %mul737.pre-phi, !dbg !300
  %add.ptr740.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add738.4, !dbg !301
  store i64 %__6.sroa.0.0.insert.insert.4, ptr addrspace(3) %add.ptr740.4, align 8, !dbg !302
  %359 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !271
  %360 = fptrunc float %div.20 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %359), !dbg !267, !noalias !271
  %361 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !271
  %362 = fptrunc float %div.21 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %361), !dbg !276, !noalias !271
  %363 = bitcast half %360 to i16, !dbg !278
  %364 = bitcast half %362 to i16, !dbg !281
  %365 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !286
  %366 = fptrunc float %div.22 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %365), !dbg !282, !noalias !286
  %367 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !291, !noalias !286
  %368 = fptrunc float %div.23 to half, !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %367), !dbg !291, !noalias !286
  %369 = bitcast half %366 to i16, !dbg !293
  %370 = bitcast half %368 to i16, !dbg !295
  %__6.sroa.6.0.insert.ext.5 = zext i16 %370 to i64, !dbg !296
  %__6.sroa.6.0.insert.shift.5 = shl nuw i64 %__6.sroa.6.0.insert.ext.5, 48, !dbg !296
  %__6.sroa.5.0.insert.ext.5 = zext i16 %369 to i64, !dbg !296
  %__6.sroa.5.0.insert.shift.5 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.5, 32, !dbg !296
  %__6.sroa.5.0.insert.insert.5 = or disjoint i64 %__6.sroa.6.0.insert.shift.5, %__6.sroa.5.0.insert.shift.5, !dbg !296
  %__6.sroa.4.0.insert.ext.5 = zext i16 %364 to i64, !dbg !296
  %__6.sroa.4.0.insert.shift.5 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.5, 16, !dbg !296
  %__6.sroa.4.0.insert.insert.5 = or disjoint i64 %__6.sroa.5.0.insert.insert.5, %__6.sroa.4.0.insert.shift.5, !dbg !296
  %__6.sroa.0.0.insert.ext.5 = zext i16 %363 to i64, !dbg !296
  %__6.sroa.0.0.insert.insert.5 = or disjoint i64 %__6.sroa.4.0.insert.insert.5, %__6.sroa.0.0.insert.ext.5, !dbg !296
  %add728.5 = add nuw nsw i32 %shr727.pre-phi, 10, !dbg !303
  %xor731.5 = xor i32 %add728.5, %and730.pre-phi, !dbg !297
  %mul732.5 = shl nuw nsw i32 %xor731.5, 3, !dbg !298
  %add733.5 = add nuw nsw i32 %mul732.5, %mul724, !dbg !299
  %add738.5 = or disjoint i32 %add733.5, %mul737.pre-phi, !dbg !300
  %add.ptr740.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add738.5, !dbg !301
  store i64 %__6.sroa.0.0.insert.insert.5, ptr addrspace(3) %add.ptr740.5, align 8, !dbg !302
  %371 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !271
  %372 = fptrunc float %div.24 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %371), !dbg !267, !noalias !271
  %373 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !271
  %374 = fptrunc float %div.25 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %373), !dbg !276, !noalias !271
  %375 = bitcast half %372 to i16, !dbg !278
  %376 = bitcast half %374 to i16, !dbg !281
  %377 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !286
  %378 = fptrunc float %div.26 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %377), !dbg !282, !noalias !286
  %379 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !291, !noalias !286
  %380 = fptrunc float %div.27 to half, !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %379), !dbg !291, !noalias !286
  %381 = bitcast half %378 to i16, !dbg !293
  %382 = bitcast half %380 to i16, !dbg !295
  %__6.sroa.6.0.insert.ext.6 = zext i16 %382 to i64, !dbg !296
  %__6.sroa.6.0.insert.shift.6 = shl nuw i64 %__6.sroa.6.0.insert.ext.6, 48, !dbg !296
  %__6.sroa.5.0.insert.ext.6 = zext i16 %381 to i64, !dbg !296
  %__6.sroa.5.0.insert.shift.6 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.6, 32, !dbg !296
  %__6.sroa.5.0.insert.insert.6 = or disjoint i64 %__6.sroa.6.0.insert.shift.6, %__6.sroa.5.0.insert.shift.6, !dbg !296
  %__6.sroa.4.0.insert.ext.6 = zext i16 %376 to i64, !dbg !296
  %__6.sroa.4.0.insert.shift.6 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.6, 16, !dbg !296
  %__6.sroa.4.0.insert.insert.6 = or disjoint i64 %__6.sroa.5.0.insert.insert.6, %__6.sroa.4.0.insert.shift.6, !dbg !296
  %__6.sroa.0.0.insert.ext.6 = zext i16 %375 to i64, !dbg !296
  %__6.sroa.0.0.insert.insert.6 = or disjoint i64 %__6.sroa.4.0.insert.insert.6, %__6.sroa.0.0.insert.ext.6, !dbg !296
  %add728.6 = add nuw nsw i32 %shr727.pre-phi, 12, !dbg !303
  %xor731.6 = xor i32 %add728.6, %and730.pre-phi, !dbg !297
  %mul732.6 = shl nuw nsw i32 %xor731.6, 3, !dbg !298
  %add733.6 = add nuw nsw i32 %mul732.6, %mul724, !dbg !299
  %add738.6 = or disjoint i32 %add733.6, %mul737.pre-phi, !dbg !300
  %add.ptr740.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add738.6, !dbg !301
  store i64 %__6.sroa.0.0.insert.insert.6, ptr addrspace(3) %add.ptr740.6, align 8, !dbg !302
  %383 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !271
  %384 = fptrunc float %div.28 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %383), !dbg !267, !noalias !271
  %385 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !271
  %386 = fptrunc float %div.29 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %385), !dbg !276, !noalias !271
  %387 = bitcast half %384 to i16, !dbg !278
  %388 = bitcast half %386 to i16, !dbg !281
  %389 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !286
  %390 = fptrunc float %div.30 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %389), !dbg !282, !noalias !286
  %391 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !291, !noalias !286
  %392 = fptrunc float %div.31 to half, !dbg !291
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %391), !dbg !291, !noalias !286
  %393 = bitcast half %390 to i16, !dbg !293
  %394 = bitcast half %392 to i16, !dbg !295
  %__6.sroa.6.0.insert.ext.7 = zext i16 %394 to i64, !dbg !296
  %__6.sroa.6.0.insert.shift.7 = shl nuw i64 %__6.sroa.6.0.insert.ext.7, 48, !dbg !296
  %__6.sroa.5.0.insert.ext.7 = zext i16 %393 to i64, !dbg !296
  %__6.sroa.5.0.insert.shift.7 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.7, 32, !dbg !296
  %__6.sroa.5.0.insert.insert.7 = or disjoint i64 %__6.sroa.6.0.insert.shift.7, %__6.sroa.5.0.insert.shift.7, !dbg !296
  %__6.sroa.4.0.insert.ext.7 = zext i16 %388 to i64, !dbg !296
  %__6.sroa.4.0.insert.shift.7 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.7, 16, !dbg !296
  %__6.sroa.4.0.insert.insert.7 = or disjoint i64 %__6.sroa.5.0.insert.insert.7, %__6.sroa.4.0.insert.shift.7, !dbg !296
  %__6.sroa.0.0.insert.ext.7 = zext i16 %387 to i64, !dbg !296
  %__6.sroa.0.0.insert.insert.7 = or disjoint i64 %__6.sroa.4.0.insert.insert.7, %__6.sroa.0.0.insert.ext.7, !dbg !296
  %add728.7 = add nuw nsw i32 %shr727.pre-phi, 14, !dbg !303
  %xor731.7 = xor i32 %add728.7, %and730.pre-phi, !dbg !297
  %mul732.7 = shl nuw nsw i32 %xor731.7, 3, !dbg !298
  %add733.7 = add nuw nsw i32 %mul732.7, %mul724, !dbg !299
  %add738.7 = or disjoint i32 %add733.7, %mul737.pre-phi, !dbg !300
  %add.ptr740.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add738.7, !dbg !301
  store i64 %__6.sroa.0.0.insert.insert.7, ptr addrspace(3) %add.ptr740.7, align 8, !dbg !302
  fence syncscope("warp") release, !dbg !304
  tail call void @llvm.mxc.barrier.warp(), !dbg !307
  fence syncscope("warp") acquire, !dbg !308
  %mul751 = and i32 %.pre-phi2097, 8064
  %and754 = and i32 %.pre-phi, 15
  %invariant.gep1045 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul751, !dbg !309
  %xor760 = xor i32 %shr758.pre-phi, %and754, !dbg !310
  %add.ptr764.idx = shl nuw nsw i32 %xor760, 4, !dbg !311
  %add.ptr764 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1045, i32 %add.ptr764.idx, !dbg !311
  %add.ptr776 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2104, !dbg !312
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr776, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr764, i64 16, i1 false), !dbg !313, !tbaa.struct !65, !call_argsrelate !314
  %add759.1 = add nuw nsw i32 %shr758.pre-phi, 4, !dbg !315
  %xor760.1 = xor i32 %add759.1, %and754, !dbg !310
  %gep1046.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1045, i32 1024, !dbg !311
  %add.ptr764.idx.1 = shl nuw nsw i32 %xor760.1, 4, !dbg !311
  %add.ptr764.1 = getelementptr inbounds i8, ptr addrspace(3) %gep1046.1, i32 %add.ptr764.idx.1, !dbg !311
  %add.ptr776.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2106, !dbg !312
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr776.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr764.1, i64 16, i1 false), !dbg !313, !tbaa.struct !65, !call_argsrelate !314
  %gep1046.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1045, i32 2048, !dbg !311
  %add.ptr764.2 = getelementptr inbounds i8, ptr addrspace(3) %gep1046.2, i32 %add.ptr764.idx, !dbg !311
  %add.ptr776.2 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2108, !dbg !312
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr776.2, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr764.2, i64 16, i1 false), !dbg !313, !tbaa.struct !65, !call_argsrelate !314
  %gep1046.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1045, i32 3072, !dbg !311
  %add.ptr764.3 = getelementptr inbounds i8, ptr addrspace(3) %gep1046.3, i32 %add.ptr764.idx.1, !dbg !311
  %add.ptr776.3 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2110, !dbg !312
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr776.3, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr764.3, i64 16, i1 false), !dbg !313, !tbaa.struct !65, !call_argsrelate !314
  ret void, !dbg !316
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v047_codex_power_s1_v_planes_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v047_codex_power_s1_v_planes_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
!42 = !DILocation(line: 78, column: 3, scope: !43, inlinedAt: !45)
!43 = distinct !DISubprogram(name: "__fetch_builtin_y", scope: !44, file: !44, line: 78, type: !7, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!44 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_builtin_vars.h", directory: "")
!45 = distinct !DILocation(line: 23, column: 38, scope: !40)
!46 = !DILocation(line: 23, column: 50, scope: !40)
!47 = !DILocation(line: 77, column: 3, scope: !48, inlinedAt: !49)
!48 = distinct !DISubprogram(name: "__fetch_builtin_x", scope: !44, file: !44, line: 77, type: !7, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!49 = distinct !DILocation(line: 23, column: 66, scope: !40)
!50 = !DILocation(line: 23, column: 58, scope: !40)
!51 = !DILocation(line: 23, column: 22, scope: !40)
!52 = !DILocation(line: 23, column: 80, scope: !40)
!53 = !DILocation(line: 25, column: 10, scope: !40)
!54 = !DILocation(line: 25, column: 26, scope: !40)
!55 = !{i32 0, i32 1024}
!56 = !DILocation(line: 196, column: 3, scope: !40)
!57 = !DILocation(line: 197, column: 102, scope: !40)
!58 = !DILocation(line: 182, column: 3, scope: !40)
!59 = !DILocation(line: 27, column: 5, scope: !40)
!60 = !DILocation(line: 28, column: 379, scope: !40)
!61 = !DILocation(line: 28, column: 194, scope: !40)
!62 = !DILocation(line: 28, column: 279, scope: !40)
!63 = !DILocation(line: 28, column: 42, scope: !40)
!64 = !DILocation(line: 28, column: 365, scope: !40)
!65 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!66 = !{i32 -1, i32 3, i32 -1, i32 -1}
!67 = !DILocation(line: 28, column: 457, scope: !40)
!68 = !DILocation(line: 28, column: 201, scope: !40)
!69 = !DILocation(line: 68, column: 3, scope: !70, inlinedAt: !72)
!70 = distinct !DISubprogram(name: "__barrier_warp", scope: !71, file: !71, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!71 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!72 = distinct !DILocation(line: 192, column: 3, scope: !73, inlinedAt: !74)
!73 = distinct !DISubprogram(name: "__syncwarp", scope: !71, file: !71, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!74 = distinct !DILocation(line: 30, column: 5, scope: !40)
!75 = !DILocation(line: 69, column: 3, scope: !70, inlinedAt: !72)
!76 = !DILocation(line: 70, column: 3, scope: !70, inlinedAt: !72)
!77 = !DILocation(line: 32, column: 207, scope: !40)
!78 = !DILocation(line: 32, column: 271, scope: !40)
!79 = !DILocation(line: 32, column: 348, scope: !40)
!80 = !DILocation(line: 32, column: 390, scope: !40)
!81 = !DILocation(line: 32, column: 77, scope: !40)
!82 = !DILocation(line: 32, column: 40, scope: !40)
!83 = !DILocation(line: 32, column: 278, scope: !40)
!84 = !DILocation(line: 68, column: 3, scope: !70, inlinedAt: !85)
!85 = distinct !DILocation(line: 192, column: 3, scope: !73, inlinedAt: !86)
!86 = distinct !DILocation(line: 34, column: 5, scope: !40)
!87 = !DILocation(line: 69, column: 3, scope: !70, inlinedAt: !85)
!88 = !DILocation(line: 70, column: 3, scope: !70, inlinedAt: !85)
!89 = !DILocation(line: 36, column: 5, scope: !40)
!90 = !DILocation(line: 39, column: 69, scope: !40)
!91 = !DILocation(line: 39, column: 11, scope: !40)
!92 = !DILocation(line: 40, column: 17, scope: !40)
!93 = !DILocation(line: 41, column: 7, scope: !40)
!94 = !DILocation(line: 0, scope: !40)
!95 = !DILocation(line: 44, column: 91, scope: !40)
!96 = !DILocation(line: 44, column: 106, scope: !40)
!97 = !DILocation(line: 44, column: 142, scope: !40)
!98 = !DILocation(line: 44, column: 204, scope: !40)
!99 = !DILocation(line: 44, column: 282, scope: !40)
!100 = !DILocation(line: 44, column: 42, scope: !40)
!101 = !DILocation(line: 44, column: 360, scope: !40)
!102 = !DILocation(line: 44, column: 197, scope: !40)
!103 = !DILocation(line: 68, column: 3, scope: !70, inlinedAt: !104)
!104 = distinct !DILocation(line: 192, column: 3, scope: !73, inlinedAt: !105)
!105 = distinct !DILocation(line: 46, column: 5, scope: !40)
!106 = !DILocation(line: 69, column: 3, scope: !70, inlinedAt: !104)
!107 = !DILocation(line: 70, column: 3, scope: !70, inlinedAt: !104)
!108 = !DILocation(line: 55, column: 158, scope: !40)
!109 = !DILocation(line: 55, column: 231, scope: !40)
!110 = !DILocation(line: 55, column: 297, scope: !40)
!111 = !DILocation(line: 55, column: 367, scope: !40)
!112 = !DILocation(line: 55, column: 69, scope: !40)
!113 = !DILocation(line: 55, column: 32, scope: !40)
!114 = !DILocation(line: 57, column: 44, scope: !40)
!115 = !DILocation(line: 55, column: 122, scope: !40)
!116 = !DILocation(line: 68, column: 96, scope: !40)
!117 = !DILocation(line: 68, column: 13, scope: !40)
!118 = !DILocation(line: 68, column: 85, scope: !40)
!119 = !DILocation(line: 351, column: 10, scope: !120, inlinedAt: !122)
!120 = distinct !DISubprogram(name: "max", scope: !121, file: !121, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!121 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!122 = distinct !DILocation(line: 79, column: 20, scope: !40)
!123 = !DILocation(line: 1018, column: 9, scope: !124, inlinedAt: !125)
!124 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !71, file: !71, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!125 = distinct !DILocation(line: 81, column: 34, scope: !40)
!126 = !DILocation(line: 171, column: 37, scope: !127, inlinedAt: !128)
!127 = distinct !DISubprogram(name: "__lane_id", scope: !71, file: !71, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!128 = distinct !DILocation(line: 990, column: 14, scope: !129, inlinedAt: !130)
!129 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !71, file: !71, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!130 = distinct !DILocation(line: 1019, column: 11, scope: !124, inlinedAt: !125)
!131 = !DILocation(line: 171, column: 10, scope: !127, inlinedAt: !128)
!132 = !DILocation(line: 991, column: 20, scope: !129, inlinedAt: !130)
!133 = !DILocation(line: 992, column: 36, scope: !129, inlinedAt: !130)
!134 = !DILocation(line: 992, column: 17, scope: !129, inlinedAt: !130)
!135 = !DILocation(line: 992, column: 11, scope: !129, inlinedAt: !130)
!136 = !DILocation(line: 993, column: 43, scope: !129, inlinedAt: !130)
!137 = !DILocation(line: 993, column: 10, scope: !129, inlinedAt: !130)
!138 = !DILocation(line: 1020, column: 14, scope: !124, inlinedAt: !125)
!139 = !DILocation(line: 351, column: 10, scope: !120, inlinedAt: !140)
!140 = distinct !DILocation(line: 81, column: 18, scope: !40)
!141 = !DILocation(line: 1018, column: 9, scope: !124, inlinedAt: !142)
!142 = distinct !DILocation(line: 82, column: 34, scope: !40)
!143 = !DILocation(line: 171, column: 37, scope: !127, inlinedAt: !144)
!144 = distinct !DILocation(line: 990, column: 14, scope: !129, inlinedAt: !145)
!145 = distinct !DILocation(line: 1019, column: 11, scope: !124, inlinedAt: !142)
!146 = !DILocation(line: 171, column: 10, scope: !127, inlinedAt: !144)
!147 = !DILocation(line: 991, column: 20, scope: !129, inlinedAt: !145)
!148 = !DILocation(line: 992, column: 36, scope: !129, inlinedAt: !145)
!149 = !DILocation(line: 992, column: 17, scope: !129, inlinedAt: !145)
!150 = !DILocation(line: 992, column: 11, scope: !129, inlinedAt: !145)
!151 = !DILocation(line: 993, column: 43, scope: !129, inlinedAt: !145)
!152 = !DILocation(line: 993, column: 10, scope: !129, inlinedAt: !145)
!153 = !DILocation(line: 1020, column: 14, scope: !124, inlinedAt: !142)
!154 = !DILocation(line: 351, column: 10, scope: !120, inlinedAt: !155)
!155 = distinct !DILocation(line: 82, column: 18, scope: !40)
!156 = !DILocation(line: 94, column: 26, scope: !40)
!157 = !DILocation(line: 95, column: 26, scope: !40)
!158 = !DILocation(line: 96, column: 26, scope: !40)
!159 = !DILocation(line: 97, column: 26, scope: !40)
!160 = !DILocation(line: 99, column: 25, scope: !40)
!161 = !DILocation(line: 100, column: 25, scope: !40)
!162 = !DILocation(line: 101, column: 25, scope: !40)
!163 = !DILocation(line: 102, column: 25, scope: !40)
!164 = !DILocation(line: 104, column: 23, scope: !40)
!165 = !DILocation(line: 105, column: 23, scope: !40)
!166 = !DILocation(line: 106, column: 23, scope: !40)
!167 = !DILocation(line: 107, column: 23, scope: !40)
!168 = !DILocation(line: 285, column: 49, scope: !169, inlinedAt: !170)
!169 = distinct !DISubprogram(name: "exp2f", scope: !121, file: !121, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!170 = distinct !DILocation(line: 108, column: 15, scope: !40)
!171 = !DILocation(line: 285, column: 49, scope: !169, inlinedAt: !172)
!172 = distinct !DILocation(line: 109, column: 15, scope: !40)
!173 = !DILocation(line: 285, column: 49, scope: !169, inlinedAt: !174)
!174 = distinct !DILocation(line: 110, column: 15, scope: !40)
!175 = !DILocation(line: 285, column: 49, scope: !169, inlinedAt: !176)
!176 = distinct !DILocation(line: 111, column: 15, scope: !40)
!177 = !DILocation(line: 1007, column: 10, scope: !178, inlinedAt: !180)
!178 = distinct !DISubprogram(name: "__float2half_rn", scope: !179, file: !179, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!179 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!180 = distinct !DILocation(line: 1077, column: 18, scope: !181, inlinedAt: !182)
!181 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !179, file: !179, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!182 = distinct !DILocation(line: 1295, column: 23, scope: !183, inlinedAt: !184)
!183 = distinct !DISubprogram(name: "__float22half2_rn", scope: !179, file: !179, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!184 = distinct !DILocation(line: 112, column: 29, scope: !40)
!185 = !{!186, !188}
!186 = distinct !{!186, !187, !"_ZL17__floats2half2_rnff: %agg.result"}
!187 = distinct !{!187, !"_ZL17__floats2half2_rnff"}
!188 = distinct !{!188, !189, !"_ZL17__float22half2_rn6float2: %agg.result"}
!189 = distinct !{!189, !"_ZL17__float22half2_rn6float2"}
!190 = !DILocation(line: 1007, column: 10, scope: !178, inlinedAt: !191)
!191 = distinct !DILocation(line: 1077, column: 38, scope: !181, inlinedAt: !182)
!192 = !DILocation(line: 1007, column: 10, scope: !178, inlinedAt: !193)
!193 = distinct !DILocation(line: 1077, column: 18, scope: !181, inlinedAt: !194)
!194 = distinct !DILocation(line: 1295, column: 23, scope: !183, inlinedAt: !195)
!195 = distinct !DILocation(line: 113, column: 29, scope: !40)
!196 = !{!197, !199}
!197 = distinct !{!197, !198, !"_ZL17__floats2half2_rnff: %agg.result"}
!198 = distinct !{!198, !"_ZL17__floats2half2_rnff"}
!199 = distinct !{!199, !200, !"_ZL17__float22half2_rn6float2: %agg.result"}
!200 = distinct !{!200, !"_ZL17__float22half2_rn6float2"}
!201 = !DILocation(line: 1007, column: 10, scope: !178, inlinedAt: !202)
!202 = distinct !DILocation(line: 1077, column: 38, scope: !181, inlinedAt: !194)
!203 = !DILocation(line: 114, column: 51, scope: !40)
!204 = !DILocation(line: 1082, column: 16, scope: !205, inlinedAt: !206)
!205 = distinct !DISubprogram(name: "__half2float", scope: !179, file: !179, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!206 = distinct !DILocation(line: 136, column: 55, scope: !207, inlinedAt: !208)
!207 = distinct !DISubprogram(name: "operator float", scope: !179, file: !179, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!208 = distinct !DILocation(line: 118, column: 50, scope: !40)
!209 = !DILocation(line: 118, column: 40, scope: !40)
!210 = !DILocation(line: 1018, column: 9, scope: !124, inlinedAt: !211)
!211 = distinct !DILocation(line: 120, column: 40, scope: !40)
!212 = !DILocation(line: 171, column: 37, scope: !127, inlinedAt: !213)
!213 = distinct !DILocation(line: 990, column: 14, scope: !129, inlinedAt: !214)
!214 = distinct !DILocation(line: 1019, column: 11, scope: !124, inlinedAt: !211)
!215 = !DILocation(line: 171, column: 10, scope: !127, inlinedAt: !213)
!216 = !DILocation(line: 991, column: 20, scope: !129, inlinedAt: !214)
!217 = !DILocation(line: 992, column: 36, scope: !129, inlinedAt: !214)
!218 = !DILocation(line: 992, column: 17, scope: !129, inlinedAt: !214)
!219 = !DILocation(line: 992, column: 11, scope: !129, inlinedAt: !214)
!220 = !DILocation(line: 993, column: 43, scope: !129, inlinedAt: !214)
!221 = !DILocation(line: 993, column: 10, scope: !129, inlinedAt: !214)
!222 = !DILocation(line: 1020, column: 14, scope: !124, inlinedAt: !211)
!223 = !DILocation(line: 120, column: 38, scope: !40)
!224 = !DILocation(line: 1018, column: 9, scope: !124, inlinedAt: !225)
!225 = distinct !DILocation(line: 121, column: 40, scope: !40)
!226 = !DILocation(line: 171, column: 37, scope: !127, inlinedAt: !227)
!227 = distinct !DILocation(line: 990, column: 14, scope: !129, inlinedAt: !228)
!228 = distinct !DILocation(line: 1019, column: 11, scope: !124, inlinedAt: !225)
!229 = !DILocation(line: 171, column: 10, scope: !127, inlinedAt: !227)
!230 = !DILocation(line: 991, column: 20, scope: !129, inlinedAt: !228)
!231 = !DILocation(line: 992, column: 36, scope: !129, inlinedAt: !228)
!232 = !DILocation(line: 992, column: 17, scope: !129, inlinedAt: !228)
!233 = !DILocation(line: 992, column: 11, scope: !129, inlinedAt: !228)
!234 = !DILocation(line: 993, column: 43, scope: !129, inlinedAt: !228)
!235 = !DILocation(line: 993, column: 10, scope: !129, inlinedAt: !228)
!236 = !DILocation(line: 1020, column: 14, scope: !124, inlinedAt: !225)
!237 = !DILocation(line: 68, column: 3, scope: !70, inlinedAt: !238)
!238 = distinct !DILocation(line: 192, column: 3, scope: !73, inlinedAt: !239)
!239 = distinct !DILocation(line: 122, column: 5, scope: !40)
!240 = !DILocation(line: 69, column: 3, scope: !70, inlinedAt: !238)
!241 = !DILocation(line: 70, column: 3, scope: !70, inlinedAt: !238)
!242 = !DILocation(line: 131, column: 94, scope: !40)
!243 = !DILocation(line: 131, column: 15, scope: !40)
!244 = !DILocation(line: 132, column: 37, scope: !40)
!245 = !DILocation(line: 132, column: 23, scope: !40)
!246 = !DILocation(line: 133, column: 11, scope: !40)
!247 = !DILocation(line: 131, column: 87, scope: !40)
!248 = !DILocation(line: 143, column: 46, scope: !40)
!249 = !DILocation(line: 143, column: 219, scope: !40)
!250 = !DILocation(line: 141, column: 29, scope: !40)
!251 = !DILocation(line: 143, column: 82, scope: !40)
!252 = !DILocation(line: 68, column: 3, scope: !70, inlinedAt: !253)
!253 = distinct !DILocation(line: 192, column: 3, scope: !73, inlinedAt: !254)
!254 = distinct !DILocation(line: 147, column: 5, scope: !40)
!255 = !DILocation(line: 69, column: 3, scope: !70, inlinedAt: !253)
!256 = !DILocation(line: 70, column: 3, scope: !70, inlinedAt: !253)
!257 = !DILocation(line: 160, column: 11, scope: !40)
!258 = !DILocation(line: 161, column: 344, scope: !40)
!259 = !DILocation(line: 161, column: 102, scope: !40)
!260 = !DILocation(line: 161, column: 65, scope: !40)
!261 = !DILocation(line: 161, column: 282, scope: !40)
!262 = !DILocation(line: 167, column: 94, scope: !40)
!263 = !DILocation(line: 167, column: 64, scope: !40)
!264 = !DILocation(line: 121, column: 38, scope: !40)
!265 = !DILocation(line: 183, column: 23, scope: !40)
!266 = !DILocation(line: 183, column: 38, scope: !40)
!267 = !DILocation(line: 1007, column: 10, scope: !178, inlinedAt: !268)
!268 = distinct !DILocation(line: 1077, column: 18, scope: !181, inlinedAt: !269)
!269 = distinct !DILocation(line: 1295, column: 23, scope: !183, inlinedAt: !270)
!270 = distinct !DILocation(line: 189, column: 27, scope: !40)
!271 = !{!272, !274}
!272 = distinct !{!272, !273, !"_ZL17__floats2half2_rnff: %agg.result"}
!273 = distinct !{!273, !"_ZL17__floats2half2_rnff"}
!274 = distinct !{!274, !275, !"_ZL17__float22half2_rn6float2: %agg.result"}
!275 = distinct !{!275, !"_ZL17__float22half2_rn6float2"}
!276 = !DILocation(line: 1007, column: 10, scope: !178, inlinedAt: !277)
!277 = distinct !DILocation(line: 1077, column: 38, scope: !181, inlinedAt: !269)
!278 = !DILocation(line: 596, column: 67, scope: !279, inlinedAt: !280)
!279 = distinct !DISubprogram(name: "__half2", scope: !179, file: !179, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!280 = distinct !DILocation(line: 1077, column: 10, scope: !181, inlinedAt: !269)
!281 = !DILocation(line: 596, column: 73, scope: !279, inlinedAt: !280)
!282 = !DILocation(line: 1007, column: 10, scope: !178, inlinedAt: !283)
!283 = distinct !DILocation(line: 1077, column: 18, scope: !181, inlinedAt: !284)
!284 = distinct !DILocation(line: 1295, column: 23, scope: !183, inlinedAt: !285)
!285 = distinct !DILocation(line: 190, column: 27, scope: !40)
!286 = !{!287, !289}
!287 = distinct !{!287, !288, !"_ZL17__floats2half2_rnff: %agg.result"}
!288 = distinct !{!288, !"_ZL17__floats2half2_rnff"}
!289 = distinct !{!289, !290, !"_ZL17__float22half2_rn6float2: %agg.result"}
!290 = distinct !{!290, !"_ZL17__float22half2_rn6float2"}
!291 = !DILocation(line: 1007, column: 10, scope: !178, inlinedAt: !292)
!292 = distinct !DILocation(line: 1077, column: 38, scope: !181, inlinedAt: !284)
!293 = !DILocation(line: 596, column: 67, scope: !279, inlinedAt: !294)
!294 = distinct !DILocation(line: 1077, column: 10, scope: !181, inlinedAt: !284)
!295 = !DILocation(line: 596, column: 73, scope: !279, inlinedAt: !294)
!296 = !DILocation(line: 191, column: 42, scope: !40)
!297 = !DILocation(line: 192, column: 122, scope: !40)
!298 = !DILocation(line: 192, column: 150, scope: !40)
!299 = !DILocation(line: 192, column: 78, scope: !40)
!300 = !DILocation(line: 192, column: 156, scope: !40)
!301 = !DILocation(line: 192, column: 40, scope: !40)
!302 = !DILocation(line: 192, column: 199, scope: !40)
!303 = !DILocation(line: 192, column: 93, scope: !40)
!304 = !DILocation(line: 68, column: 3, scope: !70, inlinedAt: !305)
!305 = distinct !DILocation(line: 192, column: 3, scope: !73, inlinedAt: !306)
!306 = distinct !DILocation(line: 194, column: 3, scope: !40)
!307 = !DILocation(line: 69, column: 3, scope: !70, inlinedAt: !305)
!308 = !DILocation(line: 70, column: 3, scope: !70, inlinedAt: !305)
!309 = !DILocation(line: 196, column: 8, scope: !40)
!310 = !DILocation(line: 197, column: 251, scope: !40)
!311 = !DILocation(line: 197, column: 168, scope: !40)
!312 = !DILocation(line: 197, column: 22, scope: !40)
!313 = !DILocation(line: 197, column: 131, scope: !40)
!314 = !{i32 2, i32 -1, i32 -1, i32 -1}
!315 = !DILocation(line: 197, column: 270, scope: !40)
!316 = !DILocation(line: 199, column: 1, scope: !40)
