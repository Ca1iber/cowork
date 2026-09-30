; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v027_codex_power_multiblock_scaled_max_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v027_codex_power_multiblock_scaled_max_sc-16g-2/codegen/case12.device.cpp"
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
  %and = shl nuw nsw i32 %2, 6
  %mul9 = and i32 %and, 960
  %add10 = or disjoint i32 %add, %mul9
  %3 = lshr i32 %2, 2
  %mul14 = and i32 %3, 252
  %add12 = add nuw nsw i32 %add10, %mul14
  %4 = zext nneg i32 %add12 to i64, !dbg !43
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %4, !dbg !44
  %5 = load <4 x half>, ptr addrspace(4) %add.ptr, align 8, !dbg !45
  %6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %4, !dbg !44
  %add.ptr.1 = getelementptr inbounds i8, ptr addrspace(4) %6, i64 32, !dbg !44
  %7 = load <4 x half>, ptr addrspace(4) %add.ptr.1, align 8, !dbg !45
  %8 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %4, !dbg !44
  %add.ptr.2 = getelementptr inbounds i8, ptr addrspace(4) %8, i64 64, !dbg !44
  %9 = load <4 x half>, ptr addrspace(4) %add.ptr.2, align 8, !dbg !45
  %10 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %4, !dbg !44
  %add.ptr.3 = getelementptr inbounds i8, ptr addrspace(4) %10, i64 96, !dbg !44
  %11 = load <4 x half>, ptr addrspace(4) %add.ptr.3, align 8, !dbg !45
  %mul40 = shl nsw i32 %0, 13
  %mul42 = shl nsw i32 %1, 3
  %add43 = add nuw nsw i32 %mul40, %mul42
  %shr55 = lshr i32 %2, 3
  %12 = shl nuw nsw i32 %2, 3
  %mul97 = and i32 %12, 8128
  %add104598 = and i32 %12, 32
  %shr100599 = add nuw nsw i32 %add104598, %2
  %mul106 = and i32 %shr100599, 32
  %add114600 = and i32 %12, 16
  %and109601 = add nuw nsw i32 %add114600, %2
  %mul116 = and i32 %and109601, 16
  %and119603 = mul nuw nsw i32 %2, 9
  %mul125 = and i32 %and119603, 8
  %conv = zext nneg i32 %0 to i64
  %mul62 = shl nuw nsw i64 %conv, 16
  %mul71 = zext nneg i32 %12 to i64
  %invariant.gep706 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul71, !dbg !46
  %and152 = lshr i32 %2, 1
  %shr160 = lshr i32 %2, 5
  %add163 = add nuw nsw i32 %shr160, %2
  %and164 = shl nuw nsw i32 %add163, 3
  %mul165 = and i32 %and164, 8
  %mul170 = and i32 %3, 4
  %13 = or disjoint i32 %mul170, %mul165
  %add158 = or disjoint i32 %13, %mul9
  %and360 = and i32 %2, 7
  %14 = lshr i32 %2, 4
  %mul364 = and i32 %14, 62
  %invariant.gep693 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul97
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %mul71, !dbg !46
  %15 = shl nuw nsw i32 %2, 4
  %mul384 = and i32 %15, 16128
  %shr390 = and i32 %2, 8
  %mul394 = and i32 %2, 1008
  %add386 = or disjoint i32 %mul384, %and360
  %16 = zext nneg i32 %add43 to i64, !dbg !46
  %invariant.gep956 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %16, !dbg !46
  %17 = or disjoint i32 %mul97, %mul106
  %18 = or disjoint i32 %17, %mul116
  %19 = or disjoint i32 %18, %mul125
  %add.ptr128 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %19
  %condval.sroa.5.0.add.ptr128.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128, i32 4
  %condval.sroa.6.0.add.ptr128.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128, i32 8
  %condval.sroa.7.0.add.ptr128.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128, i32 12
  %add65.1 = or disjoint i64 %mul62, 512
  %narrow = add nuw nsw i32 %mul97, 512
  %20 = or disjoint i32 %narrow, %mul106
  %21 = or disjoint i32 %20, %mul116
  %22 = or disjoint i32 %21, %mul125
  %add.ptr128.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %22
  %condval.sroa.5.0.add.ptr128.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1, i32 4
  %condval.sroa.6.0.add.ptr128.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1, i32 8
  %condval.sroa.7.0.add.ptr128.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128.1, i32 12
  %and148 = shl nuw nsw i32 %3, 5
  %mul149 = and i32 %and148, 32
  %and156 = shl nuw nsw i32 %and152, 4
  %mul157 = and i32 %and156, 16
  %add166 = or disjoint i32 %add158, %mul157
  %add171 = or disjoint i32 %add166, %mul149
  %add.ptr173 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171
  %add155.1 = shl nuw nsw i32 %and152, 4
  %23 = and i32 %add155.1, 16
  %24 = or disjoint i32 %23, %add158
  %25 = or disjoint i32 %24, %mul149
  %add171.1 = xor i32 %25, 16
  %add.ptr173.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.1
  %add147.2 = shl nuw nsw i32 %3, 5
  %26 = and i32 %add147.2, 32
  %mul149.2 = xor i32 %26, 32
  %add155.2 = shl nuw nsw i32 %and152, 4
  %mul157.2 = and i32 %add155.2, 16
  %add166.2 = or disjoint i32 %add158, %mul157.2
  %add171.2 = or disjoint i32 %add166.2, %mul149.2
  %add.ptr173.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.2
  %add155.3 = shl nuw nsw i32 %and152, 4
  %27 = and i32 %add155.3, 16
  %28 = or disjoint i32 %27, %add158
  %29 = or disjoint i32 %28, %mul149.2
  %add171.3 = xor i32 %29, 16
  %add.ptr173.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.3
  %xor = xor i32 %mul364, %and360
  %.idx679 = shl nuw nsw i32 %xor, 4
  %30 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep693, i32 %.idx679
  %add.ptr370 = getelementptr inbounds i8, ptr addrspace(3) %30, i32 2048
  %condval_2.sroa.5.0.add.ptr370.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %30, i32 2052
  %condval_2.sroa.6.0.add.ptr370.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %30, i32 2056
  %condval_2.sroa.7.0.add.ptr370.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %30, i32 2060
  %add321.1 = or disjoint i64 %mul62, 512
  %narrow955 = add nuw nsw i32 %mul364, 4
  %xor.1 = xor i32 %narrow955, %and360
  %gep.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep693, i32 1024
  %.idx679.1 = shl nuw nsw i32 %xor.1, 4
  %31 = getelementptr inbounds i8, ptr addrspace(3) %gep.1, i32 %.idx679.1
  %add.ptr370.1 = getelementptr inbounds i8, ptr addrspace(3) %31, i32 2048
  %condval_2.sroa.5.0.add.ptr370.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %31, i32 2052
  %condval_2.sroa.6.0.add.ptr370.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %31, i32 2056
  %condval_2.sroa.7.0.add.ptr370.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %31, i32 2060
  %xor395 = and i32 %2, 1016
  %32 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add386
  %33 = getelementptr inbounds %struct.__half, ptr addrspace(3) %32, i32 %xor395
  %gep699.1 = getelementptr inbounds i8, ptr addrspace(3) %33, i32 128
  %gep699.2 = getelementptr inbounds i8, ptr addrspace(3) %33, i32 256
  %gep699.3 = getelementptr inbounds i8, ptr addrspace(3) %33, i32 384
  %add391.1 = or disjoint i32 %shr390, 16
  %xor395.1 = xor i32 %add391.1, %mul394
  %34 = getelementptr inbounds %struct.__half, ptr addrspace(3) %32, i32 %xor395.1
  %gep699.1.1 = getelementptr inbounds i8, ptr addrspace(3) %34, i32 128
  %gep699.2.1 = getelementptr inbounds i8, ptr addrspace(3) %34, i32 256
  %gep699.3.1 = getelementptr inbounds i8, ptr addrspace(3) %34, i32 384
  %add391.2 = or disjoint i32 %shr390, 32
  %xor395.2 = xor i32 %add391.2, %mul394
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(3) %32, i32 %xor395.2
  %gep699.1.2 = getelementptr inbounds i8, ptr addrspace(3) %35, i32 128
  %gep699.2.2 = getelementptr inbounds i8, ptr addrspace(3) %35, i32 256
  %gep699.3.2 = getelementptr inbounds i8, ptr addrspace(3) %35, i32 384
  %add391.3 = or disjoint i32 %shr390, 48
  %xor395.3 = xor i32 %add391.3, %mul394
  %36 = getelementptr inbounds %struct.__half, ptr addrspace(3) %32, i32 %xor395.3
  %gep699.1.3 = getelementptr inbounds i8, ptr addrspace(3) %36, i32 128
  %gep699.2.3 = getelementptr inbounds i8, ptr addrspace(3) %36, i32 256
  %gep699.3.3 = getelementptr inbounds i8, ptr addrspace(3) %36, i32 384
  br label %for.body38, !dbg !46

