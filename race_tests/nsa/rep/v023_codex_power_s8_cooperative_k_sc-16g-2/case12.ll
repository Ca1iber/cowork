; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v023_codex_power_s8_cooperative_k_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v023_codex_power_s8_cooperative_k_sc-16g-2/codegen/case12.device.cpp"
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
  %add104629 = and i32 %12, 32
  %shr100630 = add nuw nsw i32 %add104629, %2
  %mul106 = and i32 %shr100630, 32
  %add114631 = and i32 %12, 16
  %and109632 = add nuw nsw i32 %add114631, %2
  %mul116 = and i32 %and109632, 16
  %and119634 = mul nuw nsw i32 %2, 9
  %mul125 = and i32 %and119634, 8
  %conv = zext nneg i32 %0 to i64
  %mul62 = shl nuw nsw i64 %conv, 16
  %mul71 = zext nneg i32 %12 to i64
  %invariant.gep747 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul71, !dbg !46
  %and158 = lshr i32 %2, 1
  %shr166 = lshr i32 %2, 5
  %add169 = add nuw nsw i32 %shr166, %2
  %and170 = shl nuw nsw i32 %add169, 3
  %mul171 = and i32 %and170, 8
  %mul176 = and i32 %3, 4
  %13 = or disjoint i32 %mul176, %mul171
  %add164 = or disjoint i32 %13, %mul9
  %and378 = and i32 %2, 7
  %14 = lshr i32 %2, 4
  %mul382 = and i32 %14, 62
  %invariant.gep732 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul97
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %mul71, !dbg !46
  %15 = shl nuw nsw i32 %2, 4
  %mul408 = and i32 %15, 16128
  %shr414 = and i32 %2, 8
  %mul418 = and i32 %2, 1008
  %add410 = or disjoint i32 %mul408, %and378
  %16 = zext nneg i32 %add43 to i64, !dbg !46
  %invariant.gep998 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %16, !dbg !46
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
  %and154 = shl nuw nsw i32 %3, 5
  %mul155 = and i32 %and154, 32
  %and162 = shl nuw nsw i32 %and158, 4
  %mul163 = and i32 %and162, 16
  %add172 = or disjoint i32 %add164, %mul163
  %add177 = or disjoint i32 %add172, %mul155
  %add.ptr179 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add177
  %add161.1 = shl nuw nsw i32 %and158, 4
  %23 = and i32 %add161.1, 16
  %24 = or disjoint i32 %23, %add164
  %25 = or disjoint i32 %24, %mul155
  %add177.1 = xor i32 %25, 16
  %add.ptr179.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add177.1
  %add153.2 = shl nuw nsw i32 %3, 5
  %26 = and i32 %add153.2, 32
  %mul155.2 = xor i32 %26, 32
  %add161.2 = shl nuw nsw i32 %and158, 4
  %mul163.2 = and i32 %add161.2, 16
  %add172.2 = or disjoint i32 %add164, %mul163.2
  %add177.2 = or disjoint i32 %add172.2, %mul155.2
  %add.ptr179.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add177.2
  %add161.3 = shl nuw nsw i32 %and158, 4
  %27 = and i32 %add161.3, 16
  %28 = or disjoint i32 %27, %add164
  %29 = or disjoint i32 %28, %mul155.2
  %add177.3 = xor i32 %29, 16
  %add.ptr179.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add177.3
  %xor = xor i32 %mul382, %and378
  %.idx718 = shl nuw nsw i32 %xor, 4
  %30 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep732, i32 %.idx718
  %add.ptr388 = getelementptr inbounds i8, ptr addrspace(3) %30, i32 2048
  %condval_2.sroa.5.0.add.ptr388.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %30, i32 2052
  %condval_2.sroa.6.0.add.ptr388.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %30, i32 2056
  %condval_2.sroa.7.0.add.ptr388.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %30, i32 2060
  %add339.1 = or disjoint i64 %mul62, 512
  %narrow997 = add nuw nsw i32 %mul382, 4
  %xor.1 = xor i32 %narrow997, %and378
  %gep.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep732, i32 1024
  %.idx718.1 = shl nuw nsw i32 %xor.1, 4
  %31 = getelementptr inbounds i8, ptr addrspace(3) %gep.1, i32 %.idx718.1
  %add.ptr388.1 = getelementptr inbounds i8, ptr addrspace(3) %31, i32 2048
  %condval_2.sroa.5.0.add.ptr388.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %31, i32 2052
  %condval_2.sroa.6.0.add.ptr388.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %31, i32 2056
  %condval_2.sroa.7.0.add.ptr388.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %31, i32 2060
  %xor419 = and i32 %2, 1016
  %32 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 2048), i32 %add410
  %33 = getelementptr inbounds %struct.__half, ptr addrspace(3) %32, i32 %xor419
  %gep738.1 = getelementptr inbounds i8, ptr addrspace(3) %33, i32 128
  %gep738.2 = getelementptr inbounds i8, ptr addrspace(3) %33, i32 256
  %gep738.3 = getelementptr inbounds i8, ptr addrspace(3) %33, i32 384
  %add415.1 = or disjoint i32 %shr414, 16
  %xor419.1 = xor i32 %add415.1, %mul418
  %34 = getelementptr inbounds %struct.__half, ptr addrspace(3) %32, i32 %xor419.1
  %gep738.1.1 = getelementptr inbounds i8, ptr addrspace(3) %34, i32 128
  %gep738.2.1 = getelementptr inbounds i8, ptr addrspace(3) %34, i32 256
  %gep738.3.1 = getelementptr inbounds i8, ptr addrspace(3) %34, i32 384
  %add415.2 = or disjoint i32 %shr414, 32
  %xor419.2 = xor i32 %add415.2, %mul418
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(3) %32, i32 %xor419.2
  %gep738.1.2 = getelementptr inbounds i8, ptr addrspace(3) %35, i32 128
  %gep738.2.2 = getelementptr inbounds i8, ptr addrspace(3) %35, i32 256
  %gep738.3.2 = getelementptr inbounds i8, ptr addrspace(3) %35, i32 384
  %add415.3 = or disjoint i32 %shr414, 48
  %xor419.3 = xor i32 %add415.3, %mul418
  %36 = getelementptr inbounds %struct.__half, ptr addrspace(3) %32, i32 %xor419.3
  %gep738.1.3 = getelementptr inbounds i8, ptr addrspace(3) %36, i32 128
  %gep738.2.3 = getelementptr inbounds i8, ptr addrspace(3) %36, i32 256
  %gep738.3.3 = getelementptr inbounds i8, ptr addrspace(3) %36, i32 384
  br label %for.body38, !dbg !46

