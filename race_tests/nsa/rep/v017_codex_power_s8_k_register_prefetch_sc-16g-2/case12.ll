; ModuleID = 'race_tests/nsa/rep/v017_codex_power_s8_k_register_prefetch_sc-16g-2/case12.mcir'
source_filename = "race_tests/nsa/rep/v017_codex_power_s8_k_register_prefetch_sc-16g-2/codegen/case12.device.cpp"
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
  %2 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !41
  %and = shl nuw nsw i32 %2, 6
  %mul9 = and i32 %and, 960
  %add10 = or disjoint i32 %add, %mul9
  %3 = lshr i32 %2, 2
  %mul14 = and i32 %3, 252
  %add12 = add nuw nsw i32 %add10, %mul14
  %4 = zext nneg i32 %add12 to i64, !dbg !42
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %4, !dbg !43
  %5 = load <4 x half>, ptr addrspace(4) %add.ptr, align 8, !dbg !44
  %6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %4, !dbg !43
  %add.ptr.1 = getelementptr inbounds i8, ptr addrspace(4) %6, i64 32, !dbg !43
  %7 = load <4 x half>, ptr addrspace(4) %add.ptr.1, align 8, !dbg !44
  %8 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %4, !dbg !43
  %add.ptr.2 = getelementptr inbounds i8, ptr addrspace(4) %8, i64 64, !dbg !43
  %9 = load <4 x half>, ptr addrspace(4) %add.ptr.2, align 8, !dbg !44
  %10 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %4, !dbg !43
  %add.ptr.3 = getelementptr inbounds i8, ptr addrspace(4) %10, i64 96, !dbg !43
  %11 = load <4 x half>, ptr addrspace(4) %add.ptr.3, align 8, !dbg !44
  %mul40 = shl nsw i32 %0, 13
  %mul42 = shl nsw i32 %1, 3
  %add43 = add nuw nsw i32 %mul40, %mul42
  %and59 = and i32 %2, 15
  %conv = zext nneg i32 %0 to i64
  %mul64 = shl nuw nsw i64 %conv, 16
  %mul71 = zext nneg i32 %mul9 to i64
  %mul79 = zext nneg i32 %mul14 to i64
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul79
  %shr250 = lshr i32 %2, 3
  %12 = shl nuw nsw i32 %2, 3
  %mul297 = and i32 %12, 8128
  %and300 = and i32 %2, 7
  %13 = lshr i32 %2, 4
  %mul304 = and i32 %13, 62
  %invariant.gep622 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul297
  %mul267 = zext nneg i32 %12 to i64
  %invariant.gep637 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %mul267, !dbg !45
  %14 = shl nuw nsw i32 %2, 4
  %mul329 = and i32 %14, 16128
  %shr335 = and i32 %2, 8
  %mul339 = and i32 %2, 1008
  %add331 = or disjoint i32 %mul329, %and300
  %15 = zext nneg i32 %add43 to i64, !dbg !45
  %invariant.gep884 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %15, !dbg !45
  %xor = xor i32 %mul304, %and300
  %add.ptr309.idx = shl nuw nsw i32 %xor, 4
  %add.ptr309 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep622, i32 %add.ptr309.idx
  %condval_2.sroa.5.0.add.ptr309.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr309, i32 4
  %condval_2.sroa.6.0.add.ptr309.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr309, i32 8
  %condval_2.sroa.7.0.add.ptr309.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr309, i32 12
  %add261.1 = or disjoint i64 %mul64, 512
  %narrow = add nuw nsw i32 %mul304, 4
  %xor.1 = xor i32 %narrow, %and300
  %gep623.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep622, i32 1024
  %add.ptr309.idx.1 = shl nuw nsw i32 %xor.1, 4
  %add.ptr309.1 = getelementptr inbounds i8, ptr addrspace(3) %gep623.1, i32 %add.ptr309.idx.1
  %condval_2.sroa.5.0.add.ptr309.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr309.1, i32 4
  %condval_2.sroa.6.0.add.ptr309.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr309.1, i32 8
  %condval_2.sroa.7.0.add.ptr309.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr309.1, i32 12
  %xor340 = and i32 %2, 1016
  %16 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add331
  %17 = getelementptr inbounds %struct.__half, ptr addrspace(3) %16, i32 %xor340
  %arrayidx347.1 = getelementptr inbounds i8, ptr addrspace(3) %17, i32 128
  %arrayidx347.2 = getelementptr inbounds i8, ptr addrspace(3) %17, i32 256
  %arrayidx347.3 = getelementptr inbounds i8, ptr addrspace(3) %17, i32 384
  %add336.1 = or disjoint i32 %shr335, 16
  %xor340.1 = xor i32 %add336.1, %mul339
  %18 = getelementptr inbounds %struct.__half, ptr addrspace(3) %16, i32 %xor340.1
  %arrayidx347.1.1 = getelementptr inbounds i8, ptr addrspace(3) %18, i32 128
  %arrayidx347.2.1 = getelementptr inbounds i8, ptr addrspace(3) %18, i32 256
  %arrayidx347.3.1 = getelementptr inbounds i8, ptr addrspace(3) %18, i32 384
  %add336.2 = or disjoint i32 %shr335, 32
  %xor340.2 = xor i32 %add336.2, %mul339
  %19 = getelementptr inbounds %struct.__half, ptr addrspace(3) %16, i32 %xor340.2
  %arrayidx347.1.2 = getelementptr inbounds i8, ptr addrspace(3) %19, i32 128
  %arrayidx347.2.2 = getelementptr inbounds i8, ptr addrspace(3) %19, i32 256
  %arrayidx347.3.2 = getelementptr inbounds i8, ptr addrspace(3) %19, i32 384
  %add336.3 = or disjoint i32 %shr335, 48
  %xor340.3 = xor i32 %add336.3, %mul339
  %20 = getelementptr inbounds %struct.__half, ptr addrspace(3) %16, i32 %xor340.3
  %arrayidx347.1.3 = getelementptr inbounds i8, ptr addrspace(3) %20, i32 128
  %arrayidx347.2.3 = getelementptr inbounds i8, ptr addrspace(3) %20, i32 256
  %arrayidx347.3.3 = getelementptr inbounds i8, ptr addrspace(3) %20, i32 384
  br label %for.body38, !dbg !45

