; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v031_codex_power_output_relay_swizzle_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v031_codex_power_output_relay_swizzle_sc-16g-2/codegen/case12.device.cpp"
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
  %add104652 = and i32 %12, 32
  %shr100653 = add nuw nsw i32 %add104652, %2
  %mul106 = and i32 %shr100653, 32
  %add114654 = and i32 %12, 16
  %and109655 = add nuw nsw i32 %add114654, %2
  %mul116 = and i32 %and109655, 16
  %and119657 = mul nuw nsw i32 %2, 9
  %mul125 = and i32 %and119657, 8
  %conv = zext nneg i32 %0 to i64
  %mul62 = shl nuw nsw i64 %conv, 16
  %mul71 = zext nneg i32 %12 to i64
  %invariant.gep743 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul71, !dbg !46
  %and152 = lshr i32 %2, 1
  %shr160 = lshr i32 %2, 5
  %add163 = add nuw nsw i32 %shr160, %2
  %and164 = shl nuw nsw i32 %add163, 3
  %mul165 = and i32 %and164, 8
  %mul170 = and i32 %3, 4
  %13 = or disjoint i32 %mul9, %mul165
  %add158 = or disjoint i32 %13, %mul170
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
  %invariant.gep1043 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %21, !dbg !46
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
  %.idx721 = shl nuw nsw i32 %xor, 3
  %40 = getelementptr inbounds i8, ptr addrspace(3) %39, i32 %.idx721
  %add.ptr409 = getelementptr inbounds i8, ptr addrspace(3) %40, i32 2048
  %add398.1 = or disjoint i32 %mul397, 256
  %41 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add398.1
  %xor404.1 = shl nuw nsw i32 %xor, 3
  %.idx721.1 = xor i32 %xor404.1, 8
  %42 = getelementptr inbounds i8, ptr addrspace(3) %41, i32 %.idx721.1
  %add.ptr409.1 = getelementptr inbounds i8, ptr addrspace(3) %42, i32 2048
  %add398.2 = or disjoint i32 %mul397, 512
  %43 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add398.2
  %xor404.2 = shl nuw nsw i32 %xor, 3
  %.idx721.2 = xor i32 %xor404.2, 16
  %44 = getelementptr inbounds i8, ptr addrspace(3) %43, i32 %.idx721.2
  %add.ptr409.2 = getelementptr inbounds i8, ptr addrspace(3) %44, i32 2048
  %add398.3 = or disjoint i32 %mul397, 768
  %45 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add398.3
  %xor404.3 = shl nuw nsw i32 %xor, 3
  %.idx721.3 = xor i32 %xor404.3, 24
  %46 = getelementptr inbounds i8, ptr addrspace(3) %45, i32 %.idx721.3
  %add.ptr409.3 = getelementptr inbounds i8, ptr addrspace(3) %46, i32 2048
  %add426 = or disjoint i32 %mul419, %mul425
  %47 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add426
  %.idx720 = shl nuw nsw i32 %20, 3
  %48 = getelementptr inbounds i8, ptr addrspace(3) %47, i32 %.idx720
  %add.ptr437 = getelementptr inbounds i8, ptr addrspace(3) %48, i32 2048
  %add421.1 = or disjoint i32 %mul419, %mul425
  %add426.1 = or disjoint i32 %add421.1, 64
  %49 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add426.1
  %xor432.1 = shl nuw nsw i32 %20, 3
  %.idx720.1 = xor i32 %xor432.1, 8
  %50 = getelementptr inbounds i8, ptr addrspace(3) %49, i32 %.idx720.1
  %add.ptr437.1 = getelementptr inbounds i8, ptr addrspace(3) %50, i32 2048
  %add421.2 = or disjoint i32 %mul419, %mul425
  %add426.2 = or disjoint i32 %add421.2, 128
  %51 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add426.2
  %xor432.2 = shl nuw nsw i32 %20, 3
  %.idx720.2 = xor i32 %xor432.2, 16
  %52 = getelementptr inbounds i8, ptr addrspace(3) %51, i32 %.idx720.2
  %add.ptr437.2 = getelementptr inbounds i8, ptr addrspace(3) %52, i32 2048
  %add421.3 = or disjoint i32 %mul419, %mul425
  %add426.3 = or disjoint i32 %add421.3, 192
  %53 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add426.3
  %xor432.3 = shl nuw nsw i32 %20, 3
  %.idx720.3 = xor i32 %xor432.3, 24
  %54 = getelementptr inbounds i8, ptr addrspace(3) %53, i32 %.idx720.3
  %add.ptr437.3 = getelementptr inbounds i8, ptr addrspace(3) %54, i32 2048
  br label %for.body38, !dbg !46

