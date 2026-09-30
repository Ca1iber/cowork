; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v030_codex_power_v_microtile_transpose_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v030_codex_power_v_microtile_transpose_sc-16g-2/codegen/case12.device.cpp"
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
  %add104634 = and i32 %12, 32
  %shr100635 = add nuw nsw i32 %add104634, %2
  %mul106 = and i32 %shr100635, 32
  %add114636 = and i32 %12, 16
  %and109637 = add nuw nsw i32 %add114636, %2
  %mul116 = and i32 %and109637, 16
  %and119639 = mul nuw nsw i32 %2, 9
  %mul125 = and i32 %and119639, 8
  %conv = zext nneg i32 %0 to i64
  %mul62 = shl nuw nsw i64 %conv, 16
  %mul71 = zext nneg i32 %12 to i64
  %invariant.gep725 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul71, !dbg !46
  %and152 = lshr i32 %2, 1
  %shr160 = lshr i32 %2, 5
  %add163 = add nuw nsw i32 %shr160, %2
  %and164 = shl nuw nsw i32 %add163, 3
  %mul165 = and i32 %and164, 8
  %mul170 = and i32 %3, 4
  %13 = or disjoint i32 %mul170, %mul165
  %add158 = or disjoint i32 %13, %mul9
  %shr328 = lshr i32 %2, 4
  %14 = shl nuw nsw i32 %2, 4
  %15 = and i32 %14, 16128
  %16 = shl nuw nsw i32 %2, 2
  %17 = and i32 %16, 60
  %18 = or disjoint i32 %15, %17
  %19 = zext nneg i32 %18 to i64
  %add344 = or disjoint i64 %mul62, %19
  %mul397 = and i32 %14, 240
  %shr403 = and i32 %3, 3
  %xor = xor i32 %shr403, %shr328
  %and418 = shl nuw nsw i32 %2, 8
  %mul419 = and i32 %and418, 768
  %mul425 = and i32 %16, 48
  %and431 = and i32 %2, 3
  %20 = xor i32 %shr328, %and431
  %21 = zext nneg i32 %add43 to i64, !dbg !46
  %invariant.gep1026 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %21, !dbg !46
  %22 = or disjoint i32 %mul97, %mul106
  %23 = or disjoint i32 %22, %mul116
  %24 = or disjoint i32 %23, %mul125
  %add.ptr128 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %24
  %condval.sroa.5.0.add.ptr128.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128, i32 4
  %condval.sroa.6.0.add.ptr128.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128, i32 8
  %condval.sroa.7.0.add.ptr128.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr128, i32 12
  %add65.1 = or disjoint i64 %mul62, 512
  %narrow = add nuw nsw i32 %mul97, 512
  %25 = or disjoint i32 %narrow, %mul106
  %26 = or disjoint i32 %25, %mul116
  %27 = or disjoint i32 %26, %mul125
  %add.ptr128.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %27
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
  %28 = and i32 %add155.1, 16
  %29 = or disjoint i32 %28, %add158
  %30 = or disjoint i32 %29, %mul149
  %add171.1 = xor i32 %30, 16
  %add.ptr173.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.1
  %add147.2 = shl nuw nsw i32 %3, 5
  %31 = and i32 %add147.2, 32
  %mul149.2 = xor i32 %31, 32
  %add155.2 = shl nuw nsw i32 %and152, 4
  %mul157.2 = and i32 %add155.2, 16
  %add166.2 = or disjoint i32 %add158, %mul157.2
  %add171.2 = or disjoint i32 %add166.2, %mul149.2
  %add.ptr173.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.2
  %add155.3 = shl nuw nsw i32 %and152, 4
  %32 = and i32 %add155.3, 16
  %33 = or disjoint i32 %32, %add158
  %34 = or disjoint i32 %33, %mul149.2
  %add171.3 = xor i32 %34, 16
  %add.ptr173.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add171.3
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add344
  %36 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add344
  %37 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add344
  %38 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add344
  %39 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul397
  %.idx703 = shl nuw nsw i32 %xor, 3
  %40 = getelementptr inbounds i8, ptr addrspace(3) %39, i32 %.idx703
  %add.ptr409 = getelementptr inbounds i8, ptr addrspace(3) %40, i32 2048
  %add398.1 = or disjoint i32 %mul397, 256
  %41 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add398.1
  %xor404.1 = shl nuw nsw i32 %xor, 3
  %.idx703.1 = xor i32 %xor404.1, 8
  %42 = getelementptr inbounds i8, ptr addrspace(3) %41, i32 %.idx703.1
  %add.ptr409.1 = getelementptr inbounds i8, ptr addrspace(3) %42, i32 2048
  %add398.2 = or disjoint i32 %mul397, 512
  %43 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add398.2
  %xor404.2 = shl nuw nsw i32 %xor, 3
  %.idx703.2 = xor i32 %xor404.2, 16
  %44 = getelementptr inbounds i8, ptr addrspace(3) %43, i32 %.idx703.2
  %add.ptr409.2 = getelementptr inbounds i8, ptr addrspace(3) %44, i32 2048
  %add398.3 = or disjoint i32 %mul397, 768
  %45 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add398.3
  %xor404.3 = shl nuw nsw i32 %xor, 3
  %.idx703.3 = xor i32 %xor404.3, 24
  %46 = getelementptr inbounds i8, ptr addrspace(3) %45, i32 %.idx703.3
  %add.ptr409.3 = getelementptr inbounds i8, ptr addrspace(3) %46, i32 2048
  %add426 = or disjoint i32 %mul419, %mul425
  %47 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add426
  %.idx702 = shl nuw nsw i32 %20, 3
  %48 = getelementptr inbounds i8, ptr addrspace(3) %47, i32 %.idx702
  %add.ptr437 = getelementptr inbounds i8, ptr addrspace(3) %48, i32 2048
  %add421.1 = or disjoint i32 %mul419, %mul425
  %add426.1 = or disjoint i32 %add421.1, 64
  %49 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add426.1
  %xor432.1 = shl nuw nsw i32 %20, 3
  %.idx702.1 = xor i32 %xor432.1, 8
  %50 = getelementptr inbounds i8, ptr addrspace(3) %49, i32 %.idx702.1
  %add.ptr437.1 = getelementptr inbounds i8, ptr addrspace(3) %50, i32 2048
  %add421.2 = or disjoint i32 %mul419, %mul425
  %add426.2 = or disjoint i32 %add421.2, 128
  %51 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add426.2
  %xor432.2 = shl nuw nsw i32 %20, 3
  %.idx702.2 = xor i32 %xor432.2, 16
  %52 = getelementptr inbounds i8, ptr addrspace(3) %51, i32 %.idx702.2
  %add.ptr437.2 = getelementptr inbounds i8, ptr addrspace(3) %52, i32 2048
  %add421.3 = or disjoint i32 %mul419, %mul425
  %add426.3 = or disjoint i32 %add421.3, 192
  %53 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add426.3
  %xor432.3 = shl nuw nsw i32 %20, 3
  %.idx702.3 = xor i32 %xor432.3, 24
  %54 = getelementptr inbounds i8, ptr addrspace(3) %53, i32 %.idx702.3
  %add.ptr437.3 = getelementptr inbounds i8, ptr addrspace(3) %54, i32 2048
  br label %for.body38, !dbg !46