for.cond.cleanup36:                               ; preds = %if.end432
  fence syncscope("warp") release, !dbg !47
  tail call void @llvm.mxc.barrier.warp(), !dbg !53
  fence syncscope("warp") acquire, !dbg !54
  %output_acc.sroa.0.0.vec.extract808 = extractelement <4 x float> %output_acc.sroa.0.1, i64 0, !dbg !55
  %div = fdiv contract float %output_acc.sroa.0.0.vec.extract808, %denominator.sroa.0.1, !dbg !56
  %output_acc.sroa.0.4.vec.extract817 = extractelement <4 x float> %output_acc.sroa.0.1, i64 1, !dbg !55
  %div.1 = fdiv contract float %output_acc.sroa.0.4.vec.extract817, %denominator.sroa.0.1, !dbg !56
  %output_acc.sroa.0.8.vec.extract826 = extractelement <4 x float> %output_acc.sroa.0.1, i64 2, !dbg !55
  %div.2 = fdiv contract float %output_acc.sroa.0.8.vec.extract826, %denominator.sroa.0.1, !dbg !56
  %output_acc.sroa.0.12.vec.extract835 = extractelement <4 x float> %output_acc.sroa.0.1, i64 3, !dbg !55
  %div.3 = fdiv contract float %output_acc.sroa.0.12.vec.extract835, %denominator.sroa.0.1, !dbg !56
  %output_acc.sroa.28.16.vec.extract845 = extractelement <4 x float> %output_acc.sroa.28.1, i64 0, !dbg !55
  %div.4 = fdiv contract float %output_acc.sroa.28.16.vec.extract845, %denominator.sroa.0.1, !dbg !56
  %output_acc.sroa.28.20.vec.extract854 = extractelement <4 x float> %output_acc.sroa.28.1, i64 1, !dbg !55
  %div.5 = fdiv contract float %output_acc.sroa.28.20.vec.extract854, %denominator.sroa.0.1, !dbg !56
  %output_acc.sroa.28.24.vec.extract863 = extractelement <4 x float> %output_acc.sroa.28.1, i64 2, !dbg !55
  %div.6 = fdiv contract float %output_acc.sroa.28.24.vec.extract863, %denominator.sroa.0.1, !dbg !56
  %output_acc.sroa.28.28.vec.extract872 = extractelement <4 x float> %output_acc.sroa.28.1, i64 3, !dbg !55
  %div.7 = fdiv contract float %output_acc.sroa.28.28.vec.extract872, %denominator.sroa.0.1, !dbg !56
  %output_acc.sroa.54.32.vec.extract882 = extractelement <4 x float> %output_acc.sroa.54.1, i64 0, !dbg !55
  %div.8 = fdiv contract float %output_acc.sroa.54.32.vec.extract882, %denominator.sroa.0.1, !dbg !56
  %output_acc.sroa.54.36.vec.extract891 = extractelement <4 x float> %output_acc.sroa.54.1, i64 1, !dbg !55
  %div.9 = fdiv contract float %output_acc.sroa.54.36.vec.extract891, %denominator.sroa.0.1, !dbg !56
  %output_acc.sroa.54.40.vec.extract900 = extractelement <4 x float> %output_acc.sroa.54.1, i64 2, !dbg !55
  %div.10 = fdiv contract float %output_acc.sroa.54.40.vec.extract900, %denominator.sroa.0.1, !dbg !56
  %output_acc.sroa.54.44.vec.extract909 = extractelement <4 x float> %output_acc.sroa.54.1, i64 3, !dbg !55
  %div.11 = fdiv contract float %output_acc.sroa.54.44.vec.extract909, %denominator.sroa.0.1, !dbg !56
  %output_acc.sroa.80.48.vec.extract919 = extractelement <4 x float> %output_acc.sroa.80.1, i64 0, !dbg !55
  %div.12 = fdiv contract float %output_acc.sroa.80.48.vec.extract919, %denominator.sroa.0.1, !dbg !56
  %output_acc.sroa.80.52.vec.extract928 = extractelement <4 x float> %output_acc.sroa.80.1, i64 1, !dbg !55
  %div.13 = fdiv contract float %output_acc.sroa.80.52.vec.extract928, %denominator.sroa.0.1, !dbg !56
  %output_acc.sroa.80.56.vec.extract937 = extractelement <4 x float> %output_acc.sroa.80.1, i64 2, !dbg !55
  %div.14 = fdiv contract float %output_acc.sroa.80.56.vec.extract937, %denominator.sroa.0.1, !dbg !56
  %output_acc.sroa.80.60.vec.extract946 = extractelement <4 x float> %output_acc.sroa.80.1, i64 3, !dbg !55
  %div.15 = fdiv contract float %output_acc.sroa.80.60.vec.extract946, %denominator.sroa.0.1, !dbg !56
  %invariant.gep710 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul14, !dbg !57
  %37 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !58
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !58, !noalias !66
  %38 = fptrunc float %div to half, !dbg !58
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %37), !dbg !58, !noalias !66
  %39 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !71
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !71, !noalias !66
  %40 = fptrunc float %div.1 to half, !dbg !71
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %39), !dbg !71, !noalias !66
  %41 = bitcast half %38 to i16, !dbg !73
  %42 = bitcast half %40 to i16, !dbg !76
  %43 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !77
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !77, !noalias !81
  %44 = fptrunc float %div.2 to half, !dbg !77
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %43), !dbg !77, !noalias !81
  %45 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !86
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !86, !noalias !81
  %46 = fptrunc float %div.3 to half, !dbg !86
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %45), !dbg !86, !noalias !81
  %47 = bitcast half %44 to i16, !dbg !88
  %48 = bitcast half %46 to i16, !dbg !90
  %__2.sroa.6.0.insert.ext = zext i16 %48 to i64, !dbg !91
  %__2.sroa.6.0.insert.shift = shl nuw i64 %__2.sroa.6.0.insert.ext, 48, !dbg !91
  %__2.sroa.5.0.insert.ext = zext i16 %47 to i64, !dbg !91
  %__2.sroa.5.0.insert.shift = shl nuw nsw i64 %__2.sroa.5.0.insert.ext, 32, !dbg !91
  %__2.sroa.5.0.insert.insert = or disjoint i64 %__2.sroa.6.0.insert.shift, %__2.sroa.5.0.insert.shift, !dbg !91
  %__2.sroa.4.0.insert.ext = zext i16 %42 to i64, !dbg !91
  %__2.sroa.4.0.insert.shift = shl nuw nsw i64 %__2.sroa.4.0.insert.ext, 16, !dbg !91
  %__2.sroa.4.0.insert.insert = or disjoint i64 %__2.sroa.5.0.insert.insert, %__2.sroa.4.0.insert.shift, !dbg !91
  %__2.sroa.0.0.insert.ext = zext i16 %41 to i64, !dbg !91
  %__2.sroa.0.0.insert.insert = or disjoint i64 %__2.sroa.4.0.insert.insert, %__2.sroa.0.0.insert.ext, !dbg !91
  %gep711 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep710, i32 %mul9, !dbg !92
  store i64 %__2.sroa.0.0.insert.insert, ptr addrspace(3) %gep711, align 8, !dbg !93
  %49 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !58
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !58, !noalias !66
  %50 = fptrunc float %div.4 to half, !dbg !58
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %49), !dbg !58, !noalias !66
  %51 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !71
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !71, !noalias !66
  %52 = fptrunc float %div.5 to half, !dbg !71
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %51), !dbg !71, !noalias !66
  %53 = bitcast half %50 to i16, !dbg !73
  %54 = bitcast half %52 to i16, !dbg !76
  %55 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !77
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !77, !noalias !81
  %56 = fptrunc float %div.6 to half, !dbg !77
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %55), !dbg !77, !noalias !81
  %57 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !86
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !86, !noalias !81
  %58 = fptrunc float %div.7 to half, !dbg !86
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %57), !dbg !86, !noalias !81
  %59 = bitcast half %56 to i16, !dbg !88
  %60 = bitcast half %58 to i16, !dbg !90
  %__2.sroa.6.0.insert.ext.1 = zext i16 %60 to i64, !dbg !91
  %__2.sroa.6.0.insert.shift.1 = shl nuw i64 %__2.sroa.6.0.insert.ext.1, 48, !dbg !91
  %__2.sroa.5.0.insert.ext.1 = zext i16 %59 to i64, !dbg !91
  %__2.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.1, 32, !dbg !91
  %__2.sroa.5.0.insert.insert.1 = or disjoint i64 %__2.sroa.6.0.insert.shift.1, %__2.sroa.5.0.insert.shift.1, !dbg !91
  %__2.sroa.4.0.insert.ext.1 = zext i16 %54 to i64, !dbg !91
  %__2.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.1, 16, !dbg !91
  %__2.sroa.4.0.insert.insert.1 = or disjoint i64 %__2.sroa.5.0.insert.insert.1, %__2.sroa.4.0.insert.shift.1, !dbg !91
  %__2.sroa.0.0.insert.ext.1 = zext i16 %53 to i64, !dbg !91
  %__2.sroa.0.0.insert.insert.1 = or disjoint i64 %__2.sroa.4.0.insert.insert.1, %__2.sroa.0.0.insert.ext.1, !dbg !91
  %61 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep710, i32 32, !dbg !92
  %gep711.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %61, i32 %mul9, !dbg !92
  store i64 %__2.sroa.0.0.insert.insert.1, ptr addrspace(3) %gep711.1, align 8, !dbg !93
  %62 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !58
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !58, !noalias !66
  %63 = fptrunc float %div.8 to half, !dbg !58
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %62), !dbg !58, !noalias !66
  %64 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !71
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !71, !noalias !66
  %65 = fptrunc float %div.9 to half, !dbg !71
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %64), !dbg !71, !noalias !66
  %66 = bitcast half %63 to i16, !dbg !73
  %67 = bitcast half %65 to i16, !dbg !76
  %68 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !77
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !77, !noalias !81
  %69 = fptrunc float %div.10 to half, !dbg !77
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %68), !dbg !77, !noalias !81
  %70 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !86
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !86, !noalias !81
  %71 = fptrunc float %div.11 to half, !dbg !86
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %70), !dbg !86, !noalias !81
  %72 = bitcast half %69 to i16, !dbg !88
  %73 = bitcast half %71 to i16, !dbg !90
  %__2.sroa.6.0.insert.ext.2 = zext i16 %73 to i64, !dbg !91
  %__2.sroa.6.0.insert.shift.2 = shl nuw i64 %__2.sroa.6.0.insert.ext.2, 48, !dbg !91
  %__2.sroa.5.0.insert.ext.2 = zext i16 %72 to i64, !dbg !91
  %__2.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.2, 32, !dbg !91
  %__2.sroa.5.0.insert.insert.2 = or disjoint i64 %__2.sroa.6.0.insert.shift.2, %__2.sroa.5.0.insert.shift.2, !dbg !91
  %__2.sroa.4.0.insert.ext.2 = zext i16 %67 to i64, !dbg !91
  %__2.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.2, 16, !dbg !91
  %__2.sroa.4.0.insert.insert.2 = or disjoint i64 %__2.sroa.5.0.insert.insert.2, %__2.sroa.4.0.insert.shift.2, !dbg !91
  %__2.sroa.0.0.insert.ext.2 = zext i16 %66 to i64, !dbg !91
  %__2.sroa.0.0.insert.insert.2 = or disjoint i64 %__2.sroa.4.0.insert.insert.2, %__2.sroa.0.0.insert.ext.2, !dbg !91
  %74 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep710, i32 64, !dbg !92
  %gep711.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) %74, i32 %mul9, !dbg !92
  store i64 %__2.sroa.0.0.insert.insert.2, ptr addrspace(3) %gep711.2, align 8, !dbg !93
  %75 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !58
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !58, !noalias !66
  %76 = fptrunc float %div.12 to half, !dbg !58
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %75), !dbg !58, !noalias !66
  %77 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !71
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !71, !noalias !66
  %78 = fptrunc float %div.13 to half, !dbg !71
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %77), !dbg !71, !noalias !66
  %79 = bitcast half %76 to i16, !dbg !73
  %80 = bitcast half %78 to i16, !dbg !76
  %81 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !77
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !77, !noalias !81
  %82 = fptrunc float %div.14 to half, !dbg !77
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %81), !dbg !77, !noalias !81
  %83 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !86
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !86, !noalias !81
  %84 = fptrunc float %div.15 to half, !dbg !86
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %83), !dbg !86, !noalias !81
  %85 = bitcast half %82 to i16, !dbg !88
  %86 = bitcast half %84 to i16, !dbg !90
  %__2.sroa.6.0.insert.ext.3 = zext i16 %86 to i64, !dbg !91
  %__2.sroa.6.0.insert.shift.3 = shl nuw i64 %__2.sroa.6.0.insert.ext.3, 48, !dbg !91
  %__2.sroa.5.0.insert.ext.3 = zext i16 %85 to i64, !dbg !91
  %__2.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.3, 32, !dbg !91
  %__2.sroa.5.0.insert.insert.3 = or disjoint i64 %__2.sroa.6.0.insert.shift.3, %__2.sroa.5.0.insert.shift.3, !dbg !91
  %__2.sroa.4.0.insert.ext.3 = zext i16 %80 to i64, !dbg !91
  %__2.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.3, 16, !dbg !91
  %__2.sroa.4.0.insert.insert.3 = or disjoint i64 %__2.sroa.5.0.insert.insert.3, %__2.sroa.4.0.insert.shift.3, !dbg !91
  %__2.sroa.0.0.insert.ext.3 = zext i16 %79 to i64, !dbg !91
  %__2.sroa.0.0.insert.insert.3 = or disjoint i64 %__2.sroa.4.0.insert.insert.3, %__2.sroa.0.0.insert.ext.3, !dbg !91
  %87 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep710, i32 96, !dbg !92
  %gep711.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) %87, i32 %mul9, !dbg !92
  store i64 %__2.sroa.0.0.insert.insert.3, ptr addrspace(3) %gep711.3, align 8, !dbg !93
  fence syncscope("warp") release, !dbg !94
  tail call void @llvm.mxc.barrier.warp(), !dbg !97
  fence syncscope("warp") acquire, !dbg !98
  %invariant.gep713 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %12, !dbg !99
  %add500 = add nuw nsw i32 %add, %12
  %88 = zext nneg i32 %add500 to i64, !dbg !100
  %add.ptr505 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %88, !dbg !101
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr505, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep713, i64 16, i1 false), !dbg !102, !tbaa.struct !103, !call_argsrelate !104
  %gep714.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep713, i32 1024, !dbg !105
  %89 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %88, !dbg !101
  %add.ptr505.1 = getelementptr inbounds i8, ptr addrspace(1) %89, i64 1024, !dbg !101
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr505.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep714.1, i64 16, i1 false), !dbg !102, !tbaa.struct !103, !call_argsrelate !104
  ret void, !dbg !106