for.cond380.preheader:                            ; preds = %if.end376
  %output_acc.sroa.0.0.vec.extract737 = extractelement <4 x float> %output_acc.sroa.0.2, i64 0, !dbg !46
  %div = fdiv contract float %output_acc.sroa.0.0.vec.extract737, %denominator.sroa.0.1, !dbg !47
  %output_acc.sroa.0.4.vec.extract746 = extractelement <4 x float> %output_acc.sroa.0.2, i64 1, !dbg !46
  %div.1 = fdiv contract float %output_acc.sroa.0.4.vec.extract746, %denominator.sroa.0.1, !dbg !47
  %output_acc.sroa.0.8.vec.extract755 = extractelement <4 x float> %output_acc.sroa.0.2, i64 2, !dbg !46
  %div.2 = fdiv contract float %output_acc.sroa.0.8.vec.extract755, %denominator.sroa.0.1, !dbg !47
  %output_acc.sroa.0.12.vec.extract764 = extractelement <4 x float> %output_acc.sroa.0.2, i64 3, !dbg !46
  %div.3 = fdiv contract float %output_acc.sroa.0.12.vec.extract764, %denominator.sroa.0.1, !dbg !47
  %output_acc.sroa.28.16.vec.extract774 = extractelement <4 x float> %output_acc.sroa.28.2, i64 0, !dbg !46
  %div.4 = fdiv contract float %output_acc.sroa.28.16.vec.extract774, %denominator.sroa.0.1, !dbg !47
  %output_acc.sroa.28.20.vec.extract783 = extractelement <4 x float> %output_acc.sroa.28.2, i64 1, !dbg !46
  %div.5 = fdiv contract float %output_acc.sroa.28.20.vec.extract783, %denominator.sroa.0.1, !dbg !47
  %output_acc.sroa.28.24.vec.extract792 = extractelement <4 x float> %output_acc.sroa.28.2, i64 2, !dbg !46
  %div.6 = fdiv contract float %output_acc.sroa.28.24.vec.extract792, %denominator.sroa.0.1, !dbg !47
  %output_acc.sroa.28.28.vec.extract801 = extractelement <4 x float> %output_acc.sroa.28.2, i64 3, !dbg !46
  %div.7 = fdiv contract float %output_acc.sroa.28.28.vec.extract801, %denominator.sroa.0.1, !dbg !47
  %output_acc.sroa.54.32.vec.extract811 = extractelement <4 x float> %output_acc.sroa.54.2, i64 0, !dbg !46
  %div.8 = fdiv contract float %output_acc.sroa.54.32.vec.extract811, %denominator.sroa.0.1, !dbg !47
  %output_acc.sroa.54.36.vec.extract820 = extractelement <4 x float> %output_acc.sroa.54.2, i64 1, !dbg !46
  %div.9 = fdiv contract float %output_acc.sroa.54.36.vec.extract820, %denominator.sroa.0.1, !dbg !47
  %output_acc.sroa.54.40.vec.extract829 = extractelement <4 x float> %output_acc.sroa.54.2, i64 2, !dbg !46
  %div.10 = fdiv contract float %output_acc.sroa.54.40.vec.extract829, %denominator.sroa.0.1, !dbg !47
  %output_acc.sroa.54.44.vec.extract838 = extractelement <4 x float> %output_acc.sroa.54.2, i64 3, !dbg !46
  %div.11 = fdiv contract float %output_acc.sroa.54.44.vec.extract838, %denominator.sroa.0.1, !dbg !47
  %output_acc.sroa.80.48.vec.extract848 = extractelement <4 x float> %output_acc.sroa.80.2, i64 0, !dbg !46
  %div.12 = fdiv contract float %output_acc.sroa.80.48.vec.extract848, %denominator.sroa.0.1, !dbg !47
  %output_acc.sroa.80.52.vec.extract857 = extractelement <4 x float> %output_acc.sroa.80.2, i64 1, !dbg !46
  %div.13 = fdiv contract float %output_acc.sroa.80.52.vec.extract857, %denominator.sroa.0.1, !dbg !47
  %output_acc.sroa.80.56.vec.extract866 = extractelement <4 x float> %output_acc.sroa.80.2, i64 2, !dbg !46
  %div.14 = fdiv contract float %output_acc.sroa.80.56.vec.extract866, %denominator.sroa.0.1, !dbg !47
  %output_acc.sroa.80.60.vec.extract875 = extractelement <4 x float> %output_acc.sroa.80.2, i64 3, !dbg !46
  %div.15 = fdiv contract float %output_acc.sroa.80.60.vec.extract875, %denominator.sroa.0.1, !dbg !47
  fence syncscope("block") release, !dbg !48
  tail call void @llvm.mxc.barrier(), !dbg !54
  fence syncscope("block") acquire, !dbg !55
  %invariant.gep640 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul14, !dbg !56
  %21 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !57
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !57, !noalias !65
  %22 = fptrunc float %div to half, !dbg !57
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %21), !dbg !57, !noalias !65
  %23 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !70
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !70, !noalias !65
  %24 = fptrunc float %div.1 to half, !dbg !70
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %23), !dbg !70, !noalias !65
  %25 = bitcast half %22 to i16, !dbg !72
  %26 = bitcast half %24 to i16, !dbg !75
  %27 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !76, !noalias !80
  %28 = fptrunc float %div.2 to half, !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %27), !dbg !76, !noalias !80
  %29 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !85
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !85, !noalias !80
  %30 = fptrunc float %div.3 to half, !dbg !85
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %29), !dbg !85, !noalias !80
  %31 = bitcast half %28 to i16, !dbg !87
  %32 = bitcast half %30 to i16, !dbg !89
  %__2.sroa.6.0.insert.ext = zext i16 %32 to i64, !dbg !90
  %__2.sroa.6.0.insert.shift = shl nuw i64 %__2.sroa.6.0.insert.ext, 48, !dbg !90
  %__2.sroa.5.0.insert.ext = zext i16 %31 to i64, !dbg !90
  %__2.sroa.5.0.insert.shift = shl nuw nsw i64 %__2.sroa.5.0.insert.ext, 32, !dbg !90
  %__2.sroa.5.0.insert.insert = or disjoint i64 %__2.sroa.6.0.insert.shift, %__2.sroa.5.0.insert.shift, !dbg !90
  %__2.sroa.4.0.insert.ext = zext i16 %26 to i64, !dbg !90
  %__2.sroa.4.0.insert.shift = shl nuw nsw i64 %__2.sroa.4.0.insert.ext, 16, !dbg !90
  %__2.sroa.4.0.insert.insert = or disjoint i64 %__2.sroa.5.0.insert.insert, %__2.sroa.4.0.insert.shift, !dbg !90
  %__2.sroa.0.0.insert.ext = zext i16 %25 to i64, !dbg !90
  %__2.sroa.0.0.insert.insert = or disjoint i64 %__2.sroa.4.0.insert.insert, %__2.sroa.0.0.insert.ext, !dbg !90
  %gep641 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep640, i32 %mul9, !dbg !91
  store i64 %__2.sroa.0.0.insert.insert, ptr addrspace(3) %gep641, align 8, !dbg !92
  %33 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !57
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !57, !noalias !65
  %34 = fptrunc float %div.4 to half, !dbg !57
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %33), !dbg !57, !noalias !65
  %35 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !70
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !70, !noalias !65
  %36 = fptrunc float %div.5 to half, !dbg !70
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %35), !dbg !70, !noalias !65
  %37 = bitcast half %34 to i16, !dbg !72
  %38 = bitcast half %36 to i16, !dbg !75
  %39 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !76, !noalias !80
  %40 = fptrunc float %div.6 to half, !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %39), !dbg !76, !noalias !80
  %41 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !85
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !85, !noalias !80
  %42 = fptrunc float %div.7 to half, !dbg !85
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %41), !dbg !85, !noalias !80
  %43 = bitcast half %40 to i16, !dbg !87
  %44 = bitcast half %42 to i16, !dbg !89
  %__2.sroa.6.0.insert.ext.1 = zext i16 %44 to i64, !dbg !90
  %__2.sroa.6.0.insert.shift.1 = shl nuw i64 %__2.sroa.6.0.insert.ext.1, 48, !dbg !90
  %__2.sroa.5.0.insert.ext.1 = zext i16 %43 to i64, !dbg !90
  %__2.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.1, 32, !dbg !90
  %__2.sroa.5.0.insert.insert.1 = or disjoint i64 %__2.sroa.6.0.insert.shift.1, %__2.sroa.5.0.insert.shift.1, !dbg !90
  %__2.sroa.4.0.insert.ext.1 = zext i16 %38 to i64, !dbg !90
  %__2.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.1, 16, !dbg !90
  %__2.sroa.4.0.insert.insert.1 = or disjoint i64 %__2.sroa.5.0.insert.insert.1, %__2.sroa.4.0.insert.shift.1, !dbg !90
  %__2.sroa.0.0.insert.ext.1 = zext i16 %37 to i64, !dbg !90
  %__2.sroa.0.0.insert.insert.1 = or disjoint i64 %__2.sroa.4.0.insert.insert.1, %__2.sroa.0.0.insert.ext.1, !dbg !90
  %45 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep640, i32 32, !dbg !91
  %gep641.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %45, i32 %mul9, !dbg !91
  store i64 %__2.sroa.0.0.insert.insert.1, ptr addrspace(3) %gep641.1, align 8, !dbg !92
  %46 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !57
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !57, !noalias !65
  %47 = fptrunc float %div.8 to half, !dbg !57
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %46), !dbg !57, !noalias !65
  %48 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !70
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !70, !noalias !65
  %49 = fptrunc float %div.9 to half, !dbg !70
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %48), !dbg !70, !noalias !65
  %50 = bitcast half %47 to i16, !dbg !72
  %51 = bitcast half %49 to i16, !dbg !75
  %52 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !76, !noalias !80
  %53 = fptrunc float %div.10 to half, !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %52), !dbg !76, !noalias !80
  %54 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !85
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !85, !noalias !80
  %55 = fptrunc float %div.11 to half, !dbg !85
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %54), !dbg !85, !noalias !80
  %56 = bitcast half %53 to i16, !dbg !87
  %57 = bitcast half %55 to i16, !dbg !89
  %__2.sroa.6.0.insert.ext.2 = zext i16 %57 to i64, !dbg !90
  %__2.sroa.6.0.insert.shift.2 = shl nuw i64 %__2.sroa.6.0.insert.ext.2, 48, !dbg !90
  %__2.sroa.5.0.insert.ext.2 = zext i16 %56 to i64, !dbg !90
  %__2.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.2, 32, !dbg !90
  %__2.sroa.5.0.insert.insert.2 = or disjoint i64 %__2.sroa.6.0.insert.shift.2, %__2.sroa.5.0.insert.shift.2, !dbg !90
  %__2.sroa.4.0.insert.ext.2 = zext i16 %51 to i64, !dbg !90
  %__2.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.2, 16, !dbg !90
  %__2.sroa.4.0.insert.insert.2 = or disjoint i64 %__2.sroa.5.0.insert.insert.2, %__2.sroa.4.0.insert.shift.2, !dbg !90
  %__2.sroa.0.0.insert.ext.2 = zext i16 %50 to i64, !dbg !90
  %__2.sroa.0.0.insert.insert.2 = or disjoint i64 %__2.sroa.4.0.insert.insert.2, %__2.sroa.0.0.insert.ext.2, !dbg !90
  %58 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep640, i32 64, !dbg !91
  %gep641.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) %58, i32 %mul9, !dbg !91
  store i64 %__2.sroa.0.0.insert.insert.2, ptr addrspace(3) %gep641.2, align 8, !dbg !92
  %59 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !57
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !57, !noalias !65
  %60 = fptrunc float %div.12 to half, !dbg !57
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %59), !dbg !57, !noalias !65
  %61 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !70
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !70, !noalias !65
  %62 = fptrunc float %div.13 to half, !dbg !70
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %61), !dbg !70, !noalias !65
  %63 = bitcast half %60 to i16, !dbg !72
  %64 = bitcast half %62 to i16, !dbg !75
  %65 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !76, !noalias !80
  %66 = fptrunc float %div.14 to half, !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %65), !dbg !76, !noalias !80
  %67 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !85
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !85, !noalias !80
  %68 = fptrunc float %div.15 to half, !dbg !85
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %67), !dbg !85, !noalias !80
  %69 = bitcast half %66 to i16, !dbg !87
  %70 = bitcast half %68 to i16, !dbg !89
  %__2.sroa.6.0.insert.ext.3 = zext i16 %70 to i64, !dbg !90
  %__2.sroa.6.0.insert.shift.3 = shl nuw i64 %__2.sroa.6.0.insert.ext.3, 48, !dbg !90
  %__2.sroa.5.0.insert.ext.3 = zext i16 %69 to i64, !dbg !90
  %__2.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.3, 32, !dbg !90
  %__2.sroa.5.0.insert.insert.3 = or disjoint i64 %__2.sroa.6.0.insert.shift.3, %__2.sroa.5.0.insert.shift.3, !dbg !90
  %__2.sroa.4.0.insert.ext.3 = zext i16 %64 to i64, !dbg !90
  %__2.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.3, 16, !dbg !90
  %__2.sroa.4.0.insert.insert.3 = or disjoint i64 %__2.sroa.5.0.insert.insert.3, %__2.sroa.4.0.insert.shift.3, !dbg !90
  %__2.sroa.0.0.insert.ext.3 = zext i16 %63 to i64, !dbg !90
  %__2.sroa.0.0.insert.insert.3 = or disjoint i64 %__2.sroa.4.0.insert.insert.3, %__2.sroa.0.0.insert.ext.3, !dbg !90
  %71 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep640, i32 96, !dbg !91
  %gep641.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) %71, i32 %mul9, !dbg !91
  store i64 %__2.sroa.0.0.insert.insert.3, ptr addrspace(3) %gep641.3, align 8, !dbg !92
  fence syncscope("block") release, !dbg !93
  tail call void @llvm.mxc.barrier(), !dbg !96
  fence syncscope("block") acquire, !dbg !97
  %invariant.gep643 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %12, !dbg !98
  %add444 = add nuw nsw i32 %add, %12
  %72 = zext nneg i32 %add444 to i64, !dbg !99
  %add.ptr449 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %72, !dbg !100
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr449, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep643, i64 16, i1 false), !dbg !101, !tbaa.struct !102, !call_argsrelate !103
  %gep644.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep643, i32 1024, !dbg !104
  %73 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %72, !dbg !100
  %add.ptr449.1 = getelementptr inbounds i8, ptr addrspace(1) %73, i64 1024, !dbg !100
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr449.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep644.1, i64 16, i1 false), !dbg !101, !tbaa.struct !102, !call_argsrelate !103
  ret void, !dbg !105