for.cond.cleanup36:                               ; preds = %if.end463
  fence syncscope("warp") release, !dbg !47
  tail call void @llvm.mxc.barrier.warp(), !dbg !53
  fence syncscope("warp") acquire, !dbg !54
  %output_acc.sroa.0.0.vec.extract879 = extractelement <4 x float> %output_acc.sroa.0.2, i64 0, !dbg !55
  %div = fdiv contract float %output_acc.sroa.0.0.vec.extract879, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.0.4.vec.extract888 = extractelement <4 x float> %output_acc.sroa.0.2, i64 1, !dbg !55
  %div.1 = fdiv contract float %output_acc.sroa.0.4.vec.extract888, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.0.8.vec.extract897 = extractelement <4 x float> %output_acc.sroa.0.2, i64 2, !dbg !55
  %div.2 = fdiv contract float %output_acc.sroa.0.8.vec.extract897, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.0.12.vec.extract906 = extractelement <4 x float> %output_acc.sroa.0.2, i64 3, !dbg !55
  %div.3 = fdiv contract float %output_acc.sroa.0.12.vec.extract906, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.28.16.vec.extract916 = extractelement <4 x float> %output_acc.sroa.28.2, i64 0, !dbg !55
  %div.4 = fdiv contract float %output_acc.sroa.28.16.vec.extract916, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.28.20.vec.extract925 = extractelement <4 x float> %output_acc.sroa.28.2, i64 1, !dbg !55
  %div.5 = fdiv contract float %output_acc.sroa.28.20.vec.extract925, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.28.24.vec.extract934 = extractelement <4 x float> %output_acc.sroa.28.2, i64 2, !dbg !55
  %div.6 = fdiv contract float %output_acc.sroa.28.24.vec.extract934, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.28.28.vec.extract943 = extractelement <4 x float> %output_acc.sroa.28.2, i64 3, !dbg !55
  %div.7 = fdiv contract float %output_acc.sroa.28.28.vec.extract943, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.54.32.vec.extract953 = extractelement <4 x float> %output_acc.sroa.54.2, i64 0, !dbg !55
  %div.8 = fdiv contract float %output_acc.sroa.54.32.vec.extract953, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.54.36.vec.extract962 = extractelement <4 x float> %output_acc.sroa.54.2, i64 1, !dbg !55
  %div.9 = fdiv contract float %output_acc.sroa.54.36.vec.extract962, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.54.40.vec.extract971 = extractelement <4 x float> %output_acc.sroa.54.2, i64 2, !dbg !55
  %div.10 = fdiv contract float %output_acc.sroa.54.40.vec.extract971, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.54.44.vec.extract980 = extractelement <4 x float> %output_acc.sroa.54.2, i64 3, !dbg !55
  %div.11 = fdiv contract float %output_acc.sroa.54.44.vec.extract980, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.80.48.vec.extract990 = extractelement <4 x float> %output_acc.sroa.80.2, i64 0, !dbg !55
  %div.12 = fdiv contract float %output_acc.sroa.80.48.vec.extract990, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.80.52.vec.extract999 = extractelement <4 x float> %output_acc.sroa.80.2, i64 1, !dbg !55
  %div.13 = fdiv contract float %output_acc.sroa.80.52.vec.extract999, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.80.56.vec.extract1008 = extractelement <4 x float> %output_acc.sroa.80.2, i64 2, !dbg !55
  %div.14 = fdiv contract float %output_acc.sroa.80.56.vec.extract1008, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.80.60.vec.extract1017 = extractelement <4 x float> %output_acc.sroa.80.2, i64 3, !dbg !55
  %div.15 = fdiv contract float %output_acc.sroa.80.60.vec.extract1017, %denominator.sroa.0.2, !dbg !56
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul14, !dbg !57
  %55 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !58
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !58, !noalias !66
  %56 = fptrunc float %div to half, !dbg !58
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %55), !dbg !58, !noalias !66
  %57 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !71
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !71, !noalias !66
  %58 = fptrunc float %div.1 to half, !dbg !71
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %57), !dbg !71, !noalias !66
  %59 = bitcast half %56 to i16, !dbg !73
  %60 = bitcast half %58 to i16, !dbg !76
  %61 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !77
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !77, !noalias !81
  %62 = fptrunc float %div.2 to half, !dbg !77
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %61), !dbg !77, !noalias !81
  %63 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !86
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !86, !noalias !81
  %64 = fptrunc float %div.3 to half, !dbg !86
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %63), !dbg !86, !noalias !81
  %65 = bitcast half %62 to i16, !dbg !88
  %66 = bitcast half %64 to i16, !dbg !90
  %__2.sroa.6.0.insert.ext = zext i16 %66 to i64, !dbg !91
  %__2.sroa.6.0.insert.shift = shl nuw i64 %__2.sroa.6.0.insert.ext, 48, !dbg !91
  %__2.sroa.5.0.insert.ext = zext i16 %65 to i64, !dbg !91
  %__2.sroa.5.0.insert.shift = shl nuw nsw i64 %__2.sroa.5.0.insert.ext, 32, !dbg !91
  %__2.sroa.5.0.insert.insert = or disjoint i64 %__2.sroa.6.0.insert.shift, %__2.sroa.5.0.insert.shift, !dbg !91
  %__2.sroa.4.0.insert.ext = zext i16 %60 to i64, !dbg !91
  %__2.sroa.4.0.insert.shift = shl nuw nsw i64 %__2.sroa.4.0.insert.ext, 16, !dbg !91
  %__2.sroa.4.0.insert.insert = or disjoint i64 %__2.sroa.5.0.insert.insert, %__2.sroa.4.0.insert.shift, !dbg !91
  %__2.sroa.0.0.insert.ext = zext i16 %59 to i64, !dbg !91
  %__2.sroa.0.0.insert.insert = or disjoint i64 %__2.sroa.4.0.insert.insert, %__2.sroa.0.0.insert.ext, !dbg !91
  %gep727 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul9, !dbg !92
  store i64 %__2.sroa.0.0.insert.insert, ptr addrspace(3) %gep727, align 8, !dbg !93
  %67 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !58
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !58, !noalias !66
  %68 = fptrunc float %div.4 to half, !dbg !58
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %67), !dbg !58, !noalias !66
  %69 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !71
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !71, !noalias !66
  %70 = fptrunc float %div.5 to half, !dbg !71
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %69), !dbg !71, !noalias !66
  %71 = bitcast half %68 to i16, !dbg !73
  %72 = bitcast half %70 to i16, !dbg !76
  %73 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !77
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !77, !noalias !81
  %74 = fptrunc float %div.6 to half, !dbg !77
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %73), !dbg !77, !noalias !81
  %75 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !86
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !86, !noalias !81
  %76 = fptrunc float %div.7 to half, !dbg !86
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %75), !dbg !86, !noalias !81
  %77 = bitcast half %74 to i16, !dbg !88
  %78 = bitcast half %76 to i16, !dbg !90
  %__2.sroa.6.0.insert.ext.1 = zext i16 %78 to i64, !dbg !91
  %__2.sroa.6.0.insert.shift.1 = shl nuw i64 %__2.sroa.6.0.insert.ext.1, 48, !dbg !91
  %__2.sroa.5.0.insert.ext.1 = zext i16 %77 to i64, !dbg !91
  %__2.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.1, 32, !dbg !91
  %__2.sroa.5.0.insert.insert.1 = or disjoint i64 %__2.sroa.6.0.insert.shift.1, %__2.sroa.5.0.insert.shift.1, !dbg !91
  %__2.sroa.4.0.insert.ext.1 = zext i16 %72 to i64, !dbg !91
  %__2.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.1, 16, !dbg !91
  %__2.sroa.4.0.insert.insert.1 = or disjoint i64 %__2.sroa.5.0.insert.insert.1, %__2.sroa.4.0.insert.shift.1, !dbg !91
  %__2.sroa.0.0.insert.ext.1 = zext i16 %71 to i64, !dbg !91
  %__2.sroa.0.0.insert.insert.1 = or disjoint i64 %__2.sroa.4.0.insert.insert.1, %__2.sroa.0.0.insert.ext.1, !dbg !91
  %79 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 32, !dbg !92
  %gep727.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %79, i32 %mul9, !dbg !92
  store i64 %__2.sroa.0.0.insert.insert.1, ptr addrspace(3) %gep727.1, align 8, !dbg !93
  %80 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !58
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !58, !noalias !66
  %81 = fptrunc float %div.8 to half, !dbg !58
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %80), !dbg !58, !noalias !66
  %82 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !71
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !71, !noalias !66
  %83 = fptrunc float %div.9 to half, !dbg !71
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %82), !dbg !71, !noalias !66
  %84 = bitcast half %81 to i16, !dbg !73
  %85 = bitcast half %83 to i16, !dbg !76
  %86 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !77
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !77, !noalias !81
  %87 = fptrunc float %div.10 to half, !dbg !77
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %86), !dbg !77, !noalias !81
  %88 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !86
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !86, !noalias !81
  %89 = fptrunc float %div.11 to half, !dbg !86
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %88), !dbg !86, !noalias !81
  %90 = bitcast half %87 to i16, !dbg !88
  %91 = bitcast half %89 to i16, !dbg !90
  %__2.sroa.6.0.insert.ext.2 = zext i16 %91 to i64, !dbg !91
  %__2.sroa.6.0.insert.shift.2 = shl nuw i64 %__2.sroa.6.0.insert.ext.2, 48, !dbg !91
  %__2.sroa.5.0.insert.ext.2 = zext i16 %90 to i64, !dbg !91
  %__2.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.2, 32, !dbg !91
  %__2.sroa.5.0.insert.insert.2 = or disjoint i64 %__2.sroa.6.0.insert.shift.2, %__2.sroa.5.0.insert.shift.2, !dbg !91
  %__2.sroa.4.0.insert.ext.2 = zext i16 %85 to i64, !dbg !91
  %__2.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.2, 16, !dbg !91
  %__2.sroa.4.0.insert.insert.2 = or disjoint i64 %__2.sroa.5.0.insert.insert.2, %__2.sroa.4.0.insert.shift.2, !dbg !91
  %__2.sroa.0.0.insert.ext.2 = zext i16 %84 to i64, !dbg !91
  %__2.sroa.0.0.insert.insert.2 = or disjoint i64 %__2.sroa.4.0.insert.insert.2, %__2.sroa.0.0.insert.ext.2, !dbg !91
  %92 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 64, !dbg !92
  %gep727.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) %92, i32 %mul9, !dbg !92
  store i64 %__2.sroa.0.0.insert.insert.2, ptr addrspace(3) %gep727.2, align 8, !dbg !93
  %93 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !58
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !58, !noalias !66
  %94 = fptrunc float %div.12 to half, !dbg !58
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %93), !dbg !58, !noalias !66
  %95 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !71
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !71, !noalias !66
  %96 = fptrunc float %div.13 to half, !dbg !71
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %95), !dbg !71, !noalias !66
  %97 = bitcast half %94 to i16, !dbg !73
  %98 = bitcast half %96 to i16, !dbg !76
  %99 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !77
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !77, !noalias !81
  %100 = fptrunc float %div.14 to half, !dbg !77
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %99), !dbg !77, !noalias !81
  %101 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !86
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !86, !noalias !81
  %102 = fptrunc float %div.15 to half, !dbg !86
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %101), !dbg !86, !noalias !81
  %103 = bitcast half %100 to i16, !dbg !88
  %104 = bitcast half %102 to i16, !dbg !90
  %__2.sroa.6.0.insert.ext.3 = zext i16 %104 to i64, !dbg !91
  %__2.sroa.6.0.insert.shift.3 = shl nuw i64 %__2.sroa.6.0.insert.ext.3, 48, !dbg !91
  %__2.sroa.5.0.insert.ext.3 = zext i16 %103 to i64, !dbg !91
  %__2.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.3, 32, !dbg !91
  %__2.sroa.5.0.insert.insert.3 = or disjoint i64 %__2.sroa.6.0.insert.shift.3, %__2.sroa.5.0.insert.shift.3, !dbg !91
  %__2.sroa.4.0.insert.ext.3 = zext i16 %98 to i64, !dbg !91
  %__2.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.3, 16, !dbg !91
  %__2.sroa.4.0.insert.insert.3 = or disjoint i64 %__2.sroa.5.0.insert.insert.3, %__2.sroa.4.0.insert.shift.3, !dbg !91
  %__2.sroa.0.0.insert.ext.3 = zext i16 %97 to i64, !dbg !91
  %__2.sroa.0.0.insert.insert.3 = or disjoint i64 %__2.sroa.4.0.insert.insert.3, %__2.sroa.0.0.insert.ext.3, !dbg !91
  %105 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 96, !dbg !92
  %gep727.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) %105, i32 %mul9, !dbg !92
  store i64 %__2.sroa.0.0.insert.insert.3, ptr addrspace(3) %gep727.3, align 8, !dbg !93
  fence syncscope("warp") release, !dbg !94
  tail call void @llvm.mxc.barrier.warp(), !dbg !97
  fence syncscope("warp") acquire, !dbg !98
  %invariant.gep729 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %12, !dbg !99
  %add531 = add nuw nsw i32 %add, %12
  %106 = zext nneg i32 %add531 to i64, !dbg !100
  %add.ptr536 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %106, !dbg !101
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr536, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep729, i64 16, i1 false), !dbg !102, !tbaa.struct !103, !call_argsrelate !104
  %gep730.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep729, i32 1024, !dbg !105
  %107 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %106, !dbg !101
  %add.ptr536.1 = getelementptr inbounds i8, ptr addrspace(1) %107, i64 1024, !dbg !101
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr536.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep730.1, i64 16, i1 false), !dbg !102, !tbaa.struct !103, !call_argsrelate !104
  ret void, !dbg !106