for.body38:                                       ; preds = %entry, %if.end432
  %output_acc.sroa.80.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.80.1, %if.end432 ], !dbg !107
  %output_acc.sroa.54.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.54.1, %if.end432 ], !dbg !107
  %output_acc.sroa.28.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.28.1, %if.end432 ], !dbg !107
  %output_acc.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.0.1, %if.end432 ], !dbg !107
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end432 ]
  %denominator.sroa.0.0705 = phi float [ 0.000000e+00, %entry ], [ %denominator.sroa.0.1, %if.end432 ]
  %scaled_max.sroa.0.0704 = phi float [ 0xFFF0000000000000, %entry ], [ %scaled_max.sroa.0.2, %if.end432 ]
  %gep = getelementptr inbounds i32, ptr addrspace(1) %invariant.gep956, i64 %indvars.iv, !dbg !108
  %90 = load i32, ptr addrspace(1) %gep, align 4, !dbg !108, !tbaa !30
  %mul46 = shl nsw i32 %90, 4, !dbg !109
  %cmp47 = icmp slt i32 %90, 0, !dbg !110
  %cmp49.not = icmp sgt i32 %mul46, %1
  %or.cond = select i1 %cmp47, i1 true, i1 %cmp49.not, !dbg !111
  br i1 %or.cond, label %if.end432, label %if.then, !dbg !111

if.then:                                          ; preds = %for.body38
  fence syncscope("warp") release, !dbg !112
  tail call void @llvm.mxc.barrier.warp(), !dbg !115
  fence syncscope("warp") acquire, !dbg !116
  %add56 = add nuw nsw i32 %mul46, %shr55
  %conv66 = zext nneg i32 %mul46 to i64
  %.idx597 = shl nuw nsw i64 %conv66, 7
  %gep707 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep706, i64 %.idx597, !dbg !117
  %cmp59 = icmp ult i32 %add56, 1024, !dbg !118
  br i1 %cmp59, label %if.then60, label %if.end, !dbg !119

if.then60:                                        ; preds = %if.then
  %gep684 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep707, i64 %mul62
  %condval.sroa.7.0.add.ptr73.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep684, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep684, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep684, i64 4
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep684, align 16, !dbg !120, !tbaa !30
  %condval.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr73.sroa_idx, align 4, !dbg !120, !tbaa !30
  %condval.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr73.sroa_idx, align 8, !dbg !120, !tbaa !30
  %condval.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr73.sroa_idx, align 4, !dbg !120, !tbaa !30
  br label %if.end, !dbg !121

if.end:                                           ; preds = %if.then, %if.then60
  %condval.sroa.0.0 = phi i32 [ %condval.sroa.0.0.copyload, %if.then60 ], [ 0, %if.then ], !dbg !122
  %condval.sroa.5.0 = phi i32 [ %condval.sroa.5.0.copyload, %if.then60 ], [ 0, %if.then ], !dbg !122
  %condval.sroa.6.0 = phi i32 [ %condval.sroa.6.0.copyload, %if.then60 ], [ 0, %if.then ], !dbg !122
  %condval.sroa.7.0 = phi i32 [ %condval.sroa.7.0.copyload, %if.then60 ], [ 0, %if.then ], !dbg !122
  store i32 %condval.sroa.0.0, ptr addrspace(3) %add.ptr128, align 16, !dbg !123, !tbaa !30
  store i32 %condval.sroa.5.0, ptr addrspace(3) %condval.sroa.5.0.add.ptr128.sroa_idx, align 4, !dbg !123, !tbaa !30
  store i32 %condval.sroa.6.0, ptr addrspace(3) %condval.sroa.6.0.add.ptr128.sroa_idx, align 8, !dbg !123, !tbaa !30
  store i32 %condval.sroa.7.0, ptr addrspace(3) %condval.sroa.7.0.add.ptr128.sroa_idx, align 4, !dbg !123, !tbaa !30
  %cmp59.1 = icmp ult i32 %add56, 1016, !dbg !118
  br i1 %cmp59.1, label %if.then60.1, label %if.end.1, !dbg !119

if.then60.1:                                      ; preds = %if.end
  %gep684.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep707, i64 %add65.1
  %condval.sroa.7.0.add.ptr73.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep684.1, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep684.1, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep684.1, i64 4
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep684.1, align 16, !dbg !120, !tbaa !30
  %condval.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr73.sroa_idx.1, align 4, !dbg !120, !tbaa !30
  %condval.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr73.sroa_idx.1, align 8, !dbg !120, !tbaa !30
  %condval.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr73.sroa_idx.1, align 4, !dbg !120, !tbaa !30
  br label %if.end.1, !dbg !121