for.cond.cleanup36:                               ; preds = %if.end463
  fence syncscope("warp") release, !dbg !47
  tail call void @llvm.mxc.barrier.warp(), !dbg !53
  fence syncscope("warp") acquire, !dbg !54
  %output_acc.sroa.0.0.vec.extract896 = extractelement <4 x float> %output_acc.sroa.0.2, i64 0, !dbg !55
  %div = fdiv contract float %output_acc.sroa.0.0.vec.extract896, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.0.4.vec.extract905 = extractelement <4 x float> %output_acc.sroa.0.2, i64 1, !dbg !55
  %div.1 = fdiv contract float %output_acc.sroa.0.4.vec.extract905, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.0.8.vec.extract914 = extractelement <4 x float> %output_acc.sroa.0.2, i64 2, !dbg !55
  %div.2 = fdiv contract float %output_acc.sroa.0.8.vec.extract914, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.0.12.vec.extract923 = extractelement <4 x float> %output_acc.sroa.0.2, i64 3, !dbg !55
  %div.3 = fdiv contract float %output_acc.sroa.0.12.vec.extract923, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.28.16.vec.extract933 = extractelement <4 x float> %output_acc.sroa.28.2, i64 0, !dbg !55
  %div.4 = fdiv contract float %output_acc.sroa.28.16.vec.extract933, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.28.20.vec.extract942 = extractelement <4 x float> %output_acc.sroa.28.2, i64 1, !dbg !55
  %div.5 = fdiv contract float %output_acc.sroa.28.20.vec.extract942, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.28.24.vec.extract951 = extractelement <4 x float> %output_acc.sroa.28.2, i64 2, !dbg !55
  %div.6 = fdiv contract float %output_acc.sroa.28.24.vec.extract951, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.28.28.vec.extract960 = extractelement <4 x float> %output_acc.sroa.28.2, i64 3, !dbg !55
  %div.7 = fdiv contract float %output_acc.sroa.28.28.vec.extract960, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.54.32.vec.extract970 = extractelement <4 x float> %output_acc.sroa.54.2, i64 0, !dbg !55
  %div.8 = fdiv contract float %output_acc.sroa.54.32.vec.extract970, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.54.36.vec.extract979 = extractelement <4 x float> %output_acc.sroa.54.2, i64 1, !dbg !55
  %div.9 = fdiv contract float %output_acc.sroa.54.36.vec.extract979, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.54.40.vec.extract988 = extractelement <4 x float> %output_acc.sroa.54.2, i64 2, !dbg !55
  %div.10 = fdiv contract float %output_acc.sroa.54.40.vec.extract988, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.54.44.vec.extract997 = extractelement <4 x float> %output_acc.sroa.54.2, i64 3, !dbg !55
  %div.11 = fdiv contract float %output_acc.sroa.54.44.vec.extract997, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.80.48.vec.extract1007 = extractelement <4 x float> %output_acc.sroa.80.2, i64 0, !dbg !55
  %div.12 = fdiv contract float %output_acc.sroa.80.48.vec.extract1007, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.80.52.vec.extract1016 = extractelement <4 x float> %output_acc.sroa.80.2, i64 1, !dbg !55
  %div.13 = fdiv contract float %output_acc.sroa.80.52.vec.extract1016, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.80.56.vec.extract1025 = extractelement <4 x float> %output_acc.sroa.80.2, i64 2, !dbg !55
  %div.14 = fdiv contract float %output_acc.sroa.80.56.vec.extract1025, %denominator.sroa.0.2, !dbg !56
  %output_acc.sroa.80.60.vec.extract1034 = extractelement <4 x float> %output_acc.sroa.80.2, i64 3, !dbg !55
  %div.15 = fdiv contract float %output_acc.sroa.80.60.vec.extract1034, %denominator.sroa.0.2, !dbg !56
  %and509 = and i32 %2, 7
  %55 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !57
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !57, !noalias !65
  %56 = fptrunc float %div to half, !dbg !57
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %55), !dbg !57, !noalias !65
  %57 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !70
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !70, !noalias !65
  %58 = fptrunc float %div.1 to half, !dbg !70
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %57), !dbg !70, !noalias !65
  %59 = bitcast half %56 to i16, !dbg !72
  %60 = bitcast half %58 to i16, !dbg !75
  %61 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !76, !noalias !80
  %62 = fptrunc float %div.2 to half, !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %61), !dbg !76, !noalias !80
  %63 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !85
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !85, !noalias !80
  %64 = fptrunc float %div.3 to half, !dbg !85
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %63), !dbg !85, !noalias !80
  %65 = bitcast half %62 to i16, !dbg !87
  %66 = bitcast half %64 to i16, !dbg !89
  %__2.sroa.6.0.insert.ext = zext i16 %66 to i64, !dbg !90
  %__2.sroa.6.0.insert.shift = shl nuw i64 %__2.sroa.6.0.insert.ext, 48, !dbg !90
  %__2.sroa.5.0.insert.ext = zext i16 %65 to i64, !dbg !90
  %__2.sroa.5.0.insert.shift = shl nuw nsw i64 %__2.sroa.5.0.insert.ext, 32, !dbg !90
  %__2.sroa.5.0.insert.insert = or disjoint i64 %__2.sroa.6.0.insert.shift, %__2.sroa.5.0.insert.shift, !dbg !90
  %__2.sroa.4.0.insert.ext = zext i16 %60 to i64, !dbg !90
  %__2.sroa.4.0.insert.shift = shl nuw nsw i64 %__2.sroa.4.0.insert.ext, 16, !dbg !90
  %__2.sroa.4.0.insert.insert = or disjoint i64 %__2.sroa.5.0.insert.insert, %__2.sroa.4.0.insert.shift, !dbg !90
  %__2.sroa.0.0.insert.ext = zext i16 %59 to i64, !dbg !90
  %__2.sroa.0.0.insert.insert = or disjoint i64 %__2.sroa.4.0.insert.insert, %__2.sroa.0.0.insert.ext, !dbg !90
  %xor510 = xor i32 %shr160, %and509, !dbg !91
  %mul511 = shl nuw nsw i32 %xor510, 3, !dbg !92
  %add512 = add nuw nsw i32 %mul511, %mul9, !dbg !93
  %add517 = or disjoint i32 %add512, %mul170, !dbg !94
  %add.ptr519 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add517, !dbg !95
  store i64 %__2.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr519, align 8, !dbg !96
  %67 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !57
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !57, !noalias !65
  %68 = fptrunc float %div.4 to half, !dbg !57
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %67), !dbg !57, !noalias !65
  %69 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !70
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !70, !noalias !65
  %70 = fptrunc float %div.5 to half, !dbg !70
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %69), !dbg !70, !noalias !65
  %71 = bitcast half %68 to i16, !dbg !72
  %72 = bitcast half %70 to i16, !dbg !75
  %73 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !76, !noalias !80
  %74 = fptrunc float %div.6 to half, !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %73), !dbg !76, !noalias !80
  %75 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !85
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !85, !noalias !80
  %76 = fptrunc float %div.7 to half, !dbg !85
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %75), !dbg !85, !noalias !80
  %77 = bitcast half %74 to i16, !dbg !87
  %78 = bitcast half %76 to i16, !dbg !89
  %__2.sroa.6.0.insert.ext.1 = zext i16 %78 to i64, !dbg !90
  %__2.sroa.6.0.insert.shift.1 = shl nuw i64 %__2.sroa.6.0.insert.ext.1, 48, !dbg !90
  %__2.sroa.5.0.insert.ext.1 = zext i16 %77 to i64, !dbg !90
  %__2.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.1, 32, !dbg !90
  %__2.sroa.5.0.insert.insert.1 = or disjoint i64 %__2.sroa.6.0.insert.shift.1, %__2.sroa.5.0.insert.shift.1, !dbg !90
  %__2.sroa.4.0.insert.ext.1 = zext i16 %72 to i64, !dbg !90
  %__2.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.1, 16, !dbg !90
  %__2.sroa.4.0.insert.insert.1 = or disjoint i64 %__2.sroa.5.0.insert.insert.1, %__2.sroa.4.0.insert.shift.1, !dbg !90
  %__2.sroa.0.0.insert.ext.1 = zext i16 %71 to i64, !dbg !90
  %__2.sroa.0.0.insert.insert.1 = or disjoint i64 %__2.sroa.4.0.insert.insert.1, %__2.sroa.0.0.insert.ext.1, !dbg !90
  %add507.1 = add nuw nsw i32 %shr160, 2, !dbg !97
  %xor510.1 = xor i32 %add507.1, %and509, !dbg !91
  %mul511.1 = shl nuw nsw i32 %xor510.1, 3, !dbg !92
  %add512.1 = add nuw nsw i32 %mul511.1, %mul9, !dbg !93
  %add517.1 = or disjoint i32 %add512.1, %mul170, !dbg !94
  %add.ptr519.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add517.1, !dbg !95
  store i64 %__2.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr519.1, align 8, !dbg !96
  %79 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !57
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !57, !noalias !65
  %80 = fptrunc float %div.8 to half, !dbg !57
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %79), !dbg !57, !noalias !65
  %81 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !70
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !70, !noalias !65
  %82 = fptrunc float %div.9 to half, !dbg !70
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %81), !dbg !70, !noalias !65
  %83 = bitcast half %80 to i16, !dbg !72
  %84 = bitcast half %82 to i16, !dbg !75
  %85 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !76, !noalias !80
  %86 = fptrunc float %div.10 to half, !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %85), !dbg !76, !noalias !80
  %87 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !85
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !85, !noalias !80
  %88 = fptrunc float %div.11 to half, !dbg !85
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %87), !dbg !85, !noalias !80
  %89 = bitcast half %86 to i16, !dbg !87
  %90 = bitcast half %88 to i16, !dbg !89
  %__2.sroa.6.0.insert.ext.2 = zext i16 %90 to i64, !dbg !90
  %__2.sroa.6.0.insert.shift.2 = shl nuw i64 %__2.sroa.6.0.insert.ext.2, 48, !dbg !90
  %__2.sroa.5.0.insert.ext.2 = zext i16 %89 to i64, !dbg !90
  %__2.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.2, 32, !dbg !90
  %__2.sroa.5.0.insert.insert.2 = or disjoint i64 %__2.sroa.6.0.insert.shift.2, %__2.sroa.5.0.insert.shift.2, !dbg !90
  %__2.sroa.4.0.insert.ext.2 = zext i16 %84 to i64, !dbg !90
  %__2.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.2, 16, !dbg !90
  %__2.sroa.4.0.insert.insert.2 = or disjoint i64 %__2.sroa.5.0.insert.insert.2, %__2.sroa.4.0.insert.shift.2, !dbg !90
  %__2.sroa.0.0.insert.ext.2 = zext i16 %83 to i64, !dbg !90
  %__2.sroa.0.0.insert.insert.2 = or disjoint i64 %__2.sroa.4.0.insert.insert.2, %__2.sroa.0.0.insert.ext.2, !dbg !90
  %add507.2 = add nuw nsw i32 %shr160, 4, !dbg !97
  %xor510.2 = xor i32 %add507.2, %and509, !dbg !91
  %mul511.2 = shl nuw nsw i32 %xor510.2, 3, !dbg !92
  %add512.2 = add nuw nsw i32 %mul511.2, %mul9, !dbg !93
  %add517.2 = or disjoint i32 %add512.2, %mul170, !dbg !94
  %add.ptr519.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add517.2, !dbg !95
  store i64 %__2.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr519.2, align 8, !dbg !96
  %91 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !57
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !57, !noalias !65
  %92 = fptrunc float %div.12 to half, !dbg !57
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %91), !dbg !57, !noalias !65
  %93 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !70
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !70, !noalias !65
  %94 = fptrunc float %div.13 to half, !dbg !70
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %93), !dbg !70, !noalias !65
  %95 = bitcast half %92 to i16, !dbg !72
  %96 = bitcast half %94 to i16, !dbg !75
  %97 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !76, !noalias !80
  %98 = fptrunc float %div.14 to half, !dbg !76
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %97), !dbg !76, !noalias !80
  %99 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !85
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !85, !noalias !80
  %100 = fptrunc float %div.15 to half, !dbg !85
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %99), !dbg !85, !noalias !80
  %101 = bitcast half %98 to i16, !dbg !87
  %102 = bitcast half %100 to i16, !dbg !89
  %__2.sroa.6.0.insert.ext.3 = zext i16 %102 to i64, !dbg !90
  %__2.sroa.6.0.insert.shift.3 = shl nuw i64 %__2.sroa.6.0.insert.ext.3, 48, !dbg !90
  %__2.sroa.5.0.insert.ext.3 = zext i16 %101 to i64, !dbg !90
  %__2.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.3, 32, !dbg !90
  %__2.sroa.5.0.insert.insert.3 = or disjoint i64 %__2.sroa.6.0.insert.shift.3, %__2.sroa.5.0.insert.shift.3, !dbg !90
  %__2.sroa.4.0.insert.ext.3 = zext i16 %96 to i64, !dbg !90
  %__2.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.3, 16, !dbg !90
  %__2.sroa.4.0.insert.insert.3 = or disjoint i64 %__2.sroa.5.0.insert.insert.3, %__2.sroa.4.0.insert.shift.3, !dbg !90
  %__2.sroa.0.0.insert.ext.3 = zext i16 %95 to i64, !dbg !90
  %__2.sroa.0.0.insert.insert.3 = or disjoint i64 %__2.sroa.4.0.insert.insert.3, %__2.sroa.0.0.insert.ext.3, !dbg !90
  %add507.3 = add nuw nsw i32 %shr160, 6, !dbg !97
  %xor510.3 = xor i32 %add507.3, %and509, !dbg !91
  %mul511.3 = shl nuw nsw i32 %xor510.3, 3, !dbg !92
  %add512.3 = add nuw nsw i32 %mul511.3, %mul9, !dbg !93
  %add517.3 = or disjoint i32 %add512.3, %mul170, !dbg !94
  %add.ptr519.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add517.3, !dbg !95
  store i64 %__2.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr519.3, align 8, !dbg !96
  fence syncscope("warp") release, !dbg !98
  tail call void @llvm.mxc.barrier.warp(), !dbg !101
  fence syncscope("warp") acquire, !dbg !102
  %xor536650 = and i32 %12, 56
  %call534.masked = and i32 %2, 1016
  %mul537 = xor i32 %xor536650, %call534.masked
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul97, !dbg !103
  %invariant.gep747 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul537, !dbg !103
  %add547 = add nuw nsw i32 %add, %12
  %103 = zext nneg i32 %add547 to i64, !dbg !104
  %add.ptr552 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %103, !dbg !105
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr552, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep747, i64 16, i1 false), !dbg !106, !tbaa.struct !107, !call_argsrelate !108
  %gep748.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep747, i32 1024, !dbg !109
  %104 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %103, !dbg !105
  %add.ptr552.1 = getelementptr inbounds i8, ptr addrspace(1) %104, i64 1024, !dbg !105
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr552.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep748.1, i64 16, i1 false), !dbg !106, !tbaa.struct !107, !call_argsrelate !108
  ret void, !dbg !110