for.body38:                                       ; preds = %entry, %if.end463
  %output_acc.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.0.2, %if.end463 ], !dbg !107
  %output_acc.sroa.28.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.28.2, %if.end463 ], !dbg !107
  %output_acc.sroa.54.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.54.2, %if.end463 ], !dbg !107
  %output_acc.sroa.80.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.80.2, %if.end463 ], !dbg !107
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end463 ]
  %denominator.sroa.0.0724 = phi float [ 0.000000e+00, %entry ], [ %denominator.sroa.0.2, %if.end463 ]
  %normalizer.sroa.0.0723 = phi float [ 0xFFF0000000000000, %entry ], [ %normalizer.sroa.0.2, %if.end463 ]
  %gep1027 = getelementptr inbounds i32, ptr addrspace(1) %invariant.gep1026, i64 %indvars.iv, !dbg !108
  %108 = load i32, ptr addrspace(1) %gep1027, align 4, !dbg !108, !tbaa !30
  %mul46 = shl nsw i32 %108, 4, !dbg !109
  %cmp47 = icmp slt i32 %108, 0, !dbg !110
  %cmp49.not = icmp sgt i32 %mul46, %1
  %or.cond = select i1 %cmp47, i1 true, i1 %cmp49.not, !dbg !111
  br i1 %or.cond, label %if.end463, label %if.then, !dbg !111

if.then:                                          ; preds = %for.body38
  fence syncscope("warp") release, !dbg !112
  tail call void @llvm.mxc.barrier.warp(), !dbg !115
  fence syncscope("warp") acquire, !dbg !116
  %add56 = add nuw nsw i32 %mul46, %shr55
  %conv66 = zext nneg i32 %mul46 to i64
  %.idx = shl nuw nsw i64 %conv66, 7
  %gep = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep725, i64 %.idx, !dbg !117
  %cmp59 = icmp ult i32 %add56, 1024, !dbg !118
  br i1 %cmp59, label %if.then60, label %if.end, !dbg !119