for.body38:                                       ; preds = %entry, %if.end376
  %output_acc.sroa.80.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.80.2, %if.end376 ], !dbg !106
  %output_acc.sroa.54.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.54.2, %if.end376 ], !dbg !106
  %output_acc.sroa.28.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.28.2, %if.end376 ], !dbg !106
  %output_acc.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.0.2, %if.end376 ], !dbg !106
  %scores.sroa.0.0 = phi <4 x float> [ undef, %entry ], [ %scores.sroa.0.2, %if.end376 ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end376 ]
  %denominator.sroa.0.0636 = phi float [ 0.000000e+00, %entry ], [ %denominator.sroa.0.1, %if.end376 ]
  %block_max.sroa.0.0635 = phi float [ 0xFFF0000000000000, %entry ], [ %block_max.sroa.0.3, %if.end376 ]
  %previous_max.sroa.0.0634 = phi float [ undef, %entry ], [ %previous_max.sroa.0.1, %if.end376 ]
  %scores_half.sroa.0.0633 = phi <4 x half> [ undef, %entry ], [ %scores_half.sroa.0.1, %if.end376 ]
  %gep = getelementptr inbounds i32, ptr addrspace(1) %invariant.gep884, i64 %indvars.iv, !dbg !107
  %74 = load i32, ptr addrspace(1) %gep, align 4, !dbg !107, !tbaa !30
  %mul46 = shl nsw i32 %74, 4, !dbg !108
  %cmp47 = icmp slt i32 %74, 0, !dbg !109
  %cmp49.not = icmp sgt i32 %mul46, %1
  %or.cond = select i1 %cmp47, i1 true, i1 %cmp49.not, !dbg !110
  br i1 %or.cond, label %if.end144, label %if.then, !dbg !110

if.then:                                          ; preds = %for.body38
  %add60 = or disjoint i32 %mul46, %and59
  %cmp61 = icmp slt i32 %add60, 1024
  %conv65 = zext nneg i32 %mul46 to i64
  %mul66 = shl nuw nsw i64 %conv65, 6
  %add67 = add nuw nsw i64 %mul66, %mul64
  %add72 = or disjoint i64 %add67, %mul71
  br i1 %cmp61, label %if.then62, label %if.end, !dbg !111

if.then62:                                        ; preds = %if.then
  %75 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add72, !dbg !112
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %75, align 8, !dbg !113, !tbaa !30
  %condval.sroa.5.0.add.ptr81.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %75, i64 4, !dbg !113
  %condval.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr81.sroa_idx, align 4, !dbg !113, !tbaa !30
  br label %if.end, !dbg !114

if.end:                                           ; preds = %if.then, %if.then62
  %condval.sroa.0.0 = phi i32 [ %condval.sroa.0.0.copyload, %if.then62 ], [ 0, %if.then ], !dbg !115
  %condval.sroa.5.0 = phi i32 [ %condval.sroa.5.0.copyload, %if.then62 ], [ 0, %if.then ], !dbg !115
  %k_local.sroa.0.0.vec.insert = insertelement <2 x i32> poison, i32 %condval.sroa.0.0, i64 0, !dbg !116
  %k_local.sroa.0.4.vec.insert = insertelement <2 x i32> %k_local.sroa.0.0.vec.insert, i32 %condval.sroa.5.0, i64 1, !dbg !116
  br i1 %cmp61, label %if.then62.1, label %if.end.1, !dbg !111

if.then62.1:                                      ; preds = %if.end
  %76 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add72, !dbg !112
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %76, i64 32, !dbg !112
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep.1, align 8, !dbg !113, !tbaa !30
  %condval.sroa.5.0.add.ptr81.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %76, i64 36, !dbg !113
  %condval.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr81.sroa_idx.1, align 4, !dbg !113, !tbaa !30
  br label %if.end.1, !dbg !114

if.end.1:                                         ; preds = %if.then62.1, %if.end
  %condval.sroa.0.0.1 = phi i32 [ %condval.sroa.0.0.copyload.1, %if.then62.1 ], [ 0, %if.end ], !dbg !115
  %condval.sroa.5.0.1 = phi i32 [ %condval.sroa.5.0.copyload.1, %if.then62.1 ], [ 0, %if.end ], !dbg !115
  %k_local.sroa.5.8.vec.insert = insertelement <2 x i32> poison, i32 %condval.sroa.0.0.1, i64 0, !dbg !116
  %k_local.sroa.5.12.vec.insert = insertelement <2 x i32> %k_local.sroa.5.8.vec.insert, i32 %condval.sroa.5.0.1, i64 1, !dbg !116
  br i1 %cmp61, label %if.then62.2, label %if.end.2, !dbg !111

if.then62.2:                                      ; preds = %if.end.1
  %77 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add72, !dbg !112
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %77, i64 64, !dbg !112
  %condval.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %gep.2, align 8, !dbg !113, !tbaa !30
  %condval.sroa.5.0.add.ptr81.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %77, i64 68, !dbg !113
  %condval.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr81.sroa_idx.2, align 4, !dbg !113, !tbaa !30
  br label %if.end.2, !dbg !114

if.end.2:                                         ; preds = %if.then62.2, %if.end.1
  %condval.sroa.0.0.2 = phi i32 [ %condval.sroa.0.0.copyload.2, %if.then62.2 ], [ 0, %if.end.1 ], !dbg !115
  %condval.sroa.5.0.2 = phi i32 [ %condval.sroa.5.0.copyload.2, %if.then62.2 ], [ 0, %if.end.1 ], !dbg !115
  %k_local.sroa.8.16.vec.insert = insertelement <2 x i32> poison, i32 %condval.sroa.0.0.2, i64 0, !dbg !116
  %k_local.sroa.8.20.vec.insert = insertelement <2 x i32> %k_local.sroa.8.16.vec.insert, i32 %condval.sroa.5.0.2, i64 1, !dbg !116
  br i1 %cmp61, label %if.then62.3, label %if.end.3, !dbg !111

if.then62.3:                                      ; preds = %if.end.2
  %78 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add72, !dbg !112
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %78, i64 96, !dbg !112
  %condval.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %gep.3, align 8, !dbg !113, !tbaa !30
  %condval.sroa.5.0.add.ptr81.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %78, i64 100, !dbg !113
  %condval.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr81.sroa_idx.3, align 4, !dbg !113, !tbaa !30
  br label %if.end.3, !dbg !114

if.end.3:                                         ; preds = %if.then62.3, %if.end.2
  %condval.sroa.0.0.3 = phi i32 [ %condval.sroa.0.0.copyload.3, %if.then62.3 ], [ 0, %if.end.2 ], !dbg !115
  %condval.sroa.5.0.3 = phi i32 [ %condval.sroa.5.0.copyload.3, %if.then62.3 ], [ 0, %if.end.2 ], !dbg !115
  %k_local.sroa.11.24.vec.insert = insertelement <2 x i32> poison, i32 %condval.sroa.0.0.3, i64 0, !dbg !116
  %k_local.sroa.11.28.vec.insert = insertelement <2 x i32> %k_local.sroa.11.24.vec.insert, i32 %condval.sroa.5.0.3, i64 1, !dbg !116
  %79 = bitcast <2 x i32> %k_local.sroa.0.4.vec.insert to <4 x half>, !dbg !117
  %80 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %79, <4 x half> %5, <4 x float> zeroinitializer), !dbg !118, !call_argsrelate !119
  %81 = bitcast <2 x i32> %k_local.sroa.5.12.vec.insert to <4 x half>, !dbg !117
  %82 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %81, <4 x half> %7, <4 x float> %80), !dbg !118, !call_argsrelate !119
  %83 = bitcast <2 x i32> %k_local.sroa.8.20.vec.insert to <4 x half>, !dbg !117
  %84 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %83, <4 x half> %9, <4 x float> %82), !dbg !118, !call_argsrelate !119
  %85 = bitcast <2 x i32> %k_local.sroa.11.28.vec.insert to <4 x half>, !dbg !117
  %86 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %85, <4 x half> %11, <4 x float> %84), !dbg !118, !call_argsrelate !119
  %add123 = add nuw nsw i32 %mul46, %mul14
  %cmp126.not = icmp sgt i32 %add123, %1, !dbg !120
  %scores.sroa.0.0.vec.extract682 = extractelement <4 x float> %86, i64 0
  %spec.select = select i1 %cmp126.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract682, !dbg !121
  %scores.sroa.0.0.vec.insert684 = insertelement <4 x float> poison, float %spec.select, i64 0, !dbg !122
  %cmp126.not.1.not = icmp slt i32 %add123, %1, !dbg !120
  %scores.sroa.0.4.vec.extract695 = extractelement <4 x float> %86, i64 1, !dbg !121
  %condval_1.0.1 = select i1 %cmp126.not.1.not, float %scores.sroa.0.4.vec.extract695, float 0xFFF0000000000000, !dbg !121
  %scores.sroa.0.4.vec.insert697 = insertelement <4 x float> %scores.sroa.0.0.vec.insert684, float %condval_1.0.1, i64 1, !dbg !122
  %add124.2 = or disjoint i32 %add123, 2, !dbg !123
  %cmp126.not.2 = icmp sgt i32 %add124.2, %1, !dbg !120
  %scores.sroa.0.8.vec.extract708 = extractelement <4 x float> %86, i64 2, !dbg !121
  %condval_1.0.2 = select i1 %cmp126.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract708, !dbg !121
  %scores.sroa.0.8.vec.insert710 = insertelement <4 x float> %scores.sroa.0.4.vec.insert697, float %condval_1.0.2, i64 2, !dbg !122
  %add124.3 = or disjoint i32 %add123, 3, !dbg !123
  %cmp126.not.3 = icmp sgt i32 %add124.3, %1, !dbg !120
  %scores.sroa.0.12.vec.extract721 = extractelement <4 x float> %86, i64 3, !dbg !121
  %condval_1.0.3 = select i1 %cmp126.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract721, !dbg !121
  %scores.sroa.0.12.vec.insert723 = insertelement <4 x float> %scores.sroa.0.8.vec.insert710, float %condval_1.0.3, i64 3, !dbg !122
  br label %if.end144, !dbg !124