for.body38:                                       ; preds = %entry, %if.end463
  %output_acc.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.0.2, %if.end463 ], !dbg !111
  %output_acc.sroa.28.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.28.2, %if.end463 ], !dbg !111
  %output_acc.sroa.54.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.54.2, %if.end463 ], !dbg !111
  %output_acc.sroa.80.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %output_acc.sroa.80.2, %if.end463 ], !dbg !111
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end463 ]
  %denominator.sroa.0.0742 = phi float [ 0.000000e+00, %entry ], [ %denominator.sroa.0.2, %if.end463 ]
  %normalizer.sroa.0.0741 = phi float [ 0xFFF0000000000000, %entry ], [ %normalizer.sroa.0.2, %if.end463 ]
  %gep1044 = getelementptr inbounds i32, ptr addrspace(1) %invariant.gep1043, i64 %indvars.iv, !dbg !112
  %105 = load i32, ptr addrspace(1) %gep1044, align 4, !dbg !112, !tbaa !30
  %mul46 = shl nsw i32 %105, 4, !dbg !113
  %cmp47 = icmp slt i32 %105, 0, !dbg !114
  %cmp49.not = icmp sgt i32 %mul46, %1
  %or.cond = select i1 %cmp47, i1 true, i1 %cmp49.not, !dbg !115
  br i1 %or.cond, label %if.end463, label %if.then, !dbg !115

if.then:                                          ; preds = %for.body38
  fence syncscope("warp") release, !dbg !116
  tail call void @llvm.mxc.barrier.warp(), !dbg !119
  fence syncscope("warp") acquire, !dbg !120
  %add56 = add nuw nsw i32 %mul46, %shr55
  %conv66 = zext nneg i32 %mul46 to i64
  %.idx = shl nuw nsw i64 %conv66, 7
  %gep = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep743, i64 %.idx, !dbg !121
  %cmp59 = icmp ult i32 %add56, 1024, !dbg !122
  br i1 %cmp59, label %if.then60, label %if.end, !dbg !123

if.then60:                                        ; preds = %if.then
  %gep726 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %mul62
  %condval.sroa.7.0.add.ptr73.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep726, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep726, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep726, i64 4
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep726, align 16, !dbg !124, !tbaa !30
  %condval.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr73.sroa_idx, align 4, !dbg !124, !tbaa !30
  %condval.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr73.sroa_idx, align 8, !dbg !124, !tbaa !30
  %condval.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr73.sroa_idx, align 4, !dbg !124, !tbaa !30
  br label %if.end, !dbg !125

if.end:                                           ; preds = %if.then, %if.then60
  %condval.sroa.0.0 = phi i32 [ %condval.sroa.0.0.copyload, %if.then60 ], [ 0, %if.then ], !dbg !126
  %condval.sroa.5.0 = phi i32 [ %condval.sroa.5.0.copyload, %if.then60 ], [ 0, %if.then ], !dbg !126
  %condval.sroa.6.0 = phi i32 [ %condval.sroa.6.0.copyload, %if.then60 ], [ 0, %if.then ], !dbg !126
  %condval.sroa.7.0 = phi i32 [ %condval.sroa.7.0.copyload, %if.then60 ], [ 0, %if.then ], !dbg !126
  store i32 %condval.sroa.0.0, ptr addrspace(3) %add.ptr128, align 16, !dbg !127, !tbaa !30
  store i32 %condval.sroa.5.0, ptr addrspace(3) %condval.sroa.5.0.add.ptr128.sroa_idx, align 4, !dbg !127, !tbaa !30
  store i32 %condval.sroa.6.0, ptr addrspace(3) %condval.sroa.6.0.add.ptr128.sroa_idx, align 8, !dbg !127, !tbaa !30
  store i32 %condval.sroa.7.0, ptr addrspace(3) %condval.sroa.7.0.add.ptr128.sroa_idx, align 4, !dbg !127, !tbaa !30
  %cmp59.1 = icmp ult i32 %add56, 1016, !dbg !122
  br i1 %cmp59.1, label %if.then60.1, label %if.end.1, !dbg !123

if.then60.1:                                      ; preds = %if.end
  %gep726.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %add65.1
  %condval.sroa.7.0.add.ptr73.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep726.1, i64 12
  %condval.sroa.6.0.add.ptr73.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep726.1, i64 8
  %condval.sroa.5.0.add.ptr73.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep726.1, i64 4
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep726.1, align 16, !dbg !124, !tbaa !30
  %condval.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr73.sroa_idx.1, align 4, !dbg !124, !tbaa !30
  %condval.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr73.sroa_idx.1, align 8, !dbg !124, !tbaa !30
  %condval.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr73.sroa_idx.1, align 4, !dbg !124, !tbaa !30
  br label %if.end.1, !dbg !125