if.then60:                                        ; preds = %if.then
  %gep708 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %mul62
  %condval.sroa.7.0.add.ptr73.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep708, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep708, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep708, i64 4
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep708, align 16, !dbg !120, !tbaa !30
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
  %gep708.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %add65.1
  %condval.sroa.7.0.add.ptr73.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep708.1, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep708.1, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep708.1, i64 4
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep708.1, align 16, !dbg !120, !tbaa !30
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
  %109 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %5, <4 x float> zeroinitializer), !dbg !130, !call_argsrelate !131
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr173.1, align 8, !dbg !129
  %110 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %7, <4 x float> %109), !dbg !130, !call_argsrelate !131
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr173.2, align 8, !dbg !129
  %111 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %9, <4 x float> %110), !dbg !130, !call_argsrelate !131
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr173.3, align 8, !dbg !129
  %112 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %11, <4 x float> %111), !dbg !130, !call_argsrelate !131
  %add195 = add nuw nsw i32 %mul46, %mul14
  %cmp198.not = icmp sgt i32 %add195, %1, !dbg !132
  %scores.sroa.0.0.vec.extract824 = extractelement <4 x float> %112, i64 0
  %spec.select = select i1 %cmp198.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract824, !dbg !133
  %cmp198.not.1.not = icmp slt i32 %add195, %1, !dbg !132
  %scores.sroa.0.4.vec.extract837 = extractelement <4 x float> %112, i64 1, !dbg !133
  %condval_1.0.1 = select i1 %cmp198.not.1.not, float %scores.sroa.0.4.vec.extract837, float 0xFFF0000000000000, !dbg !133
  %add196.2 = or disjoint i32 %add195, 2, !dbg !134
  %cmp198.not.2 = icmp sgt i32 %add196.2, %1, !dbg !132
  %scores.sroa.0.8.vec.extract850 = extractelement <4 x float> %112, i64 2, !dbg !133
  %condval_1.0.2 = select i1 %cmp198.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract850, !dbg !133
  %add196.3 = or disjoint i32 %add195, 3, !dbg !134
  %cmp198.not.3 = icmp sgt i32 %add196.3, %1, !dbg !132
  %scores.sroa.0.12.vec.extract863 = extractelement <4 x float> %112, i64 3, !dbg !133
  %condval_1.0.3 = select i1 %cmp198.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract863, !dbg !133
  %113 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !135
  %114 = tail call contract noundef float @llvm.maxnum.f32(float %113, float %condval_1.0.1), !dbg !135
  %115 = tail call contract noundef float @llvm.maxnum.f32(float %114, float %condval_1.0.2), !dbg !135
  %116 = tail call contract noundef float @llvm.maxnum.f32(float %115, float %condval_1.0.3), !dbg !135
  %117 = bitcast float %116 to i32, !dbg !139
  %118 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !148
  %119 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %118) #11, !dbg !153
  %xor.i.i.i = xor i32 %119, 32, !dbg !154
  %120 = and i32 %119, -64, !dbg !155
  %and.i.i.i = add nsw i32 %120, 64, !dbg !155
  %cmp.not.i.i.i = icmp slt i32 %xor.i.i.i, %and.i.i.i, !dbg !156
  %cond.i.i.i = select i1 %cmp.not.i.i.i, i32 %xor.i.i.i, i32 %119, !dbg !157
  %shl.i.i.i = shl i32 %cond.i.i.i, 2, !dbg !158
  %121 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i, i32 %117), !dbg !159
  %122 = bitcast i32 %121 to float, !dbg !160
  %123 = tail call contract noundef float @llvm.maxnum.f32(float %116, float %122), !dbg !161
  %124 = bitcast float %123 to i32, !dbg !169
  %125 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !174
  %126 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %125) #11, !dbg !177
  %xor.i.i.i.i = xor i32 %126, 16, !dbg !178
  %127 = and i32 %126, -64, !dbg !179
  %and.i.i.i.i = add nsw i32 %127, 64, !dbg !179
  %cmp.not.i.i.i.i = icmp slt i32 %xor.i.i.i.i, %and.i.i.i.i, !dbg !180
  %cond.i.i.i.i = select i1 %cmp.not.i.i.i.i, i32 %xor.i.i.i.i, i32 %126, !dbg !181
  %shl.i.i.i.i = shl i32 %cond.i.i.i.i, 2, !dbg !182
  %128 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i, i32 %124), !dbg !183
  %129 = bitcast i32 %128 to float, !dbg !184
  %130 = tail call contract noundef float @llvm.maxnum.f32(float %123, float %129), !dbg !185
  %sub = fsub contract float %130, %normalizer.sroa.0.0723, !dbg !189
  %mul234 = fmul contract float %sub, 0x3FC7154760000000, !dbg !190
  %cmp235 = fcmp contract ogt float %mul234, 7.000000e+00, !dbg !191
  %sub239 = fsub contract float %normalizer.sroa.0.0723, %130
  %mul240 = fmul contract float %sub239, 0x3FC7154760000000
  %cmp.i.i = fcmp contract olt float %mul240, -1.260000e+02
  %cond.i.i = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00
  %add.i.i = fadd contract float %mul240, %cond.i.i
  %131 = tail call contract float @llvm.exp2.f32(float %add.i.i)
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i = fmul contract float %cond2.i.i, %131
  %normalizer.sroa.0.1 = select i1 %cmp235, float %130, float %normalizer.sroa.0.0723, !dbg !192
  %sub255 = fsub contract float %spec.select, %normalizer.sroa.0.1, !dbg !193
  %mul256 = fmul contract float %sub255, 0x3FC7154760000000, !dbg !194
  %add257 = fadd contract float %mul256, 8.000000e+00, !dbg !195
  %cmp.i.i660 = fcmp contract olt float %add257, -1.260000e+02, !dbg !196
  %cond.i.i661 = select contract i1 %cmp.i.i660, float 6.400000e+01, float 0.000000e+00, !dbg !196
  %add.i.i662 = fadd contract float %add257, %cond.i.i661, !dbg !196
  %132 = tail call contract float @llvm.exp2.f32(float %add.i.i662), !dbg !196
  %cond2.i.i663 = select contract i1 %cmp.i.i660, float 0x3BF0000000000000, float 1.000000e+00, !dbg !196
  %mul.i.i664 = fmul contract float %cond2.i.i663, %132, !dbg !196
  %sub255.1 = fsub contract float %condval_1.0.1, %normalizer.sroa.0.1, !dbg !193
  %mul256.1 = fmul contract float %sub255.1, 0x3FC7154760000000, !dbg !194
  %add257.1 = fadd contract float %mul256.1, 8.000000e+00, !dbg !195
  %cmp.i.i660.1 = fcmp contract olt float %add257.1, -1.260000e+02, !dbg !196
  %cond.i.i661.1 = select contract i1 %cmp.i.i660.1, float 6.400000e+01, float 0.000000e+00, !dbg !196
  %add.i.i662.1 = fadd contract float %add257.1, %cond.i.i661.1, !dbg !196
  %133 = tail call contract float @llvm.exp2.f32(float %add.i.i662.1), !dbg !196
  %cond2.i.i663.1 = select contract i1 %cmp.i.i660.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !196
  %mul.i.i664.1 = fmul contract float %cond2.i.i663.1, %133, !dbg !196
  %sub255.2 = fsub contract float %condval_1.0.2, %normalizer.sroa.0.1, !dbg !193
  %mul256.2 = fmul contract float %sub255.2, 0x3FC7154760000000, !dbg !194
  %add257.2 = fadd contract float %mul256.2, 8.000000e+00, !dbg !195
  %cmp.i.i660.2 = fcmp contract olt float %add257.2, -1.260000e+02, !dbg !196
  %cond.i.i661.2 = select contract i1 %cmp.i.i660.2, float 6.400000e+01, float 0.000000e+00, !dbg !196
  %add.i.i662.2 = fadd contract float %add257.2, %cond.i.i661.2, !dbg !196
  %134 = tail call contract float @llvm.exp2.f32(float %add.i.i662.2), !dbg !196
  %cond2.i.i663.2 = select contract i1 %cmp.i.i660.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !196
  %mul.i.i664.2 = fmul contract float %cond2.i.i663.2, %134, !dbg !196
  %sub255.3 = fsub contract float %condval_1.0.3, %normalizer.sroa.0.1, !dbg !193
  %mul256.3 = fmul contract float %sub255.3, 0x3FC7154760000000, !dbg !194
  %add257.3 = fadd contract float %mul256.3, 8.000000e+00, !dbg !195
  %cmp.i.i660.3 = fcmp contract olt float %add257.3, -1.260000e+02, !dbg !196
  %cond.i.i661.3 = select contract i1 %cmp.i.i660.3, float 6.400000e+01, float 0.000000e+00, !dbg !196
  %add.i.i662.3 = fadd contract float %add257.3, %cond.i.i661.3, !dbg !196
  %135 = tail call contract float @llvm.exp2.f32(float %add.i.i662.3), !dbg !196
  %cond2.i.i663.3 = select contract i1 %cmp.i.i660.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !196
  %mul.i.i664.3 = fmul contract float %cond2.i.i663.3, %135, !dbg !196
  %add272 = fadd contract float %mul.i.i664, 0.000000e+00, !dbg !199
  %add272.1 = fadd contract float %add272, %mul.i.i664.1, !dbg !199
  %add272.2 = fadd contract float %add272.1, %mul.i.i664.2, !dbg !199
  %add272.3 = fadd contract float %add272.2, %mul.i.i664.3, !dbg !199
  %rescale.sroa.0.0 = select i1 %cmp235, float %mul.i.i, float 1.000000e+00, !dbg !192
  %136 = bitcast float %add272.3 to i32, !dbg !200
  %137 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %138 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %137) #11, !dbg !208
  %xor.i.i.i665 = xor i32 %138, 32, !dbg !209
  %139 = and i32 %138, -64, !dbg !210
  %and.i.i.i666 = add nsw i32 %139, 64, !dbg !210
  %cmp.not.i.i.i667 = icmp slt i32 %xor.i.i.i665, %and.i.i.i666, !dbg !211
  %cond.i.i.i668 = select i1 %cmp.not.i.i.i667, i32 %xor.i.i.i665, i32 %138, !dbg !212
  %shl.i.i.i669 = shl i32 %cond.i.i.i668, 2, !dbg !213
  %140 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i669, i32 %136), !dbg !214
  %141 = bitcast i32 %140 to float, !dbg !215
  %add.i.i670 = fadd contract float %add272.3, %141, !dbg !216
  %142 = bitcast float %add.i.i670 to i32, !dbg !219
  %143 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !224
  %144 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %143) #11, !dbg !227
  %xor.i.i.i.i671 = xor i32 %144, 16, !dbg !228
  %145 = and i32 %144, -64, !dbg !229
  %and.i.i.i.i672 = add nsw i32 %145, 64, !dbg !229
  %cmp.not.i.i.i.i673 = icmp slt i32 %xor.i.i.i.i671, %and.i.i.i.i672, !dbg !230
  %cond.i.i.i.i674 = select i1 %cmp.not.i.i.i.i673, i32 %xor.i.i.i.i671, i32 %144, !dbg !231
  %shl.i.i.i.i675 = shl i32 %cond.i.i.i.i674, 2, !dbg !232
  %146 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i675, i32 %142), !dbg !233
  %147 = bitcast i32 %146 to float, !dbg !234
  %add.i.i.i = fadd contract float %add.i.i670, %147, !dbg !235
  %cmp281 = fcmp contract une float %rescale.sroa.0.0, 1.000000e+00, !dbg !237
  %mul285 = fmul contract float %denominator.sroa.0.0724, %rescale.sroa.0.0, !dbg !238
  %denominator.sroa.0.1 = select i1 %cmp281, float %mul285, float %denominator.sroa.0.0724, !dbg !238
  %add290 = fadd contract float %denominator.sroa.0.1, %add.i.i.i, !dbg !239
  %148 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %149 = fptrunc float %mul.i.i664 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %148), !dbg !240, !noalias !244
  %150 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %151 = fptrunc float %mul.i.i664.1 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %150), !dbg !249, !noalias !244
  %__1.sroa.0.0.vec.insert = insertelement <4 x half> poison, half %149, i64 0, !dbg !251
  %__1.sroa.0.2.vec.insert = insertelement <4 x half> %__1.sroa.0.0.vec.insert, half %151, i64 1, !dbg !251
  %152 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !254, !noalias !258
  %153 = fptrunc float %mul.i.i664.2 to half, !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %152), !dbg !254, !noalias !258
  %154 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !258
  %155 = fptrunc float %mul.i.i664.3 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %154), !dbg !263, !noalias !258
  %__1.sroa.0.4.vec.insert = insertelement <4 x half> %__1.sroa.0.2.vec.insert, half %153, i64 2, !dbg !265
  %__1.sroa.0.6.vec.insert = insertelement <4 x half> %__1.sroa.0.4.vec.insert, half %155, i64 3, !dbg !265
  br i1 %cmp281, label %for.body312.preheader, label %if.end322, !dbg !267