for.cond460.preheader:                            ; preds = %if.end456
  %output_acc.sroa.0.0.vec.extract849 = extractelement <4 x float> %output_acc.sroa.0.2, i64 0, !dbg !47
  %div = fdiv contract float %output_acc.sroa.0.0.vec.extract849, %denominator.sroa.0.1, !dbg !48
  %output_acc.sroa.0.4.vec.extract858 = extractelement <4 x float> %output_acc.sroa.0.2, i64 1, !dbg !47
  %div.1 = fdiv contract float %output_acc.sroa.0.4.vec.extract858, %denominator.sroa.0.1, !dbg !48
  %output_acc.sroa.0.8.vec.extract867 = extractelement <4 x float> %output_acc.sroa.0.2, i64 2, !dbg !47
  %div.2 = fdiv contract float %output_acc.sroa.0.8.vec.extract867, %denominator.sroa.0.1, !dbg !48
  %output_acc.sroa.0.12.vec.extract876 = extractelement <4 x float> %output_acc.sroa.0.2, i64 3, !dbg !47
  %div.3 = fdiv contract float %output_acc.sroa.0.12.vec.extract876, %denominator.sroa.0.1, !dbg !48
  %output_acc.sroa.28.16.vec.extract886 = extractelement <4 x float> %output_acc.sroa.28.2, i64 0, !dbg !47
  %div.4 = fdiv contract float %output_acc.sroa.28.16.vec.extract886, %denominator.sroa.0.1, !dbg !48
  %output_acc.sroa.28.20.vec.extract895 = extractelement <4 x float> %output_acc.sroa.28.2, i64 1, !dbg !47
  %div.5 = fdiv contract float %output_acc.sroa.28.20.vec.extract895, %denominator.sroa.0.1, !dbg !48
  %output_acc.sroa.28.24.vec.extract904 = extractelement <4 x float> %output_acc.sroa.28.2, i64 2, !dbg !47
  %div.6 = fdiv contract float %output_acc.sroa.28.24.vec.extract904, %denominator.sroa.0.1, !dbg !48
  %output_acc.sroa.28.28.vec.extract913 = extractelement <4 x float> %output_acc.sroa.28.2, i64 3, !dbg !47
  %div.7 = fdiv contract float %output_acc.sroa.28.28.vec.extract913, %denominator.sroa.0.1, !dbg !48
  %output_acc.sroa.54.32.vec.extract923 = extractelement <4 x float> %output_acc.sroa.54.2, i64 0, !dbg !47
  %div.8 = fdiv contract float %output_acc.sroa.54.32.vec.extract923, %denominator.sroa.0.1, !dbg !48
  %output_acc.sroa.54.36.vec.extract932 = extractelement <4 x float> %output_acc.sroa.54.2, i64 1, !dbg !47
  %div.9 = fdiv contract float %output_acc.sroa.54.36.vec.extract932, %denominator.sroa.0.1, !dbg !48
  %output_acc.sroa.54.40.vec.extract941 = extractelement <4 x float> %output_acc.sroa.54.2, i64 2, !dbg !47
  %div.10 = fdiv contract float %output_acc.sroa.54.40.vec.extract941, %denominator.sroa.0.1, !dbg !48
  %output_acc.sroa.54.44.vec.extract950 = extractelement <4 x float> %output_acc.sroa.54.2, i64 3, !dbg !47
  %div.11 = fdiv contract float %output_acc.sroa.54.44.vec.extract950, %denominator.sroa.0.1, !dbg !48
  %output_acc.sroa.80.48.vec.extract960 = extractelement <4 x float> %output_acc.sroa.80.2, i64 0, !dbg !47
  %div.12 = fdiv contract float %output_acc.sroa.80.48.vec.extract960, %denominator.sroa.0.1, !dbg !48
  %output_acc.sroa.80.52.vec.extract969 = extractelement <4 x float> %output_acc.sroa.80.2, i64 1, !dbg !47
  %div.13 = fdiv contract float %output_acc.sroa.80.52.vec.extract969, %denominator.sroa.0.1, !dbg !48
  %output_acc.sroa.80.56.vec.extract978 = extractelement <4 x float> %output_acc.sroa.80.2, i64 2, !dbg !47
  %div.14 = fdiv contract float %output_acc.sroa.80.56.vec.extract978, %denominator.sroa.0.1, !dbg !48
  %output_acc.sroa.80.60.vec.extract987 = extractelement <4 x float> %output_acc.sroa.80.2, i64 3, !dbg !47
  %div.15 = fdiv contract float %output_acc.sroa.80.60.vec.extract987, %denominator.sroa.0.1, !dbg !48
  %invariant.gep751 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul14, !dbg !49
  %37 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !50
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !50, !noalias !58
  %38 = fptrunc float %div to half, !dbg !50
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %37), !dbg !50, !noalias !58
  %39 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !63
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !63, !noalias !58
  %40 = fptrunc float %div.1 to half, !dbg !63
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %39), !dbg !63, !noalias !58
  %41 = bitcast half %38 to i16, !dbg !65
  %42 = bitcast half %40 to i16, !dbg !68
  %43 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !69
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !69, !noalias !73
  %44 = fptrunc float %div.2 to half, !dbg !69
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %43), !dbg !69, !noalias !73
  %45 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !78
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !78, !noalias !73
  %46 = fptrunc float %div.3 to half, !dbg !78
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %45), !dbg !78, !noalias !73
  %47 = bitcast half %44 to i16, !dbg !80
  %48 = bitcast half %46 to i16, !dbg !82
  %__2.sroa.6.0.insert.ext = zext i16 %48 to i64, !dbg !83
  %__2.sroa.6.0.insert.shift = shl nuw i64 %__2.sroa.6.0.insert.ext, 48, !dbg !83
  %__2.sroa.5.0.insert.ext = zext i16 %47 to i64, !dbg !83
  %__2.sroa.5.0.insert.shift = shl nuw nsw i64 %__2.sroa.5.0.insert.ext, 32, !dbg !83
  %__2.sroa.5.0.insert.insert = or disjoint i64 %__2.sroa.6.0.insert.shift, %__2.sroa.5.0.insert.shift, !dbg !83
  %__2.sroa.4.0.insert.ext = zext i16 %42 to i64, !dbg !83
  %__2.sroa.4.0.insert.shift = shl nuw nsw i64 %__2.sroa.4.0.insert.ext, 16, !dbg !83
  %__2.sroa.4.0.insert.insert = or disjoint i64 %__2.sroa.5.0.insert.insert, %__2.sroa.4.0.insert.shift, !dbg !83
  %__2.sroa.0.0.insert.ext = zext i16 %41 to i64, !dbg !83
  %__2.sroa.0.0.insert.insert = or disjoint i64 %__2.sroa.4.0.insert.insert, %__2.sroa.0.0.insert.ext, !dbg !83
  %gep752 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep751, i32 %mul9, !dbg !84
  store i64 %__2.sroa.0.0.insert.insert, ptr addrspace(3) %gep752, align 8, !dbg !85
  %49 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !50
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !50, !noalias !58
  %50 = fptrunc float %div.4 to half, !dbg !50
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %49), !dbg !50, !noalias !58
  %51 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !63
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !63, !noalias !58
  %52 = fptrunc float %div.5 to half, !dbg !63
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %51), !dbg !63, !noalias !58
  %53 = bitcast half %50 to i16, !dbg !65
  %54 = bitcast half %52 to i16, !dbg !68
  %55 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !69
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !69, !noalias !73
  %56 = fptrunc float %div.6 to half, !dbg !69
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %55), !dbg !69, !noalias !73
  %57 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !78
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !78, !noalias !73
  %58 = fptrunc float %div.7 to half, !dbg !78
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %57), !dbg !78, !noalias !73
  %59 = bitcast half %56 to i16, !dbg !80
  %60 = bitcast half %58 to i16, !dbg !82
  %__2.sroa.6.0.insert.ext.1 = zext i16 %60 to i64, !dbg !83
  %__2.sroa.6.0.insert.shift.1 = shl nuw i64 %__2.sroa.6.0.insert.ext.1, 48, !dbg !83
  %__2.sroa.5.0.insert.ext.1 = zext i16 %59 to i64, !dbg !83
  %__2.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.1, 32, !dbg !83
  %__2.sroa.5.0.insert.insert.1 = or disjoint i64 %__2.sroa.6.0.insert.shift.1, %__2.sroa.5.0.insert.shift.1, !dbg !83
  %__2.sroa.4.0.insert.ext.1 = zext i16 %54 to i64, !dbg !83
  %__2.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.1, 16, !dbg !83
  %__2.sroa.4.0.insert.insert.1 = or disjoint i64 %__2.sroa.5.0.insert.insert.1, %__2.sroa.4.0.insert.shift.1, !dbg !83
  %__2.sroa.0.0.insert.ext.1 = zext i16 %53 to i64, !dbg !83
  %__2.sroa.0.0.insert.insert.1 = or disjoint i64 %__2.sroa.4.0.insert.insert.1, %__2.sroa.0.0.insert.ext.1, !dbg !83
  %61 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep751, i32 32, !dbg !84
  %gep752.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %61, i32 %mul9, !dbg !84
  store i64 %__2.sroa.0.0.insert.insert.1, ptr addrspace(3) %gep752.1, align 8, !dbg !85
  %62 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !50
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !50, !noalias !58
  %63 = fptrunc float %div.8 to half, !dbg !50
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %62), !dbg !50, !noalias !58
  %64 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !63
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !63, !noalias !58
  %65 = fptrunc float %div.9 to half, !dbg !63
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %64), !dbg !63, !noalias !58
  %66 = bitcast half %63 to i16, !dbg !65
  %67 = bitcast half %65 to i16, !dbg !68
  %68 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !69
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !69, !noalias !73
  %69 = fptrunc float %div.10 to half, !dbg !69
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %68), !dbg !69, !noalias !73
  %70 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !78
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !78, !noalias !73
  %71 = fptrunc float %div.11 to half, !dbg !78
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %70), !dbg !78, !noalias !73
  %72 = bitcast half %69 to i16, !dbg !80
  %73 = bitcast half %71 to i16, !dbg !82
  %__2.sroa.6.0.insert.ext.2 = zext i16 %73 to i64, !dbg !83
  %__2.sroa.6.0.insert.shift.2 = shl nuw i64 %__2.sroa.6.0.insert.ext.2, 48, !dbg !83
  %__2.sroa.5.0.insert.ext.2 = zext i16 %72 to i64, !dbg !83
  %__2.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.2, 32, !dbg !83
  %__2.sroa.5.0.insert.insert.2 = or disjoint i64 %__2.sroa.6.0.insert.shift.2, %__2.sroa.5.0.insert.shift.2, !dbg !83
  %__2.sroa.4.0.insert.ext.2 = zext i16 %67 to i64, !dbg !83
  %__2.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.2, 16, !dbg !83
  %__2.sroa.4.0.insert.insert.2 = or disjoint i64 %__2.sroa.5.0.insert.insert.2, %__2.sroa.4.0.insert.shift.2, !dbg !83
  %__2.sroa.0.0.insert.ext.2 = zext i16 %66 to i64, !dbg !83
  %__2.sroa.0.0.insert.insert.2 = or disjoint i64 %__2.sroa.4.0.insert.insert.2, %__2.sroa.0.0.insert.ext.2, !dbg !83
  %74 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep751, i32 64, !dbg !84
  %gep752.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) %74, i32 %mul9, !dbg !84
  store i64 %__2.sroa.0.0.insert.insert.2, ptr addrspace(3) %gep752.2, align 8, !dbg !85
  %75 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !50
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !50, !noalias !58
  %76 = fptrunc float %div.12 to half, !dbg !50
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %75), !dbg !50, !noalias !58
  %77 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !63
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !63, !noalias !58
  %78 = fptrunc float %div.13 to half, !dbg !63
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %77), !dbg !63, !noalias !58
  %79 = bitcast half %76 to i16, !dbg !65
  %80 = bitcast half %78 to i16, !dbg !68
  %81 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !69
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !69, !noalias !73
  %82 = fptrunc float %div.14 to half, !dbg !69
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %81), !dbg !69, !noalias !73
  %83 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !78
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !78, !noalias !73
  %84 = fptrunc float %div.15 to half, !dbg !78
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %83), !dbg !78, !noalias !73
  %85 = bitcast half %82 to i16, !dbg !80
  %86 = bitcast half %84 to i16, !dbg !82
  %__2.sroa.6.0.insert.ext.3 = zext i16 %86 to i64, !dbg !83
  %__2.sroa.6.0.insert.shift.3 = shl nuw i64 %__2.sroa.6.0.insert.ext.3, 48, !dbg !83
  %__2.sroa.5.0.insert.ext.3 = zext i16 %85 to i64, !dbg !83
  %__2.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.3, 32, !dbg !83
  %__2.sroa.5.0.insert.insert.3 = or disjoint i64 %__2.sroa.6.0.insert.shift.3, %__2.sroa.5.0.insert.shift.3, !dbg !83
  %__2.sroa.4.0.insert.ext.3 = zext i16 %80 to i64, !dbg !83
  %__2.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.3, 16, !dbg !83
  %__2.sroa.4.0.insert.insert.3 = or disjoint i64 %__2.sroa.5.0.insert.insert.3, %__2.sroa.4.0.insert.shift.3, !dbg !83
  %__2.sroa.0.0.insert.ext.3 = zext i16 %79 to i64, !dbg !83
  %__2.sroa.0.0.insert.insert.3 = or disjoint i64 %__2.sroa.4.0.insert.insert.3, %__2.sroa.0.0.insert.ext.3, !dbg !83
  %87 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep751, i32 96, !dbg !84
  %gep752.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) %87, i32 %mul9, !dbg !84
  store i64 %__2.sroa.0.0.insert.insert.3, ptr addrspace(3) %gep752.3, align 8, !dbg !85
  fence syncscope("block") release, !dbg !86
  tail call void @llvm.mxc.barrier(), !dbg !92
  fence syncscope("block") acquire, !dbg !93
  %invariant.gep754 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %12, !dbg !94
  %add524 = add nuw nsw i32 %add, %12
  %88 = zext nneg i32 %add524 to i64, !dbg !95
  %add.ptr529 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %88, !dbg !96
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr529, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep754, i64 16, i1 false), !dbg !97, !tbaa.struct !98, !call_argsrelate !99
  %gep755.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep754, i32 1024, !dbg !100
  %89 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %88, !dbg !96
  %add.ptr529.1 = getelementptr inbounds i8, ptr addrspace(1) %89, i64 1024, !dbg !96
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr529.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep755.1, i64 16, i1 false), !dbg !97, !tbaa.struct !98, !call_argsrelate !99
  ret void, !dbg !101