if.end.1:                                         ; preds = %if.then60.1, %if.end
  %condval.sroa.0.0.1 = phi i32 [ %condval.sroa.0.0.copyload.1, %if.then60.1 ], [ 0, %if.end ], !dbg !126
  %condval.sroa.5.0.1 = phi i32 [ %condval.sroa.5.0.copyload.1, %if.then60.1 ], [ 0, %if.end ], !dbg !126
  %condval.sroa.6.0.1 = phi i32 [ %condval.sroa.6.0.copyload.1, %if.then60.1 ], [ 0, %if.end ], !dbg !126
  %condval.sroa.7.0.1 = phi i32 [ %condval.sroa.7.0.copyload.1, %if.then60.1 ], [ 0, %if.end ], !dbg !126
  store i32 %condval.sroa.0.0.1, ptr addrspace(3) %add.ptr128.1, align 16, !dbg !127, !tbaa !30
  store i32 %condval.sroa.5.0.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr128.sroa_idx.1, align 4, !dbg !127, !tbaa !30
  store i32 %condval.sroa.6.0.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr128.sroa_idx.1, align 8, !dbg !127, !tbaa !30
  store i32 %condval.sroa.7.0.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr128.sroa_idx.1, align 4, !dbg !127, !tbaa !30
  fence syncscope("warp") release, !dbg !128
  tail call void @llvm.mxc.barrier.warp(), !dbg !131
  fence syncscope("warp") acquire, !dbg !132
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr173, align 8, !dbg !133
  %106 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %5, <4 x float> zeroinitializer), !dbg !134, !call_argsrelate !135
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr173.1, align 8, !dbg !133
  %107 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %7, <4 x float> %106), !dbg !134, !call_argsrelate !135
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr173.2, align 8, !dbg !133
  %108 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %9, <4 x float> %107), !dbg !134, !call_argsrelate !135
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr173.3, align 8, !dbg !133
  %109 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %11, <4 x float> %108), !dbg !134, !call_argsrelate !135
  %add195 = add nuw nsw i32 %mul46, %mul14
  %cmp198.not = icmp sgt i32 %add195, %1, !dbg !136
  %scores.sroa.0.0.vec.extract841 = extractelement <4 x float> %109, i64 0
  %spec.select = select i1 %cmp198.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract841, !dbg !137
  %cmp198.not.1.not = icmp slt i32 %add195, %1, !dbg !136
  %scores.sroa.0.4.vec.extract854 = extractelement <4 x float> %109, i64 1, !dbg !137
  %condval_1.0.1 = select i1 %cmp198.not.1.not, float %scores.sroa.0.4.vec.extract854, float 0xFFF0000000000000, !dbg !137
  %add196.2 = or disjoint i32 %add195, 2, !dbg !138
  %cmp198.not.2 = icmp sgt i32 %add196.2, %1, !dbg !136
  %scores.sroa.0.8.vec.extract867 = extractelement <4 x float> %109, i64 2, !dbg !137
  %condval_1.0.2 = select i1 %cmp198.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract867, !dbg !137
  %add196.3 = or disjoint i32 %add195, 3, !dbg !138
  %cmp198.not.3 = icmp sgt i32 %add196.3, %1, !dbg !136
  %scores.sroa.0.12.vec.extract880 = extractelement <4 x float> %109, i64 3, !dbg !137
  %condval_1.0.3 = select i1 %cmp198.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract880, !dbg !137
  %110 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !139
  %111 = tail call contract noundef float @llvm.maxnum.f32(float %110, float %condval_1.0.1), !dbg !139
  %112 = tail call contract noundef float @llvm.maxnum.f32(float %111, float %condval_1.0.2), !dbg !139
  %113 = tail call contract noundef float @llvm.maxnum.f32(float %112, float %condval_1.0.3), !dbg !139
  %114 = bitcast float %113 to i32, !dbg !143
  %115 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !152
  %116 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %115) #11, !dbg !157
  %xor.i.i.i = xor i32 %116, 32, !dbg !158
  %117 = and i32 %116, -64, !dbg !159
  %and.i.i.i = add nsw i32 %117, 64, !dbg !159
  %cmp.not.i.i.i = icmp slt i32 %xor.i.i.i, %and.i.i.i, !dbg !160
  %cond.i.i.i = select i1 %cmp.not.i.i.i, i32 %xor.i.i.i, i32 %116, !dbg !161
  %shl.i.i.i = shl i32 %cond.i.i.i, 2, !dbg !162
  %118 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i, i32 %114), !dbg !163
  %119 = bitcast i32 %118 to float, !dbg !164
  %120 = tail call contract noundef float @llvm.maxnum.f32(float %113, float %119), !dbg !165
  %121 = bitcast float %120 to i32, !dbg !173
  %122 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !178
  %123 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %122) #11, !dbg !181
  %xor.i.i.i.i = xor i32 %123, 16, !dbg !182
  %124 = and i32 %123, -64, !dbg !183
  %and.i.i.i.i = add nsw i32 %124, 64, !dbg !183
  %cmp.not.i.i.i.i = icmp slt i32 %xor.i.i.i.i, %and.i.i.i.i, !dbg !184
  %cond.i.i.i.i = select i1 %cmp.not.i.i.i.i, i32 %xor.i.i.i.i, i32 %123, !dbg !185
  %shl.i.i.i.i = shl i32 %cond.i.i.i.i, 2, !dbg !186
  %125 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i, i32 %121), !dbg !187
  %126 = bitcast i32 %125 to float, !dbg !188
  %127 = tail call contract noundef float @llvm.maxnum.f32(float %120, float %126), !dbg !189
  %sub = fsub contract float %127, %normalizer.sroa.0.0741, !dbg !193
  %mul234 = fmul contract float %sub, 0x3FC7154760000000, !dbg !194
  %cmp235 = fcmp contract ogt float %mul234, 7.000000e+00, !dbg !195
  %sub239 = fsub contract float %normalizer.sroa.0.0741, %127
  %mul240 = fmul contract float %sub239, 0x3FC7154760000000
  %cmp.i.i = fcmp contract olt float %mul240, -1.260000e+02
  %cond.i.i = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00
  %add.i.i = fadd contract float %mul240, %cond.i.i
  %128 = tail call contract float @llvm.exp2.f32(float %add.i.i)
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00
  %mul.i.i = fmul contract float %cond2.i.i, %128
  %normalizer.sroa.0.1 = select i1 %cmp235, float %127, float %normalizer.sroa.0.0741, !dbg !196
  %sub255 = fsub contract float %spec.select, %normalizer.sroa.0.1, !dbg !197
  %mul256 = fmul contract float %sub255, 0x3FC7154760000000, !dbg !198
  %add257 = fadd contract float %mul256, 8.000000e+00, !dbg !199
  %cmp.i.i678 = fcmp contract olt float %add257, -1.260000e+02, !dbg !200
  %cond.i.i679 = select contract i1 %cmp.i.i678, float 6.400000e+01, float 0.000000e+00, !dbg !200
  %add.i.i680 = fadd contract float %add257, %cond.i.i679, !dbg !200
  %129 = tail call contract float @llvm.exp2.f32(float %add.i.i680), !dbg !200
  %cond2.i.i681 = select contract i1 %cmp.i.i678, float 0x3BF0000000000000, float 1.000000e+00, !dbg !200
  %mul.i.i682 = fmul contract float %cond2.i.i681, %129, !dbg !200
  %sub255.1 = fsub contract float %condval_1.0.1, %normalizer.sroa.0.1, !dbg !197
  %mul256.1 = fmul contract float %sub255.1, 0x3FC7154760000000, !dbg !198
  %add257.1 = fadd contract float %mul256.1, 8.000000e+00, !dbg !199
  %cmp.i.i678.1 = fcmp contract olt float %add257.1, -1.260000e+02, !dbg !200
  %cond.i.i679.1 = select contract i1 %cmp.i.i678.1, float 6.400000e+01, float 0.000000e+00, !dbg !200
  %add.i.i680.1 = fadd contract float %add257.1, %cond.i.i679.1, !dbg !200
  %130 = tail call contract float @llvm.exp2.f32(float %add.i.i680.1), !dbg !200
  %cond2.i.i681.1 = select contract i1 %cmp.i.i678.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !200
  %mul.i.i682.1 = fmul contract float %cond2.i.i681.1, %130, !dbg !200
  %sub255.2 = fsub contract float %condval_1.0.2, %normalizer.sroa.0.1, !dbg !197
  %mul256.2 = fmul contract float %sub255.2, 0x3FC7154760000000, !dbg !198
  %add257.2 = fadd contract float %mul256.2, 8.000000e+00, !dbg !199
  %cmp.i.i678.2 = fcmp contract olt float %add257.2, -1.260000e+02, !dbg !200
  %cond.i.i679.2 = select contract i1 %cmp.i.i678.2, float 6.400000e+01, float 0.000000e+00, !dbg !200
  %add.i.i680.2 = fadd contract float %add257.2, %cond.i.i679.2, !dbg !200
  %131 = tail call contract float @llvm.exp2.f32(float %add.i.i680.2), !dbg !200
  %cond2.i.i681.2 = select contract i1 %cmp.i.i678.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !200
  %mul.i.i682.2 = fmul contract float %cond2.i.i681.2, %131, !dbg !200
  %sub255.3 = fsub contract float %condval_1.0.3, %normalizer.sroa.0.1, !dbg !197
  %mul256.3 = fmul contract float %sub255.3, 0x3FC7154760000000, !dbg !198
  %add257.3 = fadd contract float %mul256.3, 8.000000e+00, !dbg !199
  %cmp.i.i678.3 = fcmp contract olt float %add257.3, -1.260000e+02, !dbg !200
  %cond.i.i679.3 = select contract i1 %cmp.i.i678.3, float 6.400000e+01, float 0.000000e+00, !dbg !200
  %add.i.i680.3 = fadd contract float %add257.3, %cond.i.i679.3, !dbg !200
  %132 = tail call contract float @llvm.exp2.f32(float %add.i.i680.3), !dbg !200
  %cond2.i.i681.3 = select contract i1 %cmp.i.i678.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !200
  %mul.i.i682.3 = fmul contract float %cond2.i.i681.3, %132, !dbg !200
  %add272 = fadd contract float %mul.i.i682, 0.000000e+00, !dbg !203
  %add272.1 = fadd contract float %add272, %mul.i.i682.1, !dbg !203
  %add272.2 = fadd contract float %add272.1, %mul.i.i682.2, !dbg !203
  %add272.3 = fadd contract float %add272.2, %mul.i.i682.3, !dbg !203
  %rescale.sroa.0.0 = select i1 %cmp235, float %mul.i.i, float 1.000000e+00, !dbg !196
  %133 = bitcast float %add272.3 to i32, !dbg !204
  %134 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !209
  %135 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %134) #11, !dbg !212
  %xor.i.i.i683 = xor i32 %135, 32, !dbg !213
  %136 = and i32 %135, -64, !dbg !214
  %and.i.i.i684 = add nsw i32 %136, 64, !dbg !214
  %cmp.not.i.i.i685 = icmp slt i32 %xor.i.i.i683, %and.i.i.i684, !dbg !215
  %cond.i.i.i686 = select i1 %cmp.not.i.i.i685, i32 %xor.i.i.i683, i32 %135, !dbg !216
  %shl.i.i.i687 = shl i32 %cond.i.i.i686, 2, !dbg !217
  %137 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i687, i32 %133), !dbg !218
  %138 = bitcast i32 %137 to float, !dbg !219
  %add.i.i688 = fadd contract float %add272.3, %138, !dbg !220
  %139 = bitcast float %add.i.i688 to i32, !dbg !223
  %140 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !228
  %141 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %140) #11, !dbg !231
  %xor.i.i.i.i689 = xor i32 %141, 16, !dbg !232
  %142 = and i32 %141, -64, !dbg !233
  %and.i.i.i.i690 = add nsw i32 %142, 64, !dbg !233
  %cmp.not.i.i.i.i691 = icmp slt i32 %xor.i.i.i.i689, %and.i.i.i.i690, !dbg !234
  %cond.i.i.i.i692 = select i1 %cmp.not.i.i.i.i691, i32 %xor.i.i.i.i689, i32 %141, !dbg !235
  %shl.i.i.i.i693 = shl i32 %cond.i.i.i.i692, 2, !dbg !236
  %143 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i693, i32 %139), !dbg !237
  %144 = bitcast i32 %143 to float, !dbg !238
  %add.i.i.i = fadd contract float %add.i.i688, %144, !dbg !239
  %cmp281 = fcmp contract une float %rescale.sroa.0.0, 1.000000e+00, !dbg !241
  %mul285 = fmul contract float %denominator.sroa.0.0742, %rescale.sroa.0.0, !dbg !242
  %denominator.sroa.0.1 = select i1 %cmp281, float %mul285, float %denominator.sroa.0.0742, !dbg !242
  %add290 = fadd contract float %denominator.sroa.0.1, %add.i.i.i, !dbg !243
  %145 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !244, !noalias !248
  %146 = fptrunc float %mul.i.i682 to half, !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %145), !dbg !244, !noalias !248
  %147 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !248
  %148 = fptrunc float %mul.i.i682.1 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %147), !dbg !253, !noalias !248
  %__1.sroa.0.0.vec.insert = insertelement <4 x half> poison, half %146, i64 0, !dbg !255
  %__1.sroa.0.2.vec.insert = insertelement <4 x half> %__1.sroa.0.0.vec.insert, half %148, i64 1, !dbg !255
  %149 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !258, !noalias !262
  %150 = fptrunc float %mul.i.i682.2 to half, !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %149), !dbg !258, !noalias !262
  %151 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !262
  %152 = fptrunc float %mul.i.i682.3 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %151), !dbg !267, !noalias !262
  %__1.sroa.0.4.vec.insert = insertelement <4 x half> %__1.sroa.0.2.vec.insert, half %150, i64 2, !dbg !269
  %__1.sroa.0.6.vec.insert = insertelement <4 x half> %__1.sroa.0.4.vec.insert, half %152, i64 3, !dbg !269
  br i1 %cmp281, label %for.body312.preheader, label %if.end322, !dbg !271