for.body312.preheader:                            ; preds = %if.end.1
  %output_acc.sroa.0.0.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 0, !dbg !268
  %mul316 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.0.0.vec.extract, !dbg !269
  %output_acc.sroa.0.0.vec.insert877 = insertelement <4 x float> poison, float %mul316, i64 0, !dbg !270
  %output_acc.sroa.0.4.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 1, !dbg !268
  %mul316.1 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.0.4.vec.extract, !dbg !269
  %output_acc.sroa.0.4.vec.insert886 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert877, float %mul316.1, i64 1, !dbg !270
  %output_acc.sroa.0.8.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 2, !dbg !268
  %mul316.2 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.0.8.vec.extract, !dbg !269
  %output_acc.sroa.0.8.vec.insert895 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert886, float %mul316.2, i64 2, !dbg !270
  %output_acc.sroa.0.12.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 3, !dbg !268
  %mul316.3 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.0.12.vec.extract, !dbg !269
  %output_acc.sroa.0.12.vec.insert904 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert895, float %mul316.3, i64 3, !dbg !270
  %output_acc.sroa.28.16.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 0, !dbg !268
  %mul316.4 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.28.16.vec.extract, !dbg !269
  %output_acc.sroa.28.16.vec.insert914 = insertelement <4 x float> poison, float %mul316.4, i64 0, !dbg !270
  %output_acc.sroa.28.20.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 1, !dbg !268
  %mul316.5 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.28.20.vec.extract, !dbg !269
  %output_acc.sroa.28.20.vec.insert923 = insertelement <4 x float> %output_acc.sroa.28.16.vec.insert914, float %mul316.5, i64 1, !dbg !270
  %output_acc.sroa.28.24.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 2, !dbg !268
  %mul316.6 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.28.24.vec.extract, !dbg !269
  %output_acc.sroa.28.24.vec.insert932 = insertelement <4 x float> %output_acc.sroa.28.20.vec.insert923, float %mul316.6, i64 2, !dbg !270
  %output_acc.sroa.28.28.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 3, !dbg !268
  %mul316.7 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.28.28.vec.extract, !dbg !269
  %output_acc.sroa.28.28.vec.insert941 = insertelement <4 x float> %output_acc.sroa.28.24.vec.insert932, float %mul316.7, i64 3, !dbg !270
  %output_acc.sroa.54.32.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 0, !dbg !268
  %mul316.8 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.54.32.vec.extract, !dbg !269
  %output_acc.sroa.54.32.vec.insert951 = insertelement <4 x float> poison, float %mul316.8, i64 0, !dbg !270
  %output_acc.sroa.54.36.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 1, !dbg !268
  %mul316.9 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.54.36.vec.extract, !dbg !269
  %output_acc.sroa.54.36.vec.insert960 = insertelement <4 x float> %output_acc.sroa.54.32.vec.insert951, float %mul316.9, i64 1, !dbg !270
  %output_acc.sroa.54.40.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 2, !dbg !268
  %mul316.10 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.54.40.vec.extract, !dbg !269
  %output_acc.sroa.54.40.vec.insert969 = insertelement <4 x float> %output_acc.sroa.54.36.vec.insert960, float %mul316.10, i64 2, !dbg !270
  %output_acc.sroa.54.44.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 3, !dbg !268
  %mul316.11 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.54.44.vec.extract, !dbg !269
  %output_acc.sroa.54.44.vec.insert978 = insertelement <4 x float> %output_acc.sroa.54.40.vec.insert969, float %mul316.11, i64 3, !dbg !270
  %output_acc.sroa.80.48.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 0, !dbg !268
  %mul316.12 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.80.48.vec.extract, !dbg !269
  %output_acc.sroa.80.48.vec.insert988 = insertelement <4 x float> poison, float %mul316.12, i64 0, !dbg !270
  %output_acc.sroa.80.52.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 1, !dbg !268
  %mul316.13 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.80.52.vec.extract, !dbg !269
  %output_acc.sroa.80.52.vec.insert997 = insertelement <4 x float> %output_acc.sroa.80.48.vec.insert988, float %mul316.13, i64 1, !dbg !270
  %output_acc.sroa.80.56.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 2, !dbg !268
  %mul316.14 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.80.56.vec.extract, !dbg !269
  %output_acc.sroa.80.56.vec.insert1006 = insertelement <4 x float> %output_acc.sroa.80.52.vec.insert997, float %mul316.14, i64 2, !dbg !270
  %output_acc.sroa.80.60.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 3, !dbg !268
  %mul316.15 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.80.60.vec.extract, !dbg !269
  %output_acc.sroa.80.60.vec.insert1015 = insertelement <4 x float> %output_acc.sroa.80.56.vec.insert1006, float %mul316.15, i64 3, !dbg !270
  br label %if.end322

if.end322:                                        ; preds = %for.body312.preheader, %if.end.1
  %output_acc.sroa.0.1 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert904, %for.body312.preheader ], [ %output_acc.sroa.0.0, %if.end.1 ], !dbg !122
  %output_acc.sroa.28.1 = phi <4 x float> [ %output_acc.sroa.28.28.vec.insert941, %for.body312.preheader ], [ %output_acc.sroa.28.0, %if.end.1 ], !dbg !122
  %output_acc.sroa.54.1 = phi <4 x float> [ %output_acc.sroa.54.44.vec.insert978, %for.body312.preheader ], [ %output_acc.sroa.54.0, %if.end.1 ], !dbg !122
  %output_acc.sroa.80.1 = phi <4 x float> [ %output_acc.sroa.80.60.vec.insert1015, %for.body312.preheader ], [ %output_acc.sroa.80.0, %if.end.1 ], !dbg !122
  %shr330 = lshr exact i32 %mul46, 2
  %add331 = add nuw nsw i32 %shr330, %shr328
  %cmp332 = icmp ult i32 %add331, 256
  br i1 %cmp332, label %if.then333, label %if.end367, !dbg !271

if.then333:                                       ; preds = %if.end322
  %156 = getelementptr inbounds i8, ptr addrspace(4) %35, i64 %.idx, !dbg !272
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %156, align 8, !dbg !273, !tbaa !30
  %condval_2.sroa.5.0.add.ptr353.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %156, i64 4, !dbg !273
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr353.sroa_idx, align 4, !dbg !273, !tbaa !30
  br label %if.end367, !dbg !274

if.end367:                                        ; preds = %if.end322, %if.then333
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then333 ], [ 0, %if.end322 ], !dbg !122
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then333 ], [ 0, %if.end322 ], !dbg !122
  br i1 %cmp332, label %if.then333.1, label %if.end367.1, !dbg !271

if.then333.1:                                     ; preds = %if.end367
  %157 = getelementptr inbounds i8, ptr addrspace(4) %36, i64 %.idx, !dbg !272
  %add.ptr353.1 = getelementptr inbounds i8, ptr addrspace(4) %157, i64 128, !dbg !272
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %add.ptr353.1, align 8, !dbg !273, !tbaa !30
  %condval_2.sroa.5.0.add.ptr353.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %157, i64 132, !dbg !273
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr353.sroa_idx.1, align 4, !dbg !273, !tbaa !30
  br label %if.end367.1, !dbg !274

if.end367.1:                                      ; preds = %if.then333.1, %if.end367
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then333.1 ], [ 0, %if.end367 ], !dbg !122
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then333.1 ], [ 0, %if.end367 ], !dbg !122
  br i1 %cmp332, label %if.then333.2, label %if.end367.2, !dbg !271

if.then333.2:                                     ; preds = %if.end367.1
  %158 = getelementptr inbounds i8, ptr addrspace(4) %37, i64 %.idx, !dbg !272
  %add.ptr353.2 = getelementptr inbounds i8, ptr addrspace(4) %158, i64 256, !dbg !272
  %condval_2.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %add.ptr353.2, align 8, !dbg !273, !tbaa !30
  %condval_2.sroa.5.0.add.ptr353.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %158, i64 260, !dbg !273
  %condval_2.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr353.sroa_idx.2, align 4, !dbg !273, !tbaa !30
  br label %if.end367.2, !dbg !274