for.body38:                                       ; preds = %entry, %if.end456
  %output_acc.sroa.80.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.80.2, %if.end456 ], !dbg !102
  %output_acc.sroa.54.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.54.2, %if.end456 ], !dbg !102
  %output_acc.sroa.28.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.28.2, %if.end456 ], !dbg !102
  %output_acc.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.0.2, %if.end456 ], !dbg !102
  %scores.sroa.0.0 = phi <4 x float> [ undef, %entry ], [ %scores.sroa.0.3, %if.end456 ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end456 ]
  %denominator.sroa.0.0746 = phi float [ 0.000000e+00, %entry ], [ %denominator.sroa.0.1, %if.end456 ]
  %block_max.sroa.0.0745 = phi float [ 0xFFF0000000000000, %entry ], [ %block_max.sroa.0.3, %if.end456 ]
  %previous_max.sroa.0.0744 = phi float [ undef, %entry ], [ %previous_max.sroa.0.1, %if.end456 ]
  %scores_half.sroa.0.0743 = phi <4 x half> [ undef, %entry ], [ %scores_half.sroa.0.1, %if.end456 ]
  %gep = getelementptr inbounds i32, ptr addrspace(1) %invariant.gep998, i64 %indvars.iv, !dbg !103
  %90 = load i32, ptr addrspace(1) %gep, align 4, !dbg !103, !tbaa !30
  %mul46 = shl nsw i32 %90, 4, !dbg !104
  %cmp47 = icmp slt i32 %90, 0, !dbg !105
  %cmp49.not = icmp sgt i32 %mul46, %1
  %or.cond = select i1 %cmp47, i1 true, i1 %cmp49.not, !dbg !106
  br i1 %or.cond, label %if.end136, label %for.cond50.preheader, !dbg !106

for.cond50.preheader:                             ; preds = %for.body38
  %add56 = add nuw nsw i32 %mul46, %shr55
  %conv66 = zext nneg i32 %mul46 to i64
  %.idx628 = shl nuw nsw i64 %conv66, 7
  %gep748 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep747, i64 %.idx628, !dbg !107
  %cmp59 = icmp ult i32 %add56, 1024, !dbg !108
  br i1 %cmp59, label %if.then60, label %if.end, !dbg !109

if.then60:                                        ; preds = %for.cond50.preheader
  %gep723 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep748, i64 %mul62
  %condval.sroa.7.0.add.ptr73.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep723, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep723, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep723, i64 4
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep723, align 16, !dbg !110, !tbaa !30
  %condval.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr73.sroa_idx, align 4, !dbg !110, !tbaa !30
  %condval.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr73.sroa_idx, align 8, !dbg !110, !tbaa !30
  %condval.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr73.sroa_idx, align 4, !dbg !110, !tbaa !30
  br label %if.end, !dbg !111

if.end:                                           ; preds = %for.cond50.preheader, %if.then60
  %condval.sroa.0.0 = phi i32 [ %condval.sroa.0.0.copyload, %if.then60 ], [ 0, %for.cond50.preheader ], !dbg !112
  %condval.sroa.5.0 = phi i32 [ %condval.sroa.5.0.copyload, %if.then60 ], [ 0, %for.cond50.preheader ], !dbg !112
  %condval.sroa.6.0 = phi i32 [ %condval.sroa.6.0.copyload, %if.then60 ], [ 0, %for.cond50.preheader ], !dbg !112
  %condval.sroa.7.0 = phi i32 [ %condval.sroa.7.0.copyload, %if.then60 ], [ 0, %for.cond50.preheader ], !dbg !112
  store i32 %condval.sroa.0.0, ptr addrspace(3) %add.ptr128, align 16, !dbg !113, !tbaa !30
  store i32 %condval.sroa.5.0, ptr addrspace(3) %condval.sroa.5.0.add.ptr128.sroa_idx, align 4, !dbg !113, !tbaa !30
  store i32 %condval.sroa.6.0, ptr addrspace(3) %condval.sroa.6.0.add.ptr128.sroa_idx, align 8, !dbg !113, !tbaa !30
  store i32 %condval.sroa.7.0, ptr addrspace(3) %condval.sroa.7.0.add.ptr128.sroa_idx, align 4, !dbg !113, !tbaa !30
  %cmp59.1 = icmp ult i32 %add56, 1016, !dbg !108
  br i1 %cmp59.1, label %if.then60.1, label %if.end.1, !dbg !109

if.then60.1:                                      ; preds = %if.end
  %gep723.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep748, i64 %add65.1
  %condval.sroa.7.0.add.ptr73.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep723.1, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep723.1, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep723.1, i64 4
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep723.1, align 16, !dbg !110, !tbaa !30
  %condval.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr73.sroa_idx.1, align 4, !dbg !110, !tbaa !30
  %condval.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr73.sroa_idx.1, align 8, !dbg !110, !tbaa !30
  %condval.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr73.sroa_idx.1, align 4, !dbg !110, !tbaa !30
  br label %if.end.1, !dbg !111

if.end.1:                                         ; preds = %if.then60.1, %if.end
  %condval.sroa.0.0.1 = phi i32 [ %condval.sroa.0.0.copyload.1, %if.then60.1 ], [ 0, %if.end ], !dbg !112
  %condval.sroa.5.0.1 = phi i32 [ %condval.sroa.5.0.copyload.1, %if.then60.1 ], [ 0, %if.end ], !dbg !112
  %condval.sroa.6.0.1 = phi i32 [ %condval.sroa.6.0.copyload.1, %if.then60.1 ], [ 0, %if.end ], !dbg !112
  %condval.sroa.7.0.1 = phi i32 [ %condval.sroa.7.0.copyload.1, %if.then60.1 ], [ 0, %if.end ], !dbg !112
  store i32 %condval.sroa.0.0.1, ptr addrspace(3) %add.ptr128.1, align 16, !dbg !113, !tbaa !30
  store i32 %condval.sroa.5.0.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr128.sroa_idx.1, align 4, !dbg !113, !tbaa !30
  store i32 %condval.sroa.6.0.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr128.sroa_idx.1, align 8, !dbg !113, !tbaa !30
  store i32 %condval.sroa.7.0.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr128.sroa_idx.1, align 4, !dbg !113, !tbaa !30
  br label %if.end136, !dbg !114

if.end136:                                        ; preds = %if.end.1, %for.body38
  %scores.sroa.0.1 = phi <4 x float> [ %scores.sroa.0.0, %for.body38 ], [ zeroinitializer, %if.end.1 ]
  fence syncscope("block") release, !dbg !115
  tail call void @llvm.mxc.barrier(), !dbg !118
  fence syncscope("block") acquire, !dbg !119
  br i1 %or.cond, label %if.end222, label %for.cond142.preheader, !dbg !120