for.body312.preheader:                            ; preds = %if.end.1
  %output_acc.sroa.0.0.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 0, !dbg !272
  %mul316 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.0.0.vec.extract, !dbg !273
  %output_acc.sroa.0.0.vec.insert894 = insertelement <4 x float> poison, float %mul316, i64 0, !dbg !274
  %output_acc.sroa.0.4.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 1, !dbg !272
  %mul316.1 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.0.4.vec.extract, !dbg !273
  %output_acc.sroa.0.4.vec.insert903 = insertelement <4 x float> %output_acc.sroa.0.0.vec.insert894, float %mul316.1, i64 1, !dbg !274
  %output_acc.sroa.0.8.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 2, !dbg !272
  %mul316.2 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.0.8.vec.extract, !dbg !273
  %output_acc.sroa.0.8.vec.insert912 = insertelement <4 x float> %output_acc.sroa.0.4.vec.insert903, float %mul316.2, i64 2, !dbg !274
  %output_acc.sroa.0.12.vec.extract = extractelement <4 x float> %output_acc.sroa.0.0, i64 3, !dbg !272
  %mul316.3 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.0.12.vec.extract, !dbg !273
  %output_acc.sroa.0.12.vec.insert921 = insertelement <4 x float> %output_acc.sroa.0.8.vec.insert912, float %mul316.3, i64 3, !dbg !274
  %output_acc.sroa.28.16.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 0, !dbg !272
  %mul316.4 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.28.16.vec.extract, !dbg !273
  %output_acc.sroa.28.16.vec.insert931 = insertelement <4 x float> poison, float %mul316.4, i64 0, !dbg !274
  %output_acc.sroa.28.20.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 1, !dbg !272
  %mul316.5 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.28.20.vec.extract, !dbg !273
  %output_acc.sroa.28.20.vec.insert940 = insertelement <4 x float> %output_acc.sroa.28.16.vec.insert931, float %mul316.5, i64 1, !dbg !274
  %output_acc.sroa.28.24.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 2, !dbg !272
  %mul316.6 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.28.24.vec.extract, !dbg !273
  %output_acc.sroa.28.24.vec.insert949 = insertelement <4 x float> %output_acc.sroa.28.20.vec.insert940, float %mul316.6, i64 2, !dbg !274
  %output_acc.sroa.28.28.vec.extract = extractelement <4 x float> %output_acc.sroa.28.0, i64 3, !dbg !272
  %mul316.7 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.28.28.vec.extract, !dbg !273
  %output_acc.sroa.28.28.vec.insert958 = insertelement <4 x float> %output_acc.sroa.28.24.vec.insert949, float %mul316.7, i64 3, !dbg !274
  %output_acc.sroa.54.32.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 0, !dbg !272
  %mul316.8 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.54.32.vec.extract, !dbg !273
  %output_acc.sroa.54.32.vec.insert968 = insertelement <4 x float> poison, float %mul316.8, i64 0, !dbg !274
  %output_acc.sroa.54.36.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 1, !dbg !272
  %mul316.9 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.54.36.vec.extract, !dbg !273
  %output_acc.sroa.54.36.vec.insert977 = insertelement <4 x float> %output_acc.sroa.54.32.vec.insert968, float %mul316.9, i64 1, !dbg !274
  %output_acc.sroa.54.40.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 2, !dbg !272
  %mul316.10 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.54.40.vec.extract, !dbg !273
  %output_acc.sroa.54.40.vec.insert986 = insertelement <4 x float> %output_acc.sroa.54.36.vec.insert977, float %mul316.10, i64 2, !dbg !274
  %output_acc.sroa.54.44.vec.extract = extractelement <4 x float> %output_acc.sroa.54.0, i64 3, !dbg !272
  %mul316.11 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.54.44.vec.extract, !dbg !273
  %output_acc.sroa.54.44.vec.insert995 = insertelement <4 x float> %output_acc.sroa.54.40.vec.insert986, float %mul316.11, i64 3, !dbg !274
  %output_acc.sroa.80.48.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 0, !dbg !272
  %mul316.12 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.80.48.vec.extract, !dbg !273
  %output_acc.sroa.80.48.vec.insert1005 = insertelement <4 x float> poison, float %mul316.12, i64 0, !dbg !274
  %output_acc.sroa.80.52.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 1, !dbg !272
  %mul316.13 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.80.52.vec.extract, !dbg !273
  %output_acc.sroa.80.52.vec.insert1014 = insertelement <4 x float> %output_acc.sroa.80.48.vec.insert1005, float %mul316.13, i64 1, !dbg !274
  %output_acc.sroa.80.56.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 2, !dbg !272
  %mul316.14 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.80.56.vec.extract, !dbg !273
  %output_acc.sroa.80.56.vec.insert1023 = insertelement <4 x float> %output_acc.sroa.80.52.vec.insert1014, float %mul316.14, i64 2, !dbg !274
  %output_acc.sroa.80.60.vec.extract = extractelement <4 x float> %output_acc.sroa.80.0, i64 3, !dbg !272
  %mul316.15 = fmul contract float %rescale.sroa.0.0, %output_acc.sroa.80.60.vec.extract, !dbg !273
  %output_acc.sroa.80.60.vec.insert1032 = insertelement <4 x float> %output_acc.sroa.80.56.vec.insert1023, float %mul316.15, i64 3, !dbg !274
  br label %if.end322

if.end322:                                        ; preds = %for.body312.preheader, %if.end.1
  %output_acc.sroa.0.1 = phi <4 x float> [ %output_acc.sroa.0.12.vec.insert921, %for.body312.preheader ], [ %output_acc.sroa.0.0, %if.end.1 ], !dbg !126
  %output_acc.sroa.28.1 = phi <4 x float> [ %output_acc.sroa.28.28.vec.insert958, %for.body312.preheader ], [ %output_acc.sroa.28.0, %if.end.1 ], !dbg !126
  %output_acc.sroa.54.1 = phi <4 x float> [ %output_acc.sroa.54.44.vec.insert995, %for.body312.preheader ], [ %output_acc.sroa.54.0, %if.end.1 ], !dbg !126
  %output_acc.sroa.80.1 = phi <4 x float> [ %output_acc.sroa.80.60.vec.insert1032, %for.body312.preheader ], [ %output_acc.sroa.80.0, %if.end.1 ], !dbg !126
  %shr330 = lshr exact i32 %mul46, 2
  %add331 = add nuw nsw i32 %shr330, %shr328
  %cmp332 = icmp ult i32 %add331, 256
  br i1 %cmp332, label %if.then333, label %if.end367, !dbg !275

if.then333:                                       ; preds = %if.end322
  %153 = getelementptr inbounds i8, ptr addrspace(4) %35, i64 %.idx, !dbg !276
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %153, align 8, !dbg !277, !tbaa !30
  %condval_2.sroa.5.0.add.ptr353.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %153, i64 4, !dbg !277
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr353.sroa_idx, align 4, !dbg !277, !tbaa !30
  br label %if.end367, !dbg !278

if.end367:                                        ; preds = %if.end322, %if.then333
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then333 ], [ 0, %if.end322 ], !dbg !126
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then333 ], [ 0, %if.end322 ], !dbg !126
  br i1 %cmp332, label %if.then333.1, label %if.end367.1, !dbg !275

if.then333.1:                                     ; preds = %if.end367
  %154 = getelementptr inbounds i8, ptr addrspace(4) %36, i64 %.idx, !dbg !276
  %add.ptr353.1 = getelementptr inbounds i8, ptr addrspace(4) %154, i64 128, !dbg !276
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %add.ptr353.1, align 8, !dbg !277, !tbaa !30
  %condval_2.sroa.5.0.add.ptr353.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %154, i64 132, !dbg !277
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr353.sroa_idx.1, align 4, !dbg !277, !tbaa !30
  br label %if.end367.1, !dbg !278

if.end367.1:                                      ; preds = %if.then333.1, %if.end367
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then333.1 ], [ 0, %if.end367 ], !dbg !126
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then333.1 ], [ 0, %if.end367 ], !dbg !126
  br i1 %cmp332, label %if.then333.2, label %if.end367.2, !dbg !275

if.then333.2:                                     ; preds = %if.end367.1
  %155 = getelementptr inbounds i8, ptr addrspace(4) %37, i64 %.idx, !dbg !276
  %add.ptr353.2 = getelementptr inbounds i8, ptr addrspace(4) %155, i64 256, !dbg !276
  %condval_2.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %add.ptr353.2, align 8, !dbg !277, !tbaa !30
  %condval_2.sroa.5.0.add.ptr353.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %155, i64 260, !dbg !277
  %condval_2.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr353.sroa_idx.2, align 4, !dbg !277, !tbaa !30
  br label %if.end367.2, !dbg !278

if.end367.2:                                      ; preds = %if.then333.2, %if.end367.1
  %condval_2.sroa.5.0.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2, %if.then333.2 ], [ 0, %if.end367.1 ], !dbg !126
  %condval_2.sroa.0.0.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2, %if.then333.2 ], [ 0, %if.end367.1 ], !dbg !126
  br i1 %cmp332, label %if.then333.3, label %if.end367.3, !dbg !275