if.end144:                                        ; preds = %if.end.3, %for.body38
  %scores.sroa.0.1 = phi <4 x float> [ %scores.sroa.0.0, %for.body38 ], [ %scores.sroa.0.12.vec.insert723, %if.end.3 ]
  %previous_max.sroa.0.1 = phi float [ %previous_max.sroa.0.0634, %for.body38 ], [ %block_max.sroa.0.0635, %if.end.3 ]
  %block_max.sroa.0.1 = phi float [ %block_max.sroa.0.0635, %for.body38 ], [ 0xFFF0000000000000, %if.end.3 ], !dbg !115
  fence syncscope("block") release, !dbg !124
  tail call void @llvm.mxc.barrier(), !dbg !127
  fence syncscope("block") acquire, !dbg !128
  br i1 %or.cond, label %if.end239, label %for.body156.preheader, !dbg !129

for.body156.preheader:                            ; preds = %if.end144
  %scores.sroa.0.0.vec.extract686 = extractelement <4 x float> %scores.sroa.0.1, i64 0, !dbg !130
  %87 = tail call contract noundef float @llvm.maxnum.f32(float %scores.sroa.0.0.vec.extract686, float 0xFFF0000000000000), !dbg !131
  %scores.sroa.0.4.vec.extract699 = extractelement <4 x float> %scores.sroa.0.1, i64 1, !dbg !130
  %88 = tail call contract noundef float @llvm.maxnum.f32(float %87, float %scores.sroa.0.4.vec.extract699), !dbg !131
  %scores.sroa.0.8.vec.extract712 = extractelement <4 x float> %scores.sroa.0.1, i64 2, !dbg !130
  %89 = tail call contract noundef float @llvm.maxnum.f32(float %88, float %scores.sroa.0.8.vec.extract712), !dbg !131
  %scores.sroa.0.12.vec.extract725 = extractelement <4 x float> %scores.sroa.0.1, i64 3, !dbg !130
  %90 = tail call contract noundef float @llvm.maxnum.f32(float %89, float %scores.sroa.0.12.vec.extract725), !dbg !131
  %91 = bitcast float %90 to i32, !dbg !135
  %92 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !144
  %93 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %92) #11, !dbg !149
  %xor.i.i.i = xor i32 %93, 32, !dbg !150
  %94 = and i32 %93, -64, !dbg !151
  %and.i.i.i = add nsw i32 %94, 64, !dbg !151
  %cmp.not.i.i.i = icmp slt i32 %xor.i.i.i, %and.i.i.i, !dbg !152
  %cond.i.i.i = select i1 %cmp.not.i.i.i, i32 %xor.i.i.i, i32 %93, !dbg !153
  %shl.i.i.i = shl i32 %cond.i.i.i, 2, !dbg !154
  %95 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i, i32 %91), !dbg !155
  %96 = bitcast i32 %95 to float, !dbg !156
  %97 = tail call contract noundef float @llvm.maxnum.f32(float %90, float %96), !dbg !157
  %98 = bitcast float %97 to i32, !dbg !165
  %99 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !170
  %100 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %99) #11, !dbg !173
  %xor.i.i.i.i = xor i32 %100, 16, !dbg !174
  %101 = and i32 %100, -64, !dbg !175
  %and.i.i.i.i = add nsw i32 %101, 64, !dbg !175
  %cmp.not.i.i.i.i = icmp slt i32 %xor.i.i.i.i, %and.i.i.i.i, !dbg !176
  %cond.i.i.i.i = select i1 %cmp.not.i.i.i.i, i32 %xor.i.i.i.i, i32 %100, !dbg !177
  %shl.i.i.i.i = shl i32 %cond.i.i.i.i, 2, !dbg !178
  %102 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i, i32 %98), !dbg !179
  %103 = bitcast i32 %102 to float, !dbg !180
  %104 = tail call contract noundef float @llvm.maxnum.f32(float %97, float %103), !dbg !181
  %mul169 = fmul contract float %previous_max.sroa.0.1, 0x3FC7154760000000, !dbg !185
  %mul171 = fmul contract float %104, 0x3FC7154760000000, !dbg !186
  %sub = fsub contract float %mul169, %mul171, !dbg !187
  %cmp.i.i = fcmp contract olt float %sub, -1.260000e+02, !dbg !188
  %cond.i.i = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !188
  %add.i.i = fadd contract float %sub, %cond.i.i, !dbg !188
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !188
  %mul180 = fmul contract float %scores.sroa.0.0.vec.extract686, 0x3FC7154760000000, !dbg !191
  %sub183 = fsub contract float %mul180, %mul171, !dbg !192
  %cmp.i.i562 = fcmp contract olt float %sub183, -1.260000e+02, !dbg !193
  %cond.i.i563 = select contract i1 %cmp.i.i562, float 6.400000e+01, float 0.000000e+00, !dbg !193
  %add.i.i564 = fadd contract float %sub183, %cond.i.i563, !dbg !193
  %105 = tail call contract float @llvm.exp2.f32(float %add.i.i564), !dbg !193
  %cond2.i.i565 = select contract i1 %cmp.i.i562, float 0x3BF0000000000000, float 1.000000e+00, !dbg !193
  %mul.i.i566 = fmul contract float %cond2.i.i565, %105, !dbg !193
  %scores.sroa.0.0.vec.insert690 = insertelement <4 x float> poison, float %mul.i.i566, i64 0, !dbg !195
  %scores.sroa.0.4.vec.extract701 = extractelement <4 x float> %scores.sroa.0.1, i64 1, !dbg !196
  %mul180.1 = fmul contract float %scores.sroa.0.4.vec.extract701, 0x3FC7154760000000, !dbg !191
  %sub183.1 = fsub contract float %mul180.1, %mul171, !dbg !192
  %cmp.i.i562.1 = fcmp contract olt float %sub183.1, -1.260000e+02, !dbg !193
  %cond.i.i563.1 = select contract i1 %cmp.i.i562.1, float 6.400000e+01, float 0.000000e+00, !dbg !193
  %add.i.i564.1 = fadd contract float %sub183.1, %cond.i.i563.1, !dbg !193
  %106 = tail call contract float @llvm.exp2.f32(float %add.i.i564.1), !dbg !193
  %cond2.i.i565.1 = select contract i1 %cmp.i.i562.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !193
  %mul.i.i566.1 = fmul contract float %cond2.i.i565.1, %106, !dbg !193
  %scores.sroa.0.4.vec.insert703 = insertelement <4 x float> %scores.sroa.0.0.vec.insert690, float %mul.i.i566.1, i64 1, !dbg !195
  %scores.sroa.0.8.vec.extract714 = extractelement <4 x float> %scores.sroa.0.1, i64 2, !dbg !196
  %mul180.2 = fmul contract float %scores.sroa.0.8.vec.extract714, 0x3FC7154760000000, !dbg !191
  %sub183.2 = fsub contract float %mul180.2, %mul171, !dbg !192
  %cmp.i.i562.2 = fcmp contract olt float %sub183.2, -1.260000e+02, !dbg !193
  %cond.i.i563.2 = select contract i1 %cmp.i.i562.2, float 6.400000e+01, float 0.000000e+00, !dbg !193
  %add.i.i564.2 = fadd contract float %sub183.2, %cond.i.i563.2, !dbg !193
  %107 = tail call contract float @llvm.exp2.f32(float %add.i.i564.2), !dbg !193
  %cond2.i.i565.2 = select contract i1 %cmp.i.i562.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !193
  %mul.i.i566.2 = fmul contract float %cond2.i.i565.2, %107, !dbg !193
  %scores.sroa.0.8.vec.insert716 = insertelement <4 x float> %scores.sroa.0.4.vec.insert703, float %mul.i.i566.2, i64 2, !dbg !195
  %scores.sroa.0.12.vec.extract727 = extractelement <4 x float> %scores.sroa.0.1, i64 3, !dbg !196
  %mul180.3 = fmul contract float %scores.sroa.0.12.vec.extract727, 0x3FC7154760000000, !dbg !191
  %sub183.3 = fsub contract float %mul180.3, %mul171, !dbg !192
  %cmp.i.i562.3 = fcmp contract olt float %sub183.3, -1.260000e+02, !dbg !193
  %cond.i.i563.3 = select contract i1 %cmp.i.i562.3, float 6.400000e+01, float 0.000000e+00, !dbg !193
  %add.i.i564.3 = fadd contract float %sub183.3, %cond.i.i563.3, !dbg !193
  %108 = tail call contract float @llvm.exp2.f32(float %add.i.i564.3), !dbg !193
  %cond2.i.i565.3 = select contract i1 %cmp.i.i562.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !193
  %mul.i.i566.3 = fmul contract float %cond2.i.i565.3, %108, !dbg !193
  %scores.sroa.0.12.vec.insert729 = insertelement <4 x float> %scores.sroa.0.8.vec.insert716, float %mul.i.i566.3, i64 3, !dbg !195
  %109 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !188
  %add198 = fadd contract float %mul.i.i566, 0.000000e+00, !dbg !197
  %add198.1 = fadd contract float %add198, %mul.i.i566.1, !dbg !197
  %add198.2 = fadd contract float %add198.1, %mul.i.i566.2, !dbg !197
  %add198.3 = fadd contract float %add198.2, %mul.i.i566.3, !dbg !197
  %mul.i.i = fmul contract float %cond2.i.i, %109, !dbg !188
  %110 = bitcast float %add198.3 to i32, !dbg !198
  %111 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !203
  %112 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %111) #11, !dbg !206
  %xor.i.i.i567 = xor i32 %112, 32, !dbg !207
  %113 = and i32 %112, -64, !dbg !208
  %and.i.i.i568 = add nsw i32 %113, 64, !dbg !208
  %cmp.not.i.i.i569 = icmp slt i32 %xor.i.i.i567, %and.i.i.i568, !dbg !209
  %cond.i.i.i570 = select i1 %cmp.not.i.i.i569, i32 %xor.i.i.i567, i32 %112, !dbg !210
  %shl.i.i.i571 = shl i32 %cond.i.i.i570, 2, !dbg !211
  %114 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i571, i32 %110), !dbg !212
  %115 = bitcast i32 %114 to float, !dbg !213
  %add.i.i572 = fadd contract float %add198.3, %115, !dbg !214
  %116 = bitcast float %add.i.i572 to i32, !dbg !217
  %117 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !222
  %118 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %117) #11, !dbg !225
  %xor.i.i.i.i573 = xor i32 %118, 16, !dbg !226
  %119 = and i32 %118, -64, !dbg !227
  %and.i.i.i.i574 = add nsw i32 %119, 64, !dbg !227
  %cmp.not.i.i.i.i575 = icmp slt i32 %xor.i.i.i.i573, %and.i.i.i.i574, !dbg !228
  %cond.i.i.i.i576 = select i1 %cmp.not.i.i.i.i575, i32 %xor.i.i.i.i573, i32 %118, !dbg !229
  %shl.i.i.i.i577 = shl i32 %cond.i.i.i.i576, 2, !dbg !230
  %120 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i577, i32 %116), !dbg !231
  %121 = bitcast i32 %120 to float, !dbg !232
  %mul208 = fmul contract float %denominator.sroa.0.0636, %mul.i.i, !dbg !233
  %122 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !234
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !234, !noalias !238
  %123 = fptrunc float %mul.i.i566 to half, !dbg !234
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %122), !dbg !234, !noalias !238
  %124 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !243
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !243, !noalias !238
  %125 = fptrunc float %mul.i.i566.1 to half, !dbg !243
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %124), !dbg !243, !noalias !238
  %__1.sroa.0.0.vec.insert = insertelement <4 x half> poison, half %123, i64 0, !dbg !245
  %__1.sroa.0.2.vec.insert = insertelement <4 x half> %__1.sroa.0.0.vec.insert, half %125, i64 1, !dbg !245
  %126 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !248, !noalias !252
  %127 = fptrunc float %mul.i.i566.2 to half, !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %126), !dbg !248, !noalias !252
  %128 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %128), !dbg !257, !noalias !252
  %__1.sroa.0.4.vec.insert = insertelement <4 x half> %__1.sroa.0.2.vec.insert, half %127, i64 2, !dbg !259
  %output_acc.sroa.0.0.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 0, !dbg !261
  %mul233 = fmul contract float %mul.i.i, %output_acc.sroa.0.0.vec.extract, !dbg !262
  %output_acc.sroa.0.0.vec.insert735 = insertelement <4 x float> poison, float %mul233, i64 0, !dbg !263
  %output_acc.sroa.0.4.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 1, !dbg !261
  %mul233.1 = fmul contract float %mul.i.i, %output_acc.sroa.0.4.vec.extract, !dbg !262
  %output_acc.sroa.0.4.vec.insert744 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert735, float %mul233.1, i64 1, !dbg !263
  %output_acc.sroa.0.8.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 2, !dbg !261
  %mul233.2 = fmul contract float %mul.i.i, %output_acc.sroa.0.8.vec.extract, !dbg !262
  %output_acc.sroa.0.8.vec.insert753 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert744, float %mul233.2, i64 2, !dbg !263
  %output_acc.sroa.0.12.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 3, !dbg !261
  %mul233.3 = fmul contract float %mul.i.i, %output_acc.sroa.0.12.vec.extract, !dbg !262
  %output_acc.sroa.0.12.vec.insert762 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert753, float %mul233.3, i64 3, !dbg !263
  %output_acc.sroa.28.16.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 0, !dbg !261
  %mul233.4 = fmul contract float %mul.i.i, %output_acc.sroa.28.16.vec.extract, !dbg !262
  %output_acc.sroa.28.16.vec.insert772 = insertelement <4 x float> poison, float %mul233.4, i64 0, !dbg !263
  %output_acc.sroa.28.20.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 1, !dbg !261
  %mul233.5 = fmul contract float %mul.i.i, %output_acc.sroa.28.20.vec.extract, !dbg !262
  %output_acc.sroa.28.20.vec.insert781 = insertelement <4 x float> %output_acc.sroa.28.16.vec.insert772, float %mul233.5, i64 1, !dbg !263
  %output_acc.sroa.28.24.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 2, !dbg !261
  %mul233.6 = fmul contract float %mul.i.i, %output_acc.sroa.28.24.vec.extract, !dbg !262
  %output_acc.sroa.28.24.vec.insert790 = insertelement <4 x float> %output_acc.sroa.28.20.vec.insert781, float %mul233.6, i64 2, !dbg !263
  %output_acc.sroa.28.28.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 3, !dbg !261
  %mul233.7 = fmul contract float %mul.i.i, %output_acc.sroa.28.28.vec.extract, !dbg !262
  %output_acc.sroa.28.28.vec.insert799 = insertelement <4 x float> %output_acc.sroa.28.24.vec.insert790, float %mul233.7, i64 3, !dbg !263
  %output_acc.sroa.54.32.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 0, !dbg !261
  %mul233.8 = fmul contract float %mul.i.i, %output_acc.sroa.54.32.vec.extract, !dbg !262
  %output_acc.sroa.54.32.vec.insert809 = insertelement <4 x float> poison, float %mul233.8, i64 0, !dbg !263
  %output_acc.sroa.54.36.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 1, !dbg !261
  %mul233.9 = fmul contract float %mul.i.i, %output_acc.sroa.54.36.vec.extract, !dbg !262
  %output_acc.sroa.54.36.vec.insert818 = insertelement <4 x float> %output_acc.sroa.54.32.vec.insert809, float %mul233.9, i64 1, !dbg !263
  %output_acc.sroa.54.40.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 2, !dbg !261
  %mul233.10 = fmul contract float %mul.i.i, %output_acc.sroa.54.40.vec.extract, !dbg !262
  %output_acc.sroa.54.40.vec.insert827 = insertelement <4 x float> %output_acc.sroa.54.36.vec.insert818, float %mul233.10, i64 2, !dbg !263
  %output_acc.sroa.54.44.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 3, !dbg !261
  %mul233.11 = fmul contract float %mul.i.i, %output_acc.sroa.54.44.vec.extract, !dbg !262
  %output_acc.sroa.54.44.vec.insert836 = insertelement <4 x float> %output_acc.sroa.54.40.vec.insert827, float %mul233.11, i64 3, !dbg !263
  %output_acc.sroa.80.48.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 0, !dbg !261
  %mul233.12 = fmul contract float %mul.i.i, %output_acc.sroa.80.48.vec.extract, !dbg !262
  %output_acc.sroa.80.48.vec.insert846 = insertelement <4 x float> poison, float %mul233.12, i64 0, !dbg !263
  %output_acc.sroa.80.52.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 1, !dbg !261
  %mul233.13 = fmul contract float %mul.i.i, %output_acc.sroa.80.52.vec.extract, !dbg !262
  %output_acc.sroa.80.52.vec.insert855 = insertelement <4 x float> %output_acc.sroa.80.48.vec.insert846, float %mul233.13, i64 1, !dbg !263
  %output_acc.sroa.80.56.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 2, !dbg !261
  %mul233.14 = fmul contract float %mul.i.i, %output_acc.sroa.80.56.vec.extract, !dbg !262
  %output_acc.sroa.80.56.vec.insert864 = insertelement <4 x float> %output_acc.sroa.80.52.vec.insert855, float %mul233.14, i64 2, !dbg !263
  %output_acc.sroa.80.60.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 3, !dbg !261
  %mul233.15 = fmul contract float %mul.i.i, %output_acc.sroa.80.60.vec.extract, !dbg !262
  %output_acc.sroa.80.60.vec.insert873 = insertelement <4 x float> %output_acc.sroa.80.56.vec.insert864, float %mul233.15, i64 3, !dbg !263
  %add.i.i.i = fadd contract float %add.i.i572, %121, !dbg !264
  %add210 = fadd contract float %mul208, %add.i.i.i, !dbg !266
  %129 = fptrunc float %mul.i.i566.3 to half, !dbg !257
  %__1.sroa.0.6.vec.insert = insertelement <4 x half> %__1.sroa.0.4.vec.insert, half %129, i64 3, !dbg !259
  br label %if.end239, !dbg !267