if.end.1:                                         ; preds = %if.then60.1, %if.end
  %condval.sroa.0.0.1 = phi i32 [ %condval.sroa.0.0.copyload.1, %if.then60.1 ], [ 0, %if.end ], !dbg !122
  %condval.sroa.5.0.1 = phi i32 [ %condval.sroa.5.0.copyload.1, %if.then60.1 ], [ 0, %if.end ], !dbg !122
  %condval.sroa.6.0.1 = phi i32 [ %condval.sroa.6.0.copyload.1, %if.then60.1 ], [ 0, %if.end ], !dbg !122
  %condval.sroa.7.0.1 = phi i32 [ %condval.sroa.7.0.copyload.1, %if.then60.1 ], [ 0, %if.end ], !dbg !122
  store i32 %condval.sroa.0.0.1, ptr addrspace(3) %add.ptr128.1, align 16, !dbg !123, !tbaa !30
  store i32 %condval.sroa.5.0.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr128.sroa_idx.1, align 4, !dbg !123, !tbaa !30
  store i32 %condval.sroa.6.0.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr128.sroa_idx.1, align 8, !dbg !123, !tbaa !30
  store i32 %condval.sroa.7.0.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr128.sroa_idx.1, align 4, !dbg !123, !tbaa !30
  fence syncscope("warp") release, !dbg !124
  tail call void @llvm.mxc.barrier.warp(), !dbg !127
  fence syncscope("warp") acquire, !dbg !128
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr173, align 8, !dbg !129
  %91 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %5, <4 x float> zeroinitializer), !dbg !130, !call_argsrelate !131
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr173.1, align 8, !dbg !129
  %92 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %7, <4 x float> %91), !dbg !130, !call_argsrelate !131
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr173.2, align 8, !dbg !129
  %93 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %9, <4 x float> %92), !dbg !130, !call_argsrelate !131
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr173.3, align 8, !dbg !129
  %94 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %11, <4 x float> %93), !dbg !130, !call_argsrelate !131
  %add195 = add nuw nsw i32 %mul46, %mul14
  %cmp198.not = icmp sgt i32 %add195, %1, !dbg !132
  %scores.sroa.0.0.vec.extract753 = extractelement <4 x float> %94, i64 0
  %spec.select = select i1 %cmp198.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract753, !dbg !133
  %cmp198.not.1.not = icmp slt i32 %add195, %1, !dbg !132
  %scores.sroa.0.4.vec.extract766 = extractelement <4 x float> %94, i64 1, !dbg !133
  %condval_1.0.1 = select i1 %cmp198.not.1.not, float %scores.sroa.0.4.vec.extract766, float 0xFFF0000000000000, !dbg !133
  %add196.2 = or disjoint i32 %add195, 2, !dbg !134
  %cmp198.not.2 = icmp sgt i32 %add196.2, %1, !dbg !132
  %scores.sroa.0.8.vec.extract779 = extractelement <4 x float> %94, i64 2, !dbg !133
  %condval_1.0.2 = select i1 %cmp198.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract779, !dbg !133
  %add196.3 = or disjoint i32 %add195, 3, !dbg !134
  %cmp198.not.3 = icmp sgt i32 %add196.3, %1, !dbg !132
  %scores.sroa.0.12.vec.extract792 = extractelement <4 x float> %94, i64 3, !dbg !133
  %condval_1.0.3 = select i1 %cmp198.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract792, !dbg !133
  %95 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !135
  %96 = tail call contract noundef float @llvm.maxnum.f32(float %95, float %condval_1.0.1), !dbg !135
  %97 = tail call contract noundef float @llvm.maxnum.f32(float %96, float %condval_1.0.2), !dbg !135
  %98 = tail call contract noundef float @llvm.maxnum.f32(float %97, float %condval_1.0.3), !dbg !135
  %99 = bitcast float %98 to i32, !dbg !139
  %100 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !148
  %101 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %100) #11, !dbg !153
  %xor.i.i.i = xor i32 %101, 32, !dbg !154
  %102 = and i32 %101, -64, !dbg !155
  %and.i.i.i = add nsw i32 %102, 64, !dbg !155
  %cmp.not.i.i.i = icmp slt i32 %xor.i.i.i, %and.i.i.i, !dbg !156
  %cond.i.i.i = select i1 %cmp.not.i.i.i, i32 %xor.i.i.i, i32 %101, !dbg !157
  %shl.i.i.i = shl i32 %cond.i.i.i, 2, !dbg !158
  %103 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i, i32 %99), !dbg !159
  %104 = bitcast i32 %103 to float, !dbg !160
  %105 = tail call contract noundef float @llvm.maxnum.f32(float %98, float %104), !dbg !161
  %106 = bitcast float %105 to i32, !dbg !169
  %107 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !174
  %108 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %107) #11, !dbg !177
  %xor.i.i.i.i = xor i32 %108, 16, !dbg !178
  %109 = and i32 %108, -64, !dbg !179
  %and.i.i.i.i = add nsw i32 %109, 64, !dbg !179
  %cmp.not.i.i.i.i = icmp slt i32 %xor.i.i.i.i, %and.i.i.i.i, !dbg !180
  %cond.i.i.i.i = select i1 %cmp.not.i.i.i.i, i32 %xor.i.i.i.i, i32 %108, !dbg !181
  %shl.i.i.i.i = shl i32 %cond.i.i.i.i, 2, !dbg !182
  %110 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i, i32 %106), !dbg !183
  %111 = bitcast i32 %110 to float, !dbg !184
  %112 = tail call contract noundef float @llvm.maxnum.f32(float %105, float %111), !dbg !185
  %mul235 = fmul contract float %112, 0x3FC7154760000000, !dbg !189
  %sub = fsub contract float %scaled_max.sroa.0.0704, %mul235, !dbg !190
  %cmp.i.i = fcmp contract olt float %sub, -1.260000e+02, !dbg !191
  %cond.i.i = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !191
  %add.i.i = fadd contract float %sub, %cond.i.i, !dbg !191
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !191
  %mul247 = fmul contract float %spec.select, 0x3FC7154760000000, !dbg !194
  %sub249 = fsub contract float %mul247, %mul235, !dbg !195
  %cmp.i.i632 = fcmp contract olt float %sub249, -1.260000e+02, !dbg !196
  %cond.i.i633 = select contract i1 %cmp.i.i632, float 6.400000e+01, float 0.000000e+00, !dbg !196
  %add.i.i634 = fadd contract float %sub249, %cond.i.i633, !dbg !196
  %113 = tail call contract float @llvm.exp2.f32(float %add.i.i634), !dbg !196
  %cond2.i.i635 = select contract i1 %cmp.i.i632, float 0x3BF0000000000000, float 1.000000e+00, !dbg !196
  %mul.i.i636 = fmul contract float %cond2.i.i635, %113, !dbg !196
  %mul247.1 = fmul contract float %condval_1.0.1, 0x3FC7154760000000, !dbg !194
  %sub249.1 = fsub contract float %mul247.1, %mul235, !dbg !195
  %cmp.i.i632.1 = fcmp contract olt float %sub249.1, -1.260000e+02, !dbg !196
  %cond.i.i633.1 = select contract i1 %cmp.i.i632.1, float 6.400000e+01, float 0.000000e+00, !dbg !196
  %add.i.i634.1 = fadd contract float %sub249.1, %cond.i.i633.1, !dbg !196
  %114 = tail call contract float @llvm.exp2.f32(float %add.i.i634.1), !dbg !196
  %cond2.i.i635.1 = select contract i1 %cmp.i.i632.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !196
  %mul.i.i636.1 = fmul contract float %cond2.i.i635.1, %114, !dbg !196
  %mul247.2 = fmul contract float %condval_1.0.2, 0x3FC7154760000000, !dbg !194
  %sub249.2 = fsub contract float %mul247.2, %mul235, !dbg !195
  %cmp.i.i632.2 = fcmp contract olt float %sub249.2, -1.260000e+02, !dbg !196
  %cond.i.i633.2 = select contract i1 %cmp.i.i632.2, float 6.400000e+01, float 0.000000e+00, !dbg !196
  %add.i.i634.2 = fadd contract float %sub249.2, %cond.i.i633.2, !dbg !196
  %115 = tail call contract float @llvm.exp2.f32(float %add.i.i634.2), !dbg !196
  %cond2.i.i635.2 = select contract i1 %cmp.i.i632.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !196
  %mul.i.i636.2 = fmul contract float %cond2.i.i635.2, %115, !dbg !196
  %mul247.3 = fmul contract float %condval_1.0.3, 0x3FC7154760000000, !dbg !194
  %sub249.3 = fsub contract float %mul247.3, %mul235, !dbg !195
  %cmp.i.i632.3 = fcmp contract olt float %sub249.3, -1.260000e+02, !dbg !196
  %cond.i.i633.3 = select contract i1 %cmp.i.i632.3, float 6.400000e+01, float 0.000000e+00, !dbg !196
  %add.i.i634.3 = fadd contract float %sub249.3, %cond.i.i633.3, !dbg !196
  %116 = tail call contract float @llvm.exp2.f32(float %add.i.i634.3), !dbg !196
  %cond2.i.i635.3 = select contract i1 %cmp.i.i632.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !196
  %mul.i.i636.3 = fmul contract float %cond2.i.i635.3, %116, !dbg !196
  %117 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !191
  %add264 = fadd contract float %mul.i.i636, 0.000000e+00, !dbg !198
  %add264.1 = fadd contract float %add264, %mul.i.i636.1, !dbg !198
  %add264.2 = fadd contract float %add264.1, %mul.i.i636.2, !dbg !198
  %add264.3 = fadd contract float %add264.2, %mul.i.i636.3, !dbg !198
  %mul.i.i = fmul contract float %cond2.i.i, %117, !dbg !191
  %118 = bitcast float %add264.3 to i32, !dbg !199
  %119 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !204
  %120 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %119) #11, !dbg !207
  %xor.i.i.i637 = xor i32 %120, 32, !dbg !208
  %121 = and i32 %120, -64, !dbg !209
  %and.i.i.i638 = add nsw i32 %121, 64, !dbg !209
  %cmp.not.i.i.i639 = icmp slt i32 %xor.i.i.i637, %and.i.i.i638, !dbg !210
  %cond.i.i.i640 = select i1 %cmp.not.i.i.i639, i32 %xor.i.i.i637, i32 %120, !dbg !211
  %shl.i.i.i641 = shl i32 %cond.i.i.i640, 2, !dbg !212
  %122 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i641, i32 %118), !dbg !213
  %123 = bitcast i32 %122 to float, !dbg !214
  %add.i.i642 = fadd contract float %add264.3, %123, !dbg !215
  %124 = bitcast float %add.i.i642 to i32, !dbg !218
  %125 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !223
  %126 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %125) #11, !dbg !226
  %xor.i.i.i.i643 = xor i32 %126, 16, !dbg !227
  %127 = and i32 %126, -64, !dbg !228
  %and.i.i.i.i644 = add nsw i32 %127, 64, !dbg !228
  %cmp.not.i.i.i.i645 = icmp slt i32 %xor.i.i.i.i643, %and.i.i.i.i644, !dbg !229
  %cond.i.i.i.i646 = select i1 %cmp.not.i.i.i.i645, i32 %xor.i.i.i.i643, i32 %126, !dbg !230
  %shl.i.i.i.i647 = shl i32 %cond.i.i.i.i646, 2, !dbg !231
  %128 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i647, i32 %124), !dbg !232
  %129 = bitcast i32 %128 to float, !dbg !233
  %mul274 = fmul contract float %denominator.sroa.0.0705, %mul.i.i, !dbg !234
  %130 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !239
  %131 = fptrunc float %mul.i.i636 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %130), !dbg !235, !noalias !239
  %132 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !244, !noalias !239
  %133 = fptrunc float %mul.i.i636.1 to half, !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %132), !dbg !244, !noalias !239
  %__1.sroa.0.0.vec.insert = insertelement <4 x half> poison, half %131, i64 0, !dbg !246
  %__1.sroa.0.2.vec.insert = insertelement <4 x half> %__1.sroa.0.0.vec.insert, half %133, i64 1, !dbg !246
  %134 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !253
  %135 = fptrunc float %mul.i.i636.2 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %134), !dbg !249, !noalias !253
  %136 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !258, !noalias !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %136), !dbg !258, !noalias !253
  %__1.sroa.0.4.vec.insert = insertelement <4 x half> %__1.sroa.0.2.vec.insert, half %135, i64 2, !dbg !260
  %output_acc.sroa.0.0.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 0, !dbg !262
  %mul299 = fmul contract float %mul.i.i, %output_acc.sroa.0.0.vec.extract, !dbg !263
  %output_acc.sroa.0.0.vec.insert806 = insertelement <4 x float> poison, float %mul299, i64 0, !dbg !264
  %output_acc.sroa.0.4.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 1, !dbg !262
  %mul299.1 = fmul contract float %mul.i.i, %output_acc.sroa.0.4.vec.extract, !dbg !263
  %output_acc.sroa.0.4.vec.insert815 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert806, float %mul299.1, i64 1, !dbg !264
  %output_acc.sroa.0.8.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 2, !dbg !262
  %mul299.2 = fmul contract float %mul.i.i, %output_acc.sroa.0.8.vec.extract, !dbg !263
  %output_acc.sroa.0.8.vec.insert824 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert815, float %mul299.2, i64 2, !dbg !264
  %output_acc.sroa.0.12.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 3, !dbg !262
  %mul299.3 = fmul contract float %mul.i.i, %output_acc.sroa.0.12.vec.extract, !dbg !263
  %output_acc.sroa.0.12.vec.insert833 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert824, float %mul299.3, i64 3, !dbg !264
  %output_acc.sroa.28.16.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 0, !dbg !262
  %mul299.4 = fmul contract float %mul.i.i, %output_acc.sroa.28.16.vec.extract, !dbg !263
  %output_acc.sroa.28.16.vec.insert843 = insertelement <4 x float> poison, float %mul299.4, i64 0, !dbg !264
  %output_acc.sroa.28.20.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 1, !dbg !262
  %mul299.5 = fmul contract float %mul.i.i, %output_acc.sroa.28.20.vec.extract, !dbg !263
  %output_acc.sroa.28.20.vec.insert852 = insertelement <4 x float> %output_acc.sroa.28.16.vec.insert843, float %mul299.5, i64 1, !dbg !264
  %output_acc.sroa.28.24.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 2, !dbg !262
  %mul299.6 = fmul contract float %mul.i.i, %output_acc.sroa.28.24.vec.extract, !dbg !263
  %output_acc.sroa.28.24.vec.insert861 = insertelement <4 x float> %output_acc.sroa.28.20.vec.insert852, float %mul299.6, i64 2, !dbg !264
  %output_acc.sroa.28.28.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 3, !dbg !262
  %mul299.7 = fmul contract float %mul.i.i, %output_acc.sroa.28.28.vec.extract, !dbg !263
  %output_acc.sroa.28.28.vec.insert870 = insertelement <4 x float> %output_acc.sroa.28.24.vec.insert861, float %mul299.7, i64 3, !dbg !264
  %output_acc.sroa.54.32.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 0, !dbg !262
  %mul299.8 = fmul contract float %mul.i.i, %output_acc.sroa.54.32.vec.extract, !dbg !263
  %output_acc.sroa.54.32.vec.insert880 = insertelement <4 x float> poison, float %mul299.8, i64 0, !dbg !264
  %output_acc.sroa.54.36.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 1, !dbg !262
  %mul299.9 = fmul contract float %mul.i.i, %output_acc.sroa.54.36.vec.extract, !dbg !263
  %output_acc.sroa.54.36.vec.insert889 = insertelement <4 x float> %output_acc.sroa.54.32.vec.insert880, float %mul299.9, i64 1, !dbg !264
  %output_acc.sroa.54.40.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 2, !dbg !262
  %mul299.10 = fmul contract float %mul.i.i, %output_acc.sroa.54.40.vec.extract, !dbg !263
  %output_acc.sroa.54.40.vec.insert898 = insertelement <4 x float> %output_acc.sroa.54.36.vec.insert889, float %mul299.10, i64 2, !dbg !264
  %output_acc.sroa.54.44.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 3, !dbg !262
  %mul299.11 = fmul contract float %mul.i.i, %output_acc.sroa.54.44.vec.extract, !dbg !263
  %output_acc.sroa.54.44.vec.insert907 = insertelement <4 x float> %output_acc.sroa.54.40.vec.insert898, float %mul299.11, i64 3, !dbg !264
  %output_acc.sroa.80.48.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 0, !dbg !262
  %mul299.12 = fmul contract float %mul.i.i, %output_acc.sroa.80.48.vec.extract, !dbg !263
  %output_acc.sroa.80.48.vec.insert917 = insertelement <4 x float> poison, float %mul299.12, i64 0, !dbg !264
  %output_acc.sroa.80.52.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 1, !dbg !262
  %mul299.13 = fmul contract float %mul.i.i, %output_acc.sroa.80.52.vec.extract, !dbg !263
  %output_acc.sroa.80.52.vec.insert926 = insertelement <4 x float> %output_acc.sroa.80.48.vec.insert917, float %mul299.13, i64 1, !dbg !264
  %output_acc.sroa.80.56.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 2, !dbg !262
  %mul299.14 = fmul contract float %mul.i.i, %output_acc.sroa.80.56.vec.extract, !dbg !263
  %output_acc.sroa.80.56.vec.insert935 = insertelement <4 x float> %output_acc.sroa.80.52.vec.insert926, float %mul299.14, i64 2, !dbg !264
  %output_acc.sroa.80.60.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 3, !dbg !262
  %mul299.15 = fmul contract float %mul.i.i, %output_acc.sroa.80.60.vec.extract, !dbg !263
  %output_acc.sroa.80.60.vec.insert944 = insertelement <4 x float> %output_acc.sroa.80.56.vec.insert935, float %mul299.15, i64 3, !dbg !264
  %add.i.i.i = fadd contract float %add.i.i642, %129, !dbg !265
  %137 = fptrunc float %mul.i.i636.3 to half, !dbg !258
  %gep708 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep, i64 %.idx597, !dbg !267
  br i1 %cmp59, label %if.then315, label %if.end353, !dbg !268