if.end367.2:                                      ; preds = %if.then333.2, %if.end367.1
  %condval_2.sroa.5.0.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2, %if.then333.2 ], [ 0, %if.end367.1 ], !dbg !122
  %condval_2.sroa.0.0.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2, %if.then333.2 ], [ 0, %if.end367.1 ], !dbg !122
  br i1 %cmp332, label %if.then333.3, label %if.end367.3, !dbg !271

if.then333.3:                                     ; preds = %if.end367.2
  %159 = getelementptr inbounds i8, ptr addrspace(4) %38, i64 %.idx, !dbg !272
  %add.ptr353.3 = getelementptr inbounds i8, ptr addrspace(4) %159, i64 384, !dbg !272
  %condval_2.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %add.ptr353.3, align 8, !dbg !273, !tbaa !30
  %condval_2.sroa.5.0.add.ptr353.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %159, i64 388, !dbg !273
  %condval_2.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr353.sroa_idx.3, align 4, !dbg !273, !tbaa !30
  br label %if.end367.3, !dbg !274

if.end367.3:                                      ; preds = %if.then333.3, %if.end367.2
  %condval_2.sroa.5.0.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3, %if.then333.3 ], [ 0, %if.end367.2 ], !dbg !122
  %condval_2.sroa.0.0.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3, %if.then333.3 ], [ 0, %if.end367.2 ], !dbg !122
  %160 = and i32 %condval_2.sroa.0.0.3, 65535, !dbg !275
  %v_column_local.sroa.18.0.insert.ext = zext nneg i32 %160 to i64, !dbg !275
  %v_column_local.sroa.18.0.insert.shift = shl nuw i64 %v_column_local.sroa.18.0.insert.ext, 48, !dbg !275
  %161 = and i32 %condval_2.sroa.0.0.2, 65535, !dbg !275
  %v_column_local.sroa.14.0.insert.ext = zext nneg i32 %161 to i64, !dbg !275
  %v_column_local.sroa.14.0.insert.shift = shl nuw nsw i64 %v_column_local.sroa.14.0.insert.ext, 32, !dbg !275
  %v_column_local.sroa.14.0.insert.insert = or disjoint i64 %v_column_local.sroa.18.0.insert.shift, %v_column_local.sroa.14.0.insert.shift, !dbg !275
  %162 = shl i32 %condval_2.sroa.0.0.1, 16, !dbg !275
  %v_column_local.sroa.10.0.insert.shift = zext i32 %162 to i64, !dbg !275
  %v_column_local.sroa.10.0.insert.insert = or disjoint i64 %v_column_local.sroa.14.0.insert.insert, %v_column_local.sroa.10.0.insert.shift, !dbg !275
  %163 = and i32 %condval_2.sroa.0.0, 65535, !dbg !275
  %v_column_local.sroa.0.0.insert.ext = zext nneg i32 %163 to i64, !dbg !275
  %v_column_local.sroa.0.0.insert.insert = or disjoint i64 %v_column_local.sroa.10.0.insert.insert, %v_column_local.sroa.0.0.insert.ext, !dbg !275
  store i64 %v_column_local.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr409, align 8, !dbg !275
  %v_tile_local.sroa.0.2.extract.shift = lshr i32 %condval_2.sroa.0.0, 16, !dbg !276
  %v_tile_local.sroa.0.2.extract.trunc = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift to i64, !dbg !276
  %v_tile_local.sroa.8.10.extract.shift = and i32 %condval_2.sroa.0.0.1, -65536, !dbg !275
  %v_tile_local.sroa.14.18.extract.shift = lshr i32 %condval_2.sroa.0.0.2, 16, !dbg !276
  %v_tile_local.sroa.14.18.extract.trunc = zext nneg i32 %v_tile_local.sroa.14.18.extract.shift to i64, !dbg !276
  %v_tile_local.sroa.20.26.extract.shift = lshr i32 %condval_2.sroa.0.0.3, 16, !dbg !276
  %v_tile_local.sroa.20.26.extract.trunc = zext nneg i32 %v_tile_local.sroa.20.26.extract.shift to i64, !dbg !276
  %v_column_local.sroa.18.0.insert.shift808 = shl nuw i64 %v_tile_local.sroa.20.26.extract.trunc, 48, !dbg !275
  %v_column_local.sroa.14.0.insert.shift793 = shl nuw nsw i64 %v_tile_local.sroa.14.18.extract.trunc, 32, !dbg !275
  %v_column_local.sroa.14.0.insert.insert795 = or disjoint i64 %v_column_local.sroa.18.0.insert.shift808, %v_column_local.sroa.14.0.insert.shift793, !dbg !275
  %v_column_local.sroa.10.0.insert.shift778 = zext i32 %v_tile_local.sroa.8.10.extract.shift to i64, !dbg !275
  %v_column_local.sroa.10.0.insert.insert780 = or disjoint i64 %v_column_local.sroa.14.0.insert.insert795, %v_column_local.sroa.10.0.insert.shift778, !dbg !275
  %v_column_local.sroa.0.0.insert.insert767 = or disjoint i64 %v_column_local.sroa.10.0.insert.insert780, %v_tile_local.sroa.0.2.extract.trunc, !dbg !275
  store i64 %v_column_local.sroa.0.0.insert.insert767, ptr addrspace(3) %add.ptr409.1, align 8, !dbg !275
  %164 = and i32 %condval_2.sroa.5.0.3, 65535, !dbg !275
  %v_column_local.sroa.18.0.insert.ext812 = zext nneg i32 %164 to i64, !dbg !275
  %v_column_local.sroa.18.0.insert.shift813 = shl nuw i64 %v_column_local.sroa.18.0.insert.ext812, 48, !dbg !275
  %165 = and i32 %condval_2.sroa.5.0.2, 65535, !dbg !275
  %v_column_local.sroa.14.0.insert.ext797 = zext nneg i32 %165 to i64, !dbg !275
  %v_column_local.sroa.14.0.insert.shift798 = shl nuw nsw i64 %v_column_local.sroa.14.0.insert.ext797, 32, !dbg !275
  %v_column_local.sroa.14.0.insert.insert800 = or disjoint i64 %v_column_local.sroa.18.0.insert.shift813, %v_column_local.sroa.14.0.insert.shift798, !dbg !275
  %166 = shl i32 %condval_2.sroa.5.0.1, 16, !dbg !275
  %v_column_local.sroa.10.0.insert.shift783 = zext i32 %166 to i64, !dbg !275
  %v_column_local.sroa.10.0.insert.insert785 = or disjoint i64 %v_column_local.sroa.14.0.insert.insert800, %v_column_local.sroa.10.0.insert.shift783, !dbg !275
  %167 = and i32 %condval_2.sroa.5.0, 65535, !dbg !275
  %v_column_local.sroa.0.0.insert.ext769 = zext nneg i32 %167 to i64, !dbg !275
  %v_column_local.sroa.0.0.insert.insert771 = or disjoint i64 %v_column_local.sroa.10.0.insert.insert785, %v_column_local.sroa.0.0.insert.ext769, !dbg !275
  store i64 %v_column_local.sroa.0.0.insert.insert771, ptr addrspace(3) %add.ptr409.2, align 8, !dbg !275
  %v_tile_local.sroa.5.6.extract.shift = lshr i32 %condval_2.sroa.5.0, 16, !dbg !276
  %v_tile_local.sroa.5.6.extract.trunc = zext nneg i32 %v_tile_local.sroa.5.6.extract.shift to i64, !dbg !276
  %v_tile_local.sroa.11.14.extract.shift = and i32 %condval_2.sroa.5.0.1, -65536, !dbg !275
  %v_tile_local.sroa.17.22.extract.shift = lshr i32 %condval_2.sroa.5.0.2, 16, !dbg !276
  %v_tile_local.sroa.17.22.extract.trunc = zext nneg i32 %v_tile_local.sroa.17.22.extract.shift to i64, !dbg !276
  %v_tile_local.sroa.23.30.extract.shift = lshr i32 %condval_2.sroa.5.0.3, 16, !dbg !276
  %v_tile_local.sroa.23.30.extract.trunc = zext nneg i32 %v_tile_local.sroa.23.30.extract.shift to i64, !dbg !276
  %v_column_local.sroa.18.0.insert.shift818 = shl nuw i64 %v_tile_local.sroa.23.30.extract.trunc, 48, !dbg !275
  %v_column_local.sroa.14.0.insert.shift803 = shl nuw nsw i64 %v_tile_local.sroa.17.22.extract.trunc, 32, !dbg !275
  %v_column_local.sroa.14.0.insert.insert805 = or disjoint i64 %v_column_local.sroa.18.0.insert.shift818, %v_column_local.sroa.14.0.insert.shift803, !dbg !275
  %v_column_local.sroa.10.0.insert.shift788 = zext i32 %v_tile_local.sroa.11.14.extract.shift to i64, !dbg !275
  %v_column_local.sroa.10.0.insert.insert790 = or disjoint i64 %v_column_local.sroa.14.0.insert.insert805, %v_column_local.sroa.10.0.insert.shift788, !dbg !275
  %v_column_local.sroa.0.0.insert.insert775 = or disjoint i64 %v_column_local.sroa.10.0.insert.insert790, %v_tile_local.sroa.5.6.extract.trunc, !dbg !275
  store i64 %v_column_local.sroa.0.0.insert.insert775, ptr addrspace(3) %add.ptr409.3, align 8, !dbg !275
  fence syncscope("warp") release, !dbg !277
  tail call void @llvm.mxc.barrier.warp(), !dbg !280
  fence syncscope("warp") acquire, !dbg !281
  %168 = load <4 x half>, ptr addrspace(3) %add.ptr437, align 8, !dbg !282
  %169 = load <4 x half>, ptr addrspace(3) %add.ptr437.1, align 8, !dbg !282
  %170 = load <4 x half>, ptr addrspace(3) %add.ptr437.2, align 8, !dbg !282
  %171 = load <4 x half>, ptr addrspace(3) %add.ptr437.3, align 8, !dbg !282
  %172 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %168, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.0.1), !dbg !283
  %173 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %169, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.28.1), !dbg !283
  %174 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %170, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.54.1), !dbg !283
  %175 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %171, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.80.1), !dbg !283
  br label %if.end463, !dbg !284