if.end239:                                        ; preds = %for.body156.preheader, %if.end144
  %output_acc.sroa.80.1 = phi <4 x float> [ %output_acc.sroa.80.0, %if.end144 ], [ %output_acc.sroa.80.60.vec.insert873, %for.body156.preheader ], !dbg !115
  %output_acc.sroa.54.1 = phi <4 x float> [ %output_acc.sroa.54.0, %if.end144 ], [ %output_acc.sroa.54.44.vec.insert836, %for.body156.preheader ], !dbg !115
  %output_acc.sroa.28.1 = phi <4 x float> [ %output_acc.sroa.28.0, %if.end144 ], [ %output_acc.sroa.28.28.vec.insert799, %for.body156.preheader ], !dbg !115
  %output_acc.sroa.0.1 = phi <4 x float> [ %output_acc.sroa.0.0, %if.end144 ], [ %output_acc.sroa.0.12.vec.insert762, %for.body156.preheader ], !dbg !115
  %scores.sroa.0.2 = phi <4 x float> [ %scores.sroa.0.1, %if.end144 ], [ %scores.sroa.0.12.vec.insert729, %for.body156.preheader ]
  %scores_half.sroa.0.1 = phi <4 x half> [ %scores_half.sroa.0.0633, %if.end144 ], [ %__1.sroa.0.6.vec.insert, %for.body156.preheader ]
  %block_max.sroa.0.3 = phi float [ %block_max.sroa.0.1, %if.end144 ], [ %104, %for.body156.preheader ], !dbg !115
  %denominator.sroa.0.1 = phi float [ %denominator.sroa.0.0636, %if.end144 ], [ %add210, %for.body156.preheader ], !dbg !115
  fence syncscope("block") release, !dbg !267
  tail call void @llvm.mxc.barrier(), !dbg !270
  fence syncscope("block") acquire, !dbg !271
  br i1 %or.cond, label %if.end313, label %for.cond245.preheader, !dbg !272

for.cond245.preheader:                            ; preds = %if.end239
  %add251 = add nuw nsw i32 %mul46, %shr250
  %conv262 = zext nneg i32 %mul46 to i64
  %.idx = shl nuw nsw i64 %conv262, 7
  %gep638 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep637, i64 %.idx, !dbg !273
  %cmp254 = icmp ult i32 %add251, 1024, !dbg !274
  br i1 %cmp254, label %if.then255, label %if.end293, !dbg !275