if.then315:                                       ; preds = %if.end.1
  %gep698 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep708, i64 %mul62
  %condval_2.sroa.7.0.add.ptr329.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep698, i64 12
  %condval_2.sroa.6.0.add.ptr329.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep698, i64 8
  %condval_2.sroa.5.0.add.ptr329.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep698, i64 4
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep698, align 16, !dbg !269, !tbaa !30
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr329.sroa_idx, align 4, !dbg !269, !tbaa !30
  %condval_2.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr329.sroa_idx, align 8, !dbg !269, !tbaa !30
  %condval_2.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr329.sroa_idx, align 4, !dbg !269, !tbaa !30
  br label %if.end353, !dbg !270

if.end353:                                        ; preds = %if.end.1, %if.then315
  %condval_2.sroa.7.0 = phi i32 [ %condval_2.sroa.7.0.copyload, %if.then315 ], [ 0, %if.end.1 ], !dbg !122
  %condval_2.sroa.6.0 = phi i32 [ %condval_2.sroa.6.0.copyload, %if.then315 ], [ 0, %if.end.1 ], !dbg !122
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then315 ], [ 0, %if.end.1 ], !dbg !122
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then315 ], [ 0, %if.end.1 ], !dbg !122
  store i32 %condval_2.sroa.0.0, ptr addrspace(3) %add.ptr370, align 16, !dbg !271, !tbaa !30
  store i32 %condval_2.sroa.5.0, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr370.sroa_idx, align 4, !dbg !271, !tbaa !30
  store i32 %condval_2.sroa.6.0, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr370.sroa_idx, align 8, !dbg !271, !tbaa !30
  store i32 %condval_2.sroa.7.0, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr370.sroa_idx, align 4, !dbg !271, !tbaa !30
  br i1 %cmp59.1, label %if.then315.1, label %if.end353.1, !dbg !268