for.cond142.preheader:                            ; preds = %if.end136
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr179, align 8, !dbg !121
  %91 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %5, <4 x float> %scores.sroa.0.1), !dbg !122, !call_argsrelate !123
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr179.1, align 8, !dbg !121
  %92 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %7, <4 x float> %91), !dbg !122, !call_argsrelate !123
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr179.2, align 8, !dbg !121
  %93 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %9, <4 x float> %92), !dbg !122, !call_argsrelate !123
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr179.3, align 8, !dbg !121
  %94 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %11, <4 x float> %93), !dbg !122, !call_argsrelate !123
  %add201 = add nuw nsw i32 %mul46, %mul14
  %cmp204.not = icmp sgt i32 %add201, %1, !dbg !124
  %scores.sroa.0.0.vec.extract794 = extractelement <4 x float> %94, i64 0
  %spec.select = select i1 %cmp204.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract794, !dbg !125
  %scores.sroa.0.0.vec.insert796 = insertelement <4 x float> poison, float %spec.select, i64 0, !dbg !126
  %cmp204.not.1.not = icmp slt i32 %add201, %1, !dbg !124
  %scores.sroa.0.4.vec.extract807 = extractelement <4 x float> %94, i64 1, !dbg !125
  %condval_1.0.1 = select i1 %cmp204.not.1.not, float %scores.sroa.0.4.vec.extract807, float 0xFFF0000000000000, !dbg !125
  %scores.sroa.0.4.vec.insert809 = insertelement <4 x float> %scores.sroa.0.0.vec.insert796, float %condval_1.0.1, i64 1, !dbg !126
  %add202.2 = or disjoint i32 %add201, 2, !dbg !127
  %cmp204.not.2 = icmp sgt i32 %add202.2, %1, !dbg !124
  %scores.sroa.0.8.vec.extract820 = extractelement <4 x float> %94, i64 2, !dbg !125
  %condval_1.0.2 = select i1 %cmp204.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract820, !dbg !125
  %scores.sroa.0.8.vec.insert822 = insertelement <4 x float> %scores.sroa.0.4.vec.insert809, float %condval_1.0.2, i64 2, !dbg !126
  %add202.3 = or disjoint i32 %add201, 3, !dbg !127
  %cmp204.not.3 = icmp sgt i32 %add202.3, %1, !dbg !124
  %scores.sroa.0.12.vec.extract833 = extractelement <4 x float> %94, i64 3, !dbg !125
  %condval_1.0.3 = select i1 %cmp204.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract833, !dbg !125
  %scores.sroa.0.12.vec.insert835 = insertelement <4 x float> %scores.sroa.0.8.vec.insert822, float %condval_1.0.3, i64 3, !dbg !126
  br label %if.end222, !dbg !128

if.end222:                                        ; preds = %for.cond142.preheader, %if.end136
  %scores.sroa.0.2 = phi <4 x float> [ %scores.sroa.0.1, %if.end136 ], [ %scores.sroa.0.12.vec.insert835, %for.cond142.preheader ]
  %previous_max.sroa.0.1 = phi float [ %previous_max.sroa.0.0744, %if.end136 ], [ %block_max.sroa.0.0745, %for.cond142.preheader ]
  %block_max.sroa.0.1 = phi float [ %block_max.sroa.0.0745, %if.end136 ], [ 0xFFF0000000000000, %for.cond142.preheader ], !dbg !112
  fence syncscope("block") release, !dbg !128
  tail call void @llvm.mxc.barrier(), !dbg !131
  fence syncscope("block") acquire, !dbg !132
  br i1 %or.cond, label %if.end317, label %for.body234.preheader, !dbg !133