if.then255:                                       ; preds = %for.cond245.preheader
  %gep628 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep638, i64 %mul64
  %condval_2.sroa.7.0.add.ptr269.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep628, i64 12
  %condval_2.sroa.6.0.add.ptr269.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep628, i64 8
  %condval_2.sroa.5.0.add.ptr269.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep628, i64 4
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep628, align 16, !dbg !276, !tbaa !30
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr269.sroa_idx, align 4, !dbg !276, !tbaa !30
  %condval_2.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr269.sroa_idx, align 8, !dbg !276, !tbaa !30
  %condval_2.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr269.sroa_idx, align 4, !dbg !276, !tbaa !30
  br label %if.end293, !dbg !277

if.end293:                                        ; preds = %for.cond245.preheader, %if.then255
  %condval_2.sroa.7.0 = phi i32 [ %condval_2.sroa.7.0.copyload, %if.then255 ], [ 0, %for.cond245.preheader ], !dbg !115
  %condval_2.sroa.6.0 = phi i32 [ %condval_2.sroa.6.0.copyload, %if.then255 ], [ 0, %for.cond245.preheader ], !dbg !115
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then255 ], [ 0, %for.cond245.preheader ], !dbg !115
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then255 ], [ 0, %for.cond245.preheader ], !dbg !115
  store i32 %condval_2.sroa.0.0, ptr addrspace(3) %add.ptr309, align 16, !dbg !278, !tbaa !30
  store i32 %condval_2.sroa.5.0, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr309.sroa_idx, align 4, !dbg !278, !tbaa !30
  store i32 %condval_2.sroa.6.0, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr309.sroa_idx, align 8, !dbg !278, !tbaa !30
  store i32 %condval_2.sroa.7.0, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr309.sroa_idx, align 4, !dbg !278, !tbaa !30
  %cmp254.1 = icmp ult i32 %add251, 1016, !dbg !274
  br i1 %cmp254.1, label %if.then255.1, label %if.end293.1, !dbg !275

if.then255.1:                                     ; preds = %if.end293
  %gep628.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep638, i64 %add261.1
  %condval_2.sroa.7.0.add.ptr269.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep628.1, i64 12
  %condval_2.sroa.6.0.add.ptr269.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep628.1, i64 8
  %condval_2.sroa.5.0.add.ptr269.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep628.1, i64 4
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep628.1, align 16, !dbg !276, !tbaa !30
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr269.sroa_idx.1, align 4, !dbg !276, !tbaa !30
  %condval_2.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr269.sroa_idx.1, align 8, !dbg !276, !tbaa !30
  %condval_2.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr269.sroa_idx.1, align 4, !dbg !276, !tbaa !30
  br label %if.end293.1, !dbg !277

if.end293.1:                                      ; preds = %if.then255.1, %if.end293
  %condval_2.sroa.7.0.1 = phi i32 [ %condval_2.sroa.7.0.copyload.1, %if.then255.1 ], [ 0, %if.end293 ], !dbg !115
  %condval_2.sroa.6.0.1 = phi i32 [ %condval_2.sroa.6.0.copyload.1, %if.then255.1 ], [ 0, %if.end293 ], !dbg !115
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then255.1 ], [ 0, %if.end293 ], !dbg !115
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then255.1 ], [ 0, %if.end293 ], !dbg !115
  store i32 %condval_2.sroa.0.0.1, ptr addrspace(3) %add.ptr309.1, align 16, !dbg !278, !tbaa !30
  store i32 %condval_2.sroa.5.0.1, ptr addrspace(3) %condval_2.sroa.5.0.add.ptr309.sroa_idx.1, align 4, !dbg !278, !tbaa !30
  store i32 %condval_2.sroa.6.0.1, ptr addrspace(3) %condval_2.sroa.6.0.add.ptr309.sroa_idx.1, align 8, !dbg !278, !tbaa !30
  store i32 %condval_2.sroa.7.0.1, ptr addrspace(3) %condval_2.sroa.7.0.add.ptr309.sroa_idx.1, align 4, !dbg !278, !tbaa !30
  br label %if.end313, !dbg !279

if.end313:                                        ; preds = %if.end293.1, %if.end239
  fence syncscope("block") release, !dbg !279
  tail call void @llvm.mxc.barrier(), !dbg !282
  fence syncscope("block") acquire, !dbg !283
  br i1 %or.cond, label %if.end376, label %if.then318, !dbg !284

if.then318:                                       ; preds = %if.end313
  %130 = load half, ptr addrspace(3) %17, align 2, !dbg !285, !tbaa !286
  %B_local.sroa.0.0.vec.insert = insertelement <4 x half> poison, half %130, i64 0, !dbg !285
  %131 = load half, ptr addrspace(3) %arrayidx347.1, align 2, !dbg !285, !tbaa !286
  %B_local.sroa.0.2.vec.insert = insertelement <4 x half> %B_local.sroa.0.0.vec.insert, half %131, i64 1, !dbg !285
  %132 = load half, ptr addrspace(3) %arrayidx347.2, align 2, !dbg !285, !tbaa !286
  %B_local.sroa.0.4.vec.insert = insertelement <4 x half> %B_local.sroa.0.2.vec.insert, half %132, i64 2, !dbg !285
  %133 = load half, ptr addrspace(3) %arrayidx347.3, align 2, !dbg !285, !tbaa !286
  %B_local.sroa.0.6.vec.insert = insertelement <4 x half> %B_local.sroa.0.4.vec.insert, half %133, i64 3, !dbg !285
  %134 = load half, ptr addrspace(3) %18, align 2, !dbg !285, !tbaa !286
  %B_local.sroa.7.8.vec.insert = insertelement <4 x half> poison, half %134, i64 0, !dbg !285
  %135 = load half, ptr addrspace(3) %arrayidx347.1.1, align 2, !dbg !285, !tbaa !286
  %B_local.sroa.7.10.vec.insert = insertelement <4 x half> %B_local.sroa.7.8.vec.insert, half %135, i64 1, !dbg !285
  %136 = load half, ptr addrspace(3) %arrayidx347.2.1, align 2, !dbg !285, !tbaa !286
  %B_local.sroa.7.12.vec.insert = insertelement <4 x half> %B_local.sroa.7.10.vec.insert, half %136, i64 2, !dbg !285
  %137 = load half, ptr addrspace(3) %arrayidx347.3.1, align 2, !dbg !285, !tbaa !286
  %B_local.sroa.7.14.vec.insert = insertelement <4 x half> %B_local.sroa.7.12.vec.insert, half %137, i64 3, !dbg !285
  %138 = load half, ptr addrspace(3) %19, align 2, !dbg !285, !tbaa !286
  %B_local.sroa.12.16.vec.insert = insertelement <4 x half> poison, half %138, i64 0, !dbg !285
  %139 = load half, ptr addrspace(3) %arrayidx347.1.2, align 2, !dbg !285, !tbaa !286
  %B_local.sroa.12.18.vec.insert = insertelement <4 x half> %B_local.sroa.12.16.vec.insert, half %139, i64 1, !dbg !285
  %140 = load half, ptr addrspace(3) %arrayidx347.2.2, align 2, !dbg !285, !tbaa !286
  %B_local.sroa.12.20.vec.insert = insertelement <4 x half> %B_local.sroa.12.18.vec.insert, half %140, i64 2, !dbg !285
  %141 = load half, ptr addrspace(3) %arrayidx347.3.2, align 2, !dbg !285, !tbaa !286
  %B_local.sroa.12.22.vec.insert = insertelement <4 x half> %B_local.sroa.12.20.vec.insert, half %141, i64 3, !dbg !285
  %142 = load half, ptr addrspace(3) %20, align 2, !dbg !285, !tbaa !286
  %B_local.sroa.17.24.vec.insert = insertelement <4 x half> poison, half %142, i64 0, !dbg !285
  %143 = load half, ptr addrspace(3) %arrayidx347.1.3, align 2, !dbg !285, !tbaa !286
  %B_local.sroa.17.26.vec.insert = insertelement <4 x half> %B_local.sroa.17.24.vec.insert, half %143, i64 1, !dbg !285
  %144 = load half, ptr addrspace(3) %arrayidx347.2.3, align 2, !dbg !285, !tbaa !286
  %B_local.sroa.17.28.vec.insert = insertelement <4 x half> %B_local.sroa.17.26.vec.insert, half %144, i64 2, !dbg !285
  %145 = load half, ptr addrspace(3) %arrayidx347.3.3, align 2, !dbg !285, !tbaa !286
  %B_local.sroa.17.30.vec.insert = insertelement <4 x half> %B_local.sroa.17.28.vec.insert, half %145, i64 3, !dbg !285
  %146 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.0.6.vec.insert, <4 x half> %scores_half.sroa.0.1, <4 x float> %output_acc.sroa.0.1), !dbg !287
  %147 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.7.14.vec.insert, <4 x half> %scores_half.sroa.0.1, <4 x float> %output_acc.sroa.28.1), !dbg !287
  %148 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.12.22.vec.insert, <4 x half> %scores_half.sroa.0.1, <4 x float> %output_acc.sroa.54.1), !dbg !287
  %149 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %B_local.sroa.17.30.vec.insert, <4 x half> %scores_half.sroa.0.1, <4 x float> %output_acc.sroa.80.1), !dbg !287
  br label %if.end376, !dbg !288