if.then315.1:                                     ; preds = %if.end353
  %gep698.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep708, i64 %add321.1
  %condval_2.sroa.7.0.add.ptr329.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep698.1, i64 12
  %condval_2.sroa.6.0.add.ptr329.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep698.1, i64 8
  %condval_2.sroa.5.0.add.ptr329.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep698.1, i64 4
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep698.1, align 16, !dbg !269, !tbaa !30
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr329.sroa_idx.1, align 4, !dbg !269, !tbaa !30
  %condval_2.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr329.sroa_idx.1, align 8, !dbg !269, !tbaa !30
  %condval_2.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr329.sroa_idx.1, align 4, !dbg !269, !tbaa !30
  br label %if.end353.1, !dbg !270

if.end353.1:                                      ; preds = %if.then315.1, %if.end353
  %condval_2.sroa.7.0.1 = phi i32 [ %condval_2.sroa.7.0.copyload.1, %if.then315.1 ], [ 0, %if.end353 ], !dbg !122
  %condval_2.sroa.6.0.1 = phi i32 [ %condval_2.sroa.6.0.copyload.1, %if.then315.1 ], [ 0, %if.end353 ], !dbg !122
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then315.1 ], [ 0, %if.end353 ], !dbg !122
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then315.1 ], [ 0, %if.end353 ], !dbg !122
  store i32 %condval_2.sroa.0.0.1, ptr addrspace(3) %add.ptr370.1, align 16, !dbg !271, !tbaa !30
  store i32 %condval_2.sroa.5.0.1, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr370.sroa_idx.1, align 4, !dbg !271, !tbaa !30
  store i32 %condval_2.sroa.6.0.1, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr370.sroa_idx.1, align 8, !dbg !271, !tbaa !30
  store i32 %condval_2.sroa.7.0.1, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr370.sroa_idx.1, align 4, !dbg !271, !tbaa !30
  %add276 = fadd contract float %mul274, %add.i.i.i, !dbg !272
  fence syncscope("warp") release, !dbg !273
  tail call void @llvm.mxc.barrier.warp(), !dbg !276
  fence syncscope("warp") acquire, !dbg !277
  %138 = load half, ptr addrspace(3) %33, align 2, !dbg !278, !tbaa !279
  %B_local.sroa.0.0.vec.insert = insertelement <4 x half> poison, half %138, i64 0, !dbg !278
  %139 = load half, ptr addrspace(3) %gep699.1, align 2, !dbg !278, !tbaa !279
  %B_local.sroa.0.2.vec.insert = insertelement <4 x half> %B_local.sroa.0.0.vec.insert, half %139, i64 1, !dbg !278
  %140 = load half, ptr addrspace(3) %gep699.2, align 2, !dbg !278, !tbaa !279
  %B_local.sroa.0.4.vec.insert = insertelement <4 x half> %B_local.sroa.0.2.vec.insert, half %140, i64 2, !dbg !278
  %141 = load half, ptr addrspace(3) %gep699.3, align 2, !dbg !278, !tbaa !279
  %B_local.sroa.0.6.vec.insert = insertelement <4 x half> %B_local.sroa.0.4.vec.insert, half %141, i64 3, !dbg !278
  %142 = load half, ptr addrspace(3) %34, align 2, !dbg !278, !tbaa !279
  %B_local.sroa.7.8.vec.insert = insertelement <4 x half> poison, half %142, i64 0, !dbg !278
  %143 = load half, ptr addrspace(3) %gep699.1.1, align 2, !dbg !278, !tbaa !279
  %B_local.sroa.7.10.vec.insert = insertelement <4 x half> %B_local.sroa.7.8.vec.insert, half %143, i64 1, !dbg !278
  %144 = load half, ptr addrspace(3) %gep699.2.1, align 2, !dbg !278, !tbaa !279
  %B_local.sroa.7.12.vec.insert = insertelement <4 x half> %B_local.sroa.7.10.vec.insert, half %144, i64 2, !dbg !278
  %145 = load half, ptr addrspace(3) %gep699.3.1, align 2, !dbg !278, !tbaa !279
  %B_local.sroa.7.14.vec.insert = insertelement <4 x half> %B_local.sroa.7.12.vec.insert, half %145, i64 3, !dbg !278
  %146 = load half, ptr addrspace(3) %35, align 2, !dbg !278, !tbaa !279
  %B_local.sroa.12.16.vec.insert = insertelement <4 x half> poison, half %146, i64 0, !dbg !278
  %147 = load half, ptr addrspace(3) %gep699.1.2, align 2, !dbg !278, !tbaa !279
  %B_local.sroa.12.18.vec.insert = insertelement <4 x half> %B_local.sroa.12.16.vec.insert, half %147, i64 1, !dbg !278
  %148 = load half, ptr addrspace(3) %gep699.2.2, align 2, !dbg !278, !tbaa !279
  %B_local.sroa.12.20.vec.insert = insertelement <4 x half> %B_local.sroa.12.18.vec.insert, half %148, i64 2, !dbg !278
  %149 = load half, ptr addrspace(3) %gep699.3.2, align 2, !dbg !278, !tbaa !279
  %B_local.sroa.12.22.vec.insert = insertelement <4 x half> %B_local.sroa.12.20.vec.insert, half %149, i64 3, !dbg !278
  %150 = load half, ptr addrspace(3) %36, align 2, !dbg !278, !tbaa !279
  %B_local.sroa.17.24.vec.insert = insertelement <4 x half> poison, half %150, i64 0, !dbg !278
  %151 = load half, ptr addrspace(3) %gep699.1.3, align 2, !dbg !278, !tbaa !279
  %B_local.sroa.17.26.vec.insert = insertelement <4 x half> %B_local.sroa.17.24.vec.insert, half %151, i64 1, !dbg !278
  %152 = load half, ptr addrspace(3) %gep699.2.3, align 2, !dbg !278, !tbaa !279
  %B_local.sroa.17.28.vec.insert = insertelement <4 x half> %B_local.sroa.17.26.vec.insert, half %152, i64 2, !dbg !278
  %153 = load half, ptr addrspace(3) %gep699.3.3, align 2, !dbg !278, !tbaa !279
  %B_local.sroa.17.30.vec.insert = insertelement <4 x half> %B_local.sroa.17.28.vec.insert, half %153, i64 3, !dbg !278
  %__1.sroa.0.6.vec.insert = insertelement <4 x half> %__1.sroa.0.4.vec.insert, half %137, i64 3, !dbg !260
  %154 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.0.6.vec.insert, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.0.12.vec.insert833), !dbg !280
  %155 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.7.14.vec.insert, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.28.28.vec.insert870), !dbg !280
  %156 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.12.22.vec.insert, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.54.44.vec.insert907), !dbg !280
  %157 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.17.30.vec.insert, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.80.60.vec.insert944), !dbg !280
  br label %if.end432, !dbg !281