for.body234.preheader:                            ; preds = %if.end222
  %scores.sroa.0.0.vec.extract798 = extractelement <4 x float> %scores.sroa.0.2, i64 0, !dbg !134
  %95 = tail call contract noundef float @llvm.maxnum.f32(float %scores.sroa.0.0.vec.extract798, float 0xFFF0000000000000), !dbg !135
  %scores.sroa.0.4.vec.extract811 = extractelement <4 x float> %scores.sroa.0.2, i64 1, !dbg !134
  %96 = tail call contract noundef float @llvm.maxnum.f32(float %95, float %scores.sroa.0.4.vec.extract811), !dbg !135
  %scores.sroa.0.8.vec.extract824 = extractelement <4 x float> %scores.sroa.0.2, i64 2, !dbg !134
  %97 = tail call contract noundef float @llvm.maxnum.f32(float %96, float %scores.sroa.0.8.vec.extract824), !dbg !135
  %scores.sroa.0.12.vec.extract837 = extractelement <4 x float> %scores.sroa.0.2, i64 3, !dbg !134
  %98 = tail call contract noundef float @llvm.maxnum.f32(float %97, float %scores.sroa.0.12.vec.extract837), !dbg !135
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
  %mul247 = fmul contract float %previous_max.sroa.0.1, 0x3FC7154760000000, !dbg !189
  %mul249 = fmul contract float %112, 0x3FC7154760000000, !dbg !190
  %sub = fsub contract float %mul247, %mul249, !dbg !191
  %cmp.i.i = fcmp contract olt float %sub, -1.260000e+02, !dbg !192
  %cond.i.i = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !192
  %add.i.i = fadd contract float %sub, %cond.i.i, !dbg !192
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !192
  %mul258 = fmul contract float %scores.sroa.0.0.vec.extract798, 0x3FC7154760000000, !dbg !195
  %sub261 = fsub contract float %mul258, %mul249, !dbg !196
  %cmp.i.i663 = fcmp contract olt float %sub261, -1.260000e+02, !dbg !197
  %cond.i.i664 = select contract i1 %cmp.i.i663, float 6.400000e+01, float 0.000000e+00, !dbg !197
  %add.i.i665 = fadd contract float %sub261, %cond.i.i664, !dbg !197
  %113 = tail call contract float @llvm.exp2.f32(float %add.i.i665), !dbg !197
  %cond2.i.i666 = select contract i1 %cmp.i.i663, float 0x3BF0000000000000, float 1.000000e+00, !dbg !197
  %mul.i.i667 = fmul contract float %cond2.i.i666, %113, !dbg !197
  %scores.sroa.0.0.vec.insert802 = insertelement <4 x float> poison, float %mul.i.i667, i64 0, !dbg !199
  %scores.sroa.0.4.vec.extract813 = extractelement <4 x float> %scores.sroa.0.2, i64 1, !dbg !200
  %mul258.1 = fmul contract float %scores.sroa.0.4.vec.extract813, 0x3FC7154760000000, !dbg !195
  %sub261.1 = fsub contract float %mul258.1, %mul249, !dbg !196
  %cmp.i.i663.1 = fcmp contract olt float %sub261.1, -1.260000e+02, !dbg !197
  %cond.i.i664.1 = select contract i1 %cmp.i.i663.1, float 6.400000e+01, float 0.000000e+00, !dbg !197
  %add.i.i665.1 = fadd contract float %sub261.1, %cond.i.i664.1, !dbg !197
  %114 = tail call contract float @llvm.exp2.f32(float %add.i.i665.1), !dbg !197
  %cond2.i.i666.1 = select contract i1 %cmp.i.i663.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !197
  %mul.i.i667.1 = fmul contract float %cond2.i.i666.1, %114, !dbg !197
  %scores.sroa.0.4.vec.insert815 = insertelement <4 x float> %scores.sroa.0.0.vec.insert802, float %mul.i.i667.1, i64 1, !dbg !199
  %scores.sroa.0.8.vec.extract826 = extractelement <4 x float> %scores.sroa.0.2, i64 2, !dbg !200
  %mul258.2 = fmul contract float %scores.sroa.0.8.vec.extract826, 0x3FC7154760000000, !dbg !195
  %sub261.2 = fsub contract float %mul258.2, %mul249, !dbg !196
  %cmp.i.i663.2 = fcmp contract olt float %sub261.2, -1.260000e+02, !dbg !197
  %cond.i.i664.2 = select contract i1 %cmp.i.i663.2, float 6.400000e+01, float 0.000000e+00, !dbg !197
  %add.i.i665.2 = fadd contract float %sub261.2, %cond.i.i664.2, !dbg !197
  %115 = tail call contract float @llvm.exp2.f32(float %add.i.i665.2), !dbg !197
  %cond2.i.i666.2 = select contract i1 %cmp.i.i663.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !197
  %mul.i.i667.2 = fmul contract float %cond2.i.i666.2, %115, !dbg !197
  %scores.sroa.0.8.vec.insert828 = insertelement <4 x float> %scores.sroa.0.4.vec.insert815, float %mul.i.i667.2, i64 2, !dbg !199
  %scores.sroa.0.12.vec.extract839 = extractelement <4 x float> %scores.sroa.0.2, i64 3, !dbg !200
  %mul258.3 = fmul contract float %scores.sroa.0.12.vec.extract839, 0x3FC7154760000000, !dbg !195
  %sub261.3 = fsub contract float %mul258.3, %mul249, !dbg !196
  %cmp.i.i663.3 = fcmp contract olt float %sub261.3, -1.260000e+02, !dbg !197
  %cond.i.i664.3 = select contract i1 %cmp.i.i663.3, float 6.400000e+01, float 0.000000e+00, !dbg !197
  %add.i.i665.3 = fadd contract float %sub261.3, %cond.i.i664.3, !dbg !197
  %116 = tail call contract float @llvm.exp2.f32(float %add.i.i665.3), !dbg !197
  %cond2.i.i666.3 = select contract i1 %cmp.i.i663.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !197
  %mul.i.i667.3 = fmul contract float %cond2.i.i666.3, %116, !dbg !197
  %scores.sroa.0.12.vec.insert841 = insertelement <4 x float> %scores.sroa.0.8.vec.insert828, float %mul.i.i667.3, i64 3, !dbg !199
  %117 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !192
  %add276 = fadd contract float %mul.i.i667, 0.000000e+00, !dbg !201
  %add276.1 = fadd contract float %add276, %mul.i.i667.1, !dbg !201
  %add276.2 = fadd contract float %add276.1, %mul.i.i667.2, !dbg !201
  %add276.3 = fadd contract float %add276.2, %mul.i.i667.3, !dbg !201
  %mul.i.i = fmul contract float %cond2.i.i, %117, !dbg !192
  %118 = bitcast float %add276.3 to i32, !dbg !202
  %119 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !207
  %120 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %119) #11, !dbg !210
  %xor.i.i.i668 = xor i32 %120, 32, !dbg !211
  %121 = and i32 %120, -64, !dbg !212
  %and.i.i.i669 = add nsw i32 %121, 64, !dbg !212
  %cmp.not.i.i.i670 = icmp slt i32 %xor.i.i.i668, %and.i.i.i669, !dbg !213
  %cond.i.i.i671 = select i1 %cmp.not.i.i.i670, i32 %xor.i.i.i668, i32 %120, !dbg !214
  %shl.i.i.i672 = shl i32 %cond.i.i.i671, 2, !dbg !215
  %122 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i672, i32 %118), !dbg !216
  %123 = bitcast i32 %122 to float, !dbg !217
  %add.i.i673 = fadd contract float %add276.3, %123, !dbg !218
  %124 = bitcast float %add.i.i673 to i32, !dbg !221
  %125 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !226
  %126 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %125) #11, !dbg !229
  %xor.i.i.i.i674 = xor i32 %126, 16, !dbg !230
  %127 = and i32 %126, -64, !dbg !231
  %and.i.i.i.i675 = add nsw i32 %127, 64, !dbg !231
  %cmp.not.i.i.i.i676 = icmp slt i32 %xor.i.i.i.i674, %and.i.i.i.i675, !dbg !232
  %cond.i.i.i.i677 = select i1 %cmp.not.i.i.i.i676, i32 %xor.i.i.i.i674, i32 %126, !dbg !233
  %shl.i.i.i.i678 = shl i32 %cond.i.i.i.i677, 2, !dbg !234
  %128 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i678, i32 %124), !dbg !235
  %129 = bitcast i32 %128 to float, !dbg !236
  %mul286 = fmul contract float %denominator.sroa.0.0746, %mul.i.i, !dbg !237
  %130 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !238, !noalias !242
  %131 = fptrunc float %mul.i.i667 to half, !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %130), !dbg !238, !noalias !242
  %132 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !247, !noalias !242
  %133 = fptrunc float %mul.i.i667.1 to half, !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %132), !dbg !247, !noalias !242
  %__1.sroa.0.0.vec.insert = insertelement <4 x half> poison, half %131, i64 0, !dbg !249
  %__1.sroa.0.2.vec.insert = insertelement <4 x half> %__1.sroa.0.0.vec.insert, half %133, i64 1, !dbg !249
  %134 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !252, !noalias !256
  %135 = fptrunc float %mul.i.i667.2 to half, !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %134), !dbg !252, !noalias !256
  %136 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !256
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %136), !dbg !261, !noalias !256
  %__1.sroa.0.4.vec.insert = insertelement <4 x half> %__1.sroa.0.2.vec.insert, half %135, i64 2, !dbg !263
  %output_acc.sroa.0.0.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 0, !dbg !265
  %mul311 = fmul contract float %mul.i.i, %output_acc.sroa.0.0.vec.extract, !dbg !266
  %output_acc.sroa.0.0.vec.insert847 = insertelement <4 x float> poison, float %mul311, i64 0, !dbg !267
  %output_acc.sroa.0.4.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 1, !dbg !265
  %mul311.1 = fmul contract float %mul.i.i, %output_acc.sroa.0.4.vec.extract, !dbg !266
  %output_acc.sroa.0.4.vec.insert856 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert847, float %mul311.1, i64 1, !dbg !267
  %output_acc.sroa.0.8.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 2, !dbg !265
  %mul311.2 = fmul contract float %mul.i.i, %output_acc.sroa.0.8.vec.extract, !dbg !266
  %output_acc.sroa.0.8.vec.insert865 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert856, float %mul311.2, i64 2, !dbg !267
  %output_acc.sroa.0.12.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 3, !dbg !265
  %mul311.3 = fmul contract float %mul.i.i, %output_acc.sroa.0.12.vec.extract, !dbg !266
  %output_acc.sroa.0.12.vec.insert874 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert865, float %mul311.3, i64 3, !dbg !267
  %output_acc.sroa.28.16.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 0, !dbg !265
  %mul311.4 = fmul contract float %mul.i.i, %output_acc.sroa.28.16.vec.extract, !dbg !266
  %output_acc.sroa.28.16.vec.insert884 = insertelement <4 x float> poison, float %mul311.4, i64 0, !dbg !267
  %output_acc.sroa.28.20.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 1, !dbg !265
  %mul311.5 = fmul contract float %mul.i.i, %output_acc.sroa.28.20.vec.extract, !dbg !266
  %output_acc.sroa.28.20.vec.insert893 = insertelement <4 x float> %output_acc.sroa.28.16.vec.insert884, float %mul311.5, i64 1, !dbg !267
  %output_acc.sroa.28.24.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 2, !dbg !265
  %mul311.6 = fmul contract float %mul.i.i, %output_acc.sroa.28.24.vec.extract, !dbg !266
  %output_acc.sroa.28.24.vec.insert902 = insertelement <4 x float> %output_acc.sroa.28.20.vec.insert893, float %mul311.6, i64 2, !dbg !267
  %output_acc.sroa.28.28.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 3, !dbg !265
  %mul311.7 = fmul contract float %mul.i.i, %output_acc.sroa.28.28.vec.extract, !dbg !266
  %output_acc.sroa.28.28.vec.insert911 = insertelement <4 x float> %output_acc.sroa.28.24.vec.insert902, float %mul311.7, i64 3, !dbg !267
  %output_acc.sroa.54.32.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 0, !dbg !265
  %mul311.8 = fmul contract float %mul.i.i, %output_acc.sroa.54.32.vec.extract, !dbg !266
  %output_acc.sroa.54.32.vec.insert921 = insertelement <4 x float> poison, float %mul311.8, i64 0, !dbg !267
  %output_acc.sroa.54.36.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 1, !dbg !265
  %mul311.9 = fmul contract float %mul.i.i, %output_acc.sroa.54.36.vec.extract, !dbg !266
  %output_acc.sroa.54.36.vec.insert930 = insertelement <4 x float> %output_acc.sroa.54.32.vec.insert921, float %mul311.9, i64 1, !dbg !267
  %output_acc.sroa.54.40.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 2, !dbg !265
  %mul311.10 = fmul contract float %mul.i.i, %output_acc.sroa.54.40.vec.extract, !dbg !266
  %output_acc.sroa.54.40.vec.insert939 = insertelement <4 x float> %output_acc.sroa.54.36.vec.insert930, float %mul311.10, i64 2, !dbg !267
  %output_acc.sroa.54.44.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 3, !dbg !265
  %mul311.11 = fmul contract float %mul.i.i, %output_acc.sroa.54.44.vec.extract, !dbg !266
  %output_acc.sroa.54.44.vec.insert948 = insertelement <4 x float> %output_acc.sroa.54.40.vec.insert939, float %mul311.11, i64 3, !dbg !267
  %output_acc.sroa.80.48.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 0, !dbg !265
  %mul311.12 = fmul contract float %mul.i.i, %output_acc.sroa.80.48.vec.extract, !dbg !266
  %output_acc.sroa.80.48.vec.insert958 = insertelement <4 x float> poison, float %mul311.12, i64 0, !dbg !267
  %output_acc.sroa.80.52.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 1, !dbg !265
  %mul311.13 = fmul contract float %mul.i.i, %output_acc.sroa.80.52.vec.extract, !dbg !266
  %output_acc.sroa.80.52.vec.insert967 = insertelement <4 x float> %output_acc.sroa.80.48.vec.insert958, float %mul311.13, i64 1, !dbg !267
  %output_acc.sroa.80.56.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 2, !dbg !265
  %mul311.14 = fmul contract float %mul.i.i, %output_acc.sroa.80.56.vec.extract, !dbg !266
  %output_acc.sroa.80.56.vec.insert976 = insertelement <4 x float> %output_acc.sroa.80.52.vec.insert967, float %mul311.14, i64 2, !dbg !267
  %output_acc.sroa.80.60.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 3, !dbg !265
  %mul311.15 = fmul contract float %mul.i.i, %output_acc.sroa.80.60.vec.extract, !dbg !266
  %output_acc.sroa.80.60.vec.insert985 = insertelement <4 x float> %output_acc.sroa.80.56.vec.insert976, float %mul311.15, i64 3, !dbg !267
  %add.i.i.i = fadd contract float %add.i.i673, %129, !dbg !268
  %add288 = fadd contract float %mul286, %add.i.i.i, !dbg !270
  %137 = fptrunc float %mul.i.i667.3 to half, !dbg !261
  %__1.sroa.0.6.vec.insert = insertelement <4 x half> %__1.sroa.0.4.vec.insert, half %137, i64 3, !dbg !263
  br label %if.end317, !dbg !271

if.end317:                                        ; preds = %for.body234.preheader, %if.end222
  %output_acc.sroa.80.1 = phi <4 x float> [ %output_acc.sroa.80.0, %if.end222 ], [ %output_acc.sroa.80.60.vec.insert985, %for.body234.preheader ], !dbg !112
  %output_acc.sroa.54.1 = phi <4 x float> [ %output_acc.sroa.54.0, %if.end222 ], [ %output_acc.sroa.54.44.vec.insert948, %for.body234.preheader ], !dbg !112
  %output_acc.sroa.28.1 = phi <4 x float> [ %output_acc.sroa.28.0, %if.end222 ], [ %output_acc.sroa.28.28.vec.insert911, %for.body234.preheader ], !dbg !112
  %output_acc.sroa.0.1 = phi <4 x float> [ %output_acc.sroa.0.0, %if.end222 ], [ %output_acc.sroa.0.12.vec.insert874, %for.body234.preheader ], !dbg !112
  %scores.sroa.0.3 = phi <4 x float> [ %scores.sroa.0.2, %if.end222 ], [ %scores.sroa.0.12.vec.insert841, %for.body234.preheader ]
  %scores_half.sroa.0.1 = phi <4 x half> [ %scores_half.sroa.0.0743, %if.end222 ], [ %__1.sroa.0.6.vec.insert, %for.body234.preheader ]
  %block_max.sroa.0.3 = phi float [ %block_max.sroa.0.1, %if.end222 ], [ %112, %for.body234.preheader ], !dbg !112
  %denominator.sroa.0.1 = phi float [ %denominator.sroa.0.0746, %if.end222 ], [ %add288, %for.body234.preheader ], !dbg !112
  fence syncscope("block") release, !dbg !271
  tail call void @llvm.mxc.barrier(), !dbg !274
  fence syncscope("block") acquire, !dbg !275
  br i1 %or.cond, label %if.end392, label %for.cond323.preheader, !dbg !276