if.end376:                                        ; preds = %if.then318, %if.end313
  %output_acc.sroa.80.2 = phi <4 x float> [ %output_acc.sroa.80.1, %if.end313 ], [ %149, %if.then318 ], !dbg !115
  %output_acc.sroa.54.2 = phi <4 x float> [ %output_acc.sroa.54.1, %if.end313 ], [ %148, %if.then318 ], !dbg !115
  %output_acc.sroa.28.2 = phi <4 x float> [ %output_acc.sroa.28.1, %if.end313 ], [ %147, %if.then318 ], !dbg !115
  %output_acc.sroa.0.2 = phi <4 x float> [ %output_acc.sroa.0.1, %if.end313 ], [ %146, %if.then318 ], !dbg !115
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !289
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !290
  br i1 %exitcond.not, label %for.cond380.preheader, label %for.body38, !dbg !45, !llvm.loop !291
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
!1 = !DIFile(filename: "race_tests/nsa/rep/v017_codex_power_s8_k_register_prefetch_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!40 = distinct !DISubprogram(name: "native_sparse_attention_kernel", scope: !1, file: !1, line: 10, type: !7, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!41 = !{i32 0, i32 1024}
!42 = !DILocation(line: 23, column: 3, scope: !40)
!43 = !DILocation(line: 24, column: 52, scope: !40)
!44 = !DILocation(line: 24, column: 38, scope: !40)
!45 = !DILocation(line: 33, column: 3, scope: !40)
!46 = !DILocation(line: 133, column: 24, scope: !40)
!47 = !DILocation(line: 133, column: 40, scope: !40)
!48 = !DILocation(line: 60, column: 3, scope: !49, inlinedAt: !51)
!49 = distinct !DISubprogram(name: "__barrier", scope: !50, file: !50, line: 57, type: !7, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!50 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!51 = distinct !DILocation(line: 74, column: 3, scope: !52, inlinedAt: !53)
!52 = distinct !DISubprogram(name: "__syncthreads", scope: !50, file: !50, line: 73, type: !7, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!53 = distinct !DILocation(line: 135, column: 3, scope: !40)
!54 = !DILocation(line: 61, column: 3, scope: !49, inlinedAt: !51)
!55 = !DILocation(line: 62, column: 3, scope: !49, inlinedAt: !51)
!56 = !DILocation(line: 137, column: 8, scope: !40)
!57 = !DILocation(line: 1007, column: 10, scope: !58, inlinedAt: !60)
!58 = distinct !DISubprogram(name: "__float2half_rn", scope: !59, file: !59, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!59 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!60 = distinct !DILocation(line: 1077, column: 18, scope: !61, inlinedAt: !62)
!61 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !59, file: !59, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!62 = distinct !DILocation(line: 1295, column: 23, scope: !63, inlinedAt: !64)
!63 = distinct !DISubprogram(name: "__float22half2_rn", scope: !59, file: !59, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!64 = distinct !DILocation(line: 140, column: 27, scope: !40)
!65 = !{!66, !68}
!66 = distinct !{!66, !67, !"_ZL17__floats2half2_rnff: %agg.result"}
!67 = distinct !{!67, !"_ZL17__floats2half2_rnff"}
!68 = distinct !{!68, !69, !"_ZL17__float22half2_rn6float2: %agg.result"}
!69 = distinct !{!69, !"_ZL17__float22half2_rn6float2"}
!70 = !DILocation(line: 1007, column: 10, scope: !58, inlinedAt: !71)
!71 = distinct !DILocation(line: 1077, column: 38, scope: !61, inlinedAt: !62)
!72 = !DILocation(line: 596, column: 67, scope: !73, inlinedAt: !74)
!73 = distinct !DISubprogram(name: "__half2", scope: !59, file: !59, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!74 = distinct !DILocation(line: 1077, column: 10, scope: !61, inlinedAt: !62)
!75 = !DILocation(line: 596, column: 73, scope: !73, inlinedAt: !74)
!76 = !DILocation(line: 1007, column: 10, scope: !58, inlinedAt: !77)
!77 = distinct !DILocation(line: 1077, column: 18, scope: !61, inlinedAt: !78)
!78 = distinct !DILocation(line: 1295, column: 23, scope: !63, inlinedAt: !79)
!79 = distinct !DILocation(line: 141, column: 27, scope: !40)
!80 = !{!81, !83}
!81 = distinct !{!81, !82, !"_ZL17__floats2half2_rnff: %agg.result"}
!82 = distinct !{!82, !"_ZL17__floats2half2_rnff"}
!83 = distinct !{!83, !84, !"_ZL17__float22half2_rn6float2: %agg.result"}
!84 = distinct !{!84, !"_ZL17__float22half2_rn6float2"}
!85 = !DILocation(line: 1007, column: 10, scope: !58, inlinedAt: !86)
!86 = distinct !DILocation(line: 1077, column: 38, scope: !61, inlinedAt: !78)
!87 = !DILocation(line: 596, column: 67, scope: !73, inlinedAt: !88)
!88 = distinct !DILocation(line: 1077, column: 10, scope: !61, inlinedAt: !78)
!89 = !DILocation(line: 596, column: 73, scope: !73, inlinedAt: !88)
!90 = !DILocation(line: 142, column: 45, scope: !40)
!91 = !DILocation(line: 143, column: 40, scope: !40)
!92 = !DILocation(line: 143, column: 127, scope: !40)
!93 = !DILocation(line: 60, column: 3, scope: !49, inlinedAt: !94)
!94 = distinct !DILocation(line: 74, column: 3, scope: !52, inlinedAt: !95)
!95 = distinct !DILocation(line: 145, column: 3, scope: !40)
!96 = !DILocation(line: 61, column: 3, scope: !49, inlinedAt: !94)
!97 = !DILocation(line: 62, column: 3, scope: !49, inlinedAt: !94)
!98 = !DILocation(line: 147, column: 8, scope: !40)
!99 = !DILocation(line: 147, column: 3, scope: !40)
!100 = !DILocation(line: 148, column: 22, scope: !40)
!101 = !DILocation(line: 148, column: 131, scope: !40)
!102 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!103 = !{i32 2, i32 -1, i32 -1, i32 -1}
!104 = !DILocation(line: 148, column: 168, scope: !40)
!105 = !DILocation(line: 150, column: 1, scope: !40)
!106 = !DILocation(line: 29, column: 38, scope: !40)
!107 = !DILocation(line: 34, column: 24, scope: !40)
!108 = !DILocation(line: 34, column: 106, scope: !40)
!109 = !DILocation(line: 35, column: 12, scope: !40)
!110 = !DILocation(line: 35, column: 28, scope: !40)
!111 = !DILocation(line: 42, column: 13, scope: !40)
!112 = !DILocation(line: 43, column: 33, scope: !40)
!113 = !DILocation(line: 43, column: 19, scope: !40)
!114 = !DILocation(line: 44, column: 9, scope: !40)
!115 = !DILocation(line: 0, scope: !40)
!116 = !DILocation(line: 47, column: 44, scope: !40)
!117 = !DILocation(line: 52, column: 67, scope: !40)
!118 = !DILocation(line: 52, column: 37, scope: !40)
!119 = !{i32 -1, i32 3, i32 -1}
!120 = !DILocation(line: 60, column: 70, scope: !40)
!121 = !DILocation(line: 60, column: 13, scope: !40)
!122 = !DILocation(line: 65, column: 21, scope: !40)
!123 = !DILocation(line: 60, column: 63, scope: !40)
!124 = !DILocation(line: 60, column: 3, scope: !49, inlinedAt: !125)
!125 = distinct !DILocation(line: 74, column: 3, scope: !52, inlinedAt: !126)
!126 = distinct !DILocation(line: 70, column: 5, scope: !40)
!127 = !DILocation(line: 61, column: 3, scope: !49, inlinedAt: !125)
!128 = !DILocation(line: 62, column: 3, scope: !49, inlinedAt: !125)
!129 = !DILocation(line: 71, column: 28, scope: !40)
!130 = !DILocation(line: 75, column: 42, scope: !40)
!131 = !DILocation(line: 351, column: 10, scope: !132, inlinedAt: !134)
!132 = distinct !DISubprogram(name: "max", scope: !133, file: !133, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!133 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!134 = distinct !DILocation(line: 75, column: 24, scope: !40)
!135 = !DILocation(line: 1018, column: 9, scope: !136, inlinedAt: !137)
!136 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !50, file: !50, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!137 = distinct !DILocation(line: 338, column: 10, scope: !138, inlinedAt: !140)
!138 = distinct !DISubprogram(name: "shfl_xor_sync<float>", scope: !139, file: !139, line: 337, type: !7, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!139 = !DIFile(filename: "src/tl_templates/maca/common.h", directory: "/root/tilelang-metax")
!140 = distinct !DILocation(line: 95, column: 24, scope: !141, inlinedAt: !143)
!141 = distinct !DISubprogram(name: "run<float>", scope: !142, file: !142, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!142 = !DIFile(filename: "src/tl_templates/maca/reduce.h", directory: "/root/tilelang-metax")
!143 = distinct !DILocation(line: 77, column: 22, scope: !40)
!144 = !DILocation(line: 171, column: 37, scope: !145, inlinedAt: !146)
!145 = distinct !DISubprogram(name: "__lane_id", scope: !50, file: !50, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!146 = distinct !DILocation(line: 990, column: 14, scope: !147, inlinedAt: !148)
!147 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !50, file: !50, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!148 = distinct !DILocation(line: 1019, column: 11, scope: !136, inlinedAt: !137)
!149 = !DILocation(line: 171, column: 10, scope: !145, inlinedAt: !146)
!150 = !DILocation(line: 991, column: 20, scope: !147, inlinedAt: !148)
!151 = !DILocation(line: 992, column: 36, scope: !147, inlinedAt: !148)
!152 = !DILocation(line: 992, column: 17, scope: !147, inlinedAt: !148)
!153 = !DILocation(line: 992, column: 11, scope: !147, inlinedAt: !148)
!154 = !DILocation(line: 993, column: 43, scope: !147, inlinedAt: !148)
!155 = !DILocation(line: 993, column: 10, scope: !147, inlinedAt: !148)
!156 = !DILocation(line: 1020, column: 14, scope: !136, inlinedAt: !137)
!157 = !DILocation(line: 306, column: 10, scope: !158, inlinedAt: !159)
!158 = distinct !DISubprogram(name: "fmaxf", scope: !133, file: !133, line: 305, type: !7, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!159 = distinct !DILocation(line: 633, column: 10, scope: !160, inlinedAt: !162)
!160 = distinct !DISubprogram(name: "fast_max<float>", scope: !161, file: !161, line: 632, type: !7, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!161 = !DIFile(filename: "/opt/maca/include/mctlass/fast_math.h", directory: "")
!162 = distinct !DILocation(line: 31, column: 12, scope: !163, inlinedAt: !164)
!163 = distinct !DISubprogram(name: "operator()<float>", scope: !142, file: !142, line: 30, type: !7, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!164 = distinct !DILocation(line: 95, column: 11, scope: !141, inlinedAt: !143)
!165 = !DILocation(line: 1018, column: 9, scope: !136, inlinedAt: !166)
!166 = distinct !DILocation(line: 338, column: 10, scope: !138, inlinedAt: !167)
!167 = distinct !DILocation(line: 95, column: 24, scope: !168, inlinedAt: !169)
!168 = distinct !DISubprogram(name: "run<float>", scope: !142, file: !142, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!169 = distinct !DILocation(line: 100, column: 14, scope: !141, inlinedAt: !143)
!170 = !DILocation(line: 171, column: 37, scope: !145, inlinedAt: !171)
!171 = distinct !DILocation(line: 990, column: 14, scope: !147, inlinedAt: !172)
!172 = distinct !DILocation(line: 1019, column: 11, scope: !136, inlinedAt: !166)
!173 = !DILocation(line: 171, column: 10, scope: !145, inlinedAt: !171)
!174 = !DILocation(line: 991, column: 20, scope: !147, inlinedAt: !172)
!175 = !DILocation(line: 992, column: 36, scope: !147, inlinedAt: !172)
!176 = !DILocation(line: 992, column: 17, scope: !147, inlinedAt: !172)
!177 = !DILocation(line: 992, column: 11, scope: !147, inlinedAt: !172)
!178 = !DILocation(line: 993, column: 43, scope: !147, inlinedAt: !172)
!179 = !DILocation(line: 993, column: 10, scope: !147, inlinedAt: !172)
!180 = !DILocation(line: 1020, column: 14, scope: !136, inlinedAt: !166)
!181 = !DILocation(line: 306, column: 10, scope: !158, inlinedAt: !182)
!182 = distinct !DILocation(line: 633, column: 10, scope: !160, inlinedAt: !183)
!183 = distinct !DILocation(line: 31, column: 12, scope: !163, inlinedAt: !184)
!184 = distinct !DILocation(line: 95, column: 11, scope: !168, inlinedAt: !169)
!185 = !DILocation(line: 78, column: 44, scope: !40)
!186 = !DILocation(line: 78, column: 101, scope: !40)
!187 = !DILocation(line: 78, column: 85, scope: !40)
!188 = !DILocation(line: 285, column: 49, scope: !189, inlinedAt: !190)
!189 = distinct !DISubprogram(name: "exp2f", scope: !133, file: !133, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!190 = distinct !DILocation(line: 78, column: 20, scope: !40)
!191 = !DILocation(line: 81, column: 43, scope: !40)
!192 = !DILocation(line: 81, column: 84, scope: !40)
!193 = !DILocation(line: 285, column: 49, scope: !189, inlinedAt: !194)
!194 = distinct !DILocation(line: 81, column: 23, scope: !40)
!195 = !DILocation(line: 81, column: 21, scope: !40)
!196 = !DILocation(line: 81, column: 31, scope: !40)
!197 = !DILocation(line: 86, column: 38, scope: !40)
!198 = !DILocation(line: 1018, column: 9, scope: !136, inlinedAt: !199)
!199 = distinct !DILocation(line: 338, column: 10, scope: !138, inlinedAt: !200)
!200 = distinct !DILocation(line: 95, column: 24, scope: !201, inlinedAt: !202)
!201 = distinct !DISubprogram(name: "run<float>", scope: !142, file: !142, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!202 = distinct !DILocation(line: 88, column: 22, scope: !40)
!203 = !DILocation(line: 171, column: 37, scope: !145, inlinedAt: !204)
!204 = distinct !DILocation(line: 990, column: 14, scope: !147, inlinedAt: !205)
!205 = distinct !DILocation(line: 1019, column: 11, scope: !136, inlinedAt: !199)
!206 = !DILocation(line: 171, column: 10, scope: !145, inlinedAt: !204)
!207 = !DILocation(line: 991, column: 20, scope: !147, inlinedAt: !205)
!208 = !DILocation(line: 992, column: 36, scope: !147, inlinedAt: !205)
!209 = !DILocation(line: 992, column: 17, scope: !147, inlinedAt: !205)
!210 = !DILocation(line: 992, column: 11, scope: !147, inlinedAt: !205)
!211 = !DILocation(line: 993, column: 43, scope: !147, inlinedAt: !205)
!212 = !DILocation(line: 993, column: 10, scope: !147, inlinedAt: !205)
!213 = !DILocation(line: 1020, column: 14, scope: !136, inlinedAt: !199)
!214 = !DILocation(line: 25, column: 14, scope: !215, inlinedAt: !216)
!215 = distinct !DISubprogram(name: "operator()<float>", scope: !142, file: !142, line: 24, type: !7, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!216 = distinct !DILocation(line: 95, column: 11, scope: !201, inlinedAt: !202)
!217 = !DILocation(line: 1018, column: 9, scope: !136, inlinedAt: !218)
!218 = distinct !DILocation(line: 338, column: 10, scope: !138, inlinedAt: !219)
!219 = distinct !DILocation(line: 95, column: 24, scope: !220, inlinedAt: !221)
!220 = distinct !DISubprogram(name: "run<float>", scope: !142, file: !142, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!221 = distinct !DILocation(line: 100, column: 14, scope: !201, inlinedAt: !202)
!222 = !DILocation(line: 171, column: 37, scope: !145, inlinedAt: !223)
!223 = distinct !DILocation(line: 990, column: 14, scope: !147, inlinedAt: !224)
!224 = distinct !DILocation(line: 1019, column: 11, scope: !136, inlinedAt: !218)
!225 = !DILocation(line: 171, column: 10, scope: !145, inlinedAt: !223)
!226 = !DILocation(line: 991, column: 20, scope: !147, inlinedAt: !224)
!227 = !DILocation(line: 992, column: 36, scope: !147, inlinedAt: !224)
!228 = !DILocation(line: 992, column: 17, scope: !147, inlinedAt: !224)
!229 = !DILocation(line: 992, column: 11, scope: !147, inlinedAt: !224)
!230 = !DILocation(line: 993, column: 43, scope: !147, inlinedAt: !224)
!231 = !DILocation(line: 993, column: 10, scope: !147, inlinedAt: !224)
!232 = !DILocation(line: 1020, column: 14, scope: !136, inlinedAt: !218)
!233 = !DILocation(line: 89, column: 41, scope: !40)
!234 = !DILocation(line: 1007, column: 10, scope: !58, inlinedAt: !235)
!235 = distinct !DILocation(line: 1077, column: 18, scope: !61, inlinedAt: !236)
!236 = distinct !DILocation(line: 1295, column: 23, scope: !63, inlinedAt: !237)
!237 = distinct !DILocation(line: 92, column: 29, scope: !40)
!238 = !{!239, !241}
!239 = distinct !{!239, !240, !"_ZL17__floats2half2_rnff: %agg.result"}
!240 = distinct !{!240, !"_ZL17__floats2half2_rnff"}
!241 = distinct !{!241, !242, !"_ZL17__float22half2_rn6float2: %agg.result"}
!242 = distinct !{!242, !"_ZL17__float22half2_rn6float2"}
!243 = !DILocation(line: 1007, column: 10, scope: !58, inlinedAt: !244)
!244 = distinct !DILocation(line: 1077, column: 38, scope: !61, inlinedAt: !236)
!245 = !DILocation(line: 593, column: 26, scope: !246, inlinedAt: !247)
!246 = distinct !DISubprogram(name: "operator=", scope: !59, file: !59, line: 592, type: !7, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!247 = distinct !DILocation(line: 92, column: 27, scope: !40)
!248 = !DILocation(line: 1007, column: 10, scope: !58, inlinedAt: !249)
!249 = distinct !DILocation(line: 1077, column: 18, scope: !61, inlinedAt: !250)
!250 = distinct !DILocation(line: 1295, column: 23, scope: !63, inlinedAt: !251)
!251 = distinct !DILocation(line: 93, column: 29, scope: !40)
!252 = !{!253, !255}
!253 = distinct !{!253, !254, !"_ZL17__floats2half2_rnff: %agg.result"}
!254 = distinct !{!254, !"_ZL17__floats2half2_rnff"}
!255 = distinct !{!255, !256, !"_ZL17__float22half2_rn6float2: %agg.result"}
!256 = distinct !{!256, !"_ZL17__float22half2_rn6float2"}
!257 = !DILocation(line: 1007, column: 10, scope: !58, inlinedAt: !258)
!258 = distinct !DILocation(line: 1077, column: 38, scope: !61, inlinedAt: !250)
!259 = !DILocation(line: 593, column: 26, scope: !246, inlinedAt: !260)
!260 = distinct !DILocation(line: 93, column: 27, scope: !40)
!261 = !DILocation(line: 97, column: 28, scope: !40)
!262 = !DILocation(line: 97, column: 44, scope: !40)
!263 = !DILocation(line: 97, column: 25, scope: !40)
!264 = !DILocation(line: 25, column: 14, scope: !215, inlinedAt: !265)
!265 = distinct !DILocation(line: 95, column: 11, scope: !220, inlinedAt: !221)
!266 = !DILocation(line: 89, column: 55, scope: !40)
!267 = !DILocation(line: 60, column: 3, scope: !49, inlinedAt: !268)
!268 = distinct !DILocation(line: 74, column: 3, scope: !52, inlinedAt: !269)
!269 = distinct !DILocation(line: 100, column: 5, scope: !40)
!270 = !DILocation(line: 61, column: 3, scope: !49, inlinedAt: !268)
!271 = !DILocation(line: 62, column: 3, scope: !49, inlinedAt: !268)
!272 = !DILocation(line: 101, column: 28, scope: !40)
!273 = !DILocation(line: 103, column: 7, scope: !40)
!274 = !DILocation(line: 106, column: 71, scope: !40)
!275 = !DILocation(line: 106, column: 13, scope: !40)
!276 = !DILocation(line: 107, column: 21, scope: !40)
!277 = !DILocation(line: 108, column: 9, scope: !40)
!278 = !DILocation(line: 111, column: 181, scope: !40)
!279 = !DILocation(line: 60, column: 3, scope: !49, inlinedAt: !280)
!280 = distinct !DILocation(line: 74, column: 3, scope: !52, inlinedAt: !281)
!281 = distinct !DILocation(line: 114, column: 5, scope: !40)
!282 = !DILocation(line: 61, column: 3, scope: !49, inlinedAt: !280)
!283 = !DILocation(line: 62, column: 3, scope: !49, inlinedAt: !280)
!284 = !DILocation(line: 115, column: 28, scope: !40)
!285 = !DILocation(line: 119, column: 41, scope: !40)
!286 = !{!26, !26, i64 0}
!287 = !DILocation(line: 124, column: 43, scope: !40)
!288 = !DILocation(line: 129, column: 5, scope: !40)
!289 = !DILocation(line: 33, column: 40, scope: !40)
!290 = !DILocation(line: 33, column: 35, scope: !40)
!291 = distinct !{!291, !45, !292, !32}
!292 = !DILocation(line: 130, column: 3, scope: !40)