if.then333.3:                                     ; preds = %if.end367.2
  %156 = getelementptr inbounds i8, ptr addrspace(4) %38, i64 %.idx, !dbg !276
  %add.ptr353.3 = getelementptr inbounds i8, ptr addrspace(4) %156, i64 384, !dbg !276
  %condval_2.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %add.ptr353.3, align 8, !dbg !277, !tbaa !30
  %condval_2.sroa.5.0.add.ptr353.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %156, i64 388, !dbg !277
  %condval_2.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr353.sroa_idx.3, align 4, !dbg !277, !tbaa !30
  br label %if.end367.3, !dbg !278

if.end367.3:                                      ; preds = %if.then333.3, %if.end367.2
  %condval_2.sroa.5.0.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3, %if.then333.3 ], [ 0, %if.end367.2 ], !dbg !126
  %condval_2.sroa.0.0.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3, %if.then333.3 ], [ 0, %if.end367.2 ], !dbg !126
  %157 = and i32 %condval_2.sroa.0.0.3, 65535, !dbg !279
  %v_column_local.sroa.18.0.insert.ext = zext nneg i32 %157 to i64, !dbg !279
  %v_column_local.sroa.18.0.insert.shift = shl nuw i64 %v_column_local.sroa.18.0.insert.ext, 48, !dbg !279
  %158 = and i32 %condval_2.sroa.0.0.2, 65535, !dbg !279
  %v_column_local.sroa.14.0.insert.ext = zext nneg i32 %158 to i64, !dbg !279
  %v_column_local.sroa.14.0.insert.shift = shl nuw nsw i64 %v_column_local.sroa.14.0.insert.ext, 32, !dbg !279
  %v_column_local.sroa.14.0.insert.insert = or disjoint i64 %v_column_local.sroa.18.0.insert.shift, %v_column_local.sroa.14.0.insert.shift, !dbg !279
  %159 = shl i32 %condval_2.sroa.0.0.1, 16, !dbg !279
  %v_column_local.sroa.10.0.insert.shift = zext i32 %159 to i64, !dbg !279
  %v_column_local.sroa.10.0.insert.insert = or disjoint i64 %v_column_local.sroa.14.0.insert.insert, %v_column_local.sroa.10.0.insert.shift, !dbg !279
  %160 = and i32 %condval_2.sroa.0.0, 65535, !dbg !279
  %v_column_local.sroa.0.0.insert.ext = zext nneg i32 %160 to i64, !dbg !279
  %v_column_local.sroa.0.0.insert.insert = or disjoint i64 %v_column_local.sroa.10.0.insert.insert, %v_column_local.sroa.0.0.insert.ext, !dbg !279
  store i64 %v_column_local.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr409, align 8, !dbg !279
  %v_tile_local.sroa.0.2.extract.shift = lshr i32 %condval_2.sroa.0.0, 16, !dbg !280
  %v_tile_local.sroa.0.2.extract.trunc = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift to i64, !dbg !280
  %v_tile_local.sroa.8.10.extract.shift = and i32 %condval_2.sroa.0.0.1, -65536, !dbg !279
  %v_tile_local.sroa.14.18.extract.shift = lshr i32 %condval_2.sroa.0.0.2, 16, !dbg !280
  %v_tile_local.sroa.14.18.extract.trunc = zext nneg i32 %v_tile_local.sroa.14.18.extract.shift to i64, !dbg !280
  %v_tile_local.sroa.20.26.extract.shift = lshr i32 %condval_2.sroa.0.0.3, 16, !dbg !280
  %v_tile_local.sroa.20.26.extract.trunc = zext nneg i32 %v_tile_local.sroa.20.26.extract.shift to i64, !dbg !280
  %v_column_local.sroa.18.0.insert.shift825 = shl nuw i64 %v_tile_local.sroa.20.26.extract.trunc, 48, !dbg !279
  %v_column_local.sroa.14.0.insert.shift810 = shl nuw nsw i64 %v_tile_local.sroa.14.18.extract.trunc, 32, !dbg !279
  %v_column_local.sroa.14.0.insert.insert812 = or disjoint i64 %v_column_local.sroa.18.0.insert.shift825, %v_column_local.sroa.14.0.insert.shift810, !dbg !279
  %v_column_local.sroa.10.0.insert.shift795 = zext i32 %v_tile_local.sroa.8.10.extract.shift to i64, !dbg !279
  %v_column_local.sroa.10.0.insert.insert797 = or disjoint i64 %v_column_local.sroa.14.0.insert.insert812, %v_column_local.sroa.10.0.insert.shift795, !dbg !279
  %v_column_local.sroa.0.0.insert.insert784 = or disjoint i64 %v_column_local.sroa.10.0.insert.insert797, %v_tile_local.sroa.0.2.extract.trunc, !dbg !279
  store i64 %v_column_local.sroa.0.0.insert.insert784, ptr addrspace(3) %add.ptr409.1, align 8, !dbg !279
  %161 = and i32 %condval_2.sroa.5.0.3, 65535, !dbg !279
  %v_column_local.sroa.18.0.insert.ext829 = zext nneg i32 %161 to i64, !dbg !279
  %v_column_local.sroa.18.0.insert.shift830 = shl nuw i64 %v_column_local.sroa.18.0.insert.ext829, 48, !dbg !279
  %162 = and i32 %condval_2.sroa.5.0.2, 65535, !dbg !279
  %v_column_local.sroa.14.0.insert.ext814 = zext nneg i32 %162 to i64, !dbg !279
  %v_column_local.sroa.14.0.insert.shift815 = shl nuw nsw i64 %v_column_local.sroa.14.0.insert.ext814, 32, !dbg !279
  %v_column_local.sroa.14.0.insert.insert817 = or disjoint i64 %v_column_local.sroa.18.0.insert.shift830, %v_column_local.sroa.14.0.insert.shift815, !dbg !279
  %163 = shl i32 %condval_2.sroa.5.0.1, 16, !dbg !279
  %v_column_local.sroa.10.0.insert.shift800 = zext i32 %163 to i64, !dbg !279
  %v_column_local.sroa.10.0.insert.insert802 = or disjoint i64 %v_column_local.sroa.14.0.insert.insert817, %v_column_local.sroa.10.0.insert.shift800, !dbg !279
  %164 = and i32 %condval_2.sroa.5.0, 65535, !dbg !279
  %v_column_local.sroa.0.0.insert.ext786 = zext nneg i32 %164 to i64, !dbg !279
  %v_column_local.sroa.0.0.insert.insert788 = or disjoint i64 %v_column_local.sroa.10.0.insert.insert802, %v_column_local.sroa.0.0.insert.ext786, !dbg !279
  store i64 %v_column_local.sroa.0.0.insert.insert788, ptr addrspace(3) %add.ptr409.2, align 8, !dbg !279
  %v_tile_local.sroa.5.6.extract.shift = lshr i32 %condval_2.sroa.5.0, 16, !dbg !280
  %v_tile_local.sroa.5.6.extract.trunc = zext nneg i32 %v_tile_local.sroa.5.6.extract.shift to i64, !dbg !280
  %v_tile_local.sroa.11.14.extract.shift = and i32 %condval_2.sroa.5.0.1, -65536, !dbg !279
  %v_tile_local.sroa.17.22.extract.shift = lshr i32 %condval_2.sroa.5.0.2, 16, !dbg !280
  %v_tile_local.sroa.17.22.extract.trunc = zext nneg i32 %v_tile_local.sroa.17.22.extract.shift to i64, !dbg !280
  %v_tile_local.sroa.23.30.extract.shift = lshr i32 %condval_2.sroa.5.0.3, 16, !dbg !280
  %v_tile_local.sroa.23.30.extract.trunc = zext nneg i32 %v_tile_local.sroa.23.30.extract.shift to i64, !dbg !280
  %v_column_local.sroa.18.0.insert.shift835 = shl nuw i64 %v_tile_local.sroa.23.30.extract.trunc, 48, !dbg !279
  %v_column_local.sroa.14.0.insert.shift820 = shl nuw nsw i64 %v_tile_local.sroa.17.22.extract.trunc, 32, !dbg !279
  %v_column_local.sroa.14.0.insert.insert822 = or disjoint i64 %v_column_local.sroa.18.0.insert.shift835, %v_column_local.sroa.14.0.insert.shift820, !dbg !279
  %v_column_local.sroa.10.0.insert.shift805 = zext i32 %v_tile_local.sroa.11.14.extract.shift to i64, !dbg !279
  %v_column_local.sroa.10.0.insert.insert807 = or disjoint i64 %v_column_local.sroa.14.0.insert.insert822, %v_column_local.sroa.10.0.insert.shift805, !dbg !279
  %v_column_local.sroa.0.0.insert.insert792 = or disjoint i64 %v_column_local.sroa.10.0.insert.insert807, %v_tile_local.sroa.5.6.extract.trunc, !dbg !279
  store i64 %v_column_local.sroa.0.0.insert.insert792, ptr addrspace(3) %add.ptr409.3, align 8, !dbg !279
  fence syncscope("warp") release, !dbg !281
  tail call void @llvm.mxc.barrier.warp(), !dbg !284
  fence syncscope("warp") acquire, !dbg !285
  %165 = load <4 x half>, ptr addrspace(3) %add.ptr437, align 8, !dbg !286
  %166 = load <4 x half>, ptr addrspace(3) %add.ptr437.1, align 8, !dbg !286
  %167 = load <4 x half>, ptr addrspace(3) %add.ptr437.2, align 8, !dbg !286
  %168 = load <4 x half>, ptr addrspace(3) %add.ptr437.3, align 8, !dbg !286
  %169 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %165, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.0.1), !dbg !287
  %170 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %166, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.28.1), !dbg !287
  %171 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %167, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.54.1), !dbg !287
  %172 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %168, <4 x half> %__1.sroa.0.6.vec.insert, <4 x float> %output_acc.sroa.80.1), !dbg !287
  br label %if.end463, !dbg !288