for.cond323.preheader:                            ; preds = %if.end317
  %add329 = add nuw nsw i32 %mul46, %shr55
  %conv340 = zext nneg i32 %mul46 to i64
  %.idx = shl nuw nsw i64 %conv340, 7
  %gep749 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep, i64 %.idx, !dbg !277
  %cmp332 = icmp ult i32 %add329, 1024, !dbg !278
  br i1 %cmp332, label %if.then333, label %if.end371, !dbg !279

if.then333:                                       ; preds = %for.cond323.preheader
  %gep737 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep749, i64 %mul62
  %condval_2.sroa.7.0.add.ptr347.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep737, i64 12
  %condval_2.sroa.6.0.add.ptr347.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep737, i64 8
  %condval_2.sroa.5.0.add.ptr347.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep737, i64 4
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep737, align 16, !dbg !280, !tbaa !30
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr347.sroa_idx, align 4, !dbg !280, !tbaa !30
  %condval_2.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr347.sroa_idx, align 8, !dbg !280, !tbaa !30
  %condval_2.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr347.sroa_idx, align 4, !dbg !280, !tbaa !30
  br label %if.end371, !dbg !281

if.end371:                                        ; preds = %for.cond323.preheader, %if.then333
  %condval_2.sroa.7.0 = phi i32 [ %condval_2.sroa.7.0.copyload, %if.then333 ], [ 0, %for.cond323.preheader ], !dbg !112
  %condval_2.sroa.6.0 = phi i32 [ %condval_2.sroa.6.0.copyload, %if.then333 ], [ 0, %for.cond323.preheader ], !dbg !112
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then333 ], [ 0, %for.cond323.preheader ], !dbg !112
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then333 ], [ 0, %for.cond323.preheader ], !dbg !112
  store i32 %condval_2.sroa.0.0, ptr addrspace(3) %add.ptr388, align 16, !dbg !282, !tbaa !30
  store i32 %condval_2.sroa.5.0, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr388.sroa_idx, align 4, !dbg !282, !tbaa !30
  store i32 %condval_2.sroa.6.0, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr388.sroa_idx, align 8, !dbg !282, !tbaa !30
  store i32 %condval_2.sroa.7.0, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr388.sroa_idx, align 4, !dbg !282, !tbaa !30
  %cmp332.1 = icmp ult i32 %add329, 1016, !dbg !278
  br i1 %cmp332.1, label %if.then333.1, label %if.end371.1, !dbg !279

if.then333.1:                                     ; preds = %if.end371
  %gep737.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep749, i64 %add339.1
  %condval_2.sroa.7.0.add.ptr347.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep737.1, i64 12
  %condval_2.sroa.6.0.add.ptr347.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep737.1, i64 8
  %condval_2.sroa.5.0.add.ptr347.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep737.1, i64 4
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep737.1, align 16, !dbg !280, !tbaa !30
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr347.sroa_idx.1, align 4, !dbg !280, !tbaa !30
  %condval_2.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr347.sroa_idx.1, align 8, !dbg !280, !tbaa !30
  %condval_2.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr347.sroa_idx.1, align 4, !dbg !280, !tbaa !30
  br label %if.end371.1, !dbg !281

if.end371.1:                                      ; preds = %if.then333.1, %if.end371
  %condval_2.sroa.7.0.1 = phi i32 [ %condval_2.sroa.7.0.copyload.1, %if.then333.1 ], [ 0, %if.end371 ], !dbg !112
  %condval_2.sroa.6.0.1 = phi i32 [ %condval_2.sroa.6.0.copyload.1, %if.then333.1 ], [ 0, %if.end371 ], !dbg !112
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then333.1 ], [ 0, %if.end371 ], !dbg !112
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then333.1 ], [ 0, %if.end371 ], !dbg !112
  store i32 %condval_2.sroa.0.0.1, ptr addrspace(3) %add.ptr388.1, align 16, !dbg !282, !tbaa !30
  store i32 %condval_2.sroa.5.0.1, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr388.sroa_idx.1, align 4, !dbg !282, !tbaa !30
  store i32 %condval_2.sroa.6.0.1, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr388.sroa_idx.1, align 8, !dbg !282, !tbaa !30
  store i32 %condval_2.sroa.7.0.1, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr388.sroa_idx.1, align 4, !dbg !282, !tbaa !30
  br label %if.end392, !dbg !283

if.end392:                                        ; preds = %if.end371.1, %if.end317
  fence syncscope("block") release, !dbg !283
  tail call void @llvm.mxc.barrier(), !dbg !286
  fence syncscope("block") acquire, !dbg !287
  br i1 %or.cond, label %if.end456, label %if.then397, !dbg !288

if.then397:                                       ; preds = %if.end392
  %138 = load half, ptr addrspace(3) %33, align 2, !dbg !289, !tbaa !290
  %B_local.sroa.0.0.vec.insert = insertelement <4 x half> poison, half %138, i64 0, !dbg !289
  %139 = load half, ptr addrspace(3) %gep738.1, align 2, !dbg !289, !tbaa !290
  %B_local.sroa.0.2.vec.insert = insertelement <4 x half> %B_local.sroa.0.0.vec.insert, half %139, i64 1, !dbg !289
  %140 = load half, ptr addrspace(3) %gep738.2, align 2, !dbg !289, !tbaa !290
  %B_local.sroa.0.4.vec.insert = insertelement <4 x half> %B_local.sroa.0.2.vec.insert, half %140, i64 2, !dbg !289
  %141 = load half, ptr addrspace(3) %gep738.3, align 2, !dbg !289, !tbaa !290
  %B_local.sroa.0.6.vec.insert = insertelement <4 x half> %B_local.sroa.0.4.vec.insert, half %141, i64 3, !dbg !289
  %142 = load half, ptr addrspace(3) %34, align 2, !dbg !289, !tbaa !290
  %B_local.sroa.7.8.vec.insert = insertelement <4 x half> poison, half %142, i64 0, !dbg !289
  %143 = load half, ptr addrspace(3) %gep738.1.1, align 2, !dbg !289, !tbaa !290
  %B_local.sroa.7.10.vec.insert = insertelement <4 x half> %B_local.sroa.7.8.vec.insert, half %143, i64 1, !dbg !289
  %144 = load half, ptr addrspace(3) %gep738.2.1, align 2, !dbg !289, !tbaa !290
  %B_local.sroa.7.12.vec.insert = insertelement <4 x half> %B_local.sroa.7.10.vec.insert, half %144, i64 2, !dbg !289
  %145 = load half, ptr addrspace(3) %gep738.3.1, align 2, !dbg !289, !tbaa !290
  %B_local.sroa.7.14.vec.insert = insertelement <4 x half> %B_local.sroa.7.12.vec.insert, half %145, i64 3, !dbg !289
  %146 = load half, ptr addrspace(3) %35, align 2, !dbg !289, !tbaa !290
  %B_local.sroa.12.16.vec.insert = insertelement <4 x half> poison, half %146, i64 0, !dbg !289
  %147 = load half, ptr addrspace(3) %gep738.1.2, align 2, !dbg !289, !tbaa !290
  %B_local.sroa.12.18.vec.insert = insertelement <4 x half> %B_local.sroa.12.16.vec.insert, half %147, i64 1, !dbg !289
  %148 = load half, ptr addrspace(3) %gep738.2.2, align 2, !dbg !289, !tbaa !290
  %B_local.sroa.12.20.vec.insert = insertelement <4 x half> %B_local.sroa.12.18.vec.insert, half %148, i64 2, !dbg !289
  %149 = load half, ptr addrspace(3) %gep738.3.2, align 2, !dbg !289, !tbaa !290
  %B_local.sroa.12.22.vec.insert = insertelement <4 x half> %B_local.sroa.12.20.vec.insert, half %149, i64 3, !dbg !289
  %150 = load half, ptr addrspace(3) %36, align 2, !dbg !289, !tbaa !290
  %B_local.sroa.17.24.vec.insert = insertelement <4 x half> poison, half %150, i64 0, !dbg !289
  %151 = load half, ptr addrspace(3) %gep738.1.3, align 2, !dbg !289, !tbaa !290
  %B_local.sroa.17.26.vec.insert = insertelement <4 x half> %B_local.sroa.17.24.vec.insert, half %151, i64 1, !dbg !289
  %152 = load half, ptr addrspace(3) %gep738.2.3, align 2, !dbg !289, !tbaa !290
  %B_local.sroa.17.28.vec.insert = insertelement <4 x half> %B_local.sroa.17.26.vec.insert, half %152, i64 2, !dbg !289
  %153 = load half, ptr addrspace(3) %gep738.3.3, align 2, !dbg !289, !tbaa !290
  %B_local.sroa.17.30.vec.insert = insertelement <4 x half> %B_local.sroa.17.28.vec.insert, half %153, i64 3, !dbg !289
  %154 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.0.6.vec.insert, <4 x half> %scores_half.sroa.0.1, <4 x float> %output_acc.sroa.0.1), !dbg !291
  %155 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.7.14.vec.insert, <4 x half> %scores_half.sroa.0.1, <4 x float> %output_acc.sroa.28.1), !dbg !291
  %156 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.12.22.vec.insert, <4 x half> %scores_half.sroa.0.1, <4 x float> %output_acc.sroa.54.1), !dbg !291
  %157 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.17.30.vec.insert, <4 x half> %scores_half.sroa.0.1, <4 x float> %output_acc.sroa.80.1), !dbg !291
  br label %if.end456, !dbg !292