if.end463:                                        ; preds = %if.end367.3, %for.body38
  %output_acc.sroa.0.2 = phi <4 x float> [ %output_acc.sroa.0.0, %for.body38 ], [ %172, %if.end367.3 ], !dbg !122
  %output_acc.sroa.28.2 = phi <4 x float> [ %output_acc.sroa.28.0, %for.body38 ], [ %173, %if.end367.3 ], !dbg !122
  %output_acc.sroa.54.2 = phi <4 x float> [ %output_acc.sroa.54.0, %for.body38 ], [ %174, %if.end367.3 ], !dbg !122
  %output_acc.sroa.80.2 = phi <4 x float> [ %output_acc.sroa.80.0, %for.body38 ], [ %175, %if.end367.3 ], !dbg !122
  %normalizer.sroa.0.2 = phi float [ %normalizer.sroa.0.0723, %for.body38 ], [ %normalizer.sroa.0.1, %if.end367.3 ], !dbg !122
  %denominator.sroa.0.2 = phi float [ %denominator.sroa.0.0724, %for.body38 ], [ %add290, %if.end367.3 ], !dbg !122
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !285
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !286
  br i1 %exitcond.not, label %for.cond.cleanup36, label %for.body38, !dbg !46, !llvm.loop !287
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v030_codex_power_v_microtile_transpose_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v030_codex_power_v_microtile_transpose_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 25, column: 3, scope: !40)
!44 = !DILocation(line: 26, column: 52, scope: !40)
!45 = !DILocation(line: 26, column: 38, scope: !40)
!46 = !DILocation(line: 35, column: 3, scope: !40)
!47 = !DILocation(line: 68, column: 3, scope: !48, inlinedAt: !50)
!48 = distinct !DISubprogram(name: "__barrier_warp", scope: !49, file: !49, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!49 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!50 = distinct !DILocation(line: 192, column: 3, scope: !51, inlinedAt: !52)
!51 = distinct !DISubprogram(name: "__syncwarp", scope: !49, file: !49, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!52 = distinct !DILocation(line: 142, column: 3, scope: !40)
!53 = !DILocation(line: 69, column: 3, scope: !48, inlinedAt: !50)
!54 = !DILocation(line: 70, column: 3, scope: !48, inlinedAt: !50)
!55 = !DILocation(line: 145, column: 24, scope: !40)
!56 = !DILocation(line: 145, column: 40, scope: !40)
!57 = !DILocation(line: 148, column: 3, scope: !40)
!58 = !DILocation(line: 1007, column: 10, scope: !59, inlinedAt: !61)
!59 = distinct !DISubprogram(name: "__float2half_rn", scope: !60, file: !60, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!60 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!61 = distinct !DILocation(line: 1077, column: 18, scope: !62, inlinedAt: !63)
!62 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !60, file: !60, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!63 = distinct !DILocation(line: 1295, column: 23, scope: !64, inlinedAt: !65)
!64 = distinct !DISubprogram(name: "__float22half2_rn", scope: !60, file: !60, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!65 = distinct !DILocation(line: 151, column: 27, scope: !40)
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
!80 = distinct !DILocation(line: 152, column: 27, scope: !40)
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
!91 = !DILocation(line: 153, column: 45, scope: !40)
!92 = !DILocation(line: 154, column: 40, scope: !40)
!93 = !DILocation(line: 154, column: 127, scope: !40)
!94 = !DILocation(line: 68, column: 3, scope: !48, inlinedAt: !95)
!95 = distinct !DILocation(line: 192, column: 3, scope: !51, inlinedAt: !96)
!96 = distinct !DILocation(line: 156, column: 3, scope: !40)
!97 = !DILocation(line: 69, column: 3, scope: !48, inlinedAt: !95)
!98 = !DILocation(line: 70, column: 3, scope: !48, inlinedAt: !95)
!99 = !DILocation(line: 158, column: 8, scope: !40)
!100 = !DILocation(line: 158, column: 3, scope: !40)
!101 = !DILocation(line: 159, column: 22, scope: !40)
!102 = !DILocation(line: 159, column: 131, scope: !40)
!103 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!104 = !{i32 2, i32 -1, i32 -1, i32 -1}
!105 = !DILocation(line: 159, column: 168, scope: !40)
!106 = !DILocation(line: 161, column: 1, scope: !40)
!107 = !DILocation(line: 31, column: 38, scope: !40)
!108 = !DILocation(line: 36, column: 24, scope: !40)
!109 = !DILocation(line: 36, column: 106, scope: !40)
!110 = !DILocation(line: 37, column: 12, scope: !40)
!111 = !DILocation(line: 37, column: 28, scope: !40)
!112 = !DILocation(line: 68, column: 3, scope: !48, inlinedAt: !113)
!113 = distinct !DILocation(line: 192, column: 3, scope: !51, inlinedAt: !114)
!114 = distinct !DILocation(line: 38, column: 7, scope: !40)
!115 = !DILocation(line: 69, column: 3, scope: !48, inlinedAt: !113)
!116 = !DILocation(line: 70, column: 3, scope: !48, inlinedAt: !113)
!117 = !DILocation(line: 40, column: 7, scope: !40)
!118 = !DILocation(line: 43, column: 71, scope: !40)
!119 = !DILocation(line: 43, column: 13, scope: !40)
!120 = !DILocation(line: 44, column: 19, scope: !40)
!121 = !DILocation(line: 45, column: 9, scope: !40)
!122 = !DILocation(line: 0, scope: !40)
!123 = !DILocation(line: 48, column: 339, scope: !40)
!124 = !DILocation(line: 68, column: 3, scope: !48, inlinedAt: !125)
!125 = distinct !DILocation(line: 192, column: 3, scope: !51, inlinedAt: !126)
!126 = distinct !DILocation(line: 50, column: 7, scope: !40)
!127 = !DILocation(line: 69, column: 3, scope: !48, inlinedAt: !125)
!128 = !DILocation(line: 70, column: 3, scope: !48, inlinedAt: !125)
!129 = !DILocation(line: 54, column: 32, scope: !40)
!130 = !DILocation(line: 56, column: 37, scope: !40)
!131 = !{i32 -1, i32 3, i32 -1}
!132 = !DILocation(line: 64, column: 70, scope: !40)
!133 = !DILocation(line: 64, column: 13, scope: !40)
!134 = !DILocation(line: 64, column: 63, scope: !40)
!135 = !DILocation(line: 351, column: 10, scope: !136, inlinedAt: !138)
!136 = distinct !DISubprogram(name: "max", scope: !137, file: !137, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!137 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!138 = distinct !DILocation(line: 75, column: 24, scope: !40)
!139 = !DILocation(line: 1018, column: 9, scope: !140, inlinedAt: !141)
!140 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !49, file: !49, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!141 = distinct !DILocation(line: 338, column: 10, scope: !142, inlinedAt: !144)
!142 = distinct !DISubprogram(name: "shfl_xor_sync<float>", scope: !143, file: !143, line: 337, type: !7, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!143 = !DIFile(filename: "src/tl_templates/maca/common.h", directory: "/root/tilelang-metax")
!144 = distinct !DILocation(line: 95, column: 24, scope: !145, inlinedAt: !147)
!145 = distinct !DISubprogram(name: "run<float>", scope: !146, file: !146, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!146 = !DIFile(filename: "src/tl_templates/maca/reduce.h", directory: "/root/tilelang-metax")
!147 = distinct !DILocation(line: 77, column: 22, scope: !40)
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
!189 = !DILocation(line: 78, column: 54, scope: !40)
!190 = !DILocation(line: 78, column: 71, scope: !40)
!191 = !DILocation(line: 78, column: 37, scope: !40)
!192 = !DILocation(line: 78, column: 11, scope: !40)
!193 = !DILocation(line: 86, column: 44, scope: !40)
!194 = !DILocation(line: 86, column: 61, scope: !40)
!195 = !DILocation(line: 86, column: 102, scope: !40)
!196 = !DILocation(line: 285, column: 49, scope: !197, inlinedAt: !198)
!197 = distinct !DISubprogram(name: "exp2f", scope: !137, file: !137, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!198 = distinct !DILocation(line: 86, column: 23, scope: !40)
!199 = !DILocation(line: 91, column: 38, scope: !40)
!200 = !DILocation(line: 1018, column: 9, scope: !140, inlinedAt: !201)
!201 = distinct !DILocation(line: 338, column: 10, scope: !142, inlinedAt: !202)
!202 = distinct !DILocation(line: 95, column: 24, scope: !203, inlinedAt: !204)
!203 = distinct !DISubprogram(name: "run<float>", scope: !146, file: !146, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!204 = distinct !DILocation(line: 93, column: 22, scope: !40)
!205 = !DILocation(line: 171, column: 37, scope: !149, inlinedAt: !206)
!206 = distinct !DILocation(line: 990, column: 14, scope: !151, inlinedAt: !207)
!207 = distinct !DILocation(line: 1019, column: 11, scope: !140, inlinedAt: !201)
!208 = !DILocation(line: 171, column: 10, scope: !149, inlinedAt: !206)
!209 = !DILocation(line: 991, column: 20, scope: !151, inlinedAt: !207)
!210 = !DILocation(line: 992, column: 36, scope: !151, inlinedAt: !207)
!211 = !DILocation(line: 992, column: 17, scope: !151, inlinedAt: !207)
!212 = !DILocation(line: 992, column: 11, scope: !151, inlinedAt: !207)
!213 = !DILocation(line: 993, column: 43, scope: !151, inlinedAt: !207)
!214 = !DILocation(line: 993, column: 10, scope: !151, inlinedAt: !207)
!215 = !DILocation(line: 1020, column: 14, scope: !140, inlinedAt: !201)
!216 = !DILocation(line: 25, column: 14, scope: !217, inlinedAt: !218)
!217 = distinct !DISubprogram(name: "operator()<float>", scope: !146, file: !146, line: 24, type: !7, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!218 = distinct !DILocation(line: 95, column: 11, scope: !203, inlinedAt: !204)
!219 = !DILocation(line: 1018, column: 9, scope: !140, inlinedAt: !220)
!220 = distinct !DILocation(line: 338, column: 10, scope: !142, inlinedAt: !221)
!221 = distinct !DILocation(line: 95, column: 24, scope: !222, inlinedAt: !223)
!222 = distinct !DISubprogram(name: "run<float>", scope: !146, file: !146, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!223 = distinct !DILocation(line: 100, column: 14, scope: !203, inlinedAt: !204)
!224 = !DILocation(line: 171, column: 37, scope: !149, inlinedAt: !225)
!225 = distinct !DILocation(line: 990, column: 14, scope: !151, inlinedAt: !226)
!226 = distinct !DILocation(line: 1019, column: 11, scope: !140, inlinedAt: !220)
!227 = !DILocation(line: 171, column: 10, scope: !149, inlinedAt: !225)
!228 = !DILocation(line: 991, column: 20, scope: !151, inlinedAt: !226)
!229 = !DILocation(line: 992, column: 36, scope: !151, inlinedAt: !226)
!230 = !DILocation(line: 992, column: 17, scope: !151, inlinedAt: !226)
!231 = !DILocation(line: 992, column: 11, scope: !151, inlinedAt: !226)
!232 = !DILocation(line: 993, column: 43, scope: !151, inlinedAt: !226)
!233 = !DILocation(line: 993, column: 10, scope: !151, inlinedAt: !226)
!234 = !DILocation(line: 1020, column: 14, scope: !140, inlinedAt: !220)
!235 = !DILocation(line: 25, column: 14, scope: !217, inlinedAt: !236)
!236 = distinct !DILocation(line: 95, column: 11, scope: !222, inlinedAt: !223)
!237 = !DILocation(line: 94, column: 22, scope: !40)
!238 = !DILocation(line: 94, column: 11, scope: !40)
!239 = !DILocation(line: 97, column: 40, scope: !40)
!240 = !DILocation(line: 1007, column: 10, scope: !59, inlinedAt: !241)
!241 = distinct !DILocation(line: 1077, column: 18, scope: !62, inlinedAt: !242)
!242 = distinct !DILocation(line: 1295, column: 23, scope: !64, inlinedAt: !243)
!243 = distinct !DILocation(line: 100, column: 29, scope: !40)
!244 = !{!245, !247}
!245 = distinct !{!245, !246, !"_ZL17__floats2half2_rnff: %agg.result"}
!246 = distinct !{!246, !"_ZL17__floats2half2_rnff"}
!247 = distinct !{!247, !248, !"_ZL17__float22half2_rn6float2: %agg.result"}
!248 = distinct !{!248, !"_ZL17__float22half2_rn6float2"}
!249 = !DILocation(line: 1007, column: 10, scope: !59, inlinedAt: !250)
!250 = distinct !DILocation(line: 1077, column: 38, scope: !62, inlinedAt: !242)
!251 = !DILocation(line: 593, column: 26, scope: !252, inlinedAt: !253)
!252 = distinct !DISubprogram(name: "operator=", scope: !60, file: !60, line: 592, type: !7, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!253 = distinct !DILocation(line: 100, column: 27, scope: !40)
!254 = !DILocation(line: 1007, column: 10, scope: !59, inlinedAt: !255)
!255 = distinct !DILocation(line: 1077, column: 18, scope: !62, inlinedAt: !256)
!256 = distinct !DILocation(line: 1295, column: 23, scope: !64, inlinedAt: !257)
!257 = distinct !DILocation(line: 101, column: 29, scope: !40)
!258 = !{!259, !261}
!259 = distinct !{!259, !260, !"_ZL17__floats2half2_rnff: %agg.result"}
!260 = distinct !{!260, !"_ZL17__floats2half2_rnff"}
!261 = distinct !{!261, !262, !"_ZL17__float22half2_rn6float2: %agg.result"}
!262 = distinct !{!262, !"_ZL17__float22half2_rn6float2"}
!263 = !DILocation(line: 1007, column: 10, scope: !59, inlinedAt: !264)
!264 = distinct !DILocation(line: 1077, column: 38, scope: !62, inlinedAt: !256)
!265 = !DILocation(line: 593, column: 26, scope: !252, inlinedAt: !266)
!266 = distinct !DILocation(line: 101, column: 27, scope: !40)
!267 = !DILocation(line: 103, column: 11, scope: !40)
!268 = !DILocation(line: 106, column: 30, scope: !40)
!269 = !DILocation(line: 106, column: 46, scope: !40)
!270 = !DILocation(line: 106, column: 27, scope: !40)
!271 = !DILocation(line: 113, column: 13, scope: !40)
!272 = !DILocation(line: 114, column: 35, scope: !40)
!273 = !DILocation(line: 114, column: 21, scope: !40)
!274 = !DILocation(line: 115, column: 9, scope: !40)
!275 = !DILocation(line: 126, column: 196, scope: !40)
!276 = !DILocation(line: 124, column: 38, scope: !40)
!277 = !DILocation(line: 68, column: 3, scope: !48, inlinedAt: !278)
!278 = distinct !DILocation(line: 192, column: 3, scope: !51, inlinedAt: !279)
!279 = distinct !DILocation(line: 128, column: 7, scope: !40)
!280 = !DILocation(line: 69, column: 3, scope: !48, inlinedAt: !278)
!281 = !DILocation(line: 70, column: 3, scope: !48, inlinedAt: !278)
!282 = !DILocation(line: 131, column: 38, scope: !40)
!283 = !DILocation(line: 135, column: 43, scope: !40)
!284 = !DILocation(line: 140, column: 5, scope: !40)
!285 = !DILocation(line: 35, column: 40, scope: !40)
!286 = !DILocation(line: 35, column: 35, scope: !40)
!287 = distinct !{!287, !46, !288, !32}
!288 = !DILocation(line: 141, column: 3, scope: !40)