if.end463:                                        ; preds = %if.end367.3, %for.body38
  %output_acc.sroa.0.2 = phi <4 x float> [ %output_acc.sroa.0.0, %for.body38 ], [ %169, %if.end367.3 ], !dbg !126
  %output_acc.sroa.28.2 = phi <4 x float> [ %output_acc.sroa.28.0, %for.body38 ], [ %170, %if.end367.3 ], !dbg !126
  %output_acc.sroa.54.2 = phi <4 x float> [ %output_acc.sroa.54.0, %for.body38 ], [ %171, %if.end367.3 ], !dbg !126
  %output_acc.sroa.80.2 = phi <4 x float> [ %output_acc.sroa.80.0, %for.body38 ], [ %172, %if.end367.3 ], !dbg !126
  %normalizer.sroa.0.2 = phi float [ %normalizer.sroa.0.0741, %for.body38 ], [ %normalizer.sroa.0.1, %if.end367.3 ], !dbg !126
  %denominator.sroa.0.2 = phi float [ %denominator.sroa.0.0742, %for.body38 ], [ %add290, %if.end367.3 ], !dbg !126
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !289
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !290
  br i1 %exitcond.not, label %for.cond.cleanup36, label %for.body38, !dbg !46, !llvm.loop !291
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v031_codex_power_output_relay_swizzle_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v031_codex_power_output_relay_swizzle_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!57 = !DILocation(line: 1007, column: 10, scope: !58, inlinedAt: !60)
!58 = distinct !DISubprogram(name: "__float2half_rn", scope: !59, file: !59, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!59 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!60 = distinct !DILocation(line: 1077, column: 18, scope: !61, inlinedAt: !62)
!61 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !59, file: !59, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!62 = distinct !DILocation(line: 1295, column: 23, scope: !63, inlinedAt: !64)
!63 = distinct !DISubprogram(name: "__float22half2_rn", scope: !59, file: !59, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!64 = distinct !DILocation(line: 151, column: 27, scope: !40)
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
!79 = distinct !DILocation(line: 152, column: 27, scope: !40)
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
!90 = !DILocation(line: 153, column: 45, scope: !40)
!91 = !DILocation(line: 154, column: 121, scope: !40)
!92 = !DILocation(line: 154, column: 149, scope: !40)
!93 = !DILocation(line: 154, column: 77, scope: !40)
!94 = !DILocation(line: 154, column: 155, scope: !40)
!95 = !DILocation(line: 154, column: 40, scope: !40)
!96 = !DILocation(line: 154, column: 198, scope: !40)
!97 = !DILocation(line: 154, column: 92, scope: !40)
!98 = !DILocation(line: 68, column: 3, scope: !48, inlinedAt: !99)
!99 = distinct !DILocation(line: 192, column: 3, scope: !51, inlinedAt: !100)
!100 = distinct !DILocation(line: 156, column: 3, scope: !40)
!101 = !DILocation(line: 69, column: 3, scope: !48, inlinedAt: !99)
!102 = !DILocation(line: 70, column: 3, scope: !48, inlinedAt: !99)
!103 = !DILocation(line: 158, column: 8, scope: !40)
!104 = !DILocation(line: 158, column: 3, scope: !40)
!105 = !DILocation(line: 159, column: 22, scope: !40)
!106 = !DILocation(line: 159, column: 131, scope: !40)
!107 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!108 = !{i32 2, i32 -1, i32 -1, i32 -1}
!109 = !DILocation(line: 159, column: 168, scope: !40)
!110 = !DILocation(line: 161, column: 1, scope: !40)
!111 = !DILocation(line: 31, column: 38, scope: !40)
!112 = !DILocation(line: 36, column: 24, scope: !40)
!113 = !DILocation(line: 36, column: 106, scope: !40)
!114 = !DILocation(line: 37, column: 12, scope: !40)
!115 = !DILocation(line: 37, column: 28, scope: !40)
!116 = !DILocation(line: 68, column: 3, scope: !48, inlinedAt: !117)
!117 = distinct !DILocation(line: 192, column: 3, scope: !51, inlinedAt: !118)
!118 = distinct !DILocation(line: 38, column: 7, scope: !40)
!119 = !DILocation(line: 69, column: 3, scope: !48, inlinedAt: !117)
!120 = !DILocation(line: 70, column: 3, scope: !48, inlinedAt: !117)
!121 = !DILocation(line: 40, column: 7, scope: !40)
!122 = !DILocation(line: 43, column: 71, scope: !40)
!123 = !DILocation(line: 43, column: 13, scope: !40)
!124 = !DILocation(line: 44, column: 19, scope: !40)
!125 = !DILocation(line: 45, column: 9, scope: !40)
!126 = !DILocation(line: 0, scope: !40)
!127 = !DILocation(line: 48, column: 339, scope: !40)
!128 = !DILocation(line: 68, column: 3, scope: !48, inlinedAt: !129)
!129 = distinct !DILocation(line: 192, column: 3, scope: !51, inlinedAt: !130)
!130 = distinct !DILocation(line: 50, column: 7, scope: !40)
!131 = !DILocation(line: 69, column: 3, scope: !48, inlinedAt: !129)
!132 = !DILocation(line: 70, column: 3, scope: !48, inlinedAt: !129)
!133 = !DILocation(line: 54, column: 32, scope: !40)
!134 = !DILocation(line: 56, column: 37, scope: !40)
!135 = !{i32 -1, i32 3, i32 -1}
!136 = !DILocation(line: 64, column: 70, scope: !40)
!137 = !DILocation(line: 64, column: 13, scope: !40)
!138 = !DILocation(line: 64, column: 63, scope: !40)
!139 = !DILocation(line: 351, column: 10, scope: !140, inlinedAt: !142)
!140 = distinct !DISubprogram(name: "max", scope: !141, file: !141, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!141 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!142 = distinct !DILocation(line: 75, column: 24, scope: !40)
!143 = !DILocation(line: 1018, column: 9, scope: !144, inlinedAt: !145)
!144 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !49, file: !49, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!145 = distinct !DILocation(line: 338, column: 10, scope: !146, inlinedAt: !148)
!146 = distinct !DISubprogram(name: "shfl_xor_sync<float>", scope: !147, file: !147, line: 337, type: !7, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!147 = !DIFile(filename: "src/tl_templates/maca/common.h", directory: "/root/tilelang-metax")
!148 = distinct !DILocation(line: 95, column: 24, scope: !149, inlinedAt: !151)
!149 = distinct !DISubprogram(name: "run<float>", scope: !150, file: !150, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!150 = !DIFile(filename: "src/tl_templates/maca/reduce.h", directory: "/root/tilelang-metax")
!151 = distinct !DILocation(line: 77, column: 22, scope: !40)
!152 = !DILocation(line: 171, column: 37, scope: !153, inlinedAt: !154)
!153 = distinct !DISubprogram(name: "__lane_id", scope: !49, file: !49, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!154 = distinct !DILocation(line: 990, column: 14, scope: !155, inlinedAt: !156)
!155 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !49, file: !49, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!156 = distinct !DILocation(line: 1019, column: 11, scope: !144, inlinedAt: !145)
!157 = !DILocation(line: 171, column: 10, scope: !153, inlinedAt: !154)
!158 = !DILocation(line: 991, column: 20, scope: !155, inlinedAt: !156)
!159 = !DILocation(line: 992, column: 36, scope: !155, inlinedAt: !156)
!160 = !DILocation(line: 992, column: 17, scope: !155, inlinedAt: !156)
!161 = !DILocation(line: 992, column: 11, scope: !155, inlinedAt: !156)
!162 = !DILocation(line: 993, column: 43, scope: !155, inlinedAt: !156)
!163 = !DILocation(line: 993, column: 10, scope: !155, inlinedAt: !156)
!164 = !DILocation(line: 1020, column: 14, scope: !144, inlinedAt: !145)
!165 = !DILocation(line: 306, column: 10, scope: !166, inlinedAt: !167)
!166 = distinct !DISubprogram(name: "fmaxf", scope: !141, file: !141, line: 305, type: !7, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!167 = distinct !DILocation(line: 633, column: 10, scope: !168, inlinedAt: !170)
!168 = distinct !DISubprogram(name: "fast_max<float>", scope: !169, file: !169, line: 632, type: !7, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!169 = !DIFile(filename: "/opt/maca/include/mctlass/fast_math.h", directory: "")
!170 = distinct !DILocation(line: 31, column: 12, scope: !171, inlinedAt: !172)
!171 = distinct !DISubprogram(name: "operator()<float>", scope: !150, file: !150, line: 30, type: !7, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!172 = distinct !DILocation(line: 95, column: 11, scope: !149, inlinedAt: !151)
!173 = !DILocation(line: 1018, column: 9, scope: !144, inlinedAt: !174)
!174 = distinct !DILocation(line: 338, column: 10, scope: !146, inlinedAt: !175)
!175 = distinct !DILocation(line: 95, column: 24, scope: !176, inlinedAt: !177)
!176 = distinct !DISubprogram(name: "run<float>", scope: !150, file: !150, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!177 = distinct !DILocation(line: 100, column: 14, scope: !149, inlinedAt: !151)
!178 = !DILocation(line: 171, column: 37, scope: !153, inlinedAt: !179)
!179 = distinct !DILocation(line: 990, column: 14, scope: !155, inlinedAt: !180)
!180 = distinct !DILocation(line: 1019, column: 11, scope: !144, inlinedAt: !174)
!181 = !DILocation(line: 171, column: 10, scope: !153, inlinedAt: !179)
!182 = !DILocation(line: 991, column: 20, scope: !155, inlinedAt: !180)
!183 = !DILocation(line: 992, column: 36, scope: !155, inlinedAt: !180)
!184 = !DILocation(line: 992, column: 17, scope: !155, inlinedAt: !180)
!185 = !DILocation(line: 992, column: 11, scope: !155, inlinedAt: !180)
!186 = !DILocation(line: 993, column: 43, scope: !155, inlinedAt: !180)
!187 = !DILocation(line: 993, column: 10, scope: !155, inlinedAt: !180)
!188 = !DILocation(line: 1020, column: 14, scope: !144, inlinedAt: !174)
!189 = !DILocation(line: 306, column: 10, scope: !166, inlinedAt: !190)
!190 = distinct !DILocation(line: 633, column: 10, scope: !168, inlinedAt: !191)
!191 = distinct !DILocation(line: 31, column: 12, scope: !171, inlinedAt: !192)
!192 = distinct !DILocation(line: 95, column: 11, scope: !176, inlinedAt: !177)
!193 = !DILocation(line: 78, column: 54, scope: !40)
!194 = !DILocation(line: 78, column: 71, scope: !40)
!195 = !DILocation(line: 78, column: 37, scope: !40)
!196 = !DILocation(line: 78, column: 11, scope: !40)
!197 = !DILocation(line: 86, column: 44, scope: !40)
!198 = !DILocation(line: 86, column: 61, scope: !40)
!199 = !DILocation(line: 86, column: 102, scope: !40)
!200 = !DILocation(line: 285, column: 49, scope: !201, inlinedAt: !202)
!201 = distinct !DISubprogram(name: "exp2f", scope: !141, file: !141, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!202 = distinct !DILocation(line: 86, column: 23, scope: !40)
!203 = !DILocation(line: 91, column: 38, scope: !40)
!204 = !DILocation(line: 1018, column: 9, scope: !144, inlinedAt: !205)
!205 = distinct !DILocation(line: 338, column: 10, scope: !146, inlinedAt: !206)
!206 = distinct !DILocation(line: 95, column: 24, scope: !207, inlinedAt: !208)
!207 = distinct !DISubprogram(name: "run<float>", scope: !150, file: !150, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!208 = distinct !DILocation(line: 93, column: 22, scope: !40)
!209 = !DILocation(line: 171, column: 37, scope: !153, inlinedAt: !210)
!210 = distinct !DILocation(line: 990, column: 14, scope: !155, inlinedAt: !211)
!211 = distinct !DILocation(line: 1019, column: 11, scope: !144, inlinedAt: !205)
!212 = !DILocation(line: 171, column: 10, scope: !153, inlinedAt: !210)
!213 = !DILocation(line: 991, column: 20, scope: !155, inlinedAt: !211)
!214 = !DILocation(line: 992, column: 36, scope: !155, inlinedAt: !211)
!215 = !DILocation(line: 992, column: 17, scope: !155, inlinedAt: !211)
!216 = !DILocation(line: 992, column: 11, scope: !155, inlinedAt: !211)
!217 = !DILocation(line: 993, column: 43, scope: !155, inlinedAt: !211)
!218 = !DILocation(line: 993, column: 10, scope: !155, inlinedAt: !211)
!219 = !DILocation(line: 1020, column: 14, scope: !144, inlinedAt: !205)
!220 = !DILocation(line: 25, column: 14, scope: !221, inlinedAt: !222)
!221 = distinct !DISubprogram(name: "operator()<float>", scope: !150, file: !150, line: 24, type: !7, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!222 = distinct !DILocation(line: 95, column: 11, scope: !207, inlinedAt: !208)
!223 = !DILocation(line: 1018, column: 9, scope: !144, inlinedAt: !224)
!224 = distinct !DILocation(line: 338, column: 10, scope: !146, inlinedAt: !225)
!225 = distinct !DILocation(line: 95, column: 24, scope: !226, inlinedAt: !227)
!226 = distinct !DISubprogram(name: "run<float>", scope: !150, file: !150, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!227 = distinct !DILocation(line: 100, column: 14, scope: !207, inlinedAt: !208)
!228 = !DILocation(line: 171, column: 37, scope: !153, inlinedAt: !229)
!229 = distinct !DILocation(line: 990, column: 14, scope: !155, inlinedAt: !230)
!230 = distinct !DILocation(line: 1019, column: 11, scope: !144, inlinedAt: !224)
!231 = !DILocation(line: 171, column: 10, scope: !153, inlinedAt: !229)
!232 = !DILocation(line: 991, column: 20, scope: !155, inlinedAt: !230)
!233 = !DILocation(line: 992, column: 36, scope: !155, inlinedAt: !230)
!234 = !DILocation(line: 992, column: 17, scope: !155, inlinedAt: !230)
!235 = !DILocation(line: 992, column: 11, scope: !155, inlinedAt: !230)
!236 = !DILocation(line: 993, column: 43, scope: !155, inlinedAt: !230)
!237 = !DILocation(line: 993, column: 10, scope: !155, inlinedAt: !230)
!238 = !DILocation(line: 1020, column: 14, scope: !144, inlinedAt: !224)
!239 = !DILocation(line: 25, column: 14, scope: !221, inlinedAt: !240)
!240 = distinct !DILocation(line: 95, column: 11, scope: !226, inlinedAt: !227)
!241 = !DILocation(line: 94, column: 22, scope: !40)
!242 = !DILocation(line: 94, column: 11, scope: !40)
!243 = !DILocation(line: 97, column: 40, scope: !40)
!244 = !DILocation(line: 1007, column: 10, scope: !58, inlinedAt: !245)
!245 = distinct !DILocation(line: 1077, column: 18, scope: !61, inlinedAt: !246)
!246 = distinct !DILocation(line: 1295, column: 23, scope: !63, inlinedAt: !247)
!247 = distinct !DILocation(line: 100, column: 29, scope: !40)
!248 = !{!249, !251}
!249 = distinct !{!249, !250, !"_ZL17__floats2half2_rnff: %agg.result"}
!250 = distinct !{!250, !"_ZL17__floats2half2_rnff"}
!251 = distinct !{!251, !252, !"_ZL17__float22half2_rn6float2: %agg.result"}
!252 = distinct !{!252, !"_ZL17__float22half2_rn6float2"}
!253 = !DILocation(line: 1007, column: 10, scope: !58, inlinedAt: !254)
!254 = distinct !DILocation(line: 1077, column: 38, scope: !61, inlinedAt: !246)
!255 = !DILocation(line: 593, column: 26, scope: !256, inlinedAt: !257)
!256 = distinct !DISubprogram(name: "operator=", scope: !59, file: !59, line: 592, type: !7, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!257 = distinct !DILocation(line: 100, column: 27, scope: !40)
!258 = !DILocation(line: 1007, column: 10, scope: !58, inlinedAt: !259)
!259 = distinct !DILocation(line: 1077, column: 18, scope: !61, inlinedAt: !260)
!260 = distinct !DILocation(line: 1295, column: 23, scope: !63, inlinedAt: !261)
!261 = distinct !DILocation(line: 101, column: 29, scope: !40)
!262 = !{!263, !265}
!263 = distinct !{!263, !264, !"_ZL17__floats2half2_rnff: %agg.result"}
!264 = distinct !{!264, !"_ZL17__floats2half2_rnff"}
!265 = distinct !{!265, !266, !"_ZL17__float22half2_rn6float2: %agg.result"}
!266 = distinct !{!266, !"_ZL17__float22half2_rn6float2"}
!267 = !DILocation(line: 1007, column: 10, scope: !58, inlinedAt: !268)
!268 = distinct !DILocation(line: 1077, column: 38, scope: !61, inlinedAt: !260)
!269 = !DILocation(line: 593, column: 26, scope: !256, inlinedAt: !270)
!270 = distinct !DILocation(line: 101, column: 27, scope: !40)
!271 = !DILocation(line: 103, column: 11, scope: !40)
!272 = !DILocation(line: 106, column: 30, scope: !40)
!273 = !DILocation(line: 106, column: 46, scope: !40)
!274 = !DILocation(line: 106, column: 27, scope: !40)
!275 = !DILocation(line: 113, column: 13, scope: !40)
!276 = !DILocation(line: 114, column: 35, scope: !40)
!277 = !DILocation(line: 114, column: 21, scope: !40)
!278 = !DILocation(line: 115, column: 9, scope: !40)
!279 = !DILocation(line: 126, column: 196, scope: !40)
!280 = !DILocation(line: 124, column: 38, scope: !40)
!281 = !DILocation(line: 68, column: 3, scope: !48, inlinedAt: !282)
!282 = distinct !DILocation(line: 192, column: 3, scope: !51, inlinedAt: !283)
!283 = distinct !DILocation(line: 128, column: 7, scope: !40)
!284 = !DILocation(line: 69, column: 3, scope: !48, inlinedAt: !282)
!285 = !DILocation(line: 70, column: 3, scope: !48, inlinedAt: !282)
!286 = !DILocation(line: 131, column: 38, scope: !40)
!287 = !DILocation(line: 135, column: 43, scope: !40)
!288 = !DILocation(line: 140, column: 5, scope: !40)
!289 = !DILocation(line: 35, column: 40, scope: !40)
!290 = !DILocation(line: 35, column: 35, scope: !40)
!291 = distinct !{!291, !46, !292, !32}
!292 = !DILocation(line: 141, column: 3, scope: !40)