if.end456:                                        ; preds = %if.then397, %if.end392
  %output_acc.sroa.80.2 = phi <4 x float> [ %output_acc.sroa.80.1, %if.end392 ], [ %157, %if.then397 ], !dbg !112
  %output_acc.sroa.54.2 = phi <4 x float> [ %output_acc.sroa.54.1, %if.end392 ], [ %156, %if.then397 ], !dbg !112
  %output_acc.sroa.28.2 = phi <4 x float> [ %output_acc.sroa.28.1, %if.end392 ], [ %155, %if.then397 ], !dbg !112
  %output_acc.sroa.0.2 = phi <4 x float> [ %output_acc.sroa.0.1, %if.end392 ], [ %154, %if.then397 ], !dbg !112
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !293
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !294
  br i1 %exitcond.not, label %for.cond460.preheader, label %for.body38, !dbg !46, !llvm.loop !295
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
declare void @llvm.mxc.barrier() #6

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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v023_codex_power_s8_cooperative_k_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v023_codex_power_s8_cooperative_k_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 23, column: 3, scope: !40)
!44 = !DILocation(line: 24, column: 52, scope: !40)
!45 = !DILocation(line: 24, column: 38, scope: !40)
!46 = !DILocation(line: 33, column: 3, scope: !40)
!47 = !DILocation(line: 136, column: 24, scope: !40)
!48 = !DILocation(line: 136, column: 40, scope: !40)
!49 = !DILocation(line: 139, column: 3, scope: !40)
!50 = !DILocation(line: 1007, column: 10, scope: !51, inlinedAt: !53)
!51 = distinct !DISubprogram(name: "__float2half_rn", scope: !52, file: !52, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!52 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!53 = distinct !DILocation(line: 1077, column: 18, scope: !54, inlinedAt: !55)
!54 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !52, file: !52, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!55 = distinct !DILocation(line: 1295, column: 23, scope: !56, inlinedAt: !57)
!56 = distinct !DISubprogram(name: "__float22half2_rn", scope: !52, file: !52, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!57 = distinct !DILocation(line: 142, column: 27, scope: !40)
!58 = !{!59, !61}
!59 = distinct !{!59, !60, !"_ZL17__floats2half2_rnff: %agg.result"}
!60 = distinct !{!60, !"_ZL17__floats2half2_rnff"}
!61 = distinct !{!61, !62, !"_ZL17__float22half2_rn6float2: %agg.result"}
!62 = distinct !{!62, !"_ZL17__float22half2_rn6float2"}
!63 = !DILocation(line: 1007, column: 10, scope: !51, inlinedAt: !64)
!64 = distinct !DILocation(line: 1077, column: 38, scope: !54, inlinedAt: !55)
!65 = !DILocation(line: 596, column: 67, scope: !66, inlinedAt: !67)
!66 = distinct !DISubprogram(name: "__half2", scope: !52, file: !52, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!67 = distinct !DILocation(line: 1077, column: 10, scope: !54, inlinedAt: !55)
!68 = !DILocation(line: 596, column: 73, scope: !66, inlinedAt: !67)
!69 = !DILocation(line: 1007, column: 10, scope: !51, inlinedAt: !70)
!70 = distinct !DILocation(line: 1077, column: 18, scope: !54, inlinedAt: !71)
!71 = distinct !DILocation(line: 1295, column: 23, scope: !56, inlinedAt: !72)
!72 = distinct !DILocation(line: 143, column: 27, scope: !40)
!73 = !{!74, !76}
!74 = distinct !{!74, !75, !"_ZL17__floats2half2_rnff: %agg.result"}
!75 = distinct !{!75, !"_ZL17__floats2half2_rnff"}
!76 = distinct !{!76, !77, !"_ZL17__float22half2_rn6float2: %agg.result"}
!77 = distinct !{!77, !"_ZL17__float22half2_rn6float2"}
!78 = !DILocation(line: 1007, column: 10, scope: !51, inlinedAt: !79)
!79 = distinct !DILocation(line: 1077, column: 38, scope: !54, inlinedAt: !71)
!80 = !DILocation(line: 596, column: 67, scope: !66, inlinedAt: !81)
!81 = distinct !DILocation(line: 1077, column: 10, scope: !54, inlinedAt: !71)
!82 = !DILocation(line: 596, column: 73, scope: !66, inlinedAt: !81)
!83 = !DILocation(line: 144, column: 45, scope: !40)
!84 = !DILocation(line: 145, column: 40, scope: !40)
!85 = !DILocation(line: 145, column: 127, scope: !40)
!86 = !DILocation(line: 60, column: 3, scope: !87, inlinedAt: !89)
!87 = distinct !DISubprogram(name: "__barrier", scope: !88, file: !88, line: 57, type: !7, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!88 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!89 = distinct !DILocation(line: 74, column: 3, scope: !90, inlinedAt: !91)
!90 = distinct !DISubprogram(name: "__syncthreads", scope: !88, file: !88, line: 73, type: !7, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!91 = distinct !DILocation(line: 147, column: 3, scope: !40)
!92 = !DILocation(line: 61, column: 3, scope: !87, inlinedAt: !89)
!93 = !DILocation(line: 62, column: 3, scope: !87, inlinedAt: !89)
!94 = !DILocation(line: 149, column: 8, scope: !40)
!95 = !DILocation(line: 149, column: 3, scope: !40)
!96 = !DILocation(line: 150, column: 22, scope: !40)
!97 = !DILocation(line: 150, column: 131, scope: !40)
!98 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!99 = !{i32 2, i32 -1, i32 -1, i32 -1}
!100 = !DILocation(line: 150, column: 168, scope: !40)
!101 = !DILocation(line: 152, column: 1, scope: !40)
!102 = !DILocation(line: 29, column: 38, scope: !40)
!103 = !DILocation(line: 34, column: 24, scope: !40)
!104 = !DILocation(line: 34, column: 106, scope: !40)
!105 = !DILocation(line: 35, column: 12, scope: !40)
!106 = !DILocation(line: 35, column: 28, scope: !40)
!107 = !DILocation(line: 37, column: 7, scope: !40)
!108 = !DILocation(line: 40, column: 71, scope: !40)
!109 = !DILocation(line: 40, column: 13, scope: !40)
!110 = !DILocation(line: 41, column: 19, scope: !40)
!111 = !DILocation(line: 42, column: 9, scope: !40)
!112 = !DILocation(line: 0, scope: !40)
!113 = !DILocation(line: 45, column: 339, scope: !40)
!114 = !DILocation(line: 49, column: 5, scope: !40)
!115 = !DILocation(line: 60, column: 3, scope: !87, inlinedAt: !116)
!116 = distinct !DILocation(line: 74, column: 3, scope: !90, inlinedAt: !117)
!117 = distinct !DILocation(line: 50, column: 5, scope: !40)
!118 = !DILocation(line: 61, column: 3, scope: !87, inlinedAt: !116)
!119 = !DILocation(line: 62, column: 3, scope: !87, inlinedAt: !116)
!120 = !DILocation(line: 51, column: 28, scope: !40)
!121 = !DILocation(line: 53, column: 32, scope: !40)
!122 = !DILocation(line: 55, column: 37, scope: !40)
!123 = !{i32 -1, i32 3, i32 -1}
!124 = !DILocation(line: 63, column: 70, scope: !40)
!125 = !DILocation(line: 63, column: 13, scope: !40)
!126 = !DILocation(line: 68, column: 21, scope: !40)
!127 = !DILocation(line: 63, column: 63, scope: !40)
!128 = !DILocation(line: 60, column: 3, scope: !87, inlinedAt: !129)
!129 = distinct !DILocation(line: 74, column: 3, scope: !90, inlinedAt: !130)
!130 = distinct !DILocation(line: 73, column: 5, scope: !40)
!131 = !DILocation(line: 61, column: 3, scope: !87, inlinedAt: !129)
!132 = !DILocation(line: 62, column: 3, scope: !87, inlinedAt: !129)
!133 = !DILocation(line: 74, column: 28, scope: !40)
!134 = !DILocation(line: 78, column: 42, scope: !40)
!135 = !DILocation(line: 351, column: 10, scope: !136, inlinedAt: !138)
!136 = distinct !DISubprogram(name: "max", scope: !137, file: !137, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!137 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!138 = distinct !DILocation(line: 78, column: 24, scope: !40)
!139 = !DILocation(line: 1018, column: 9, scope: !140, inlinedAt: !141)
!140 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !88, file: !88, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!141 = distinct !DILocation(line: 338, column: 10, scope: !142, inlinedAt: !144)
!142 = distinct !DISubprogram(name: "shfl_xor_sync<float>", scope: !143, file: !143, line: 337, type: !7, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!143 = !DIFile(filename: "src/tl_templates/maca/common.h", directory: "/root/tilelang-metax")
!144 = distinct !DILocation(line: 95, column: 24, scope: !145, inlinedAt: !147)
!145 = distinct !DISubprogram(name: "run<float>", scope: !146, file: !146, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!146 = !DIFile(filename: "src/tl_templates/maca/reduce.h", directory: "/root/tilelang-metax")
!147 = distinct !DILocation(line: 80, column: 22, scope: !40)
!148 = !DILocation(line: 171, column: 37, scope: !149, inlinedAt: !150)
!149 = distinct !DISubprogram(name: "__lane_id", scope: !88, file: !88, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!150 = distinct !DILocation(line: 990, column: 14, scope: !151, inlinedAt: !152)
!151 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !88, file: !88, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
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
!189 = !DILocation(line: 81, column: 44, scope: !40)
!190 = !DILocation(line: 81, column: 101, scope: !40)
!191 = !DILocation(line: 81, column: 85, scope: !40)
!192 = !DILocation(line: 285, column: 49, scope: !193, inlinedAt: !194)
!193 = distinct !DISubprogram(name: "exp2f", scope: !137, file: !137, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!194 = distinct !DILocation(line: 81, column: 20, scope: !40)
!195 = !DILocation(line: 84, column: 43, scope: !40)
!196 = !DILocation(line: 84, column: 84, scope: !40)
!197 = !DILocation(line: 285, column: 49, scope: !193, inlinedAt: !198)
!198 = distinct !DILocation(line: 84, column: 23, scope: !40)
!199 = !DILocation(line: 84, column: 21, scope: !40)
!200 = !DILocation(line: 84, column: 31, scope: !40)
!201 = !DILocation(line: 89, column: 38, scope: !40)
!202 = !DILocation(line: 1018, column: 9, scope: !140, inlinedAt: !203)
!203 = distinct !DILocation(line: 338, column: 10, scope: !142, inlinedAt: !204)
!204 = distinct !DILocation(line: 95, column: 24, scope: !205, inlinedAt: !206)
!205 = distinct !DISubprogram(name: "run<float>", scope: !146, file: !146, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!206 = distinct !DILocation(line: 91, column: 22, scope: !40)
!207 = !DILocation(line: 171, column: 37, scope: !149, inlinedAt: !208)
!208 = distinct !DILocation(line: 990, column: 14, scope: !151, inlinedAt: !209)
!209 = distinct !DILocation(line: 1019, column: 11, scope: !140, inlinedAt: !203)
!210 = !DILocation(line: 171, column: 10, scope: !149, inlinedAt: !208)
!211 = !DILocation(line: 991, column: 20, scope: !151, inlinedAt: !209)
!212 = !DILocation(line: 992, column: 36, scope: !151, inlinedAt: !209)
!213 = !DILocation(line: 992, column: 17, scope: !151, inlinedAt: !209)
!214 = !DILocation(line: 992, column: 11, scope: !151, inlinedAt: !209)
!215 = !DILocation(line: 993, column: 43, scope: !151, inlinedAt: !209)
!216 = !DILocation(line: 993, column: 10, scope: !151, inlinedAt: !209)
!217 = !DILocation(line: 1020, column: 14, scope: !140, inlinedAt: !203)
!218 = !DILocation(line: 25, column: 14, scope: !219, inlinedAt: !220)
!219 = distinct !DISubprogram(name: "operator()<float>", scope: !146, file: !146, line: 24, type: !7, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!220 = distinct !DILocation(line: 95, column: 11, scope: !205, inlinedAt: !206)
!221 = !DILocation(line: 1018, column: 9, scope: !140, inlinedAt: !222)
!222 = distinct !DILocation(line: 338, column: 10, scope: !142, inlinedAt: !223)
!223 = distinct !DILocation(line: 95, column: 24, scope: !224, inlinedAt: !225)
!224 = distinct !DISubprogram(name: "run<float>", scope: !146, file: !146, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!225 = distinct !DILocation(line: 100, column: 14, scope: !205, inlinedAt: !206)
!226 = !DILocation(line: 171, column: 37, scope: !149, inlinedAt: !227)
!227 = distinct !DILocation(line: 990, column: 14, scope: !151, inlinedAt: !228)
!228 = distinct !DILocation(line: 1019, column: 11, scope: !140, inlinedAt: !222)
!229 = !DILocation(line: 171, column: 10, scope: !149, inlinedAt: !227)
!230 = !DILocation(line: 991, column: 20, scope: !151, inlinedAt: !228)
!231 = !DILocation(line: 992, column: 36, scope: !151, inlinedAt: !228)
!232 = !DILocation(line: 992, column: 17, scope: !151, inlinedAt: !228)
!233 = !DILocation(line: 992, column: 11, scope: !151, inlinedAt: !228)
!234 = !DILocation(line: 993, column: 43, scope: !151, inlinedAt: !228)
!235 = !DILocation(line: 993, column: 10, scope: !151, inlinedAt: !228)
!236 = !DILocation(line: 1020, column: 14, scope: !140, inlinedAt: !222)
!237 = !DILocation(line: 92, column: 41, scope: !40)
!238 = !DILocation(line: 1007, column: 10, scope: !51, inlinedAt: !239)
!239 = distinct !DILocation(line: 1077, column: 18, scope: !54, inlinedAt: !240)
!240 = distinct !DILocation(line: 1295, column: 23, scope: !56, inlinedAt: !241)
!241 = distinct !DILocation(line: 95, column: 29, scope: !40)
!242 = !{!243, !245}
!243 = distinct !{!243, !244, !"_ZL17__floats2half2_rnff: %agg.result"}
!244 = distinct !{!244, !"_ZL17__floats2half2_rnff"}
!245 = distinct !{!245, !246, !"_ZL17__float22half2_rn6float2: %agg.result"}
!246 = distinct !{!246, !"_ZL17__float22half2_rn6float2"}
!247 = !DILocation(line: 1007, column: 10, scope: !51, inlinedAt: !248)
!248 = distinct !DILocation(line: 1077, column: 38, scope: !54, inlinedAt: !240)
!249 = !DILocation(line: 593, column: 26, scope: !250, inlinedAt: !251)
!250 = distinct !DISubprogram(name: "operator=", scope: !52, file: !52, line: 592, type: !7, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!251 = distinct !DILocation(line: 95, column: 27, scope: !40)
!252 = !DILocation(line: 1007, column: 10, scope: !51, inlinedAt: !253)
!253 = distinct !DILocation(line: 1077, column: 18, scope: !54, inlinedAt: !254)
!254 = distinct !DILocation(line: 1295, column: 23, scope: !56, inlinedAt: !255)
!255 = distinct !DILocation(line: 96, column: 29, scope: !40)
!256 = !{!257, !259}
!257 = distinct !{!257, !258, !"_ZL17__floats2half2_rnff: %agg.result"}
!258 = distinct !{!258, !"_ZL17__floats2half2_rnff"}
!259 = distinct !{!259, !260, !"_ZL17__float22half2_rn6float2: %agg.result"}
!260 = distinct !{!260, !"_ZL17__float22half2_rn6float2"}
!261 = !DILocation(line: 1007, column: 10, scope: !51, inlinedAt: !262)
!262 = distinct !DILocation(line: 1077, column: 38, scope: !54, inlinedAt: !254)
!263 = !DILocation(line: 593, column: 26, scope: !250, inlinedAt: !264)
!264 = distinct !DILocation(line: 96, column: 27, scope: !40)
!265 = !DILocation(line: 100, column: 28, scope: !40)
!266 = !DILocation(line: 100, column: 44, scope: !40)
!267 = !DILocation(line: 100, column: 25, scope: !40)
!268 = !DILocation(line: 25, column: 14, scope: !219, inlinedAt: !269)
!269 = distinct !DILocation(line: 95, column: 11, scope: !224, inlinedAt: !225)
!270 = !DILocation(line: 92, column: 55, scope: !40)
!271 = !DILocation(line: 60, column: 3, scope: !87, inlinedAt: !272)
!272 = distinct !DILocation(line: 74, column: 3, scope: !90, inlinedAt: !273)
!273 = distinct !DILocation(line: 103, column: 5, scope: !40)
!274 = !DILocation(line: 61, column: 3, scope: !87, inlinedAt: !272)
!275 = !DILocation(line: 62, column: 3, scope: !87, inlinedAt: !272)
!276 = !DILocation(line: 104, column: 28, scope: !40)
!277 = !DILocation(line: 106, column: 7, scope: !40)
!278 = !DILocation(line: 109, column: 71, scope: !40)
!279 = !DILocation(line: 109, column: 13, scope: !40)
!280 = !DILocation(line: 110, column: 21, scope: !40)
!281 = !DILocation(line: 111, column: 9, scope: !40)
!282 = !DILocation(line: 114, column: 190, scope: !40)
!283 = !DILocation(line: 60, column: 3, scope: !87, inlinedAt: !284)
!284 = distinct !DILocation(line: 74, column: 3, scope: !90, inlinedAt: !285)
!285 = distinct !DILocation(line: 117, column: 5, scope: !40)
!286 = !DILocation(line: 61, column: 3, scope: !87, inlinedAt: !284)
!287 = !DILocation(line: 62, column: 3, scope: !87, inlinedAt: !284)
!288 = !DILocation(line: 118, column: 28, scope: !40)
!289 = !DILocation(line: 122, column: 41, scope: !40)
!290 = !{!26, !26, i64 0}
!291 = !DILocation(line: 127, column: 43, scope: !40)
!292 = !DILocation(line: 132, column: 5, scope: !40)
!293 = !DILocation(line: 33, column: 40, scope: !40)
!294 = !DILocation(line: 33, column: 35, scope: !40)
!295 = distinct !{!295, !46, !296, !32}
!296 = !DILocation(line: 133, column: 3, scope: !40)