if.end432:                                        ; preds = %if.end353.1, %for.body38
  %output_acc.sroa.80.1 = phi <4 x float> [ %output_acc.sroa.80.0, %for.body38 ], [ %157, %if.end353.1 ], !dbg !122
  %output_acc.sroa.54.1 = phi <4 x float> [ %output_acc.sroa.54.0, %for.body38 ], [ %156, %if.end353.1 ], !dbg !122
  %output_acc.sroa.28.1 = phi <4 x float> [ %output_acc.sroa.28.0, %for.body38 ], [ %155, %if.end353.1 ], !dbg !122
  %output_acc.sroa.0.1 = phi <4 x float> [ %output_acc.sroa.0.0, %for.body38 ], [ %154, %if.end353.1 ], !dbg !122
  %scaled_max.sroa.0.2 = phi float [ %scaled_max.sroa.0.0704, %for.body38 ], [ %mul235, %if.end353.1 ], !dbg !122
  %denominator.sroa.0.1 = phi float [ %denominator.sroa.0.0705, %for.body38 ], [ %add276, %if.end353.1 ], !dbg !122
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !282
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !283
  br i1 %exitcond.not, label %for.cond.cleanup36, label %for.body38, !dbg !46, !llvm.loop !284
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v027_codex_power_multiblock_scaled_max_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v027_codex_power_multiblock_scaled_max_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 23, column: 3, scope: !40)
!44 = !DILocation(line: 24, column: 52, scope: !40)
!45 = !DILocation(line: 24, column: 38, scope: !40)
!46 = !DILocation(line: 33, column: 3, scope: !40)
!47 = !DILocation(line: 68, column: 3, scope: !48, inlinedAt: !50)
!48 = distinct !DISubprogram(name: "__barrier_warp", scope: !49, file: !49, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!49 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!50 = distinct !DILocation(line: 192, column: 3, scope: !51, inlinedAt: !52)
!51 = distinct !DISubprogram(name: "__syncwarp", scope: !49, file: !49, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!52 = distinct !DILocation(line: 126, column: 3, scope: !40)
!53 = !DILocation(line: 69, column: 3, scope: !48, inlinedAt: !50)
!54 = !DILocation(line: 70, column: 3, scope: !48, inlinedAt: !50)
!55 = !DILocation(line: 129, column: 24, scope: !40)
!56 = !DILocation(line: 129, column: 40, scope: !40)
!57 = !DILocation(line: 132, column: 3, scope: !40)
!58 = !DILocation(line: 1007, column: 10, scope: !59, inlinedAt: !61)
!59 = distinct !DISubprogram(name: "__float2half_rn", scope: !60, file: !60, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!60 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!61 = distinct !DILocation(line: 1077, column: 18, scope: !62, inlinedAt: !63)
!62 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !60, file: !60, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!63 = distinct !DILocation(line: 1295, column: 23, scope: !64, inlinedAt: !65)
!64 = distinct !DISubprogram(name: "__float22half2_rn", scope: !60, file: !60, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!65 = distinct !DILocation(line: 135, column: 27, scope: !40)
!66 = !{!67, !69}
!67 = distinct !{!67, !68, !"_ZL17__floats2half2_rnff: %agg.result"}
!68 = distinct !{!68, !"_ZL17__floats2half2_rnff"}
!69 = distinct !{!69, !70, !"_ZL17__float22half2_rn6float2: %agg.result"}
!70 = distinct !{!70, !"_ZL17__float22half2_rn6float2"}
!71 = !DILocation(line: 1007, column: 10, scope: !59, inlinedAt: !72)
!72 = distinct !DILocation(line: 1077, column: 38, scope: !62, inlinedAt: !63)
!73 = !DILocation(line: 596, column: 67, scope: !74, inlinedAt: !75)
!74 = distinct !DISubprogram(name: "__half2", scope: !60, file: !60, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!75 = distinct !DILocation(line: 1077, column: 10, scope: !62, inlinedAt: !63)
!76 = !DILocation(line: 596, column: 73, scope: !74, inlinedAt: !75)
!77 = !DILocation(line: 1007, column: 10, scope: !59, inlinedAt: !78)
!78 = distinct !DILocation(line: 1077, column: 18, scope: !62, inlinedAt: !79)
!79 = distinct !DILocation(line: 1295, column: 23, scope: !64, inlinedAt: !80)
!80 = distinct !DILocation(line: 136, column: 27, scope: !40)
!81 = !{!82, !84}
!82 = distinct !{!82, !83, !"_ZL17__floats2half2_rnff: %agg.result"}
!83 = distinct !{!83, !"_ZL17__floats2half2_rnff"}
!84 = distinct !{!84, !85, !"_ZL17__float22half2_rn6float2: %agg.result"}
!85 = distinct !{!85, !"_ZL17__float22half2_rn6float2"}
!86 = !DILocation(line: 1007, column: 10, scope: !59, inlinedAt: !87)
!87 = distinct !DILocation(line: 1077, column: 38, scope: !62, inlinedAt: !79)
!88 = !DILocation(line: 596, column: 67, scope: !74, inlinedAt: !89)
!89 = distinct !DILocation(line: 1077, column: 10, scope: !62, inlinedAt: !79)
!90 = !DILocation(line: 596, column: 73, scope: !74, inlinedAt: !89)
!91 = !DILocation(line: 137, column: 45, scope: !40)
!92 = !DILocation(line: 138, column: 40, scope: !40)
!93 = !DILocation(line: 138, column: 127, scope: !40)
!94 = !DILocation(line: 68, column: 3, scope: !48, inlinedAt: !95)
!95 = distinct !DILocation(line: 192, column: 3, scope: !51, inlinedAt: !96)
!96 = distinct !DILocation(line: 140, column: 3, scope: !40)
!97 = !DILocation(line: 69, column: 3, scope: !48, inlinedAt: !95)
!98 = !DILocation(line: 70, column: 3, scope: !48, inlinedAt: !95)
!99 = !DILocation(line: 142, column: 8, scope: !40)
!100 = !DILocation(line: 142, column: 3, scope: !40)
!101 = !DILocation(line: 143, column: 22, scope: !40)
!102 = !DILocation(line: 143, column: 131, scope: !40)
!103 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!104 = !{i32 2, i32 -1, i32 -1, i32 -1}
!105 = !DILocation(line: 143, column: 168, scope: !40)
!106 = !DILocation(line: 145, column: 1, scope: !40)
!107 = !DILocation(line: 29, column: 38, scope: !40)
!108 = !DILocation(line: 34, column: 24, scope: !40)
!109 = !DILocation(line: 34, column: 106, scope: !40)
!110 = !DILocation(line: 35, column: 12, scope: !40)
!111 = !DILocation(line: 35, column: 28, scope: !40)
!112 = !DILocation(line: 68, column: 3, scope: !48, inlinedAt: !113)
!113 = distinct !DILocation(line: 192, column: 3, scope: !51, inlinedAt: !114)
!114 = distinct !DILocation(line: 36, column: 7, scope: !40)
!115 = !DILocation(line: 69, column: 3, scope: !48, inlinedAt: !113)
!116 = !DILocation(line: 70, column: 3, scope: !48, inlinedAt: !113)
!117 = !DILocation(line: 38, column: 7, scope: !40)
!118 = !DILocation(line: 41, column: 71, scope: !40)
!119 = !DILocation(line: 41, column: 13, scope: !40)
!120 = !DILocation(line: 42, column: 19, scope: !40)
!121 = !DILocation(line: 43, column: 9, scope: !40)
!122 = !DILocation(line: 0, scope: !40)
!123 = !DILocation(line: 46, column: 339, scope: !40)
!124 = !DILocation(line: 68, column: 3, scope: !48, inlinedAt: !125)
!125 = distinct !DILocation(line: 192, column: 3, scope: !51, inlinedAt: !126)
!126 = distinct !DILocation(line: 48, column: 7, scope: !40)
!127 = !DILocation(line: 69, column: 3, scope: !48, inlinedAt: !125)
!128 = !DILocation(line: 70, column: 3, scope: !48, inlinedAt: !125)
!129 = !DILocation(line: 52, column: 32, scope: !40)
!130 = !DILocation(line: 54, column: 37, scope: !40)
!131 = !{i32 -1, i32 3, i32 -1}
!132 = !DILocation(line: 62, column: 70, scope: !40)
!133 = !DILocation(line: 62, column: 13, scope: !40)
!134 = !DILocation(line: 62, column: 63, scope: !40)
!135 = !DILocation(line: 351, column: 10, scope: !136, inlinedAt: !138)
!136 = distinct !DISubprogram(name: "max", scope: !137, file: !137, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!137 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!138 = distinct !DILocation(line: 74, column: 25, scope: !40)
!139 = !DILocation(line: 1018, column: 9, scope: !140, inlinedAt: !141)
!140 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !49, file: !49, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!141 = distinct !DILocation(line: 338, column: 10, scope: !142, inlinedAt: !144)
!142 = distinct !DISubprogram(name: "shfl_xor_sync<float>", scope: !143, file: !143, line: 337, type: !7, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!143 = !DIFile(filename: "src/tl_templates/maca/common.h", directory: "/root/tilelang-metax")
!144 = distinct !DILocation(line: 95, column: 24, scope: !145, inlinedAt: !147)
!145 = distinct !DISubprogram(name: "run<float>", scope: !146, file: !146, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!146 = !DIFile(filename: "src/tl_templates/maca/reduce.h", directory: "/root/tilelang-metax")
!147 = distinct !DILocation(line: 76, column: 23, scope: !40)
!148 = !DILocation(line: 171, column: 37, scope: !149, inlinedAt: !150)
!149 = distinct !DISubprogram(name: "__lane_id", scope: !49, file: !49, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!150 = distinct !DILocation(line: 990, column: 14, scope: !151, inlinedAt: !152)
!151 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !49, file: !49, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!152 = distinct !DILocation(line: 1019, column: 11, scope: !140, inlinedAt: !141)
!153 = !DILocation(line: 171, column: 10, scope: !149, inlinedAt: !150)
!154 = !DILocation(line: 991, column: 20, scope: !151, inlinedAt: !152)
!155 = !DILocation(line: 992, column: 36, scope: !151, inlinedAt: !152)
!156 = !DILocation(line: 992, column: 17, scope: !151, inlinedAt: !152)
!157 = !DILocation(line: 992, column: 11, scope: !151, inlinedAt: !152)
!158 = !DILocation(line: 993, column: 43, scope: !151, inlinedAt: !152)
!159 = !DILocation(line: 993, column: 10, scope: !151, inlinedAt: !152)
!160 = !DILocation(line: 1020, column: 14, scope: !140, inlinedAt: !141)
!161 = !DILocation(line: 306, column: 10, scope: !162, inlinedAt: !163)
!162 = distinct !DISubprogram(name: "fmaxf", scope: !137, file: !137, line: 305, type: !7, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!163 = distinct !DILocation(line: 633, column: 10, scope: !164, inlinedAt: !166)
!164 = distinct !DISubprogram(name: "fast_max<float>", scope: !165, file: !165, line: 632, type: !7, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!165 = !DIFile(filename: "/opt/maca/include/mctlass/fast_math.h", directory: "")
!166 = distinct !DILocation(line: 31, column: 12, scope: !167, inlinedAt: !168)
!167 = distinct !DISubprogram(name: "operator()<float>", scope: !146, file: !146, line: 30, type: !7, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!168 = distinct !DILocation(line: 95, column: 11, scope: !145, inlinedAt: !147)
!169 = !DILocation(line: 1018, column: 9, scope: !140, inlinedAt: !170)
!170 = distinct !DILocation(line: 338, column: 10, scope: !142, inlinedAt: !171)
!171 = distinct !DILocation(line: 95, column: 24, scope: !172, inlinedAt: !173)
!172 = distinct !DISubprogram(name: "run<float>", scope: !146, file: !146, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!173 = distinct !DILocation(line: 100, column: 14, scope: !145, inlinedAt: !147)
!174 = !DILocation(line: 171, column: 37, scope: !149, inlinedAt: !175)
!175 = distinct !DILocation(line: 990, column: 14, scope: !151, inlinedAt: !176)
!176 = distinct !DILocation(line: 1019, column: 11, scope: !140, inlinedAt: !170)
!177 = !DILocation(line: 171, column: 10, scope: !149, inlinedAt: !175)
!178 = !DILocation(line: 991, column: 20, scope: !151, inlinedAt: !176)
!179 = !DILocation(line: 992, column: 36, scope: !151, inlinedAt: !176)
!180 = !DILocation(line: 992, column: 17, scope: !151, inlinedAt: !176)
!181 = !DILocation(line: 992, column: 11, scope: !151, inlinedAt: !176)
!182 = !DILocation(line: 993, column: 43, scope: !151, inlinedAt: !176)
!183 = !DILocation(line: 993, column: 10, scope: !151, inlinedAt: !176)
!184 = !DILocation(line: 1020, column: 14, scope: !140, inlinedAt: !170)
!185 = !DILocation(line: 306, column: 10, scope: !162, inlinedAt: !186)
!186 = distinct !DILocation(line: 633, column: 10, scope: !164, inlinedAt: !187)
!187 = distinct !DILocation(line: 31, column: 12, scope: !167, inlinedAt: !188)
!188 = distinct !DILocation(line: 95, column: 11, scope: !172, inlinedAt: !173)
!189 = !DILocation(line: 77, column: 38, scope: !40)
!190 = !DILocation(line: 78, column: 50, scope: !40)
!191 = !DILocation(line: 285, column: 49, scope: !192, inlinedAt: !193)
!192 = distinct !DISubprogram(name: "exp2f", scope: !137, file: !137, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!193 = distinct !DILocation(line: 78, column: 20, scope: !40)
!194 = !DILocation(line: 81, column: 43, scope: !40)
!195 = !DILocation(line: 81, column: 84, scope: !40)
!196 = !DILocation(line: 285, column: 49, scope: !192, inlinedAt: !197)
!197 = distinct !DILocation(line: 81, column: 23, scope: !40)
!198 = !DILocation(line: 86, column: 38, scope: !40)
!199 = !DILocation(line: 1018, column: 9, scope: !140, inlinedAt: !200)
!200 = distinct !DILocation(line: 338, column: 10, scope: !142, inlinedAt: !201)
!201 = distinct !DILocation(line: 95, column: 24, scope: !202, inlinedAt: !203)
!202 = distinct !DISubprogram(name: "run<float>", scope: !146, file: !146, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!203 = distinct !DILocation(line: 88, column: 22, scope: !40)
!204 = !DILocation(line: 171, column: 37, scope: !149, inlinedAt: !205)
!205 = distinct !DILocation(line: 990, column: 14, scope: !151, inlinedAt: !206)
!206 = distinct !DILocation(line: 1019, column: 11, scope: !140, inlinedAt: !200)
!207 = !DILocation(line: 171, column: 10, scope: !149, inlinedAt: !205)
!208 = !DILocation(line: 991, column: 20, scope: !151, inlinedAt: !206)
!209 = !DILocation(line: 992, column: 36, scope: !151, inlinedAt: !206)
!210 = !DILocation(line: 992, column: 17, scope: !151, inlinedAt: !206)
!211 = !DILocation(line: 992, column: 11, scope: !151, inlinedAt: !206)
!212 = !DILocation(line: 993, column: 43, scope: !151, inlinedAt: !206)
!213 = !DILocation(line: 993, column: 10, scope: !151, inlinedAt: !206)
!214 = !DILocation(line: 1020, column: 14, scope: !140, inlinedAt: !200)
!215 = !DILocation(line: 25, column: 14, scope: !216, inlinedAt: !217)
!216 = distinct !DISubprogram(name: "operator()<float>", scope: !146, file: !146, line: 24, type: !7, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!217 = distinct !DILocation(line: 95, column: 11, scope: !202, inlinedAt: !203)
!218 = !DILocation(line: 1018, column: 9, scope: !140, inlinedAt: !219)
!219 = distinct !DILocation(line: 338, column: 10, scope: !142, inlinedAt: !220)
!220 = distinct !DILocation(line: 95, column: 24, scope: !221, inlinedAt: !222)
!221 = distinct !DISubprogram(name: "run<float>", scope: !146, file: !146, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!222 = distinct !DILocation(line: 100, column: 14, scope: !202, inlinedAt: !203)
!223 = !DILocation(line: 171, column: 37, scope: !149, inlinedAt: !224)
!224 = distinct !DILocation(line: 990, column: 14, scope: !151, inlinedAt: !225)
!225 = distinct !DILocation(line: 1019, column: 11, scope: !140, inlinedAt: !219)
!226 = !DILocation(line: 171, column: 10, scope: !149, inlinedAt: !224)
!227 = !DILocation(line: 991, column: 20, scope: !151, inlinedAt: !225)
!228 = !DILocation(line: 992, column: 36, scope: !151, inlinedAt: !225)
!229 = !DILocation(line: 992, column: 17, scope: !151, inlinedAt: !225)
!230 = !DILocation(line: 992, column: 11, scope: !151, inlinedAt: !225)
!231 = !DILocation(line: 993, column: 43, scope: !151, inlinedAt: !225)
!232 = !DILocation(line: 993, column: 10, scope: !151, inlinedAt: !225)
!233 = !DILocation(line: 1020, column: 14, scope: !140, inlinedAt: !219)
!234 = !DILocation(line: 89, column: 41, scope: !40)
!235 = !DILocation(line: 1007, column: 10, scope: !59, inlinedAt: !236)
!236 = distinct !DILocation(line: 1077, column: 18, scope: !62, inlinedAt: !237)
!237 = distinct !DILocation(line: 1295, column: 23, scope: !64, inlinedAt: !238)
!238 = distinct !DILocation(line: 92, column: 29, scope: !40)
!239 = !{!240, !242}
!240 = distinct !{!240, !241, !"_ZL17__floats2half2_rnff: %agg.result"}
!241 = distinct !{!241, !"_ZL17__floats2half2_rnff"}
!242 = distinct !{!242, !243, !"_ZL17__float22half2_rn6float2: %agg.result"}
!243 = distinct !{!243, !"_ZL17__float22half2_rn6float2"}
!244 = !DILocation(line: 1007, column: 10, scope: !59, inlinedAt: !245)
!245 = distinct !DILocation(line: 1077, column: 38, scope: !62, inlinedAt: !237)
!246 = !DILocation(line: 593, column: 26, scope: !247, inlinedAt: !248)
!247 = distinct !DISubprogram(name: "operator=", scope: !60, file: !60, line: 592, type: !7, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!248 = distinct !DILocation(line: 92, column: 27, scope: !40)
!249 = !DILocation(line: 1007, column: 10, scope: !59, inlinedAt: !250)
!250 = distinct !DILocation(line: 1077, column: 18, scope: !62, inlinedAt: !251)
!251 = distinct !DILocation(line: 1295, column: 23, scope: !64, inlinedAt: !252)
!252 = distinct !DILocation(line: 93, column: 29, scope: !40)
!253 = !{!254, !256}
!254 = distinct !{!254, !255, !"_ZL17__floats2half2_rnff: %agg.result"}
!255 = distinct !{!255, !"_ZL17__floats2half2_rnff"}
!256 = distinct !{!256, !257, !"_ZL17__float22half2_rn6float2: %agg.result"}
!257 = distinct !{!257, !"_ZL17__float22half2_rn6float2"}
!258 = !DILocation(line: 1007, column: 10, scope: !59, inlinedAt: !259)
!259 = distinct !DILocation(line: 1077, column: 38, scope: !62, inlinedAt: !251)
!260 = !DILocation(line: 593, column: 26, scope: !247, inlinedAt: !261)
!261 = distinct !DILocation(line: 93, column: 27, scope: !40)
!262 = !DILocation(line: 97, column: 28, scope: !40)
!263 = !DILocation(line: 97, column: 44, scope: !40)
!264 = !DILocation(line: 97, column: 25, scope: !40)
!265 = !DILocation(line: 25, column: 14, scope: !216, inlinedAt: !266)
!266 = distinct !DILocation(line: 95, column: 11, scope: !221, inlinedAt: !222)
!267 = !DILocation(line: 100, column: 7, scope: !40)
!268 = !DILocation(line: 103, column: 13, scope: !40)
!269 = !DILocation(line: 104, column: 21, scope: !40)
!270 = !DILocation(line: 105, column: 9, scope: !40)
!271 = !DILocation(line: 108, column: 190, scope: !40)
!272 = !DILocation(line: 89, column: 55, scope: !40)
!273 = !DILocation(line: 68, column: 3, scope: !48, inlinedAt: !274)
!274 = distinct !DILocation(line: 192, column: 3, scope: !51, inlinedAt: !275)
!275 = distinct !DILocation(line: 110, column: 7, scope: !40)
!276 = !DILocation(line: 69, column: 3, scope: !48, inlinedAt: !274)
!277 = !DILocation(line: 70, column: 3, scope: !48, inlinedAt: !274)
!278 = !DILocation(line: 114, column: 41, scope: !40)
!279 = !{!26, !26, i64 0}
!280 = !DILocation(line: 119, column: 43, scope: !40)
!281 = !DILocation(line: 124, column: 5, scope: !40)
!282 = !DILocation(line: 33, column: 40, scope: !40)
!283 = !DILocation(line: 33, column: 35, scope: !40)
!284 = distinct !{!284, !46, !285, !32}
!285 = !DILocation(line: 125, column: 3, scope: !40)
